	.section	.text
	.align	32
	#Procedure 0x401500

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.5
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.5
	mov	ecx, OFFSET FLAT:.str.31
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.7
	mov	esi, OFFSET FLAT:.str.8
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.7
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edx, OFFSET FLAT:.str_0
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, -1
	jne	.label_9
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r14d
	jne	.label_11
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	call	getuid
	mov	r14d, eax
	cmp	r14d, -1
	jne	.label_14
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	jne	.label_24
.label_14:
	mov	dword ptr [rbp], 0
	call	getegid
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_18
	mov	r15d, dword ptr [rbp]
	test	r15d, r15d
	jne	.label_19
.label_18:
	mov	dword ptr [rbp], 0
	call	getgid
	cmp	eax, -1
	jne	.label_21
	mov	ebp, dword ptr [rbp]
	test	ebp, ebp
	jne	.label_25
.label_21:
	xor	edi, edi
	mov	r8d, 1
	mov	r9d, 0x20
	mov	esi, r14d
	mov	edx, eax
	mov	ecx, ebx
	call	print_group_list
	mov	bpl, al
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_12
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_15
.label_11:
	mov	r12b, 1
	jl	.label_13
	mov	bpl, 1
	jmp	.label_15
.label_17:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_20
	nop	
.label_13:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	call	getpwnam
	test	rax, rax
	je	.label_23
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbx
	shr	rbp, 0x20
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdx, qword ptr [r15 + rax*8]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.16
	xor	eax, eax
	call	__printf_chk
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r15 + rax*8]
	mov	r8d, 1
	mov	r9d, 0x20
	mov	esi, ebx
	mov	edx, ebp
	mov	ecx, ebp
	call	print_group_list
	mov	bpl, al
	test	bpl, bpl
	je	.label_16
	mov	bpl, r12b
.label_16:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_17
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_20
	nop	word ptr [rax + rax]
.label_23:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r15 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_20:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r14d
	mov	r12b, bpl
	jl	.label_13
.label_15:
	not	bpl
	and	bpl, 1
	movzx	eax, bpl
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_12:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_15
.label_9:
	cmp	eax, 0xffffff7d
	je	.label_22
	cmp	eax, 0xffffff7e
	jne	.label_10
	xor	edi, edi
	call	usage
.label_22:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.10
	mov	r9d, OFFSET FLAT:.str.11
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_10:
	mov	edi, 1
	call	usage
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	call	error
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x4019b0

	.globl print_group_list
	.type print_group_list, @function
print_group_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0x1c], r9d
	mov	r15d, r8d
	mov	ebx, ecx
	mov	ebp, edx
	mov	r12, rdi
	mov	al, 1
	xor	r13d, r13d
	test	r12, r12
	je	.label_48
	mov	edi, esi
	call	getpwuid
	mov	r13, rax
	test	r13, r13
	setne	al
.label_48:
	test	r15b, r15b
	je	.label_44
	mov	qword ptr [rsp + 0x10], rax
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	je	.label_49
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	jmp	.label_47
.label_44:
	mov	qword ptr [rsp + 0x10], rax
	mov	edi, ebp
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	jmp	.label_28
.label_49:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	r14d, ebp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rcx, r14
	call	error
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	mov	rdi, r14
.label_28:
	call	umaxtostr
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
.label_47:
	call	fputs_unlocked
	cmp	ebx, ebp
	je	.label_42
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_45
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	byte ptr [rax], cl
.label_27:
	test	r15b, r15b
	je	.label_29
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	je	.label_32
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	jmp	.label_34
.label_29:
	mov	edi, ebx
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	jmp	.label_36
.label_32:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r14d, ebx
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	error
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	mov	rdi, r14
.label_36:
	call	umaxtostr
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
.label_34:
	call	fputs_unlocked
.label_42:
	test	r13, r13
	mov	esi, ebx
	je	.label_50
	mov	esi, dword ptr [r13 + 0x14]
.label_50:
	lea	rdx, [rsp + 0x20]
	mov	rdi, r12
	call	xgetgroups
	test	eax, eax
	js	.label_31
	jle	.label_30
	mov	ecx, dword ptr [rsp + 0x1c]
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], ecx
	mov	r12d, eax
	xor	r14d, r14d
	jmp	.label_35
.label_31:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	test	r12, r12
	je	.label_37
	mov	esi, OFFSET FLAT:.str_1
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
	jmp	.label_46
.label_33:
	mov	esi, dword ptr [rsp + 0xc]
	call	__overflow
	jmp	.label_43
	nop	dword ptr [rax]
.label_35:
	mov	rax, qword ptr [rsp + 0x20]
	mov	eax, dword ptr [rax + r14*4]
	cmp	eax, ebp
	je	.label_26
	cmp	eax, ebx
	je	.label_26
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_33
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	byte ptr [rax], cl
.label_43:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r13d, dword ptr [rax + r14*4]
	test	r15b, r15b
	je	.label_38
	mov	edi, r13d
	call	getgrgid
	test	rax, rax
	je	.label_40
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	jmp	.label_41
.label_40:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r13
	call	error
.label_38:
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	mov	rdi, r13
	call	umaxtostr
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
.label_41:
	call	fputs_unlocked
.label_26:
	inc	r14
	cmp	r12d, r14d
	jne	.label_35
.label_30:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rax, qword ptr [rsp + 0x10]
	and	al, 1
	jmp	.label_39
.label_37:
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_46:
	xor	eax, eax
.label_39:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_45:
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	esi, al
	call	__overflow
	jmp	.label_27
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c90
	.globl print_group
	.type print_group, @function
print_group:

	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	sil, sil
	je	.label_51
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	je	.label_52
	mov	rdi, qword ptr [rax]
	mov	bl, 1
	jmp	.label_53
.label_51:
	mov	ebp, ebp
	mov	bl, 1
	jmp	.label_54
.label_52:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	ebp, ebp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
.label_54:
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_53:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x401d10
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d30

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_58
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_57
	cmp	dword ptr [rbp], 0x20
	jne	.label_57
.label_58:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_56
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_55
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_56:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_55:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401df0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_59:
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
	ja	.label_59
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e40

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_60
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_61
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_61
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_62
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_62:
	mov	rbx, r14
.label_61:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_60:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ef0
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
	#Procedure 0x401f30
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
	#Procedure 0x401f40
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
	#Procedure 0x401f50
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	al, cl
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
	#Procedure 0x401f90
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
	#Procedure 0x401fb0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_63
	test	rdx, rdx
	je	.label_63
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_63:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fe0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
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
	#Procedure 0x402060

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	ebx, r9d
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_79:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_142
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_146]]
.label_368:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_369:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_165
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_165
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_185:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_134
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_134:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_185
.label_165:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_74
.label_361:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_74
.label_364:
	mov	al, 1
.label_362:
	mov	r12b, 1
.label_365:
	test	r12b, 1
	mov	cl, 1
	je	.label_98
	mov	cl, al
.label_98:
	mov	al, cl
.label_363:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_103
	test	r10, r10
	je	.label_108
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_109
.label_103:
	xor	ecx, ecx
	jmp	.label_109
.label_366:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_117
	test	r10, r10
	je	.label_123
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_126
.label_367:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_74
.label_108:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_109:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_74
.label_117:
	xor	eax, eax
	jmp	.label_126
.label_123:
	mov	eax, 1
.label_126:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_74:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_88
.label_93:
	inc	rdi
.label_88:
	cmp	rbp, -1
	je	.label_65
	cmp	rdi, rbp
	jne	.label_67
	jmp	.label_68
	nop	word ptr cs:[rax + rax]
.label_65:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_76
.label_67:
	test	r12b, r12b
	je	.label_82
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_84
	cmp	rbp, -1
	jne	.label_84
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_84:
	cmp	rbx, rbp
	jbe	.label_114
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_125
	nop	word ptr [rax + rax]
.label_82:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_125
.label_114:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_139
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_125
	jmp	.label_87
.label_139:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_125:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_102
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_160]]
.label_320:
	test	rdi, rdi
	jne	.label_78
	jmp	.label_167
.label_324:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_168
	test	rdi, rdi
	jne	.label_171
	cmp	rbp, 1
	je	.label_167
	xor	r13d, r13d
	jmp	.label_72
.label_313:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_173
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_87
	cmp	r9d, 2
	jne	.label_177
	mov	al, r14b
	and	al, 1
	jne	.label_179
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_184
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_184:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_77
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_77:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_131
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_131:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_86
.label_314:
	mov	bl, 0x62
	jmp	.label_94
.label_315:
	mov	cl, 0x74
	jmp	.label_80
.label_316:
	mov	bl, 0x76
	jmp	.label_94
.label_317:
	mov	bl, 0x66
	jmp	.label_94
.label_318:
	mov	cl, 0x72
	jmp	.label_80
.label_321:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_105
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_110
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_116
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_116:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_136
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_136:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_64
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_64:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_105:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_72
.label_322:
	cmp	r9d, 5
	je	.label_148
	cmp	r9d, 2
	jne	.label_78
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_78
	jmp	.label_153
.label_323:
	cmp	r9d, 2
	jne	.label_155
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_157
	jmp	.label_161
.label_102:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_162
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_121:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_175
	test	cl, cl
	je	.label_175
	xor	eax, eax
	jmp	.label_72
.label_168:
	test	rdi, rdi
	jne	.label_188
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_188
.label_167:
	mov	dl, 1
.label_319:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_81
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_72
.label_173:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_93
	jmp	.label_78
.label_155:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_80
.label_157:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_85
.label_80:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_89
.label_94:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_72
	jmp	.label_99
.label_162:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_100
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_100:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_166:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_135
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_138
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_141
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_111
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_154:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_151
	bt	rsi, rdx
	jb	.label_152
.label_151:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_154
.label_111:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_174
	xor	r13d, r13d
.label_174:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_166
	jmp	.label_121
.label_188:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_72
.label_148:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_78
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_78
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_78
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_180
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_186
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_70
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_69
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_69:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_144
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_144:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_91
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_91:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_143
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_143:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_72
.label_78:
	xor	eax, eax
	xor	r13d, r13d
.label_72:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_119
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_122
	jmp	.label_127
	nop	word ptr [rax + rax]
.label_119:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_127
.label_122:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_130
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_137
	nop	word ptr cs:[rax + rax]
.label_127:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_137:
	mov	bl, r15b
	je	.label_85
	jmp	.label_99
.label_130:
	mov	bl, r15b
.label_99:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_87
	cmp	r9d, 2
	jne	.label_145
	mov	al, r14b
	and	al, 1
	jne	.label_145
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_149
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_149:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_182
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_182:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_159
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_159:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_145:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_169
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_169:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_178
.label_171:
	xor	r13d, r13d
	jmp	.label_72
.label_175:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_176
	nop	word ptr [rax + rax]
.label_170:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_176:
	test	cl, cl
	je	.label_187
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_140
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_66
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_66:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_140
	nop	word ptr [rax + rax]
.label_187:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_87
	cmp	r9d, 2
	jne	.label_92
	mov	al, r14b
	and	al, 1
	jne	.label_92
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_96
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_96:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_132
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_132:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_115
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_115:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_92:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_129
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_129:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_147
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_147:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_106
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_106:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_140:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_85
	test	r14b, 1
	je	.label_104
	mov	bl, al
	and	bl, 1
	jne	.label_104
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_75
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_75:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_164
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_164:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_104:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_170
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_170
	nop	dword ptr [rax]
.label_85:
	test	r14b, 1
	je	.label_181
	and	al, 1
	jne	.label_181
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_163
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_163:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_97
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_97:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_181:
	mov	bl, r15b
