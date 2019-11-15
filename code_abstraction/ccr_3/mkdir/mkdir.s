	.section	.text
	.align	16
	#Procedure 0x4018f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_23
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
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
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_16
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_16
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_14
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_14
	mov	ecx, OFFSET FLAT:label_15
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_23:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401af0

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
	mov	r14, rsi
	mov	ebx, edi
	mov	qword ptr [rsp + 8], 0
	mov	dword ptr [rsp + 0x14], 0x1ff
	lea	r15, [rsp + 0x18]
	mov	dword ptr [rsp + 0x18], 0
	mov	qword ptr [rsp + 0x20], 0
	mov	byte ptr [rsp + 0x1c], 0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_45
	call	setlocale
	mov	edi, OFFSET FLAT:label_33
	mov	esi, OFFSET FLAT:label_34
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_33
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	ebp, ebp
	xor	r12d, r12d
	jmp	.label_38
.label_626:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x20], rax
	nop	word ptr cs:[rax + rax]
.label_38:
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x59
	jle	.label_36
	add	eax, -0x5a
	cmp	eax, 0x1c
	ja	.label_39
	jmp	qword ptr [(rax * 8) + label_41]
.label_623:
	cmp	qword ptr [rip + optarg],  0
	je	.label_38
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_38
.label_624:
	mov	r12, qword ptr [rip + optarg]
	jmp	.label_38
.label_625:
	mov	qword ptr [rsp + 8], OFFSET FLAT:make_ancestor
	mov	ebp, OFFSET FLAT:make_ancestor
	jmp	.label_38
.label_36:
	cmp	eax, -1
	jne	.label_28
	cmp	dword ptr [rip + optind],  ebx
	je	.label_29
	test	r12, r12
	jne	.label_31
	test	rbp, rbp
	je	.label_32
.label_31:
	xor	edi, edi
	call	umask
	mov	ebp, eax
	mov	edi, ebp
	call	umask
	mov	dword ptr [rsp + 0x10], ebp
	test	r12, r12
	je	.label_40
	mov	rdi, r12
	call	mode_compile
	mov	r13, rax
	test	r13, r13
	je	.label_43
	mov	edi, 0x1ff
	mov	esi, 1
	mov	edx, ebp
	mov	rcx, r13
	mov	r8, r15
	call	mode_adjust
	mov	dword ptr [rsp + 0x14], eax
	mov	rdi, r13
	call	free
	jmp	.label_32
.label_40:
	mov	dword ptr [rsp + 0x14], 0x1ff
.label_32:
	movsxd	rax, dword ptr [rip + optind]
	sub	ebx, eax
	lea	rsi, [r14 + rax*8]
	lea	rcx, [rsp + 8]
	mov	edx, OFFSET FLAT:process_dir
	mov	edi, ebx
	call	savewd_process_files
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_28:
	cmp	eax, 0xffffff7d
	je	.label_37
	cmp	eax, 0xffffff7e
	jne	.label_39
	xor	edi, edi
	call	usage
.label_37:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_14
	mov	edx, OFFSET FLAT:label_25
	mov	r8d, OFFSET FLAT:label_42
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_39:
	mov	edi, 1
	call	usage
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
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
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d60

	.globl make_ancestor
	.type make_ancestor, @function
make_ancestor:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rdx
	mov	rbp, rsi
	mov	r14, rdi
	cmp	byte ptr [r15 + 0x14], 0
	je	.label_48
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_48:
	mov	edi, dword ptr [r15 + 8]
	test	dil, 0xc0
	je	.label_49
	and	edi, 0xffffff3f
	call	umask
	mov	esi, 0x1ff
	mov	rdi, rbp
	call	mkdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	mov	r12d, dword ptr [rbx]
	mov	edi, dword ptr [r15 + 8]
	call	umask
	mov	dword ptr [rbx], r12d
	jmp	.label_51
.label_49:
	mov	esi, 0x1ff
	mov	rdi, rbp
	call	mkdir
	mov	ebp, eax
.label_51:
	test	ebp, ebp
	jne	.label_50
	mov	ebp, dword ptr [r15 + 8]
	shr	ebp, 8
	and	ebp, 1
	mov	rbx, qword ptr [r15 + 0x18]
	test	rbx, rbx
	je	.label_50
	mov	r15, qword ptr [rip + stdout]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, rcx
	call	prog_fprintf
.label_50:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e20

	.globl process_dir
	.type process_dir, @function
process_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rdx, qword ptr [rbx]
	cmp	byte ptr [rbx + 0x14], 0
	je	.label_52
	test	rdx, rdx
	jne	.label_52
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edx, edx
.label_52:
	mov	r8d, dword ptr [rbx + 0xc]
	mov	eax, dword ptr [rbx + 0x10]
	mov	r9d, OFFSET FLAT:announce_mkdir
	mov	rdi, r15
	mov	rsi, r14
	mov	rcx, rbx
	push	1
	push	-1
	push	-1
	push	rax
	call	make_dir_parents
	add	rsp, 0x20
	movzx	eax, al
	mov	ebp, eax
	xor	ebp, 1
	test	al, al
	je	.label_53
	cmp	byte ptr [rbx + 0x14], 0
	je	.label_53
	cmp	qword ptr [rbx], 0
	je	.label_53
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_53:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401eb0

	.globl announce_mkdir
	.type announce_mkdir, @function
announce_mkdir:
	push	r14
	push	rbx
	push	rax
	mov	rax, rdi
	mov	rbx, qword ptr [rsi + 0x18]
	test	rbx, rbx
	je	.label_54
	mov	r14, qword ptr [rip + stdout]
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	prog_fprintf
.label_54:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f00

	.globl prog_fprintf
	.type prog_fprintf, @function
