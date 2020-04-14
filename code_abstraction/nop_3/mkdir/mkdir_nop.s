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
	je	.label_51
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
.label_51:
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
	je	.label_52
	cmp	r13d, 2
	mov	rbp, rbp
	je	.label_52
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x14
	jne	.label_37
.label_52:
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
	ja	.label_72
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
	jne	.label_72
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
	jmp	.label_72
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
.label_70:
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
	jg	.label_71
	cmp	ecx, 0x60
	jle	.label_74
	cmp	ecx, 0x61
	je	.label_77
	jmp	.label_55
	nop	dword ptr [rax + rax]
.label_71:
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
.label_476:
	or	ecx, 0x124
	jmp	.label_60
.label_78:
	mov	dl, 2
	nop	
	cmp	esi, 0x58
	je	.label_73
	jmp	.label_61
.label_477:
	lea	rsi, [rsi]
	or	ecx, 0xc00
	jmp	.label_60
.label_478:
	or	ecx, 0x200
	mov	rsp, rsp
	jmp	.label_60
.label_479:
	lea	rdi, [rdi]
	or	ecx, 0x92
	mov	rsp, rsp
	jmp	.label_60
.label_480:
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
	je	.label_70
.label_55:
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	xor	eax, eax
.label_72:
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
	jmp	.label_72
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
	sub	rsp, 0xf8
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x24], ebx
	mov	r12d, r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0xb8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x18], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	mov	dl, bl
	mov	rbp, rbp
	shr	dl, 1
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x5c], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
.label_209:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_100
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_109]]
.label_489:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r12d
	mov	r14, r10
	nop	
	mov	r13b, r8b
	mov	bl, dl
	mov	rbp, rbp
	call	gettext_quote
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	rsp, rsp
	mov	esi, r12d
	call	gettext_quote
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	edi, r15d
	mov	r8b, r13b
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x98], rax
.label_490:
	nop	
	mov	qword ptr [rsp + 0xd8], r10
	mov	byte ptr [rsp + 0xf7], r8b
	mov	dword ptr [rsp + 0x38], edi
	test	dl, 1
	mov	rbp, rbp
	mov	r15b, dl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jne	.label_140
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_140
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_166:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_159
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_159:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_166
.label_140:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x98]
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x68], rbx
	mov	r13b, 1
	mov	rbp, rbp
	mov	sil, r15b
	mov	r10, qword ptr [rsp + 0xd8]
	nop	
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	edi, dword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_115
.label_482:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_115
.label_485:
	lea	rsi, [rsi]
	mov	al, 1
.label_483:
	lea	rsi, [rsi]
	mov	dl, 1
.label_486:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_195
	mov	rbp, rbp
	mov	cl, al
.label_195:
	mov	al, cl
.label_484:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_198
	test	rbp, rbp
	je	.label_203
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_204
.label_198:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_204
.label_487:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_211
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_216
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_124
.label_488:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_115
.label_203:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_204:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_115
.label_211:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_124
.label_216:
	nop	
	mov	r14d, 1
.label_124:
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x46], r13b
	cmp	qword ptr [rsp + 0x130], 0
	mov	rbp, rbp
	setne	r12b
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	r15b
	sete	al
	mov	cl, r13b
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	lea	rsi, [rsi]
	sete	byte ptr [rsp + 0xf6]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0x83], bl
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xa0], 0
	lea	rsi, [rsi]
	setne	cl
	mov	dl, cl
	lea	rsi, [rsi]
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x56], dl
	mov	rbp, rbp
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc6], bl
	sete	dl
	lea	rdi, [rdi]
	and	al, bl
	mov	byte ptr [rsp + 0x47], al
	and	r12b, bl
	mov	byte ptr [rsp + 0x57], r12b
	mov	rsp, rsp
	or	dl, r15b
	mov	byte ptr [rsp + 0xc7], dl
	and	r13b, sil
	mov	rbp, rbp
	and	r13b, cl
	mov	byte ptr [rsp + 0xb7], r13b
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_143
	nop	dword ptr [rax]
.label_136:
	mov	rsp, rsp
	inc	r15
.label_143:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_102
	cmp	r15, r10
	jne	.label_190
	jmp	.label_133
	nop	dword ptr [rax]
.label_102:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_193
.label_190:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_178
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_158
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_158
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	rdi, r11
	mov	r12b, r8b
	mov	r13, r9
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r11
	nop	
	call	strlen
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, r15
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x38]
	mov	r9, r13
	mov	r8b, r12b
	mov	r10, rax
.label_158:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_228
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_110
	nop	dword ptr [rax]
.label_178:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_110
	nop	word ptr cs:[rax + rax]
.label_228:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rsp, rsp
	mov	r12b, r8b
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [r11 + rax]
	nop	
	mov	r14, r11
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	mov	rsp, rsp
	jne	.label_139
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r8b, r12b
	lea	rsi, [rsi]
	mov	r9, r13
	nop	
	mov	edi, r15d
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r15, qword ptr [rsp + 0x88]
	je	.label_110
	jmp	.label_126
.label_139:
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	r11, r14
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x88]
	nop	dword ptr [rax + rax]
.label_110:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_171
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_172]]
.label_501:
	test	r15, r15
	jne	.label_142
	jmp	.label_181
.label_505:
	xor	eax, eax
	cmp	r10, -1
	je	.label_184
	test	r15, r15
	jne	.label_170
	nop	
	cmp	r10, 1
	je	.label_181
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_131
.label_494:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_191
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_126
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_185
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_185
	cmp	r14, rbp
	jae	.label_202
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_202:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_114
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_114:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_214
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_214:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_185:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_227
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_227:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_105
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_112
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_116
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_122
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_122:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_135
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_135:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_131
.label_495:
	mov	bl, 0x62
	nop	
	jmp	.label_152
.label_496:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_144
.label_497:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_152
.label_498:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_152
.label_499:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_144
.label_502:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_153
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_163
	nop	
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, rcx
	mov	rsp, rsp
	test	rdx, rdx
	setne	cl
	lea	rsi, [rsi]
	or	cl, al
	mov	rbp, rbp
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	rsp, rsp
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_167
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_167:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_183
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_183:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_188
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_188:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_153:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_131
.label_503:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_197
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_142
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_142
	nop	
	jmp	.label_208
.label_504:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_210
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_213
	jmp	.label_218
.label_171:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_176
	mov	rbp, rbp
	mov	rbx, r10
	mov	rbp, r11
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	r11, rbp
	nop	
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r12*2]
	shr	r13d, 0xe
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_146
.label_184:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_120
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_120
.label_181:
	mov	dl, 1
.label_500:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_128
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_131
.label_191:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_136
	jmp	.label_142
.label_210:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_144
.label_213:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_148
.label_144:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_151
.label_152:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_131
	jmp	.label_157
.label_176:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_161
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_161:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_123
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_119:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rsp, rsp
	mov	rdx, r10
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rdi, [rsp + 0x58]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -2
	lea	rdi, [rdi]
	je	.label_141
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_155
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_200
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_206
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_101:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_222
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_130
.label_222:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_101
.label_206:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_108
	mov	rbp, rbp
	xor	r13d, r13d
.label_108:
	lea	rbp, [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rdi, rbp
	nop	
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	je	.label_119
	jmp	.label_118
	nop	
.label_123:
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	lea	rdi, [rdi]
	sub	rdx, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_150
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_155
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_141
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_164
	xor	r13d, r13d
.label_164:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	add	rax, rbp
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_123
	lea	rsi, [rsi]
	jmp	.label_118
.label_120:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_131
.label_197:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_142
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_142
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_142
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_194
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_196
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_217
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_113
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_113:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_212
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_212:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_173
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_173:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_219
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_219:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_131
.label_142:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_131:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_192
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_121
	nop	
	jmp	.label_127
	nop	dword ptr [rax + rax]
.label_192:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_127
.label_121:
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	lea	rsi, [rsi]
	mov	cl, r12b
	shl	esi, cl
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
	jne	.label_132
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_127:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_145:
	mov	bl, r12b
	je	.label_148
	jmp	.label_157
.label_132:
	mov	bl, r12b
.label_157:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_126
	cmp	r9d, 2
	jne	.label_160
	mov	al, dil
	and	al, 1
	jne	.label_160
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_165
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_165:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_169
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_169:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_174
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_174:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_160:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_180
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_180:
	mov	rbp, rbp
	inc	r14
	jmp	.label_215
.label_170:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_131
.label_105:
	xor	r13d, r13d
	jmp	.label_131
.label_112:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_131
.label_116:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_131
.label_155:
	xor	r13d, r13d
.label_150:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_118
.label_141:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_205
	lea	rax, [r11 + r15]
.label_221:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_179
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_221
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_118
.label_205:
	xor	r13d, r13d
	jmp	.label_118
.label_179:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_118
.label_200:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_118:
	mov	rbp, rbp
	mov	rbx, r10
.label_146:
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	cl, r13b
	lea	rdi, [rdi]
	or	cl, byte ptr [rsp + 0xf6]
	cmp	rdx, 1
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0xd0]
	mov	edi, dword ptr [rsp + 0x38]
	ja	.label_129
	test	cl, cl
	je	.label_129
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_131
.label_129:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_134
	nop	dword ptr [rax]
.label_125:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_134:
	mov	rsp, rsp
	test	cl, cl
	je	.label_149
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_225
	cmp	r14, rbp
	jae	.label_156
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_156:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_225:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_162
	nop	dword ptr [rax + rax]
.label_149:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_168
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_103
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_103
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_175
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_175:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_186
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_186:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_187
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_187:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_103:
	cmp	r14, rbp
	jae	.label_154
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_154:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_223
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_223:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_106
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_106:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_162:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_148
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_104
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_104
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_137
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_137:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_182
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_182:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_104:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_125
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_125
	nop	word ptr cs:[rax + rax]
.label_148:
	test	dil, 1
	je	.label_138
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_138
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_189
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_189:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_224
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_224:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_138:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_215:
	cmp	r14, rbp
	jae	.label_147
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_147:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_136
.label_194:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_131
.label_196:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_131
	nop	word ptr [rax + rax]
.label_133:
	nop	
	mov	rcx, r15
.label_193:
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	al
	mov	rbp, rbp
	test	r14, r14
	mov	rsp, rsp
	setne	dl
	cmp	byte ptr [rsp + 0xc6], 0
	lea	rsi, [rsi]
	je	.label_177
	mov	rsp, rsp
	or	al, dl
	je	.label_207
.label_177:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], r11
	cmp	r9d, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x46]
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_199
	mov	rsp, rsp
	or	al, dl
	jne	.label_199
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_201
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_199
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	r12d, r9d
	mov	al, bl
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	dl, sil
	mov	r13, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	je	.label_209
.label_199:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_220
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_220
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_220
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_111:
	cmp	r14, rbp
	jae	.label_107
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_107:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_111
.label_220:
	cmp	r14, rbp
	jae	.label_117
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_117
.label_128:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_126
.label_130:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_126
.label_168:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_126
.label_207:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_126
.label_151:
	nop	
	mov	r9d, 2
.label_126:
	cmp	byte ptr [rsp + 0x37], 0
	mov	r8d, 4
	mov	rbp, rbp
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	nop	
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r11
	nop	
	mov	rcx, r10
.label_226:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_117:
	lea	rdi, [rdi]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_201:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x130]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x24]
	jmp	.label_226
.label_163:
	mov	r9d, 2
	jmp	.label_126
.label_218:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_126
.label_208:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_126
.label_217:
	mov	r9d, 5
	nop	
	jmp	.label_126
.label_100:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045c0
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
	#Procedure 0x404700
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
	je	.label_229
	mov	qword ptr [rax], rbx
.label_229:
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
	#Procedure 0x404850
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_230
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_234:
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
	jl	.label_234
.label_230:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_233
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_231]], OFFSET FLAT:slot0
.label_233:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_232
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_232:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404910
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404920

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
	js	.label_240
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_239
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_237
.label_239:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_241
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
	jne	.label_236
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_236:
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
.label_237:
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
	ja	.label_235
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
	je	.label_238
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_238:
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
.label_235:
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
.label_240:
	lea	rdi, [rdi]
	call	abort
