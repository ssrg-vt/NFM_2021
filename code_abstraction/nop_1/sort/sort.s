	.section	.text
	.align	32
	#Procedure 0x402cc0

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
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.16
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
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
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
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
	.align	32
	#Procedure 0x402fb0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fe0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403010

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.68
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.22
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
	mov	ebx, OFFSET FLAT:.str.22
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.22
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.82
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
	.align	32
	#Procedure 0x403130

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2b8
	mov	rbx, rsi
	mov	dword ptr [rsp + 0x68], edi
	mov	edi, OFFSET FLAT:.str.23
	call	getenv
	mov	qword ptr [rsp + 0x60], rax
	call	posix2_version
	add	eax, 0xfffcf250
	cmp	eax, 0x2b8
	seta	al
	mov	dword ptr [rsp + 0x5c], eax
	mov	rdi, qword ptr [rbx]
	mov	r14, rbx
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	setne	byte ptr [rsp + 0x2f]
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.26
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.25
	call	textdomain
	call	initialize_exit_failure
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  al
	mov	edi, 2
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_TIME]],  al
	call	localeconv
	mov	rbx, rax
	mov	rax, qword ptr [rbx]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	eax, al
	mov	dword ptr [dword ptr [rip + decimal_point]],  eax
	test	al, al
	je	.label_109
	mov	rax, qword ptr [rbx]
	cmp	byte ptr [rax + 1], 0
	je	.label_111
.label_109:
	mov	dword ptr [dword ptr [rip + decimal_point]],  0x2e
.label_111:
	mov	rax, qword ptr [rbx + 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	eax, al
	mov	dword ptr [dword ptr [rip + thousands_sep]],  eax
	test	al, al
	je	.label_14
	mov	rax, qword ptr [rbx + 8]
	cmp	byte ptr [rax + 1], 0
	je	.label_18
.label_14:
	mov	dword ptr [dword ptr [rip + thousands_sep]],  0xffffffff
.label_18:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	call	inittables
	mov	edi, OFFSET FLAT:caught_signals
	call	sigemptyset
	mov	rbp, -0x2c
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_45:
	mov	edi,  dword ptr [dword ptr [rbp + label_36]]
	xor	esi, esi
	mov	rdx, rbx
	call	sigaction
	cmp	qword ptr [rsp + 0x70], 1
	je	.label_40
	mov	esi,  dword ptr [dword ptr [rbp + label_36]]
	mov	edi, OFFSET FLAT:caught_signals
	call	sigaddset
.label_40:
	add	rbp, 4
	jne	.label_45
	mov	qword ptr [word ptr [rsp + 112]], OFFSET FLAT:sighandler
	movups	xmm0,  xmmword ptr [word ptr [rip + label_46]]
	movups	xmmword ptr [rsp + 0xe8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_47]]
	movups	xmmword ptr [rsp + 0xd8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_48]]
	movups	xmmword ptr [rsp + 0xc8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_49]]
	movups	xmmword ptr [rsp + 0xb8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_50]]
	movups	xmmword ptr [rsp + 0xa8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_51]]
	movups	xmmword ptr [rsp + 0x98], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_52]]
	movups	xmmword ptr [rsp + 0x88], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	movups	xmmword ptr [rsp + 0x78], xmm0
	mov	dword ptr [rsp + 0xf8], 0
	mov	rbp, -0x2c
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_91:
	mov	esi,  dword ptr [dword ptr [rbp + label_36]]
	mov	edi, OFFSET FLAT:caught_signals
	call	sigismember
	test	eax, eax
	je	.label_90
	mov	edi,  dword ptr [dword ptr [rbp + label_36]]
	xor	edx, edx
	mov	rsi, rbx
	call	sigaction
.label_90:
	add	rbp, 4
	jne	.label_91
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	mov	edi, 0x11
	xor	esi, esi
	call	signal
	mov	edi, OFFSET FLAT:exit_cleanup
	call	atexit
	lea	rdi, [rsp + 0x228]
	call	key_init
	mov	qword ptr [rsp + 0x228], -1
	movsxd	rdi, dword ptr [rsp + 0x68]
	mov	esi, 8
	call	xnmalloc
	mov	r12, rax
	cmp	qword ptr [rsp + 0x60], 0
	sete	byte ptr [rsp + 0x1f]
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	r15d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	r13d, r13d
	xor	ebx, ebx
	xor	eax, eax
	mov	rbp, r14
	jmp	.label_22
	nop	word ptr [rax + rax]
.label_68:
	mov	r13b, cl
.label_22:
	mov	dword ptr [rsp + 0x70], 0xffffffff
	cmp	eax, -1
	je	.label_108
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_30
	test	r15, r15
	je	.label_30
	mov	ecx, dword ptr [rsp + 0x5c]
	test	cl, 1
	je	.label_11
	test	bl, bl
	jne	.label_11
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	cmp	ecx, dword ptr [rsp + 0x68]
	je	.label_11
	mov	rdx, qword ptr [rbp + rcx*8]
	movzx	esi, byte ptr [rdx]
	cmp	esi, 0x2d
	jne	.label_11
	movzx	esi, byte ptr [rdx + 1]
	cmp	esi, 0x6f
	jne	.label_11
	inc	ecx
	cmp	ecx, dword ptr [rsp + 0x68]
	jne	.label_30
	mov	cl, byte ptr [rdx + 2]
	test	cl, cl
	je	.label_11
.label_30:
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rsp + 0x68]
	mov	rsi, rbp
	lea	r8, [rsp + 0x70]
	call	getopt_long
	mov	r14d, eax
	test	r14d, r14d
	jle	.label_24
	lea	edx, [r14 - 0x43]
	cmp	edx, 0x44
	ja	.label_41
	mov	eax, 0x6d
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_44]]
.label_1379:
	mov	edi, dword ptr [rsp + 0x70]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movsx	esi, r14b
	call	specify_sort_size
	mov	eax, 0x53
	jmp	.label_16
	nop	word ptr cs:[rax + rax]
.label_108:
	mov	eax, 0xffffffff
.label_11:
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	cmp	ecx, dword ptr [rsp + 0x68]
	jge	.label_62
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + optind]],  edx
	mov	rcx, qword ptr [rbp + rcx*8]
	mov	qword ptr [r12 + r15*8], rcx
	inc	r15
.label_16:
	mov	cl, r13b
	jmp	.label_68
.label_24:
	cmp	r14d, -1
	mov	eax, 0xffffffff
	je	.label_11
	jmp	.label_71
.label_41:
	cmp	r14d, 1
	jne	.label_75
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2b
	jne	.label_78
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, dword ptr [rsp + 0x68]
	jne	.label_81
	mov	qword ptr [rsp + 0x50], rbx
	xor	edx, edx
	jmp	.label_64
.label_1388:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r14d, 0x63
	test	rsi, rsi
	je	.label_88
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.33
	mov	edx, OFFSET FLAT:check_args
	mov	ecx, OFFSET FLAT:check_types
	mov	r8d, 1
	call	__xargmatch_internal
	movsx	r14d,  byte ptr [byte ptr [rax + check_types]]
.label_88:
	test	bl, bl
	je	.label_94
	movsx	eax, bl
	cmp	eax, r14d
	jne	.label_95
.label_94:
	mov	cl, r13b
	mov	bl, r14b
	mov	eax, r14d
	jmp	.label_22
.label_1390:
	mov	byte ptr [byte ptr [rip + debug]],  1
	mov	eax, 0x82
	jmp	.label_16
.label_1391:
	mov	eax, 0x83
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x40], rcx
	jmp	.label_16
.label_1394:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.32
	mov	edx, OFFSET FLAT:sort_args
	mov	ecx, OFFSET FLAT:sort_types
	mov	r8d, 1
	call	__xargmatch_internal
	movsx	r14d,  byte ptr [byte ptr [rax + sort_types]]
.label_1378:
	mov	byte ptr [rsp + 0x6e], r14b
	mov	byte ptr [rsp + 0x6f], 0
	mov	edx, 2
	lea	rdi, [rsp + 0x6e]
	lea	rsi, [rsp + 0x228]
	call	set_ordering
.label_79:
	mov	cl, r13b
	mov	eax, r14d
	jmp	.label_22
.label_1380:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	add_temp_dir
	mov	eax, 0x54
	jmp	.label_16
.label_1382:
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_19
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	test	eax, eax
	jne	.label_25
.label_19:
	mov	eax, 0x6f
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_16
.label_1384:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_34
	mov	dl, byte ptr [rax + 1]
	test	dl, dl
	je	.label_38
	movzx	ecx, cl
	cmp	ecx, 0x5c
	jne	.label_42
	movzx	ecx, dl
	cmp	ecx, 0x30
	jne	.label_42
	cmp	byte ptr [rax + 2], 0
	jne	.label_42
	xor	ecx, ecx
.label_38:
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	cmp	edx, 0x80
	movsx	eax, cl
	je	.label_53
	cmp	edx, eax
	jne	.label_57
.label_53:
	mov	dword ptr [dword ptr [rip + tab]],  eax
	mov	eax, 0x74
	jmp	.label_16
.label_1385:
	mov	byte ptr [byte ptr [rip + unique]],  1
	mov	eax, 0x75
	jmp	.label_16
.label_1386:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	movsxd	rdx,  dword ptr [dword ptr [rip + optind]]
	mov	eax, 0x79
	cmp	rcx, qword ptr [rbp + rdx*8 - 8]
	jne	.label_16
	nop	word ptr [rax + rax]
.label_73:
	movsx	eax, byte ptr [rcx]
	lea	edx, [rax - 0x30]
	inc	rcx
	cmp	edx, 0xa
	jb	.label_73
	cmp	al, 1
	adc	dword ptr [dword ptr [rip + optind]],  -1
	jmp	.label_79
.label_1387:
	mov	byte ptr [byte ptr [rip + eolchar]],  1
	mov	eax, 0x7a
	jmp	.label_16
.label_1389:
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	test	rdi, rdi
	je	.label_84
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	test	eax, eax
	jne	.label_89
.label_84:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + compress_program]],  rax
	mov	eax, 0x81
	jmp	.label_16
.label_1395:
	mov	edi, dword ptr [rsp + 0x70]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movsx	esi, r14b
	call	specify_nthreads
	mov	qword ptr [rsp + 0x30], rax
	mov	eax, 0x87
	jmp	.label_16
.label_1381:
	lea	rdi, [rsp + 0x270]
	call	key_init
	mov	r14, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	edx, OFFSET FLAT:.str.36
	mov	rsi, r14
	call	parse_field_count
	mov	rcx, qword ptr [r14]
	lea	rdx, [rcx - 1]
	mov	qword ptr [r14], rdx
	test	rcx, rcx
	je	.label_21
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_102
	inc	rax
	lea	rsi, [r14 + 8]
	mov	edx, OFFSET FLAT:.str.30
	mov	rdi, rax
	call	parse_field_count
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx - 1]
	mov	qword ptr [r14 + 8], rdx
	test	rcx, rcx
	je	.label_104
.label_102:
	cmp	qword ptr [r14], 0
	jne	.label_107
	cmp	qword ptr [r14 + 8], 0
	jne	.label_107
	mov	qword ptr [r14], -1
.label_107:
	xor	edx, edx
	mov	rdi, rax
	mov	rsi, r14
	call	set_ordering
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jne	.label_13
	inc	rax
	lea	rsi, [r14 + 0x10]
	mov	edx, OFFSET FLAT:.str.39
	mov	rdi, rax
	call	parse_field_count
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rdx, [rcx - 1]
	mov	qword ptr [r14 + 0x10], rdx
	test	rcx, rcx
	je	.label_21
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_26
	inc	rax
	mov	rsi, r14
	add	rsi, 0x18
	mov	edx, OFFSET FLAT:.str.30
	mov	rdi, rax
	call	parse_field_count
.label_26:
	mov	edx, 1
	mov	rdi, rax
	mov	rsi, r14
	call	set_ordering
	jmp	.label_39
.label_1383:
	mov	byte ptr [byte ptr [rip + stable]],  1
	mov	eax, 0x73
	jmp	.label_16
.label_1392:
	mov	edi, dword ptr [rsp + 0x70]
	mov	rdx,  qword ptr [word ptr [rip + optarg]]
	movsx	esi, r14b
	call	specify_nmerge
	mov	eax, 0x84
	jmp	.label_16
.label_1393:
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_55
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	test	eax, eax
	jne	.label_60
.label_55:
	mov	eax, 0x85
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x38], rcx
	jmp	.label_16
.label_13:
	mov	qword ptr [r14 + 0x10], -1
	mov	qword ptr [r14 + 0x18], 0
.label_39:
	cmp	byte ptr [rax], 0
	jne	.label_67
	mov	rdi, r14
	call	insertkey
	mov	eax, 0x6b
	jmp	.label_16
.label_81:
	mov	qword ptr [rsp + 0x50], rbx
	mov	rax, qword ptr [rbp + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_76
	movsx	eax, byte ptr [rax + 1]
	add	eax, -0x30
	cmp	eax, 0xa
	setb	dl
	jmp	.label_64
.label_76:
	xor	edx, edx
.label_64:
	mov	al, dl
	and	al, byte ptr [rsp + 0x1f]
	mov	ecx, dword ptr [rsp + 0x5c]
	and	cl, 1
	or	cl, al
	mov	dword ptr [rsp + 0x5c], ecx
	je	.label_83
	mov	dword ptr [rsp + 0x10], edx
	lea	rdi, [rsp + 0x270]
	call	key_init
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	inc	rdi
	xor	edx, edx
	mov	rsi, rbx
	call	parse_field_count
	test	rax, rax
	mov	edi, 0
	je	.label_92
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	mov	rdi, rax
	jne	.label_92
	inc	rax
	lea	rsi, [rbx + 8]
	xor	edx, edx
	mov	rdi, rax
	call	parse_field_count
	mov	rdi, rax
.label_92:
	cmp	qword ptr [rbx], 0
	jne	.label_80
	cmp	qword ptr [rbx + 8], 0
	jne	.label_80
	mov	qword ptr [rbx], -1
.label_80:
	test	rdi, rdi
	je	.label_98
	xor	edx, edx
	mov	rsi, rbx
	call	set_ordering
	cmp	byte ptr [rax], 0
	jne	.label_98
	mov	eax, dword ptr [rsp + 0x10]
	test	al, al
	je	.label_61
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rax, qword ptr [rbp + rax*8]
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rax + 1]
	lea	rsi, [rbx + 0x10]
	mov	qword ptr [rsp + 0x10], rsi
	mov	edx, OFFSET FLAT:.str.27
	call	parse_field_count
	test	rax, rax
	je	.label_100
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_105
	inc	rax
	mov	rsi, rbx
	add	rsi, 0x18
	mov	edx, OFFSET FLAT:.str.30
	mov	rdi, rax
	call	parse_field_count
.label_105:
	cmp	qword ptr [rbx + 0x18], 0
	jne	.label_15
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rcx]
	test	rcx, rcx
	je	.label_15
	dec	rcx
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rdx], rcx
.label_15:
	mov	edx, 1
	mov	rdi, rax
	mov	rsi, rbx
	call	set_ordering
	cmp	byte ptr [rax], 0
	jne	.label_31
.label_61:
	mov	byte ptr [rbx + 0x39], 1
	mov	rdi, rbx
	call	insertkey
	mov	cl, r13b
	mov	eax, r14d
	mov	rbx, qword ptr [rsp + 0x50]
	jmp	.label_22
.label_83:
	mov	dword ptr [rsp + 0x5c], 0
.label_98:
	mov	rbx, qword ptr [rsp + 0x50]
.label_78:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [r12 + r15*8], rax
	inc	r15
	jmp	.label_79
.label_62:
	mov	rdi, qword ptr [rsp + 0x40]
	test	rdi, rdi
	je	.label_37
	mov	r14, rbx
	test	r15, r15
	jne	.label_56
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
	je	.label_66
	mov	rdi, rbx
	mov	rsi, r15
	call	xfclose
	cmp	qword ptr [rsp + 0x108], 0
	je	.label_70
	mov	rdi, r12
	call	free
	mov	r15, qword ptr [rsp + 0x108]
	mov	r12, qword ptr [rsp + 0x110]
	xor	ebp, ebp
	mov	rbx, r14
	nop	
.label_87:
	cmp	rbp, r15
	jae	.label_37
	mov	rax, qword ptr [r12 + rbp*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_82
	cmp	byte ptr [rax + 1], 0
	je	.label_103
.label_82:
	mov	rax, qword ptr [r12 + rbp*8]
	inc	rbp
	cmp	byte ptr [rax], 0
	jne	.label_87
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x40]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	r8, rbp
	call	error
.label_37:
	mov	qword ptr [rsp + 0x50], rbx
	mov	rbp,  qword ptr [word ptr [rip + keylist]]
	xor	ebx, ebx
	test	rbp, rbp
	je	.label_23
	nop	word ptr [rax + rax]
.label_20:
	mov	rdi, rbp
	call	default_key_compare
	test	al, al
	je	.label_99
	cmp	byte ptr [rbp + 0x37], 0
	jne	.label_99
	mov	rax, qword ptr [rsp + 0x248]
	mov	qword ptr [rbp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x250]
	mov	qword ptr [rbp + 0x28], rax
	mov	al, byte ptr [rsp + 0x258]
	mov	byte ptr [rbp + 0x30], al
	mov	al, byte ptr [rsp + 0x259]
	mov	byte ptr [rbp + 0x31], al
	mov	al, byte ptr [rsp + 0x25e]
	mov	byte ptr [rbp + 0x36], al
	mov	al, byte ptr [rsp + 0x25a]
	mov	byte ptr [rbp + 0x32], al
	mov	al, byte ptr [rsp + 0x25c]
	mov	byte ptr [rbp + 0x34], al
	mov	al, byte ptr [rsp + 0x25d]
	mov	byte ptr [rbp + 0x35], al
	mov	al, byte ptr [rsp + 0x260]
	mov	byte ptr [rbp + 0x38], al
	mov	al, byte ptr [rsp + 0x25b]
	mov	byte ptr [rbp + 0x33], al
	mov	al, byte ptr [rsp + 0x25f]
	mov	byte ptr [rbp + 0x37], al
	nop	dword ptr [rax + rax]
.label_99:
	or	bl, byte ptr [rbp + 0x33]
	mov	rbp, qword ptr [rbp + 0x40]
	test	rbp, rbp
	jne	.label_20
	cmp	qword ptr [word ptr [rip + keylist]],  0
	je	.label_23
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x48]
	jmp	.label_28
.label_23:
	mov	r14, qword ptr [rsp + 0x48]
	lea	rdi, [rsp + 0x228]
	call	default_key_compare
	test	al, al
	je	.label_35
	xor	ebp, ebp
	jmp	.label_28
.label_35:
	lea	rdi, [rsp + 0x228]
	call	insertkey
	or	bl, byte ptr [rsp + 0x25b]
	mov	bpl, 1
.label_28:
	call	check_ordering_compatibility
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_43
	test	r14, r14
	jne	.label_33
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	jne	.label_33
	mov	dword ptr [rsp + 0x68], ebp
	cmp	qword ptr [rsp + 0x20], 0
	mov	al, byte ptr [rsp + 0x2f]
	je	.label_58
	mov	edi, 3
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	test	rax, rax
	setne	al
.label_58:
	test	al, al
	jne	.label_59
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	call	error
.label_59:
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_72
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 3
	xor	esi, esi
	call	setlocale
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	jmp	.label_86
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
.label_86:
	call	error
	mov	eax, dword ptr [rsp + 0x68]
	movzx	esi, al
	lea	rdi, [rsp + 0x228]
	call	key_warnings
.label_43:
	mov	al, byte ptr [rsp + 0x25f]
	mov	byte ptr [byte ptr [rip + reverse]],  al
	test	bl, 1
	je	.label_93
	mov	rdi, qword ptr [rsp + 0x38]
	call	random_md5_state_init
.label_93:
	cmp	qword ptr [word ptr [rip + temp_dir_count]],  0
	mov	rbx, qword ptr [rsp + 0x50]
	jne	.label_97
	mov	edi, OFFSET FLAT:.str.62
	call	getenv
	test	rax, rax
	mov	edi, OFFSET FLAT:.str.16
	cmovne	rdi, rax
	call	add_temp_dir
.label_97:
	test	r15, r15
	jne	.label_101
	mov	rdi, r12
	call	free
	mov	edi, 8
	call	xmalloc
	mov	r12, rax
	mov	qword ptr [word ptr [r12]], OFFSET FLAT:.str.54
	mov	r15d, 1
.label_101:
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	test	rax, rax
	je	.label_106
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	cmova	rcx, rax
	mov	qword ptr [word ptr [rip + sort_size]],  rcx
.label_106:
	test	bl, bl
	je	.label_112
	cmp	r15, 2
	jae	.label_96
	test	r14, r14
	jne	.label_12
	mov	rdi, qword ptr [r12]
	movsx	esi, bl
	call	check
	movzx	ebx, al
	xor	ebx, 1
	jmp	.label_17
.label_112:
	mov	rdi, r12
	mov	rsi, r15
	call	check_inputs
	mov	rdi, r14
	call	check_output
	test	r13b, 1
	jne	.label_27
	mov	rbx, r14
	movabs	rbp, 0xffffffffffffff
	mov	rcx, qword ptr [rsp + 0x30]
	test	rcx, rcx
	jne	.label_29
	mov	edi, 2
	call	num_processors
	cmp	rax, 8
	mov	ecx, 8
	cmovb	rcx, rax
.label_29:
	cmp	rcx, rbp
	cmovb	rbp, rcx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rbx
	mov	rcx, rbp
	call	sort
	jmp	.label_85
.label_27:
	mov	esi, 0x10
	mov	rdi, r15
	call	xcalloc
	xor	ecx, ecx
	test	r15, r15
	je	.label_54
	mov	rdx, rax
	nop	
.label_63:
	mov	rsi, qword ptr [r12 + rcx*8]
	mov	qword ptr [rdx], rsi
	inc	rcx
	add	rdx, 0x10
	cmp	rcx, r15
	jb	.label_63
.label_54:
	xor	esi, esi
	mov	rdi, rax
	mov	rdx, r15
	mov	rcx, r14
	call	merge
.label_85:
	xor	ebx, ebx
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_17
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_69
.label_17:
	mov	eax, ebx
	add	rsp, 0x2b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_71:
	cmp	r14d, 0xffffff7d
	je	.label_110
	cmp	r14d, 0xffffff7e
	jne	.label_75
	xor	edi, edi
	call	usage
.label_110:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, OFFSET FLAT:.str.17_0
	mov	r8d, OFFSET FLAT:.str.47
	mov	r9d, OFFSET FLAT:.str.48
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12 + rbp*8]
	mov	edi, 4
.label_74:
	call	quotearg_style
.label_32:
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_75:
	mov	edi, 2
	call	usage
.label_95:
	mov	edi, OFFSET FLAT:.str.34
	call	incompatible_options
.label_21:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:.str.37
	call	badfieldspec
.label_56:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 2
	call	usage
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	jmp	.label_74
.label_70:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	jmp	.label_74
.label_96:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r12 + 8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	movsx	r8d, bl
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_12:
	mov	byte ptr [byte ptr [rip + main.opts.64]],  bl
	mov	edi, OFFSET FLAT:main.opts.64
	call	incompatible_options
.label_42:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	jmp	.label_32
.label_33:
	mov	rax, qword ptr [rsp + 0x50]
	test	al, al
	jne	.label_65
	mov	al, 0x6f
	mov	qword ptr [rsp + 0x50], rax
.label_65:
	mov	rax, qword ptr [rsp + 0x50]
	mov	byte ptr [byte ptr [rip + main.opts]],  al
	mov	edi, OFFSET FLAT:main.opts
	call	incompatible_options
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	jmp	.label_77
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	jmp	.label_77
.label_67:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:.str.31
	call	badfieldspec
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	jmp	.label_77
.label_89:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	jmp	.label_77
.label_60:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
.label_77:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_104:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:.str.38
	call	badfieldspec
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	esi, OFFSET FLAT:.str.54
	mov	rdi, rax
	call	sort_die
.label_100:
	mov	edi, OFFSET FLAT:.str.28
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 0x1112
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_31:
	mov	esi, OFFSET FLAT:.str.31
	mov	rdi, qword ptr [rsp + 8]
	call	badfieldspec
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041b0

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  2
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041c0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041d0

	.globl inittables
	.type inittables, @function
inittables:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	xor	ebx, ebx
	call	__ctype_b_loc
	mov	r14, rax
	nop	word ptr cs:[rax + rax]
.label_121:
	movzx	edi, bl
	call	field_sep
	mov	byte ptr [byte ptr [rbx + blanks]],  al
	mov	rax, qword ptr [r14]
	movzx	eax, word ptr [rax + rbx*2]
	shr	eax, 0xe
	not	eax
	and	eax, 1
	mov	byte ptr [byte ptr [rbx + nonprinting]],  al
	mov	rax, qword ptr [r14]
	test	byte ptr [rax + rbx*2], 8
	jne	.label_118
	movzx	edi, bl
	call	field_sep
	xor	al, 1
	jmp	.label_117
	nop	dword ptr [rax + rax]
.label_118:
	xor	eax, eax
.label_117:
	mov	byte ptr [byte ptr [rbx + nondictionary]],  al
	mov	edi, ebx
	call	toupper
	mov	byte ptr [byte ptr [rbx + fold_toupper]],  al
	inc	rbx
	cmp	rbx, 0x100
	jne	.label_121
	xor	r13d, r13d
	cmp	byte ptr [byte ptr [rip + hard_LC_TIME]],  0
	je	.label_113
	nop	word ptr cs:[rax + rax]
.label_120:
	lea	edi, [r13 + 0x2000e]
	call	rpl_nl_langinfo
	mov	rbx, rax
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	lea	rdi, [r14 + 1]
	call	xmalloc
	mov	r15, rax
	mov	rax, r13
	shl	rax, 4
	mov	qword ptr [word ptr [rax + monthtab]],  r15
	inc	r13
	mov	dword ptr [dword ptr [rax + label_114]],  r13d
	test	r14, r14
	mov	ebp, 0
	je	.label_115
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_119:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [r12]
	test	byte ptr [rcx + rax*2], 1
	jne	.label_116
	mov	al,  byte ptr [byte ptr [rax + fold_toupper]]
	mov	byte ptr [r15 + rbp], al
	inc	rbp
.label_116:
	inc	rbx
	dec	r14
	jne	.label_119
.label_115:
	mov	byte ptr [r15 + rbp], 0
	cmp	r13, 0xc
	jne	.label_120
	mov	edi, OFFSET FLAT:monthtab
	mov	esi, 0xc
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:struct_month_cmp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	qsort
.label_113:
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
	.align	32
	#Procedure 0x404340

	.globl sighandler
	.type sighandler, @function
sighandler:
	push	rbx
	mov	ebx, edi
	call	cleanup
	xor	esi, esi
	mov	edi, ebx
	call	signal
	mov	edi, ebx
	pop	rbx
	jmp	raise
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404360

	.globl exit_cleanup
	.type exit_cleanup, @function
exit_cleanup:
	push	rbx
	sub	rsp, 0x90
	cmp	qword ptr [word ptr [rip + temphead]],  0
	je	.label_122
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	cs_enter
	call	cleanup
	mov	rdi, rbx
	call	cs_leave
.label_122:
	call	close_stdout
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043a0

	.globl key_init
	.type key_init, @function
key_init:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x30], xmm0
	movups	xmmword ptr [rdi + 0x20], xmm0
	movups	xmmword ptr [rdi + 0x10], xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x40], 0
	mov	qword ptr [rdi + 0x10], -1
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043d0

	.globl parse_field_count
	.type parse_field_count, @function
parse_field_count:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_124
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_123]]
.label_1485:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	jmp	.label_124
.label_1486:
	mov	qword ptr [rbx], -1
.label_124:
	mov	rax, qword ptr [rsp + 0x10]
.label_125:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1487:
	xor	eax, eax
	test	r14, r14
	je	.label_125
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.124
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
	mov	r14, rax
	mov	rdi, r15
	call	quote
	mov	rbx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404480

	.globl set_ordering
	.type set_ordering, @function
set_ordering:
	mov	cl, byte ptr [rdi]
	test	cl, cl
	je	.label_126
	mov	eax, edx
	or	eax, 2
	dec	edx
	nop	word ptr cs:[rax + rax]
.label_131:
	movsx	ecx, cl
	cmp	ecx, 0x61
	jle	.label_130
	add	ecx, -0x62
	cmp	ecx, 0x10
	ja	.label_126
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_132]]
.label_1347:
	cmp	eax, 2
	jne	.label_133
	mov	byte ptr [rsi + 0x30], 1
.label_133:
	cmp	edx, 1
	ja	.label_127
	mov	byte ptr [rsi + 0x31], 1
	jmp	.label_127
	nop	
.label_130:
	cmp	ecx, 0x4d
	je	.label_128
	cmp	ecx, 0x52
	je	.label_129
	cmp	ecx, 0x56
	jne	.label_126
	mov	byte ptr [rsi + 0x38], 1
	jmp	.label_127
.label_1348:
	mov	qword ptr [word ptr [rsi + 32]], OFFSET FLAT:nondictionary
	jmp	.label_127
.label_1349:
	mov	qword ptr [word ptr [rsi + 40]], OFFSET FLAT:fold_toupper
	jmp	.label_127
.label_1350:
	mov	byte ptr [rsi + 0x34], 1
	jmp	.label_127
.label_1351:
	mov	byte ptr [rsi + 0x35], 1
	jmp	.label_127
.label_1352:
	cmp	qword ptr [rsi + 0x20], 0
	jne	.label_127
	mov	qword ptr [word ptr [rsi + 32]], OFFSET FLAT:nonprinting
	jmp	.label_127
.label_1353:
	mov	byte ptr [rsi + 0x32], 1
	jmp	.label_127
.label_1354:
	mov	byte ptr [rsi + 0x37], 1
	jmp	.label_127
.label_128:
	mov	byte ptr [rsi + 0x36], 1
	jmp	.label_127
.label_129:
	mov	byte ptr [rsi + 0x33], 1
	nop	dword ptr [rax]
.label_127:
	mov	cl, byte ptr [rdi + 1]
	inc	rdi
	test	cl, cl
	jne	.label_131
.label_126:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404550

	.globl badfieldspec
	.type badfieldspec, @function
badfieldspec:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.125
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	r12, rax
	mov	rdi, r14
	call	quote
	mov	rbx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045b0

	.globl insertkey
	.type insertkey, @function
insertkey:
	push	rax
	mov	esi, 0x48
	call	xmemdup
	mov	ecx, OFFSET FLAT:keylist
.label_134:
	mov	rdx, rcx
	mov	rcx, qword ptr [rdx]
	test	rcx, rcx
	lea	rcx, [rcx + 0x40]
	jne	.label_134
	mov	qword ptr [rdx], rax
	mov	qword ptr [rax + 0x40], 0
	pop	rax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4045e0

	.globl incompatible_options
	.type incompatible_options, @function
incompatible_options:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.134
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404610

	.globl specify_nmerge
	.type specify_nmerge, @function
specify_nmerge:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x30
	mov	r12, rdx
	mov	r15d, esi
	mov	r14d, edi
	lea	rcx, [rsp + 0x28]
	xor	esi, esi
	mov	edx, 0xa
	xor	r8d, r8d
	mov	rdi, r12
	call	xstrtoumax
	mov	ebx, eax
	lea	rsi, [rsp + 0x18]
	mov	edi, 7
	call	getrlimit
	mov	ecx, dword ptr [rsp + 0x18]
	add	ecx, -3
	test	eax, eax
	mov	ebp, 0x11
	cmove	ebp, ecx
	test	ebx, ebx
	jne	.label_137
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [dword ptr [rip + nmerge]],  eax
	mov	ecx, eax
	cmp	rcx, rax
	jne	.label_135
	cmp	eax, 1
	jbe	.label_138
	cmp	ebp, eax
	jb	.label_135
	add	rsp, 0x30
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_137:
	cmp	ebx, 1
	jne	.label_136
.label_135:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.138
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	movsxd	rax, r14d
	shl	rax, 5
	mov	r14,  qword ptr [word ptr [rax + long_options]]
	mov	rdi, r12
	call	quote
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, rbx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.139
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp + 0xd]
	mov	edi, ebp
	call	uinttostr
	jmp	.label_139
.label_138:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.135
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r14d
	shl	rax, 5
	mov	r14,  qword ptr [word ptr [rax + long_options]]
	mov	rdi, r12
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, rbp
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.136
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.137
	call	quote
.label_139:
	mov	rbp, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, rbp
	call	error
.label_136:
	movsx	edx, r15b
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, ebx
	mov	esi, r14d
	mov	r8, r12
	call	xstrtol_fatal
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404790

	.globl specify_sort_size
	.type specify_sort_size, @function
specify_sort_size:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdx
	mov	ebp, esi
	mov	r14d, edi
	lea	rsi, [rsp]
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str.140
	mov	rdi, rbx
	call	xstrtoumax
	cmp	eax, 2
	je	.label_148
	test	eax, eax
	jne	.label_144
	mov	rax, qword ptr [rsp]
	movsx	eax, byte ptr [rax - 1]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_145
	mov	rcx, qword ptr [rsp + 8]
	mov	eax, 1
	mov	rdx, rcx
	shr	rdx, 0x36
	jne	.label_144
	shl	rcx, 0xa
	mov	qword ptr [rsp + 8], rcx
	jmp	.label_145
.label_148:
	mov	rcx, qword ptr [rsp]
	movsx	edx, byte ptr [rcx - 1]
	add	edx, -0x30
	mov	eax, 2
	cmp	edx, 9
	ja	.label_144
	cmp	byte ptr [rcx + 1], 0
	jne	.label_144
	movsx	ecx, byte ptr [rcx]
	cmp	ecx, 0x62
	je	.label_145
	cmp	ecx, 0x25
	jne	.label_144
	call	physmem_total
	movq	xmm2, qword ptr [rsp + 8]
	punpckldq	xmm2,  xmmword ptr [word ptr [rip + label_140]]
	subpd	xmm2,  xmmword ptr [word ptr [rip + label_141]]
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	mulsd	xmm1, xmm0
	divsd	xmm1,  qword ptr [word ptr [rip + label_142]]
	mov	eax, 1
	movsd	xmm0,  qword ptr [word ptr [rip + label_143]]
	ucomisd	xmm0, xmm1
	jbe	.label_144
	movsd	xmm0,  qword ptr [word ptr [rip + label_147]]
	movapd	xmm2, xmm1
	subsd	xmm2, xmm0
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttsd2si	rax, xmm1
	ucomisd	xmm1, xmm0
	cmovae	rax, rcx
	mov	qword ptr [rsp + 8], rax
.label_145:
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx,  qword ptr [word ptr [rip + sort_size]]
	jb	.label_146
	mov	qword ptr [word ptr [rip + sort_size]],  rcx
	mov	eax, 1
	cmp	rcx, qword ptr [rsp + 8]
	jne	.label_144
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	imul	rax, rax, 0x22
	cmp	rcx, rax
	cmova	rax, rcx
	mov	qword ptr [word ptr [rip + sort_size]],  rax
.label_146:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_144:
	movsx	edx, bpl
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r14d
	mov	r8, rbx
	call	xstrtol_fatal
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404910

	.globl add_temp_dir
	.type add_temp_dir, @function
add_temp_dir:
	push	rbx
	mov	rbx, rdi
	mov	rax,  qword ptr [word ptr [rip + temp_dir_count]]
	cmp	rax,  qword ptr [word ptr [rip + temp_dir_alloc]]
	jne	.label_149
	mov	rdi,  qword ptr [word ptr [rip + temp_dirs]]
	mov	esi, OFFSET FLAT:temp_dir_alloc
	mov	edx, 8
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + temp_dirs]],  rax
.label_149:
	mov	rax,  qword ptr [word ptr [rip + temp_dir_count]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + temp_dir_count]],  rcx
	mov	rcx,  qword ptr [word ptr [rip + temp_dirs]]
	mov	qword ptr [rcx + rax*8], rbx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404960

	.globl specify_nthreads
	.type specify_nthreads, @function
specify_nthreads:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdx
	mov	ebp, esi
	mov	r14d, edi
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbx
	call	xstrtoul
	test	eax, eax
	je	.label_151
	mov	rcx, -1
	cmp	eax, 1
	je	.label_152
	movsx	edx, bpl
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r14d
	mov	r8, rbx
	call	xstrtol_fatal
.label_151:
	mov	rcx, qword ptr [rsp + 8]
	test	rcx, rcx
	je	.label_150
.label_152:
	mov	rax, rcx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_150:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.141
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0

	.globl xfopen
	.type xfopen, @function
xfopen:
	push	rbx
	mov	rbx, rdi
	call	stream_open
	test	rax, rax
	je	.label_153
	pop	rbx
	ret	
.label_153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, rbx
	call	sort_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a20

	.globl xfclose
	.type xfclose, @function
xfclose:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	call	fileno
	cmp	eax, 1
	je	.label_155
	test	eax, eax
	jne	.label_157
	mov	rdi, rbx
	call	feof_unlocked
	test	eax, eax
	je	.label_154
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	clearerr_unlocked
.label_155:
	mov	rdi, rbx
	call	fflush_unlocked
	test	eax, eax
	je	.label_154
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.145
	jmp	.label_158
.label_157:
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_156
.label_154:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_156:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
.label_158:
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	sort_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404aa0

	.globl default_key_compare
	.type default_key_compare, @function
default_key_compare:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_159
	xor	eax, eax
	pop	rbx
	ret	
.label_159:
	cmp	qword ptr [rbx + 0x28], 0
	je	.label_162
	xor	eax, eax
	pop	rbx
	ret	
.label_162:
	cmp	byte ptr [rbx + 0x30], 0
	je	.label_164
	xor	eax, eax
	pop	rbx
	ret	
.label_164:
	cmp	byte ptr [rbx + 0x31], 0
	je	.label_160
	xor	eax, eax
	pop	rbx
	ret	
.label_160:
	mov	rdi, rbx
	call	key_numeric
	test	al, al
	je	.label_163
	xor	eax, eax
	pop	rbx
	ret	
.label_163:
	cmp	byte ptr [rbx + 0x36], 0
	je	.label_165
	xor	eax, eax
	pop	rbx
	ret	
.label_165:
	cmp	byte ptr [rbx + 0x38], 0
	je	.label_161
	xor	eax, eax
	pop	rbx
	ret	
.label_161:
	cmp	byte ptr [rbx + 0x33], 0
	sete	al
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b00

	.globl check_ordering_compatibility
	.type check_ordering_compatibility, @function
check_ordering_compatibility:
	mov	rdi,  qword ptr [word ptr [rip + keylist]]
	jmp	.label_166
	nop	dword ptr [rax]
.label_168:
	mov	rdi, qword ptr [rdi + 0x40]
.label_166:
	test	rdi, rdi
	je	.label_167
	movzx	eax, byte ptr [rdi + 0x32]
	movzx	ecx, byte ptr [rdi + 0x34]
	add	ecx, eax
	movzx	eax, byte ptr [rdi + 0x35]
	add	eax, ecx
	movzx	ecx, byte ptr [rdi + 0x36]
	add	ecx, eax
	mov	al, byte ptr [rdi + 0x33]
	or	al, byte ptr [rdi + 0x38]
	cmp	qword ptr [rdi + 0x20], 0
	setne	dl
	or	dl, al
	movzx	eax, dl
	add	eax, ecx
	cmp	eax, 2
	jb	.label_168
	push	rbx
	sub	rsp, 0x20
	mov	byte ptr [rdi + 0x37], 0
	mov	word ptr [rdi + 0x30], 0
	lea	rbx, [rsp]
	mov	rsi, rbx
	call	key_to_opts
	mov	rdi, rbx
	call	incompatible_options
.label_167:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b70

	.globl key_warnings
	.type key_warnings, @function
key_warnings:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	dword ptr [rsp + 0xc], esi
	mov	rax, qword ptr [rdi + 0x40]
	mov	qword ptr [rsp + 0xe0], rax
	movups	xmm0, xmmword ptr [rdi]
	movups	xmm1, xmmword ptr [rdi + 0x10]
	movups	xmm2, xmmword ptr [rdi + 0x20]
	movups	xmm3, xmmword ptr [rdi + 0x30]
	movaps	xmmword ptr [rsp + 0xd0], xmm3
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	mov	rbx,  qword ptr [word ptr [rip + keylist]]
	test	rbx, rbx
	je	.label_187
	mov	dl, byte ptr [rsp + 0xd0]
	mov	r9b, byte ptr [rsp + 0xd1]
	mov	r8b, byte ptr [rsp + 0xd6]
	mov	dil, byte ptr [rsp + 0xd2]
	mov	r10b, byte ptr [rsp + 0xd4]
	mov	cl, byte ptr [rsp + 0xd5]
	mov	r12b, byte ptr [rsp + 0xd3]
	mov	r15b, byte ptr [rsp + 0xd8]
	mov	r14b, byte ptr [rsp + 0xd7]
	mov	ebp, 1
	lea	r13, [rsp + 0x80]
	nop	word ptr cs:[rax + rax]
.label_182:
	mov	qword ptr [rsp + 0x18], rbp
	mov	byte ptr [rsp + 0x12], dl
	mov	byte ptr [rsp + 0x13], r9b
	mov	byte ptr [rsp + 0x14], r8b
	mov	byte ptr [rsp + 0x15], dil
	mov	byte ptr [rsp + 0x16], r10b
	mov	byte ptr [rsp + 0x17], cl
	cmp	byte ptr [rbx + 0x39], 0
	je	.label_178
	mov	byte ptr [rsp + 9], r12b
	mov	byte ptr [rsp + 0xa], r15b
	mov	byte ptr [rsp + 0xb], r14b
	mov	rbp, qword ptr [rbx]
	mov	r12, qword ptr [rbx + 0x10]
	cmp	rbp, -1
	sete	al
	movzx	r15d, al
	lea	rdi, [r15 + rbp]
	mov	word ptr [rsp + 0x50], 0x2b
	mov	rsi, r13
	call	umaxtostr
	mov	edx, 0x2d
	lea	rdi, [rsp + 0x51]
	mov	rsi, rax
	call	__stpcpy_chk
	mov	r14, rax
	mov	dword ptr [rsp + 0x20], 0x206b2d
	lea	rdi, [r15 + rbp + 1]
	mov	rsi, r13
	call	umaxtostr
	mov	edx, 0x2c
	lea	rdi, [rsp + 0x23]
	mov	rsi, rax
	call	__stpcpy_chk
	mov	r15, rax
	cmp	qword ptr [rbx + 0x10], -1
	je	.label_183
	mov	rbp, r13
	mov	r13, r14
	add	r13, 2
	mov	byte ptr [r14 + 2], 0
	mov	word ptr [r14], 0x2d20
	lea	rdi, [r12 + 1]
	mov	rsi, rbp
	call	umaxtostr
	mov	rdi, r13
	mov	r13, rbp
	mov	rsi, rax
	call	stpcpy
	mov	rbp, r15
	inc	rbp
	mov	word ptr [r15], 0x2c
	cmp	qword ptr [rbx + 0x18], -1
	sete	al
	movzx	eax, al
	lea	rdi, [rax + r12 + 1]
	mov	rsi, r13
	call	umaxtostr
	mov	rdi, rbp
	mov	rsi, rax
	call	stpcpy
.label_183:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.150
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	lea	rsi, [rsp + 0x50]
	call	quote_n
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsp + 0x20]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbp
	call	error
	mov	r14b, byte ptr [rsp + 0xb]
	mov	r15b, byte ptr [rsp + 0xa]
	mov	r12b, byte ptr [rsp + 9]
.label_178:
	mov	rax, qword ptr [rbx]
	cmp	rax, -1
	je	.label_170
	cmp	qword ptr [rbx + 0x10], rax
	jae	.label_171
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.151
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x18]
	call	error
	mov	bpl, 1
	jmp	.label_181
	nop	word ptr [rax + rax]
.label_170:
	xor	ebp, ebp
	jmp	.label_181
	nop	word ptr cs:[rax + rax]
.label_171:
	xor	ebp, ebp
.label_181:
	mov	rdi, rbx
	call	key_numeric
	mov	cl, 1
	test	al, al
	jne	.label_186
	cmp	byte ptr [rbx + 0x36], 0
	setne	cl
.label_186:
	cmp	qword ptr [rbx + 0x10], 0
	je	.label_188
	xor	eax, eax
	jmp	.label_189
	nop	word ptr cs:[rax + rax]
.label_188:
	cmp	qword ptr [rbx + 0x18], 0
	setne	al
.label_189:
	test	bpl, bpl
	mov	rbp, qword ptr [rsp + 0x18]
	jne	.label_172
	cmp	dword ptr [dword ptr [rip + tab]],  0x80
	setne	dl
	mov	esi, dword ptr [rsp + 0xc]
	or	dl, sil
	or	al, dl
	jne	.label_172
	mov	al, byte ptr [rbx + 0x30]
	test	al, al
	setne	dl
	or	cl, dl
	movzx	ecx, cl
	cmp	ecx, 1
	jne	.label_179
	test	al, al
	jne	.label_184
	cmp	qword ptr [rbx + 8], 0
	jne	.label_179
.label_184:
	cmp	byte ptr [rbx + 0x31], 0
	jne	.label_172
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_172
.label_179:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.152
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	nop	dword ptr [rax]
.label_172:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	jne	.label_174
	mov	rdi, rbx
	call	key_numeric
	test	al, al
	je	.label_174
	mov	rax, qword ptr [rbx]
	lea	rcx, [rax + 1]
	add	rax, 2
	test	rcx, rcx
	cmovne	rax, rcx
	cmp	qword ptr [rbx + 0x10], rax
	jb	.label_174
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.153
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	nop	word ptr cs:[rax + rax]
.label_174:
	mov	rax, qword ptr [rsp + 0xc0]
	test	rax, rax
	je	.label_177
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_177
	mov	qword ptr [rsp + 0xc0], 0
.label_177:
	mov	rax, qword ptr [rsp + 0xc8]
	test	rax, rax
	mov	r10b, byte ptr [rsp + 0x16]
	mov	dil, byte ptr [rsp + 0x15]
	mov	r8b, byte ptr [rsp + 0x14]
	mov	r9b, byte ptr [rsp + 0x13]
	mov	dl, byte ptr [rsp + 0x12]
	je	.label_176
	cmp	rax, qword ptr [rbx + 0x28]
	jne	.label_176
	mov	qword ptr [rsp + 0xc8], 0
.label_176:
	mov	al, byte ptr [rbx + 0x30]
	mov	cl, byte ptr [rbx + 0x31]
	xor	al, 1
	and	dl, al
	xor	cl, 1
	and	r9b, cl
	mov	al, byte ptr [rbx + 0x36]
	xor	al, 1
	and	r8b, al
	mov	al, byte ptr [rbx + 0x32]
	xor	al, 1
	and	dil, al
	mov	al, byte ptr [rbx + 0x34]
	xor	al, 1
	and	r10b, al
	mov	al, byte ptr [rbx + 0x35]
	xor	al, 1
	mov	cl, byte ptr [rsp + 0x17]
	and	cl, al
	mov	al, byte ptr [rbx + 0x33]
	xor	al, 1
	and	r12b, al
	mov	al, byte ptr [rbx + 0x38]
	xor	al, 1
	and	r15b, al
	mov	al, byte ptr [rbx + 0x37]
	xor	al, 1
	and	r14b, al
	inc	rbp
	mov	rbx, qword ptr [rbx + 0x40]
	test	rbx, rbx
	jne	.label_182
	mov	byte ptr [rsp + 0xd0], dl
	mov	byte ptr [rsp + 0xd1], r9b
	mov	byte ptr [rsp + 0xd6], r8b
	mov	byte ptr [rsp + 0xd2], dil
	mov	byte ptr [rsp + 0xd4], r10b
	mov	byte ptr [rsp + 0xd5], cl
	mov	byte ptr [rsp + 0xd3], r12b
	mov	byte ptr [rsp + 0xd8], r15b
	mov	byte ptr [rsp + 0xd7], r14b
.label_187:
	lea	rdi, [rsp + 0xa0]
	call	default_key_compare
	test	al, al
	je	.label_185
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_173
	mov	al,  byte ptr [byte ptr [rip + stable]]
	and	al, 1
	je	.label_169
	cmp	qword ptr [word ptr [rip + keylist]],  0
	jne	.label_185
	jmp	.label_173
.label_169:
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_173
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	test	rax, rax
	je	.label_173
.label_185:
	mov	bpl, byte ptr [rsp + 0xd7]
	mov	al,  byte ptr [byte ptr [rip + stable]]
	and	al, 1
	jne	.label_180
	mov	al,  byte ptr [byte ptr [rip + unique]]
	and	al, 1
	jne	.label_180
	mov	byte ptr [rsp + 0xd7], 0
.label_180:
	lea	rdi, [rsp + 0xa0]
	lea	rbx, [rsp + 0x20]
	mov	rsi, rbx
	call	key_to_opts
	mov	rdi, rbx
	call	strlen
	mov	rdi, rax
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.154
	mov	edx, OFFSET FLAT:.str.155
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	mov	byte ptr [rsp + 0xd7], bpl
.label_173:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_175
	mov	al,  byte ptr [byte ptr [rip + stable]]
	and	al, 1
	jne	.label_175
	cmp	qword ptr [word ptr [rip + keylist]],  0
	je	.label_175
	mov	al,  byte ptr [byte ptr [rip + unique]]
	xor	al, 1
	test	al, 1
	je	.label_175
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.156
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_175:
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405120

	.globl random_md5_state_init
	.type random_md5_state_init, @function
random_md5_state_init:
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdi
	mov	esi, 0x10
	call	randread_new
	mov	rbx, rax
	test	rbx, rbx
	je	.label_190
	lea	rsi, [rsp]
	mov	edx, 0x10
	mov	rdi, rbx
	call	randread
	mov	rdi, rbx
	call	randread_free
	test	eax, eax
	jne	.label_191
	mov	edi, OFFSET FLAT:random_md5_state
	call	md5_init_ctx
	lea	rdi, [rsp]
	mov	esi, 0x10
	mov	edx, OFFSET FLAT:random_md5_state
	call	md5_process_bytes
	add	rsp, 0x18
	pop	rbx
	pop	r14
	ret	
.label_190:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	jmp	.label_192
.label_191:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
.label_192:
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	sort_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051b0

	.globl check
	.type check, @function
check:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	dword ptr [rsp + 0x1c], esi
	mov	r14, rdi
	mov	qword ptr [rsp + 0x28], r14
	mov	esi, OFFSET FLAT:.str.52
	call	xfopen
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	mov	qword ptr [rsp + 8], rax
	movzx	r13d,  byte ptr [byte ptr [rip + unique]]
	mov	rax,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	rdx,  qword ptr [word ptr [rip + sort_size]]
	cmp	rax, rdx
	cmova	rdx, rax
	lea	rbp, [rsp + 0x70]
	mov	esi, 0x20
	mov	rdi, rbp
	call	initbuf
	mov	qword ptr [rsp + 0x50], 0
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r14
	call	fillbuf
	mov	r12b, 1
	test	al, al
	je	.label_194
	mov	qword ptr [rsp + 0x10], rbx
	and	r13d, 1
	xor	r13d, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
.label_207:
	mov	rdi, rbx
	call	buffer_linelim
	mov	rbp, rax
	mov	rbx, qword ptr [rsp + 0x80]
	test	r12, r12
	je	.label_197
	lea	rsi, [rbp - 0x20]
	lea	rdi, [rsp + 0x50]
	call	compare
	cmp	r13d, eax
	jle	.label_206
.label_197:
	shl	rbx, 5
	mov	r14, rbp
	sub	r14, rbx
	add	rbp, -0x20
.label_198:
	cmp	r14, rbp
	jae	.label_195
	lea	r15, [rbp - 0x20]
	mov	rdi, rbp
	mov	rsi, r15
	call	compare
	cmp	r13d, eax
	mov	rbp, r15
	jg	.label_198
	jmp	.label_199
	nop	word ptr cs:[rax + rax]
.label_195:
	mov	rax, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [rsp + 0x20], rax
	cmp	r12, qword ptr [rbp + 8]
	lea	rbx, [rsp + 0x70]
	jae	.label_202
	mov	rax, qword ptr [rbp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 8]
	nop	dword ptr [rax + rax]
.label_205:
	add	r12, r12
	je	.label_204
	cmp	r12, rax
	jb	.label_205
	jmp	.label_203
	nop	dword ptr [rax]
.label_202:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_193
.label_204:
	mov	r12, rax
.label_203:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rdi, r12
	call	xmalloc
	mov	qword ptr [rsp + 0x50], rax
.label_193:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rbp]
	mov	rdx, qword ptr [rbp + 8]
	call	memcpy
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x58], rax
	test	r15, r15
	je	.label_200
	mov	rax, qword ptr [rbp + 0x10]
	sub	rax, qword ptr [rbp]
	add	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x60], rax
	mov	rax, qword ptr [rbp + 0x18]
	sub	rax, qword ptr [rbp]
	add	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x68], rax
.label_200:
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r14
	call	fillbuf
	test	al, al
	jne	.label_207
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r12b, 1
	jmp	.label_194
.label_199:
	add	r15, 0x20
	mov	rbp, r15
	mov	r14, qword ptr [rsp + 0x28]
.label_206:
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	eax, al
	cmp	eax, 0x63
	jne	.label_196
	add	rbp, -0x20
	lea	rdi, [rsp + 0x70]
	call	buffer_linelim
	sub	rax, rbp
	sar	rax, 5
	mov	rbx, qword ptr [rsp + 0x20]
	add	rbx, rax
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.157
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r15,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsp + 0x30]
	mov	rdi, rbx
	call	umaxtostr
	mov	r9, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r13
	mov	rdx, r12
	xor	r12d, r12d
	mov	rcx, r15
	mov	r8, r14
	call	__fprintf_chk
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.158
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rax
	call	write_line
	jmp	.label_201
.label_196:
	xor	r12d, r12d
.label_201:
	mov	rbx, qword ptr [rsp + 0x10]
.label_194:
	mov	rdi, rbx
	mov	rsi, r14
	call	xfclose
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	al, r12b
	add	rsp, 0xa8
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
	#Procedure 0x405480

	.globl check_inputs
	.type check_inputs, @function
check_inputs:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	xor	ebx, ebx
	test	r14, r14
	je	.label_208
	nop	word ptr cs:[rax + rax]
.label_210:
	mov	rax, qword ptr [r15 + rbx*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_209
	cmp	byte ptr [rax + 1], 0
	je	.label_212
.label_209:
	mov	rdi, qword ptr [r15 + rbx*8]
	mov	esi, 4
	call	euidaccess
	test	eax, eax
	jne	.label_211
.label_212:
	inc	rbx
	cmp	rbx, r14
	jb	.label_210
.label_208:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_211:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.165
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [r15 + rbx*8]
	mov	rdi, rax
	call	sort_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4054f0

	.globl check_output
	.type check_output, @function
check_output:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_213
	mov	esi, 0x80041
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, rbx
	call	open
	test	eax, eax
	js	.label_214
	mov	esi, 1
	mov	edi, eax
	pop	rbx
	jmp	move_fd
.label_213:
	pop	rbx
	ret	
.label_214:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, rbx
	call	sort_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405540

	.globl merge
	.type merge, @function
merge:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	r13, rsi
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	cmp	rax, rdx
	jae	.label_215
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x28], rdi
	nop	word ptr cs:[rax + rax]
.label_222:
	mov	qword ptr [rsp + 0x30], rdx
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	cmp	rcx, rdx
	mov	r14, qword ptr [rsp + 0x18]
	mov	r15d, 0
	mov	r12d, 0
	mov	rbp, rdx
	ja	.label_216
	nop	word ptr cs:[rax + rax]
.label_225:
	lea	rdi, [rsp + 0x40]
	call	create_temp
	mov	rbp, rax
	mov	rdi, r15
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x28]
	mov	edx,  dword ptr [dword ptr [rip + nmerge]]
	cmp	r13, rdx
	mov	rsi, rdx
	cmovb	rsi, r13
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rbx, [rbp + 0xd]
	mov	r8, rbx
	call	mergefiles
	cmp	r13, rax
	mov	rcx, rax
	cmovb	rcx, r13
	sub	r13, rcx
	mov	qword ptr [r14 - 8], rbx
	mov	qword ptr [r14], rbp
	add	r15, rax
	inc	r12
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	mov	rbp, qword ptr [rsp + 0x30]
	sub	rbp, r15
	add	r14, 0x10
	cmp	rcx, rbp
	jbe	.label_225
.label_216:
	mov	qword ptr [rsp + 0x20], r13
	mov	r13, qword ptr [rsp + 0x28]
	xor	edx, edx
	mov	rax, r12
	div	rcx
	sub	rcx, rdx
	sub	rbp, rcx
	mov	r14, r12
	jbe	.label_219
	inc	rbp
	lea	rdi, [rsp + 0x40]
	call	create_temp
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r15
	shl	rdi, 4
	mov	rbx, r13
	add	rdi, rbx
	mov	r13, qword ptr [rsp + 0x20]
	cmp	r13, rbp
	mov	rsi, rbp
	cmovb	rsi, r13
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r12, r14
	lea	r14, [rax + 0xd]
	mov	rdx, rbp
	mov	r8, r14
	call	mergefiles
	cmp	r13, rax
	mov	rcx, rax
	cmovb	rcx, r13
	sub	r13, rcx
	mov	rcx, r12
	shl	rcx, 4
	mov	qword ptr [rbx + rcx], r14
	mov	r14, r12
	inc	r14
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + rcx + 8], rdx
	add	r15, rax
	jmp	.label_229
	nop	word ptr [rax + rax]
.label_219:
	mov	rbx, r13
	mov	r13, qword ptr [rsp + 0x20]
.label_229:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rdi, r14
	shl	rdi, 4
	add	rdi, rbx
	mov	rsi, r15
	shl	rsi, 4
	add	rsi, rbx
	mov	rdx, rbp
	sub	rdx, r15
	shl	rdx, 4
	call	memmove
	add	r13, r14
	add	r14, rbp
	sub	r14, r15
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	cmp	rax, r14
	mov	rdx, r14
	jb	.label_222
	jmp	.label_228
.label_215:
	mov	rbx, rdi
	mov	r14, rdx
.label_228:
	mov	qword ptr [rsp + 0x20], r13
	mov	r15, rbx
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	call	avoid_trashing_input
	lea	rax, [r15 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_221
	nop	dword ptr [rax]
.label_218:
	mov	r12, qword ptr [rsp + 0x20]
	cmp	r12, r13
	mov	rsi, r13
	cmovb	rsi, r12
	mov	qword ptr [rsp + 0x18], rsi
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rbx, r15
	add	rbx, 0xd
	mov	r9, qword ptr [rsp + 0x40]
	mov	rdi, r14
	mov	rdx, r13
	mov	r8, rbx
	call	mergefps
	mov	qword ptr [r14], rbx
	mov	qword ptr [r14 + 8], r15
	mov	r15, r14
	mov	r14, qword ptr [rsp + 0x30]
	sub	r14, r13
	mov	rdx, r14
	shl	rdx, 4
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	memmove
	inc	r12
	sub	r12, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x20], r12
	inc	r14
.label_221:
	mov	rdi, r15
	mov	rsi, r14
	lea	rdx, [rsp + 0x40]
	call	open_input_files
	mov	r13, rax
	cmp	r13, r14
	jne	.label_224
	mov	esi, OFFSET FLAT:.str.166
	mov	rdi, qword ptr [rsp + 8]
	call	stream_open
	test	rax, rax
	jne	.label_217
	mov	qword ptr [rsp + 0x30], r14
	call	__errno_location
	cmp	r13, 3
	jb	.label_223
	cmp	dword ptr [rax], 0x18
	je	.label_220
	jmp	.label_223
	nop	word ptr [rax + rax]
.label_224:
	mov	qword ptr [rsp + 0x30], r14
	cmp	r13, 2
	jbe	.label_227
.label_220:
	mov	r12, qword ptr [rsp + 0x40]
	mov	rbp, r13
	shl	rbp, 4
	add	rbp, r15
	mov	r14, r15
	lea	rbx, [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_226:
	mov	rdi, qword ptr [r12 + r13*8 - 8]
	dec	r13
	mov	rsi, qword ptr [rbp - 0x10]
	add	rbp, -0x10
	call	xfclose
	cmp	r13, 2
	seta	al
	movzx	esi, al
	mov	rdi, rbx
	call	maybe_create_temp
	mov	r15, rax
	test	r15, r15
	je	.label_226
	jmp	.label_218
.label_217:
	mov	r9, qword ptr [rsp + 0x40]
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r14
	mov	rcx, rax
	mov	r8, qword ptr [rsp + 8]
	call	mergefps
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_223:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 8]
	call	sort_die
.label_227:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	shl	r13, 4
	mov	rsi, qword ptr [r15 + r13]
	mov	rdi, rax
	call	sort_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4058c0

	.globl sort
	.type sort, @function
sort:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r13, rcx
	mov	qword ptr [rsp + 0x18], r13
	mov	qword ptr [rsp + 0x10], rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	qword ptr [rsp + 0xd8], 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	test	r12, r12
	mov	ebx, 0
	je	.label_231
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	lea	rbp, [rsp + 0xc0]
	lea	r14, [rsp + 0x50]
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_232:
	mov	rdi, qword ptr [r15]
	mov	qword ptr [rsp + 0x40], rdi
	mov	esi, OFFSET FLAT:.str.52
	call	xfopen
	mov	qword ptr [rsp + 0xb8], rax
	cmp	r13, 2
	mov	eax, 0x20
	mov	ecx, 1
	mov	edx, 0x30
	jb	.label_234
	nop	
.label_241:
	add	rcx, rcx
	add	rax, 0x20
	cmp	rcx, r13
	mov	rdx, rax
	jb	.label_241
.label_234:
	cmp	qword ptr [rsp + 0xd8], 0
	jne	.label_239
	lea	rdi, [rsp + 0xb8]
	mov	rsi, r15
	mov	r13, rdx
	mov	rdx, r12
	mov	rcx, r13
	call	sort_buffer_size
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rax
	call	initbuf
	mov	rdx, r13
.label_239:
	mov	qword ptr [rsp + 0x28], rdx
	mov	byte ptr [rsp + 0xf0], 0
	add	r15, 8
	mov	qword ptr [rsp + 8], r15
	dec	r12
	mov	rax, qword ptr [rsp + 0xb8]
	mov	qword ptr [rsp + 0x38], rax
	or	rdx, 1
	mov	qword ptr [rsp + 0x20], rdx
	nop	word ptr cs:[rax + rax]
.label_236:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x40]
	call	fillbuf
	test	al, al
	je	.label_242
	test	r12, r12
	je	.label_244
	mov	al, byte ptr [rsp + 0xf0]
	test	al, al
	je	.label_244
	mov	rax, qword ptr [rsp + 0xc8]
	mov	rcx, qword ptr [rsp + 0xd8]
	sub	rcx, rax
	mov	rdx, qword ptr [rsp + 0xd0]
	imul	rdx, qword ptr [rsp + 0x28]
	sub	rcx, rdx
	cmp	qword ptr [rsp + 0x20], rcx
	jb	.label_246
.label_244:
	mov	qword ptr [word ptr [rip + saved_line]],  0
	mov	rdi, rbp
	call	buffer_linelim
	mov	r15, rax
	mov	rax, rbx
	or	rax, r12
	or	rax, qword ptr [rsp + 0xe0]
	jne	.label_238
	mov	al, byte ptr [rsp + 0xf0]
	test	al, al
	je	.label_238
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x40]
	call	xfclose
	mov	esi, OFFSET FLAT:.str.166
	mov	qword ptr [rsp + 0x48], rbx
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
	call	xfopen
	mov	qword ptr [rsp + 0xb0], rax
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_230
	nop	word ptr cs:[rax + rax]
.label_238:
	inc	rbx
	mov	qword ptr [rsp + 0x48], rbx
	lea	rdi, [rsp + 0xb0]
	call	create_temp
	mov	r13, rax
	add	r13, 0xd
.label_230:
	mov	rbx, r12
	cmp	qword ptr [rsp + 0xd0], 2
	jb	.label_235
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	call	queue_init
	mov	r12, qword ptr [rsp + 0xd0]
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r15
	call	merge_tree_init
	lea	rcx, [rax + 0x80]
	mov	r9, qword ptr [rsp + 0xb0]
	mov	qword ptr [rsp], r13
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, r12
	mov	r8, r14
	call	sortlines
	jmp	.label_245
	nop	word ptr cs:[rax + rax]
.label_235:
	add	r15, -0x20
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rdi, r15
	mov	rdx, r13
	call	write_unique
.label_245:
	mov	r12, rbx
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r13
	call	xfclose
	mov	rax, qword ptr [rsp + 0x30]
	and	al, 1
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rbp, [rsp + 0xc0]
	je	.label_236
	movzx	eax, al
	shl	eax, 3
	jmp	.label_243
.label_246:
	mov	qword ptr [rsp + 0xe0], rax
.label_242:
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, qword ptr [rsp + 0x40]
	call	xfclose
	xor	eax, eax
.label_243:
	mov	r13, qword ptr [rsp + 0x18]
	test	r12, r12
	je	.label_231
	test	eax, eax
	mov	r15, qword ptr [rsp + 8]
	je	.label_232
.label_231:
	mov	rdi, qword ptr [rsp + 0xc0]
	call	free
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	jne	.label_233
	mov	rbp,  qword ptr [word ptr [rip + temphead]]
	mov	esi, 0x10
	mov	rdi, rbx
	mov	r14, rbx
	call	xnmalloc
	mov	rbx, rax
	test	rbp, rbp
	je	.label_237
	mov	rax, rbx
	add	rax, 8
	nop	dword ptr [rax + rax]
.label_240:
	lea	rcx, [rbp + 0xd]
	mov	qword ptr [rax - 8], rcx
	mov	qword ptr [rax], rbp
	mov	rbp, qword ptr [rbp]
	add	rax, 0x10
	test	rbp, rbp
	jne	.label_240
.label_237:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rsi
	mov	rcx, qword ptr [rsp + 0x10]
	call	merge
	mov	rdi, rbx
	call	free
.label_233:
	call	reap_all
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c30

	.globl sort_die
	.type sort_die, @function
sort_die:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	rbx, rbx
	jne	.label_247
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.180
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_247:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rbx, rax
	mov	edi, 2
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	mov	r8, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c90

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbx
	mov	ebx, edi
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	cmp	ebx, 0xa
	sete	cl
	mov	al, byte ptr [rax + rbx*2]
	and	al, 1
	or	al, cl
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cb0

	.globl struct_month_cmp
	.type struct_month_cmp, @function
struct_month_cmp:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cc0

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + temphead]]
	jmp	.label_248
	nop	word ptr [rax + rax]
.label_249:
	lea	rdi, [rbx + 0xd]
	call	unlink
	mov	rbx, qword ptr [rbx]
.label_248:
	test	rbx, rbx
	jne	.label_249
	mov	qword ptr [word ptr [rip + temphead]],  0
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405cf0

	.globl cs_enter
	.type cs_enter, @function
cs_enter:
	push	rbx
	mov	rbx, rdi
	lea	rdx, [rbx + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	call	pthread_sigmask
	test	eax, eax
	sete	byte ptr [rbx]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d10

	.globl cs_leave
	.type cs_leave, @function
cs_leave:
	mov	rax, rdi
	cmp	byte ptr [rax], 0
	je	.label_250
	add	rax, 8
	mov	edi, 2
	xor	edx, edx
	mov	rsi, rax
	jmp	pthread_sigmask
.label_250:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405d30

	.globl stream_open
	.type stream_open, @function
stream_open:
	push	rbp
	push	r14
	push	rbx
	mov	rbp, rsi
	mov	r14, rdi
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x77
	je	.label_255
	movzx	eax, al
	cmp	eax, 0x72
	jne	.label_251
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	jne	.label_252
	cmp	byte ptr [r14 + 1], 0
	je	.label_253
.label_252:
	xor	ebx, ebx
	mov	esi, 0x80000
	xor	eax, eax
	mov	rdi, r14
	call	open
	test	eax, eax
	js	.label_257
	mov	edi, eax
	mov	rsi, rbp
	call	fdopen
	mov	rbx, rax
	jmp	.label_257
.label_255:
	test	r14, r14
	je	.label_254
	mov	edi, 1
	xor	esi, esi
	call	ftruncate
	test	eax, eax
	je	.label_254
	call	__errno_location
	mov	ebp, dword ptr [rax]
	call	get_outstatus
	test	rax, rax
	je	.label_256
	mov	ecx, 0xf000
	and	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0x8000
	je	.label_256
.label_254:
	mov	rbx,  qword ptr [word ptr [rip + stdout]]
	jmp	.label_258
.label_253:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
.label_257:
	mov	esi, 2
	mov	rdi, rbx
	call	fadvise
.label_258:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_251:
	mov	edi, OFFSET FLAT:.str.144
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 0x3d6
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.stream_open
	call	__assert_fail
.label_256:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.143
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e40

	.globl get_outstatus
	.type get_outstatus, @function
get_outstatus:
	cmp	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  0
	jne	.label_259
	push	rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:get_outstatus.outstat
	call	__fstat
	mov	ecx, 0xffffffff
	test	eax, eax
	je	.label_261
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_261:
	mov	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  ecx
	add	rsp, 8
.label_259:
	mov	eax, OFFSET FLAT:get_outstatus.outstat
	cmp	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  0
	js	.label_260
	xor	eax, eax
.label_260:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e90

	.globl key_numeric
	.type key_numeric, @function
key_numeric:
	mov	al, 1
	cmp	byte ptr [rdi + 0x32], 0
	jne	.label_262
	cmp	byte ptr [rdi + 0x34], 0
	jne	.label_262
	cmp	byte ptr [rdi + 0x35], 0
	setne	al
.label_262:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405eb0

	.globl key_to_opts
	.type key_to_opts, @function
key_to_opts:
	cmp	byte ptr [rdi + 0x30], 0
	jne	.label_271
	cmp	byte ptr [rdi + 0x31], 0
	je	.label_272
.label_271:
	mov	byte ptr [rsi], 0x62
	inc	rsi
.label_272:
	mov	eax, OFFSET FLAT:nondictionary
	cmp	qword ptr [rdi + 0x20], rax
	jne	.label_263
	mov	byte ptr [rsi], 0x64
	inc	rsi
.label_263:
	cmp	qword ptr [rdi + 0x28], 0
	je	.label_265
	mov	byte ptr [rsi], 0x66
	inc	rsi
.label_265:
	cmp	byte ptr [rdi + 0x34], 0
	je	.label_267
	mov	byte ptr [rsi], 0x67
	inc	rsi
.label_267:
	cmp	byte ptr [rdi + 0x35], 0
	je	.label_269
	mov	byte ptr [rsi], 0x68
	inc	rsi
.label_269:
	mov	eax, OFFSET FLAT:nonprinting
	cmp	qword ptr [rdi + 0x20], rax
	jne	.label_273
	mov	byte ptr [rsi], 0x69
	inc	rsi
.label_273:
	cmp	byte ptr [rdi + 0x36], 0
	je	.label_264
	mov	byte ptr [rsi], 0x4d
	inc	rsi
.label_264:
	cmp	byte ptr [rdi + 0x32], 0
	je	.label_266
	mov	byte ptr [rsi], 0x6e
	inc	rsi
.label_266:
	cmp	byte ptr [rdi + 0x33], 0
	je	.label_268
	mov	byte ptr [rsi], 0x52
	inc	rsi
.label_268:
	cmp	byte ptr [rdi + 0x37], 0
	je	.label_270
	mov	byte ptr [rsi], 0x72
	inc	rsi
.label_270:
	cmp	byte ptr [rdi + 0x38], 0
	je	.label_274
	mov	byte ptr [rsi], 0x56
	inc	rsi
.label_274:
	mov	byte ptr [rsi], 0
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f50

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f60

	.globl initbuf
	.type initbuf, @function
initbuf:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	lea	r12, [r14 + 1]
	nop	word ptr cs:[rax + rax]
.label_275:
	mov	eax, edx
	and	eax, 0x1f
	mov	ebx, 0x20
	sub	rbx, rax
	add	rbx, rdx
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r15], rax
	test	rax, rax
	jne	.label_276
	shr	rbx, 1
	cmp	rbx, r12
	mov	rdx, rbx
	ja	.label_275
	call	xalloc_die
.label_276:
	mov	qword ptr [r15 + 0x28], r14
	mov	qword ptr [r15 + 0x18], rbx
	mov	qword ptr [r15 + 0x20], 0
	mov	byte ptr [r15 + 0x30], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 8], xmm0
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405fe0

	.globl fillbuf
	.type fillbuf, @function
fillbuf:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rsp + 0x38], rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x30], r12
	mov	r15,  qword ptr [word ptr [rip + keylist]]
	mov	cl,  byte ptr [byte ptr [rip + eolchar]]
	xor	eax, eax
	and	cl, 1
	mov	dword ptr [rsp + 0x1c], 0
	jne	.label_289
	mov	cl, 0xa
	mov	dword ptr [rsp + 0x1c], ecx
.label_289:
	cmp	byte ptr [r12 + 0x30], 0
	jne	.label_282
	mov	r13, rsi
	mov	qword ptr [rsp + 0x38], r13
	mov	qword ptr [rsp + 8], rdx
	mov	rbx, qword ptr [r12 + 0x28]
	mov	r14,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r12 + 0x20]
	cmp	rsi, rdx
	je	.label_284
	mov	rdi, qword ptr [r12]
	add	rsi, rdi
	sub	rsi, rdx
	call	memmove
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x10], 0
.label_284:
	add	r14, -0x22
	mov	qword ptr [rsp + 0x40], rbx
	mov	rax, rbx
	neg	rax
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rbx + 1]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	eax, al
	mov	dword ptr [rsp + 0x4c], eax
	jmp	.label_298
	nop	dword ptr [rax]
.label_280:
	mov	rax, qword ptr [r12 + 0x18]
	shr	rax, 5
	mov	qword ptr [rsp + 0x60], rax
	mov	rdi, qword ptr [r12]
	mov	edx, 0x20
	lea	rsi, [rsp + 0x60]
	call	x2nrealloc
	mov	qword ptr [r12], rax
	mov	rax, qword ptr [rsp + 0x60]
	shl	rax, 5
	mov	qword ptr [r12 + 0x18], rax
.label_298:
	mov	rbx, qword ptr [r12]
	mov	rbp, qword ptr [r12 + 8]
	add	rbp, rbx
	mov	rdi, r12
	call	buffer_linelim
	mov	rdi, rbp
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, rcx
	shl	rdx, 5
	mov	rsi, rax
	sub	rsi, rdx
	mov	rbp, rcx
	imul	rbp, qword ptr [rsp + 0x10]
	add	rbp, rax
	sub	rbp, rdi
	test	rcx, rcx
	je	.label_294
	neg	rcx
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rsp + 0x58], rsi
	shl	rcx, 5
	add	rbx, qword ptr [rax + rcx + 8]
	jmp	.label_292
	nop	word ptr cs:[rax + rax]
.label_294:
	mov	qword ptr [rsp + 0x58], rsi
.label_292:
	mov	rcx, r13
	nop	dword ptr [rax + rax]
.label_290:
	mov	rsi, qword ptr [rsp + 0x28]
	cmp	rsi, rbp
	jae	.label_288
	lea	rax, [rbp - 1]
	xor	edx, edx
	div	rsi
	mov	r13, rax
	mov	esi, 1
	mov	r12, rdi
	mov	rdx, r13
	call	fread_unlocked
	mov	rdi, r12
	lea	rcx, [rdi + rax]
	cmp	rax, r13
	je	.label_293
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x50], rdi
	mov	r12, qword ptr [rsp + 0x38]
	mov	r13, rcx
	mov	rdi, r12
	call	ferror_unlocked
	test	eax, eax
	jne	.label_297
	mov	rdi, r12
	call	feof_unlocked
	test	eax, eax
	je	.label_277
	mov	rax, qword ptr [rsp + 0x30]
	mov	byte ptr [rax + 0x30], 1
	mov	rcx, r13
	cmp	qword ptr [rax], rcx
	je	.label_283
	cmp	rbx, rcx
	je	.label_286
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, dword ptr [rsp + 0x4c]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_287
	mov	eax, dword ptr [rsp + 0x1c]
	mov	byte ptr [rcx], al
	inc	rcx
	jmp	.label_287
.label_277:
	mov	rcx, r13
	mov	rdi, qword ptr [rsp + 0x50]
	jmp	.label_287
.label_286:
	mov	rdi, qword ptr [rsp + 0x50]
.label_287:
	mov	rax, qword ptr [rsp + 0x20]
.label_293:
	mov	qword ptr [rsp + 0x50], rcx
	sub	rbp, rax
	mov	rdx, rcx
	sub	rdx, rdi
	jmp	.label_295
	nop	dword ptr [rax]
.label_279:
	sub	rbp, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x50]
	sub	rdx, rbx
	mov	rdi, rbx
.label_295:
	mov	esi, dword ptr [rsp + 0x4c]
	call	memchr
	test	rax, rax
	je	.label_281
	mov	r13, qword ptr [rsp + 0x58]
	mov	r12, rbx
	mov	rcx, r14
	mov	byte ptr [rax], 0
	lea	rbx, [rax + 1]
	lea	rdx, [r13 - 0x20]
	mov	qword ptr [rsp + 0x58], rdx
	mov	qword ptr [r13 - 0x20], r12
	mov	r14, rbx
	sub	r14, r12
	mov	qword ptr [r13 - 0x18], r14
	cmp	rcx, r14
	cmova	r14, rcx
	test	r15, r15
	je	.label_279
	cmp	qword ptr [r15 + 0x10], -1
	je	.label_291
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, r15
	call	limfield
.label_291:
	mov	qword ptr [r13 - 8], rax
	cmp	qword ptr [r15], -1
	mov	rax, qword ptr [rsp + 0x58]
	je	.label_278
	mov	rdi, rax
	mov	rsi, r15
	call	begfield
	mov	qword ptr [r13 - 0x10], rax
	jmp	.label_279
	nop	
.label_278:
	cmp	byte ptr [r15 + 0x30], 0
	je	.label_299
	dec	r12
	nop	word ptr [rax + rax]
.label_285:
	movsx	edi, byte ptr [r12 + 1]
	inc	r12
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_285
.label_299:
	mov	qword ptr [r13 - 0x10], r12
	jmp	.label_279
	nop	word ptr cs:[rax + rax]
.label_281:
	mov	r12, qword ptr [rsp + 0x30]
	cmp	byte ptr [r12 + 0x30], 0
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rdi, rdx
	mov	rcx, qword ptr [rsp + 0x38]
	je	.label_290
	jmp	.label_296
.label_288:
	mov	rdx, rdi
.label_296:
	mov	r13, rcx
	mov	rax, rdx
	sub	rax, qword ptr [r12]
	mov	qword ptr [r12 + 8], rax
	mov	rdi, r12
	mov	rbp, rdx
	call	buffer_linelim
	sub	rax, qword ptr [rsp + 0x58]
	sar	rax, 5
	mov	qword ptr [r12 + 0x10], rax
	je	.label_280
	sub	rbp, rbx
	mov	qword ptr [r12 + 0x20], rbp
	add	r14, 0x22
	mov	qword ptr [word ptr [rip + merge_buffer_size]],  r14
	mov	al, 1
	jmp	.label_282
.label_283:
	xor	eax, eax
.label_282:
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_297:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.159
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 8]
	call	sort_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406370

	.globl buffer_linelim
	.type buffer_linelim, @function
buffer_linelim:
	mov	rax, qword ptr [rdi]
	add	rax, qword ptr [rdi + 0x18]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406380

	.globl compare
	.type compare, @function
compare:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	qword ptr [word ptr [rip + keylist]],  0
	je	.label_300
	mov	rdi, rbx
	mov	rsi, r14
	call	keycompare
	test	eax, eax
	jne	.label_303
	mov	cl,  byte ptr [byte ptr [rip + unique]]
	xor	eax, eax
	and	cl, 1
	jne	.label_303
	mov	cl,  byte ptr [byte ptr [rip + stable]]
	and	cl, 1
	jne	.label_303
.label_300:
	mov	rsi, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r14 + 8]
	lea	r15, [rcx - 1]
	mov	r12, rsi
	dec	r12
	je	.label_302
	mov	eax, 1
	test	r15, r15
	je	.label_304
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	mov	rdi, qword ptr [rbx]
	mov	rdx, qword ptr [r14]
	je	.label_301
	call	xmemcoll0
	jmp	.label_304
.label_302:
	neg	r15
	sbb	eax, eax
	jmp	.label_304
.label_301:
	cmp	r12, r15
	mov	rax, r15
	cmovb	rax, r12
	mov	rsi, rdx
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	jne	.label_304
	cmp	r12, r15
	setne	al
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovae	eax, ecx
.label_304:
	cmp	byte ptr [byte ptr [rip + reverse]],  0
	je	.label_303
	neg	eax
.label_303:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406440

	.globl write_line
	.type write_line, @function
write_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, qword ptr [rdi]
	mov	r12, qword ptr [rdi + 8]
	lea	rbp, [rbx + r12]
	test	r14, r14
	jne	.label_305
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_305
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], r14
	dec	r12
	mov	r14d, 0xa
	mov	r13d, 0x3e
	nop	dword ptr [rax]
.label_310:
	cmp	rbx, rbp
	jae	.label_308
	test	r12, r12
	movsx	eax, byte ptr [rbx]
	lea	rbx, [rbx + 1]
	mov	edi, eax
	cmove	edi, r14d
	cmp	eax, 9
	cmove	edi, r13d
	mov	rsi, r15
	call	fputc_unlocked
	dec	r12
	cmp	eax, -1
	jne	.label_310
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.163
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 8]
	call	sort_die
.label_305:
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	and	al, 1
	jne	.label_309
	mov	al, 0xa
	jmp	.label_307
.label_309:
	xor	eax, eax
.label_307:
	mov	byte ptr [rbx + r12 - 1], al
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r12
	mov	rcx, r15
	call	fwrite_unlocked
	cmp	rax, r12
	jne	.label_306
	mov	byte ptr [rbp - 1], 0
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_308:
	mov	rdi, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	debug_line
.label_306:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.163
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	sort_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406560

	.globl limfield
	.type limfield, @function
limfield:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rsi
	mov	rbx, qword ptr [rdi]
	mov	rax, qword ptr [rdi + 8]
	lea	r15, [rbx + rax - 1]
	mov	r13, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [r14 + 0x18]
	cmp	r12, 1
	adc	r13, 0
	cmp	dword ptr [dword ptr [rip + tab]],  0x80
	je	.label_320
	cmp	rbx, r15
	jae	.label_317
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	nop	word ptr cs:[rax + rax]
.label_319:
	test	r13, r13
	je	.label_317
	dec	r13
	jmp	.label_324
	nop	
.label_322:
	inc	rbx
.label_324:
	cmp	rbx, r15
	jae	.label_314
	movsx	ecx, byte ptr [rbx]
	cmp	ecx, eax
	jne	.label_322
	lea	rcx, [rbx + 1]
	mov	rdx, r13
	or	rdx, r12
	cmovne	rbx, rcx
.label_314:
	cmp	rbx, r15
	jb	.label_319
	jmp	.label_317
	nop	word ptr cs:[rax + rax]
.label_321:
	dec	r13
.label_320:
	cmp	rbx, r15
	jae	.label_317
	test	r13, r13
	jne	.label_323
	jmp	.label_317
	nop	
.label_315:
	inc	rbx
.label_323:
	cmp	rbx, r15
	jae	.label_316
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_315
	jmp	.label_316
	nop	
.label_318:
	inc	rbx
.label_316:
	cmp	rbx, r15
	jae	.label_321
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	je	.label_318
	jmp	.label_321
.label_317:
	test	r12, r12
	je	.label_325
	cmp	byte ptr [r14 + 0x31], 0
	jne	.label_312
	jmp	.label_313
	nop	dword ptr [rax]
.label_311:
	inc	rbx
.label_312:
	cmp	rbx, r15
	jae	.label_313
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_311
.label_313:
	add	rbx, r12
	cmp	r15, rbx
	cmovb	rbx, r15
.label_325:
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
	#Procedure 0x406690

	.globl begfield
	.type begfield, @function
begfield:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rsi
	mov	rbx, qword ptr [rdi]
	mov	rax, qword ptr [rdi + 8]
	lea	r15, [rbx + rax - 1]
	mov	r13, qword ptr [r14]
	mov	r12, qword ptr [r14 + 8]
	cmp	dword ptr [dword ptr [rip + tab]],  0x80
	je	.label_333
	cmp	rbx, r15
	jae	.label_332
	mov	eax,  dword ptr [dword ptr [rip + tab]]
	nop	word ptr [rax + rax]
.label_329:
	test	r13, r13
	jne	.label_330
	jmp	.label_332
	nop	word ptr [rax + rax]
.label_340:
	inc	rbx
.label_330:
	cmp	rbx, r15
	jae	.label_331
	movsx	edx, byte ptr [rbx]
	mov	cl, 1
	cmp	edx, eax
	jne	.label_340
	jmp	.label_336
	nop	word ptr cs:[rax + rax]
.label_331:
	xor	ecx, ecx
.label_336:
	dec	r13
	lea	rdx, [rbx + 1]
	test	cl, cl
	cmovne	rbx, rdx
	cmp	rbx, r15
	jb	.label_329
	jmp	.label_332
	nop	word ptr cs:[rax + rax]
.label_338:
	dec	r13
.label_333:
	cmp	rbx, r15
	jae	.label_332
	test	r13, r13
	jne	.label_337
	jmp	.label_332
	nop	
.label_326:
	inc	rbx
.label_337:
	cmp	rbx, r15
	jae	.label_328
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_326
	jmp	.label_328
	nop	
.label_334:
	inc	rbx
.label_328:
	cmp	rbx, r15
	jae	.label_338
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	je	.label_334
	jmp	.label_338
.label_332:
	cmp	byte ptr [r14 + 0x30], 0
	jne	.label_339
	jmp	.label_327
	nop	word ptr [rax + rax]
.label_335:
	inc	rbx
.label_339:
	cmp	rbx, r15
	jae	.label_327
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_335
.label_327:
	add	rbx, r12
	cmp	r15, rbx
	cmovb	rbx, r15
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
	#Procedure 0x4067c0

	.globl keycompare
	.type keycompare, @function
keycompare:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	r13,  qword ptr [word ptr [rip + keylist]]
	mov	r12, qword ptr [rdi + 0x10]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, qword ptr [rsi + 0x10]
	mov	r15, qword ptr [rsi + 0x18]
	mov	byte ptr [rsp + 0xf], al
	mov	byte ptr [rsp + 0xe], al
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_346
	nop	word ptr cs:[rax + rax]
.label_354:
	mov	qword ptr [rsp + 0x48], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	begfield
	mov	r12, rax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r13
	call	begfield
	mov	rbp, rax
.label_346:
	mov	qword ptr [rsp + 0x28], rbp
	mov	rbx, r13
	mov	r14, qword ptr [rbx + 0x20]
	mov	r13, qword ptr [rbx + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	r12, rcx
	cmova	rcx, r12
	mov	qword ptr [rsp + 0x48], rcx
	cmp	rbp, r15
	cmova	r15, rbp
	mov	qword ptr [rsp + 0x38], r15
	mov	rax, r15
	sub	rcx, r12
	mov	qword ptr [rsp + 0x50], rcx
	sub	rax, rbp
	mov	qword ptr [rsp + 0x58], rax
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	jne	.label_361
	mov	rdi, rbx
	call	key_numeric
	test	al, al
	jne	.label_361
	cmp	byte ptr [rbx + 0x36], 0
	jne	.label_361
	cmp	byte ptr [rbx + 0x33], 0
	jne	.label_361
	cmp	byte ptr [rbx + 0x38], 0
	je	.label_378
.label_361:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rax, r13
	or	rax, r14
	setne	bl
	je	.label_387
	mov	byte ptr [rsp + 0xd], bl
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x50]
	lea	rdi, [rax + rcx + 2]
	cmp	rdi, 0xfa1
	lea	r15, [rsp + 0x60]
	mov	eax, 0
	mov	qword ptr [rsp + 0x10], rax
	jb	.label_385
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [rsp + 0x10], rax
.label_385:
	mov	rbp, r12
	cmp	qword ptr [rsp + 0x48], rbp
	mov	ebx, 0
	mov	r12d, 0
	je	.label_393
	nop	word ptr cs:[rax + rax]
.label_364:
	test	r14, r14
	je	.label_347
	movsx	edi, byte ptr [rbp + rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [r14 + rax], 0
	jne	.label_351
.label_347:
	mov	al, byte ptr [rbp + rbx]
	test	r13, r13
	je	.label_358
	movsx	edi, al
	call	to_uchar
	movzx	eax, al
	mov	al, byte ptr [r13 + rax]
.label_358:
	mov	byte ptr [r15 + r12], al
	inc	r12
.label_351:
	inc	rbx
	cmp	rbx, qword ptr [rsp + 0x50]
	jb	.label_364
.label_393:
	mov	qword ptr [rsp + 0x40], r15
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [r15 + rax + 1]
	mov	qword ptr [rsp + 0x48], rax
	mov	byte ptr [r15 + r12], 0
	mov	r15, qword ptr [rsp + 0x28]
	cmp	qword ptr [rsp + 0x38], r15
	mov	ebp, 0
	mov	ebx, 0
	je	.label_367
	nop	word ptr cs:[rax + rax]
.label_388:
	test	r14, r14
	je	.label_370
	movsx	edi, byte ptr [r15 + rbp]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [r14 + rax], 0
	jne	.label_380
.label_370:
	mov	al, byte ptr [r15 + rbp]
	test	r13, r13
	je	.label_383
	movsx	edi, al
	call	to_uchar
	movzx	eax, al
	mov	al, byte ptr [r13 + rax]
.label_383:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	byte ptr [rcx + rbx], al
	inc	rbx
.label_380:
	inc	rbp
	cmp	rbp, qword ptr [rsp + 0x58]
	jb	.label_388
.label_367:
	mov	rax, qword ptr [rsp + 0x48]
	mov	byte ptr [rax + rbx], 0
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13, qword ptr [rsp + 0x30]
	mov	bl, byte ptr [rsp + 0xd]
	jmp	.label_344
.label_387:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	al, byte ptr [rcx]
	mov	byte ptr [rsp + 0xf], al
	mov	byte ptr [rcx], 0
	mov	rcx, qword ptr [rsp + 0x38]
	mov	al, byte ptr [rcx]
	mov	byte ptr [rsp + 0xe], al
	mov	byte ptr [rcx], 0
	mov	qword ptr [rsp + 0x40], r12
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x48], rax
	mov	r12, qword ptr [rsp + 0x50]
	mov	r13, qword ptr [rsp + 0x30]
.label_344:
	cmp	byte ptr [r13 + 0x32], 0
	je	.label_356
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x48]
	call	numcompare
	jmp	.label_357
	nop	dword ptr [rax]
.label_356:
	cmp	byte ptr [r13 + 0x34], 0
	je	.label_363
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x48]
	call	general_numcompare
	jmp	.label_357
.label_363:
	cmp	byte ptr [r13 + 0x35], 0
	je	.label_368
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x48]
	call	human_numcompare
	nop	word ptr cs:[rax + rax]
.label_357:
	mov	r15d, eax
.label_381:
	test	bl, bl
	je	.label_374
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_348
	nop	word ptr cs:[rax + rax]
.label_374:
	mov	al, byte ptr [rsp + 0xf]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	byte ptr [rcx + r12], al
	mov	al, byte ptr [rsp + 0xe]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	byte ptr [rdx + rcx], al
.label_348:
	test	r15d, r15d
	jne	.label_371
	mov	r13, qword ptr [r13 + 0x40]
	xor	r15d, r15d
	test	r13, r13
	je	.label_352
	cmp	qword ptr [r13 + 0x10], -1
	je	.label_377
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	limfield
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r13
	call	limfield
	mov	r15, rax
	jmp	.label_395
.label_377:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	lea	rbp, [rax + rcx - 1]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	lea	r15, [rax + rcx - 1]
.label_395:
	cmp	qword ptr [r13], -1
	jne	.label_354
	mov	qword ptr [rsp + 0x48], rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rax]
	cmp	byte ptr [r13 + 0x30], 0
	je	.label_346
	mov	rbx, qword ptr [rsp + 0x48]
	jmp	.label_365
	nop	word ptr cs:[rax + rax]
.label_386:
	inc	r12
.label_365:
	cmp	r12, rbx
	jae	.label_341
	movsx	edi, byte ptr [r12]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_386
	jmp	.label_341
.label_390:
	inc	rbp
.label_341:
	cmp	rbp, r15
	jae	.label_346
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_390
	jmp	.label_346
.label_368:
	cmp	byte ptr [r13 + 0x36], 0
	je	.label_382
	xor	esi, esi
	mov	rdi, qword ptr [rsp + 0x40]
	call	getmonth
	mov	r15d, eax
	xor	esi, esi
	mov	rdi, qword ptr [rsp + 0x48]
	call	getmonth
	sub	r15d, eax
	jmp	.label_381
.label_382:
	cmp	byte ptr [r13 + 0x33], 0
	je	.label_389
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rsp + 0x58]
	call	compare_random
	jmp	.label_357
.label_378:
	mov	qword ptr [rsp + 0x30], rbx
	test	r14, r14
	je	.label_384
	test	r13, r13
	mov	rbp, r12
	jne	.label_394
	jmp	.label_343
.label_389:
	cmp	byte ptr [r13 + 0x38], 0
	je	.label_345
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x48]
	call	filevercmp
	jmp	.label_357
.label_384:
	mov	rbx, qword ptr [rsp + 0x48]
	cmp	rbx, r12
	je	.label_360
	mov	r14, r13
	mov	r15d, 1
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x30]
	je	.label_371
	test	r14, r14
	je	.label_369
	mov	rbp, qword ptr [rsp + 0x28]
	nop	word ptr [rax + rax]
.label_353:
	cmp	rbp, qword ptr [rsp + 0x38]
	jae	.label_373
	cmp	r12, rbx
	jae	.label_373
	movsx	edi, byte ptr [r12]
	inc	r12
	call	to_uchar
	movzx	eax, al
	movsx	edi, byte ptr [r14 + rax]
	call	to_uchar
	mov	r13b, al
	movsx	edi, byte ptr [rbp]
	inc	rbp
	call	to_uchar
	movzx	eax, al
	movsx	edi, byte ptr [r14 + rax]
	call	to_uchar
	movzx	r15d, r13b
	mov	r13, qword ptr [rsp + 0x30]
	movzx	eax, al
	sub	r15d, eax
	je	.label_353
	jmp	.label_371
.label_359:
	inc	r12
	inc	rbx
	mov	qword ptr [rsp + 0x28], rbx
	mov	rbp, r12
.label_394:
	xor	r12d, r12d
	cmp	rbp, qword ptr [rsp + 0x48]
	mov	r15d, 0
	jae	.label_391
	nop	
.label_342:
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	movzx	eax, al
	mov	r15b, 1
	cmp	byte ptr [r14 + rax], 0
	je	.label_391
	inc	rbp
	cmp	rbp, qword ptr [rsp + 0x48]
	jb	.label_342
	xor	r15d, r15d
.label_391:
	mov	rbx, rbp
	mov	rbp, qword ptr [rsp + 0x28]
	jmp	.label_349
	nop	dword ptr [rax]
.label_362:
	inc	rbp
.label_349:
	cmp	rbp, qword ptr [rsp + 0x38]
	jae	.label_355
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [r14 + rax], 0
	jne	.label_362
	mov	r12d, 1
	test	r15b, r15b
	je	.label_355
	mov	r12, rbx
	movsx	edi, byte ptr [r12]
	call	to_uchar
	movzx	eax, al
	movsx	edi, byte ptr [r13 + rax]
	call	to_uchar
	mov	r15b, al
	mov	rbx, rbp
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	movsx	edi, byte ptr [r13 + rax]
	call	to_uchar
	movzx	r15d, r15b
	movzx	eax, al
	sub	r15d, eax
	je	.label_359
	jmp	.label_376
.label_345:
	test	r12, r12
	je	.label_379
	mov	r15d, 1
	cmp	qword ptr [rsp + 0x58], 0
	je	.label_381
	lea	rsi, [r12 + 1]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rcx, [rax + 1]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x48]
	call	xmemcoll0
	jmp	.label_357
.label_392:
	inc	rbp
	inc	rbx
	mov	qword ptr [rsp + 0x28], rbx
.label_343:
	xor	r12d, r12d
	cmp	rbp, qword ptr [rsp + 0x48]
	mov	r15d, 0
	jae	.label_375
	nop	word ptr cs:[rax + rax]
.label_350:
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	movzx	eax, al
	mov	r15b, 1
	cmp	byte ptr [r14 + rax], 0
	je	.label_375
	inc	rbp
	cmp	rbp, qword ptr [rsp + 0x48]
	jb	.label_350
	xor	r15d, r15d
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_372
.label_375:
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_372
	nop	word ptr cs:[rax + rax]
.label_366:
	inc	rbx
.label_372:
	cmp	rbx, qword ptr [rsp + 0x38]
	jae	.label_355
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [r14 + rax], 0
	jne	.label_366
	mov	r12d, 1
	test	r15b, r15b
	je	.label_355
	movsx	edi, byte ptr [rbp]
	call	to_uchar
	mov	r15b, al
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	r15d, r15b
	movzx	eax, al
	sub	r15d, eax
	je	.label_392
	jmp	.label_376
.label_355:
	movzx	r15d, r15b
	sub	r15d, r12d
	mov	r13, qword ptr [rsp + 0x30]
	jmp	.label_348
.label_360:
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rsp + 0x28]
	mov	r15d, 0
	mov	eax, 0xffffffff
	cmovne	r15d, eax
	mov	r13, qword ptr [rsp + 0x30]
	jmp	.label_348
.label_379:
	mov	rax, qword ptr [rsp + 0x58]
	neg	rax
	sbb	r15d, r15d
	jmp	.label_381
.label_369:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x50]
	cmp	rcx, rax
	mov	rdx, rax
	cmovb	rdx, rcx
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x28]
	call	memcmp
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_371
.label_373:
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rax, qword ptr [rsp + 0x58]
	setne	al
	mov	r15d, 0xffffffff
	jb	.label_371
	movzx	r15d, al
	jmp	.label_348
.label_376:
	mov	r13, qword ptr [rsp + 0x30]
.label_371:
	cmp	byte ptr [r13 + 0x37], 0
	je	.label_352
	neg	r15d
.label_352:
	mov	eax, r15d
	add	rsp, 0x1008
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
	#Procedure 0x406f40

	.globl numcompare
	.type numcompare, @function
numcompare:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	dec	rbx
	nop	dword ptr [rax]
.label_396:
	movsx	edi, byte ptr [rbx + 1]
	inc	rbx
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_396
	dec	r14
	nop	dword ptr [rax + rax]
.label_397:
	movsx	edi, byte ptr [r14 + 1]
	inc	r14
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_397
	mov	edx,  dword ptr [dword ptr [rip + decimal_point]]
	mov	ecx,  dword ptr [dword ptr [rip + thousands_sep]]
	mov	rdi, rbx
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strnumcmp
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fb0

	.globl general_numcompare
	.type general_numcompare, @function
general_numcompare:
	push	r14
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x20]
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	lea	rsi, [rsp + 0x18]
	mov	rdi, r14
	call	strtold
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	qword ptr [rsp + 0x20], rbx
	je	.label_404
	mov	eax, 1
	cmp	rcx, r14
	je	.label_399
	fld	xword ptr [rsp + 0xc]
	fxch	st(1)
	fucomi	st(1)
	jbe	.label_401
	fstp	st(0)
	fstp	st(0)
	mov	eax, 0xffffffff
	jmp	.label_398
.label_404:
	fstp	st(0)
	xor	edx, edx
	cmp	rcx, r14
	mov	eax, 0xffffffff
	cmove	eax, edx
	jmp	.label_398
.label_399:
	fstp	st(0)
	jmp	.label_398
.label_401:
	fxch	st(1)
	fucomi	st(1)
	jbe	.label_402
	fstp	st(1)
	fstp	st(0)
.label_398:
	fldz	
	fldz	
.label_400:
	fstp	st(1)
	fstp	st(0)
	add	rsp, 0x28
	pop	rbx
	pop	r14
	ret	
