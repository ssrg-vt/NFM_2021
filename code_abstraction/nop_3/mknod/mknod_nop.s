	.section	.text
	.align	16
	#Procedure 0x4014f0

	.globl usage
	.type usage, @function
usage:
	mov	rsp, rsp
	push	rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_8
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.33
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, 5
	mov	rbp, rbp
	xor	esi, esi
	call	setlocale
	mov	rbp, rbp
	test	rax, rax
	je	.label_7
	mov	esi, OFFSET FLAT:.str.44
	lea	rsi, [rsi]
	mov	edx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_7
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.46
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.10
	nop	
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	mov	ecx, OFFSET FLAT:.str.48
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, ebp
	call	exit
.label_8:
	nop	
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	mov	rsp, rsp
	call	exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401810

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r12]
	lea	rsi, [rsi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	call	setlocale
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	nop	
	call	textdomain
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	nop	
	xor	r14d, r14d
	mov	rbp, rbp
	jmp	.label_24
	nop	dword ptr [rax]
.label_32:
	mov	r14,  qword ptr [word ptr [rip + optarg]]
.label_24:
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.14
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x59
	lea	rsi, [rsi]
	jle	.label_30
	mov	rsp, rsp
	cmp	eax, 0x5a
	je	.label_31
	cmp	eax, 0x6d
	nop	
	je	.label_32
	jmp	.label_19
	nop	dword ptr [rax]
.label_31:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + optarg]],  0
	mov	rsp, rsp
	je	.label_24
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	jmp	.label_24
.label_30:
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_37
	mov	r15d, 0x1b6
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	je	.label_10
	mov	rdi, r14
	call	mode_compile
	lea	rdi, [rdi]
	mov	rbx, rax
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_16
	mov	rbp, rbp
	xor	edi, edi
	call	umask
	mov	ebp, eax
	mov	edi, ebp
	call	umask
	mov	edi, 0x1b6
	xor	esi, esi
	xor	r8d, r8d
	mov	rbp, rbp
	mov	edx, ebp
	mov	rcx, rbx
	call	mode_adjust
	mov	r15d, eax
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	cmp	r15d, 0x200
	jae	.label_23
.label_10:
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	bpl, 1
	cmp	eax, r13d
	jge	.label_25
	lea	rdi, [rdi]
	lea	ecx, [rax + 1]
	cmp	ecx, r13d
	lea	rdi, [rdi]
	jge	.label_27
	nop	
	mov	rcx, qword ptr [r12 + rax*8 + 8]
	movzx	ecx, byte ptr [rcx]
	cmp	ecx, 0x70
	mov	rbp, rbp
	sete	bpl
	mov	rsp, rsp
	jmp	.label_25
.label_27:
	xor	ebp, ebp
.label_25:
	test	bpl, bpl
	sete	cl
	movzx	ecx, cl
	lea	rbx, [rcx + rcx + 2]
	mov	ecx, r13d
	lea	rsi, [rsi]
	sub	ecx, eax
	mov	rbp, rbp
	movsxd	rcx, ecx
	cmp	rcx, rbx
	nop	
	jb	.label_22
	cmp	rbx, rcx
	lea	rsi, [rsi]
	jb	.label_34
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + rax*8 + 8]
	movsx	ecx, byte ptr [rcx]
	nop	
	cmp	ecx, 0x6f
	nop	
	jg	.label_36
	lea	rdi, [rdi]
	mov	ebp, 0x6000
	mov	rbp, rbp
	cmp	ecx, 0x62
	lea	rsi, [rsi]
	je	.label_39
	mov	rsp, rsp
	cmp	ecx, 0x63
	lea	rdi, [rdi]
	je	.label_11
	jmp	.label_14
.label_36:
	mov	rbp, rbp
	cmp	ecx, 0x70
	je	.label_15
	cmp	ecx, 0x75
	jne	.label_14
.label_11:
	mov	rbp, rbp
	mov	ebp, 0x2000
.label_39:
	mov	rbp, rbp
	mov	rbx, qword ptr [r12 + rax*8 + 0x10]
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + rax*8 + 0x18]
	lea	rcx, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	xstrtoumax
	test	eax, eax
	jne	.label_21
	mov	rax, qword ptr [rsp + 0x10]
	mov	ecx, eax
	cmp	rax, rcx
	mov	rbp, rbp
	jne	.label_21
	lea	rcx, [rsp + 8]
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	xor	edx, edx
	xor	r8d, r8d
	mov	rdi, r13
	call	xstrtoumax
	test	eax, eax
	nop	
	jne	.label_29
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rax, rcx
	jne	.label_29
	mov	rdx, qword ptr [rsp + 0x10]
	movzx	esi, al
	mov	rdi, rdx
	nop	
	shl	rdi, 8
	lea	rsi, [rsi]
	and	edi, 0xfff00
	shl	rax, 0xc
	movabs	rcx, 0xffffff00000
	and	rcx, rax
	and	rdx, 0xfffffffffffff000
	shl	rdx, 0x20
	or	rcx, rsi
	or	rcx, rdx
	or	rcx, rdi
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_33
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rdi]
	or	ebp, r15d
	mov	qword ptr [rsp], rcx
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, ebp
	call	__xmknod
	jmp	.label_9
.label_15:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + rax*8]
	mov	rsp, rsp
	mov	esi, r15d
	lea	rdi, [rdi]
	call	mkfifo
.label_9:
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_17
	mov	rsp, rsp
	test	r14, r14
	je	.label_18
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r12 + rax*8]
	mov	rsp, rsp
	mov	esi, r15d
	call	chmod
	test	eax, eax
	jne	.label_26
.label_18:
	mov	rbp, rbp
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rsp, rsp
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_37:
	cmp	eax, 0xffffff7d
	lea	rdi, [rdi]
	je	.label_28
	cmp	eax, 0xffffff7e
	mov	rbp, rbp
	jne	.label_19
	mov	rsp, rsp
	xor	edi, edi
	call	usage
.label_21:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r13
	lea	rsi, [rsi]
	call	quote
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_22:
	xor	edi, edi
	cmp	eax, r13d
	jge	.label_35
	mov	esi, OFFSET FLAT:.str.21
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rsp, rsp
	movsxd	rax, r13d
	mov	rdi, qword ptr [r12 + rax*8 - 8]
	nop	
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	call	error
	nop	
	jmp	.label_38
.label_28:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.17_0
	xor	r9d, r9d
	lea	rsi, [rsi]
	xor	eax, eax
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	call	exit
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	r14, rax
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	add	rax, rbx
	mov	rdi, qword ptr [r12 + rax*8]
	lea	rsi, [rsi]
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, r14
	mov	rsp, rsp
	call	error
	test	bpl, bpl
	lea	rsi, [rsi]
	je	.label_13
	sub	r13d,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	cmp	r13d, 4
	jne	.label_13
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.22
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__fprintf_chk
.label_13:
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_14:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	nop	
	mov	rdi, qword ptr [r12 + rax*8 + 8]
	call	quote
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_19:
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_17:
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	nop	
	mov	rdx, qword ptr [r12 + rax*8]
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	call	error
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	nop	
	mov	r8, r13
	nop	
	call	error
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	jmp	.label_20
.label_23:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.19
.label_20:
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_26:
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12 + rax*8]
	mov	rsp, rsp
	mov	edi, 4
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	error
.label_35:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_38:
	test	bpl, bpl
	mov	rsp, rsp
	jne	.label_12
	sub	r13d,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	cmp	r13d, 2
	jne	.label_12
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.22
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
.label_12:
	mov	edi, 1
	call	usage
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f80
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
	#Procedure 0x401f90
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fa0

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
	je	.label_43
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_40
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_40
.label_43:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_41
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_40:
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
	jne	.label_42
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_0
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
.label_41:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_42:
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
	.align	16
	#Procedure 0x4020a0

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
	jne	.label_56
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_77:
	lea	rsi, [rsi]
	movsx	ecx, bl
	nop	
	lea	ebp, [rcx + rbp*8 - 0x30]
	cmp	ebp, 0xfff
	lea	rsi, [rsi]
	ja	.label_45
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
	je	.label_77
	xor	eax, eax
	test	bl, bl
	lea	rsi, [rsi]
	jne	.label_45
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
	jmp	.label_45
.label_56:
	lea	rsi, [rsi]
	lea	rax, [r14 + 1]
	mov	rbp, rbp
	mov	edi, 1
	jmp	.label_66
	nop	dword ptr [rax + rax]
.label_61:
	lea	rsi, [rsi]
	add	rdi, rdx
	lea	rsi, [rsi]
	mov	bl, byte ptr [rax]
	inc	rax
.label_66:
	mov	rbp, rbp
	movsx	ecx, bl
	cmp	ecx, 0x2c
	lea	rdi, [rdi]
	jle	.label_55
	movzx	ecx, bl
	cmp	ecx, 0x2d
	je	.label_59
	cmp	ecx, 0x3d
	lea	rsi, [rsi]
	mov	edx, 1
	je	.label_61
	jmp	.label_47
	nop	word ptr cs:[rax + rax]
.label_55:
	movzx	ecx, bl
	cmp	ecx, 0x2b
	nop	
	mov	edx, 1
	je	.label_61
	test	bl, bl
	je	.label_67
.label_47:
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	jmp	.label_61
	nop	dword ptr [rax]
.label_59:
	mov	edx, 1
	jmp	.label_61
.label_67:
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rsp, rsp
	shr	rax, 0x3b
	lea	rsi, [rsi]
	jne	.label_75
	shl	rdi, 4
	call	xmalloc
	lea	rsi, [rsi]
	xor	r8d, r8d
	jmp	.label_53
.label_70:
	inc	rdi
	mov	rbp, rbp
	mov	r14, rdi
	nop	word ptr [rax + rax]
.label_53:
	xor	r11d, r11d
	nop	
	jmp	.label_54
	nop	word ptr cs:[rax + rax]
.label_68:
	mov	rbp, rbp
	or	r11d, 0xfff
	inc	r14
.label_54:
	mov	bpl, byte ptr [r14]
	movsx	ecx, bpl
	cmp	ecx, 0x66
	lea	rdi, [rdi]
	jg	.label_65
	cmp	ecx, 0x60
	jle	.label_58
	cmp	ecx, 0x61
	je	.label_68
	jmp	.label_49
	nop	dword ptr [rax + rax]
.label_65:
	nop	
	cmp	ecx, 0x67
	mov	rsp, rsp
	je	.label_57
	cmp	ecx, 0x6f
	je	.label_76
	lea	rdi, [rdi]
	cmp	ecx, 0x75
	lea	rdi, [rdi]
	jne	.label_49
	or	r11d, 0x9c0
	inc	r14
	nop	
	jmp	.label_54
.label_57:
	or	r11d, 0x438
	inc	r14
	jmp	.label_54
.label_76:
	mov	rsp, rsp
	or	r11d, 0x207
	inc	r14
	jmp	.label_54
	nop	word ptr cs:[rax + rax]
.label_58:
	cmp	ecx, 0x2b
	je	.label_51
	cmp	ecx, 0x2d
	mov	rbp, rbp
	je	.label_51
	nop	
	cmp	ecx, 0x3d
	jne	.label_49
	nop	word ptr [rax + rax]
.label_51:
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
	jg	.label_63
	nop	
	add	edx, -0x30
	mov	rbp, rbp
	cmp	edx, 8
	jae	.label_46
	nop	word ptr cs:[rax + rax]
.label_62:
	nop	
	movsx	edx, bl
	lea	ecx, [rdx + rcx*8 - 0x30]
	cmp	ecx, 0xfff
	lea	rsi, [rsi]
	ja	.label_49
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
	je	.label_62
	test	r11d, r11d
	jne	.label_49
	lea	rsi, [rsi]
	mov	r9b, 1
	mov	rsp, rsp
	mov	r11d, 0xfff
	lea	rdi, [rdi]
	test	bl, bl
	je	.label_60
	movzx	edx, bl
	cmp	edx, 0x2c
	mov	r10d, 0xfff
	je	.label_52
	lea	rdi, [rdi]
	jmp	.label_49
	nop	word ptr cs:[rax + rax]
