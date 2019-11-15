	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401890

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
	call	emit_mandatory_arg_note
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
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
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
	.section	.text
	.align	16
	#Procedure 0x4019b0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019e0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.20
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.7
	call	strcmp
	test	eax, eax
	je	.label_9
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.7
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
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
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.7
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.7
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.34
	mov	ecx, OFFSET FLAT:.str_0
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
	#Procedure 0x401b00

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
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.9
	mov	esi, OFFSET FLAT:.str.10
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.9
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r12d, r12d
	jmp	.label_11
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x20], rax
	nop	word ptr cs:[rax + rax]
.label_11:
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x6c
	jle	.label_15
	cmp	eax, 0x6d
	je	.label_16
	cmp	eax, 0x76
	je	.label_18
	cmp	eax, 0x70
	jne	.label_19
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:make_ancestor
	jmp	.label_11
	nop	word ptr [rax + rax]
.label_15:
	cmp	eax, 0x59
	jle	.label_22
	cmp	eax, 0x5a
	jne	.label_19
	cmp	qword ptr [word ptr [rip + optarg]],  0
	je	.label_11
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_11
.label_16:
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_11
.label_22:
	cmp	eax, -1
	jne	.label_12
	cmp	dword ptr [dword ptr [rip + optind]],  ebx
	je	.label_14
	test	r12, r12
	jne	.label_17
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_13
.label_17:
	xor	edi, edi
	call	umask
	mov	ebp, eax
	mov	edi, ebp
	call	umask
	mov	dword ptr [rsp + 0x10], ebp
	test	r12, r12
	je	.label_21
	mov	rdi, r12
	call	mode_compile
	mov	r13, rax
	test	r13, r13
	je	.label_23
	mov	edi, 0x1ff
	mov	esi, 1
	mov	edx, ebp
	mov	rcx, r13
	mov	r8, r15
	call	mode_adjust
	mov	dword ptr [rsp + 0x14], eax
	mov	rdi, r13
	call	free
	jmp	.label_13
.label_21:
	mov	dword ptr [rsp + 0x14], 0x1ff
.label_13:
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
.label_12:
	cmp	eax, 0xffffff7d
	je	.label_20
	cmp	eax, 0xffffff7e
	jne	.label_19
	xor	edi, edi
	call	usage
.label_20:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.15
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_19:
	mov	edi, 1
	call	usage
.label_14:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
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
.label_23:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d80

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
	je	.label_24
	call	defaultcon
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	ignorable_ctx_err
	test	al, al
	jne	.label_24
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
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
.label_24:
	mov	edi, dword ptr [r13 + 8]
	test	dil, 0xc0
	je	.label_25
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
	jmp	.label_27
.label_25:
	mov	esi, 0x1ff
	mov	rdi, r15
	call	mkdir
	mov	ebp, eax
.label_27:
	test	ebp, ebp
	jne	.label_26
	mov	ebp, dword ptr [r13 + 8]
	shr	ebp, 8
	and	ebp, 1
	mov	rdi, r14
	mov	rsi, r13
	call	announce_mkdir
.label_26:
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
	#Procedure 0x401e60

	.globl process_dir
	.type process_dir, @function
process_dir:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x14], 0
	je	.label_28
	cmp	qword ptr [rbx], 0
	jne	.label_28
	call	defaultcon
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	ignorable_ctx_err
	test	al, al
	jne	.label_28
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
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
.label_28:
	mov	rdx, qword ptr [rbx]
	mov	r8d, dword ptr [rbx + 0xc]
	mov	eax, dword ptr [rbx + 0x10]
	mov	dword ptr [rsp], eax
	mov	dword ptr [rsp + 0x18], 1
	mov	dword ptr [rsp + 0x10], 0xffffffff
	mov	dword ptr [rsp + 8], 0xffffffff
	mov	r9d, OFFSET FLAT:announce_mkdir
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, rbx
	call	make_dir_parents
	movzx	eax, al
	mov	ebp, eax
	xor	ebp, 1
	test	al, al
	je	.label_29
	cmp	byte ptr [rbx + 0x14], 0
	je	.label_29
	cmp	qword ptr [rbx], 0
	je	.label_29
	call	restorecon
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, ebx
	call	ignorable_ctx_err
	test	al, al
	jne	.label_29
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
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
.label_29:
	mov	eax, ebp
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f80

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
	#Procedure 0x401f90

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
	#Procedure 0x401fa0

	.globl announce_mkdir
	.type announce_mkdir, @function
announce_mkdir:
	push	r14
	push	rbx
	push	rax
	mov	rax, rdi
	mov	rbx, qword ptr [rsi + 0x18]
	test	rbx, rbx
	je	.label_30
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
.label_30:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ff0

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
	#Procedure 0x402000

	.globl prog_fprintf
	.type prog_fprintf, @function
prog_fprintf:
	push	r14
	push	rbx
	sub	rsp, 0xc8
	mov	r14, rsi
	mov	rbx, rdi
	test	al, al
	je	.label_31
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_31:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rdi,  qword ptr [word ptr [rip + program_name]]
	mov	rsi, rbx
	call	fputs_unlocked
	mov	edi, OFFSET FLAT:.str_1
	mov	rsi, rbx
	call	fputs_unlocked
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rcx, [rsp + 0xb0]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r14
	call	__vfprintf_chk
	mov	edi, 0xa
	mov	rsi, rbx
	call	fputc_unlocked
	add	rsp, 0xc8
	pop	rbx
	pop	r14
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402100

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_34
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_32
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_32
.label_34:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_35
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_33
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_35:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_33:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
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
	#Procedure 0x4021c0

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
	mov	rbx, r9
	mov	r14d, r8d
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	r15, rdi
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2f
	je	.label_49
	mov	rdi, rbp
	call	savewd_errno
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_50
.label_49:
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x38], rbp
	xor	r12d, r12d
	test	r13, r13
	je	.label_37
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x40]
	call	mkancesdirs
	mov	r12, rax
	test	r12, r12
	js	.label_44
.label_37:
	mov	edx, dword ptr [rsp + 0x120]
	mov	eax, dword ptr [rsp + 0x110]
	and	edx, dword ptr [rsp + 0x118]
	mov	dword ptr [rsp + 0x14], edx
	and	eax, 0xc00
	mov	ecx, r14d
	mov	ebp, ecx
	and	ebp, 0x200
	or	ebp, eax
	mov	r14, r15
	mov	r15d, ecx
	cmp	edx, -1
	je	.label_46
	mov	dword ptr [rsp + 0x24], ecx
	and	r15d, 0xffffffc0
	jmp	.label_43
.label_46:
	and	r15d, 0xffffffed
	test	ebp, ebp
	cmove	r15d, ecx
	mov	dword ptr [rsp + 0x24], ecx
.label_43:
	add	r12, r14
	mov	rdi, r12
	mov	esi, r15d
	call	mkdir
	test	eax, eax
	je	.label_40
	mov	qword ptr [rsp + 0x18], r13
	mov	qword ptr [rsp + 0x30], r14
	mov	bl, byte ptr [rsp + 0x128]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	r15d, 0xffffffff
	mov	edx, 2
	jmp	.label_45
.label_40:
	mov	qword ptr [rsp + 0x18], r13
	cmp	dword ptr [rsp + 0x14], -1
	sete	r13b
	mov	ebx, dword ptr [rsp + 0x24]
	and	ebx, dword ptr [rsp + 0x110]
	and	ebx, 0x1ff
	mov	rdi, r14
	mov	qword ptr [rsp + 0x30], r14
	mov	rsi, qword ptr [rsp + 0x40]
	call	qword ptr [rsp + 0x28]
	or	ebp, ebx
	sete	bl
	and	bl, r13b
	xor	r14d, r14d
	mov	edx, 3
.label_45:
	test	bl, bl
	je	.label_52
	mov	bpl, 1
	test	r14d, r14d
	mov	r15, qword ptr [rsp + 0x30]
	je	.label_41
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_42
	cmp	r14d, 2
	je	.label_42
	lea	rsi, [rsp + 0x48]
	mov	rdi, r12
	call	stat
	test	eax, eax
	je	.label_47
	cmp	r14d, 0x11
	jne	.label_42
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 2
	je	.label_42
	cmp	ebx, 0x14
	je	.label_42
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	jmp	.label_36
.label_52:
	lea	rcx, [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, r12
	call	savewd_chdir
	cmp	eax, -2
	jg	.label_48
	mov	bpl, 1
	jmp	.label_41
.label_44:
	mov	bpl, 1
	cmp	r12, -1
	jl	.label_41
	call	__errno_location
	mov	r12d, dword ptr [rax]
	jmp	.label_50
.label_48:
	test	eax, eax
	mov	eax, OFFSET FLAT:.str.5_0
	cmove	r12, rax
	mov	edi, dword ptr [rsp + 0x48]
	mov	eax, dword ptr [rsp + 0x110]
	mov	dword ptr [rsp], eax
	mov	rsi, r12
	mov	edx, r15d
	mov	ecx, dword ptr [rsp + 0x118]
	mov	r8d, dword ptr [rsp + 0x120]
	mov	r9d, dword ptr [rsp + 0x24]
	call	dirchownmod
	mov	bpl, 1
	test	eax, eax
	je	.label_41
	test	r14d, r14d
	je	.label_38
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_39
	cmp	r14d, 2
	je	.label_39
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	jne	.label_38
.label_39:
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_42
.label_47:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x60]
	mov	bpl, 1
	cmp	eax, 0x4000
	je	.label_41
.label_42:
	mov	r12d, r14d
.label_50:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
.label_51:
	mov	rdx, rbx
.label_36:
	call	error
.label_41:
	mov	al, bpl
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_38:
	call	__errno_location
	cmp	dword ptr [rsp + 0x14], -1
	mov	r14d, dword ptr [rax]
	mov	eax, OFFSET FLAT:.str.2_0
	mov	esi, OFFSET FLAT:.str.3_0
	cmove	rsi, rax
	xor	ebp, ebp
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x30]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_51
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024d0

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
	mov	r12, rdi
	mov	al, byte ptr [r12]
	and	al, 0xf8
	mov	edi, 1
	movzx	eax, al
	cmp	eax, 0x30
	jne	.label_78
	xor	edi, edi
	xor	r14d, r14d
	mov	rbx, r12
	nop	dword ptr [rax]
.label_62:
	movsx	eax, byte ptr [rbx]
	lea	edi, [rax + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_53
	mov	al, byte ptr [rbx + 1]
	inc	rbx
	mov	cl, al
	and	cl, 0xf8
	movzx	ecx, cl
	cmp	ecx, 0x30
	je	.label_62
	xor	r14d, r14d
	test	al, al
	jne	.label_53
	call	octal_to_mode
	sub	rbx, r12
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
.label_78:
	mov	rax, r12
	jmp	.label_83
	nop	dword ptr [rax]
.label_57:
	add	rdi, rdx
	inc	rax
.label_83:
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jle	.label_84
	movzx	ecx, cl
	cmp	ecx, 0x2d
	je	.label_87
	cmp	ecx, 0x3d
	mov	edx, 1
	je	.label_57
	jmp	.label_82
	nop	word ptr cs:[rax + rax]
.label_84:
	movzx	edx, cl
	cmp	edx, 0x2b
	mov	edx, 1
	je	.label_57
	test	cl, cl
	je	.label_68
.label_82:
	xor	edx, edx
	jmp	.label_57
	nop	word ptr cs:[rax + rax]
.label_87:
	mov	edx, 1
	jmp	.label_57
.label_68:
	mov	esi, 0x10
	call	xnmalloc
	mov	r14, rax
	xor	r15d, r15d
	jmp	.label_79
.label_60:
	inc	rbx
	mov	r12, rbx
	nop	
.label_79:
	xor	ebp, ebp
	jmp	.label_70
	nop	word ptr cs:[rax + rax]
.label_58:
	or	ebp, 0xfff
	inc	r12
.label_70:
	movsx	eax, byte ptr [r12]
	cmp	eax, 0x66
	jg	.label_86
	cmp	eax, 0x60
	jle	.label_55
	cmp	eax, 0x61
	je	.label_58
	jmp	.label_59
	nop	word ptr cs:[rax + rax]
.label_86:
	cmp	eax, 0x67
	je	.label_67
	cmp	eax, 0x6f
	je	.label_76
	cmp	eax, 0x75
	jne	.label_59
	or	ebp, 0x9c0
	inc	r12
	jmp	.label_70
.label_67:
	or	ebp, 0x438
	inc	r12
	jmp	.label_70
.label_76:
	or	ebp, 0x207
	inc	r12
	jmp	.label_70
	nop	word ptr cs:[rax + rax]
.label_55:
	cmp	eax, 0x2b
	je	.label_75
	cmp	eax, 0x2d
	je	.label_75
	cmp	eax, 0x3d
	jne	.label_59
	nop	word ptr cs:[rax + rax]
.label_75:
	lea	rbx, [r12 + 1]
	mov	r13b, byte ptr [r12]
	movsx	edx, byte ptr [r12 + 1]
	mov	r8b, 1
	xor	eax, eax
	cmp	edx, 0x66
	jg	.label_54
	add	edx, -0x30
	cmp	edx, 8
	jae	.label_65
	nop	word ptr cs:[rax + rax]
.label_73:
	movsx	edx, byte ptr [rbx]
	lea	eax, [rdx + rax*8 - 0x30]
	cmp	eax, 0xfff
	ja	.label_59
	mov	cl, byte ptr [rbx + 1]
	inc	rbx
	mov	dl, cl
	and	dl, 0xf8
	movzx	edx, dl
	cmp	edx, 0x30
	je	.label_73
	test	ebp, ebp
	jne	.label_59
	movzx	edx, cl
	cmp	edx, 0x2c
	je	.label_69
	test	cl, cl
	jne	.label_59
.label_69:
	mov	edi, eax
	call	octal_to_mode
	mov	r8b, 1
	mov	ebp, 0xfff
	mov	esi, 0xfff
	jmp	.label_81
	nop	word ptr cs:[rax + rax]
.label_54:
	cmp	edx, 0x67
	je	.label_61
	cmp	edx, 0x6f
	je	.label_63
	cmp	edx, 0x75
	jne	.label_65
	add	r12, 2
	mov	r8b, 3
	xor	esi, esi
	mov	eax, 0x1c0
	jmp	.label_56
	nop	
.label_80:
	inc	rbx
	mov	r8b, dl
.label_65:
	movsx	edi, byte ptr [rbx]
	xor	esi, esi
	lea	edx, [rdi - 0x72]
	cmp	edx, 6
	ja	.label_71
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_74]]
.label_525:
	or	eax, 0x124
	jmp	.label_66
.label_71:
	mov	dl, 2
	cmp	edi, 0x58
	je	.label_80
	jmp	.label_81
.label_526:
	or	eax, 0xc00
	jmp	.label_66
.label_527:
	or	eax, 0x200
	jmp	.label_66
.label_528:
	or	eax, 0x92
	jmp	.label_66
.label_529:
	or	eax, 0x49
	nop	word ptr cs:[rax + rax]
.label_66:
	mov	dl, r8b
	jmp	.label_80
.label_61:
	add	r12, 2
	mov	r8b, 3
	xor	esi, esi
	mov	eax, 0x38
	jmp	.label_56
.label_63:
	add	r12, 2
	mov	r8b, 3
	xor	esi, esi
	mov	eax, 7
.label_56:
	mov	rbx, r12
.label_81:
	mov	rdi, r15
	shl	rdi, 4
	mov	byte ptr [r14 + rdi], r13b
	mov	byte ptr [r14 + rdi + 1], r8b
	mov	dword ptr [r14 + rdi + 4], ebp
	mov	dword ptr [r14 + rdi + 8], eax
	test	esi, esi
	jne	.label_72
	cmp	ebp, 1
	sbb	esi, esi
	or	esi, ebp
	and	esi, eax
.label_72:
	inc	r15
	mov	dword ptr [r14 + rdi + 0xc], esi
	movsx	eax, byte ptr [rbx]
	cmp	eax, 0x2c
	jle	.label_77
	movzx	eax, al
	cmp	eax, 0x2d
	mov	r12, rbx
	je	.label_75
	cmp	eax, 0x3d
	mov	r12, rbx
	je	.label_75
	jmp	.label_85
	nop	word ptr [rax + rax]
.label_77:
	movzx	eax, al
	cmp	eax, 0x2b
	mov	r12, rbx
	je	.label_75
	cmp	eax, 0x2c
	je	.label_60
.label_85:
	cmp	byte ptr [rbx], 0
	je	.label_64
.label_59:
	mov	rdi, r14
	call	free
	xor	r14d, r14d
.label_53:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_64:
	shl	r15, 4
	mov	byte ptr [r14 + r15 + 1], 0
	jmp	.label_53
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402850

	.globl octal_to_mode
	.type octal_to_mode, @function
octal_to_mode:
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402860

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
	#Procedure 0x402890
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	stat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_88
	mov	edi, dword ptr [rsp + 0x20]
	mov	esi, 0xfff
	call	make_node_op_equals
.label_88:
	add	rsp, 0x98
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4028c0

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
	je	.label_89
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
.label_96:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_95
	cmp	ebp, 3
	jne	.label_90
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
	jmp	.label_90
	nop	dword ptr [rax + rax]
.label_95:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_90:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_93
	cmp	esi, 0x2d
	je	.label_92
	cmp	esi, 0x3d
	jne	.label_94
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
	jmp	.label_94
	nop	word ptr [rax + rax]