.label_241:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x404b90
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ba0
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
	#Procedure 0x404bd0
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
	#Procedure 0x404c00
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
	je	.label_242
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
.label_242:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c90
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
	je	.label_243
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
.label_243:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d30

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
	je	.label_244
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
.label_244:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dc0
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
	je	.label_245
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
.label_245:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404e30
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_246]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_247]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_248]]
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
	#Procedure 0x404ed0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_246]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_247]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_248]]
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
	#Procedure 0x404f70

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_246]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_247]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_248]]
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
	#Procedure 0x404fe0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_246]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_247]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_248]]
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
	#Procedure 0x405050
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
	je	.label_249
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
.label_249:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405130
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_246]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_247]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_248]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_250
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_250
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
.label_250:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4051c0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_246]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_247]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_248]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_251
	test	rdx, rdx
	je	.label_251
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
.label_251:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_246]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_247]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_248]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_252
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_252
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
.label_252:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_246]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_247]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_248]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_253
	test	rsi, rsi
	je	.label_253
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
.label_253:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405390
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053a0
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
	#Procedure 0x4053c0
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
	#Procedure 0x4053e0

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
	#Procedure 0x405410

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
	jne	.label_256
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_254
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_255
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_255
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_255
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_255
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_255
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_255
	nop	
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_256
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_256
.label_254:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_255
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_255
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_255
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_255
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_255
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_255
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_257
.label_255:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_256:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_257:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_256
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_256
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405580
	.globl savewd_init
	.type savewd_init, @function
savewd_init:

	mov	dword ptr [rdi], 0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405590
	.globl savewd_errno
	.type savewd_errno, @function
savewd_errno:

	lea	rsi, [rsi]
	xor	eax, eax
	cmp	dword ptr [rdi], 4
	jne	.label_258
	mov	eax, dword ptr [rdi + 4]
.label_258:
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4055a0

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
	jne	.label_264
	mov	r13d, 0xffffffff
	test	al, al
	jne	.label_270
.label_264:
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
	je	.label_260
	mov	dword ptr [r12], r13d
	mov	rsp, rsp
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [r12 + 4], eax
.label_260:
	test	r13d, r13d
	js	.label_267
	xor	r15d, r15d
	nop	
	test	bpl, 2
	lea	rsi, [rsi]
	jne	.label_261
	jmp	.label_270
.label_267:
	call	__errno_location
	mov	rbp, rbp
	mov	r15d, 0xffffffff
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0xd
	mov	rsp, rsp
	jne	.label_265
.label_270:
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14]
	cmp	eax, 5
	ja	.label_274
	lea	rdi, [rdi]
	mov	ecx, 0x36
	bt	ecx, eax
	jb	.label_268
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_277
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.5_0
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	call	open_safer
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_263
	mov	dword ptr [r14], 1
	mov	rsp, rsp
	jmp	.label_266
.label_277:
	cmp	dword ptr [r14 + 4], 0
	lea	rsi, [rsi]
	jns	.label_268
	lea	rdi, [rdi]
	jmp	.label_269
.label_263:
	mov	rsp, rsp
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0xd
	je	.label_271
	mov	rsp, rsp
	cmp	eax, 0x74
	lea	rdi, [rdi]
	jne	.label_273
.label_271:
	movabs	rax, 0xffffffff00000003
	mov	qword ptr [r14], rax
.label_269:
	lea	rbp, [r14 + 4]
	call	fork
	mov	dword ptr [rbp], eax
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_268
	mov	r15d, 0xfffffffe
	test	eax, eax
	lea	rdi, [rdi]
	jle	.label_278
	mov	rbp, rbp
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_261
.label_278:
	nop	
	mov	dword ptr [r14], 4
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	jmp	.label_266
.label_273:
	lea	rsi, [rsi]
	mov	dword ptr [r14], 4
.label_266:
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 4], eax
.label_268:
	test	r13d, r13d
	lea	rdi, [rdi]
	js	.label_275
	mov	edi, r13d
	call	fchdir
	jmp	.label_272
.label_275:
	mov	rdi, rbx
	call	chdir
.label_272:
	mov	rsp, rsp
	mov	r15d, eax
	mov	rbp, rbp
	test	r15d, r15d
	lea	rsi, [rsi]
	jne	.label_261
	nop	
	mov	eax, dword ptr [r14]
	mov	rsp, rsp
	dec	eax
	mov	rsp, rsp
	cmp	eax, 4
	mov	rbp, rbp
	ja	.label_276
	nop	
	xor	r15d, r15d
	jmp	qword ptr [word ptr [+ (rax * 8) + label_259]]