.label_63:
	cmp	edx, 0x67
	je	.label_69
	cmp	edx, 0x6f
	je	.label_73
	nop	
	cmp	edx, 0x75
	jne	.label_46
	lea	rsi, [rsi]
	add	r14, 2
	nop	
	mov	r9b, 3
	mov	rbp, rbp
	xor	r10d, r10d
	mov	ecx, 0x1c0
	mov	rbp, rbp
	mov	rdi, r14
	jmp	.label_52
	nop	dword ptr [rax]
.label_48:
	mov	bl, byte ptr [rdi + 1]
	mov	rsp, rsp
	inc	rdi
	lea	rdi, [rdi]
	mov	r9b, dl
.label_46:
	movsx	esi, bl
	mov	rbp, rbp
	xor	r10d, r10d
	lea	edx, [rsi - 0x72]
	cmp	edx, 6
	ja	.label_72
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_44]]
.label_436:
	or	ecx, 0x124
	jmp	.label_50
.label_72:
	mov	dl, 2
	nop	
	cmp	esi, 0x58
	je	.label_48
	jmp	.label_52
.label_437:
	lea	rsi, [rsi]
	or	ecx, 0xc00
	jmp	.label_50
.label_438:
	or	ecx, 0x200
	mov	rsp, rsp
	jmp	.label_50
.label_439:
	lea	rdi, [rdi]
	or	ecx, 0x92
	mov	rsp, rsp
	jmp	.label_50
.label_440:
	mov	rsp, rsp
	or	ecx, 0x49
	nop	dword ptr [rax]
.label_50:
	nop	
	mov	dl, r9b
	mov	rbp, rbp
	jmp	.label_48
.label_60:
	lea	rdi, [rdi]
	mov	r10d, 0xfff
	jmp	.label_52
.label_69:
	add	r14, 2
	mov	r9b, 3
	lea	rsi, [rsi]
	xor	r10d, r10d
	nop	
	mov	ecx, 0x38
	mov	rdi, r14
	jmp	.label_52
.label_73:
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
.label_52:
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
	jne	.label_71
	cmp	r11d, 1
	mov	rsp, rsp
	sbb	r10d, r10d
	lea	rsi, [rsi]
	or	r10d, r11d
	lea	rsi, [rsi]
	and	r10d, ecx
.label_71:
	inc	r8
	mov	rbp, rbp
	mov	dword ptr [rax + rdx + 0xc], r10d
	lea	rsi, [rsi]
	movsx	ebp, byte ptr [rdi]
	movzx	ecx, bpl
	cmp	ebp, 0x2c
	lea	rdi, [rdi]
	jle	.label_64
	mov	rsp, rsp
	cmp	ecx, 0x2d
	lea	rsi, [rsi]
	mov	r14, rdi
	je	.label_51
	lea	rsi, [rsi]
	cmp	ecx, 0x3d
	mov	r14, rdi
	lea	rdi, [rdi]
	je	.label_51
	jmp	.label_49
	nop	word ptr cs:[rax + rax]
.label_64:
	nop	
	cmp	ecx, 0x2b
	mov	rsp, rsp
	mov	r14, rdi
	je	.label_51
	test	bpl, bpl
	je	.label_74
	cmp	ecx, 0x2c
	nop	
	je	.label_70
.label_49:
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	xor	eax, eax
.label_45:
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
.label_74:
	shl	r8, 4
	mov	rbp, rbp
	mov	byte ptr [rax + r8 + 1], 0
	nop	
	jmp	.label_45
.label_75:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402580
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
	jne	.label_78
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
.label_78:
	add	rsp, 0x90
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402600

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
	je	.label_79
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
.label_83:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	nop	
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	lea	rsi, [rsi]
	je	.label_85
	mov	rbp, rbp
	cmp	ebp, 3
	jne	.label_81
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
	jmp	.label_81
	nop	word ptr cs:[rax + rax]
.label_85:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_81:
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
	je	.label_86
	cmp	esi, 0x2d
	je	.label_84
	mov	rbp, rbp
	cmp	esi, 0x3d
	lea	rsi, [rsi]
	jne	.label_80
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
	jmp	.label_80
	nop	dword ptr [rax + rax]
.label_84:
	lea	rdi, [rdi]
	or	r13d, ebp
	nop	
	not	ebp
	and	edi, ebp
	jmp	.label_80
	nop	dword ptr [rax]
.label_86:
	or	r13d, ebp
	mov	rbp, rbp
	or	edi, ebp
.label_80:
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	lea	rsi, [rsi]
	test	al, al
	jne	.label_83
.label_79:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp - 8]
	mov	rsp, rsp
	test	rax, rax
	je	.label_82
	mov	dword ptr [rax], r13d
.label_82:
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
	#Procedure 0x4027c0

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
	je	.label_87
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
	jl	.label_89
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_89
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_88
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_88:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_89:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_87:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_3
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
	#Procedure 0x4028b0
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
	#Procedure 0x402900
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
	#Procedure 0x402920
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
	#Procedure 0x402940
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
	#Procedure 0x4029b0
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
	#Procedure 0x4029d0
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
	je	.label_90
	test	rdx, rdx
	nop	
	je	.label_90
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_90:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402a10
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
	.align	16
	#Procedure 0x402ac0

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
.label_181:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_200
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_120]]
.label_421:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11
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
.label_422:
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
	jne	.label_104
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_104
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_136:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_128
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_128:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_136
.label_104:
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
	jmp	.label_144
.label_414:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_144
.label_417:
	lea	rsi, [rsi]
	mov	al, 1
.label_415:
	lea	rsi, [rsi]
	mov	dl, 1
.label_418:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_166
	mov	rbp, rbp
	mov	cl, al
.label_166:
	mov	al, cl
.label_416:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_170
	test	rbp, rbp
	je	.label_175
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_105
.label_170:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_105
.label_419:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_184
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_189
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_153
.label_420:
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
	jmp	.label_144
.label_175:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_105:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_144
.label_184:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_153
.label_189:
	nop	
	mov	r14d, 1
.label_153:
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
.label_144:
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
	jmp	.label_108
	nop	dword ptr [rax]
.label_100:
	mov	rsp, rsp
	inc	r15
.label_108:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_211
	cmp	r15, r10
	jne	.label_162
	jmp	.label_163
	nop	dword ptr [rax]
.label_211:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_164
.label_162:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_154
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_172
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_172
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
.label_172:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_199
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_93
	nop	dword ptr [rax]
.label_154:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_93
	nop	word ptr cs:[rax + rax]
.label_199:
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
	jne	.label_103
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
	je	.label_93
	jmp	.label_101
.label_103:
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
.label_93:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_140
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_143]]
.label_363:
	test	r15, r15
	jne	.label_107
	jmp	.label_150
.label_367:
	xor	eax, eax
	cmp	r10, -1
	je	.label_152
	test	r15, r15
	jne	.label_155
	nop	
	cmp	r10, 1
	je	.label_150
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_94
.label_356:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_106
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_101
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_160
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_160
	cmp	r14, rbp
	jae	.label_174
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_174:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_215
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_215:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_187
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_187:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_160:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_197
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_197:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_203
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_210
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_99
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_217
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_217:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_95
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_95:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_94
.label_357:
	mov	bl, 0x62
	nop	
	jmp	.label_110
.label_358:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_109
.label_359:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_110
.label_360:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_110
.label_361:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_109
.label_364:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_126
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_132
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
	jae	.label_137
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_137:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_151
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_151:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_158
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_158:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_126:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_94
.label_365:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_169
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_107
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_107
	nop	
	jmp	.label_180
.label_366:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_183
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_186
	jmp	.label_190
.label_140:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_192
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
	jmp	.label_207
.label_152:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_214
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_214
.label_150:
	mov	dl, 1
.label_362:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_219
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_94
.label_106:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_100
	jmp	.label_107
.label_183:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_109
.label_186:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_112
.label_109:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_117
.label_110:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_94
	jmp	.label_124
.label_192:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_130
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_130:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_125
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_121:
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
	je	.label_123
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_118
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_182
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_178
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_201:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_194
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_157
.label_194:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_201
.label_178:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_206
	mov	rbp, rbp
	xor	r13d, r13d
.label_206:
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
	je	.label_121
	jmp	.label_111
	nop	
.label_125:
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
	je	.label_115
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_118
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_123
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_133
	xor	r13d, r13d