.label_92:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_94
	nop	dword ptr [rax]
.label_93:
	or	r13d, ebp
	or	edi, ebp
.label_94:
	mov	al, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_96
.label_89:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_91
	mov	dword ptr [rax], r13d
.label_91:
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
	#Procedure 0x402a00

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_97
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_98
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_98
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_99
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_99:
	mov	rbx, r14
.label_98:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_97:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ab0
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
	#Procedure 0x402af0
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
	#Procedure 0x402b00
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
	#Procedure 0x402b10

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
	.align	16
	#Procedure 0x402b50
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
	#Procedure 0x402b70

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_100
	test	rdx, rdx
	je	.label_100
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_100:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rdx, [rbp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c20

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
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	shr	r15b, 1
	and	r15b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	xor	r11d, r11d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_138:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_158
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_163]]
.label_522:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_523:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_184
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_184
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_209:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_196
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_196:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_209
.label_184:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, rbx
	mov	r12, r10
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, rbp
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r11d, dword ptr [rsp + 0xb8]
	jmp	.label_107
.label_515:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_107
.label_518:
	mov	al, 1
.label_516:
	mov	r15b, 1
.label_519:
	test	r15b, 1
	mov	cl, 1
	je	.label_117
	mov	cl, al
.label_117:
	mov	al, cl
.label_517:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_193
	test	r10, r10
	je	.label_124
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_125
.label_193:
	xor	ecx, ecx
	jmp	.label_125
.label_520:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_128
	test	r10, r10
	je	.label_149
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_137
.label_521:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_107
.label_124:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_125:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_107
.label_128:
	xor	eax, eax
	jmp	.label_137
.label_149:
	mov	eax, 1
.label_137:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_107:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	cmp	qword ptr [rsp + 0x140], 0
	setne	bl
	cmp	r14d, 2
	setne	r15b
	sete	dl
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	and	al, 1
	mov	byte ptr [rsp + 0xcf], al
	sete	cl
	and	dl, al
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	and	sil, dil
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	xor	esi, esi
	jmp	.label_109
	nop	dword ptr [rax + rax]
.label_143:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_109:
	cmp	rbp, -1
	je	.label_218
	cmp	rsi, rbp
	jne	.label_220
	jmp	.label_101
	nop	dword ptr [rax]
.label_218:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_101
.label_220:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_105
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_108
	cmp	rbp, -1
	jne	.label_108
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rdi, r9
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r14
	mov	r12, r9
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	r14, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_108:
	cmp	rbx, rbp
	jbe	.label_142
.label_105:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_174:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_175
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_140]]
.label_431:
	test	rsi, rsi
	jne	.label_106
	jmp	.label_147
	nop	word ptr cs:[rax + rax]
.label_142:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	mov	r13, r14
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xd0]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_169
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_174
	jmp	.label_110
.label_169:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_174
.label_435:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_190
	test	rsi, rsi
	jne	.label_136
	cmp	rbp, 1
	je	.label_147
	xor	r15d, r15d
	jmp	.label_103
.label_424:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_178
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_110
	cmp	edi, 2
	jne	.label_203
	mov	al, r11b
	and	al, 1
	jne	.label_207
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_211
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_211:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_171
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_171:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_219
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_219:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_122
.label_425:
	mov	bl, 0x62
	jmp	.label_112
.label_426:
	mov	cl, 0x74
	jmp	.label_115
.label_427:
	mov	bl, 0x76
	jmp	.label_112
.label_428:
	mov	bl, 0x66
	jmp	.label_112
.label_429:
	mov	cl, 0x72
	jmp	.label_115
.label_432:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_123
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_121
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_130
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_130:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_118
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_118:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_157
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_157:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_167
.label_433:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_173
	cmp	r14d, 2
	jne	.label_176
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_121
.label_176:
	mov	rdi, r14
	jmp	.label_106
.label_434:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_181
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_121
	mov	rdi, r14
	jmp	.label_182
.label_175:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_185
	mov	r14, r9
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	shr	r15d, 0xe
	and	r15b, 1
	mov	ebx, 1
.label_210:
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r11d, dword ptr [rsp + 0xb8]
	ja	.label_199
	test	dl, dl
	je	.label_199
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_103
.label_190:
	test	rsi, rsi
	jne	.label_217
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_217
.label_147:
	mov	dl, 1
.label_430:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_110
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_103
.label_178:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_106
	mov	r14, rdi
	inc	rsi
	jmp	.label_109
.label_123:
	mov	rdi, r14
.label_167:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_103
.label_181:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_115
.label_182:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_148
.label_115:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_110
.label_112:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_103
	jmp	.label_132