.label_464:
	nop	
	mov	dword ptr [r14], 2
	mov	rbp, rbp
	jmp	.label_261
.label_465:
	cmp	dword ptr [r14 + 4], 0
	jne	.label_262
.label_261:
	mov	rbp, rbp
	test	r13d, r13d
	lea	rdi, [rdi]
	js	.label_265
	test	r12, r12
	jne	.label_265
	call	__errno_location
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	mov	edi, r13d
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp], ebx
.label_265:
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
.label_274:
	nop	
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	edx, 0x63
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_save
	mov	rbp, rbp
	call	__assert_fail
.label_276:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x9f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_chdir
	lea	rsi, [rsi]
	call	__assert_fail
.label_262:
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
	#Procedure 0x405850

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
	ja	.label_282
	lea	rsi, [rsi]
	xor	ebp, ebp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_287]]
.label_532:
	mov	edi, dword ptr [r14 + 4]
	call	fchdir
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_280
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
	jmp	.label_286
.label_534:
	mov	ebp, dword ptr [r14 + 4]
	call	__errno_location
	nop	
	mov	rbx, rax
.label_286:
	mov	dword ptr [rbx], ebp
	lea	rdi, [rdi]
	mov	ebp, 0xffffffff
	jmp	.label_281
.label_533:
	mov	ebx, dword ptr [r14 + 4]
	mov	rbp, rbp
	test	ebx, ebx
	mov	rsp, rsp
	je	.label_283
	mov	rsp, rsp
	jle	.label_281
	lea	rbp, [rsp + 0xc]
	nop	dword ptr [rax]
.label_285:
	lea	rsi, [rsi]
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, rbp
	nop	
	call	waitpid
	test	eax, eax
	jns	.label_284
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 4
	lea	rdi, [rdi]
	je	.label_285
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.3_1
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0xd8
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_restore
	mov	rbp, rbp
	call	__assert_fail
.label_284:
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 4], 0xffffffff
	mov	eax, dword ptr [rsp + 0xc]
	mov	edi, eax
	mov	rsp, rsp
	and	edi, 0x7f
	je	.label_279
	call	raise
	mov	eax, dword ptr [rsp + 0xc]
.label_279:
	movzx	ebp, ah
	nop	
	jmp	.label_281
.label_280:
	mov	dword ptr [r14], 1
.label_281:
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
.label_282:
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
	#Procedure 0x4059b0
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
	ja	.label_290
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_291]]
.label_470:
	mov	edi, dword ptr [rbx + 4]
	mov	rsp, rsp
	call	close
	jmp	.label_288
.label_471:
	mov	rbp, rbp
	cmp	dword ptr [rbx + 4], 0
	jns	.label_289
.label_288:
	mov	dword ptr [rbx], 5
	pop	rbx
	mov	rbp, rbp
	ret	
.label_290:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rbp, rbp
	mov	edx, 0xfb
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_finish
	lea	rsi, [rsi]
	call	__assert_fail
.label_289:
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
	#Procedure 0x405a40

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
.label_295:
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rsp, rsp
	test	rax, rax
	nop	
	jle	.label_292
	mov	rsi, qword ptr [rcx]
	nop	
	movzx	esi, byte ptr [rsi]
	lea	rsi, [rsi]
	lea	rdi, [rax - 1]
	add	rcx, -8
	nop	
	cmp	esi, 0x2f
	je	.label_295
.label_292:
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	lea	ecx, [rax - 1]
	xor	ebx, ebx
	cmp	eax, 2
	mov	r13d, 0
	jl	.label_298
	mov	rbp, r14
	movsxd	r14, ecx
	xor	eax, eax
	mov	r13d, 1
	mov	rsp, rsp
	xor	ebx, ebx
	jmp	.label_293
	nop	dword ptr [rax + rax]
.label_303:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 8]
	mov	ecx, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	inc	r13
.label_293:
	nop	
	cmp	eax, 3
	lea	rdi, [rdi]
	jne	.label_300
	mov	rsp, rsp
	test	ecx, ecx
	jg	.label_301
.label_300:
	mov	rdi, qword ptr [r12 + r13*8 - 8]
	lea	rsi, [rsp + 8]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	qword ptr [rsp + 0x10]
	mov	rbp, rbp
	cmp	ebx, eax
	lea	rdi, [rdi]
	cmovl	ebx, eax
.label_301:
	mov	rax, qword ptr [r12 + r13*8]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	mov	rsp, rsp
	je	.label_297
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	esi, ebx
	nop	
	call	savewd_restore
	cmp	ebx, eax
	mov	rsp, rsp
	cmovl	ebx, eax
.label_297:
	lea	rdi, [rdi]
	cmp	r13, r14
	mov	rbp, rbp
	jl	.label_303
	nop	
	mov	eax, dword ptr [rsp + 8]
	lea	rdi, [rdi]
	cmp	rax, 4
	ja	.label_304
	lea	rdi, [rdi]
	mov	r14, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_299]]
.label_456:
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	jmp	.label_298
.label_457:
	cmp	dword ptr [rsp + 0xc], 0
	jns	.label_302
.label_298:
	mov	dword ptr [rsp + 8], 5
	cmp	r13d, r15d
	jge	.label_294
	movsxd	rax, r13d
	lea	rbp, [r12 + rax*8]
	sub	r15d, r13d
	lea	rsi, [rsi]
	lea	r12, [rsp + 8]
	mov	r13, qword ptr [rsp + 0x10]
	nop	
.label_296:
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
	jne	.label_296
.label_294:
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
.label_304:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	edx, 0xfb
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.savewd_finish
	mov	rbp, rbp
	call	__assert_fail
.label_302:
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
	#Procedure 0x405c40

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
	je	.label_305
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
	jmp	.label_307
.label_305:
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
.label_307:
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
	ja	.label_309
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_310]]
.label_437:
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
.label_309:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_312
.label_438:
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
.label_439:
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
.label_440:
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
	jmp	.label_314
.label_441:
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
	jmp	.label_313
.label_442:
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
.label_443:
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
.label_313:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_314:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_308
.label_445:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_312:
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
	jmp	.label_306
.label_444:
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
.label_306:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_308:
	mov	rbp, rbp
	call	__fprintf_chk
.label_436:
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
	#Procedure 0x406030
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_315:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_315
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406060
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_319:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_316
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_317
	nop	word ptr cs:[rax + rax]
.label_316:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_317:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_318
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_319
.label_318:
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
	#Procedure 0x4060f0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_320
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
.label_320:
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
.label_322:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_321
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_323
	nop	dword ptr [rax + rax]
.label_321:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_323:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_324
	inc	r9
	cmp	r9, 0xa
	jb	.label_322
.label_324:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406230
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
	#Procedure 0x4062c0
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
	jb	.label_325
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_326
	test	rax, rax
	je	.label_325
.label_326:
	nop	
	pop	rbx
	ret	
.label_325:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406310

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_327
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_328
.label_327:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_328:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406340
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
	jb	.label_330
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_329
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_329
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_329:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_331
	test	rax, rax
	je	.label_330
.label_331:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_330:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_332
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_332
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_332:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_333
	test	rax, rax
	nop	
	je	.label_334
.label_333:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_334:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406410
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_339
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_335
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_341
.label_339:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_338
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_338:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_340
.label_341:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_337
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_337
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_337:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_336
	test	rax, rax
	mov	rbp, rbp
	je	.label_335
.label_336:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_335:
	call	xalloc_die
.label_340:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064f0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_343
	test	rax, rax
	mov	rbp, rbp
	je	.label_342
.label_343:
	pop	rbx
	ret	
.label_342:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406510
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_347
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_348
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_346
	call	free
	xor	eax, eax
	jmp	.label_344
.label_347:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_345
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_346:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_344
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_345
.label_344:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_345:
	mov	rbp, rbp
	call	xalloc_die
.label_348:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4065a0
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
	je	.label_349
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_350
.label_349:
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
.label_350:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406600
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
	jb	.label_351
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_351
	pop	rcx
	ret	
.label_351:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406630

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
	je	.label_353
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_352
.label_353:
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
.label_352:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406690
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
	je	.label_354
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_355
.label_354:
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
.label_355:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4066f0

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
	#Procedure 0x406740

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_356
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_357
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
	je	.label_357
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
.label_356:
	mov	ecx, 1
.label_357:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067b0

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
	je	.label_358
	nop	
	cmp	r15, -2
	jb	.label_358
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_358
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_358:
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
	#Procedure 0x406840

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
	jne	.label_359
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_360
	test	cl, cl
	mov	rsp, rsp
	jne	.label_360
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_360
.label_359:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_360
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_360:
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
	#Procedure 0x4068d0

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_361
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
.label_361:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_362
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
	ja	.label_364
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_363
.label_364:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_363:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_362:
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
	#Procedure 0x4069f0

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
	je	.label_366
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_365
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_367
.label_365:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_366
.label_367:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_366:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406a40

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
	je	.label_368
	nop	
	mov	rax, rcx
.label_368:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a80

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
.label_383:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx]
.label_374:
	mov	rbp, rbp
	mov	r14, rbx
	nop	
	test	al, al
	lea	rsi, [rsi]
	jne	.label_385
	lea	rdi, [rdi]
	jmp	.label_373
	nop	word ptr cs:[rax + rax]
.label_377:
	test	cl, cl
	cmove	rbp, rbx
	mov	al, 0x2f
.label_385:
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_372
	nop	word ptr cs:[rax + rax]
.label_382:
	mov	rsp, rsp
	movzx	edx, al
	movzx	eax, byte ptr [rbx]
	cmp	edx, 0x2f
	sete	cl
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	je	.label_377
	cmp	edx, 0x2f
	jne	.label_375
	mov	rbp, rbp
	test	al, al
	nop	
	jne	.label_376
.label_375:
	nop	
	inc	rbx
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	jne	.label_382
	jmp	.label_373
	nop	word ptr [rax + rax]
.label_372:
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_378
	nop	
	inc	rbx
	nop	
	test	cl, cl
	mov	al, cl
	jne	.label_372
	lea	rdi, [rdi]
	jmp	.label_373
.label_378:
	mov	rsp, rsp
	movzx	eax, al
	cmp	eax, 0x2f
	nop	
	sete	cl
	mov	rbp, rbp
	jmp	.label_377
	nop	word ptr cs:[rax + rax]
.label_376:
	mov	rcx, rbp
	lea	rsi, [rsi]
	sub	rcx, r14
	cmp	rcx, 1
	nop	
	jne	.label_380
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2e
	je	.label_374
	mov	byte ptr [rbp], 0
	jmp	.label_381
.label_380:
	lea	rsi, [rsi]
	mov	byte ptr [rbp], 0
	mov	rbp, rbp
	cmp	rcx, 2
	jne	.label_381
	nop	
	movzx	eax, byte ptr [r14]
	mov	rsp, rsp
	cmp	eax, 0x2e
	nop	
	jne	.label_381
	mov	rbp, rbp
	movzx	eax, byte ptr [r14 + 1]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	eax, 0x2e
	mov	dword ptr [rsp + 4], 0
	je	.label_369
.label_381:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	call	qword ptr [rsp + 0x10]
	mov	rbp, rbp
	test	eax, eax
	js	.label_379
	mov	rsp, rsp
	mov	dword ptr [rsp + 4], 0
	nop	
	mov	cl, 1
	jmp	.label_369
.label_379:
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 4], eax
	mov	rbp, rbp
	mov	cl, r15b
.label_369:
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	mov	r15d, ecx
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	mov	rdi, r12
	mov	rsi, r14
	call	savewd_chdir
	mov	r14d, 0xffffffff
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_370
	lea	rsi, [rsi]
	mov	byte ptr [rbp], 0x2f
	nop	
	test	eax, eax
	mov	r14d, eax
	mov	rbp, rbp
	je	.label_383
.label_370:
	mov	ebx, dword ptr [rsp + 4]
	test	ebx, ebx
	je	.label_371
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 2
	lea	rdi, [rdi]
	jne	.label_371
	mov	rbp, rbp
	mov	dword ptr [rax], ebx
.label_371:
	lea	rdi, [rdi]
	movsxd	r14, r14d
	jmp	.label_384
.label_373:
	sub	r14, r13
