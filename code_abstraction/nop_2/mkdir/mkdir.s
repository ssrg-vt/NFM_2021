	.section	.text
	.align	32
	#Procedure 0x401840

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
	mov	esi, OFFSET FLAT:.str.19
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
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.7
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.7
	mov	ecx, OFFSET FLAT:.str.34
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
	#Procedure 0x401a40

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
	xor	ebp, ebp
	xor	r12d, r12d
	jmp	.label_13
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x20], rax
	nop	word ptr cs:[rax + rax]
.label_13:
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x6c
	jle	.label_19
	cmp	eax, 0x6d
	je	.label_20
	cmp	eax, 0x76
	je	.label_9
	cmp	eax, 0x70
	jne	.label_11
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:make_ancestor
	mov	ebp, OFFSET FLAT:make_ancestor
	jmp	.label_13
	nop	
.label_19:
	cmp	eax, 0x59
	jle	.label_15
	cmp	eax, 0x5a
	jne	.label_11
	cmp	qword ptr [word ptr [rip + optarg]],  0
	je	.label_13
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
	jmp	.label_13
.label_20:
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_13
.label_15:
	cmp	eax, -1
	jne	.label_17
	cmp	dword ptr [dword ptr [rip + optind]],  ebx
	je	.label_18
	test	r12, r12
	jne	.label_21
	test	rbp, rbp
	je	.label_10
.label_21:
	xor	edi, edi
	call	umask
	mov	ebp, eax
	mov	edi, ebp
	call	umask
	mov	dword ptr [rsp + 0x10], ebp
	test	r12, r12
	je	.label_14
	mov	rdi, r12
	call	mode_compile
	mov	r13, rax
	test	r13, r13
	je	.label_16
	mov	edi, 0x1ff
	mov	esi, 1
	mov	edx, ebp
	mov	rcx, r13
	mov	r8, r15
	call	mode_adjust
	mov	dword ptr [rsp + 0x14], eax
	mov	rdi, r13
	call	free
	jmp	.label_10
.label_14:
	mov	dword ptr [rsp + 0x14], 0x1ff
.label_10:
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
.label_17:
	cmp	eax, 0xffffff7d
	je	.label_12
	cmp	eax, 0xffffff7e
	jne	.label_11
	xor	edi, edi
	call	usage
.label_12:
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
.label_11:
	mov	edi, 1
	call	usage
.label_18:
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
.label_16:
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cc0

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
	je	.label_22
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_22:
	mov	edi, dword ptr [r15 + 8]
	test	dil, 0xc0
	je	.label_23
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
	jmp	.label_25
.label_23:
	mov	esi, 0x1ff
	mov	rdi, rbp
	call	mkdir
	mov	ebp, eax
.label_25:
	test	ebp, ebp
	jne	.label_24
	mov	ebp, dword ptr [r15 + 8]
	shr	ebp, 8
	and	ebp, 1
	mov	rbx, qword ptr [r15 + 0x18]
	test	rbx, rbx
	je	.label_24
	mov	r15,  qword ptr [word ptr [rip + stdout]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, rcx
	call	prog_fprintf
.label_24:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d80

	.globl process_dir
	.type process_dir, @function
process_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rdx, qword ptr [rbx]
	cmp	byte ptr [rbx + 0x14], 0
	je	.label_26
	test	rdx, rdx
	jne	.label_26
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edx, edx
.label_26:
	mov	r8d, dword ptr [rbx + 0xc]
	mov	eax, dword ptr [rbx + 0x10]
	mov	dword ptr [rsp], eax
	mov	dword ptr [rsp + 0x18], 1
	mov	dword ptr [rsp + 0x10], 0xffffffff
	mov	dword ptr [rsp + 8], 0xffffffff
	mov	r9d, OFFSET FLAT:announce_mkdir
	mov	rdi, r15
	mov	rsi, r14
	mov	rcx, rbx
	call	make_dir_parents
	movzx	eax, al
	mov	ebp, eax
	xor	ebp, 1
	test	al, al
	je	.label_27
	cmp	byte ptr [rbx + 0x14], 0
	je	.label_27
	cmp	qword ptr [rbx], 0
	je	.label_27
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_27:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e20

	.globl announce_mkdir
	.type announce_mkdir, @function
announce_mkdir:
	push	r14
	push	rbx
	push	rax
	mov	rax, rdi
	mov	rbx, qword ptr [rsi + 0x18]
	test	rbx, rbx
	je	.label_28
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
.label_28:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e70

	.globl prog_fprintf
	.type prog_fprintf, @function
prog_fprintf:
	push	r14
	push	rbx
	sub	rsp, 0xc8
	mov	r14, rsi
	mov	rbx, rdi
	test	al, al
	je	.label_29
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_29:
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
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x30]
	jae	.label_30
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_31:
	add	rsp, 0xc8
	pop	rbx
	pop	r14
	ret	
.label_30:
	mov	esi, 0xa
	mov	rdi, rbx
	call	__overflow
	jmp	.label_31
	nop	
	.section	.text
	.align	32
	#Procedure 0x401f60
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f70
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f80

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_33
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_32
	cmp	dword ptr [rbp], 0x20
	jne	.label_32
.label_33:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_35
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_34
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_35:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_34:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
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
	#Procedure 0x402040

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
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbp, rdx
	mov	r12, rsi
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	je	.label_47
	cmp	dword ptr [r12], 4
	jne	.label_47
	mov	r13d, dword ptr [r12 + 4]
	test	r13d, r13d
	jne	.label_38
.label_47:
	mov	qword ptr [rsp + 0x20], r9
	xor	r14d, r14d
	test	rbp, rbp
	je	.label_43
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x30]
	call	mkancesdirs
	mov	r14, rax
	test	r14, r14
	js	.label_42
.label_43:
	mov	ecx, dword ptr [rsp + 0x110]
	mov	eax, dword ptr [rsp + 0x100]
	and	ecx, dword ptr [rsp + 0x108]
	mov	dword ptr [rsp + 0x14], ecx
	and	eax, 0xc00
	mov	r13d, r15d
	and	r13d, 0x200
	or	r13d, eax
	cmp	ecx, -1
	je	.label_37
	mov	qword ptr [rsp + 0x18], rbp
	mov	eax, r15d
	mov	ebp, eax
	and	r15d, 0xffffffc0
	jmp	.label_49
.label_37:
	mov	qword ptr [rsp + 0x18], rbp
	mov	eax, r15d
	and	r15d, 0xffffffed
	test	r13d, r13d
	cmove	r15d, eax
	mov	ebp, eax
.label_49:
	add	r14, rbx
	mov	rdi, r14
	mov	esi, r15d
	call	mkdir
	test	eax, eax
	je	.label_39
	mov	qword ptr [rsp + 0x28], rbx
	mov	bl, byte ptr [rsp + 0x118]
	call	__errno_location
	mov	r13d, dword ptr [rax]
	mov	r15d, 0xffffffff
	mov	edx, 2
	jmp	.label_48
.label_39:
	cmp	dword ptr [rsp + 0x14], -1
	sete	byte ptr [rsp + 0x13]
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x28], rdi
	mov	ebx, ebp
	and	ebx, dword ptr [rsp + 0x100]
	and	ebx, 0x1ff
	mov	rsi, qword ptr [rsp + 0x30]
	call	qword ptr [rsp + 0x20]
	or	r13d, ebx
	sete	bl
	and	bl, byte ptr [rsp + 0x13]
	xor	r13d, r13d
	mov	edx, 3
.label_48:
	test	bl, bl
	je	.label_50
	mov	bpl, 1
	test	r13d, r13d
	mov	rbx, qword ptr [rsp + 0x28]
	je	.label_44
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_38
	cmp	r13d, 2
	je	.label_38
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	mov	rsi, r14
	call	__xstat
	test	eax, eax
	je	.label_45
	cmp	r13d, 0x11
	jne	.label_38
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 2
	je	.label_38
	cmp	r15d, 0x14
	je	.label_38
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
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
	jmp	.label_51
.label_50:
	lea	rcx, [rsp + 0x38]
	mov	rdi, r12
	mov	rsi, r14
	call	savewd_chdir
	cmp	eax, -2
	jg	.label_41
	mov	bpl, 1
	jmp	.label_44
.label_42:
	mov	bpl, 1
	cmp	r14, -1
	jl	.label_44
	call	__errno_location
	mov	r13d, dword ptr [rax]
	jmp	.label_38
.label_41:
	test	eax, eax
	mov	eax, OFFSET FLAT:.str.5_0
	cmove	r14, rax
	mov	edi, dword ptr [rsp + 0x38]
	mov	eax, dword ptr [rsp + 0x100]
	mov	dword ptr [rsp], eax
	mov	rsi, r14
	mov	edx, r15d
	mov	ecx, dword ptr [rsp + 0x108]
	mov	r8d, dword ptr [rsp + 0x110]
	mov	r9d, ebp
	call	dirchownmod
	mov	bpl, 1
	test	eax, eax
	je	.label_44
	test	r13d, r13d
	je	.label_52
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_36
	cmp	r13d, 2
	je	.label_36
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	jne	.label_40
.label_36:
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_38
.label_45:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x50]
	mov	bpl, 1
	cmp	eax, 0x4000
	je	.label_44
.label_38:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbx
	mov	rbx, rax
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
.label_46:
	mov	rdx, rbx
.label_51:
	call	error
.label_44:
	mov	al, bpl
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_52:
	call	__errno_location
.label_40:
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
	mov	rdi, qword ptr [rsp + 0x28]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_46
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402340

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	bl, byte ptr [r14]
	mov	al, bl
	and	al, 0xf8
	movzx	eax, al
	cmp	eax, 0x30
	jne	.label_72
	xor	ebp, ebp
	xor	eax, eax
	mov	rdx, r14
	nop	dword ptr [rax]
.label_84:
	movsx	ecx, bl
	lea	ebp, [rcx + rbp*8 - 0x30]
	cmp	ebp, 0xfff
	ja	.label_56
	mov	bl, byte ptr [rdx + 1]
	inc	rdx
	mov	cl, bl
	and	cl, 0xf8
	movzx	ecx, cl
	cmp	ecx, 0x30
	je	.label_84
	xor	eax, eax
	test	bl, bl
	jne	.label_56
	sub	rdx, r14
	mov	eax, ebp
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
	mov	dword ptr [rax + 8], ebp
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	jmp	.label_56
.label_72:
	lea	rax, [r14 + 1]
	mov	edi, 1
	jmp	.label_77
	nop	dword ptr [rax]
.label_68:
	add	rdi, rdx
	mov	bl, byte ptr [rax]
	inc	rax
.label_77:
	movsx	ecx, bl
	cmp	ecx, 0x2c
	jle	.label_82
	movzx	ecx, bl
	cmp	ecx, 0x2d
	je	.label_83
	cmp	ecx, 0x3d
	mov	edx, 1
	je	.label_68
	jmp	.label_54
	nop	word ptr cs:[rax + rax]
.label_82:
	movzx	ecx, bl
	cmp	ecx, 0x2b
	mov	edx, 1
	je	.label_68
	test	bl, bl
	je	.label_65
.label_54:
	xor	edx, edx
	jmp	.label_68
	nop	word ptr cs:[rax + rax]
.label_83:
	mov	edx, 1
	jmp	.label_68
.label_65:
	mov	rax, rdi
	shr	rax, 0x3b
	jne	.label_69
	shl	rdi, 4
	call	xmalloc
	xor	r8d, r8d
	jmp	.label_75
.label_79:
	inc	rdi
	mov	r14, rdi
	nop	dword ptr [rax + rax]
.label_75:
	xor	r11d, r11d
	jmp	.label_62
	nop	word ptr cs:[rax + rax]
.label_57:
	or	r11d, 0xfff
	inc	r14
.label_62:
	mov	bpl, byte ptr [r14]
	movsx	ecx, bpl
	cmp	ecx, 0x66
	jg	.label_85
	cmp	ecx, 0x60
	jle	.label_67
	cmp	ecx, 0x61
	je	.label_57
	jmp	.label_55
	nop	word ptr cs:[rax + rax]
.label_85:
	cmp	ecx, 0x67
	je	.label_66
	cmp	ecx, 0x6f
	je	.label_81
	cmp	ecx, 0x75
	jne	.label_55
	or	r11d, 0x9c0
	inc	r14
	jmp	.label_62
.label_66:
	or	r11d, 0x438
	inc	r14
	jmp	.label_62
.label_81:
	or	r11d, 0x207
	inc	r14
	jmp	.label_62
	nop	word ptr [rax + rax]
.label_67:
	cmp	ecx, 0x2b
	je	.label_64
	cmp	ecx, 0x2d
	je	.label_64
	cmp	ecx, 0x3d
	jne	.label_55
	nop	word ptr cs:[rax + rax]
.label_64:
	lea	rdi, [r14 + 1]
	mov	bl, byte ptr [r14 + 1]
	movsx	edx, bl
	mov	r9b, 1
	xor	ecx, ecx
	cmp	edx, 0x66
	jg	.label_53
	add	edx, -0x30
	cmp	edx, 8
	jae	.label_60
	nop	word ptr cs:[rax + rax]
.label_73:
	movsx	edx, bl
	lea	ecx, [rdx + rcx*8 - 0x30]
	cmp	ecx, 0xfff
	ja	.label_55
	mov	bl, byte ptr [rdi + 1]
	inc	rdi
	mov	dl, bl
	and	dl, 0xf8
	movzx	edx, dl
	cmp	edx, 0x30
	je	.label_73
	test	r11d, r11d
	jne	.label_55
	mov	r9b, 1
	mov	r11d, 0xfff
	test	bl, bl
	je	.label_70
	movzx	edx, bl
	cmp	edx, 0x2c
	mov	r10d, 0xfff
	je	.label_58
	jmp	.label_55
	nop	word ptr [rax + rax]
.label_53:
	cmp	edx, 0x67
	je	.label_59
	cmp	edx, 0x6f
	je	.label_63
	cmp	edx, 0x75
	jne	.label_60
	add	r14, 2
	mov	r9b, 3
	xor	r10d, r10d
	mov	ecx, 0x1c0
	mov	rdi, r14
	jmp	.label_58
	nop	
.label_61:
	mov	bl, byte ptr [rdi + 1]
	inc	rdi
	mov	r9b, dl
.label_60:
	movsx	esi, bl
	xor	r10d, r10d
	lea	edx, [rsi - 0x72]
	cmp	edx, 6
	ja	.label_74
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_78]]
.label_488:
	or	ecx, 0x124
	jmp	.label_80
.label_74:
	mov	dl, 2
	cmp	esi, 0x58
	je	.label_61
	jmp	.label_58
.label_489:
	or	ecx, 0xc00
	jmp	.label_80
.label_490:
	or	ecx, 0x200
	jmp	.label_80
.label_491:
	or	ecx, 0x92
	jmp	.label_80
.label_492:
	or	ecx, 0x49
	nop	word ptr [rax + rax]
.label_80:
	mov	dl, r9b
	jmp	.label_61
.label_70:
	mov	r10d, 0xfff
	jmp	.label_58
.label_59:
	add	r14, 2
	mov	r9b, 3
	xor	r10d, r10d
	mov	ecx, 0x38
	mov	rdi, r14
	jmp	.label_58
.label_63:
	add	r14, 2
	mov	r9b, 3
	xor	r10d, r10d
	mov	ecx, 7
	mov	rdi, r14
	nop	word ptr cs:[rax + rax]
.label_58:
	mov	rdx, r8
	shl	rdx, 4
	mov	byte ptr [rax + rdx], bpl
	mov	byte ptr [rax + rdx + 1], r9b
	mov	dword ptr [rax + rdx + 4], r11d
	mov	dword ptr [rax + rdx + 8], ecx
	test	r10d, r10d
	jne	.label_76
	cmp	r11d, 1
	sbb	r10d, r10d
	or	r10d, r11d
	and	r10d, ecx
.label_76:
	inc	r8
	mov	dword ptr [rax + rdx + 0xc], r10d
	movsx	ebp, byte ptr [rdi]
	movzx	ecx, bpl
	cmp	ebp, 0x2c
	jle	.label_86
	cmp	ecx, 0x2d
	mov	r14, rdi
	je	.label_64
	cmp	ecx, 0x3d
	mov	r14, rdi
	je	.label_64
	jmp	.label_55
	nop	dword ptr [rax]
.label_86:
	cmp	ecx, 0x2b
	mov	r14, rdi
	je	.label_64
	test	bpl, bpl
	je	.label_71
	cmp	ecx, 0x2c
	je	.label_79
.label_55:
	mov	rdi, rax
	call	free
	xor	eax, eax
.label_56:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_71:
	shl	r8, 4
	mov	byte ptr [rax + r8 + 1], 0
	jmp	.label_56
.label_69:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026f0
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
	jne	.label_87
	mov	ebx, dword ptr [rsp + 0x18]
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebx
	mov	dword ptr [rax + 0xc], 0xfff
	mov	byte ptr [rax + 0x11], 0
.label_87:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402750

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
	je	.label_92
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
.label_90:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_88
	cmp	ebp, 3
	jne	.label_93
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
	jmp	.label_93
	nop	dword ptr [rax + rax]
.label_88:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_93:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_91
	cmp	esi, 0x2d
	je	.label_95
	cmp	esi, 0x3d
	jne	.label_89
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
	jmp	.label_89
	nop	word ptr [rax + rax]
.label_95:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_89
	nop	dword ptr [rax]
.label_91:
	or	r13d, ebp
	or	edi, ebp
.label_89:
	mov	al, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_90
.label_92:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_94
	mov	dword ptr [rax], r13d
.label_94:
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
	.align	32
	#Procedure 0x402890

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
	jne	.label_96
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_96:
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
	.align	32
	#Procedure 0x402940
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
	#Procedure 0x402980
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
	#Procedure 0x402990
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
	#Procedure 0x4029a0
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
	#Procedure 0x4029e0
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
	#Procedure 0x402a00
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_99
	test	rdx, rdx
	je	.label_99
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_99:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a30
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
	#Procedure 0x402ab0

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
.label_141:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_195
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_197]]
.label_517:
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
.label_518:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_217
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_217
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_121:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_112
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_112:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_121
.label_217:
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
	jmp	.label_144
.label_510:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_144
.label_513:
	mov	al, 1
.label_511:
	mov	r12b, 1
.label_514:
	test	r12b, 1
	mov	cl, 1
	je	.label_156
	mov	cl, al
.label_156:
	mov	al, cl
.label_512:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_161
	test	r10, r10
	je	.label_164
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_165
.label_161:
	xor	ecx, ecx
	jmp	.label_165
.label_515:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_175
	test	r10, r10
	je	.label_177
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_180
.label_516:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_144
.label_164:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_165:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_144
.label_175:
	xor	eax, eax
	jmp	.label_180
.label_177:
	mov	eax, 1
.label_180:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_144:
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
	jmp	.label_139
.label_153:
	inc	rdi
.label_139:
	cmp	rbp, -1
	je	.label_130
	cmp	rdi, rbp
	jne	.label_133
	jmp	.label_135
	nop	word ptr cs:[rax + rax]
.label_130:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_140
.label_133:
	test	r12b, r12b
	je	.label_143
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_145
	cmp	rbp, -1
	jne	.label_145
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
.label_145:
	cmp	rbx, rbp
	jbe	.label_169
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_179
	nop	word ptr [rax + rax]
.label_143:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_179
.label_169:
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
	jne	.label_191
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_179
	jmp	.label_109
.label_191:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_179:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_113
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_212]]
.label_483:
	test	rdi, rdi
	jne	.label_103
	jmp	.label_219
.label_487:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_220
	test	rdi, rdi
	jne	.label_199
	cmp	rbp, 1
	je	.label_219
	xor	r13d, r13d
	jmp	.label_107
.label_476:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_102
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_109
	cmp	r9d, 2
	jne	.label_114
	mov	al, r14b
	and	al, 1
	jne	.label_116
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_119
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_119:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_101
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_101:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_170
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_170:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_149
.label_477:
	mov	bl, 0x62
	jmp	.label_137
.label_478:
	mov	cl, 0x74
	jmp	.label_148
.label_479:
	mov	bl, 0x76
	jmp	.label_137
.label_480:
	mov	bl, 0x66
	jmp	.label_137
.label_481:
	mov	cl, 0x72
	jmp	.label_148
.label_484:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_162
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_166
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
	jae	.label_171
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_171:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_188
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_188:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_221
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_221:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_162:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_107
.label_485:
	cmp	r9d, 5
	je	.label_198
	cmp	r9d, 2
	jne	.label_103
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_103
	jmp	.label_204
.label_486:
	cmp	r9d, 2
	jne	.label_206
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_208
	jmp	.label_214
.label_113:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_215
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
.label_127:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_105
	test	cl, cl
	je	.label_105
	xor	eax, eax
	jmp	.label_107
.label_220:
	test	rdi, rdi
	jne	.label_124
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_124
.label_219:
	mov	dl, 1
.label_482:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_108
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_107
.label_102:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_153
	jmp	.label_103
.label_206:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_148
.label_208:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_147
.label_148:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_150
.label_137:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_107
	jmp	.label_157
.label_215:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_158
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_158:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_218:
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
	je	.label_187
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_190
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_192
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_207
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_205:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_201
	bt	rsi, rdx
	jb	.label_202
.label_201:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_205
.label_207:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_134
	xor	r13d, r13d
.label_134:
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
	je	.label_218
	jmp	.label_127
.label_124:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_107
.label_198:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_103
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_103
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_103
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_117
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_122
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_223
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_126
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_126:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_142
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_142:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_151
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_151:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_129
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_129:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_107
.label_103:
	xor	eax, eax
	xor	r13d, r13d
.label_107:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_173
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_176
	jmp	.label_136
	nop	word ptr [rax + rax]
.label_173:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_136
.label_176:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_183
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_189
	nop	word ptr cs:[rax + rax]
.label_136:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_189:
	mov	bl, r15b
	je	.label_147
	jmp	.label_157
.label_183:
	mov	bl, r15b
.label_157:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_109
	cmp	r9d, 2
	jne	.label_196
	mov	al, r14b
	and	al, 1
	jne	.label_196
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_181
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_181:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_213
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_213:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_211
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_211:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_196:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_222
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_222:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_132
.label_199:
	xor	r13d, r13d
	jmp	.label_107
.label_105:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_110
	nop	word ptr [rax + rax]
.label_104:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_110:
	test	cl, cl
	je	.label_123
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_125
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_131
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_131:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_125
	nop	word ptr [rax + rax]
.label_123:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_109
	cmp	r9d, 2
	jne	.label_152
	mov	al, r14b
	and	al, 1
	jne	.label_152
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_154
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_154:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_155
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_155:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_194
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_194:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_152:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_182
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_182:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_186
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_186:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_146
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_146:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_125:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_147
	test	r14b, 1
	je	.label_203
	mov	bl, al
	and	bl, 1
	jne	.label_203
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_224
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_224:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_216
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_216:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_203:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_104
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_104
	nop	dword ptr [rax]
.label_147:
	test	r14b, 1
	je	.label_118
	and	al, 1
	jne	.label_118
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_193
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_193:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_209
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_209:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_118:
	mov	bl, r15b
.label_132:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_184
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_184:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_153
.label_114:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_149
.label_116:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_149:
	cmp	rcx, r10
	jae	.label_163
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_163:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_168
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_174
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_178
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_128
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_128:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_185
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_185:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_107
.label_168:
	xor	r13d, r13d
	jmp	.label_107
.label_174:
	xor	r13d, r13d
	jmp	.label_107
.label_178:
	xor	r13d, r13d
	jmp	.label_107
.label_190:
	xor	r13d, r13d
.label_187:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_127
.label_192:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_200
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_120:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_111
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_120
	xor	r13d, r13d
	jmp	.label_127
.label_200:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_127
.label_111:
	xor	r13d, r13d
	jmp	.label_127
.label_117:
	xor	r13d, r13d
	jmp	.label_107
.label_122:
	xor	r13d, r13d
	jmp	.label_107
	nop	dword ptr [rax]
.label_135:
	mov	r13, rdi
.label_140:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_100
	or	al, dl
	je	.label_160
.label_100:
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
	je	.label_115
	or	al, dl
	jne	.label_115
	test	r8b, 1
	jne	.label_138
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_115
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_141
.label_115:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_106
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_106
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_106
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_167:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_159
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_159:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_167
.label_106:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_172
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_172
.label_108:
	mov	r9d, 2
	jmp	.label_109
.label_202:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_109
.label_160:
	mov	rbp, r13
	jmp	.label_109
.label_150:
	mov	r9d, 2
.label_109:
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
.label_210:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_172:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_138:
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
	jmp	.label_210
.label_166:
	mov	r9d, 2
	jmp	.label_109
.label_214:
	mov	r9d, 2
	jmp	.label_109
.label_204:
	mov	r9d, 2
	jmp	.label_109
.label_223:
	mov	r9d, 5
	jmp	.label_109
.label_195:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c40
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
	#Procedure 0x403d10
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
	je	.label_225
	mov	qword ptr [rax], rbx
.label_225:
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
	#Procedure 0x403e10
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_226
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_228:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_228
.label_226:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_229
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_230]], OFFSET FLAT:slot0
.label_229:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_227
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_227:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403eb0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403ec0

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
	js	.label_231
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_234
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_237
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
.label_237:
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
	je	.label_236
	mov	rdi, rbx
	call	free
.label_236:
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
.label_231:
	call	abort
.label_233:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404090
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040a0
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
	#Procedure 0x4040c0
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
	#Procedure 0x4040e0
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
	je	.label_238
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
.label_238:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404150
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
	je	.label_239
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
.label_239:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041c0

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
	je	.label_240
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
.label_240:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404230
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
	je	.label_241
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
.label_241:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042a0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_242]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
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
	#Procedure 0x404310
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_242]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
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
	#Procedure 0x404380

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_242]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
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
	#Procedure 0x4043e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_242]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
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
	#Procedure 0x404440
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
	je	.label_245
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
.label_245:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4044f0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_242]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_246
	test	rdx, rdx
	je	.label_246
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_246:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404560
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_242]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_247
	test	rdx, rdx
	je	.label_247
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_247:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045d0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_242]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_248
	test	rsi, rsi
	je	.label_248
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_248:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404640
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_242]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_249
	test	rsi, rsi
	je	.label_249
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
.label_249:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4046b0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046c0
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
	#Procedure 0x4046e0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404700

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
	#Procedure 0x404720

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
	jne	.label_250
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_252
	cmp	ecx, 0x55
	jne	.label_251
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_251
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_251
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_251
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_251
	cmp	byte ptr [rax + 5], 0
	jne	.label_251
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_250
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_250
.label_252:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_251
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_251
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_251
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_251
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_251
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_251
	cmp	byte ptr [rax + 7], 0
	je	.label_253
.label_251:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_250:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_253:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_250
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_250
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404810
	.globl savewd_init
	.type savewd_init, @function
savewd_init:

	mov	dword ptr [rdi], 0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404820
	.globl savewd_errno
	.type savewd_errno, @function
savewd_errno:

	xor	eax, eax
	cmp	dword ptr [rdi], 4
	jne	.label_254
	mov	eax, dword ptr [rdi + 4]
.label_254:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404830

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
	jne	.label_263
	mov	r13d, 0xffffffff
	test	al, al
	jne	.label_257
.label_263:
	mov	esi, ebp
	and	esi, 1
	shl	esi, 0x11
	or	esi, 0x10900
	xor	eax, eax
	mov	rdi, rbx
	call	open
	mov	r13d, eax
	test	r12, r12
	je	.label_272
	mov	dword ptr [r12], r13d
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 4], eax
.label_272:
	test	r13d, r13d
	js	.label_259
	xor	r15d, r15d
	test	bpl, 2
	jne	.label_255
	jmp	.label_257
.label_259:
	call	__errno_location
	mov	r15d, 0xffffffff
	cmp	dword ptr [rax], 0xd
	jne	.label_261
.label_257:
	mov	eax, dword ptr [r14]
	cmp	eax, 5
	ja	.label_264
	mov	ecx, 0x36
	bt	ecx, eax
	jb	.label_260
	test	eax, eax
	jne	.label_267
	mov	edi, OFFSET FLAT:.str.5_0
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	test	eax, eax
	js	.label_270
	mov	dword ptr [r14], 1
	jmp	.label_266
.label_267:
	cmp	dword ptr [r14 + 4], 0
	jns	.label_260
	jmp	.label_265
.label_270:
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0xd
	je	.label_274
	cmp	eax, 0x74
	jne	.label_256
.label_274:
	movabs	rax, 0xffffffff00000003
	mov	qword ptr [r14], rax
.label_265:
	lea	rbp, [r14 + 4]
	call	fork
	mov	dword ptr [rbp], eax
	test	eax, eax
	je	.label_260
	mov	r15d, 0xfffffffe
	test	eax, eax
	jle	.label_262
	xor	r12d, r12d
	jmp	.label_255
.label_262:
	mov	dword ptr [r14], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_266
.label_256:
	mov	dword ptr [r14], 4
.label_266:
	mov	dword ptr [r14 + 4], eax
.label_260:
	test	r13d, r13d
	js	.label_268
	mov	edi, r13d
	call	fchdir
	jmp	.label_269
.label_268:
	mov	rdi, rbx
	call	chdir
.label_269:
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_255
	mov	eax, dword ptr [r14]
	dec	eax
	cmp	eax, 4
	ja	.label_271
	xor	r15d, r15d
	jmp	qword ptr [word ptr [+ (rax * 8) + label_273]]
.label_466:
	mov	dword ptr [r14], 2
	jmp	.label_255
.label_467:
	cmp	dword ptr [r14 + 4], 0
	jne	.label_258
.label_255:
	test	r13d, r13d
	js	.label_261
	test	r12, r12
	jne	.label_261
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	mov	edi, r13d
	call	close
	mov	dword ptr [rbp], ebx
.label_261:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_264:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x63
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_save
	call	__assert_fail
.label_271:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x9f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_chdir
	call	__assert_fail
.label_258:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x9b
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_chdir
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x404a10

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
	ja	.label_279
	xor	ebp, ebp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_281]]
.label_468:
	mov	edi, dword ptr [r14 + 4]
	call	fchdir
	test	eax, eax
	je	.label_283
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	edi, dword ptr [r14 + 4]
	call	close
	mov	dword ptr [r14], 4
	mov	dword ptr [r14 + 4], ebp
	jmp	.label_277
.label_470:
	mov	ebp, dword ptr [r14 + 4]
	call	__errno_location
	mov	rbx, rax
.label_277:
	mov	dword ptr [rbx], ebp
	mov	ebp, 0xffffffff
	jmp	.label_275
.label_469:
	mov	ebx, dword ptr [r14 + 4]
	test	ebx, ebx
	je	.label_282
	jle	.label_275
	lea	rbp, [rsp + 0xc]
	nop	word ptr [rax + rax]
.label_280:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, rbp
	call	waitpid
	test	eax, eax
	jns	.label_278
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_280
	mov	edi, OFFSET FLAT:.str.3_1
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0xd8
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_restore
	call	__assert_fail
.label_278:
	mov	dword ptr [r14 + 4], 0xffffffff
	mov	eax, dword ptr [rsp + 0xc]
	mov	edi, eax
	and	edi, 0x7f
	je	.label_276
	call	raise
	mov	eax, dword ptr [rsp + 0xc]
.label_276:
	movzx	ebp, ah
	jmp	.label_275
.label_283:
	mov	dword ptr [r14], 1
.label_275:
	mov	eax, ebp
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_279:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0xe2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_restore
	call	__assert_fail
.label_282:
	mov	edi, esi
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b20
	.globl savewd_finish
	.type savewd_finish, @function
savewd_finish:

	push	rbx
	mov	rbx, rdi
	mov	eax, dword ptr [rbx]
	cmp	rax, 4
	ja	.label_284
	jmp	qword ptr [word ptr [+ (rax * 8) + label_286]]
.label_472:
	mov	edi, dword ptr [rbx + 4]
	call	close
	jmp	.label_285
.label_473:
	cmp	dword ptr [rbx + 4], 0
	jns	.label_287
.label_285:
	mov	dword ptr [rbx], 5
	pop	rbx
	ret	
.label_284:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0xfb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_finish
	call	__assert_fail
.label_287:
	mov	edi, OFFSET FLAT:.str.4_1
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0xf7
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_finish
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b80

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
	mov	r14, rcx
	mov	r12, rsi
	mov	r15d, edi
	mov	dword ptr [rsp + 0x10], 0
	movsxd	rdi, r15d
	lea	eax, [rdi - 1]
	cdqe	
	lea	rcx, [r12 + rax*8]
	nop	dword ptr [rax + rax]
.label_300:
	mov	rax, rdi
	test	rax, rax
	jle	.label_299
	mov	rsi, qword ptr [rcx]
	movzx	esi, byte ptr [rsi]
	lea	rdi, [rax - 1]
	add	rcx, -8
	cmp	esi, 0x2f
	je	.label_300
.label_299:
	mov	qword ptr [rsp + 8], rdx
	lea	ecx, [rax - 1]
	xor	ebx, ebx
	cmp	eax, 2
	mov	r13d, 0
	jl	.label_291
	mov	rbp, r14
	movsxd	r14, ecx
	xor	eax, eax
	mov	r13d, 1
	xor	ebx, ebx
	jmp	.label_295
	nop	word ptr cs:[rax + rax]
.label_288:
	mov	ecx, dword ptr [rsp + 0x14]
	inc	r13
.label_295:
	cmp	eax, 3
	jne	.label_289
	test	ecx, ecx
	jg	.label_290
.label_289:
	mov	rdi, qword ptr [r12 + r13*8 - 8]
	lea	rsi, [rsp + 0x10]
	mov	rdx, rbp
	call	qword ptr [rsp + 8]
	cmp	ebx, eax
	cmovl	ebx, eax
.label_290:
	mov	rax, qword ptr [r12 + r13*8]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_296
	lea	rdi, [rsp + 0x10]
	mov	esi, ebx
	call	savewd_restore
	cmp	ebx, eax
	cmovl	ebx, eax
.label_296:
	mov	eax, dword ptr [rsp + 0x10]
	cmp	r13, r14
	jl	.label_288
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_292
	mov	r14, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_293]]
.label_474:
	mov	edi, dword ptr [rsp + 0x14]
	call	close
	jmp	.label_291
.label_475:
	cmp	dword ptr [rsp + 0x14], 0
	jns	.label_297
.label_291:
	mov	dword ptr [rsp + 0x10], 5
	cmp	r13d, r15d
	jge	.label_298
	movsxd	rax, r13d
	lea	rbp, [r12 + rax*8]
	sub	r15d, r13d
	lea	r12, [rsp + 0x10]
	mov	r13, qword ptr [rsp + 8]
.label_294:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r12
	mov	rdx, r14
	call	r13
	cmp	ebx, eax
	cmovl	ebx, eax
	add	rbp, 8
	dec	r15d
	jne	.label_294
.label_298:
	mov	eax, ebx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_292:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0xfb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_finish
	call	__assert_fail
.label_297:
	mov	edi, OFFSET FLAT:.str.4_1
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0xf7
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_finish
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x404cf0

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
	je	.label_306
	mov	edx, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_305
.label_306:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_305:
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
	ja	.label_310
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_302]]
.label_431:
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
.label_310:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_301
.label_432:
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
.label_433:
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
.label_434:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_307
.label_435:
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
	jmp	.label_309
.label_436:
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
	jmp	.label_304
.label_437:
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
.label_304:
	mov	qword ptr [rsp + 0x10], rdi
.label_309:
	mov	qword ptr [rsp + 8], rsi
.label_307:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_308
.label_439:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_301:
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
	jmp	.label_303
.label_438:
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
.label_303:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_308:
	call	__fprintf_chk
.label_430:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fe0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_311:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_311
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405010
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_315:
	cmp	r10d, 0x28
	ja	.label_312
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_313
	nop	word ptr cs:[rax + rax]
.label_312:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_313:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_314
	inc	r9
	cmp	r9, 0xa
	jb	.label_315
.label_314:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405070

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_316
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_316:
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
.label_320:
	cmp	r8d, 0x28
	ja	.label_317
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_319
	nop	
.label_317:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_319:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_318
	inc	r9
	cmp	r9, 0xa
	jb	.label_320
.label_318:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405170
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
	.align	32
	#Procedure 0x4051f0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_321
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_322
	test	rax, rax
	je	.label_321
.label_322:
	pop	rbx
	ret	
.label_321:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405230

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_323
	test	rax, rax
	je	.label_324
.label_323:
	pop	rbx
	ret	
.label_324:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_325
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_326
	test	rbx, rbx
	jne	.label_326
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_326:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_327
	test	rax, rax
	je	.label_325
.label_327:
	pop	rbx
	ret	
.label_325:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_328
	test	rbx, rbx
	jne	.label_328
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_328:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_330
	test	rax, rax
	je	.label_329
.label_330:
	pop	rbx
	ret	
.label_329:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4052d0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_334
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_335
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_331
.label_334:
	test	rcx, rcx
	jne	.label_337
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_337:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_336
.label_331:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_332
	test	rbx, rbx
	jne	.label_332
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_332:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_333
	test	rax, rax
	je	.label_335
.label_333:
	pop	rbx
	ret	
.label_335:
	call	xalloc_die
.label_336:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405370
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_338
	test	rax, rax
	je	.label_339
.label_338:
	pop	rbx
	ret	
.label_339:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405390
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_342
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_344
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_341
	call	free
	xor	eax, eax
	jmp	.label_343
.label_342:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_340
	mov	qword ptr [rsi], rbx
.label_341:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_343
	test	rax, rax
	je	.label_340
.label_343:
	pop	rbx
	ret	
.label_340:
	call	xalloc_die
.label_344:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405400
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
	je	.label_346
	test	r14, r14
	je	.label_345
.label_346:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_345:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405440
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_347
	call	rpl_calloc
	test	rax, rax
	je	.label_347
	pop	rcx
	ret	
.label_347:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405470

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
	je	.label_348
	test	r15, r15
	je	.label_349
.label_348:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_349:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4054b0
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
	je	.label_351
	test	r15, r15
	je	.label_350
.label_351:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_350:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405500

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
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405530

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_352
	test	rsi, rsi
	mov	ecx, 1
	je	.label_353
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_353
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_352:
	mov	ecx, 1
.label_353:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405580

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
	je	.label_354
	cmp	r15, -2
	jb	.label_354
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_354
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_354:
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
	#Procedure 0x4055e0

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
	jne	.label_356
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_355
	test	cl, cl
	jne	.label_355
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_355
.label_356:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_355
	call	__errno_location
	mov	dword ptr [rax], 0
.label_355:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405640

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_357
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_357:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_360
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_359
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_358
.label_359:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_358:
	mov	edx, dword ptr [rax]
.label_360:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405720

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_362
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_363
	cmp	byte ptr [rax + 1], 0
	je	.label_361
.label_363:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_362
.label_361:
	xor	ebx, ebx
.label_362:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405760

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
	je	.label_364
	mov	rax, rcx
.label_364:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405790

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
.label_373:
	mov	al, byte ptr [rbx]
.label_369:
	mov	r14, rbx
	test	al, al
	jne	.label_378
	jmp	.label_365
	nop	word ptr cs:[rax + rax]
.label_371:
	movzx	eax, cl
	cmp	eax, 0x2f
	cmovne	rbp, rbx
	mov	al, 0x2f
.label_378:
	inc	rbx
	nop	
.label_379:
	mov	cl, al
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	je	.label_371
	movzx	ecx, cl
	cmp	ecx, 0x2f
	jne	.label_375
	test	rbp, rbp
	je	.label_375
	test	al, al
	jne	.label_377
.label_375:
	inc	rbx
	test	al, al
	jne	.label_379
	jmp	.label_365
	nop	word ptr [rax + rax]
.label_377:
	mov	rcx, rbp
	sub	rcx, r14
	cmp	rcx, 1
	jne	.label_372
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2e
	je	.label_369
	mov	byte ptr [rbp], 0
	jmp	.label_374
.label_372:
	mov	byte ptr [rbp], 0
	cmp	rcx, 2
	jne	.label_374
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2e
	jne	.label_374
	movzx	eax, byte ptr [r14 + 1]
	xor	ecx, ecx
	cmp	eax, 0x2e
	mov	dword ptr [rsp + 4], 0
	je	.label_370
.label_374:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x10]
	call	qword ptr [rsp + 8]
	test	eax, eax
	js	.label_367
	mov	dword ptr [rsp + 4], 0
	mov	cl, 1
	jmp	.label_370
.label_367:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 4], eax
	mov	cl, r15b
.label_370:
	mov	al, cl
	mov	r15d, ecx
	and	al, 1
	movzx	edx, al
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, r14
	call	savewd_chdir
	mov	r14d, 0xffffffff
	cmp	eax, -1
	je	.label_368
	mov	byte ptr [rbp], 0x2f
	test	eax, eax
	mov	r14d, eax
	je	.label_373
.label_368:
	mov	ebx, dword ptr [rsp + 4]
	test	ebx, ebx
	je	.label_376
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_376
	mov	dword ptr [rax], ebx
.label_376:
	movsxd	r14, r14d
	jmp	.label_366
.label_365:
	sub	r14, r13
.label_366:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4058e0

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
	mov	r14d, edi
	test	r14d, r14d
	js	.label_391
	mov	qword ptr [rsp + 8], rsi
	lea	rdx, [rsp + 0x18]
	mov	edi, 1
	mov	esi, r14d
	call	__fxstat
	jmp	.label_390
.label_391:
	lea	rdx, [rsp + 0x18]
	mov	edi, 1
	mov	qword ptr [rsp + 8], rsi
	call	__xstat
.label_390:
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_384
	mov	rbx, qword ptr [rsp + 0x30]
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_393
	cmp	r13d, -1
	je	.label_386
	mov	rax, rbx
	shr	rax, 0x20
	cmp	eax, r13d
	jne	.label_388
.label_386:
	xor	eax, eax
	cmp	r12d, -1
	je	.label_381
	cmp	dword ptr [rsp + 0x38], r12d
	je	.label_381
.label_388:
	test	r14d, r14d
	js	.label_392
	mov	edi, r14d
	mov	esi, r13d
	mov	edx, r12d
	call	fchown
	jmp	.label_382
.label_393:
	call	__errno_location
	mov	dword ptr [rax], 0x14
	mov	ebp, 0xffffffff
	jmp	.label_384
.label_392:
	cmp	r15d, -1
	je	.label_380
	mov	rdi, qword ptr [rsp + 8]
	mov	esi, r13d
	mov	edx, r12d
	call	lchown
	jmp	.label_382
.label_380:
	mov	rdi, qword ptr [rsp + 8]
	mov	esi, r13d
	mov	edx, r12d
	call	chown
.label_382:
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
	jne	.label_384
.label_381:
	mov	esi, dword ptr [rsp + 0xe0]
	mov	ecx, ebx
	xor	ecx, dword ptr [rsp + 0x14]
	or	ecx, eax
	xor	ebp, ebp
	test	ecx, esi
	je	.label_384
	not	esi
	and	esi, ebx
	and	esi, 0xfff
	or	esi, dword ptr [rsp + 0x14]
	test	r14d, r14d
	js	.label_383
	mov	edi, r14d
	call	fchmod
	mov	ebp, eax
	jmp	.label_385
.label_384:
	test	r14d, r14d
	js	.label_387
.label_385:
	test	ebp, ebp
	je	.label_389
	call	__errno_location
	mov	rbx, rax
	mov	r15d, dword ptr [rbx]
	mov	edi, r14d
	call	close
	mov	dword ptr [rbx], r15d
	jmp	.label_387
.label_389:
	mov	edi, r14d
	call	close
	mov	ebp, eax
.label_387:
	mov	eax, ebp
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_383:
	mov	rdi, qword ptr [rsp + 8]
	call	chmod
	mov	ebp, eax
	jmp	.label_387
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a70

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
	ja	.label_394
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
	jmp	.label_395
.label_394:
	mov	eax, ebx
.label_395:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ac0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_396
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_398
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_396
.label_398:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_396
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_397
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_397:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_396:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405b40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_399
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_399
	test	byte ptr [rbx + 1], 1
	je	.label_399
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_399:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b80

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
	jne	.label_400
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_400
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_401
.label_400:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_401:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_402
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_402:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405bf0

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
	.align	32
	#Procedure 0x405c10

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section .text
	.align	32
	#Procedure 0x405c20

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_411
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_411:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_415
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_406
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_403
	test	esi, esi
	jne	.label_415
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_416
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_417
.label_415:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_419
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_403
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_405
.label_406:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_413
.label_403:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_410
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_412
.label_410:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_412:
	mov	edx, dword ptr [rax]
.label_418:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_413:
	mov	ebp, eax
.label_408:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_405:
	cmp	eax, 6
	jne	.label_419
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_421
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_404
.label_419:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_409
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_420
.label_416:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_417:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_418
.label_421:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_404:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_422
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_407
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_407
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_408
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_423
.label_407:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_408
.label_409:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_420:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_413
.label_422:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_423:
	test	al, al
	je	.label_408
	test	ebp, ebp
	js	.label_408
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_414
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_408
.label_414:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_408
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]