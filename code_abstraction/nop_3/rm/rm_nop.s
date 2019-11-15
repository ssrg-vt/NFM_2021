	.section	.text
	.align	32
	#Procedure 0x401a80

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	lea	rsi, [rsi]
	test	ebp, ebp
	nop	
	jne	.label_7
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.11
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.44
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	mov	edi, 5
	lea	rsi, [rsi]
	xor	esi, esi
	call	setlocale
	test	rax, rax
	mov	rsp, rsp
	je	.label_8
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_8
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.47
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.12
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.12
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.50
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
.label_7:
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__fprintf_chk
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401de0

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r15, rsi
	mov	ebp, edi
	nop	
	mov	rdi, qword ptr [r15]
	mov	rsp, rsp
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	mov	edi, OFFSET FLAT:.str.14
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15
	nop	
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	mov	rsp, rsp
	call	atexit
	mov	byte ptr [rsp + 0xa8], 0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xac], 4
	mov	byte ptr [rsp + 0xb0], 0
	mov	byte ptr [rsp + 0xb2], 0
	mov	byte ptr [rsp + 0xb1], 0
	mov	qword ptr [rsp + 0xb8], 0
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc0], 0
	xor	r12d, r12d
	xor	edi, edi
	nop	
	call	isatty
	test	eax, eax
	setne	byte ptr [rsp + 0xc1]
	mov	byte ptr [rsp + 0xc2], 0
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r13b, 1
	lea	rsi, [rsi]
	jmp	.label_40
	nop	
.label_12:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xac], 3
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xa8], 0
.label_40:
	xor	r14d, r14d
	jmp	.label_11
	nop	
.label_9:
	mov	dword ptr [rsp + 0xac], 5
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xa8], 1
	mov	rbp, rbp
	mov	r14b, 1
.label_11:
	xor	ebx, ebx
	jmp	.label_18
.label_28:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xb1], 1
	mov	r12b, 1
	nop	
.label_18:
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.16
	nop	
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	mov	rsp, rsp
	cmp	eax, 0x68
	jle	.label_16
	lea	ecx, [rax - 0x76]
	nop	
	cmp	ecx, 0xe
	mov	rbp, rbp
	ja	.label_20
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_22]]
.label_988:
	mov	byte ptr [rsp + 0xc2], 1
	lea	rdi, [rdi]
	jmp	.label_18
	nop	word ptr cs:[rax + rax]
.label_16:
	cmp	eax, 0x51
	jle	.label_26
	mov	rsp, rsp
	cmp	eax, 0x52
	lea	rsi, [rsi]
	je	.label_28
	lea	rsi, [rsi]
	cmp	eax, 0x64
	jne	.label_29
	mov	byte ptr [rsp + 0xb2], 1
	jmp	.label_18
.label_26:
	cmp	eax, 0x48
	jle	.label_35
	lea	rsi, [rsi]
	cmp	eax, 0x49
	jne	.label_10
.label_15:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xac], 4
	mov	byte ptr [rsp + 0xa8], 0
	mov	bl, 1
	xor	r14d, r14d
	jmp	.label_18
.label_20:
	lea	rdi, [rdi]
	cmp	eax, 0x69
	nop	
	je	.label_12
	mov	rbp, rbp
	cmp	eax, 0x72
	je	.label_28
	jmp	.label_10
.label_989:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_12
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.17_0
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:interactive_args
	nop	
	mov	ecx, OFFSET FLAT:interactive_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + interactive_types]]
	nop	
	cmp	eax, 2
	je	.label_12
	cmp	eax, 1
	je	.label_15
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_18
	nop	
	jmp	.label_21
.label_990:
	mov	byte ptr [rsp + 0xb0], 1
	jmp	.label_18
.label_991:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r15 + rax*8 - 8]
	mov	esi, OFFSET FLAT:.str.18_0
	call	strcmp
	mov	rsp, rsp
	xor	r13d, r13d
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_18
	jmp	.label_31
.label_992:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	mov	r13b, 1
	lea	rsi, [rsi]
	je	.label_18
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x61
	jne	.label_38
	nop	
	movzx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0x6c
	jne	.label_38
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	ecx, 0x6c
	mov	rbp, rbp
	jne	.label_38
	nop	
	cmp	byte ptr [rax + 3], 0
	lea	rsi, [rsi]
	jne	.label_38
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc0], 1
	mov	r13b, 1
	lea	rdi, [rdi]
	jmp	.label_18
.label_993:
	mov	byte ptr [rsp + 0xc1], 1
	jmp	.label_18
	nop	dword ptr [rax + rax]
.label_29:
	cmp	eax, 0x66
	je	.label_9
	jmp	.label_10
.label_21:
	mov	dword ptr [rsp + 0xac], 5
	jmp	.label_11
.label_35:
	mov	ecx, r14d
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_13
	mov	r14d,  dword ptr [dword ptr [rip + optind]]
	cmp	r14d, ebp
	lea	rdi, [rdi]
	jge	.label_17
	nop	
	test	r13b, r13b
	je	.label_23
	mov	rsp, rsp
	test	r12b, r12b
	je	.label_23
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	test	rax, rax
	nop	
	je	.label_25
	lea	rdi, [rdi]
	mov	r14d,  dword ptr [dword ptr [rip + optind]]
.label_23:
	test	bl, bl
	je	.label_37
	sub	ebp, r14d
	cmp	ebp, 3
	lea	rdi, [rdi]
	ja	.label_34
	nop	
	test	r12b, r12b
	je	.label_37
.label_34:
	mov	rbp, rbp
	movsxd	rbp, ebp
	lea	rsi, [rsi]
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r12b, r12b
	je	.label_36
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.30
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.31
	jmp	.label_42
.label_17:
	xor	ebx, ebx
	test	cl, cl
	jne	.label_30
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_13:
	mov	rbp, rbp
	cmp	eax, 0xffffff7d
	lea	rdi, [rdi]
	je	.label_27
	mov	rbp, rbp
	cmp	eax, 0xffffff7e
	je	.label_14
.label_10:
	lea	rsi, [rsi]
	cmp	ebp, 2
	jl	.label_19
	mov	rbp, rbp
	movsxd	r12, ebp
	lea	rdi, [rdi]
	mov	ebx, 1
	mov	rbp, rbp
	lea	r14, [rsp + 0x18]
	nop	dword ptr [rax]
.label_33:
	mov	rbp, qword ptr [r15 + rbx*8]
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	jne	.label_24
	cmp	byte ptr [rbp + 1], 0
	je	.label_24
	mov	edi, 1
	mov	rsi, rbp
	nop	
	mov	rdx, r14
	lea	rdi, [rdi]
	call	__lxstat
	test	eax, eax
	je	.label_32
.label_24:
	inc	rbx
	nop	
	cmp	rbx, r12
	jl	.label_33
.label_19:
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_32:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	nop	
	mov	r12, rax
	mov	r15, qword ptr [r15]
	nop	
	mov	edi, 1
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	quotearg_n_style
	nop	
	mov	rbx, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	quotearg_style
	mov	rsp, rsp
	mov	rbp, rax
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	mov	rbp, rbp
	mov	r9, rbp
	nop	
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_36:
	mov	esi, OFFSET FLAT:.str.32
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.33
.label_42:
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rcx, rbp
	call	dcngettext
	mov	rsp, rsp
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	xor	ebx, ebx
	nop	
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	r8, rbp
	call	__fprintf_chk
	call	yesno
	test	al, al
	nop	
	je	.label_30
.label_37:
	movsxd	rax, r14d
	lea	rdi, [rdi]
	lea	rdi, [r15 + rax*8]
	mov	rsp, rsp
	lea	rsi, [rsp + 0xa8]
	call	rm
	lea	rdi, [rdi]
	cmp	eax, 4
	lea	rsi, [rsi]
	je	.label_39
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	or	ecx, 1
	lea	rsi, [rsi]
	cmp	ecx, 3
	lea	rdi, [rdi]
	jne	.label_41
.label_39:
	lea	rsi, [rsi]
	cmp	eax, 4
	lea	rdi, [rdi]
	sete	al
	nop	
	movzx	ebx, al
.label_30:
	mov	eax, ebx
	add	rsp, 0xc8
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_27:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 0x10], 0
	nop	
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.26
	mov	rbp, rbp
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.23
	lea	rsi, [rsi]
	mov	r9d, OFFSET FLAT:.str.24
	mov	rbp, rbp
	xor	eax, eax
	call	version_etc
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	call	exit
.label_14:
	mov	rbp, rbp
	xor	edi, edi
	nop	
	call	usage
.label_38:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
.label_31:
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_41:
	mov	edi, OFFSET FLAT:.str.34
	nop	
	mov	esi, OFFSET FLAT:.str.35
	mov	rsp, rsp
	mov	edx, 0x173
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	nop	
	call	__assert_fail
.label_25:
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402540

	.globl rm
	.type rm, @function
rm:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r12, rsi
	mov	ebx, 2
	lea	rsi, [rsi]
	cmp	qword ptr [rdi], 0
	je	.label_65
	lea	rdi, [rdi]
	mov	esi, 0x218
	cmp	byte ptr [r12 + 8], 0
	lea	rsi, [rsi]
	je	.label_63
	mov	rsp, rsp
	mov	esi, 0x258
.label_63:
	xor	edx, edx
	call	xfts_open
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rdi, rax
	lea	rsi, [rsi]
	call	rpl_fts_read
	mov	rbp, rbp
	mov	r13, rax
	mov	ebx, 2
	test	r13, r13
	nop	
	je	.label_70
	mov	r15d, 2
	jmp	.label_44
.label_71:
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_75
	mov	rcx, qword ptr [r13 + 0x80]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rax]
	jne	.label_75
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r13 + 0x78]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_75
	nop	
	mov	rax, qword ptr [r13 + 0x38]
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_80
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 1], 0
	je	.label_51
.label_80:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.10_0
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	r14, rax
	mov	rbp, rbp
	mov	rdx, qword ptr [r13 + 0x38]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	nop	
	call	quotearg_n_style
	mov	rbp, rax
	nop	
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	nop	
	call	error
	lea	rdi, [rdi]
	jmp	.label_48
.label_75:
	cmp	byte ptr [r12 + 0x18], 0
	mov	rbp, rbp
	je	.label_67
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2_0
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, rbx
	call	file_name_concat
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_73
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rdx, [rsp + 0x28]
	call	__lxstat
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_77
.label_73:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	qword ptr [rsp + 0x18], rax
	mov	rdx, qword ptr [r13 + 0x30]
	mov	edi, 1
	mov	esi, 4
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	jmp	.label_45
.label_47:
	mov	ebx, 0x27
	cmp	byte ptr [r12 + 0xa], 0
	mov	rsp, rsp
	jne	.label_58
	mov	ebx, 0x15
.label_58:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rsi, qword ptr [r13 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rax, qword ptr [r13 + 8]
	lea	rsi, [rsi]
	jmp	.label_72
	nop	word ptr cs:[rax + rax]
.label_78:
	mov	qword ptr [rax + 0x20], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
.label_72:
	cmp	qword ptr [rax + 0x58], 0
	lea	rdi, [rdi]
	js	.label_45
	cmp	qword ptr [rax + 0x20], 0
	je	.label_78
.label_45:
	mov	rsp, rsp
	mov	ebp, 4
	mov	edx, 4
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r13
	lea	rsi, [rsi]
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	xor	r14d, r14d
	jmp	.label_46
.label_77:
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0x28]
	jne	.label_52
.label_67:
	mov	rax, qword ptr [rsp + 8]
	mov	edi, dword ptr [rax + 0x2c]
	mov	edx, 1
	lea	rsi, [rsi]
	mov	r8d, 2
	mov	rsi, r13
	mov	rcx, r12
	lea	r9, [rsp + 0x28]
	mov	rbp, rbp
	call	prompt
	mov	rbp, rbp
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_64
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x28], 4
	mov	rbp, rbp
	jne	.label_64
	mov	ecx, 1
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r13
	mov	rdx, r12
	lea	rdi, [rdi]
	call	excise
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	edx, 4
	nop	
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r13
	mov	rsp, rsp
	call	rpl_fts_set
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	rpl_fts_read
.label_64:
	mov	rsp, rsp
	cmp	ebp, 2
	je	.label_53
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 8]
	nop	
	jmp	.label_49
	nop	word ptr cs:[rax + rax]
.label_43:
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_49:
	nop	
	cmp	qword ptr [rax + 0x58], 0
	js	.label_82
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_43
.label_82:
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, rbx
	mov	rsi, r13
	lea	rdi, [rdi]
	call	rpl_fts_set
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_fts_read
	jmp	.label_53
.label_52:
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r13 + 0x38]
	mov	edi, 4
	nop	
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.14_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	jmp	.label_45
.label_51:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r13 + 0x38]
	mov	rsp, rsp
	mov	edi, 4
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	nop	
	call	error
.label_48:
	xor	r14d, r14d
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.11_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	
	jmp	.label_57
	nop	word ptr cs:[rax + rax]
.label_44:
	movzx	eax, word ptr [r13 + 0x70]
	lea	ecx, [rax - 1]
	lea	rsi, [rsi]
	cmp	ecx, 0xc
	nop	
	ja	.label_55
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_59]]
.label_1040:
	movzx	ecx, ax
	cmp	ecx, 6
	jne	.label_61
	mov	rbp, rbp
	cmp	byte ptr [r12 + 8], 0
	lea	rdi, [rdi]
	je	.label_61
	cmp	qword ptr [r13 + 0x58], 0
	mov	rbp, rbp
	jle	.label_61
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 8]
	cmp	rcx, qword ptr [rdx + 0x18]
	jne	.label_81
	nop	dword ptr [rax + rax]
.label_61:
	or	eax, 2
	movzx	ebx, ax
	cmp	ebx, 6
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 8]
	nop	
	mov	edi, dword ptr [rcx + 0x2c]
	lea	rdi, [rdi]
	movzx	edx, al
	lea	rdi, [rdi]
	mov	r8d, 3
	mov	rsp, rsp
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rcx, r12
	call	prompt
	mov	rbp, rbp
	mov	ebp, eax
	lea	rdi, [rdi]
	cmp	ebp, 2
	jne	.label_53
	lea	rdi, [rdi]
	cmp	ebx, 6
	mov	rbp, rbp
	sete	al
	movzx	ecx, al
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	lea	rdi, [rdi]
	call	excise
	mov	ebp, eax
.label_53:
	cmp	ebp, 3
	sete	r14b
	cmp	ebp, 4
	sete	al
	mov	rbp, rbp
	je	.label_46
	nop	
	mov	ecx, ebp
	nop	
	or	ecx, 1
	nop	
	cmp	ecx, 3
	je	.label_46
	lea	rsi, [rsi]
	jmp	.label_54
.label_1038:
	cmp	byte ptr [r12 + 9], 0
	lea	rdi, [rdi]
	jne	.label_56
	mov	ebx, 0x15
	cmp	byte ptr [r12 + 0xa], 0
	je	.label_58
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	mov	edi, dword ptr [rax + 0x2c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r13 + 0x30]
	nop	
	call	is_empty_dir
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_47
.label_56:
	nop	
	cmp	qword ptr [r13 + 0x58], 0
	jne	.label_67
	mov	rsp, rsp
	mov	rbx, qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	last_component
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	lea	rsi, [rsi]
	jne	.label_71
	movzx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	cmp	ecx, 0x2e
	mov	rbp, rbp
	mov	ecx, 2
	lea	rsi, [rsi]
	je	.label_66
	mov	rsp, rsp
	mov	ecx, 1
.label_66:
	movzx	eax, byte ptr [rax + rcx]
	cmp	eax, 0x2f
	je	.label_76
	test	al, al
	nop	
	jne	.label_71
.label_76:
	xor	r14d, r14d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	ebp, 4
	xor	edi, edi
	nop	
	mov	esi, 4
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_3
	mov	rbp, rbp
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	mov	edi, 1
	mov	esi, 4
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.2_0
	nop	
	call	quotearg_n_style
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	mov	rdx, qword ptr [r13 + 0x38]
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, 4
	call	quotearg_n_style
	nop	
	mov	rbx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, rbx
	lea	rsi, [rsi]
	call	error
	jmp	.label_69
.label_1039:
	lea	rdi, [rdi]
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r13 + 0x38]
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	jmp	.label_74
.label_1041:
	mov	rbp, rbp
	mov	ebx, dword ptr [r13 + 0x40]
	mov	rsp, rsp
	xor	r14d, r14d
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.16_0
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r13 + 0x38]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	nop	
	mov	rdx, rbp
.label_74:
	nop	
	call	error
.label_57:
	mov	rsp, rsp
	mov	ebp, 4
.label_69:
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, rbx
	nop	
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, rbx
	nop	
	call	rpl_fts_read
	lea	rdi, [rdi]
	jmp	.label_60
.label_81:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_62
	nop	word ptr [rax + rax]
.label_68:
	mov	qword ptr [rax + 0x20], 1
	nop	
	mov	rax, qword ptr [rax + 8]
.label_62:
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	js	.label_79
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_68
.label_79:
	lea	rsi, [rsi]
	xor	r14d, r14d
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r13 + 0x38]
	mov	ebp, 4
	mov	rbp, rbp
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rbx
	nop	
	call	error
.label_60:
	mov	rsp, rsp
	mov	al, 1
.label_46:
	lea	rsi, [rsi]
	test	r14b, r14b
	mov	ebx, r15d
	cmovne	ebx, ebp
	nop	
	cmp	r15d, 2
	mov	rbp, rbp
	cmovne	ebx, r15d
	lea	rsi, [rsi]
	test	al, al
	cmovne	ebx, ebp
	nop	
	mov	rdi, qword ptr [rsp + 8]
	call	rpl_fts_read
	mov	r13, rax
	test	r13, r13
	lea	rdi, [rdi]
	mov	r15d, ebx
	jne	.label_44
.label_70:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	nop	
	test	ebp, ebp
	lea	rsi, [rsi]
	je	.label_50
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	error
	lea	rsi, [rsi]
	mov	ebx, 4
.label_50:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	call	rpl_fts_close
	nop	
	test	eax, eax
	je	.label_65
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3_0
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	call	error
	mov	ebx, 4
.label_65:
	mov	eax, ebx
	mov	rsp, rsp
	add	rsp, 0xb8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_1
	mov	edx, 5
	call	dcgettext
	nop	
	mov	r14, rax
	movzx	ebp, word ptr [r13 + 0x70]
	mov	rsp, rsp
	mov	rdx, qword ptr [r13 + 0x38]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	r9d, OFFSET FLAT:.str.15_0
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, r14
	mov	ecx, ebp
	lea	rdi, [rdi]
	mov	r8, rbx
	call	error
	lea	rsi, [rsi]
	call	abort
.label_54:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.1_0
	mov	esi, OFFSET FLAT:.str.2_1
	nop	
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.rm
	mov	rsp, rsp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f70

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	edx, 0x30900
	lea	rsi, [rsi]
	xor	eax, eax
	call	openat
	nop	
	mov	ebp, eax
	test	ebp, ebp
	js	.label_84
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	nop	
	je	.label_89
	call	__errno_location
	nop	
	mov	r14, rax
	mov	rsp, rsp
	mov	dword ptr [r14], 0
.label_83:
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	readdir
	mov	rbp, rbp
	test	rax, rax
	je	.label_85
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 0x13]
	cmp	ecx, 0x2e
	jne	.label_87
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 0x14]
	cmp	ecx, 0x2e
	mov	rbp, rbp
	mov	ecx, 2
	je	.label_88
	lea	rdi, [rdi]
	mov	ecx, 1
.label_88:
	movzx	ecx, byte ptr [rax + rcx + 0x13]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	cmove	rax, rbp
	lea	rdi, [rdi]
	test	cl, cl
	mov	rsp, rsp
	cmovne	rbp, rax
	mov	rsp, rsp
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	je	.label_83
	test	cl, cl
	mov	rbp, rbp
	je	.label_83
	mov	rbp, rbp
	mov	r14d, dword ptr [r14]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	closedir
	test	rbp, rbp
	je	.label_86
	xor	ebx, ebx
	nop	
	jmp	.label_84
.label_89:
	lea	rdi, [rdi]
	mov	edi, ebp
	call	close
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_84
.label_85:
	nop	
	mov	r14d, dword ptr [r14]
	mov	rsp, rsp
	mov	rdi, rbx
	call	closedir
.label_86:
	test	r14d, r14d
	lea	rsi, [rsi]
	sete	bl
	jmp	.label_84
.label_87:
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	closedir
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_84:
	mov	al, bl
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030a0

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	r13
	nop	
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xb8
	nop	
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb4], r8d
	lea	rsi, [rsi]
	mov	r14, rcx
	mov	r12d, edx
	mov	r15, rsi
	mov	rsi, qword ptr [r15 + 0x30]
	nop	
	mov	rax, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_113
	mov	dword ptr [rbx], 2
	mov	qword ptr [rsp + 0x38], -1
	movzx	r13d, r12b
	mov	rbp, rbp
	shl	r13d, 2
	mov	dword ptr [rsp + 0x9c], edi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rsi
	call	is_empty_dir
	mov	bpl, al
	movzx	eax, bpl
	add	eax, 3
	lea	rdi, [rdi]
	mov	dword ptr [rbx], eax
	jmp	.label_92
.label_113:
	mov	qword ptr [rsp + 0xa8], rsi
	mov	dword ptr [rsp + 0x9c], edi
	mov	qword ptr [rsp + 0x38], -1
	nop	
	movzx	r13d, r12b
	lea	rdi, [rdi]
	shl	r13d, 2
	lea	rdi, [rdi]
	xor	ebp, ebp
.label_92:
	mov	ebx, 3
	cmp	qword ptr [r15 + 0x20], 0
	jne	.label_94
	mov	ecx, dword ptr [r14 + 4]
	cmp	ecx, 5
	nop	
	je	.label_100
	mov	rdx, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rax, rdx
	shr	rax, 0x20
	mov	rbp, rbp
	xor	esi, esi
	test	dl, dl
	je	.label_104
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_109
.label_104:
	lea	rdi, [rdi]
	cmp	ecx, 3
	nop	
	je	.label_112
	cmp	byte ptr [r14 + 0x19], 0
	mov	rbp, rbp
	mov	r15d, 0
	je	.label_109
.label_112:
	call	can_write_any_file
	test	al, al
	mov	rsp, rsp
	jne	.label_97
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, -1
	mov	rsp, rsp
	jne	.label_119
	lea	rsi, [rsi]
	lea	rcx, [rsp + 8]
	mov	rsp, rsp
	mov	edi, 1
	mov	r8d, 0x100
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x9c]
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	call	__fxstatat
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_90
	mov	qword ptr [rsp + 0x38], -2
	mov	rbp, rbp
	call	__errno_location
	movsxd	r15, dword ptr [rax]
	mov	qword ptr [rsp + 0x10], r15
	lea	rsi, [rsi]
	jmp	.label_93
.label_90:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
.label_119:
	test	rax, rax
	mov	rbp, rbp
	js	.label_95
	mov	eax, 0xf000
	mov	rbp, rbp
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0xa000
	je	.label_97
	mov	edx, 2
	mov	ecx, 0x200
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0x9c]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xa8]
	call	faccessat
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_97
	call	__errno_location
	mov	esi, 1
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0xd
	je	.label_108
	mov	rbp, rbp
	mov	esi, 0xffffffff
.label_108:
	mov	rsp, rsp
	mov	r15d, dword ptr [rax]
	lea	rsi, [rsi]
	jmp	.label_114
.label_97:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	eax, dword ptr [r14 + 4]
	lea	rsi, [rsi]
	xor	esi, esi
.label_109:
	cmp	eax, 3
	mov	rbp, rbp
	jne	.label_100
	lea	rsi, [rsi]
	jmp	.label_114
.label_95:
	nop	
	mov	r15, qword ptr [rsp + 0x10]
	call	__errno_location
.label_93:
	mov	dword ptr [rax], r15d
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	r15d, dword ptr [rax]
.label_114:
	mov	rbp, rbp
	test	esi, esi
	js	.label_121
	xor	r12b, 1
	je	.label_121
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, -1
	jne	.label_122
	mov	r12d, esi
	lea	rcx, [rsp + 8]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	r8d, 0x100
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x9c]
	mov	rdx, qword ptr [rsp + 0xa8]
	call	__fxstatat
	mov	rbp, rbp
	test	eax, eax
	je	.label_96
	mov	qword ptr [rsp + 0x38], -2
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	movsxd	r15, dword ptr [rax]
	mov	qword ptr [rsp + 0x10], r15
	lea	rdi, [rdi]
	mov	dword ptr [rax], r15d
	jmp	.label_98
.label_96:
	mov	rax, qword ptr [rsp + 0x38]
	mov	esi, r12d
.label_122:
	test	rax, rax
	js	.label_101
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	r12d, 0xa
	lea	rdi, [rdi]
	cmp	eax, 0xa000
	nop	
	je	.label_99
	cmp	eax, 0x4000
	nop	
	mov	eax, 4
	cmove	r13d, eax
.label_121:
	mov	rbp, rbp
	mov	r12d, r13d
.label_99:
	mov	rsp, rsp
	test	esi, esi
	js	.label_98
	nop	
	cmp	r12d, 4
	je	.label_116
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rsi, [rsi]
	jne	.label_117
	nop	
	cmp	dword ptr [r14 + 4], 3
	jne	.label_100
	jmp	.label_117
.label_116:
	mov	rbp, rbp
	cmp	byte ptr [r14 + 9], 0
	mov	rbp, rbp
	jne	.label_117
	cmp	byte ptr [r14 + 0xa], 0
	je	.label_120
	mov	r15d, 0x15
	mov	al, bpl
	mov	rbp, rbp
	xor	al, 1
	lea	rsi, [rsi]
	jne	.label_98
.label_117:
	mov	rsp, rsp
	mov	r15d, esi
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	call	quotearg_style
	nop	
	mov	r14, rax
	cmp	r12d, 4
	setne	al
	cmp	dword ptr [rsp + 0xb4], 2
	setne	cl
	or	cl, al
	or	bpl, cl
	je	.label_91
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, -1
	jne	.label_102
	mov	rsp, rsp
	lea	rcx, [rsp + 8]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0x9c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	call	__fxstatat
	test	eax, eax
	mov	rsp, rsp
	je	.label_105
	mov	qword ptr [rsp + 0x38], -2
	call	__errno_location
	mov	rbp, rbp
	movsxd	rbx, dword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rbx
	lea	rdi, [rdi]
	jmp	.label_110
.label_91:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	test	r15d, r15d
	je	.label_115
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.19_0
	lea	rdi, [rdi]
	jmp	.label_118
.label_101:
	mov	r15, qword ptr [rsp + 0x10]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], r15d
.label_98:
	lea	rsi, [rsi]
	mov	ebx, 4
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xa0]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r15d
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rcx, rbp
	nop	
	call	error
	mov	rbp, rbp
	jmp	.label_94
.label_115:
	mov	esi, OFFSET FLAT:.str.20
.label_118:
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	mov	r8, r14
	call	__fprintf_chk
	lea	rsi, [rsi]
	jmp	.label_103
.label_105:
	nop	
	mov	rax, qword ptr [rsp + 0x38]
.label_102:
	lea	rsi, [rsi]
	test	rax, rax
	js	.label_106
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	test	r15d, r15d
	je	.label_107
	mov	rsp, rsp
	mov	r15, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.21_0
	jmp	.label_111
.label_106:
	mov	rbx, qword ptr [rsp + 0x10]
	nop	
	call	__errno_location
.label_110:
	mov	rbp, rbp
	mov	dword ptr [rax], ebx
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.4_0
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rcx, r14
	mov	rbp, rbp
	call	error
	mov	rsp, rsp
	mov	ebx, 4
	jmp	.label_94
.label_107:
	mov	rsp, rsp
	mov	r15, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.22
.label_111:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r12, rax
	mov	r13,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rsp + 8]
	call	file_type
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbp
	mov	r9, r14
	call	__fprintf_chk
.label_103:
	call	yesno
	mov	rsp, rsp
	test	al, al
	je	.label_94
.label_100:
	mov	ebx, 2
.label_94:
	mov	eax, ebx
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	nop	
	ret	
.label_120:
	mov	rsp, rsp
	mov	r15d, 0x15
	jmp	.label_98
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403690

	.globl excise
	.type excise, @function
excise:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	ebp, ecx
	mov	r13, rdx
	mov	r15, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rsp, rsp
	movzx	edx, bpl
	lea	rdi, [rdi]
	shl	edx, 9
	mov	edi, dword ptr [rbx + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	lea	rsi, [rsi]
	call	unlinkat
	test	eax, eax
	je	.label_129
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12, rax
	mov	ebp, dword ptr [r12]
	cmp	ebp, 0x1e
	jne	.label_133
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x30]
	lea	rcx, [rsp + 8]
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	r8d, 0x100
	nop	
	call	__fxstatat
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_130
	nop	
	cmp	dword ptr [r12], 2
	je	.label_132
.label_130:
	mov	rbp, rbp
	mov	dword ptr [r12], 0x1e
.label_132:
	mov	ebp, dword ptr [r12]
.label_133:
	cmp	byte ptr [r13], 0
	mov	rbp, rbp
	je	.label_135
	nop	
	mov	r14d, 2
	mov	rbp, rbp
	cmp	ebp, 0x16
	mov	rbp, rbp
	ja	.label_124
	mov	rbp, rbp
	mov	eax, 0x500004
	bt	eax, ebp
	jb	.label_128
.label_124:
	cmp	ebp, 0x54
	je	.label_128
.label_135:
	nop	
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 4
	mov	rsp, rsp
	jne	.label_126
	mov	rsp, rsp
	mov	eax, ebp
	lea	rdi, [rdi]
	cmp	ebp, 0x27
	ja	.label_126
	mov	rsp, rsp
	movabs	rcx, 0x8000320000
	nop	
	bt	rcx, rax
	jae	.label_126
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0xd
	mov	rbp, rbp
	je	.label_131
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_126
.label_131:
	nop	
	mov	dword ptr [r12], eax
	lea	rdi, [rdi]
	mov	ebp, eax
.label_126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x38]
	mov	r14d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rbp, rbp
	mov	rdx, rbx
	call	error
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_123
	nop	
.label_134:
	mov	qword ptr [rax + 0x20], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
.label_123:
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	js	.label_128
	nop	
	cmp	qword ptr [rax + 0x20], 0
	je	.label_134
	lea	rsi, [rsi]
	jmp	.label_128