.label_133:
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
	je	.label_125
	lea	rsi, [rsi]
	jmp	.label_111
.label_214:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_94
.label_169:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_107
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_107
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_107
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_165
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_168
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_198
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_179
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_179:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_185
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_185:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_218
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_218:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_92
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_92:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_94
.label_107:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_94:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_176
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_216
	nop	
	jmp	.label_91
	nop	dword ptr [rax + rax]
.label_176:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_91
.label_216:
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
	jne	.label_96
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_213
	nop	word ptr cs:[rax + rax]
.label_91:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_213:
	mov	bl, r12b
	je	.label_112
	jmp	.label_124
.label_96:
	mov	bl, r12b
.label_124:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_101
	cmp	r9d, 2
	jne	.label_129
	mov	al, dil
	and	al, 1
	jne	.label_129
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_135
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_135:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_139
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_139:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_146
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_146:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_129:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_149
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_149:
	mov	rbp, rbp
	inc	r14
	jmp	.label_196
.label_155:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_94
.label_203:
	xor	r13d, r13d
	jmp	.label_94
.label_210:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_94
.label_99:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_94
.label_118:
	xor	r13d, r13d
.label_115:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_111
.label_123:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_177
	lea	rax, [r11 + r15]
.label_193:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_142
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_193
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_111
.label_177:
	xor	r13d, r13d
	jmp	.label_111
.label_142:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_111
.label_182:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_111:
	mov	rbp, rbp
	mov	rbx, r10
.label_207:
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
	ja	.label_208
	test	cl, cl
	je	.label_208
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_94
.label_208:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_98
	nop	dword ptr [rax]
.label_145:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_98:
	mov	rsp, rsp
	test	cl, cl
	je	.label_114
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_116
	cmp	r14, rbp
	jae	.label_119
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_119:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_116:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_131
	nop	dword ptr [rax + rax]
.label_114:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_138
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_97
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_97
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_147
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_147:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_161
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_161:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_195
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_195:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_97:
	cmp	r14, rbp
	jae	.label_127
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_127:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_156
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_156:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_212
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_212:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_131:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_112
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_202
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_202
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_113
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_113:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_122
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_122:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_202:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_145
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_112:
	test	dil, 1
	je	.label_102
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_102
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_167
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_167:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_205
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_205:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_102:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_196:
	cmp	r14, rbp
	jae	.label_141
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_141:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_100
.label_165:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_94
.label_168:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_94
	nop	word ptr [rax + rax]
.label_163:
	nop	
	mov	rcx, r15
.label_164:
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
	je	.label_148
	mov	rsp, rsp
	or	al, dl
	je	.label_188
.label_148:
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
	je	.label_171
	mov	rsp, rsp
	or	al, dl
	jne	.label_171
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_173
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_171
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
	je	.label_181
.label_171:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_191
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_191
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_191
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_209:
	cmp	r14, rbp
	jae	.label_204
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_204:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_209
.label_191:
	cmp	r14, rbp
	jae	.label_159
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_159
.label_219:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_101
.label_157:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_101
.label_138:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_101
.label_188:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_101
.label_117:
	nop	
	mov	r9d, 2
.label_101:
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
.label_134:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_159:
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
.label_173:
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
	jmp	.label_134
.label_132:
	mov	r9d, 2
	jmp	.label_101
.label_190:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_101
.label_180:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_101
.label_198:
	mov	r9d, 5
	nop	
	jmp	.label_101
.label_200:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f60
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
	.align	16
	#Procedure 0x4040a0
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
	je	.label_220
	mov	qword ptr [rax], rbx
.label_220:
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
	#Procedure 0x4041f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_221
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_224:
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
	jl	.label_224
.label_221:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_225
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_223]], OFFSET FLAT:slot0
.label_225:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_222
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_222:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4042c0

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
	js	.label_226
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_231
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_229
.label_231:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_232
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
	jne	.label_228
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_228:
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
.label_229:
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
	ja	.label_227
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
	je	.label_230
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_230:
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
.label_227:
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
.label_226:
	lea	rdi, [rdi]
	call	abort
