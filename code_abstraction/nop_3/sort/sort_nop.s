	.section	.text
	.align	32
	#Procedure 0x402cc0

	.globl usage
	.type usage, @function
usage:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	ebp, edi
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_7
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	nop	
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.6
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.15
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.16
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	call	emit_ancillary_info
	lea	rsi, [rsi]
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030a0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	lea	rdi, [rdi]
	push	rax
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4030d0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	lea	rdi, [rdi]
	push	rax
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	nop	
	jmp	fputs_unlocked
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403100

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	nop	
	push	r14
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.68
	nop	word ptr cs:[rax + rax]
.label_10:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.22
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_9
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	lea	rdi, [rdi]
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.22
	nop	
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.18_0
	nop	
	xor	eax, eax
	call	__printf_chk
	mov	rsp, rsp
	mov	edi, 5
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_8
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, 3
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strncmp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_8
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.79
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.22
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.18_0
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.22
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	lea	rdi, [rdi]
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.82
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x2b8
	mov	rbx, rsi
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x68], edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.23
	call	getenv
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], rax
	call	posix2_version
	add	eax, 0xfffcf250
	mov	rsp, rsp
	cmp	eax, 0x2b8
	seta	al
	mov	dword ptr [rsp + 0x5c], eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	r14, rbx
	call	set_program_name
	lea	rsi, [rsi]
	mov	edi, 6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	test	rax, rax
	setne	byte ptr [rsp + 0x2f]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.26
	nop	
	call	bindtextdomain
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.25
	mov	rsp, rsp
	call	textdomain
	mov	rbp, rbp
	call	initialize_exit_failure
	mov	rbp, rbp
	mov	edi, 3
	nop	
	call	hard_locale
	nop	
	mov	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  al
	mov	edi, 2
	call	hard_locale
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + hard_LC_TIME]],  al
	mov	rsp, rsp
	call	localeconv
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	to_uchar
	movzx	eax, al
	nop	
	mov	dword ptr [dword ptr [rip + decimal_point]],  eax
	test	al, al
	je	.label_100
	mov	rax, qword ptr [rbx]
	cmp	byte ptr [rax + 1], 0
	nop	
	je	.label_112
.label_100:
	mov	dword ptr [dword ptr [rip + decimal_point]],  0x2e
.label_112:
	mov	rax, qword ptr [rbx + 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	nop	
	movzx	eax, al
	nop	
	mov	dword ptr [dword ptr [rip + thousands_sep]],  eax
	mov	rsp, rsp
	test	al, al
	je	.label_57
	mov	rax, qword ptr [rbx + 8]
	cmp	byte ptr [rax + 1], 0
	lea	rsi, [rsi]
	je	.label_111
.label_57:
	mov	dword ptr [dword ptr [rip + thousands_sep]],  0xffffffff
.label_111:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	call	inittables
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	call	sigemptyset
	mov	rsp, rsp
	mov	rbp, -0x2c
	lea	rbx, [rsp + 0x70]
	nop	word ptr [rax + rax]
.label_35:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rbp + label_31]]
	nop	
	xor	esi, esi
	mov	rdx, rbx
	call	sigaction
	cmp	qword ptr [rsp + 0x70], 1
	je	.label_29
	mov	esi,  dword ptr [dword ptr [rbp + label_31]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:caught_signals
	call	sigaddset
.label_29:
	mov	rbp, rbp
	add	rbp, 4
	mov	rsp, rsp
	jne	.label_35
	mov	qword ptr [word ptr [rsp + 112]], OFFSET FLAT:sighandler
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_38]]
	movups	xmmword ptr [rsp + 0xe8], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_39]]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0xd8], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_40]]
	movups	xmmword ptr [rsp + 0xc8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_41]]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0xb8], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_42]]
	mov	rbp, rbp
	movups	xmmword ptr [rsp + 0xa8], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_43]]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x98], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_44]]
	movups	xmmword ptr [rsp + 0x88], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	mov	rbp, rbp
	movups	xmmword ptr [rsp + 0x78], xmm0
	mov	dword ptr [rsp + 0xf8], 0
	nop	
	mov	rbp, -0x2c
	mov	rsp, rsp
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_87:
	lea	rsi, [rsi]
	mov	esi,  dword ptr [dword ptr [rbp + label_31]]
	mov	edi, OFFSET FLAT:caught_signals
	nop	
	call	sigismember
	mov	rsp, rsp
	test	eax, eax
	nop	
	je	.label_80
	lea	rsi, [rsi]
	mov	edi,  dword ptr [dword ptr [rbp + label_31]]
	nop	
	xor	edx, edx
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	sigaction
.label_80:
	nop	
	add	rbp, 4
	jne	.label_87
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	mov	rsp, rsp
	mov	edi, 0x11
	xor	esi, esi
	lea	rdi, [rdi]
	call	signal
	mov	edi, OFFSET FLAT:exit_cleanup
	call	atexit
	lea	rdi, [rsp + 0x228]
	call	key_init
	mov	qword ptr [rsp + 0x228], -1
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	esi, 8
	call	xnmalloc
	mov	r12, rax
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x60], 0
	sete	byte ptr [rsp + 0x1f]
	mov	rbp, rbp
	mov	eax, 0
	nop	
	mov	qword ptr [rsp + 0x40], rax
	mov	r15d, 0
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	xor	r13d, r13d
	xor	ebx, ebx
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rbp, r14
	lea	rsi, [rsi]
	jmp	.label_19
	nop	word ptr cs:[rax + rax]
.label_89:
	nop	
	mov	r13b, cl
.label_19:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x70], 0xffffffff
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_13
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_21
	lea	rdi, [rdi]
	test	r15, r15
	nop	
	je	.label_21
	mov	ecx, dword ptr [rsp + 0x5c]
	nop	
	test	cl, 1
	je	.label_28
	mov	rsp, rsp
	test	bl, bl
	jne	.label_28
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	cmp	ecx, dword ptr [rsp + 0x68]
	nop	
	je	.label_28
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp + rcx*8]
	movzx	esi, byte ptr [rdx]
	mov	rbp, rbp
	cmp	esi, 0x2d
	mov	rsp, rsp
	jne	.label_28
	movzx	esi, byte ptr [rdx + 1]
	cmp	esi, 0x6f
	lea	rdi, [rdi]
	jne	.label_28
	nop	
	inc	ecx
	cmp	ecx, dword ptr [rsp + 0x68]
	jne	.label_21
	mov	cl, byte ptr [rdx + 2]
	mov	rbp, rbp
	test	cl, cl
	je	.label_28
	nop	
.label_21:
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:short_options
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:long_options
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x68]
	nop	
	mov	rsi, rbp
	lea	r8, [rsp + 0x70]
	mov	rsp, rsp
	call	getopt_long
	mov	r14d, eax
	test	r14d, r14d
	jle	.label_60
	nop	
	lea	edx, [r14 - 0x43]
	cmp	edx, 0x44
	ja	.label_64
	mov	eax, 0x6d
	lea	rdi, [rdi]
	mov	cl, 1
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_68]]
.label_1487:
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movsx	esi, r14b
	nop	
	call	specify_sort_size
	mov	eax, 0x53
	jmp	.label_23
	nop	word ptr cs:[rax + rax]
.label_13:
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
.label_28:
	mov	rbp, rbp
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	cmp	ecx, dword ptr [rsp + 0x68]
	jge	.label_76
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + optind]],  edx
	mov	rcx, qword ptr [rbp + rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + r15*8], rcx
	inc	r15
.label_23:
	mov	rsp, rsp
	mov	cl, r13b
	jmp	.label_89
.label_60:
	cmp	r14d, -1
	mov	eax, 0xffffffff
	nop	
	je	.label_28
	jmp	.label_91
.label_64:
	lea	rsi, [rsi]
	cmp	r14d, 1
	jne	.label_50
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax]
	mov	rbp, rbp
	cmp	eax, 0x2b
	jne	.label_95
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0x68]
	nop	
	jne	.label_106
	mov	qword ptr [rsp + 0x50], rbx
	mov	rbp, rbp
	xor	edx, edx
	jmp	.label_58
.label_1496:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r14d, 0x63
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_108
	nop	
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.33
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:check_args
	mov	ecx, OFFSET FLAT:check_types
	mov	r8d, 1
	call	__xargmatch_internal
	movsx	r14d,  byte ptr [byte ptr [rax + check_types]]
.label_108:
	test	bl, bl
	lea	rdi, [rdi]
	je	.label_11
	mov	rsp, rsp
	movsx	eax, bl
	nop	
	cmp	eax, r14d
	nop	
	jne	.label_15
.label_11:
	mov	cl, r13b
	mov	bl, r14b
	mov	eax, r14d
	lea	rdi, [rdi]
	jmp	.label_19
.label_1498:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + debug]],  1
	nop	
	mov	eax, 0x82
	lea	rdi, [rdi]
	jmp	.label_23
.label_1499:
	mov	eax, 0x83
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x40], rcx
	lea	rdi, [rdi]
	jmp	.label_23
.label_1502:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.32
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:sort_args
	mov	ecx, OFFSET FLAT:sort_types
	mov	rsp, rsp
	mov	r8d, 1
	call	__xargmatch_internal
	movsx	r14d,  byte ptr [byte ptr [rax + sort_types]]
.label_1486:
	mov	byte ptr [rsp + 0x6e], r14b
	mov	byte ptr [rsp + 0x6f], 0
	mov	edx, 2
	mov	rbp, rbp
	lea	rdi, [rsp + 0x6e]
	lea	rsi, [rsp + 0x228]
	lea	rsi, [rsi]
	call	set_ordering
.label_18:
	mov	rsp, rsp
	mov	cl, r13b
	mov	eax, r14d
	mov	rbp, rbp
	jmp	.label_19
.label_1488:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	call	add_temp_dir
	mov	eax, 0x54
	lea	rdi, [rdi]
	jmp	.label_23
.label_1490:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_70
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_52
.label_70:
	mov	eax, 0x6f
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rcx
	lea	rdi, [rdi]
	jmp	.label_23
.label_1492:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	cl, byte ptr [rax]
	mov	rsp, rsp
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_79
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 1]
	mov	rbp, rbp
	test	dl, dl
	je	.label_32
	mov	rsp, rsp
	movzx	ecx, cl
	mov	rsp, rsp
	cmp	ecx, 0x5c
	jne	.label_88
	lea	rdi, [rdi]
	movzx	ecx, dl
	cmp	ecx, 0x30
	mov	rbp, rbp
	jne	.label_88
	cmp	byte ptr [rax + 2], 0
	lea	rdi, [rdi]
	jne	.label_88
	xor	ecx, ecx
.label_32:
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	cmp	edx, 0x80
	mov	rsp, rsp
	movsx	eax, cl
	je	.label_98
	cmp	edx, eax
	jne	.label_101
.label_98:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + tab]],  eax
	mov	eax, 0x74
	nop	
	jmp	.label_23
.label_1493:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + unique]],  1
	mov	eax, 0x75
	nop	
	jmp	.label_23
.label_1494:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	movsxd	rdx,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	mov	eax, 0x79
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp + rdx*8 - 8]
	jne	.label_23
	nop	word ptr cs:[rax + rax]
.label_110:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rcx]
	lea	edx, [rax - 0x30]
	mov	rbp, rbp
	inc	rcx
	mov	rsp, rsp
	cmp	edx, 0xa
	jb	.label_110
	cmp	al, 1
	adc	dword ptr [dword ptr [rip + optind]],  -1
	jmp	.label_18
.label_1495:
	mov	byte ptr [byte ptr [rip + eolchar]],  1
	lea	rdi, [rdi]
	mov	eax, 0x7a
	jmp	.label_23
.label_1497:
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_30
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	jne	.label_37
.label_30:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + compress_program]],  rax
	mov	eax, 0x81
	jmp	.label_23
.label_1503:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x70]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movsx	esi, r14b
	mov	rsp, rsp
	call	specify_nthreads
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsi]
	mov	eax, 0x87
	lea	rdi, [rdi]
	jmp	.label_23
.label_1489:
	lea	rdi, [rsp + 0x270]
	mov	rbp, rbp
	call	key_init
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	edx, OFFSET FLAT:.str.36
	mov	rsi, r14
	call	parse_field_count
	mov	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	lea	rdx, [rcx - 1]
	mov	qword ptr [r14], rdx
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_66
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_71
	inc	rax
	nop	
	lea	rsi, [r14 + 8]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.30
	mov	rdi, rax
	mov	rbp, rbp
	call	parse_field_count
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx - 1]
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], rdx
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_54
.label_71:
	cmp	qword ptr [r14], 0
	jne	.label_82
	cmp	qword ptr [r14 + 8], 0
	lea	rsi, [rsi]
	jne	.label_82
	mov	qword ptr [r14], -1
.label_82:
	xor	edx, edx
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	call	set_ordering
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jne	.label_36
	inc	rax
	lea	rsi, [r14 + 0x10]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.39
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	parse_field_count
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	lea	rdx, [rcx - 1]
	mov	qword ptr [r14 + 0x10], rdx
	mov	rsp, rsp
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_66
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2e
	nop	
	jne	.label_17
	mov	rbp, rbp
	inc	rax
	nop	
	mov	rsi, r14
	add	rsi, 0x18
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.30
	mov	rdi, rax
	lea	rdi, [rdi]
	call	parse_field_count
.label_17:
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rdi, rax
	mov	rsi, r14
	mov	rbp, rbp
	call	set_ordering
	jmp	.label_14
.label_1491:
	mov	byte ptr [byte ptr [rip + stable]],  1
	lea	rsi, [rsi]
	mov	eax, 0x73
	mov	rbp, rbp
	jmp	.label_23
.label_1500:
	mov	edi, dword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movsx	esi, r14b
	call	specify_nmerge
	mov	eax, 0x84
	jmp	.label_23
.label_1501:
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_27
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_34
.label_27:
	mov	rsp, rsp
	mov	eax, 0x85
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rcx
	jmp	.label_23
.label_36:
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], -1
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x18], 0
.label_14:
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	jne	.label_49
	mov	rbp, rbp
	mov	rdi, r14
	call	insertkey
	mov	rsp, rsp
	mov	eax, 0x6b
	mov	rsp, rsp
	jmp	.label_23
.label_106:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rbx
	mov	rax, qword ptr [rbp + rax*8]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	nop	
	jne	.label_55
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rax + 1]
	lea	rsi, [rsi]
	add	eax, -0x30
	cmp	eax, 0xa
	mov	rsp, rsp
	setb	dl
	jmp	.label_58
.label_55:
	lea	rsi, [rsi]
	xor	edx, edx
.label_58:
	lea	rsi, [rsi]
	mov	al, dl
	mov	rbp, rbp
	and	al, byte ptr [rsp + 0x1f]
	mov	ecx, dword ptr [rsp + 0x5c]
	lea	rdi, [rdi]
	and	cl, 1
	nop	
	or	cl, al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], ecx
	je	.label_67
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], edx
	lea	rdi, [rsp + 0x270]
	mov	rbp, rbp
	call	key_init
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	inc	rdi
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	rsi, rbx
	call	parse_field_count
	test	rax, rax
	lea	rdi, [rdi]
	mov	edi, 0
	lea	rsi, [rsi]
	je	.label_83
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2e
	mov	rdi, rax
	jne	.label_83
	nop	
	inc	rax
	mov	rbp, rbp
	lea	rsi, [rbx + 8]
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	parse_field_count
	nop	
	mov	rdi, rax
.label_83:
	cmp	qword ptr [rbx], 0
	jne	.label_97
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 8], 0
	jne	.label_97
	mov	qword ptr [rbx], -1
.label_97:
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_45
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsi, rbx
	call	set_ordering
	cmp	byte ptr [rax], 0
	nop	
	jne	.label_45
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x10]
	test	al, al
	je	.label_107
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + rax*8]
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	lea	rdi, [rax + 1]
	lea	rsi, [rbx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rsi
	mov	edx, OFFSET FLAT:.str.27
	call	parse_field_count
	test	rax, rax
	je	.label_20
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	nop	
	jne	.label_16
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rsp, rsp
	add	rsi, 0x18
	mov	edx, OFFSET FLAT:.str.30
	mov	rdi, rax
	mov	rbp, rbp
	call	parse_field_count
.label_16:
	cmp	qword ptr [rbx + 0x18], 0
	jne	.label_33
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_33
	lea	rsi, [rsi]
	dec	rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rdx], rcx
.label_33:
	mov	edx, 1
	mov	rdi, rax
	nop	
	mov	rsi, rbx
	nop	
	call	set_ordering
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	jne	.label_47
.label_107:
	mov	byte ptr [rbx + 0x39], 1
	mov	rdi, rbx
	call	insertkey
	mov	cl, r13b
	lea	rsi, [rsi]
	mov	eax, r14d
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x50]
	jmp	.label_19
.label_67:
	mov	dword ptr [rsp + 0x5c], 0
.label_45:
	mov	rbx, qword ptr [rsp + 0x50]
.label_95:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [r12 + r15*8], rax
	mov	rbp, rbp
	inc	r15
	lea	rdi, [rdi]
	jmp	.label_18
.label_76:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x40]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_63
	mov	r14, rbx
	mov	rsp, rsp
	test	r15, r15
	mov	rsp, rsp
	jne	.label_69
	nop	
	mov	esi, OFFSET FLAT:.str.52
	mov	r15, rdi
	call	xfopen
	mov	rbx, rax
	lea	rbp, [rsp + 0x108]
	mov	rdi, rbp
	call	readtokens0_init
	mov	rdi, rbx
	mov	rsi, rbp
	call	readtokens0
	test	al, al
	mov	rsp, rsp
	je	.label_75
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r15
	call	xfclose
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x108], 0
	je	.label_92
	lea	rdi, [rdi]
	mov	rdi, r12
	nop	
	call	free
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x108]
	nop	
	mov	r12, qword ptr [rsp + 0x110]
	xor	ebp, ebp
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_105:
	mov	rsp, rsp
	cmp	rbp, r15
	nop	
	jae	.label_63
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + rbp*8]
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	lea	rsi, [rsi]
	jne	.label_99
	cmp	byte ptr [rax + 1], 0
	je	.label_102
.label_99:
	mov	rax, qword ptr [r12 + rbp*8]
	mov	rbp, rbp
	inc	rbp
	nop	
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	jne	.label_105
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	mov	r8, rbp
	call	error
.label_63:
	mov	qword ptr [rsp + 0x50], rbx
	lea	rsi, [rsi]
	mov	rbp,  qword ptr [word ptr [rip + keylist]]
	nop	
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_12
.label_84:
	mov	rdi, rbp
	mov	rsp, rsp
	call	default_key_compare
	test	al, al
	mov	rbp, rbp
	je	.label_25
	lea	rsi, [rsi]
	cmp	byte ptr [rbp + 0x37], 0
	lea	rdi, [rdi]
	jne	.label_25
	mov	rax, qword ptr [rsp + 0x248]
	mov	qword ptr [rbp + 0x20], rax
	nop	
	mov	rax, qword ptr [rsp + 0x250]
	mov	qword ptr [rbp + 0x28], rax
	mov	al, byte ptr [rsp + 0x258]
	mov	byte ptr [rbp + 0x30], al
	mov	rbp, rbp
	mov	al, byte ptr [rsp + 0x259]
	mov	byte ptr [rbp + 0x31], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 0x25e]
	mov	byte ptr [rbp + 0x36], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rsp + 0x25a]
	mov	byte ptr [rbp + 0x32], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rsp + 0x25c]
	mov	rsp, rsp
	mov	byte ptr [rbp + 0x34], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rsp + 0x25d]
	mov	byte ptr [rbp + 0x35], al
	mov	al, byte ptr [rsp + 0x260]
	mov	byte ptr [rbp + 0x38], al
	mov	rsp, rsp
	mov	al, byte ptr [rsp + 0x25b]
	mov	byte ptr [rbp + 0x33], al
	mov	rbp, rbp
	mov	al, byte ptr [rsp + 0x25f]
	mov	byte ptr [rbp + 0x37], al
	nop	word ptr cs:[rax + rax]
.label_25:
	lea	rdi, [rdi]
	or	bl, byte ptr [rbp + 0x33]
	mov	rbp, qword ptr [rbp + 0x40]
	test	rbp, rbp
	mov	rbp, rbp
	jne	.label_84
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + keylist]],  0
	je	.label_12
	nop	
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x48]
	jmp	.label_73
.label_12:
	nop	
	mov	r14, qword ptr [rsp + 0x48]
	lea	rdi, [rsp + 0x228]
	call	default_key_compare
	test	al, al
	je	.label_74
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	jmp	.label_73
.label_74:
	lea	rdi, [rsp + 0x228]
	mov	rsp, rsp
	call	insertkey
	or	bl, byte ptr [rsp + 0x25b]
	mov	bpl, 1
.label_73:
	call	check_ordering_compatibility
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	nop	
	and	eax, 1
	cmp	eax, 1
	jne	.label_86
	test	r14, r14
	jne	.label_90
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	jne	.label_90
	mov	dword ptr [rsp + 0x68], ebp
	cmp	qword ptr [rsp + 0x20], 0
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 0x2f]
	je	.label_93
	mov	edi, 3
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	lea	rdi, [rdi]
	test	rax, rax
	setne	al
.label_93:
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_103
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.59
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rsp, rsp
	call	error
.label_103:
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	mov	rbp, rbp
	je	.label_85
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.60
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi, 3
	xor	esi, esi
	call	setlocale
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	jmp	.label_24
.label_85:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
.label_24:
	mov	rsp, rsp
	call	error
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x68]
	nop	
	movzx	esi, al
	lea	rdi, [rsp + 0x228]
	mov	rsp, rsp
	call	key_warnings
.label_86:
	mov	al, byte ptr [rsp + 0x25f]
	mov	byte ptr [byte ptr [rip + reverse]],  al
	test	bl, 1
	mov	rbp, rbp
	je	.label_48
	mov	rdi, qword ptr [rsp + 0x38]
	nop	
	call	random_md5_state_init
.label_48:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [rip + temp_dir_count]],  0
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x50]
	jne	.label_53
	mov	edi, OFFSET FLAT:.str.62
	lea	rdi, [rdi]
	call	getenv
	test	rax, rax
	mov	edi, OFFSET FLAT:.str.16
	cmovne	rdi, rax
	nop	
	call	add_temp_dir
.label_53:
	test	r15, r15
	jne	.label_65
	nop	
	mov	rdi, r12
	call	free
	mov	edi, 8
	call	xmalloc
	mov	rbp, rbp
	mov	r12, rax
	mov	qword ptr [word ptr [r12]], OFFSET FLAT:.str.54
	mov	r15d, 1
.label_65:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	nop	
	test	rax, rax
	je	.label_56
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	cmova	rcx, rax
	mov	qword ptr [word ptr [rip + sort_size]],  rcx
.label_56:
	test	bl, bl
	je	.label_77
	cmp	r15, 2
	jae	.label_78
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_81
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r12]
	movsx	esi, bl
	nop	
	call	check
	nop	
	movzx	ebx, al
	lea	rdi, [rdi]
	xor	ebx, 1
	nop	
	jmp	.label_26
.label_77:
	mov	rdi, r12
	mov	rsi, r15
	call	check_inputs
	mov	rdi, r14
	lea	rdi, [rdi]
	call	check_output
	lea	rsi, [rsi]
	test	r13b, 1
	jne	.label_51
	mov	rbx, r14
	movabs	rbp, 0xffffffffffffff
	mov	rcx, qword ptr [rsp + 0x30]
	test	rcx, rcx
	jne	.label_96
	mov	edi, 2
	call	num_processors
	lea	rdi, [rdi]
	cmp	rax, 8
	mov	ecx, 8
	nop	
	cmovb	rcx, rax
.label_96:
	mov	rbp, rbp
	cmp	rcx, rbp
	lea	rdi, [rdi]
	cmovb	rbp, rcx
	mov	rsp, rsp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, rbx
	mov	rcx, rbp
	lea	rsi, [rsi]
	call	sort
	lea	rdi, [rdi]
	jmp	.label_109
.label_51:
	lea	rsi, [rsi]
	mov	esi, 0x10
	mov	rdi, r15
	nop	
	call	xcalloc
	xor	ecx, ecx
	test	r15, r15
	je	.label_104
	mov	rbp, rbp
	mov	rdx, rax
	nop	
.label_62:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r12 + rcx*8]
	mov	qword ptr [rdx], rsi
	inc	rcx
	nop	
	add	rdx, 0x10
	nop	
	cmp	rcx, r15
	mov	rsp, rsp
	jb	.label_62
.label_104:
	xor	esi, esi
	mov	rdi, rax
	mov	rdx, r15
	mov	rcx, r14
	nop	
	call	merge
.label_109:
	mov	rsp, rsp
	xor	ebx, ebx
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	jne	.label_26
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	nop	
	cmp	eax, -1
	je	.label_94
.label_26:
	mov	eax, ebx
	lea	rsi, [rsi]
	add	rsp, 0x2b8
	nop	
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_91:
	lea	rsi, [rsi]
	cmp	r14d, 0xffffff7d
	je	.label_46
	mov	rsp, rsp
	cmp	r14d, 0xffffff7e
	jne	.label_50
	xor	edi, edi
	mov	rbp, rbp
	call	usage
.label_46:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.22
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.17_0
	mov	r8d, OFFSET FLAT:.str.47
	mov	r9d, OFFSET FLAT:.str.48
	xor	eax, eax
	mov	rsp, rsp
	call	version_etc
	xor	edi, edi
	lea	rdi, [rdi]
	call	exit
.label_102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12 + rbp*8]
	nop	
	mov	edi, 4
.label_22:
	lea	rdi, [rdi]
	call	quotearg_style
.label_59:
	mov	rcx, rax
	mov	edi, 2
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
.label_50:
	mov	rbp, rbp
	mov	edi, 2
	call	usage
.label_15:
	mov	edi, OFFSET FLAT:.str.34
	call	incompatible_options
.label_66:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:.str.37
	nop	
	call	badfieldspec
.label_69:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.51
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__fprintf_chk
	mov	edi, 2
	nop	
	call	usage
.label_75:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.53
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	edi, 4
	mov	rsi, r15
	jmp	.label_22
.label_92:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	jmp	.label_22
.label_78:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rsi, qword ptr [r12 + 8]
	mov	edi, 4
	nop	
	call	quotearg_style
	mov	rcx, rax
	movsx	r8d, bl
	nop	
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
.label_81:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + main.opts.64]],  bl
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:main.opts.64
	call	incompatible_options
.label_88:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.44
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	jmp	.label_59
.label_90:
	mov	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	jne	.label_61
	mov	al, 0x6f
	nop	
	mov	qword ptr [rsp + 0x50], rax
.label_61:
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + main.opts]],  al
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:main.opts
	call	incompatible_options
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	rsp, rsp
	jmp	.label_72
.label_101:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	jmp	.label_72
.label_49:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:.str.31
	call	badfieldspec
.label_52:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	jmp	.label_72
.label_37:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	jmp	.label_72
.label_34:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.41
.label_72:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
.label_54:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.38
	mov	rbp, rbp
	call	badfieldspec
.label_94:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	esi, OFFSET FLAT:.str.54
	mov	rsp, rsp
	mov	rdi, rax
	call	sort_die
.label_20:
	mov	edi, OFFSET FLAT:.str.28
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 0x1112
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	nop	
	call	__assert_fail
.label_47:
	mov	esi, OFFSET FLAT:.str.31
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	call	badfieldspec
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047e0

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  2
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047f0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404800

	.globl inittables
	.type inittables, @function
inittables:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	xor	ebx, ebx
	nop	
	call	__ctype_b_loc
	mov	r14, rax
	nop	word ptr cs:[rax + rax]
.label_115:
	movzx	edi, bl
	call	field_sep
	mov	byte ptr [byte ptr [rbx + blanks]],  al
	mov	rax, qword ptr [r14]
	movzx	eax, word ptr [rax + rbx*2]
	lea	rsi, [rsi]
	shr	eax, 0xe
	lea	rsi, [rsi]
	not	eax
	and	eax, 1
	mov	byte ptr [byte ptr [rbx + nonprinting]],  al
	mov	rsp, rsp
	mov	rax, qword ptr [r14]
	lea	rsi, [rsi]
	test	byte ptr [rax + rbx*2], 8
	lea	rsi, [rsi]
	jne	.label_121
	movzx	edi, bl
	call	field_sep
	lea	rdi, [rdi]
	xor	al, 1
	jmp	.label_120
	nop	word ptr [rax + rax]
.label_121:
	mov	rbp, rbp
	xor	eax, eax
.label_120:
	mov	byte ptr [byte ptr [rbx + nondictionary]],  al
	mov	edi, ebx
	call	toupper
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rbx + fold_toupper]],  al
	inc	rbx
	cmp	rbx, 0x100
	mov	rsp, rsp
	jne	.label_115
	xor	r13d, r13d
	nop	
	cmp	byte ptr [byte ptr [rip + hard_LC_TIME]],  0
	je	.label_116
	nop	dword ptr [rax + rax]
.label_119:
	lea	edi, [r13 + 0x2000e]
	lea	rsi, [rsi]
	call	rpl_nl_langinfo
	nop	
	mov	rbx, rax
	mov	rdi, rbx
	call	strlen
	mov	rsp, rsp
	mov	r14, rax
	lea	rdi, [r14 + 1]
	lea	rdi, [rdi]
	call	xmalloc
	mov	rbp, rbp
	mov	r15, rax
	nop	
	mov	rax, r13
	shl	rax, 4
	mov	qword ptr [word ptr [rax + monthtab]],  r15
	mov	rsp, rsp
	inc	r13
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rax + label_117]],  r13d
	test	r14, r14
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_118
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_113:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	mov	rsp, rsp
	movzx	eax, al
	mov	rsp, rsp
	mov	rcx, qword ptr [r12]
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2], 1
	lea	rsi, [rsi]
	jne	.label_114
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rax + fold_toupper]]
	mov	byte ptr [r15 + rbp], al
	inc	rbp
.label_114:
	lea	rdi, [rdi]
	inc	rbx
	dec	r14
	mov	rbp, rbp
	jne	.label_113
.label_118:
	mov	rsp, rsp
	mov	byte ptr [r15 + rbp], 0
	mov	rbp, rbp
	cmp	r13, 0xc
	jne	.label_119
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:monthtab
	nop	
	mov	esi, 0xc
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:struct_month_cmp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	qsort
.label_116:
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049d0

	.globl sighandler
	.type sighandler, @function
sighandler:
	mov	rsp, rsp
	push	rbx
	mov	ebx, edi
	call	cleanup
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	rsp, rsp
	call	signal
	lea	rsi, [rsi]
	mov	edi, ebx
	pop	rbx
	mov	rsp, rsp
	jmp	raise
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a00

	.globl exit_cleanup
	.type exit_cleanup, @function
exit_cleanup:
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x90
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + temphead]],  0
	lea	rdi, [rdi]
	je	.label_122
	lea	rdi, [rdi]
	lea	rbx, [rsp + 8]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	cs_enter
	lea	rdi, [rdi]
	call	cleanup
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	cs_leave
.label_122:
	nop	
	call	close_stdout
	mov	rbp, rbp
	add	rsp, 0x90
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a60

	.globl key_init
	.type key_init, @function
key_init:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x30], xmm0
	movups	xmmword ptr [rdi + 0x20], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdi + 0x10], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x40], 0
	mov	qword ptr [rdi + 0x10], -1
	mov	rax, rdi
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404aa0

	.globl parse_field_count
	.type parse_field_count, @function
parse_field_count:
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x18
	nop	
	mov	r14, rdx
	mov	rbx, rsi
	nop	
	mov	r15, rdi
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp + 8]
	nop	
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	xstrtoumax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	eax, 4
	ja	.label_123
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_125]]
.label_1403:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	qword ptr [rbx], rax
	jmp	.label_123
.label_1404:
	lea	rdi, [rdi]
	mov	qword ptr [rbx], -1
.label_123:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
.label_124:
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
.label_1405:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	test	r14, r14
	mov	rsp, rsp
	je	.label_124
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.124
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
	mov	r14, rax
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	call	quote
	mov	rbx, rax
	mov	edi, 2
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, r12
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r8, rbx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x404ba0

	.globl set_ordering
	.type set_ordering, @function
set_ordering:
	lea	rdi, [rdi]
	mov	cl, byte ptr [rdi]
	test	cl, cl
	mov	rsp, rsp
	je	.label_127
	lea	rsi, [rsi]
	mov	eax, edx
	or	eax, 2
	mov	rbp, rbp
	dec	edx
	nop	dword ptr [rax]
.label_133:
	mov	rsp, rsp
	movsx	ecx, cl
	cmp	ecx, 0x61
	lea	rsi, [rsi]
	jle	.label_126
	nop	
	add	ecx, -0x62
	cmp	ecx, 0x10
	ja	.label_127
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_132]]
.label_1470:
	cmp	eax, 2
	jne	.label_129
	lea	rsi, [rsi]
	mov	byte ptr [rsi + 0x30], 1
.label_129:
	cmp	edx, 1
	ja	.label_128
	mov	rbp, rbp
	mov	byte ptr [rsi + 0x31], 1
	mov	rbp, rbp
	jmp	.label_128
	nop	word ptr cs:[rax + rax]
.label_126:
	cmp	ecx, 0x4d
	lea	rdi, [rdi]
	je	.label_130
	cmp	ecx, 0x52
	lea	rdi, [rdi]
	je	.label_131
	lea	rdi, [rdi]
	cmp	ecx, 0x56
	jne	.label_127
	mov	byte ptr [rsi + 0x38], 1
	jmp	.label_128
.label_1471:
	mov	qword ptr [word ptr [rsi + 32]], OFFSET FLAT:nondictionary
	jmp	.label_128
.label_1472:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rsi + 40]], OFFSET FLAT:fold_toupper
	jmp	.label_128
.label_1473:
	mov	byte ptr [rsi + 0x34], 1
	lea	rdi, [rdi]
	jmp	.label_128
.label_1474:
	mov	byte ptr [rsi + 0x35], 1
	nop	
	jmp	.label_128
.label_1475:
	mov	rbp, rbp
	cmp	qword ptr [rsi + 0x20], 0
	jne	.label_128
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rsi + 32]], OFFSET FLAT:nonprinting
	mov	rbp, rbp
	jmp	.label_128
.label_1476:
	mov	byte ptr [rsi + 0x32], 1
	mov	rsp, rsp
	jmp	.label_128
.label_1477:
	mov	byte ptr [rsi + 0x37], 1
	jmp	.label_128
.label_130:
	mov	byte ptr [rsi + 0x36], 1
	nop	
	jmp	.label_128
.label_131:
	mov	byte ptr [rsi + 0x33], 1
	nop	dword ptr [rax]
.label_128:
	nop	
	mov	cl, byte ptr [rdi + 1]
	mov	rsp, rsp
	inc	rdi
	test	cl, cl
	jne	.label_133
.label_127:
	mov	rax, rdi
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cb0

	.globl badfieldspec
	.type badfieldspec, @function
badfieldspec:
	push	r15
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r14, rdi
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.125
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	r15, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	call	quote
	nop	
	mov	rbx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, r15
	mov	rsp, rsp
	mov	rcx, r12
	mov	r8, rbx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x404d30

	.globl insertkey
	.type insertkey, @function
insertkey:
	lea	rsi, [rsi]
	push	rax
	nop	
	mov	esi, 0x48
	call	xmemdup
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:keylist
	nop	word ptr [rax + rax]
.label_134:
	mov	rdx, rcx
	mov	rcx, qword ptr [rdx]
	test	rcx, rcx
	lea	rcx, [rcx + 0x40]
	jne	.label_134
	mov	qword ptr [rdx], rax
	mov	rbp, rbp
	mov	qword ptr [rax + 0x40], 0
	mov	rbp, rbp
	pop	rax
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d80

	.globl incompatible_options
	.type incompatible_options, @function
incompatible_options:
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.134
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 2
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	nop	
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dd0

	.globl specify_nmerge
	.type specify_nmerge, @function
specify_nmerge:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	r12, rdx
	lea	rdi, [rdi]
	mov	r15d, esi
	nop	
	mov	r14d, edi
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x28]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 0xa
	xor	r8d, r8d
	mov	rdi, r12
	mov	rsp, rsp
	call	xstrtoumax
	mov	rbp, rbp
	mov	ebx, eax
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x18]
	mov	edi, 7
	call	getrlimit
	mov	ecx, dword ptr [rsp + 0x18]
	nop	
	add	ecx, -3
	lea	rdi, [rdi]
	test	eax, eax
	mov	ebp, 0x11
	lea	rsi, [rsi]
	cmove	ebp, ecx
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_138
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [dword ptr [rip + nmerge]],  eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jne	.label_137
	mov	rbp, rbp
	cmp	eax, 1
	jbe	.label_136
	lea	rdi, [rdi]
	cmp	ebp, eax
	jb	.label_137
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_138:
	mov	rsp, rsp
	cmp	ebx, 1
	jne	.label_135
.label_137:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.138
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	r15, rax
	lea	rdi, [rdi]
	movsxd	rax, r14d
	mov	rsp, rsp
	shl	rax, 5
	lea	rdi, [rdi]
	mov	r14,  qword ptr [word ptr [rax + long_options]]
	mov	rdi, r12
	lea	rdi, [rdi]
	call	quote
	mov	rbx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r14
	mov	rbp, rbp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	error
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.139
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsp + 0xd]
	mov	edi, ebp
	mov	rsp, rsp
	call	uinttostr
	jmp	.label_139
.label_136:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.135
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r14d
	shl	rax, 5
	mov	r14,  qword ptr [word ptr [rax + long_options]]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	quote
	mov	rbp, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	nop	
	mov	rcx, r14
	nop	
	mov	r8, rbp
	call	error
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.136
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.137
	call	quote
.label_139:
	mov	rbp, rax
	mov	edi, 2
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, rbp
	mov	rbp, rbp
	call	error
.label_135:
	nop	
	movsx	edx, r15b
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, ebx
	lea	rsi, [rsi]
	mov	esi, r14d
	nop	
	mov	r8, r12
	mov	rbp, rbp
	call	xstrtol_fatal
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405000

	.globl specify_sort_size
	.type specify_sort_size, @function
specify_sort_size:
	nop	
	push	rbp
	push	r14
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	ebp, esi
	mov	r14d, edi
	mov	rbp, rbp
	lea	rsi, [rsp]
	nop	
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str.140
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	xstrtoumax
	lea	rdi, [rdi]
	cmp	eax, 2
	je	.label_148
	test	eax, eax
	jne	.label_140
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	nop	
	movsx	eax, byte ptr [rax - 1]
	mov	rbp, rbp
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_145
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rdx, rcx
	lea	rsi, [rsi]
	shr	rdx, 0x36
	mov	rsp, rsp
	jne	.label_140
	shl	rcx, 0xa
	mov	qword ptr [rsp + 8], rcx
	jmp	.label_145
.label_148:
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rcx - 1]
	lea	rdi, [rdi]
	add	edx, -0x30
	mov	eax, 2
	cmp	edx, 9
	ja	.label_140
	lea	rsi, [rsi]
	cmp	byte ptr [rcx + 1], 0
	mov	rbp, rbp
	jne	.label_140
	movsx	ecx, byte ptr [rcx]
	lea	rsi, [rsi]
	cmp	ecx, 0x62
	mov	rbp, rbp
	je	.label_145
	cmp	ecx, 0x25
	jne	.label_140
	nop	
	call	physmem_total
	nop	
	movq	xmm2, qword ptr [rsp + 8]
	punpckldq	xmm2,  xmmword ptr [word ptr [rip + label_141]]
	mov	rbp, rbp
	subpd	xmm2,  xmmword ptr [word ptr [rip + label_142]]
	lea	rdi, [rdi]
	pshufd	xmm1, xmm2, 0x4e
	lea	rdi, [rdi]
	addpd	xmm1, xmm2
	mulsd	xmm1, xmm0
	divsd	xmm1,  qword ptr [word ptr [rip + label_143]]
	mov	rbp, rbp
	mov	eax, 1
	movsd	xmm0,  qword ptr [word ptr [rip + label_144]]
	mov	rsp, rsp
	ucomisd	xmm0, xmm1
	jbe	.label_140
	movsd	xmm0,  qword ptr [word ptr [rip + label_147]]
	movapd	xmm2, xmm1
	lea	rsi, [rsi]
	subsd	xmm2, xmm0
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	lea	rsi, [rsi]
	xor	rcx, rax
	cvttsd2si	rax, xmm1
	nop	
	ucomisd	xmm1, xmm0
	cmovae	rax, rcx
	mov	qword ptr [rsp + 8], rax
.label_145:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	mov	rbp, rbp
	cmp	rcx,  qword ptr [word ptr [rip + sort_size]]
	mov	rbp, rbp
	jb	.label_146
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + sort_size]],  rcx
	mov	eax, 1
	cmp	rcx, qword ptr [rsp + 8]
	nop	
	jne	.label_140
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	imul	rax, rax, 0x22
	mov	rbp, rbp
	cmp	rcx, rax
	cmova	rax, rcx
	mov	qword ptr [word ptr [rip + sort_size]],  rax
.label_146:
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	rbp
	ret	
.label_140:
	lea	rdi, [rdi]
	movsx	edx, bpl
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r14d
	mov	rsp, rsp
	mov	r8, rbx
	nop	
	call	xstrtol_fatal
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051f0

	.globl add_temp_dir
	.type add_temp_dir, @function
add_temp_dir:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + temp_dir_count]]
	cmp	rax,  qword ptr [word ptr [rip + temp_dir_alloc]]
	jne	.label_149
	mov	rdi,  qword ptr [word ptr [rip + temp_dirs]]
	mov	esi, OFFSET FLAT:temp_dir_alloc
	nop	
	mov	edx, 8
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + temp_dirs]],  rax
.label_149:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + temp_dir_count]]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + temp_dir_count]],  rcx
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + temp_dirs]]
	nop	
	mov	qword ptr [rcx + rax*8], rbx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405260

	.globl specify_nthreads
	.type specify_nthreads, @function
specify_nthreads:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdx
	mov	ebp, esi
	mov	r14d, edi
	lea	rcx, [rsp + 8]
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbx
	nop	
	call	xstrtoul
	nop	
	test	eax, eax
	je	.label_150
	mov	rcx, -1
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	je	.label_152
	movsx	edx, bpl
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	nop	
	mov	esi, r14d
	mov	rbp, rbp
	mov	r8, rbx
	mov	rbp, rbp
	call	xstrtol_fatal
.label_150:
	nop	
	mov	rcx, qword ptr [rsp + 8]
	nop	
	test	rcx, rcx
	je	.label_151
.label_152:
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_151:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.141
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330

	.globl xfopen
	.type xfopen, @function
xfopen:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rdi, [rdi]
	call	stream_open
	nop	
	test	rax, rax
	je	.label_153
	mov	rbp, rbp
	pop	rbx
	ret	
.label_153:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, rbx
	mov	rsp, rsp
	call	sort_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405370

	.globl xfclose
	.type xfclose, @function
xfclose:
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	call	fileno
	cmp	eax, 1
	je	.label_155
	mov	rsp, rsp
	test	eax, eax
	jne	.label_157
	mov	rdi, rbx
	call	feof_unlocked
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_154
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	nop	
	jmp	clearerr_unlocked
.label_155:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	fflush_unlocked
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_154
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.145
	lea	rdi, [rdi]
	jmp	.label_156
.label_157:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_158
.label_154:
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	ret	
.label_158:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
.label_156:
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, r14
	call	sort_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405430

	.globl default_key_compare
	.type default_key_compare, @function
default_key_compare:
	lea	rdi, [rdi]
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x20], 0
	lea	rdi, [rdi]
	je	.label_163
	lea	rsi, [rsi]
	xor	eax, eax
	pop	rbx
	lea	rdi, [rdi]
	ret	
.label_163:
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x28], 0
	je	.label_162
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_162:
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x30], 0
	nop	
	je	.label_165
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rbx
	ret	
.label_165:
	cmp	byte ptr [rbx + 0x31], 0
	je	.label_159
	xor	eax, eax
	pop	rbx
	nop	
	ret	
.label_159:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	key_numeric
	test	al, al
	lea	rsi, [rsi]
	je	.label_160
	mov	rbp, rbp
	xor	eax, eax
	nop	
	pop	rbx
	mov	rsp, rsp
	ret	
.label_160:
	cmp	byte ptr [rbx + 0x36], 0
	lea	rdi, [rdi]
	je	.label_164
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	nop	
	ret	
.label_164:
	cmp	byte ptr [rbx + 0x38], 0
	je	.label_161
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_161:
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x33], 0
	sete	al
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4054d0

	.globl check_ordering_compatibility
	.type check_ordering_compatibility, @function
check_ordering_compatibility:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + keylist]]
	nop	
	jmp	.label_166
	nop	dword ptr [rax]
.label_168:
	mov	rdi, qword ptr [rdi + 0x40]
.label_166:
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_167
	nop	
	movzx	eax, byte ptr [rdi + 0x32]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdi + 0x34]
	add	ecx, eax
	mov	rsp, rsp
	movzx	eax, byte ptr [rdi + 0x35]
	lea	rsi, [rsi]
	add	eax, ecx
	movzx	ecx, byte ptr [rdi + 0x36]
	lea	rdi, [rdi]
	add	ecx, eax
	mov	rbp, rbp
	mov	al, byte ptr [rdi + 0x33]
	mov	rbp, rbp
	or	al, byte ptr [rdi + 0x38]
	cmp	qword ptr [rdi + 0x20], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	or	dl, al
	nop	
	movzx	eax, dl
	mov	rbp, rbp
	add	eax, ecx
	cmp	eax, 2
	jb	.label_168
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	byte ptr [rdi + 0x37], 0
	mov	word ptr [rdi + 0x30], 0
	lea	rbx, [rsp]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rsp, rsp
	call	key_to_opts
	mov	rdi, rbx
	call	incompatible_options
.label_167:
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405570

	.globl key_warnings
	.type key_warnings, @function
key_warnings:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0xe8
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], esi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], rax
	movups	xmm0, xmmword ptr [rdi]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rdi + 0x10]
	movups	xmm2, xmmword ptr [rdi + 0x20]
	movups	xmm3, xmmword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0xd0], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	rbx,  qword ptr [word ptr [rip + keylist]]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_189
	mov	dl, byte ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	mov	r9b, byte ptr [rsp + 0xd1]
	mov	r8b, byte ptr [rsp + 0xd6]
	lea	rsi, [rsi]
	mov	dil, byte ptr [rsp + 0xd2]
	lea	rdi, [rdi]
	mov	r10b, byte ptr [rsp + 0xd4]
	mov	cl, byte ptr [rsp + 0xd5]
	mov	r12b, byte ptr [rsp + 0xd3]
	nop	
	mov	r15b, byte ptr [rsp + 0xd8]
	mov	rsp, rsp
	mov	r14b, byte ptr [rsp + 0xd7]
	mov	rbp, rbp
	mov	ebp, 1
	lea	rsi, [rsi]
	lea	r13, [rsp + 0x80]
	nop	dword ptr [rax + rax]
.label_172:
	mov	qword ptr [rsp + 0x18], rbp
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x12], dl
	mov	byte ptr [rsp + 0x13], r9b
	mov	byte ptr [rsp + 0x14], r8b
	mov	byte ptr [rsp + 0x15], dil
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x16], r10b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x17], cl
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x39], 0
	nop	
	je	.label_186
	mov	byte ptr [rsp + 9], r12b
	mov	byte ptr [rsp + 0xa], r15b
	nop	
	mov	byte ptr [rsp + 0xb], r14b
	mov	rbp, qword ptr [rbx]
	mov	r12, qword ptr [rbx + 0x10]
	cmp	rbp, -1
	sete	al
	movzx	r15d, al
	lea	rdi, [r15 + rbp]
	mov	word ptr [rsp + 0x50], 0x2b
	lea	rdi, [rdi]
	mov	rsi, r13
	call	umaxtostr
	mov	rsp, rsp
	mov	edx, 0x2d
	lea	rdi, [rsp + 0x51]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	__stpcpy_chk
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x20], 0x206b2d
	lea	rdi, [r15 + rbp + 1]
	mov	rbp, rbp
	mov	rsi, r13
	call	umaxtostr
	lea	rdi, [rdi]
	mov	edx, 0x2c
	lea	rdi, [rsp + 0x23]
	mov	rsi, rax
	call	__stpcpy_chk
	lea	rsi, [rsi]
	mov	r15, rax
	nop	
	cmp	qword ptr [rbx + 0x10], -1
	je	.label_174
	nop	
	mov	rbp, r13
	mov	r13, r14
	add	r13, 2
	mov	byte ptr [r14 + 2], 0
	mov	rbp, rbp
	mov	word ptr [r14], 0x2d20
	lea	rdi, [rdi]
	lea	rdi, [r12 + 1]
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	umaxtostr
	mov	rsp, rsp
	mov	rdi, r13
	nop	
	mov	r13, rbp
	mov	rsi, rax
	nop	
	call	stpcpy
	mov	rbp, r15
	inc	rbp
	mov	word ptr [r15], 0x2c
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x18], -1
	mov	rsp, rsp
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	lea	rdi, [rax + r12 + 1]
	mov	rsi, r13
	call	umaxtostr
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	stpcpy
.label_174:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.150
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	lea	rsi, [rsp + 0x50]
	mov	rbp, rbp
	call	quote_n
	mov	rsp, rsp
	mov	r15, rax
	nop	
	mov	edi, 1
	lea	rsi, [rsp + 0x20]
	call	quote_n
	mov	rbp, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, r14
	mov	rbp, rbp
	mov	rcx, r15
	mov	rbp, rbp
	mov	r8, rbp
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rsp + 0xb]
	mov	rbp, rbp
	mov	r15b, byte ptr [rsp + 0xa]
	mov	r12b, byte ptr [rsp + 9]
.label_186:
	mov	rax, qword ptr [rbx]
	mov	rbp, rbp
	cmp	rax, -1
	je	.label_176
	nop	
	cmp	qword ptr [rbx + 0x10], rax
	jae	.label_179
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.151
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	call	error
	mov	bpl, 1
	jmp	.label_169
	nop	word ptr [rax + rax]
.label_176:
	nop	
	xor	ebp, ebp
	jmp	.label_169
	nop	word ptr cs:[rax + rax]
.label_179:
	mov	rsp, rsp
	xor	ebp, ebp
.label_169:
	mov	rsp, rsp
	mov	rdi, rbx
	call	key_numeric
	mov	cl, 1
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	jne	.label_175
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x36], 0
	lea	rdi, [rdi]
	setne	cl
.label_175:
	cmp	qword ptr [rbx + 0x10], 0
	mov	rbp, rbp
	je	.label_180
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_182
	nop	word ptr [rax + rax]
.label_180:
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x18], 0
	setne	al
.label_182:
	mov	rsp, rsp
	test	bpl, bpl
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jne	.label_181
	cmp	dword ptr [dword ptr [rip + tab]],  0x80
	setne	dl
	mov	rsp, rsp
	mov	esi, dword ptr [rsp + 0xc]
	or	dl, sil
	lea	rdi, [rdi]
	or	al, dl
	mov	rbp, rbp
	jne	.label_181
	nop	
	mov	al, byte ptr [rbx + 0x30]
	mov	rbp, rbp
	test	al, al
	setne	dl
	or	cl, dl
	movzx	ecx, cl
	cmp	ecx, 1
	jne	.label_177
	test	al, al
	mov	rsp, rsp
	jne	.label_187
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0
	jne	.label_177
.label_187:
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x31], 0
	jne	.label_181
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_181
.label_177:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.152
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rcx, rbp
	lea	rsi, [rsi]
	call	error
	nop	dword ptr [rax + rax]
.label_181:
	mov	eax, dword ptr [rsp + 0xc]
	lea	rsi, [rsi]
	test	al, al
	jne	.label_170
	mov	rsp, rsp
	mov	rdi, rbx
	call	key_numeric
	test	al, al
	je	.label_170
	mov	rax, qword ptr [rbx]
	nop	
	lea	rcx, [rax + 1]
	add	rax, 2
	mov	rbp, rbp
	test	rcx, rcx
	mov	rsp, rsp
	cmovne	rax, rcx
	cmp	qword ptr [rbx + 0x10], rax
	lea	rsi, [rsi]
	jb	.label_170
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.153
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rdx, rcx
	mov	rcx, rbp
	nop	
	call	error
	nop	dword ptr [rax]
.label_170:
	mov	rax, qword ptr [rsp + 0xc0]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_173
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_173
	mov	qword ptr [rsp + 0xc0], 0
.label_173:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xc8]
	test	rax, rax
	lea	rdi, [rdi]
	mov	r10b, byte ptr [rsp + 0x16]
	mov	rsp, rsp
	mov	dil, byte ptr [rsp + 0x15]
	mov	r8b, byte ptr [rsp + 0x14]
	mov	r9b, byte ptr [rsp + 0x13]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rsp + 0x12]
	mov	rbp, rbp
	je	.label_183
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	jne	.label_183
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], 0
.label_183:
	mov	al, byte ptr [rbx + 0x30]
	mov	cl, byte ptr [rbx + 0x31]
	mov	rbp, rbp
	xor	al, 1
	nop	
	and	dl, al
	xor	cl, 1
	lea	rdi, [rdi]
	and	r9b, cl
	mov	al, byte ptr [rbx + 0x36]
	mov	rsp, rsp
	xor	al, 1
	and	r8b, al
	mov	al, byte ptr [rbx + 0x32]
	xor	al, 1
	lea	rsi, [rsi]
	and	dil, al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbx + 0x34]
	xor	al, 1
	and	r10b, al
	mov	al, byte ptr [rbx + 0x35]
	lea	rsi, [rsi]
	xor	al, 1
	mov	rsp, rsp
	mov	cl, byte ptr [rsp + 0x17]
	lea	rsi, [rsi]
	and	cl, al
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 0x33]
	nop	
	xor	al, 1
	mov	rsp, rsp
	and	r12b, al
	mov	rsp, rsp
	mov	al, byte ptr [rbx + 0x38]
	xor	al, 1
	nop	
	and	r15b, al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx + 0x37]
	xor	al, 1
	and	r14b, al
	nop	
	inc	rbp
	mov	rbx, qword ptr [rbx + 0x40]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_172
	mov	byte ptr [rsp + 0xd0], dl
	mov	byte ptr [rsp + 0xd1], r9b
	mov	byte ptr [rsp + 0xd6], r8b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xd2], dil
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xd4], r10b
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xd5], cl
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xd3], r12b
	nop	
	mov	byte ptr [rsp + 0xd8], r15b
	mov	byte ptr [rsp + 0xd7], r14b
.label_189:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xa0]
	call	default_key_compare
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_184
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_171
	nop	
	mov	al,  byte ptr [byte ptr [rip + stable]]
	and	al, 1
	nop	
	je	.label_188
	nop	
	cmp	qword ptr [word ptr [rip + keylist]],  0
	jne	.label_184
	mov	rbp, rbp
	jmp	.label_171
.label_188:
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	nop	
	and	eax, 1
	cmp	eax, 1
	jne	.label_171
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_171
.label_184:
	mov	bpl, byte ptr [rsp + 0xd7]
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + stable]]
	and	al, 1
	mov	rsp, rsp
	jne	.label_178
	mov	al,  byte ptr [byte ptr [rip + unique]]
	and	al, 1
	mov	rbp, rbp
	jne	.label_178
	mov	byte ptr [rsp + 0xd7], 0
.label_178:
	lea	rdi, [rsp + 0xa0]
	mov	rsp, rsp
	lea	rbx, [rsp + 0x20]
	nop	
	mov	rsi, rbx
	nop	
	call	key_to_opts
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	strlen
	mov	rdi, rax
	lea	rdi, [rdi]
	call	select_plural
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.154
	mov	edx, OFFSET FLAT:.str.155
	mov	rsp, rsp
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rbx
	call	error
	mov	byte ptr [rsp + 0xd7], bpl
.label_171:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_185
	mov	al,  byte ptr [byte ptr [rip + stable]]
	and	al, 1
	nop	
	jne	.label_185
	cmp	qword ptr [word ptr [rip + keylist]],  0
	lea	rdi, [rdi]
	je	.label_185
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + unique]]
	lea	rdi, [rdi]
	xor	al, 1
	lea	rdi, [rdi]
	test	al, 1
	je	.label_185
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.156
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
.label_185:
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ce0

	.globl random_md5_state_init
	.type random_md5_state_init, @function
random_md5_state_init:
	mov	rbp, rbp
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	r14, rdi
	mov	esi, 0x10
	call	randread_new
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_192
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	mov	edx, 0x10
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	call	randread
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	call	randread_free
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_191
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:random_md5_state
	call	md5_init_ctx
	lea	rdi, [rsp]
	lea	rdi, [rdi]
	mov	esi, 0x10
	mov	edx, OFFSET FLAT:random_md5_state
	lea	rdi, [rdi]
	call	md5_process_bytes
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	ret	
.label_192:
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.142
	mov	rbp, rbp
	jmp	.label_190
.label_191:
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.65
.label_190:
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	lea	rsi, [rsi]
	call	sort_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405db0

	.globl check
	.type check, @function
check:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xa8
	nop	
	mov	dword ptr [rsp + 0x1c], esi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	qword ptr [rsp + 0x28], r14
	mov	esi, OFFSET FLAT:.str.52
	call	xfopen
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	movzx	r13d,  byte ptr [byte ptr [rip + unique]]
	mov	rax,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + sort_size]]
	cmp	rax, rdx
	nop	
	cmova	rdx, rax
	lea	rbp, [rsp + 0x70]
	lea	rdi, [rdi]
	mov	esi, 0x20
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	initbuf
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], 0
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, r14
	call	fillbuf
	nop	
	mov	r12b, 1
	nop	
	test	al, al
	je	.label_200
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbp, rbp
	and	r13d, 1
	lea	rsi, [rsi]
	xor	r13d, 1
	nop	
	xor	r12d, r12d
	mov	rsp, rsp
	lea	rbx, [rsp + 0x70]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
.label_199:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	buffer_linelim
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_195
	lea	rsi, [rbp - 0x20]
	nop	
	lea	rdi, [rsp + 0x50]
	mov	rbp, rbp
	call	compare
	lea	rdi, [rdi]
	cmp	r13d, eax
	lea	rsi, [rsi]
	jle	.label_206
.label_195:
	nop	
	shl	rbx, 5
	nop	
	mov	r14, rbp
	sub	r14, rbx
	lea	rdi, [rdi]
	add	rbp, -0x20
	nop	word ptr cs:[rax + rax]
.label_194:
	cmp	r14, rbp
	jae	.label_198
	lea	rsi, [rsi]
	lea	r15, [rbp - 0x20]
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r15
	call	compare
	lea	rdi, [rdi]
	cmp	r13d, eax
	mov	rbp, r15
	nop	
	jg	.label_194
	jmp	.label_196
	nop	dword ptr [rax]
.label_198:
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	cmp	r12, qword ptr [rbp + 8]
	lea	rbx, [rsp + 0x70]
	jae	.label_197
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x28]
	nop	
	mov	r15, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_204:
	nop	
	add	r12, r12
	je	.label_203
	mov	rbp, rbp
	cmp	r12, rax
	jb	.label_204
	lea	rsi, [rsi]
	jmp	.label_205
	nop	word ptr cs:[rax + rax]
.label_197:
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_193
.label_203:
	mov	r12, rax
.label_205:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rsp, rsp
	mov	rdi, r12
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rax
.label_193:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rbp]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 8]
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rdi]
	test	r15, r15
	mov	rsp, rsp
	je	.label_201
	mov	rax, qword ptr [rbp + 0x10]
	sub	rax, qword ptr [rbp]
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	mov	rax, qword ptr [rbp + 0x18]
	nop	
	sub	rax, qword ptr [rbp]
	nop	
	add	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x68], rax
.label_201:
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	rsp, rsp
	call	fillbuf
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_199
	nop	
	mov	rbx, qword ptr [rsp + 0x10]
	nop	
	mov	r12b, 1
	jmp	.label_200
.label_196:
	add	r15, 0x20
	mov	rbp, r15
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x28]
.label_206:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x1c]
	nop	
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x63
	nop	
	jne	.label_202
	add	rbp, -0x20
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x70]
	call	buffer_linelim
	lea	rdi, [rdi]
	sub	rax, rbp
	mov	rsp, rsp
	sar	rax, 5
	mov	rbx, qword ptr [rsp + 0x20]
	add	rbx, rax
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.157
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	r12, rax
	mov	r15,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsp + 0x30]
	mov	rdi, rbx
	mov	rbp, rbp
	call	umaxtostr
	mov	r9, rax
	lea	rdi, [rdi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r13
	mov	rbp, rbp
	mov	rdx, r12
	xor	r12d, r12d
	nop	
	mov	rcx, r15
	mov	r8, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	mov	rsp, rsp
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.158
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rax
	mov	rsp, rsp
	call	write_line
	jmp	.label_207
.label_202:
	xor	r12d, r12d
.label_207:
	mov	rbx, qword ptr [rsp + 0x10]
.label_200:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, r14
	nop	
	call	xfclose
	nop	
	mov	rdi, qword ptr [rsp + 0x70]
	nop	
	call	free
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rbp, rbp
	mov	al, r12b
	add	rsp, 0xa8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406180

	.globl check_inputs
	.type check_inputs, @function
check_inputs:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	test	r14, r14
	je	.label_208
	nop	dword ptr [rax + rax]
.label_210:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + rbx*8]
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	nop	
	jne	.label_209
	nop	
	cmp	byte ptr [rax + 1], 0
	je	.label_212
.label_209:
	nop	
	mov	rdi, qword ptr [r15 + rbx*8]
	mov	rsp, rsp
	mov	esi, 4
	call	euidaccess
	test	eax, eax
	jne	.label_211
.label_212:
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, r14
	jb	.label_210
.label_208:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
.label_211:
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.165
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + rbx*8]
	mov	rdi, rax
	nop	
	call	sort_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406220

	.globl check_output
	.type check_output, @function
check_output:
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rdi
	nop	
	test	rbx, rbx
	je	.label_213
	lea	rdi, [rdi]
	mov	esi, 0x80041
	lea	rdi, [rdi]
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, rbx
	call	open
	test	eax, eax
	js	.label_214
	lea	rdi, [rdi]
	mov	esi, 1
	mov	edi, eax
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	jmp	move_fd
.label_213:
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	ret	
.label_214:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rbx
	nop	
	call	sort_die
	.section	.text
	.align	32
	#Procedure 0x406290

	.globl merge
	.type merge, @function
merge:
	nop	
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rsp, rsp
	jae	.label_222
	lea	rsi, [rsi]
	lea	rax, [rdi + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rdi
	nop	dword ptr [rax]
.label_225:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	nop	
	cmp	rcx, rdx
	mov	r14, qword ptr [rsp + 0x18]
	mov	r15d, 0
	nop	
	mov	r12d, 0
	mov	rbp, rdx
	ja	.label_221
	nop	dword ptr [rax]
.label_228:
	lea	rdi, [rsp + 0x40]
	lea	rsi, [rsi]
	call	create_temp
	mov	rbp, rax
	nop	
	mov	rdi, r15
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x28]
	mov	edx,  dword ptr [dword ptr [rip + nmerge]]
	mov	rbp, rbp
	cmp	r13, rdx
	mov	rsi, rdx
	mov	rsp, rsp
	cmovb	rsi, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	lea	rbx, [rbp + 0xd]
	mov	r8, rbx
	mov	rbp, rbp
	call	mergefiles
	lea	rsi, [rsi]
	cmp	r13, rax
	mov	rcx, rax
	cmovb	rcx, r13
	sub	r13, rcx
	mov	qword ptr [r14 - 8], rbx
	mov	qword ptr [r14], rbp
	lea	rdi, [rdi]
	add	r15, rax
	mov	rbp, rbp
	inc	r12
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x30]
	nop	
	sub	rbp, r15
	add	r14, 0x10
	cmp	rcx, rbp
	mov	rbp, rbp
	jbe	.label_228
.label_221:
	mov	qword ptr [rsp + 0x20], r13
	mov	r13, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	rax, r12
	lea	rdi, [rdi]
	div	rcx
	sub	rcx, rdx
	mov	rsp, rsp
	sub	rbp, rcx
	mov	r14, r12
	jbe	.label_224
	inc	rbp
	lea	rdi, [rsp + 0x40]
	call	create_temp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r15
	lea	rsi, [rsi]
	shl	rdi, 4
	mov	rbx, r13
	add	rdi, rbx
	mov	r13, qword ptr [rsp + 0x20]
	cmp	r13, rbp
	nop	
	mov	rsi, rbp
	cmovb	rsi, r13
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r12, r14
	mov	rbp, rbp
	lea	r14, [rax + 0xd]
	mov	rsp, rsp
	mov	rdx, rbp
	mov	r8, r14
	call	mergefiles
	mov	rbp, rbp
	cmp	r13, rax
	mov	rcx, rax
	cmovb	rcx, r13
	sub	r13, rcx
	mov	rcx, r12
	mov	rsp, rsp
	shl	rcx, 4
	mov	qword ptr [rbx + rcx], r14
	mov	rbp, rbp
	mov	r14, r12
	mov	rsp, rsp
	inc	r14
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + rcx + 8], rdx
	add	r15, rax
	nop	
	jmp	.label_223
	nop	word ptr cs:[rax + rax]
.label_224:
	nop	
	mov	rbx, r13
	mov	r13, qword ptr [rsp + 0x20]
.label_223:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rdi, r14
	nop	
	shl	rdi, 4
	add	rdi, rbx
	mov	rsi, r15
	mov	rsp, rsp
	shl	rsi, 4
	add	rsi, rbx
	mov	rsp, rsp
	mov	rdx, rbp
	sub	rdx, r15
	shl	rdx, 4
	call	memmove
	lea	rdi, [rdi]
	add	r13, r14
	add	r14, rbp
	sub	r14, r15
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	mov	rsp, rsp
	cmp	rax, r14
	mov	rdx, r14
	nop	
	jb	.label_225
	lea	rdi, [rdi]
	jmp	.label_219
.label_222:
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r14, rdx
.label_219:
	nop	
	mov	qword ptr [rsp + 0x20], r13
	lea	rsi, [rsi]
	mov	r15, rbx
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	call	avoid_trashing_input
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	jmp	.label_229
	nop	word ptr cs:[rax + rax]
.label_220:
	mov	r12, qword ptr [rsp + 0x20]
	cmp	r12, r13
	mov	rsp, rsp
	mov	rsi, r13
	cmovb	rsi, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rsi
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rbx, r15
	lea	rsi, [rsi]
	add	rbx, 0xd
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rdx, r13
	lea	rdi, [rdi]
	mov	r8, rbx
	call	mergefps
	mov	qword ptr [r14], rbx
	mov	qword ptr [r14 + 8], r15
	mov	r15, r14
	mov	r14, qword ptr [rsp + 0x30]
	sub	r14, r13
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	rbp, rbp
	shl	rdx, 4
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	memmove
	nop	
	inc	r12
	sub	r12, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r12
	inc	r14
.label_229:
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, r14
	mov	rbp, rbp
	lea	rdx, [rsp + 0x40]
	mov	rbp, rbp
	call	open_input_files
	lea	rdi, [rdi]
	mov	r13, rax
	cmp	r13, r14
	lea	rdi, [rdi]
	jne	.label_217
	mov	esi, OFFSET FLAT:.str.166
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	mov	rsp, rsp
	call	stream_open
	test	rax, rax
	nop	
	jne	.label_226
	mov	qword ptr [rsp + 0x30], r14
	call	__errno_location
	lea	rdi, [rdi]
	cmp	r13, 3
	jb	.label_216
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x18
	nop	
	je	.label_218
	jmp	.label_216
	nop	dword ptr [rax]
.label_217:
	mov	qword ptr [rsp + 0x30], r14
	lea	rdi, [rdi]
	cmp	r13, 2
	jbe	.label_215
.label_218:
	mov	r12, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rbp, r13
	nop	
	shl	rbp, 4
	lea	rsi, [rsi]
	add	rbp, r15
	mov	r14, r15
	nop	
	lea	rbx, [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_227:
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + r13*8 - 8]
	dec	r13
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rbp, -0x10
	call	xfclose
	nop	
	cmp	r13, 2
	lea	rsi, [rsi]
	seta	al
	movzx	esi, al
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	maybe_create_temp
	mov	r15, rax
	mov	rsp, rsp
	test	r15, r15
	je	.label_227
	jmp	.label_220
.label_226:
	mov	r9, qword ptr [rsp + 0x40]
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	r8, qword ptr [rsp + 8]
	call	mergefps
	lea	rsi, [rsi]
	add	rsp, 0x48
	pop	rbx
	nop	
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_216:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.142
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 8]
	mov	rbp, rbp
	call	sort_die
.label_215:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	shl	r13, 4
	mov	rsi, qword ptr [r15 + r13]
	mov	rdi, rax
	mov	rsp, rsp
	call	sort_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406730

	.globl sort
	.type sort, @function
sort:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0xf8
	lea	rdi, [rdi]
	mov	r13, rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r13
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	mov	rsp, rsp
	mov	r12, rsi
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xd8], 0
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	test	r12, r12
	nop	
	mov	ebx, 0
	je	.label_234
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	lea	rbp, [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x50]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_242:
	mov	rdi, qword ptr [r15]
	mov	qword ptr [rsp + 0x40], rdi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.52
	call	xfopen
	mov	qword ptr [rsp + 0xb8], rax
	lea	rsi, [rsi]
	cmp	r13, 2
	mov	eax, 0x20
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	edx, 0x30
	jb	.label_240
	nop	dword ptr [rax + rax]
.label_230:
	mov	rbp, rbp
	add	rcx, rcx
	mov	rbp, rbp
	add	rax, 0x20
	mov	rsp, rsp
	cmp	rcx, r13
	lea	rsi, [rsi]
	mov	rdx, rax
	jb	.label_230
.label_240:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xd8], 0
	nop	
	jne	.label_232
	mov	rsp, rsp
	lea	rdi, [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	rcx, r13
	nop	
	call	sort_buffer_size
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r13
	nop	
	mov	rdx, rax
	call	initbuf
	mov	rdx, r13
.label_232:
	nop	
	mov	qword ptr [rsp + 0x28], rdx
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xf0], 0
	add	r15, 8
	mov	qword ptr [rsp + 8], r15
	lea	rsi, [rsi]
	dec	r12
	mov	rax, qword ptr [rsp + 0xb8]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [rsi]
	or	rdx, 1
	mov	qword ptr [rsp + 0x20], rdx
	nop	
.label_245:
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	call	fillbuf
	test	al, al
	je	.label_237
	test	r12, r12
	mov	rbp, rbp
	je	.label_238
	mov	al, byte ptr [rsp + 0xf0]
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	je	.label_238
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xc8]
	nop	
	mov	rcx, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	rdx, qword ptr [rsp + 0xd0]
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rsp + 0x28]
	sub	rcx, rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x20], rcx
	lea	rsi, [rsi]
	jb	.label_241
.label_238:
	mov	qword ptr [word ptr [rip + saved_line]],  0
	nop	
	mov	rdi, rbp
	call	buffer_linelim
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rax, rbx
	lea	rsi, [rsi]
	or	rax, r12
	lea	rdi, [rdi]
	or	rax, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	jne	.label_236
	lea	rsi, [rsi]
	mov	al, byte ptr [rsp + 0xf0]
	test	al, al
	mov	rbp, rbp
	je	.label_236
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x40]
	call	xfclose
	nop	
	mov	esi, OFFSET FLAT:.str.166
	mov	qword ptr [rsp + 0x48], rbx
	nop	
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
	call	xfopen
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb0], rax
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_231
	nop	word ptr cs:[rax + rax]
.label_236:
	lea	rsi, [rsi]
	inc	rbx
	mov	qword ptr [rsp + 0x48], rbx
	lea	rdi, [rsp + 0xb0]
	call	create_temp
	mov	r13, rax
	add	r13, 0xd
.label_231:
	mov	rbx, r12
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xd0], 2
	jb	.label_239
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	call	queue_init
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0xd0]
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r15
	call	merge_tree_init
	lea	rcx, [rax + 0x80]
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r12
	mov	r8, r14
	lea	rdi, [rdi]
	call	sortlines
	jmp	.label_244
	nop	
.label_239:
	mov	rbp, rbp
	add	r15, -0x20
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rdi, r15
	mov	rdx, r13
	call	write_unique
.label_244:
	mov	r12, rbx
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, r13
	mov	rbp, rbp
	call	xfclose
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	and	al, 1
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rbp, [rsp + 0xc0]
	lea	rsi, [rsi]
	je	.label_245
	mov	rbp, rbp
	movzx	eax, al
	lea	rdi, [rdi]
	shl	eax, 3
	jmp	.label_233
.label_241:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe0], rax
.label_237:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, qword ptr [rsp + 0x40]
	nop	
	call	xfclose
	lea	rdi, [rdi]
	xor	eax, eax
.label_233:
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_234
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	mov	r15, qword ptr [rsp + 8]
	je	.label_242
.label_234:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xc0]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	test	al, 1
	jne	.label_246
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + temphead]]
	mov	esi, 0x10
	mov	rdi, rbx
	nop	
	mov	r14, rbx
	nop	
	call	xnmalloc
	mov	rbx, rax
	mov	rsp, rsp
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_235
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rax, 8
	nop	word ptr cs:[rax + rax]
.label_243:
	lea	rdi, [rdi]
	lea	rcx, [rbp + 0xd]
	lea	rdi, [rdi]
	mov	qword ptr [rax - 8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbp
	nop	
	mov	rbp, qword ptr [rbp]
	add	rax, 0x10
	lea	rdi, [rdi]
	test	rbp, rbp
	jne	.label_243
.label_235:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	merge
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_246:
	mov	rbp, rbp
	call	reap_all
	add	rsp, 0xf8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406bc0

	.globl sort_die
	.type sort_die, @function
sort_die:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsp, rsp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_247
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.180
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
.label_247:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rbx, rax
	mov	edi, 2
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbx
	mov	rsp, rsp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c40

	.globl field_sep
	.type field_sep, @function
field_sep:
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	mov	ebx, edi
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	cmp	ebx, 0xa
	lea	rsi, [rsi]
	sete	cl
	mov	al, byte ptr [rax + rbx*2]
	nop	
	and	al, 1
	or	al, cl
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c70

	.globl struct_month_cmp
	.type struct_month_cmp, @function
struct_month_cmp:
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	jmp	strcmp
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c90

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + temphead]]
	mov	rbp, rbp
	jmp	.label_248
	nop	dword ptr [rax]
.label_249:
	lea	rdi, [rbx + 0xd]
	call	unlink
	mov	rbx, qword ptr [rbx]
.label_248:
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_249
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + temphead]],  0
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cd0

	.globl cs_enter
	.type cs_enter, @function
cs_enter:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	lea	rdx, [rbx + 8]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:caught_signals
	call	pthread_sigmask
	nop	
	test	eax, eax
	nop	
	sete	byte ptr [rbx]
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d00

	.globl cs_leave
	.type cs_leave, @function
cs_leave:
	mov	rax, rdi
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	je	.label_250
	lea	rsi, [rsi]
	add	rax, 8
	mov	rbp, rbp
	mov	edi, 2
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rsi, rax
	jmp	pthread_sigmask
.label_250:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d30

	.globl stream_open
	.type stream_open, @function
stream_open:
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	nop	
	mov	rbp, rsi
	mov	rbp, rbp
	mov	r14, rdi
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x77
	nop	
	je	.label_257
	mov	rbp, rbp
	movzx	eax, al
	nop	
	cmp	eax, 0x72
	nop	
	jne	.label_252
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_255
	cmp	byte ptr [r14 + 1], 0
	je	.label_256
.label_255:
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rdi, [rdi]
	mov	esi, 0x80000
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	call	open
	test	eax, eax
	mov	rbp, rbp
	js	.label_253
	mov	edi, eax
	nop	
	mov	rsi, rbp
	nop	
	call	fdopen
	mov	rbx, rax
	mov	rsp, rsp
	jmp	.label_253
.label_257:
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_251
	nop	
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	call	ftruncate
	test	eax, eax
	mov	rbp, rbp
	je	.label_251
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	call	get_outstatus
	nop	
	test	rax, rax
	mov	rbp, rbp
	je	.label_254
	mov	ecx, 0xf000
	nop	
	and	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	cmp	ecx, 0x8000
	je	.label_254
.label_251:
	mov	rbx,  qword ptr [word ptr [rip + stdout]]
	nop	
	jmp	.label_258
.label_256:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
.label_253:
	lea	rdi, [rdi]
	mov	esi, 2
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	fadvise
.label_258:
	mov	rbp, rbp
	mov	rax, rbx
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_252:
	mov	edi, OFFSET FLAT:.str.144
	mov	esi, OFFSET FLAT:.str.29
	nop	
	mov	edx, 0x3d6
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.stream_open
	call	__assert_fail
.label_254:
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.143
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ea0

	.globl get_outstatus
	.type get_outstatus, @function
get_outstatus:
	nop	
	cmp	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  0
	jne	.label_259
	push	rax
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:get_outstatus.outstat
	call	__fstat
	lea	rdi, [rdi]
	mov	ecx, 0xffffffff
	nop	
	test	eax, eax
	je	.label_261
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
.label_261:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  ecx
	add	rsp, 8
.label_259:
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:get_outstatus.outstat
	cmp	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  0
	lea	rsi, [rsi]
	js	.label_260
	xor	eax, eax
.label_260:
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f00

	.globl key_numeric
	.type key_numeric, @function
key_numeric:
	mov	al, 1
	lea	rsi, [rsi]
	cmp	byte ptr [rdi + 0x32], 0
	jne	.label_262
	cmp	byte ptr [rdi + 0x34], 0
	nop	
	jne	.label_262
	cmp	byte ptr [rdi + 0x35], 0
	setne	al
.label_262:
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406f20

	.globl key_to_opts
	.type key_to_opts, @function
key_to_opts:
	lea	rdi, [rdi]
	cmp	byte ptr [rdi + 0x30], 0
	nop	
	jne	.label_269
	cmp	byte ptr [rdi + 0x31], 0
	mov	rsp, rsp
	je	.label_271
.label_269:
	lea	rdi, [rdi]
	mov	byte ptr [rsi], 0x62
	inc	rsi
.label_271:
	mov	eax, OFFSET FLAT:nondictionary
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 0x20], rax
	jne	.label_270
	mov	byte ptr [rsi], 0x64
	inc	rsi
.label_270:
	cmp	qword ptr [rdi + 0x28], 0
	je	.label_266
	mov	byte ptr [rsi], 0x66
	lea	rdi, [rdi]
	inc	rsi
.label_266:
	cmp	byte ptr [rdi + 0x34], 0
	je	.label_263
	mov	rbp, rbp
	mov	byte ptr [rsi], 0x67
	inc	rsi
.label_263:
	lea	rdi, [rdi]
	cmp	byte ptr [rdi + 0x35], 0
	mov	rbp, rbp
	je	.label_273
	mov	byte ptr [rsi], 0x68
	inc	rsi
.label_273:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:nonprinting
	nop	
	cmp	qword ptr [rdi + 0x20], rax
	lea	rdi, [rdi]
	jne	.label_264
	mov	byte ptr [rsi], 0x69
	nop	
	inc	rsi
.label_264:
	mov	rbp, rbp
	cmp	byte ptr [rdi + 0x36], 0
	nop	
	je	.label_268
	lea	rdi, [rdi]
	mov	byte ptr [rsi], 0x4d
	inc	rsi
.label_268:
	cmp	byte ptr [rdi + 0x32], 0
	je	.label_272
	mov	byte ptr [rsi], 0x6e
	mov	rbp, rbp
	inc	rsi
.label_272:
	cmp	byte ptr [rdi + 0x33], 0
	nop	
	je	.label_274
	mov	byte ptr [rsi], 0x52
	lea	rsi, [rsi]
	inc	rsi
.label_274:
	cmp	byte ptr [rdi + 0x37], 0
	je	.label_265
	mov	byte ptr [rsi], 0x72
	nop	
	inc	rsi
.label_265:
	mov	rsp, rsp
	cmp	byte ptr [rdi + 0x38], 0
	je	.label_267
	lea	rdi, [rdi]
	mov	byte ptr [rsi], 0x56
	inc	rsi
.label_267:
	mov	byte ptr [rsi], 0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ff0

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407000

	.globl initbuf
	.type initbuf, @function
initbuf:
	push	r15
	nop	
	push	r14
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r15, rdi
	lea	r12, [r14 + 1]
	nop	word ptr cs:[rax + rax]
.label_275:
	mov	eax, edx
	mov	rsp, rsp
	and	eax, 0x1f
	mov	ebx, 0x20
	sub	rbx, rax
	add	rbx, rdx
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	call	malloc
	nop	
	mov	qword ptr [r15], rax
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_276
	shr	rbx, 1
	cmp	rbx, r12
	mov	rdx, rbx
	mov	rsp, rsp
	ja	.label_275
	mov	rsp, rsp
	call	xalloc_die
.label_276:
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x28], r14
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x18], rbx
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x20], 0
	lea	rsi, [rsi]
	mov	byte ptr [r15 + 0x30], 0
	nop	
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 8], xmm0
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070a0

	.globl fillbuf
	.type fillbuf, @function
fillbuf:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	nop	
	sub	rsp, 0x68
	mov	qword ptr [rsp + 0x38], rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x30], r12
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + keylist]]
	mov	cl,  byte ptr [byte ptr [rip + eolchar]]
	xor	eax, eax
	and	cl, 1
	mov	dword ptr [rsp + 0x1c], 0
	jne	.label_288
	lea	rsi, [rsi]
	mov	cl, 0xa
	mov	dword ptr [rsp + 0x1c], ecx
.label_288:
	nop	
	cmp	byte ptr [r12 + 0x30], 0
	jne	.label_294
	mov	r13, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r13
	mov	qword ptr [rsp + 8], rdx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x28]
	nop	
	mov	r14,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r12 + 0x20]
	nop	
	cmp	rsi, rdx
	lea	rdi, [rdi]
	je	.label_298
	mov	rdi, qword ptr [r12]
	mov	rbp, rbp
	add	rsi, rdi
	nop	
	sub	rsi, rdx
	lea	rdi, [rdi]
	call	memmove
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [r12 + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], 0
.label_298:
	add	r14, -0x22
	mov	qword ptr [rsp + 0x40], rbx
	mov	rsp, rsp
	mov	rax, rbx
	lea	rdi, [rdi]
	neg	rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	lea	rax, [rbx + 1]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	eax, al
	mov	dword ptr [rsp + 0x4c], eax
	jmp	.label_289
	nop	word ptr cs:[rax + rax]
.label_292:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	shr	rax, 5
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	mov	rdi, qword ptr [r12]
	mov	edx, 0x20
	lea	rsi, [rsp + 0x60]
	call	x2nrealloc
	mov	rsp, rsp
	mov	qword ptr [r12], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x60]
	shl	rax, 5
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x18], rax
.label_289:
	mov	rsp, rsp
	mov	rbx, qword ptr [r12]
	mov	rbp, qword ptr [r12 + 8]
	mov	rbp, rbp
	add	rbp, rbx
	mov	rdi, r12
	nop	
	call	buffer_linelim
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, rcx
	shl	rdx, 5
	nop	
	mov	rsi, rax
	lea	rdi, [rdi]
	sub	rsi, rdx
	nop	
	mov	rbp, rcx
	mov	rbp, rbp
	imul	rbp, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	add	rbp, rax
	lea	rdi, [rdi]
	sub	rbp, rdi
	lea	rsi, [rsi]
	test	rcx, rcx
	nop	
	je	.label_277
	neg	rcx
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rsp + 0x58], rsi
	shl	rcx, 5
	mov	rsp, rsp
	add	rbx, qword ptr [rax + rcx + 8]
	mov	rbp, rbp
	jmp	.label_287
	nop	word ptr [rax + rax]
.label_277:
	nop	
	mov	qword ptr [rsp + 0x58], rsi
.label_287:
	mov	rcx, r13
	nop	dword ptr [rax]
.label_279:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x28]
	nop	
	cmp	rsi, rbp
	lea	rsi, [rsi]
	jae	.label_295
	lea	rax, [rbp - 1]
	xor	edx, edx
	div	rsi
	mov	r13, rax
	lea	rsi, [rsi]
	mov	esi, 1
	nop	
	mov	r12, rdi
	mov	rsp, rsp
	mov	rdx, r13
	mov	rbp, rbp
	call	fread_unlocked
	mov	rdi, r12
	nop	
	lea	rcx, [rdi + rax]
	cmp	rax, r13
	je	.label_284
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rdi
	mov	r12, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	r13, rcx
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	ferror_unlocked
	test	eax, eax
	mov	rsp, rsp
	jne	.label_290
	mov	rdi, r12
	call	feof_unlocked
	mov	rsp, rsp
	test	eax, eax
	je	.label_297
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x30]
	mov	byte ptr [rax + 0x30], 1
	lea	rsi, [rsi]
	mov	rcx, r13
	cmp	qword ptr [rax], rcx
	je	.label_299
	cmp	rbx, rcx
	lea	rsi, [rsi]
	je	.label_280
	mov	rbp, rbp
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, dword ptr [rsp + 0x4c]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_286
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	mov	byte ptr [rcx], al
	inc	rcx
	mov	rbp, rbp
	jmp	.label_286
.label_297:
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	jmp	.label_286
.label_280:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x50]
.label_286:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
.label_284:
	mov	qword ptr [rsp + 0x50], rcx
	lea	rsi, [rsi]
	sub	rbp, rax
	mov	rdx, rcx
	mov	rbp, rbp
	sub	rdx, rdi
	jmp	.label_293
	nop	
.label_283:
	mov	rbp, rbp
	sub	rbp, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x50]
	sub	rdx, rbx
	mov	rdi, rbx
.label_293:
	nop	
	mov	esi, dword ptr [rsp + 0x4c]
	call	memchr
	test	rax, rax
	je	.label_281
	mov	r13, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	r12, rbx
	mov	rcx, r14
	mov	byte ptr [rax], 0
	mov	rbp, rbp
	lea	rbx, [rax + 1]
	mov	rsp, rsp
	lea	rdx, [r13 - 0x20]
	nop	
	mov	qword ptr [rsp + 0x58], rdx
	lea	rsi, [rsi]
	mov	qword ptr [r13 - 0x20], r12
	mov	r14, rbx
	sub	r14, r12
	lea	rdi, [rdi]
	mov	qword ptr [r13 - 0x18], r14
	mov	rbp, rbp
	cmp	rcx, r14
	mov	rbp, rbp
	cmova	r14, rcx
	nop	
	test	r15, r15
	je	.label_283
	nop	
	cmp	qword ptr [r15 + 0x10], -1
	lea	rdi, [rdi]
	je	.label_296
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, r15
	nop	
	call	limfield
.label_296:
	mov	qword ptr [r13 - 8], rax
	nop	
	cmp	qword ptr [r15], -1
	mov	rax, qword ptr [rsp + 0x58]
	je	.label_278
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, r15
	call	begfield
	lea	rsi, [rsi]
	mov	qword ptr [r13 - 0x10], rax
	jmp	.label_283
	nop	dword ptr [rax + rax]
.label_278:
	cmp	byte ptr [r15 + 0x30], 0
	lea	rdi, [rdi]
	je	.label_282
	dec	r12
	nop	dword ptr [rax]
.label_291:
	movsx	edi, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	inc	r12
	lea	rsi, [rsi]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	mov	rsp, rsp
	jne	.label_291
.label_282:
	mov	qword ptr [r13 - 0x10], r12
	nop	
	jmp	.label_283
	nop	word ptr cs:[rax + rax]
.label_281:
	mov	r12, qword ptr [rsp + 0x30]
	cmp	byte ptr [r12 + 0x30], 0
	mov	rdx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	mov	rdi, rdx
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	je	.label_279
	jmp	.label_285
	nop	word ptr cs:[rax + rax]
.label_295:
	lea	rdi, [rdi]
	mov	rdx, rdi
.label_285:
	mov	r13, rcx
	mov	rax, rdx
	sub	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	qword ptr [r12 + 8], rax
	mov	rdi, r12
	mov	rbp, rdx
	mov	rbp, rbp
	call	buffer_linelim
	sub	rax, qword ptr [rsp + 0x58]
	sar	rax, 5
	mov	qword ptr [r12 + 0x10], rax
	je	.label_292
	sub	rbp, rbx
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x20], rbp
	mov	rsp, rsp
	add	r14, 0x22
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + merge_buffer_size]],  r14
	mov	al, 1
	mov	rbp, rbp
	jmp	.label_294
.label_299:
	xor	eax, eax
.label_294:
	add	rsp, 0x68
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_290:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.159
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	call	sort_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407560

	.globl buffer_linelim
	.type buffer_linelim, @function
buffer_linelim:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi]
	add	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407570

	.globl compare
	.type compare, @function
compare:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r14, rsi
	nop	
	mov	rbx, rdi
	cmp	qword ptr [word ptr [rip + keylist]],  0
	mov	rsp, rsp
	je	.label_302
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, r14
	lea	rsi, [rsi]
	call	keycompare
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_301
	lea	rsi, [rsi]
	mov	cl,  byte ptr [byte ptr [rip + unique]]
	mov	rsp, rsp
	xor	eax, eax
	and	cl, 1
	nop	
	jne	.label_301
	mov	cl,  byte ptr [byte ptr [rip + stable]]
	nop	
	and	cl, 1
	jne	.label_301
.label_302:
	mov	rsi, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rbp, rbp
	lea	r15, [rcx - 1]
	lea	rsi, [rsi]
	mov	r12, rsi
	lea	rdi, [rdi]
	dec	r12
	nop	
	je	.label_303
	mov	eax, 1
	test	r15, r15
	je	.label_304
	nop	
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14]
	je	.label_300
	call	xmemcoll0
	jmp	.label_304
.label_303:
	lea	rdi, [rdi]
	neg	r15
	sbb	eax, eax
	jmp	.label_304
.label_300:
	cmp	r12, r15
	mov	rbp, rbp
	mov	rax, r15
	mov	rsp, rsp
	cmovb	rax, r12
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rsp, rsp
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	jne	.label_304
	lea	rsi, [rsi]
	cmp	r12, r15
	setne	al
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovae	eax, ecx
.label_304:
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rip + reverse]],  0
	mov	rsp, rsp
	je	.label_301
	neg	eax
.label_301:
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407690

	.globl write_line
	.type write_line, @function
write_line:
	nop	
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	r12, qword ptr [rdi + 8]
	lea	rbp, [rbx + r12]
	lea	rsi, [rsi]
	test	r14, r14
	mov	rsp, rsp
	jne	.label_308
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_308
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	nop	
	mov	qword ptr [rsp + 8], r14
	lea	rsi, [rsi]
	dec	r12
	mov	r14d, 0xa
	nop	
	mov	r13d, 0x3e
.label_309:
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jae	.label_305
	test	r12, r12
	mov	rsp, rsp
	movsx	eax, byte ptr [rbx]
	nop	
	lea	rbx, [rbx + 1]
	mov	edi, eax
	cmove	edi, r14d
	cmp	eax, 9
	cmove	edi, r13d
	mov	rbp, rbp
	mov	rsi, r15
	call	fputc_unlocked
	dec	r12
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_309
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.163
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	call	sort_die
.label_308:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	and	al, 1
	mov	rsp, rsp
	jne	.label_307
	mov	al, 0xa
	nop	
	jmp	.label_310
.label_307:
	xor	eax, eax
.label_310:
	mov	rsp, rsp
	mov	byte ptr [rbx + r12 - 1], al
	mov	rsp, rsp
	mov	esi, 1
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rcx, r15
	lea	rsi, [rsi]
	call	fwrite_unlocked
	lea	rdi, [rdi]
	cmp	rax, r12
	lea	rsi, [rsi]
	jne	.label_306
	mov	byte ptr [rbp - 1], 0
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_305:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	nop	
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	debug_line
.label_306:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.163
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, r14
	call	sort_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407820

	.globl limfield
	.type limfield, @function
limfield:
	push	r15
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	r14, rsi
	mov	rbx, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 8]
	mov	rbp, rbp
	lea	r15, [rbx + rax - 1]
	lea	rdi, [rdi]
	mov	r13, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14 + 0x18]
	cmp	r12, 1
	adc	r13, 0
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + tab]],  0x80
	je	.label_320
	cmp	rbx, r15
	mov	rsp, rsp
	jae	.label_311
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	nop	dword ptr [rax]
.label_315:
	lea	rsi, [rsi]
	test	r13, r13
	mov	rsp, rsp
	je	.label_311
	nop	
	dec	r13
	jmp	.label_319
	nop	word ptr cs:[rax + rax]
.label_323:
	inc	rbx
.label_319:
	lea	rdi, [rdi]
	cmp	rbx, r15
	lea	rsi, [rsi]
	jae	.label_322
	movsx	ecx, byte ptr [rbx]
	cmp	ecx, eax
	jne	.label_323
	nop	
	lea	rcx, [rbx + 1]
	mov	rsp, rsp
	mov	rdx, r13
	mov	rbp, rbp
	or	rdx, r12
	lea	rsi, [rsi]
	cmovne	rbx, rcx
.label_322:
	lea	rdi, [rdi]
	cmp	rbx, r15
	nop	
	jb	.label_315
	lea	rsi, [rsi]
	jmp	.label_311
	nop	dword ptr [rax + rax]
.label_325:
	lea	rsi, [rsi]
	dec	r13
.label_320:
	lea	rsi, [rsi]
	cmp	rbx, r15
	nop	
	jae	.label_311
	test	r13, r13
	jne	.label_324
	lea	rsi, [rsi]
	jmp	.label_311
	nop	dword ptr [rax]
.label_317:
	inc	rbx
.label_324:
	cmp	rbx, r15
	nop	
	jae	.label_312
	mov	rbp, rbp
	movsx	edi, byte ptr [rbx]
	nop	
	call	to_uchar
	mov	rbp, rbp
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	mov	rbp, rbp
	jne	.label_317
	jmp	.label_312
	nop	dword ptr [rax]
.label_314:
	mov	rbp, rbp
	inc	rbx
.label_312:
	cmp	rbx, r15
	lea	rsi, [rsi]
	jae	.label_325
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	mov	rsp, rsp
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	je	.label_314
	jmp	.label_325
.label_311:
	lea	rsi, [rsi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_318
	cmp	byte ptr [r14 + 0x31], 0
	jne	.label_321
	lea	rsi, [rsi]
	jmp	.label_313
	nop	
.label_316:
	mov	rbp, rbp
	inc	rbx
.label_321:
	cmp	rbx, r15
	jae	.label_313
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_316
.label_313:
	lea	rdi, [rdi]
	add	rbx, r12
	cmp	r15, rbx
	mov	rsp, rsp
	cmovb	rbx, r15
.label_318:
	mov	rax, rbx
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rsp, rsp
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4079c0

	.globl begfield
	.type begfield, @function
begfield:
	lea	rdi, [rdi]
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, qword ptr [rdi]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	lea	r15, [rbx + rax - 1]
	mov	r13, qword ptr [r14]
	mov	r12, qword ptr [r14 + 8]
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + tab]],  0x80
	je	.label_326
	cmp	rbx, r15
	jae	.label_330
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	nop	
.label_327:
	nop	
	test	r13, r13
	nop	
	jne	.label_331
	mov	rsp, rsp
	jmp	.label_330
	nop	
.label_337:
	inc	rbx
.label_331:
	cmp	rbx, r15
	jae	.label_335
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rbx]
	lea	rdi, [rdi]
	mov	cl, 1
	cmp	edx, eax
	nop	
	jne	.label_337
	nop	
	jmp	.label_340
	nop	dword ptr [rax + rax]
.label_335:
	xor	ecx, ecx
.label_340:
	dec	r13
	mov	rsp, rsp
	lea	rdx, [rbx + 1]
	mov	rbp, rbp
	test	cl, cl
	cmovne	rbx, rdx
	cmp	rbx, r15
	jb	.label_327
	jmp	.label_330
	nop	
.label_336:
	lea	rsi, [rsi]
	dec	r13
.label_326:
	cmp	rbx, r15
	jae	.label_330
	mov	rbp, rbp
	test	r13, r13
	jne	.label_339
	nop	
	jmp	.label_330
	nop	word ptr [rax + rax]
.label_333:
	nop	
	inc	rbx
.label_339:
	lea	rdi, [rdi]
	cmp	rbx, r15
	lea	rdi, [rdi]
	jae	.label_329
	mov	rbp, rbp
	movsx	edi, byte ptr [rbx]
	lea	rsi, [rsi]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	lea	rsi, [rsi]
	jne	.label_333
	lea	rsi, [rsi]
	jmp	.label_329
	nop	word ptr [rax + rax]
.label_332:
	mov	rsp, rsp
	inc	rbx
.label_329:
	lea	rsi, [rsi]
	cmp	rbx, r15
	mov	rsp, rsp
	jae	.label_336
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	lea	rsi, [rsi]
	je	.label_332
	jmp	.label_336
.label_330:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x30], 0
	jne	.label_338
	jmp	.label_328
	nop	dword ptr [rax]
.label_334:
	inc	rbx
.label_338:
	cmp	rbx, r15
	jae	.label_328
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	lea	rdi, [rdi]
	jne	.label_334
.label_328:
	nop	
	add	rbx, r12
	mov	rbp, rbp
	cmp	r15, rbx
	cmovb	rbx, r15
	nop	
	mov	rax, rbx
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b50

	.globl keycompare
	.type keycompare, @function
keycompare:
	mov	rbp, rbp
	push	rbp
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	sub	rsp, 0x1008
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rdi
	mov	r13,  qword ptr [word ptr [rip + keylist]]
	mov	rsp, rsp
	mov	r12, qword ptr [rdi + 0x10]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, qword ptr [rsi + 0x10]
	mov	rsp, rsp
	mov	r15, qword ptr [rsi + 0x18]
	nop	
	mov	byte ptr [rsp + 0xf], al
	mov	byte ptr [rsp + 0xe], al
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_355
.label_393:
	nop	
	mov	qword ptr [rsp + 0x48], rbp
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x18]
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	call	begfield
	mov	rsp, rsp
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r13
	call	begfield
	mov	rbp, rax
.label_355:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbp
	mov	rbx, r13
	mov	rsp, rsp
	mov	r14, qword ptr [rbx + 0x20]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	r12, rcx
	mov	rsp, rsp
	cmova	rcx, r12
	mov	qword ptr [rsp + 0x48], rcx
	nop	
	cmp	rbp, r15
	mov	rbp, rbp
	cmova	r15, rbp
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], r15
	mov	rax, r15
	lea	rsi, [rsi]
	sub	rcx, r12
	mov	qword ptr [rsp + 0x50], rcx
	nop	
	sub	rax, rbp
	mov	qword ptr [rsp + 0x58], rax
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	jne	.label_367
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	key_numeric
	test	al, al
	nop	
	jne	.label_367
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x36], 0
	jne	.label_367
	cmp	byte ptr [rbx + 0x33], 0
	nop	
	jne	.label_367
	cmp	byte ptr [rbx + 0x38], 0
	nop	
	je	.label_373
	nop	word ptr cs:[rax + rax]
.label_367:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rax, r13
	lea	rsi, [rsi]
	or	rax, r14
	lea	rsi, [rsi]
	setne	bl
	nop	
	je	.label_380
	mov	byte ptr [rsp + 0xd], bl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x50]
	lea	rdi, [rax + rcx + 2]
	mov	rsp, rsp
	cmp	rdi, 0xfa1
	mov	rbp, rbp
	lea	r15, [rsp + 0x60]
	mov	rbp, rbp
	mov	eax, 0
	mov	qword ptr [rsp + 0x10], rax
	jb	.label_383
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rbp
	mov	r15, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
.label_383:
	mov	rbp, r12
	cmp	qword ptr [rsp + 0x48], rbp
	mov	rsp, rsp
	mov	ebx, 0
	lea	rsi, [rsi]
	mov	r12d, 0
	je	.label_376
	nop	word ptr cs:[rax + rax]
.label_370:
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_346
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rbp + rbx]
	mov	rsp, rsp
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [r14 + rax], 0
	lea	rsi, [rsi]
	jne	.label_354
.label_346:
	mov	al, byte ptr [rbp + rbx]
	test	r13, r13
	mov	rbp, rbp
	je	.label_358
	movsx	edi, al
	lea	rsi, [rsi]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	eax, al
	mov	al, byte ptr [r13 + rax]
.label_358:
	mov	byte ptr [r15 + r12], al
	inc	r12
.label_354:
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, qword ptr [rsp + 0x50]
	jb	.label_370
.label_376:
	mov	qword ptr [rsp + 0x40], r15
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [r15 + rax + 1]
	mov	qword ptr [rsp + 0x48], rax
	nop	
	mov	byte ptr [r15 + r12], 0
	mov	r15, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x38], r15
	lea	rsi, [rsi]
	mov	ebp, 0
	mov	ebx, 0
	je	.label_374
	nop	word ptr cs:[rax + rax]
.label_343:
	mov	rsp, rsp
	test	r14, r14
	je	.label_352
	mov	rsp, rsp
	movsx	edi, byte ptr [r15 + rbp]
	nop	
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [r14 + rax], 0
	lea	rsi, [rsi]
	jne	.label_388
.label_352:
	lea	rdi, [rdi]
	mov	al, byte ptr [r15 + rbp]
	mov	rbp, rbp
	test	r13, r13
	mov	rbp, rbp
	je	.label_390
	mov	rsp, rsp
	movsx	edi, al
	call	to_uchar
	movzx	eax, al
	mov	rbp, rbp
	mov	al, byte ptr [r13 + rax]
.label_390:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	byte ptr [rcx + rbx], al
	lea	rsi, [rsi]
	inc	rbx
.label_388:
	mov	rbp, rbp
	inc	rbp
	nop	
	cmp	rbp, qword ptr [rsp + 0x58]
	jb	.label_343
.label_374:
	mov	rax, qword ptr [rsp + 0x48]
	nop	
	mov	byte ptr [rax + rbx], 0
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13, qword ptr [rsp + 0x30]
	mov	bl, byte ptr [rsp + 0xd]
	nop	
	jmp	.label_349
	nop	word ptr cs:[rax + rax]
.label_380:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	al, byte ptr [rcx]
	mov	byte ptr [rsp + 0xf], al
	mov	byte ptr [rcx], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x38]
	mov	al, byte ptr [rcx]
	nop	
	mov	byte ptr [rsp + 0xe], al
	mov	byte ptr [rcx], 0
	mov	qword ptr [rsp + 0x40], r12
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	qword ptr [rsp + 0x48], rax
	mov	r12, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x30]
.label_349:
	cmp	byte ptr [r13 + 0x32], 0
	je	.label_381
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x48]
	call	numcompare
	jmp	.label_363
	nop	word ptr cs:[rax + rax]
.label_381:
	mov	rsp, rsp
	cmp	byte ptr [r13 + 0x34], 0
	lea	rsi, [rsi]
	je	.label_387
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x48]
	call	general_numcompare
	mov	rsp, rsp
	jmp	.label_363
.label_387:
	mov	rbp, rbp
	cmp	byte ptr [r13 + 0x35], 0
	je	.label_391
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	call	human_numcompare
	nop	word ptr cs:[rax + rax]
.label_363:
	mov	rsp, rsp
	mov	r15d, eax
.label_348:
	test	bl, bl
	je	.label_341
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	jmp	.label_350
	nop	
.label_341:
	mov	al, byte ptr [rsp + 0xf]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x40]
	mov	byte ptr [rcx + r12], al
	nop	
	mov	al, byte ptr [rsp + 0xe]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	byte ptr [rdx + rcx], al
.label_350:
	test	r15d, r15d
	jne	.label_357
	mov	r13, qword ptr [r13 + 0x40]
	mov	rbp, rbp
	xor	r15d, r15d
	test	r13, r13
	je	.label_364
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + 0x10], -1
	nop	
	je	.label_372
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rsi, r13
	call	limfield
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r13
	mov	rbp, rbp
	call	limfield
	lea	rdi, [rdi]
	mov	r15, rax
	jmp	.label_382
	nop	dword ptr [rax + rax]
.label_372:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	lea	rbp, [rax + rcx - 1]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	lea	r15, [rax + rcx - 1]
.label_382:
	cmp	qword ptr [r13], -1
	jne	.label_393
	mov	qword ptr [rsp + 0x48], rbp
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rax]
	cmp	byte ptr [r13 + 0x30], 0
	lea	rsi, [rsi]
	je	.label_355
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x48]
	jmp	.label_342
	nop	dword ptr [rax + rax]
.label_345:
	inc	r12
.label_342:
	nop	
	cmp	r12, rbx
	mov	rbp, rbp
	jae	.label_347
	mov	rsp, rsp
	movsx	edi, byte ptr [r12]
	lea	rsi, [rsi]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	eax, al
	nop	
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_345
	jmp	.label_347
	nop	
.label_362:
	mov	rsp, rsp
	inc	rbp
.label_347:
	mov	rsp, rsp
	cmp	rbp, r15
	nop	
	jae	.label_355
	nop	
	movsx	edi, byte ptr [rbp]
	lea	rsi, [rsi]
	call	to_uchar
	nop	
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	mov	rsp, rsp
	jne	.label_362
	lea	rsi, [rsi]
	jmp	.label_355
.label_391:
	cmp	byte ptr [r13 + 0x36], 0
	je	.label_378
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, qword ptr [rsp + 0x40]
	call	getmonth
	mov	rsp, rsp
	mov	r15d, eax
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	call	getmonth
	sub	r15d, eax
	nop	
	jmp	.label_348
.label_378:
	cmp	byte ptr [r13 + 0x33], 0
	je	.label_386
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rsp + 0x58]
	call	compare_random
	lea	rdi, [rdi]
	jmp	.label_363
.label_373:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	r14, r14
	je	.label_392
	nop	
	test	r13, r13
	mov	rbp, r12
	jne	.label_360
	jmp	.label_394
.label_386:
	cmp	byte ptr [r13 + 0x38], 0
	mov	rsp, rsp
	je	.label_395
	mov	rdi, qword ptr [rsp + 0x40]
	nop	
	mov	rsi, qword ptr [rsp + 0x48]
	call	filevercmp
	lea	rdi, [rdi]
	jmp	.label_363
.label_392:
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	cmp	rbx, r12
	je	.label_351
	nop	
	mov	r14, r13
	lea	rdi, [rdi]
	mov	r15d, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	je	.label_357
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_369
	mov	rbp, qword ptr [rsp + 0x28]
	nop	dword ptr [rax]
.label_389:
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	jae	.label_375
	cmp	r12, rbx
	jae	.label_375
	lea	rdi, [rdi]
	movsx	edi, byte ptr [r12]
	inc	r12
	call	to_uchar
	movzx	eax, al
	lea	rsi, [rsi]
	movsx	edi, byte ptr [r14 + rax]
	call	to_uchar
	mov	rbp, rbp
	mov	r13b, al
	movsx	edi, byte ptr [rbp]
	inc	rbp
	call	to_uchar
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	movsx	edi, byte ptr [r14 + rax]
	nop	
	call	to_uchar
	lea	rdi, [rdi]
	movzx	r15d, r13b
	mov	r13, qword ptr [rsp + 0x30]
	movzx	eax, al
	sub	r15d, eax
	je	.label_389
	mov	rsp, rsp
	jmp	.label_357
.label_365:
	nop	
	inc	r12
	inc	rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rbx
	mov	rbp, r12
.label_360:
	xor	r12d, r12d
	cmp	rbp, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r15d, 0
	jae	.label_356
	nop	word ptr cs:[rax + rax]
.label_361:
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	movzx	eax, al
	mov	rsp, rsp
	mov	r15b, 1
	mov	rbp, rbp
	cmp	byte ptr [r14 + rax], 0
	mov	rbp, rbp
	je	.label_356
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, qword ptr [rsp + 0x48]
	jb	.label_361
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_356:
	mov	rbx, rbp
	mov	rbp, qword ptr [rsp + 0x28]
	jmp	.label_368
	nop	
.label_379:
	inc	rbp
.label_368:
	cmp	rbp, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	jae	.label_366
	mov	rbp, rbp
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	byte ptr [r14 + rax], 0
	jne	.label_379
	lea	rdi, [rdi]
	mov	r12d, 1
	mov	rbp, rbp
	test	r15b, r15b
	mov	rbp, rbp
	je	.label_366
	mov	r12, rbx
	lea	rsi, [rsi]
	movsx	edi, byte ptr [r12]
	mov	rbp, rbp
	call	to_uchar
	mov	rbp, rbp
	movzx	eax, al
	nop	
	movsx	edi, byte ptr [r13 + rax]
	call	to_uchar
	mov	r15b, al
	mov	rbp, rbp
	mov	rbx, rbp
	nop	
	movsx	edi, byte ptr [rbx]
	lea	rdi, [rdi]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	movsx	edi, byte ptr [r13 + rax]
	call	to_uchar
	movzx	r15d, r15b
	movzx	eax, al
	lea	rsi, [rsi]
	sub	r15d, eax
	mov	rbp, rbp
	je	.label_365
	jmp	.label_359
.label_395:
	test	r12, r12
	je	.label_344
	mov	r15d, 1
	cmp	qword ptr [rsp + 0x58], 0
	je	.label_348
	mov	rbp, rbp
	lea	rsi, [r12 + 1]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	nop	
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	call	xmemcoll0
	jmp	.label_363
.label_353:
	lea	rsi, [rsi]
	inc	rbp
	inc	rbx
	mov	qword ptr [rsp + 0x28], rbx
.label_394:
	xor	r12d, r12d
	cmp	rbp, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r15d, 0
	jae	.label_371
	nop	word ptr cs:[rax + rax]
.label_384:
	movsx	edi, byte ptr [rbp]
	lea	rsi, [rsi]
	call	to_uchar
	movzx	eax, al
	mov	r15b, 1
	cmp	byte ptr [r14 + rax], 0
	mov	rbp, rbp
	je	.label_371
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	jb	.label_384
	xor	r15d, r15d
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_385
.label_371:
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	jmp	.label_385
.label_377:
	inc	rbx
.label_385:
	cmp	rbx, qword ptr [rsp + 0x38]
	jae	.label_366
	nop	
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [r14 + rax], 0
	jne	.label_377
	mov	rbp, rbp
	mov	r12d, 1
	test	r15b, r15b
	je	.label_366
	nop	
	movsx	edi, byte ptr [rbp]
	lea	rsi, [rsi]
	call	to_uchar
	mov	rsp, rsp
	mov	r15b, al
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	r15d, r15b
	lea	rdi, [rdi]
	movzx	eax, al
	sub	r15d, eax
	nop	
	je	.label_353
	jmp	.label_359
.label_366:
	movzx	r15d, r15b
	sub	r15d, r12d
	mov	r13, qword ptr [rsp + 0x30]
	jmp	.label_350
.label_351:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	r15d, 0
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmovne	r15d, eax
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x30]
	nop	
	jmp	.label_350
.label_344:
	mov	rax, qword ptr [rsp + 0x58]
	neg	rax
	mov	rsp, rsp
	sbb	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_348
.label_369:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	cmp	rcx, rax
	mov	rdx, rax
	cmovb	rdx, rcx
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	nop	
	call	memcmp
	mov	r15d, eax
	lea	rdi, [rdi]
	test	r15d, r15d
	nop	
	jne	.label_357
.label_375:
	mov	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rsp + 0x58]
	setne	al
	mov	rsp, rsp
	mov	r15d, 0xffffffff
	mov	rbp, rbp
	jb	.label_357
	mov	rsp, rsp
	movzx	r15d, al
	nop	
	jmp	.label_350
.label_359:
	mov	r13, qword ptr [rsp + 0x30]
.label_357:
	nop	
	cmp	byte ptr [r13 + 0x37], 0
	lea	rdi, [rdi]
	je	.label_364
	neg	r15d
.label_364:
	lea	rdi, [rdi]
	mov	eax, r15d
	lea	rdi, [rdi]
	add	rsp, 0x1008
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408510

	.globl numcompare
	.type numcompare, @function
numcompare:
	lea	rdi, [rdi]
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	nop	
	dec	rbx
	nop	word ptr [rax + rax]
.label_397:
	movsx	edi, byte ptr [rbx + 1]
	mov	rbp, rbp
	inc	rbx
	call	to_uchar
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	nop	
	jne	.label_397
	dec	r14
	nop	word ptr cs:[rax + rax]
.label_396:
	movsx	edi, byte ptr [r14 + 1]
	mov	rbp, rbp
	inc	r14
	call	to_uchar
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_396
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rip + decimal_point]]
	mov	ecx,  dword ptr [dword ptr [rip + thousands_sep]]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	jmp	strnumcmp
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4085b0

	.globl general_numcompare
	.type general_numcompare, @function
general_numcompare:
	nop	
	push	r14
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, rsi
	mov	rbx, rdi
	nop	
	lea	rsi, [rsp + 0x20]
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	nop	
	lea	rsi, [rsp + 0x18]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strtold
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x20], rbx
	je	.label_398
	mov	rbp, rbp
	mov	eax, 1
	cmp	rcx, r14
	je	.label_403
	lea	rdi, [rdi]
	fld	xword ptr [rsp + 0xc]
	lea	rsi, [rsi]
	fxch	st(1)
	fucomi	st(1)
	jbe	.label_402
	fstp	st(0)
	nop	
	fstp	st(0)
	mov	eax, 0xffffffff
	mov	rsp, rsp
	jmp	.label_401
.label_398:
	nop	
	fstp	st(0)
	nop	
	xor	edx, edx
	nop	
	cmp	rcx, r14
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmove	eax, edx
	jmp	.label_401
.label_403:
	fstp	st(0)
	mov	rbp, rbp
	jmp	.label_401
.label_402:
	mov	rsp, rsp
	fxch	st(1)
	nop	
	fucomi	st(1)
	jbe	.label_404
	nop	
	fstp	st(1)
	mov	rsp, rsp
	fstp	st(0)
.label_401:
	mov	rsp, rsp
	fldz	
	fldz	
.label_399:
	fstp	st(1)
	fstp	st(0)
	lea	rdi, [rdi]
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_404:
	xor	eax, eax
	mov	rbp, rbp
	fucomi	st(1)
	mov	rbp, rbp
	jne	.label_400
	jnp	.label_399
.label_400:
	fxch	st(1)
	mov	rbp, rbp
	fucomip	st(0)
	mov	eax, 0xffffffff
	nop	
	fldz	
	fxch	st(1)
	jnp	.label_399
	nop	
	fstp	st(1)
	fucomip	st(0)
	mov	eax, 1
	lea	rdi, [rdi]
	fldz	
	fldz	
	jnp	.label_399
	lea	rsi, [rsi]
	fstp	st(1)
	lea	rsi, [rsi]
	fstp	st(0)
	mov	rdi, rbx
	mov	rsi, r14
	call	nan_compare
	jmp	.label_401
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086c0

	.globl human_numcompare
	.type human_numcompare, @function
human_numcompare:
	push	rbp
	mov	rsp, rsp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	r14, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	lea	rsi, [rsi]
	dec	rbx
	nop	dword ptr [rax]
.label_407:
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rbx + 1]
	inc	rbx
	call	to_uchar
	mov	rbp, rbp
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	nop	
	jne	.label_407
	dec	r14
	nop	word ptr cs:[rax + rax]
.label_406:
	movsx	edi, byte ptr [r14 + 1]
	inc	r14
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_406
	mov	rdi, rbx
	call	find_unit_order
	mov	rsp, rsp
	mov	ebp, eax
	mov	rdi, r14
	call	find_unit_order
	nop	
	sub	ebp, eax
	mov	rsp, rsp
	jne	.label_405
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [rip + decimal_point]]
	mov	ecx,  dword ptr [dword ptr [rip + thousands_sep]]
	mov	rdi, rbx
	mov	rsi, r14
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	lea	rdi, [rdi]
	jmp	strnumcmp
.label_405:
	lea	rsi, [rsi]
	mov	eax, ebp
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408780

	.globl getmonth
	.type getmonth, @function
getmonth:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp], rsi
	mov	rbp, rbp
	mov	r15, rdi
	mov	r13d, 0xc
	mov	rbp, rbp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_409:
	nop	
	mov	r12, r15
	lea	rsi, [rsi]
	movsx	edi, byte ptr [r12]
	call	to_uchar
	mov	rbp, rbp
	movzx	eax, al
	lea	r15, [r12 + 1]
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	mov	rbp, rbp
	jne	.label_409
.label_408:
	lea	rcx, [r13 + rbx]
	shr	rcx, 1
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	rbp,  qword ptr [word ptr [rcx + monthtab]]
	nop	
	mov	r14b, byte ptr [rbp]
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_416
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r13
	nop	
	mov	r13, -1
	nop	word ptr [rax + rax]
.label_417:
	movsx	edi, byte ptr [r15 + r13]
	lea	rsi, [rsi]
	call	to_uchar
	mov	rsp, rsp
	movzx	eax, al
	movsx	edi,  byte ptr [byte ptr [rax + fold_toupper]]
	call	to_uchar
	lea	rdi, [rdi]
	mov	bl, al
	movsx	edi, r14b
	mov	rbp, rbp
	call	to_uchar
	mov	rsp, rsp
	movzx	ecx, bl
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	ecx, eax
	jb	.label_411
	ja	.label_414
	lea	rdi, [rdi]
	mov	r14b, byte ptr [rbp + r13 + 2]
	inc	r13
	test	r14b, r14b
	lea	rdi, [rdi]
	jne	.label_417
	mov	rsp, rsp
	jmp	.label_410
	nop	dword ptr [rax]
.label_411:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	jmp	.label_412
	nop	word ptr cs:[rax + rax]
.label_414:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	inc	rax
	mov	rbp, rbp
	mov	rbx, rax
	mov	r13, qword ptr [rsp + 0x10]
.label_412:
	xor	eax, eax
	nop	
	cmp	rbx, r13
	jb	.label_408
	jmp	.label_415
.label_410:
	add	r15, r13
	mov	r12, r15
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
.label_416:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_413
	mov	qword ptr [rax], r12
.label_413:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rcx + label_117]]
.label_415:
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408910

	.globl compare_random
	.type compare_random, @function
compare_random:
	nop	
	push	rbp
	nop	
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x1148
	lea	rsi, [rsi]
	mov	rbx, rcx
	mov	rbp, rbp
	mov	r14, rdx
	mov	r15, rsi
	mov	rbp, rdi
	mov	rsp, rsp
	lea	rdi, [rsp + 0xdc]
	mov	esi, OFFSET FLAT:random_md5_state
	lea	rsi, [rsi]
	mov	edx, 0x9c
	nop	
	call	memcpy
	lea	rdi, [rsp + 0x40]
	nop	
	mov	esi, OFFSET FLAT:random_md5_state
	mov	rsp, rsp
	mov	edx, 0x9c
	call	memcpy
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_433
	mov	rsp, rsp
	lea	rcx, [rsp + 0x1a0]
	mov	rbp, rbp
	lea	rax, [rbp + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbp
	mov	rsp, rsp
	lea	rax, [r14 + rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rax
	mov	r13, r14
	add	rbx, r15
	nop	
	lea	rbp, [rbx + rbx*2 + 2]
	mov	qword ptr [rsp], rbp
	mov	eax, 0xfa0
	mov	qword ptr [rsp + 0x18], rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r14, rcx
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0
	nop	
	jmp	.label_435
.label_420:
	cmp	rbx, r15
	cmovb	r15, rbx
	seta	al
	mov	rsp, rsp
	movzx	ebx, al
	lea	rsi, [rsi]
	sbb	ebx, 0
	nop	
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memcmp
	test	eax, eax
	lea	rdi, [rdi]
	cmovne	ebx, eax
	nop	
	mov	dword ptr [rsp + 0xc], ebx
	nop	dword ptr [rax]
.label_435:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_422
	mov	rsp, rsp
	lea	rbx, [rax + rax*2]
	shr	rbx, 1
	lea	rdi, [rdi]
	cmp	rbp, rbx
	lea	rdi, [rdi]
	cmova	rbx, rbp
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	ebp, 0xfa0
	lea	rdi, [rdi]
	cmovne	rbp, rbx
	mov	rbp, rbp
	mov	rbx, rax
	lea	rax, [rsp + 0x1a0]
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	jmp	.label_432
	nop	word ptr cs:[rax + rax]
.label_422:
	lea	rdi, [rdi]
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rbx, r14
	mov	rbp, rax
.label_432:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x20]
	cmp	r13, r14
	mov	r15d, 0
	mov	rbp, rbp
	jae	.label_427
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbp
	nop	
	call	xstrxfrm
	mov	r15, rax
	lea	rdi, [rdi]
	inc	r15
.label_427:
	mov	rsp, rsp
	cmp	r12, qword ptr [rsp + 0x38]
	mov	eax, 0
	jae	.label_434
	lea	rsi, [rsi]
	lea	rdi, [rbx + r15]
	mov	rdx, rbp
	sub	rdx, r15
	mov	rsp, rsp
	mov	eax, 0
	mov	rbp, rbp
	cmovb	rdi, rax
	cmovb	rdx, rax
	lea	rsi, [rsi]
	mov	rsi, r12
	call	xstrxfrm
	inc	rax
.label_434:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	cmp	rbp, r15
	mov	rbp, rbp
	setb	cl
	lea	rax, [rax + r15]
	mov	rbp, rbp
	cmp	rax, rbp
	ja	.label_425
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_429
.label_425:
	lea	rbp, [rax + rax*2]
	lea	rdi, [rdi]
	shr	rbp, 1
	movabs	rcx, 0x5555555555555555
	cmp	rax, rcx
	cmovae	rbp, rax
	mov	rdi, qword ptr [rsp + 0x28]
	nop	
	call	free
	mov	rbp, rbp
	mov	rdi, rbp
	call	xmalloc
	mov	rbx, rax
	mov	rsp, rsp
	cmp	r13, r14
	mov	rsp, rsp
	jae	.label_419
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r15
	call	strxfrm
.label_419:
	nop	
	cmp	r12, qword ptr [rsp + 0x38]
	nop	
	jae	.label_424
	lea	rdi, [rdi]
	mov	rdi, rbx
	add	rdi, r15
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	call	strxfrm
.label_424:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rbx
.label_429:
	cmp	r13, r14
	jae	.label_428
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	strlen
	lea	r13, [rax + r13 + 1]
	lea	rdi, [rdi]
	jmp	.label_431
	nop	word ptr cs:[rax + rax]
.label_428:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
.label_431:
	mov	rbp, rbp
	mov	r14, rbx
	lea	rdi, [rdi]
	cmp	r12, qword ptr [rsp + 0x38]
	jae	.label_418
	mov	rdi, r12
	call	strlen
	lea	r12, [rax + r12 + 1]
.label_418:
	lea	rdi, [rdi]
	cmp	r13, qword ptr [rsp + 0x20]
	jb	.label_423
	cmp	r12, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	jae	.label_421
.label_423:
	mov	qword ptr [rsp + 0x10], r13
	lea	rsi, [rsi]
	mov	r13, r12
	mov	rdi, r14
	mov	rbx, r15
	mov	rsi, rbx
	lea	rdx, [rsp + 0x40]
	call	md5_process_bytes
	lea	r12, [r14 + rbx]
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x30]
	mov	rsi, r15
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0xdc]
	call	md5_process_bytes
	cmp	dword ptr [rsp + 0xc], 0
	mov	rbp, qword ptr [rsp]
	lea	rdi, [rdi]
	jne	.label_435
	jmp	.label_420
.label_421:
	mov	rdi, r14
	lea	rdi, [rdi]
	lea	rbp, [rdi + r15]
	mov	rbx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	jmp	.label_430
.label_433:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	dword ptr [rsp + 0xc], 0
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, r14
.label_430:
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, rbp
	lea	r14, [rsp + 0x40]
	mov	rsi, r15
	mov	rdx, r14
	call	md5_process_bytes
	lea	r12, [rsp + 0x180]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	lea	rsi, [rsi]
	call	md5_finish_ctx
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	r13, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rbp, rbx
	lea	rbx, [rsp + 0xdc]
	mov	rdx, rbx
	call	md5_process_bytes
	lea	r14, [rsp + 0x190]
	nop	
	mov	rdi, rbx
	mov	rsi, r14
	call	md5_finish_ctx
	mov	edx, 0x10
	mov	rdi, r12
	mov	rsi, r14
	call	memcmp
	lea	rdi, [rdi]
	mov	r14d, eax
	nop	
	test	r14d, r14d
	nop	
	jne	.label_426
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	lea	rdi, [rdi]
	mov	r14d, eax
	jne	.label_426
	nop	
	cmp	r15, rbp
	mov	rdx, rbp
	mov	rbx, rbp
	lea	rsi, [rsi]
	cmovb	rdx, r15
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, r13
	mov	rsp, rsp
	call	memcmp
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_426
	lea	rdi, [rdi]
	cmp	r15, rbx
	seta	al
	movzx	r14d, al
	nop	
	sbb	r14d, 0
.label_426:
	nop	
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	call	free
	mov	eax, r14d
	add	rsp, 0x1148
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408dc0

	.globl nan_compare
	.type nan_compare, @function
nan_compare:
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	rbx, rsi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	xor	esi, esi
	lea	rsi, [rsi]
	call	strtold
	mov	rsp, rsp
	fstp	xword ptr [rsp + 0x10]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	xor	esi, esi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	strtold
	fstp	xword ptr [rsp]
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	rbp, rbp
	mov	edx, 0x10
	call	memcmp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e30

	.globl find_unit_order
	.type find_unit_order, @function
find_unit_order:
	push	rbx
	sub	rsp, 0x10
	mov	rsp, rsp
	movzx	ebx, byte ptr [rdi]
	mov	rbp, rbp
	cmp	ebx, 0x2d
	lea	rsi, [rsi]
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	add	rax, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rsp + 8]
	call	traverse_raw_number
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, 0x31
	nop	
	jb	.label_436
	lea	rsi, [rsi]
	movzx	ecx, bl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	movzx	eax, byte ptr [rax]
	mov	rbp, rbp
	movsx	edx,  byte ptr [byte ptr [rax + unit_order]]
	mov	rbp, rbp
	mov	eax, edx
	neg	eax
	cmp	ecx, 0x2d
	cmovne	eax, edx
.label_436:
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408eb0

	.globl traverse_raw_number
	.type traverse_raw_number, @function
traverse_raw_number:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi]
	nop	
	lea	r10, [rax + 1]
	mov	cl, byte ptr [rax]
	mov	rsp, rsp
	movzx	r11d, cl
	lea	rdi, [rdi]
	lea	edx, [r11 - 0x30]
	mov	rbp, rbp
	cmp	edx, 9
	ja	.label_441
	mov	r8d,  dword ptr [dword ptr [rip + thousands_sep]]
	xor	edx, edx
	nop	dword ptr [rax]
.label_443:
	lea	rsi, [rsi]
	movzx	r9d, cl
	movzx	esi, dl
	cmp	esi, r9d
	mov	r9b, cl
	lea	rdi, [rdi]
	jb	.label_437
	mov	r9b, dl
.label_437:
	movsx	esi, byte ptr [r10]
	add	rax, 2
	cmp	esi, r8d
	cmovne	rax, r10
	lea	r10, [rax + 1]
	mov	cl, byte ptr [rax]
	mov	rsp, rsp
	movzx	r11d, cl
	lea	edx, [r11 - 0x30]
	mov	rbp, rbp
	cmp	edx, 0xa
	mov	rbp, rbp
	mov	dl, r9b
	jb	.label_443
	cmp	esi, r8d
	mov	rbp, rbp
	je	.label_438
	jmp	.label_440
.label_441:
	xor	r9d, r9d
.label_440:
	mov	rsp, rsp
	cmp	r11d,  dword ptr [dword ptr [rip + decimal_point]]
	jne	.label_444
	movzx	esi, byte ptr [r10]
	lea	rsi, [rsi]
	inc	r10
	lea	eax, [rsi - 0x30]
	cmp	eax, 9
	ja	.label_445
	mov	rax, r10
	nop	word ptr cs:[rax + rax]
.label_442:
	movzx	ecx, sil
	nop	
	movzx	edx, r9b
	cmp	edx, ecx
	mov	rsp, rsp
	jb	.label_439
	lea	rdi, [rdi]
	mov	sil, r9b
.label_439:
	nop	
	mov	r9b, sil
	movzx	esi, byte ptr [rax]
	lea	rdi, [rdi]
	inc	rax
	mov	ecx, esi
	add	ecx, -0x30
	cmp	ecx, 0xa
	nop	
	jb	.label_442
	lea	rdi, [rdi]
	jmp	.label_438
.label_444:
	lea	rdi, [rdi]
	mov	rax, r10
	lea	rsi, [rsi]
	jmp	.label_438
.label_445:
	lea	rsi, [rsi]
	mov	rax, r10
.label_438:
	nop	
	dec	rax
	mov	qword ptr [rdi], rax
	lea	rsi, [rsi]
	movzx	eax, r9b
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408fc0

	.globl xstrxfrm
	.type xstrxfrm, @function
xstrxfrm:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, r15
	mov	rbp, rbp
	call	strxfrm
	nop	
	mov	ebp, dword ptr [rbp]
	lea	rsi, [rsi]
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_446
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_446:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.160
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.161
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.162
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 8
	mov	rsp, rsp
	mov	rdx, r14
	mov	rbp, rbp
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090e0

	.globl debug_line
	.type debug_line, @function
debug_line:
	mov	rbp, rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + keylist]]
	mov	rsi, rbx
	call	debug_key
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_447
	lea	rdi, [rdi]
	jmp	.label_448
	nop	
.label_449:
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, rbx
	call	debug_key
.label_447:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_449
	mov	al,  byte ptr [byte ptr [rip + unique]]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_448
	test	byte ptr [byte ptr [rip + stable]],  1
	lea	rdi, [rdi]
	jne	.label_448
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdi, r14
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rsp, rsp
	jmp	debug_key
.label_448:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409170

	.globl debug_key
	.type debug_key, @function
debug_key:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	r12, rsi
	lea	rsi, [rsi]
	mov	r13, rdi
	nop	
	mov	r14, qword ptr [r13]
	nop	
	mov	rax, qword ptr [r13 + 8]
	mov	rbp, rbp
	lea	r15, [r14 + rax - 1]
	test	r12, r12
	je	.label_464
	nop	
	cmp	qword ptr [r12], -1
	mov	rbx, r14
	mov	rsp, rsp
	je	.label_462
	mov	rdi, r13
	mov	rsi, r12
	lea	rsi, [rsi]
	call	begfield
	mov	rbx, rax
.label_462:
	nop	
	cmp	qword ptr [r12 + 0x10], -1
	je	.label_453
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	limfield
	mov	r15, rax
.label_453:
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x30], 0
	je	.label_461
	mov	rbp, rbp
	cmp	qword ptr [r12], -1
	je	.label_463
.label_461:
	cmp	byte ptr [r12 + 0x36], 0
	nop	
	jne	.label_463
	nop	
	mov	rdi, r12
	call	key_numeric
	lea	rsi, [rsi]
	test	al, al
	je	.label_454
.label_463:
	lea	rsi, [rsi]
	mov	bpl, byte ptr [r15]
	mov	byte ptr [r15], 0
	mov	rsp, rsp
	dec	rbx
	nop	word ptr cs:[rax + rax]
.label_455:
	movsx	edi, byte ptr [rbx + 1]
	mov	rsp, rsp
	inc	rbx
	lea	rdi, [rdi]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_455
	mov	qword ptr [rsp + 0x10], rbx
	cmp	r15, rbx
	jb	.label_456
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 0x36], 0
	je	.label_459
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x10]
	nop	
	mov	rdi, rbx
	call	getmonth
	jmp	.label_452
.label_464:
	lea	rsi, [rsi]
	mov	rbx, r14
	mov	rsp, rsp
	jmp	.label_454
.label_459:
	cmp	byte ptr [r12 + 0x34], 0
	mov	rsp, rsp
	je	.label_457
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	call	strtold
	fstp	st(0)
	jmp	.label_452
.label_457:
	cmp	byte ptr [r12 + 0x32], 0
	lea	rdi, [rdi]
	jne	.label_460
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x35], 0
	nop	
	je	.label_456
.label_460:
	nop	
	cmp	rbx, r15
	mov	rbp, rbp
	jae	.label_450
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	sete	al
	nop	
	jmp	.label_451
.label_456:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r15
.label_452:
	lea	rdi, [rdi]
	mov	byte ptr [r15], bpl
	mov	r15, qword ptr [rsp + 0x10]
.label_454:
	mov	rdi, r14
	mov	rsi, rbx
	call	debug_width
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rsi, [rsi]
	call	debug_width
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rbp, rbp
	call	mark_key
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_450:
	mov	rbp, rbp
	xor	eax, eax
.label_451:
	movzx	eax, al
	add	rax, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	call	traverse_raw_number
	lea	rdi, [rdi]
	movzx	eax, al
	cmp	eax, 0x30
	jb	.label_452
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	cmp	byte ptr [r12 + 0x35], 0
	je	.label_458
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rcx + unit_order]],  0
	nop	
	setne	cl
	jmp	.label_465
.label_458:
	xor	ecx, ecx
.label_465:
	movzx	ecx, cl
	add	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_452
	nop	
	.section	.text
	.align	32
	#Procedure 0x409390

	.globl debug_width
	.type debug_width, @function
debug_width:
	nop	
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	sub	rsi, rbx
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	call	mbsnwidth
	cdqe	
	cmp	rbx, r14
	lea	rsi, [rsi]
	jae	.label_467
	nop	dword ptr [rax]
.label_466:
	movzx	ecx, byte ptr [rbx]
	inc	rbx
	cmp	ecx, 9
	nop	
	sete	cl
	movzx	ecx, cl
	add	rax, rcx
	nop	
	cmp	r14, rbx
	mov	rbp, rbp
	jne	.label_466
.label_467:
	mov	rsp, rsp
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4093f0

	.globl mark_key
	.type mark_key, @function
mark_key:
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_468
	nop	word ptr cs:[rax + rax]
.label_470:
	mov	edi, 0x20
	call	putchar_unlocked
	lea	rsi, [rsi]
	dec	rbx
	lea	rsi, [rsi]
	jne	.label_470
.label_468:
	test	r14, r14
	je	.label_471
	nop	word ptr [rax + rax]
.label_469:
	lea	rsi, [rsi]
	mov	edi, 0x5f
	mov	rbp, rbp
	call	putchar_unlocked
	mov	rsp, rsp
	dec	r14
	jne	.label_469
	mov	edi, 0xa
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	nop	
	jmp	putchar_unlocked
.label_471:
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.164
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	jmp	__printf_chk
	nop	
	.section	.text
	.align	32
	#Procedure 0x4094a0

	.globl move_fd
	.type move_fd, @function
move_fd:
	push	rbx
	lea	rsi, [rsi]
	mov	ebx, edi
	cmp	ebx, esi
	jne	.label_472
	pop	rbx
	mov	rbp, rbp
	ret	
.label_472:
	mov	edi, ebx
	mov	rbp, rbp
	call	dup2
	nop	
	mov	edi, ebx
	nop	
	pop	rbx
	jmp	close
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094d0

	.globl create_temp
	.type create_temp, @function
create_temp:
	lea	rdi, [rdi]
	xor	esi, esi
	jmp	maybe_create_temp
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094e0

	.globl mergefiles
	.type mergefiles, @function
mergefiles:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r15, r8
	mov	rsp, rsp
	mov	r12, rcx
	lea	rsi, [rsi]
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	lea	rdx, [rsp]
	mov	rsi, rbp
	mov	rsp, rsp
	call	open_input_files
	lea	rdi, [rdi]
	mov	rbx, rax
	cmp	rbx, rbp
	nop	
	jae	.label_474
	cmp	rbx, 1
	jbe	.label_473
.label_474:
	mov	r9, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	mov	r8, r15
	call	mergefps
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_473:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.142
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	shl	rbx, 4
	mov	rsi, qword ptr [r14 + rbx]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	sort_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095a0

	.globl avoid_trashing_input
	.type avoid_trashing_input, @function
avoid_trashing_input:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdx
	nop	
	mov	r12, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	r12, rdx
	jae	.label_478
	mov	rax, r12
	mov	rbp, rbp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rbx, rax
	nop	
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_483:
	mov	rax, qword ptr [rbx]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	mov	r14d, 0x2d
	sub	r14d, ecx
	jne	.label_481
	mov	rsp, rsp
	movzx	r14d, byte ptr [rax + 1]
	mov	rbp, rbp
	neg	r14d
.label_481:
	mov	rsp, rsp
	test	r15, r15
	mov	rsp, rsp
	je	.label_480
	mov	rsi, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	strcmp
	lea	rsi, [rsi]
	test	r14d, r14d
	nop	
	je	.label_480
	test	eax, eax
	je	.label_482
.label_480:
	call	get_outstatus
	mov	r13, rax
	test	r13, r13
	mov	rbp, rbp
	je	.label_478
	nop	
	test	r14d, r14d
	je	.label_476
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	lea	rsi, [rsp + 0x18]
	mov	rbp, rbp
	call	stat
	jmp	.label_479
	nop	word ptr [rax + rax]
.label_476:
	xor	edi, edi
	nop	
	lea	rsi, [rsp + 0x18]
	call	__fstat
.label_479:
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_475
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, qword ptr [r13 + 8]
	lea	rdi, [rdi]
	jne	.label_475
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [r13]
	nop	
	jne	.label_475
	nop	word ptr cs:[rax + rax]
.label_482:
	lea	rdi, [rdi]
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_477
	lea	rdi, [rsp + 0x10]
	mov	rbp, rbp
	call	create_temp
	nop	
	mov	rbp, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	lea	r8, [rbp + 0xd]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	call	mergefiles
.label_477:
	nop	
	lea	rax, [rbp + 0xd]
	mov	rsp, rsp
	mov	qword ptr [rbx], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rbp
.label_475:
	inc	r12
	nop	
	add	rbx, 0x10
	nop	
	cmp	r12, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jb	.label_483
.label_478:
	add	rsp, 0xa8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409740

	.globl open_input_files
	.type open_input_files, @function
open_input_files:
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	r12, rdi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdi, r14
	call	xnmalloc
	lea	rsi, [rsi]
	mov	r15, rax
	mov	qword ptr [rbx], r15
	xor	ebx, ebx
	test	r14, r14
	je	.label_485
	nop	
	add	r12, 8
	mov	rbp, rbp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_486:
	mov	rdi, qword ptr [r12]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_484
	lea	rdi, [rdi]
	cmp	byte ptr [rdi + 0xc], 0
	je	.label_484
	lea	rdi, [rdi]
	call	open_temp
	lea	rsi, [rsi]
	jmp	.label_487
	nop	word ptr cs:[rax + rax]
.label_484:
	mov	rdi, qword ptr [r12 - 8]
	mov	esi, OFFSET FLAT:.str.52
	lea	rsi, [rsi]
	call	stream_open
.label_487:
	mov	qword ptr [r15 + rbx*8], rax
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_485
	mov	rsp, rsp
	inc	rbx
	add	r12, 0x10
	nop	
	cmp	rbx, r14
	jb	.label_486
.label_485:
	mov	rax, rbx
	mov	rsp, rsp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409810

	.globl mergefps
	.type mergefps, @function
mergefps:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xc8
	mov	qword ptr [rsp + 0x70], r9
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], r8
	mov	qword ptr [rsp + 0x78], rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x38], rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	xnmalloc
	nop	
	mov	qword ptr [rsp + 0x58], rax
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdi, r14
	call	xnmalloc
	mov	qword ptr [rsp + 0xa0], rax
	mov	rsp, rsp
	mov	esi, 8
	mov	rbp, rbp
	mov	rdi, r14
	call	xnmalloc
	mov	qword ptr [rsp + 0x98], rax
	mov	esi, 8
	mov	rdi, r14
	call	xnmalloc
	mov	r15, rax
	nop	
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa8], 0
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	eax, 1
	mov	qword ptr [rsp + 0x88], rax
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	je	.label_498
	mov	qword ptr [rsp + 0x68], rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rbx
.label_505:
	mov	rbp, rbp
	imul	rcx, r13, 0x38
	mov	qword ptr [rsp + 0x48], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + rcx]
	mov	qword ptr [rsp + 0x90], rax
	mov	r12, r13
	shl	r12, 4
	add	r12, qword ptr [rsp + 0x60]
	mov	rcx, r14
	nop	word ptr cs:[rax + rax]
.label_497:
	mov	r14, rcx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	xor	edx, edx
	div	r14
	mov	rbp, rbp
	cmp	rcx, rax
	cmovbe	rcx, rax
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rbp, qword ptr [rsp + 0x90]
	nop	
	mov	rdi, rbp
	mov	rdx, rcx
	call	initbuf
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + r13*8]
	mov	rdx, qword ptr [r12]
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	fillbuf
	test	al, al
	jne	.label_511
	lea	rdi, [rdi]
	lea	rax, [r14 - 1]
	mov	qword ptr [rsp + 0x40], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + r13*8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12]
	call	xfclose
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x38]
	cmp	r13, rax
	mov	rbp, rbp
	jae	.label_516
	dec	rax
	mov	qword ptr [rsp + 0x38], rax
	mov	rdi, qword ptr [r12]
	mov	rbp, rbp
	call	zaptemp
.label_516:
	mov	rax, qword ptr [rsp + 0x90]
	mov	rdi, qword ptr [rax]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	cmp	r13, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0x68]
	jae	.label_526
	nop	word ptr cs:[rax + rax]
.label_517:
	movups	xmm0, xmmword ptr [rcx + 0x10]
	nop	
	movups	xmmword ptr [rcx], xmm0
	lea	rdi, [rdi]
	lea	rcx, [rcx + 0x10]
	nop	
	mov	rdx, qword ptr [rbx + rax*8]
	nop	
	mov	qword ptr [rbx + rax*8 - 8], rdx
	inc	rax
	cmp	r14, rax
	jne	.label_517
.label_526:
	mov	rcx, qword ptr [rsp + 0x40]
	cmp	r13, rcx
	jb	.label_497
	jmp	.label_500
	nop	word ptr cs:[rax + rax]
.label_511:
	mov	rdi, qword ptr [rsp + 0x90]
	call	buffer_linelim
	lea	rcx, [rax - 0x20]
	mov	rdx, qword ptr [rsp + 0xa0]
	mov	qword ptr [rdx + r13*8], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rdx + 0x10]
	shl	rcx, 5
	lea	rsi, [rsi]
	sub	rax, rcx
	mov	rcx, qword ptr [rsp + 0x98]
	mov	qword ptr [rcx + r13*8], rax
	inc	r13
	mov	rbp, rbp
	add	qword ptr [rsp + 0x68], 0x10
	inc	qword ptr [rsp + 0x88]
	cmp	r13, r14
	lea	rdi, [rdi]
	mov	rcx, r14
	jb	.label_505
.label_500:
	xor	eax, eax
	test	rcx, rcx
	mov	r14, qword ptr [rsp + 0x60]
	je	.label_498
	nop	dword ptr [rax + rax]
.label_521:
	mov	qword ptr [r15 + rax*8], rax
	inc	rax
	cmp	rcx, rax
	lea	rsi, [rsi]
	jne	.label_521
	lea	rdi, [rdi]
	mov	ebx, 1
	cmp	rcx, 1
	nop	
	jbe	.label_524
	nop	
.label_499:
	mov	rbp, rbp
	mov	rbp, rcx
	mov	rax, qword ptr [r15 + rbx*8 - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + rbx*8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	call	compare
	mov	rbp, rbp
	test	eax, eax
	jle	.label_494
	mov	rax, qword ptr [r15 + rbx*8 - 8]
	nop	
	mov	rcx, qword ptr [r15 + rbx*8]
	mov	qword ptr [r15 + rbx*8 - 8], rcx
	mov	qword ptr [r15 + rbx*8], rax
	xor	ebx, ebx
.label_494:
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, rcx
	jb	.label_499
.label_524:
	nop	
	test	rcx, rcx
	je	.label_498
	mov	rax, r15
	lea	rsi, [rsi]
	add	rax, 8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rax, [rcx - 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 0x40], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	add	rax, 8
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa0]
	add	rax, 8
	nop	
	mov	qword ptr [rsp + 0x20], rax
	mov	r13, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [r13 + 0x38]
	mov	qword ptr [rsp + 0x18], rax
	lea	rax, [r14 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x70]
	lea	rax, [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x88], rax
	nop	dword ptr [rax]
.label_492:
	mov	rbx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rbx
	lea	rdi, [rdi]
	lea	rax, [rbx - 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rax
	nop	
	jmp	.label_489
	nop	
.label_490:
	lea	rdi, [rdi]
	mov	qword ptr [r15 + rcx*8], r12
.label_489:
	mov	rax, qword ptr [r15]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	nop	
	and	eax, 1
	nop	
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_493
	lea	rsi, [rsi]
	mov	r14, rbx
	mov	rdi, qword ptr [rsp + 0x90]
	nop	
	test	rdi, rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x88]
	nop	
	je	.label_502
	mov	rsi, rbp
	mov	rsp, rsp
	call	compare
	test	eax, eax
	je	.label_506
	nop	
	lea	rdi, [rsp + 0xa8]
	nop	
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x80]
	call	write_line
.label_502:
	mov	rbp, rbp
	cmp	rbx, qword ptr [rbp + 8]
	jae	.label_504
	nop	dword ptr [rax + rax]
.label_513:
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_514
	add	rbx, rbx
	nop	
	cmp	rbx, qword ptr [rbp + 8]
	jb	.label_513
	jmp	.label_515
	nop	word ptr cs:[rax + rax]
.label_493:
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x80]
	call	write_line
	lea	rdi, [rdi]
	jmp	.label_496
.label_506:
	lea	rsi, [rsi]
	mov	rbx, r14
	lea	rdi, [rdi]
	jmp	.label_496
.label_514:
	mov	rbx, qword ptr [rbp + 8]
.label_515:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xa8]
	call	free
	mov	rdi, rbx
	mov	rsp, rsp
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
.label_504:
	mov	qword ptr [rsp + 0x88], rbx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb0], rdx
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp]
	lea	rdi, [rdi]
	call	memcpy
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_503
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp]
	add	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0xb8], rax
	nop	
	mov	rax, qword ptr [rbp + 0x18]
	sub	rax, qword ptr [rbp]
	add	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0xc0], rax
.label_503:
	mov	rsp, rsp
	lea	rax, [rsp + 0xa8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], rax
	mov	rbp, rbp
	mov	rbx, r14
.label_496:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x98]
	cmp	qword ptr [rcx + rax*8], rbp
	lea	rdi, [rdi]
	jae	.label_512
	nop	
	add	rbp, -0x20
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rcx + rax*8], rbp
	jmp	.label_519
	nop	word ptr [rax + rax]
.label_512:
	imul	rdi, rax, 0x38
	nop	
	add	rdi, r13
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	shl	rax, 4
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + rax]
	nop	
	call	fillbuf
	test	al, al
	lea	rdi, [rdi]
	je	.label_491
	mov	r14, rbx
	mov	rsp, rsp
	mov	rbx, qword ptr [r15]
	imul	rbp, rbx, 0x38
	mov	rbp, rbp
	lea	rdi, [r13 + rbp]
	call	buffer_linelim
	mov	rbp, rbp
	lea	rcx, [rax - 0x20]
	mov	rdx, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rbx*8], rcx
	mov	rcx, qword ptr [r13 + rbp + 0x10]
	nop	
	shl	rcx, 5
	sub	rax, rcx
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rbx, r14
.label_519:
	lea	rdi, [rdi]
	mov	r12, qword ptr [r15]
	lea	rsi, [rsi]
	cmp	rbx, 2
	mov	ecx, 0
	jb	.label_490
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rbp, qword ptr [rax + r12*8]
	nop	
	mov	r13d, 1
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_527:
	mov	rax, qword ptr [r15 + r13*8]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rsi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	compare
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	js	.label_525
	jne	.label_520
	cmp	r12, qword ptr [r15 + r13*8]
	lea	rdi, [rdi]
	jae	.label_520
	mov	rbp, rbp
	mov	rbx, r13
	jmp	.label_501
	nop	dword ptr [rax + rax]
.label_520:
	inc	r13
	mov	r14, r13
	mov	rbp, rbp
	jmp	.label_501
	nop	dword ptr [rax + rax]
.label_525:
	lea	rdi, [rdi]
	mov	rbx, r13
.label_501:
	lea	r13, [rbx + r14]
	mov	rbp, rbp
	shr	r13, 1
	lea	rdi, [rdi]
	cmp	r14, rbx
	jb	.label_527
	nop	
	mov	rax, r14
	mov	rsp, rsp
	dec	rax
	nop	
	mov	ecx, 0
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x68]
	je	.label_490
	dec	r14
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x48]
	nop	dword ptr [rax]
.label_510:
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 8], rdx
	add	rcx, 8
	lea	rsi, [rsi]
	dec	r14
	mov	rbp, rbp
	jne	.label_510
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_490
	nop	word ptr cs:[rax + rax]
.label_491:
	cmp	rbx, 1
	mov	eax, 1
	jbe	.label_507
	nop	dword ptr [rax + rax]
.label_508:
	mov	rcx, qword ptr [r15 + rax*8]
	mov	rsp, rsp
	cmp	rcx, qword ptr [r15]
	nop	
	jbe	.label_509
	dec	rcx
	mov	qword ptr [r15 + rax*8], rcx
.label_509:
	lea	rdi, [rdi]
	inc	rax
	lea	rsi, [rsi]
	cmp	rbx, rax
	jne	.label_508
.label_507:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x68], rbx
	mov	rbp, qword ptr [r15]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	mov	rbx, rbp
	lea	rdi, [rdi]
	shl	rbx, 4
	mov	r14, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	rsi, qword ptr [r14 + rbx]
	call	xfclose
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rbp, rax
	jae	.label_523
	mov	rbp, rbp
	add	rbx, r14
	dec	rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	call	zaptemp
.label_523:
	mov	rax, r15
	mov	r15, qword ptr [rax]
	mov	r14, rax
	mov	rbp, rbp
	imul	rbp, r15, 0x38
	mov	rdi, qword ptr [r13 + rbp]
	call	free
	nop	
	cmp	r15, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	jae	.label_518
	mov	rax, qword ptr [rsp + 0x30]
	sub	rax, r15
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	lea	rcx, [rcx + r15*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	lea	rdx, [rdx + r15*8]
	add	rbp, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	lea	rsi, [rsi + r15*8]
	shl	r15, 4
	add	r15, qword ptr [rsp + 0x10]
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_495:
	mov	rbx, qword ptr [rsi + rdi*8]
	mov	rbp, rbp
	mov	qword ptr [rsi + rdi*8 - 8], rbx
	nop	
	movups	xmm0, xmmword ptr [r15]
	movups	xmmword ptr [r15 - 0x10], xmm0
	mov	rbx, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rbx
	movups	xmm0, xmmword ptr [rbp]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbp + 0x10]
	nop	
	movups	xmm2, xmmword ptr [rbp + 0x20]
	movups	xmmword ptr [rbp - 0x18], xmm2
	movups	xmmword ptr [rbp - 0x28], xmm1
	mov	rbp, rbp
	movups	xmmword ptr [rbp - 0x38], xmm0
	mov	rbx, qword ptr [rdx + rdi*8]
	mov	qword ptr [rdx + rdi*8 - 8], rbx
	mov	rbx, qword ptr [rcx + rdi*8]
	mov	qword ptr [rcx + rdi*8 - 8], rbx
	inc	rdi
	add	rbp, 0x38
	add	r15, 0x10
	cmp	rax, rdi
	lea	rsi, [rsi]
	jne	.label_495
.label_518:
	cmp	qword ptr [rsp + 0x40], 0
	mov	rsp, rsp
	mov	eax, 1
	lea	rsi, [rsi]
	mov	r15, r14
	nop	
	mov	rdx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	je	.label_522
	nop	word ptr cs:[rax + rax]
.label_488:
	mov	rsp, rsp
	mov	rcx, qword ptr [r15 + rax*8]
	mov	qword ptr [r15 + rax*8 - 8], rcx
	inc	rax
	cmp	rdx, rax
	jne	.label_488
	dec	qword ptr [rsp + 0x30]
	nop	
	cmp	qword ptr [rsp + 0x40], 0
	jne	.label_492
.label_522:
	mov	qword ptr [rsp + 0x58], r13
	cmp	qword ptr [rsp + 0x90], 0
	mov	rbp, rbp
	je	.label_498
	test	byte ptr [byte ptr [rip + unique]],  1
	je	.label_498
	lea	rdi, [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x80]
	call	write_line
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	call	free
.label_498:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x80]
	call	xfclose
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	free
	mov	rdi, r15
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbp, rbp
	call	free
	add	rsp, 0xc8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a1f0

	.globl maybe_create_temp
	.type maybe_create_temp, @function
maybe_create_temp:
	push	r15
	nop	
	push	r14
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	r14, rdi
	lea	rdi, [rdi]
	movzx	esi, sil
	lea	rdi, [rsp + 0xc]
	call	create_temp_file
	mov	r15, rax
	xor	ebx, ebx
	test	r15, r15
	je	.label_529
	mov	rbx, r15
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0xc], 0
	nop	
	cmp	qword ptr [word ptr [rip + compress_program]],  0
	je	.label_531
	lea	rdi, [rsp + 4]
	mov	esi, 4
	nop	
	call	pipe_fork
	mov	rsp, rsp
	mov	dword ptr [rbx + 8], eax
	test	eax, eax
	jle	.label_528
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 4]
	mov	rsp, rsp
	call	close
	nop	
	mov	eax, dword ptr [rsp + 8]
	mov	dword ptr [rsp + 0xc], eax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	register_proc
	jmp	.label_531
.label_528:
	je	.label_532
.label_531:
	mov	edi, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.166
	lea	rdi, [rdi]
	call	fdopen
	mov	qword ptr [r14], rax
	test	rax, rax
	mov	rsp, rsp
	je	.label_530
.label_529:
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	r15
	nop	
	ret	
.label_530:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.176
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	add	r15, 0xd
	mov	rdi, rax
	mov	rsi, r15
	mov	rsp, rsp
	call	sort_die
.label_532:
	mov	edi, dword ptr [rsp + 8]
	call	close
	mov	edi, dword ptr [rsp + 0xc]
	mov	esi, 1
	call	move_fd
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 4]
	lea	rdi, [rdi]
	xor	esi, esi
	call	move_fd
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	lea	rdi, [rdi]
	xor	edx, edx
	xor	eax, eax
	mov	rsi, rdi
	call	execlp
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	edi, dword ptr [rax]
	mov	esi, OFFSET FLAT:.str.175
	nop	
	call	async_safe_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a340

	.globl open_temp
	.type open_temp, @function
open_temp:
	push	rbp
	mov	rbp, rbp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x10
	mov	rbx, rdi
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx + 0xc]
	cmp	eax, 1
	nop	
	jne	.label_533
	mov	edi, dword ptr [rbx + 8]
	call	wait_proc
.label_533:
	mov	rbp, rbp
	lea	rdi, [rbx + 0xd]
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	esi, esi
	xor	eax, eax
	call	open
	lea	rsi, [rsi]
	mov	r14d, eax
	test	r14d, r14d
	js	.label_538
	lea	rdi, [rsp + 8]
	mov	esi, 9
	lea	rdi, [rdi]
	call	pipe_fork
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_536
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_537
	nop	
	mov	dword ptr [rbx + 8], eax
	nop	
	mov	rdi, rbx
	call	register_proc
	lea	rdi, [rdi]
	mov	edi, r14d
	call	close
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	mov	edi, dword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.52
	mov	rsp, rsp
	call	fdopen
	mov	rbp, rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	jne	.label_538
	call	__errno_location
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rbx]
	mov	edi, dword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	close
	mov	dword ptr [rbx], ebp
	jmp	.label_534
.label_536:
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	mov	rsp, rsp
	cmp	ebx, 0x18
	jne	.label_535
	mov	edi, r14d
	lea	rsi, [rsi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp], 0x18
.label_534:
	mov	rsp, rsp
	xor	ebp, ebp
.label_538:
	mov	rsp, rsp
	mov	rax, rbp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_537:
	mov	edi, dword ptr [rsp + 8]
	mov	rsp, rsp
	call	close
	mov	rsp, rsp
	xor	esi, esi
	mov	edi, r14d
	call	move_fd
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0xc]
	nop	
	mov	esi, 1
	call	move_fd
	nop	
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	mov	edx, OFFSET FLAT:.str.168
	lea	rsi, [rsi]
	xor	ecx, ecx
	xor	eax, eax
	mov	rsi, rdi
	mov	rbp, rbp
	call	execlp
	mov	rsp, rsp
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.169
	call	async_safe_die
.label_535:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.167
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	edi, 4
	nop	
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 2
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a510

	.globl wait_proc
	.type wait_proc, @function
wait_proc:
	nop	
	push	rbx
	mov	rsp, rsp
	mov	ebx, edi
	call	delete_proc
	test	al, al
	je	.label_539
	mov	edi, ebx
	pop	rbx
	jmp	reap
.label_539:
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a530

	.globl pipe_fork
	.type pipe_fork, @function
pipe_fork:
	mov	rbp, rbp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rbp, rdi
	lea	rsi, [rsi]
	mov	esi, 0x80000
	lea	rsi, [rsi]
	call	rpl_pipe2
	mov	r13d, 0xffffffff
	test	eax, eax
	nop	
	js	.label_540
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	lea	rsi, [rsi]
	inc	eax
	nop	
	cmp	eax,  dword ptr [dword ptr [rip + nprocs]]
	jae	.label_546
	call	reap_some
.label_546:
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_541
	mov	qword ptr [rsp], rbp
	mov	rsp, rsp
	movsd	xmm0,  qword ptr [word ptr [rip + label_545]]
	movsd	qword ptr [rsp + 8], xmm0
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15, rax
	mov	rbp, rbp
	lea	r12, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_543:
	mov	rdi, r12
	mov	rbp, rbp
	call	cs_enter
	nop	
	mov	r14,  qword ptr [word ptr [rip + temphead]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + temphead]],  0
	call	fork
	mov	r13d, eax
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r15]
	test	r13d, r13d
	lea	rsi, [rsi]
	je	.label_547
	mov	qword ptr [word ptr [rip + temphead]],  r14
.label_547:
	mov	rdi, r12
	call	cs_leave
	mov	dword ptr [r15], ebp
	test	r13d, r13d
	jns	.label_542
	lea	rdi, [rdi]
	cmp	ebp, 0xb
	nop	
	jne	.label_542
	mov	rsp, rsp
	dec	rbx
	movsd	xmm0, qword ptr [rsp + 8]
	call	xnanosleep
	mov	rsp, rsp
	movsd	xmm0, qword ptr [rsp + 8]
	addsd	xmm0, xmm0
	movsd	qword ptr [rsp + 8], xmm0
	call	reap_exited
	nop	
	test	rbx, rbx
	jne	.label_543
.label_542:
	test	r13d, r13d
	js	.label_544
	je	.label_541
	inc	dword ptr [dword ptr [rip + nprocs]]
	lea	rsi, [rsi]
	jmp	.label_540
.label_541:
	mov	rsp, rsp
	xor	r13d, r13d
	xor	edi, edi
	lea	rdi, [rdi]
	call	close
	nop	
	mov	edi, 1
	call	close
	jmp	.label_540
.label_544:
	mov	rbp, rbp
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp]
	mov	edi, dword ptr [rbp]
	call	close
	mov	edi, dword ptr [rbp + 4]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
.label_540:
	mov	rsp, rsp
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6e0

	.globl async_safe_die
	.type async_safe_die, @function
async_safe_die:
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	ebp, edi
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strlen
	mov	edi, 2
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	write
	lea	rdi, [rdi]
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_548
	nop	
	lea	rsi, [rsp + 0xc]
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	call	inttostr
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	edi, 2
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.172
	nop	
	mov	edx, 8
	mov	rsp, rsp
	call	write
	mov	rdi, rbx
	call	strlen
	mov	edi, 2
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rdx, rax
	call	write
.label_548:
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.173
	mov	rsp, rsp
	mov	edx, 1
	call	write
	mov	rsp, rsp
	mov	edi, 2
	mov	rbp, rbp
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x40a790

	.globl register_proc
	.type register_proc, @function
register_proc:
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + proctab]],  0
	jne	.label_549
	lea	rsi, [rsi]
	mov	edi, 0x2f
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, OFFSET FLAT:proctab_hasher
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:proctab_comparator
	xor	r8d, r8d
	call	hash_initialize
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + proctab]],  rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_550
.label_549:
	mov	byte ptr [rbx + 0xc], 1
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	call	hash_insert
	mov	rsp, rsp
	test	rax, rax
	je	.label_550
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_550:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40a800

	.globl delete_proc
	.type delete_proc, @function
delete_proc:
	nop	
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0x10], edi
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	mov	rbp, rbp
	lea	rsi, [rsp + 8]
	call	hash_delete
	mov	rsp, rsp
	test	rax, rax
	je	.label_551
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0xc], 2
	mov	al, 1
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rsp, rsp
	ret	
.label_551:
	xor	eax, eax
	add	rsp, 0x18
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a850

	.globl reap
	.type reap, @function
reap:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	ebp, edi
	cmp	ebp, 1
	sbb	edi, edi
	mov	rbp, rbp
	or	edi, ebp
	test	ebp, ebp
	sete	al
	movzx	edx, al
	lea	rsi, [rsp + 4]
	mov	rbp, rbp
	call	waitpid
	lea	rsi, [rsi]
	mov	ebx, eax
	lea	rdi, [rdi]
	test	ebx, ebx
	js	.label_554
	jle	.label_555
	test	ebp, ebp
	mov	rbp, rbp
	jg	.label_553
	mov	edi, ebx
	mov	rbp, rbp
	call	delete_proc
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	je	.label_555
.label_553:
	lea	rsi, [rsi]
	movzx	eax, word ptr [rsp + 4]
	test	ax, 0xff7f
	lea	rsi, [rsi]
	jne	.label_552
	dec	dword ptr [dword ptr [rip + nprocs]]
.label_555:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_554:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.170
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	lea	rdi, [rdi]
	mov	edi, 4
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 2
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
	call	error
.label_552:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.171
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a970

	.globl reap_some
	.type reap_some, @function
reap_some:
	nop	
	push	rax
	mov	edi, 0xffffffff
	mov	rsp, rsp
	call	reap
	lea	rsi, [rsi]
	pop	rax
	jmp	reap_exited
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a990

	.globl reap_exited
	.type reap_exited, @function
reap_exited:
	push	rax
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	lea	rsi, [rsi]
	jle	.label_556
.label_557:
	xor	edi, edi
	lea	rsi, [rsi]
	call	reap
	nop	
	test	eax, eax
	je	.label_556
	mov	eax,  dword ptr [dword ptr [rip + nprocs]]
	mov	rbp, rbp
	test	eax, eax
	jg	.label_557
.label_556:
	pop	rax
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9d0

	.globl proctab_hasher
	.type proctab_hasher, @function
proctab_hasher:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rdi + 8]
	mov	rsp, rsp
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9f0

	.globl proctab_comparator
	.type proctab_comparator, @function
proctab_comparator:
	mov	rsp, rsp
	mov	eax, dword ptr [rdi + 8]
	cmp	eax, dword ptr [rsi + 8]
	nop	
	sete	al
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa10

	.globl zaptemp
	.type zaptemp, @function
zaptemp:
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:temphead
	nop	word ptr cs:[rax + rax]
.label_558:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp]
	lea	rax, [rbx + 0xd]
	lea	rdi, [rdi]
	cmp	rax, r14
	mov	rsp, rsp
	jne	.label_558
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 0xc]
	cmp	eax, 1
	nop	
	jne	.label_561
	mov	rbp, rbp
	mov	edi, dword ptr [rbx + 8]
	call	wait_proc
.label_561:
	mov	r15, qword ptr [rbx]
	lea	r12, [rsp + 0x10]
	mov	rsp, rsp
	mov	rdi, r12
	call	cs_enter
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	call	unlink
	mov	r13d, eax
	nop	
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp], r15
	mov	rdi, r12
	call	cs_leave
	lea	rsi, [rsi]
	test	r13d, r13d
	mov	rbp, rbp
	je	.label_560
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.174
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, r12
	call	error
.label_560:
	lea	rdi, [rdi]
	test	r15, r15
	lea	rdi, [rdi]
	jne	.label_559
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + temptail]],  rbp
.label_559:
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
	lea	rdi, [rdi]
	add	rsp, 0x98
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab50

	.globl create_temp_file
	.type create_temp_file, @function
create_temp_file:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	dword ptr [rsp + 0xc], esi
	mov	r14, rdi
	mov	rax,  qword ptr [word ptr [rip + create_temp_file.temp_dir_index]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + temp_dirs]]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rcx + rax*8]
	mov	rdi, r12
	mov	rsp, rsp
	call	strlen
	mov	rbx, rax
	lea	rdi, [rdi]
	lea	rdi, [rbx + 0x20]
	and	rdi, 0xfffffffffffffff8
	nop	
	call	xmalloc
	mov	rbp, rbp
	mov	rbp, rax
	nop	
	lea	r13, [rbp + 0xd]
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, rbx
	nop	
	call	memcpy
	movabs	rax, 0x58585874726f732f
	nop	
	mov	qword ptr [rbp + rbx + 0xd], rax
	mov	dword ptr [rbp + rbx + 0x15], 0x585858
	mov	qword ptr [rbp], 0
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + create_temp_file.temp_dir_index]]
	nop	
	inc	rax
	xor	ecx, ecx
	cmp	rax,  qword ptr [word ptr [rip + temp_dir_count]]
	lea	rsi, [rsi]
	je	.label_565
	mov	rcx, rax
.label_565:
	mov	qword ptr [word ptr [rip + create_temp_file.temp_dir_index]],  rcx
	nop	
	lea	rdi, [rsp + 0x10]
	lea	rdi, [rdi]
	call	cs_enter
	mov	rsp, rsp
	mov	esi, 0x80000
	mov	rdi, r13
	lea	rdi, [rdi]
	call	mkostemp_safer
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	lea	rsi, [rsi]
	js	.label_562
	mov	rax,  qword ptr [word ptr [rip + temptail]]
	mov	qword ptr [rax], rbp
	nop	
	mov	qword ptr [word ptr [rip + temptail]],  rbp
.label_562:
	mov	rbp, rbp
	call	__errno_location
	mov	r15, rax
	mov	rbp, rbp
	mov	r13d, dword ptr [r15]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x10]
	call	cs_leave
	mov	dword ptr [r15], r13d
	test	ebx, ebx
	jns	.label_564
	cmp	r13d, 0x18
	jne	.label_563
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	mov	rbp, rbp
	je	.label_563
	mov	rdi, rbp
	call	free
	nop	
	xor	ebp, ebp
.label_564:
	mov	dword ptr [r14], ebx
	mov	rbp, rbp
	mov	rax, rbp
	add	rsp, 0x98
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_563:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.177
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r12
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	mov	edi, 2
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r13d
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40acf0

	.globl sort_buffer_size
	.type sort_buffer_size, @function
sort_buffer_size:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	r15, rcx
	mov	r12, rdx
	nop	
	mov	r14, rsi
	mov	qword ptr [rsp], rdi
	nop	
	lea	rbx, [r15 + 2]
	mov	rbp, rbp
	test	r12, r12
	nop	
	je	.label_574
	inc	r15
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_569:
	test	r13, r13
	je	.label_567
	mov	rax, qword ptr [r14 + r13*8]
	nop	
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	nop	
	jne	.label_568
	cmp	byte ptr [rax + 1], 0
	je	.label_571
.label_568:
	mov	rdi, qword ptr [r14 + r13*8]
	lea	rsi, [rsp + 8]
	mov	rbp, rbp
	call	stat
	mov	rbp, rbp
	jmp	.label_576
	nop	
.label_567:
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rax + r13*8]
	lea	rdi, [rdi]
	call	fileno
	mov	edi, eax
	jmp	.label_566
.label_571:
	xor	edi, edi
.label_566:
	lea	rsi, [rsp + 8]
	call	__fstat
.label_576:
	test	eax, eax
	mov	rsp, rsp
	jne	.label_570
	mov	eax, dword ptr [rsp + 0x20]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_575
	mov	rbp, qword ptr [rsp + 0x38]
	jmp	.label_577
	nop	word ptr cs:[rax + rax]
.label_575:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	mov	rbp, rbp
	test	rax, rax
	mov	ebp, 0x20000
	jne	.label_578
.label_577:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  0
	mov	rsp, rsp
	jne	.label_573
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	mov	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  rax
	test	rax, rax
	jne	.label_573
	lea	rsi, [rsi]
	call	default_sort_size
	mov	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  rax
	nop	dword ptr [rax]
.label_573:
	mov	rcx, rbp
	nop	
	imul	rcx, r15
	mov	rbp, rbp
	inc	rcx
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, rcx
	div	r15
	lea	rdi, [rdi]
	cmp	rbp, rax
	nop	
	jne	.label_572
	mov	rax,  qword ptr [word ptr [rip + sort_buffer_size.size_bound]]
	lea	rsi, [rsi]
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, rcx
	jbe	.label_572
	add	rbx, rcx
	inc	r13
	mov	rbp, rbp
	cmp	r13, r12
	lea	rdi, [rdi]
	jb	.label_569
	jmp	.label_574
.label_572:
	mov	rax,  qword ptr [word ptr [rip + sort_buffer_size.size_bound]]
.label_578:
	lea	rsi, [rsi]
	mov	rbx, rax
.label_574:
	mov	rax, rbx
	add	rsp, 0x98
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_570:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.178
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [r14 + r13*8]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	sort_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aec0

	.globl queue_init
	.type queue_init, @function
queue_init:
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rbp, rbp
	add	rsi, rsi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:compare_nodes
	call	heap_alloc
	mov	rsp, rsp
	mov	qword ptr [rbx], rax
	lea	rdi, [rbx + 8]
	xor	esi, esi
	call	pthread_mutex_init
	mov	rbp, rbp
	add	rbx, 0x30
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	pthread_cond_init
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40af10

	.globl merge_tree_init
	.type merge_tree_init, @function
merge_tree_init:
	push	r15
	push	r14
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	shl	rdi, 8
	lea	rsi, [rsi]
	call	xmalloc
	nop	
	mov	rbx, rax
	nop	
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x20], 0
	nop	
	mov	qword ptr [rbx + 0x30], r12
	nop	
	mov	qword ptr [rbx + 0x28], r12
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x38], 0
	mov	dword ptr [rbx + 0x50], 0
	mov	byte ptr [rbx + 0x54], 0
	mov	rbp, rbp
	lea	rdi, [rbx + 0x58]
	lea	rdi, [rdi]
	xor	esi, esi
	call	pthread_mutex_init
	nop	
	lea	rsi, [rbx + 0x80]
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, r15
	mov	rbp, rbp
	mov	r8, r12
	call	init_node
	lea	rdi, [rdi]
	mov	rax, rbx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40afc0

	.globl sortlines
	.type sortlines, @function
sortlines:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r13
	nop	
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x58
	mov	r15, r9
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, rcx
	nop	
	mov	r13, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rdx, qword ptr [rsp + 0x90]
	nop	
	mov	rax, qword ptr [rbp + 0x30]
	add	rax, qword ptr [rbp + 0x28]
	mov	r14, r12
	shr	r14, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r14
	mov	qword ptr [rsp + 0x28], r13
	mov	rcx, qword ptr [rbp + 0x40]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], r8
	mov	qword ptr [rsp + 0x40], r15
	mov	qword ptr [rsp + 0x48], rdx
	cmp	r12, 2
	jb	.label_579
	cmp	rax, 0x20000
	mov	rbp, rbp
	jb	.label_579
	lea	rdi, [rsp + 0x50]
	lea	rcx, [rsp + 0x18]
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:sortlines_thread
	call	pthread_create
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_580
.label_579:
	mov	qword ptr [rsp + 8], r15
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x28]
	mov	r12, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	mov	rax, r13
	shl	rax, 5
	mov	r15, rbx
	sub	r15, rax
	cmp	r12, 2
	mov	rbp, rbp
	jb	.label_581
	mov	rax, r14
	mov	rbp, rbp
	shl	rax, 5
	mov	rdi, rbx
	mov	rsp, rsp
	sub	rdi, rax
	mov	rax, r14
	mov	rsp, rsp
	shl	rax, 4
	and	rax, 0xffffffffffffffe0
	mov	rdx, r15
	lea	rsi, [rsi]
	sub	rdx, rax
	nop	
	xor	ecx, ecx
	mov	rsi, r12
	mov	rsp, rsp
	call	sequential_sort
.label_581:
	mov	rbp, rbp
	cmp	r14, 2
	mov	rsp, rsp
	jb	.label_582
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rsp, rsp
	call	sequential_sort
.label_582:
	mov	rsp, rsp
	mov	qword ptr [rbp], rbx
	lea	rsi, [rsi]
	shl	r14, 5
	sub	rbx, r14
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 8], rbx
	mov	qword ptr [rbp + 0x10], rbx
	lea	rdi, [rdi]
	shl	r12, 5
	lea	rsi, [rsi]
	sub	rbx, r12
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x18], rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rdi, rbx
	nop	
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	queue_insert
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x90]
	call	merge_loop
	jmp	.label_583
.label_580:
	sub	r12, r14
	nop	
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	rbp, rbp
	shl	rax, 5
	lea	rdi, [rdi]
	sub	rbx, rax
	mov	rax, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, r12
	nop	
	mov	rdx, r13
	mov	r8, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r9, r15
	mov	rsp, rsp
	call	sortlines
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	xor	esi, esi
	call	pthread_join
.label_583:
	mov	rbp, rbp
	add	rsp, 0x58
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b1d0

	.globl write_unique
	.type write_unique, @function
write_unique:
	nop	
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	mov	r14, rdx
	mov	rsp, rsp
	mov	r15, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_584
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	mov	rbp, rbp
	je	.label_585
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, rbx
	call	compare
	test	eax, eax
	mov	rbp, rbp
	je	.label_587
.label_585:
	nop	
	movups	xmm0, xmmword ptr [rbx]
	nop	
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [word ptr [rip + label_586]],  xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_584:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	r15
	jmp	write_line
.label_587:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b270

	.globl reap_all
	.type reap_all, @function
reap_all:
	push	rax
	jmp	.label_588
	nop	word ptr cs:[rax + rax]
.label_589:
	mov	rbp, rbp
	mov	edi, 0xffffffff
	mov	rsp, rsp
	call	reap
.label_588:
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	jg	.label_589
	pop	rax
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b2a0

	.globl default_sort_size
	.type default_sort_size, @function
default_sort_size:
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	nop	
	lea	r14, [rsp + 8]
	lea	rdi, [rdi]
	mov	edi, 2
	mov	rsi, r14
	call	getrlimit
	lea	rdi, [rdi]
	cmp	eax, 1
	sbb	rbx, rbx
	lea	rdi, [rdi]
	not	rbx
	nop	
	or	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	edi, 9
	lea	rsi, [rsi]
	mov	rsi, r14
	call	getrlimit
	test	eax, eax
	jne	.label_593
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, rbx
	cmovb	rbx, rax
.label_593:
	mov	rbp, rbp
	shr	rbx, 1
	nop	
	lea	rsi, [rsp + 8]
	mov	edi, 5
	lea	rsi, [rsi]
	call	getrlimit
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_592
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	nop	
	shr	rax, 4
	lea	rax, [rax + rax*4]
	mov	rsp, rsp
	lea	rax, [rax + rax*2]
	nop	
	cmp	rax, rbx
	cmovb	rbx, rax
.label_592:
	call	physmem_available
	movsd	qword ptr [rsp], xmm0
	call	physmem_total
	mov	rbp, rbp
	movsd	xmm1,  qword ptr [word ptr [rip + label_590]]
	mulsd	xmm1, xmm0
	movsd	xmm6, qword ptr [rsp]
	maxsd	xmm6, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_591]]
	mov	rbp, rbp
	movq	xmm1, rbx
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_141]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_142]]
	subpd	xmm1, xmm3
	pshufd	xmm4, xmm1, 0x4e
	mov	rbp, rbp
	addpd	xmm4, xmm1
	mov	rsp, rsp
	movsd	xmm1,  qword ptr [word ptr [rip + label_147]]
	movapd	xmm5, xmm0
	lea	rsi, [rsi]
	subsd	xmm5, xmm1
	cvttsd2si	rax, xmm5
	nop	
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	mov	rbp, rbp
	cvttsd2si	rdx, xmm0
	ucomisd	xmm0, xmm1
	cmovae	rdx, rax
	ucomisd	xmm4, xmm0
	nop	
	cmovbe	rdx, rbx
	mov	rbp, rbp
	movq	xmm0, rdx
	punpckldq	xmm0, xmm2
	mov	rbp, rbp
	subpd	xmm0, xmm3
	pshufd	xmm2, xmm0, 0x4e
	lea	rsi, [rsi]
	addpd	xmm2, xmm0
	movapd	xmm3, xmm6
	movapd	xmm0, xmm3
	subsd	xmm0, xmm1
	nop	
	cvttsd2si	rsi, xmm0
	xor	rsi, rcx
	cvttsd2si	rax, xmm3
	mov	rsp, rsp
	ucomisd	xmm3, xmm1
	nop	
	cmovae	rax, rsi
	mov	rbp, rbp
	ucomisd	xmm2, xmm3
	cmovbe	rax, rdx
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	cmovbe	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b450

	.globl compare_nodes
	.type compare_nodes, @function
compare_nodes:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsi + 0x50]
	cmp	dword ptr [rdi + 0x50], eax
	mov	rbp, rbp
	jne	.label_594
	mov	rax, qword ptr [rdi + 0x30]
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x30]
	add	rcx, qword ptr [rsi + 0x28]
	nop	
	cmp	rax, rcx
.label_594:
	nop	
	setb	al
	lea	rsi, [rsi]
	movzx	eax, al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b480

	.globl init_node
	.type init_node, @function
init_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	nop	
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, r8
	mov	qword ptr [rsp], r14
	mov	r15, rcx
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r13, rsi
	neg	r14
	shl	r14, 5
	nop	
	jmp	.label_595
.label_596:
	mov	rcx, r15
	shr	rcx, 1
	lea	rsi, [rsi]
	sub	r15, rcx
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x40], rbp
	mov	r9d, 1
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	r8, qword ptr [rsp]
	call	init_node
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x48], rax
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, r13
	mov	r13, rax
.label_595:
	lea	rax, [rdi + 0x28]
	lea	rcx, [rdi + 0x30]
	nop	
	lea	rdx, [rdi + 0x10]
	lea	rsi, [rdi + 0x18]
	lea	rsi, [rsi]
	and	r9b, 1
	lea	rsi, [rsi]
	cmovne	rsi, rdx
	test	r9b, r9b
	cmovne	rcx, rax
	mov	rax, qword ptr [rcx]
	mov	rcx, rax
	mov	rbp, rbp
	shr	rcx, 1
	mov	rsp, rsp
	sub	rax, rcx
	mov	rbp, rbp
	mov	rbx, r12
	lea	rsi, [rsi]
	add	rbx, r14
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	shl	rdx, 5
	lea	rsi, [rsi]
	mov	r12, rbx
	mov	rbp, rbp
	sub	r12, rdx
	mov	rbp, rbp
	lea	rbp, [r13 + 0x80]
	nop	
	mov	qword ptr [r13 + 0x10], rbx
	mov	qword ptr [r13], rbx
	mov	qword ptr [r13 + 0x18], r12
	mov	qword ptr [r13 + 8], r12
	mov	qword ptr [r13 + 0x20], rsi
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x30], rax
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x38], rdi
	mov	eax, dword ptr [rdi + 0x50]
	inc	eax
	mov	dword ptr [r13 + 0x50], eax
	mov	byte ptr [r13 + 0x54], 0
	lea	rdi, [r13 + 0x58]
	mov	rsp, rsp
	xor	esi, esi
	call	pthread_mutex_init
	cmp	r15, 2
	jae	.label_596
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r13 + 0x40], xmm0
	nop	
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5e0

	.globl sortlines_thread
	.type sortlines_thread, @function
sortlines_thread:
	push	rax
	mov	rbp, rbp
	mov	rax, qword ptr [rdi]
	nop	
	mov	rsi, qword ptr [rdi + 8]
	nop	
	mov	rdx, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x18]
	mov	r8, qword ptr [rdi + 0x20]
	mov	r9, qword ptr [rdi + 0x28]
	mov	rdi, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rsp], rdi
	mov	rdi, rax
	lea	rsi, [rsi]
	call	sortlines
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b620

	.globl sequential_sort
	.type sequential_sort, @function
sequential_sort:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rbp
	mov	r15d, ecx
	mov	r14, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	r12, rdi
	lea	rdi, [rdi]
	cmp	rbp, 2
	mov	rsp, rsp
	jne	.label_597
	lea	rbp, [r12 - 0x20]
	nop	
	lea	rbx, [r12 - 0x40]
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	call	compare
	test	r15b, r15b
	je	.label_598
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	setg	al
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	not	rcx
	mov	rsp, rsp
	shl	rcx, 5
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [r12 + rcx]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [r12 + rcx + 0x10]
	movups	xmmword ptr [r14 - 0x10], xmm1
	mov	rbp, rbp
	movups	xmmword ptr [r14 - 0x20], xmm0
	lea	rdi, [rdi]
	shl	rax, 5
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rax + r12 - 0x40]
	movups	xmm1, xmmword ptr [rax + r12 - 0x30]
	lea	rdi, [rdi]
	movups	xmmword ptr [r14 - 0x30], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 - 0x40], xmm0
	lea	rsi, [rsi]
	jmp	.label_599
.label_597:
	mov	rbx, rbp
	shr	rbx, 1
	nop	
	mov	rsi, rbp
	sub	rsi, rbx
	mov	rax, rbx
	neg	rax
	lea	rdi, [rdi]
	mov	rcx, rbx
	shl	rcx, 5
	mov	rdi, r12
	sub	rdi, rcx
	xor	edx, edx
	nop	
	test	r15b, r15b
	cmovne	rdx, rax
	shl	rdx, 5
	add	rdx, r14
	movzx	ecx, r15b
	call	sequential_sort
	cmp	rbp, 4
	jb	.label_601
	mov	al, r15b
	xor	al, 1
	movzx	ecx, al
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rdx, r14
	call	sequential_sort
	mov	rbp, rbp
	jmp	.label_600
.label_598:
	nop	
	test	eax, eax
	jle	.label_599
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbp]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [r14 - 0x10], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 - 0x20], xmm0
	movups	xmm0, xmmword ptr [rbx]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [rbp + 0x10], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rbp], xmm0
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [r14 - 0x20]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [r14 - 0x10]
	mov	rsp, rsp
	movups	xmmword ptr [rbx + 0x10], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx], xmm0
.label_599:
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_601:
	mov	rbp, rbp
	test	r15b, r15b
	jne	.label_600
	nop	
	movups	xmm0, xmmword ptr [r12 - 0x20]
	nop	
	movups	xmm1, xmmword ptr [r12 - 0x10]
	nop	
	movups	xmmword ptr [r14 - 0x10], xmm1
	movups	xmmword ptr [r14 - 0x20], xmm0
.label_600:
	test	r15b, r15b
	nop	
	mov	rdi, r12
	cmovne	rdi, r14
	mov	rbp, rbp
	cmovne	r14, r12
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	jmp	mergelines
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b800

	.globl queue_insert
	.type queue_insert, @function
queue_insert:
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rdi, [rdi]
	lea	r15, [rbx + 8]
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	call	pthread_mutex_lock
	mov	rdi, qword ptr [rbx]
	mov	rsi, r14
	call	heap_insert
	lea	rsi, [rsi]
	mov	byte ptr [r14 + 0x54], 1
	add	rbx, 0x30
	mov	rdi, rbx
	mov	rbp, rbp
	call	pthread_cond_signal
	mov	rbp, rbp
	mov	rdi, r15
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	jmp	pthread_mutex_unlock
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b870

	.globl merge_loop
	.type merge_loop, @function
merge_loop:
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	nop	
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rcx
	mov	rbp, rbp
	mov	r15, rdx
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	r13, rdi
	jmp	.label_602
	nop	word ptr [rax + rax]
.label_603:
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	mov	rbp, rbp
	call	mergelines_node
	lea	rsi, [rsi]
	mov	rdi, r13
	nop	
	mov	rsi, rbx
	call	queue_check_insert
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsi, rbx
	mov	rsp, rsp
	call	queue_check_insert_parent
	mov	rdi, rbx
	call	unlock_node
.label_602:
	nop	
	mov	rdi, r13
	lea	rsi, [rsi]
	call	queue_pop
	mov	rbx, rax
	cmp	dword ptr [rbx + 0x50], 0
	lea	rdi, [rdi]
	jne	.label_603
	mov	rsp, rsp
	mov	rdi, rbx
	call	unlock_node
	mov	rbp, rbp
	mov	rdi, r13
	mov	rsi, rbx
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	jmp	queue_insert
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b930

	.globl mergelines
	.type mergelines, @function
mergelines:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	r14, rdx
	mov	rbp, rbp
	mov	r15, rsi
	mov	r13, rdi
	nop	
	mov	rcx, r15
	shr	rcx, 1
	sub	r15, rcx
	nop	
	mov	rax, rcx
	shl	rax, 5
	mov	rbp, rbp
	mov	r12, r13
	nop	
	sub	r12, rax
	xor	ebp, ebp
.label_606:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	lea	rdi, [rdi]
	lea	rax, [r14 - 0x20]
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_609:
	nop	
	lea	rbx, [r12 - 0x20]
	nop	
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	call	compare
	mov	rsp, rsp
	add	r13, -0x20
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	jle	.label_605
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	mov	rbp, rbp
	movups	xmmword ptr [r13 + 0x10], xmm1
	movups	xmmword ptr [r13], xmm0
	mov	rbp, rbp
	dec	r15
	lea	rdi, [rdi]
	mov	r12, rbx
	jne	.label_609
	mov	rsp, rsp
	jmp	.label_608
	nop	
.label_605:
	mov	rax, qword ptr [rsp + 0x10]
	movups	xmm0, xmmword ptr [rax]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rax + 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [r13 + 0x10], xmm1
	nop	
	movups	xmmword ptr [r13], xmm0
	mov	rcx, qword ptr [rsp + 8]
	dec	rcx
	mov	r14, rax
	mov	rbp, rbp
	jne	.label_606
	mov	rsp, rsp
	jmp	.label_607
.label_608:
	lea	rdi, [rdi]
	mov	rax, -0x20
	nop	
	mov	rcx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_604:
	movups	xmm0, xmmword ptr [r14 + rax]
	movups	xmm1, xmmword ptr [r14 + rax + 0x10]
	movups	xmmword ptr [r13 + rax + 0x10], xmm1
	movups	xmmword ptr [r13 + rax], xmm0
	nop	
	add	rax, -0x20
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, rcx
	jne	.label_604
.label_607:
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
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
	#Procedure 0x40ba80

	.globl queue_pop
	.type queue_pop, @function
queue_pop:
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	r15, rdi
	lea	r14, [r15 + 8]
	mov	rdi, r14
	call	pthread_mutex_lock
	mov	rbp, rbp
	mov	rdi, qword ptr [r15]
	nop	
	call	heap_remove_top
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_610
	mov	rbp, rbp
	lea	r12, [r15 + 0x30]
	nop	dword ptr [rax]
.label_611:
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, r14
	lea	rdi, [rdi]
	call	pthread_cond_wait
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15]
	call	heap_remove_top
	nop	
	mov	rbx, rax
	test	rbx, rbx
	je	.label_611
.label_610:
	mov	rdi, r14
	mov	rsp, rsp
	call	pthread_mutex_unlock
	mov	rdi, rbx
	mov	rbp, rbp
	call	lock_node
	mov	rbp, rbp
	mov	byte ptr [rbx + 0x54], 0
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bb20

	.globl unlock_node
	.type unlock_node, @function
unlock_node:
	add	rdi, 0x58
	lea	rsi, [rsi]
	jmp	pthread_mutex_unlock
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bb30

	.globl mergelines_node
	.type mergelines_node, @function
mergelines_node:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbx, rdi
	nop	
	mov	rax, qword ptr [rbx]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	r13, qword ptr [rbx + 8]
	mov	eax, dword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	lea	ecx, [rax + rax + 2]
	mov	rsp, rsp
	shr	r14, cl
	inc	r14
	cmp	eax, 1
	mov	rbp, rbp
	jbe	.label_630
	mov	rdi, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 0x20]
	mov	rbp, qword ptr [rax]
	lea	rdi, [rdi]
	jmp	.label_614
	nop	word ptr [rax + rax]
.label_616:
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rax - 0x20]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rax - 0x10]
	movups	xmmword ptr [rbp - 0x10], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp - 0x20], xmm0
	lea	rsi, [rsi]
	add	rbp, -0x20
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
.label_614:
	lea	rdi, [rdi]
	cmp	rdi, qword ptr [rbx + 0x10]
	nop	
	je	.label_622
	mov	rsi, qword ptr [rbx + 8]
	cmp	rsi, qword ptr [rbx + 0x18]
	je	.label_622
	mov	rsp, rsp
	test	r14, r14
	lea	r14, [r14 - 1]
	je	.label_622
	nop	
	add	rdi, -0x20
	lea	rdi, [rdi]
	add	rsi, -0x20
	mov	rbp, rbp
	call	compare
	mov	rbp, rbp
	test	eax, eax
	jle	.label_613
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	lea	rcx, [rax - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rcx
	lea	rdi, [rdi]
	jmp	.label_616
	nop	word ptr [rax + rax]
.label_613:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	lea	rcx, [rax - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbx], rcx
	jmp	.label_616
.label_630:
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	cmp	rdi, qword ptr [rbx + 0x10]
	je	.label_623
	nop	dword ptr [rax + rax]
.label_624:
	lea	rdi, [rdi]
	mov	rbp, r14
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 8]
	cmp	rsi, qword ptr [rbx + 0x18]
	je	.label_626
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_628
	mov	rsp, rsp
	add	rdi, -0x20
	nop	
	add	rsi, -0x20
	mov	rsp, rsp
	call	compare
	test	eax, eax
	jle	.label_617
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	add	rdi, -0x20
	mov	qword ptr [rbx + 8], rdi
	mov	rsp, rsp
	jmp	.label_618
	nop	word ptr [rax + rax]
.label_617:
	mov	rdi, qword ptr [rbx]
	add	rdi, -0x20
	mov	rbp, rbp
	mov	qword ptr [rbx], rdi
.label_618:
	nop	
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r15
	nop	
	call	write_unique
	lea	rsi, [rsi]
	lea	r14, [rbp - 1]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	nop	
	cmp	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	jne	.label_624
.label_628:
	lea	rsi, [rsi]
	dec	rbp
.label_626:
	lea	rsi, [rsi]
	mov	r14, rbp
.label_623:
	nop	
	mov	rax, r13
	nop	
	sub	rax, qword ptr [rbx + 8]
	sar	rax, 5
	cmp	qword ptr [rbx + 0x30], rax
	jne	.label_629
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_615
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	cmp	rdi, qword ptr [rbx + 0x10]
	je	.label_615
	lea	rdi, [rdi]
	mov	ebp, 1
	sub	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_627:
	mov	rsp, rsp
	add	rdi, -0x20
	mov	qword ptr [rbx], rdi
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r15
	call	write_unique
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_615
	nop	
	mov	rdi, qword ptr [rbx]
	nop	
	inc	rbp
	nop	
	cmp	rdi, qword ptr [rbx + 0x10]
	nop	
	jne	.label_627
	mov	rbp, rbp
	jmp	.label_615
.label_622:
	nop	
	mov	rax, r13
	sub	rax, qword ptr [rbx + 8]
	sar	rax, 5
	cmp	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	jne	.label_625
	test	r14, r14
	je	.label_612
	mov	rcx, qword ptr [rbx]
	cmp	rcx, qword ptr [rbx + 0x10]
	je	.label_612
	mov	rsp, rsp
	mov	eax, 1
	lea	rsi, [rsi]
	sub	rax, r14
	nop	dword ptr [rax]
.label_620:
	lea	rdx, [rcx - 0x20]
	mov	qword ptr [rbx], rdx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rcx - 0x20]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rcx - 0x10]
	movups	xmmword ptr [rbp - 0x10], xmm1
	mov	rbp, rbp
	movups	xmmword ptr [rbp - 0x20], xmm0
	lea	rbp, [rbp - 0x20]
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_612
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	jne	.label_620
	jmp	.label_612
.label_629:
	mov	rax, qword ptr [rsp]
	nop	
	sub	rax, qword ptr [rbx]
	sar	rax, 5
	cmp	qword ptr [rbx + 0x28], rax
	nop	
	jne	.label_615
	test	r14, r14
	nop	
	je	.label_615
	nop	
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	cmp	rdi, qword ptr [rbx + 0x18]
	je	.label_615
	lea	rsi, [rsi]
	mov	ebp, 1
	sub	rbp, r14
	nop	dword ptr [rax]
.label_621:
	add	rdi, -0x20
	mov	qword ptr [rbx + 8], rdi
	mov	rbp, rbp
	mov	rsi, r12
	nop	
	mov	rdx, r15
	nop	
	call	write_unique
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_615
	mov	rdi, qword ptr [rbx + 8]
	inc	rbp
	cmp	rdi, qword ptr [rbx + 0x18]
	nop	
	jne	.label_621
	jmp	.label_615
.label_625:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	nop	
	sub	rax, qword ptr [rbx]
	sar	rax, 5
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x28], rax
	jne	.label_612
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_612
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 8]
	cmp	rcx, qword ptr [rbx + 0x18]
	je	.label_612
	lea	rsi, [rsi]
	mov	eax, 1
	sub	rax, r14
	nop	
.label_619:
	mov	rsp, rsp
	lea	rdx, [rcx - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rdx
	movups	xmm0, xmmword ptr [rcx - 0x20]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rcx - 0x10]
	mov	rbp, rbp
	movups	xmmword ptr [rbp - 0x10], xmm1
	movups	xmmword ptr [rbp - 0x20], xmm0
	lea	rbp, [rbp - 0x20]
	test	rax, rax
	nop	
	je	.label_612
	mov	rcx, qword ptr [rbx + 8]
	inc	rax
	cmp	rcx, qword ptr [rbx + 0x18]
	jne	.label_619
.label_612:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rax], rbp
.label_615:
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbx]
	mov	rsp, rsp
	sar	rax, 5
	sub	r13, qword ptr [rbx + 8]
	sar	r13, 5
	sub	qword ptr [rbx + 0x28], rax
	lea	rdi, [rdi]
	sub	qword ptr [rbx + 0x30], r13
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bf50

	.globl queue_check_insert
	.type queue_check_insert, @function
queue_check_insert:
	cmp	byte ptr [rsi + 0x54], 0
	lea	rdi, [rdi]
	jne	.label_631
	mov	rcx, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi + 8]
	cmp	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rsi + 0x18]
	mov	rsp, rsp
	jne	.label_633
	mov	rbp, rbp
	cmp	rax, rcx
	je	.label_631
	cmp	qword ptr [rsi + 0x28], 0
	mov	rbp, rbp
	jne	.label_631
	jmp	.label_632
.label_633:
	nop	
	cmp	rax, rcx
	nop	
	jne	.label_632
	cmp	qword ptr [rsi + 0x30], 0
	je	.label_632
.label_631:
	ret	
.label_632:
	lea	rsi, [rsi]
	jmp	queue_insert
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bfa0

	.globl queue_check_insert_parent
	.type queue_check_insert_parent, @function
queue_check_insert_parent:
	lea	rdi, [rdi]
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	dword ptr [rbx + 0x50], 2
	lea	rsi, [rsi]
	jb	.label_634
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x38]
	call	lock_node
	mov	rsi, qword ptr [rbx + 0x38]
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	call	queue_check_insert
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x38]
	nop	
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	unlock_node
.label_634:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	jne	.label_635
	mov	rsi, qword ptr [rbx + 0x38]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	jmp	queue_insert
.label_635:
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c030

	.globl lock_node
	.type lock_node, @function
lock_node:
	lea	rsi, [rsi]
	add	rdi, 0x58
	jmp	pthread_mutex_lock
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c040

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x40c050

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
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbp
	lea	rsi, [rsi]
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_639
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], -1
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_636:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_637
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_641
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_638
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_640
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rax
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	je	.label_637
.label_640:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_637
.label_638:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_637:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_636
	lea	rsi, [rsi]
	jmp	.label_642
.label_639:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_642:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_641:
	mov	rax, rbp
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c1d0

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
	je	.label_643
	mov	esi, OFFSET FLAT:.str.1_1
	nop	
	jmp	.label_644
.label_643:
	nop	
	mov	esi, OFFSET FLAT:.str_3
.label_644:
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
	#Procedure 0x40c270

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
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	mov	rbx, qword ptr [r15]
	lea	rsi, [rsi]
	test	rbx, rbx
	nop	
	je	.label_647
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_646:
	test	rbp, rbp
	je	.label_645
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_649
.label_645:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_648
	nop	
.label_649:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_648:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	mov	rsp, rsp
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_646
.label_647:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	putc_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c3c0

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
	push	rax
	mov	r14, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_650
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, r15
	call	argmatch_valid
	mov	rsp, rsp
	call	r14
	lea	rsi, [rsi]
	mov	rax, -1
.label_650:
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c460
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
	je	.label_651
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_652:
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
	je	.label_651
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_652
.label_651:
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
	#Procedure 0x40c4f0
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
	#Procedure 0x40c500
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c510

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
	je	.label_654
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_653
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_653
.label_654:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_656
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_653:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
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
	jne	.label_655
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
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
.label_656:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_655:
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c610

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	mov	dword ptr [rdi], 0x67452301
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 4], 0xefcdab89
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 8], 0x98badcfe
	mov	dword ptr [rdi + 0xc], 0x10325476
	mov	rsp, rsp
	mov	dword ptr [rdi + 0x14], 0
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 0x10], 0
	mov	rsp, rsp
	mov	dword ptr [rdi + 0x18], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c650

	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:
	nop
	push	r14
	push	rbx
	push	rax
	nop	
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	mov	esi, dword ptr [r14]
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	set_uint32
	lea	rsi, [rsi]
	lea	rdi, [rbx + 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [r14 + 4]
	call	set_uint32
	mov	rsp, rsp
	lea	rdi, [rbx + 8]
	mov	esi, dword ptr [r14 + 8]
	lea	rsi, [rsi]
	call	set_uint32
	mov	rsp, rsp
	lea	rdi, [rbx + 0xc]
	mov	esi, dword ptr [r14 + 0xc]
	call	set_uint32
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c6c0

	.globl set_uint32
	.type set_uint32, @function
set_uint32:
	mov	dword ptr [rdi], esi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c6d0

	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x18]
	mov	rsp, rsp
	cmp	rax, 0x38
	mov	ecx, 0x10
	nop	
	mov	r15d, 0x20
	cmovb	r15, rcx
	nop	
	mov	ecx, dword ptr [rbx + 0x10]
	add	ecx, eax
	mov	dword ptr [rbx + 0x10], ecx
	jae	.label_657
	inc	dword ptr [rbx + 0x14]
.label_657:
	mov	ecx, dword ptr [rbx + 0x10]
	shl	ecx, 3
	lea	r12, [rbx + 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbx + r15*4 + 0x14], ecx
	mov	ecx, dword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rbx + 0x14]
	mov	rsp, rsp
	shld	edx, ecx, 3
	mov	rsp, rsp
	mov	dword ptr [rbx + r15*4 + 0x18], edx
	mov	rsp, rsp
	lea	rdi, [rbx + rax + 0x1c]
	lea	rdx, [r15*4 - 8]
	sub	rdx, rax
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:fillbuf_0
	call	memcpy
	nop	
	shl	r15, 2
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rbx
	call	md5_process_block
	mov	rdi, rbx
	mov	rsi, r14
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	jmp	md5_read_ctx
	.section	.text
	.align	32
	#Procedure 0x40c790

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp - 0x80], rdx
	nop	
	mov	rax, rsi
	and	rax, 0xfffffffffffffffc
	add	rax, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp - 0x78], rax
	mov	r10d, dword ptr [rdx]
	mov	rbp, rbp
	mov	ebx, dword ptr [rdx + 4]
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	nop	
	mov	r8, rsi
	shr	r8, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	add	ecx, esi
	mov	rbp, rbp
	mov	dword ptr [rdx + 0x10], ecx
	mov	rsp, rsp
	adc	r8d, 0
	add	dword ptr [rdx + 0x14], r8d
	mov	rsp, rsp
	cmp	rdi, rax
	nop	
	jae	.label_660
	nop	dword ptr [rax + rax]
.label_659:
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp - 0x40], r9
	nop	
	mov	qword ptr [rsp - 0x38], rbp
	mov	dword ptr [rsp - 0x2c], r10d
	mov	eax, r9d
	xor	eax, ebp
	mov	rbp, rbp
	and	eax, ebx
	xor	eax, ebp
	lea	rdi, [rdi]
	add	eax, r10d
	mov	ecx, dword ptr [rdi]
	nop	
	mov	qword ptr [rsp - 0x50], rcx
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 8], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	rol	edx, 7
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	add	edx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	xor	eax, r9d
	mov	rsp, rsp
	and	eax, edx
	lea	rsi, [rsi]
	xor	eax, r9d
	lea	ecx, [rbp + rsi]
	lea	rdi, [rdi]
	lea	ebp, [rax + rcx - 0x173848aa]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	xor	eax, ecx
	mov	rsp, rsp
	and	eax, ebp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	xor	eax, ecx
	mov	rbp, rbp
	mov	ecx, dword ptr [rdi + 8]
	mov	qword ptr [rsp - 0x18], rcx
	lea	rsi, [rsi]
	lea	ecx, [r9 + rcx]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	nop	
	add	ebx, ebp
	lea	rdi, [rdi]
	mov	eax, ebp
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	rsp, rsp
	mov	esi, dword ptr [rdi + 0xc]
	lea	rsi, [rsi]
	mov	qword ptr [rsp - 0x68], rsi
	mov	rcx, qword ptr [rsp + 8]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	lea	rsi, [rsi]
	lea	eax, [rax + rcx - 0x3e423112]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	mov	rsp, rsp
	xor	ecx, ebp
	mov	rsp, rsp
	and	ecx, eax
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	nop	
	mov	dword ptr [rsp - 0x20], esi
	nop	
	add	edx, esi
	nop	
	lea	ecx, [rcx + rdx - 0xa83f051]
	rol	ecx, 7
	nop	
	add	ecx, eax
	lea	rsi, [rsi]
	mov	edx, eax
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x28], esi
	nop	
	add	ebp, esi
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsp, rsp
	xor	edx, eax
	mov	rsp, rsp
	and	edx, r8d
	xor	edx, eax
	mov	rsp, rsp
	mov	esi, dword ptr [rdi + 0x18]
	mov	dword ptr [rsp - 0x44], esi
	mov	rsp, rsp
	add	ebx, esi
	mov	rbp, rbp
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	rol	ebx, 0x11
	lea	rdi, [rdi]
	add	ebx, r8d
	mov	rbp, rbp
	mov	ebp, r8d
	nop	
	xor	ebp, ecx
	mov	rsp, rsp
	and	ebp, ebx
	mov	rsp, rsp
	xor	ebp, ecx
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x1c], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	mov	rbp, rbp
	rol	r9d, 0x16
	add	r9d, ebx
	mov	rbp, rbp
	mov	eax, ebx
	xor	eax, r8d
	lea	rsi, [rsi]
	and	eax, r9d
	xor	eax, r8d
	lea	rsi, [rsi]
	mov	edx, dword ptr [rdi + 0x20]
	mov	rsp, rsp
	mov	dword ptr [rsp - 0x24], edx
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	mov	rbp, rbp
	rol	ecx, 7
	mov	rsp, rsp
	add	ecx, r9d
	mov	eax, r9d
	mov	rsp, rsp
	xor	eax, ebx
	and	eax, ecx
	mov	rbp, rbp
	xor	eax, ebx
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp + 4], edx
	lea	rsi, [rsi]
	add	r8d, edx
	lea	ebp, [rax + r8 - 0x74bb0851]
	lea	rdi, [rdi]
	rol	ebp, 0xc
	nop	
	add	ebp, ecx
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	xor	eax, r9d
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	nop	
	mov	dword ptr [rsp - 0x5c], edx
	add	ebx, edx
	mov	r13d, edx
	lea	rsi, [rsi]
	lea	r15d, [rax + rbx - 0xa44f]
	rol	r15d, 0x11
	mov	rbp, rbp
	add	r15d, ebp
	lea	rdi, [rdi]
	mov	eax, ebp
	lea	rdi, [rdi]
	xor	eax, ecx
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	mov	dword ptr [rsp - 0xc], edx
	add	r9d, edx
	lea	rsi, [rsi]
	lea	r11d, [rax + r9 - 0x76a32842]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	mov	rbp, rbp
	xor	eax, ebp
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rdi + 0x30]
	mov	dword ptr [rsp - 0x54], ebx
	add	ecx, ebx
	mov	rsp, rsp
	lea	ecx, [rax + rcx + 0x6b901122]
	lea	rsi, [rsi]
	rol	ecx, 7
	add	ecx, r11d
	mov	eax, r11d
	lea	rsi, [rsi]
	xor	eax, r15d
	mov	rsp, rsp
	and	eax, ecx
	nop	
	xor	eax, r15d
	mov	ebx, dword ptr [rdi + 0x34]
	mov	dword ptr [rsp - 0x58], ebx
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	lea	rdi, [rdi]
	add	r9d, ecx
	mov	eax, ecx
	mov	rsp, rsp
	xor	eax, r11d
	and	eax, r9d
	xor	eax, r11d
	nop	
	mov	r14d, dword ptr [rdi + 0x38]
	mov	dword ptr [rsp - 0x6c], r14d
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	mov	rbp, rbp
	add	r8d, r9d
	mov	eax, r9d
	nop	
	xor	eax, ecx
	and	eax, r8d
	lea	rsi, [rsi]
	xor	eax, ecx
	nop	
	mov	ebp, dword ptr [rdi + 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rsp - 0x48], ebp
	add	r11d, ebp
	lea	rsi, [rsi]
	mov	r15d, ebp
	lea	rdi, [rdi]
	lea	r11d, [rax + r11 + 0x49b40821]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	mov	rbp, rbp
	xor	eax, r8d
	and	eax, r9d
	lea	rsi, [rsi]
	xor	eax, r8d
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp - 8]
	add	ecx, ebp
	lea	rsi, [rsi]
	lea	ecx, [rax + rcx - 0x9e1da9e]
	lea	rdi, [rdi]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	mov	rsp, rsp
	xor	eax, r11d
	and	eax, r8d
	mov	rbp, rbp
	xor	eax, r11d
	add	r9d, esi
	lea	ebp, [rax + r9 - 0x3fbf4cc0]
	lea	rdi, [rdi]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	lea	rsi, [rsi]
	xor	eax, ecx
	lea	rsi, [rsi]
	and	eax, r11d
	xor	eax, ecx
	nop	
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x265e5a51]
	mov	rsp, rsp
	rol	r8d, 0xe
	mov	rsp, rsp
	add	r8d, ebp
	mov	rbp, rbp
	mov	eax, r8d
	xor	eax, ebp
	mov	rsp, rsp
	and	eax, ecx
	lea	rdi, [rdi]
	xor	eax, ebp
	mov	rsp, rsp
	add	r11d, r10d
	lea	rsi, [rsi]
	lea	r11d, [rax + r11 - 0x16493856]
	mov	rbp, rbp
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	nop	
	xor	eax, r8d
	nop	
	and	eax, ebp
	nop	
	xor	eax, r8d
	nop	
	mov	r9d, dword ptr [rsp - 0x28]
	add	ecx, r9d
	lea	ecx, [rax + rcx - 0x29d0efa3]
	mov	rsp, rsp
	rol	ecx, 5
	lea	rsi, [rsi]
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	lea	rsi, [rsi]
	and	eax, r8d
	lea	rdi, [rdi]
	xor	eax, r11d
	lea	rdi, [rdi]
	add	ebp, r13d
	lea	rsi, [rsi]
	lea	ebp, [rax + rbp + 0x2441453]
	mov	rbp, rbp
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	lea	rsi, [rsi]
	xor	eax, ecx
	nop	
	and	eax, r11d
	xor	eax, ecx
	mov	rbp, rbp
	add	r8d, r15d
	lea	r8d, [rax + r8 - 0x275e197f]
	rol	r8d, 0xe
	nop	
	add	r8d, ebp
	lea	rdi, [rdi]
	mov	eax, r8d
	xor	eax, ebp
	lea	rdi, [rdi]
	and	eax, ecx
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x20]
	lea	rsi, [rsi]
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	lea	rdi, [rdi]
	add	r11d, r8d
	mov	rbp, rbp
	mov	eax, r11d
	xor	eax, r8d
	lea	rsi, [rsi]
	and	eax, ebp
	nop	
	xor	eax, r8d
	mov	rbp, rbp
	add	ecx, dword ptr [rsp + 4]
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	nop	
	and	eax, r8d
	lea	rdi, [rdi]
	xor	eax, r11d
	mov	rbp, rbp
	mov	r13d, r14d
	nop	
	add	ebp, r13d
	mov	rbp, rbp
	lea	ebp, [rax + rbp - 0x3cc8f82a]
	rol	ebp, 9
	mov	rbp, rbp
	add	ebp, ecx
	mov	rbp, rbp
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	nop	
	xor	eax, ecx
	mov	rbp, rbp
	add	r8d, r12d
	lea	r8d, [rax + r8 - 0xb2af279]
	rol	r8d, 0xe
	lea	rdi, [rdi]
	add	r8d, ebp
	mov	rbp, rbp
	mov	eax, r8d
	mov	rsp, rsp
	xor	eax, ebp
	and	eax, ecx
	lea	rsi, [rsi]
	xor	eax, ebp
	mov	rbp, rbp
	mov	esi, dword ptr [rsp - 0x24]
	lea	rdi, [rdi]
	add	r11d, esi
	lea	r11d, [rax + r11 + 0x455a14ed]
	lea	rsi, [rsi]
	rol	r11d, 0x14
	nop	
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	nop	
	lea	ecx, [rax + rcx - 0x561c16fb]
	mov	rbp, rbp
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	nop	
	and	eax, r8d
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x18]
	lea	rsi, [rsi]
	add	ebp, edx
	lea	r14d, [rax + rbp - 0x3105c08]
	mov	rsp, rsp
	rol	r14d, 9
	nop	
	add	r14d, ecx
	nop	
	mov	eax, r14d
	lea	rdi, [rdi]
	xor	eax, ecx
	and	eax, r11d
	mov	rbp, rbp
	xor	eax, ecx
	nop	
	mov	edx, dword ptr [rsp - 0x1c]
	add	r8d, edx
	nop	
	lea	r8d, [rax + r8 + 0x676f02d9]
	rol	r8d, 0xe
	lea	rdi, [rdi]
	add	r8d, r14d
	mov	ebp, r8d
	xor	ebp, r14d
	lea	rsi, [rsi]
	mov	eax, ebp
	and	eax, ecx
	nop	
	xor	eax, r14d
	mov	rbp, rbp
	mov	r15d, dword ptr [rsp - 0x54]
	mov	rsp, rsp
	add	r11d, r15d
	lea	eax, [rax + r11 - 0x72d5b376]
	rol	eax, 0x14
	lea	rsi, [rsi]
	add	eax, r8d
	lea	rdi, [rdi]
	xor	ebp, eax
	mov	rbp, rbp
	add	ecx, r9d
	mov	rsp, rsp
	lea	r11d, [rbp + rcx - 0x5c6be]
	rol	r11d, 4
	nop	
	add	r11d, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	xor	ecx, r8d
	lea	rdi, [rdi]
	xor	ecx, r11d
	lea	rdi, [rdi]
	add	r14d, esi
	lea	rdi, [rdi]
	lea	r14d, [rcx + r14 - 0x788e097f]
	rol	r14d, 0xb
	add	r14d, r11d
	lea	rdi, [rdi]
	mov	ebp, r11d
	lea	rdi, [rdi]
	xor	ebp, eax
	xor	ebp, r14d
	add	r8d, dword ptr [rsp - 0xc]
	mov	rbp, rbp
	lea	ebp, [rbp + r8 + 0x6d9d6122]
	rol	ebp, 0x10
	lea	rsi, [rsi]
	add	ebp, r14d
	mov	rbp, rbp
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, ebp
	mov	rbp, rbp
	add	eax, r13d
	lea	r8d, [rcx + rax - 0x21ac7f4]
	nop	
	rol	r8d, 0x17
	add	r8d, ebp
	nop	
	mov	eax, ebp
	mov	rsp, rsp
	xor	eax, r14d
	xor	eax, r8d
	mov	rcx, qword ptr [rsp - 8]
	mov	rbp, rbp
	add	r11d, ecx
	lea	r11d, [rax + r11 - 0x5b4115bc]
	lea	rsi, [rsi]
	rol	r11d, 4
	lea	rsi, [rsi]
	add	r11d, r8d
	mov	rsp, rsp
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, r11d
	add	r14d, r10d
	lea	rsi, [rsi]
	lea	r14d, [rcx + r14 + 0x4bdecfa9]
	rol	r14d, 0xb
	lea	rdi, [rdi]
	add	r14d, r11d
	lea	rsi, [rsi]
	mov	eax, r11d
	mov	rsp, rsp
	xor	eax, r8d
	xor	eax, r14d
	add	ebp, edx
	nop	
	lea	ebp, [rax + rbp - 0x944b4a0]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	eax, r14d
	mov	rsp, rsp
	xor	eax, r11d
	mov	rsp, rsp
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x5c]
	lea	rdi, [rdi]
	add	r8d, r10d
	lea	rsi, [rsi]
	lea	r8d, [rax + r8 - 0x41404390]
	rol	r8d, 0x17
	lea	rdi, [rdi]
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	add	r11d, ebx
	lea	eax, [rax + r11 + 0x289b7ec6]
	rol	eax, 4
	lea	rdi, [rdi]
	add	eax, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, eax
	mov	rsi, qword ptr [rsp - 0x50]
	add	r14d, esi
	nop	
	lea	r11d, [rcx + r14 - 0x155ed806]
	rol	r11d, 0xb
	nop	
	add	r11d, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	xor	ecx, r8d
	lea	rdi, [rdi]
	xor	ecx, r11d
	mov	r9, qword ptr [rsp - 0x68]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	lea	rsi, [rsi]
	rol	r14d, 0x10
	add	r14d, r11d
	mov	ecx, r11d
	mov	rsp, rsp
	xor	ecx, eax
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x44]
	nop	
	add	r8d, r12d
	lea	r8d, [rcx + r8 + 0x4881d05]
	lea	rdi, [rdi]
	rol	r8d, 0x17
	mov	rbp, rbp
	add	r8d, r14d
	lea	rsi, [rsi]
	mov	ecx, r14d
	xor	ecx, r11d
	lea	rdi, [rdi]
	xor	ecx, r8d
	lea	rdi, [rdi]
	add	eax, dword ptr [rsp + 4]
	mov	rbp, rbp
	lea	ecx, [rcx + rax - 0x262b2fc7]
	lea	rsi, [rsi]
	rol	ecx, 4
	add	ecx, r8d
	lea	rdi, [rdi]
	mov	eax, r8d
	xor	eax, r14d
	xor	eax, ecx
	add	r11d, r15d
	lea	edx, [rax + r11 - 0x1924661b]
	rol	edx, 0xb
	nop	
	add	edx, ecx
	mov	ebp, ecx
	xor	ebp, r8d
	nop	
	xor	ebp, edx
	lea	rdi, [rdi]
	mov	r13d, dword ptr [rsp - 0x48]
	add	r14d, r13d
	lea	rsi, [rsi]
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	rol	r11d, 0x10
	add	r11d, edx
	mov	rbp, rbp
	mov	ebp, edx
	mov	rsp, rsp
	xor	ebp, ecx
	mov	rbp, rbp
	xor	ebp, r11d
	mov	rbp, rbp
	mov	rax, qword ptr [rsp - 0x18]
	mov	rbp, rbp
	add	r8d, eax
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rdi, [rdi]
	lea	r8d, [rbp + r8 - 0x3b53a99b]
	add	ecx, esi
	rol	r8d, 0x17
	add	r8d, r11d
	lea	rsi, [rsi]
	mov	eax, edx
	not	eax
	or	eax, r8d
	xor	eax, r11d
	lea	ecx, [rax + rcx - 0xbd6ddbc]
	add	edx, dword ptr [rsp - 0x1c]
	rol	ecx, 6
	add	ecx, r8d
	nop	
	mov	eax, r11d
	not	eax
	lea	rdi, [rdi]
	or	eax, ecx
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	mov	rsp, rsp
	add	r11d, dword ptr [rsp - 0x6c]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	rbp, rbp
	mov	eax, r8d
	lea	rsi, [rsi]
	not	eax
	or	eax, ebp
	mov	rsp, rsp
	xor	eax, ecx
	lea	eax, [rax + r11 - 0x546bdc59]
	mov	rsp, rsp
	add	r8d, dword ptr [rsp - 0x28]
	lea	rsi, [rsi]
	rol	eax, 0xf
	mov	rbp, rbp
	add	eax, ebp
	mov	rbp, rbp
	mov	edx, ecx
	not	edx
	or	edx, eax
	mov	rbp, rbp
	xor	edx, ebp
	lea	esi, [rdx + r8 - 0x36c5fc7]
	add	ecx, r15d
	rol	esi, 0x15
	mov	rsp, rsp
	add	esi, eax
	mov	edx, ebp
	not	edx
	lea	rdi, [rdi]
	or	edx, esi
	xor	edx, eax
	mov	rsp, rsp
	lea	ecx, [rdx + rcx + 0x655b59c3]
	add	ebp, r9d
	rol	ecx, 6
	mov	rsp, rsp
	add	ecx, esi
	mov	rbp, rbp
	mov	edx, eax
	not	edx
	lea	rdi, [rdi]
	or	edx, ecx
	xor	edx, esi
	lea	ebp, [rdx + rbp - 0x70f3336e]
	mov	rsp, rsp
	add	eax, r10d
	mov	rbx, qword ptr [rsp + 8]
	rol	ebp, 0xa
	add	ebp, ecx
	nop	
	mov	edx, esi
	mov	rsp, rsp
	not	edx
	or	edx, ebp
	lea	rdi, [rdi]
	xor	edx, ecx
	mov	rbp, rbp
	lea	eax, [rdx + rax - 0x100b83]
	rol	eax, 0xf
	mov	rbp, rbp
	add	eax, ebp
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp - 8]
	add	esi, edx
	mov	edx, ecx
	mov	rbp, rbp
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	lea	rdi, [rdi]
	add	r8d, eax
	add	ecx, dword ptr [rsp - 0x24]
	mov	edx, ebp
	not	edx
	lea	rsi, [rsi]
	or	edx, r8d
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x6fa87e4f]
	lea	rdi, [rdi]
	rol	ecx, 6
	nop	
	add	ecx, r8d
	lea	rdi, [rdi]
	add	ebp, r13d
	lea	rdi, [rdi]
	mov	edx, eax
	not	edx
	mov	rbp, rbp
	or	edx, ecx
	xor	edx, r8d
	lea	edx, [rdx + rbp - 0x1d31920]
	mov	rbp, rbp
	rol	edx, 0xa
	mov	rbp, rbp
	add	edx, ecx
	add	eax, r12d
	mov	esi, r8d
	not	esi
	or	esi, edx
	nop	
	xor	esi, ecx
	lea	ebp, [rsi + rax - 0x5cfebcec]
	rol	ebp, 0xf
	mov	rbp, rbp
	add	ebp, edx
	mov	rbp, rbp
	add	r8d, dword ptr [rsp - 0x58]
	lea	rdi, [rdi]
	mov	eax, ecx
	not	eax
	or	eax, ebp
	xor	eax, edx
	nop	
	lea	esi, [rax + r8 + 0x4e0811a1]
	mov	r8, qword ptr [rsp - 0x78]
	mov	r10d, dword ptr [rsp - 0x2c]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x20]
	mov	rsp, rsp
	mov	eax, edx
	not	eax
	mov	rsp, rsp
	or	eax, esi
	lea	rdi, [rdi]
	xor	eax, ebp
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	lea	rsi, [rsi]
	add	ecx, esi
	add	edx, dword ptr [rsp - 0xc]
	nop	
	mov	eax, ebp
	mov	rbp, rbp
	not	eax
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rsp, rsp
	xor	eax, esi
	lea	edx, [rax + rdx - 0x42c50dcb]
	rol	edx, 0xa
	lea	rdi, [rdi]
	add	edx, ecx
	lea	rdi, [rdi]
	add	ebp, r14d
	lea	rdi, [rdi]
	mov	eax, esi
	not	eax
	or	eax, edx
	lea	rsi, [rsi]
	xor	eax, ecx
	lea	eax, [rax + rbp + 0x2ad7d2bb]
	add	esi, dword ptr [rsp + 4]
	rol	eax, 0xf
	add	eax, edx
	mov	rbp, rbp
	add	r10d, ecx
	not	ecx
	mov	rbp, rbp
	or	ecx, eax
	xor	ecx, edx
	lea	ecx, [rcx + rsi - 0x14792c6f]
	rol	ecx, 0x15
	nop	
	add	ebx, eax
	add	ebx, ecx
	mov	rcx, qword ptr [rsp - 0x40]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 0x38]
	lea	rdi, [rdi]
	add	edx, ecx
	nop	
	add	rdi, 0x40
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_659
	mov	rsp, rsp
	jmp	.label_658
.label_660:
	mov	eax, r9d
	mov	edx, ebp
.label_658:
	mov	rcx, qword ptr [rsp - 0x80]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
	add	rsp, 0x10
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d290
	.globl md5_stream
	.type md5_stream, @function
md5_stream:

	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0xa8
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r13, rdi
	mov	rbp, rbp
	mov	edi, 0x8048
	lea	rsi, [rsi]
	call	malloc
	mov	r12, rax
	mov	rsp, rsp
	mov	r15d, 1
	mov	rbp, rbp
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_663
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	call	md5_init_ctx
	lea	rsi, [rsi]
	mov	rdi, r13
	call	feof_unlocked
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_661
	lea	rbp, [rsp + 8]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_667:
	nop	
	lea	rdi, [r12 + rbx]
	mov	edx, 0x8000
	lea	rsi, [rsi]
	sub	rdx, rbx
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rcx, r13
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	jne	.label_662
	nop	
	mov	esi, 0x8000
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	md5_process_block
	mov	rbp, rbp
	xor	ebx, ebx
	jmp	.label_665
	nop	dword ptr [rax]
.label_662:
	test	rax, rax
	je	.label_666
.label_665:
	mov	rdi, r13
	nop	
	call	feof_unlocked
	test	eax, eax
	je	.label_667
.label_664:
	test	rbx, rbx
	nop	
	je	.label_661
	lea	rdi, [rdi]
	lea	rdx, [rsp + 8]
	mov	rdi, r12
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	md5_process_bytes
.label_661:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	rsi, r14
	mov	rsp, rsp
	call	md5_finish_ctx
	mov	rdi, r12
	call	free
.label_663:
	mov	eax, r15d
	add	rsp, 0xa8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_666:
	mov	rdi, r13
	mov	rbp, rbp
	call	ferror_unlocked
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	je	.label_664
	nop	
	mov	rdi, r12
	call	free
	nop	
	mov	r15d, 1
	mov	rbp, rbp
	jmp	.label_663
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d410

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbp, rbp
	mov	r15, rdi
	mov	r13d, dword ptr [r14 + 0x18]
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_671
	mov	rbp, rbp
	mov	ebx, 0x80
	sub	rbx, r13
	cmp	rbx, r12
	cmova	rbx, r12
	lea	rsi, [rsi]
	lea	rdi, [r14 + r13 + 0x1c]
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	lea	rdi, [rdi]
	mov	esi, dword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	add	rsi, rbx
	mov	rsp, rsp
	mov	dword ptr [r14 + 0x18], esi
	cmp	esi, 0x41
	jb	.label_670
	mov	rsp, rsp
	lea	rbp, [r14 + 0x1c]
	and	esi, 0xffffffc0
	mov	rdi, rbp
	mov	rdx, r14
	mov	rbp, rbp
	call	md5_process_block
	mov	edx, dword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	and	edx, 0x3f
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 0x18], edx
	add	r13, rbx
	and	r13, 0xffffffffffffffc0
	mov	rbp, rbp
	add	r13, rbp
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rsp, rsp
	call	memcpy
.label_670:
	nop	
	add	r15, rbx
	sub	r12, rbx
.label_671:
	lea	rsi, [rsi]
	cmp	r12, 0x40
	jb	.label_672
	mov	rsp, rsp
	mov	rbx, r12
	nop	
	and	rbx, 0xffffffffffffffc0
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rsp, rsp
	call	md5_process_block
	add	r15, rbx
	and	r12d, 0x3f
.label_672:
	test	r12, r12
	je	.label_669
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	add	rbx, r12
	cmp	rbx, 0x40
	jb	.label_668
	lea	rbp, [r14 + 0x1c]
	mov	esi, 0x40
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	mov	rsp, rsp
	add	rbx, -0x40
	mov	rbp, rbp
	lea	rsi, [r14 + 0x5c]
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
.label_668:
	mov	rbp, rbp
	mov	dword ptr [r14 + 0x18], ebx
.label_669:
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d590
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	nop
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	nop	
	sub	rsp, 0xa8
	lea	rsi, [rsi]
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rsp, rsp
	lea	r12, [rsp + 8]
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsp, rsp
	call	md5_init_ctx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r12
	call	md5_process_bytes
	nop	
	mov	rdi, r12
	mov	rsi, r14
	nop	
	call	md5_finish_ctx
	add	rsp, 0xa8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d600

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d610

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_673
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_673:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d640

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	rbp, rdi
	call	strcmp
	mov	r14d, eax
	xor	eax, eax
	test	r14d, r14d
	lea	rsi, [rsi]
	je	.label_674
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp]
	mov	eax, 0xffffffff
	test	cl, cl
	je	.label_674
	mov	rbp, rbp
	cmp	byte ptr [rbx], 0
	mov	rbp, rbp
	je	.label_676
	movzx	ecx, cl
	cmp	ecx, 0x2e
	jne	.label_679
	lea	rdi, [rdi]
	cmp	byte ptr [rbp + 1], 0
	lea	rdi, [rdi]
	je	.label_674
.label_679:
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_683
	cmp	byte ptr [rbx + 1], 0
	je	.label_684
.label_683:
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0x2e
	nop	
	jne	.label_677
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp + 1]
	cmp	ecx, 0x2e
	jne	.label_677
	cmp	byte ptr [rbp + 2], 0
	je	.label_674
.label_677:
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2e
	jne	.label_682
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbx + 1]
	mov	rbp, rbp
	cmp	ecx, 0x2e
	mov	rbp, rbp
	jne	.label_682
	cmp	byte ptr [rbx + 2], 0
	je	.label_685
.label_682:
	movzx	ecx, byte ptr [rbp]
	lea	rsi, [rsi]
	cmp	ecx, 0x2e
	mov	rsp, rsp
	jne	.label_680
	nop	
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2e
	mov	rsp, rsp
	jne	.label_674
	movzx	eax, byte ptr [rbp]
	mov	rsp, rsp
	cmp	eax, 0x2e
	je	.label_681
.label_680:
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	mov	rbp, rbp
	mov	eax, 1
	je	.label_674
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2e
	jne	.label_675
.label_681:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	jne	.label_675
	mov	rsp, rsp
	inc	rbp
	inc	rbx
.label_675:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rbx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x10]
	lea	rdi, [rdi]
	call	match_suffix
	mov	r13, rax
	lea	rdi, [rsp + 8]
	call	match_suffix
	mov	rbp, rbp
	test	r13, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r15, rcx
	lea	rdi, [rdi]
	cmovne	r15, r13
	mov	rbp, rbp
	sub	r15, rbp
	nop	
	test	rax, rax
	mov	rdx, qword ptr [rsp + 8]
	nop	
	mov	r12, rdx
	lea	rsi, [rsi]
	cmovne	r12, rax
	sub	r12, rbx
	mov	rbp, rbp
	or	r13, rax
	je	.label_678
	nop	
	mov	qword ptr [rsp], rdx
	lea	rdi, [rdi]
	mov	r13, rcx
	mov	rbp, rbp
	cmp	r15, r12
	nop	
	jne	.label_678
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	strncmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_678
	nop	
	sub	r13, rbp
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	sub	rax, rbx
	mov	r12, rax
	mov	r15, r13
.label_678:
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	rcx, r12
	lea	rdi, [rdi]
	call	verrevcmp
	test	eax, eax
	lea	rsi, [rsi]
	cmovne	r14d, eax
	mov	eax, r14d
	jmp	.label_674
.label_676:
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_674
.label_684:
	mov	eax, 1
	jmp	.label_674
.label_685:
	mov	eax, 1
.label_674:
	mov	rbp, rbp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d870

	.globl match_suffix
	.type match_suffix, @function
match_suffix:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r12, rdi
	mov	rax, qword ptr [r12]
	mov	bl, byte ptr [rax]
	xor	r14d, r14d
	mov	rsp, rsp
	test	bl, bl
	mov	rbp, rbp
	je	.label_689
	lea	rsi, [rsi]
	xor	r15d, r15d
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_691:
	mov	rbp, rbp
	test	r13b, 1
	jne	.label_686
	movzx	ebp, bl
	cmp	ebp, 0x2e
	mov	rsp, rsp
	jne	.label_690
	test	r14, r14
	cmove	r14, rax
	mov	r13b, 1
	jmp	.label_688
.label_686:
	movsx	edi, bl
	mov	rsp, rsp
	call	c_isalpha
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_687
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_688
	nop	dword ptr [rax]
.label_690:
	mov	rsp, rsp
	movsx	edi, bl
	call	c_isalnum
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	jne	.label_688
	cmp	ebp, 0x7e
	cmovne	r14, r15
	jmp	.label_688
	nop	
.label_687:
	movzx	eax, bl
	lea	rdi, [rdi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	cmp	eax, 0x7e
	nop	
	cmovne	r14, r13
.label_688:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	lea	rax, [rcx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [r12], rax
	mov	bl, byte ptr [rcx + 1]
	mov	rbp, rbp
	test	bl, bl
	lea	rsi, [rsi]
	jne	.label_691
.label_689:
	lea	rsi, [rsi]
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d970

	.globl verrevcmp
	.type verrevcmp, @function
verrevcmp:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x20], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x30], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rdi
	xor	r15d, r15d
	lea	rdi, [rdi]
	xor	r14d, r14d
.label_704:
	cmp	r15, qword ptr [rsp + 0x20]
	jb	.label_701
	cmp	r14, qword ptr [rsp + 0x30]
	jae	.label_705
.label_701:
	lea	r13, [r14 - 1]
	mov	rsp, rsp
	lea	rbx, [r15 - 1]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	lea	r12, [rax + r14]
	jmp	.label_708
	nop	dword ptr [rax + rax]
.label_694:
	inc	r14
	mov	rsp, rsp
	inc	r15
	inc	r13
	mov	rbx, qword ptr [rsp + 0x28]
	inc	rbx
	inc	r12
.label_708:
	cmp	r14, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	jae	.label_706
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax + r14]
	mov	rbp, rbp
	call	c_isdigit
	test	al, al
	je	.label_696
.label_706:
	mov	rsp, rsp
	cmp	r15, qword ptr [rsp + 0x20]
	jae	.label_697
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	movsx	edi, byte ptr [rax + r15]
	call	c_isdigit
	test	al, al
	jne	.label_697
.label_696:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rbx
	xor	ebx, ebx
	nop	
	cmp	qword ptr [rsp + 0x30], r14
	mov	ebp, 0
	lea	rsi, [rsi]
	je	.label_707
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rax + r14]
	call	order
	lea	rdi, [rdi]
	mov	ebp, eax
.label_707:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x20], r15
	je	.label_702
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	movzx	edi, byte ptr [rax + r15]
	call	order
	lea	rsi, [rsi]
	mov	ebx, eax
.label_702:
	sub	ebp, ebx
	je	.label_694
	jmp	.label_692
	nop	dword ptr [rax]
.label_697:
	mov	rbp, rbp
	mov	r14, r13
	mov	rcx, qword ptr [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_698:
	mov	r13, r12
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	lea	r12, [r13 + 1]
	cmp	eax, 0x30
	lea	rsi, [rsi]
	je	.label_698
	mov	r15, rbx
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_700:
	movzx	eax, byte ptr [rbx + r15 + 1]
	inc	r15
	lea	rdi, [rdi]
	cmp	eax, 0x30
	lea	rdi, [rdi]
	je	.label_700
	mov	rbp, rbp
	mov	r12, rcx
	movsx	ebp, byte ptr [r12 + r14]
	mov	edi, ebp
	call	c_isdigit
	lea	rdi, [rdi]
	test	al, al
	je	.label_699
	nop	
	mov	qword ptr [rsp + 0x10], r12
	lea	rax, [rbx + r15]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x28], 0
	nop	word ptr cs:[rax + rax]
.label_703:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	movsx	ebx, byte ptr [rax + r12]
	mov	edi, ebx
	call	c_isdigit
	test	al, al
	je	.label_695
	sub	ebp, ebx
	mov	eax, dword ptr [rsp + 0x28]
	test	eax, eax
	cmove	eax, ebp
	mov	dword ptr [rsp + 0x28], eax
	mov	rbp, rbp
	movsx	ebp, byte ptr [r13 + 1]
	nop	
	inc	r13
	mov	edi, ebp
	mov	rsp, rsp
	call	c_isdigit
	inc	r12
	lea	rsi, [rsi]
	test	al, al
	jne	.label_703
.label_695:
	lea	rsi, [rsi]
	add	r14, r12
	lea	rsi, [rsi]
	add	r15, r12
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r12d, dword ptr [rsp + 0x28]
	nop	
	jmp	.label_693
	nop	word ptr cs:[rax + rax]
.label_699:
	lea	r13, [r12 + r14]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r12
	nop	
	xor	r12d, r12d
.label_693:
	mov	rbp, rbp
	movsx	edi, byte ptr [r13]
	call	c_isdigit
	mov	ebp, 1
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	jne	.label_692
	movsx	edi, byte ptr [rbx + r15]
	call	c_isdigit
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	test	al, al
	jne	.label_692
	lea	rdi, [rdi]
	test	r12d, r12d
	lea	rsi, [rsi]
	mov	ebp, r12d
	nop	
	je	.label_704
	lea	rdi, [rdi]
	jmp	.label_692
.label_705:
	xor	ebp, ebp
.label_692:
	mov	rbp, rbp
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc30

	.globl order
	.type order, @function
order:
	push	rbx
	mov	ebx, edi
	call	c_isdigit
	nop	
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	test	cl, cl
	jne	.label_709
	mov	edi, ebx
	lea	rdi, [rdi]
	call	c_isalpha
	test	al, al
	mov	eax, ebx
	jne	.label_709
	lea	rsi, [rsi]
	movzx	eax, bl
	mov	rbp, rbp
	or	ebx, 0x100
	nop	
	cmp	eax, 0x7e
	mov	rsp, rsp
	mov	eax, 0xffffffff
	cmovne	eax, ebx
.label_709:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc80

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
	mov	esi, OFFSET FLAT:.str.1_2
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
	#Procedure 0x40dcd0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dce0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dcf0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dd00

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 8]
	nop	
	jae	.label_713
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_715:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_716
	nop	word ptr cs:[rax + rax]
.label_714:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	test	rdi, rdi
	jne	.label_714
	nop	
	cmp	rsi, rax
	mov	rsp, rsp
	cmova	rax, rsi
.label_716:
	mov	rbp, rbp
	add	rcx, 0x10
	nop	
	cmp	rcx, rdx
	jb	.label_715
.label_713:
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dd70
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	edx, 0
	jae	.label_717
	mov	r8, qword ptr [rdi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_719:
	lea	rdi, [rdi]
	cmp	qword ptr [rsi], 0
	mov	rbp, rbp
	mov	rax, rsi
	je	.label_718
	nop	
.label_720:
	lea	rdi, [rdi]
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_720
	inc	rdx
.label_718:
	mov	rsp, rsp
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_719
.label_717:
	mov	rbp, rbp
	cmp	rdx, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	jne	.label_722
	lea	rsi, [rsi]
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	mov	rsp, rsp
	je	.label_721
.label_722:
	mov	rbp, rbp
	xor	eax, eax
.label_721:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ddf0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r13, rsi
	mov	rbx, rdi
	mov	rsp, rsp
	call	hash_get_n_entries
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	hash_get_n_buckets
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	rbp, rbp
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	r14, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_5
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rsp, rsp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_3
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_141]]
	punpckldq	xmm1, xmm2
	mov	rsp, rsp
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_142]]
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	lea	rsi, [rsi]
	addpd	xmm0, xmm1
	nop	
	mulsd	xmm0,  qword ptr [word ptr [rip + label_143]]
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_1
	mov	rsp, rsp
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	mov	rbp, rbp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
	nop	
	xor	eax, eax
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40df40
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
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	cmp	qword ptr [rbx], 0
	je	.label_723
	test	rbx, rbx
	nop	
	je	.label_723
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_724:
	mov	rsi, qword ptr [rbx]
	mov	rsp, rsp
	cmp	rsi, r12
	je	.label_725
	lea	rsi, [rsi]
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_725
	mov	rbx, qword ptr [rbx + 8]
	nop	
	test	rbx, rbx
	jne	.label_724
	jmp	.label_723
.label_725:
	mov	r15, qword ptr [rbx]
.label_723:
	nop	
	mov	rax, r15
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dfd0

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_726
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	pop	rbx
	nop	
	ret	
.label_726:
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e010
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_727
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	jmp	.label_729
	nop	word ptr cs:[rax + rax]
.label_730:
	mov	rbp, rbp
	add	rcx, 0x10
.label_729:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_728
	mov	rax, qword ptr [rcx]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_730
.label_727:
	ret	
.label_728:
	mov	rsp, rsp
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e060
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
	call	safe_hasher
	mov	rbp, rbp
	mov	rcx, rax
	nop	dword ptr [rax + rax]
.label_733:
	cmp	qword ptr [rcx], rbx
	jne	.label_731
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 8]
	nop	
	test	rdx, rdx
	lea	rdi, [rdi]
	jne	.label_735
.label_731:
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	test	rcx, rcx
	jne	.label_733
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	dword ptr [rax + rax]
.label_734:
	cmp	rax, rdx
	lea	rdi, [rdi]
	mov	ecx, 0
	jae	.label_732
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_734
	jmp	.label_732
.label_735:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx]
.label_732:
	mov	rax, rcx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e0f0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r8, qword ptr [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_736
	nop	dword ptr [rax + rax]
.label_739:
	mov	rbp, rbp
	add	r8, 0x10
.label_736:
	cmp	r8, qword ptr [rdi + 8]
	nop	
	jae	.label_738
	lea	rdi, [rdi]
	cmp	qword ptr [r8], 0
	lea	rsi, [rsi]
	je	.label_739
	test	r8, r8
	mov	r9, r8
	mov	rbp, rbp
	je	.label_739
	nop	word ptr cs:[rax + rax]
.label_737:
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rsp, rsp
	jae	.label_738
	mov	rcx, qword ptr [r9]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rax*8], rcx
	nop	
	inc	rax
	lea	rdi, [rdi]
	mov	r9, qword ptr [r9 + 8]
	mov	rsp, rsp
	test	r9, r9
	jne	.label_737
	nop	
	jmp	.label_739
.label_738:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e160
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
	xor	ebx, ebx
	jmp	.label_740
	nop	word ptr cs:[rax + rax]
.label_741:
	mov	rsp, rsp
	add	r13, 0x10
.label_740:
	lea	rsi, [rsi]
	cmp	r13, qword ptr [r12 + 8]
	nop	
	jae	.label_743
	lea	rsi, [rsi]
	cmp	qword ptr [r13], 0
	je	.label_741
	mov	rbp, rbp
	test	r13, r13
	mov	rbp, r13
	je	.label_741
	nop	word ptr [rax + rax]
.label_742:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	je	.label_743
	mov	rsp, rsp
	inc	rbx
	mov	rsp, rsp
	mov	rbp, qword ptr [rbp + 8]
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_742
	jmp	.label_741
.label_743:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e210
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_745
	inc	rdi
	nop	
	xor	edx, edx
.label_744:
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
	jne	.label_744
.label_745:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e250
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_746]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e270

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
	mov	rbx, r8
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	lea	rdi, [rdi]
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	cmovne	r14, rcx
	mov	edi, 0x50
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	r13, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	test	r13, r13
	je	.label_747
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	mov	rsp, rsp
	test	al, al
	je	.label_748
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_748
	mov	esi, 0x10
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_748
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	nop	
	mov	rax, r13
	jmp	.label_747
.label_748:
	mov	rbp, rbp
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_747:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e3b0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	esi, 3
	mov	rsp, rsp
	call	rotr_sz
	lea	rdi, [rdi]
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e3e0

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
	#Procedure 0x40e3f0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	mov	rsp, rsp
	je	.label_749
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_753]]
	nop	
	jbe	.label_750
	movss	xmm1,  dword ptr [dword ptr [rip + label_754]]
	ucomiss	xmm1, xmm0
	jbe	.label_750
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_752]]
	jbe	.label_750
	movss	xmm1, dword ptr [rcx]
	lea	rdi, [rdi]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_750
	mov	rsp, rsp
	addss	xmm1,  dword ptr [dword ptr [rip + label_753]]
	ucomiss	xmm0, xmm1
	jbe	.label_750
	mov	rsp, rsp
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_751]]
	ucomiss	xmm2, xmm0
	nop	
	jb	.label_750
	ucomiss	xmm0, xmm1
	ja	.label_749
.label_750:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_749:
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e480

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_755
	mov	eax, edi
	nop	
	and	eax, 1
	lea	rsi, [rsi]
	test	rdi, rdi
	js	.label_757
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdi
	mov	rbp, rbp
	jmp	.label_756
.label_757:
	lea	rsi, [rsi]
	shr	rdi, 1
	or	rax, rdi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_756:
	divss	xmm0, dword ptr [rsi + 8]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_758]]
	nop	
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	mov	rsp, rsp
	cvttss2si	rax, xmm2
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	xor	rcx, rax
	mov	rsp, rsp
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_759]]
	jae	.label_760
.label_755:
	push	rax
	mov	rbp, rbp
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	lea	rsi, [rsi]
	add	rsp, 8
.label_760:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e530
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
	jmp	.label_762
	nop	dword ptr [rax]
.label_761:
	add	r14, 0x10
.label_762:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_764
	cmp	qword ptr [r14], 0
	lea	rdi, [rdi]
	je	.label_761
	nop	
	mov	rbx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	test	rax, rax
	setne	cl
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_766
	nop	dword ptr [rax + rax]
.label_767:
	test	cl, 1
	nop	
	je	.label_763
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	rax
.label_763:
	lea	rdi, [rdi]
	mov	qword ptr [rbx], 0
	nop	
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	nop	
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	jne	.label_767
.label_766:
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_765
	mov	rdi, qword ptr [r14]
	call	rax
.label_765:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_761
.label_764:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e600
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
	mov	r15, rdi
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_768
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_768
	mov	r14, qword ptr [r15]
	lea	rsi, [rsi]
	jmp	.label_775
	nop	word ptr cs:[rax + rax]
.label_769:
	mov	rbp, rbp
	add	r14, 0x10
.label_775:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	jae	.label_768
	cmp	qword ptr [r14], 0
	je	.label_769
	test	r14, r14
	mov	rbp, rbp
	mov	rbx, r14
	je	.label_769
	nop	word ptr cs:[rax + rax]
.label_776:
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_776
	jmp	.label_769
.label_768:
	mov	r14, qword ptr [r15]
	jmp	.label_770
	nop	word ptr [rax + rax]
.label_772:
	mov	rbp, rbp
	add	r14, 0x10
.label_770:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_773
	mov	rdi, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_772
	nop	dword ptr [rax]
.label_777:
	mov	rbp, rbp
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
	jne	.label_777
	lea	rdi, [rdi]
	jmp	.label_772
.label_773:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_771
	nop	word ptr cs:[rax + rax]
.label_774:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rdi, rbx
	lea	rdi, [rdi]
	jne	.label_774
.label_771:
	mov	rdi, qword ptr [r15]
	call	free
	nop	
	mov	rdi, r15
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e720

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rax
	mov	rsp, rsp
	call	compute_bucket_size
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_780
	lea	rsi, [rsi]
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	je	.label_781
	lea	rdi, [rdi]
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_780
	mov	qword ptr [rsp + 0x10], rbp
	mov	rsp, rsp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rsp + 0x18], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_779
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	mov	rsp, rsp
	jmp	.label_781
.label_779:
	nop	
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	edx, 1
	nop	
	mov	rdi, rbx
	call	transfer_entries
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_778
	lea	rsi, [rsp]
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	nop	
	call	transfer_entries
	test	al, al
	lea	rdi, [rdi]
	je	.label_778
	mov	rdi, qword ptr [rsp]
	call	free
.label_780:
	mov	rbp, rbp
	xor	r14d, r14d
.label_781:
	lea	rsi, [rsi]
	mov	al, r14b
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_778:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e8d0

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
	mov	r12, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [r12]
	mov	rbp, rbp
	mov	al, 1
	nop	
	cmp	r15, qword ptr [r12 + 8]
	nop	
	jae	.label_790
	nop	
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_784:
	cmp	qword ptr [r15], 0
	nop	
	je	.label_785
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_788
	nop	word ptr [rax + rax]
.label_783:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r13
	call	safe_hasher
	nop	
	mov	rbp, qword ptr [rbx + 8]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_782
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	nop	
	jmp	.label_786
	nop	word ptr [rax + rax]
.label_782:
	mov	rsp, rsp
	mov	qword ptr [rax], r13
	lea	rsi, [rsi]
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	call	free_entry
.label_786:
	nop	
	test	rbp, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	jne	.label_783
.label_788:
	mov	r13, qword ptr [r15]
	nop	
	mov	qword ptr [r15 + 8], 0
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	nop	
	jne	.label_785
	mov	rdi, r14
	mov	rsi, r13
	mov	rsp, rsp
	call	safe_hasher
	mov	rbx, rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbx], 0
	mov	rsp, rsp
	je	.label_791
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	allocate_entry
	test	rax, rax
	je	.label_787
	mov	rbp, rbp
	mov	qword ptr [rax], r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_789
.label_791:
	mov	qword ptr [rbx], r13
	nop	
	inc	qword ptr [r14 + 0x18]
.label_789:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_785:
	nop	
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	mov	rbp, rbp
	jb	.label_784
	mov	al, 1
	jmp	.label_790
.label_787:
	nop	
	xor	eax, eax
.label_790:
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ea50

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	test	r14, r14
	mov	rbp, rbp
	je	.label_793
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	mov	rsi, r14
	mov	rsp, rsp
	call	hash_find_entry
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_806
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_792
	mov	rbp, rbp
	mov	qword ptr [rbx], rax
	jmp	.label_792
.label_806:
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	nop	
	js	.label_803
	cvtsi2ss	xmm0, rcx
	lea	rdi, [rdi]
	jmp	.label_797
.label_803:
	shr	rcx, 1
	lea	rdi, [rdi]
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_797:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	and	edx, 1
	test	rax, rax
	js	.label_800
	cvtsi2ss	xmm1, rax
	mov	rsp, rsp
	jmp	.label_805
.label_800:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	mov	rsp, rsp
	addss	xmm1, xmm1
.label_805:
	mulss	xmm1, dword ptr [rcx + 8]
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	jbe	.label_798
	mov	rdi, r15
	call	check_tuning
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	lea	rdi, [rdi]
	and	edx, 1
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_802
	lea	rdi, [rdi]
	cvtsi2ss	xmm2, rcx
	jmp	.label_796
.label_802:
	shr	rcx, 1
	lea	rsi, [rsi]
	or	rdx, rcx
	mov	rsp, rsp
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_796:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	nop	
	and	edx, 1
	mov	rbp, rbp
	test	rax, rax
	js	.label_801
	cvtsi2ss	xmm0, rax
	jmp	.label_794
.label_801:
	shr	rax, 1
	or	rdx, rax
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rdx
	mov	rsp, rsp
	addss	xmm0, xmm0
.label_794:
	movaps	xmm3, xmm1
	lea	rsi, [rsi]
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	mov	rbp, rbp
	jbe	.label_798
	mov	rbp, rbp
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_804
	mulss	xmm0, xmm1
.label_804:
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_759]]
	lea	rdi, [rdi]
	jae	.label_792
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_758]]
	movaps	xmm2, xmm0
	lea	rdi, [rdi]
	subss	xmm2, xmm1
	nop	
	cvttss2si	rax, xmm2
	nop	
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	xor	rcx, rax
	mov	rbp, rbp
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	nop	
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	mov	rbp, rbp
	je	.label_792
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	call	hash_find_entry
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_793
.label_798:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_795
	mov	rdi, r15
	call	allocate_entry
	mov	rbp, rbp
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_792
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	inc	qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	jmp	.label_799
.label_795:
	mov	qword ptr [rax], r14
	nop	
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_799:
	mov	rbp, rbp
	mov	ebp, 1
.label_792:
	mov	rbp, rbp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_793:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ecd0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	nop	
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, rbp
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	nop	
	test	rsi, rsi
	je	.label_807
	cmp	rsi, r13
	nop	
	je	.label_811
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_813
.label_811:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	mov	rsp, rsp
	je	.label_807
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_809
	nop	
	movups	xmm0, xmmword ptr [rsi]
	mov	rsp, rsp
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_812
.label_813:
	mov	rax, qword ptr [rbx + 8]
	nop	
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_807
	lea	rsi, [rsi]
	add	rbx, 8
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_810:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	cmp	rsi, r13
	mov	rsp, rsp
	je	.label_808
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	mov	rsp, rsp
	test	al, al
	jne	.label_808
	nop	
	mov	rbx, qword ptr [rbx]
	nop	
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_810
	jmp	.label_807
.label_809:
	mov	rbp, rbp
	mov	qword ptr [rbx], 0
	lea	rsi, [rsi]
	jmp	.label_807
.label_808:
	nop	
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_807
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_812:
	mov	rdi, r14
	mov	rbp, rbp
	call	free_entry
.label_807:
	mov	rax, r15
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40edf0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	nop	
	je	.label_814
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_814:
	push	rax
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	add	rsp, 8
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ee20

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
	je	.label_815
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_815:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ee70

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	nop	
	mov	r15, rdi
	lea	rdi, [rdi]
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	mov	rbp, rbp
	xor	eax, eax
	test	r14, r14
	mov	rbp, rbp
	je	.label_824
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_820
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	nop	
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_816
	cvtsi2ss	xmm0, rax
	jmp	.label_821
.label_816:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	nop	
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_821:
	nop	
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	mov	rsp, rsp
	and	edx, 1
	lea	rsi, [rsi]
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_823
	mov	rbp, rbp
	cvtsi2ss	xmm1, rcx
	mov	rsp, rsp
	jmp	.label_817
.label_823:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_817:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_820
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_828
	mov	rsp, rsp
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	lea	rsi, [rsi]
	jmp	.label_819
.label_828:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	xorps	xmm1, xmm1
	lea	rsi, [rsi]
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_819:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_825
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rax
	jmp	.label_818
.label_825:
	shr	rax, 1
	or	rdx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_818:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_820
	mov	rbp, rbp
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	mov	rsp, rsp
	jne	.label_827
	mulss	xmm0, dword ptr [rcx + 8]
.label_827:
	movss	xmm1,  dword ptr [dword ptr [rip + label_758]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	lea	rsi, [rsi]
	test	al, al
	jne	.label_820
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	nop	
	je	.label_822
	nop	word ptr cs:[rax + rax]
.label_826:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	mov	rdi, rbx
	jne	.label_826
.label_822:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_820:
	mov	rax, r14
.label_824:
	add	rsp, 0x10
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f060

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	r14
	lea	rdi, [rdi]
	push	rbx
	push	rax
	nop	
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	lea	rsi, [rsi]
	or	rbx, 1
	mov	r14, -1
	jmp	.label_829
	nop	word ptr cs:[rax + rax]
.label_830:
	lea	rsi, [rsi]
	add	rbx, 2
.label_829:
	mov	rbp, rbp
	cmp	rbx, -1
	nop	
	je	.label_831
	nop	
	mov	rdi, rbx
	call	is_prime
	test	al, al
	mov	rbp, rbp
	je	.label_830
	mov	rsp, rsp
	mov	r14, rbx
.label_831:
	nop	
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f0d0

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	mov	r8, rdi
	nop	
	mov	esi, 3
	nop	
	mov	edi, 9
	nop	
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_832
	nop	
.label_833:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_832
	add	rdi, rcx
	mov	rbp, rbp
	add	rsi, 2
	lea	rdi, [rdi]
	add	rcx, 8
	mov	rbp, rbp
	cmp	rdi, r8
	jb	.label_833
.label_832:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r8
	div	rsi
	lea	rsi, [rsi]
	test	rdx, rdx
	setne	al
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f130

	.globl free_entry
	.type free_entry, @function
free_entry:
	lea	rsi, [rsi]
	mov	qword ptr [rsi], 0
	nop	
	mov	rax, qword ptr [rdi + 0x48]
	nop	
	mov	qword ptr [rsi + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f150

	.globl heap_alloc
	.type heap_alloc, @function
heap_alloc:
	nop	
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	edi, 0x20
	call	xmalloc
	mov	rbp, rbp
	mov	r12, rax
	mov	rsp, rsp
	test	r15, r15
	nop	
	mov	ebx, 1
	lea	rdi, [rdi]
	cmovne	rbx, r15
	mov	esi, 8
	mov	rdi, rbx
	call	xnmalloc
	mov	rsp, rsp
	mov	qword ptr [r12], rax
	mov	qword ptr [rax], 0
	mov	qword ptr [r12 + 8], rbx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x10], 0
	test	r14, r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:heap_default_compare
	cmovne	rax, r14
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x18], rax
	lea	rdi, [rdi]
	mov	rax, r12
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f1f0

	.globl heap_default_compare
	.type heap_default_compare, @function
heap_default_compare:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f200
	.globl heap_free
	.type heap_free, @function
heap_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	lea	rdi, [rdi]
	pop	rbx
	jmp	free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f220

	.globl heap_insert
	.type heap_insert, @function
heap_insert:
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, rsi
	nop	
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 8]
	dec	rax
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbx + 0x10]
	ja	.label_834
	lea	rsi, [rsi]
	lea	rsi, [rbx + 8]
	mov	rdi, qword ptr [rbx]
	mov	edx, 8
	call	x2nrealloc
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rax
.label_834:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, qword ptr [rbx]
	mov	qword ptr [rcx + rax*8 + 8], r14
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x18]
	call	heapify_up
	nop	
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f2a0

	.globl heapify_up
	.type heapify_up, @function
heapify_up:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r15, rdx
	nop	
	mov	rbx, rsi
	mov	r12, rdi
	mov	rbp, rbp
	mov	r14, qword ptr [r12 + rbx*8]
	mov	r13d, 1
	cmp	rbx, 1
	je	.label_835
	mov	r13d, 1
	nop	dword ptr [rax + rax]
.label_837:
	lea	rsi, [rsi]
	mov	rbp, rbx
	shr	rbp, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + rbp*8]
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	call	r15
	test	eax, eax
	jg	.label_836
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + rbp*8]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + rbx*8], rax
	cmp	rbp, 1
	mov	rbx, rbp
	mov	rbp, rbp
	jne	.label_837
	mov	rbp, rbp
	jmp	.label_835
.label_836:
	mov	r13, rbx
.label_835:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + r13*8], r14
	lea	rdi, [rdi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f340

	.globl heap_remove_top
	.type heap_remove_top, @function
heap_remove_top:
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x10]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_838
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rcx + 8]
	lea	rdx, [rax - 1]
	mov	qword ptr [rdi + 0x10], rdx
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdi + 0x10]
	nop	
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rdi, rax
	mov	rsp, rsp
	call	heapify_down
.label_838:
	mov	rax, rbx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f3a0

	.globl heapify_down
	.type heapify_down, @function
heapify_down:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r15, rdx
	nop	
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	mov	r13, rsi
	mov	rsp, rsp
	shr	r13, 1
	mov	r14d, 1
	lea	rdi, [rdi]
	je	.label_839
	nop	dword ptr [rax]
.label_842:
	lea	rbp, [r14 + r14]
	cmp	rbp, qword ptr [rsp + 8]
	jae	.label_843
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	r12, rbp
	mov	rsp, rsp
	or	r12, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + r12*8]
	call	r15
	test	eax, eax
	cmovs	rbp, r12
.label_843:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + rbp*8]
	nop	
	mov	rsi, qword ptr [rsp + 0x10]
	call	r15
	test	eax, eax
	jle	.label_841
	mov	rax, qword ptr [rbx + rbp*8]
	mov	qword ptr [rbx + r14*8], rax
	cmp	rbp, r13
	lea	rsi, [rsi]
	mov	r14, rbp
	jbe	.label_842
	lea	rdi, [rdi]
	jmp	.label_840
.label_839:
	mov	rbp, rbp
	mov	ebp, 1
	nop	
	jmp	.label_840
.label_841:
	mov	rbp, r14
.label_840:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + rbp*8], rax
	nop	
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f470

	.globl inttostr
	.type inttostr, @function
inttostr:
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0xb], 0
	test	edi, edi
	nop	
	js	.label_844
	add	rsi, 0xb
.label_846:
	movsxd	rax, edi
	imul	rcx, rax, 0x66666667
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	rsi, [rsi]
	add	ecx, edx
	lea	rdi, [rdi]
	lea	edx, [rcx + rcx]
	lea	edx, [rdx + rdx*4]
	lea	rsi, [rsi]
	neg	edx
	mov	rbp, rbp
	lea	edx, [rdi + rdx + 0x30]
	nop	
	mov	byte ptr [rsi - 1], dl
	lea	rdi, [rdi]
	dec	rsi
	add	eax, 9
	nop	
	cmp	eax, 0x12
	mov	rsp, rsp
	mov	edi, ecx
	ja	.label_846
	jmp	.label_847
.label_844:
	add	rsi, 0xa
	nop	word ptr cs:[rax + rax]
.label_845:
	nop	
	movsxd	rax, edi
	mov	rsp, rsp
	imul	rdi, rax, 0x66666667
	mov	rcx, rdi
	shr	rcx, 0x3f
	sar	rdi, 0x22
	add	edi, ecx
	lea	ecx, [rdi + rdi]
	lea	ecx, [rcx + rcx*4]
	mov	edx, eax
	sub	edx, ecx
	mov	ecx, 0x30
	lea	rdi, [rdi]
	sub	ecx, edx
	lea	rdi, [rdi]
	mov	byte ptr [rsi], cl
	add	eax, 9
	nop	
	dec	rsi
	mov	rbp, rbp
	cmp	eax, 0x12
	nop	
	ja	.label_845
	lea	rsi, [rsi]
	mov	byte ptr [rsi], 0x2d
.label_847:
	mov	rax, rsi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f530

	.globl uinttostr
	.type uinttostr, @function
uinttostr:
	mov	byte ptr [rsi + 0xa], 0
	mov	rsp, rsp
	add	rsi, 0xa
	lea	rdi, [rdi]
	mov	r8d, 0xcccccccd
	nop	word ptr cs:[rax + rax]
.label_848:
	mov	rsp, rsp
	mov	ecx, edi
	lea	rdi, [rdi]
	imul	rcx, r8
	lea	rdi, [rdi]
	shr	rcx, 0x23
	lea	edx, [rcx + rcx]
	lea	edx, [rdx + rdx*4]
	nop	
	mov	eax, edi
	mov	rsp, rsp
	sub	eax, edx
	lea	rsi, [rsi]
	or	eax, 0x30
	mov	rsp, rsp
	mov	byte ptr [rsi - 1], al
	dec	rsi
	mov	rsp, rsp
	cmp	edi, 9
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	rsp, rsp
	ja	.label_848
	lea	rdi, [rdi]
	mov	rax, rsi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f5a0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_849:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rdi, [rdi]
	mul	r8
	mov	rsp, rsp
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	mov	rbp, rbp
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dil
	mov	rbp, rbp
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_849
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f600
	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:

	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rax
	mov	edx, ebp
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	mbsnwidth
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f630

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	nop	
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x18
	mov	r14d, edx
	mov	r15, rsi
	mov	rbx, rdi
	lea	r12, [rbx + r15]
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_867
	xor	ebp, ebp
	test	r15, r15
	jle	.label_852
	mov	rsp, rsp
	mov	eax, r14d
	nop	
	and	eax, 2
	nop	
	mov	dword ptr [rsp + 8], eax
	lea	rsi, [rsi]
	and	r14d, 1
	mov	rbp, rbp
	mov	edx, r14d
	xor	edx, 1
	lea	esi, [r14*4]
	xor	esi, 5
	xor	r15d, r15d
	mov	rbp, rbp
	lea	r13, [rsp + 0x10]
	mov	ebp, 0x7fffffff
	nop	word ptr [rax + rax]
.label_866:
	mov	rsp, rsp
	movsx	eax, byte ptr [rbx]
	lea	rdi, [rdi]
	add	eax, -0x20
	mov	rbp, rbp
	cmp	eax, 0x5e
	mov	rbp, rbp
	ja	.label_857
	jmp	qword ptr [word ptr [+ (rax * 8) + label_864]]
.label_1533:
	lea	rsi, [rsi]
	inc	rbx
	inc	r15d
.label_865:
	nop	
	cmp	rbx, r12
	jb	.label_866
	jmp	.label_863
.label_857:
	mov	dword ptr [rsp], esi
	mov	dword ptr [rsp + 4], edx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], 0
	nop	word ptr cs:[rax + rax]
.label_869:
	mov	rsp, rsp
	mov	rdx, r12
	sub	rdx, rbx
	mov	rsp, rsp
	lea	rdi, [rsp + 0xc]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rcx, r13
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	mov	r13, rax
	mov	rsp, rsp
	test	r13, r13
	je	.label_856
	cmp	r13, -2
	je	.label_858
	cmp	r13, -1
	lea	rdi, [rdi]
	jne	.label_859
	jmp	.label_862
	nop	word ptr cs:[rax + rax]
.label_856:
	lea	rsi, [rsi]
	mov	r13d, 1
.label_859:
	mov	edi, dword ptr [rsp + 0xc]
	call	wcwidth
	lea	rdi, [rdi]
	test	eax, eax
	js	.label_861
	mov	edx, 0x7fffffff
	mov	rbp, rbp
	sub	edx, r15d
	mov	ecx, 7
	cmp	eax, edx
	lea	rsi, [rsi]
	jg	.label_854
	add	r15d, eax
	jmp	.label_855
	nop	dword ptr [rax]
.label_861:
	mov	ecx, 1
	cmp	dword ptr [rsp + 8], 0
	jne	.label_854
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	call	iswcntrl
	mov	rsp, rsp
	test	eax, eax
	jne	.label_855
	mov	ecx, 7
	mov	rbp, rbp
	cmp	r15d, 0x7fffffff
	nop	
	je	.label_854
	mov	rsp, rsp
	inc	r15d
	nop	word ptr cs:[rax + rax]
.label_855:
	add	rbx, r13
	mov	rbp, rbp
	lea	r13, [rsp + 0x10]
	mov	rdi, r13
	call	mbsinit
	nop	
	test	eax, eax
	mov	rsp, rsp
	mov	rax, rbx
	je	.label_869
	jmp	.label_850
.label_858:
	mov	rsp, rsp
	add	r15d, dword ptr [rsp + 4]
	test	r14d, r14d
	lea	rdi, [rdi]
	mov	rax, r12
	mov	ecx, dword ptr [rsp]
	lea	rsi, [rsi]
	lea	r13, [rsp + 0x10]
	nop	
	jne	.label_851
	lea	rdi, [rdi]
	jmp	.label_850
.label_862:
	mov	ecx, 1
	test	r14d, r14d
	jne	.label_854
	inc	rbx
	mov	rbp, rbp
	inc	r15d
	mov	rsp, rsp
	mov	rax, rbx
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x10]
.label_850:
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 4]
	mov	esi, dword ptr [rsp]
	jmp	.label_865
.label_854:
	lea	r13, [rsp + 0x10]
.label_851:
	test	ecx, ecx
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 4]
	mov	esi, dword ptr [rsp]
	lea	rsi, [rsi]
	je	.label_865
	mov	r15d, 0xffffffff
	lea	rdi, [rdi]
	cmp	ecx, 7
	nop	
	jne	.label_863
	jmp	.label_852
.label_867:
	mov	rsp, rsp
	and	r14d, 2
	nop	
	xor	r15d, r15d
	nop	
	jmp	.label_853
.label_868:
	inc	r15d
	nop	dword ptr [rax + rax]
.label_853:
	mov	rsp, rsp
	cmp	rbx, r12
	lea	rsi, [rsi]
	jae	.label_863
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_860
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	test	r14d, r14d
	jne	.label_852
	mov	rbp, rbp
	test	al, 2
	jne	.label_853
.label_860:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	jne	.label_868
	mov	rsp, rsp
	jmp	.label_852
.label_863:
	mov	ebp, r15d
.label_852:
	mov	eax, ebp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f920

	.globl num_processors
	.type num_processors, @function
num_processors:
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rbx, -1
	cmp	edi, 2
	mov	rbp, rbp
	jne	.label_870
	nop	
	mov	edi, OFFSET FLAT:.str_6
	mov	rsp, rsp
	call	getenv
	nop	
	mov	rdi, rax
	call	parse_omp_threads
	mov	r14, rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.1_4
	lea	rdi, [rdi]
	call	getenv
	nop	
	mov	rdi, rax
	call	parse_omp_threads
	cmp	rax, 1
	sbb	rbx, rbx
	lea	rdi, [rdi]
	or	rbx, rax
	cmp	r14, rbx
	nop	
	mov	rax, rbx
	nop	
	cmovb	rax, r14
	nop	
	mov	edi, 1
	nop	
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_871
.label_870:
	lea	rsi, [rsi]
	call	num_processors_ignoring_omp
	lea	rsi, [rsi]
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbx, rax
	mov	rax, rbx
.label_871:
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f9c0

	.globl parse_omp_threads
	.type parse_omp_threads, @function
parse_omp_threads:
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	nop	
	mov	rbx, rdi
	nop	
	xor	r14d, r14d
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_872
	lea	rsi, [rsi]
	mov	al, byte ptr [rbx]
	jmp	.label_874
	nop	dword ptr [rax + rax]
.label_878:
	mov	rsp, rsp
	mov	al, byte ptr [rbx + 1]
	nop	
	inc	rbx
.label_874:
	test	al, al
	lea	rdi, [rdi]
	je	.label_880
	lea	rdi, [rdi]
	movsx	edi, al
	call	c_isspace
	test	al, al
	jne	.label_878
.label_880:
	mov	rsp, rsp
	movsx	edi, byte ptr [rbx]
	mov	rsp, rsp
	call	c_isdigit
	xor	r14d, r14d
	test	al, al
	je	.label_872
	mov	qword ptr [rsp], 0
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	rbp, rbp
	mov	rdi, rbx
	call	strtoul
	mov	rsp, rsp
	mov	r14, rax
	nop	
	cmp	qword ptr [rsp], 0
	je	.label_877
	mov	rax, qword ptr [rsp]
	mov	al, byte ptr [rax]
	jmp	.label_875
	nop	
.label_873:
	lea	rax, [rcx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	al, byte ptr [rcx + 1]
.label_875:
	test	al, al
	lea	rdi, [rdi]
	je	.label_879
	movsx	edi, al
	lea	rdi, [rdi]
	call	c_isspace
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	jne	.label_873
	nop	
	jmp	.label_876
.label_879:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp]
.label_876:
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x2c
	je	.label_872
	test	al, al
	mov	rbp, rbp
	je	.label_872
.label_877:
	xor	r14d, r14d
.label_872:
	lea	rsi, [rsi]
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fac0

	.globl num_processors_ignoring_omp
	.type num_processors_ignoring_omp, @function
num_processors_ignoring_omp:
	mov	rbp, rbp
	push	rax
	cmp	edi, 1
	jne	.label_881
	mov	rsp, rsp
	call	num_processors_via_affinity_mask
	mov	rsp, rsp
	test	rax, rax
	jne	.label_883
	mov	rsp, rsp
	mov	edi, 0x54
	call	sysconf
	nop	
	test	rax, rax
	nop	
	jg	.label_883
	lea	rdi, [rdi]
	jmp	.label_884
.label_881:
	lea	rsi, [rsi]
	mov	edi, 0x53
	lea	rsi, [rsi]
	call	sysconf
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	mov	rsp, rsp
	jne	.label_882
	call	num_processors_via_affinity_mask
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	eax, 1
	mov	rbp, rbp
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_883
.label_882:
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	rax, rcx
	jg	.label_883
.label_884:
	mov	rsp, rsp
	mov	eax, 1
.label_883:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fb50

	.globl num_processors_via_affinity_mask
	.type num_processors_via_affinity_mask, @function
num_processors_via_affinity_mask:
	sub	rsp, 0x88
	nop	
	lea	rdx, [rsp + 8]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 0x80
	mov	rbp, rbp
	call	sched_getaffinity
	test	eax, eax
	jne	.label_885
	lea	rsi, [rsi]
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	call	__sched_cpucount
	test	eax, eax
	je	.label_885
	mov	rsp, rsp
	cdqe	
	mov	rbp, rbp
	add	rsp, 0x88
	nop	
	ret	
.label_885:
	mov	rsp, rsp
	xor	eax, eax
	add	rsp, 0x88
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fbb0

	.globl physmem_total
	.type physmem_total, @function
physmem_total:
	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	nop	
	or	rcx, rbx
	js	.label_889
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_888
.label_889:
	mov	rbp, rbp
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_886
	nop	
	movsd	xmm0,  qword ptr [word ptr [rip + label_887]]
	jmp	.label_888
.label_886:
	mov	rsp, rsp
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_141]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_142]]
	mov	rsp, rsp
	pshufd	xmm1, xmm0, 0x4e
	mov	rsp, rsp
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	nop	
	xorps	xmm0, xmm0
	nop	
	cvtsi2sd	xmm0, rax
	mov	rbp, rbp
	mulsd	xmm0, xmm1
.label_888:
	nop	
	add	rsp, 0x70
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fc50

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x70
	lea	rsi, [rsi]
	mov	edi, 0x56
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	mov	rbp, rbp
	js	.label_890
	lea	rdi, [rdi]
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	nop	
	jmp	.label_891
.label_890:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	mov	rsp, rsp
	je	.label_892
	call	physmem_total
	mulsd	xmm0,  qword ptr [word ptr [rip + label_545]]
	jmp	.label_891
.label_892:
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_141]]
	punpckldq	xmm0, xmm1
	mov	rsp, rsp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_142]]
	subpd	xmm0, xmm2
	mov	rsp, rsp
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	mov	rbp, rbp
	movq	xmm0, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm1, xmm3
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	lea	rsi, [rsi]
	mulsd	xmm0, xmm1
.label_891:
	add	rsp, 0x70
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fd30

	.globl rpl_pipe2
	.type rpl_pipe2, @function
rpl_pipe2:
	lea	rsi, [rsi]
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	mov	r14d, dword ptr [rbx]
	mov	r15d, dword ptr [rbx + 4]
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  0
	js	.label_899
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	r12d, esi
	mov	rsp, rsp
	call	pipe2
	mov	ebp, eax
	mov	rbp, rbp
	test	ebp, ebp
	mov	rsp, rsp
	jns	.label_897
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	jne	.label_897
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  0xffffffff
	lea	rdi, [rdi]
	mov	esi, r12d
.label_899:
	mov	rsp, rsp
	test	esi, 0xfff7f7ff
	nop	
	je	.label_895
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x16
	jmp	.label_898
.label_897:
	mov	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  1
	mov	rbp, rbp
	jmp	.label_894
.label_895:
	mov	r12d, esi
	nop	
	mov	rdi, rbx
	call	pipe
	mov	ebp, 0xffffffff
	test	eax, eax
	js	.label_894
	mov	rsp, rsp
	mov	eax, r12d
	test	ah, 8
	je	.label_896
	mov	rbp, rbp
	mov	edi, dword ptr [rbx + 4]
	mov	esi, 3
	nop	
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	test	ecx, ecx
	js	.label_893
	mov	edi, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	or	ecx, 0x800
	mov	esi, 4
	xor	eax, eax
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	call	rpl_fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_893
	mov	edi, dword ptr [rbx]
	mov	esi, 3
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_893
	mov	rbp, rbp
	mov	edi, dword ptr [rbx]
	or	ecx, 0x800
	mov	rsp, rsp
	mov	esi, 4
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	edx, ecx
	mov	rbp, rbp
	call	rpl_fcntl
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_893
.label_896:
	xor	ebp, ebp
	test	r12d, 0x80000
	je	.label_894
	mov	edi, dword ptr [rbx + 4]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	mov	rsp, rsp
	js	.label_893
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbx + 4]
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_893
	mov	edi, dword ptr [rbx]
	xor	ebp, ebp
	mov	esi, 1
	xor	edx, edx
	mov	rbp, rbp
	xor	eax, eax
	call	rpl_fcntl
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	test	ecx, ecx
	lea	rsi, [rsi]
	js	.label_893
	mov	edi, dword ptr [rbx]
	mov	rbp, rbp
	or	ecx, 1
	mov	esi, 2
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	lea	rsi, [rsi]
	cmp	eax, -1
	nop	
	jne	.label_894
.label_893:
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	r12d, dword ptr [rbp]
	mov	edi, dword ptr [rbx]
	call	close
	mov	rsp, rsp
	mov	edi, dword ptr [rbx + 4]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 4], r15d
	mov	dword ptr [rbp], r12d
.label_898:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
.label_894:
	mov	eax, ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ff70

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	mov	rsp, rsp
	push	rax
	mov	edi, OFFSET FLAT:.str_7
	lea	rdi, [rdi]
	call	getenv
	mov	rcx, rax
	mov	rbp, rbp
	mov	eax, 0x31069
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_900
	mov	rbp, rbp
	mov	eax, 0x31069
	lea	rdi, [rdi]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_900
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	strtol
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	je	.label_900
	nop	
	mov	eax, 0x31069
.label_900:
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovl	ecx, eax
	nop	
	cmp	rax, -0x80000000
	mov	rbp, rbp
	mov	eax, 0x80000000
	nop	
	cmovge	eax, ecx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410000

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
.label_1509:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_901
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
	jl	.label_903
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_903
	mov	esi, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_902
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_902:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_903:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_901:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_8
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
	#Procedure 0x4100f0
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
	#Procedure 0x410140
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
	#Procedure 0x410160
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
	#Procedure 0x410180

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
	#Procedure 0x4101f0
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
	#Procedure 0x410210

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
	je	.label_904
	test	rdx, rdx
	nop	
	je	.label_904
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_904:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410250
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
	.align	32
	#Procedure 0x4102f0

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
.label_919:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_974
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1025]]
.label_1379:
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
.label_1380:
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
	jne	.label_938
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_938
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_973:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_963
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_963:
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
	jne	.label_973
.label_938:
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
	jmp	.label_921
.label_1372:
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
	jmp	.label_921
.label_1375:
	mov	rsp, rsp
	mov	al, 1
.label_1373:
	mov	r15b, 1
.label_1376:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_1009
	mov	cl, al
.label_1009:
	lea	rdi, [rdi]
	mov	al, cl
.label_1374:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_1012
	test	r10, r10
	je	.label_1018
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_1020
.label_1012:
	xor	ecx, ecx
	jmp	.label_1020
.label_1377:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_1026
	test	r10, r10
	je	.label_909
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_914
.label_1378:
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
	jmp	.label_921
.label_1018:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_1020:
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
	jmp	.label_921
.label_1026:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_914
.label_909:
	mov	rbp, rbp
	mov	eax, 1
.label_914:
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
.label_921:
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
	jmp	.label_981
	nop	word ptr [rax + rax]
.label_989:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_981:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_1023
	cmp	rsi, rbp
	jne	.label_1001
	jmp	.label_905
	nop	word ptr cs:[rax + rax]
.label_1023:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_905
.label_1001:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_912
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_917
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_917
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
.label_917:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_951
.label_912:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_995:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_957
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_962]]
.label_1390:
	test	rsi, rsi
	jne	.label_910
	jmp	.label_972
	nop	word ptr [rax + rax]
.label_951:
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
	jne	.label_990
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
	je	.label_995
	mov	rsp, rsp
	jmp	.label_906
.label_990:
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
	jmp	.label_995
.label_1394:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_1014
	test	rsi, rsi
	nop	
	jne	.label_969
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_972
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_911
.label_1383:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_965
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_906
	cmp	edi, 2
	nop	
	jne	.label_1008
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_916
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_979
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_979:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_932
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_932:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_941
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_941:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_950
.label_1384:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_956
.label_1385:
	mov	cl, 0x74
	jmp	.label_960
.label_1386:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_956
.label_1387:
	mov	bl, 0x66
	jmp	.label_956
.label_1388:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_960
.label_1391:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_993
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_915
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
	jae	.label_943
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_943:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_998
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_998:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_1004
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1004:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_1013
.label_1392:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_1019
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_1024
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_915
.label_1024:
	mov	rdi, r14
	jmp	.label_910
.label_1393:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_908
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_915
	mov	rdi, r14
	jmp	.label_920
.label_957:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_923
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
.label_930:
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
	ja	.label_948
	test	dl, dl
	mov	rsp, rsp
	je	.label_948
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_911
.label_1014:
	test	rsi, rsi
	jne	.label_967
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_967
.label_972:
	mov	rbp, rbp
	mov	dl, 1
.label_1389:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_906
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_911
.label_965:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_910
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_981
.label_993:
	mov	rdi, r14
.label_1013:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_911
.label_908:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_960
.label_920:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_975
.label_960:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_906
.label_956:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_911
	lea	rsi, [rsi]
	jmp	.label_980
.label_923:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_1007
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
.label_1007:
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
.label_984:
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
	je	.label_924
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
	je	.label_929
	cmp	rbp, -2
	nop	
	je	.label_947
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_996
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_964:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_986
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_977
.label_986:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_964
.label_996:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_934
	xor	r15d, r15d
.label_934:
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
	je	.label_984
	jmp	.label_930
.label_967:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_911
.label_1019:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_910
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_910
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_910
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_1005
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_1011
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_906
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_982
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_982:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_959
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_959:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_999
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_999:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_994
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_994:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_911
.label_910:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_911:
	test	r12b, r12b
	je	.label_952
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_954
	jmp	.label_946
	nop	word ptr cs:[rax + rax]
.label_952:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_946
.label_954:
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
	jne	.label_961
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_975
	jmp	.label_980
	nop	word ptr cs:[rax + rax]
.label_946:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_980
	jmp	.label_975
.label_961:
	mov	bl, r13b
	mov	rsi, r14
.label_980:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_906
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_992
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_992
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_936
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_936:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_1002
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_1002:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_1010
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_1010:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_992:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_1021
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_1021:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_997
.label_969:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_911
.label_948:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_949
	nop	word ptr cs:[rax + rax]
.label_925:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_949:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_928
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_931
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_939
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_939:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_931
	nop	dword ptr [rax]
.label_928:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_915
	cmp	r14d, 2
	jne	.label_1000
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_1000
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_968
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_968:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_978
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_978:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_988
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_988:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_1000:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_942
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_942:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_991
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
.label_991:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_1015
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
.label_1015:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_931:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_975
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_922
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_970
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_926
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_926:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_940
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_940:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_970
	nop	word ptr cs:[rax + rax]
.label_922:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_970:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_925
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_925
	nop	word ptr cs:[rax + rax]
.label_975:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_955
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_955
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_937
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_937:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_987
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_987:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_997
	nop	word ptr cs:[rax + rax]
.label_955:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_997:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_989
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_989
.label_1008:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_950
.label_916:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_950:
	cmp	rcx, r10
	jae	.label_1016
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_1016:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_1022
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_971
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_913
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_983
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_983:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_935
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_935:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_911
.label_1022:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_911
.label_971:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_911
.label_913:
	xor	r15d, r15d
	jmp	.label_911
.label_924:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_918
.label_929:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_966
.label_947:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_976
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_985:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_944
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_985
	xor	r15d, r15d
	nop	
	jmp	.label_918
.label_976:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_966:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_918:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_930
.label_944:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_918
.label_1005:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_911
.label_1011:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_911
	nop	word ptr cs:[rax + rax]
.label_905:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_1006
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_915
.label_1006:
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
	je	.label_907
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_907
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_927
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_907
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
	je	.label_919
.label_907:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_933
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_933
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_933
	inc	rdx
	nop	dword ptr [rax + rax]
.label_953:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_945
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_945:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_953
.label_933:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_958
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_958
.label_906:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_1003:
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
.label_1017:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_958:
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
.label_977:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_1003
.label_915:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_1003
.label_927:
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
	jmp	.label_1017
.label_974:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411a40
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
	.align	32
	#Procedure 0x411a60

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
	je	.label_1027
	mov	qword ptr [rax], rbx
.label_1027:
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
	#Procedure 0x411bb0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1028
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1032:
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
	jl	.label_1032
.label_1028:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_1031
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_1029]], OFFSET FLAT:slot0
.label_1031:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1030
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1030:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411c70

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x411c80

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
	js	.label_1033
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_1037
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_1036
.label_1037:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_1039
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
	jne	.label_1035
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_1035:
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
.label_1036:
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
	ja	.label_1034
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
	je	.label_1038
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_1038:
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
.label_1034:
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
.label_1033:
	lea	rdi, [rdi]
	call	abort
.label_1039:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x411ef0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411f00
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
	.align	32
	#Procedure 0x411f20
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
	.align	32
	#Procedure 0x411f40

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
	.align	32
	#Procedure 0x411fa0

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
	je	.label_1040
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
.label_1040:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412010

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
	.align	32
	#Procedure 0x412070

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
	.align	32
	#Procedure 0x412090
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
	.align	32
	#Procedure 0x4120b0

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
	mov	rcx,  qword ptr [word ptr [rip + label_1041]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1042]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1043]]
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
	.align	32
	#Procedure 0x412150

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
	.align	32
	#Procedure 0x412170

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412180
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412190

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
	.align	32
	#Procedure 0x412200

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412210

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
	mov	rax,  qword ptr [word ptr [rip + label_1041]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1042]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1043]]
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
	.align	32
	#Procedure 0x4122a0
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
	.align	32
	#Procedure 0x4122d0
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
	.align	32
	#Procedure 0x412300

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412310
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
	.align	32
	#Procedure 0x412330

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412340

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
	.align	32
	#Procedure 0x412350

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
	jne	.label_1044
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
	je	.label_1045
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_1044
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_1044
.label_1045:
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
	je	.label_1046
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_1044
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_1044
.label_1046:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_1044:
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
	.align	32
	#Procedure 0x412480

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
	je	.label_1048
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_1047
	jmp	.label_1049
.label_1048:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_1049
.label_1047:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_1049
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
.label_1049:
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
	.align	32
	#Procedure 0x412540

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
	je	.label_1052
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_1051
	lea	rsi, [rsi]
	jmp	.label_1050
.label_1052:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_1050
.label_1051:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_1050
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
.label_1050:
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
	.align	32
	#Procedure 0x412630

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
	je	.label_1055
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1054
	jmp	.label_1053
.label_1055:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_1053
.label_1054:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_1053
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
.label_1053:
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
	.align	32
	#Procedure 0x412700

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
	je	.label_1058
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_1057
	jmp	.label_1056
.label_1058:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_1056
.label_1057:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_1056
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
.label_1056:
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
	.align	32
	#Procedure 0x4127a0

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
	je	.label_1061
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_1060
	nop	
	jmp	.label_1059
.label_1061:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_1059
.label_1060:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1059
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
.label_1059:
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
	.align	32
	#Procedure 0x412840

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
	je	.label_1064
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_1063
	lea	rsi, [rsi]
	jmp	.label_1062
.label_1064:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_1062
.label_1063:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_1062
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
.label_1062:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4128d0

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
	je	.label_1067
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_1066
	jmp	.label_1065
.label_1067:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_1065
.label_1066:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_1065
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_1065:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x412940

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
	je	.label_1068
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_1070
	mov	rbp, rbp
	jmp	.label_1069
.label_1068:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_1069
.label_1070:
	xor	eax, eax
.label_1069:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412990

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	mov	r15, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_1072
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_1073
	mov	esi, OFFSET FLAT:.str_9
	mov	rdi, rbx
	call	fopen_safer
	nop	
	mov	r12, rax
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	r12, r12
	nop	
	je	.label_1071
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, rbx
	nop	
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	lea	rdi, [rdi]
	cmp	r15, 0x1000
	lea	rdi, [rdi]
	mov	ecx, 0x1000
	mov	rsp, rsp
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r12
	call	setvbuf
	jmp	.label_1071
.label_1072:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	jmp	simple_new
.label_1073:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	simple_new
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	mov	rsp, rsp
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	mov	rsp, rsp
	call	get_nonce
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	isaac_seed
.label_1071:
	mov	rbp, rbp
	mov	rax, r14
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412aa0

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	edi, 0x1038
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412af0

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:.str.3_2
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	call	open
	nop	
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1074
	cmp	rbx, 0x800
	mov	edx, 0x800
	lea	rdi, [rdi]
	cmovbe	rdx, rbx
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rbp, rbp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	nop	
	mov	edi, ebp
	mov	rsp, rsp
	call	close
	xor	r15d, r15d
	nop	
	test	rbx, rbx
	mov	rsp, rsp
	js	.label_1074
	mov	rbp, rbp
	cmp	rbx, 0x7ff
	mov	r15, rbx
	mov	rsp, rsp
	ja	.label_1075
.label_1074:
	mov	eax, 0x800
	mov	rsp, rsp
	sub	rax, r15
	mov	rbp, rbp
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	mov	rsp, rsp
	ja	.label_1075
	lea	rdi, [rdi]
	mov	eax, 0x800
	lea	rdi, [rdi]
	sub	rax, rbx
	cmp	rax, 4
	lea	rsi, [rsi]
	mov	r15d, 4
	mov	rsp, rsp
	cmovbe	r15, rax
	lea	rsi, [rsi]
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rbp, rbp
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	nop	
	cmp	r15, 0x7ff
	mov	rbp, rbp
	ja	.label_1075
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	nop	
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_1075
	mov	eax, 0x800
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, 4
	nop	
	mov	r15d, 4
	mov	rbp, rbp
	cmovbe	r15, rax
	lea	rdi, [rdi]
	call	getuid
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], eax
	mov	rbp, rbp
	lea	rdi, [r14 + rbx]
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	add	r15, rbx
	mov	rsp, rsp
	cmp	r15, 0x7ff
	ja	.label_1075
	lea	rdi, [rdi]
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r15
	cmp	rax, 4
	mov	rbp, rbp
	mov	ebx, 4
	lea	rsi, [rsi]
	cmovbe	rbx, rax
	nop	
	call	getgid
	mov	dword ptr [rsp + 8], eax
	nop	
	add	r14, r15
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	nop	
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	memcpy
.label_1075:
	nop	
	add	rsp, 0x18
	pop	rbx
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d20
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d30
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d40

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	cmp	qword ptr [rdi], 0
	mov	rsp, rsp
	je	.label_1076
	nop	
	jmp	readsource
.label_1076:
	add	rdi, 0x18
	nop	
	jmp	readisaac
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412d60

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r13, rdx
	nop	
	mov	r14, rsi
	nop	
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi, r14
	call	fread_unlocked
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12, rax
	mov	rbp, rbp
	cmp	rbx, r13
	nop	
	je	.label_1078
	nop	word ptr [rax + rax]
.label_1077:
	lea	rsi, [rsi]
	sub	r13, rbx
	mov	rbp, rbp
	add	r14, rbx
	nop	
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, r13
	nop	
	call	fread_unlocked
	mov	rbp, rbp
	mov	rbx, rax
	cmp	r13, rbx
	jne	.label_1077
.label_1078:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412e20

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	mov	rsp, rsp
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	nop	
	sub	rsi, r12
	lea	rsi, [rsi]
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_1079
	nop	
	lea	rbp, [r14 + 8]
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	lea	rsi, [rsi]
	add	rbx, r12
	lea	rdi, [rdi]
	sub	r15, r12
	mov	rbp, rbp
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1081:
	cmp	r15, 0x800
	jb	.label_1080
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	lea	rsi, [rsi]
	add	rbx, 0x800
	mov	rbp, rbp
	add	r15, -0x800
	lea	rsi, [rsi]
	jne	.label_1081
	jmp	.label_1082
.label_1080:
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	rsi, r13
	call	isaac_refill
	nop	
	mov	r12d, 0x800
	mov	rsi, r13
.label_1079:
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rdx, r15
	nop	
	call	memcpy
	mov	rsp, rsp
	sub	r12, r15
.label_1082:
	mov	qword ptr [r14], r12
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412f10

	.globl randread_free
	.type randread_free, @function
randread_free:
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	esi, 0x1038
	nop	
	call	explicit_bzero
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	test	r14, r14
	je	.label_1083
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	rpl_fclose
.label_1083:
	xor	eax, eax
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x412f60

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	test	rbx, rbx
	nop	
	je	.label_1084
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_1086
	mov	esi, OFFSET FLAT:.str.1_6
	jmp	.label_1085
.label_1086:
	mov	esi, OFFSET FLAT:.str.2_3
.label_1085:
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, r14d
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_1084:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412ff0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x810]
	mov	rbp, rbp
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	nop	
	lea	rax, [r14 + 0x400]
	mov	qword ptr [rsp], rax
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	r15, r14
	nop	dword ptr [rax]
.label_1088:
	mov	qword ptr [rsp + 0x10], rbp
	lea	rsi, [rsi]
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r15 + 0x400]
	mov	rbx, qword ptr [r15]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	ind
	lea	rdi, [rdi]
	add	rax, r12
	lea	rdi, [rdi]
	add	rax, r13
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	mov	rsp, rsp
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rdi, r13
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	shr	rbp, 5
	lea	rdi, [rdi]
	xor	rbp, r13
	nop	
	add	rbp, qword ptr [r15 + 0x408]
	nop	
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	mov	rbp, rbp
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r15 + 8], rbx
	mov	rbp, rbp
	shr	rbx, 8
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	ind
	add	r12, rax
	lea	rsi, [rsi]
	mov	rdi, r12
	call	just
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r15 + 0x410]
	mov	rbp, rbp
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r15 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbp
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	call	just
	mov	rbx, rax
	nop	
	shr	rbx, 0x21
	lea	rsi, [rsi]
	xor	rbx, r12
	add	rbx, qword ptr [r15 + 0x418]
	lea	rsi, [rsi]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	nop	
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	call	ind
	nop	
	add	r12, rax
	nop	
	mov	rdi, r12
	lea	rsi, [rsi]
	call	just
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	lea	rdi, [rdi]
	add	r15, 0x20
	add	rbp, 0x20
	cmp	r15, rcx
	jb	.label_1088
	add	qword ptr [rsp + 8], 0x400
	lea	rax, [r14 + 0x800]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	nop	
.label_1087:
	nop	
	mov	r13, rbx
	shl	r13, 0x15
	nop	
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [rcx - 0x400]
	mov	rsp, rsp
	mov	rbx, qword ptr [rcx]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, rbx
	mov	r15, rcx
	call	ind
	mov	rsp, rsp
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	nop	
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	just
	mov	rbx, rax
	shr	rbx, 5
	lea	rdi, [rdi]
	xor	rbx, r13
	mov	rbp, rbp
	add	rbx, qword ptr [r15 - 0x3f8]
	nop	
	mov	r12, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	nop	
	call	ind
	add	rbp, rbx
	add	rbp, rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 8], rbp
	mov	rsp, rsp
	shr	rbp, 8
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	ind
	lea	rsi, [rsi]
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbp, rax
	mov	r13, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [r13 + 8], rbp
	mov	r12, rbx
	shl	r12, 0xc
	xor	r12, rbx
	nop	
	add	r12, qword ptr [r15 - 0x3f0]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	call	ind
	mov	rsp, rsp
	add	rbp, r12
	lea	rsi, [rsi]
	add	rbp, rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x10], rbp
	shr	rbp, 8
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	nop	
	mov	rdi, rbx
	call	just
	nop	
	mov	rbp, rax
	mov	qword ptr [r13 + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	lea	rdi, [rdi]
	shr	rbx, 0x21
	mov	rsp, rsp
	xor	rbx, r12
	add	rbx, qword ptr [r15 - 0x3e8]
	mov	rbp, rbp
	mov	r12, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r12
	mov	rbp, rbp
	call	ind
	lea	rdi, [rdi]
	add	rbp, rbx
	add	rbp, rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x18], rbp
	mov	rbp, rbp
	shr	rbp, 8
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	ind
	mov	rbp, rbp
	add	r12, rax
	mov	rdi, r12
	lea	rdi, [rdi]
	call	just
	mov	rbp, rbp
	mov	rcx, r15
	mov	rbp, rbp
	mov	r12, rax
	mov	rax, r13
	mov	qword ptr [rax + 0x18], r12
	nop	
	add	rcx, 0x20
	add	rax, 0x20
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rsp + 0x10]
	jb	.label_1087
	mov	qword ptr [r14 + 0x800], rbx
	mov	qword ptr [r14 + 0x808], r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413440

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413450

	.globl just
	.type just, @function
just:
	mov	rsp, rsp
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413460

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	mov	rbp, rbp
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	lea	rdi, [rdi]
	movabs	rdx, 0x48fe4a0fa5a09315
	mov	rbp, rbp
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	mov	rbp, rbp
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1089:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	lea	rdi, [rdi]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	mov	rbp, rbp
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	lea	rsi, [rsi]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	mov	rbp, rbp
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rbp, rbp
	mov	rdi, r12
	call	just
	nop	
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	nop	
	add	r12, rbp
	nop	
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	shl	rbp, 9
	lea	rsi, [rsi]
	xor	rbp, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x28], rbp
	nop	
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	mov	rsp, rsp
	xor	r12, rax
	add	r15, r14
	nop	
	mov	qword ptr [rsp], r15
	mov	rbp, rbp
	sub	rbx, r12
	nop	
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	mov	rsp, rsp
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x10]
	sub	r13, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	call	just
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	shr	r15, 0xe
	mov	rbp, rbp
	xor	r15, qword ptr [rsp]
	add	rbx, r13
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	lea	rsi, [rsi]
	shl	r14, 0x14
	mov	rsp, rsp
	xor	r14, qword ptr [rsp + 8]
	mov	rbp, rbp
	add	r13, rdi
	mov	qword ptr [rsp + 8], r13
	mov	r13, qword ptr [rsp + 0x28]
	nop	
	sub	r13, r14
	nop	
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbx, rax
	mov	rsp, rsp
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rax, r13
	mov	rbp, rbp
	add	rdx, rax
	lea	rsi, [rsi]
	sub	r12, rbx
	mov	rbp, rbp
	shl	r13, 0xe
	nop	
	xor	r13, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	add	rax, r12
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	lea	rdi, [rdi]
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_1089
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1090:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	mov	rbp, rbp
	add	r15, qword ptr [rdi + rcx*8 + 8]
	lea	rdi, [rdi]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	mov	rsp, rsp
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	lea	rsi, [rsi]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	nop	
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	mov	rsp, rsp
	xor	rbp, qword ptr [rsp + 0x28]
	sub	r14, rbp
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	lea	rdi, [rdi]
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	mov	rsp, rsp
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	rbp, rbp
	mov	r14, r13
	mov	rbp, rbp
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	mov	rsp, rsp
	add	r13, rdi
	lea	rdi, [rdi]
	sub	rbp, r14
	lea	rdi, [rdi]
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp + 0x30]
	add	rdx, rbp
	nop	
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	lea	rdi, [rdi]
	add	rbp, r12
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	nop	
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_1090
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi + 0x800], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x810], 0
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413890

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	lea	rdi, [rbx + 0x18]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	xor	esi, esi
	xor	edx, edx
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	lea	rdi, [rbx + 0x70]
	lea	rsi, [rsi]
	xor	esi, esi
	xor	edx, edx
	nop	
	mov	ecx, OFFSET FLAT:malloc
	nop	
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	add	rbx, 0xc8
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:malloc
	nop	
	mov	r8d, OFFSET FLAT:free
	mov	rdi, rbx
	pop	rbx
	nop	
	jmp	_obstack_begin
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413910
	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:

	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xor	esi, esi
	lea	rdi, [rdi]
	call	_obstack_free
	lea	rdi, [rdi]
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	lea	rsi, [rsi]
	call	_obstack_free
	add	rbx, 0xc8
	xor	esi, esi
	nop	
	mov	rdi, rbx
	pop	rbx
	mov	rbp, rbp
	jmp	_obstack_free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413950

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	call	fgetc
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rsp, rsp
	cmp	ebp, -1
	je	.label_1093
	lea	rdi, [rdi]
	lea	r15, [rbx + 0x18]
.label_1095:
	mov	rax, qword ptr [rbx + 0x38]
	cmp	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	jne	.label_1091
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	_obstack_newchunk
.label_1091:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x30]
	nop	
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x30], rcx
	mov	byte ptr [rax], bpl
	mov	rsp, rsp
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_1099
	mov	rdi, rbx
	call	save_token
.label_1099:
	lea	rsi, [rsi]
	mov	rdi, r14
	call	fgetc
	lea	rdi, [rdi]
	mov	ebp, eax
	cmp	ebp, -1
	nop	
	jne	.label_1095
.label_1093:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x30]
	nop	
	cmp	rax, qword ptr [rbx + 0x28]
	je	.label_1097
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_1101
	lea	rdi, [rbx + 0x18]
	mov	rsp, rsp
	mov	esi, 1
	lea	rsi, [rsi]
	call	_obstack_newchunk
.label_1101:
	mov	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	nop	
	call	save_token
.label_1097:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x90]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbx + 0x88]
	cmp	rax, 7
	mov	rsp, rsp
	ja	.label_1100
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	lea	rsi, [rsi]
	call	_obstack_newchunk
.label_1100:
	mov	rax, qword ptr [rbx + 0x88]
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [rbx + 0x88]
	mov	rbp, rbp
	add	rcx, 8
	nop	
	mov	qword ptr [rbx + 0x88], rcx
	nop	
	mov	rax, qword ptr [rbx + 0x80]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jne	.label_1096
	or	byte ptr [rbx + 0xc0], 2
.label_1096:
	mov	rdx, qword ptr [rbx + 0xa0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x88]
	lea	rdi, [rdi]
	add	rcx, rdx
	mov	rbp, rbp
	not	rdx
	and	rdx, rcx
	mov	qword ptr [rbx + 0x88], rdx
	mov	rsi, qword ptr [rbx + 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rdx, rsi
	mov	rdi, rcx
	mov	rbp, rbp
	sub	rdi, rsi
	cmp	rdx, rdi
	nop	
	jbe	.label_1098
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x88], rcx
.label_1098:
	nop	
	mov	rcx, qword ptr [rbx + 0x88]
	mov	qword ptr [rbx + 0x80], rcx
	mov	qword ptr [rbx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xd8]
	cmp	qword ptr [rbx + 0xe0], rax
	mov	rbp, rbp
	jne	.label_1092
	or	byte ptr [rbx + 0x118], 2
.label_1092:
	nop	
	mov	rdx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rbx + 0xe0]
	lea	rdi, [rdi]
	add	rcx, rdx
	lea	rsi, [rsi]
	not	rdx
	and	rdx, rcx
	mov	qword ptr [rbx + 0xe0], rdx
	mov	rsi, qword ptr [rbx + 0xd0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0xe8]
	sub	rdx, rsi
	mov	rdi, rcx
	lea	rsi, [rsi]
	sub	rdi, rsi
	mov	rbp, rbp
	cmp	rdx, rdi
	jbe	.label_1094
	nop	
	mov	qword ptr [rbx + 0xe0], rcx
.label_1094:
	nop	
	mov	rcx, qword ptr [rbx + 0xe0]
	mov	qword ptr [rbx + 0xd8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	ferror
	mov	rsp, rsp
	test	eax, eax
	sete	al
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413bb0

	.globl save_token
	.type save_token, @function
save_token:
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	mov	r14, qword ptr [rbx + 0x30]
	nop	
	cmp	r14, r15
	lea	rsi, [rsi]
	jne	.label_1102
	or	byte ptr [rbx + 0x68], 2
.label_1102:
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x30]
	add	rax, rcx
	lea	rsi, [rsi]
	not	rcx
	and	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	rdx, qword ptr [rbx + 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x38]
	sub	rcx, rdx
	mov	rsi, rax
	lea	rsi, [rsi]
	sub	rsi, rdx
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jbe	.label_1103
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x30], rax
.label_1103:
	lea	rdi, [rdi]
	dec	r14
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 0x90]
	nop	
	sub	rax, qword ptr [rbx + 0x88]
	cmp	rax, 7
	lea	rdi, [rdi]
	ja	.label_1104
	nop	
	lea	rdi, [rbx + 0x70]
	nop	
	mov	esi, 8
	lea	rsi, [rsi]
	call	_obstack_newchunk
.label_1104:
	mov	rax, qword ptr [rbx + 0x88]
	mov	qword ptr [rax], r15
	add	qword ptr [rbx + 0x88], 8
	mov	rsp, rsp
	sub	r14, r15
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xe8]
	sub	rax, qword ptr [rbx + 0xe0]
	cmp	rax, 7
	ja	.label_1105
	mov	rbp, rbp
	lea	rdi, [rbx + 0xc8]
	mov	esi, 8
	lea	rdi, [rdi]
	call	_obstack_newchunk
.label_1105:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0xe0]
	lea	rsi, [rsi]
	mov	qword ptr [rax], r14
	add	qword ptr [rbx + 0xe0], 8
	inc	qword ptr [rbx]
	pop	rbx
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413cc0
	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:

	push	rax
	call	mkstemp
	lea	rsi, [rsi]
	mov	edi, eax
	pop	rax
	lea	rsi, [rsi]
	jmp	fd_safer
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413ce0

	.globl mkostemp_safer
	.type mkostemp_safer, @function
mkostemp_safer:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	nop	
	call	mkostemp
	mov	rsp, rsp
	mov	edi, eax
	mov	esi, ebx
	mov	rsp, rsp
	pop	rbx
	jmp	fd_safer_flag
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413d00

	.globl strnumcmp
	.type strnumcmp, @function
strnumcmp:
	jmp	numcompare_0
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413d10

	.globl numcompare_0
	.type numcompare_0, @function
numcompare_0:
	push	rbp
	push	r14
	push	rbx
	mov	r8, rdi
	movzx	r9d, byte ptr [r8]
	cmp	r9d, 0x2d
	mov	r10b, byte ptr [rsi]
	movzx	edi, r10b
	jne	.label_1109
	inc	r8
	nop	
.label_1114:
	movzx	r9d, byte ptr [r8]
	inc	r8
	cmp	r9d, 0x30
	je	.label_1114
	cmp	r9d, ecx
	je	.label_1114
	movzx	r11d, r10b
	cmp	r11d, 0x2d
	jne	.label_1120
	dec	r8
	nop	word ptr cs:[rax + rax]
.label_1127:
	movzx	edi, byte ptr [rsi + 1]
	inc	rsi
	cmp	edi, 0x30
	je	.label_1127
	cmp	edi, ecx
	je	.label_1127
	lea	eax, [r9 - 0x30]
	cmp	eax, 0xa
	setb	r10b
	movzx	ebp, r9b
	movzx	ebx, dil
	cmp	ebx, ebp
	jne	.label_1129
	cmp	eax, 0xa
	jae	.label_1129
	nop	word ptr cs:[rax + rax]
.label_1139:
	mov	al, byte ptr [r8 + 1]
	inc	r8
	movzx	r9d, al
	cmp	r9d, ecx
	je	.label_1139
.label_1140:
	movzx	edi, byte ptr [rsi + 1]
	inc	rsi
	cmp	edi, ecx
	je	.label_1140
	lea	ebp, [r9 - 0x30]
	cmp	ebp, 0xa
	setb	r10b
	movzx	ebx, dil
	cmp	ebx, r9d
	jne	.label_1142
	cmp	ebp, 9
	jbe	.label_1139
	jmp	.label_1142
.label_1109:
	movzx	eax, r10b
	cmp	eax, 0x2d
	jne	.label_1149
	inc	rsi
	nop	dword ptr [rax]
.label_1150:
	movzx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1150
	cmp	eax, ecx
	je	.label_1150
	cmp	eax, edx
	jne	.label_1147
	nop	word ptr cs:[rax + rax]
.label_1132:
	movzx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1132
.label_1147:
	movzx	esi, al
	add	esi, -0x30
	mov	eax, 1
	cmp	esi, 0xa
	jb	.label_1108
	movzx	eax, r9b
	cmp	eax, 0x30
	jne	.label_1113
	jmp	.label_1116
.label_1120:
	cmp	r9d, edx
	jne	.label_1119
	nop	word ptr cs:[rax + rax]
.label_1125:
	movzx	r9d, byte ptr [r8]
	inc	r8
	cmp	r9d, 0x30
	je	.label_1125
.label_1119:
	movzx	ebp, r9b
	add	ebp, -0x30
	mov	eax, 0xffffffff
	cmp	ebp, 0xa
	jb	.label_1108
	cmp	r11d, 0x30
	je	.label_1130
	cmp	edi, ecx
	jne	.label_1131
	nop	dword ptr [rax]
.label_1130:
	movzx	edi, byte ptr [rsi + 1]
	inc	rsi
	cmp	edi, 0x30
	je	.label_1130
	cmp	edi, ecx
	mov	r10b, dil
	je	.label_1130
.label_1131:
	cmp	edi, edx
	jne	.label_1135
	inc	rsi
	nop	word ptr [rax + rax]
.label_1151:
	movzx	r10d, byte ptr [rsi]
	inc	rsi
	cmp	r10d, 0x30
	je	.label_1151
.label_1135:
	movzx	eax, r10b
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	jmp	.label_1108
.label_1149:
	movzx	ebp, r9b
	cmp	ebp, 0x30
	jne	.label_1143
	jmp	.label_1144
.label_1129:
	mov	al, r9b
.label_1142:
	movzx	r11d, dil
	cmp	r9d, edx
	setne	r14b
	lea	edi, [r11 - 0x30]
	cmp	edi, 0xa
	setb	bpl
	cmp	r11d, edx
	setne	bl
	or	bl, r10b
	movzx	ebx, bl
	cmp	ebx, 1
	jne	.label_1145
	or	r14b, bpl
	je	.label_1145
	movzx	eax, al
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_1152
	nop	dword ptr [rax]
.label_1110:
	movzx	eax, byte ptr [r8 + 1]
	inc	r8
	cmp	eax, ecx
	je	.label_1110
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_1110
.label_1152:
	xor	eax, eax
	jmp	.label_1112
	nop	dword ptr [rax + rax]
.label_1123:
	inc	rax
	add	edi, -0x30
.label_1112:
	cmp	edi, 0xa
	jae	.label_1115
	nop	dword ptr [rax + rax]
.label_1118:
	movzx	edi, byte ptr [rsi + 1]
	inc	rsi
	cmp	edi, ecx
	je	.label_1118
	jmp	.label_1123
.label_1145:
	movsx	edx, dl
	mov	rdi, rsi
	mov	rsi, r8
	jmp	.label_1124
.label_1115:
	cmp	rdx, rax
	jne	.label_1126
	sub	r11d, r9d
	xor	eax, eax
	test	rdx, rdx
	cmovne	eax, r11d
	jmp	.label_1108
.label_1126:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	jmp	.label_1108
.label_1113:
	cmp	r9d, ecx
	jne	.label_1133
.label_1116:
	movzx	r9d, byte ptr [r8 + 1]
	inc	r8
	cmp	r9d, 0x30
	jne	.label_1113
	jmp	.label_1116
.label_1133:
	cmp	r9d, edx
	jne	.label_1137
	inc	r8
.label_1138:
	movzx	r9d, byte ptr [r8]
	inc	r8
	cmp	r9d, 0x30
	je	.label_1138
.label_1137:
	movzx	eax, r9b
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	jmp	.label_1108
.label_1143:
	cmp	r9d, ecx
	jne	.label_1134
.label_1144:
	movzx	r9d, byte ptr [r8 + 1]
	inc	r8
	cmp	r9d, 0x30
	jne	.label_1143
	jmp	.label_1144
.label_1134:
	cmp	eax, 0x30
	je	.label_1146
	cmp	edi, ecx
	jne	.label_1148
	nop	
.label_1146:
	movzx	r10d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r10d, 0x30
	je	.label_1146
	cmp	r10d, ecx
	je	.label_1146
.label_1148:
	movzx	edi, r9b
	lea	ebp, [rdi - 0x30]
	cmp	ebp, 0xa
	setb	al
	movzx	ebx, r10b
	cmp	edi, ebx
	jne	.label_1107
	cmp	ebp, 0xa
	jae	.label_1107
	nop	dword ptr [rax]
.label_1117:
	mov	r9b, byte ptr [r8 + 1]
	inc	r8
	movzx	edi, r9b
	cmp	edi, ecx
	je	.label_1117
	nop	
.label_1111:
	movzx	r10d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r10d, ecx
	je	.label_1111
	lea	ebp, [rdi - 0x30]
	cmp	ebp, 0xa
	setb	al
	movzx	ebx, r10b
	cmp	edi, ebx
	jne	.label_1107
	cmp	ebp, 9
	jbe	.label_1117
.label_1107:
	movzx	r10d, r10b
	cmp	edi, edx
	setne	r14b
	lea	r11d, [r10 - 0x30]
	cmp	r11d, 0xa
	setb	bpl
	cmp	r10d, edx
	setne	bl
	or	bl, al
	movzx	eax, bl
	cmp	eax, 1
	jne	.label_1121
	or	r14b, bpl
	je	.label_1121
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_1128
	nop	dword ptr [rax]
.label_1106:
	movzx	eax, byte ptr [r8 + 1]
	inc	r8
	cmp	eax, ecx
	je	.label_1106
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_1106
.label_1128:
	xor	eax, eax
	cmp	r11d, 0xa
	jae	.label_1136
	nop	
.label_1122:
	movzx	ebx, byte ptr [rsi + 1]
	inc	rsi
	cmp	ebx, ecx
	je	.label_1122
	inc	rax
	add	ebx, -0x30
	cmp	ebx, 0xa
	jb	.label_1122
.label_1136:
	cmp	rdx, rax
	jne	.label_1141
	sub	edi, r10d
	xor	eax, eax
	test	rdx, rdx
	cmovne	eax, edi
	jmp	.label_1108
.label_1121:
	movsx	edx, dl
	mov	rdi, r8
.label_1124:
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fraccompare
.label_1141:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
.label_1108:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4140f0

	.globl fraccompare
	.type fraccompare, @function
fraccompare:
	movzx	eax, byte ptr [rdi]
	movzx	ecx, dl
	cmp	eax, ecx
	jne	.label_1159
	movzx	eax, byte ptr [rsi]
	cmp	eax, ecx
	jne	.label_1159
	inc	rdi
	inc	rsi
	nop	word ptr [rax + rax]
.label_1153:
	movzx	ecx, byte ptr [rdi]
	movsx	eax, cl
	movzx	edx, byte ptr [rsi]
	lea	r9d, [rax - 0x30]
	cmp	ecx, edx
	jne	.label_1157
	inc	rdi
	inc	rsi
	xor	eax, eax
	cmp	r9d, 0xa
	jb	.label_1153
	jmp	.label_1158
.label_1159:
	movzx	eax, byte ptr [rdi]
	cmp	eax, ecx
	jne	.label_1160
	inc	rdi
	nop	dword ptr [rax + rax]
.label_1156:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_1156
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_1160:
	xor	eax, eax
	movzx	edx, byte ptr [rsi]
	cmp	edx, ecx
	jne	.label_1158
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_1155:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1155
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
.label_1158:
	ret	
.label_1157:
	movsx	edx, dl
	lea	r8d, [rdx - 0x30]
	cmp	r9d, 9
	ja	.label_1154
	cmp	r8d, 9
	ja	.label_1154
	sub	eax, edx
	ret	
.label_1154:
	cmp	r9d, 0xa
	jb	.label_1156
	xor	eax, eax
	cmp	r8d, 0xa
	jb	.label_1155
	jmp	.label_1158
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4141b0

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
	ja	.label_1162
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
	jmp	.label_1161
.label_1162:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_1161:
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
	#Procedure 0x414220

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
	je	.label_1167
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
	jmp	.label_1170
.label_1167:
	mov	edx, OFFSET FLAT:.str.1_7
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_1170:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
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
	ja	.label_1171
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1163]]
.label_1448:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_1171:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_1166
.label_1449:
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
.label_1450:
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
.label_1451:
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
	jmp	.label_1169
.label_1452:
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
	jmp	.label_1165
.label_1453:
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
	jmp	.label_1164
.label_1454:
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
.label_1164:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_1165:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_1169:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_1172
.label_1456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_1166:
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
	jmp	.label_1168
.label_1455:
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
.label_1168:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_1172:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1447:
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
	#Procedure 0x414610
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_1173:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_1173
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414640

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_1177:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_1174
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_1176
	nop	word ptr cs:[rax + rax]
.label_1174:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1176:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_1175
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_1177
.label_1175:
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
	#Procedure 0x4146d0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_1178
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
.label_1178:
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
	.align	32
	#Procedure 0x414780
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
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18_0
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
	#Procedure 0x414810

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
	jb	.label_1179
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_1179:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414850

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1180
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1181
.label_1180:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1181:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414880
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
	jb	.label_1182
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_1182:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4148c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_1183
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_1183
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_1183:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_1184
	test	rax, rax
	nop	
	je	.label_1185
.label_1184:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1185:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414910

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1186
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_1187
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1189
.label_1186:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_1188
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_1188:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_1190
.label_1189:
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
.label_1187:
	call	xalloc_die
.label_1190:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4149b0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4149c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4149d0
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
	.align	32
	#Procedure 0x414a10

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
	jb	.label_1191
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_1191
	pop	rcx
	ret	
.label_1191:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x414a40

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
	.align	32
	#Procedure 0x414a90
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
	.align	32
	#Procedure 0x414ab0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_8
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414b00
	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:

	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	call	memcoll
	mov	ebp, eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	lea	rsi, [rsi]
	je	.label_1192
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, r12
	mov	rsp, rsp
	mov	rcx, r15
	mov	r8, r14
	lea	rsi, [rsi]
	call	collate_error
.label_1192:
	mov	eax, ebp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414b70

	.globl collate_error
	.type collate_error, @function
collate_error:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	qword ptr [rsp], r8
	mov	rsp, rsp
	mov	rbx, rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	ebp, edi
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_11
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	error
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_5
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	r15, rax
	xor	edi, edi
	mov	esi, 8
	mov	rsp, rsp
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, r12
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp]
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, r14d
	mov	rdx, r15
	mov	rcx, rbp
	mov	rsp, rsp
	mov	r8, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	jmp	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414ca0

	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	lea	rsi, [rsi]
	call	memcoll0
	mov	ebp, eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	nop	
	je	.label_1193
	dec	rbx
	mov	rbp, rbp
	dec	r15
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rdx, rbx
	mov	rsp, rsp
	mov	rcx, r14
	mov	rsp, rsp
	mov	r8, r15
	nop	
	call	collate_error
.label_1193:
	mov	eax, ebp
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x414d20

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	call	dtotimespec
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdx
	call	__errno_location
	mov	rsp, rsp
	mov	r14, rax
	mov	dword ptr [r14], 0
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rdi, [rsp]
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	call	rpl_nanosleep
	test	eax, eax
	je	.label_1194
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_1195:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_1194
	mov	dword ptr [r14], 0
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1195
.label_1194:
	nop	
	mov	eax, ebx
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414dd0

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r13, r8
	nop	
	mov	r14d, edx
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	r14d, 0x25
	lea	rsi, [rsi]
	jae	.label_1216
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r12, rax
	mov	rbp, rbp
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	
.label_1209:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_1209
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x10]
	lea	rsi, [rsi]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	rsp, rsp
	mov	r15d, 4
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	je	.label_1207
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rbp, rbp
	cmp	rax, rbx
	je	.label_1197
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12]
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	lea	rsi, [rsi]
	je	.label_1203
	cmp	eax, 0x22
	jne	.label_1207
	mov	r12d, 1
.label_1203:
	mov	rbp, rbp
	test	rbp, rbp
	mov	rsp, rsp
	jne	.label_1213
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_1217
.label_1197:
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_1207
	mov	rbx, rcx
	nop	
	movsx	esi, byte ptr [rax]
	mov	rbp, rbp
	test	esi, esi
	mov	rbp, rbp
	je	.label_1207
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	nop	
	mov	rcx, rbx
	mov	rsp, rsp
	je	.label_1207
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 1
	nop	
	xor	r12d, r12d
.label_1213:
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_1208
	mov	rsp, rsp
	mov	r13, rcx
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_1215
	lea	rsi, [rsi]
	mov	r15d, 0x400
	lea	rdi, [rdi]
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	lea	rdi, [rdi]
	ja	.label_1219
	nop	
	movabs	rax, 0x814400308945
	mov	rbp, rbp
	bt	rax, rbx
	jae	.label_1220
	mov	esi, 0x30
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	nop	
	test	rax, rax
	nop	
	je	.label_1205
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	mov	rbp, rbp
	cmp	ecx, 0x42
	lea	rsi, [rsi]
	je	.label_1199
	cmp	ecx, 0x44
	je	.label_1199
	cmp	ecx, 0x69
	lea	rdi, [rdi]
	jne	.label_1205
	mov	rsp, rsp
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	nop	
	cmp	eax, 0x42
	je	.label_1205
	mov	r14d, 1
	jmp	.label_1205
.label_1199:
	mov	rbp, rbp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_1205:
	mov	rax, qword ptr [rbx]
	nop	
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_1196
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_1201
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1202]]
.label_1366:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_1214
.label_1196:
	cmp	eax, 0x73
	jg	.label_1210
	nop	
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_1211
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1212]]
.label_1361:
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	lea	rdi, [rdi]
	jmp	.label_1214
.label_1201:
	cmp	eax, 0x54
	je	.label_1204
	lea	rdi, [rdi]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jne	.label_1215
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	mov	edx, 8
	mov	rsp, rsp
	jmp	.label_1198
.label_1210:
	cmp	eax, 0x74
	nop	
	je	.label_1204
	mov	rsp, rsp
	cmp	eax, 0x77
	jne	.label_1215
	nop	
	lea	rdi, [rsp + 8]
	nop	
	mov	esi, 2
.label_1214:
	lea	rsi, [rsi]
	call	bkm_scale
	lea	rdi, [rdi]
	jmp	.label_1206
.label_1362:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_1198
.label_1363:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_1198
.label_1364:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 2
	jmp	.label_1198
.label_1204:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 4
	nop	
	jmp	.label_1198
.label_1211:
	lea	rdi, [rdi]
	cmp	eax, 0x5a
	jne	.label_1215
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 7
	jmp	.label_1198
.label_1215:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	or	r12d, 2
	lea	rdi, [rdi]
	jmp	.label_1200
.label_1367:
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 6
	lea	rsi, [rsi]
	jmp	.label_1198
.label_1368:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_1198:
	nop	
	mov	esi, r15d
	call	bkm_scale_by_power
.label_1206:
	nop	
	or	eax, r12d
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx]
	nop	
	lea	rdx, [rcx + r14]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_1218
	nop	
	or	eax, 2
.label_1218:
	mov	r12d, eax
.label_1208:
	nop	
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_1217:
	mov	qword ptr [rcx], rax
.label_1200:
	lea	rsi, [rsi]
	mov	r15d, r12d
.label_1207:
	mov	eax, r15d
	nop	
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_1219:
	mov	rbp, rbp
	mov	rbx, r13
	nop	
	jmp	.label_1205
.label_1220:
	mov	rbp, rbp
	mov	rbx, r13
	mov	rsp, rsp
	jmp	.label_1205
.label_1216:
	mov	edi, OFFSET FLAT:.str_12
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_10
	lea	rsi, [rsi]
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4151f0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsp, rsp
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	mov	rbp, rbp
	cmp	rax, rdx
	cmovb	rcx, rsi
	lea	rsi, [rsi]
	sbb	eax, eax
	and	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415230

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	rbp, rbp
	mov	r14d, esi
	mov	rbp, rbp
	mov	r15, rdi
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rbp, rbp
	test	ebp, ebp
	je	.label_1221
	nop	word ptr cs:[rax + rax]
.label_1222:
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	esi, r14d
	nop	
	call	bkm_scale
	lea	rdi, [rdi]
	or	ebx, eax
	dec	ebp
	lea	rdi, [rdi]
	jne	.label_1222
.label_1221:
	mov	rsp, rsp
	mov	eax, ebx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4152a0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	lea	rsi, [rsi]
	push	rax
	nop	
	mov	r9d,  dword ptr [dword ptr [rip + exit_failure]]
	call	xstrtol_error
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4152c0

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	nop	
	push	r15
	push	r14
	push	rbx
	lea	rdi, [rdi]
	push	rax
	lea	rdi, [rdi]
	mov	r15d, r9d
	mov	r14, r8
	mov	rsp, rsp
	mov	eax, esi
	dec	edi
	lea	rdi, [rdi]
	cmp	edi, 4
	jae	.label_1223
	movsxd	rsi, edi
	nop	
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_1225]]
	lea	rsi, [rsi]
	cdqe	
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_1226
	lea	rsi, [rsi]
	shl	rax, 5
	nop	
	mov	rbx, qword ptr [rcx + rax]
	mov	ebp, OFFSET FLAT:.str_13
	jmp	.label_1224
.label_1226:
	nop	
	lea	rbx, [rsp + 6]
	mov	ebp, OFFSET FLAT:.str_13
	sub	rbp, rax
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 6], dl
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 7], 0
.label_1224:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, r15d
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, rbp
	nop	
	mov	r8, rbx
	mov	r9, r14
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1223:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415390

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
	mov	r13, r8
	nop	
	mov	r14d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_1231
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_1248:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1248
	mov	rbp, rbp
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r15d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_1227
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	edx, r14d
	lea	rdi, [rdi]
	call	strtoumax
	mov	rcx, rbp
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	rax, rbx
	nop	
	je	.label_1241
	nop	
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rsp, rsp
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_1244
	cmp	eax, 0x22
	jne	.label_1227
	lea	rsi, [rsi]
	mov	r12d, 1
.label_1244:
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_1234
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_1228
.label_1241:
	mov	rbp, r13
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_1227
	lea	rsi, [rsi]
	mov	rbx, rcx
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	nop	
	test	esi, esi
	mov	rsp, rsp
	je	.label_1227
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_1227
	mov	qword ptr [rsp + 8], 1
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_1234:
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	lea	rdi, [rdi]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_1243
	mov	rbp, rbp
	mov	r13, rcx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, ebx
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1232
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	nop	
	cmp	ebx, 0x2f
	ja	.label_1238
	movabs	rax, 0x814400308945
	lea	rdi, [rdi]
	bt	rax, rbx
	jae	.label_1240
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strchr
	mov	r14d, 1
	mov	rsp, rsp
	mov	rbx, r13
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1233
	nop	
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	nop	
	je	.label_1242
	cmp	ecx, 0x44
	je	.label_1242
	cmp	ecx, 0x69
	mov	rbp, rbp
	jne	.label_1233
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	mov	rsp, rsp
	je	.label_1233
	mov	r14d, 1
	jmp	.label_1233
.label_1242:
	mov	rsp, rsp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_1233:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jg	.label_1235
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	nop	
	cmp	ecx, 0xe
	nop	
	ja	.label_1247
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1246]]
.label_1529:
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_1237
.label_1235:
	cmp	eax, 0x73
	jg	.label_1250
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	mov	rsp, rsp
	cmp	ecx, 0xb
	mov	rbp, rbp
	ja	.label_1251
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1230]]
.label_1419:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_1237
.label_1247:
	cmp	eax, 0x54
	lea	rsi, [rsi]
	je	.label_1239
	nop	
	cmp	eax, 0x59
	jne	.label_1232
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 8
	jmp	.label_1229
.label_1250:
	lea	rdi, [rdi]
	cmp	eax, 0x74
	nop	
	je	.label_1239
	cmp	eax, 0x77
	nop	
	jne	.label_1232
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 2
.label_1237:
	nop	
	call	bkm_scale_0
	jmp	.label_1249
.label_1420:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	mov	rbp, rbp
	jmp	.label_1229
.label_1421:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 1
	jmp	.label_1229
.label_1422:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 2
	jmp	.label_1229
.label_1239:
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 4
	jmp	.label_1229
.label_1251:
	cmp	eax, 0x5a
	jne	.label_1232
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 7
	mov	rbp, rbp
	jmp	.label_1229
.label_1232:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	or	r12d, 2
	jmp	.label_1245
.label_1530:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_1229
.label_1531:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 5
.label_1229:
	mov	esi, r15d
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
.label_1249:
	mov	rsp, rsp
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_1236
	lea	rdi, [rdi]
	or	eax, 2
.label_1236:
	mov	r12d, eax
.label_1243:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_1228:
	mov	qword ptr [rcx], rax
.label_1245:
	mov	r15d, r12d
.label_1227:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_1238:
	lea	rsi, [rsi]
	mov	rbx, r13
	lea	rdi, [rdi]
	jmp	.label_1233
.label_1240:
	mov	rsp, rsp
	mov	rbx, r13
	lea	rsi, [rsi]
	jmp	.label_1233
.label_1231:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4157a0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	mov	rsp, rsp
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	imul	rcx, rdx
	cmp	rax, rdx
	mov	rsp, rsp
	cmovb	rcx, rsi
	sbb	eax, eax
	lea	rdi, [rdi]
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4157e0

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	lea	rsi, [rsi]
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	r15, rdi
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_1252
	nop	word ptr [rax + rax]
.label_1253:
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	call	bkm_scale_0
	or	ebx, eax
	lea	rdi, [rdi]
	dec	ebp
	mov	rsp, rsp
	jne	.label_1253
.label_1252:
	mov	rsp, rsp
	mov	eax, ebx
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415850

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_1254
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1255
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
	je	.label_1255
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
.label_1254:
	mov	ecx, 1
.label_1255:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4158c0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	memset
	.section	.text
	.align	32
	#Procedure 0x4158d0

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
	js	.label_1256
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_1258
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
	je	.label_1256
.label_1258:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1256
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_1257
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_1257:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1256:
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
	.align	32
	#Procedure 0x415990

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_1265
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
.label_1265:
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
	ja	.label_1267
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_1268
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_1259
	mov	rbp, rbp
	test	esi, esi
	jne	.label_1267
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1270
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_1263
.label_1267:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_1260
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1259
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_1264
.label_1268:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_1259:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1269
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_1272
.label_1269:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1272:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_1264:
	nop	
	cmp	eax, 6
	jne	.label_1260
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1262
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_1266
.label_1260:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1271
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1261
.label_1270:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1263:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_1262:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_1266:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_1271:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1261:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415c30

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
	.align	32
	#Procedure 0x415c50

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
	js	.label_1277
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
	jns	.label_1274
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_1274
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1273
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_1276
.label_1274:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_1276
.label_1277:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_1276:
	test	ebx, ebx
	js	.label_1273
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1273
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1275
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
	jne	.label_1273
.label_1275:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_1273:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415d60

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1278
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_1278
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_1278:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x415d90

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_1279
	mov	rbp, rbp
	ret	
.label_1279:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x415db0

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
	jne	.label_1280
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1280
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1282
.label_1280:
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
.label_1282:
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
	je	.label_1281
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1281:
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
	#Procedure 0x415e60

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
	je	.label_1283
	nop	
	cmp	r15, -2
	jb	.label_1283
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_1283
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_1283:
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
	#Procedure 0x415ef0

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	r15, rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 8], 0x3b9aca00
	jb	.label_1284
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_1286
.label_1284:
	mov	rbp, rbp
	mov	rbx, qword ptr [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	r14, [rsp]
	nop	dword ptr [rax]
.label_1287:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	nop	
	cmp	rbx, 0x1fa401
	mov	rsp, rsp
	jl	.label_1285
	mov	qword ptr [rsp], 0x1fa400
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	nop	
	call	nanosleep
	lea	rdi, [rdi]
	add	rbx, -0x1fa400
	test	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 0
	je	.label_1287
	test	r15, r15
	je	.label_1286
	add	qword ptr [r15], rbx
	jmp	.label_1286
.label_1285:
	mov	rsp, rsp
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	lea	rdi, [rdi]
	call	nanosleep
.label_1286:
	nop	
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415fc0

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
	#Procedure 0x415fe0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	nop	
	mov	qword ptr [rdi + 0x40], r8
	and	byte ptr [rdi + 0x50], 0xfe
	nop	
	call	_obstack_begin_worker
	mov	eax, 1
	mov	rsp, rsp
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416010

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	mov	r14, rdi
	nop	
	test	rdx, rdx
	mov	rbp, rbp
	mov	ebx, 0x10
	mov	rsp, rsp
	cmovne	rbx, rdx
	test	rsi, rsi
	nop	
	mov	eax, 0xfe0
	lea	rsi, [rsi]
	cmovne	rax, rsi
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	lea	r15, [rbx - 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x30], r15
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	call_chunkfun
	mov	qword ptr [r14 + 8], rax
	nop	
	test	rax, rax
	je	.label_1288
	lea	rcx, [rax + r15 + 0x10]
	lea	rsi, [rsi]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	nop	
	mov	qword ptr [r14 + 0x18], rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	add	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	and	byte ptr [r14 + 0x50], 0xf9
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	ret	
.label_1288:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	.section	.text
	.align	32
	#Procedure 0x4160c0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x48], r9
	or	byte ptr [rdi + 0x50], 1
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4160e0

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	mov	r13, rdi
	mov	rcx, qword ptr [r13]
	mov	r14, qword ptr [r13 + 0x18]
	mov	rbp, rbp
	sub	r14, qword ptr [r13 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r13 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	nop	
	add	rbx, rdx
	lea	rsi, [rsi]
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_1289
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_1289
	mov	r15, qword ptr [r13 + 8]
	nop	
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, rbx
	call	call_chunkfun
	mov	rsp, rsp
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_1289
	mov	qword ptr [r13 + 8], r12
	mov	qword ptr [r12 + 8], r15
	mov	rsp, rsp
	add	rbx, r12
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x20], rbx
	lea	rsi, [rsi]
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rbx, qword ptr [r13 + 0x30]
	mov	rsp, rsp
	lea	rax, [r12 + rbx + 0x10]
	not	rbx
	mov	rsp, rsp
	and	rbx, rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rdx, r14
	mov	rsp, rsp
	call	memcpy
	test	byte ptr [r13 + 0x50], 2
	lea	rdi, [rdi]
	jne	.label_1290
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x30]
	mov	rsp, rsp
	lea	rcx, [r15 + rax + 0x10]
	lea	rdi, [rdi]
	not	rax
	and	rax, rcx
	cmp	qword ptr [r13 + 0x10], rax
	jne	.label_1290
	mov	rax, qword ptr [r15 + 8]
	nop	
	mov	qword ptr [r12 + 8], rax
	mov	rdi, r13
	mov	rsi, r15
	lea	rsi, [rsi]
	call	call_freefun
.label_1290:
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r13 + 0x18], r14
	lea	rsi, [rsi]
	and	byte ptr [r13 + 0x50], 0xfd
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
.label_1289:
	nop	
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416220

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	nop	
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_1291
	mov	rdi, rsi
	nop	
	jmp	qword ptr [rax + 0x38]
.label_1291:
	mov	rcx, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	jmp	rcx
	nop	
	.section	.text
	.align	32
	#Procedure 0x416240

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_1292
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x40]
.label_1292:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416260

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_1293
	nop	word ptr cs:[rax + rax]
.label_1296:
	mov	rcx, qword ptr [rcx + 8]
.label_1293:
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_1294
	lea	rsi, [rsi]
	cmp	rcx, rsi
	jae	.label_1296
	lea	rdi, [rdi]
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_1296
	mov	rbp, rbp
	jmp	.label_1295
.label_1294:
	xor	eax, eax
.label_1295:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4162a0

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	nop	
	mov	rsi, qword ptr [r15 + 8]
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_1297
	nop	
.label_1300:
	cmp	rsi, r14
	mov	rbp, rbp
	jae	.label_1298
	cmp	qword ptr [rsi], r14
	jae	.label_1299
.label_1298:
	mov	rbx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsp, rsp
	call	call_freefun
	or	byte ptr [r15 + 0x50], 2
	nop	
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_1300
.label_1297:
	test	r14, r14
	je	.label_1301
	call	abort
.label_1299:
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], r14
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], r14
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_1301:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416330

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 8]
	nop	
	xor	eax, eax
	jmp	.label_1302
	nop	dword ptr [rax]
.label_1303:
	sub	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
.label_1302:
	mov	rbp, rbp
	test	rcx, rcx
	nop	
	jne	.label_1303
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416360

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	nop
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_2
	nop	
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4163b0
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4163c0
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	lea	rdi, [rdi]
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4163d0
	.globl rotl32
	.type rotl32, @function
rotl32:

	lea	rdi, [rdi]
	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4163e0
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4163f0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	mov	rbp, rbp
	rol	rdi, cl
	mov	rax, rdi
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416400

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416410
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	lea	rsi, [rsi]
	mov	ecx, 0x10
	mov	rsp, rsp
	sub	ecx, esi
	mov	rbp, rbp
	shr	edi, cl
	or	edi, eax
	mov	rbp, rbp
	movzx	eax, di
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416440
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	rbp, rbp
	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	rsp, rsp
	sub	ecx, esi
	shl	edi, cl
	lea	rsi, [rsi]
	or	edi, eax
	movzx	eax, di
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416470
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	rbp, rbp
	mov	eax, edi
	nop	
	mov	cl, sil
	mov	rsp, rsp
	shl	eax, cl
	mov	rsp, rsp
	mov	ecx, 8
	sub	ecx, esi
	nop	
	shr	edi, cl
	lea	rdi, [rdi]
	or	edi, eax
	movzx	eax, dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4164a0
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	rsp, rsp
	mov	cl, sil
	nop	
	shr	eax, cl
	mov	rsp, rsp
	mov	ecx, 8
	lea	rsi, [rsi]
	sub	ecx, esi
	lea	rdi, [rdi]
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4164d0

	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:
	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1304
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_1304
.label_1305:
	ret	
.label_1304:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1305
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416500

	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:
	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1306
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1306:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x416520
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416530
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
	.align	32
	#Procedure 0x416540
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1307
.label_1308:
	ret	
.label_1307:
	cmp	edi, 0x7f
	je	.label_1308
	xor	eax, eax
	jmp	.label_1308
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416560

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416570
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416580
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416590
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4165a0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_1309
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_1309
.label_1310:
	ret	
.label_1309:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_1310
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4165d0

	.globl c_isspace
	.type c_isspace, @function
c_isspace:
	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1311
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_1311:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4165f0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416600
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1312
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1312:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x416620
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
	.align	32
	#Procedure 0x416630
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
	.align	32
	#Procedure 0x416640

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
	je	.label_1313
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1314
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_1314
.label_1313:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_1314
	test	cl, cl
	jne	.label_1314
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_1314:
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
	.align	32
	#Procedure 0x4166e0

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	movabs	rdi, 0x7fffffffffffffff
	nop	
	ucomisd	xmm0,  qword ptr [word ptr [rip + label_1315]]
	mov	rbp, rbp
	jbe	.label_1316
	movsd	xmm1,  qword ptr [word ptr [rip + label_147]]
	lea	rsi, [rsi]
	ucomisd	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_1317
	mov	rsp, rsp
	cvttsd2si	rdi, xmm0
	lea	rdi, [rdi]
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rdi
	subsd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_1319]]
	cvttsd2si	rax, xmm0
	mov	rbp, rbp
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	ucomisd	xmm0, xmm1
	seta	cl
	movzx	ecx, cl
	lea	rdi, [rdi]
	add	rcx, rax
	movabs	rdx, 0x112e0be826d694b3
	nop	
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	nop	
	shr	rax, 0x3f
	mov	rbp, rbp
	sar	rdx, 0x1a
	lea	rsi, [rsi]
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	nop	
	mov	rsi, rcx
	sub	rsi, rax
	mov	rbp, rbp
	add	rsi, 0x3b9aca00
	lea	rdi, [rdi]
	sub	rcx, rax
	cmovns	rsi, rcx
	lea	rdi, [rdi]
	add	rdi, rdx
	sar	rcx, 0x3f
	add	rcx, rdi
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	jmp	.label_1318
.label_1316:
	inc	rdi
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_1318
.label_1317:
	nop	
	mov	esi, 0x3b9ac9ff
.label_1318:
	lea	rsi, [rsi]
	call	make_timespec
	mov	rsp, rsp
	pop	rcx
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4167e0

	.globl fd_safer_flag
	.type fd_safer_flag, @function
fd_safer_flag:
	nop
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	rbp, rbp
	cmp	ebx, 2
	lea	rdi, [rdi]
	ja	.label_1320
	lea	rsi, [rsi]
	mov	edi, ebx
	lea	rsi, [rsi]
	call	dup_safer_flag
	mov	rbp, rbp
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r15d, dword ptr [rbp]
	lea	rdi, [rdi]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	mov	rsp, rsp
	jmp	.label_1321
.label_1320:
	mov	eax, ebx
.label_1321:
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x416850

	.globl dup_safer_flag
	.type dup_safer_flag, @function
dup_safer_flag:
	nop	
	and	esi, 0x80000
	mov	eax, 0x406
	cmovne	esi, eax
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	32
	#Procedure 0x416870

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	call	fopen
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1322
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1323
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1326
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1324
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_1322
.label_1324:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_1325
.label_1323:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_1322
.label_1326:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1325:
	xor	eax, eax
.label_1322:
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416950

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
	mov	eax, OFFSET FLAT:.str.1_11
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1327
	nop	
	mov	rax, rcx
.label_1327:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416990

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	nop	
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	nop	
	cmp	rbx, r15
	mov	rbp, rbp
	jne	.label_1328
	mov	rdi, r12
	nop	
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1330
.label_1328:
	mov	rsp, rsp
	mov	bpl, byte ptr [r12 + rbx]
	mov	r13b, byte ptr [r14 + r15]
	mov	byte ptr [r12 + rbx], 0
	mov	rsp, rsp
	mov	byte ptr [r14 + r15], 0
	lea	rsi, [rbx + 1]
	nop	
	lea	rcx, [r15 + 1]
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rbp, rbp
	call	strcoll_loop
	nop	
	mov	byte ptr [r12 + rbx], bpl
	mov	byte ptr [r14 + r15], r13b
	lea	rsi, [rsi]
	jmp	.label_1329
.label_1330:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_1329:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416a40

	.globl strcoll_loop
	.type strcoll_loop, @function
strcoll_loop:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_1332:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	call	strcoll
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_1331
	mov	rdi, rbx
	call	strlen
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strlen
	inc	rax
	sub	r15, rbp
	mov	rsp, rsp
	je	.label_1333
	mov	rbp, rbp
	add	r12, rax
	add	rbx, rbp
	mov	rsp, rsp
	sub	r14, rax
	mov	eax, 1
	jne	.label_1332
	nop	
	jmp	.label_1331
.label_1333:
	lea	rsi, [rsi]
	xor	ecx, ecx
	cmp	r14, rax
	nop	
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_1331:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416b10

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	r15
	push	r14
	nop	
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	r14, rdx
	nop	
	mov	rbx, rsi
	mov	r12, rdi
	nop	
	cmp	rbx, r15
	nop	
	jne	.label_1334
	nop	
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1335
.label_1334:
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r14
	pop	r15
	jmp	strcoll_loop
.label_1335:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416ba0

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	mov	rax, rdi
	mov	rdx, rsi
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416bb0
	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:

	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_1336
	mov	rbp, rbp
	mov	eax, 1
	mov	rbp, rbp
	jg	.label_1336
	mov	rbp, rbp
	sub	esi, ecx
	mov	eax, esi
.label_1336:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416be0
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	mov	rsp, rsp
	or	rsi, rdi
	setne	al
	test	rdi, rdi
	movzx	ecx, al
	mov	rbp, rbp
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416c00
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_1319]]
	nop	
	addsd	xmm0, xmm1
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416c20

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416cf0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section .text
	.align	32
	#Procedure 0x416d00

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat