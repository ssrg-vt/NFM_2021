	.section	.text
	.align	16
	#Procedure 0x401890

	.globl usage
	.type usage, @function
usage:
	lea	rsi, [rsi]
	push	rbp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	ebp, edi
	mov	rbp, rbp
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_7
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
	nop	
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	nop	
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a10

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a40

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.20
	nop	word ptr [rax + rax]
.label_8:
	mov	edi, OFFSET FLAT:.str.7
	call	strcmp
	test	eax, eax
	je	.label_10
	nop	
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	mov	rbp, rbp
	test	rsi, rsi
	jne	.label_8
.label_10:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.7
	nop	
	cmovne	rbx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	nop	
	mov	ecx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	nop	
	call	setlocale
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_9
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.30
	lea	rdi, [rdi]
	mov	edx, 3
	nop	
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_9
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:.str.7
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	nop	
	cmp	rbx, r14
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.34
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	cmove	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401bc0

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	ebx, edi
	mov	qword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0x1ff
	lea	r15, [rsp + 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], 0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], 0
	mov	byte ptr [rsp + 0x1c], 0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.9
	mov	esi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	call	bindtextdomain
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.9
	call	textdomain
	nop	
	mov	edi, OFFSET FLAT:close_stdout
	lea	rsi, [rsi]
	call	atexit
	nop	
	xor	r12d, r12d
	nop	
	jmp	.label_11
.label_21:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	qword ptr [rsp + 0x20], rax
	nop	word ptr cs:[rax + rax]
.label_11:
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.11
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:longopts
	nop	
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	nop	
	call	getopt_long
	cmp	eax, 0x6c
	jle	.label_14
	lea	rsi, [rsi]
	cmp	eax, 0x6d
	je	.label_15
	lea	rsi, [rsi]
	cmp	eax, 0x76
	lea	rsi, [rsi]
	je	.label_21
	lea	rdi, [rdi]
	cmp	eax, 0x70
	nop	
	jne	.label_18
	mov	rsp, rsp
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:make_ancestor
	lea	rdi, [rdi]
	jmp	.label_11
	nop	dword ptr [rax]
.label_14:
	cmp	eax, 0x59
	mov	rbp, rbp
	jle	.label_22
	cmp	eax, 0x5a
	jne	.label_18
	nop	
	cmp	qword ptr [word ptr [rip + optarg]],  0
	je	.label_11
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
	jmp	.label_11
.label_15:
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	jmp	.label_11
.label_22:
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_12
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + optind]],  ebx
	lea	rdi, [rdi]
	je	.label_20
	nop	
	test	r12, r12
	jne	.label_23
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_19
.label_23:
	lea	rdi, [rdi]
	xor	edi, edi
	call	umask
	mov	ebp, eax
	mov	rbp, rbp
	mov	edi, ebp
	nop	
	call	umask
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x10], ebp
	test	r12, r12
	je	.label_13
	mov	rdi, r12
	lea	rdi, [rdi]
	call	mode_compile
	lea	rsi, [rsi]
	mov	r13, rax
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_16
	mov	rsp, rsp
	mov	edi, 0x1ff
	mov	esi, 1
	mov	edx, ebp
	mov	rcx, r13
	mov	rbp, rbp
	mov	r8, r15
	call	mode_adjust
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
	mov	rsp, rsp
	mov	rdi, r13
	call	free
	mov	rsp, rsp
	jmp	.label_19
.label_13:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0x1ff
.label_19:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebx, eax
	mov	rbp, rbp
	lea	rsi, [r14 + rax*8]
	lea	rcx, [rsp + 8]
	mov	edx, OFFSET FLAT:process_dir
	mov	edi, ebx
	mov	rbp, rbp
	call	savewd_process_files
	add	rsp, 0x28
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_12:
	lea	rsi, [rsi]
	cmp	eax, 0xffffff7d
	lea	rsi, [rsi]
	je	.label_17
	lea	rsi, [rsi]
	cmp	eax, 0xffffff7e
	jne	.label_18
	xor	edi, edi
	nop	
	call	usage
.label_17:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.15
	mov	rbp, rbp
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_18:
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	nop	
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_16:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f30

	.globl make_ancestor
	.type make_ancestor, @function
make_ancestor:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	push	rax
	mov	r13, rdx
	nop	
	mov	r15, rsi
	nop	
	mov	r14, rdi
	mov	rbp, rbp
	cmp	byte ptr [r13 + 0x14], 0
	je	.label_26
	lea	rsi, [rsi]
	call	defaultcon
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	nop	
	call	ignorable_ctx_err
	test	al, al
	nop	
	jne	.label_26
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r14
	nop	
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	mov	rsp, rsp
	call	error
.label_26:
	lea	rdi, [rdi]
	mov	edi, dword ptr [r13 + 8]
	mov	rsp, rsp
	test	dil, 0xc0
	je	.label_24
	and	edi, 0xffffff3f
	lea	rsi, [rsi]
	call	umask
	mov	rbp, rbp
	mov	esi, 0x1ff
	mov	rdi, r15
	call	mkdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	mov	r15d, dword ptr [rbx]
	mov	edi, dword ptr [r13 + 8]
	lea	rsi, [rsi]
	call	umask
	lea	rsi, [rsi]
	mov	dword ptr [rbx], r15d
	lea	rdi, [rdi]
	jmp	.label_27
.label_24:
	lea	rdi, [rdi]
	mov	esi, 0x1ff
	mov	rdi, r15
	lea	rsi, [rsi]
	call	mkdir
	mov	ebp, eax
.label_27:
	mov	rsp, rsp
	test	ebp, ebp
	jne	.label_25
	mov	ebp, dword ptr [r13 + 8]
	shr	ebp, 8
	and	ebp, 1
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r13
	call	announce_mkdir
.label_25:
	lea	rdi, [rdi]
	mov	eax, ebp
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402070

	.globl process_dir
	.type process_dir, @function
process_dir:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x14], 0
	je	.label_29
	cmp	qword ptr [rbx], 0
	jne	.label_29
	call	defaultcon
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	mov	rsp, rsp
	call	ignorable_ctx_err
	test	al, al
	mov	rsp, rsp
	jne	.label_29
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.41
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r12, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, r14
	mov	rsp, rsp
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rdx, r12
	lea	rdi, [rdi]
	call	error
.label_29:
	mov	rdx, qword ptr [rbx]
	mov	r8d, dword ptr [rbx + 0xc]
	mov	eax, dword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rsp], eax
	mov	dword ptr [rsp + 0x18], 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x10], 0xffffffff
	mov	dword ptr [rsp + 8], 0xffffffff
	mov	r9d, OFFSET FLAT:announce_mkdir
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rcx, rbx
	call	make_dir_parents
	movzx	eax, al
	mov	rbp, rbp
	mov	ebp, eax
	mov	rsp, rsp
	xor	ebp, 1
	mov	rbp, rbp
	test	al, al
	je	.label_28
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x14], 0
	mov	rbp, rbp
	je	.label_28
	cmp	qword ptr [rbx], 0
	lea	rsi, [rsi]
	je	.label_28
	mov	rbp, rbp
	call	restorecon
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	mov	edi, ebx
	call	ignorable_ctx_err
	test	al, al
	nop	
	jne	.label_28
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	error
.label_28:
	nop	
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402200

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x5f
	pop	rax
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402220

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	mov	rbp, rbp
	cmp	edi, 0x5f
	mov	rsp, rsp
	sete	cl
	cmp	edi, 0x3d
	sete	al
	or	al, cl
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402240

	.globl announce_mkdir
	.type announce_mkdir, @function
announce_mkdir:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	push	rax
	lea	rsi, [rsi]
	mov	rax, rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi + 0x18]
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_30
	lea	rsi, [rsi]
	mov	r14,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	edi, 4
	mov	rsi, rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, rbx
	nop	
	mov	rdx, rcx
	mov	rsp, rsp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	mov	rbp, rbp
	jmp	prog_fprintf
.label_30:
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022c0

	.globl restorecon
	.type restorecon, @function
restorecon:
	nop	
	push	rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4022e0

	.globl prog_fprintf
	.type prog_fprintf, @function
prog_fprintf:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xc8
	mov	r14, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	nop	
	test	al, al
	je	.label_31
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm1
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm5
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x90], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_31:
	mov	qword ptr [rsp + 0x28], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rdi,  qword ptr [word ptr [rip + program_name]]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	edi, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	fputs_unlocked
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb8], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0xb0]
	mov	esi, 1
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rdx, r14
	call	__vfprintf_chk
	mov	edi, 0xa
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	fputc_unlocked
	add	rsp, 0xc8
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4023f0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402400
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402410

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_33
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_32
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_32
.label_33:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_35
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	lea	rdi, [rdi]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_34
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_3
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_35:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_34:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402510

	.globl make_dir_parents
	.type make_dir_parents, @function
make_dir_parents:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	rsp, rsp
	mov	rbx, r9
	mov	r14d, r8d
	mov	qword ptr [rsp + 0x40], rcx
	nop	
	mov	r13, rdx
	mov	rbp, rsi
	mov	r15, rdi
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_38
	mov	rdi, rbp
	call	savewd_errno
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_43
.label_38:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbx
	nop	
	mov	qword ptr [rsp + 0x38], rbp
	xor	r12d, r12d
	test	r13, r13
	je	.label_48
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rdx, r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	mkancesdirs
	mov	r12, rax
	mov	rsp, rsp
	test	r12, r12
	mov	rsp, rsp
	js	.label_39
.label_48:
	mov	edx, dword ptr [rsp + 0x120]
	mov	rsp, rsp
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
	lea	rsi, [rsi]
	cmp	edx, -1
	je	.label_37
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x24], ecx
	and	r15d, 0xffffffc0
	mov	rsp, rsp
	jmp	.label_49
.label_37:
	nop	
	and	r15d, 0xffffffed
	nop	
	test	ebp, ebp
	mov	rsp, rsp
	cmove	r15d, ecx
	mov	dword ptr [rsp + 0x24], ecx
.label_49:
	add	r12, r14
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	esi, r15d
	mov	rsp, rsp
	call	mkdir
	test	eax, eax
	je	.label_42
	mov	qword ptr [rsp + 0x18], r13
	mov	qword ptr [rsp + 0x30], r14
	mov	bl, byte ptr [rsp + 0x128]
	call	__errno_location
	nop	
	mov	r14d, dword ptr [rax]
	mov	r15d, 0xffffffff
	nop	
	mov	edx, 2
	jmp	.label_47
.label_42:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r13
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x14], -1
	sete	r13b
	mov	ebx, dword ptr [rsp + 0x24]
	and	ebx, dword ptr [rsp + 0x110]
	and	ebx, 0x1ff
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r14
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	qword ptr [rsp + 0x28]
	or	ebp, ebx
	mov	rsp, rsp
	sete	bl
	mov	rsp, rsp
	and	bl, r13b
	xor	r14d, r14d
	mov	edx, 3
.label_47:
	nop	
	test	bl, bl
	je	.label_45
	lea	rdi, [rdi]
	mov	bpl, 1
	nop	
	test	r14d, r14d
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x30]
	je	.label_41
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x18], 0
	lea	rdi, [rdi]
	je	.label_40
	mov	rbp, rbp
	cmp	r14d, 2
	lea	rdi, [rdi]
	je	.label_40
	lea	rsi, [rsp + 0x48]
	mov	rdi, r12
	mov	rbp, rbp
	call	stat
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_51
	cmp	r14d, 0x11
	jne	.label_40
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	cmp	ebx, 2
	je	.label_40
	cmp	ebx, 0x14
	lea	rdi, [rdi]
	je	.label_40
	xor	ebp, ebp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rdi]
	mov	rdi, r15
	call	quote
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	jmp	.label_46
.label_45:
	lea	rcx, [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rsi, r12
	call	savewd_chdir
	mov	rsp, rsp
	cmp	eax, -2
	jg	.label_52
	mov	bpl, 1
	jmp	.label_41
.label_39:
	mov	bpl, 1
	cmp	r12, -1
	lea	rsi, [rsi]
	jl	.label_41
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12d, dword ptr [rax]
	jmp	.label_43
.label_52:
	test	eax, eax
	mov	eax, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	cmove	r12, rax
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x48]
	nop	
	mov	eax, dword ptr [rsp + 0x110]
	mov	rsp, rsp
	mov	dword ptr [rsp], eax
	mov	rsi, r12
	mov	edx, r15d
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x118]
	nop	
	mov	r8d, dword ptr [rsp + 0x120]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x24]
	call	dirchownmod
	mov	bpl, 1
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_41
	mov	rsp, rsp
	test	r14d, r14d
	je	.label_44
	cmp	qword ptr [rsp + 0x18], 0
	mov	rbp, rbp
	je	.label_36
	cmp	r14d, 2
	mov	rsp, rsp
	je	.label_36
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	nop	
	jne	.label_44
.label_36:
	mov	r15, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	jmp	.label_40
.label_51:
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rsp + 0x60]
	nop	
	mov	bpl, 1
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	je	.label_41
.label_40:
	lea	rsi, [rsi]
	mov	r12d, r14d
.label_43:
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsp, rsp
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, r12d
.label_50:
	nop	
	mov	rdx, rbx
.label_46:
	call	error
.label_41:
	mov	al, bpl
	add	rsp, 0xd8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
.label_44:
	call	__errno_location
	cmp	dword ptr [rsp + 0x14], -1
	mov	r14d, dword ptr [rax]
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.2_0
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3_0
	nop	
	cmove	rsi, rax
	xor	ebp, ebp
	xor	edi, edi
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_50
	nop	
	.section	.text
	.align	16
	#Procedure 0x402910

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r12, rdi
	mov	al, byte ptr [r12]
	mov	rsp, rsp
	and	al, 0xf8
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	movzx	eax, al
	cmp	eax, 0x30
	lea	rsi, [rsi]
	jne	.label_57
	nop	
	xor	edi, edi
	xor	r14d, r14d
	lea	rsi, [rsi]
	mov	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_87:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbx]
	lea	edi, [rax + rdi*8 - 0x30]
	lea	rsi, [rsi]
	cmp	edi, 0xfff
	mov	rbp, rbp
	ja	.label_59
	mov	al, byte ptr [rbx + 1]
	inc	rbx
	lea	rdi, [rdi]
	mov	cl, al
	and	cl, 0xf8
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	je	.label_87
	xor	r14d, r14d
	mov	rsp, rsp
	test	al, al
	jne	.label_59
	call	octal_to_mode
	mov	rbp, rbp
	sub	rbx, r12
	mov	ecx, eax
	and	ecx, 0xc00
	or	ecx, 0x3ff
	cmp	rbx, 5
	lea	rsi, [rsi]
	mov	esi, 0xfff
	cmovl	esi, ecx
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	jmp	make_node_op_equals
.label_57:
	mov	rax, r12
	mov	rbp, rbp
	jmp	.label_85
	nop	dword ptr [rax]
.label_61:
	add	rdi, rdx
	lea	rdi, [rdi]
	inc	rax
.label_85:
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jle	.label_55
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	je	.label_58
	cmp	ecx, 0x3d
	mov	edx, 1
	je	.label_61
	nop	
	jmp	.label_81
	nop	dword ptr [rax]