.label_232:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x404530
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404540
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
	.align	16
	#Procedure 0x404570
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
	.align	16
	#Procedure 0x4045a0
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
	je	.label_233
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
.label_233:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404630
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
	je	.label_234
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
.label_234:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046d0

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
	je	.label_235
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
.label_235:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404760
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
	je	.label_236
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
.label_236:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4047d0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_237]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_238]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_239]]
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
	.align	16
	#Procedure 0x404870
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_237]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_238]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_239]]
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
	.align	16
	#Procedure 0x404910

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_237]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_238]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_239]]
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
	.align	16
	#Procedure 0x404980
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_237]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_238]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_239]]
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
	.align	16
	#Procedure 0x4049f0

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
	je	.label_240
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
.label_240:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404ad0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_237]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_238]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_239]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_241
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_241
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
.label_241:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b60
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_237]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_238]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_239]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_242
	test	rdx, rdx
	je	.label_242
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
.label_242:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bf0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_237]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_238]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_239]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_243
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_243
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
.label_243:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c90
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_237]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_238]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_239]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_244
	test	rsi, rsi
	je	.label_244
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
.label_244:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d30
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d40
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
	.align	16
	#Procedure 0x404d60
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d80

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
	.align	16
	#Procedure 0x404db0

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
	jne	.label_246
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_248
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_245
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_245
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_245
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_245
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_245
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_245
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_246
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_246
.label_248:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_245
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_245
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_245
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_245
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_245
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_245
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_247
.label_245:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_246:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_247:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_246
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_246
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f20

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
	je	.label_253
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_4
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_256
.label_253:
	mov	edx, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_256:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	mov	esi, OFFSET FLAT:.str.3_0
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
	ja	.label_258
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_249]]
.label_391:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
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
.label_258:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_255
.label_392:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
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
.label_393:
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
.label_394:
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
	jmp	.label_252
.label_395:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
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
	jmp	.label_251
.label_396:
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
	jmp	.label_250
.label_397:
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
.label_250:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_251:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_252:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_257
.label_399:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_255:
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
	jmp	.label_254
.label_398:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
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
.label_254:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_257:
	mov	rbp, rbp
	call	__fprintf_chk
.label_390:
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
	#Procedure 0x405310
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_259:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_259
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405340
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_262:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_260
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_261
	nop	word ptr cs:[rax + rax]
.label_260:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_261:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_263
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_262
.label_263:
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
	#Procedure 0x4053d0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_264
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
.label_264:
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
.label_266:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_265
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_267
	nop	dword ptr [rax + rax]
.label_265:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_267:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_268
	inc	r9
	cmp	r9, 0xa
	jb	.label_266
.label_268:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405510
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
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
	mov	esi, OFFSET FLAT:.str.16
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
	#Procedure 0x4055a0
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
	jb	.label_269
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_270
	test	rax, rax
	je	.label_269
.label_270:
	nop	
	pop	rbx
	ret	
.label_269:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_271
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_272
.label_271:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_272:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405620
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
	jb	.label_273
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_274
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_274
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_274:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_275
	test	rax, rax
	je	.label_273
.label_275:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_273:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_276
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_276
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_276:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_277
	test	rax, rax
	nop	
	je	.label_278
.label_277:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_278:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056f0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_283
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_279
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_285
.label_283:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_282
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_282:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_284
.label_285:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_281
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_281
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_281:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_280
	test	rax, rax
	mov	rbp, rbp
	je	.label_279
.label_280:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_279:
	call	xalloc_die
.label_284:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057d0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_287
	test	rax, rax
	mov	rbp, rbp
	je	.label_286
.label_287:
	pop	rbx
	ret	
.label_286:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4057f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_291
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_292
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_290
	call	free
	xor	eax, eax
	jmp	.label_288
.label_291:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_289
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_290:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_288
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_289
.label_288:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_289:
	mov	rbp, rbp
	call	xalloc_die
.label_292:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405880
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
	je	.label_293
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_294
.label_293:
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
.label_294:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058e0
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
	jb	.label_295
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_295
	pop	rcx
	ret	
.label_295:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405910

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
	je	.label_297
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_296
.label_297:
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
.label_296:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405970
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
	je	.label_298
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_299
.label_298:
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
.label_299:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4059d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405a20

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_309
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_300:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_300
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsp + 8]
	cmovne	rsi, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r13d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_306
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	edx, r12d
	call	__strtoul_internal
	nop	
	mov	rcx, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx]
	nop	
	cmp	r12, rbx
	nop	
	je	.label_319
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_322
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_306
	mov	dword ptr [rsp + 4], 1
.label_322:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_303
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_306
.label_319:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_306
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_306
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	mov	rsp, rsp
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_306
.label_303:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_324
	lea	rdi, [rdi]
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, r13d
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_302
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_305
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_305
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	test	rax, rax
	mov	rsp, rsp
	je	.label_305
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_311
	cmp	eax, 0x44
	nop	
	je	.label_311
	cmp	eax, 0x69
	jne	.label_305
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_316
	lea	rdi, [rdi]
	mov	ecx, 1
.label_316:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_305
.label_324:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_317
.label_311:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_305:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_323
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_325
	jmp	qword ptr [word ptr [+ (rax * 8) + label_301]]
.label_375:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_304
.label_323:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_308
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_312
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_314]]
.label_403:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_304:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_315
.label_325:
	cmp	r13d, 0x54
	nop	
	je	.label_318
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_302
	nop	
	mov	rdi, -1
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	lea	rsi, [rsi]
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	r14b, r14b
	mov	rbp, rbx
	lea	rdi, [rdi]
	imul	rbp, rsi
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	lea	rsi, [rsi]
	and	dl, 1
	lea	rdi, [rdi]
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_320
.label_308:
	cmp	r13d, 0x74
	je	.label_318
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_302
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	rdx, -1
	nop	
	cmovns	rdx, rax
	lea	rdi, [rdi]
	shr	rbp, 0x3f
	lea	rsi, [rsi]
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_315
.label_377:
	nop	
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	lea	rdi, [rdi]
	imul	rsi, rbp
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_326
.label_378:
	mov	rdi, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	nop	
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	nop	
	jmp	.label_310
.label_379:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	nop	
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbx
	nop	
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_313
.label_318:
	mov	rsp, rsp
	mov	r9, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rbx, r9
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	bl, bl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_321
.label_312:
	cmp	r13d, 0x5a
	jne	.label_302
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rbx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	nop	
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	mov	rbp, rbp
	imul	rsi, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	lea	rsi, [rsi]
	or	dl, bl
.label_320:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_310
.label_302:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_306
.label_376:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	mov	rsp, rsp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r9b, r9b
	nop	
	mov	rbx, rbp
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	bpl, bpl
	lea	rsi, [rsi]
	imul	rsi, rbx
	cmp	rax, rbx
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	nop	
	jmp	.label_313
.label_380:
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rdi, [rdi]
	or	dl, r9b
.label_321:
	or	dl, r10b
.label_326:
	lea	rsi, [rsi]
	or	dl, bl
.label_313:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_310:
	mov	rsp, rsp
	mov	rbp, rsi
.label_315:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_307
	or	eax, 2
.label_307:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_317:
	mov	qword ptr [rax], rbp
.label_306:
	nop	
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_309:
	mov	edi, OFFSET FLAT:.str_5
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_327
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_328
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
	je	.label_328
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
.label_327:
	mov	ecx, 1
.label_328:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406350

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
	je	.label_329
	nop	
	cmp	r15, -2
	jb	.label_329
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_329
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_329:
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
	#Procedure 0x4063e0

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
	jne	.label_330
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_331
	test	cl, cl
	mov	rsp, rsp
	jne	.label_331
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_331
.label_330:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_331
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_331:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406470

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
	je	.label_333
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_332
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_334
.label_332:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_333
.label_334:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_333:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4064c0

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
	mov	ecx, OFFSET FLAT:.str_1
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_335
	nop	
	mov	rax, rcx
.label_335:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406500

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
	js	.label_336
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_338
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
	je	.label_336
.label_338:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_336
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_337
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_337:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_336:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4065b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_339
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_339
	test	byte ptr [rbx + 1], 1
	je	.label_339
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_339:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4065f0

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
	jne	.label_340
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_340
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_341
.label_340:
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
.label_341:
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
	je	.label_342
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_342:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x4066a0

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
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]