.label_129:
	mov	r14d, 2
	cmp	byte ptr [r13 + 0x1a], 0
	je	.label_128
	xor	edi, edi
	test	bpl, bpl
	je	.label_125
	mov	esi, OFFSET FLAT:.str.23_0
	mov	rsp, rsp
	jmp	.label_127
.label_125:
	mov	esi, OFFSET FLAT:.str.24_0
.label_127:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	mov	rbp, rbp
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_128:
	mov	eax, r14d
	mov	rbp, rbp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038c0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x4038d0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_139
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	je	.label_144
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	rbp, rbp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_143:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_140
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, r12
	lea	rsi, [rsi]
	je	.label_141
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_142
	mov	rdi, rax
	mov	rsp, rsp
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r13
	mov	rbp, rbp
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_140
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_140
.label_142:
	mov	qword ptr [rsp + 0x18], rbx
	nop	dword ptr [rax + rax]
.label_140:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	lea	rsi, [rsi]
	add	r14, r13
	test	rbp, rbp
	jne	.label_143
	nop	
	jmp	.label_138
.label_139:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], -1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	jmp	.label_138
.label_144:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_136:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_137
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	nop	
	cmp	rax, r12
	je	.label_141
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, -1
	nop	
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x18], rax
	je	.label_137
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_137:
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	nop	
	jne	.label_136
.label_138:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 0x18]
.label_141:
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ad0
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_145
	mov	esi, OFFSET FLAT:.str.1_1
	nop	
	jmp	.label_146
.label_145:
	nop	
	mov	esi, OFFSET FLAT:.str_4
.label_146:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x403b70

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx]
	nop	
	test	rbx, rbx
	je	.label_152
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_148:
	test	r15, r15
	mov	rbp, rbp
	je	.label_147
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_151
.label_147:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_150
	nop	dword ptr [rax]
.label_151:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_150:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_148
.label_152:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_149
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_149:
	mov	rsp, rsp
	mov	esi, 0xa
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cf0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_155
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_153
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	jmp	.label_154
.label_153:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_4
.label_154:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 8
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style
	nop	
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	argmatch_valid
	mov	rsp, rsp
	call	rbx
	mov	rbp, rbp
	mov	rax, -1
.label_155:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e10
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_156
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_157:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_156
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_157
.label_156:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ea0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	nop
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403eb0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	mov	rsp, rsp
	push	r14
	nop	
	push	rbx
	nop	
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	mov	rbp, rbp
	je	.label_159
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fseeko
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_159
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	setne	bpl
.label_159:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	nop	
	jne	.label_161
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_161
	pop	rbx
	pop	r14
	pop	rbp
	mov	rsp, rsp
	jmp	close_stdout
.label_161:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_160
	xor	edi, edi
	nop	
	mov	edx, OFFSET FLAT:.str_5
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_158
.label_160:
	nop	
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
.label_158:
	call	close_stdout
	nop	
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x403fc0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403fd0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fe0

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
	je	.label_165
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_162
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_162
.label_165:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_164
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_162:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_7
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name_0]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_163
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_5
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
.label_164:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_163:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040e0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_166:
	nop	
	movzx	edx, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	edx, 0x2f
	mov	rbp, rbp
	je	.label_166
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_167
	nop	dword ptr [rax + rax]
.label_168:
	mov	dl, byte ptr [rax + 1]
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	mov	r8b, cl
.label_167:
	mov	cl, 1
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0x2f
	je	.label_168
	mov	rsp, rsp
	test	dl, dl
	mov	rbp, rbp
	je	.label_170
	mov	cl, r8b
	mov	rsp, rsp
	and	cl, 1
	je	.label_169
	xor	r8d, r8d
.label_169:
	lea	rsi, [rsi]
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	nop	
	jmp	.label_168
.label_170:
	mov	rsp, rsp
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404160

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_172:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_171
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_172
.label_171:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041a0

	.globl file_type
	.type file_type, @function
file_type:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	cmp	eax, 0x5fff
	jle	.label_173
	mov	rsp, rsp
	cmp	eax, 0x9fff
	jg	.label_177
	cmp	eax, 0x6000
	je	.label_180
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	jne	.label_176
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x30], 0
	lea	rsi, [rsi]
	je	.label_174
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	nop	
	jmp	dcgettext
.label_173:
	lea	rsi, [rsi]
	cmp	eax, 0x1000
	mov	rsp, rsp
	je	.label_179
	cmp	eax, 0x2000
	mov	rsp, rsp
	je	.label_175
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_176
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	jmp	dcgettext
.label_177:
	mov	rsp, rsp
	cmp	eax, 0xa000
	je	.label_178
	lea	rsi, [rsi]
	cmp	eax, 0xc000
	jne	.label_176
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	jmp	dcgettext
.label_180:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	jmp	dcgettext
.label_179:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	jmp	dcgettext
.label_175:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	lea	rsi, [rsi]
	mov	edx, 5
	jmp	dcgettext
.label_178:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	nop	
	mov	edx, 5
	jmp	dcgettext
.label_176:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	jmp	dcgettext
.label_174:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_8
	mov	edx, 5
	mov	rbp, rbp
	jmp	dcgettext
	nop	
	.section	.text
	.align	32
	#Procedure 0x4042e0

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_181
	lea	rsi, [rsi]
	pop	rcx
	ret	
.label_181:
	mov	rsp, rsp
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x404300

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	call	base_len
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	sub	rbx, r13
	add	rbx, rbp
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_187
	movzx	ecx, byte ptr [rbx + r13 - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_189
	mov	qword ptr [rsp + 8], r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_183
.label_187:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_188
	jmp	.label_184
.label_189:
	nop	
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_185
.label_184:
	xor	r12d, r12d
	jmp	.label_188
.label_185:
	mov	r12b, 0x2f
.label_188:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
.label_183:
	test	r12b, r12b
	nop	
	setne	cl
	movzx	ebp, cl
	nop	
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	lea	rdi, [rdi]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_182
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	lea	rsi, [rsi]
	add	rbp, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_186
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
.label_186:
	nop	
	mov	rcx, -1
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	nop	
	mov	rax, r14
.label_182:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404450

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
	je	.label_190
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
	jl	.label_192
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_192
	mov	esi, OFFSET FLAT:.str.2_4
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_191
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_191:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_192:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_190:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_9
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
	#Procedure 0x404540
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
	#Procedure 0x404590
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
	#Procedure 0x4045b0
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
	#Procedure 0x4045d0
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
	#Procedure 0x404640
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
	#Procedure 0x404660
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
	je	.label_193
	test	rdx, rdx
	nop	
	je	.label_193
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_193:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4046a0
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
	#Procedure 0x404750

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
.label_317:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_209
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_301]]
.label_1007:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_2
	nop	
	mov	esi, r12d
	mov	r14, r10
	nop	
	mov	r13b, r8b
	mov	bl, dl
	mov	rbp, rbp
	call	gettext_quote
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, OFFSET FLAT:.str.12_1
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
.label_1008:
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
	jne	.label_248
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_248
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_273:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_265
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_265:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_273
.label_248:
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
	jmp	.label_204
.label_1000:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_204
.label_1003:
	lea	rsi, [rsi]
	mov	al, 1
.label_1001:
	lea	rsi, [rsi]
	mov	dl, 1
.label_1004:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_300
	mov	rbp, rbp
	mov	cl, al
.label_300:
	mov	al, cl
.label_1002:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_305
	test	rbp, rbp
	je	.label_311
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_312
.label_305:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_312
.label_1005:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_319
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_194
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_199
.label_1006:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_204
.label_311:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_312:
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_204
.label_319:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_199
.label_194:
	nop	
	mov	r14d, 1
.label_199:
	mov	eax, OFFSET FLAT:.str.10_2
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_204:
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
	jmp	.label_250
	nop	dword ptr [rax]
.label_244:
	mov	rsp, rsp
	inc	r15
.label_250:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_276
	cmp	r15, r10
	jne	.label_296
	jmp	.label_295
	nop	dword ptr [rax]
.label_276:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_298
.label_296:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_217
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_307
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_307
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
.label_307:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_206
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_208
	nop	dword ptr [rax]
.label_217:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_208
	nop	word ptr cs:[rax + rax]
.label_206:
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
	jne	.label_247
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
	je	.label_208
	jmp	.label_233
.label_247:
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
.label_208:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_278
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_279]]
.label_1032:
	test	r15, r15
	jne	.label_246
	jmp	.label_288
.label_1036:
	xor	eax, eax
	cmp	r10, -1
	je	.label_290
	test	r15, r15
	jne	.label_254
	nop	
	cmp	r10, 1
	je	.label_288
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_195
.label_1025:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_297
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_233
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_303
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_303
	cmp	r14, rbp
	jae	.label_310
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_310:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_284
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_284:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_322
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_322:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_303:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_205
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_205:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_215
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_222
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_225
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_231
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_231:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_226
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_226:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_195
.label_1026:
	mov	bl, 0x62
	nop	
	jmp	.label_240
.label_1027:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_251
.label_1028:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_240
.label_1029:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_240
.label_1030:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_251
.label_1033:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_309
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_269
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
	jae	.label_274
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_274:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_289
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_289:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_272
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_272:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_309:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_195
.label_1034:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_304
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_246
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_246
	nop	
	jmp	.label_316
.label_1035:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_318
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_321
	jmp	.label_196
.label_278:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_214
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
	jmp	.label_219
.label_290:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_229
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_229
.label_288:
	mov	dl, 1
.label_1031:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_236
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_195
.label_297:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_244
	jmp	.label_246
.label_318:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_251
.label_321:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_237
.label_251:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_257
.label_240:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_195
	jmp	.label_263
.label_214:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_267
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_267:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_239
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_228:
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
	je	.label_262
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_259
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_249
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_314
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_210:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_202
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_294
.label_202:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_210
.label_314:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_218
	mov	rbp, rbp
	xor	r13d, r13d
.label_218:
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
	je	.label_228
	jmp	.label_203
	nop	
.label_239:
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
	je	.label_255
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_259
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_262
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_270
	xor	r13d, r13d
.label_270:
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
	je	.label_239
	lea	rsi, [rsi]
	jmp	.label_203
.label_229:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_195
.label_304:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_246
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_246
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_246
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_299
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_302
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_264
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_281
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_281:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_320
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_320:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_286
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_286:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_261
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_261:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_195
.label_246:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_195:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_227
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_230
	nop	
	jmp	.label_235
	nop	dword ptr [rax + rax]
.label_227:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_235
.label_230:
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
	jne	.label_241
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_252
	nop	word ptr cs:[rax + rax]
.label_235:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_252:
	mov	bl, r12b
	je	.label_237
	jmp	.label_263
.label_241:
	mov	bl, r12b
.label_263:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_233
	cmp	r9d, 2
	jne	.label_266
	mov	al, dil
	and	al, 1
	jne	.label_266
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_271
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_271:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_277
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_277:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_280
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_280:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_266:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_287
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_287:
	mov	rbp, rbp
	inc	r14
	jmp	.label_293
.label_254:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_195
.label_215:
	xor	r13d, r13d
	jmp	.label_195
.label_222:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_195
.label_225:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_195
.label_259:
	xor	r13d, r13d
.label_255:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_203
.label_262:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_313
	lea	rax, [r11 + r15]
.label_201:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_200
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_201
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_203
.label_313:
	xor	r13d, r13d
	jmp	.label_203
.label_200:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_203
.label_249:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_203:
	mov	rbp, rbp
	mov	rbx, r10
.label_219:
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
	ja	.label_220
	test	cl, cl
	je	.label_220
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_195
.label_220:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_242
	nop	dword ptr [rax]
.label_232:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_242:
	mov	rsp, rsp
	test	cl, cl
	je	.label_253
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_256
	cmp	r14, rbp
	jae	.label_260
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_260:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_256:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_268
	nop	dword ptr [rax + rax]
.label_253:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_275
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_234
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_234
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_282
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_282:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_224
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_224:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_292
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_292:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_234:
	cmp	r14, rbp
	jae	.label_306
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_306:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_211
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_211:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_243
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_243:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_268:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_237
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_213
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_213
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_258
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_258:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_207
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_207:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_213:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_232
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_232
	nop	word ptr cs:[rax + rax]
.label_237:
	test	dil, 1
	je	.label_245
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_245
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_283
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_283:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_212
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_212:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_245:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_293:
	cmp	r14, rbp
	jae	.label_197
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_197:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_244
.label_299:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_195
.label_302:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_195
	nop	word ptr [rax + rax]
.label_295:
	nop	
	mov	rcx, r15
.label_298:
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
	je	.label_285
	mov	rsp, rsp
	or	al, dl
	je	.label_291
.label_285:
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
	je	.label_238
	mov	rsp, rsp
	or	al, dl
	jne	.label_238
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_308
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_238
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
	je	.label_317
.label_238:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_198
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_198
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_198
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_221:
	cmp	r14, rbp
	jae	.label_216
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_216:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_221
.label_198:
	cmp	r14, rbp
	jae	.label_223
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_223
.label_236:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_233
.label_294:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_233
.label_275:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_233
.label_291:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_233
.label_257:
	nop	
	mov	r9d, 2
.label_233:
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
.label_315:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_223:
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
.label_308:
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
	jmp	.label_315
.label_269:
	mov	r9d, 2
	jmp	.label_233
.label_196:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_233
.label_316:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_233
.label_264:
	mov	r9d, 5
	nop	
	jmp	.label_233
.label_209:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bf0
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
	#Procedure 0x405d30
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
	je	.label_323
	mov	qword ptr [rax], rbx
.label_323:
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
	#Procedure 0x405e80
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_324
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_328:
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
	jl	.label_328
.label_324:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_327
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_325]], OFFSET FLAT:slot0
.label_327:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_326
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_326:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f40
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x405f50

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
	js	.label_335
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_330
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_331
.label_330:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_332
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
	jne	.label_334
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_334:
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
.label_331:
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
	ja	.label_333
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
	je	.label_329
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_329:
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
.label_333:
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
.label_335:
	lea	rdi, [rdi]
	call	abort
.label_332:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4061c0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4061d0
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
	#Procedure 0x406200
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
	#Procedure 0x406230

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
	je	.label_336
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
.label_336:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4062c0
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
	je	.label_337
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
.label_337:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406360

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
	je	.label_338
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
.label_338:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063f0
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
	je	.label_339
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
.label_339:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406460
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_340]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_341]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_342]]
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
	#Procedure 0x406500
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_340]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_341]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_342]]
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
	#Procedure 0x4065a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_340]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_341]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_342]]
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
	#Procedure 0x406610
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_340]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_341]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_342]]
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
	#Procedure 0x406680

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
	je	.label_343
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
.label_343:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406760
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_340]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_341]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_342]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_344
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_344
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
.label_344:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4067f0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_340]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_341]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_342]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_345
	test	rdx, rdx
	je	.label_345
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
.label_345:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406880
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_340]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_341]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_342]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_346
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_346
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
.label_346:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406920
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_340]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_341]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_342]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_347
	test	rsi, rsi
	je	.label_347
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
.label_347:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069c0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069d0
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
	#Procedure 0x4069f0

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
	#Procedure 0x406a10

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
	#Procedure 0x406a40

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
	jne	.label_349
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_351
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_348
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_348
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_348
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_348
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_348
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_348
	nop	
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_349
	mov	eax, OFFSET FLAT:.str.15_2
	jmp	.label_349
.label_351:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_348
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_348
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_348
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_348
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_348
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_348
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_350
.label_348:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_2
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_349:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_350:
	mov	eax, OFFSET FLAT:.str.17_2
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_349
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_349
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406bb0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	call	__lxstat
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	test	ecx, ecx
	jne	.label_352
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rax
	mov	rsp, rsp
	mov	rax, rbx
.label_352:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c10

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
	je	.label_355
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_10
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_358
.label_355:
	mov	edx, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_358:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_5
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
	mov	esi, OFFSET FLAT:.str.3_3
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
	ja	.label_360
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_361]]
.label_953:
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
.label_360:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_354
.label_954:
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
.label_955:
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
.label_956:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_1
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
	jmp	.label_357
.label_957:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
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
	jmp	.label_353
.label_958:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_2
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
	jmp	.label_362
.label_959:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_3
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
.label_362:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_353:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_357:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_359
.label_961:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_354:
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
	jmp	.label_356
.label_960:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_3
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
.label_356:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_359:
	mov	rbp, rbp
	call	__fprintf_chk
.label_952:
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
	#Procedure 0x407000
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_363:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_363
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407030
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_367:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_364
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_365
	nop	word ptr cs:[rax + rax]
.label_364:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_365:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_366
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_367
.label_366:
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
	#Procedure 0x4070c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_368
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
.label_368:
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
.label_370:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_369
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_371
	nop	dword ptr [rax + rax]
.label_369:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_371:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_372
	inc	r9
	cmp	r9, 0xa
	jb	.label_370
.label_372:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407200
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_2
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_0
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_1
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
	mov	esi, OFFSET FLAT:.str.19_1
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
	#Procedure 0x407290

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_373
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	lea	rsi, [rsi]
	jmp	.label_374
.label_373:
	push	rax
	lea	rdi, [rdi]
	call	geteuid
	test	eax, eax
	sete	al
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	nop	
	add	rsp, 8
.label_374:
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	setne	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072e0
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
	jb	.label_375
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_376
	test	rax, rax
	je	.label_375
.label_376:
	nop	
	pop	rbx
	ret	
.label_375:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407330

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_377
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_378
.label_377:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_378:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407360
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
	jb	.label_380
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_379
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_379
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_379:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_381
	test	rax, rax
	je	.label_380
.label_381:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_380:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_382
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_382
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_382:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_383
	test	rax, rax
	nop	
	je	.label_384
.label_383:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_384:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407430
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_389
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_385
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_391
.label_389:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_388
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_388:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_390
.label_391:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_387
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_387
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_387:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_386
	test	rax, rax
	mov	rbp, rbp
	je	.label_385
.label_386:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_385:
	call	xalloc_die
.label_390:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407510
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_393
	test	rax, rax
	mov	rbp, rbp
	je	.label_392
.label_393:
	pop	rbx
	ret	
.label_392:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407530
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_397
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_398
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_396
	call	free
	xor	eax, eax
	jmp	.label_394
.label_397:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_395
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_396:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_394
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_395
.label_394:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_395:
	mov	rbp, rbp
	call	xalloc_die
.label_398:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4075c0
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
	je	.label_399
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_400
.label_399:
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
.label_400:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407620
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
	jb	.label_401
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_401
	pop	rcx
	ret	
.label_401:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407650

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
	je	.label_403
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_402
.label_403:
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
.label_402:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4076b0
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
	je	.label_404
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_405
.label_404:
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
.label_405:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407710

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_6
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407760

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_407
	mov	rsp, rsp
	pop	rcx
	ret	
.label_407:
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	jne	.label_406
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_11
	nop	
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	lea	rsi, [rsi]
	call	__assert_fail
.label_406:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077c0
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	mov	rbp, rbp
	je	.label_408
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	jne	.label_409
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_408:
	lea	rsi, [rsi]
	ret	
.label_409:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077f0

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	mov	rsp, rsp
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	call	__getdelim
	test	rax, rax
	jle	.label_411
	mov	rdi, qword ptr [rsp]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + rdi - 1]
	cmp	ecx, 0xa
	mov	rsp, rsp
	jne	.label_412
	mov	byte ptr [rdi + rax - 1], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp]
.label_412:
	call	rpmatch
	mov	rbp, rbp
	test	eax, eax
	setg	bl
	mov	rsp, rsp
	jmp	.label_410
.label_411:
	xor	ebx, ebx
.label_410:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	al, bl
	nop	
	add	rsp, 0x10
	nop	
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407880

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_413
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_414
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
	je	.label_414
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
.label_413:
	mov	ecx, 1
.label_414:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_415
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_415
	test	byte ptr [rbx + 1], 1
	je	.label_415
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_415:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407930

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	nop	
	ja	.label_416
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	nop	
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	je	.label_417
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_417:
	lea	rdi, [rdi]
	add	rax, rcx
.label_416:
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407970

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
	jne	.label_418
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_418
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_419
.label_418:
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
.label_419:
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
	je	.label_420
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_420:
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
	#Procedure 0x407a20

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x38
	mov	r14, rdx
	mov	ebx, esi
	mov	r12, rdi
	cmp	ebx, 0x1000
	jae	.label_434
	mov	rbp, rbp
	mov	eax, ebx
	lea	rdi, [rdi]
	and	eax, 0x204
	nop	
	cmp	eax, 0x204
	je	.label_434
	mov	rsp, rsp
	test	bl, 0x12
	nop	
	je	.label_434
	mov	rsp, rsp
	mov	edi, 0x80
	mov	rsp, rsp
	call	malloc
	mov	r15, rax
	xor	eax, eax
	nop	
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_432
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + 0x30], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x40], r14
	mov	eax, ebx
	and	eax, 0xfffffdfb
	mov	rsp, rsp
	or	eax, 4
	lea	rdi, [rdi]
	test	bl, 2
	lea	rdi, [rdi]
	cmove	eax, ebx
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 0x48], eax
	mov	rbp, rbp
	mov	dword ptr [r15 + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_447
	mov	r13d, ebx
	mov	rbp, rbp
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_429:
	nop	
	call	strlen
	cmp	rax, rbp
	mov	rsp, rsp
	cmova	rbp, rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_429
	inc	rbp
	mov	rsp, rsp
	mov	ebx, r13d
.label_447:
	cmp	rbp, 0x1000
	lea	rsi, [rsi]
	mov	esi, 0x1000
	cmova	rsi, rbp
	mov	rsp, rsp
	add	rsi, 0x100
	nop	
	mov	qword ptr [r15 + 0x30], rsi
	xor	edi, edi
	mov	rsp, rsp
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_441
	mov	qword ptr [r15 + 0x20], rbp
	mov	qword ptr [rsp + 0x30], r15
	lea	rdi, [rdi]
	mov	r13, qword ptr [r12]
	mov	qword ptr [rsp + 0x20], r12
	xor	r12d, r12d
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_444
	lea	rsi, [rsi]
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rbp, rbp
	je	.label_452
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [r12 + 0x50], rax
	nop	
	mov	qword ptr [r12 + 0x38], rbp
	mov	dword ptr [r12 + 0x40], 0
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x18], 0
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x72], 0
	mov	rsp, rsp
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_444:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x17], 1
	test	r14, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r14
	je	.label_430
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	lea	rdi, [rdi]
	shr	al, 2
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x17], al
.label_430:
	mov	rsp, rsp
	xor	r14d, r14d
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_435
	mov	qword ptr [rsp + 0x18], r12
	xor	r12d, r12d
	test	bh, 8
	jne	.label_442
	xor	r15d, r15d
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_431:
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	lea	rsi, [rsi]
	cmp	rbp, 3
	jb	.label_449
	movzx	eax, byte ptr [rbp + r13 - 1]
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_451
	mov	qword ptr [rsp + 0x28], rbx
	nop	word ptr [rax + rax]
.label_459:
	movzx	eax, byte ptr [r13 + rbp - 2]
	nop	
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_450
	lea	rsi, [rsi]
	dec	rbp
	cmp	rbp, 1
	mov	rsp, rsp
	ja	.label_459
	lea	rsi, [rsi]
	jmp	.label_450
.label_449:
	mov	qword ptr [rsp + 0x28], rbx
	jmp	.label_450
.label_451:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbx
.label_450:
	lea	rdi, [rdi]
	lea	rdi, [rbp + 0x110]
	lea	rsi, [rsi]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_426
	mov	r14, rbx
	mov	rbp, rbp
	add	r14, 0x108
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	byte ptr [rbx + rbp + 0x108], 0
	mov	qword ptr [rbx + 0x60], rbp
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	qword ptr [rbx + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	nop	
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rax
	nop	
	mov	qword ptr [rbx + 0x30], r14
	test	r15, r15
	mov	rsp, rsp
	setne	al
	lea	rdi, [rdi]
	test	byte ptr [rsp + 0x17], al
	je	.label_433
	mov	rsp, rsp
	mov	word ptr [rbx + 0x70], 0xb
	mov	qword ptr [rbx + 0xa8], 2
	jmp	.label_455
.label_433:
	xor	edx, edx
	mov	rsi, rbx
	mov	rsp, rsp
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
.label_455:
	nop	
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_454
	mov	r14, rbx
	mov	qword ptr [rbx + 0x10], r15
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_424
.label_454:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], 0
	test	r15, r15
	nop	
	mov	r14, rbx
	je	.label_424
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], rbx
	mov	rsp, rsp
	mov	r14, r15
.label_424:
	nop	
	inc	r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rax + 8]
	mov	rbp, rbp
	add	rax, 8
	nop	
	mov	qword ptr [rsp + 0x20], rax
	test	r13, r13
	mov	rsp, rsp
	mov	r15, r14
	mov	rsp, rsp
	jne	.label_431
	lea	rdi, [rdi]
	jmp	.label_438
.label_434:
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	nop	
	xor	eax, eax
.label_432:
	add	rsp, 0x38
	nop	
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_441:
	mov	rdi, qword ptr [r15 + 0x20]
	mov	rsp, rsp
	jmp	.label_446
.label_442:
	xor	eax, eax
	xor	r15d, r15d
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_421:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r15
	mov	rbp, rbp
	mov	r14, rax
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	nop	
	and	rdi, 0xfffffffffffffff8
	nop	
	call	malloc
	mov	r15, rax
	mov	rbp, rbp
	test	r15, r15
	je	.label_458
	mov	rbp, r15
	add	rbp, 0x108
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	byte ptr [r15 + rbx + 0x108], 0
	mov	qword ptr [r15 + 0x60], rbx
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	qword ptr [r15 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0x40], 0
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], 0
	mov	word ptr [r15 + 0x72], 0
	mov	rbp, rbp
	mov	word ptr [r15 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	mov	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r15 + 0x30], rbp
	lea	rdi, [rdi]
	mov	rbx, r14
	mov	rbp, rbp
	test	rbx, rbx
	lea	rdi, [rdi]
	setne	al
	mov	rbp, rbp
	and	al, byte ptr [rsp + 0x17]
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_423
	lea	rsi, [rsi]
	mov	word ptr [r15 + 0x70], 0xb
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0xa8], 2
	jmp	.label_448
.label_423:
	nop	
	xor	edx, edx
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
.label_448:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 8], rax
	test	rax, rax
	je	.label_445
	mov	r14, r15
	nop	
	mov	qword ptr [r15 + 0x10], rbx
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x28]
	jmp	.label_457
.label_445:
	mov	qword ptr [r15 + 0x10], 0
	test	rbx, rbx
	mov	r14, r15
	je	.label_457
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + 0x10], r15
	nop	
	mov	r14, rbx
.label_457:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rax + r12*8 + 8]
	lea	rdi, [rdi]
	inc	r12
	test	r13, r13
	mov	rax, r14
	jne	.label_421
.label_438:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 8], 0
	je	.label_439
	lea	rdi, [rdi]
	cmp	r12, 2
	nop	
	jb	.label_439
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	rdx, r12
	mov	rbp, rbp
	call	fts_sort
	mov	rsp, rsp
	mov	r14, rax
.label_439:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x18]
.label_435:
	nop	
	mov	edi, 0x110
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_437
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x108], 0
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x60], 0
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + 0x50], r15
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	nop	
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	mov	word ptr [rax + 0x72], 0
	lea	rdi, [rdi]
	mov	word ptr [rax + 0x74], 3
	mov	rsp, rsp
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [r15], rax
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x10], r14
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_440
	nop	
	mov	edi, 0x1f
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:free
	lea	rdi, [rdi]
	call	hash_initialize
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	jne	.label_425
	jmp	.label_427
.label_452:
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	jmp	.label_428
.label_437:
	mov	r15, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [r15], 0
	nop	
	jmp	.label_427
.label_440:
	nop	
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r15 + 0x58], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_427
	mov	rdi, rax
	call	cycle_check_init
.label_425:
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15 + 0x48]
	mov	rbp, rbp
	test	ax, 0x204
	lea	rsi, [rsi]
	jne	.label_436
	nop	
	mov	edx, eax
	mov	rsp, rsp
	and	edx, 0x10
	mov	rsp, rsp
	shl	edx, 0xd
	or	edx, 0x90900
	lea	rdi, [rdi]
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_443
	mov	edi, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, edx
	lea	rdi, [rdi]
	call	open_safer
	jmp	.label_453
.label_426:
	mov	r14, r15
.label_458:
	mov	r15, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x18]
.label_427:
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_456
	nop	word ptr cs:[rax + rax]
.label_422:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_460
	lea	rsi, [rsi]
	call	closedir
.label_460:
	mov	rdi, r14
	mov	rbp, rbp
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	r14, rbx
	nop	
	jne	.label_422
.label_456:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	nop	
	mov	rbp, qword ptr [r15 + 0x20]
.label_428:
	mov	rdi, rbp
.label_446:
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	nop	
	xor	eax, eax
	nop	
	jmp	.label_432
.label_443:
	lea	rdi, [rdi]
	mov	edi, dword ptr [r15 + 0x2c]
	mov	esi, OFFSET FLAT:.str_3
	xor	eax, eax
	lea	rdi, [rdi]
	call	openat_safer
.label_453:
	mov	dword ptr [r15 + 0x28], eax
	test	eax, eax
	jns	.label_436
	or	byte ptr [r15 + 0x48], 4
.label_436:
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	add	rdi, 0x60
	mov	esi, 0xffffffff
	lea	rdi, [rdi]
	call	i_ring_init
	mov	rax, r15
	lea	rdi, [rdi]
	jmp	.label_432
	nop	
	.section	.text
	.align	32
	#Procedure 0x408290

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	nop	
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	eax, dword ptr [r15 + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_465
	test	al, 1
	nop	
	je	.label_465
	lea	rsi, [rsi]
	mov	dl, 1
.label_465:
	mov	rbp, rbp
	lea	rbx, [r14 + 0x78]
	lea	rdi, [rdi]
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_462
	and	eax, 2
	jne	.label_462
	mov	rbp, rbp
	mov	esi, dword ptr [r15 + 0x2c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r14 + 0x30]
	nop	
	mov	edi, 1
	mov	r8d, 0x100
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rsi, [rsi]
	call	__fxstatat
	test	eax, eax
	je	.label_470
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_461
.label_462:
	mov	rsp, rsp
	mov	rsi, qword ptr [r14 + 0x30]
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	__xstat
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_470
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_461
	mov	rsi, qword ptr [r14 + 0x30]
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rsp, rsp
	call	__lxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_468
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
.label_461:
	mov	dword ptr [r14 + 0x40], eax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_463:
	movzx	eax, ax
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_470:
	mov	rbp, rbp
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	lea	rsi, [rsi]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_463
	cmp	ecx, 0x8000
	nop	
	je	.label_466
	cmp	ecx, 0x4000
	mov	rbp, rbp
	jne	.label_469
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_464
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_464
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
.label_464:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0x2e
	mov	rsp, rsp
	jne	.label_463
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_467
	mov	rbp, rbp
	movzx	edx, dl
	lea	rsi, [rsi]
	cmp	edx, 0x2e
	jne	.label_463
	lea	rsi, [rsi]
	test	ecx, 0xff0000
	lea	rdi, [rdi]
	jne	.label_463
.label_467:
	nop	
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	mov	rsp, rsp
	je	.label_463
	mov	ax, 5
	jmp	.label_463
.label_466:
	mov	ax, 8
	jmp	.label_463
.label_469:
	lea	rdi, [rdi]
	mov	ax, 3
	lea	rsi, [rsi]
	jmp	.label_463
.label_468:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_463
	nop	
	.section	.text
	.align	32
	#Procedure 0x4084c0

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_471
	lea	rsi, [r14 + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rbp, rbp
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_478
	mov	rsp, rsp
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	lea	rsi, [rsi]
	call	realloc
	mov	rdi, rax
	lea	rdi, [rdi]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_478
	mov	qword ptr [r13], rdi
	lea	rdi, [rdi]
	jmp	.label_479
.label_471:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	add	r12, 0x10
	mov	r13, r12
.label_479:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_475
	nop	dword ptr [rax]
.label_477:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_477
	mov	rdi, qword ptr [r13]
.label_475:
	mov	edx, 8
	nop	
	mov	rsi, r14
	nop	
	mov	rcx, r15
	nop	
	call	qsort
	mov	r9, qword ptr [r13]
	mov	rbx, qword ptr [r9]
	mov	rsp, rsp
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_474
	nop	
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rsp, rsp
	mov	rcx, r14
	add	rcx, -2
	mov	rsp, rsp
	je	.label_473
	mov	rsp, rsp
	lea	rdx, [r9 + 8]
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	mov	rsp, rsp
	lea	r8, [r14 - 3]
	lea	rsi, [rsi]
	test	dil, 3
	mov	rbp, rbp
	je	.label_472
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	
.label_476:
	mov	rsi, qword ptr [rdx]
	nop	
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	nop	
	inc	rdi
	jne	.label_476
.label_472:
	lea	rsi, [rsi]
	cmp	r8, 3
	mov	rbp, rbp
	jb	.label_473
	nop	dword ptr [rax + rax]
.label_480:
	mov	rsp, rsp
	mov	rax, qword ptr [rdx]
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rax + 0x10], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rax + 0x10], rsi
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x20]
	lea	rdx, [rdx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rsi
	mov	rbp, rbp
	add	rcx, -4
	lea	rsi, [rsi]
	jne	.label_480
.label_473:
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_474:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_481
.label_478:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_481:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086c0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	nop	
	push	rbx
	nop	
	mov	r14, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_496
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 0x58], 0
	lea	rsi, [rsi]
	js	.label_492
	nop	word ptr [rax + rax]
.label_485:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_499
	mov	rbx, qword ptr [rdi + 8]
.label_499:
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], 0
	lea	rsi, [rsi]
	mov	rdi, rbx
	jns	.label_485
	mov	rsp, rsp
	jmp	.label_488
.label_492:
	mov	rbx, rdi
.label_488:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
.label_496:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_493
	nop	dword ptr [rax]
.label_498:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_482
	lea	rsi, [rsi]
	call	closedir
.label_482:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rbx, rbp
	jne	.label_498
.label_493:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14 + 0x48]
	lea	rdi, [rdi]
	test	ah, 2
	jne	.label_486
	xor	ebp, ebp
	mov	rbp, rbp
	test	al, 4
	jne	.label_484
	nop	
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_489
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_489:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	lea	rsi, [rsi]
	test	ebp, ebp
	nop	
	je	.label_494
	nop	
	jmp	.label_484
.label_486:
	mov	rsp, rsp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	edi, edi
	js	.label_484
	nop	
	call	close
.label_494:
	nop	
	test	eax, eax
	nop	
	je	.label_484
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
.label_484:
	lea	rsi, [rsi]
	lea	rbx, [r14 + 0x60]
	jmp	.label_490
	nop	
.label_487:
	mov	edi, eax
	mov	rsp, rsp
	call	close
.label_490:
	mov	rsp, rsp
	mov	rdi, rbx
	call	i_ring_empty
	lea	rdi, [rdi]
	test	al, al
	jne	.label_483
	mov	rbp, rbp
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_487
	nop	
	jmp	.label_490
.label_483:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_491
	nop	
	call	hash_free
.label_491:
	nop	
	movzx	eax, word ptr [r14 + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	je	.label_495
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_497
	lea	rdi, [rdi]
	call	hash_free
	nop	
	jmp	.label_497
.label_495:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rdi, [rdi]
	call	free
.label_497:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	xor	eax, eax
	test	ebp, ebp
	je	.label_500
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], ebp
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
.label_500:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088b0

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	mov	r14, rdi
	nop	
	mov	r12, qword ptr [r14]
	xor	r15d, r15d
	test	r12, r12
	je	.label_501
	mov	rsp, rsp
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	mov	rbp, rbp
	test	ah, 0x20
	mov	rsp, rsp
	jne	.label_501
	lea	rdi, [rdi]
	movzx	ecx, word ptr [r12 + 0x74]
	nop	
	mov	word ptr [r12 + 0x74], 3
	mov	rsp, rsp
	cmp	ecx, 1
	nop	
	je	.label_537
	movzx	edx, cx
	cmp	edx, 2
	mov	rsp, rsp
	jne	.label_534
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x70]
	mov	rsp, rsp
	mov	esi, ecx
	and	esi, 0xfffe
	mov	rbp, rbp
	cmp	esi, 0xc
	jne	.label_535
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_511
	mov	eax, dword ptr [r14 + 0x48]
	mov	rbp, rbp
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_511
	mov	edx, eax
	nop	
	and	edx, 0x10
	shl	edx, 0xd
	lea	rdi, [rdi]
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_546
	nop	
	mov	edi, OFFSET FLAT:.str_3
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	nop	
	jmp	.label_553
.label_537:
	xor	edx, edx
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_501
.label_534:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_558
.label_535:
	mov	rbp, rbp
	lea	r13, [r12 + 0x70]
.label_558:
	movzx	esi, cx
	mov	rsp, rsp
	cmp	esi, 1
	jne	.label_561
	cmp	edx, 4
	je	.label_502
	lea	rsi, [rsi]
	test	al, 0x40
	je	.label_563
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 0x78]
	nop	
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_502
.label_563:
	mov	rbx, qword ptr [r14 + 8]
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_505
	test	ah, 0x10
	jne	.label_531
	nop	
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	mov	rbp, rbp
	je	.label_512
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	jmp	.label_513
.label_519:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
.label_513:
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_519
	nop	
	jmp	.label_512
.label_561:
	mov	rbx, r12
	nop	
.label_529:
	mov	r12, qword ptr [rbx + 0x10]
	test	r12, r12
	je	.label_522
	lea	rsi, [rsi]
	mov	qword ptr [r14], r12
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_517
	movzx	eax, word ptr [r12 + 0x74]
	cmp	eax, 4
	nop	
	mov	rbx, r12
	lea	rsi, [rsi]
	je	.label_529
	movzx	eax, ax
	nop	
	cmp	eax, 2
	lea	rdi, [rdi]
	jne	.label_509
	mov	edx, 1
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_507
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_507
	mov	edx, eax
	lea	rdi, [rdi]
	and	edx, 0x10
	lea	rsi, [rsi]
	shl	edx, 0xd
	lea	rsi, [rsi]
	or	edx, 0x90900
	test	ah, 2
	mov	rbp, rbp
	jne	.label_536
	mov	edi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_538
.label_502:
	test	ecx, 0x20000
	mov	rbp, rbp
	je	.label_540
	mov	rsp, rsp
	mov	edi, dword ptr [r12 + 0x44]
	nop	
	call	close
.label_540:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	nop	
	je	.label_545
	nop	word ptr cs:[rax + rax]
.label_554:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_541
	call	closedir
.label_541:
	mov	rdi, rbx
	nop	
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	mov	rbp, rbp
	jne	.label_554
	nop	
	mov	qword ptr [r14 + 8], 0
.label_545:
	mov	word ptr [r12 + 0x70], 6
.label_533:
	mov	rdi, r14
	mov	rsi, r12
	mov	rsp, rsp
	call	leave_dir
	mov	rbp, rbp
	mov	r15, r12
	lea	rsi, [rsi]
	jmp	.label_501
.label_522:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbx + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_542
	mov	qword ptr [r14], r15
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rbp, rbp
	mov	rdi, r14
	call	fts_build
	mov	r12, rax
	nop	
	test	r12, r12
	je	.label_506
	mov	rdi, rbx
	nop	
	call	free
	mov	rbp, rbp
	jmp	.label_509
.label_517:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	restore_initial_cwd
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_510
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_501
.label_510:
	nop	
	test	ax, 0x102
	je	.label_514
	mov	rbp, rbp
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_516
	call	hash_free
	nop	
	jmp	.label_516
.label_531:
	and	eax, 0xffffefff
	mov	rbp, rbp
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr [rax + rax]
.label_527:
	mov	rbp, qword ptr [rbx + 0x10]
	nop	
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_556
	call	closedir
.label_556:
	nop	
	mov	rdi, rbx
	call	free
	nop	
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_527
	mov	qword ptr [r14 + 8], 0
.label_505:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdi, r14
	lea	rsi, [rsi]
	call	fts_build
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_530
.label_512:
	lea	rsi, [rsi]
	mov	r12, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], 0
	jmp	.label_509
.label_530:
	xor	r15d, r15d
	mov	rsp, rsp
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_501
	cmp	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	je	.label_533
	mov	rsp, rsp
	movzx	eax, word ptr [r13]
	lea	rsi, [rsi]
	cmp	eax, 4
	lea	rdi, [rdi]
	je	.label_533
	mov	word ptr [r13], 7
	nop	
	jmp	.label_533
.label_546:
	nop	
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_3
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	call	openat_safer
.label_553:
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x44], eax
	lea	rdi, [rdi]
	test	eax, eax
	js	.label_539
	or	byte ptr [r12 + 0x72], 2
	mov	rsp, rsp
	jmp	.label_511
.label_506:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_501
	mov	r15, qword ptr [rbx + 8]
.label_542:
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x58], -1
	lea	rdi, [rdi]
	je	.label_550
	movzx	eax, word ptr [r15 + 0x70]
	mov	rbp, rbp
	cmp	eax, 0xb
	mov	rsp, rsp
	je	.label_518
	nop	
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	nop	
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_557
	movzx	eax, word ptr [r15 + 0x72]
	lea	rsi, [rsi]
	test	al, 2
	lea	rsi, [rsi]
	jne	.label_560
	test	al, 1
	jne	.label_547
	mov	rsi, qword ptr [r15 + 8]
	nop	
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_0
	mov	rdi, r14
	lea	rdi, [rdi]
	call	fts_safe_changedir
	jmp	.label_504
.label_550:
	mov	rdi, r15
	call	free
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_501
.label_539:
	call	__errno_location
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	jmp	.label_511
.label_514:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_516:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12 + 0x60]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x48], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	mov	rsp, rsp
	inc	rdx
	nop	
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_524
	cmp	rbx, r15
	mov	rsp, rsp
	jne	.label_525
	cmp	byte ptr [r12 + 0x109], 0
	lea	rdi, [rdi]
	je	.label_524
.label_525:
	inc	rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	strlen
	nop	
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, rbx
	nop	
	call	memmove
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x60], r13
.label_524:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	lea	rdi, [rdi]
	je	.label_532
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_511
.label_532:
	lea	rsi, [rsi]
	mov	edi, 0x20
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_511
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_511
.label_557:
	mov	rdi, r14
	mov	rbp, rbp
	call	restore_initial_cwd
.label_504:
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_547
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_547
.label_560:
	mov	eax, dword ptr [r14 + 0x48]
	mov	rbp, rbp
	lea	rbx, [r15 + 0x44]
	test	al, 4
	mov	rbp, rbp
	jne	.label_551
	mov	rbp, rbp
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	lea	rsi, [rsi]
	jne	.label_555
	mov	edi, ebp
	nop	
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	je	.label_551
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	rsp, rsp
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_551
.label_536:
	nop	
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_3
	lea	rsi, [rsi]
	xor	eax, eax
	call	openat_safer
.label_538:
	mov	dword ptr [r12 + 0x44], eax
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_503
	or	byte ptr [r12 + 0x72], 2
	jmp	.label_507
.label_503:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
.label_507:
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x74], 3
.label_509:
	mov	rax, qword ptr [r14 + 0x20]
	nop	
	mov	rcx, qword ptr [r12 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rbp, rbp
	movzx	edx, byte ptr [rdx + rcx - 1]
	mov	rbp, rbp
	cmp	edx, 0x2f
	jne	.label_549
	dec	rcx
.label_549:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r12 + 0x108]
	mov	rsp, rsp
	mov	rdx, qword ptr [r12 + 0x60]
	mov	rsp, rsp
	inc	rdx
	call	memmove
.label_511:
	mov	rsp, rsp
	mov	qword ptr [r14], r12
	mov	rsp, rsp
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 0xb
	mov	rbp, rbp
	jne	.label_520
	mov	rax, qword ptr [r12 + 0xa8]
	cmp	rax, 1
	je	.label_523
	cmp	rax, 2
	mov	rsp, rsp
	jne	.label_518
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x68], 0
	jne	.label_528
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	nop	
	cmp	eax, 0x18
	lea	rdi, [rdi]
	jne	.label_528
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, r15
	call	filesystem_type
	cmp	rax, 0x52654973
	mov	rbp, rbp
	je	.label_523
	cmp	rax, 0x58465342
	je	.label_523
.label_528:
	xor	edx, edx
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r12 + 0x90]
	cmp	ecx, 0x4000
	nop	
	jne	.label_520
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x58], 0
	lea	rsi, [rsi]
	je	.label_523
	mov	rax, qword ptr [r15 + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	lea	rsi, [rsi]
	jb	.label_523
	dec	rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x68], rax
.label_523:
	lea	rsi, [rsi]
	movzx	eax, word ptr [r12 + 0x70]
.label_520:
	movzx	eax, ax
	nop	
	cmp	eax, 1
	jne	.label_543
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x58], 0
	mov	rbp, rbp
	jne	.label_544
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_544:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	mov	rbp, rbp
	je	.label_548
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_552
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [r12 + 0x78]
	mov	rsp, rsp
	movups	xmmword ptr [rbx], xmm0
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], r12
	mov	rdi, qword ptr [r14 + 0x58]
	nop	
	mov	rsi, rbx
	call	hash_insert
	mov	rsp, rsp
	mov	r14, rax
	cmp	r14, rbx
	nop	
	je	.label_559
	mov	rdi, rbx
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_552
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [r12], rax
	jmp	.label_562
.label_543:
	mov	r15, r12
	mov	rsp, rsp
	jmp	.label_501
.label_548:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rsi, [r12 + 0x78]
	call	cycle_check
	test	al, al
	mov	rsp, rsp
	je	.label_508
	mov	qword ptr [r12], r12
.label_562:
	lea	rsi, [rsi]
	mov	word ptr [r12 + 0x70], 2
	mov	r15, r12
	lea	rdi, [rdi]
	jmp	.label_501
.label_552:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_501
.label_508:
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_501
.label_559:
	mov	r15, r12
	jmp	.label_501
.label_555:
	mov	rbp, rbp
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_515
	mov	rsp, rsp
	cmp	esi, -0x64
	lea	rsi, [rsi]
	jne	.label_518
.label_515:
	mov	rbp, rbp
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_521
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	close
.label_521:
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 0x2c], ebp
.label_551:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbx]
	mov	rbp, rbp
	call	close
.label_547:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	lea	rsi, [rsi]
	je	.label_526
	nop	
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	nop	
	movzx	ecx, cl
	or	ecx, 6
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_526
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	call	leave_dir
.label_526:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	lea	rsi, [rsi]
	cmovne	r15, rax
.label_501:
	nop	
	mov	rax, r15
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_518:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409330

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_565
	movups	xmm0, xmmword ptr [rsi + 0x78]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	mov	rsp, rsp
	call	hash_delete
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_566
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	add	rsp, 0x18
	ret	
.label_565:
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_564
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x58], 0
	nop	
	js	.label_564
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	mov	rsp, rsp
	je	.label_566
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x80]
	lea	rdi, [rdi]
	jne	.label_564
	nop	
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	mov	rbp, rbp
	jne	.label_564
	mov	rdx, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_564:
	lea	rdi, [rdi]
	add	rsp, 0x18
	ret	
.label_566:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093f0

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x98
	mov	rsp, rsp
	mov	rbx, rcx
	lea	rsi, [rsi]
	mov	r13d, edx
	mov	r15, rdi
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_587
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	ecx, 0x2e
	lea	rsi, [rsi]
	mov	eax, 0x2e
	sub	eax, edx
	lea	rsi, [rsi]
	jne	.label_574
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 1]
	lea	rsi, [rsi]
	sub	ecx, eax
	lea	rsi, [rsi]
	mov	eax, ecx
	jne	.label_574
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_574:
	test	eax, eax
	lea	rsi, [rsi]
	sete	r14b
	lea	rdi, [rdi]
	jmp	.label_582
.label_587:
	xor	r14d, r14d
.label_582:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	mov	rsp, rsp
	jne	.label_586
	nop	
	test	r13d, r13d
	jns	.label_580
	mov	rbp, rbp
	mov	cl, r14b
	mov	rbp, rbp
	xor	cl, 1
	jne	.label_588
	nop	
	mov	qword ptr [rsp + 0x90], rsi
	and	eax, 0x200
	mov	rbp, rbp
	je	.label_570
	lea	rbp, [r15 + 0x60]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	i_ring_empty
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_570
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	mov	rsp, rsp
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	nop	
	jmp	.label_570
.label_586:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_567
	and	eax, 0x200
	je	.label_567
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rsp, rsp
	call	close
	nop	
	jmp	.label_567
.label_580:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rsi
	nop	
	jmp	.label_570
.label_588:
	mov	qword ptr [rsp + 0x90], rsi
.label_570:
	test	r13d, r13d
	mov	rbp, rbp
	mov	r12d, r13d
	jns	.label_571
	mov	rbp, rbp
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	mov	rsp, rsp
	or	edx, 0x90900
	nop	
	test	ah, 2
	mov	rbp, rbp
	jne	.label_575
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	mov	rbp, rbp
	jmp	.label_584
.label_575:
	mov	rbp, rbp
	mov	edi, dword ptr [r15 + 0x2c]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rbx
	nop	
	call	openat_safer
.label_584:
	mov	rbp, rbp
	mov	r12d, eax
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	r12d, r12d
	lea	rdi, [rdi]
	js	.label_567
.label_571:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	nop	
	jne	.label_569
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_572
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x2e
	jne	.label_572
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_572
	cmp	byte ptr [rbx + 2], 0
	mov	rsp, rsp
	jne	.label_572
.label_569:
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, r12d
	lea	rdi, [rdi]
	call	__fxstat
	test	eax, eax
	jne	.label_583
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	jne	.label_585
	nop	
	mov	rax, qword ptr [rcx + 0x80]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 8]
	nop	
	jne	.label_585
	mov	eax, dword ptr [r15 + 0x48]
.label_572:
	mov	rbp, rbp
	test	ah, 2
	jne	.label_568
	nop	
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	mov	rbp, rbp
	jmp	.label_573
.label_568:
	mov	esi, dword ptr [r15 + 0x2c]
	lea	rsi, [rsi]
	cmp	esi, r12d
	jne	.label_576
	cmp	esi, -0x64
	jne	.label_577
.label_576:
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_579
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_578
	nop	
	test	esi, esi
	js	.label_578
	mov	rbp, rbp
	mov	edi, esi
	jmp	.label_581
.label_585:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 2
.label_583:
	mov	ebp, 0xffffffff
.label_573:
	test	r13d, r13d
	jns	.label_567
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	nop	
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_567
.label_579:
	lea	rsi, [rsi]
	lea	rdi, [r15 + 0x60]
	lea	rsi, [rsi]
	call	i_ring_push
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_578
	mov	edi, eax
.label_581:
	mov	rsp, rsp
	call	close
.label_578:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_567:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_577:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4096d0

	.globl fts_build
	.type fts_build, @function
fts_build:
	nop	
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x98
	lea	rsi, [rsi]
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rdx, rdi
	mov	r12, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r12
	nop	
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_623
	mov	rsp, rsp
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x80], rdi
	call	dirfd
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x54], eax
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_641
	mov	dword ptr [rsp + 0x1c], ebp
	nop	
	mov	qword ptr [rsp + 0x30], -1
	nop	
	mov	rdi, rbx
	cmp	qword ptr [rdi + 0x40], 0
	jne	.label_647
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x30], rax
.label_647:
	lea	rax, [rdi + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	lea	rbp, [rdi + 0x48]
	mov	rsp, rsp
	mov	cl, 1
	jmp	.label_599
.label_623:
	mov	qword ptr [rsp + 0x80], rdi
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 0x48]
	mov	ecx, eax
	mov	rsp, rsp
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	nop	
	cmp	ecx, 0x200
	mov	rsp, rsp
	jne	.label_653
	mov	edi, dword ptr [rdx + 0x2c]
.label_653:
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsi, qword ptr [r12 + 0x30]
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	test	al, 0x10
	nop	
	je	.label_657
	nop	
	test	al, 1
	lea	rsi, [rsi]
	je	.label_660
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x58], 0
	lea	rdi, [rdi]
	je	.label_657
.label_660:
	nop	
	mov	edx, 0x20000
.label_657:
	lea	rcx, [rsp + 0x54]
	call	opendirat
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], rax
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_627
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ebp
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	lea	r15, [rdi + 0x48]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 0xb
	jne	.label_615
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	rdi, rbx
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_594
.label_641:
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_627:
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	ebp, 3
	jne	.label_595
	nop	
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x40], eax
	mov	rsp, rsp
	xor	ebx, ebx
	jmp	.label_595
.label_615:
	test	byte ptr [r15 + 1], 1
	nop	
	je	.label_594
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbx, rdi
	call	leave_dir
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fts_stat
	mov	rsp, rsp
	movzx	eax, word ptr [rbx + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	mov	rsp, rsp
	je	.label_617
	mov	rbp, rbp
	mov	rbp, rbx
	lea	rdi, [rdi]
	mov	edi, 0x18
	lea	rdi, [rdi]
	call	malloc
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_618
	movups	xmm0, xmmword ptr [r12 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	nop	
	mov	qword ptr [rbx + 0x10], r12
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	hash_insert
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	cmp	rbp, rbx
	je	.label_594
	mov	r14, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	test	rbp, rbp
	nop	
	je	.label_618
	mov	rax, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [r12], rax
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], 2
	mov	rsp, rsp
	mov	rdi, r14
	jmp	.label_594
.label_617:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x58]
	lea	rsi, [r12 + 0x78]
	lea	rsi, [rsi]
	call	cycle_check
	mov	rbp, rbp
	mov	rdi, rbx
	test	al, al
	lea	rdi, [rdi]
	je	.label_594
	mov	qword ptr [r12], r12
	mov	word ptr [r12 + 0x70], 2
.label_594:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], -1
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x40], 0
	jne	.label_652
	mov	eax, 0x186a0
	nop	
	mov	qword ptr [rsp + 0x30], rax
.label_652:
	mov	rbp, rbp
	lea	rax, [rdi + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	dword ptr [rsp + 0x1c], 2
	lea	rsi, [rsi]
	mov	rbp, r15
	mov	rbp, rbp
	je	.label_593
	mov	rbp, rbp
	mov	eax, dword ptr [rbp]
	mov	rsp, rsp
	and	eax, 0x38
	cmp	eax, 0x18
	nop	
	jne	.label_601
	cmp	qword ptr [r12 + 0x88], 2
	lea	rdi, [rdi]
	jne	.label_601
	nop	
	mov	rbx, rdi
	nop	
	mov	esi, dword ptr [rsp + 0x54]
	mov	rdi, r12
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_665
	cmp	rax, 0x9fa0
	nop	
	mov	rdi, rbx
	nop	
	je	.label_601
	mov	ecx, 0xff534d42
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_601
	cmp	rax, 0x5346414f
	mov	rsp, rsp
	je	.label_601
	jmp	.label_593
.label_618:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_595
.label_665:
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	je	.label_601
	lea	rdi, [rdi]
	cmp	rax, 0x6969
	jne	.label_593
.label_601:
	cmp	dword ptr [rsp + 0x1c], 3
	lea	rsi, [rsi]
	sete	r13b
	mov	r14b, 1
	lea	rdi, [rdi]
	jmp	.label_606
.label_593:
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x1c], 3
	lea	rdi, [rdi]
	sete	r13b
	mov	r14d, 0
	jne	.label_599
.label_606:
	test	byte ptr [rbp + 1], 2
	mov	qword ptr [rsp + 0x90], rbp
	mov	ebp, dword ptr [rsp + 0x54]
	je	.label_609
	mov	esi, 0x406
	lea	rdi, [rdi]
	mov	r15, rdi
	nop	
	mov	edx, 3
	mov	rsp, rsp
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	ebp, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x54], ebp
.label_609:
	test	ebp, ebp
	js	.label_620
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbx, rdi
	nop	
	mov	edx, ebp
	call	fts_safe_changedir
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	cl, 1
	test	eax, eax
	mov	rbp, rbp
	je	.label_625
.label_620:
	mov	rbp, rdi
	and	r13b, r14b
	movzx	eax, r13b
	cmp	eax, 1
	jne	.label_630
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x40], eax
.label_630:
	or	byte ptr [r12 + 0x72], 1
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	ah, 2
	mov	rsp, rsp
	je	.label_639
	mov	edi, dword ptr [rsp + 0x54]
	test	edi, edi
	lea	rdi, [rdi]
	js	.label_639
	call	close
.label_639:
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], 0
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rdi, rbp
.label_625:
	mov	rbp, qword ptr [rsp + 0x90]
.label_599:
	mov	rax, qword ptr [r12 + 0x38]
	mov	rdx, qword ptr [r12 + 0x48]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_649
	mov	rsp, rsp
	dec	rdx
.label_649:
	mov	rsp, rsp
	mov	dword ptr [rsp + 4], ecx
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp], 4
	mov	r13, rbp
	mov	rsp, rsp
	je	.label_656
	mov	rax, qword ptr [rdi + 0x20]
	nop	
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x58], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_656:
	mov	rsp, rsp
	lea	rax, [rdx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rax
	nop	
	mov	rcx, qword ptr [rdi + 0x30]
	mov	qword ptr [rsp + 0x88], rdi
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x90], rcx
	mov	rax, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	add	rdx, 0x102
	nop	
	mov	qword ptr [rsp + 0x68], rdx
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	mov	rsp, rsp
	xor	eax, eax
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_598:
	mov	rsp, rsp
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	je	.label_600
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_631:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x78]
	nop	
	mov	dword ptr [rax], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_610
	mov	rbp, rbp
	mov	r13, r14
	mov	rbp, rbp
	add	r13, 0x13
	lea	rsi, [rsi]
	test	byte ptr [rbp], 0x20
	jne	.label_613
	mov	rbp, rbp
	movzx	eax, byte ptr [r13]
	mov	rbp, rbp
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	jne	.label_613
	movzx	eax, byte ptr [r14 + 0x14]
	mov	rbp, rbp
	cmp	eax, 0x2e
	mov	rbp, rbp
	je	.label_619
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	je	.label_622
	lea	rsi, [rsi]
	jmp	.label_613
	nop	
.label_619:
	cmp	byte ptr [r14 + 0x15], 0
	lea	rdi, [rdi]
	jne	.label_613
.label_622:
	mov	rbx, qword ptr [r12 + 0x18]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_631
	jmp	.label_635
.label_613:
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	strlen
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	lea	rdi, [rbx + 0x110]
	lea	rsi, [rsi]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbp, rbp
	mov	r12, rax
	test	r12, r12
	je	.label_614
	mov	rsp, rsp
	mov	rdi, r12
	lea	rdi, [rdi]
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, rbp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x50], rcx
	mov	r13, qword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], r13
	lea	rsi, [rsi]
	mov	dword ptr [r12 + 0x40], 0
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x18], 0
	mov	rbp, rbp
	mov	word ptr [r12 + 0x72], 0
	mov	rbp, rbp
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r12 + 0x20], xmm0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	cmp	rbx, rax
	jae	.label_648
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x70]
	jmp	.label_664
	nop	word ptr cs:[rax + rax]
.label_648:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rsi, [rax + rbx]
	lea	rsi, [rsi]
	add	rsi, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	jb	.label_666
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x90], rbp
	mov	qword ptr [rcx + 0x30], rsi
	mov	rdi, r13
	mov	rsp, rsp
	mov	rbp, rcx
	call	realloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_597
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	nop	
	mov	rcx, rbp
	je	.label_605
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x70]
	add	rax, r13
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x90]
	test	byte ptr [rbp], 4
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	cmovne	rdx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rdx
	mov	al, 1
	mov	qword ptr [rsp + 0x38], rax
	jmp	.label_603
.label_605:
	mov	rbp, qword ptr [rsp + 0x90]
	mov	r13, qword ptr [rsp + 0x70]
.label_603:
	mov	rax, qword ptr [rcx + 0x30]
	sub	rax, r13
.label_664:
	add	rbx, r13
	lea	rsi, [rsi]
	jb	.label_611
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rax
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rcx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x80], rax
	mov	rsp, rsp
	test	byte ptr [rbp], 4
	mov	rbp, rbp
	jne	.label_655
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_624
	nop	word ptr [rax + rax]
.label_655:
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [r12 + 0x38]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	nop	
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	call	memmove
.label_624:
	mov	qword ptr [rsp + 0x70], r13
	mov	edx, dword ptr [rbp]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_640
	mov	eax, edx
	and	eax, 0x400
	nop	
	jne	.label_640
	mov	r13, rbp
	xor	edx, edx
	nop	
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_589
	nop	dword ptr [rax]
