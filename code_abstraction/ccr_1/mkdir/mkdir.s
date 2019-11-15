	.section	.text
	.align	16
	#Procedure 0x401950

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_11
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_11:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
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
	#Procedure 0x401a70

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401aa0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_18
	nop	
.label_31:
	mov	edi, OFFSET FLAT:label_23
	call	strcmp
	test	eax, eax
	je	.label_29
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_31
.label_29:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_23
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_20
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_23
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_27
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
	.align	16
	#Procedure 0x401bc0

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
	mov	esi, OFFSET FLAT:label_27
	call	setlocale
	mov	edi, OFFSET FLAT:label_39
	mov	esi, OFFSET FLAT:label_50
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_39
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r12d, r12d
	jmp	.label_35
.label_488:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x20], rax
	nop	word ptr cs:[rax + rax]
.label_35:
	mov	edx, OFFSET FLAT:label_45
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x59
	jle	.label_48
	add	eax, -0x5a
	cmp	eax, 0x1c
	ja	.label_32
	jmp	qword ptr [word ptr [+ (rax * 8) + label_34]]
.label_485:
	cmp	qword ptr [word ptr [rip + optarg]],  0
	je	.label_35
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_35
.label_486:
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_35
.label_487:
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:make_ancestor
	jmp	.label_35
.label_48:
	cmp	eax, -1
	jne	.label_43
	cmp	dword ptr [dword ptr [rip + optind]],  ebx
	je	.label_44
	test	r12, r12
	jne	.label_46
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_41
.label_46:
	xor	edi, edi
	call	umask
	mov	ebp, eax
	mov	edi, ebp
	call	umask
	mov	dword ptr [rsp + 0x10], ebp
	test	r12, r12
	je	.label_33
	mov	rdi, r12
	call	mode_compile
	mov	r13, rax
	test	r13, r13
	je	.label_37
	mov	edi, 0x1ff
	mov	esi, 1
	mov	edx, ebp
	mov	rcx, r13
	mov	r8, r15
	call	mode_adjust
	mov	dword ptr [rsp + 0x14], eax
	mov	rdi, r13
	call	free
	jmp	.label_41
.label_33:
	mov	dword ptr [rsp + 0x14], 0x1ff
.label_41:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
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
.label_43:
	cmp	eax, 0xffffff7d
	je	.label_49
	cmp	eax, 0xffffff7e
	jne	.label_32
	xor	edi, edi
	call	usage
.label_49:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_23
	mov	edx, OFFSET FLAT:label_21
	mov	r8d, OFFSET FLAT:label_36
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_32:
	mov	edi, 1
	call	usage
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
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
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
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
	#Procedure 0x401e30

	.globl make_ancestor
	.type make_ancestor, @function
make_ancestor:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rdx
	mov	r15, rsi
	mov	r14, rdi
	cmp	byte ptr [r13 + 0x14], 0
	je	.label_54
	call	defaultcon
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	ignorable_ctx_err
	test	al, al
	jne	.label_54
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	call	error
.label_54:
	mov	edi, dword ptr [r13 + 8]
	test	dil, 0xc0
	je	.label_55
	and	edi, 0xffffff3f
	call	umask
	mov	esi, 0x1ff
	mov	rdi, r15
	call	mkdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	mov	r15d, dword ptr [rbx]
	mov	edi, dword ptr [r13 + 8]
	call	umask
	mov	dword ptr [rbx], r15d
	jmp	.label_53
.label_55:
	mov	esi, 0x1ff
	mov	rdi, r15
	call	mkdir
	mov	ebp, eax
.label_53:
	test	ebp, ebp
	jne	.label_51
	mov	ebp, dword ptr [r13 + 8]
	shr	ebp, 8
	and	ebp, 1
	mov	rdi, r14
	mov	rsi, r13
	call	announce_mkdir
.label_51:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f10

	.globl process_dir
	.type process_dir, @function
process_dir:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x14], 0
	je	.label_56
	cmp	qword ptr [rbx], 0
	jne	.label_56
	call	defaultcon
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	ignorable_ctx_err
	test	al, al
	jne	.label_56
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	call	error
.label_56:
	mov	rdx, qword ptr [rbx]
	mov	r8d, dword ptr [rbx + 0xc]
	mov	eax, dword ptr [rbx + 0x10]
	mov	r9d, OFFSET FLAT:announce_mkdir
	mov	rdi, r14
	mov	rsi, r15
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
	je	.label_57
	cmp	byte ptr [rbx + 0x14], 0
	je	.label_57
	cmp	qword ptr [rbx], 0
	je	.label_57
	call	restorecon
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, ebx
	call	ignorable_ctx_err
	test	al, al
	jne	.label_57
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	call	error
.label_57:
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
	#Procedure 0x402010

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402020

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	cmp	edi, 0x5f
	sete	cl
	cmp	edi, 0x3d
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402030

	.globl announce_mkdir
	.type announce_mkdir, @function
announce_mkdir:
	push	r14
	push	rbx
	push	rax
	mov	rax, rdi
	mov	rbx, qword ptr [rsi + 0x18]
	test	rbx, rbx
	je	.label_59
	mov	r14,  qword ptr [word ptr [rip + stdout]]
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
.label_59:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402080

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402090

	.globl prog_fprintf
	.type prog_fprintf, @function
prog_fprintf:
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, rsi
	mov	rbx, rdi
	test	al, al
	je	.label_60
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_60:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rdi,  qword ptr [word ptr [rip + program_name]]
	mov	rsi, rbx
	call	fputs_unlocked
	mov	edi, OFFSET FLAT:label_61
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
	mov	edi, 0xa
	mov	rsi, rbx
	call	fputc_unlocked
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402160
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402170
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402180

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_65
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_62
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_62
.label_65:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_66
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_62:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_64
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_66:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_64:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_67
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
	#Procedure 0x402240

	.globl make_dir_parents
	.type make_dir_parents, @function
make_dir_parents:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r15, r9
	mov	r13d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbx, rdx
	mov	rbp, rsi
	mov	r12, rdi
	cmp	byte ptr [r12], 0x2f
	je	.label_82
	mov	rdi, rbp
	call	savewd_errno
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_71
.label_82:
	mov	qword ptr [rsp + 0x30], r15
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_69
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x20]
	call	mkancesdirs
	mov	r15, rax
	test	r15, r15
	js	.label_79
.label_69:
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x18], rbx
	mov	ebp, dword ptr [rsp + 0x110]
	mov	eax, dword ptr [rsp + 0x100]
	and	ebp, dword ptr [rsp + 0x108]
	and	eax, 0xc00
	mov	ebx, r13d
	and	ebx, 0x200
	mov	ecx, r13d
	and	ecx, 0xffffffc0
	mov	r14d, r13d
	and	r14d, 0xffffffed
	or	ebx, eax
	cmove	r14d, r13d
	cmp	ebp, -1
	cmovne	r14d, ecx
	add	r15, r12
	mov	rdi, r15
	mov	esi, r14d
	call	mkdir
	test	eax, eax
	mov	dword ptr [rsp + 0x14], ebp
	je	.label_70
	mov	bl, byte ptr [rsp + 0x118]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	r14d, 0xffffffff
	mov	edx, 2
	jmp	.label_77
.label_70:
	cmp	ebp, -1
	sete	byte ptr [rsp + 0x13]
	mov	rbp, r12
	mov	r12d, r13d
	and	r12d, dword ptr [rsp + 0x100]
	and	r12d, 0x1ff
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x30]
	or	r12d, ebx
	mov	r12, rbp
	sete	bl
	and	bl, byte ptr [rsp + 0x13]
	xor	ebp, ebp
	mov	edx, 3
.label_77:
	test	bl, bl
	je	.label_84
	mov	bl, 1
	mov	r14d, ebp
	test	r14d, r14d
	je	.label_76
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_71
	cmp	r14d, 2
	je	.label_71
	lea	rsi, [rsp + 0x38]
	mov	rdi, r15
	call	stat
	test	eax, eax
	je	.label_78
	cmp	r14d, 0x11
	jne	.label_71
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 2
	je	.label_71
	cmp	ebp, 0x14
	je	.label_71
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	jmp	.label_85
.label_84:
	lea	rcx, [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r15
	call	savewd_chdir
	cmp	eax, -2
	jg	.label_72
	mov	bl, 1
	jmp	.label_76
.label_79:
	mov	bl, 1
	cmp	r15, -1
	jne	.label_76
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_71
.label_72:
	test	eax, eax
	mov	eax, OFFSET FLAT:label_80
	cmove	r15, rax
	mov	edi, dword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x100]
	mov	dword ptr [rsp], eax
	mov	rsi, r15
	mov	edx, r14d
	mov	ecx, dword ptr [rsp + 0x108]
	mov	r8d, dword ptr [rsp + 0x110]
	mov	r9d, r13d
	call	dirchownmod
	mov	bl, 1
	test	eax, eax
	je	.label_76
	mov	r14d, ebp
	test	r14d, r14d
	je	.label_86
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_71
	cmp	r14d, 2
	je	.label_71
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	je	.label_71
.label_86:
	call	__errno_location
	cmp	dword ptr [rsp + 0x14], -1
	mov	r14d, dword ptr [rax]
	mov	eax, OFFSET FLAT:label_73
	mov	esi, OFFSET FLAT:label_74
	cmove	rsi, rax
	xor	ebx, ebx
	xor	edi, edi
	jmp	.label_75
.label_78:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x50]
	mov	bl, 1
	cmp	eax, 0x4000
	je	.label_76
.label_71:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
.label_75:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
.label_85:
	call	error
.label_76:
	mov	eax, ebx
	add	rsp, 0xc8
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
	#Procedure 0x402510

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rdi
	mov	al, byte ptr [rbp]
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_91
	xor	r14d, r14d
	xor	edi, edi
	mov	rbx, rbp
	nop	