.label_178:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_83
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_83:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_93
.label_177:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_86
.label_179:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_86:
	cmp	rcx, r10
	jae	.label_107
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_107:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_113
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_120
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_124
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_128
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_128:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_133
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_133:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_72
.label_113:
	xor	r13d, r13d
	jmp	.label_72
.label_120:
	xor	r13d, r13d
	jmp	.label_72
.label_124:
	xor	r13d, r13d
	jmp	.label_72
.label_138:
	xor	r13d, r13d
.label_135:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_121
.label_141:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_150
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_95:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_156
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_95
	xor	r13d, r13d
	jmp	.label_121
.label_150:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_121
.label_156:
	xor	r13d, r13d
	jmp	.label_121
.label_180:
	xor	r13d, r13d
	jmp	.label_72
.label_186:
	xor	r13d, r13d
	jmp	.label_72
	nop	dword ptr [rax]
.label_68:
	mov	r13, rdi
.label_76:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_172
	or	al, dl
	je	.label_183
.label_172:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_71
	or	al, dl
	jne	.label_71
	test	r8b, 1
	jne	.label_73
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_71
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_79
.label_71:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_90
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_90
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_90
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_112:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_101
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_101:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_112
.label_90:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_118
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_118
.label_81:
	mov	r9d, 2
	jmp	.label_87
.label_152:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_87
.label_183:
	mov	rbp, r13
	jmp	.label_87
.label_89:
	mov	r9d, 2
.label_87:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_158:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_118:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_73:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_158
.label_110:
	mov	r9d, 2
	jmp	.label_87
.label_161:
	mov	r9d, 2
	jmp	.label_87
.label_153:
	mov	r9d, 2
	jmp	.label_87
.label_70:
	mov	r9d, 5
	jmp	.label_87
.label_142:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031f0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x38
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
	#Procedure 0x4032c0
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	sete	al
	movzx	ebp, al
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_189
	mov	qword ptr [rax], rbx
.label_189:
	mov	rax, r14
	add	rsp, 0x48
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
	#Procedure 0x4033c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_190
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_192:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_192
.label_190:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_194
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_193]], OFFSET FLAT:slot0
.label_194:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_191
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_191:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403460
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403470

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_195
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_200
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_197
.label_200:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_198
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	lea	r15d, [rbx + 1]
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_199
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_199:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_197:
	mov	qword ptr [rsp + 0x38], r14
	movsxd	r13, ebx
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	mov	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	lea	rdx, [rcx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, r14
	mov	r9d, r12d
	call	quotearg_buffer_restyled
	mov	r14, rax
	cmp	r15, r14
	ja	.label_201
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_196
	mov	rdi, rbx
	call	free
.label_196:
	mov	rdi, r14
	call	xmalloc
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rcx]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	call	quotearg_buffer_restyled
.label_201:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_195:
	call	abort
.label_198:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403640
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403650
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403670
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403690
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_202
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_202:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x403700
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_203
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_203:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403770
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_204
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_204:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037e0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_205
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_205:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403850
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_206]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_208]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x4038c0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_206]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_208]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x403930

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_206]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_208]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403990
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_206]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_208]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039f0
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_209
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_209:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x403aa0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_206]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_208]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_210
	test	rdx, rdx
	je	.label_210
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_210:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x403b10
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_206]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_208]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_211
	test	rdx, rdx
	je	.label_211
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_211:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b80
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_206]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_208]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_212
	test	rsi, rsi
	je	.label_212
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_212:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403bf0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_206]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_207]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_208]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_213
	test	rsi, rsi
	je	.label_213
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
.label_213:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c60
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c70
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c90
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cb0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403cd0

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
	jne	.label_216
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_217
	cmp	ecx, 0x55
	jne	.label_214
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_214
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_214
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_214
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_214
	cmp	byte ptr [rax + 5], 0
	jne	.label_214
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_216
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_216
.label_217:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_214
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_214
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_214
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_214
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_214
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_214
	cmp	byte ptr [rax + 7], 0
	je	.label_215
