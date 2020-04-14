	.section	.text
	.align	32
	#Procedure 0x401840

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
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.19
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.28
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	mov	rsp, rsp
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
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.7
	mov	rsp, rsp
	xor	eax, eax
	nop	
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.7
	mov	ecx, OFFSET FLAT:.str.34
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
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
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rsp, rsp
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ac0

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
	xor	ebp, ebp
	nop	
	xor	r12d, r12d
	jmp	.label_10
.label_9:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	nop	word ptr [rax + rax]
.label_10:
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.11
	nop	
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	nop	
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x6c
	lea	rsi, [rsi]
	jle	.label_12
	cmp	eax, 0x6d
	lea	rsi, [rsi]
	je	.label_14
	lea	rsi, [rsi]
	cmp	eax, 0x76
	lea	rdi, [rdi]
	je	.label_9
	nop	
	cmp	eax, 0x70
	mov	rsp, rsp
	jne	.label_16
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:make_ancestor
	mov	ebp, OFFSET FLAT:make_ancestor
	mov	rbp, rbp
	jmp	.label_10
	nop	
.label_12:
	cmp	eax, 0x59
	jle	.label_19
	nop	
	cmp	eax, 0x5a
	jne	.label_16
	nop	
	cmp	qword ptr [word ptr [rip + optarg]],  0
	mov	rbp, rbp
	je	.label_10
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rbp, rbp
	jmp	.label_10
.label_14:
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	jmp	.label_10
.label_19:
	lea	rdi, [rdi]
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_17
	nop	
	cmp	dword ptr [dword ptr [rip + optind]],  ebx
	je	.label_18
	lea	rdi, [rdi]
	test	r12, r12
	jne	.label_20
	lea	rdi, [rdi]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_21
.label_20:
	xor	edi, edi
	call	umask
	mov	rbp, rbp
	mov	ebp, eax
	nop	
	mov	edi, ebp
	lea	rdi, [rdi]
	call	umask
	mov	dword ptr [rsp + 0x10], ebp
	test	r12, r12
	je	.label_11
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	mode_compile
	mov	r13, rax
	lea	rsi, [rsi]
	test	r13, r13
	mov	rsp, rsp
	je	.label_13
	mov	edi, 0x1ff
	mov	esi, 1
	mov	edx, ebp
	mov	rbp, rbp
	mov	rcx, r13
	mov	r8, r15
	mov	rsp, rsp
	call	mode_adjust
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	jmp	.label_21
.label_11:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0x1ff
.label_21:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	sub	ebx, eax
	lea	rsi, [r14 + rax*8]
	lea	rcx, [rsp + 8]
	mov	edx, OFFSET FLAT:process_dir
	mov	rbp, rbp
	mov	edi, ebx
	call	savewd_process_files
	lea	rsi, [rsi]
	add	rsp, 0x28
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_17:
	lea	rsi, [rsi]
	cmp	eax, 0xffffff7d
	lea	rsi, [rsi]
	je	.label_15
	cmp	eax, 0xffffff7e
	jne	.label_16
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_15:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, OFFSET FLAT:.str.17
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.15
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_16:
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	nop	
	call	usage
.label_13:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e20

	.globl make_ancestor
	.type make_ancestor, @function
make_ancestor:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	r15, rdx
	mov	rbp, rsi
	mov	r14, rdi
	nop	
	cmp	byte ptr [r15 + 0x14], 0
	nop	
	je	.label_22
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_22:
	lea	rsi, [rsi]
	mov	edi, dword ptr [r15 + 8]
	mov	rsp, rsp
	test	dil, 0xc0
	lea	rsi, [rsi]
	je	.label_24
	and	edi, 0xffffff3f
	nop	
	call	umask
	mov	esi, 0x1ff
	nop	
	mov	rdi, rbp
	call	mkdir
	lea	rdi, [rdi]
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	mov	r12d, dword ptr [rbx]
	mov	edi, dword ptr [r15 + 8]
	mov	rbp, rbp
	call	umask
	nop	
	mov	dword ptr [rbx], r12d
	lea	rdi, [rdi]
	jmp	.label_25
.label_24:
	mov	esi, 0x1ff
	mov	rsp, rsp
	mov	rdi, rbp
	call	mkdir
	mov	ebp, eax
.label_25:
	mov	rsp, rsp
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_23
	mov	rsp, rsp
	mov	ebp, dword ptr [r15 + 8]
	shr	ebp, 8
	and	ebp, 1
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_23
	mov	r15,  qword ptr [word ptr [rip + stdout]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	prog_fprintf
.label_23:
	mov	eax, ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f30

	.globl process_dir
	.type process_dir, @function
process_dir:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
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
	mov	rsp, rsp
	mov	eax, dword ptr [rbx + 0x10]
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x18], 1
	mov	dword ptr [rsp + 0x10], 0xffffffff
	nop	
	mov	dword ptr [rsp + 8], 0xffffffff
	mov	rbp, rbp
	mov	r9d, OFFSET FLAT:announce_mkdir
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rcx, rbx
	call	make_dir_parents
	mov	rsp, rsp
	movzx	eax, al
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rbp, rbp
	xor	ebp, 1
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_27
	cmp	byte ptr [rbx + 0x14], 0
	lea	rdi, [rdi]
	je	.label_27
	cmp	qword ptr [rbx], 0
	je	.label_27
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x5f
.label_27:
	mov	eax, ebp
	mov	rbp, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402000

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
	je	.label_28
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
.label_28:
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402080

	.globl prog_fprintf
	.type prog_fprintf, @function
prog_fprintf:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xd8
	mov	r14, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	nop	
	test	al, al
	je	.label_29
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x50], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x60], xmm1
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_29:
	mov	qword ptr [rsp + 0x48], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rdi,  qword ptr [word ptr [rip + program_name]]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	edi, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	fputs_unlocked
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	lea	rax, [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rdx, r14
	call	__vfprintf_chk
	mov	rax, qword ptr [rbx + 0x28]
	nop	
	cmp	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	jae	.label_31
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_30:
	add	rsp, 0xd8
	mov	rsp, rsp
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_31:
	mov	rsp, rsp
	mov	esi, 0xa
	nop	
	mov	rdi, rbx
	mov	rbp, rbp
	call	__overflow
	jmp	.label_30
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021b0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4021c0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021d0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_33
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_32
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_32
.label_33:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_35
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_32:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_34
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_35:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_34:
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
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4022d0

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
	mov	r15d, r8d
	mov	qword ptr [rsp + 0xd0], rcx
	mov	rbp, rdx
	nop	
	mov	r12, rsi
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	je	.label_38
	mov	rbp, rbp
	cmp	dword ptr [r12], 4
	jne	.label_38
	mov	r13d, dword ptr [r12 + 4]
	test	r13d, r13d
	jne	.label_39
.label_38:
	mov	qword ptr [rsp + 0xa0], r9
	lea	rdi, [rdi]
	xor	r14d, r14d
	nop	
	test	rbp, rbp
	je	.label_42
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rsp, rsp
	call	mkancesdirs
	mov	rbp, rbp
	mov	r14, rax
	lea	rdi, [rdi]
	test	r14, r14
	js	.label_45
.label_42:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x120]
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x110]
	and	ecx, dword ptr [rsp + 0x118]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc0], ecx
	and	eax, 0xc00
	mov	r13d, r15d
	and	r13d, 0x200
	or	r13d, eax
	cmp	ecx, -1
	je	.label_48
	mov	qword ptr [rsp + 0xc8], rbp
	mov	eax, r15d
	mov	ebp, eax
	lea	rsi, [rsi]
	and	r15d, 0xffffffc0
	jmp	.label_40
.label_48:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	mov	eax, r15d
	mov	rsp, rsp
	and	r15d, 0xffffffed
	nop	
	test	r13d, r13d
	nop	
	cmove	r15d, eax
	mov	rsp, rsp
	mov	ebp, eax
.label_40:
	add	r14, rbx
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	esi, r15d
	lea	rdi, [rdi]
	call	mkdir
	mov	rsp, rsp
	test	eax, eax
	je	.label_49
	mov	qword ptr [rsp + 0xb0], rbx
	mov	bl, byte ptr [rsp + 0x128]
	call	__errno_location
	mov	r13d, dword ptr [rax]
	mov	r15d, 0xffffffff
	nop	
	mov	edx, 2
	jmp	.label_36
.label_49:
	nop	
	cmp	dword ptr [rsp + 0xc0], -1
	sete	byte ptr [rsp + 0xaf]
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb0], rdi
	mov	ebx, ebp
	and	ebx, dword ptr [rsp + 0x110]
	and	ebx, 0x1ff
	mov	rsi, qword ptr [rsp + 0xd0]
	lea	rdi, [rdi]
	call	qword ptr [rsp + 0xa0]
	mov	rsp, rsp
	or	r13d, ebx
	sete	bl
	lea	rdi, [rdi]
	and	bl, byte ptr [rsp + 0xaf]
	xor	r13d, r13d
	mov	rsp, rsp
	mov	edx, 3
.label_36:
	mov	rsp, rsp
	test	bl, bl
	je	.label_52
	mov	bpl, 1
	nop	
	test	r13d, r13d
	mov	rbx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	je	.label_41
	nop	
	cmp	qword ptr [rsp + 0xc8], 0
	mov	rbp, rbp
	je	.label_39
	cmp	r13d, 2
	lea	rdi, [rdi]
	je	.label_39
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x10]
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, r14
	call	__xstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_46
	cmp	r13d, 0x11
	lea	rsi, [rsi]
	jne	.label_39
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 2
	lea	rsi, [rsi]
	je	.label_39
	cmp	r15d, 0x14
	je	.label_39
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r15d
	lea	rdi, [rdi]
	mov	rdx, r14
	jmp	.label_43
.label_52:
	lea	rcx, [rsp + 0x10]
	mov	rdi, r12
	mov	rsi, r14
	call	savewd_chdir
	mov	rsp, rsp
	cmp	eax, -2
	jg	.label_47
	mov	rsp, rsp
	mov	bpl, 1
	jmp	.label_41
.label_45:
	mov	bpl, 1
	cmp	r14, -1
	jl	.label_41
	call	__errno_location
	lea	rsi, [rsi]
	mov	r13d, dword ptr [rax]
	lea	rsi, [rsi]
	jmp	.label_39
.label_47:
	test	eax, eax
	mov	eax, OFFSET FLAT:.str.5_0
	cmove	r14, rax
	mov	edi, dword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x110]
	lea	rsi, [rsi]
	mov	dword ptr [rsp], eax
	nop	
	mov	rsi, r14
	mov	rsp, rsp
	mov	edx, r15d
	mov	ecx, dword ptr [rsp + 0x118]
	mov	r8d, dword ptr [rsp + 0x120]
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	dirchownmod
	lea	rdi, [rdi]
	mov	bpl, 1
	test	eax, eax
	je	.label_41
	test	r13d, r13d
	lea	rdi, [rdi]
	je	.label_44
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xc8], 0
	je	.label_51
	cmp	r13d, 2
	mov	rbp, rbp
	je	.label_51
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x14
	jne	.label_37
.label_51:
	mov	rbx, qword ptr [rsp + 0xb0]
	nop	
	jmp	.label_39
.label_46:
	mov	eax, 0xf000
	mov	rbp, rbp
	and	eax, dword ptr [rsp + 0x28]
	mov	bpl, 1
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	nop	
	je	.label_41
.label_39:
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.4_0
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbx, rax
	call	quote
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r13d
.label_50:
	lea	rsi, [rsi]
	mov	rdx, rbx
.label_43:
	mov	rsp, rsp
	call	error
.label_41:
	mov	al, bpl
	nop	
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_44:
	call	__errno_location
.label_37:
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0xc0], -1
	nop	
	mov	r14d, dword ptr [rax]
	mov	eax, OFFSET FLAT:.str.2_0
	mov	esi, OFFSET FLAT:.str.3_0
	cmove	rsi, rax
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r14d
	nop	
	jmp	.label_50
	nop	
	.section	.text
	.align	32
	#Procedure 0x402700

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbp, rbp
	mov	bl, byte ptr [r14]
	mov	al, bl
	mov	rbp, rbp
	and	al, 0xf8
	movzx	eax, al
	cmp	eax, 0x30
	mov	rsp, rsp
	jne	.label_53
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_68:
	lea	rsi, [rsi]
	movsx	ecx, bl
	nop	
	lea	ebp, [rcx + rbp*8 - 0x30]
	cmp	ebp, 0xfff
	lea	rsi, [rsi]
	ja	.label_71
	lea	rdi, [rdi]
	mov	bl, byte ptr [rdx + 1]
	inc	rdx
	lea	rsi, [rsi]
	mov	cl, bl
	mov	rbp, rbp
	and	cl, 0xf8
	movzx	ecx, cl
	cmp	ecx, 0x30
	lea	rdi, [rdi]
	je	.label_68
	xor	eax, eax
	test	bl, bl
	lea	rsi, [rsi]
	jne	.label_71
	sub	rdx, r14
	mov	eax, ebp
	mov	rsp, rsp
	and	eax, 0xc00
	or	eax, 0x3ff
	cmp	rdx, 5
	mov	rbp, rbp
	mov	ebx, 0xfff
	cmovl	ebx, eax
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	lea	rsi, [rsi]
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ebp
	mov	rsp, rsp
	mov	dword ptr [rax + 0xc], ebx
	mov	rbp, rbp
	mov	byte ptr [rax + 0x11], 0
	jmp	.label_71
.label_53:
	lea	rsi, [rsi]
	lea	rax, [r14 + 1]
	mov	rbp, rbp
	mov	edi, 1
	jmp	.label_82
	nop	dword ptr [rax + rax]
.label_66:
	lea	rsi, [rsi]
	add	rdi, rdx
	lea	rsi, [rsi]
	mov	bl, byte ptr [rax]
	inc	rax
.label_82:
	mov	rbp, rbp
	movsx	ecx, bl
	cmp	ecx, 0x2c
	lea	rdi, [rdi]
	jle	.label_86
	movzx	ecx, bl
	cmp	ecx, 0x2d
	je	.label_62
	cmp	ecx, 0x3d
	lea	rsi, [rsi]
	mov	edx, 1
	je	.label_66
	jmp	.label_69
	nop	word ptr cs:[rax + rax]
.label_86:
	movzx	ecx, bl
	cmp	ecx, 0x2b
	nop	
	mov	edx, 1
	je	.label_66
	test	bl, bl
	je	.label_76
.label_69:
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	jmp	.label_66
	nop	dword ptr [rax]
.label_62:
	mov	edx, 1
	jmp	.label_66
.label_76:
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rsp, rsp
	shr	rax, 0x3b
	lea	rsi, [rsi]
	jne	.label_80
	shl	rdi, 4
	call	xmalloc
	lea	rsi, [rsi]
	xor	r8d, r8d
	jmp	.label_85
.label_72:
	inc	rdi
	mov	rbp, rbp
	mov	r14, rdi
	nop	word ptr [rax + rax]
.label_85:
	xor	r11d, r11d
	nop	
	jmp	.label_64
	nop	word ptr cs:[rax + rax]
.label_77:
	mov	rbp, rbp
	or	r11d, 0xfff
	inc	r14
.label_64:
	mov	bpl, byte ptr [r14]
	movsx	ecx, bpl
	cmp	ecx, 0x66
	lea	rdi, [rdi]
	jg	.label_70
	cmp	ecx, 0x60
	jle	.label_74
	cmp	ecx, 0x61
	je	.label_77
	jmp	.label_55
	nop	dword ptr [rax + rax]
.label_70:
	nop	
	cmp	ecx, 0x67
	mov	rsp, rsp
	je	.label_84
	cmp	ecx, 0x6f
	je	.label_81
	lea	rdi, [rdi]
	cmp	ecx, 0x75
	lea	rdi, [rdi]
	jne	.label_55
	or	r11d, 0x9c0
	inc	r14
	nop	
	jmp	.label_64
.label_84:
	or	r11d, 0x438
	inc	r14
	jmp	.label_64
.label_81:
	mov	rsp, rsp
	or	r11d, 0x207
	inc	r14
	jmp	.label_64
	nop	word ptr cs:[rax + rax]
.label_74:
	cmp	ecx, 0x2b
	je	.label_63
	cmp	ecx, 0x2d
	mov	rbp, rbp
	je	.label_63
	nop	
	cmp	ecx, 0x3d
	jne	.label_55
	nop	word ptr [rax + rax]
.label_63:
	lea	rsi, [rsi]
	lea	rdi, [r14 + 1]
	mov	rsp, rsp
	mov	bl, byte ptr [r14 + 1]
	movsx	edx, bl
	nop	
	mov	r9b, 1
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	edx, 0x66
	jg	.label_54
	nop	
	add	edx, -0x30
	mov	rbp, rbp
	cmp	edx, 8
	jae	.label_65
	nop	word ptr cs:[rax + rax]
.label_67:
	nop	
	movsx	edx, bl
	lea	ecx, [rdx + rcx*8 - 0x30]
	cmp	ecx, 0xfff
	lea	rsi, [rsi]
	ja	.label_55
	nop	
	mov	bl, byte ptr [rdi + 1]
	inc	rdi
	mov	rbp, rbp
	mov	dl, bl
	mov	rbp, rbp
	and	dl, 0xf8
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 0x30
	je	.label_67
	test	r11d, r11d
	jne	.label_55
	lea	rsi, [rsi]
	mov	r9b, 1
	mov	rsp, rsp
	mov	r11d, 0xfff
	lea	rdi, [rdi]
	test	bl, bl
	je	.label_75
	movzx	edx, bl
	cmp	edx, 0x2c
	mov	r10d, 0xfff
	je	.label_61
	lea	rdi, [rdi]
	jmp	.label_55
	nop	word ptr cs:[rax + rax]
.label_54:
	cmp	edx, 0x67
	je	.label_79
	cmp	edx, 0x6f
	je	.label_59
	nop	
	cmp	edx, 0x75
	jne	.label_65
	lea	rsi, [rsi]
	add	r14, 2
	nop	
	mov	r9b, 3
	mov	rbp, rbp
	xor	r10d, r10d
	mov	ecx, 0x1c0
	mov	rbp, rbp
	mov	rdi, r14
	jmp	.label_61
	nop	dword ptr [rax]
.label_73:
	mov	bl, byte ptr [rdi + 1]
	mov	rsp, rsp
	inc	rdi
	lea	rdi, [rdi]
	mov	r9b, dl
.label_65:
	movsx	esi, bl
	mov	rbp, rbp
	xor	r10d, r10d
	lea	edx, [rsi - 0x72]
	cmp	edx, 6
	ja	.label_78
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_83]]
.label_529:
	or	ecx, 0x124
	jmp	.label_60
.label_78:
	mov	dl, 2
	nop	
	cmp	esi, 0x58
	je	.label_73
	jmp	.label_61
.label_530:
	lea	rsi, [rsi]
	or	ecx, 0xc00
	jmp	.label_60
.label_531:
	or	ecx, 0x200
	mov	rsp, rsp
	jmp	.label_60
.label_532:
	lea	rdi, [rdi]
	or	ecx, 0x92
	mov	rsp, rsp
	jmp	.label_60
.label_533:
	mov	rsp, rsp
	or	ecx, 0x49
	nop	dword ptr [rax]
.label_60:
	nop	
	mov	dl, r9b
	mov	rbp, rbp
	jmp	.label_73
.label_75:
	lea	rdi, [rdi]
	mov	r10d, 0xfff
	jmp	.label_61
.label_79:
	add	r14, 2
	mov	r9b, 3
	lea	rsi, [rsi]
	xor	r10d, r10d
	nop	
	mov	ecx, 0x38
	mov	rdi, r14
	jmp	.label_61
.label_59:
	mov	rbp, rbp
	add	r14, 2
	lea	rsi, [rsi]
	mov	r9b, 3
	lea	rdi, [rdi]
	xor	r10d, r10d
	mov	ecx, 7
	mov	rsp, rsp
	mov	rdi, r14
	nop	word ptr [rax + rax]
.label_61:
	mov	rdx, r8
	lea	rsi, [rsi]
	shl	rdx, 4
	mov	byte ptr [rax + rdx], bpl
	mov	byte ptr [rax + rdx + 1], r9b
	lea	rdi, [rdi]
	mov	dword ptr [rax + rdx + 4], r11d
	lea	rsi, [rsi]
	mov	dword ptr [rax + rdx + 8], ecx
	nop	
	test	r10d, r10d
	lea	rsi, [rsi]
	jne	.label_56
	cmp	r11d, 1
	mov	rsp, rsp
	sbb	r10d, r10d
	lea	rsi, [rsi]
	or	r10d, r11d
	lea	rsi, [rsi]
	and	r10d, ecx
.label_56:
	inc	r8
	mov	rbp, rbp
	mov	dword ptr [rax + rdx + 0xc], r10d
	lea	rsi, [rsi]
	movsx	ebp, byte ptr [rdi]
	movzx	ecx, bpl
	cmp	ebp, 0x2c
	lea	rdi, [rdi]
	jle	.label_58
	mov	rsp, rsp
	cmp	ecx, 0x2d
	lea	rsi, [rsi]
	mov	r14, rdi
	je	.label_63
	lea	rsi, [rsi]
	cmp	ecx, 0x3d
	mov	r14, rdi
	lea	rdi, [rdi]
	je	.label_63
	jmp	.label_55
	nop	word ptr cs:[rax + rax]
.label_58:
	nop	
	cmp	ecx, 0x2b
	mov	rsp, rsp
	mov	r14, rdi
	je	.label_63
	test	bpl, bpl
	je	.label_57
	cmp	ecx, 0x2c
	nop	
	je	.label_72
.label_55:
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	xor	eax, eax
.label_71:
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
.label_57:
	shl	r8, 4
	mov	rbp, rbp
	mov	byte ptr [rax + r8 + 1], 0
	nop	
	jmp	.label_71
.label_80:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402be0
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x90
	mov	rsp, rsp
	mov	rax, rdi
	nop	
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, rax
	call	__xstat
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	test	ecx, ecx
	nop	
	jne	.label_87
	mov	ebx, dword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	edi, 0x20
	mov	rsp, rsp
	call	xmalloc
	nop	
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebx
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0xc], 0xfff
	mov	byte ptr [rax + 0x11], 0
.label_87:
	add	rsp, 0x90
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c60

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
	je	.label_88
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
.label_90:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	nop	
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	lea	rsi, [rsi]
	je	.label_92
	mov	rbp, rbp
	cmp	ebp, 3
	jne	.label_91
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
	jmp	.label_91
	nop	word ptr cs:[rax + rax]
.label_92:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_91:
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
	je	.label_95
	cmp	esi, 0x2d
	je	.label_94
	mov	rbp, rbp
	cmp	esi, 0x3d
	lea	rsi, [rsi]
	jne	.label_89
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
	jmp	.label_89
	nop	dword ptr [rax + rax]
.label_94:
	lea	rdi, [rdi]
	or	r13d, ebp
	nop	
	not	ebp
	and	edi, ebp
	jmp	.label_89
	nop	dword ptr [rax]
.label_95:
	or	r13d, ebp
	mov	rbp, rbp
	or	edi, ebp
.label_89:
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	lea	rsi, [rsi]
	test	al, al
	jne	.label_90
.label_88:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp - 8]
	mov	rsp, rsp
	test	rax, rax
	je	.label_93
	mov	dword ptr [rax], r13d
.label_93:
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
	.align	32
	#Procedure 0x402e20

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
	je	.label_96
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
	jl	.label_98
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_98
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
	jne	.label_97
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_97:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_98:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_96:
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
	.align	32
	#Procedure 0x402f10
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
	.align	32
	#Procedure 0x402f60
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
	.align	32
	#Procedure 0x402f80
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
	.align	32
	#Procedure 0x402fa0
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
	.align	32
	#Procedure 0x403010
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
	.align	32
	#Procedure 0x403030
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
	je	.label_99
	test	rdx, rdx
	nop	
	je	.label_99
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_99:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403070
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403120

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
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_143:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_101
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_112]]
.label_523:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_524:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_136
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_136
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_160:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_153
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_153:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_160
.label_136:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_103
.label_516:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_103
.label_519:
	lea	rsi, [rsi]
	mov	al, 1
.label_517:
	mov	rbp, rbp
	mov	r12b, 1
.label_520:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_189
	lea	rsi, [rsi]
	mov	cl, al
.label_189:
	mov	rsp, rsp
	mov	al, cl
.label_518:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_194
	test	r10, r10
	je	.label_201
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_203
.label_194:
	xor	ecx, ecx
	jmp	.label_203
.label_521:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_213
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_218
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_129
.label_522:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_103
.label_201:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_203:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_103
.label_213:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_129
.label_218:
	lea	rdi, [rdi]
	mov	eax, 1
.label_129:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_103:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_133
	nop	word ptr cs:[rax + rax]
.label_106:
	nop	
	inc	rdi
.label_133:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_190
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_199
	jmp	.label_196
	nop	dword ptr [rax + rax]
.label_190:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_200
.label_199:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_209
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_211
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_211
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_211:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_123
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_104
	nop	dword ptr [rax + rax]
.label_209:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_104
	nop	word ptr cs:[rax + rax]
.label_123:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_154
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_104
	jmp	.label_113
.label_154:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_104:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_178
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_180]]
.label_483:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_158
	mov	rbp, rbp
	jmp	.label_187
.label_487:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_188
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_191
	nop	
	cmp	rbp, 1
	je	.label_187
	xor	r13d, r13d
	jmp	.label_110
.label_476:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_204
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_113
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_214
	mov	al, r14b
	and	al, 1
	jne	.label_217
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_202
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_202:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_107
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_107:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_117
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_117:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_116
.label_477:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_126
.label_478:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_131
.label_479:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_126
.label_480:
	mov	bl, 0x66
	jmp	.label_126
.label_481:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_131
.label_484:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_144
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_145
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_151
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_151:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_149
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_149:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_174
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_174:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_144:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_110
.label_485:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_186
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_158
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_158
	mov	rbp, rbp
	jmp	.label_195
.label_486:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_197
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_205
	lea	rdi, [rdi]
	jmp	.label_210
.label_178:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_163
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_105:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_115
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_115
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_110
.label_188:
	test	rdi, rdi
	jne	.label_134
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_134
.label_187:
	mov	dl, 1
.label_482:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_139
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_110
.label_204:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_106
	jmp	.label_158
.label_197:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_131
.label_205:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_141
.label_131:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_156
.label_126:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_110
	lea	rsi, [rsi]
	jmp	.label_130
.label_163:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_168
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_168:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_185:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_198
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_208
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_215
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_222
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_122:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_114
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_147
.label_114:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_122
.label_222:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_132
	xor	r13d, r13d
.label_132:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_185
	mov	rsp, rsp
	jmp	.label_105
.label_134:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_110
.label_186:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_158
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_158
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_158
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_167
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_159
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_171
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_176
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_176:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_182
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_182:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_175
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_175:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_109
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_109:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_110
.label_158:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_110:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_193
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_224
	lea	rsi, [rsi]
	jmp	.label_102
.label_193:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_102
.label_224:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_108
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_118
	nop	word ptr cs:[rax + rax]
.label_102:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_118:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_141
	mov	rsp, rsp
	jmp	.label_130
.label_108:
	mov	bl, r15b
.label_130:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_113
	nop	
	cmp	r9d, 2
	jne	.label_137
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_137
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_219
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_219:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_152
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_152:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_177
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_177:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_137:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_164
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_164:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_207
.label_191:
	xor	r13d, r13d
	nop	
	jmp	.label_110
.label_115:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_170
	nop	dword ptr [rax + rax]
.label_127:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_170:
	test	cl, cl
	je	.label_179
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_120
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_184
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_184:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_120
	nop	dword ptr [rax]
.label_179:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_113
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_206
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_206
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_155
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_155:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_220
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_220:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_128
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_128:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_206:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_119
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_119:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_125
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_125:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_138
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_138:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_120:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_141
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_161
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_161
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_166
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_166:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_169
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_169:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_161:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_127
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_127
	nop	word ptr cs:[rax + rax]
.label_141:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_192
	mov	rsp, rsp
	and	al, 1
	jne	.label_192
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_111
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_111:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_150
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_150:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_192:
	mov	rsp, rsp
	mov	bl, r15b
.label_207:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_216
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_216:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_106
.label_214:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_116
.label_217:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_116:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_121
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_121:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_135
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_165
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_172
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_142
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_142:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_146
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_146:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_110
.label_135:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_110
.label_165:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_110
.label_172:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_110
.label_208:
	xor	r13d, r13d
.label_198:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_105
.label_215:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_173
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_183:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_181
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_183
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_105
.label_173:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_105
.label_181:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_105
.label_167:
	xor	r13d, r13d
	jmp	.label_110
.label_159:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_110
.label_196:
	nop	
	mov	r13, rdi
.label_200:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_212
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_223
.label_212:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_100
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_100
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_124
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_100
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_143
.label_100:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_140
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_140
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_140
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_157:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_148
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_148:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_157
.label_140:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_162
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_162
.label_139:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_113
.label_147:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_113
.label_223:
	nop	
	mov	rbp, r13
	jmp	.label_113
.label_156:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_113:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_221:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_162:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_124:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_221
.label_145:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_113
.label_210:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_113
.label_195:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_113
.label_171:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_113
.label_101:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046a0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047e0
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
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
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
	call	xmalloc
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
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_225
	mov	qword ptr [rax], rbx
.label_225:
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
	.align	32
	#Procedure 0x404930
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_226
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_230:
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
	jl	.label_230
.label_226:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_229
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_227]], OFFSET FLAT:slot0
.label_229:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_228
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_228:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404a00

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
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_235
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_237
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_233
.label_237:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_231
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
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
	jne	.label_234
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_234:
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
.label_233:
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
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
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
	mov	rdx, qword ptr [rsp + 0x20]
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
	je	.label_236
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_236:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_232:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
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
.label_235:
	lea	rdi, [rdi]
	call	abort
.label_231:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x404c70
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c80
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cb0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ce0
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	nop
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_238
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_238:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d70
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_239
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_239:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e10

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_240
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_240:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ea0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
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
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_241:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404f10
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_242]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404fb0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_242]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405050

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_242]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_242]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405130
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_245
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_245:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405210
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_242]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_246
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_246
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_246:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4052a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_242]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_247
	test	rdx, rdx
	je	.label_247
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_247:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_242]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_248
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_248
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_248:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_242]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_243]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_244]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_249
	test	rsi, rsi
	je	.label_249
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_249:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405470
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405480
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4054a0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054c0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054f0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_251
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_253
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_250
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_250
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_250
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_250
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_250
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_250
	nop	
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_251
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_251
.label_253:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_250
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_250
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_250
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_250
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_250
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_250
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_252
.label_250:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_251:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_252:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_251
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_251
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405660
	.globl savewd_init
	.type savewd_init, @function
savewd_init:

	mov	dword ptr [rdi], 0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405670
	.globl savewd_errno
	.type savewd_errno, @function
savewd_errno:

	lea	rsi, [rsi]
	xor	eax, eax
	cmp	dword ptr [rdi], 4
	jne	.label_254
	mov	eax, dword ptr [rdi + 4]
.label_254:
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405680

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
	mov	r12, rcx
	lea	rsi, [rsi]
	mov	ebp, edx
	mov	rbp, rbp
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	test	r12, r12
	sete	al
	test	bpl, 1
	jne	.label_255
	mov	r13d, 0xffffffff
	test	al, al
	jne	.label_262
.label_255:
	lea	rsi, [rsi]
	mov	esi, ebp
	lea	rsi, [rsi]
	and	esi, 1
	shl	esi, 0x11
	or	esi, 0x10900
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	open
	mov	r13d, eax
	test	r12, r12
	mov	rbp, rbp
	je	.label_272
	mov	dword ptr [r12], r13d
	mov	rsp, rsp
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [r12 + 4], eax
.label_272:
	test	r13d, r13d
	js	.label_258
	xor	r15d, r15d
	nop	
	test	bpl, 2
	lea	rsi, [rsi]
	jne	.label_259
	jmp	.label_262
.label_258:
	call	__errno_location
	mov	rbp, rbp
	mov	r15d, 0xffffffff
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0xd
	mov	rsp, rsp
	jne	.label_257
.label_262:
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14]
	cmp	eax, 5
	ja	.label_267
	lea	rdi, [rdi]
	mov	ecx, 0x36
	bt	ecx, eax
	jb	.label_260
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_269
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.5_0
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	call	open_safer
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_274
	mov	dword ptr [r14], 1
	mov	rsp, rsp
	jmp	.label_256
.label_269:
	cmp	dword ptr [r14 + 4], 0
	lea	rsi, [rsi]
	jns	.label_260
	lea	rdi, [rdi]
	jmp	.label_261
.label_274:
	mov	rsp, rsp
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0xd
	je	.label_263
	mov	rsp, rsp
	cmp	eax, 0x74
	lea	rdi, [rdi]
	jne	.label_266
.label_263:
	movabs	rax, 0xffffffff00000003
	mov	qword ptr [r14], rax
.label_261:
	lea	rbp, [r14 + 4]
	call	fork
	mov	dword ptr [rbp], eax
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_260
	mov	r15d, 0xfffffffe
	test	eax, eax
	lea	rdi, [rdi]
	jle	.label_270
	mov	rbp, rbp
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_259
.label_270:
	nop	
	mov	dword ptr [r14], 4
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	jmp	.label_256
.label_266:
	lea	rsi, [rsi]
	mov	dword ptr [r14], 4
.label_256:
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 4], eax
.label_260:
	test	r13d, r13d
	lea	rdi, [rdi]
	js	.label_264
	mov	edi, r13d
	call	fchdir
	jmp	.label_265
.label_264:
	mov	rdi, rbx
	call	chdir
.label_265:
	mov	rsp, rsp
	mov	r15d, eax
	mov	rbp, rbp
	test	r15d, r15d
	lea	rsi, [rsi]
	jne	.label_259
	nop	
	mov	eax, dword ptr [r14]
	mov	rsp, rsp
	dec	eax
	mov	rsp, rsp
	cmp	eax, 4
	mov	rbp, rbp
	ja	.label_268
	nop	
	xor	r15d, r15d
	jmp	qword ptr [word ptr [+ (rax * 8) + label_271]]
.label_473:
	nop	
	mov	dword ptr [r14], 2
	mov	rbp, rbp
	jmp	.label_259
.label_474:
	cmp	dword ptr [r14 + 4], 0
	jne	.label_273
.label_259:
	mov	rbp, rbp
	test	r13d, r13d
	lea	rdi, [rdi]
	js	.label_257
	test	r12, r12
	jne	.label_257
	call	__errno_location
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	mov	edi, r13d
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp], ebx
.label_257:
	mov	eax, r15d
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	nop	
	ret	
.label_267:
	nop	
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	edx, 0x63
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_save
	mov	rbp, rbp
	call	__assert_fail
.label_268:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x9f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_chdir
	lea	rsi, [rsi]
	call	__assert_fail
.label_273:
	mov	edi, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_2
	lea	rdi, [rdi]
	mov	edx, 0x9b
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_chdir
	nop	
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x405930

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
	ja	.label_281
	lea	rsi, [rsi]
	xor	ebp, ebp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_277]]
.label_525:
	mov	edi, dword ptr [r14 + 4]
	call	fchdir
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_282
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	nop	
	mov	edi, dword ptr [r14 + 4]
	lea	rsi, [rsi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [r14], 4
	mov	dword ptr [r14 + 4], ebp
	jmp	.label_276
.label_527:
	mov	ebp, dword ptr [r14 + 4]
	call	__errno_location
	nop	
	mov	rbx, rax
.label_276:
	mov	dword ptr [rbx], ebp
	lea	rdi, [rdi]
	mov	ebp, 0xffffffff
	jmp	.label_275
.label_526:
	mov	ebx, dword ptr [r14 + 4]
	mov	rbp, rbp
	test	ebx, ebx
	mov	rsp, rsp
	je	.label_283
	mov	rsp, rsp
	jle	.label_275
	lea	rbp, [rsp + 0xc]
	nop	dword ptr [rax]
.label_278:
	lea	rsi, [rsi]
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, rbp
	nop	
	call	waitpid
	test	eax, eax
	jns	.label_279
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 4
	lea	rdi, [rdi]
	je	.label_278
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.3_1
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0xd8
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_restore
	mov	rbp, rbp
	call	__assert_fail
.label_279:
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 4], 0xffffffff
	mov	eax, dword ptr [rsp + 0xc]
	mov	edi, eax
	mov	rsp, rsp
	and	edi, 0x7f
	je	.label_280
	call	raise
	mov	eax, dword ptr [rsp + 0xc]
.label_280:
	movzx	ebp, ah
	nop	
	jmp	.label_275
.label_282:
	mov	dword ptr [r14], 1
.label_275:
	mov	rbp, rbp
	mov	eax, ebp
	lea	rdi, [rdi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	nop	
	pop	rbp
	nop	
	ret	
.label_281:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	nop	
	mov	edx, 0xe2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_restore
	call	__assert_fail
.label_283:
	lea	rsi, [rsi]
	mov	edi, esi
	call	_exit
	nop	
	.section	.text
	.align	32
	#Procedure 0x405a90
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
	ja	.label_284
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_285]]
.label_445:
	mov	edi, dword ptr [rbx + 4]
	mov	rsp, rsp
	call	close
	jmp	.label_286
.label_446:
	mov	rbp, rbp
	cmp	dword ptr [rbx + 4], 0
	jns	.label_287
.label_286:
	mov	dword ptr [rbx], 5
	pop	rbx
	mov	rbp, rbp
	ret	
.label_284:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rbp, rbp
	mov	edx, 0xfb
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_finish
	lea	rsi, [rsi]
	call	__assert_fail
.label_287:
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
	.align	32
	#Procedure 0x405b20

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
	mov	r14, rcx
	mov	rsp, rsp
	mov	r12, rsi
	mov	r15d, edi
	mov	dword ptr [rsp + 8], 0
	mov	rsp, rsp
	movsxd	rdi, r15d
	lea	rsi, [rsi]
	lea	eax, [rdi - 1]
	cdqe	
	lea	rcx, [r12 + rax*8]
.label_297:
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rsp, rsp
	test	rax, rax
	nop	
	jle	.label_288
	mov	rsi, qword ptr [rcx]
	nop	
	movzx	esi, byte ptr [rsi]
	lea	rsi, [rsi]
	lea	rdi, [rax - 1]
	add	rcx, -8
	nop	
	cmp	esi, 0x2f
	je	.label_297
.label_288:
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	lea	ecx, [rax - 1]
	xor	ebx, ebx
	cmp	eax, 2
	mov	r13d, 0
	jl	.label_290
	mov	rbp, r14
	movsxd	r14, ecx
	xor	eax, eax
	mov	r13d, 1
	mov	rsp, rsp
	xor	ebx, ebx
	jmp	.label_295
	nop	dword ptr [rax + rax]
.label_292:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0xc]
	inc	r13
.label_295:
	mov	rbp, rbp
	cmp	eax, 3
	nop	
	jne	.label_291
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rsp, rsp
	jg	.label_298
.label_291:
	mov	rdi, qword ptr [r12 + r13*8 - 8]
	lea	rsi, [rsp + 8]
	mov	rdx, rbp
	call	qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	cmp	ebx, eax
	mov	rbp, rbp
	cmovl	ebx, eax
.label_298:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + r13*8]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_300
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	esi, ebx
	lea	rsi, [rsi]
	call	savewd_restore
	nop	
	cmp	ebx, eax
	cmovl	ebx, eax
.label_300:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 8]
	lea	rdi, [rdi]
	cmp	r13, r14
	mov	rbp, rbp
	jl	.label_292
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	eax, 4
	ja	.label_299
	lea	rdi, [rdi]
	mov	r14, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_289]]
.label_448:
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	jmp	.label_290
.label_449:
	cmp	dword ptr [rsp + 0xc], 0
	jns	.label_294
.label_290:
	mov	dword ptr [rsp + 8], 5
	cmp	r13d, r15d
	jge	.label_296
	movsxd	rax, r13d
	lea	rbp, [r12 + rax*8]
	sub	r15d, r13d
	lea	rsi, [rsi]
	lea	r12, [rsp + 8]
	mov	r13, qword ptr [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_293:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, r14
	call	r13
	mov	rsp, rsp
	cmp	ebx, eax
	cmovl	ebx, eax
	lea	rdi, [rdi]
	add	rbp, 8
	nop	
	dec	r15d
	lea	rsi, [rsi]
	jne	.label_293
.label_296:
	nop	
	mov	eax, ebx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_299:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	edx, 0xfb
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_finish
	mov	rbp, rbp
	call	__assert_fail
.label_294:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.4_1
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_2
	lea	rdi, [rdi]
	mov	edx, 0xf7
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_finish
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x405d20

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
	je	.label_306
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
	jmp	.label_308
.label_306:
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
.label_308:
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
	ja	.label_310
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_301]]
.label_460:
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
.label_310:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_304
.label_461:
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
.label_462:
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
.label_463:
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
	jmp	.label_305
.label_464:
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
	jmp	.label_303
.label_465:
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
	jmp	.label_302
.label_466:
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
.label_302:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_303:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_305:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_309
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_304:
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
	jmp	.label_307
.label_467:
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
.label_307:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_309:
	mov	rbp, rbp
	call	__fprintf_chk
.label_459:
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
	.align	32
	#Procedure 0x406110
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_311:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_311
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406140
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_315:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_312
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_314
	nop	word ptr cs:[rax + rax]
.label_312:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_314:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_313
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_315
.label_313:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061d0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_316
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_316:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_318:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_317
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_319
	nop	dword ptr [rax + rax]
.label_317:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_319:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_320
	inc	r9
	cmp	r9, 0xa
	jb	.label_318
.label_320:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406310
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
	.align	32
	#Procedure 0x4063a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_321
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_322
	test	rax, rax
	je	.label_321
.label_322:
	nop	
	pop	rbx
	ret	
.label_321:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4063f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_323
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_324
.label_323:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_324:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406420
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_325
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_326
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_326
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_326:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_327
	test	rax, rax
	je	.label_325
.label_327:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_325:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_328
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_328
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_328:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_329
	test	rax, rax
	nop	
	je	.label_330
.label_329:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_330:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064f0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_335
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_331
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_337
.label_335:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_334
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_334:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_336
.label_337:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_333
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_333
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_333:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_332
	test	rax, rax
	mov	rbp, rbp
	je	.label_331
.label_332:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_331:
	call	xalloc_die
.label_336:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065d0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_338
	test	rax, rax
	mov	rbp, rbp
	je	.label_339
.label_338:
	pop	rbx
	ret	
.label_339:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4065f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_343
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_344
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_342
	call	free
	xor	eax, eax
	jmp	.label_340
.label_343:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_341
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_342:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_340
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_341
.label_340:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_341:
	mov	rbp, rbp
	call	xalloc_die
.label_344:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406680
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_345
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_346
.label_345:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_346:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066e0
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
	jb	.label_347
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_347
	pop	rcx
	ret	
.label_347:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406710

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_349
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_348
.label_349:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_348:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406770
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_350
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_351
.label_350:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_351:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4067d0

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
	.align	32
	#Procedure 0x406820

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_352
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_353
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
	je	.label_353
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
.label_352:
	mov	ecx, 1
.label_353:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406890

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
	je	.label_354
	nop	
	cmp	r15, -2
	jb	.label_354
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_354
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_354:
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
	.align	32
	#Procedure 0x406920

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
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_355
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_356
	test	cl, cl
	mov	rsp, rsp
	jne	.label_356
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_356
.label_355:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_356
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_356:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4069b0

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_357
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
.label_357:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_358
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
	ja	.label_359
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_360
.label_359:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_360:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_358:
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
	.align	32
	#Procedure 0x406ad0

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
	je	.label_362
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_361
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_363
.label_361:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_362
.label_363:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_362:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406b20

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
	je	.label_364
	nop	
	mov	rax, rcx
.label_364:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b60

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
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdi]
	mov	r12, rsi
	lea	rsi, [rsi]
	mov	r13, rdi
	nop	
	xor	ebp, ebp
	mov	rbp, rbp
	mov	rbx, r13
	xor	r15d, r15d
.label_378:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx]
.label_377:
	mov	rbp, rbp
	mov	r14, rbx
	nop	
	test	al, al
	lea	rsi, [rsi]
	jne	.label_373
	lea	rdi, [rdi]
	jmp	.label_369
	nop	word ptr cs:[rax + rax]
.label_365:
	movzx	eax, cl
	cmp	eax, 0x2f
	cmovne	rbp, rbx
	mov	rbp, rbp
	mov	al, 0x2f
.label_373:
	lea	rsi, [rsi]
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_366:
	mov	cl, al
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	je	.label_365
	movzx	ecx, cl
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	jne	.label_376
	test	rbp, rbp
	je	.label_376
	mov	rbp, rbp
	test	al, al
	nop	
	jne	.label_379
.label_376:
	nop	
	inc	rbx
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	jne	.label_366
	jmp	.label_369
	nop	dword ptr [rax + rax]
.label_379:
	mov	rcx, rbp
	sub	rcx, r14
	mov	rbp, rbp
	cmp	rcx, 1
	nop	
	jne	.label_375
	nop	
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2e
	je	.label_377
	lea	rdi, [rdi]
	mov	byte ptr [rbp], 0
	mov	rsp, rsp
	jmp	.label_367
.label_375:
	mov	byte ptr [rbp], 0
	nop	
	cmp	rcx, 2
	mov	rbp, rbp
	jne	.label_367
	movzx	eax, byte ptr [r14]
	lea	rsi, [rsi]
	cmp	eax, 0x2e
	jne	.label_367
	nop	
	movzx	eax, byte ptr [r14 + 1]
	xor	ecx, ecx
	cmp	eax, 0x2e
	mov	dword ptr [rsp + 4], 0
	je	.label_371
.label_367:
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 8]
	call	qword ptr [rsp + 0x10]
	nop	
	test	eax, eax
	mov	rsp, rsp
	js	.label_368
	nop	
	mov	dword ptr [rsp + 4], 0
	mov	rbp, rbp
	mov	cl, 1
	mov	rbp, rbp
	jmp	.label_371
.label_368:
	mov	rbp, rbp
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 4], eax
	mov	cl, r15b
.label_371:
	mov	al, cl
	mov	r15d, ecx
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	mov	rsi, r14
	call	savewd_chdir
	mov	r14d, 0xffffffff
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_374
	mov	rbp, rbp
	mov	byte ptr [rbp], 0x2f
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	mov	r14d, eax
	je	.label_378
.label_374:
	mov	ebx, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	test	ebx, ebx
	nop	
	je	.label_370
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_370
	mov	dword ptr [rax], ebx
.label_370:
	mov	rsp, rsp
	movsxd	r14, r14d
	lea	rsi, [rsi]
	jmp	.label_372
.label_369:
	nop	
	sub	r14, r13
.label_372:
	mov	rax, r14
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d50

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
	mov	dword ptr [rsp + 0xc], r9d
	lea	rsi, [rsi]
	mov	r12d, r8d
	lea	rdi, [rdi]
	mov	r13d, ecx
	mov	r15d, edx
	nop	
	mov	r14d, edi
	nop	
	test	r14d, r14d
	nop	
	js	.label_384
	nop	
	mov	qword ptr [rsp + 0x10], rsi
	lea	rdx, [rsp + 0x18]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, r14d
	call	__fxstat
	jmp	.label_390
.label_384:
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x18]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rsi
	lea	rdi, [rdi]
	call	__xstat
.label_390:
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_380
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	nop	
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_383
	cmp	r13d, -1
	mov	rbp, rbp
	je	.label_391
	mov	rax, rbx
	shr	rax, 0x20
	mov	rsp, rsp
	cmp	eax, r13d
	jne	.label_393
.label_391:
	xor	eax, eax
	mov	rsp, rsp
	cmp	r12d, -1
	je	.label_381
	cmp	dword ptr [rsp + 0x38], r12d
	je	.label_381
.label_393:
	test	r14d, r14d
	js	.label_385
	lea	rsi, [rsi]
	mov	edi, r14d
	lea	rdi, [rdi]
	mov	esi, r13d
	lea	rdi, [rdi]
	mov	edx, r12d
	call	fchown
	lea	rdi, [rdi]
	jmp	.label_387
.label_383:
	call	__errno_location
	mov	dword ptr [rax], 0x14
	mov	ebp, 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_380
.label_385:
	cmp	r15d, -1
	lea	rsi, [rsi]
	je	.label_389
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, r13d
	lea	rdi, [rdi]
	mov	edx, r12d
	lea	rdi, [rdi]
	call	lchown
	nop	
	jmp	.label_387
.label_389:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, r13d
	nop	
	mov	edx, r12d
	nop	
	call	chown
.label_387:
	mov	ebp, eax
	mov	ecx, ebx
	and	ecx, 0x49
	mov	rsp, rsp
	mov	edx, ebx
	mov	rsp, rsp
	and	edx, 0xc00
	xor	eax, eax
	mov	rbp, rbp
	test	ebp, ebp
	cmove	eax, edx
	test	ecx, ecx
	lea	rdi, [rdi]
	cmove	eax, ecx
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_380
.label_381:
	mov	esi, dword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	ecx, ebx
	lea	rsi, [rsi]
	xor	ecx, dword ptr [rsp + 0xc]
	lea	rsi, [rsi]
	or	ecx, eax
	xor	ebp, ebp
	test	ecx, esi
	je	.label_380
	not	esi
	mov	rsp, rsp
	and	esi, ebx
	and	esi, 0xfff
	mov	rbp, rbp
	or	esi, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	test	r14d, r14d
	nop	
	js	.label_392
	mov	rbp, rbp
	mov	edi, r14d
	call	fchmod
	mov	ebp, eax
	mov	rsp, rsp
	jmp	.label_382
.label_380:
	test	r14d, r14d
	js	.label_388
.label_382:
	mov	rsp, rsp
	test	ebp, ebp
	je	.label_386
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	mov	r15d, dword ptr [rbx]
	mov	edi, r14d
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r15d
	jmp	.label_388
.label_386:
	mov	rsp, rsp
	mov	edi, r14d
	call	close
	mov	ebp, eax
.label_388:
	mov	rsp, rsp
	mov	eax, ebp
	lea	rdi, [rdi]
	add	rsp, 0xa8
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_392:
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	chmod
	mov	rbp, rbp
	mov	ebp, eax
	mov	rsp, rsp
	jmp	.label_388
	nop	
	.section	.text
	.align	32
	#Procedure 0x406f70

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
	ja	.label_394
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
	jmp	.label_395
.label_394:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_395:
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
	.align	32
	#Procedure 0x406fe0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_396
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_398
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
	je	.label_396
.label_398:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_396
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_397
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_397:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_396:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x407090

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_399
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_399
	test	byte ptr [rbx + 1], 1
	je	.label_399
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_399:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4070d0

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
	jne	.label_400
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_400
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_401
.label_400:
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
.label_401:
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
	je	.label_402
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_402:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407180

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
	.align	32
	#Procedure 0x4071a0

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
	.section .text
	.align	32
	#Procedure 0x4071c0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	ebx, edi
	test	al, al
	je	.label_417
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_417:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_410
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_422
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_407
	mov	rsp, rsp
	test	esi, esi
	jne	.label_410
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_420
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_416
.label_410:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_421
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_407
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_403
.label_422:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_408
.label_407:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_409
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_404
.label_409:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_404:
	mov	edx, dword ptr [rax]
.label_406:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_408:
	mov	ebp, eax
.label_405:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_403:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_421
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_413
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_411
.label_421:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_415
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_418
.label_420:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_416:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_406
.label_413:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_411:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_412
	mov	esi, 0x406
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rsi, [rsi]
	test	ebp, ebp
	jns	.label_419
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_419
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rdi, [rdi]
	call	fcntl
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_405
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_423
.label_419:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_405
.label_415:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_418:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_408
.label_412:
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	mov	ebp, eax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_423:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_405
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_405
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_414
	or	ecx, 1
	mov	esi, 2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_405
.label_414:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	jmp	.label_405
	nop	word ptr cs:[rax + rax]
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]