prog_fprintf:
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, rsi
	mov	rbx, rdi
	test	al, al
	je	.label_55
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_55:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rdi, qword ptr [rip + program_name]
	mov	rsi, rbx
	call	fputs_unlocked
	mov	edi, OFFSET FLAT:label_58
	mov	rsi, rbx
	call	fputs_unlocked
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r14
	call	__vfprintf_chk
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x30]
	jae	.label_57
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_56:
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	ret	
.label_57:
	mov	esi, 0xa
	mov	rdi, rbx
	call	__overflow
	jmp	.label_56
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ff0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402000
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402010

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_65
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_62
	cmp	dword ptr [rbp], 0x20
	jne	.label_62
.label_65:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_61
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_62:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_59
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_61:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_59:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_64
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020d0

	.globl make_dir_parents
	.type make_dir_parents, @function
make_dir_parents:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r13, r9
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r15, rdi
	cmp	byte ptr [r15], 0x2f
	je	.label_82
	cmp	dword ptr [rbx], 4
	jne	.label_82
	mov	r14d, dword ptr [rbx + 4]
	test	r14d, r14d
	jne	.label_66
.label_82:
	xor	r12d, r12d
	test	rbp, rbp
	mov	dword ptr [rsp + 0x1c], r8d
	je	.label_67
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	call	mkancesdirs
	mov	r8d, dword ptr [rsp + 0x1c]
	mov	r12, rax
	test	r12, r12
	js	.label_74
.label_67:
	mov	qword ptr [rsp + 0x40], r13
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 0x30], rbp
	mov	r13d, dword ptr [rsp + 0x120]
	mov	eax, dword ptr [rsp + 0x110]
	and	r13d, dword ptr [rsp + 0x118]
	and	eax, 0xc00
	mov	ebp, r8d
	and	ebp, 0x200
	mov	ecx, r8d
	and	ecx, 0xffffffc0
	mov	r14d, r8d
	and	r14d, 0xffffffed
	or	ebp, eax
	cmove	r14d, r8d
	cmp	r13d, -1
	cmovne	r14d, ecx
	add	r12, r15
	mov	rdi, r12
	mov	esi, r14d
	mov	ebx, r8d
	call	mkdir
	test	eax, eax
	mov	qword ptr [rsp + 0x20], r15
	mov	dword ptr [rsp + 0x2c], r13d
	je	.label_70
	mov	bl, byte ptr [rsp + 0x128]
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x10], eax
	mov	r14d, 0xffffffff
	mov	edx, 2
	mov	rdi, qword ptr [rsp + 0x38]
	mov	ebp, dword ptr [rsp + 0x110]
	jmp	.label_79
.label_70:
	cmp	r13d, -1
	sete	r13b
	mov	rdi, r15
	mov	eax, dword ptr [rsp + 0x110]
	mov	r15d, eax
	and	ebx, r15d
	and	ebx, 0x1ff
	mov	rsi, qword ptr [rsp + 0x10]
	call	qword ptr [rsp + 0x40]
	or	ebx, ebp
	sete	bl
	and	bl, r13b
	mov	dword ptr [rsp + 0x10], 0
	mov	edx, 3
	mov	rdi, qword ptr [rsp + 0x38]
	mov	ebp, r15d
.label_79:
	test	bl, bl
	je	.label_69
	mov	bpl, 1
	mov	r14d, dword ptr [rsp + 0x10]
	test	r14d, r14d
	mov	r15, qword ptr [rsp + 0x20]
	je	.label_72
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_66
	cmp	r14d, 2
	je	.label_66
	mov	rbx, r15
	lea	rdx, [rsp + 0x48]
	mov	edi, 1
	mov	rsi, r12
	call	__xstat
	test	eax, eax
	je	.label_83
	cmp	r14d, 0x11
	jne	.label_71
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 2
	je	.label_71
	cmp	r15d, 0x14
	je	.label_71
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r14
	jmp	.label_75
.label_69:
	lea	rcx, [rsp + 0x48]
	mov	rsi, r12
	call	savewd_chdir
	cmp	eax, -2
	jg	.label_81
	mov	bpl, 1
	jmp	.label_72
.label_74:
	mov	bpl, 1
	cmp	r12, -1
	jne	.label_72
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_66
.label_81:
	test	eax, eax
	mov	eax, OFFSET FLAT:label_85
	cmove	r12, rax
	mov	edi, dword ptr [rsp + 0x48]
	mov	dword ptr [rsp], ebp
	mov	rsi, r12
	mov	edx, r14d
	mov	ecx, dword ptr [rsp + 0x118]
	mov	r8d, dword ptr [rsp + 0x120]
	mov	r9d, dword ptr [rsp + 0x1c]
	call	dirchownmod
	mov	bpl, 1
	test	eax, eax
	je	.label_72
	mov	r14d, dword ptr [rsp + 0x10]
	test	r14d, r14d
	je	.label_73
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_78
	cmp	r14d, 2
	je	.label_78
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	jne	.label_80
.label_78:
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_66
.label_83:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x60]
	mov	bpl, 1
	cmp	eax, 0x4000
	je	.label_72
.label_71:
	mov	r15, rbx
.label_66:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
.label_86:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
.label_75:
	call	error
.label_72:
	mov	eax, ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_73:
	call	__errno_location
.label_80:
	cmp	dword ptr [rsp + 0x2c], -1
	mov	r14d, dword ptr [rax]
	mov	eax, OFFSET FLAT:label_76
	mov	esi, OFFSET FLAT:label_77
	cmove	rsi, rax
	xor	ebp, ebp
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_86
	nop	
	.section	.text
	.align	16
	#Procedure 0x4023e0

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	bl, byte ptr [r14]
	mov	eax, ebx
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_108
	xor	eax, eax
	xor	r15d, r15d
	mov	rdx, r14
	nop	
.label_113:
	movsx	ecx, bl
	lea	r15d, [rcx + r15*8 - 0x30]
	cmp	r15d, 0xfff
	ja	.label_87
	movzx	ebx, byte ptr [rdx + 1]
	inc	rdx
	mov	ecx, ebx
	and	cl, 0xf8
	cmp	cl, 0x30
	je	.label_113
	xor	eax, eax
	test	bl, bl
	jne	.label_87
	sub	rdx, r14
	mov	eax, r15d
	and	eax, 0xc00
	or	eax, 0x3ff
	cmp	rdx, 5
	mov	ebx, 0xfff
	cmovl	ebx, eax
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], r15d
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	jmp	.label_87
.label_108:
	lea	rax, [r14 + 1]
	mov	edi, 1
	jmp	.label_111
	nop	
.label_94:
	add	rdi, rdx
	movzx	ebx, byte ptr [rax]
	inc	rax
.label_111:
	cmp	bl, 0x2c
	jle	.label_89
	cmp	bl, 0x2d
	je	.label_92
	cmp	bl, 0x3d
	mov	edx, 1
	je	.label_94
	jmp	.label_99
	nop	
.label_89:
	cmp	bl, 0x2b
	mov	edx, 1
	je	.label_94
	test	bl, bl
	je	.label_102
.label_99:
	xor	edx, edx
	jmp	.label_94
	nop	word ptr cs:[rax + rax]
.label_92:
	mov	edx, 1
	jmp	.label_94
.label_102:
	mov	rax, rdi
	shr	rax, 0x3b
	jne	.label_106
	shl	rdi, 4
	call	xmalloc
	xor	r9d, r9d
	movabs	r8, 0x2000280000000000
	jmp	.label_107
	.section	.text
	.align	16
	#Procedure 0x402700
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__xstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_114
	mov	ebx, dword ptr [rsp + 0x18]
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebx
	mov	dword ptr [rax + 0xc], 0xfff
	mov	byte ptr [rax + 0x11], 0
.label_114:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402760

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
	je	.label_115
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
.label_122:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_121
	cmp	ebp, 3
	jne	.label_116
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
	jmp	.label_116
	nop	dword ptr [rax + rax]
.label_121:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_116:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_118
	cmp	esi, 0x2d
	je	.label_119
	cmp	esi, 0x3d
	jne	.label_120
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
	jmp	.label_120
	nop	word ptr [rax + rax]
.label_119:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_120
	nop	dword ptr [rax]
.label_118:
	or	r13d, ebp
	or	edi, ebp
.label_120:
	movzx	eax, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_122
.label_115:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_117
	mov	dword ptr [rax], r13d
.label_117:
	mov	eax, edi
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4028a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_123
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_125
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_125
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_128
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_128:
	mov	rbx, r14
.label_125:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_123:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_124
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402950
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
	.align	16
	#Procedure 0x402990
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
	.align	16
	#Procedure 0x4029a0
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
	.align	16
	#Procedure 0x4029b0
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
	.align	16
	#Procedure 0x4029f0
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
	.align	16
	#Procedure 0x402a10
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_129
	test	rdx, rdx
	je	.label_129
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_129:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a40
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ac0

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
	jmp	.label_209
	nop	
.label_247:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_203
	or	al, dl
	jne	.label_203
	test	dil, 1
	jne	.label_244
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_203
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_209
	jmp	.label_203
.label_589:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_249
	test	rbp, rbp
	je	.label_229
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_229:
	mov	r14d, 1
	jmp	.label_255
.label_590:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_142
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_204
.label_249:
	xor	r14d, r14d
.label_255:
	mov	eax, OFFSET FLAT:label_142
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_143
	nop	
.label_209:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_155
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_161]
.label_591:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_169
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_176
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_592:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_175
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_175
	xor	r14d, r14d
	nop	
.label_198:
	cmp	r14, rbp
	jae	.label_195
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_195:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_198
.label_175:
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
	jmp	.label_204
.label_584:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_204
.label_587:
	mov	al, 1
.label_585:
	mov	r12b, 1
.label_588:
	test	r12b, 1
	mov	cl, 1
	je	.label_219
	mov	ecx, eax
.label_219:
	mov	al, cl
.label_586:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_222
	test	rbp, rbp
	je	.label_228
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_228:
	mov	r14d, 1
	jmp	.label_134
.label_222:
	xor	r14d, r14d
.label_134:
	mov	ecx, OFFSET FLAT:label_176
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_143:
	mov	sil, r12b
.label_204:
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
	jmp	.label_235
	nop	word ptr cs:[rax + rax]
.label_211:
	inc	r12
.label_235:
	cmp	r11, -1
	je	.label_135
	cmp	r12, r11
	jne	.label_138
	jmp	.label_141
	nop	word ptr cs:[rax + rax]
.label_135:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_148
.label_138:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_156
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_164
	cmp	r11, -1
	jne	.label_164
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_164:
	cmp	rbx, r11
	jbe	.label_174
.label_156:
	xor	esi, esi
.label_207:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_177
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_183]
.label_604:
	test	r12, r12
	jne	.label_186
	jmp	.label_187
	nop	word ptr cs:[rax + rax]
.label_174:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_197
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_207
	jmp	.label_166
.label_197:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_207
.label_608:
	xor	eax, eax
	cmp	r11, -1
	je	.label_213
	test	r12, r12
	jne	.label_218
	cmp	r11, 1
	je	.label_187
	xor	r13d, r13d
	jmp	.label_130
.label_597:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_224
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_166
	cmp	r8d, 2
	jne	.label_230
	mov	eax, r9d
	and	al, 1
	jne	.label_230
	cmp	r14, rbp
	jae	.label_231
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_231:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_233
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_233:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_237
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_237:
	add	r14, 3
	mov	r9b, 1
.label_230:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_242
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_242:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_246
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_246
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_246
	cmp	r14, rbp
	jae	.label_225
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_225:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_243
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_243:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_130
.label_598:
	mov	bl, 0x62
	jmp	.label_136
.label_599:
	mov	cl, 0x74
	jmp	.label_140
.label_600:
	mov	bl, 0x76
	jmp	.label_136
.label_601:
	mov	bl, 0x66
	jmp	.label_136
.label_602:
	mov	cl, 0x72
	jmp	.label_140
.label_605:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_152
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_133
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
	jae	.label_162
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_162:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_179
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_179:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_185
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_185:
	add	r14, 3
	xor	r9d, r9d
.label_152:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_130
.label_606:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_193
	cmp	r8d, 2
	jne	.label_186
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_186
	jmp	.label_133
.label_607:
	cmp	r8d, 2
	jne	.label_201
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_133
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_256
.label_177:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_208
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_221
.label_213:
	test	r12, r12
	jne	.label_137
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_137
.label_187:
	mov	dl, 1
.label_603:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_133
	xor	eax, eax
	mov	r13b, dl
.label_130:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_236
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_238
	jmp	.label_240
	nop	word ptr cs:[rax + rax]
.label_236:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_240
.label_238:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_245
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_248
	nop	dword ptr [rax]
.label_240:
	test	sil, sil
.label_248:
	mov	ebx, r15d
	je	.label_131
	jmp	.label_252
.label_245:
	mov	ebx, r15d
	jmp	.label_252
.label_224:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_211
	xor	r15d, r15d
	jmp	.label_186
.label_201:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_140
	xor	eax, eax
	mov	r15b, 0x5c
.label_256:
	xor	r13d, r13d
	jmp	.label_131
.label_140:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_133
.label_136:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_130
	nop	
.label_252:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_166
	cmp	r8d, 2
	jne	.label_153
	mov	eax, r9d
	and	al, 1
	jne	.label_153
	cmp	r14, rbp
	jae	.label_159
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_159:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_163
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_163:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_168
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_168:
	add	r14, 3
	mov	r9b, 1
.label_153:
	cmp	r14, rbp
	jae	.label_210
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_210:
	inc	r14
	jmp	.label_232
.label_208:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_184
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_184:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_188
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_149:
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
	je	.label_202
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_215
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_178
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_226
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_189:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_192
	bt	rsi, rdx
	jb	.label_133
.label_192:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_189
.label_226:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_241
	xor	r13d, r13d
.label_241:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_149
	jmp	.label_199
.label_246:
	xor	r13d, r13d
	jmp	.label_130
.label_137:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_130
.label_193:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_186
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_186
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_186
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_132
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_182
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_146
	cmp	r14, rbp
	jae	.label_150
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_150:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_157
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_157:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_250
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_250:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_172
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_172:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_182:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_130
.label_186:
	xor	eax, eax
.label_218:
	xor	r13d, r13d
	jmp	.label_130
.label_188:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_212:
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
	je	.label_220
	cmp	rbp, -1
	je	.label_200
	cmp	rbp, -2
	je	.label_202
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_205
	xor	r13d, r13d
.label_205:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_212
	jmp	.label_199
.label_202:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_214
	lea	rax, [r10 + r12]
.label_154:
	cmp	byte ptr [rax + rsi], 0
	je	.label_214
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_154
.label_214:
	mov	qword ptr [rsp + 0x40], rsi
.label_215:
	xor	r13d, r13d
	jmp	.label_178
.label_200:
	xor	r13d, r13d
.label_220:
	mov	r10, qword ptr [rsp + 0x28]
.label_178:
	mov	r12, qword ptr [rsp + 0x40]
.label_199:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_221:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_234
	test	al, al
	je	.label_234
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_130
.label_234:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_217
	nop	word ptr [rax + rax]
.label_216:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_217:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_251
	test	sil, 1
	je	.label_239
	cmp	r14, rbp
	jae	.label_254
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_254:
	inc	r14
	xor	esi, esi
	jmp	.label_239
	nop	word ptr cs:[rax + rax]
.label_251:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_166
	cmp	r8d, 2
	jne	.label_139
	mov	eax, r9d
	and	al, 1
	jne	.label_139
	cmp	r14, rbp
	jae	.label_144
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_144:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_151
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_151:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_158
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_158:
	add	r14, 3
	mov	r9b, 1
.label_139:
	cmp	r14, rbp
	jae	.label_167
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_167:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_171
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_171:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_180
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_180:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_239:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_131
	test	r9b, 1
	je	.label_145
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_253
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_196
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_196:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_181
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_181:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_253:
	mov	rbx, rcx
.label_145:
	cmp	r14, rbp
	jae	.label_216
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_216
	nop	
.label_131:
	test	r9b, 1
	je	.label_223
	and	al, 1
	jne	.label_223
	cmp	r14, rbp
	jae	.label_227
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_227:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_147
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_147:
	add	r14, 2
	xor	r9d, r9d
.label_223:
	mov	ebx, r15d
.label_232:
	cmp	r14, rbp
	jae	.label_190
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_190:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_211
.label_132:
	xor	r13d, r13d
	jmp	.label_130
	nop	word ptr cs:[rax + rax]
.label_141:
	mov	rcx, r12
.label_148:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_247
	or	al, dl
	jne	.label_247
	mov	r11, rcx
	jmp	.label_166
.label_133:
	mov	eax, 2
.label_206:
	mov	qword ptr [rsp + 0x38], rax
.label_166:
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
.label_191:
	mov	r14, rax
.label_194:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_203:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_160
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_165
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_165
	inc	rdx
	nop	dword ptr [rax + rax]
.label_173:
	cmp	r14, rbp
	jae	.label_170
	mov	byte ptr [rcx + r14], al
.label_170:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_173
	jmp	.label_165
.label_244:
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
	jmp	.label_191
.label_160:
	mov	rcx, qword ptr [rsp + 0x10]
.label_165:
	cmp	r14, rbp
	jae	.label_194
	mov	byte ptr [rcx + r14], 0
	jmp	.label_194
.label_146:
	mov	eax, 5
	jmp	.label_206
.label_155:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4038f0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039c0
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
	je	.label_257
	mov	qword ptr [rax], rbx
.label_257:
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
	.align	16
	#Procedure 0x403ab0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_258
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_260:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_260
.label_258:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_262
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_261], OFFSET FLAT:slot0
.label_262:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_259
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_259:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b50
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403b60

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
	js	.label_263
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_266
	cmp	r12d, 0x7fffffff
	je	.label_268
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
	jne	.label_264
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_264:
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
.label_266:
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
	jbe	.label_269
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_265
.label_269:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_267
	mov	rdi, r14
	call	free
.label_267:
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
.label_265:
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
.label_263:
	call	abort
.label_268:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d20
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d30
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
	.align	16
	#Procedure 0x403d50
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
	.align	16
	#Procedure 0x403d70
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
	je	.label_270
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
.label_270:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403de0
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
	je	.label_271
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
.label_271:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e50

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
	je	.label_272
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
.label_272:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ec0
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
	je	.label_273
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
.label_273:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f30
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_274]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_275]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_276]
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x403fa0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_274]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_275]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_276]
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x404010

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_274]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_275]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_276]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404070
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_274]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_275]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_276]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0
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
	je	.label_277
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
.label_277:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404170
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_274]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_275]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_276]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_278
	test	rdx, rdx
	je	.label_278
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_278:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4041e0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_274]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_275]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_276]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_279
	test	rdx, rdx
	je	.label_279
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_279:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404250
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_274]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_275]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_276]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_280
	test	rsi, rsi
	je	.label_280
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_280:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4042c0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_274]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_275]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_276]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_281
	test	rsi, rsi
	je	.label_281
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
.label_281:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404330
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404340
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
	.align	16
	#Procedure 0x404360
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380

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
	.align	16
	#Procedure 0x4043a0

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
	jne	.label_287
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_283
	cmp	ecx, 0x55
	jne	.label_282
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_282
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_282
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_282
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_282
	cmp	byte ptr [rax + 5], 0
	jne	.label_282
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_289
	mov	eax, OFFSET FLAT:label_290
	jmp	.label_286
.label_283:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_282
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_282
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_282
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_282
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_282
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_282
	cmp	byte ptr [rax + 7], 0
	je	.label_288
.label_282:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_142
	mov	eax, OFFSET FLAT:label_176
.label_286:
	cmove	rax, rcx
.label_287:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_288:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_284
	mov	eax, OFFSET FLAT:label_285
	jmp	.label_286
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404470
	.globl savewd_init
	.type savewd_init, @function
savewd_init:

	mov	dword ptr [rdi], 0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404480
	.globl savewd_errno
	.type savewd_errno, @function
savewd_errno:

	xor	eax, eax
	cmp	dword ptr [rdi], 4
	jne	.label_291
	mov	eax, dword ptr [rdi + 4]
.label_291:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404490

	.globl savewd_chdir
	.type savewd_chdir, @function
savewd_chdir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rcx
	mov	ebp, edx
	mov	rbx, rsi
	mov	r14, rdi
	test	r12, r12
	sete	al
	test	bpl, 1
	jne	.label_296
	mov	r13d, 0xffffffff
	test	al, al
	jne	.label_303
.label_296:
	mov	esi, ebp
	and	esi, 1
	shl	esi, 0x11
	or	esi, 0x10900
	xor	eax, eax
	mov	rdi, rbx
	call	open
	mov	r13d, eax
	test	r12, r12
	je	.label_312
	mov	dword ptr [r12], r13d
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 4], eax
.label_312:
	test	r13d, r13d
	js	.label_316
	xor	r15d, r15d
	test	bpl, 2
	je	.label_303
	jmp	.label_298
.label_316:
	call	__errno_location
	mov	r15d, 0xffffffff
	cmp	dword ptr [rax], 0xd
	jne	.label_294
.label_303:
	mov	eax, dword ptr [r14]
	cmp	eax, 5
	ja	.label_297
	mov	ecx, 0x36
	bt	ecx, eax
	jb	.label_292
	test	eax, eax
	jne	.label_293
	mov	edi, OFFSET FLAT:label_85
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	test	eax, eax
	js	.label_308
	mov	dword ptr [r14], 1
.label_301:
	mov	dword ptr [r14 + 4], eax
	jmp	.label_292
.label_293:
	cmp	dword ptr [r14 + 4], 0
	jns	.label_292
	jmp	.label_311
.label_308:
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0xd
	je	.label_300
	cmp	eax, 0x74
	jne	.label_314
.label_300:
	movabs	rax, 0xffffffff00000003
	mov	qword ptr [r14], rax
.label_311:
	lea	rbp, [r14 + 4]
	call	fork
	mov	dword ptr [rbp], eax
	test	eax, eax
	je	.label_292
	mov	r15d, 0xfffffffe
	test	eax, eax
	jle	.label_295
	xor	r12d, r12d
	jmp	.label_298
.label_292:
	test	r13d, r13d
	js	.label_299
	mov	edi, r13d
	call	fchdir
	jmp	.label_302
.label_299:
	mov	rdi, rbx
	call	chdir
.label_302:
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_298
	mov	eax, dword ptr [r14]
	dec	eax
	cmp	eax, 4
	ja	.label_307
	xor	r15d, r15d
	jmp	qword ptr [(rax * 8) + label_309]
.label_502:
	mov	dword ptr [r14], 2
	jmp	.label_298
.label_503:
	cmp	dword ptr [r14 + 4], 0
	jne	.label_313
.label_298:
	test	r13d, r13d
	js	.label_294
	test	r12, r12
	jne	.label_294
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	mov	edi, r13d
	call	close
	mov	dword ptr [rbp], ebx
.label_294:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_295:
	mov	dword ptr [r14], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_301
.label_314:
	mov	dword ptr [r14], 4
	jmp	.label_301
.label_297:
	mov	edi, OFFSET FLAT:label_304
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 0x63
	mov	ecx, OFFSET FLAT:label_306
	call	__assert_fail
.label_307:
	mov	edi, OFFSET FLAT:label_304
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 0x9f
	mov	ecx, OFFSET FLAT:label_310
	call	__assert_fail
.label_313:
	mov	edi, OFFSET FLAT:label_315
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 0x9b
	mov	ecx, OFFSET FLAT:label_310
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404690

	.globl savewd_restore
	.type savewd_restore, @function
savewd_restore:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rdi
	mov	eax, dword ptr [r14]
	cmp	rax, 4
	ja	.label_321
	xor	ebp, ebp
	jmp	qword ptr [(rax * 8) + label_323]
.label_546:
	mov	edi, dword ptr [r14 + 4]
	call	fchdir
	test	eax, eax
	je	.label_327
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	edi, dword ptr [r14 + 4]
	call	close
	mov	dword ptr [r14], 4
	mov	dword ptr [r14 + 4], ebp
	jmp	.label_319
.label_548:
	mov	ebp, dword ptr [r14 + 4]
	call	__errno_location
	mov	rbx, rax
.label_319:
	mov	dword ptr [rbx], ebp
	mov	ebp, 0xffffffff
	jmp	.label_317
.label_547:
	mov	ebx, dword ptr [r14 + 4]
	test	ebx, ebx
	je	.label_326
	jle	.label_317
	lea	rbp, [rsp + 0xc]
	nop	word ptr [rax + rax]
.label_322:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, rbp
	call	waitpid
	test	eax, eax
	jns	.label_320
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_322
	mov	edi, OFFSET FLAT:label_324
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 0xd8
	mov	ecx, OFFSET FLAT:label_325
	call	__assert_fail
.label_320:
	mov	dword ptr [r14 + 4], 0xffffffff
	mov	eax, dword ptr [rsp + 0xc]
	mov	edi, eax
	and	edi, 0x7f
	je	.label_318
	call	raise
	mov	eax, dword ptr [rsp + 0xc]
.label_318:
	movzx	ebp, ah
	jmp	.label_317
.label_327:
	mov	dword ptr [r14], 1
.label_317:
	mov	eax, ebp
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_321:
	mov	edi, OFFSET FLAT:label_304
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 0xe2
	mov	ecx, OFFSET FLAT:label_325
	call	__assert_fail
.label_326:
	mov	edi, esi
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047a0
	.globl savewd_finish
	.type savewd_finish, @function
savewd_finish:

	push	rbx
	mov	rbx, rdi
	mov	eax, dword ptr [rbx]
	cmp	rax, 4
	ja	.label_328
	jmp	qword ptr [(rax * 8) + label_332]
.label_636:
	mov	edi, dword ptr [rbx + 4]
	call	close
	jmp	.label_331
.label_637:
	cmp	dword ptr [rbx + 4], 0
	jns	.label_333
.label_331:
	mov	dword ptr [rbx], 5
	pop	rbx
	ret	
.label_328:
	mov	edi, OFFSET FLAT:label_304
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 0xfb
	mov	ecx, OFFSET FLAT:label_330
	call	__assert_fail
.label_333:
	mov	edi, OFFSET FLAT:label_329
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 0xf7
	mov	ecx, OFFSET FLAT:label_330
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404800

	.globl savewd_process_files
	.type savewd_process_files, @function
savewd_process_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	r12, rsi
	mov	r15d, edi
	movabs	rax, 0xffffffff00000000
	mov	dword ptr [rsp + 8], 0
	movsxd	rcx, r15d
	mov	rdi, rcx
	shl	rdi, 0x20
	add	rdi, rax
	lea	rdx, [r12 + rcx*8 - 8]
	mov	esi, ecx
	mov	qword ptr [rsp + 0x20], rsi
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_346:
	mov	rsi, rbp
	mov	r14, rdi
	lea	rdi, [rcx + rsi]
	test	rdi, rdi
	jle	.label_338
	mov	rbx, qword ptr [rdx + rsi*8]
	lea	rbp, [rsi - 1]
	lea	rdi, [r14 + rax]
	cmp	byte ptr [rbx], 0x2f
	je	.label_346
.label_338:
	add	esi, r15d
	xor	r13d, r13d
	cmp	esi, 2
	mov	ebx, 0
	jl	.label_345
	sar	r14, 0x20
	xor	eax, eax
	mov	r13d, 1
	lea	rbp, [rsp + 8]
	xor	ebx, ebx
	jmp	.label_334
	nop	dword ptr [rax]
.label_339:
	mov	ecx, dword ptr [rsp + 0xc]
	inc	r13
.label_334:
	cmp	eax, 3
	jne	.label_341
	test	ecx, ecx
	jg	.label_343
.label_341:
	mov	rdi, qword ptr [r12 + r13*8 - 8]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x18]
	call	qword ptr [rsp + 0x10]
	cmp	ebx, eax
	cmovl	ebx, eax
.label_343:
	mov	rax, qword ptr [r12 + r13*8]
	cmp	byte ptr [rax], 0x2f
	je	.label_335
	mov	rdi, rbp
	mov	esi, ebx
	call	savewd_restore
	cmp	ebx, eax
	cmovl	ebx, eax
.label_335:
	mov	eax, dword ptr [rsp + 8]
	cmp	r13, r14
	jl	.label_339
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_340
	jmp	qword ptr [(rcx * 8) + label_344]
.label_553:
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	jmp	.label_345
.label_554:
	cmp	dword ptr [rsp + 0xc], 0
	jns	.label_337
.label_345:
	mov	dword ptr [rsp + 8], 5
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r13d, eax
	jge	.label_342
	movsxd	rax, r13d
	lea	rbp, [r12 + rax*8]
	sub	r15d, r13d
	lea	r12, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_336:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r12
	mov	rdx, r14
	call	r13
	cmp	ebx, eax
	cmovl	ebx, eax
	add	rbp, 8
	dec	r15d
	jne	.label_336
.label_342:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_340:
	mov	edi, OFFSET FLAT:label_304
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 0xfb
	mov	ecx, OFFSET FLAT:label_330
	call	__assert_fail
.label_337:
	mov	edi, OFFSET FLAT:label_329
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 0xf7
	mov	ecx, OFFSET FLAT:label_330
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x4049a0

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
	je	.label_359
	mov	edx, OFFSET FLAT:label_350
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_356
.label_359:
	mov	edx, OFFSET FLAT:label_357
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
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
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_362
	jmp	qword ptr [(r12 * 8) + label_363]
.label_557:
	add	rsp, 8
	jmp	.label_349
.label_362:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
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
	jmp	.label_349
.label_558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
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
.label_559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
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
.label_560:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
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
.label_561:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
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
	jmp	.label_349
.label_562:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
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
	jmp	.label_349
.label_563:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
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
	jmp	.label_349
.label_564:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
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
	jmp	.label_349
.label_566:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
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
	jmp	.label_349
.label_565:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
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
.label_349:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_366:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_366
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_377
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_379
.label_377:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_379:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_367
	cmp	r10d, 0x29
	jae	.label_376
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_378
.label_376:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_378:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_367
	cmp	r10d, 0x29
	jae	.label_374
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_375
.label_374:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_375:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_367
	cmp	r10d, 0x29
	jae	.label_372
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_373
.label_372:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_373:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_367
	cmp	r10d, 0x29
	jae	.label_370
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_371
.label_370:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_371:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_367
	cmp	r10d, 0x29
	jae	.label_368
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_369
.label_368:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_369:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_367
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_367
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_367
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_367
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_367:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f20

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_380
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_380:
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
	.align	16
	#Procedure 0x404fb0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_382
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_384
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405030
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_385
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_386
	test	rax, rax
	je	.label_385
.label_386:
	pop	rbx
	ret	
.label_385:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405070

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_387
	test	rax, rax
	je	.label_388
.label_387:
	pop	rbx
	ret	
.label_388:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405090
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_389
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_390
	test	rbx, rbx
	jne	.label_390
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_390:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_391
	test	rax, rax
	je	.label_389
.label_391:
	pop	rbx
	ret	
.label_389:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_392
	test	rbx, rbx
	jne	.label_392
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_392:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_394
	test	rax, rax
	je	.label_393
.label_394:
	pop	rbx
	ret	
.label_393:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405110
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_398
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_400
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_395
.label_398:
	test	rcx, rcx
	jne	.label_401
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_401:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_396
.label_395:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_397
	test	rbx, rbx
	jne	.label_397
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_397:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_399
	test	rax, rax
	je	.label_400
.label_399:
	pop	rbx
	ret	
.label_400:
	call	xalloc_die
.label_396:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051b0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_402
	test	rax, rax
	je	.label_403
.label_402:
	pop	rbx
	ret	
.label_403:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_406
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_408
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_405
	call	free
	xor	eax, eax
	jmp	.label_407
.label_406:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_404
	mov	qword ptr [rsi], rbx
.label_405:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_407
	test	rax, rax
	je	.label_404
.label_407:
	pop	rbx
	ret	
.label_404:
	call	xalloc_die
.label_408:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405240
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
	je	.label_410
	test	r14, r14
	je	.label_409
.label_410:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_409:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405280
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_411
	call	rpl_calloc
	test	rax, rax
	je	.label_411
	pop	rcx
	ret	
.label_411:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052b0

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
	je	.label_412
	test	r15, r15
	je	.label_413
.label_412:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_413:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4052f0
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
	je	.label_415
	test	r15, r15
	je	.label_414
.label_415:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_414:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405340

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_416
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405370

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_417
	test	rsi, rsi
	mov	ecx, 1
	je	.label_418
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_418
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_417:
	mov	ecx, 1
.label_418:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053c0

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
	je	.label_419
	cmp	r15, -2
	jb	.label_419
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_419
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_419:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405420

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
	jne	.label_421
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_420
	test	cl, cl
	jne	.label_420
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_420
.label_421:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_420
	call	__errno_location
	mov	dword ptr [rax], 0
.label_420:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405480

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_422
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_422:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_424
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_425
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_423
.label_425:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_423:
	mov	edx, dword ptr [rax]
.label_424:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405550

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_427
	cmp	byte ptr [rax], 0x43
	jne	.label_429
	cmp	byte ptr [rax + 1], 0
	je	.label_426
.label_429:
	mov	esi, OFFSET FLAT:label_428
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_427
.label_426:
	xor	ebx, ebx
.label_427:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405590

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_45
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_430
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055c0

	.globl mkancesdirs
	.type mkancesdirs, @function
mkancesdirs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r8, rsi
	mov	r13, rdi
	xor	ebp, ebp
	mov	r14, r13
	xor	r15d, r15d
.label_445:
	mov	al, byte ptr [r14]
.label_448:
	mov	r12, r14
	test	al, al
	je	.label_431
	mov	ebx, eax
	mov	r14, r12
	jmp	.label_441
	nop	word ptr cs:[rax + rax]
.label_440:
	test	sil, sil
	cmove	rbp, r14
	mov	bl, 0x2f
.label_441:
	inc	r14
	test	rbp, rbp
	je	.label_434
	nop	word ptr cs:[rax + rax]
.label_447:
	movzx	eax, byte ptr [r14]
	cmp	bl, 0x2f
	sete	sil
	cmp	al, 0x2f
	je	.label_440
	cmp	bl, 0x2f
	jne	.label_442
	test	al, al
	jne	.label_446
.label_442:
	inc	r14
	test	al, al
	mov	ebx, eax
	jne	.label_447
	jmp	.label_431
	nop	word ptr cs:[rax + rax]
.label_434:
	movzx	eax, byte ptr [r14]
	cmp	al, 0x2f
	je	.label_436
	inc	r14
	test	al, al
	mov	ebx, eax
	jne	.label_434
	jmp	.label_431
.label_436:
	cmp	bl, 0x2f
	sete	sil
	jmp	.label_440
	nop	
.label_446:
	mov	rsi, rbp
	sub	rsi, r12
	cmp	rsi, 1
	jne	.label_443
	cmp	byte ptr [r12], 0x2e
	je	.label_448
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rbp], 0
	jmp	.label_432
.label_443:
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rbp], 0
	cmp	rsi, 2
	jne	.label_432
	cmp	byte ptr [r12], 0x2e
	jne	.label_432
	xor	eax, eax
	cmp	byte ptr [r12 + 1], 0x2e
	mov	dword ptr [rsp + 4], 0
	je	.label_444
.label_432:
	mov	rbx, r8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x10]
	call	qword ptr [rsp + 8]
	test	eax, eax
	js	.label_437
	mov	dword ptr [rsp + 4], 0
	mov	al, 1
	jmp	.label_438
.label_437:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 4], eax
	mov	al, r15b
.label_438:
	mov	r8, rbx
.label_444:
	mov	r15d, eax
	and	al, 1
	movzx	edx, al
	xor	ecx, ecx
	mov	rdi, r8
	mov	rsi, r12
	mov	rbx, r8
	call	savewd_chdir
	mov	r8, rbx
	mov	ebx, 0xffffffff
	cmp	eax, -1
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	je	.label_435
	mov	byte ptr [rbp], 0x2f
	test	eax, eax
	mov	ebx, eax
	je	.label_445
.label_435:
	mov	ebp, dword ptr [rsp + 4]
	test	ebp, ebp
	je	.label_439
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_439
	mov	dword ptr [rax], ebp
.label_439:
	movsxd	r12, ebx
	jmp	.label_433
.label_431:
	sub	r12, r13
.label_433:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405770

	.globl dirchownmod
	.type dirchownmod, @function
dirchownmod:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	dword ptr [rsp + 0xc], r9d
	mov	r12d, r8d
	mov	r13d, ecx
	mov	r15d, edx
	mov	r14d, edi
	test	r14d, r14d
	mov	qword ptr [rsp + 0x10], rsi
	lea	rdx, [rsp + 0x18]
	mov	edi, 1
	js	.label_462
	mov	esi, r14d
	call	__fxstat
	jmp	.label_460
.label_462:
	call	__xstat
.label_460:
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_449
	mov	rbx, qword ptr [rsp + 0x30]
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_463
	cmp	r13d, -1
	je	.label_454
	mov	rax, rbx
	shr	rax, 0x20
	cmp	eax, r13d
	jne	.label_456
.label_454:
	xor	eax, eax
	cmp	r12d, -1
	je	.label_459
	cmp	dword ptr [rsp + 0x38], r12d
	je	.label_459
.label_456:
	test	r14d, r14d
	js	.label_461
	mov	edi, r14d
	mov	esi, r13d
	mov	edx, r12d
	call	fchown
	jmp	.label_451
.label_463:
	call	__errno_location
	mov	dword ptr [rax], 0x14
	mov	ebp, 0xffffffff
	jmp	.label_449
.label_461:
	cmp	r15d, -1
	je	.label_458
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, r13d
	mov	edx, r12d
	call	lchown
	jmp	.label_451
.label_458:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, r13d
	mov	edx, r12d
	call	chown
.label_451:
	mov	ebp, eax
	mov	ecx, ebx
	and	ecx, 0x49
	mov	edx, ebx
	and	edx, 0xc00
	xor	eax, eax
	test	ebp, ebp
	cmove	eax, edx
	test	ecx, ecx
	cmove	eax, ecx
	test	ebp, ebp
	jne	.label_449
.label_459:
	mov	esi, dword ptr [rsp + 0xe0]
	mov	ecx, ebx
	xor	ecx, dword ptr [rsp + 0xc]
	or	ecx, eax
	xor	ebp, ebp
	test	ecx, esi
	je	.label_449
	not	esi
	and	esi, ebx
	and	esi, 0xfff
	or	esi, dword ptr [rsp + 0xc]
	test	r14d, r14d
	js	.label_450
	mov	edi, r14d
	call	fchmod
	mov	ebp, eax
	jmp	.label_453
.label_449:
	test	r14d, r14d
	js	.label_455
.label_453:
	test	ebp, ebp
	je	.label_457
	call	__errno_location
	mov	rbx, rax
	mov	r15d, dword ptr [rbx]
	mov	edi, r14d
	call	close
	mov	dword ptr [rbx], r15d
	jmp	.label_455
.label_457:
	mov	edi, r14d
	call	close
.label_452:
	mov	ebp, eax
.label_455:
	mov	eax, ebp
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_450:
	mov	rdi, qword ptr [rsp + 0x10]
	call	chmod
	jmp	.label_452
	.section	.text
	.align	16
	#Procedure 0x4058e0

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
	ja	.label_464
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
	jmp	.label_465
.label_464:
	mov	eax, ebx
.label_465:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405930

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_466
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_468
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_466
.label_468:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_466
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_467
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_467:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_466:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_469
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_469
	test	byte ptr [rbx + 1], 1
	je	.label_469
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_469:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059f0

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
	jne	.label_470
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_470
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_471
.label_470:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_471:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_472
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_472:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405a60

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a80

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section .text
	.align	16
	#Procedure 0x405a90

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_475
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_475:
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
	ja	.label_481
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_477
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_478
	test	esi, esi
	jne	.label_481
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_483
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_492
.label_481:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_484
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_478
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_489
.label_477:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_479
.label_478:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_493
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_473
.label_493:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_473:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_474:
	call	fcntl
.label_479:
	mov	ebp, eax
.label_476:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_489:
	cmp	eax, 6
	jne	.label_484
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_486
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_488
.label_484:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_487
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_491
.label_483:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_492:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_474
.label_486:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_488:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_480
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_485
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_485
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_476
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_490
.label_485:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_476
.label_487:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_491:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_479
.label_480:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_490:
	test	al, al
	je	.label_476
	test	ebp, ebp
	js	.label_476
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_482
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_476
.label_482:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_476
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