.label_214:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_216:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_215:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_216
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_216
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403dc0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_218
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_227
.label_218:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_227:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_221
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_223]]
.label_341:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_221:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_220
.label_342:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_343:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_344:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_226
.label_345:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_219
.label_346:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_225
.label_347:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_225:
	mov	qword ptr [rsp + 0x10], rdi
.label_219:
	mov	qword ptr [rsp + 8], rsi
.label_226:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_222
.label_349:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_220:
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	r11, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_224
.label_348:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rax
.label_224:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_222:
	call	__fprintf_chk
.label_340:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_228:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_228
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040e0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_231:
	cmp	r10d, 0x28
	ja	.label_229
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_230
	nop	word ptr cs:[rax + rax]
.label_229:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_230:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_232
	inc	r9
	cmp	r9, 0xa
	jb	.label_231
.label_232:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404140

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_233
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_233:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_237:
	cmp	r8d, 0x28
	ja	.label_234
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_236
	nop	
.label_234:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_236:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_235
	inc	r9
	cmp	r9, 0xa
	jb	.label_237
.label_235:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404240
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4042c0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_238
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_239
	test	rax, rax
	je	.label_238
.label_239:
	pop	rbx
	ret	
.label_238:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404300

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_240
	test	rax, rax
	je	.label_241
.label_240:
	pop	rbx
	ret	
.label_241:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404320
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_242
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_243
	test	rbx, rbx
	jne	.label_243
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_243:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_244
	test	rax, rax
	je	.label_242
.label_244:
	pop	rbx
	ret	
.label_242:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404370

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_245
	test	rbx, rbx
	jne	.label_245
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_245:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_247
	test	rax, rax
	je	.label_246
.label_247:
	pop	rbx
	ret	
.label_246:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4043a0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_248
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_250
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_249
.label_248:
	test	rcx, rcx
	jne	.label_253
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_253:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_251
.label_249:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_252
	test	rbx, rbx
	jne	.label_252
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_252:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_254
	test	rax, rax
	je	.label_250
.label_254:
	pop	rbx
	ret	
.label_250:
	call	xalloc_die
.label_251:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404440
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404460
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_257
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_260
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_261
	call	free
	xor	eax, eax
	jmp	.label_258
.label_257:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_259
	mov	qword ptr [rsi], rbx
.label_261:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_258
	test	rax, rax
	je	.label_259
.label_258:
	pop	rbx
	ret	
.label_259:
	call	xalloc_die
.label_260:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044d0
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
	je	.label_263
	test	r14, r14
	je	.label_262
.label_263:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_262:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404510
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_264
	call	rpl_calloc
	test	rax, rax
	je	.label_264
	pop	rcx
	ret	
.label_264:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404540

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
	je	.label_265
	test	r15, r15
	je	.label_266
.label_265:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_266:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404580
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
	je	.label_268
	test	r15, r15
	je	.label_267
.label_268:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_267:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4045d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404600

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_270
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_269
.label_270:
	mov	eax, ebx
	pop	rbx
	ret	
.label_269:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404620

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_271
	test	rsi, rsi
	mov	ecx, 1
	je	.label_272
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_272
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_271:
	mov	ecx, 1
.label_272:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404670

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
	je	.label_273
	cmp	r15, -2
	jb	.label_273
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_273
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_273:
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
	#Procedure 0x4046d0

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
	jne	.label_275
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_274
	test	cl, cl
	jne	.label_274
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_274
.label_275:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_274
	call	__errno_location
	mov	dword ptr [rax], 0
.label_274:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404730

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_277
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_278
	cmp	byte ptr [rax + 1], 0
	je	.label_276
.label_278:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_277
.label_276:
	xor	ebx, ebx
.label_277:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404770

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	je	.label_279
	mov	rax, rcx
.label_279:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047a0

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
	mov	r12, rdx
	mov	r13d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_284
	mov	dword ptr [rsp + 0x14], 0xa
	xor	edi, edi
	mov	esi, 0x28
	call	realloc
	mov	rbp, rax
	mov	r14d, 0xffffffff
	test	rbp, rbp
	je	.label_283
	mov	qword ptr [rsp + 8], r12
	mov	r12d, 0xa
	lea	r15, [rsp + 0x14]
	jmp	.label_292
	nop	dword ptr [rax + rax]