.label_106:
	movsx	eax, byte ptr [rbx]
	lea	edi, [rax + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_109
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	mov	ecx, eax
	and	cl, 0xf8
	cmp	cl, 0x30
	je	.label_106
	xor	r14d, r14d
	test	al, al
	jne	.label_109
	call	octal_to_mode
	sub	rbx, rbp
	mov	ecx, eax
	and	ecx, 0xc00
	or	ecx, 0x3ff
	cmp	rbx, 5
	mov	esi, 0xfff
	cmovl	esi, ecx
	mov	edi, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	make_node_op_equals
.label_91:
	mov	edi, 1
	mov	rax, rbp
	jmp	.label_93
.label_101:
	add	rdi, rdx
	inc	rax
.label_93:
	movzx	ecx, byte ptr [rax]
	cmp	cl, 0x2c
	jle	.label_96
	cmp	cl, 0x2d
	je	.label_99
	cmp	cl, 0x3d
	mov	edx, 1
	je	.label_101
	jmp	.label_104
	nop	
.label_96:
	cmp	cl, 0x2b
	mov	edx, 1
	je	.label_101
	test	cl, cl
	je	.label_108
.label_104:
	xor	edx, edx
	jmp	.label_101
	nop	word ptr cs:[rax + rax]
.label_99:
	mov	edx, 1
	jmp	.label_101
.label_108:
	mov	esi, 0x10
	call	xnmalloc
	mov	r14, rax
	xor	r15d, r15d
	movabs	r12, 0x2000280000000000
	jmp	.label_112
	.section	.text
	.align	16
	#Procedure 0x402800

	.globl octal_to_mode
	.type octal_to_mode, @function
octal_to_mode:
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402810

	.globl make_node_op_equals
	.type make_node_op_equals, @function
make_node_op_equals:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, esi
	mov	ebp, edi
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebp
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402840
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	stat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_114
	mov	edi, dword ptr [rsp + 0x20]
	mov	esi, 0xfff
	call	make_node_op_equals
.label_114:
	add	rsp, 0x98
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402870

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
	je	.label_119
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
.label_118:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_115
	cmp	ebp, 3
	jne	.label_120
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
	jmp	.label_120
	nop	dword ptr [rax + rax]
.label_115:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_120:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_116
	cmp	esi, 0x2d
	je	.label_122
	cmp	esi, 0x3d
	jne	.label_117
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
	jmp	.label_117
	nop	word ptr [rax + rax]
.label_122:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_117
	nop	dword ptr [rax]
.label_116:
	or	r13d, ebp
	or	edi, ebp
.label_117:
	movzx	eax, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_118
.label_119:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_121
	mov	dword ptr [rax], r13d
.label_121:
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
	#Procedure 0x4029b0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_126
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_128
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_128
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_124
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_124:
	mov	rbx, r14
.label_128:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_126:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_127
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a60
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
	#Procedure 0x402aa0
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
	#Procedure 0x402ab0
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
	#Procedure 0x402ac0

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
	#Procedure 0x402b00
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
	#Procedure 0x402b20

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
	#Procedure 0x402b50
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
	.align	16
	#Procedure 0x402bd0

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
.label_160:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_186
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_166]]
.label_627:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_170
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_178
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_628:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_187
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_187
	xor	r14d, r14d
.label_201:
	cmp	r14, r11
	jae	.label_198
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_198:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_201
.label_187:
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
	jmp	.label_191
.label_620:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_191
.label_623:
	mov	al, 1
.label_621:
	mov	r12b, 1
.label_624:
	test	r12b, 1
	mov	cl, 1
	je	.label_219
	mov	ecx, eax
.label_219:
	mov	al, cl
.label_622:
	test	r12b, 1
	jne	.label_221
	test	r11, r11
	je	.label_193
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_193:
	mov	r14d, 1
	jmp	.label_226
.label_221:
	xor	r14d, r14d
.label_226:
	mov	ecx, OFFSET FLAT:label_178
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_191
.label_625:
	test	r12b, 1
	jne	.label_233
	test	r11, r11
	je	.label_241
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_241:
	mov	r14d, 1
	jmp	.label_237
.label_626:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_190
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_191
.label_233:
	xor	r14d, r14d
.label_237:
	mov	eax, OFFSET FLAT:label_190
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_191:
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
	jmp	.label_184
	nop	dword ptr [rax]
.label_144:
	inc	rsi
.label_184:
	cmp	rbp, -1
	je	.label_177
	cmp	rsi, rbp
	jne	.label_157
	jmp	.label_182
	nop	word ptr cs:[rax + rax]
.label_177:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_182
.label_157:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_189
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_214
	cmp	rbp, -1
	jne	.label_214
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
.label_214:
	cmp	rbx, rbp
	jbe	.label_207
.label_189:
	xor	r8d, r8d
.label_234:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_208
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_211]]
.label_579:
	test	rsi, rsi
	jne	.label_148
	jmp	.label_215
	nop	
.label_207:
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
	jne	.label_224
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_234
	jmp	.label_138
.label_224:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_234
.label_583:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_240
	test	rsi, rsi
	jne	.label_242
	cmp	rbp, 1
	je	.label_215
	xor	r13d, r13d
	jmp	.label_156
.label_572:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_131
	cmp	byte ptr [rsp + 7], 0
	jne	.label_135
	cmp	r12d, 2
	jne	.label_137
	mov	eax, r9d
	and	al, 1
	jne	.label_137
	cmp	r14, r11
	jae	.label_141
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_141:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_145
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_145:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_151
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_151:
	add	r14, 3
	mov	r9b, 1
.label_137:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_150
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_150:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_161
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_161
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_161
	cmp	r14, r11
	jae	.label_171
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_171:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_194
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_194:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_156
.label_573:
	mov	bl, 0x62
	jmp	.label_185
.label_574:
	mov	cl, 0x74
	jmp	.label_172
.label_575:
	mov	bl, 0x76
	jmp	.label_185
.label_576:
	mov	bl, 0x66
	jmp	.label_185
.label_577:
	mov	cl, 0x72
	jmp	.label_172
.label_580:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_196
	cmp	byte ptr [rsp + 7], 0
	jne	.label_135
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
	jae	.label_204
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_204:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_212
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_212:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_216
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_216:
	add	r14, 3
	xor	r9d, r9d
.label_196:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_156
.label_581:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_223
	cmp	r12d, 2
	jne	.label_148
	cmp	byte ptr [rsp + 7], 0
	je	.label_148
	jmp	.label_135
.label_582:
	cmp	r12d, 2
	jne	.label_230
	cmp	byte ptr [rsp + 7], 0
	jne	.label_135
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_158
.label_208:
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
.label_140:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_152
	test	r8b, r8b
	je	.label_152
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_156
.label_240:
	test	rsi, rsi
	jne	.label_159
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_159
.label_215:
	mov	dl, 1
.label_578:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_135
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_156:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_167
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_168
	jmp	.label_139
	nop	word ptr cs:[rax + rax]
.label_167:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_139
.label_168:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_179
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_158
	jmp	.label_195
	nop	dword ptr [rax]
.label_139:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_195
	jmp	.label_158
.label_179:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_195
.label_131:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_144
	xor	r15d, r15d
	jmp	.label_148
.label_230:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_172
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_158
.label_172:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_135
.label_185:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_156
	nop	word ptr cs:[rax + rax]
.label_195:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_135
	cmp	r12d, 2
	jne	.label_173
	mov	eax, r9d
	and	al, 1
	jne	.label_173
	cmp	r14, r11
	jae	.label_222
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_222:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_205
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_205:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_228
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_228:
	add	r14, 3
	mov	r9b, 1
.label_173:
	cmp	r14, r11
	jae	.label_232
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_232:
	inc	r14
	jmp	.label_235
.label_174:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_238
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_238:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_197:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_143
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_147
	cmp	rbp, -2
	je	.label_239
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_133
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_206:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_183
	bt	rsi, rdx
	jb	.label_138
.label_183:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_206
.label_133:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_181
	xor	r13d, r13d
.label_181:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_197
	jmp	.label_140
.label_161:
	xor	r13d, r13d
	jmp	.label_156
.label_159:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_156
.label_223:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_148
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_148
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_148
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_213
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_203
	cmp	byte ptr [rsp + 7], 0
	jne	.label_135
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_202
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_202:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_163
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_163:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_225
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_225:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_227
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_227:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_156
.label_148:
	xor	eax, eax
.label_242:
	xor	r13d, r13d
	jmp	.label_156
.label_152:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_236
	nop	word ptr cs:[rax + rax]
.label_200:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_236:
	test	r8b, r8b
	je	.label_243
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_134
	cmp	r14, r11
	jae	.label_244
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_244:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_134
	nop	dword ptr [rax]
.label_243:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_138
	cmp	r12d, 2
	jne	.label_142
	mov	eax, r9d
	and	al, 1
	jne	.label_142
	cmp	r14, r11
	jae	.label_146
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_146:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_132
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_132:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_136
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_136:
	add	r14, 3
	mov	r9b, 1
.label_142:
	cmp	r14, r11
	jae	.label_175
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_175:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_164
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_164:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_169
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_169:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_134:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_158
	test	r9b, 1
	je	.label_188
	mov	ebx, eax
	and	bl, 1
	jne	.label_188
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_192
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_192:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_217
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_217:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_188:
	cmp	r14, r11
	jae	.label_200
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_200
	nop	word ptr cs:[rax + rax]
.label_158:
	test	r9b, 1
	je	.label_209
	and	al, 1
	jne	.label_209
	cmp	r14, r11
	jae	.label_210
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_210:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_154
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_154:
	add	r14, 2
	xor	r9d, r9d
.label_209:
	mov	ebx, r15d
.label_235:
	cmp	r14, r11
	jae	.label_218
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_218:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_144
.label_147:
	xor	r13d, r13d
.label_143:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_140
.label_239:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_229
	mov	rsi, qword ptr [rsp + 0x50]
.label_231:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_149
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_231
	xor	r13d, r13d
	jmp	.label_140
.label_229:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_140
.label_149:
	xor	r13d, r13d
	jmp	.label_140
.label_213:
	xor	r13d, r13d
	jmp	.label_156
.label_203:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_156
	nop	dword ptr [rax + rax]
.label_182:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_130
	or	dl, al
	je	.label_138
.label_130:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_153
	or	dl, al
	jne	.label_153
	test	r10b, 1
	jne	.label_155
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_153
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_160
.label_153:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_162
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_165
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_165
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_180:
	cmp	r14, r11
	jae	.label_176
	mov	byte ptr [rcx + r14], al
.label_176:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_180
	jmp	.label_165
.label_135:
	mov	qword ptr [rsp + 0x20], rbp
.label_138:
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
.label_220:
	mov	r14, rax
.label_199:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_155:
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
	jmp	.label_220
.label_162:
	mov	rcx, qword ptr [rsp + 8]
.label_165:
	cmp	r14, r11
	jae	.label_199
	mov	byte ptr [rcx + r14], 0
	jmp	.label_199
.label_186:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403990
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039a0

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
	je	.label_245
	mov	qword ptr [rax], rbx
.label_245:
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
	#Procedure 0x403a90
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_246
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_248:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_248
.label_246:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_249
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_250]], OFFSET FLAT:slot0
.label_249:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_247
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_247:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b30

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403b40

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
	js	.label_251
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_254
	cmp	r12d, 0x7fffffff
	je	.label_256
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
	jne	.label_252
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_252:
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
.label_254:
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
	jbe	.label_257
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_253
.label_257:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_255
	mov	rdi, r14
	call	free
.label_255:
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
.label_253:
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
.label_251:
	call	abort
.label_256:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d00

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d10
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d20
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
	#Procedure 0x403d30

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
	.align	16
	#Procedure 0x403d70

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
	je	.label_258
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
.label_258:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dd0

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
	.align	16
	#Procedure 0x403e10

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
	.align	16
	#Procedure 0x403e30
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
	.align	16
	#Procedure 0x403e50

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
	mov	rcx,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
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
	.align	16
	#Procedure 0x403ec0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ee0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ef0
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
	.align	16
	#Procedure 0x403f40

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f50

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
	mov	rax,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
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
	.align	16
	#Procedure 0x403fc0
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
	.align	16
	#Procedure 0x403fe0
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
	.align	16
	#Procedure 0x404000

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404010
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
	#Procedure 0x404020

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404030

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404040

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
	jne	.label_269
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
	je	.label_266
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_262
	mov	eax, OFFSET FLAT:label_263
	jmp	.label_264
.label_266:
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
	je	.label_265
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_267
	mov	eax, OFFSET FLAT:label_268
	jmp	.label_264
.label_265:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_190
	mov	eax, OFFSET FLAT:label_178
.label_264:
	cmove	rax, rcx
.label_269:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404100

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
	je	.label_270
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_272
	jmp	.label_271
.label_270:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_271
.label_272:
	mov	eax, 1
	test	bpl, bpl
	je	.label_271
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
.label_271:
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
	.align	16
	#Procedure 0x404180

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
	je	.label_275
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_273
	jmp	.label_274
.label_275:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_274
.label_273:
	mov	eax, 1
	test	bpl, bpl
	je	.label_274
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
.label_274:
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
	.align	16
	#Procedure 0x404210

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
	je	.label_276
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_278
	jmp	.label_277
.label_276:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_277
.label_278:
	mov	eax, 1
	test	bpl, bpl
	je	.label_277
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
.label_277:
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
	.align	16
	#Procedure 0x404290

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
	je	.label_281
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_280
	jmp	.label_279
.label_281:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_279
.label_280:
	mov	eax, 1
	test	bpl, bpl
	je	.label_279
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
.label_279:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404300

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
	je	.label_284
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_282
	jmp	.label_283
.label_284:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_283
.label_282:
	mov	eax, 1
	test	bpl, bpl
	je	.label_283
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_283:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404360

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
	je	.label_285
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_287
	jmp	.label_286
.label_285:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_286
.label_287:
	mov	eax, 1
	test	bpl, bpl
	je	.label_286
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_286:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4043b0

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
	je	.label_290
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_289
	jmp	.label_288
.label_290:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_288
.label_289:
	mov	eax, 1
	test	bpl, bpl
	je	.label_288
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_288:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404400

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_292
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_293
	jmp	.label_291
.label_292:
	mov	eax, 1
	test	cl, cl
	je	.label_291
.label_293:
	xor	eax, eax
.label_291:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404430

	.globl savewd_init
	.type savewd_init, @function
savewd_init:
	mov	dword ptr [rdi], 0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404440

	.globl savewd_errno
	.type savewd_errno, @function
savewd_errno:
	xor	eax, eax
	cmp	dword ptr [rdi], 4
	jne	.label_294
	mov	eax, dword ptr [rdi + 4]
.label_294:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404450

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
	mov	r15, rcx
	mov	ebp, edx
	mov	r12, rsi
	mov	rbx, rdi
	test	r15, r15
	sete	al
	test	bpl, 1
	jne	.label_298
	mov	r13d, 0xffffffff
	test	al, al
	jne	.label_310
.label_298:
	mov	esi, ebp
	and	esi, 1
	shl	esi, 0x11
	or	esi, 0x10900
	xor	eax, eax
	mov	rdi, r12
	call	open
	mov	r13d, eax
	test	r15, r15
	je	.label_304
	mov	dword ptr [r15], r13d
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 4], eax
.label_304:
	test	r13d, r13d
	js	.label_307
	xor	r14d, r14d
	test	bpl, 2
	je	.label_310
	jmp	.label_299
.label_307:
	call	__errno_location
	mov	r14d, 0xffffffff
	cmp	dword ptr [rax], 0xd
	jne	.label_296
.label_310:
	mov	rdi, rbx
	call	savewd_save
	mov	r14d, 0xfffffffe
	test	al, al
	je	.label_300
	xor	r15d, r15d
	jmp	.label_299
.label_300:
	test	r13d, r13d
	js	.label_306
	mov	edi, r13d
	call	fchdir
	jmp	.label_309
.label_306:
	mov	rdi, r12
	call	chdir
.label_309:
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_299
	mov	eax, dword ptr [rbx]
	dec	eax
	cmp	eax, 4
	ja	.label_295
	xor	r14d, r14d
	jmp	qword ptr [word ptr [+ (rax * 8) + label_297]]
.label_492:
	mov	dword ptr [rbx], 2
	jmp	.label_299
.label_493:
	cmp	dword ptr [rbx + 4], 0
	jne	.label_305
.label_299:
	test	r13d, r13d
	js	.label_296
	test	r15, r15
	jne	.label_296
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	mov	edi, r13d
	call	close
	mov	dword ptr [rbp], ebx
.label_296:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_295:
	mov	edi, OFFSET FLAT:label_301
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 0x9f
	mov	ecx, OFFSET FLAT:label_303
	call	__assert_fail
.label_305:
	mov	edi, OFFSET FLAT:label_308
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 0x9b
	mov	ecx, OFFSET FLAT:label_303
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404590

	.globl savewd_save
	.type savewd_save, @function
savewd_save:
	push	rbx
	mov	rbx, rdi
	mov	eax, dword ptr [rbx]
	cmp	eax, 5
	ja	.label_314
	mov	ecx, 0x36
	bt	ecx, eax
	jb	.label_317
	test	eax, eax
	jne	.label_318
	mov	edi, OFFSET FLAT:label_80
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	test	eax, eax
	js	.label_313
	mov	dword ptr [rbx], 1
	jmp	.label_320
.label_313:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0xd
	je	.label_312
	cmp	ecx, 0x74
	jne	.label_316
.label_312:
	movabs	rax, 0xffffffff00000003
	mov	qword ptr [rbx], rax
.label_318:
	cmp	dword ptr [rbx + 4], 0
	jns	.label_317
	call	fork
	mov	dword ptr [rbx + 4], eax
	test	eax, eax
	je	.label_317
	mov	al, 1
	jg	.label_319
	mov	dword ptr [rbx], 4
	call	__errno_location
	jmp	.label_311
.label_316:
	mov	dword ptr [rbx], 4
.label_311:
	mov	eax, dword ptr [rax]
.label_320:
	mov	dword ptr [rbx + 4], eax
.label_317:
	xor	eax, eax
.label_319:
	pop	rbx
	ret	
.label_314:
	mov	edi, OFFSET FLAT:label_301
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 0x63
	mov	ecx, OFFSET FLAT:label_315
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404630

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
	ja	.label_328
	xor	ebp, ebp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_323]]
.label_594:
	mov	edi, dword ptr [r14 + 4]
	call	fchdir
	test	eax, eax
	je	.label_327
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, dword ptr [r14 + 4]
	call	close
	mov	dword ptr [r14], 4
	mov	dword ptr [r14 + 4], ebx
.label_596:
	mov	ebx, dword ptr [r14 + 4]
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	ebp, 0xffffffff
	jmp	.label_322
.label_595:
	mov	ebx, dword ptr [r14 + 4]
	test	ebx, ebx
	je	.label_326
	jle	.label_322
	lea	rbp, [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_321:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, rbp
	call	waitpid
	test	eax, eax
	jns	.label_330
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_321
	mov	edi, OFFSET FLAT:label_324
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 0xd8
	mov	ecx, OFFSET FLAT:label_325
	call	__assert_fail
.label_330:
	mov	dword ptr [r14 + 4], 0xffffffff
	mov	edi, dword ptr [rsp + 0xc]
	and	edi, 0x7f
	je	.label_329
	call	raise
.label_329:
	mov	eax, dword ptr [rsp + 0xc]
	movzx	ebp, ah
	jmp	.label_322
.label_327:
	mov	dword ptr [r14], 1
.label_322:
	mov	eax, ebp
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_328:
	mov	edi, OFFSET FLAT:label_301
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 0xe2
	mov	ecx, OFFSET FLAT:label_325
	call	__assert_fail
.label_326:
	mov	edi, esi
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404740

	.globl savewd_finish
	.type savewd_finish, @function
savewd_finish:
	push	rbx
	mov	rbx, rdi
	mov	eax, dword ptr [rbx]
	cmp	rax, 4
	ja	.label_331
	jmp	qword ptr [word ptr [+ (rax * 8) + label_335]]
.label_520:
	mov	edi, dword ptr [rbx + 4]
	call	close
	jmp	.label_334
.label_521:
	cmp	dword ptr [rbx + 4], 0
	jns	.label_336
.label_334:
	mov	dword ptr [rbx], 5
	pop	rbx
	ret	
.label_331:
	mov	edi, OFFSET FLAT:label_301
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 0xfb
	mov	ecx, OFFSET FLAT:label_333
	call	__assert_fail
.label_336:
	mov	edi, OFFSET FLAT:label_332
	mov	esi, OFFSET FLAT:label_302
	mov	edx, 0xf7
	mov	ecx, OFFSET FLAT:label_333
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4047a0

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
	mov	r13, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	rbp, rsi
	mov	r12d, edi
	movabs	r15, 0xffffffff00000000
	lea	rdi, [rsp + 8]
	call	savewd_init
	movsxd	rax, r12d
	mov	rsi, rax
	shl	rsi, 0x20
	add	rsi, r15
	lea	rcx, [rbp + rax*8 - 8]
	mov	edx, eax
	mov	qword ptr [rsp + 0x20], rdx
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_344:
	mov	rdx, rdi
	mov	r14, rsi
	lea	rsi, [rax + rdx]
	test	rsi, rsi
	jle	.label_337
	mov	rbx, qword ptr [rcx + rdx*8]
	lea	rdi, [rdx - 1]
	lea	rsi, [r14 + r15]
	cmp	byte ptr [rbx], 0x2f
	je	.label_344
.label_337:
	add	edx, r12d
	xor	ebx, ebx
	cmp	edx, 2
	mov	r15d, 0
	jl	.label_339
	mov	qword ptr [rsp + 0x10], r13
	sar	r14, 0x20
	xor	r15d, r15d
	lea	r13, [rsp + 8]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_343:
	mov	rdi, r13
	call	savewd_delegating
	test	al, al
	jne	.label_341
	mov	rdi, qword ptr [rbp + r15*8]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x10]
	call	qword ptr [rsp + 0x18]
	cmp	ebx, eax
	cmovl	ebx, eax
.label_341:
	mov	rax, qword ptr [rbp + r15*8 + 8]
	inc	r15
	cmp	byte ptr [rax], 0x2f
	je	.label_338
	mov	rdi, r13
	mov	esi, ebx
	call	savewd_restore
	cmp	ebx, eax
	cmovl	ebx, eax
.label_338:
	cmp	r15, r14
	jl	.label_343
	mov	r13, qword ptr [rsp + 0x10]
.label_339:
	lea	rdi, [rsp + 8]
	call	savewd_finish
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15d, eax
	jge	.label_342
	movsxd	rax, r15d
	lea	rbp, [rbp + rax*8]
	sub	r12d, r15d
	lea	r14, [rsp + 8]
	mov	r15, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_340:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	mov	rdx, r13
	call	r15
	cmp	ebx, eax
	cmovl	ebx, eax
	add	rbp, 8
	dec	r12d
	jne	.label_340
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4048f0

	.globl savewd_delegating
	.type savewd_delegating, @function
savewd_delegating:
	cmp	dword ptr [rdi], 3
	jne	.label_345
	cmp	dword ptr [rdi + 4], 0
	setg	al
	ret	
.label_345:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404900

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
	je	.label_346
	mov	edx, OFFSET FLAT:label_356
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_362
.label_346:
	mov	edx, OFFSET FLAT:label_363
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_362:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
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
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_351
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_352]]
.label_523:
	add	rsp, 8
	jmp	.label_349
.label_351:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
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
.label_524:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
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
.label_525:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
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
.label_526:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
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
.label_527:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
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
.label_528:
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
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_349
.label_529:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
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
.label_530:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
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
.label_532:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
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
.label_531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
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
	#Procedure 0x404c60
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_365:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_365
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c90

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_367:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_366
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_368
	nop	dword ptr [rax]
.label_366:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_368:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_369
	inc	r9
	cmp	r9, 0xa
	jb	.label_367
.label_369:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404cf0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_370
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_370:
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
	#Procedure 0x404d80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_372
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e00

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_375
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_375:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e30

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_376
	test	rax, rax
	je	.label_377
.label_376:
	pop	rbx
	ret	
.label_377:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e50
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_378
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_378:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e80

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_379
	test	rbx, rbx
	jne	.label_379
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_379:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_381
	test	rax, rax
	je	.label_380
.label_381:
	pop	rbx
	ret	
.label_380:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404eb0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_382
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_385
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_383
.label_382:
	test	rcx, rcx
	jne	.label_386
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_386:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_384
.label_383:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_385:
	call	xalloc_die
.label_384:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f30

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f40
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f50
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
	.align	16
	#Procedure 0x404f80
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_387
	call	rpl_calloc
	test	rax, rax
	je	.label_387
	pop	rcx
	ret	
.label_387:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fb0

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
	.align	16
	#Procedure 0x404fe0
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
	.align	16
	#Procedure 0x405000

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405030

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_389
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
.label_389:
	mov	ecx, 1
.label_390:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405080

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
	je	.label_391
	cmp	r15, -2
	jb	.label_391
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_391
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_391:
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
	#Procedure 0x4050e0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_392
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_392
.label_393:
	ret	
.label_392:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_393
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405110
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_394
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_394:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405130
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405140
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
	.align	16
	#Procedure 0x405150
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_395
.label_396:
	ret	
.label_395:
	cmp	edi, 0x7f
	je	.label_396
	xor	eax, eax
	jmp	.label_396
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405170
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405180
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405190
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051a0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051b0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_397
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_398]]
.label_399:
	ret	
.label_397:
	xor	eax, eax
	jmp	.label_399
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_400
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_400:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051f0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405200
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_401
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_401:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405220
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
	.align	16
	#Procedure 0x405230
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
	.align	16
	#Procedure 0x405240

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
	je	.label_402
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_403
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_403
.label_402:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_403
	test	cl, cl
	jne	.label_403
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_403:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052b0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_404
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_404:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_405
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_407
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_406
.label_407:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_406:
	mov	edx, dword ptr [rax]
.label_405:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405380

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_409
	cmp	byte ptr [rax], 0x43
	jne	.label_411
	cmp	byte ptr [rax + 1], 0
	je	.label_408
.label_411:
	mov	esi, OFFSET FLAT:label_410
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_409
.label_408:
	xor	ebx, ebx
.label_409:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_27
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_412
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053f0

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
	mov	r13, rdi
	xor	ebp, ebp
	mov	r14, r13
	xor	r15d, r15d
.label_419:
	mov	r12, r14
	mov	al, byte ptr [r12]
	test	al, al
	je	.label_413
	mov	r14, r12
.label_416:
	inc	r14
	nop	
.label_425:
	movzx	ebx, byte ptr [r14]
	cmp	bl, 0x2f
	je	.label_420
	cmp	al, 0x2f
	jne	.label_421
	test	rbp, rbp
	je	.label_421
	test	bl, bl
	jne	.label_424
.label_421:
	movzx	eax, byte ptr [r14]
	inc	r14
	test	al, al
	jne	.label_425
	jmp	.label_413
	nop	word ptr cs:[rax + rax]