.label_384:
	lea	rsi, [rsi]
	mov	rax, r14
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406cb0

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
	js	.label_398
	nop	
	mov	qword ptr [rsp + 0x10], rsi
	lea	rdx, [rsp + 0x18]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, r14d
	call	__fxstat
	jmp	.label_386
.label_398:
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x18]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rsi
	lea	rdi, [rdi]
	call	__xstat
.label_386:
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_392
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	nop	
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_397
	cmp	r13d, -1
	mov	rbp, rbp
	je	.label_388
	mov	rax, rbx
	shr	rax, 0x20
	mov	rsp, rsp
	cmp	eax, r13d
	jne	.label_390
.label_388:
	xor	eax, eax
	mov	rsp, rsp
	cmp	r12d, -1
	je	.label_396
	cmp	dword ptr [rsp + 0x38], r12d
	je	.label_396
.label_390:
	test	r14d, r14d
	js	.label_399
	lea	rsi, [rsi]
	mov	edi, r14d
	lea	rdi, [rdi]
	mov	esi, r13d
	lea	rdi, [rdi]
	mov	edx, r12d
	call	fchown
	lea	rdi, [rdi]
	jmp	.label_391
.label_397:
	call	__errno_location
	mov	dword ptr [rax], 0x14
	mov	ebp, 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_392
.label_399:
	cmp	r15d, -1
	lea	rsi, [rsi]
	je	.label_394
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, r13d
	lea	rdi, [rdi]
	mov	edx, r12d
	lea	rdi, [rdi]
	call	lchown
	nop	
	jmp	.label_391
.label_394:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, r13d
	nop	
	mov	edx, r12d
	nop	
	call	chown
.label_391:
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
	jne	.label_392
.label_396:
	mov	esi, dword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	ecx, ebx
	lea	rsi, [rsi]
	xor	ecx, dword ptr [rsp + 0xc]
	lea	rsi, [rsi]
	or	ecx, eax
	xor	ebp, ebp
	test	ecx, esi
	je	.label_392
	not	esi
	mov	rsp, rsp
	and	esi, ebx
	and	esi, 0xfff
	mov	rbp, rbp
	or	esi, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	test	r14d, r14d
	nop	
	js	.label_393
	mov	rbp, rbp
	mov	edi, r14d
	call	fchmod
	mov	ebp, eax
	mov	rsp, rsp
	jmp	.label_389
.label_392:
	test	r14d, r14d
	js	.label_387
.label_389:
	mov	rsp, rsp
	test	ebp, ebp
	je	.label_395
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
	jmp	.label_387
.label_395:
	mov	rsp, rsp
	mov	edi, r14d
	call	close
	mov	ebp, eax
.label_387:
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
.label_393:
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	chmod
	mov	rbp, rbp
	mov	ebp, eax
	mov	rsp, rsp
	jmp	.label_387
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ed0

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
	ja	.label_400
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
	jmp	.label_401
.label_400:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_401:
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
	#Procedure 0x406f40

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
	js	.label_402
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_404
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
	je	.label_402
.label_404:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_402
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_403
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_403:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_402:
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
	#Procedure 0x406ff0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_405
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_405
	test	byte ptr [rbx + 1], 1
	je	.label_405
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_405:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407030

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
	jne	.label_406
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_406
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_407
.label_406:
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
.label_407:
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
	je	.label_408
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_408:
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
	#Procedure 0x4070e0

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
	#Procedure 0x407100

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
	#Procedure 0x407120

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
	je	.label_415
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
.label_415:
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
	ja	.label_429
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_423
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_422
	mov	rsp, rsp
	test	esi, esi
	jne	.label_429
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_409
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_414
.label_429:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_421
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_422
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_428
.label_423:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_420
.label_422:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_427
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_410
.label_427:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_410:
	mov	edx, dword ptr [rax]
.label_424:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_420:
	mov	ebp, eax
.label_417:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_428:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_421
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_426
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_425
.label_421:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_412
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_416
.label_409:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_414:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_424
.label_426:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_425:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_413
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
	jns	.label_418
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_418
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
	js	.label_417
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_419
.label_418:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_417
.label_412:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_416:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_420
.label_413:
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
.label_419:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_417
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_417
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_411
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
	jne	.label_417
.label_411:
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
	jmp	.label_417
	nop	word ptr cs:[rax + rax]
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]