.label_55:
	movzx	edx, cl
	cmp	edx, 0x2b
	mov	edx, 1
	lea	rdi, [rdi]
	je	.label_61
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_72
.label_81:
	xor	edx, edx
	lea	rdi, [rdi]
	jmp	.label_61
	nop	
.label_58:
	mov	rsp, rsp
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_61
.label_72:
	mov	esi, 0x10
	call	xnmalloc
	lea	rsi, [rsi]
	mov	r14, rax
	xor	r15d, r15d
	jmp	.label_82
.label_65:
	mov	rbp, rbp
	inc	rbx
	mov	r12, rbx
	nop	dword ptr [rax + rax]
.label_82:
	nop	
	xor	ebp, ebp
	mov	rbp, rbp
	jmp	.label_78
	nop	dword ptr [rax + rax]
.label_66:
	or	ebp, 0xfff
	inc	r12
.label_78:
	movsx	eax, byte ptr [r12]
	cmp	eax, 0x66
	lea	rdi, [rdi]
	jg	.label_60
	cmp	eax, 0x60
	jle	.label_64
	cmp	eax, 0x61
	je	.label_66
	jmp	.label_74
	nop	word ptr cs:[rax + rax]
.label_60:
	nop	
	cmp	eax, 0x67
	mov	rsp, rsp
	je	.label_53
	cmp	eax, 0x6f
	je	.label_76
	lea	rdi, [rdi]
	cmp	eax, 0x75
	lea	rdi, [rdi]
	jne	.label_74
	or	ebp, 0x9c0
	inc	r12
	nop	
	jmp	.label_78
.label_53:
	or	ebp, 0x438
	inc	r12
	jmp	.label_78
.label_76:
	mov	rsp, rsp
	or	ebp, 0x207
	inc	r12
	jmp	.label_78
	nop	word ptr cs:[rax + rax]
.label_64:
	cmp	eax, 0x2b
	je	.label_56
	cmp	eax, 0x2d
	mov	rbp, rbp
	je	.label_56
	nop	
	cmp	eax, 0x3d
	jne	.label_74
	nop	word ptr [rax + rax]
.label_56:
	lea	rsi, [rsi]
	lea	rbx, [r12 + 1]
	mov	rsp, rsp
	mov	r13b, byte ptr [r12]
	movsx	edx, byte ptr [r12 + 1]
	nop	
	mov	r8b, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	edx, 0x66
	jg	.label_68
	nop	
	add	edx, -0x30
	mov	rbp, rbp
	cmp	edx, 8
	jae	.label_62
	nop	word ptr [rax + rax]
.label_54:
	nop	
	movsx	edx, byte ptr [rbx]
	lea	eax, [rdx + rax*8 - 0x30]
	cmp	eax, 0xfff
	lea	rsi, [rsi]
	ja	.label_74
	nop	
	mov	cl, byte ptr [rbx + 1]
	inc	rbx
	mov	rbp, rbp
	mov	dl, cl
	mov	rbp, rbp
	and	dl, 0xf8
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 0x30
	je	.label_54
	test	ebp, ebp
	jne	.label_74
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0x2c
	lea	rdi, [rdi]
	je	.label_83
	test	cl, cl
	jne	.label_74
.label_83:
	mov	edi, eax
	call	octal_to_mode
	mov	r8b, 1
	lea	rdi, [rdi]
	mov	ebp, 0xfff
	mov	esi, 0xfff
	jmp	.label_73
.label_68:
	cmp	edx, 0x67
	je	.label_80
	nop	
	cmp	edx, 0x6f
	je	.label_86
	lea	rsi, [rsi]
	cmp	edx, 0x75
	nop	
	jne	.label_62
	mov	rbp, rbp
	add	r12, 2
	mov	r8b, 3
	mov	rbp, rbp
	xor	esi, esi
	mov	eax, 0x1c0
	jmp	.label_69
	nop	word ptr cs:[rax + rax]
.label_63:
	mov	rsp, rsp
	inc	rbx
	lea	rdi, [rdi]
	mov	r8b, dl
.label_62:
	movsx	edi, byte ptr [rbx]
	mov	rbp, rbp
	xor	esi, esi
	lea	edx, [rdi - 0x72]
	cmp	edx, 6
	ja	.label_67
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_71]]
.label_522:
	or	eax, 0x124
	jmp	.label_75
.label_67:
	mov	dl, 2
	nop	
	cmp	edi, 0x58
	je	.label_63
	jmp	.label_73
.label_523:
	lea	rsi, [rsi]
	or	eax, 0xc00
	jmp	.label_75
.label_524:
	or	eax, 0x200
	mov	rsp, rsp
	jmp	.label_75
.label_525:
	lea	rdi, [rdi]
	or	eax, 0x92
	mov	rsp, rsp
	jmp	.label_75
.label_526:
	mov	rsp, rsp
	or	eax, 0x49
	nop	
.label_75:
	nop	
	mov	dl, r8b
	mov	rbp, rbp
	jmp	.label_63
.label_80:
	lea	rdi, [rdi]
	add	r12, 2
	mov	r8b, 3
	xor	esi, esi
	mov	eax, 0x38
	lea	rsi, [rsi]
	jmp	.label_69
.label_86:
	nop	
	add	r12, 2
	mov	r8b, 3
	xor	esi, esi
	mov	rbp, rbp
	mov	eax, 7
.label_69:
	lea	rsi, [rsi]
	mov	rbx, r12
.label_73:
	lea	rdi, [rdi]
	mov	rdi, r15
	shl	rdi, 4
	mov	rsp, rsp
	mov	byte ptr [r14 + rdi], r13b
	mov	byte ptr [r14 + rdi + 1], r8b
	lea	rsi, [rsi]
	mov	dword ptr [r14 + rdi + 4], ebp
	mov	dword ptr [r14 + rdi + 8], eax
	test	esi, esi
	lea	rdi, [rdi]
	jne	.label_77
	lea	rsi, [rsi]
	cmp	ebp, 1
	nop	
	sbb	esi, esi
	lea	rsi, [rsi]
	or	esi, ebp
	and	esi, eax
.label_77:
	mov	rsp, rsp
	inc	r15
	lea	rsi, [rsi]
	mov	dword ptr [r14 + rdi + 0xc], esi
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rbx]
	cmp	eax, 0x2c
	mov	rbp, rbp
	jle	.label_84
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0x2d
	mov	r12, rbx
	lea	rdi, [rdi]
	je	.label_56
	mov	rsp, rsp
	cmp	eax, 0x3d
	lea	rsi, [rsi]
	mov	r12, rbx
	je	.label_56
	lea	rsi, [rsi]
	jmp	.label_70
	nop	dword ptr [rax]
.label_84:
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 0x2b
	mov	r12, rbx
	nop	
	je	.label_56
	mov	rsp, rsp
	cmp	eax, 0x2c
	je	.label_65
.label_70:
	cmp	byte ptr [rbx], 0
	je	.label_79
.label_74:
	mov	rdi, r14
	nop	
	call	free
	xor	r14d, r14d
.label_59:
	mov	rbp, rbp
	mov	rax, r14
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_79:
	shl	r15, 4
	mov	byte ptr [r14 + r15 + 1], 0
	mov	rbp, rbp
	jmp	.label_59
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402db0

	.globl octal_to_mode
	.type octal_to_mode, @function
octal_to_mode:
	lea	rsi, [rsi]
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dc0

	.globl make_node_op_equals
	.type make_node_op_equals, @function
make_node_op_equals:
	push	rbp
	nop	
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	ebx, esi
	lea	rsi, [rsi]
	mov	ebp, edi
	mov	edi, 0x20
	mov	rsp, rsp
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	nop	
	mov	dword ptr [rax + 8], ebp
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e10
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	lea	rsi, [rsi]
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	call	stat
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_88
	mov	edi, dword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	esi, 0xfff
	call	make_node_op_equals