.label_420:
	cmp	al, 0x2f
	cmovne	rbp, r14
	mov	al, byte ptr [r14]
	test	al, al
	jne	.label_416
	jmp	.label_413
	nop	word ptr cs:[rax + rax]
.label_424:
	mov	rax, rbp
	sub	rax, r12
	cmp	rax, 1
	jne	.label_423
	cmp	byte ptr [r12], 0x2e
	je	.label_419
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rbp], 0
	jmp	.label_414
.label_423:
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x10], rcx
	mov	byte ptr [rbp], 0
	cmp	rax, 2
	jne	.label_414
	cmp	byte ptr [r12], 0x2e
	jne	.label_414
	xor	eax, eax
	cmp	byte ptr [r12 + 1], 0x2e
	mov	dword ptr [rsp + 4], 0
	je	.label_422
.label_414:
	mov	rbx, rsi
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x10]
	call	qword ptr [rsp + 8]
	test	eax, eax
	js	.label_417
	mov	dword ptr [rsp + 4], 0
	mov	al, 1
	jmp	.label_418
.label_417:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 4], eax
	mov	al, r15b
.label_418:
	mov	rsi, rbx
.label_422:
	mov	r15d, eax
	and	al, 1
	movzx	edx, al
	xor	ecx, ecx
	mov	rdi, rsi
	mov	rbx, rsi
	mov	rsi, r12
	call	savewd_chdir
	mov	rsi, rbx
	mov	ebx, eax
	cmp	ebx, -1
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	je	.label_415
	mov	byte ptr [rbp], 0x2f
	test	ebx, ebx
	je	.label_419
.label_415:
	mov	ebp, dword ptr [rsp + 4]
	test	ebp, ebp
	je	.label_426
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_426
	mov	dword ptr [rax], ebp
.label_426:
	movsxd	r12, ebx
	jmp	.label_427
.label_413:
	sub	r12, r13
.label_427:
	mov	rax, r12
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
	.align	16
	#Procedure 0x405560

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
	mov	rax, rsi
	mov	r14d, edi
	test	r14d, r14d
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp + 0x18]
	js	.label_439
	mov	edi, r14d
	call	fstat
	jmp	.label_436
.label_439:
	mov	rdi, rax
	call	stat
.label_436:
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_433
	mov	ebx, dword ptr [rsp + 0x30]
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_440
	cmp	r13d, -1
	je	.label_429
	cmp	dword ptr [rsp + 0x34], r13d
	jne	.label_432
.label_429:
	xor	eax, eax
	cmp	r12d, -1
	je	.label_434
	cmp	dword ptr [rsp + 0x38], r12d
	je	.label_434
.label_432:
	test	r14d, r14d
	js	.label_437
	mov	edi, r14d
	mov	esi, r13d
	mov	edx, r12d
	call	fchown
	jmp	.label_435
.label_440:
	call	__errno_location
	mov	dword ptr [rax], 0x14
	mov	ebp, 0xffffffff
	jmp	.label_433
.label_437:
	cmp	r15d, -1
	je	.label_438
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, r13d
	mov	edx, r12d
	call	lchown
	jmp	.label_435
.label_438:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, r13d
	mov	edx, r12d
	call	chown
.label_435:
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
	jne	.label_433
.label_434:
	mov	esi, dword ptr [rsp + 0xe0]
	mov	ecx, ebx
	xor	ecx, dword ptr [rsp + 0xc]
	or	ecx, eax
	xor	ebp, ebp
	test	ecx, esi
	je	.label_433
	not	esi
	and	esi, ebx
	and	esi, 0xfff
	or	esi, dword ptr [rsp + 0xc]
	test	r14d, r14d
	js	.label_431
	mov	edi, r14d
	call	fchmod
	mov	ebp, eax
	jmp	.label_442
.label_433:
	test	r14d, r14d
	js	.label_428
.label_442:
	test	ebp, ebp
	je	.label_430
	call	__errno_location
	mov	rbx, rax
	mov	r15d, dword ptr [rbx]
	mov	edi, r14d
	call	close
	mov	dword ptr [rbx], r15d
	jmp	.label_428
.label_430:
	mov	edi, r14d
	call	close
.label_441:
	mov	ebp, eax
.label_428:
	mov	eax, ebp
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_431:
	mov	rdi, qword ptr [rsp + 0x10]
	call	chmod
	jmp	.label_441
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056d0

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
	ja	.label_443
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
	jmp	.label_444
.label_443:
	mov	eax, ebx
.label_444:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405720

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_446
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_445
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_446
.label_445:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_446
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_447
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_447:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_446:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_448
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_448
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_448:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057d0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_449
	ret	
.label_449:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057f0

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
	jne	.label_450
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_450
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_451
.label_450:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_451:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_452
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_452:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405860

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
	#Procedure 0x405880

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x405890

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_462
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_462:
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
	ja	.label_463
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_458
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_459
	test	esi, esi
	jne	.label_463
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_465
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_456
.label_463:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_455
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_459
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_461
.label_458:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_459:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_466
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_454
.label_466:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_454:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_461:
	cmp	eax, 6
	jne	.label_455
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_464
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_453
.label_455:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_457
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_460
.label_465:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_456:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_464:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_453:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_457:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_460:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a50

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405a60

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_467
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_469
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_469
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_470
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_471
.label_469:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_471
.label_467:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_471:
	test	ebx, ebx
	js	.label_470
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_470
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_468
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_470
.label_468:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_470:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405be0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section .text
	.align	16
	#Procedure 0x405bf0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