.label_185:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_135
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_135:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_201:
	lea	rax, [rbx + rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_162
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_168
	cmp	rbp, -2
	je	.label_179
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_180
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_191:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_186
	bt	rsi, rdx
	jb	.label_189
.label_186:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_191
.label_180:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_160
	xor	r15d, r15d
.label_160:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_201
	jmp	.label_210
.label_217:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_103
.label_173:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_106
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_106
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_106
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_221
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_102
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_110
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_113
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_113:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_114
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_114:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_129
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_129:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_159
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_159:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_103
.label_106:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_103:
	test	r12b, r12b
	je	.label_120
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_153
	jmp	.label_111
	nop	word ptr cs:[rax + rax]
.label_120:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_111
.label_153:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_164
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_148
	jmp	.label_132
	nop	word ptr cs:[rax + rax]
.label_111:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_132
	jmp	.label_148
.label_164:
	mov	bl, r13b
	mov	rsi, r14
.label_132:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_110
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_187
	mov	al, r11b
	and	al, 1
	jne	.label_187
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_192
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_192:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_188
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_188:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_145
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_145:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_187:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_214
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_214:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_154
.label_136:
	xor	r15d, r15d
	jmp	.label_103
.label_199:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_222
	nop	word ptr cs:[rax + rax]
.label_104:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_222:
	test	dl, dl
	je	.label_165
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_116
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_194
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_194:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_116
	nop	word ptr [rax + rax]
.label_165:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_121
	cmp	r14d, 2
	jne	.label_141
	mov	al, r11b
	and	al, 1
	jne	.label_141
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_144
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_144:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_151
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_151:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_172
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_172:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_141:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_197
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_197:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_177
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_177:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_183
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_183:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_116:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_148
	test	r11b, 1
	je	.label_200
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_202
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_206
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_206:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_134
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_134:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_202
	nop	word ptr cs:[rax + rax]
.label_200:
	mov	r14, rdi
.label_202:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_104
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_104
.label_148:
	test	r11b, 1
	je	.label_119
	and	al, 1
	jne	.label_119
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_150
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_150:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_127
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_127:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_154
	nop	dword ptr [rax + rax]
.label_119:
	mov	bl, r13b
	mov	r14, rdi
.label_154:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_143
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_143
.label_203:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_122
.label_207:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_122:
	cmp	rcx, r10
	jae	.label_155
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_155:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_161
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_170
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_204
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_126
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_126:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_208
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_208:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_103
.label_161:
	xor	r15d, r15d
	jmp	.label_103
.label_170:
	xor	r15d, r15d
	jmp	.label_103
.label_204:
	xor	r15d, r15d
	jmp	.label_103
.label_162:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_195
.label_168:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_198
.label_179:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_205
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_215:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_213
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_215
	xor	r15d, r15d
	jmp	.label_195
.label_205:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_198:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_195:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_210
.label_213:
	xor	r15d, r15d
	jmp	.label_195
.label_221:
	xor	r15d, r15d
	jmp	.label_103
.label_102:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_103
	nop	dword ptr [rax + rax]
.label_101:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_152
	or	dl, al
	je	.label_121
.label_152:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_131
	or	dl, al
	jne	.label_131
	test	r8b, 1
	jne	.label_133
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_131
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_138
.label_131:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_146
	test	cl, cl
	jne	.label_146
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_146
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_166:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_156
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_156:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_166
.label_146:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_139
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_139
.label_110:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_212:
	test	r8b, 1
	mov	r8d, 4
	cmove	r8d, r14d
	cmp	r14d, 2
	cmovne	r8d, r14d
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rcx, rbp
.label_216:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_139:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_189:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_212
.label_121:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_212
.label_133:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_216
.label_158:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e30
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
	#Procedure 0x403e40

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
	call	xcharalloc
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
	je	.label_223
	mov	qword ptr [rax], rbx
.label_223:
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
	.align	16
	#Procedure 0x403f40
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_224
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_227:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_227
.label_224:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_228
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_226]], OFFSET FLAT:slot0
.label_228:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_225
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_225:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403fe0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403ff0

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
	js	.label_229
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_234
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_230
.label_234:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_233
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
	jne	.label_232
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_232:
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
.label_230:
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
	ja	.label_235
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_231
	mov	rdi, rbx
	call	free
.label_231:
	mov	rdi, r14
	call	xcharalloc
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
.label_235:
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
.label_229:
	call	abort
.label_233:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041c0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041d0
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
	#Procedure 0x4041e0
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
	#Procedure 0x4041f0

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
	#Procedure 0x404230

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
	je	.label_236
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
.label_236:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404290

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
	#Procedure 0x4042d0

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
	#Procedure 0x4042f0
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
	#Procedure 0x404310

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
	mov	rcx,  qword ptr [word ptr [rip + label_237]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_238]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_239]]
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
	#Procedure 0x404380

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
	#Procedure 0x404390

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043b0
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
	#Procedure 0x404400

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404410

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
	mov	rax,  qword ptr [word ptr [rip + label_237]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_238]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_239]]
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
	#Procedure 0x404480
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
	#Procedure 0x4044a0
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
	#Procedure 0x4044c0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0
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
	#Procedure 0x4044e0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044f0

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
	#Procedure 0x404500

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_241
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp], 0
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_240
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_241
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_241
.label_240:
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_242
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_241
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_241
.label_242:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_241:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045e0

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
	je	.label_244
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_245
	jmp	.label_243
.label_244:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_243
.label_245:
	mov	eax, 1
	test	bpl, bpl
	je	.label_243
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
.label_243:
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
	#Procedure 0x404670

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
	je	.label_248
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_246
	jmp	.label_247
.label_248:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_247
.label_246:
	mov	eax, 1
	test	bpl, bpl
	je	.label_247
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
.label_247:
	add	rsp, 8
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
	#Procedure 0x404700

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
	je	.label_250
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_251
	jmp	.label_249
.label_250:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_249
.label_251:
	mov	eax, 1
	test	bpl, bpl
	je	.label_249
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
.label_249:
	add	rsp, 8
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
	#Procedure 0x404780

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
	je	.label_254
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_253
	jmp	.label_252
.label_254:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_252
.label_253:
	mov	eax, 1
	test	bpl, bpl
	je	.label_252
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
.label_252:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4047f0

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
	je	.label_257
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_255
	jmp	.label_256
.label_257:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_256
.label_255:
	mov	eax, 1
	test	bpl, bpl
	je	.label_256
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_256:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404860

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
	je	.label_258
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_260
	jmp	.label_259
.label_258:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_259
.label_260:
	mov	eax, 1
	test	bpl, bpl
	je	.label_259
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_259:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4048b0

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
	je	.label_263
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_262
	jmp	.label_261
.label_263:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_261
.label_262:
	mov	eax, 1
	test	bpl, bpl
	je	.label_261
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_261:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404900

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_265
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_266
	jmp	.label_264
.label_265:
	mov	eax, 1
	test	cl, cl
	je	.label_264
.label_266:
	xor	eax, eax
.label_264:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404930

	.globl savewd_init
	.type savewd_init, @function
savewd_init:
	mov	dword ptr [rdi], 0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404940

	.globl savewd_errno
	.type savewd_errno, @function
savewd_errno:
	xor	eax, eax
	cmp	dword ptr [rdi], 4
	jne	.label_267
	mov	eax, dword ptr [rdi + 4]
.label_267:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404950

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
	jne	.label_271
	mov	r13d, 0xffffffff
	test	al, al
	jne	.label_279
.label_271:
	mov	esi, ebp
	and	esi, 1
	shl	esi, 0x11
	or	esi, 0x10900
	xor	eax, eax
	mov	rdi, r12
	call	open
	mov	r13d, eax
	test	r15, r15
	je	.label_274
	mov	dword ptr [r15], r13d
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 4], eax
.label_274:
	test	r13d, r13d
	js	.label_277
	xor	r14d, r14d
	test	bpl, 2
	jne	.label_272
	jmp	.label_279
.label_277:
	call	__errno_location
	mov	r14d, 0xffffffff
	cmp	dword ptr [rax], 0xd
	jne	.label_269
.label_279:
	mov	rdi, rbx
	call	savewd_save
	mov	r14d, 0xfffffffe
	test	al, al
	je	.label_273
	xor	r15d, r15d
	jmp	.label_272
.label_273:
	test	r13d, r13d
	js	.label_276
	mov	edi, r13d
	call	fchdir
	jmp	.label_278
.label_276:
	mov	rdi, r12
	call	chdir
.label_278:
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_272
	mov	eax, dword ptr [rbx]
	dec	eax
	cmp	eax, 4
	ja	.label_268
	xor	r14d, r14d
	jmp	qword ptr [word ptr [+ (rax * 8) + label_270]]
.label_471:
	mov	dword ptr [rbx], 2
	jmp	.label_272
.label_472:
	cmp	dword ptr [rbx + 4], 0
	jne	.label_275
.label_272:
	test	r13d, r13d
	js	.label_269
	test	r15, r15
	jne	.label_269
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	mov	edi, r13d
	call	close
	mov	dword ptr [rbp], ebx
.label_269:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_268:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x9f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_chdir
	call	__assert_fail
.label_275:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x9b
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_chdir
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a90

	.globl savewd_save
	.type savewd_save, @function
savewd_save:
	push	rbx
	mov	rbx, rdi
	mov	eax, dword ptr [rbx]
	cmp	eax, 5
	ja	.label_284
	mov	ecx, 0x36
	bt	ecx, eax
	jb	.label_280
	test	eax, eax
	jne	.label_281
	mov	edi, OFFSET FLAT:.str.5_0
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	test	eax, eax
	js	.label_286
	mov	dword ptr [rbx], 1
	mov	dword ptr [rbx + 4], eax
	jmp	.label_280
.label_286:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0xd
	je	.label_282
	cmp	ecx, 0x74
	jne	.label_283
.label_282:
	movabs	rax, 0xffffffff00000003
	mov	qword ptr [rbx], rax
.label_281:
	cmp	dword ptr [rbx + 4], 0
	jns	.label_280
	call	fork
	mov	dword ptr [rbx + 4], eax
	test	eax, eax
	je	.label_280
	mov	al, 1
	jg	.label_285
	mov	dword ptr [rbx], 4
	call	__errno_location
	jmp	.label_287
.label_283:
	mov	dword ptr [rbx], 4
.label_287:
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 4], eax
.label_280:
	xor	eax, eax
.label_285:
	pop	rbx
	ret	
.label_284:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x63
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_save
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x404b30

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
	ja	.label_293
	xor	ebp, ebp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_290]]
.label_460:
	mov	edi, dword ptr [r14 + 4]
	call	fchdir
	test	eax, eax
	je	.label_292
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, dword ptr [r14 + 4]
	call	close
	mov	dword ptr [r14], 4
	mov	dword ptr [r14 + 4], ebx
.label_462:
	mov	ebx, dword ptr [r14 + 4]
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	ebp, 0xffffffff
	jmp	.label_289
.label_461:
	mov	ebx, dword ptr [r14 + 4]
	test	ebx, ebx
	je	.label_291
	jle	.label_289
	lea	rbp, [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_288:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, rbp
	call	waitpid
	test	eax, eax
	jns	.label_295
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_288
	mov	edi, OFFSET FLAT:.str.3_1
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0xd8
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_restore
	call	__assert_fail
.label_295:
	mov	dword ptr [r14 + 4], 0xffffffff
	mov	edi, dword ptr [rsp + 0xc]
	and	edi, 0x7f
	je	.label_294
	call	raise
.label_294:
	mov	eax, dword ptr [rsp + 0xc]
	movzx	ebp, ah
	jmp	.label_289
.label_292:
	mov	dword ptr [r14], 1
.label_289:
	mov	eax, ebp
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_293:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0xe2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_restore
	call	__assert_fail
.label_291:
	mov	edi, esi
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c40

	.globl savewd_finish
	.type savewd_finish, @function
savewd_finish:
	push	rbx
	mov	rbx, rdi
	mov	eax, dword ptr [rbx]
	cmp	rax, 4
	ja	.label_296
	jmp	qword ptr [word ptr [+ (rax * 8) + label_297]]
.label_513:
	mov	edi, dword ptr [rbx + 4]
	call	close
	jmp	.label_299
.label_514:
	cmp	dword ptr [rbx + 4], 0
	jns	.label_298
.label_299:
	mov	dword ptr [rbx], 5
	pop	rbx
	ret	
.label_296:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0xfb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_finish
	call	__assert_fail
.label_298:
	mov	edi, OFFSET FLAT:.str.4_1
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0xf7
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_finish
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ca0

	.globl savewd_process_files
	.type savewd_process_files, @function
savewd_process_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], rdx
	mov	r12, rsi
	mov	r13d, edi
	lea	rdi, [rsp + 0x10]
	call	savewd_init
	movsxd	rcx, r13d
	lea	eax, [rcx - 1]
	movsxd	rdx, eax