.label_291:
	mov	r12d, dword ptr [rsp + 0x14]
	mov	rbp, rax
.label_292:
	mov	rdi, rbx
	mov	esi, r13d
	mov	rdx, rbp
	mov	rcx, r15
	call	getgrouplist
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0x14]
	test	r14d, r14d
	jns	.label_285
	cmp	r12d, eax
	jne	.label_285
	add	r12d, r12d
	mov	dword ptr [rsp + 0x14], r12d
	mov	eax, r12d
.label_285:
	test	eax, eax
	js	.label_289
	movsxd	rsi, eax
	shl	rsi, 2
	mov	rdi, rbp
	call	realloc
	test	rax, rax
	je	.label_290
	test	r14d, r14d
	js	.label_291
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	r14d, dword ptr [rsp + 0x14]
	jmp	.label_283
.label_284:
	xor	edi, edi
	xor	esi, esi
	call	getgroups
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	js	.label_295
	cmp	r13d, -1
	jne	.label_280
	test	eax, eax
	mov	ebx, eax
	jne	.label_281
.label_280:
	lea	ebx, [rax + 1]
	mov	dword ptr [rsp + 0x14], ebx
	cmp	eax, -2
	jg	.label_281
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	r14d, 0xffffffff
	jmp	.label_283
.label_281:
	movsxd	rsi, ebx
	shl	rsi, 2
	xor	edi, edi
	call	realloc
	mov	r15, rax
	mov	r14d, 0xffffffff
	test	r15, r15
	je	.label_283
	cmp	r13d, -1
	setne	al
	movzx	eax, al
	sub	ebx, eax
	lea	rsi, [r15 + rax*4]
	mov	edi, ebx
	call	getgroups
	test	eax, eax
	js	.label_293
	cmp	r13d, -1
	mov	r14d, eax
	je	.label_294
	mov	dword ptr [r15], r13d
	inc	eax
	mov	r14d, eax
.label_294:
	mov	qword ptr [r12], r15
	cmp	r14d, 2
	jl	.label_283
	movsxd	rax, r14d
	lea	rax, [r15 + rax*4]
	mov	rcx, r15
	add	rcx, 4
	cmp	rcx, rax
	jae	.label_283
	mov	edx, dword ptr [r15]
	mov	esi, edx
	nop	dword ptr [rax]
.label_288:
	mov	edi, dword ptr [rcx]
	cmp	edi, edx
	je	.label_286
	cmp	edi, esi
	jne	.label_287
.label_286:
	dec	r14d
	add	rcx, 4
	cmp	rcx, rax
	jb	.label_288
	jmp	.label_283
.label_287:
	mov	dword ptr [r15 + 4], edi
	add	r15, 4
	add	rcx, 4
	cmp	rcx, rax
	mov	esi, edi
	jb	.label_288
	jmp	.label_283
.label_295:
	call	__errno_location
	mov	r14d, 0xffffffff
	cmp	dword ptr [rax], 0x26
	jne	.label_283
	xor	edi, edi
	mov	esi, 4
	call	realloc
	test	rax, rax
	je	.label_283
	mov	qword ptr [r12], rax
	mov	dword ptr [rax], r13d
	cmp	r13d, -1
	setne	al
	movzx	r14d, al
	jmp	.label_283
.label_289:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0xc
	jmp	.label_282
.label_290:
	call	__errno_location
	mov	rbx, rax
.label_282:
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
	mov	r14d, 0xffffffff
.label_283:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_293:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_283
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_296
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_298
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_296
.label_298:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_296
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_297
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_297:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_296:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404a70

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_299
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_299
	test	byte ptr [rbx + 1], 1
	je	.label_299
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_299:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ab0

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
	jne	.label_300
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_300
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_301
.label_300:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_301:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_302
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_302:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x404b20

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
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]