.label_88:
	nop	
	add	rsp, 0x98
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e50

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	mov	qword ptr [rsp - 8], r8
	and	edi, 0xfff
	nop	
	mov	al, byte ptr [rcx + 1]
	xor	r13d, r13d
	mov	rbp, rbp
	test	al, al
	je	.label_92
	lea	rsi, [rsi]
	xor	r13d, r13d
	test	sil, sil
	lea	rdi, [rdi]
	mov	r9d, 0xc00
	mov	rbp, rbp
	cmove	r9d, r13d
	not	edx
	mov	r10d, r9d
	lea	rdi, [rdi]
	not	r10d
	movzx	r12d, sil
	nop	
	mov	r14d, 0x92
	mov	rbp, rbp
	mov	r15d, 0x49
	nop	dword ptr [rax + rax]
.label_93:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	nop	
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	lea	rsi, [rsi]
	je	.label_95
	mov	rbp, rbp
	cmp	ebp, 3
	jne	.label_94
	lea	rsi, [rsi]
	and	esi, edi
	mov	rsp, rsp
	mov	ebp, esi
	mov	rbp, rbp
	and	ebp, 0x124
	lea	rdi, [rdi]
	mov	eax, 0x124
	cmovne	ebp, eax
	mov	rbp, rbp
	mov	r11d, esi
	and	r11d, 0x92
	mov	rsp, rsp
	cmovne	r11d, r14d
	nop	
	or	r11d, esi
	and	esi, 0x49
	cmovne	esi, r15d
	or	esi, ebp
	lea	rdi, [rdi]
	or	esi, r11d
	jmp	.label_94
	nop	word ptr cs:[rax + rax]
.label_95:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_94:
	test	ebx, ebx
	mov	rbp, rbp
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	nop	
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	lea	rdi, [rdi]
	je	.label_89
	cmp	esi, 0x2d
	je	.label_90
	mov	rbp, rbp
	cmp	esi, 0x3d
	lea	rsi, [rsi]
	jne	.label_91
	not	r8d
	nop	
	and	r8d, r9d
	mov	rsp, rsp
	test	ebx, ebx
	mov	rbp, rbp
	mov	eax, ebx
	not	eax
	cmove	eax, ebx
	or	eax, r8d
	lea	rsi, [rsi]
	mov	esi, eax
	not	esi
	and	esi, 0xfff
	or	r13d, esi
	and	eax, edi
	or	ebp, eax
	nop	
	mov	edi, ebp
	lea	rdi, [rdi]
	jmp	.label_91
	nop	dword ptr [rax + rax]
.label_90:
	lea	rdi, [rdi]
	or	r13d, ebp
	nop	
	not	ebp
	and	edi, ebp
	jmp	.label_91
	nop	dword ptr [rax]
.label_89:
	or	r13d, ebp
	mov	rbp, rbp
	or	edi, ebp
.label_91:
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	lea	rsi, [rsi]
	test	al, al
	jne	.label_93
.label_92:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp - 8]
	mov	rsp, rsp
	test	rax, rax
	je	.label_96
	mov	dword ptr [rax], r13d
.label_96:
	mov	eax, edi
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403010

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_97
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_99
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_99
	mov	esi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_98
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_98:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_99:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_97:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403100
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403150
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403170
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403190

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403200
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403220

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_100
	test	rdx, rdx
	nop	
	je	.label_100
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_100:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403260
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	nop	
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403300

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x108
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	mov	rbp, rbp
	shr	r15b, 1
	mov	rbp, rbp
	and	r15b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	r11d, r11d
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_123:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_191
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_103]]
.label_428:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	mov	rsp, rsp
	call	gettext_quote
	mov	rsp, rsp
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	nop	
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x88], rax
.label_429:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	rbp, rbp
	test	r15b, 1
	mov	rbp, rbp
	mov	eax, 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_116
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_116
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_178:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_186
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_186:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	al, byte ptr [rdx + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rbp, rbp
	test	al, al
	jne	.label_178
.label_116:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	r12, r10
	nop	
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	lea	rdi, [rdi]
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	rbp, rbp
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	nop	
	jmp	.label_125
.label_421:
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_125
.label_424:
	mov	rsp, rsp
	mov	al, 1
.label_422:
	mov	r15b, 1
.label_425:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_206
	mov	cl, al
.label_206:
	lea	rdi, [rdi]
	mov	al, cl
.label_423:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_210
	test	r10, r10
	je	.label_216
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_102
.label_210:
	xor	ecx, ecx
	jmp	.label_102
.label_426:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_105
	test	r10, r10
	je	.label_113
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_119
.label_427:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_125
.label_216:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_102:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_125
.label_105:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_119
.label_113:
	mov	rbp, rbp
	mov	eax, 1
.label_119:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_125:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x140], 0
	lea	rsi, [rsi]
	setne	bl
	cmp	r14d, 2
	lea	rsi, [rsi]
	setne	r15b
	mov	rsp, rsp
	sete	dl
	mov	rbp, rbp
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	lea	rdi, [rdi]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rsp, rsp
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xcf], al
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	dl, al
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	nop	
	and	sil, dil
	mov	rsp, rsp
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	nop	
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_101
	nop	word ptr [rax + rax]
.label_197:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_101:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_221
	cmp	rsi, rbp
	jne	.label_212
	jmp	.label_108
	nop	word ptr cs:[rax + rax]
.label_221:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_108
.label_212:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_115
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_122
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_122
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	mov	r15b, r8b
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rsi, [rsi]
	mov	r12, r9
	mov	r14, rsi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	r14, r13
	lea	rdi, [rdi]
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r10, rbp
	mov	rbp, rax
.label_122:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_152
.label_115:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_132:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_160
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_168]]
.label_439:
	test	rsi, rsi
	jne	.label_109
	jmp	.label_177
	nop	word ptr [rax + rax]
.label_152:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rdi, [rdi]
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_190
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_132
	mov	rsp, rsp
	jmp	.label_140
.label_190:
	mov	rbp, rbp
	mov	r10, rbx
	mov	rbp, rbp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	r9, rbp
	nop	
	mov	r11d, r12d
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	rsi, r14
	jmp	.label_132
.label_443:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_170
	test	rsi, rsi
	nop	
	jne	.label_218
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_177
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_114
.label_432:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_111
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_140
	cmp	edi, 2
	nop	
	jne	.label_107
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_121
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_176
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_176:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_138
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_138:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_144
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_144:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_151
.label_433:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_159
.label_434:
	mov	cl, 0x74
	jmp	.label_163
.label_435:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_159
.label_436:
	mov	bl, 0x66
	jmp	.label_159
.label_437:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_163
.label_440:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_154
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_104
	nop	
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	nop	
	setne	cl
	nop	
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	mov	rsp, rsp
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_182
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_182:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_194
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_194:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_200
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_200:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_211
.label_441:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_189
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_222
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_104
.label_222:
	mov	rdi, r14
	jmp	.label_109
.label_442:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_112
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_104
	mov	rdi, r14
	jmp	.label_124
.label_160:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_127
	mov	rbp, rbp
	mov	r14, r9
	mov	rbx, rsi
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsi, rbx
	nop	
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	mov	rsp, rsp
	shr	r15d, 0xe
	lea	rdi, [rdi]
	and	r15b, 1
	lea	rsi, [rsi]
	mov	ebx, 1
.label_192:
	lea	rdi, [rdi]
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	ja	.label_148
	test	dl, dl
	mov	rsp, rsp
	je	.label_148
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_114
.label_170:
	test	rsi, rsi
	jne	.label_174
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_174
.label_177:
	mov	rbp, rbp
	mov	dl, 1
.label_438:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_140
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_114
.label_111:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_109
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_101
.label_154:
	mov	rdi, r14
.label_211:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_114
.label_112:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_163
.label_124:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_171
.label_163:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_140
.label_159:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_114
	lea	rsi, [rsi]
	jmp	.label_166
.label_127:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_129
	mov	rsp, rsp
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rsp, rsp
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_129:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	r15b, 1
	xor	ebx, ebx
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x100]
.label_183:
	lea	rax, [rbx + rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xfc]
	nop	
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	je	.label_130
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rdi, [rdi]
	je	.label_135
	cmp	rbp, -2
	nop	
	je	.label_147
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_204
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_202:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_136
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_169
.label_136:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_202
.label_204:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_128
	xor	r15d, r15d
.label_128:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	add	rbx, rbp
	mov	r14, rdi
	nop	
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	je	.label_183
	jmp	.label_192
.label_174:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_114
.label_189:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_109
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_109
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_109
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_201
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_209
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_140
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_193
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_193:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_120
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_120:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_184
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_184:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_118
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_118:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_114
.label_109:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_114:
	test	r12b, r12b
	je	.label_153
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_156
	jmp	.label_158
	nop	word ptr cs:[rax + rax]
.label_153:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_158
.label_156:
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	esi, 1
	mov	rsp, rsp
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_167
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_171
	jmp	.label_166
	nop	word ptr cs:[rax + rax]
.label_158:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_166
	jmp	.label_171
.label_167:
	mov	bl, r13b
	mov	rsi, r14
.label_166:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_140
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_143
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_143
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_157
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_157:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_196
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_196:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_207
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_207:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_143:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_219
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_219:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_106
.label_218:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_114
.label_148:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_173
	nop	word ptr cs:[rax + rax]
.label_149:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_173:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_134
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_137
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_142
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_142:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_137
	nop	dword ptr [rax]
.label_134:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_104
	cmp	r14d, 2
	jne	.label_164
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_164
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_175
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_175:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_181
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_181:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_188
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_188:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_164:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_165
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_165:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_195
	mov	dl, r13b
	mov	rsp, rsp
	shr	dl, 6
	or	dl, 0x30
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	lea	rsi, [rsi]
	mov	rsi, rdi
.label_195:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_213
	mov	dl, r13b
	shr	dl, 3
	nop	
	and	dl, 7
	or	dl, 0x30
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_213:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_137:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_171
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_126
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_198
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_133
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_133:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_162
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_162:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_198
	nop	word ptr cs:[rax + rax]
.label_126:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_198:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_149
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_149
	nop	word ptr cs:[rax + rax]
.label_171:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_180
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_180
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_208
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_208:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_187
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_187:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_106
	nop	word ptr cs:[rax + rax]
.label_180:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_106:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_197
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_197
.label_107:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_151
.label_121:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_151:
	cmp	rcx, r10
	jae	.label_214
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_214:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_220
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_131
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_117
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_205
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_205:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_141
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_141:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_114
.label_220:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_114
.label_131:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_114
.label_117:
	xor	r15d, r15d
	jmp	.label_114
.label_130:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_145
.label_135:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_172
.label_147:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_179
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_185:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_217
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_185
	xor	r15d, r15d
	nop	
	jmp	.label_145
.label_179:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_172:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_145:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_192
.label_217:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_145
.label_201:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_114
.label_209:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_114
	nop	word ptr cs:[rax + rax]
.label_108:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_203
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_104
.label_203:
	nop	
	mov	qword ptr [rsp + 0xc0], rbp
	mov	rsp, rsp
	mov	r12, r9
	nop	
	test	cl, cl
	setne	al
	lea	rdi, [rdi]
	cmp	r14d, 2
	nop	
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	test	sil, 1
	lea	rdi, [rdi]
	je	.label_110
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_110
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_150
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_110
	lea	rdi, [rdi]
	test	r10, r10
	nop	
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r15b, dl
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_123
.label_110:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_139
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_139
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_139
	inc	rdx
	nop	dword ptr [rax + rax]
.label_155:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_146
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_146:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_155
.label_139:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_161
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_161
.label_140:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_199:
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rsi, [rsi]
	mov	r8d, 4
	cmove	r8d, r14d
	lea	rsi, [rsi]
	cmp	r14d, 2
	mov	rbp, rbp
	cmovne	r8d, r14d
	nop	
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rsi, r10
	mov	rcx, rbp
.label_215:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_161:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_169:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_199
.label_104:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_199
.label_150:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_215
.label_191:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a50
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rcx, rax
	mov	rbp, rbp
	jmp	quotearg_alloc_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a70

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xcharalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_223
	mov	qword ptr [rax], rbx
.label_223:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x48
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
	#Procedure 0x404bc0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_224
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_228:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_228
.label_224:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_227
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_225]], OFFSET FLAT:slot0
.label_227:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_226
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_226:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c80

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404c90

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_234
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_230
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_235
.label_230:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_231
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_233
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_233:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_235:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_232
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_229
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_229:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xcharalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_232:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_234:
	lea	rdi, [rdi]
	call	abort
.label_231:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x404f00

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f10
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rax
	jmp	quotearg_n
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f30
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f50

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	rbx, rdx
	mov	ebp, edi
	nop	
	lea	r14, [rsp + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fb0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_236
	mov	dword ptr [rdi], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi + 4], xmm0
	lea	rdi, [rdi]
	mov	rax, rdi
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
.label_236:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405020

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	nop	
	mov	r14, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	r15, [rsp]
	nop	
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405080

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	rbp, rbp
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050c0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	eax, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_237]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_238]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_239]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	esi, eax
	mov	rbp, rbp
	call	set_char_quoting
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	call	quotearg_n_options
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405160

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rsi, -1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405180

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405190
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051a0
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	quoting_options_from_style
	nop	
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rcx, rbx
	mov	rsp, rsp
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405210

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405220

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_237]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_238]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_239]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, r15
	mov	rsp, rsp
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4052b0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	mov	rax, rdx
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rdx, rdi
	nop	
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4052e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	mov	rax, rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	r8, rax
	mov	rsp, rsp
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405310

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405320
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rcx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rdx, rax
	lea	rsi, [rsi]
	jmp	quote_n_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405340

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405350

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x405360

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x10
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	mov	rbp, rbp
	call	dcgettext
	cmp	rax, rbx
	mov	rsp, rsp
	jne	.label_240
	mov	rsp, rsp
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	mov	esi, 0x55
	mov	rbp, rbp
	mov	edx, 0x54
	mov	rsp, rsp
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_241
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_240
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_240
.label_241:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	lea	rdi, [rdi]
	mov	esi, 0x47
	nop	
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	rbp, rbp
	mov	r8d, 0x38
	mov	rsp, rsp
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	mov	rbp, rbp
	je	.label_242
	nop	
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_240
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_240
.label_242:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_240:
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405490

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	nop	
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_244
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_243
	jmp	.label_245
.label_244:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_245
.label_243:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_245
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	nop	
	movsx	ecx, r15b
	nop	
	movsx	r8d, r14b
	mov	rbp, rbp
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_245:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405550

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	mov	rsp, rsp
	mov	ebp, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_248
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_247
	lea	rsi, [rsi]
	jmp	.label_246
.label_248:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_246
.label_247:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_246
	nop	
	movsx	esi, r13b
	mov	rbp, rbp
	movsx	edx, r12b
	lea	rdi, [rdi]
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	lea	rdi, [rdi]
	movsx	r9d, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq2
.label_246:
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405640

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14d, r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	nop	
	mov	edi, ebp
	call	c_isupper
	mov	rbp, rbp
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_251
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_250
	jmp	.label_249
.label_251:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_249
.label_250:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_249
	lea	rdi, [rdi]
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq3
.label_249:
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
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
	#Procedure 0x405710

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	rbp, rbp
	mov	r12d, edx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbx + 3]
	nop	
	test	al, al
	je	.label_254
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_253
	jmp	.label_252
.label_254:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_252
.label_253:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_252
	movsx	esi, r12b
	mov	rsp, rsp
	movsx	edx, r15b
	mov	rsp, rsp
	movsx	ecx, r14b
	nop	
	mov	rdi, rbx
	pop	rbx
	nop	
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
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4057b0

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14d, ecx
	lea	rdi, [rdi]
	mov	r15d, edx
	nop	
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	nop	
	movsx	ecx, byte ptr [rbx + 4]
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_257
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_256
	nop	
	jmp	.label_255
.label_257:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_255
.label_256:
	mov	eax, 1
	test	bpl, bpl
	je	.label_255
	lea	rdi, [rdi]
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	strcaseeq5
.label_255:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405850

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14d, edx
	mov	rsp, rsp
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_260
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_259
	lea	rsi, [rsi]
	jmp	.label_258
.label_260:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_258
.label_259:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_258
	movsx	esi, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	jmp	strcaseeq6
.label_258:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058e0

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	nop
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	mov	rsp, rsp
	je	.label_263
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_262
	jmp	.label_261
.label_263:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_261
.label_262:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_261
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_261:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405950

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_264
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_266
	mov	rbp, rbp
	jmp	.label_265
.label_264:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_265
.label_266:
	xor	eax, eax
.label_265:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059a0

	.globl savewd_init
	.type savewd_init, @function
savewd_init:
	mov	dword ptr [rdi], 0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059b0

	.globl savewd_errno
	.type savewd_errno, @function
savewd_errno:
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	dword ptr [rdi], 4
	jne	.label_267
	mov	eax, dword ptr [rdi + 4]
.label_267:
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4059c0

	.globl savewd_chdir
	.type savewd_chdir, @function
savewd_chdir:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rdi, [rdi]
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	ebp, edx
	mov	rbp, rbp
	mov	r12, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	test	r15, r15
	sete	al
	test	bpl, 1
	jne	.label_268
	mov	r13d, 0xffffffff
	test	al, al
	jne	.label_273
.label_268:
	lea	rsi, [rsi]
	mov	esi, ebp
	lea	rsi, [rsi]
	and	esi, 1
	shl	esi, 0x11
	or	esi, 0x10900
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r12
	call	open
	mov	r13d, eax
	test	r15, r15
	mov	rbp, rbp
	je	.label_276
	mov	dword ptr [r15], r13d
	mov	rsp, rsp
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [r15 + 4], eax
.label_276:
	test	r13d, r13d
	js	.label_269
	xor	r14d, r14d
	nop	
	test	bpl, 2
	lea	rsi, [rsi]
	jne	.label_271
	jmp	.label_273
.label_269:
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, 0xffffffff
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0xd
	mov	rsp, rsp
	jne	.label_274
.label_273:
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	savewd_save
	mov	r14d, 0xfffffffe
	lea	rdi, [rdi]
	test	al, al
	je	.label_277
	xor	r15d, r15d
	jmp	.label_271
.label_277:
	lea	rsi, [rsi]
	test	r13d, r13d
	lea	rsi, [rsi]
	js	.label_272
	mov	edi, r13d
	mov	rbp, rbp
	call	fchdir
	jmp	.label_279
.label_272:
	lea	rsi, [rsi]
	mov	rdi, r12
	call	chdir
.label_279:
	mov	r14d, eax
	mov	rsp, rsp
	test	r14d, r14d
	jne	.label_271
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx]
	lea	rdi, [rdi]
	dec	eax
	mov	rsp, rsp
	cmp	eax, 4
	ja	.label_278
	xor	r14d, r14d
	jmp	qword ptr [word ptr [+ (rax * 8) + label_270]]
.label_453:
	mov	rsp, rsp
	mov	dword ptr [rbx], 2
	lea	rdi, [rdi]
	jmp	.label_271
.label_454:
	cmp	dword ptr [rbx + 4], 0
	jne	.label_275
.label_271:
	test	r13d, r13d
	js	.label_274
	test	r15, r15
	mov	rsp, rsp
	jne	.label_274
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rbp, rbp
	call	close
	lea	rsi, [rsi]
	mov	dword ptr [rbp], ebx
.label_274:
	nop	
	mov	eax, r14d
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_278:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x9f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_chdir
	mov	rsp, rsp
	call	__assert_fail
.label_275:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_2
	nop	
	mov	edx, 0x9b
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_chdir
	mov	rsp, rsp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b90

	.globl savewd_save
	.type savewd_save, @function
savewd_save:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx]
	cmp	eax, 5
	mov	rbp, rbp
	ja	.label_285
	mov	ecx, 0x36
	bt	ecx, eax
	jb	.label_282
	test	eax, eax
	jne	.label_287
	mov	edi, OFFSET FLAT:.str.5_0
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	call	open_safer
	test	eax, eax
	js	.label_284
	mov	dword ptr [rbx], 1
	mov	rbp, rbp
	mov	dword ptr [rbx + 4], eax
	jmp	.label_282
.label_284:
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0xd
	mov	rsp, rsp
	je	.label_286
	cmp	ecx, 0x74
	lea	rsi, [rsi]
	jne	.label_283
.label_286:
	mov	rsp, rsp
	movabs	rax, 0xffffffff00000003
	mov	qword ptr [rbx], rax
.label_287:
	cmp	dword ptr [rbx + 4], 0
	jns	.label_282
	mov	rbp, rbp
	call	fork
	mov	dword ptr [rbx + 4], eax
	test	eax, eax
	nop	
	je	.label_282
	mov	al, 1
	jg	.label_281
	mov	dword ptr [rbx], 4
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	jmp	.label_280
.label_283:
	mov	dword ptr [rbx], 4
.label_280:
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 4], eax
.label_282:
	xor	eax, eax
.label_281:
	nop	
	pop	rbx
	mov	rbp, rbp
	ret	
.label_285:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	nop	
	mov	edx, 0x63
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_save
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c70

	.globl savewd_restore
	.type savewd_restore, @function
savewd_restore:
	push	rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	r14, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14]
	lea	rsi, [rsi]
	cmp	rax, 4
	ja	.label_294
	lea	rsi, [rsi]
	xor	ebp, ebp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_289]]
.label_490:
	mov	edi, dword ptr [r14 + 4]
	call	fchdir
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_292
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	mov	edi, dword ptr [r14 + 4]
	nop	
	call	close
	lea	rsi, [rsi]
	mov	dword ptr [r14], 4
	mov	rbp, rbp
	mov	dword ptr [r14 + 4], ebx
.label_492:
	mov	ebx, dword ptr [r14 + 4]
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	ebp, 0xffffffff
	nop	
	jmp	.label_288
.label_491:
	mov	ebx, dword ptr [r14 + 4]
	lea	rdi, [rdi]
	test	ebx, ebx
	je	.label_295
	jle	.label_288
	mov	rbp, rbp
	lea	rbp, [rsp + 0xc]
	nop	
.label_293:
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	edi, ebx
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	waitpid
	test	eax, eax
	jns	.label_291
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_293
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.3_1
	mov	esi, OFFSET FLAT:.str.1_2
	lea	rdi, [rdi]
	mov	edx, 0xd8
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_restore
	call	__assert_fail
.label_291:
	mov	dword ptr [r14 + 4], 0xffffffff
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	and	edi, 0x7f
	lea	rdi, [rdi]
	je	.label_290
	call	raise
.label_290:
	mov	eax, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	movzx	ebp, ah
	jmp	.label_288
.label_292:
	mov	dword ptr [r14], 1
.label_288:
	mov	eax, ebp
	add	rsp, 0x10
	nop	
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_294:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	nop	
	mov	edx, 0xe2
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_restore
	call	__assert_fail
.label_295:
	mov	edi, esi
	nop	
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x405dc0

	.globl savewd_finish
	.type savewd_finish, @function
savewd_finish:
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	mov	rbx, rdi
	mov	eax, dword ptr [rbx]
	cmp	rax, 4
	nop	
	ja	.label_296
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_297]]
.label_468:
	mov	edi, dword ptr [rbx + 4]
	mov	rsp, rsp
	call	close
	jmp	.label_298
.label_469:
	mov	rbp, rbp
	cmp	dword ptr [rbx + 4], 0
	jns	.label_299
.label_298:
	mov	dword ptr [rbx], 5
	pop	rbx
	mov	rbp, rbp
	ret	
.label_296:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rbp, rbp
	mov	edx, 0xfb
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_finish
	lea	rsi, [rsi]
	call	__assert_fail
.label_299:
	mov	edi, OFFSET FLAT:.str.4_1
	mov	esi, OFFSET FLAT:.str.1_2
	nop	
	mov	edx, 0xf7
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_finish
	mov	rsp, rsp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e50

	.globl savewd_process_files
	.type savewd_process_files, @function
savewd_process_files:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdx
	mov	r12, rsi
	mov	r13d, edi
	mov	rsp, rsp
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsi]
	call	savewd_init
	movsxd	rcx, r13d
	lea	eax, [rcx - 1]
	lea	rdi, [rdi]
	movsxd	rdx, eax
	nop	dword ptr [rax + rax]
.label_306:
	mov	rsp, rsp
	mov	rax, rcx
	nop	
	mov	r15, rdx
	test	rax, rax
	nop	
	jle	.label_300
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + r15*8]
	movzx	esi, byte ptr [rcx]
	nop	
	lea	rcx, [rax - 1]
	lea	rdx, [r15 - 1]
	cmp	esi, 0x2f
	mov	rbp, rbp
	je	.label_306
.label_300:
	xor	r14d, r14d
	cmp	eax, 2
	mov	ebx, 0
	jl	.label_302
	xor	r14d, r14d
	lea	rbp, [rsp + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_304:
	mov	rdi, rbp
	mov	rsp, rsp
	call	savewd_delegating
	test	al, al
	lea	rsi, [rsi]
	jne	.label_303
	mov	rdi, qword ptr [r12 + r14*8]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	mov	rdx, qword ptr [rsp]
	lea	rdi, [rdi]
	call	qword ptr [rsp + 8]
	mov	rsp, rsp
	cmp	ebx, eax
	cmovl	ebx, eax
.label_303:
	mov	rax, qword ptr [r12 + r14*8 + 8]
	inc	r14
	movzx	eax, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_307
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	esi, ebx
	call	savewd_restore
	cmp	ebx, eax
	mov	rsp, rsp
	cmovl	ebx, eax
.label_307:
	lea	rsi, [rsi]
	cmp	r14, r15
	lea	rsi, [rsi]
	jl	.label_304
.label_302:
	nop	
	lea	rdi, [rsp + 0x10]
	call	savewd_finish
	mov	rsp, rsp
	cmp	r14d, r13d
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
	mov	rbp, rbp
	jge	.label_301
	nop	
	movsxd	rax, r14d
	lea	rdi, [rdi]
	lea	rbp, [r12 + rax*8]
	sub	r13d, r14d
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x10]
	mov	r14, qword ptr [rsp]
	nop	
.label_305:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r12
	mov	rdx, r14
	call	r15
	cmp	ebx, eax
	cmovl	ebx, eax
	add	rbp, 8
	dec	r13d
	jne	.label_305
.label_301:
	mov	eax, ebx
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fd0

	.globl savewd_delegating
	.type savewd_delegating, @function
savewd_delegating:
	nop	
	cmp	dword ptr [rdi], 3
	nop	
	jne	.label_308
	mov	rsp, rsp
	cmp	dword ptr [rdi + 4], 0
	setg	al
	mov	rsp, rsp
	ret	
.label_308:
	xor	eax, eax
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ff0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_313
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_7
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_318
.label_313:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_318:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_314
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_310]]
.label_508:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_2
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_314:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_315
.label_509:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_510:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_511:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_316
.label_512:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_312
.label_513:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_311
.label_514:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_311:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_312:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_316:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_309
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_315:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_317
.label_515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_317:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_309:
	mov	rbp, rbp
	call	__fprintf_chk
.label_507:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4063e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_319:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_319
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406410

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_323:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_320
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_322
	nop	word ptr cs:[rax + rax]
.label_320:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_322:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_321
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_323
.label_321:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_324
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_324:
	mov	qword ptr [rsp + 0x28], r9
	nop	
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	mov	rsp, rsp
	call	version_etc_va
	lea	rdi, [rdi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406550
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x4065e0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rbp, rbp
	jb	.label_325
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_325:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406620

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_326
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_327
.label_326:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_327:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406650
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	nop	
	div	rcx
	cmp	rax, rsi
	mov	rbp, rbp
	jb	.label_328
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_328:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406690

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_329
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_329
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_329:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_330
	test	rax, rax
	nop	
	je	.label_331
.label_330:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_331:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066e0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_332
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_333
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_335
.label_332:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_334
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_334:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_336
.label_335:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	r8, rcx
	nop	
	mov	rsi, r8
	mov	rbp, rbp
	pop	rax
	lea	rdi, [rdi]
	jmp	xrealloc
.label_333:
	call	xalloc_die
.label_336:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406780

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406790
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4067a0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdi
	nop	
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067e0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_337
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_337
	pop	rcx
	ret	
.label_337:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406810

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406860
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xmemdup
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406880

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4068d0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_338
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_339
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_339
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_338:
	mov	ecx, 1
.label_339:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406940

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_340
	nop	
	cmp	r15, -2
	jb	.label_340
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_340
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_340:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069d0
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
	#Procedure 0x406a00
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
	#Procedure 0x406a20
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a30
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
	#Procedure 0x406a40
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
	#Procedure 0x406a60
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
	#Procedure 0x406a70
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
	#Procedure 0x406a80
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
	#Procedure 0x406a90
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
	#Procedure 0x406aa0
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
	#Procedure 0x406ad0
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
	#Procedure 0x406af0

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
	#Procedure 0x406b00
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
	#Procedure 0x406b20
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
	#Procedure 0x406b30
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
	#Procedure 0x406b40

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	rdi, rbx
	mov	rbp, rbp
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	nop	
	call	rpl_fclose
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	je	.label_351
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_350
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_350
.label_351:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_350
	test	cl, cl
	jne	.label_350
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_350:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406be0

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_352
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_352:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_353
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rsp, rsp
	lea	rax, [rsp + 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], 0x10
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	lea	rdi, [rdi]
	ja	.label_355
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_354
.label_355:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_354:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_353:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	open
	mov	edi, eax
	mov	rsp, rsp
	call	fd_safer
	mov	rbp, rbp
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d00

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_357
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_356
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_358
.label_356:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_357
.label_358:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_357:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406d50

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_359
	nop	
	mov	rax, rcx
.label_359:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d90

	.globl mkancesdirs
	.type mkancesdirs, @function
mkancesdirs:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rdx
	lea	rdi, [rdi]
	mov	r12, rsi
	lea	rsi, [rsi]
	mov	r13, rdi
	nop	
	xor	ebp, ebp
	mov	rbp, rbp
	mov	rbx, r13
	xor	r15d, r15d
.label_363:
	lea	rdi, [rdi]
	mov	r14, rbx
	mov	rbp, rbp
	mov	al, byte ptr [r14]
	nop	
	jmp	.label_364
	nop	dword ptr [rax]
.label_360:
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	cmovne	rbp, rbx
	mov	al, byte ptr [rbx]
.label_364:
	test	al, al
	je	.label_371
	mov	rbp, rbp
	inc	rbx
	nop	dword ptr [rax]
.label_368:
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx]
	movzx	eax, al
	mov	rsp, rsp
	cmp	ecx, 0x2f
	je	.label_360
	cmp	eax, 0x2f
	jne	.label_365
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_365
	test	cl, cl
	jne	.label_367
.label_365:
	mov	rbp, rbp
	mov	al, byte ptr [rbx]
	nop	
	inc	rbx
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_368
	mov	rbp, rbp
	jmp	.label_371
	nop	dword ptr [rax + rax]
.label_367:
	mov	rax, rbp
	sub	rax, r14
	cmp	rax, 1
	mov	rbp, rbp
	jne	.label_361
	nop	
	movzx	eax, byte ptr [r14]
	nop	
	cmp	eax, 0x2e
	je	.label_363
	mov	byte ptr [rbp], 0
	lea	rdi, [rdi]
	jmp	.label_369
.label_361:
	mov	rsp, rsp
	mov	byte ptr [rbp], 0
	cmp	rax, 2
	nop	
	jne	.label_369
	mov	rbp, rbp
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2e
	lea	rsi, [rsi]
	jne	.label_369
	movzx	eax, byte ptr [r14 + 1]
	nop	
	xor	ecx, ecx
	cmp	eax, 0x2e
	mov	dword ptr [rsp + 4], 0
	je	.label_362
.label_369:
	mov	rdi, r13
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	call	qword ptr [rsp + 8]
	test	eax, eax
	nop	
	js	.label_370
	mov	rsp, rsp
	mov	dword ptr [rsp + 4], 0
	nop	
	mov	cl, 1
	mov	rbp, rbp
	jmp	.label_362
.label_370:
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 4], eax
	mov	cl, r15b
.label_362:
	mov	al, cl
	mov	r15d, ecx
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r14
	nop	
	call	savewd_chdir
	mov	r14d, eax
	cmp	r14d, -1
	lea	rdi, [rdi]
	je	.label_373
	mov	byte ptr [rbp], 0x2f
	mov	rbp, rbp
	test	r14d, r14d
	lea	rsi, [rsi]
	je	.label_363
.label_373:
	nop	
	mov	ebx, dword ptr [rsp + 4]
	test	ebx, ebx
	je	.label_366
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 2
	jne	.label_366
	mov	dword ptr [rax], ebx
.label_366:
	movsxd	r14, r14d
	jmp	.label_372
.label_371:
	mov	rsp, rsp
	sub	r14, r13
.label_372:
	lea	rsi, [rsi]
	mov	rax, r14
	nop	
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f60

	.globl dirchownmod
	.type dirchownmod, @function
dirchownmod:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	nop	
	mov	dword ptr [rsp + 0x14], r9d
	lea	rsi, [rsi]
	mov	r12d, r8d
	lea	rdi, [rdi]
	mov	r13d, ecx
	mov	r15d, edx
	nop	
	mov	rax, rsi
	nop	
	mov	r14d, edi
	nop	
	test	r14d, r14d
	nop	
	js	.label_384
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsp + 0x18]
	mov	rsp, rsp
	mov	edi, r14d
	call	__fstat
	jmp	.label_385
.label_384:
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	call	stat
.label_385:
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_375
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x30]
	nop	
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_382
	cmp	r13d, -1
	mov	rbp, rbp
	je	.label_387
	cmp	dword ptr [rsp + 0x34], r13d
	jne	.label_381
.label_387:
	mov	rsp, rsp
	xor	eax, eax
	cmp	r12d, -1
	je	.label_374
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0x38], r12d
	je	.label_374
.label_381:
	test	r14d, r14d
	js	.label_383
	mov	edi, r14d
	mov	esi, r13d
	lea	rsi, [rsi]
	mov	edx, r12d
	lea	rdi, [rdi]
	call	fchown
	lea	rdi, [rdi]
	jmp	.label_379
.label_382:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x14
	mov	ebp, 0xffffffff
	jmp	.label_375
.label_383:
	cmp	r15d, -1
	lea	rdi, [rdi]
	je	.label_380
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	esi, r13d
	mov	edx, r12d
	call	lchown
	lea	rdi, [rdi]
	jmp	.label_379
.label_380:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	nop	
	mov	esi, r13d
	mov	edx, r12d
	call	chown
.label_379:
	nop	
	mov	ebp, eax
	nop	
	mov	ecx, ebx
	and	ecx, 0x49
	mov	edx, ebx
	and	edx, 0xc00
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	test	ebp, ebp
	cmove	eax, edx
	mov	rbp, rbp
	test	ecx, ecx
	cmove	eax, ecx
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_375
.label_374:
	mov	esi, dword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	ecx, ebx
	xor	ecx, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	or	ecx, eax
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	test	ecx, esi
	je	.label_375
	not	esi
	and	esi, ebx
	and	esi, 0xfff
	mov	rsp, rsp
	or	esi, dword ptr [rsp + 0x14]
	test	r14d, r14d
	mov	rbp, rbp
	js	.label_377
	mov	rsp, rsp
	mov	edi, r14d
	nop	
	call	fchmod
	mov	rbp, rbp
	mov	ebp, eax
	jmp	.label_386
.label_375:
	test	r14d, r14d
	mov	rsp, rsp
	js	.label_376
.label_386:
	test	ebp, ebp
	je	.label_378
	mov	rsp, rsp
	call	__errno_location
	mov	rbx, rax
	nop	
	mov	r15d, dword ptr [rbx]
	lea	rsi, [rsi]
	mov	edi, r14d
	nop	
	call	close
	mov	dword ptr [rbx], r15d
	jmp	.label_376
.label_378:
	mov	rbp, rbp
	mov	edi, r14d
	call	close
	mov	rsp, rsp
	mov	ebp, eax
.label_376:
	mov	eax, ebp
	add	rsp, 0xa8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_377:
	mov	rdi, qword ptr [rsp + 8]
	call	chmod
	mov	ebp, eax
	lea	rsi, [rsi]
	jmp	.label_376
	nop	
	.section	.text
	.align	16
	#Procedure 0x407170

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	ebx, edi
	mov	rbp, rbp
	cmp	ebx, 2
	ja	.label_388
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r15d, dword ptr [rbp]
	mov	rsp, rsp
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	jmp	.label_389
.label_388:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_389:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4071e0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_390
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_391
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_390
.label_391:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_390
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_392
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_392:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_390:
	lea	rsi, [rsi]
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	rbp
	nop	
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4072a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_393
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_393
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_393:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x4072d0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_394
	mov	rbp, rbp
	ret	
.label_394:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	16
	#Procedure 0x4072f0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_397
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_397
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_395
.label_397:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_395:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_396
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_396:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073a0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073c0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4073e0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_406
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_406:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xd0]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x10
	nop	
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_409
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_400
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_401
	mov	rbp, rbp
	test	esi, esi
	jne	.label_409
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_411
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_404
.label_409:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_402
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_401
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_405
.label_400:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_401:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_410
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_399
.label_410:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_399:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_405:
	nop	
	cmp	eax, 6
	jne	.label_402
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_407
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_408
.label_402:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_398
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_403
.label_411:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_404:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_407:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_408:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_398:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_403:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407680

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	mov	ecx, esi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	edx, ecx
	jmp	fcntl
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076a0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	lea	rsi, [rsi]
	js	.label_412
	mov	esi, 0x406
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	nop	
	jns	.label_413
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_413
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_414
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_415
.label_413:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_415
.label_412:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_415:
	test	ebx, ebx
	js	.label_414
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_414
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_416
	or	ecx, 1
	nop	
	mov	esi, 2
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	mov	rsp, rsp
	call	fcntl
	mov	rbp, rbp
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_414
.label_416:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_414:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407860

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section .text
	.align	16
	#Procedure 0x407870

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