.label_300:
	mov	rax, rcx
	mov	r15, rdx
	test	rax, rax
	jle	.label_304
	mov	rcx, qword ptr [r12 + r15*8]
	movzx	esi, byte ptr [rcx]
	lea	rcx, [rax - 1]
	lea	rdx, [r15 - 1]
	cmp	esi, 0x2f
	je	.label_300
.label_304:
	xor	r14d, r14d
	cmp	eax, 2
	mov	ebx, 0
	jl	.label_303
	xor	r14d, r14d
	lea	rbp, [rsp + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_302:
	mov	rdi, rbp
	call	savewd_delegating
	test	al, al
	jne	.label_305
	mov	rdi, qword ptr [r12 + r14*8]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp]
	call	qword ptr [rsp + 8]
	cmp	ebx, eax
	cmovl	ebx, eax
.label_305:
	mov	rax, qword ptr [r12 + r14*8 + 8]
	inc	r14
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_307
	mov	rdi, rbp
	mov	esi, ebx
	call	savewd_restore
	cmp	ebx, eax
	cmovl	ebx, eax
.label_307:
	cmp	r14, r15
	jl	.label_302
.label_303:
	lea	rdi, [rsp + 0x10]
	call	savewd_finish
	cmp	r14d, r13d
	mov	r15, qword ptr [rsp + 8]
	jge	.label_306
	movsxd	rax, r14d
	lea	rbp, [r12 + rax*8]
	sub	r13d, r14d
	lea	r12, [rsp + 0x10]
	mov	r14, qword ptr [rsp]
	nop	dword ptr [rax + rax]
.label_301:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r12
	mov	rdx, r14
	call	r15
	cmp	ebx, eax
	cmovl	ebx, eax
	add	rbp, 8
	dec	r13d
	jne	.label_301
.label_306:
	mov	eax, ebx
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
	#Procedure 0x404db0

	.globl savewd_delegating
	.type savewd_delegating, @function
savewd_delegating:
	cmp	dword ptr [rdi], 3
	jne	.label_308
	cmp	dword ptr [rdi + 4], 0
	setg	al
	ret	
.label_308:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404dc0

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
	je	.label_309
	mov	edx, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_318
.label_309:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_318:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
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
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_312
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_314]]
.label_498:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_2
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
.label_312:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_311
.label_499:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_500:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
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
.label_501:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_317
.label_502:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_310
.label_503:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_316
.label_504:
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
.label_316:
	mov	qword ptr [rsp + 0x10], rdi
.label_310:
	mov	qword ptr [rsp + 8], rsi
.label_317:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_313
.label_506:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_311:
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
	jmp	.label_315
.label_505:
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
.label_315:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_313:
	call	__fprintf_chk
.label_497:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_319:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_319
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_321:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_320
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_322
	nop	dword ptr [rax]
.label_320:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_322:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_323
	inc	r9
	cmp	r9, 0xa
	jb	.label_321
.label_323:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405140

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_324
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_324:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	call	version_etc_va
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
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
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405250

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_325
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_325:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405280

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_326
	test	rax, rax
	je	.label_327
.label_326:
	pop	rbx
	ret	
.label_327:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_328
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_328:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_329
	test	rbx, rbx
	jne	.label_329
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_329:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_331
	test	rax, rax
	je	.label_330
.label_331:
	pop	rbx
	ret	
.label_330:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405300

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_332
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_335
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_333
.label_332:
	test	rcx, rcx
	jne	.label_336
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_336:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_334
.label_333:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_335:
	call	xalloc_die
.label_334:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405380

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405390
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053a0
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
	#Procedure 0x4053d0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_337
	call	rpl_calloc
	test	rax, rax
	je	.label_337
	pop	rcx
	ret	
.label_337:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405400

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
	#Procedure 0x405430
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405450

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
	.align	16
	#Procedure 0x405480

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_338
	test	rsi, rsi
	mov	ecx, 1
	je	.label_339
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_339
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_338:
	mov	ecx, 1
.label_339:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054d0

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
	je	.label_340
	cmp	r15, -2
	jb	.label_340
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_340
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_340:
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
	#Procedure 0x405530
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_341
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_341
.label_342:
	ret	
.label_341:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_342
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405560
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_343
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_343:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405580
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405590
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
	#Procedure 0x4055a0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_344
.label_345:
	ret	
.label_344:
	cmp	edi, 0x7f
	je	.label_345
	xor	eax, eax
	jmp	.label_345
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055c0
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
	#Procedure 0x4055d0
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
	#Procedure 0x4055e0
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
	#Procedure 0x4055f0
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
	#Procedure 0x405600
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_346
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_346
.label_347:
	ret	
.label_346:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_347
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405630
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_348
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_348:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405650

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
	#Procedure 0x405660
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_349
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_349:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405680
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
	#Procedure 0x405690
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
	#Procedure 0x4056a0

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
	je	.label_350
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_351
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_351
.label_350:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_351
	test	cl, cl
	jne	.label_351
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_351:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405710

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_352
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_352:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_355
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_354
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_353
.label_354:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_353:
	mov	edx, dword ptr [rax]
.label_355:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_357
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_358
	cmp	byte ptr [rax + 1], 0
	je	.label_356
.label_358:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_357
.label_356:
	xor	ebx, ebx
.label_357:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405830

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
	je	.label_359
	mov	rax, rcx
.label_359:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405860

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
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	ebp, ebp
	mov	rbx, r13
	xor	r15d, r15d
.label_369:
	mov	r14, rbx
	mov	al, byte ptr [r14]
	jmp	.label_363
	nop	
.label_370:
	cmp	eax, 0x2f
	cmovne	rbp, rbx
	mov	al, byte ptr [rbx]