.label_640:
	mov	r13, rbp
	mov	rbp, rbp
	and	edx, 0x18
	mov	rsp, rsp
	movzx	ecx, byte ptr [r14 + 0x12]
	mov	rsp, rsp
	xor	eax, eax
	cmp	edx, 0x18
	mov	rbp, rbp
	mov	edx, 0
	jne	.label_650
	mov	rbp, rbp
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_650:
	mov	word ptr [r12 + 0x70], 0xb
	mov	rsp, rsp
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rbp, qword ptr [rsp + 0x10]
	nop	
	ja	.label_663
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_661]]
.label_663:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	mov	rbp, rbp
	adc	rax, 0
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0xa8], rax
.label_589:
	mov	qword ptr [r12 + 0x10], 0
	lea	rdi, [rdi]
	test	r15, r15
	lea	rsi, [rsi]
	mov	rax, r12
	je	.label_651
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_651:
	mov	r15, rax
	cmp	rbp, 0x2710
	nop	
	jne	.label_591
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_591
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x54]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x60]
	call	filesystem_type
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	cmp	rax, 0x6969
	je	.label_591
	cmp	rax, 0x1021994
	mov	rbp, rbp
	je	.label_591
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_591
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rsp], eax
	nop	word ptr [rax + rax]
.label_591:
	mov	rsp, rsp
	inc	rbp
	cmp	qword ptr [rsp + 0x30], rbp
	mov	rsp, rsp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x60]
	ja	.label_598
	jmp	.label_600
.label_610:
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	mov	eax, dword ptr [rax]
	test	eax, eax
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x10]
	je	.label_612
	mov	dword ptr [r12 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x80]
	or	rax, rbp
	mov	rbp, rbp
	mov	ax, 7
	lea	rdi, [rdi]
	mov	cx, 4
	mov	rbp, rbp
	cmovne	cx, ax
	mov	word ptr [r12 + 0x70], cx
.label_612:
	nop	
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_600
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_600
.label_635:
	mov	r13, rbp
	mov	rbp, qword ptr [rsp + 0x10]
.label_600:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	test	al, 1
	mov	rdi, qword ptr [rsp + 0x80]
	je	.label_634
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	jmp	.label_638
	nop	word ptr cs:[rax + rax]
.label_646:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_638:
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_644
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	lea	rdi, [rdi]
	je	.label_646
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	nop	
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_646
.label_644:
	cmp	qword ptr [r15 + 0x58], 0
	js	.label_634
	lea	rdi, [rdi]
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_662:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	lea	rdi, [rdi]
	cmp	rdx, rsi
	mov	rsp, rsp
	je	.label_654
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rcx + 0x38]
	nop	
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rdx
.label_654:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	test	rdx, rdx
	jne	.label_659
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 8]
.label_659:
	mov	rsp, rsp
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	lea	rdi, [rdi]
	jns	.label_662
.label_634:
	test	byte ptr [r13], 4
	mov	rsp, rsp
	je	.label_626
	mov	rax, qword ptr [rsp + 0x58]
	mov	rdx, rax
	mov	rbp, rbp
	lea	rax, [rdx - 1]
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x70]
	cmp	rsi, qword ptr [rcx + 0x30]
	cmove	rdx, rax
	test	rbp, rbp
	cmove	rdx, rax
	mov	byte ptr [rdx], 0
.label_626:
	nop	
	test	rdi, rdi
	jne	.label_590
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	mov	rbp, rbp
	je	.label_590
	cmp	dword ptr [rsp + 0x1c], 1
	je	.label_596
	lea	rsi, [rsi]
	test	rbp, rbp
	jne	.label_590
.label_596:
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_602
	mov	rsi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x88]
	call	fts_safe_changedir
	jmp	.label_608
.label_602:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x88]
	call	restore_initial_cwd
.label_608:
	test	eax, eax
	je	.label_590
	mov	word ptr [r12 + 0x70], 7
	nop	
	or	byte ptr [r13 + 1], 0x20
	nop	
	xor	ebx, ebx
	test	r15, r15
	je	.label_595
	nop	
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_621:
	mov	rbp, rbp
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_616
	mov	rsp, rsp
	call	closedir
.label_616:
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_621
	nop	
	jmp	.label_595
.label_590:
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_642
	mov	eax, dword ptr [rsp]
	test	al, 1
	jne	.label_629
	cmp	rbp, 2
	nop	
	jb	.label_632
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_636
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, rbp
	nop	
	call	fts_sort
	mov	rbx, rax
	lea	rdi, [rdi]
	jmp	.label_595
.label_642:
	cmp	dword ptr [rsp + 0x1c], 3
	nop	
	jne	.label_645
	movzx	eax, word ptr [r12 + 0x70]
	lea	rsi, [rsi]
	cmp	eax, 4
	nop	
	je	.label_645
	mov	rsp, rsp
	movzx	eax, ax
	cmp	eax, 7
	lea	rdi, [rdi]
	je	.label_645
	mov	word ptr [r12 + 0x70], 6
.label_645:
	xor	ebx, ebx
	mov	rsp, rsp
	test	r15, r15
	je	.label_595
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_658:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_637
	call	closedir
.label_637:
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	r15, rbp
	jne	.label_658
	jmp	.label_595
.label_629:
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	nop	
	call	fts_sort
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14], 0
	jmp	.label_595
.label_632:
	mov	rbx, r15
	mov	rsp, rsp
	jmp	.label_595
.label_636:
	lea	rdi, [rdi]
	mov	rbx, r15
	lea	rdi, [rdi]
	jmp	.label_595
.label_611:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	free
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_592
	nop	dword ptr [rax]
.label_604:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_628
	mov	rbp, rbp
	call	closedir
.label_628:
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	r15, rbx
	jne	.label_604
.label_592:
	mov	rbx, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x78]
	mov	dword ptr [rax], 0x24
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_595
.label_666:
	mov	rdi, r13
	mov	rbx, rcx
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	nop	
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x24
	mov	qword ptr [rsp + 0x40], r12
	jmp	.label_614
.label_597:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x20], 0
	mov	qword ptr [rsp + 0x40], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_614:
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	call	free
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x60]
	nop	
	je	.label_633
	nop	word ptr cs:[rax + rax]
.label_643:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_607
	nop	
	call	closedir
.label_607:
	mov	rdi, r15
	call	free
	nop	
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_643
.label_633:
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x70], 7
	lea	rsi, [rsi]
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	dword ptr [rax], r14d
	xor	ebx, ebx
.label_595:
	mov	rax, rbx
	mov	rsp, rsp
	add	rsp, 0x98
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a590

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_671
	nop	
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_668
	mov	edi, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	setne	al
	jmp	.label_669
.label_671:
	xor	eax, eax
	jmp	.label_669
.label_668:
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	mov	rbp, rbp
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_673
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	call	close
.label_673:
	nop	
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	lea	rsi, [rsi]
	xor	eax, eax
.label_669:
	mov	rsp, rsp
	movzx	ebp, al
	lea	rsi, [rsi]
	add	rbx, 0x60
	jmp	.label_667
	nop	dword ptr [rax]
.label_672:
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_667:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	i_ring_empty
	mov	rsp, rsp
	test	al, al
	nop	
	jne	.label_670
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jns	.label_672
	lea	rsi, [rsi]
	jmp	.label_667
.label_670:
	mov	eax, ebp
	mov	rbp, rbp
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a660

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	cmp	edx, 5
	jb	.label_674
	nop	
	push	rax
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	mov	rbp, rbp
	add	rsp, 8
	ret	
.label_674:
	mov	rsp, rsp
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a690
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	r12d, esi
	mov	rbp, rbp
	mov	r13, rdi
	nop	
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	lea	rsi, [rsi]
	jne	.label_684
	mov	r15, qword ptr [r13]
	lea	rdi, [rdi]
	call	__errno_location
	mov	r14, rax
	lea	rdi, [rdi]
	mov	dword ptr [r14], 0
	mov	rsp, rsp
	xor	eax, eax
	nop	
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_678
	movzx	ecx, word ptr [r15 + 0x70]
	mov	rbp, rbp
	xor	eax, eax
	cmp	ecx, 1
	je	.label_688
	movzx	ecx, cx
	cmp	ecx, 9
	nop	
	jne	.label_678
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_678
.label_684:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_678
.label_688:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	nop	
	je	.label_677
	nop	word ptr cs:[rax + rax]
.label_683:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_675
	call	closedir
.label_675:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	mov	rbx, rbp
	jne	.label_683
.label_677:
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r12d, 0x1000
	jne	.label_687
	or	byte ptr [r13 + 0x49], 0x10
	mov	rsp, rsp
	mov	ebx, 2
.label_687:
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	nop	
	jne	.label_679
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_679
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_679
	mov	edx, eax
	and	edx, 0x10
	lea	rsi, [rsi]
	shl	edx, 0xd
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_689
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_3
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, edx
	mov	rbp, rbp
	call	open_safer
	jmp	.label_685
.label_679:
	mov	rdi, r13
	mov	esi, ebx
	mov	rbp, rbp
	call	fts_build
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], rax
.label_678:
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_689:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_3
	xor	eax, eax
	call	openat_safer
.label_685:
	mov	r15d, eax
	test	r15d, r15d
	mov	rbp, rbp
	js	.label_682
	mov	rbp, rbp
	mov	rdi, r13
	mov	esi, ebx
	lea	rsi, [rsi]
	call	fts_build
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], rax
	mov	rbp, rbp
	test	byte ptr [r13 + 0x49], 2
	jne	.label_691
	nop	
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_681
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	rsp, rsp
	mov	dword ptr [r14], ebx
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_678
.label_682:
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_678
.label_691:
	mov	esi, dword ptr [r13 + 0x2c]
	mov	rbp, rbp
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_680
	lea	rsi, [rsi]
	cmp	esi, -0x64
	jne	.label_686
.label_680:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_690
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_690:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_676
.label_681:
	lea	rsi, [rsi]
	mov	edi, r15d
	call	close
.label_676:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_678
.label_686:
	mov	rbp, rbp
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8f0

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a910

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_692
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	mov	rsp, rsp
	ret	
.label_692:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a940

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x88
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x49], 2
	je	.label_693
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_697
	xor	r12d, r12d
	lea	rsi, [rsi]
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	lea	rdi, [rdi]
	call	hash_initialize
	mov	rsp, rsp
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	r14d, 0
	mov	rbp, rbp
	je	.label_695
.label_697:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rdi, rbp
	mov	rsp, rsp
	call	hash_lookup
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_698
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	jmp	.label_693
.label_698:
	mov	r12b, 1
	mov	r14, rbp
.label_695:
	xor	eax, eax
	nop	
	test	r15d, r15d
	js	.label_693
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	mov	rbp, rbp
	call	fstatfs
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_693
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_694
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_694
	mov	rax, qword ptr [r13 + 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_696
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	je	.label_694
	lea	rdi, [rdi]
	call	abort
.label_696:
	mov	rdi, rbp
	call	free
.label_694:
	mov	rax, qword ptr [rsp + 0x10]
.label_693:
	lea	rsi, [rsi]
	add	rsp, 0x88
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aab0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rsp, rsp
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aad0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	lea	rdi, [rdi]
	sete	al
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aae0

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rdi, [rdi]
	cmp	rcx, rax
	sbb	edx, edx
	lea	rdi, [rdi]
	and	edx, 1
	mov	rsp, rsp
	cmp	rax, rcx
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmovae	eax, edx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab20

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
	je	.label_699
	nop	
	cmp	r15, -2
	jb	.label_699
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_699
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_699:
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
	#Procedure 0x40abb0

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
	jne	.label_700
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_701
	test	cl, cl
	mov	rsp, rsp
	jne	.label_701
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_701
.label_700:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_701
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_701:
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
	#Procedure 0x40ac40

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac60

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_702
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_704
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	nop	
	jne	.label_704
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	je	.label_705
.label_704:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], rdx
	mov	rbp, rbp
	test	rdx, rcx
	jne	.label_703
	mov	al, 1
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_705
	mov	rax, qword ptr [rsi]
	nop	
	mov	qword ptr [rdi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_703:
	mov	rsp, rsp
	xor	eax, eax
.label_705:
	ret	
.label_702:
	push	rax
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x3c
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	nop	
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40acf0

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_706
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
.label_706:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_707
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
	ja	.label_709
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_708
.label_709:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_708:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_707:
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
	#Procedure 0x40ae10

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
	je	.label_711
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_710
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_712
.label_710:
	nop	
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_711
.label_712:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_711:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ae60
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae70
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae80
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae90
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	nop	
	mov	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	cmp	rcx, rdx
	jae	.label_717
	mov	rdi, rcx
	not	rdi
	nop	
	add	rdi, rdx
	mov	rsi, rdi
	mov	rbp, rbp
	shr	rsi, 4
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	bt	rdi, 4
	jb	.label_714
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_715
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_713:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_713
.label_715:
	add	rcx, 0x10
.label_714:
	nop	
	test	rsi, rsi
	je	.label_717
	nop	word ptr cs:[rax + rax]
.label_719:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_720
	nop	word ptr cs:[rax + rax]
.label_721:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_721
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_720:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_716
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_718:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_718
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_716:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_719
.label_717:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40afa0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_731
	mov	rbp, rbp
	mov	rax, rcx
	mov	rbp, rbp
	not	rax
	lea	rdi, [rdi]
	add	rax, r9
	mov	rbp, rbp
	mov	r8, rax
	shr	r8, 4
	lea	rdi, [rdi]
	xor	edx, edx
	bt	rax, 4
	jb	.label_722
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_732
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_725:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_725
	mov	rsp, rsp
	jmp	.label_728
.label_722:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_730
.label_732:
	xor	esi, esi
.label_728:
	add	rcx, 0x10
.label_730:
	test	r8, r8
	nop	
	je	.label_731
	nop	dword ptr [rax]
.label_724:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_734
	nop	dword ptr [rax]
.label_723:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_723
	lea	rdi, [rdi]
	inc	rsi
.label_734:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_729
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_733:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_733
	inc	rsi
.label_729:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_724
.label_731:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_726
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_727
.label_726:
	xor	eax, eax
.label_727:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b0b0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	rax, rdx
	lea	rdi, [rdi]
	jae	.label_742
	mov	rsp, rsp
	mov	rdi, rax
	not	rdi
	mov	rbp, rbp
	add	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 4
	mov	rsp, rsp
	xor	ebx, ebx
	bt	rdi, 4
	mov	rbp, rbp
	jb	.label_743
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_735
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_745:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_745
.label_735:
	add	rax, 0x10
.label_743:
	test	rsi, rsi
	je	.label_742
	nop	dword ptr [rax]
.label_740:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_736
	nop	word ptr cs:[rax + rax]
.label_741:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_741
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_736:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_744
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_746:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_746
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_744:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_740
.label_742:
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_13
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_10
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	nop	
	call	__fprintf_chk
	nop	
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_737]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_738]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_739]]
	mov	rsp, rsp
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	mov	rsp, rsp
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_6
	mov	al, 1
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_4
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b2c0

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r12, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_748
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_747
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_747
	cmp	rsi, r12
	je	.label_750
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_751:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_749
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_747
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_751
.label_750:
	mov	r15, r12
	jmp	.label_747
.label_749:
	nop	
	mov	r15, qword ptr [rbx]
.label_747:
	lea	rsi, [rsi]
	mov	rax, r15
	nop	
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	ret	
.label_748:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b380
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_752
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_755
	nop	dword ptr [rax]
.label_754:
	add	rcx, 0x10
.label_755:
	cmp	rcx, rdx
	jae	.label_753
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_754
.label_752:
	mov	rsp, rsp
	ret	
.label_753:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b3c0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	jae	.label_761
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_759:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_756
	test	rdx, rdx
	jne	.label_759
	lea	rdi, [rdi]
	jmp	.label_758
.label_756:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_758
	mov	rax, qword ptr [rdx]
	jmp	.label_760
.label_758:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_757:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_760
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_757
.label_760:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_761:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b460
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_762
	nop	word ptr cs:[rax + rax]
.label_764:
	add	r9, 0x10
.label_762:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_763
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_764
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_764
	nop	word ptr cs:[rax + rax]
.label_765:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_763
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10]
	nop	
	mov	qword ptr [rsi + rax*8], rcx
	lea	rdi, [rdi]
	inc	rax
	mov	rsp, rsp
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	nop	
	jne	.label_765
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_764
.label_763:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b4e0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_766
	nop	dword ptr [rax]
.label_767:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_766:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_768
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_767
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_767
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_768
	nop	word ptr [rax + rax]
.label_770:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_769
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_770
	jmp	.label_768
	nop	word ptr cs:[rax + rax]
.label_769:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_767
.label_768:
	nop	
	mov	rax, rbx
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5b0
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_772
	inc	rdi
	nop	
	xor	edx, edx
.label_771:
	mov	rcx, rdx
	nop	
	shl	rcx, 5
	sub	rcx, rdx
	nop	
	movzx	eax, al
	add	rax, rcx
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_771
.label_772:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5f0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_773]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b610

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	r14, r8
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	r12, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	lea	rdi, [rdi]
	cmovne	r13, rdx
	test	rcx, rcx
	mov	rsp, rsp
	mov	ebp, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	cmovne	rbp, rcx
	mov	edi, 0x50
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	test	r15, r15
	je	.label_778
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_787
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_779]]
	jbe	.label_775
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_784]]
	ucomiss	xmm1, xmm0
	jbe	.label_775
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_774]]
	lea	rsi, [rsi]
	jbe	.label_775
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_775
	addss	xmm1,  dword ptr [dword ptr [rip + label_779]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_775
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_780]]
	ucomiss	xmm2, xmm0
	jb	.label_775
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_775
.label_787:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_785
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_786
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_776
.label_786:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_776:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_782]]
	mov	rbp, rbp
	movaps	xmm2, xmm0
	mov	rbp, rbp
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_783]]
	nop	
	jae	.label_775
.label_785:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_789
.label_788:
	mov	rbp, rbp
	add	rbx, 2
.label_789:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_775
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_781
	nop	word ptr cs:[rax + rax]
.label_777:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_781
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_777
.label_781:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_788
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_775
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_775
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_775
	mov	rsp, rsp
	shl	rbx, 4
	nop	
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x30], r13
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	lea	rdi, [rdi]
	jmp	.label_778
.label_775:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_778:
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b8f0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, rdi
	mov	rsp, rsp
	div	rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b910

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	cmp	rdi, rsi
	sete	al
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b920
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r15]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_790
.label_794:
	mov	rsp, rsp
	add	r14, 0x10
.label_790:
	cmp	r14, rax
	jae	.label_792
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_794
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_796
	nop	word ptr [rax + rax]
.label_795:
	nop	
	test	cl, 1
	je	.label_791
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_791:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	nop	
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	jne	.label_795
.label_796:
	test	cl, cl
	je	.label_793
	mov	rdi, qword ptr [r14]
	call	rax
.label_793:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_794
.label_792:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ba00

	.globl hash_free
	.type hash_free, @function
hash_free:
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_797
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_797
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_805
	nop	word ptr [rax + rax]
.label_798:
	mov	rsp, rsp
	add	r15, 0x10
.label_805:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_797
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_798
	test	r15, r15
	je	.label_798
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_803
	nop	dword ptr [rax]
.label_802:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_803:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_802
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_798
.label_797:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_799
	nop	dword ptr [rax + rax]
.label_800:
	mov	rbp, rbp
	add	r15, 0x10
.label_799:
	cmp	r15, rax
	jae	.label_804
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_800
	nop	dword ptr [rax + rax]
.label_806:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_806
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_800
.label_804:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_801
	nop	word ptr cs:[rax + rax]
.label_807:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_807
.label_801:
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rbp, rbp
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bb30

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_823
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_817
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_822
.label_817:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_822:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_782]]
	mov	rsp, rsp
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	mov	rsp, rsp
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rcx, rax
	lea	rsi, [rsi]
	cvttss2si	rsi, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	mov	rbp, rbp
	cmovae	rsi, rcx
	mov	rbp, rbp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_783]]
	mov	rbp, rbp
	jae	.label_812
.label_823:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_820
	nop	word ptr cs:[rax + rax]
.label_819:
	lea	rsi, [rsi]
	add	rbx, 2
.label_820:
	cmp	rbx, -1
	je	.label_812
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_808
.label_813:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_808
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_813
.label_808:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_819
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_812
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_814
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_812
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	mov	rsp, rsp
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	nop	
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_815
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_814
.label_815:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_816
.label_809:
	add	r12, 0x10
.label_816:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_811
	cmp	qword ptr [r12], 0
	je	.label_809
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_824
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_821:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_826
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_825
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_810
	nop	
.label_825:
	lea	rdi, [rdi]
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	mov	rbp, rbp
	inc	qword ptr [r14 + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp], 0
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rbp
.label_810:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_821
.label_824:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_809
.label_811:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_818
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_812:
	mov	rbp, rbp
	xor	ebp, ebp
.label_814:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_826:
	mov	rbp, rbp
	call	abort
.label_818:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bea0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	qword ptr [rsp], rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	r13, qword ptr [rsi]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + 8]
	nop	
	cmp	r13, rax
	nop	
	jae	.label_831
	nop	
	test	dl, dl
	je	.label_837
	nop	dword ptr [rax]
.label_846:
	nop	
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	je	.label_847
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_841
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	dword ptr [rax]
.label_836:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	nop	
	call	qword ptr [r15 + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_833
	mov	rbp, rbp
	mov	rdx, qword ptr [r15]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_844
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], rbp
	nop	
	jmp	.label_834
	nop	word ptr cs:[rax + rax]
.label_844:
	mov	rbp, rbp
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r15 + 0x18]
	nop	
	mov	qword ptr [rbp], 0
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbp + 8], rax
	nop	
	mov	qword ptr [r15 + 0x48], rbp
.label_834:
	test	rcx, rcx
	mov	rbp, rcx
	mov	rsp, rsp
	jne	.label_836
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
.label_841:
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], 0
.label_847:
	mov	rsp, rsp
	add	r13, 0x10
	mov	rsp, rsp
	cmp	r13, rax
	jb	.label_846
	jmp	.label_831
	nop	word ptr cs:[rax + rax]
.label_837:
	mov	rbp, rbp
	mov	r12, qword ptr [r13]
	mov	rbp, rbp
	test	r12, r12
	mov	rsp, rsp
	je	.label_828
	lea	rdi, [rdi]
	mov	r14, qword ptr [r13 + 8]
	test	r14, r14
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	je	.label_845
	nop	dword ptr [rax + rax]
.label_843:
	mov	rbx, qword ptr [r14]
	mov	rdi, rbx
	nop	
	call	qword ptr [r15 + 0x30]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	cmp	rax, rsi
	jae	.label_833
	mov	rdx, qword ptr [r15]
	nop	
	mov	rcx, qword ptr [r14 + 8]
	nop	
	shl	rax, 4
	nop	
	cmp	qword ptr [rdx + rax], 0
	mov	rsp, rsp
	je	.label_840
	mov	rdi, qword ptr [rdx + rax + 8]
	nop	
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r14
	lea	rdi, [rdi]
	jmp	.label_829
	nop	word ptr [rax + rax]
.label_840:
	add	rdx, rax
	nop	
	mov	qword ptr [rdx], rbx
	mov	rbp, rbp
	inc	qword ptr [r15 + 0x18]
	mov	qword ptr [r14], 0
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x48]
	nop	
	mov	qword ptr [r14 + 8], rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x48], r14
.label_829:
	mov	rbp, rbp
	test	rcx, rcx
	mov	r14, rcx
	jne	.label_843
	mov	r12, qword ptr [r13]
.label_845:
	mov	rbp, rbp
	mov	qword ptr [r13 + 8], 0
	mov	rbp, rbp
	mov	rdi, r12
	call	qword ptr [r15 + 0x30]
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	cmp	rbx, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jae	.label_842
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rbx], 0
	je	.label_830
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x48]
	test	rax, rax
	je	.label_835
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x48], rcx
	jmp	.label_838
	nop	word ptr cs:[rax + rax]
.label_830:
	lea	rsi, [rsi]
	add	rbp, rbx
	mov	rbp, rbp
	mov	qword ptr [rbp], r12
	inc	qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	jmp	.label_827
.label_835:
	mov	rbp, rbp
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_839
.label_838:
	mov	qword ptr [rax], r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp + rbx + 8], rax
.label_827:
	mov	qword ptr [r13], 0
	nop	
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	dec	qword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
.label_828:
	mov	rsp, rsp
	add	r13, 0x10
	cmp	r13, rax
	nop	
	jb	.label_837
.label_831:
	nop	
	mov	al, 1
.label_832:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_839:
	xor	eax, eax
	jmp	.label_832
.label_833:
	call	abort
.label_842:
	mov	rsp, rsp
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c1b0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rbp
	mov	r13, rdi
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_860
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x30]
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	rbp, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	jae	.label_860
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_849
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_856
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_861
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_853
.label_856:
	mov	rax, r14
	jmp	.label_865
.label_861:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_849
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_877:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_864
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_875
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_877
	nop	
	jmp	.label_849
.label_864:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_853
.label_875:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_853:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_849
.label_865:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_854
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_854
.label_849:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_866
	cvtsi2ss	xmm1, rax
	jmp	.label_863
.label_866:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_863:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_876
	cvtsi2ss	xmm0, rcx
	jmp	.label_851
.label_876:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_851:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_852
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_868
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_779]]
	jbe	.label_848
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_784]]
	ucomiss	xmm3, xmm2
	jbe	.label_848
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_774]]
	jbe	.label_848
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_848
	addss	xmm3,  dword ptr [dword ptr [rip + label_779]]
	ucomiss	xmm2, xmm3
	jbe	.label_848
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_780]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_848
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_858
.label_848:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_857]]
	jmp	.label_858
.label_868:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_858:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_852
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_878
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_878:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_783]]
	mov	rsp, rsp
	jae	.label_854
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_782]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	lea	rdi, [rdi]
	je	.label_854
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_860
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_852
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_859
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_867
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_859
.label_867:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_852
	lea	rbp, [r15 + rbp + 8]
.label_855:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_874
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_850
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_855
	lea	rsi, [rsi]
	jmp	.label_852
.label_874:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_859
.label_850:
	mov	rax, qword ptr [rbp]
.label_859:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_862
.label_852:
	cmp	qword ptr [r12], 0
	je	.label_871
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_869
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_870
.label_871:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_872]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_873
.label_869:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_854
.label_870:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_873:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_854:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_860:
	mov	rsp, rsp
	call	abort
.label_862:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c5f0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, -1
	je	.label_879
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_879:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c640

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_898
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_894
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_884
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_887
	mov	r14, qword ptr [r13]
.label_884:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_890
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rax]
	lea	rsi, [rsi]
	movups	xmmword ptr [r13], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_893
.label_887:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_894
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_889:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_883
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_891
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_889
	lea	rsi, [rsi]
	jmp	.label_894
.label_890:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_893
.label_883:
	mov	rcx, rax
	jmp	.label_900
.label_891:
	mov	r14, qword ptr [rcx]
.label_900:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_893:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_894
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_882
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_885
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_897
.label_885:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_897:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_896
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_899
.label_896:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_899:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_882
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_886
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_779]]
	nop	
	jbe	.label_880
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_784]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_880
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_880
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_774]]
	jbe	.label_880
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_779]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_880
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_780]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_880
	ucomiss	xmm3, xmm4
	ja	.label_881
.label_880:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_881
.label_886:
	mov	eax, OFFSET FLAT:default_tuning
.label_881:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_882
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_895
	mulss	xmm0, dword ptr [rax + 8]
.label_895:
	movss	xmm1,  dword ptr [dword ptr [rip + label_782]]
	nop	
	movaps	xmm2, xmm0
	lea	rsi, [rsi]
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	mov	rbp, rbp
	test	al, al
	jne	.label_882
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_888
.label_892:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_892
.label_888:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_882:
	nop	
	mov	r12, r14
.label_894:
	mov	rax, r12
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_898:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c990

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	movd	xmm0, esi
	lea	rsi, [rsi]
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	rbp, rbp
	mov	dword ptr [rdi + 0x10], esi
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c9d0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c9e0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	lea	rsi, [rsi]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	rbp, rbp
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_901
	lea	rsi, [rsi]
	mov	dl, byte ptr [rdi + 0x1c]
	mov	rbp, rbp
	xor	dl, 1
	movzx	edx, dl
	mov	rbp, rbp
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_901:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca30

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	nop	
	cmp	byte ptr [rdi + 0x1c], 0
	lea	rdi, [rdi]
	jne	.label_902
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rdi + 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rdi + 0x14]
	mov	rbp, rbp
	mov	eax, dword ptr [rdi + rdx*4]
	mov	rbp, rbp
	mov	dword ptr [rdi + rdx*4], ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rdi + 0x14]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rdi + 0x18]
	mov	rsp, rsp
	jne	.label_903
	lea	rsi, [rsi]
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	ret	
.label_903:
	add	ecx, 3
	and	ecx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_902:
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca90

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
	mov	eax, OFFSET FLAT:.str.1_11
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_904
	nop	
	mov	rax, rcx
.label_904:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cad0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xd8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_905
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x80], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x90], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_905:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_907
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_908
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp], ecx
	jmp	.label_906
.label_908:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
.label_906:
	mov	ecx, dword ptr [rax]
.label_907:
	xor	eax, eax
	call	openat
	lea	rsi, [rsi]
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cbd0

	.globl opendirat
	.type opendirat, @function
opendirat:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	r14, rcx
	mov	rsp, rsp
	or	edx, 0x90900
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	xor	eax, eax
	call	openat_safer
	lea	rsi, [rsi]
	mov	ebp, eax
	test	ebp, ebp
	js	.label_909
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_910
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_909
.label_910:
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	mov	rsp, rsp
	call	close
	lea	rsi, [rsi]
	mov	dword ptr [rbx], r14d
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_909:
	nop	
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40cc50

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
	ja	.label_911
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
	jmp	.label_912
.label_911:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_912:
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
	#Procedure 0x40ccc0

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
	js	.label_913
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_915
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
	je	.label_913
.label_915:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_913
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_914
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_914:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_913:
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
	#Procedure 0x40cd70

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
	je	.label_934
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
.label_934:
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
	ja	.label_927
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_922
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_920
	mov	rsp, rsp
	test	esi, esi
	jne	.label_927
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_928
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_933
.label_927:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_919
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_920
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_921
.label_922:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_918
.label_920:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_926
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_929
.label_926:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_929:
	mov	edx, dword ptr [rax]
.label_923:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_918:
	mov	ebp, eax
.label_916:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_921:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_919
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_924
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_925
.label_919:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_932
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_935
.label_928:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_933:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_923
.label_924:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_925:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_936
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
	jns	.label_917
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_917
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
	js	.label_916
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_930
.label_917:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_916
.label_932:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_935:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_918
.label_936:
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
.label_930:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_916
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_916
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_931
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
	jne	.label_916
.label_931:
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
	jmp	.label_916
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d140

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
	.section .text
	.align	32
	#Procedure 0x40d160

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
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]