.label_402:
	xor	eax, eax
	fucomi	st(1)
	jne	.label_403
	jnp	.label_400
.label_403:
	fxch	st(1)
	fucomip	st(0)
	mov	eax, 0xffffffff
	fldz	
	fxch	st(1)
	jnp	.label_400
	fstp	st(1)
	fucomip	st(0)
	mov	eax, 1
	fldz	
	fldz	
	jnp	.label_400
	fstp	st(1)
	fstp	st(0)
	mov	rdi, rbx
	mov	rsi, r14
	call	nan_compare
	jmp	.label_398
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407070

	.globl human_numcompare
	.type human_numcompare, @function
human_numcompare:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	dec	rbx
	nop	dword ptr [rax]
.label_406:
	movsx	edi, byte ptr [rbx + 1]
	inc	rbx
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_406
	dec	r14
	nop	dword ptr [rax + rax]
.label_407:
	movsx	edi, byte ptr [r14 + 1]
	inc	r14
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_407
	mov	rdi, rbx
	call	find_unit_order
	mov	ebp, eax
	mov	rdi, r14
	call	find_unit_order
	sub	ebp, eax
	jne	.label_405
	mov	edx,  dword ptr [dword ptr [rip + decimal_point]]
	mov	ecx,  dword ptr [dword ptr [rip + thousands_sep]]
	mov	rdi, rbx
	mov	rsi, r14
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strnumcmp
.label_405:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407100

	.globl getmonth
	.type getmonth, @function
getmonth:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp], rsi
	mov	r15, rdi
	mov	r13d, 0xc
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_409:
	mov	r12, r15
	movsx	edi, byte ptr [r12]
	call	to_uchar
	movzx	eax, al
	lea	r15, [r12 + 1]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_409
.label_414:
	lea	rcx, [r13 + rbx]
	shr	rcx, 1
	mov	qword ptr [rsp + 0x20], rcx
	shl	rcx, 4
	mov	rbp,  qword ptr [word ptr [rcx + monthtab]]
	mov	r14b, byte ptr [rbp]
	test	r14b, r14b
	je	.label_416
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], r13
	mov	r13, -1
	nop	dword ptr [rax]
.label_412:
	movsx	edi, byte ptr [r15 + r13]
	call	to_uchar
	movzx	eax, al
	movsx	edi,  byte ptr [byte ptr [rax + fold_toupper]]
	call	to_uchar
	mov	bl, al
	movsx	edi, r14b
	call	to_uchar
	movzx	ecx, bl
	movzx	eax, al
	cmp	ecx, eax
	jb	.label_408
	ja	.label_410
	mov	r14b, byte ptr [rbp + r13 + 2]
	inc	r13
	test	r14b, r14b
	jne	.label_412
	jmp	.label_411
	nop	
.label_408:
	mov	r13, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_413
	nop	dword ptr [rax]
.label_410:
	mov	rax, qword ptr [rsp + 0x20]
	inc	rax
	mov	rbx, rax
	mov	r13, qword ptr [rsp + 0x10]
.label_413:
	xor	eax, eax
	cmp	rbx, r13
	jb	.label_414
	jmp	.label_417
.label_411:
	add	r15, r13
	mov	r12, r15
	mov	rcx, qword ptr [rsp + 8]
.label_416:
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_415
	mov	qword ptr [rax], r12
.label_415:
	mov	eax,  dword ptr [dword ptr [rcx + label_114]]
.label_417:
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
	#Procedure 0x407220

	.globl compare_random
	.type compare_random, @function
compare_random:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1148
	mov	rbx, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbp, rdi
	lea	rdi, [rsp + 0xdc]
	mov	esi, OFFSET FLAT:random_md5_state
	mov	edx, 0x9c
	call	memcpy
	lea	rdi, [rsp + 0x40]
	mov	esi, OFFSET FLAT:random_md5_state
	mov	edx, 0x9c
	call	memcpy
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_433
	lea	rcx, [rsp + 0x1a0]
	lea	rax, [rbp + r15]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x10], rbp
	lea	rax, [r14 + rbx]
	mov	qword ptr [rsp + 0x38], rax
	mov	r13, r14
	add	rbx, r15
	lea	rbp, [rbx + rbx*2 + 2]
	mov	qword ptr [rsp], rbp
	mov	eax, 0xfa0
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	r14, rcx
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_421
.label_429:
	cmp	rbx, r15
	cmovb	r15, rbx
	seta	al
	movzx	ebx, al
	sbb	ebx, 0
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r15
	call	memcmp
	test	eax, eax
	cmovne	ebx, eax
	mov	dword ptr [rsp + 0xc], ebx
	nop	dword ptr [rax]
.label_421:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, rbp
	jae	.label_434
	lea	rbx, [rax + rax*2]
	shr	rbx, 1
	cmp	rbp, rbx
	cmova	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x28], rax
	test	rax, rax
	mov	ebp, 0xfa0
	cmovne	rbp, rbx
	mov	rbx, rax
	lea	rax, [rsp + 0x1a0]
	cmove	rbx, rax
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_420
	nop	word ptr cs:[rax + rax]
.label_434:
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbx, r14
	mov	rbp, rax
.label_420:
	mov	r14, qword ptr [rsp + 0x20]
	cmp	r13, r14
	mov	r15d, 0
	jae	.label_431
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, rbp
	call	xstrxfrm
	mov	r15, rax
	inc	r15
.label_431:
	cmp	r12, qword ptr [rsp + 0x38]
	mov	eax, 0
	jae	.label_418
	lea	rdi, [rbx + r15]
	mov	rdx, rbp
	sub	rdx, r15
	mov	eax, 0
	cmovb	rdi, rax
	cmovb	rdx, rax
	mov	rsi, r12
	call	xstrxfrm
	inc	rax
.label_418:
	mov	qword ptr [rsp + 0x30], rax
	cmp	rbp, r15
	setb	cl
	lea	rax, [rax + r15]
	cmp	rax, rbp
	ja	.label_423
	test	cl, cl
	je	.label_427
.label_423:
	lea	rbp, [rax + rax*2]
	shr	rbp, 1
	movabs	rcx, 0x5555555555555555
	cmp	rax, rcx
	cmovae	rbp, rax
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rdi, rbp
	call	xmalloc
	mov	rbx, rax
	cmp	r13, r14
	jae	.label_435
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r15
	call	strxfrm
.label_435:
	cmp	r12, qword ptr [rsp + 0x38]
	jae	.label_419
	mov	rdi, rbx
	add	rdi, r15
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x30]
	call	strxfrm
.label_419:
	mov	qword ptr [rsp + 0x28], rbx
.label_427:
	cmp	r13, r14
	jae	.label_422
	mov	qword ptr [rsp + 0x18], rbp
	mov	rdi, r13
	call	strlen
	lea	r13, [rax + r13 + 1]
	jmp	.label_425
.label_422:
	mov	qword ptr [rsp + 0x18], rbp
.label_425:
	mov	r14, rbx
	cmp	r12, qword ptr [rsp + 0x38]
	jae	.label_428
	mov	rdi, r12
	call	strlen
	lea	r12, [rax + r12 + 1]
.label_428:
	cmp	r13, qword ptr [rsp + 0x20]
	jb	.label_430
	cmp	r12, qword ptr [rsp + 0x38]
	jae	.label_432
.label_430:
	mov	qword ptr [rsp + 0x10], r13
	mov	r13, r12
	mov	rdi, r14
	mov	rbx, r15
	mov	rsi, rbx
	lea	rdx, [rsp + 0x40]
	call	md5_process_bytes
	lea	r12, [r14 + rbx]
	mov	rdi, r12
	mov	r15, qword ptr [rsp + 0x30]
	mov	rsi, r15
	lea	rdx, [rsp + 0xdc]
	call	md5_process_bytes
	cmp	dword ptr [rsp + 0xc], 0
	mov	rbp, qword ptr [rsp]
	jne	.label_421
	jmp	.label_429
.label_432:
	mov	rdi, r14
	lea	rbp, [rdi + r15]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_424
.label_433:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	dword ptr [rsp + 0xc], 0
	mov	rdi, rbp
	mov	rbp, r14
.label_424:
	mov	qword ptr [rsp + 0x38], rdi
	lea	r14, [rsp + 0x40]
	mov	rsi, r15
	mov	rdx, r14
	call	md5_process_bytes
	lea	r12, [rsp + 0x180]
	mov	rdi, r14
	mov	rsi, r12
	call	md5_finish_ctx
	mov	rdi, rbp
	mov	r13, rbp
	mov	rsi, rbx
	mov	rbp, rbx
	lea	rbx, [rsp + 0xdc]
	mov	rdx, rbx
	call	md5_process_bytes
	lea	r14, [rsp + 0x190]
	mov	rdi, rbx
	mov	rsi, r14
	call	md5_finish_ctx
	mov	edx, 0x10
	mov	rdi, r12
	mov	rsi, r14
	call	memcmp
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_426
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	mov	r14d, eax
	jne	.label_426
	cmp	r15, rbp
	mov	rdx, rbp
	mov	rbx, rbp
	cmovb	rdx, r15
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, r13
	call	memcmp
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_426
	cmp	r15, rbx
	seta	al
	movzx	r14d, al
	sbb	r14d, 0
.label_426:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	eax, r14d
	add	rsp, 0x1148
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
	#Procedure 0x4075b0

	.globl nan_compare
	.type nan_compare, @function
nan_compare:
	push	rbx
	sub	rsp, 0x20
	mov	rbx, rsi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	xor	esi, esi
	call	strtold
	fstp	xword ptr [rsp + 0x10]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	xor	esi, esi
	mov	rdi, rbx
	call	strtold
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp]
	mov	edx, 0x10
	call	memcmp
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407600

	.globl find_unit_order
	.type find_unit_order, @function
find_unit_order:
	push	rbx
	sub	rsp, 0x10
	movzx	ebx, byte ptr [rdi]
	cmp	ebx, 0x2d
	sete	al
	movzx	eax, al
	add	rax, rdi
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rsp + 8]
	call	traverse_raw_number
	mov	cl, al
	xor	eax, eax
	movzx	ecx, cl
	cmp	ecx, 0x31
	jb	.label_436
	movzx	ecx, bl
	mov	rax, qword ptr [rsp + 8]
	movzx	eax, byte ptr [rax]
	movsx	edx,  byte ptr [byte ptr [rax + unit_order]]
	mov	eax, edx
	neg	eax
	cmp	ecx, 0x2d
	cmovne	eax, edx
.label_436:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407660

	.globl traverse_raw_number
	.type traverse_raw_number, @function
traverse_raw_number:
	mov	rax, qword ptr [rdi]
	lea	r10, [rax + 1]
	mov	cl, byte ptr [rax]
	movzx	r11d, cl
	lea	edx, [r11 - 0x30]
	cmp	edx, 9
	ja	.label_437
	mov	r8d,  dword ptr [dword ptr [rip + thousands_sep]]
	xor	edx, edx
	nop	
.label_442:
	movzx	r9d, cl
	movzx	esi, dl
	cmp	esi, r9d
	mov	r9b, cl
	jb	.label_438
	mov	r9b, dl
.label_438:
	movsx	esi, byte ptr [r10]
	add	rax, 2
	cmp	esi, r8d
	cmovne	rax, r10
	lea	r10, [rax + 1]
	mov	cl, byte ptr [rax]
	movzx	r11d, cl
	lea	edx, [r11 - 0x30]
	cmp	edx, 0xa
	mov	dl, r9b
	jb	.label_442
	cmp	esi, r8d
	je	.label_439
	jmp	.label_444
.label_437:
	xor	r9d, r9d
.label_444:
	cmp	r11d,  dword ptr [dword ptr [rip + decimal_point]]
	jne	.label_440
	movzx	esi, byte ptr [r10]
	inc	r10
	lea	eax, [rsi - 0x30]
	cmp	eax, 9
	ja	.label_441
	mov	rax, r10
	nop	dword ptr [rax]
.label_443:
	movzx	ecx, sil
	movzx	edx, r9b
	cmp	edx, ecx
	jb	.label_445
	mov	sil, r9b
.label_445:
	mov	r9b, sil
	movzx	esi, byte ptr [rax]
	inc	rax
	mov	ecx, esi
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_443
	jmp	.label_439
.label_440:
	mov	rax, r10
	jmp	.label_439
.label_441:
	mov	rax, r10
.label_439:
	dec	rax
	mov	qword ptr [rdi], rax
	movzx	eax, r9b
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407720

	.globl xstrxfrm
	.type xstrxfrm, @function
xstrxfrm:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	strxfrm
	mov	ebp, dword ptr [rbp]
	test	ebp, ebp
	jne	.label_446
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_446:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.160
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.161
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.162
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r14
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077e0

	.globl debug_line
	.type debug_line, @function
debug_line:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx,  qword ptr [word ptr [rip + keylist]]
	mov	rsi, rbx
	call	debug_key
	test	rbx, rbx
	jne	.label_448
	jmp	.label_447
	nop	dword ptr [rax]
.label_449:
	mov	rdi, r14
	mov	rsi, rbx
	call	debug_key
.label_448:
	mov	rbx, qword ptr [rbx + 0x40]
	test	rbx, rbx
	jne	.label_449
	mov	al,  byte ptr [byte ptr [rip + unique]]
	and	al, 1
	jne	.label_447
	test	byte ptr [byte ptr [rip + stable]],  1
	jne	.label_447
	xor	esi, esi
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	debug_key
.label_447:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407840

	.globl debug_key
	.type debug_key, @function
debug_key:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rsi
	mov	r13, rdi
	mov	r14, qword ptr [r13]
	mov	rax, qword ptr [r13 + 8]
	lea	r15, [r14 + rax - 1]
	test	r12, r12
	je	.label_450
	cmp	qword ptr [r12], -1
	mov	rbx, r14
	je	.label_462
	mov	rdi, r13
	mov	rsi, r12
	call	begfield
	mov	rbx, rax
.label_462:
	cmp	qword ptr [r12 + 0x10], -1
	je	.label_451
	mov	rdi, r13
	mov	rsi, r12
	call	limfield
	mov	r15, rax
.label_451:
	cmp	byte ptr [r12 + 0x30], 0
	je	.label_456
	cmp	qword ptr [r12], -1
	je	.label_459
.label_456:
	cmp	byte ptr [r12 + 0x36], 0
	jne	.label_459
	mov	rdi, r12
	call	key_numeric
	test	al, al
	je	.label_453
.label_459:
	mov	bpl, byte ptr [r15]
	mov	byte ptr [r15], 0
	dec	rbx
	nop	dword ptr [rax]
.label_458:
	movsx	edi, byte ptr [rbx + 1]
	inc	rbx
	call	to_uchar
	movzx	eax, al
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_458
	mov	qword ptr [rsp + 0x10], rbx
	cmp	r15, rbx
	jb	.label_457
	cmp	byte ptr [r12 + 0x36], 0
	je	.label_464
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	call	getmonth
	jmp	.label_452
.label_450:
	mov	rbx, r14
	jmp	.label_453
.label_464:
	cmp	byte ptr [r12 + 0x34], 0
	je	.label_455
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	call	strtold
	fstp	st(0)
	jmp	.label_452
.label_455:
	cmp	byte ptr [r12 + 0x32], 0
	jne	.label_463
	cmp	byte ptr [r12 + 0x35], 0
	je	.label_457
.label_463:
	cmp	rbx, r15
	jae	.label_454
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	sete	al
	jmp	.label_461
.label_457:
	mov	qword ptr [rsp + 0x10], r15
.label_452:
	mov	byte ptr [r15], bpl
	mov	r15, qword ptr [rsp + 0x10]
.label_453:
	mov	rdi, r14
	mov	rsi, rbx
	call	debug_width
	mov	r14, rax
	mov	rdi, rbx
	mov	rsi, r15
	call	debug_width
	mov	rdi, r14
	mov	rsi, rax
	call	mark_key
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_454:
	xor	eax, eax
.label_461:
	movzx	eax, al
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rsp + 8]
	call	traverse_raw_number
	movzx	eax, al
	cmp	eax, 0x30
	jb	.label_452
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [r12 + 0x35], 0
	je	.label_460
	movzx	ecx, byte ptr [rax]
	cmp	byte ptr [byte ptr [rcx + unit_order]],  0
	setne	cl
	jmp	.label_465
.label_460:
	xor	ecx, ecx
.label_465:
	movzx	ecx, cl
	add	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_452
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079e0

	.globl debug_width
	.type debug_width, @function
debug_width:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	sub	rsi, rbx
	xor	edx, edx
	call	mbsnwidth
	cdqe	
	cmp	rbx, r14
	jae	.label_467
	nop	dword ptr [rax + rax]
.label_466:
	movzx	ecx, byte ptr [rbx]
	inc	rbx
	cmp	ecx, 9
	sete	cl
	movzx	ecx, cl
	add	rax, rcx
	cmp	r14, rbx
	jne	.label_466
.label_467:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407a20

	.globl mark_key
	.type mark_key, @function
mark_key:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_468
	nop	
.label_469:
	mov	edi, 0x20
	call	putchar_unlocked
	dec	rbx
	jne	.label_469
.label_468:
	test	r14, r14
	je	.label_470
	nop	word ptr cs:[rax + rax]
.label_471:
	mov	edi, 0x5f
	call	putchar_unlocked
	dec	r14
	jne	.label_471
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	putchar_unlocked
.label_470:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.164
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407aa0

	.globl move_fd
	.type move_fd, @function
move_fd:
	push	rbx
	mov	ebx, edi
	cmp	ebx, esi
	jne	.label_472
	pop	rbx
	ret	
.label_472:
	mov	edi, ebx
	call	dup2
	mov	edi, ebx
	pop	rbx
	jmp	close
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ac0

	.globl create_temp
	.type create_temp, @function
create_temp:
	xor	esi, esi
	jmp	maybe_create_temp
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ad0

	.globl mergefiles
	.type mergefiles, @function
mergefiles:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, r8
	mov	r12, rcx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	lea	rdx, [rsp]
	mov	rsi, rbp
	call	open_input_files
	mov	rbx, rax
	cmp	rbx, rbp
	jae	.label_474
	cmp	rbx, 1
	jbe	.label_473
.label_474:
	mov	r9, qword ptr [rsp]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	mov	rcx, r12
	mov	r8, r15
	call	mergefps
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_473:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	shl	rbx, 4
	mov	rsi, qword ptr [r14 + rbx]
	mov	rdi, rax
	call	sort_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407b50

	.globl avoid_trashing_input
	.type avoid_trashing_input, @function
avoid_trashing_input:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15, rcx
	mov	qword ptr [rsp + 8], rdx
	mov	r12, rsi
	mov	rbx, rdi
	cmp	r12, rdx
	jae	.label_475
	mov	rax, r12
	shl	rax, 4
	add	rbx, rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_479:
	mov	rax, qword ptr [rbx]
	movzx	ecx, byte ptr [rax]
	mov	r14d, 0x2d
	sub	r14d, ecx
	jne	.label_477
	movzx	r14d, byte ptr [rax + 1]
	neg	r14d
.label_477:
	test	r15, r15
	je	.label_482
	mov	rsi, qword ptr [rbx]
	mov	rdi, r15
	call	strcmp
	test	r14d, r14d
	je	.label_482
	test	eax, eax
	je	.label_483
.label_482:
	call	get_outstatus
	mov	r13, rax
	test	r13, r13
	je	.label_475
	test	r14d, r14d
	je	.label_478
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsp + 0x18]
	call	stat
	jmp	.label_481
	nop	word ptr [rax + rax]
.label_478:
	xor	edi, edi
	lea	rsi, [rsp + 0x18]
	call	__fstat
.label_481:
	test	eax, eax
	jne	.label_476
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, qword ptr [r13 + 8]
	jne	.label_476
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [r13]
	jne	.label_476
	nop	word ptr cs:[rax + rax]
.label_483:
	test	rbp, rbp
	jne	.label_480
	lea	rdi, [rsp + 0x10]
	call	create_temp
	mov	rbp, rax
	mov	rcx, qword ptr [rsp + 0x10]
	lea	r8, [rbp + 0xd]
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	mergefiles
.label_480:
	lea	rax, [rbp + 0xd]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rbp
.label_476:
	inc	r12
	add	rbx, 0x10
	cmp	r12, qword ptr [rsp + 8]
	jb	.label_479
.label_475:
	add	rsp, 0xa8
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
	#Procedure 0x407c80

	.globl open_input_files
	.type open_input_files, @function
open_input_files:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	esi, 8
	mov	rdi, r14
	call	xnmalloc
	mov	r15, rax
	mov	qword ptr [rbx], r15
	xor	ebx, ebx
	test	r14, r14
	je	.label_487
	add	r12, 8
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_486:
	mov	rdi, qword ptr [r12]
	test	rdi, rdi
	je	.label_484
	cmp	byte ptr [rdi + 0xc], 0
	je	.label_484
	call	open_temp
	jmp	.label_485
	nop	word ptr cs:[rax + rax]
.label_484:
	mov	rdi, qword ptr [r12 - 8]
	mov	esi, OFFSET FLAT:.str.52
	call	stream_open
.label_485:
	mov	qword ptr [r15 + rbx*8], rax
	test	rax, rax
	je	.label_487
	inc	rbx
	add	r12, 0x10
	cmp	rbx, r14
	jb	.label_486
.label_487:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d20

	.globl mergefps
	.type mergefps, @function
mergefps:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rsp + 0x70], r9
	mov	qword ptr [rsp + 0x80], r8
	mov	qword ptr [rsp + 0x78], rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x38], rsi
	mov	rbx, rdi
	mov	esi, 0x38
	mov	rdi, r14
	call	xnmalloc
	mov	qword ptr [rsp + 0x58], rax
	mov	esi, 8
	mov	rdi, r14
	call	xnmalloc
	mov	qword ptr [rsp + 0xa0], rax
	mov	esi, 8
	mov	rdi, r14
	call	xnmalloc
	mov	qword ptr [rsp + 0x98], rax
	mov	esi, 8
	mov	rdi, r14
	call	xnmalloc
	mov	r15, rax
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0xa8], 0
	xor	r13d, r13d
	mov	eax, 1
	mov	qword ptr [rsp + 0x88], rax
	test	r14, r14
	je	.label_494
	mov	qword ptr [rsp + 0x68], rbx
	mov	qword ptr [rsp + 0x60], rbx
.label_525:
	imul	rcx, r13, 0x38
	mov	qword ptr [rsp + 0x48], rcx
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + rcx]
	mov	qword ptr [rsp + 0x90], rax
	mov	r12, r13
	shl	r12, 4
	add	r12, qword ptr [rsp + 0x60]
	mov	rcx, r14
	nop	
.label_519:
	mov	r14, rcx
	mov	rcx,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	xor	edx, edx
	div	r14
	cmp	rcx, rax
	cmovbe	rcx, rax
	mov	esi, 0x20
	mov	rbp, qword ptr [rsp + 0x90]
	mov	rdi, rbp
	mov	rdx, rcx
	call	initbuf
	mov	rbx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rbx + r13*8]
	mov	rdx, qword ptr [r12]
	mov	rdi, rbp
	call	fillbuf
	test	al, al
	jne	.label_497
	lea	rax, [r14 - 1]
	mov	qword ptr [rsp + 0x40], rax
	mov	rdi, qword ptr [rbx + r13*8]
	mov	rsi, qword ptr [r12]
	call	xfclose
	mov	rax, qword ptr [rsp + 0x38]
	cmp	r13, rax
	jae	.label_505
	dec	rax
	mov	qword ptr [rsp + 0x38], rax
	mov	rdi, qword ptr [r12]
	call	zaptemp
.label_505:
	mov	rax, qword ptr [rsp + 0x90]
	mov	rdi, qword ptr [rax]
	call	free
	cmp	r13, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0x68]
	jae	.label_512
	nop	word ptr [rax + rax]
.label_516:
	movups	xmm0, xmmword ptr [rcx + 0x10]
	movups	xmmword ptr [rcx], xmm0
	lea	rcx, [rcx + 0x10]
	mov	rdx, qword ptr [rbx + rax*8]
	mov	qword ptr [rbx + rax*8 - 8], rdx
	inc	rax
	cmp	r14, rax
	jne	.label_516
.label_512:
	mov	rcx, qword ptr [rsp + 0x40]
	cmp	r13, rcx
	jb	.label_519
	jmp	.label_522
	nop	dword ptr [rax]
.label_497:
	mov	rdi, qword ptr [rsp + 0x90]
	call	buffer_linelim
	lea	rcx, [rax - 0x20]
	mov	rdx, qword ptr [rsp + 0xa0]
	mov	qword ptr [rdx + r13*8], rcx
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rcx + rdx + 0x10]
	shl	rcx, 5
	sub	rax, rcx
	mov	rcx, qword ptr [rsp + 0x98]
	mov	qword ptr [rcx + r13*8], rax
	inc	r13
	add	qword ptr [rsp + 0x68], 0x10
	inc	qword ptr [rsp + 0x88]
	cmp	r13, r14
	mov	rcx, r14
	jb	.label_525
.label_522:
	xor	eax, eax
	test	rcx, rcx
	mov	r14, qword ptr [rsp + 0x60]
	je	.label_494
	nop	dword ptr [rax]
.label_499:
	mov	qword ptr [r15 + rax*8], rax
	inc	rax
	cmp	rcx, rax
	jne	.label_499
	mov	ebx, 1
	cmp	rcx, 1
	jbe	.label_501
	nop	word ptr [rax + rax]
.label_515:
	mov	rbp, rcx
	mov	rax, qword ptr [r15 + rbx*8 - 8]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [r15 + rbx*8]
	mov	rsi, qword ptr [rcx + rax*8]
	call	compare
	test	eax, eax
	jle	.label_511
	mov	rax, qword ptr [r15 + rbx*8 - 8]
	mov	rcx, qword ptr [r15 + rbx*8]
	mov	qword ptr [r15 + rbx*8 - 8], rcx
	mov	qword ptr [r15 + rbx*8], rax
	xor	ebx, ebx
.label_511:
	mov	rcx, rbp
	inc	rbx
	cmp	rbx, rcx
	jb	.label_515
.label_501:
	test	rcx, rcx
	je	.label_494
	mov	rax, r15
	add	rax, 8
	mov	qword ptr [rsp + 0x48], rax
	lea	rax, [rcx - 1]
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	rax, qword ptr [rsp + 0x98]
	add	rax, 8
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0xa0]
	add	rax, 8
	mov	qword ptr [rsp + 0x20], rax
	mov	r13, qword ptr [rsp + 0x58]
	lea	rax, [r13 + 0x38]
	mov	qword ptr [rsp + 0x18], rax
	lea	rax, [r14 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x70]
	lea	rax, [rax + 8]
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x88], rax
	nop	word ptr cs:[rax + rax]
.label_510:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x68], rbx
	lea	rax, [rbx - 1]
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_495
	nop	word ptr cs:[rax + rax]
.label_492:
	mov	qword ptr [r15 + rcx*8], r12
.label_495:
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rbp, qword ptr [rcx + rax*8]
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_504
	mov	r14, rbx
	mov	rdi, qword ptr [rsp + 0x90]
	test	rdi, rdi
	mov	rbx, qword ptr [rsp + 0x88]
	je	.label_489
	mov	rsi, rbp
	call	compare
	test	eax, eax
	je	.label_513
	lea	rdi, [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x80]
	call	write_line
.label_489:
	cmp	rbx, qword ptr [rbp + 8]
	jae	.label_517
	nop	word ptr cs:[rax + rax]
.label_527:
	test	rbx, rbx
	je	.label_520
	add	rbx, rbx
	cmp	rbx, qword ptr [rbp + 8]
	jb	.label_527
	jmp	.label_523
.label_504:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x80]
	call	write_line
	jmp	.label_526
.label_513:
	mov	rbx, r14
	jmp	.label_526
.label_520:
	mov	rbx, qword ptr [rbp + 8]
.label_523:
	mov	rdi, qword ptr [rsp + 0xa8]
	call	free
	mov	rdi, rbx
	call	xmalloc
	mov	qword ptr [rsp + 0xa8], rax
.label_517:
	mov	qword ptr [rsp + 0x88], rbx
	mov	rdx, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0xb0], rdx
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rbp]
	call	memcpy
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_496
	mov	rax, qword ptr [rbp + 0x10]
	sub	rax, qword ptr [rbp]
	add	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0xb8], rax
	mov	rax, qword ptr [rbp + 0x18]
	sub	rax, qword ptr [rbp]
	add	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0xc0], rax
.label_496:
	lea	rax, [rsp + 0xa8]
	mov	qword ptr [rsp + 0x90], rax
	mov	rbx, r14
.label_526:
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x98]
	cmp	qword ptr [rcx + rax*8], rbp
	jae	.label_506
	add	rbp, -0x20
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	qword ptr [rcx + rax*8], rbp
	jmp	.label_521
	nop	word ptr cs:[rax + rax]
.label_506:
	imul	rdi, rax, 0x38
	add	rdi, r13
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsi, qword ptr [rcx + rax*8]
	shl	rax, 4
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rcx + rax]
	call	fillbuf
	test	al, al
	je	.label_524
	mov	r14, rbx
	mov	rbx, qword ptr [r15]
	imul	rbp, rbx, 0x38
	lea	rdi, [r13 + rbp]
	call	buffer_linelim
	lea	rcx, [rax - 0x20]
	mov	rdx, qword ptr [rsp + 0xa0]
	mov	qword ptr [rdx + rbx*8], rcx
	mov	rcx, qword ptr [r13 + rbp + 0x10]
	shl	rcx, 5
	sub	rax, rcx
	mov	rcx, qword ptr [rsp + 0x98]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rbx, r14
.label_521:
	mov	r12, qword ptr [r15]
	cmp	rbx, 2
	mov	ecx, 0
	jb	.label_492
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rbp, qword ptr [rax + r12*8]
	mov	r13d, 1
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_514:
	mov	rax, qword ptr [r15 + r13*8]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdi, rbp
	call	compare
	test	eax, eax
	js	.label_507
	jne	.label_508
	cmp	r12, qword ptr [r15 + r13*8]
	jae	.label_508
	mov	rbx, r13
	jmp	.label_509
	nop	dword ptr [rax]
.label_508:
	inc	r13
	mov	r14, r13
	jmp	.label_509
	nop	dword ptr [rax + rax]
.label_507:
	mov	rbx, r13
.label_509:
	lea	r13, [rbx + r14]
	shr	r13, 1
	cmp	r14, rbx
	jb	.label_514
	mov	rax, r14
	dec	rax
	mov	ecx, 0
	mov	r13, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x68]
	je	.label_492
	dec	r14
	mov	rcx, qword ptr [rsp + 0x48]
	nop	word ptr cs:[rax + rax]
.label_502:
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rcx - 8], rdx
	add	rcx, 8
	dec	r14
	jne	.label_502
	mov	rcx, rax
	jmp	.label_492
	nop	dword ptr [rax + rax]
.label_524:
	cmp	rbx, 1
	mov	eax, 1
	jbe	.label_488
	nop	dword ptr [rax + rax]
.label_518:
	mov	rcx, qword ptr [r15 + rax*8]
	cmp	rcx, qword ptr [r15]
	jbe	.label_490
	dec	rcx
	mov	qword ptr [r15 + rax*8], rcx
.label_490:
	inc	rax
	cmp	rbx, rax
	jne	.label_518
.label_488:
	mov	qword ptr [rsp + 0x68], rbx
	mov	rbp, qword ptr [r15]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rax + rbp*8]
	mov	rbx, rbp
	shl	rbx, 4
	mov	r14, qword ptr [rsp + 0x60]
	mov	rsi, qword ptr [r14 + rbx]
	call	xfclose
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rbp, rax
	jae	.label_498
	add	rbx, r14
	dec	rax
	mov	qword ptr [rsp + 0x38], rax
	mov	rdi, qword ptr [rbx]
	call	zaptemp
.label_498:
	mov	rax, r15
	mov	r15, qword ptr [rax]
	mov	r14, rax
	imul	rbp, r15, 0x38
	mov	rdi, qword ptr [r13 + rbp]
	call	free
	cmp	r15, qword ptr [rsp + 0x40]
	jae	.label_503
	mov	rax, qword ptr [rsp + 0x30]
	sub	rax, r15
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rcx, [rcx + r15*8]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdx, [rdx + r15*8]
	add	rbp, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi + r15*8]
	shl	r15, 4
	add	r15, qword ptr [rsp + 0x10]
	xor	edi, edi
.label_500:
	mov	rbx, qword ptr [rsi + rdi*8]
	mov	qword ptr [rsi + rdi*8 - 8], rbx
	movups	xmm0, xmmword ptr [r15]
	movups	xmmword ptr [r15 - 0x10], xmm0
	mov	rbx, qword ptr [rbp + 0x30]
	mov	qword ptr [rbp - 8], rbx
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmm2, xmmword ptr [rbp + 0x20]
	movups	xmmword ptr [rbp - 0x18], xmm2
	movups	xmmword ptr [rbp - 0x28], xmm1
	movups	xmmword ptr [rbp - 0x38], xmm0
	mov	rbx, qword ptr [rdx + rdi*8]
	mov	qword ptr [rdx + rdi*8 - 8], rbx
	mov	rbx, qword ptr [rcx + rdi*8]
	mov	qword ptr [rcx + rdi*8 - 8], rbx
	inc	rdi
	add	rbp, 0x38
	add	r15, 0x10
	cmp	rax, rdi
	jne	.label_500
.label_503:
	cmp	qword ptr [rsp + 0x40], 0
	mov	eax, 1
	mov	r15, r14
	mov	rdx, qword ptr [rsp + 0x68]
	je	.label_491
	nop	dword ptr [rax]
.label_493:
	mov	rcx, qword ptr [r15 + rax*8]
	mov	qword ptr [r15 + rax*8 - 8], rcx
	inc	rax
	cmp	rdx, rax
	jne	.label_493
	dec	qword ptr [rsp + 0x30]
	cmp	qword ptr [rsp + 0x40], 0
	jne	.label_510
.label_491:
	mov	qword ptr [rsp + 0x58], r13
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_494
	test	byte ptr [byte ptr [rip + unique]],  1
	je	.label_494
	lea	rdi, [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x80]
	call	write_line
	mov	rdi, qword ptr [rsp + 0xa8]
	call	free
.label_494:
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rsi, qword ptr [rsp + 0x80]
	call	xfclose
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, r15
	call	free
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	add	rsp, 0xc8
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
	#Procedure 0x4084f0

	.globl maybe_create_temp
	.type maybe_create_temp, @function
maybe_create_temp:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rdi
	movzx	esi, sil
	lea	rdi, [rsp + 0xc]
	call	create_temp_file
	mov	r15, rax
	xor	ebx, ebx
	test	r15, r15
	je	.label_528
	mov	rbx, r15
	mov	byte ptr [rbx + 0xc], 0
	cmp	qword ptr [word ptr [rip + compress_program]],  0
	je	.label_530
	lea	rdi, [rsp + 4]
	mov	esi, 4
	call	pipe_fork
	mov	dword ptr [rbx + 8], eax
	test	eax, eax
	jle	.label_531
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	mov	edi, dword ptr [rsp + 4]
	call	close
	mov	eax, dword ptr [rsp + 8]
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, rbx
	call	register_proc
	jmp	.label_530
.label_531:
	je	.label_532
.label_530:
	mov	edi, dword ptr [rsp + 0xc]
	mov	esi, OFFSET FLAT:.str.166
	call	fdopen
	mov	qword ptr [r14], rax
	test	rax, rax
	je	.label_529
.label_528:
	mov	rax, rbx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_529:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.176
	mov	edx, 5
	call	dcgettext
	add	r15, 0xd
	mov	rdi, rax
	mov	rsi, r15
	call	sort_die
.label_532:
	mov	edi, dword ptr [rsp + 8]
	call	close
	mov	edi, dword ptr [rsp + 0xc]
	mov	esi, 1
	call	move_fd
	mov	edi, dword ptr [rsp + 4]
	xor	esi, esi
	call	move_fd
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	xor	edx, edx
	xor	eax, eax
	mov	rsi, rdi
	call	execlp
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	esi, OFFSET FLAT:.str.175
	call	async_safe_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085f0

	.globl open_temp
	.type open_temp, @function
open_temp:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx + 0xc]
	cmp	eax, 1
	jne	.label_535
	mov	edi, dword ptr [rbx + 8]
	call	wait_proc
.label_535:
	lea	rdi, [rbx + 0xd]
	xor	ebp, ebp
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r14d, eax
	test	r14d, r14d
	js	.label_534
	lea	rdi, [rsp + 8]
	mov	esi, 9
	call	pipe_fork
	cmp	eax, -1
	je	.label_537
	test	eax, eax
	je	.label_538
	mov	dword ptr [rbx + 8], eax
	mov	rdi, rbx
	call	register_proc
	mov	edi, r14d
	call	close
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	mov	edi, dword ptr [rsp + 8]
	mov	esi, OFFSET FLAT:.str.52
	call	fdopen
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_534
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	edi, dword ptr [rsp + 8]
	call	close
	mov	dword ptr [rbx], ebp
	jmp	.label_536
.label_537:
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x18
	jne	.label_533
	mov	edi, r14d
	call	close
	mov	dword ptr [rbp], 0x18
.label_536:
	xor	ebp, ebp
.label_534:
	mov	rax, rbp
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_538:
	mov	edi, dword ptr [rsp + 8]
	call	close
	xor	esi, esi
	mov	edi, r14d
	call	move_fd
	mov	edi, dword ptr [rsp + 0xc]
	mov	esi, 1
	call	move_fd
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	mov	edx, OFFSET FLAT:.str.168
	xor	ecx, ecx
	xor	eax, eax
	mov	rsi, rdi
	call	execlp
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	esi, OFFSET FLAT:.str.169
	call	async_safe_die
.label_533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.167
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408740

	.globl wait_proc
	.type wait_proc, @function
wait_proc:
	push	rbx
	mov	ebx, edi
	call	delete_proc
	test	al, al
	je	.label_539
	mov	edi, ebx
	pop	rbx
	jmp	reap
.label_539:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408760

	.globl pipe_fork
	.type pipe_fork, @function
pipe_fork:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	mov	rbp, rdi
	mov	esi, 0x80000
	call	rpl_pipe2
	mov	r13d, 0xffffffff
	test	eax, eax
	js	.label_540
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	inc	eax
	cmp	eax,  dword ptr [dword ptr [rip + nprocs]]
	jae	.label_543
	call	reap_some
.label_543:
	test	rbx, rbx
	je	.label_541
	mov	qword ptr [rsp], rbp
	movsd	xmm0,  qword ptr [word ptr [rip + label_544]]
	movsd	qword ptr [rsp + 8], xmm0
	call	__errno_location
	mov	r15, rax
	lea	r12, [rsp + 0x10]
	nop	dword ptr [rax]
.label_546:
	mov	rdi, r12
	call	cs_enter
	mov	r14,  qword ptr [word ptr [rip + temphead]]
	mov	qword ptr [word ptr [rip + temphead]],  0
	call	fork
	mov	r13d, eax
	mov	ebp, dword ptr [r15]
	test	r13d, r13d
	je	.label_545
	mov	qword ptr [word ptr [rip + temphead]],  r14
.label_545:
	mov	rdi, r12
	call	cs_leave
	mov	dword ptr [r15], ebp
	test	r13d, r13d
	jns	.label_542
	cmp	ebp, 0xb
	jne	.label_542
	dec	rbx
	movsd	xmm0, qword ptr [rsp + 8]
	call	xnanosleep
	movsd	xmm0, qword ptr [rsp + 8]
	addsd	xmm0, xmm0
	movsd	qword ptr [rsp + 8], xmm0
	call	reap_exited
	test	rbx, rbx
	jne	.label_546
.label_542:
	test	r13d, r13d
	js	.label_547
	je	.label_541
	inc	dword ptr [dword ptr [rip + nprocs]]
	jmp	.label_540
.label_541:
	xor	r13d, r13d
	xor	edi, edi
	call	close
	mov	edi, 1
	call	close
	jmp	.label_540
.label_547:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rbp, qword ptr [rsp]
	mov	edi, dword ptr [rbp]
	call	close
	mov	edi, dword ptr [rbp + 4]
	call	close
	mov	dword ptr [rbx], r14d
.label_540:
	mov	eax, r13d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088a0

	.globl async_safe_die
	.type async_safe_die, @function
async_safe_die:
	push	rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, rbx
	call	strlen
	mov	edi, 2
	mov	rsi, rbx
	mov	rdx, rax
	call	write
	test	ebp, ebp
	je	.label_548
	lea	rsi, [rsp + 0xc]
	mov	edi, ebp
	call	inttostr
	mov	rbx, rax
	mov	edi, 2
	mov	esi, OFFSET FLAT:.str.172
	mov	edx, 8
	call	write
	mov	rdi, rbx
	call	strlen
	mov	edi, 2
	mov	rsi, rbx
	mov	rdx, rax
	call	write
.label_548:
	mov	edi, 2
	mov	esi, OFFSET FLAT:.str.173
	mov	edx, 1
	call	write
	mov	edi, 2
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x408920

	.globl register_proc
	.type register_proc, @function
register_proc:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [word ptr [rip + proctab]],  0
	jne	.label_549
	mov	edi, 0x2f
	xor	esi, esi
	mov	edx, OFFSET FLAT:proctab_hasher
	mov	ecx, OFFSET FLAT:proctab_comparator
	xor	r8d, r8d
	call	hash_initialize
	mov	qword ptr [word ptr [rip + proctab]],  rax
	test	rax, rax
	je	.label_550
.label_549:
	mov	byte ptr [rbx + 0xc], 1
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_550
	pop	rbx
	ret	
.label_550:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408980

	.globl delete_proc
	.type delete_proc, @function
delete_proc:
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0x10], edi
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	lea	rsi, [rsp + 8]
	call	hash_delete
	test	rax, rax
	je	.label_551
	mov	byte ptr [rax + 0xc], 2
	mov	al, 1
	add	rsp, 0x18
	ret	
.label_551:
	xor	eax, eax
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x4089b0

	.globl reap
	.type reap, @function
reap:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	cmp	ebp, 1
	sbb	edi, edi
	or	edi, ebp
	test	ebp, ebp
	sete	al
	movzx	edx, al
	lea	rsi, [rsp + 4]
	call	waitpid
	mov	ebx, eax
	test	ebx, ebx
	js	.label_553
	jle	.label_552
	test	ebp, ebp
	jg	.label_554
	mov	edi, ebx
	call	delete_proc
	test	al, al
	je	.label_552
.label_554:
	movzx	eax, word ptr [rsp + 4]
	test	ax, 0xff7f
	jne	.label_555
	dec	dword ptr [dword ptr [rip + nprocs]]
.label_552:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_553:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.170
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_555:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.171
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a80

	.globl reap_some
	.type reap_some, @function
reap_some:
	push	rax
	mov	edi, 0xffffffff
	call	reap
	pop	rax
	jmp	reap_exited
	nop	
	.section	.text
	.align	32
	#Procedure 0x408a90

	.globl reap_exited
	.type reap_exited, @function
reap_exited:
	push	rax
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	jle	.label_556
	nop	word ptr [rax + rax]
.label_557:
	xor	edi, edi
	call	reap
	test	eax, eax
	je	.label_556
	mov	eax,  dword ptr [dword ptr [rip + nprocs]]
	test	eax, eax
	jg	.label_557
.label_556:
	pop	rax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ac0

	.globl proctab_hasher
	.type proctab_hasher, @function
proctab_hasher:
	movsxd	rax, dword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408ad0

	.globl proctab_comparator
	.type proctab_comparator, @function
proctab_comparator:
	mov	eax, dword ptr [rdi + 8]
	cmp	eax, dword ptr [rsi + 8]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ae0

	.globl zaptemp
	.type zaptemp, @function
zaptemp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rdi
	mov	ebx, OFFSET FLAT:temphead
	nop	dword ptr [rax]
.label_558:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp]
	lea	rax, [rbx + 0xd]
	cmp	rax, r14
	jne	.label_558
	movzx	eax, byte ptr [rbx + 0xc]
	cmp	eax, 1
	jne	.label_560
	mov	edi, dword ptr [rbx + 8]
	call	wait_proc
.label_560:
	mov	r15, qword ptr [rbx]
	lea	r12, [rsp + 0x10]
	mov	rdi, r12
	call	cs_enter
	mov	rdi, r14
	call	unlink
	mov	r13d, eax
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rbp], r15
	mov	rdi, r12
	call	cs_leave
	test	r13d, r13d
	je	.label_561
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.174
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, r12
	call	error
.label_561:
	test	r15, r15
	jne	.label_559
	mov	qword ptr [word ptr [rip + temptail]],  rbp
.label_559:
	mov	rdi, rbx
	call	free
	add	rsp, 0x98
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
	#Procedure 0x408bc0

	.globl create_temp_file
	.type create_temp_file, @function
create_temp_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	dword ptr [rsp + 0xc], esi
	mov	r14, rdi
	mov	rax,  qword ptr [word ptr [rip + create_temp_file.temp_dir_index]]
	mov	rcx,  qword ptr [word ptr [rip + temp_dirs]]
	mov	r12, qword ptr [rcx + rax*8]
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x20]
	and	rdi, 0xfffffffffffffff8
	call	xmalloc
	mov	rbp, rax
	lea	r13, [rbp + 0xd]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, rbx
	call	memcpy
	movabs	rax, 0x58585874726f732f
	mov	qword ptr [rbp + rbx + 0xd], rax
	mov	dword ptr [rbp + rbx + 0x15], 0x585858
	mov	qword ptr [rbp], 0
	mov	rax,  qword ptr [word ptr [rip + create_temp_file.temp_dir_index]]
	inc	rax
	xor	ecx, ecx
	cmp	rax,  qword ptr [word ptr [rip + temp_dir_count]]
	je	.label_564
	mov	rcx, rax
.label_564:
	mov	qword ptr [word ptr [rip + create_temp_file.temp_dir_index]],  rcx
	lea	rdi, [rsp + 0x10]
	call	cs_enter
	mov	esi, 0x80000
	mov	rdi, r13
	call	mkostemp_safer
	mov	ebx, eax
	test	ebx, ebx
	js	.label_563
	mov	rax,  qword ptr [word ptr [rip + temptail]]
	mov	qword ptr [rax], rbp
	mov	qword ptr [word ptr [rip + temptail]],  rbp
.label_563:
	call	__errno_location
	mov	r15, rax
	mov	r13d, dword ptr [r15]
	lea	rdi, [rsp + 0x10]
	call	cs_leave
	mov	dword ptr [r15], r13d
	test	ebx, ebx
	jns	.label_565
	cmp	r13d, 0x18
	jne	.label_562
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_562
	mov	rdi, rbp
	call	free
	xor	ebp, ebp
.label_565:
	mov	dword ptr [r14], ebx
	mov	rax, rbp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_562:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.177
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d10

	.globl sort_buffer_size
	.type sort_buffer_size, @function
sort_buffer_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r15, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	qword ptr [rsp], rdi
	lea	rbx, [r15 + 2]
	test	r12, r12
	je	.label_568
	inc	r15
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_575:
	test	r13, r13
	je	.label_566
	mov	rax, qword ptr [r14 + r13*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_569
	cmp	byte ptr [rax + 1], 0
	je	.label_573
.label_569:
	mov	rdi, qword ptr [r14 + r13*8]
	lea	rsi, [rsp + 8]
	call	stat
	jmp	.label_577
	nop	word ptr [rax + rax]
.label_566:
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rax + r13*8]
	call	fileno
	mov	edi, eax
	jmp	.label_567
.label_573:
	xor	edi, edi
.label_567:
	lea	rsi, [rsp + 8]
	call	__fstat
.label_577:
	test	eax, eax
	jne	.label_572
	mov	eax, dword ptr [rsp + 0x20]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_574
	mov	rbp, qword ptr [rsp + 0x38]
	jmp	.label_578
	nop	
.label_574:
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	test	rax, rax
	mov	ebp, 0x20000
	jne	.label_576
.label_578:
	cmp	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  0
	jne	.label_571
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	mov	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  rax
	test	rax, rax
	jne	.label_571
	call	default_sort_size
	mov	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  rax
	nop	word ptr [rax + rax]
.label_571:
	mov	rcx, rbp
	imul	rcx, r15
	inc	rcx
	xor	edx, edx
	mov	rax, rcx
	div	r15
	cmp	rbp, rax
	jne	.label_570
	mov	rax,  qword ptr [word ptr [rip + sort_buffer_size.size_bound]]
	sub	rax, rbx
	cmp	rax, rcx
	jbe	.label_570
	add	rbx, rcx
	inc	r13
	cmp	r13, r12
	jb	.label_575
	jmp	.label_568
.label_570:
	mov	rax,  qword ptr [word ptr [rip + sort_buffer_size.size_bound]]
.label_576:
	mov	rbx, rax
.label_568:
	mov	rax, rbx
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_572:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.178
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [r14 + r13*8]
	mov	rdi, rax
	call	sort_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e80

	.globl queue_init
	.type queue_init, @function
queue_init:
	push	rbx
	mov	rbx, rdi
	add	rsi, rsi
	mov	edi, OFFSET FLAT:compare_nodes
	call	heap_alloc
	mov	qword ptr [rbx], rax
	lea	rdi, [rbx + 8]
	xor	esi, esi
	call	pthread_mutex_init
	add	rbx, 0x30
	xor	esi, esi
	mov	rdi, rbx
	pop	rbx
	jmp	pthread_cond_init
	nop	
	.section	.text
	.align	32
	#Procedure 0x408eb0

	.globl merge_tree_init
	.type merge_tree_init, @function
merge_tree_init:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	shl	rdi, 8
	call	xmalloc
	mov	rbx, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], r12
	mov	qword ptr [rbx + 0x28], r12
	mov	qword ptr [rbx + 0x38], 0
	mov	dword ptr [rbx + 0x50], 0
	mov	byte ptr [rbx + 0x54], 0
	lea	rdi, [rbx + 0x58]
	xor	esi, esi
	call	pthread_mutex_init
	lea	rsi, [rbx + 0x80]
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, r12
	call	init_node
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408f30

	.globl sortlines
	.type sortlines, @function
sortlines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, r9
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, rcx
	mov	r13, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rdx, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rbp + 0x30]
	add	rax, qword ptr [rbp + 0x28]
	mov	r14, r12
	shr	r14, 1
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x20], r14
	mov	qword ptr [rsp + 0x28], r13
	mov	rcx, qword ptr [rbp + 0x40]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], r8
	mov	qword ptr [rsp + 0x40], r15
	mov	qword ptr [rsp + 0x48], rdx
	cmp	r12, 2
	jb	.label_582
	cmp	rax, 0x20000
	jb	.label_582
	lea	rdi, [rsp + 0x50]
	lea	rcx, [rsp + 0x18]
	xor	esi, esi
	mov	edx, OFFSET FLAT:sortlines_thread
	call	pthread_create
	test	eax, eax
	je	.label_583
.label_582:
	mov	qword ptr [rsp + 8], r15
	mov	r14, qword ptr [rbp + 0x28]
	mov	r12, qword ptr [rbp + 0x30]
	mov	rax, r13
	shl	rax, 5
	mov	r15, rbx
	sub	r15, rax
	cmp	r12, 2
	jb	.label_580
	mov	rax, r14
	shl	rax, 5
	mov	rdi, rbx
	sub	rdi, rax
	mov	rax, r14
	shl	rax, 4
	and	rax, 0xffffffffffffffe0
	mov	rdx, r15
	sub	rdx, rax
	xor	ecx, ecx
	mov	rsi, r12
	call	sequential_sort
.label_580:
	cmp	r14, 2
	jb	.label_579
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	sequential_sort
.label_579:
	mov	qword ptr [rbp], rbx
	shl	r14, 5
	sub	rbx, r14
	mov	qword ptr [rbp + 8], rbx
	mov	qword ptr [rbp + 0x10], rbx
	shl	r12, 5
	sub	rbx, r12
	mov	qword ptr [rbp + 0x18], rbx
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rdi, rbx
	mov	rsi, rbp
	call	queue_insert
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x90]
	call	merge_loop
	jmp	.label_581
.label_583:
	sub	r12, r14
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x48]
	shl	rax, 5
	sub	rbx, rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r13
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, r15
	call	sortlines
	mov	rdi, qword ptr [rsp + 0x50]
	xor	esi, esi
	call	pthread_join
.label_581:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090b0

	.globl write_unique
	.type write_unique, @function
write_unique:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_584
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	je	.label_587
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, rbx
	call	compare
	test	eax, eax
	je	.label_585
.label_587:
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [word ptr [rip + label_586]],  xmm1
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_584:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	write_line
.label_585:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409120

	.globl reap_all
	.type reap_all, @function
reap_all:
	push	rax
	jmp	.label_588
	nop	word ptr cs:[rax + rax]
.label_589:
	mov	edi, 0xffffffff
	call	reap
.label_588:
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	jg	.label_589
	pop	rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409150

	.globl default_sort_size
	.type default_sort_size, @function
default_sort_size:
	push	r14
	push	rbx
	sub	rsp, 0x18
	lea	r14, [rsp + 8]
	mov	edi, 2
	mov	rsi, r14
	call	getrlimit
	cmp	eax, 1
	sbb	rbx, rbx
	not	rbx
	or	rbx, qword ptr [rsp + 8]
	mov	edi, 9
	mov	rsi, r14
	call	getrlimit
	test	eax, eax
	jne	.label_593
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, rbx
	cmovb	rbx, rax
.label_593:
	shr	rbx, 1
	lea	rsi, [rsp + 8]
	mov	edi, 5
	call	getrlimit
	test	eax, eax
	jne	.label_592
	mov	rax, qword ptr [rsp + 8]
	shr	rax, 4
	lea	rax, [rax + rax*4]
	lea	rax, [rax + rax*2]
	cmp	rax, rbx
	cmovb	rbx, rax
.label_592:
	call	physmem_available
	movsd	qword ptr [rsp], xmm0
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [rip + label_590]]
	mulsd	xmm1, xmm0
	movsd	xmm6, qword ptr [rsp]
	maxsd	xmm6, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_591]]
	movq	xmm1, rbx
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_140]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_141]]
	subpd	xmm1, xmm3
	pshufd	xmm4, xmm1, 0x4e
	addpd	xmm4, xmm1
	movsd	xmm1,  qword ptr [word ptr [rip + label_147]]
	movapd	xmm5, xmm0
	subsd	xmm5, xmm1
	cvttsd2si	rax, xmm5
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttsd2si	rdx, xmm0
	ucomisd	xmm0, xmm1
	cmovae	rdx, rax
	ucomisd	xmm4, xmm0
	cmovbe	rdx, rbx
	movq	xmm0, rdx
	punpckldq	xmm0, xmm2
	subpd	xmm0, xmm3
	pshufd	xmm2, xmm0, 0x4e
	addpd	xmm2, xmm0
	movapd	xmm3, xmm6
	movapd	xmm0, xmm3
	subsd	xmm0, xmm1
	cvttsd2si	rsi, xmm0
	xor	rsi, rcx
	cvttsd2si	rax, xmm3
	ucomisd	xmm3, xmm1
	cmovae	rax, rsi
	ucomisd	xmm2, xmm3
	cmovbe	rax, rdx
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	cmovbe	rax, rcx
	add	rsp, 0x18
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092b0

	.globl compare_nodes
	.type compare_nodes, @function
compare_nodes:
	mov	eax, dword ptr [rsi + 0x50]
	cmp	dword ptr [rdi + 0x50], eax
	jne	.label_594
	mov	rax, qword ptr [rdi + 0x30]
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x30]
	add	rcx, qword ptr [rsi + 0x28]
	cmp	rax, rcx
.label_594:
	setb	al
	movzx	eax, al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092e0

	.globl init_node
	.type init_node, @function
init_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	qword ptr [rsp], r14
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	neg	r14
	shl	r14, 5
	jmp	.label_595
	nop	word ptr cs:[rax + rax]
.label_596:
	mov	rcx, r15
	shr	rcx, 1
	sub	r15, rcx
	mov	qword ptr [r13 + 0x40], rbp
	mov	r9d, 1
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	mov	r8, qword ptr [rsp]
	call	init_node
	mov	qword ptr [r13 + 0x48], rax
	xor	r9d, r9d
	mov	rdi, r13
	mov	r13, rax
.label_595:
	lea	rax, [rdi + 0x28]
	lea	rcx, [rdi + 0x30]
	lea	rdx, [rdi + 0x10]
	lea	rsi, [rdi + 0x18]
	and	r9b, 1
	cmovne	rsi, rdx
	test	r9b, r9b
	cmovne	rcx, rax
	mov	rax, qword ptr [rcx]
	mov	rcx, rax
	shr	rcx, 1
	sub	rax, rcx
	mov	rbx, r12
	add	rbx, r14
	mov	rdx, rcx
	shl	rdx, 5
	mov	r12, rbx
	sub	r12, rdx
	lea	rbp, [r13 + 0x80]
	mov	qword ptr [r13 + 0x10], rbx
	mov	qword ptr [r13], rbx
	mov	qword ptr [r13 + 0x18], r12
	mov	qword ptr [r13 + 8], r12
	mov	qword ptr [r13 + 0x20], rsi
	mov	qword ptr [r13 + 0x28], rcx
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rdi
	mov	eax, dword ptr [rdi + 0x50]
	inc	eax
	mov	dword ptr [r13 + 0x50], eax
	mov	byte ptr [r13 + 0x54], 0
	lea	rdi, [r13 + 0x58]
	xor	esi, esi
	call	pthread_mutex_init
	cmp	r15, 2
	jae	.label_596
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	mov	rax, rbp
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
	.align	32
	#Procedure 0x4093f0

	.globl sortlines_thread
	.type sortlines_thread, @function
sortlines_thread:
	push	rax
	mov	rax, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x18]
	mov	r8, qword ptr [rdi + 0x20]
	mov	r9, qword ptr [rdi + 0x28]
	mov	rdi, qword ptr [rdi + 0x30]
	mov	qword ptr [rsp], rdi
	mov	rdi, rax
	call	sortlines
	xor	eax, eax
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409420

	.globl sequential_sort
	.type sequential_sort, @function
sequential_sort:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	cmp	rbp, 2
	jne	.label_597
	lea	rbp, [r12 - 0x20]
	lea	rbx, [r12 - 0x40]
	mov	rdi, rbp
	mov	rsi, rbx
	call	compare
	test	r15b, r15b
	je	.label_598
	test	eax, eax
	setg	al
	movzx	eax, al
	mov	rcx, rax
	not	rcx
	shl	rcx, 5
	movups	xmm0, xmmword ptr [r12 + rcx]
	movups	xmm1, xmmword ptr [r12 + rcx + 0x10]
	movups	xmmword ptr [r14 - 0x10], xmm1
	movups	xmmword ptr [r14 - 0x20], xmm0
	shl	rax, 5
	movups	xmm0, xmmword ptr [rax + r12 - 0x40]
	movups	xmm1, xmmword ptr [rax + r12 - 0x30]
	movups	xmmword ptr [r14 - 0x30], xmm1
	movups	xmmword ptr [r14 - 0x40], xmm0
	jmp	.label_600
.label_597:
	mov	rbx, rbp
	shr	rbx, 1
	mov	rsi, rbp
	sub	rsi, rbx
	mov	rax, rbx
	neg	rax
	mov	rcx, rbx
	shl	rcx, 5
	mov	rdi, r12
	sub	rdi, rcx
	xor	edx, edx
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
	mov	rsi, rbx
	mov	rdx, r14
	call	sequential_sort
	jmp	.label_599
.label_598:
	test	eax, eax
	jle	.label_600
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [r14 - 0x10], xmm1
	movups	xmmword ptr [r14 - 0x20], xmm0
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [rbp + 0x10], xmm1
	movups	xmmword ptr [rbp], xmm0
	movups	xmm0, xmmword ptr [r14 - 0x20]
	movups	xmm1, xmmword ptr [r14 - 0x10]
	movups	xmmword ptr [rbx + 0x10], xmm1
	movups	xmmword ptr [rbx], xmm0
.label_600:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_601:
	test	r15b, r15b
	jne	.label_599
	movups	xmm0, xmmword ptr [r12 - 0x20]
	movups	xmm1, xmmword ptr [r12 - 0x10]
	movups	xmmword ptr [r14 - 0x10], xmm1
	movups	xmmword ptr [r14 - 0x20], xmm0
.label_599:
	test	r15b, r15b
	mov	rdi, r12
	cmovne	rdi, r14
	cmovne	r14, r12
	mov	rsi, rbp
	mov	rdx, r14
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	mergelines
	nop	
	.section	.text
	.align	32
	#Procedure 0x409570

	.globl queue_insert
	.type queue_insert, @function
queue_insert:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	lea	r15, [rbx + 8]
	mov	rdi, r15
	call	pthread_mutex_lock
	mov	rdi, qword ptr [rbx]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	add	rbx, 0x30
	mov	rdi, rbx
	call	pthread_cond_signal
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	pthread_mutex_unlock
	.section	.text
	.align	32
	#Procedure 0x4095b0

	.globl merge_loop
	.type merge_loop, @function
merge_loop:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	jmp	.label_602
	nop	word ptr [rax + rax]
.label_603:
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	mergelines_node
	mov	rdi, r13
	mov	rsi, rbx
	call	queue_check_insert
	mov	rdi, r13
	mov	rsi, rbx
	call	queue_check_insert_parent
	mov	rdi, rbx
	call	unlock_node
.label_602:
	mov	rdi, r13
	call	queue_pop
	mov	rbx, rax
	cmp	dword ptr [rbx + 0x50], 0
	jne	.label_603
	mov	rdi, rbx
	call	unlock_node
	mov	rdi, r13
	mov	rsi, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	queue_insert
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409630

	.globl mergelines
	.type mergelines, @function
mergelines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r15, rsi
	mov	r13, rdi
	mov	rcx, r15
	shr	rcx, 1
	sub	r15, rcx
	mov	rax, rcx
	shl	rax, 5
	mov	r12, r13
	sub	r12, rax
	xor	ebp, ebp
.label_608:
	mov	qword ptr [rsp + 8], rcx
	lea	rax, [r14 - 0x20]
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax]
.label_607:
	lea	rbx, [r12 - 0x20]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	call	compare
	add	r13, -0x20
	test	eax, eax
	jle	.label_604
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [r13 + 0x10], xmm1
	movups	xmmword ptr [r13], xmm0
	dec	r15
	mov	r12, rbx
	jne	.label_607
	jmp	.label_605
	nop	word ptr cs:[rax + rax]
.label_604:
	mov	rax, qword ptr [rsp + 0x10]
	movups	xmm0, xmmword ptr [rax]
	movups	xmm1, xmmword ptr [rax + 0x10]
	movups	xmmword ptr [r13 + 0x10], xmm1
	movups	xmmword ptr [r13], xmm0
	mov	rcx, qword ptr [rsp + 8]
	dec	rcx
	mov	r14, rax
	jne	.label_608
	jmp	.label_606
.label_605:
	mov	rax, -0x20
	mov	rcx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_609:
	movups	xmm0, xmmword ptr [r14 + rax]
	movups	xmm1, xmmword ptr [r14 + rax + 0x10]
	movups	xmmword ptr [r13 + rax + 0x10], xmm1
	movups	xmmword ptr [r13 + rax], xmm0
	add	rax, -0x20
	inc	rbp
	cmp	rbp, rcx
	jne	.label_609
.label_606:
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
	.align	32
	#Procedure 0x409730

	.globl queue_pop
	.type queue_pop, @function
queue_pop:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	lea	r14, [r15 + 8]
	mov	rdi, r14
	call	pthread_mutex_lock
	mov	rdi, qword ptr [r15]
	call	heap_remove_top
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_611
	lea	r12, [r15 + 0x30]
	nop	dword ptr [rax + rax]
.label_610:
	mov	rdi, r12
	mov	rsi, r14
	call	pthread_cond_wait
	mov	rdi, qword ptr [r15]
	call	heap_remove_top
	mov	rbx, rax
	test	rbx, rbx
	je	.label_610
.label_611:
	mov	rdi, r14
	call	pthread_mutex_unlock
	mov	rdi, rbx
	call	lock_node
	mov	byte ptr [rbx + 0x54], 0
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4097a0

	.globl unlock_node
	.type unlock_node, @function
unlock_node:
	add	rdi, 0x58
	jmp	pthread_mutex_unlock
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4097b0

	.globl mergelines_node
	.type mergelines_node, @function
mergelines_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rsp], rax
	mov	r13, qword ptr [rbx + 8]
	mov	eax, dword ptr [rbx + 0x50]
	lea	ecx, [rax + rax + 2]
	shr	r14, cl
	inc	r14
	cmp	eax, 1
	jbe	.label_619
	mov	rdi, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 0x20]
	mov	rbp, qword ptr [rax]
	jmp	.label_627
.label_622:
	movups	xmm0, xmmword ptr [rax - 0x20]
	movups	xmm1, xmmword ptr [rax - 0x10]
	movups	xmmword ptr [rbp - 0x10], xmm1
	movups	xmmword ptr [rbp - 0x20], xmm0
	add	rbp, -0x20
	mov	rdi, qword ptr [rbx]
.label_627:
	cmp	rdi, qword ptr [rbx + 0x10]
	je	.label_613
	mov	rsi, qword ptr [rbx + 8]
	cmp	rsi, qword ptr [rbx + 0x18]
	je	.label_613
	test	r14, r14
	lea	r14, [r14 - 1]
	je	.label_613
	add	rdi, -0x20
	add	rsi, -0x20
	call	compare
	test	eax, eax
	jle	.label_620
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax - 0x20]
	mov	qword ptr [rbx + 8], rcx
	jmp	.label_622
	nop	dword ptr [rax + rax]
.label_620:
	mov	rax, qword ptr [rbx]
	lea	rcx, [rax - 0x20]
	mov	qword ptr [rbx], rcx
	jmp	.label_622
.label_619:
	mov	rdi, qword ptr [rbx]
	cmp	rdi, qword ptr [rbx + 0x10]
	je	.label_626
	nop	word ptr cs:[rax + rax]
.label_623:
	mov	rbp, r14
	mov	rsi, qword ptr [rbx + 8]
	cmp	rsi, qword ptr [rbx + 0x18]
	je	.label_628
	test	rbp, rbp
	je	.label_630
	add	rdi, -0x20
	add	rsi, -0x20
	call	compare
	test	eax, eax
	jle	.label_614
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, -0x20
	mov	qword ptr [rbx + 8], rdi
	jmp	.label_615
	nop	word ptr cs:[rax + rax]
.label_614:
	mov	rdi, qword ptr [rbx]
	add	rdi, -0x20
	mov	qword ptr [rbx], rdi
.label_615:
	mov	rsi, r12
	mov	rdx, r15
	call	write_unique
	lea	r14, [rbp - 1]
	mov	rdi, qword ptr [rbx]
	cmp	rdi, qword ptr [rbx + 0x10]
	jne	.label_623
.label_630:
	dec	rbp
.label_628:
	mov	r14, rbp
.label_626:
	mov	rax, r13
	sub	rax, qword ptr [rbx + 8]
	sar	rax, 5
	cmp	qword ptr [rbx + 0x30], rax
	jne	.label_625
	test	r14, r14
	je	.label_612
	mov	rdi, qword ptr [rbx]
	cmp	rdi, qword ptr [rbx + 0x10]
	je	.label_612
	mov	ebp, 1
	sub	rbp, r14
	nop	dword ptr [rax + rax]
.label_618:
	add	rdi, -0x20
	mov	qword ptr [rbx], rdi
	mov	rsi, r12
	mov	rdx, r15
	call	write_unique
	test	rbp, rbp
	je	.label_612
	mov	rdi, qword ptr [rbx]
	inc	rbp
	cmp	rdi, qword ptr [rbx + 0x10]
	jne	.label_618
	jmp	.label_612
.label_613:
	mov	rax, r13
	sub	rax, qword ptr [rbx + 8]
	sar	rax, 5
	cmp	qword ptr [rbx + 0x30], rax
	jne	.label_621
	test	r14, r14
	je	.label_617
	mov	rcx, qword ptr [rbx]
	cmp	rcx, qword ptr [rbx + 0x10]
	je	.label_617
	mov	eax, 1
	sub	rax, r14
	nop	
.label_616:
	lea	rdx, [rcx - 0x20]
	mov	qword ptr [rbx], rdx
	movups	xmm0, xmmword ptr [rcx - 0x20]
	movups	xmm1, xmmword ptr [rcx - 0x10]
	movups	xmmword ptr [rbp - 0x10], xmm1
	movups	xmmword ptr [rbp - 0x20], xmm0
	lea	rbp, [rbp - 0x20]
	test	rax, rax
	je	.label_617
	mov	rcx, qword ptr [rbx]
	inc	rax
	cmp	rcx, qword ptr [rbx + 0x10]
	jne	.label_616
	jmp	.label_617
.label_625:
	mov	rax, qword ptr [rsp]
	sub	rax, qword ptr [rbx]
	sar	rax, 5
	cmp	qword ptr [rbx + 0x28], rax
	jne	.label_612
	test	r14, r14
	je	.label_612
	mov	rdi, qword ptr [rbx + 8]
	cmp	rdi, qword ptr [rbx + 0x18]
	je	.label_612
	mov	ebp, 1
	sub	rbp, r14
	nop	dword ptr [rax]
.label_629:
	add	rdi, -0x20
	mov	qword ptr [rbx + 8], rdi
	mov	rsi, r12
	mov	rdx, r15
	call	write_unique
	test	rbp, rbp
	je	.label_612
	mov	rdi, qword ptr [rbx + 8]
	inc	rbp
	cmp	rdi, qword ptr [rbx + 0x18]
	jne	.label_629
	jmp	.label_612
.label_621:
	mov	rax, qword ptr [rsp]
	sub	rax, qword ptr [rbx]
	sar	rax, 5
	cmp	qword ptr [rbx + 0x28], rax
	jne	.label_617
	test	r14, r14
	je	.label_617
	mov	rcx, qword ptr [rbx + 8]
	cmp	rcx, qword ptr [rbx + 0x18]
	je	.label_617
	mov	eax, 1
	sub	rax, r14
	nop	
.label_624:
	lea	rdx, [rcx - 0x20]
	mov	qword ptr [rbx + 8], rdx
	movups	xmm0, xmmword ptr [rcx - 0x20]
	movups	xmm1, xmmword ptr [rcx - 0x10]
	movups	xmmword ptr [rbp - 0x10], xmm1
	movups	xmmword ptr [rbp - 0x20], xmm0
	lea	rbp, [rbp - 0x20]
	test	rax, rax
	je	.label_617
	mov	rcx, qword ptr [rbx + 8]
	inc	rax
	cmp	rcx, qword ptr [rbx + 0x18]
	jne	.label_624
.label_617:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rax], rbp
.label_612:
	mov	rax, qword ptr [rsp]
	sub	rax, qword ptr [rbx]
	sar	rax, 5
	sub	r13, qword ptr [rbx + 8]
	sar	r13, 5
	sub	qword ptr [rbx + 0x28], rax
	sub	qword ptr [rbx + 0x30], r13
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
	.align	32
	#Procedure 0x409a90

	.globl queue_check_insert
	.type queue_check_insert, @function
queue_check_insert:
	cmp	byte ptr [rsi + 0x54], 0
	jne	.label_631
	mov	rcx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 8]
	cmp	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rsi + 0x18]
	jne	.label_633
	cmp	rax, rcx
	je	.label_631
	cmp	qword ptr [rsi + 0x28], 0
	jne	.label_631
	jmp	.label_632
.label_633:
	cmp	rax, rcx
	jne	.label_632
	cmp	qword ptr [rsi + 0x30], 0
	je	.label_632
.label_631:
	ret	
.label_632:
	jmp	queue_insert
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ad0

	.globl queue_check_insert_parent
	.type queue_check_insert_parent, @function
queue_check_insert_parent:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	dword ptr [rbx + 0x50], 2
	jb	.label_634
	mov	rdi, qword ptr [rbx + 0x38]
	call	lock_node
	mov	rsi, qword ptr [rbx + 0x38]
	mov	rdi, r14
	call	queue_check_insert
	mov	rdi, qword ptr [rbx + 0x38]
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	unlock_node
.label_634:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, qword ptr [rbx + 0x30]
	jne	.label_635
	mov	rsi, qword ptr [rbx + 0x38]
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	queue_insert
.label_635:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b30

	.globl lock_node
	.type lock_node, @function
lock_node:
	add	rdi, 0x58
	jmp	pthread_mutex_lock
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409b40

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b50

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_639
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_636:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_638
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_641
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_642
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_637
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_638
.label_637:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_638
.label_642:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_638:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_636
	jmp	.label_640
.label_639:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_640:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_641:
	mov	rax, rbp
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
	#Procedure 0x409c50

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_643
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_644
.label_643:
	mov	esi, OFFSET FLAT:.str_3
.label_644:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	32
	#Procedure 0x409cc0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_649
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_646:
	test	rbp, rbp
	je	.label_648
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_645
.label_648:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_647
	nop	word ptr cs:[rax + rax]
.label_645:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_647:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_646
.label_649:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x409dc0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_650
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_650:
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
	.align	32
	#Procedure 0x409e30
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_651
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_652:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_651
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_652
.label_651:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409ea0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409eb0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ec0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_655
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_653
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_653
.label_655:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_656
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_653:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_654
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_656:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_654:
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
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x409f80

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	mov	dword ptr [rdi], 0x67452301
	mov	dword ptr [rdi + 4], 0xefcdab89
	mov	dword ptr [rdi + 8], 0x98badcfe
	mov	dword ptr [rdi + 0xc], 0x10325476
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409fc0

	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	esi, dword ptr [r14]
	mov	rdi, rbx
	call	set_uint32
	lea	rdi, [rbx + 4]
	mov	esi, dword ptr [r14 + 4]
	call	set_uint32
	lea	rdi, [rbx + 8]
	mov	esi, dword ptr [r14 + 8]
	call	set_uint32
	lea	rdi, [rbx + 0xc]
	mov	esi, dword ptr [r14 + 0xc]
	call	set_uint32
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a010

	.globl set_uint32
	.type set_uint32, @function
set_uint32:
	mov	dword ptr [rdi], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a020

	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	r15d, 0x20
	cmovb	r15, rcx
	mov	ecx, dword ptr [rbx + 0x10]
	add	ecx, eax
	mov	dword ptr [rbx + 0x10], ecx
	jae	.label_657
	inc	dword ptr [rbx + 0x14]
.label_657:
	mov	ecx, dword ptr [rbx + 0x10]
	shl	ecx, 3
	lea	r12, [rbx + 0x1c]
	mov	dword ptr [rbx + r15*4 + 0x14], ecx
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	shld	edx, ecx, 3
	mov	dword ptr [rbx + r15*4 + 0x18], edx
	lea	rdi, [rbx + rax + 0x1c]
	lea	rdx, [r15*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf_0
	call	memcpy
	shl	r15, 2
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rbx
	call	md5_process_block
	mov	rdi, rbx
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	md5_read_ctx
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0c0

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp - 0x80], rdx
	mov	rax, rsi
	and	rax, 0xfffffffffffffffc
	add	rax, rdi
	mov	qword ptr [rsp - 0x78], rax
	mov	r10d, dword ptr [rdx]
	mov	ebx, dword ptr [rdx + 4]
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	mov	r8, rsi
	shr	r8, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	add	ecx, esi
	mov	dword ptr [rdx + 0x10], ecx
	adc	r8d, 0
	add	dword ptr [rdx + 0x14], r8d
	cmp	rdi, rax
	jae	.label_658
	nop	
.label_660:
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp - 0x40], r9
	mov	qword ptr [rsp - 0x38], rbp
	mov	dword ptr [rsp - 0x2c], r10d
	mov	eax, r9d
	xor	eax, ebp
	and	eax, ebx
	xor	eax, ebp
	add	eax, r10d
	mov	ecx, dword ptr [rdi]
	mov	qword ptr [rsp - 0x50], rcx
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 8], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	rol	edx, 7
	mov	rax, qword ptr [rsp + 8]
	add	edx, eax
	mov	rax, qword ptr [rsp + 8]
	xor	eax, r9d
	and	eax, edx
	xor	eax, r9d
	lea	ecx, [rbp + rsi]
	lea	ebp, [rax + rcx - 0x173848aa]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	mov	rcx, qword ptr [rsp + 8]
	xor	eax, ecx
	and	eax, ebp
	mov	rcx, qword ptr [rsp + 8]
	xor	eax, ecx
	mov	ecx, dword ptr [rdi + 8]
	mov	qword ptr [rsp - 0x18], rcx
	lea	ecx, [r9 + rcx]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	add	ebx, ebp
	mov	eax, ebp
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	esi, dword ptr [rdi + 0xc]
	mov	qword ptr [rsp - 0x68], rsi
	mov	rcx, qword ptr [rsp + 8]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	lea	eax, [rax + rcx - 0x3e423112]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	xor	ecx, ebp
	and	ecx, eax
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	mov	dword ptr [rsp - 0x20], esi
	add	edx, esi
	lea	ecx, [rcx + rdx - 0xa83f051]
	rol	ecx, 7
	add	ecx, eax
	mov	edx, eax
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x28], esi
	add	ebp, esi
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	mov	edx, ecx
	xor	edx, eax
	and	edx, r8d
	xor	edx, eax
	mov	esi, dword ptr [rdi + 0x18]
	mov	dword ptr [rsp - 0x44], esi
	add	ebx, esi
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	rol	ebx, 0x11
	add	ebx, r8d
	mov	ebp, r8d
	xor	ebp, ecx
	and	ebp, ebx
	xor	ebp, ecx
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x1c], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	rol	r9d, 0x16
	add	r9d, ebx
	mov	eax, ebx
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	edx, dword ptr [rdi + 0x20]
	mov	dword ptr [rsp - 0x24], edx
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	rol	ecx, 7
	add	ecx, r9d
	mov	eax, r9d
	xor	eax, ebx
	and	eax, ecx
	xor	eax, ebx
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp + 4], edx
	add	r8d, edx
	lea	ebp, [rax + r8 - 0x74bb0851]
	rol	ebp, 0xc
	add	ebp, ecx
	mov	eax, ecx
	xor	eax, r9d
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	mov	dword ptr [rsp - 0x5c], edx
	add	ebx, edx
	mov	r13d, edx
	lea	r15d, [rax + rbx - 0xa44f]
	rol	r15d, 0x11
	add	r15d, ebp
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	mov	dword ptr [rsp - 0xc], edx
	add	r9d, edx
	lea	r11d, [rax + r9 - 0x76a32842]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	xor	eax, ebp
	mov	ebx, dword ptr [rdi + 0x30]
	mov	dword ptr [rsp - 0x54], ebx
	add	ecx, ebx
	lea	ecx, [rax + rcx + 0x6b901122]
	rol	ecx, 7
	add	ecx, r11d
	mov	eax, r11d
	xor	eax, r15d
	and	eax, ecx
	xor	eax, r15d
	mov	ebx, dword ptr [rdi + 0x34]
	mov	dword ptr [rsp - 0x58], ebx
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	add	r9d, ecx
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r9d
	xor	eax, r11d
	mov	r14d, dword ptr [rdi + 0x38]
	mov	dword ptr [rsp - 0x6c], r14d
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	add	r8d, r9d
	mov	eax, r9d
	xor	eax, ecx
	and	eax, r8d
	xor	eax, ecx
	mov	ebp, dword ptr [rdi + 0x3c]
	mov	dword ptr [rsp - 0x48], ebp
	add	r11d, ebp
	mov	r15d, ebp
	lea	r11d, [rax + r11 + 0x49b40821]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	rbp, qword ptr [rsp - 8]
	add	ecx, ebp
	lea	ecx, [rax + rcx - 0x9e1da9e]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	r9d, esi
	lea	ebp, [rax + r9 - 0x3fbf4cc0]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x265e5a51]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x16493856]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	mov	r9d, dword ptr [rsp - 0x28]
	add	ecx, r9d
	lea	ecx, [rax + rcx - 0x29d0efa3]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	ebp, r13d
	lea	ebp, [rax + rbp + 0x2441453]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r15d
	lea	r8d, [rax + r8 - 0x275e197f]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x20]
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, dword ptr [rsp + 4]
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	r13d, r14d
	add	ebp, r13d
	lea	ebp, [rax + rbp - 0x3cc8f82a]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r12d
	lea	r8d, [rax + r8 - 0xb2af279]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	esi, dword ptr [rsp - 0x24]
	add	r11d, esi
	lea	r11d, [rax + r11 + 0x455a14ed]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	lea	ecx, [rax + rcx - 0x561c16fb]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x18]
	add	ebp, edx
	lea	r14d, [rax + rbp - 0x3105c08]
	rol	r14d, 9
	add	r14d, ecx
	mov	eax, r14d
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	mov	edx, dword ptr [rsp - 0x1c]
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x676f02d9]
	rol	r8d, 0xe
	add	r8d, r14d
	mov	ebp, r8d
	xor	ebp, r14d
	mov	eax, ebp
	and	eax, ecx
	xor	eax, r14d
	mov	r15d, dword ptr [rsp - 0x54]
	add	r11d, r15d
	lea	eax, [rax + r11 - 0x72d5b376]
	rol	eax, 0x14
	add	eax, r8d
	xor	ebp, eax
	add	ecx, r9d
	lea	r11d, [rbp + rcx - 0x5c6be]
	rol	r11d, 4
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	add	r14d, esi
	lea	r14d, [rcx + r14 - 0x788e097f]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	ebp, r11d
	xor	ebp, eax
	xor	ebp, r14d
	add	r8d, dword ptr [rsp - 0xc]
	lea	ebp, [rbp + r8 + 0x6d9d6122]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, ebp
	add	eax, r13d
	lea	r8d, [rcx + rax - 0x21ac7f4]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	mov	rcx, qword ptr [rsp - 8]
	add	r11d, ecx
	lea	r11d, [rax + r11 - 0x5b4115bc]
	rol	r11d, 4
	add	r11d, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, r11d
	add	r14d, r10d
	lea	r14d, [rcx + r14 + 0x4bdecfa9]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	eax, r11d
	xor	eax, r8d
	xor	eax, r14d
	add	ebp, edx
	lea	ebp, [rax + rbp - 0x944b4a0]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	eax, r14d
	xor	eax, r11d
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x5c]
	add	r8d, r10d
	lea	r8d, [rax + r8 - 0x41404390]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	add	r11d, ebx
	lea	eax, [rax + r11 + 0x289b7ec6]
	rol	eax, 4
	add	eax, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, eax
	mov	rsi, qword ptr [rsp - 0x50]
	add	r14d, esi
	lea	r11d, [rcx + r14 - 0x155ed806]
	rol	r11d, 0xb
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	mov	r9, qword ptr [rsp - 0x68]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	rol	r14d, 0x10
	add	r14d, r11d
	mov	ecx, r11d
	xor	ecx, eax
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x44]
	add	r8d, r12d
	lea	r8d, [rcx + r8 + 0x4881d05]
	rol	r8d, 0x17
	add	r8d, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, r8d
	add	eax, dword ptr [rsp + 4]
	lea	ecx, [rcx + rax - 0x262b2fc7]
	rol	ecx, 4
	add	ecx, r8d
	mov	eax, r8d
	xor	eax, r14d
	xor	eax, ecx
	add	r11d, r15d
	lea	edx, [rax + r11 - 0x1924661b]
	rol	edx, 0xb
	add	edx, ecx
	mov	ebp, ecx
	xor	ebp, r8d
	xor	ebp, edx
	mov	r13d, dword ptr [rsp - 0x48]
	add	r14d, r13d
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	rol	r11d, 0x10
	add	r11d, edx
	mov	ebp, edx
	xor	ebp, ecx
	xor	ebp, r11d
	mov	rax, qword ptr [rsp - 0x18]
	add	r8d, eax
	mov	r14, rax
	lea	r8d, [rbp + r8 - 0x3b53a99b]
	add	ecx, esi
	rol	r8d, 0x17
	add	r8d, r11d
	mov	eax, edx
	not	eax
	or	eax, r8d
	xor	eax, r11d
	lea	ecx, [rax + rcx - 0xbd6ddbc]
	add	edx, dword ptr [rsp - 0x1c]
	rol	ecx, 6
	add	ecx, r8d
	mov	eax, r11d
	not	eax
	or	eax, ecx
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	add	r11d, dword ptr [rsp - 0x6c]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	eax, r8d
	not	eax
	or	eax, ebp
	xor	eax, ecx
	lea	eax, [rax + r11 - 0x546bdc59]
	add	r8d, dword ptr [rsp - 0x28]
	rol	eax, 0xf
	add	eax, ebp
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	esi, [rdx + r8 - 0x36c5fc7]
	add	ecx, r15d
	rol	esi, 0x15
	add	esi, eax
	mov	edx, ebp
	not	edx
	or	edx, esi
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x655b59c3]
	add	ebp, r9d
	rol	ecx, 6
	add	ecx, esi
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, esi
	lea	ebp, [rdx + rbp - 0x70f3336e]
	add	eax, r10d
	mov	rbx, qword ptr [rsp + 8]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	edx, esi
	not	edx
	or	edx, ebp
	xor	edx, ecx
	lea	eax, [rdx + rax - 0x100b83]
	rol	eax, 0xf
	add	eax, ebp
	mov	rdx, qword ptr [rsp - 8]
	add	esi, edx
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	add	r8d, eax
	add	ecx, dword ptr [rsp - 0x24]
	mov	edx, ebp
	not	edx
	or	edx, r8d
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x6fa87e4f]
	rol	ecx, 6
	add	ecx, r8d
	add	ebp, r13d
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, r8d
	lea	edx, [rdx + rbp - 0x1d31920]
	rol	edx, 0xa
	add	edx, ecx
	add	eax, r12d
	mov	esi, r8d
	not	esi
	or	esi, edx
	xor	esi, ecx
	lea	ebp, [rsi + rax - 0x5cfebcec]
	rol	ebp, 0xf
	add	ebp, edx
	add	r8d, dword ptr [rsp - 0x58]
	mov	eax, ecx
	not	eax
	or	eax, ebp
	xor	eax, edx
	lea	esi, [rax + r8 + 0x4e0811a1]
	mov	r8, qword ptr [rsp - 0x78]
	mov	r10d, dword ptr [rsp - 0x2c]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x20]
	mov	eax, edx
	not	eax
	or	eax, esi
	xor	eax, ebp
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	add	ecx, esi
	add	edx, dword ptr [rsp - 0xc]
	mov	eax, ebp
	not	eax
	or	eax, ecx
	xor	eax, esi
	lea	edx, [rax + rdx - 0x42c50dcb]
	rol	edx, 0xa
	add	edx, ecx
	add	ebp, r14d
	mov	eax, esi
	not	eax
	or	eax, edx
	xor	eax, ecx
	lea	eax, [rax + rbp + 0x2ad7d2bb]
	add	esi, dword ptr [rsp + 4]
	rol	eax, 0xf
	add	eax, edx
	add	r10d, ecx
	not	ecx
	or	ecx, eax
	xor	ecx, edx
	lea	ecx, [rcx + rsi - 0x14792c6f]
	rol	ecx, 0x15
	add	ebx, eax
	add	ebx, ecx
	mov	rcx, qword ptr [rsp - 0x40]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 0x38]
	add	edx, ecx
	add	rdi, 0x40
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_660
	jmp	.label_659
.label_658:
	mov	eax, r9d
	mov	edx, ebp
.label_659:
	mov	rcx, qword ptr [rsp - 0x80]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
	add	rsp, 0x10
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
	#Procedure 0x40a8d0
	.globl md5_stream
	.type md5_stream, @function
md5_stream:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14, rsi
	mov	r13, rdi
	mov	edi, 0x8048
	call	malloc
	mov	r12, rax
	mov	r15d, 1
	test	r12, r12
	je	.label_664
	lea	rdi, [rsp + 8]
	call	md5_init_ctx
	mov	rdi, r13
	call	feof_unlocked
	xor	r15d, r15d
	test	eax, eax
	jne	.label_661
	lea	rbp, [rsp + 8]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_667:
	lea	rdi, [r12 + rbx]
	mov	edx, 0x8000
	sub	rdx, rbx
	mov	esi, 1
	mov	rcx, r13
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	jne	.label_663
	mov	esi, 0x8000
	mov	rdi, r12
	mov	rdx, rbp
	call	md5_process_block
	xor	ebx, ebx
	jmp	.label_665
	nop	dword ptr [rax]
.label_663:
	test	rax, rax
	je	.label_666
.label_665:
	mov	rdi, r13
	call	feof_unlocked
	test	eax, eax
	je	.label_667
.label_662:
	test	rbx, rbx
	je	.label_661
	lea	rdx, [rsp + 8]
	mov	rdi, r12
	mov	rsi, rbx
	call	md5_process_bytes
.label_661:
	lea	rdi, [rsp + 8]
	mov	rsi, r14
	call	md5_finish_ctx
	mov	rdi, r12
	call	free
.label_664:
	mov	eax, r15d
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_666:
	mov	rdi, r13
	call	ferror_unlocked
	test	eax, eax
	je	.label_662
	mov	rdi, r12
	call	free
	mov	r15d, 1
	jmp	.label_664
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a9e0

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	r13d, dword ptr [r14 + 0x18]
	test	r13, r13
	je	.label_668
	mov	ebx, 0x80
	sub	rbx, r13
	cmp	rbx, r12
	cmova	rbx, r12
	lea	rdi, [r14 + r13 + 0x1c]
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	esi, dword ptr [r14 + 0x18]
	add	rsi, rbx
	mov	dword ptr [r14 + 0x18], esi
	cmp	esi, 0x41
	jb	.label_672
	lea	rbp, [r14 + 0x1c]
	and	esi, 0xffffffc0
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	mov	edx, dword ptr [r14 + 0x18]
	and	edx, 0x3f
	mov	dword ptr [r14 + 0x18], edx
	add	r13, rbx
	and	r13, 0xffffffffffffffc0
	add	r13, rbp
	mov	rdi, rbp
	mov	rsi, r13
	call	memcpy
.label_672:
	add	r15, rbx
	sub	r12, rbx
.label_668:
	cmp	r12, 0x40
	jb	.label_669
	mov	rbx, r12
	and	rbx, 0xffffffffffffffc0
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	md5_process_block
	add	r15, rbx
	and	r12d, 0x3f
.label_669:
	test	r12, r12
	je	.label_670
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x40
	jb	.label_671
	lea	rbp, [r14 + 0x1c]
	mov	esi, 0x40
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	add	rbx, -0x40
	lea	rsi, [r14 + 0x5c]
	mov	rdi, rbp
	mov	rdx, rbx
	call	memcpy
.label_671:
	mov	dword ptr [r14 + 0x18], ebx
.label_670:
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
	.align	32
	#Procedure 0x40aaf0
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	lea	r12, [rsp + 8]
	mov	rdi, r12
	call	md5_init_ctx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r12
	call	md5_process_bytes
	mov	rdi, r12
	mov	rsi, r14
	call	md5_finish_ctx
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ab40

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab50

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_673
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_673:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab70

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	rbp, rdi
	call	strcmp
	mov	r14d, eax
	xor	eax, eax
	test	r14d, r14d
	je	.label_677
	mov	cl, byte ptr [rbp]
	mov	eax, 0xffffffff
	test	cl, cl
	je	.label_677
	cmp	byte ptr [rbx], 0
	je	.label_684
	movzx	ecx, cl
	cmp	ecx, 0x2e
	jne	.label_685
	cmp	byte ptr [rbp + 1], 0
	je	.label_677
.label_685:
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2e
	jne	.label_675
	cmp	byte ptr [rbx + 1], 0
	je	.label_678
.label_675:
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0x2e
	jne	.label_681
	movzx	ecx, byte ptr [rbp + 1]
	cmp	ecx, 0x2e
	jne	.label_681
	cmp	byte ptr [rbp + 2], 0
	je	.label_677
.label_681:
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2e
	jne	.label_680
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_680
	cmp	byte ptr [rbx + 2], 0
	je	.label_674
.label_680:
	movzx	ecx, byte ptr [rbp]
	cmp	ecx, 0x2e
	jne	.label_679
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2e
	jne	.label_677
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2e
	je	.label_683
.label_679:
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	mov	eax, 1
	je	.label_677
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2e
	jne	.label_676
.label_683:
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	jne	.label_676
	inc	rbp
	inc	rbx
.label_676:
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 8], rbx
	lea	rdi, [rsp + 0x10]
	call	match_suffix
	mov	r13, rax
	lea	rdi, [rsp + 8]
	call	match_suffix
	test	r13, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r15, rcx
	cmovne	r15, r13
	sub	r15, rbp
	test	rax, rax
	mov	rdx, qword ptr [rsp + 8]
	mov	r12, rdx
	cmovne	r12, rax
	sub	r12, rbx
	or	r13, rax
	je	.label_682
	mov	qword ptr [rsp], rdx
	mov	r13, rcx
	cmp	r15, r12
	jne	.label_682
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	call	strncmp
	test	eax, eax
	jne	.label_682
	sub	r13, rbp
	mov	rax, qword ptr [rsp]
	sub	rax, rbx
	mov	r12, rax
	mov	r15, r13
.label_682:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rbx
	mov	rcx, r12
	call	verrevcmp
	test	eax, eax
	cmovne	r14d, eax
	mov	eax, r14d
	jmp	.label_677
.label_684:
	mov	eax, 1
	jmp	.label_677
.label_678:
	mov	eax, 1
	jmp	.label_677
.label_674:
	mov	eax, 1
.label_677:
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
	.align	32
	#Procedure 0x40ad10

	.globl match_suffix
	.type match_suffix, @function
match_suffix:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdi
	mov	rax, qword ptr [r12]
	mov	bl, byte ptr [rax]
	xor	r14d, r14d
	test	bl, bl
	je	.label_689
	xor	r15d, r15d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_688:
	test	r13b, 1
	jne	.label_691
	movzx	ebp, bl
	cmp	ebp, 0x2e
	jne	.label_686
	test	r14, r14
	cmove	r14, rax
	mov	r13b, 1
	jmp	.label_687
	nop	word ptr [rax + rax]
.label_691:
	movsx	edi, bl
	call	c_isalpha
	test	al, al
	je	.label_690
	xor	r13d, r13d
	jmp	.label_687
	nop	word ptr cs:[rax + rax]
.label_686:
	movsx	edi, bl
	call	c_isalnum
	test	al, al
	jne	.label_687
	cmp	ebp, 0x7e
	cmovne	r14, r15
	jmp	.label_687
	nop	word ptr cs:[rax + rax]
.label_690:
	movzx	eax, bl
	xor	r13d, r13d
	cmp	eax, 0x7e
	cmovne	r14, r13
.label_687:
	mov	rcx, qword ptr [r12]
	lea	rax, [rcx + 1]
	mov	qword ptr [r12], rax
	mov	bl, byte ptr [rcx + 1]
	test	bl, bl
	jne	.label_688
.label_689:
	mov	rax, r14
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
	.align	32
	#Procedure 0x40ade0

	.globl verrevcmp
	.type verrevcmp, @function
verrevcmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x10], rdi
	xor	r15d, r15d
	xor	r14d, r14d
.label_694:
	cmp	r15, qword ptr [rsp + 0x20]
	jb	.label_696
	cmp	r14, qword ptr [rsp + 0x30]
	jae	.label_697
.label_696:
	lea	r13, [r14 - 1]
	lea	rbx, [r15 - 1]
	mov	rax, qword ptr [rsp + 0x10]
	lea	r12, [rax + r14]
	jmp	.label_700
	nop	dword ptr [rax]
.label_707:
	inc	r14
	inc	r15
	inc	r13
	mov	rbx, qword ptr [rsp + 0x28]
	inc	rbx
	inc	r12
.label_700:
	cmp	r14, qword ptr [rsp + 0x30]
	jae	.label_695
	mov	rax, qword ptr [rsp + 0x10]
	movsx	edi, byte ptr [rax + r14]
	call	c_isdigit
	test	al, al
	je	.label_702
.label_695:
	cmp	r15, qword ptr [rsp + 0x20]
	jae	.label_703
	mov	rax, qword ptr [rsp + 0x18]
	movsx	edi, byte ptr [rax + r15]
	call	c_isdigit
	test	al, al
	jne	.label_703
.label_702:
	mov	qword ptr [rsp + 0x28], rbx
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x30], r14
	mov	ebp, 0
	je	.label_706
	mov	rax, qword ptr [rsp + 0x10]
	movzx	edi, byte ptr [rax + r14]
	call	order
	mov	ebp, eax
.label_706:
	cmp	qword ptr [rsp + 0x20], r15
	je	.label_701
	mov	rax, qword ptr [rsp + 0x18]
	movzx	edi, byte ptr [rax + r15]
	call	order
	mov	ebx, eax
.label_701:
	sub	ebp, ebx
	je	.label_707
	jmp	.label_699
	nop	word ptr cs:[rax + rax]
.label_703:
	mov	r14, r13
	mov	rcx, qword ptr [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_693:
	mov	r13, r12
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	lea	r12, [r13 + 1]
	cmp	eax, 0x30
	je	.label_693
	mov	r15, rbx
	mov	rbx, qword ptr [rsp + 0x18]
	nop	dword ptr [rax]
.label_692:
	movzx	eax, byte ptr [rbx + r15 + 1]
	inc	r15
	cmp	eax, 0x30
	je	.label_692
	mov	r12, rcx
	movsx	ebp, byte ptr [r12 + r14]
	mov	edi, ebp
	call	c_isdigit
	test	al, al
	je	.label_704
	mov	qword ptr [rsp + 0x10], r12
	lea	rax, [rbx + r15]
	mov	qword ptr [rsp + 8], rax
	xor	r12d, r12d
	mov	dword ptr [rsp + 0x28], 0
	nop	word ptr [rax + rax]
.label_705:
	mov	rax, qword ptr [rsp + 8]
	movsx	ebx, byte ptr [rax + r12]
	mov	edi, ebx
	call	c_isdigit
	test	al, al
	je	.label_698
	sub	ebp, ebx
	mov	eax, dword ptr [rsp + 0x28]
	test	eax, eax
	cmove	eax, ebp
	mov	dword ptr [rsp + 0x28], eax
	movsx	ebp, byte ptr [r13 + 1]
	inc	r13
	mov	edi, ebp
	call	c_isdigit
	inc	r12
	test	al, al
	jne	.label_705
.label_698:
	add	r14, r12
	add	r15, r12
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r12d, dword ptr [rsp + 0x28]
	jmp	.label_708
	nop	dword ptr [rax]
.label_704:
	lea	r13, [r12 + r14]
	mov	qword ptr [rsp + 0x10], r12
	xor	r12d, r12d
.label_708:
	movsx	edi, byte ptr [r13]
	call	c_isdigit
	mov	ebp, 1
	test	al, al
	jne	.label_699
	movsx	edi, byte ptr [rbx + r15]
	call	c_isdigit
	mov	ebp, 0xffffffff
	test	al, al
	jne	.label_699
	test	r12d, r12d
	mov	ebp, r12d
	je	.label_694
	jmp	.label_699
.label_697:
	xor	ebp, ebp
.label_699:
	mov	eax, ebp
	add	rsp, 0x38
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
	#Procedure 0x40aff0

	.globl order
	.type order, @function
order:
	push	rbx
	mov	ebx, edi
	call	c_isdigit
	mov	cl, al
	xor	eax, eax
	test	cl, cl
	jne	.label_709
	mov	edi, ebx
	call	c_isalpha
	test	al, al
	mov	eax, ebx
	jne	.label_709
	movzx	eax, bl
	or	ebx, 0x100
	cmp	eax, 0x7e
	mov	eax, 0xffffffff
	cmovne	eax, ebx
.label_709:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b030

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_711
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_712
	cmp	byte ptr [rax + 1], 0
	je	.label_710
.label_712:
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_711
.label_710:
	xor	ebx, ebx
.label_711:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b070

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b080

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b090

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b0a0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_713
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_715:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_714
	nop	
.label_716:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_716
	cmp	rsi, rax
	cmova	rax, rsi
.label_714:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_715
.label_713:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b0f0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	cmp	rsi, qword ptr [rdi + 8]
	mov	edx, 0
	jae	.label_717
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_722:
	cmp	qword ptr [rsi], 0
	mov	rax, rsi
	je	.label_718
	nop	dword ptr [rax]
.label_720:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_720
	inc	rdx
.label_718:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_722
.label_717:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_719
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_721
.label_719:
	xor	eax, eax
.label_721:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b150
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_140]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_141]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_142]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_1
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b240
	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_723
	test	rbx, rbx
	je	.label_723
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_724:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_725
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_725
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_724
	jmp	.label_723
.label_725:
	mov	r15, qword ptr [rbx]
.label_723:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b2a0

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_726
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_726:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b2d0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_727
	mov	rcx, qword ptr [rdi]
	jmp	.label_729
	nop	
.label_730:
	add	rcx, 0x10
.label_729:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_728
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_730
.label_727:
	ret	
.label_728:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b300
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_735:
	cmp	qword ptr [rcx], rbx
	jne	.label_731
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_732
.label_731:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_735
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_734:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_733
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_734
	jmp	.label_733
.label_732:
	mov	rcx, qword ptr [rdx]
.label_733:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b370
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	jmp	.label_736
	nop	word ptr [rax + rax]
.label_737:
	add	r8, 0x10
.label_736:
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_738
	cmp	qword ptr [r8], 0
	je	.label_737
	test	r8, r8
	mov	r9, r8
	je	.label_737
	nop	dword ptr [rax + rax]
.label_739:
	cmp	rax, rdx
	jae	.label_738
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_739
	jmp	.label_737
.label_738:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b3c0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	xor	ebx, ebx
	jmp	.label_740
	nop	dword ptr [rax]
.label_741:
	add	r13, 0x10
.label_740:
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_742
	cmp	qword ptr [r13], 0
	je	.label_741
	test	r13, r13
	mov	rbp, r13
	je	.label_741
	nop	word ptr [rax + rax]
.label_743:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_742
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_743
	jmp	.label_741
.label_742:
	mov	rax, rbx
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
	.align	32
	#Procedure 0x40b430
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_744
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_745:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_745
.label_744:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b470
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_746]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b490

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_748
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_747
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_747
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_747
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_748
.label_747:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_748:
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
	.align	32
	#Procedure 0x40b570

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b590

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5a0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_749
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_750]]
	jbe	.label_751
	movss	xmm1,  dword ptr [dword ptr [rip + label_754]]
	ucomiss	xmm1, xmm0
	jbe	.label_751
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_753]]
	jbe	.label_751
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_751
	addss	xmm1,  dword ptr [dword ptr [rip + label_750]]
	ucomiss	xmm0, xmm1
	jbe	.label_751
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_752]]
	ucomiss	xmm2, xmm0
	jb	.label_751
	ucomiss	xmm0, xmm1
	ja	.label_749
.label_751:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_749:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b620

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_755
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_760
	cvtsi2ss	xmm0, rdi
	jmp	.label_756
.label_760:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_756:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_757]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_758]]
	jae	.label_759
.label_755:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_759:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b6a0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_761
	nop	dword ptr [rax]
.label_766:
	add	r14, 0x10
.label_761:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_764
	cmp	qword ptr [r14], 0
	je	.label_766
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_762
	nop	word ptr cs:[rax + rax]
.label_763:
	test	cl, 1
	je	.label_767
	mov	rdi, qword ptr [rbx]
	call	rax
.label_767:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_763
.label_762:
	test	cl, cl
	je	.label_765
	mov	rdi, qword ptr [r14]
	call	rax
.label_765:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_766
.label_764:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b740
	.globl hash_free
	.type hash_free, @function
hash_free:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_768
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_768
	mov	r14, qword ptr [r15]
	jmp	.label_775
	nop	dword ptr [rax + rax]
.label_771:
	add	r14, 0x10
.label_775:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_768
	cmp	qword ptr [r14], 0
	je	.label_771
	test	r14, r14
	mov	rbx, r14
	je	.label_771
	nop	dword ptr [rax + rax]
.label_769:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_769
	jmp	.label_771
.label_768:
	mov	r14, qword ptr [r15]
	jmp	.label_773
	nop	word ptr [rax + rax]
.label_772:
	add	r14, 0x10
.label_773:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_776
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_772
	nop	word ptr cs:[rax + rax]
.label_770:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_770
	jmp	.label_772
.label_776:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_774
	nop	dword ptr [rax]
.label_777:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_777
.label_774:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b810

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_778
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_779
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_778
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_780
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_779
.label_780:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_781
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_781
	mov	rdi, qword ptr [rsp]
	call	free
.label_778:
	xor	r14d, r14d
.label_779:
	mov	al, r14b
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_781:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b940

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	r15, qword ptr [r12]
	mov	al, 1
	cmp	r15, qword ptr [r12 + 8]
	jae	.label_782
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_789:
	cmp	qword ptr [r15], 0
	je	.label_786
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_791
	nop	word ptr cs:[rax + rax]
.label_785:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_787
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_788
	nop	word ptr cs:[rax + rax]
.label_787:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_788:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_785
.label_791:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_786
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_790
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_783
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_784
.label_790:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_784:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_786:
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	jb	.label_789
	mov	al, 1
	jmp	.label_782
.label_783:
	xor	eax, eax
.label_782:
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
	.align	32
	#Procedure 0x40ba60

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_800
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_795
	test	rbx, rbx
	je	.label_799
	mov	qword ptr [rbx], rax
	jmp	.label_799
.label_795:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_802
	cvtsi2ss	xmm0, rcx
	jmp	.label_805
.label_802:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_805:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_794
	cvtsi2ss	xmm1, rax
	jmp	.label_803
.label_794:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_803:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_797
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_792
	cvtsi2ss	xmm2, rcx
	jmp	.label_798
.label_792:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_798:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_793
	cvtsi2ss	xmm0, rax
	jmp	.label_806
.label_793:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_806:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_797
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_801
	mulss	xmm0, xmm1
.label_801:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_758]]
	jae	.label_799
	movss	xmm1,  dword ptr [dword ptr [rip + label_757]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	je	.label_799
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_800
.label_797:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_796
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_799
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_804
.label_796:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_804:
	mov	ebp, 1
.label_799:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_800:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bc30

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_810
	cmp	rsi, r13
	je	.label_808
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_811
.label_808:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_810
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_813
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_809
.label_811:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_810
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_812:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_807
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_807
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_812
	jmp	.label_810
.label_813:
	mov	qword ptr [rbx], 0
	jmp	.label_810
.label_807:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_810
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_809:
	mov	rdi, r14
	call	free_entry
.label_810:
	mov	rax, r15
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
	.align	32
	#Procedure 0x40bd00

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_814
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_814:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd30

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_815
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_815:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bd60

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_828
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_820
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_823
	cvtsi2ss	xmm0, rax
	jmp	.label_826
.label_823:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_826:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_819
	cvtsi2ss	xmm1, rcx
	jmp	.label_822
.label_819:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_822:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_820
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_817
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_818
.label_817:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_818:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_827
	cvtsi2ss	xmm0, rax
	jmp	.label_816
.label_827:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_816:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_820
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_824
	mulss	xmm0, dword ptr [rcx + 8]
.label_824:
	movss	xmm1,  dword ptr [dword ptr [rip + label_757]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_820
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_825
	nop	word ptr cs:[rax + rax]
.label_821:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_821
.label_825:
	mov	qword ptr [r15 + 0x48], 0
.label_820:
	mov	rax, r14
.label_828:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bef0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_829
	nop	
.label_830:
	add	rbx, 2
.label_829:
	cmp	rbx, -1
	je	.label_831
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_830
	mov	r14, rbx
.label_831:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bf40

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_832
	nop	dword ptr [rax + rax]
.label_833:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_832
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_833
.label_832:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bf90

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bfb0

	.globl heap_alloc
	.type heap_alloc, @function
heap_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	mov	edi, 0x20
	call	xmalloc
	mov	r12, rax
	test	r15, r15
	mov	ebx, 1
	cmovne	rbx, r15
	mov	esi, 8
	mov	rdi, rbx
	call	xnmalloc
	mov	qword ptr [r12], rax
	mov	qword ptr [rax], 0
	mov	qword ptr [r12 + 8], rbx
	mov	qword ptr [r12 + 0x10], 0
	test	r14, r14
	mov	eax, OFFSET FLAT:heap_default_compare
	cmovne	rax, r14
	mov	qword ptr [r12 + 0x18], rax
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c020

	.globl heap_default_compare
	.type heap_default_compare, @function
heap_default_compare:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c030
	.globl heap_free
	.type heap_free, @function
heap_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c050

	.globl heap_insert
	.type heap_insert, @function
heap_insert:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 8]
	dec	rax
	cmp	rax, qword ptr [rbx + 0x10]
	ja	.label_834
	lea	rsi, [rbx + 8]
	mov	rdi, qword ptr [rbx]
	mov	edx, 8
	call	x2nrealloc
	mov	qword ptr [rbx], rax
.label_834:
	mov	rax, qword ptr [rbx + 0x10]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, qword ptr [rbx]
	mov	qword ptr [rcx + rax*8 + 8], r14
	mov	rdi, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x18]
	call	heapify_up
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c0b0

	.globl heapify_up
	.type heapify_up, @function
heapify_up:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r14, qword ptr [r12 + rbx*8]
	mov	r13d, 1
	cmp	rbx, 1
	je	.label_835
	mov	r13d, 1
	nop	word ptr [rax + rax]
.label_836:
	mov	rbp, rbx
	shr	rbp, 1
	mov	rdi, qword ptr [r12 + rbp*8]
	mov	rsi, r14
	call	r15
	test	eax, eax
	jg	.label_837
	mov	rax, qword ptr [r12 + rbp*8]
	mov	qword ptr [r12 + rbx*8], rax
	cmp	rbp, 1
	mov	rbx, rbp
	jne	.label_836
	jmp	.label_835
.label_837:
	mov	r13, rbx
.label_835:
	mov	qword ptr [r12 + r13*8], r14
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
	.align	32
	#Procedure 0x40c120

	.globl heap_remove_top
	.type heap_remove_top, @function
heap_remove_top:
	push	rbx
	mov	rax, qword ptr [rdi + 0x10]
	xor	ebx, ebx
	test	rax, rax
	je	.label_838
	mov	rcx, qword ptr [rdi]
	mov	rbx, qword ptr [rcx + 8]
	lea	rdx, [rax - 1]
	mov	qword ptr [rdi + 0x10], rdx
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rdi, rax
	call	heapify_down
.label_838:
	mov	rax, rbx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c160

	.globl heapify_down
	.type heapify_down, @function
heapify_down:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x10], rax
	mov	r13, rsi
	shr	r13, 1
	mov	r14d, 1
	je	.label_839
.label_843:
	lea	rbp, [r14 + r14]
	cmp	rbp, qword ptr [rsp + 8]
	jae	.label_840
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	r12, rbp
	or	r12, 1
	mov	rsi, qword ptr [rbx + r12*8]
	call	r15
	test	eax, eax
	cmovs	rbp, r12
.label_840:
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	rsi, qword ptr [rsp + 0x10]
	call	r15
	test	eax, eax
	jle	.label_842
	mov	rax, qword ptr [rbx + rbp*8]
	mov	qword ptr [rbx + r14*8], rax
	cmp	rbp, r13
	mov	r14, rbp
	jbe	.label_843
	jmp	.label_841
.label_839:
	mov	ebp, 1
	jmp	.label_841
.label_842:
	mov	rbp, r14
.label_841:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + rbp*8], rax
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
	.align	32
	#Procedure 0x40c200

	.globl inttostr
	.type inttostr, @function
inttostr:
	mov	byte ptr [rsi + 0xb], 0
	test	edi, edi
	js	.label_844
	add	rsi, 0xb
	nop	dword ptr [rax]
.label_845:
	movsxd	rax, edi
	imul	rcx, rax, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	add	ecx, edx
	lea	edx, [rcx + rcx]
	lea	edx, [rdx + rdx*4]
	neg	edx
	lea	edx, [rdi + rdx + 0x30]
	mov	byte ptr [rsi - 1], dl
	dec	rsi
	add	eax, 9
	cmp	eax, 0x12
	mov	edi, ecx
	ja	.label_845
	jmp	.label_846
.label_844:
	add	rsi, 0xa
	nop	dword ptr [rax]
.label_847:
	movsxd	rax, edi
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
	sub	ecx, edx
	mov	byte ptr [rsi], cl
	add	eax, 9
	dec	rsi
	cmp	eax, 0x12
	ja	.label_847
	mov	byte ptr [rsi], 0x2d
.label_846:
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c290

	.globl uinttostr
	.type uinttostr, @function
uinttostr:
	mov	byte ptr [rsi + 0xa], 0
	add	rsi, 0xa
	mov	r8d, 0xcccccccd
	nop	
.label_848:
	mov	ecx, edi
	imul	rcx, r8
	shr	rcx, 0x23
	lea	edx, [rcx + rcx]
	lea	edx, [rdx + rdx*4]
	mov	eax, edi
	sub	eax, edx
	or	eax, 0x30
	mov	byte ptr [rsi - 1], al
	dec	rsi
	cmp	edi, 9
	mov	edi, ecx
	ja	.label_848
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c2d0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_849:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_849
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c320
	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:

	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	mov	edx, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	mbsnwidth
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c340

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, edx
	mov	r15, rsi
	mov	rbx, rdi
	lea	r12, [rbx + r15]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_869
	xor	ebp, ebp
	test	r15, r15
	jle	.label_851
	mov	eax, r14d
	and	eax, 2
	mov	dword ptr [rsp + 8], eax
	and	r14d, 1
	mov	edx, r14d
	xor	edx, 1
	lea	esi, [r14*4]
	xor	esi, 5
	xor	r15d, r15d
	lea	r13, [rsp + 0x10]
	mov	ebp, 0x7fffffff
	nop	word ptr cs:[rax + rax]
.label_865:
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	cmp	eax, 0x5e
	ja	.label_859
	jmp	qword ptr [word ptr [+ (rax * 8) + label_862]]
.label_1373:
	inc	rbx
	inc	r15d
.label_861:
	cmp	rbx, r12
	jb	.label_865
	jmp	.label_858
.label_859:
	mov	dword ptr [rsp], esi
	mov	dword ptr [rsp + 4], edx
	mov	qword ptr [rsp + 0x10], 0
	nop	word ptr cs:[rax + rax]
.label_866:
	mov	rdx, r12
	sub	rdx, rbx
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbx
	mov	rcx, r13
	call	rpl_mbrtowc
	mov	r13, rax
	test	r13, r13
	je	.label_850
	cmp	r13, -2
	je	.label_854
	cmp	r13, -1
	jne	.label_856
	jmp	.label_857
	nop	word ptr cs:[rax + rax]
.label_850:
	mov	r13d, 1
.label_856:
	mov	edi, dword ptr [rsp + 0xc]
	call	wcwidth
	test	eax, eax
	js	.label_863
	mov	edx, 0x7fffffff
	sub	edx, r15d
	mov	ecx, 7
	cmp	eax, edx
	jg	.label_864
	add	r15d, eax
	jmp	.label_855
	nop	dword ptr [rax]
.label_863:
	mov	ecx, 1
	cmp	dword ptr [rsp + 8], 0
	jne	.label_864
	mov	edi, dword ptr [rsp + 0xc]
	call	iswcntrl
	test	eax, eax
	jne	.label_855
	mov	ecx, 7
	cmp	r15d, 0x7fffffff
	je	.label_864
	inc	r15d
	nop	word ptr [rax + rax]
.label_855:
	add	rbx, r13
	lea	r13, [rsp + 0x10]
	mov	rdi, r13
	call	mbsinit
	test	eax, eax
	mov	rax, rbx
	je	.label_866
	jmp	.label_853
.label_854:
	add	r15d, dword ptr [rsp + 4]
	test	r14d, r14d
	mov	rax, r12
	mov	ecx, dword ptr [rsp]
	lea	r13, [rsp + 0x10]
	jne	.label_860
	jmp	.label_853
.label_857:
	mov	ecx, 1
	test	r14d, r14d
	jne	.label_864
	inc	rbx
	inc	r15d
	mov	rax, rbx
	lea	r13, [rsp + 0x10]
.label_853:
	mov	rbx, rax
	mov	edx, dword ptr [rsp + 4]
	mov	esi, dword ptr [rsp]
	jmp	.label_861
.label_864:
	lea	r13, [rsp + 0x10]
.label_860:
	test	ecx, ecx
	mov	edx, dword ptr [rsp + 4]
	mov	esi, dword ptr [rsp]
	je	.label_861
	mov	r15d, 0xffffffff
	cmp	ecx, 7
	jne	.label_858
	jmp	.label_851
.label_869:
	and	r14d, 2
	xor	r15d, r15d
	jmp	.label_852
.label_867:
	inc	r15d
	nop	dword ptr [rax + rax]
.label_852:
	cmp	rbx, r12
	jae	.label_858
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_868
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_851
	test	al, 2
	jne	.label_852
.label_868:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	jne	.label_867
	jmp	.label_851
.label_858:
	mov	ebp, r15d
.label_851:
	mov	eax, ebp
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
	#Procedure 0x40c570

	.globl num_processors
	.type num_processors, @function
num_processors:
	push	r14
	push	rbx
	push	rax
	mov	rbx, -1
	cmp	edi, 2
	jne	.label_870
	mov	edi, OFFSET FLAT:.str_6
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	mov	r14, rax
	mov	edi, OFFSET FLAT:.str.1_4
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	cmp	rax, 1
	sbb	rbx, rbx
	or	rbx, rax
	cmp	r14, rbx
	mov	rax, rbx
	cmovb	rax, r14
	mov	edi, 1
	test	r14, r14
	jne	.label_871
.label_870:
	call	num_processors_ignoring_omp
	cmp	rax, rbx
	cmovb	rbx, rax
	mov	rax, rbx
.label_871:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c5e0

	.globl parse_omp_threads
	.type parse_omp_threads, @function
parse_omp_threads:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_872
	mov	al, byte ptr [rbx]
	jmp	.label_877
	nop	word ptr [rax + rax]
.label_876:
	mov	al, byte ptr [rbx + 1]
	inc	rbx
.label_877:
	test	al, al
	je	.label_873
	movsx	edi, al
	call	c_isspace
	test	al, al
	jne	.label_876
.label_873:
	movsx	edi, byte ptr [rbx]
	call	c_isdigit
	xor	r14d, r14d
	test	al, al
	je	.label_872
	mov	qword ptr [rsp], 0
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rbx
	call	strtoul
	mov	r14, rax
	cmp	qword ptr [rsp], 0
	je	.label_880
	mov	rax, qword ptr [rsp]
	mov	al, byte ptr [rax]
	jmp	.label_874
.label_875:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp], rax
	mov	al, byte ptr [rcx + 1]
.label_874:
	test	al, al
	je	.label_879
	movsx	edi, al
	call	c_isspace
	mov	rcx, qword ptr [rsp]
	test	al, al
	jne	.label_875
	jmp	.label_878
.label_879:
	mov	rcx, qword ptr [rsp]
.label_878:
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x2c
	je	.label_872
	test	al, al
	je	.label_872
.label_880:
	xor	r14d, r14d
.label_872:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c690

	.globl num_processors_ignoring_omp
	.type num_processors_ignoring_omp, @function
num_processors_ignoring_omp:
	push	rax
	cmp	edi, 1
	jne	.label_883
	call	num_processors_via_affinity_mask
	test	rax, rax
	jne	.label_881
	mov	edi, 0x54
	call	sysconf
	test	rax, rax
	jg	.label_881
	jmp	.label_882
.label_883:
	mov	edi, 0x53
	call	sysconf
	mov	rcx, rax
	cmp	rcx, 1
	jne	.label_884
	call	num_processors_via_affinity_mask
	mov	rcx, rax
	mov	eax, 1
	test	rcx, rcx
	je	.label_881
.label_884:
	test	rcx, rcx
	mov	rax, rcx
	jg	.label_881
.label_882:
	mov	eax, 1
.label_881:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c6f0

	.globl num_processors_via_affinity_mask
	.type num_processors_via_affinity_mask, @function
num_processors_via_affinity_mask:
	sub	rsp, 0x88
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x80
	call	sched_getaffinity
	test	eax, eax
	jne	.label_885
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	call	__sched_cpucount
	test	eax, eax
	je	.label_885
	cdqe	
	add	rsp, 0x88
	ret	
.label_885:
	xor	eax, eax
	add	rsp, 0x88
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c740

	.globl physmem_total
	.type physmem_total, @function
physmem_total:
	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_888
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_887
.label_888:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_889
	movsd	xmm0,  qword ptr [word ptr [rip + label_886]]
	jmp	.label_887
.label_889:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_140]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_141]]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, xmm1
.label_887:
	add	rsp, 0x70
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c7c0

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x56
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_891
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_890
.label_891:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_892
	call	physmem_total
	mulsd	xmm0,  qword ptr [word ptr [rip + label_544]]
	jmp	.label_890
.label_892:
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_140]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_141]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movq	xmm0, qword ptr [rsp + 0x38]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm1, xmm3
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, xmm1
.label_890:
	add	rsp, 0x70
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c870

	.globl rpl_pipe2
	.type rpl_pipe2, @function
rpl_pipe2:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rdi
	mov	r14d, dword ptr [rbx]
	mov	r15d, dword ptr [rbx + 4]
	cmp	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  0
	js	.label_897
	mov	rdi, rbx
	mov	r12d, esi
	call	pipe2
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_896
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_896
	mov	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  0xffffffff
	mov	esi, r12d
.label_897:
	test	esi, 0xfff7f7ff
	je	.label_899
	call	__errno_location
	mov	dword ptr [rax], 0x16
	jmp	.label_893
.label_896:
	mov	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  1
	jmp	.label_894
.label_899:
	mov	r12d, esi
	mov	rdi, rbx
	call	pipe
	mov	ebp, 0xffffffff
	test	eax, eax
	js	.label_894
	mov	eax, r12d
	test	ah, 8
	je	.label_898
	mov	edi, dword ptr [rbx + 4]
	mov	esi, 3
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_895
	mov	edi, dword ptr [rbx + 4]
	or	ecx, 0x800
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_895
	mov	edi, dword ptr [rbx]
	mov	esi, 3
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_895
	mov	edi, dword ptr [rbx]
	or	ecx, 0x800
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_895
.label_898:
	xor	ebp, ebp
	test	r12d, 0x80000
	je	.label_894
	mov	edi, dword ptr [rbx + 4]
	mov	esi, 1
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_895
	mov	edi, dword ptr [rbx + 4]
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_895
	mov	edi, dword ptr [rbx]
	xor	ebp, ebp
	mov	esi, 1
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_895
	mov	edi, dword ptr [rbx]
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_894
.label_895:
	call	__errno_location
	mov	rbp, rax
	mov	r12d, dword ptr [rbp]
	mov	edi, dword ptr [rbx]
	call	close
	mov	edi, dword ptr [rbx + 4]
	call	close
	mov	dword ptr [rbx], r14d
	mov	dword ptr [rbx + 4], r15d
	mov	dword ptr [rbp], r12d
.label_893:
	mov	ebp, 0xffffffff
.label_894:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ca10

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:.str_7
	call	getenv
	mov	rcx, rax
	mov	eax, 0x31069
	test	rcx, rcx
	je	.label_900
	mov	eax, 0x31069
	cmp	byte ptr [rcx], 0
	je	.label_900
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rcx
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	je	.label_900
	mov	eax, 0x31069
.label_900:
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovl	ecx, eax
	cmp	rax, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, ecx
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ca70

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_902
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_903
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_903
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_901
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_901:
	mov	rbx, r14
.label_903:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_902:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_8
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cb20
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
	#Procedure 0x40cb60
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
	#Procedure 0x40cb70
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
	#Procedure 0x40cb80

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
	#Procedure 0x40cbc0
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
	#Procedure 0x40cbe0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_904
	test	rdx, rdx
	je	.label_904
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_904:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cc10
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
	.align	32
	#Procedure 0x40cc90

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
.label_970:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_1000
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_991]]
.label_1425:
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
.label_1426:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_987
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_987
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_917:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_905
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_905:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_917
.label_987:
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
	jmp	.label_929
.label_1418:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_929
.label_1421:
	mov	al, 1
.label_1419:
	mov	r15b, 1
.label_1422:
	test	r15b, 1
	mov	cl, 1
	je	.label_983
	mov	cl, al
.label_983:
	mov	al, cl
.label_1420:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_910
	test	r10, r10
	je	.label_955
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_956
.label_910:
	xor	ecx, ecx
	jmp	.label_956
.label_1423:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_959
	test	r10, r10
	je	.label_965
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_966
.label_1424:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_929
.label_955:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_956:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_929
.label_959:
	xor	eax, eax
	jmp	.label_966
.label_965:
	mov	eax, 1
.label_966:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_929:
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
	jmp	.label_944
	nop	dword ptr [rax + rax]
.label_974:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_944:
	cmp	rbp, -1
	je	.label_934
	cmp	rsi, rbp
	jne	.label_1010
	jmp	.label_938
	nop	dword ptr [rax]
.label_934:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_938
.label_1010:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_942
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_943
	cmp	rbp, -1
	jne	.label_943
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
.label_943:
	cmp	rbx, rbp
	jbe	.label_963
.label_942:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_999:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_969
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_972]]
.label_1435:
	test	rsi, rsi
	jne	.label_924
	jmp	.label_978
	nop	word ptr cs:[rax + rax]
.label_963:
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
	jne	.label_996
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_999
	jmp	.label_906
.label_996:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_999
.label_1439:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_1022
	test	rsi, rsi
	jne	.label_1025
	cmp	rbp, 1
	je	.label_978
	xor	r15d, r15d
	jmp	.label_921
.label_1428:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_981
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_906
	cmp	edi, 2
	jne	.label_912
	mov	al, r11b
	and	al, 1
	jne	.label_916
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_920
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_920:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1005
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_1005:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_935
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_935:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_973
.label_1429:
	mov	bl, 0x62
	jmp	.label_950
.label_1430:
	mov	cl, 0x74
	jmp	.label_948
.label_1431:
	mov	bl, 0x76
	jmp	.label_950
.label_1432:
	mov	bl, 0x66
	jmp	.label_950
.label_1433:
	mov	cl, 0x72
	jmp	.label_948
.label_1436:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_953
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_952
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
	jae	.label_961
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_961:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_979
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_979:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_985
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_985:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_994
.label_1437:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_998
	cmp	r14d, 2
	jne	.label_1001
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_952
.label_1001:
	mov	rdi, r14
	jmp	.label_924
.label_1438:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_1007
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_952
	mov	rdi, r14
	jmp	.label_1012
.label_969:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_1015
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
.label_919:
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
	ja	.label_908
	test	dl, dl
	je	.label_908
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_921
.label_1022:
	test	rsi, rsi
	jne	.label_931
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_931
.label_978:
	mov	dl, 1
.label_1434:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_906
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_921
.label_981:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_924
	mov	r14, rdi
	inc	rsi
	jmp	.label_944
.label_953:
	mov	rdi, r14
.label_994:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_921
.label_1007:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_948
.label_1012:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_951
.label_948:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_906
.label_950:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_921
	jmp	.label_962
.label_1015:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_964
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_964:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_1018:
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
	je	.label_990
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_995
	cmp	rbp, -2
	je	.label_1004
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_1006
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_1023:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1017
	bt	rsi, rdx
	jb	.label_1021
.label_1017:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_1023
.label_1006:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_918
	xor	r15d, r15d
.label_918:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_1018
	jmp	.label_919
.label_931:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_921
.label_998:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_924
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_924
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_924
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_937
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_940
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_906
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_947
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_947:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1011
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_1011:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_960
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_960:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_1009
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_1009:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_921
.label_924:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_921:
	test	r12b, r12b
	je	.label_936
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_982
	jmp	.label_927
	nop	word ptr cs:[rax + rax]
.label_936:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_927
.label_982:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_992
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_951
	jmp	.label_962
	nop	word ptr cs:[rax + rax]
.label_927:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_962
	jmp	.label_951
.label_992:
	mov	bl, r13b
	mov	rsi, r14
.label_962:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_906
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_1019
	mov	al, r11b
	and	al, 1
	jne	.label_1019
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1024
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_1024:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1016
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_1016:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_913
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_913:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_1019:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_925
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_925:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_933
.label_1025:
	xor	r15d, r15d
	jmp	.label_921
.label_908:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_939
	nop	word ptr cs:[rax + rax]
.label_941:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_939:
	test	dl, dl
	je	.label_1003
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_958
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_914
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_914:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_958
	nop	word ptr [rax + rax]
.label_1003:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_952
	cmp	r14d, 2
	jne	.label_946
	mov	al, r11b
	and	al, 1
	jne	.label_946
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_975
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_975:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_980
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_980:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1008
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_1008:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_946:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1013
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_1013:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_986
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_986:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1014
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_1014:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_958:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_951
	test	r11b, 1
	je	.label_909
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_911
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_945
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_945:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_989
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_989:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_911
	nop	word ptr cs:[rax + rax]
.label_909:
	mov	r14, rdi
.label_911:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_941
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_941
.label_951:
	test	r11b, 1
	je	.label_949
	and	al, 1
	jne	.label_949
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1026
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_1026:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_957
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_957:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_933
	nop	dword ptr [rax + rax]
.label_949:
	mov	bl, r13b
	mov	r14, rdi
.label_933:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_974
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_974
.label_912:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_973
.label_916:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_973:
	cmp	rcx, r10
	jae	.label_984
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_984:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_988
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_954
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_976
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_967
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_967:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_971
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_971:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_921
.label_988:
	xor	r15d, r15d
	jmp	.label_921
.label_954:
	xor	r15d, r15d
	jmp	.label_921
.label_976:
	xor	r15d, r15d
	jmp	.label_921
.label_990:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_930
.label_995:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_907
.label_1004:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_915
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_926:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_923
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_926
	xor	r15d, r15d
	jmp	.label_930
.label_915:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_907:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_930:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_919
.label_923:
	xor	r15d, r15d
	jmp	.label_930
.label_937:
	xor	r15d, r15d
	jmp	.label_921
.label_940:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_921
	nop	dword ptr [rax + rax]
.label_938:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_1020
	or	dl, al
	je	.label_952
.label_1020:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_932
	or	dl, al
	jne	.label_932
	test	r8b, 1
	jne	.label_968
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_932
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_970
.label_932:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_977
	test	cl, cl
	jne	.label_977
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_977
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_993:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1002
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_1002:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_993
.label_977:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_997
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_997
.label_906:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_922:
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
.label_928:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_997:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1021:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_922
.label_952:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_922
.label_968:
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
	jmp	.label_928
.label_1000:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dea0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40deb0

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
	je	.label_1027
	mov	qword ptr [rax], rbx
.label_1027:
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
	#Procedure 0x40dfb0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1028
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1030:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1030
.label_1028:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1031
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_1032]], OFFSET FLAT:slot0
.label_1031:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1029
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1029:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e050

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e060

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
	js	.label_1033
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_1036
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1039
.label_1036:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_1035
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
	jne	.label_1034
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_1034:
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
.label_1039:
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
	ja	.label_1038
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_1037
	mov	rdi, rbx
	call	free
.label_1037:
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
.label_1038:
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
.label_1033:
	call	abort
.label_1035:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e230

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e240
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e250
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
	.align	32
	#Procedure 0x40e260

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
	.align	32
	#Procedure 0x40e2a0

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
	je	.label_1040
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
.label_1040:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e300

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
	.align	32
	#Procedure 0x40e340

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
	.align	32
	#Procedure 0x40e360
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
	.align	32
	#Procedure 0x40e380

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
	mov	rcx,  qword ptr [word ptr [rip + label_1041]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1042]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1043]]
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
	.align	32
	#Procedure 0x40e3f0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e400

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e410
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e420

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
	.align	32
	#Procedure 0x40e470

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e480

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
	mov	rax,  qword ptr [word ptr [rip + label_1041]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1042]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1043]]
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
	.align	32
	#Procedure 0x40e4f0
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
	.align	32
	#Procedure 0x40e510
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
	.align	32
	#Procedure 0x40e530

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e540
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
	.align	32
	#Procedure 0x40e550

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e560

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e570

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
	jne	.label_1045
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
	je	.label_1044
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_1045
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_1045
.label_1044:
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
	je	.label_1046
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_1045
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_1045
.label_1046:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_1045:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e650

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
	je	.label_1048
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1049
	jmp	.label_1047
.label_1048:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_1047
.label_1049:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1047
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
.label_1047:
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
	.align	32
	#Procedure 0x40e6e0

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
	je	.label_1052
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1050
	jmp	.label_1051
.label_1052:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_1051
.label_1050:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1051
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
.label_1051:
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
	.align	32
	#Procedure 0x40e770

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
	je	.label_1053
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1055
	jmp	.label_1054
.label_1053:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_1054
.label_1055:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1054
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
.label_1054:
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
	.align	32
	#Procedure 0x40e7f0

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
	je	.label_1058
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1057
	jmp	.label_1056
.label_1058:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_1056
.label_1057:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1056
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
.label_1056:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e860

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
	je	.label_1061
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1059
	jmp	.label_1060
.label_1061:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_1060
.label_1059:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1060
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_1060:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e8d0

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
	je	.label_1063
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1064
	jmp	.label_1062
.label_1063:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_1062
.label_1064:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1062
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_1062:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e920

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
	je	.label_1067
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1066
	jmp	.label_1065
.label_1067:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_1065
.label_1066:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1065
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_1065:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e970

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_1070
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_1069
	jmp	.label_1068
.label_1070:
	mov	eax, 1
	test	cl, cl
	je	.label_1068
.label_1069:
	xor	eax, eax
.label_1068:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e9a0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	test	r15, r15
	je	.label_1071
	test	rbx, rbx
	je	.label_1073
	mov	esi, OFFSET FLAT:.str_9
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_1072
	mov	rdi, r12
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	cmp	r15, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rdi, r12
	call	setvbuf
	jmp	.label_1072
.label_1071:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_1073:
	xor	edi, edi
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	call	get_nonce
	mov	rdi, rbx
	call	isaac_seed
.label_1072:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ea50

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x1038
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ea80

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:.str.3_2
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1074
	cmp	rbx, 0x800
	mov	edx, 0x800
	cmovbe	rdx, rbx
	mov	edi, ebp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	mov	edi, ebp
	call	close
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_1074
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_1075
.label_1074:
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	xor	esi, esi
	mov	rdi, rbp
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_1075
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_1075
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rsi, [rsp + 8]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_1075
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getuid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_1075
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp + 8], eax
	add	r14, r15
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	mov	rdx, rbx
	call	memcpy
.label_1075:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ec20
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec30
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec40

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_1076
	jmp	readsource
.label_1076:
	add	rdi, 0x18
	jmp	readisaac
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ec60

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	call	fread_unlocked
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	cmp	rbx, r13
	je	.label_1078
	nop	word ptr cs:[rax + rax]
.label_1077:
	sub	r13, rbx
	add	r14, rbx
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r13
	call	fread_unlocked
	mov	rbx, rax
	cmp	r13, rbx
	jne	.label_1077
.label_1078:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ecf0

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_1081
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_1082:
	cmp	r15, 0x800
	jb	.label_1079
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_1082
	jmp	.label_1080
.label_1079:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_1081:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_1080:
	mov	qword ptr [r14], r12
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
	.align	32
	#Procedure 0x40eda0

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_1083
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_1083:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ede0

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1084
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_1086
	mov	esi, OFFSET FLAT:.str.1_6
	jmp	.label_1085
.label_1086:
	mov	esi, OFFSET FLAT:.str.2_3
.label_1085:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_1084:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ee40

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rax, [r14 + 0x400]
	mov	qword ptr [rsp], rax
	mov	rbp, rsi
	mov	r15, r14
	nop	dword ptr [rax]
.label_1088:
	mov	qword ptr [rsp + 0x10], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r15 + 0x400]
	mov	rbx, qword ptr [r15]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rdi, r13
	call	just
	mov	rbp, rax
	shr	rbp, 5
	xor	rbp, r13
	add	rbp, qword ptr [r15 + 0x408]
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r15 + 8], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r15 + 0x410]
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r15 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r15 + 0x418]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rcx, qword ptr [rsp]
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r15, 0x20
	add	rbp, 0x20
	cmp	r15, rcx
	jb	.label_1088
	add	qword ptr [rsp + 8], 0x400
	lea	rax, [r14 + 0x800]
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_1087:
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [rcx - 0x400]
	mov	rbx, qword ptr [rcx]
	mov	rdi, r14
	mov	rsi, rbx
	mov	r15, rcx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	rdi, r13
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r13
	add	rbx, qword ptr [r15 - 0x3f8]
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbp, rax
	mov	r13, qword ptr [rsp + 8]
	mov	qword ptr [r13 + 8], rbp
	mov	r12, rbx
	shl	r12, 0xc
	xor	r12, rbx
	add	r12, qword ptr [r15 - 0x3f0]
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r12
	add	rbp, rax
	mov	qword ptr [r15 + 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r13 + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r15 - 0x3e8]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rcx, r15
	mov	r12, rax
	mov	rax, r13
	mov	qword ptr [rax + 0x18], r12
	add	rcx, 0x20
	add	rax, 0x20
	mov	qword ptr [rsp + 8], rax
	cmp	rcx, qword ptr [rsp + 0x10]
	jb	.label_1087
	mov	qword ptr [r14 + 0x800], rbx
	mov	qword ptr [r14 + 0x808], r12
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
	.align	32
	#Procedure 0x40f1a0

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f1b0

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f1c0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x20], rdi
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1090:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x28], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x10]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp]
	add	rbx, r13
	mov	qword ptr [rsp + 0x10], rbx
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	add	r13, rdi
	mov	qword ptr [rsp + 8], r13
	mov	r13, qword ptr [rsp + 0x28]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 8]
	add	rax, r12
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_1090
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1089:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 0x28]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp + 0x30]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 0x28]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_1089
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f500

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	add	rbx, 0xc8
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	mov	rdi, rbx
	pop	rbx
	jmp	_obstack_begin
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f570
	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:

	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xor	esi, esi
	call	_obstack_free
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	call	_obstack_free
	add	rbx, 0xc8
	xor	esi, esi
	mov	rdi, rbx
	pop	rbx
	jmp	_obstack_free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f5a0

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_1099
	lea	r15, [rbx + 0x18]
	nop	dword ptr [rax]
.label_1101:
	mov	rax, qword ptr [rbx + 0x38]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1091
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
.label_1091:
	mov	rax, qword ptr [rbx + 0x30]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x30], rcx
	mov	byte ptr [rax], bpl
	test	ebp, ebp
	jne	.label_1096
	mov	rdi, rbx
	call	save_token
.label_1096:
	mov	rdi, r14
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_1101
.label_1099:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x28]
	je	.label_1092
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_1095
	lea	rdi, [rbx + 0x18]
	mov	esi, 1
	call	_obstack_newchunk
.label_1095:
	mov	rax, qword ptr [rbx + 0x30]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x30], rcx
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	call	save_token
.label_1092:
	mov	rax, qword ptr [rbx + 0x90]
	sub	rax, qword ptr [rbx + 0x88]
	cmp	rax, 7
	ja	.label_1100
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
.label_1100:
	mov	rax, qword ptr [rbx + 0x88]
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [rbx + 0x88]
	add	rcx, 8
	mov	qword ptr [rbx + 0x88], rcx
	mov	rax, qword ptr [rbx + 0x80]
	cmp	rcx, rax
	jne	.label_1097
	or	byte ptr [rbx + 0xc0], 2
.label_1097:
	mov	rdx, qword ptr [rbx + 0xa0]
	mov	rcx, qword ptr [rbx + 0x88]
	add	rcx, rdx
	not	rdx
	and	rdx, rcx
	mov	qword ptr [rbx + 0x88], rdx
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rdx, rsi
	mov	rdi, rcx
	sub	rdi, rsi
	cmp	rdx, rdi
	jbe	.label_1093
	mov	qword ptr [rbx + 0x88], rcx
.label_1093:
	mov	rcx, qword ptr [rbx + 0x88]
	mov	qword ptr [rbx + 0x80], rcx
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0xd8]
	cmp	qword ptr [rbx + 0xe0], rax
	jne	.label_1094
	or	byte ptr [rbx + 0x118], 2
.label_1094:
	mov	rdx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rbx + 0xe0]
	add	rcx, rdx
	not	rdx
	and	rdx, rcx
	mov	qword ptr [rbx + 0xe0], rdx
	mov	rsi, qword ptr [rbx + 0xd0]
	mov	rcx, qword ptr [rbx + 0xe8]
	sub	rdx, rsi
	mov	rdi, rcx
	sub	rdi, rsi
	cmp	rdx, rdi
	jbe	.label_1098
	mov	qword ptr [rbx + 0xe0], rcx
.label_1098:
	mov	rcx, qword ptr [rbx + 0xe0]
	mov	qword ptr [rbx + 0xd8], rcx
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	call	ferror
	test	eax, eax
	sete	al
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f760

	.globl save_token
	.type save_token, @function
save_token:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x28]
	mov	r14, qword ptr [rbx + 0x30]
	cmp	r14, r15
	jne	.label_1102
	or	byte ptr [rbx + 0x68], 2
.label_1102:
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0x30]
	add	rax, rcx
	not	rcx
	and	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rax, qword ptr [rbx + 0x38]
	sub	rcx, rdx
	mov	rsi, rax
	sub	rsi, rdx
	cmp	rcx, rsi
	jbe	.label_1104
	mov	qword ptr [rbx + 0x30], rax
.label_1104:
	dec	r14
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 0x90]
	sub	rax, qword ptr [rbx + 0x88]
	cmp	rax, 7
	ja	.label_1103
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
.label_1103:
	mov	rax, qword ptr [rbx + 0x88]
	mov	qword ptr [rax], r15
	add	qword ptr [rbx + 0x88], 8
	sub	r14, r15
	mov	rax, qword ptr [rbx + 0xe8]
	sub	rax, qword ptr [rbx + 0xe0]
	cmp	rax, 7
	ja	.label_1105
	lea	rdi, [rbx + 0xc8]
	mov	esi, 8
	call	_obstack_newchunk
.label_1105:
	mov	rax, qword ptr [rbx + 0xe0]
	mov	qword ptr [rax], r14
	add	qword ptr [rbx + 0xe0], 8
	inc	qword ptr [rbx]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f830
	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:

	push	rax
	call	mkstemp
	mov	edi, eax
	pop	rax
	jmp	fd_safer
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f840

	.globl mkostemp_safer
	.type mkostemp_safer, @function
mkostemp_safer:
	push	rbx
	mov	ebx, esi
	call	mkostemp
	mov	edi, eax
	mov	esi, ebx
	pop	rbx
	jmp	fd_safer_flag
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f860

	.globl strnumcmp
	.type strnumcmp, @function
strnumcmp:
	jmp	numcompare_0
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f870

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
	jne	.label_1148
	inc	r8
	nop	
.label_1129:
	movzx	r9d, byte ptr [r8]
	inc	r8
	cmp	r9d, 0x30
	je	.label_1129
	cmp	r9d, ecx
	je	.label_1129
	movzx	r11d, r10b
	cmp	r11d, 0x2d
	jne	.label_1134
	dec	r8
	nop	word ptr cs:[rax + rax]
.label_1138:
	movzx	edi, byte ptr [rsi + 1]
	inc	rsi
	cmp	edi, 0x30
	je	.label_1138
	cmp	edi, ecx
	je	.label_1138
	lea	eax, [r9 - 0x30]
	cmp	eax, 0xa
	setb	r10b
	movzx	ebp, r9b
	movzx	ebx, dil
	cmp	ebx, ebp
	jne	.label_1142
	cmp	eax, 0xa
	jae	.label_1142
	nop	word ptr cs:[rax + rax]
.label_1107:
	mov	al, byte ptr [r8 + 1]
	inc	r8
	movzx	r9d, al
	cmp	r9d, ecx
	je	.label_1107
.label_1109:
	movzx	edi, byte ptr [rsi + 1]
	inc	rsi
	cmp	edi, ecx
	je	.label_1109
	lea	ebp, [r9 - 0x30]
	cmp	ebp, 0xa
	setb	r10b
	movzx	ebx, dil
	cmp	ebx, r9d
	jne	.label_1112
	cmp	ebp, 9
	jbe	.label_1107
	jmp	.label_1112
.label_1148:
	movzx	eax, r10b
	cmp	eax, 0x2d
	jne	.label_1119
	inc	rsi
	nop	dword ptr [rax]
.label_1120:
	movzx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1120
	cmp	eax, ecx
	je	.label_1120
	cmp	eax, edx
	jne	.label_1122
	nop	word ptr cs:[rax + rax]
.label_1149:
	movzx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1149
.label_1122:
	movzx	esi, al
	add	esi, -0x30
	mov	eax, 1
	cmp	esi, 0xa
	jb	.label_1108
	movzx	eax, r9b
	cmp	eax, 0x30
	jne	.label_1128
	jmp	.label_1131
.label_1134:
	cmp	r9d, edx
	jne	.label_1133
	nop	word ptr cs:[rax + rax]
.label_1124:
	movzx	r9d, byte ptr [r8]
	inc	r8
	cmp	r9d, 0x30
	je	.label_1124
.label_1133:
	movzx	ebp, r9b
	add	ebp, -0x30
	mov	eax, 0xffffffff
	cmp	ebp, 0xa
	jb	.label_1108
	cmp	r11d, 0x30
	je	.label_1110
	cmp	edi, ecx
	jne	.label_1144
	nop	dword ptr [rax]
.label_1110:
	movzx	edi, byte ptr [rsi + 1]
	inc	rsi
	cmp	edi, 0x30
	je	.label_1110
	cmp	edi, ecx
	mov	r10b, dil
	je	.label_1110
.label_1144:
	cmp	edi, edx
	jne	.label_1150
	inc	rsi
	nop	word ptr [rax + rax]
.label_1143:
	movzx	r10d, byte ptr [rsi]
	inc	rsi
	cmp	r10d, 0x30
	je	.label_1143
.label_1150:
	movzx	eax, r10b
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	jmp	.label_1108
.label_1119:
	movzx	ebp, r9b
	cmp	ebp, 0x30
	jne	.label_1113
	jmp	.label_1115
.label_1142:
	mov	al, r9b
.label_1112:
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
	jne	.label_1116
	or	r14b, bpl
	je	.label_1116
	movzx	eax, al
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_1152
	nop	dword ptr [rax]
.label_1125:
	movzx	eax, byte ptr [r8 + 1]
	inc	r8
	cmp	eax, ecx
	je	.label_1125
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_1125
.label_1152:
	xor	eax, eax
	jmp	.label_1127
	nop	dword ptr [rax + rax]
.label_1135:
	inc	rax
	add	edi, -0x30
.label_1127:
	cmp	edi, 0xa
	jae	.label_1130
	nop	dword ptr [rax + rax]
.label_1132:
	movzx	edi, byte ptr [rsi + 1]
	inc	rsi
	cmp	edi, ecx
	je	.label_1132
	jmp	.label_1135
.label_1116:
	movsx	edx, dl
	mov	rdi, rsi
	mov	rsi, r8
	jmp	.label_1136
.label_1130:
	cmp	rdx, rax
	jne	.label_1137
	sub	r11d, r9d
	xor	eax, eax
	test	rdx, rdx
	cmovne	eax, r11d
	jmp	.label_1108
.label_1137:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	jmp	.label_1108
.label_1128:
	cmp	r9d, ecx
	jne	.label_1147
.label_1131:
	movzx	r9d, byte ptr [r8 + 1]
	inc	r8
	cmp	r9d, 0x30
	jne	.label_1128
	jmp	.label_1131
.label_1147:
	cmp	r9d, edx
	jne	.label_1151
	inc	r8
.label_1145:
	movzx	r9d, byte ptr [r8]
	inc	r8
	cmp	r9d, 0x30
	je	.label_1145
.label_1151:
	movzx	eax, r9b
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	jmp	.label_1108
.label_1113:
	cmp	r9d, ecx
	jne	.label_1114
.label_1115:
	movzx	r9d, byte ptr [r8 + 1]
	inc	r8
	cmp	r9d, 0x30
	jne	.label_1113
	jmp	.label_1115
.label_1114:
	cmp	eax, 0x30
	je	.label_1117
	cmp	edi, ecx
	jne	.label_1118
	nop	
.label_1117:
	movzx	r10d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r10d, 0x30
	je	.label_1117
	cmp	r10d, ecx
	je	.label_1117
.label_1118:
	movzx	edi, r9b
	lea	ebp, [rdi - 0x30]
	cmp	ebp, 0xa
	setb	al
	movzx	ebx, r10b
	cmp	edi, ebx
	jne	.label_1121
	cmp	ebp, 0xa
	jae	.label_1121
	nop	dword ptr [rax]
.label_1123:
	mov	r9b, byte ptr [r8 + 1]
	inc	r8
	movzx	edi, r9b
	cmp	edi, ecx
	je	.label_1123
	nop	
.label_1126:
	movzx	r10d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r10d, ecx
	je	.label_1126
	lea	ebp, [rdi - 0x30]
	cmp	ebp, 0xa
	setb	al
	movzx	ebx, r10b
	cmp	edi, ebx
	jne	.label_1121
	cmp	ebp, 9
	jbe	.label_1123
.label_1121:
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
	jne	.label_1139
	or	r14b, bpl
	je	.label_1139
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_1141
	nop	dword ptr [rax]
.label_1146:
	movzx	eax, byte ptr [r8 + 1]
	inc	r8
	cmp	eax, ecx
	je	.label_1146
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_1146
.label_1141:
	xor	eax, eax
	cmp	r11d, 0xa
	jae	.label_1140
	nop	
.label_1106:
	movzx	ebx, byte ptr [rsi + 1]
	inc	rsi
	cmp	ebx, ecx
	je	.label_1106
	inc	rax
	add	ebx, -0x30
	cmp	ebx, 0xa
	jb	.label_1106
.label_1140:
	cmp	rdx, rax
	jne	.label_1111
	sub	edi, r10d
	xor	eax, eax
	test	rdx, rdx
	cmovne	eax, edi
	jmp	.label_1108
.label_1139:
	movsx	edx, dl
	mov	rdi, r8
.label_1136:
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fraccompare
.label_1111:
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
	#Procedure 0x40fc50

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
.label_1155:
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
	jb	.label_1155
	jmp	.label_1156
.label_1159:
	movzx	eax, byte ptr [rdi]
	cmp	eax, ecx
	jne	.label_1160
	inc	rdi
	nop	dword ptr [rax + rax]
.label_1153:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_1153
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_1160:
	xor	eax, eax
	movzx	edx, byte ptr [rsi]
	cmp	edx, ecx
	jne	.label_1156
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_1158:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1158
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
.label_1156:
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
	jb	.label_1153
	xor	eax, eax
	cmp	r8d, 0xa
	jb	.label_1158
	jmp	.label_1156
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fd10

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
	ja	.label_1161
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
	jmp	.label_1162
.label_1161:
	mov	eax, ebx
.label_1162:
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
	#Procedure 0x40fd60

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
	je	.label_1168
	mov	edx, OFFSET FLAT:.str_10
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1167
.label_1168:
	mov	edx, OFFSET FLAT:.str.1_7
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1167:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
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
	mov	esi, OFFSET FLAT:.str.3_3
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1172
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1163]]
.label_1492:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_1172:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_1171
.label_1493:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
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
.label_1494:
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
.label_1495:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_1170
.label_1496:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_1169
.label_1497:
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
	jmp	.label_1166
.label_1498:
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
.label_1166:
	mov	qword ptr [rsp + 0x10], rdi
.label_1169:
	mov	qword ptr [rsp + 8], rsi
.label_1170:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_1164
.label_1500:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_1171:
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
	jmp	.label_1165
.label_1499:
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
.label_1533:
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rax
.label_1165:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_1164:
	call	__fprintf_chk
.label_1491:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410050
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1173:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1173
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410080

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_1175:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1174
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_1176
	nop	dword ptr [rax]
.label_1174:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1176:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_1177
	inc	r9
	cmp	r9, 0xa
	jb	.label_1175
.label_1177:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4100e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_1178
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1178:
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
	.align	32
	#Procedure 0x410170
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
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
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18_0
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
	#Procedure 0x4101f0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1179
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_1179:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410220

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1180
	test	rax, rax
	je	.label_1181
.label_1180:
	pop	rbx
	ret	
.label_1181:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410240
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_1182
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_1182:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410270

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1183
	test	rbx, rbx
	jne	.label_1183
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1183:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1185
	test	rax, rax
	je	.label_1184
.label_1185:
	pop	rbx
	ret	
.label_1184:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4102a0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1186
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_1189
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1187
.label_1186:
	test	rcx, rcx
	jne	.label_1190
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_1190:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_1188
.label_1187:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_1189:
	call	xalloc_die
.label_1188:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410320

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410330
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410340
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
	.align	32
	#Procedure 0x410370

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1191
	call	rpl_calloc
	test	rax, rax
	je	.label_1191
	pop	rcx
	ret	
.label_1191:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4103a0

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
	.align	32
	#Procedure 0x4103d0
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
	.align	32
	#Procedure 0x4103f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x410420
	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_1192
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_1192:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410470

	.globl collate_error
	.type collate_error, @function
collate_error:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	ebp, edi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_11
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_5
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r13
	mov	rcx, r12
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp]
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r14d
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410540

	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	call	memcoll0
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_1193
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_1193:
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
	#Procedure 0x410590

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	call	dtotimespec
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdx
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	lea	rdi, [rsp]
	xor	esi, esi
	call	rpl_nanosleep
	test	eax, eax
	je	.label_1194
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_1195:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_1194
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	test	eax, eax
	jne	.label_1195
.label_1194:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410610

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_1201
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1216:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1216
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_1215
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoul
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_1203
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_1205
	cmp	eax, 0x22
	jne	.label_1215
	mov	r12d, 1
.label_1205:
	test	rbp, rbp
	jne	.label_1210
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_1212
.label_1203:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_1215
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_1215
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_1215
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_1210:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_1202
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_1199
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_1207
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_1213
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_1198
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_1196
	cmp	ecx, 0x44
	je	.label_1196
	cmp	ecx, 0x69
	jne	.label_1198
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_1198
	mov	r14d, 1
	jmp	.label_1198
.label_1196:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_1198:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_1209
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_1211
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1219]]
.label_1340:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_1214
.label_1209:
	cmp	eax, 0x73
	jg	.label_1217
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_1218
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1208]]
.label_1372:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_1214
.label_1211:
	cmp	eax, 0x54
	je	.label_1197
	cmp	eax, 0x59
	jne	.label_1199
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_1200
.label_1217:
	cmp	eax, 0x74
	je	.label_1197
	cmp	eax, 0x77
	jne	.label_1199
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_1214:
	call	bkm_scale
	jmp	.label_1204
.label_1342:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_1200
.label_1343:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_1200
.label_1344:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_1200
.label_1197:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_1200
.label_1218:
	cmp	eax, 0x5a
	jne	.label_1199
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_1200
.label_1199:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_1220
.label_1341:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_1200
.label_1345:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_1200:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_1204:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_1206
	or	eax, 2
.label_1206:
	mov	r12d, eax
.label_1202:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_1212:
	mov	qword ptr [rcx], rax
.label_1220:
	mov	r15d, r12d
.label_1215:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1207:
	mov	rbx, r13
	jmp	.label_1198
.label_1213:
	mov	rbx, r13
	jmp	.label_1198
.label_1201:
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410920

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410950

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_1221
	nop	word ptr cs:[rax + rax]
.label_1222:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebx, eax
	dec	ebp
	jne	.label_1222
.label_1221:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410990

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rax
	mov	r9d,  dword ptr [dword ptr [rip + exit_failure]]
	call	xstrtol_error
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4109b0

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, r9d
	mov	r14, r8
	mov	eax, esi
	dec	edi
	cmp	edi, 4
	jae	.label_1223
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_1224]]
	cdqe	
	test	eax, eax
	js	.label_1225
	shl	rax, 5
	mov	rbx, qword ptr [rcx + rax]
	mov	ebp, OFFSET FLAT:.str_13
	jmp	.label_1226
.label_1225:
	lea	rbx, [rsp + 6]
	mov	ebp, OFFSET FLAT:.str_13
	sub	rbp, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
.label_1226:
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r15d
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, rbx
	mov	r9, r14
	call	error
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1223:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410a40

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_1241
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1231:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1231
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_1230
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoumax
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_1243
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_1245
	cmp	eax, 0x22
	jne	.label_1230
	mov	r12d, 1
.label_1245:
	test	rbp, rbp
	jne	.label_1249
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_1251
.label_1243:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_1230
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_1230
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_1230
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_1249:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_1242
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_1236
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_1247
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_1227
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_1234
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_1239
	cmp	ecx, 0x44
	je	.label_1239
	cmp	ecx, 0x69
	jne	.label_1234
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_1234
	mov	r14d, 1
	jmp	.label_1234
.label_1239:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_1234:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_1248
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_1250
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1232]]
.label_1474:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_1229
.label_1248:
	cmp	eax, 0x73
	jg	.label_1233
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_1235
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1244]]
.label_1366:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_1229
.label_1250:
	cmp	eax, 0x54
	je	.label_1240
	cmp	eax, 0x59
	jne	.label_1236
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_1228
.label_1233:
	cmp	eax, 0x74
	je	.label_1240
	cmp	eax, 0x77
	jne	.label_1236
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_1229:
	call	bkm_scale_0
	jmp	.label_1237
.label_1367:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_1228
.label_1368:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_1228
.label_1369:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_1228
.label_1240:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_1228
.label_1235:
	cmp	eax, 0x5a
	jne	.label_1236
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_1228
.label_1236:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_1238
.label_1475:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_1228
.label_1476:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_1228:
	mov	esi, r15d
	call	bkm_scale_by_power_0
.label_1237:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_1246
	or	eax, 2
.label_1246:
	mov	r12d, eax
.label_1242:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_1251:
	mov	qword ptr [rcx], rax
.label_1238:
	mov	r15d, r12d
.label_1230:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1247:
	mov	rbx, r13
	jmp	.label_1234
.label_1227:
	mov	rbx, r13
	jmp	.label_1234
.label_1241:
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410d50

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410d80

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_1252
	nop	word ptr cs:[rax + rax]
.label_1253:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	or	ebx, eax
	dec	ebp
	jne	.label_1253
.label_1252:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410dc0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1254
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1255
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1255
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1254:
	mov	ecx, 1
.label_1255:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410e10

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x410e20

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1256
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1258
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1256
.label_1258:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1256
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1257
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1257:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1256:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410ea0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_1267
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1267:
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
	ja	.label_1264
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1263
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1270
	test	esi, esi
	jne	.label_1264
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1272
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1271
.label_1264:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1268
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1270
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1260
.label_1263:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_1270:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1265
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1261
.label_1265:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1261:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_1260:
	cmp	eax, 6
	jne	.label_1268
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1269
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1259
.label_1268:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1262
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1266
.label_1272:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1271:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_1269:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1259:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_1262:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1266:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4110b0

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
	.align	32
	#Procedure 0x4110c0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1273
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_1275
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1275
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1276
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_1277
.label_1275:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1277
.label_1273:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_1277:
	test	ebx, ebx
	js	.label_1276
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1276
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1274
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1276
.label_1274:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_1276:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411190

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1278
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1278
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_1278:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4111c0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_1279
	ret	
.label_1279:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4111e0

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
	jne	.label_1280
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1280
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1281
.label_1280:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1281:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1282
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1282:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x411250

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
	je	.label_1283
	cmp	r15, -2
	jb	.label_1283
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1283
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1283:
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
	#Procedure 0x4112b0

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	cmp	qword ptr [rdi + 8], 0x3b9aca00
	jb	.label_1284
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_1286
.label_1284:
	mov	rbx, qword ptr [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_1287:
	mov	qword ptr [rsp + 8], rcx
	cmp	rbx, 0x1fa401
	jl	.label_1285
	mov	qword ptr [rsp], 0x1fa400
	mov	rdi, r14
	mov	rsi, r15
	call	nanosleep
	add	rbx, -0x1fa400
	test	eax, eax
	mov	ecx, 0
	je	.label_1287
	test	r15, r15
	je	.label_1286
	add	qword ptr [r15], rbx
	jmp	.label_1286
.label_1285:
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	call	nanosleep
.label_1286:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x411350

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
	#Procedure 0x411370

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	and	byte ptr [rdi + 0x50], 0xfe
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411390

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	rdx, rdx
	mov	ebx, 0x10
	cmovne	rbx, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	mov	qword ptr [r14], rax
	lea	r15, [rbx - 1]
	mov	qword ptr [r14 + 0x30], r15
	mov	rsi, rax
	call	call_chunkfun
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_1288
	lea	rcx, [rax + r15 + 0x10]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [r14 + 0x50], 0xf9
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1288:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411410

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	mov	qword ptr [rdi + 0x48], r9
	or	byte ptr [rdi + 0x50], 1
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411430

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdi
	mov	rcx, qword ptr [r13]
	mov	r14, qword ptr [r13 + 0x18]
	sub	r14, qword ptr [r13 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r13 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_1289
	test	al, al
	jne	.label_1289
	mov	r15, qword ptr [r13 + 8]
	mov	rdi, r13
	mov	rsi, rbx
	call	call_chunkfun
	mov	r12, rax
	test	r12, r12
	je	.label_1289
	mov	qword ptr [r13 + 8], r12
	mov	qword ptr [r12 + 8], r15
	add	rbx, r12
	mov	qword ptr [r13 + 0x20], rbx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rbx, qword ptr [r13 + 0x30]
	lea	rax, [r12 + rbx + 0x10]
	not	rbx
	and	rbx, rax
	mov	rdi, rbx
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r13 + 0x50], 2
	jne	.label_1290
	mov	rax, qword ptr [r13 + 0x30]
	lea	rcx, [r15 + rax + 0x10]
	not	rax
	and	rax, rcx
	cmp	qword ptr [r13 + 0x10], rax
	jne	.label_1290
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r12 + 8], rax
	mov	rdi, r13
	mov	rsi, r15
	call	call_freefun
.label_1290:
	mov	qword ptr [r13 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r13 + 0x18], r14
	and	byte ptr [r13 + 0x50], 0xfd
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_1289:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411520

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_1291
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x38]
.label_1291:
	mov	rcx, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411540

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_1292
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x40]
.label_1292:
	mov	rcx, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411560

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
	je	.label_1294
	cmp	rcx, rsi
	jae	.label_1296
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_1296
	jmp	.label_1295
.label_1294:
	xor	eax, eax
.label_1295:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411590

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 8]
	test	rsi, rsi
	je	.label_1297
	nop	word ptr cs:[rax + rax]
.label_1300:
	cmp	rsi, r14
	jae	.label_1298
	cmp	qword ptr [rsi], r14
	jae	.label_1301
.label_1298:
	mov	rbx, qword ptr [rsi + 8]
	mov	rdi, r15
	call	call_freefun
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_1300
.label_1297:
	test	r14, r14
	je	.label_1299
	call	abort
.label_1301:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_1299:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411600

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_1302
	nop	dword ptr [rax + rax]
.label_1303:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
.label_1302:
	test	rcx, rcx
	jne	.label_1303
	ret	
	.section	.text
	.align	32
	#Procedure 0x411620

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411660
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411670
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411680
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411690
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4116a0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4116b0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4116c0
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4116e0
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411700
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411720
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411740

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
	#Procedure 0x411770

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
	#Procedure 0x411790
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4117a0
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
	#Procedure 0x4117b0
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
	#Procedure 0x4117d0

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
	#Procedure 0x4117e0
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
	#Procedure 0x4117f0
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
	#Procedure 0x411800
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
	#Procedure 0x411810
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
	#Procedure 0x411840

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
	#Procedure 0x411860

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
	#Procedure 0x411870
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
	#Procedure 0x411890
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
	#Procedure 0x4118a0
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
	#Procedure 0x4118b0

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
	je	.label_1314
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1313
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_1313
.label_1314:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1313
	test	cl, cl
	jne	.label_1313
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_1313:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411920

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	push	rax
	movabs	rdi, 0x7fffffffffffffff
	ucomisd	xmm0,  qword ptr [word ptr [rip + label_1315]]
	jbe	.label_1316
	movsd	xmm1,  qword ptr [word ptr [rip + label_147]]
	ucomisd	xmm1, xmm0
	jbe	.label_1318
	cvttsd2si	rdi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rdi
	subsd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_1319]]
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	ucomisd	xmm0, xmm1
	seta	cl
	movzx	ecx, cl
	add	rcx, rax
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rsi, rcx
	sub	rsi, rax
	add	rsi, 0x3b9aca00
	sub	rcx, rax
	cmovns	rsi, rcx
	add	rdi, rdx
	sar	rcx, 0x3f
	add	rcx, rdi
	mov	rdi, rcx
	jmp	.label_1317
.label_1316:
	inc	rdi
	xor	esi, esi
	jmp	.label_1317
.label_1318:
	mov	esi, 0x3b9ac9ff
.label_1317:
	call	make_timespec
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4119e0

	.globl fd_safer_flag
	.type fd_safer_flag, @function
fd_safer_flag:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_1320
	mov	edi, ebx
	call	dup_safer_flag
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_1321
.label_1320:
	mov	eax, ebx
.label_1321:
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
	#Procedure 0x411a30

	.globl dup_safer_flag
	.type dup_safer_flag, @function
dup_safer_flag:
	and	esi, 0x80000
	mov	eax, 0x406
	cmovne	esi, eax
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411a50

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1325
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1324
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1326
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1322
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1325
.label_1322:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1323
.label_1324:
	mov	rax, rbx
	jmp	.label_1325
.label_1326:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1323:
	xor	eax, eax
.label_1325:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ae0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_11
	cmp	byte ptr [rcx], 0
	je	.label_1327
	mov	rax, rcx
.label_1327:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411b10

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	cmp	rbx, r15
	jne	.label_1328
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_1330
.label_1328:
	mov	bpl, byte ptr [r12 + rbx]
	mov	r13b, byte ptr [r14 + r15]
	mov	byte ptr [r12 + rbx], 0
	mov	byte ptr [r14 + r15], 0
	lea	rsi, [rbx + 1]
	lea	rcx, [r15 + 1]
	mov	rdi, r12
	mov	rdx, r14
	call	strcoll_loop
	mov	byte ptr [r12 + rbx], bpl
	mov	byte ptr [r14 + r15], r13b
	jmp	.label_1329
.label_1330:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_1329:
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
	.align	32
	#Procedure 0x411b90

	.globl strcoll_loop
	.type strcoll_loop, @function
strcoll_loop:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r13, rax
	nop	
.label_1332:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_1331
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r15, rbp
	je	.label_1333
	add	r12, rax
	add	rbx, rbp
	sub	r14, rax
	mov	eax, 1
	jne	.label_1332
	jmp	.label_1331
.label_1333:
	xor	ecx, ecx
	cmp	r14, rax
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_1331:
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
	.align	32
	#Procedure 0x411c20

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	cmp	rbx, r15
	jne	.label_1334
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_1335
.label_1334:
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	strcoll_loop
.label_1335:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x411c80

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	mov	rax, rdi
	mov	rdx, rsi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411c90
	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:

	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_1336
	mov	eax, 1
	jg	.label_1336
	sub	esi, ecx
	mov	eax, esi
.label_1336:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411cb0
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	or	rsi, rdi
	setne	al
	test	rdi, rdi
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411cd0
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_1319]]
	addsd	xmm0, xmm1
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411cf0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411db0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section .text
	.align	32
	#Procedure 0x411dc0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