.label_363:
	test	al, al
	je	.label_366
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_364:
	movzx	ecx, byte ptr [rbx]
	movzx	eax, al
	cmp	ecx, 0x2f
	je	.label_370
	cmp	eax, 0x2f
	jne	.label_360
	test	rbp, rbp
	je	.label_360
	test	cl, cl
	jne	.label_367
.label_360:
	mov	al, byte ptr [rbx]
	inc	rbx
	test	al, al
	jne	.label_364
	jmp	.label_366
	nop	word ptr [rax + rax]
.label_367:
	mov	rax, rbp
	sub	rax, r14
	cmp	rax, 1
	jne	.label_361
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2e
	je	.label_369
	mov	byte ptr [rbp], 0
	jmp	.label_362
.label_361:
	mov	byte ptr [rbp], 0
	cmp	rax, 2
	jne	.label_362
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2e
	jne	.label_362
	movzx	eax, byte ptr [r14 + 1]
	xor	ecx, ecx
	cmp	eax, 0x2e
	mov	dword ptr [rsp + 4], 0
	je	.label_365
.label_362:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x10]
	call	qword ptr [rsp + 8]
	test	eax, eax
	js	.label_371
	mov	dword ptr [rsp + 4], 0
	mov	cl, 1
	jmp	.label_365
.label_371:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 4], eax
	mov	cl, r15b
.label_365:
	mov	al, cl
	mov	r15d, ecx
	and	al, 1
	movzx	edx, al
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, r14
	call	savewd_chdir
	mov	r14d, eax
	cmp	r14d, -1
	je	.label_368
	mov	byte ptr [rbp], 0x2f
	test	r14d, r14d
	je	.label_369
.label_368:
	mov	ebx, dword ptr [rsp + 4]
	test	ebx, ebx
	je	.label_373
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_373
	mov	dword ptr [rax], ebx
.label_373:
	movsxd	r14, r14d
	jmp	.label_372
.label_366:
	sub	r14, r13
.label_372:
	mov	rax, r14
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
	.align	16
	#Procedure 0x4059b0

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
	mov	dword ptr [rsp + 0x14], r9d
	mov	r12d, r8d
	mov	r13d, ecx
	mov	r15d, edx
	mov	rax, rsi
	mov	r14d, edi
	test	r14d, r14d
	js	.label_384
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsp + 0x18]
	mov	edi, r14d
	call	__fstat
	jmp	.label_383
.label_384:
	lea	rsi, [rsp + 0x18]
	mov	rdi, rax
	mov	qword ptr [rsp + 8], rax
	call	stat
.label_383:
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_374
	mov	ebx, dword ptr [rsp + 0x30]
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_375
	cmp	r13d, -1
	je	.label_379
	cmp	dword ptr [rsp + 0x34], r13d
	jne	.label_381
.label_379:
	xor	eax, eax
	cmp	r12d, -1
	je	.label_382
	cmp	dword ptr [rsp + 0x38], r12d
	je	.label_382
.label_381:
	test	r14d, r14d
	js	.label_386
	mov	edi, r14d
	mov	esi, r13d
	mov	edx, r12d
	call	fchown
	jmp	.label_376
.label_375:
	call	__errno_location
	mov	dword ptr [rax], 0x14
	mov	ebp, 0xffffffff
	jmp	.label_374
.label_386:
	cmp	r15d, -1
	je	.label_387
	mov	rdi, qword ptr [rsp + 8]
	mov	esi, r13d
	mov	edx, r12d
	call	lchown
	jmp	.label_376
.label_387:
	mov	rdi, qword ptr [rsp + 8]
	mov	esi, r13d
	mov	edx, r12d
	call	chown
.label_376:
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
	jne	.label_374
.label_382:
	mov	esi, dword ptr [rsp + 0xe0]
	mov	ecx, ebx
	xor	ecx, dword ptr [rsp + 0x14]
	or	ecx, eax
	xor	ebp, ebp
	test	ecx, esi
	je	.label_374
	not	esi
	and	esi, ebx
	and	esi, 0xfff
	or	esi, dword ptr [rsp + 0x14]
	test	r14d, r14d
	js	.label_385
	mov	edi, r14d
	call	fchmod
	mov	ebp, eax
	jmp	.label_378
.label_374:
	test	r14d, r14d
	js	.label_377
.label_378:
	test	ebp, ebp
	je	.label_380
	call	__errno_location
	mov	rbx, rax
	mov	r15d, dword ptr [rbx]
	mov	edi, r14d
	call	close
	mov	dword ptr [rbx], r15d
	jmp	.label_377
.label_380:
	mov	edi, r14d
	call	close
	mov	ebp, eax
.label_377:
	mov	eax, ebp
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_385:
	mov	rdi, qword ptr [rsp + 8]
	call	chmod
	mov	ebp, eax
	jmp	.label_377
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b30

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
	ja	.label_388
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
	jmp	.label_389
.label_388:
	mov	eax, ebx
.label_389:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b80

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_390
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_391
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_390
.label_391:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_390
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_392
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_392:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_390:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c00

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_393
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_393
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_393:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c30

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_394
	ret	
.label_394:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405c50

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
	jne	.label_395
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_395
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_396
.label_395:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_396:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_397
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_397:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405cc0

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
	#Procedure 0x405ce0

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
	#Procedure 0x405cf0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_408
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_408:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_400
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_409
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_398
	test	esi, esi
	jne	.label_400
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_401
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_399
.label_400:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_405
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_398
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_402
.label_409:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_398:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_406
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_403
.label_406:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_403:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_402:
	cmp	eax, 6
	jne	.label_405
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_410
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_411
.label_405:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_404
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_407
.label_401:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_399:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_410:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_411:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_404:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_407:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f00

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
	#Procedure 0x405f10

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_413
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_415
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_415
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_412
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_416
.label_415:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_416
.label_413:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_416:
	test	ebx, ebx
	js	.label_412
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_412
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_414
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_412
.label_414:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_412:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406090

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section .text
	.align	16
	#Procedure 0x4060a0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat