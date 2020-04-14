	.section	.text
	.align	32
	#Procedure 0x402bc0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_10
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_31
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_32
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_32
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_25:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fb0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x358
	mov	rbx, rsi
	mov	r12d, edi
	mov	edi, OFFSET FLAT:label_58
	call	getenv
	mov	qword ptr [rsp + 0x28], rax
	call	posix2_version
	add	eax, 0xfffcf250
	cmp	eax, 0x2b8
	seta	al
	mov	dword ptr [rsp + 0x18], eax
	mov	qword ptr [rsp + 8], rbx
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_75
	call	setlocale
	mov	qword ptr [rsp + 0xd0], rax
	test	rax, rax
	setne	byte ptr [rsp + 0xa8]
	mov	edi, OFFSET FLAT:label_47
	mov	esi, OFFSET FLAT:label_48
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_47
	call	textdomain
	mov	dword ptr [rip + exit_failure],  2
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [rip + hard_LC_COLLATE],  al
	mov	edi, 2
	call	hard_locale
	mov	byte ptr [rip + hard_LC_TIME],  al
	call	localeconv
	mov	rcx, qword ptr [rax]
	movzx	edx, byte ptr [rcx]
	test	edx, edx
	mov	dword ptr [rip + decimal_point],  edx
	je	.label_71
	cmp	byte ptr [rcx + 1], 0
	je	.label_76
.label_71:
	mov	dword ptr [rip + decimal_point],  0x2e
.label_76:
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	test	ecx, ecx
	mov	dword ptr [rip + thousands_sep],  ecx
	je	.label_78
	cmp	byte ptr [rax + 1], 0
	je	.label_82
.label_78:
	mov	dword ptr [rip + thousands_sep],  0xffffffff
.label_82:
	mov	byte ptr [rip + have_read_stdin],  0
	mov	rbx, -0x100
	call	__ctype_b_loc
	mov	r15, rax
	nop	word ptr [rax + rax]
.label_111:
	mov	rcx, qword ptr [r15]
	movzx	eax, word ptr [rcx + rbx*2 + 0x200]
	and	eax, 1
	cmp	bl, 0xa
	sete	dl
	or	dl, al
	mov	byte ptr [rbx + nonprinting],  dl
	movzx	ecx, word ptr [rcx + rbx*2 + 0x200]
	mov	edx, ecx
	shr	edx, 0xe
	not	edx
	and	edx, 1
	mov	byte ptr [rbx + nondictionary],  dl
	test	cl, 8
	jne	.label_93
	cmp	bl, 0xa
	setne	cl
	test	ax, ax
	sete	al
	and	al, cl
	jmp	.label_101
	nop	dword ptr [rax]
.label_93:
	xor	eax, eax
.label_101:
	mov	byte ptr [rbx + fold_toupper],  al
	lea	eax, [rbx + 0x180]
	cmp	eax, 0x180
	jae	.label_105
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x400]
	jmp	.label_108
	nop	word ptr cs:[rax + rax]
.label_105:
	lea	rax, [rbx + 0x100]
.label_108:
	mov	byte ptr [rbx + temphead],  al
	inc	rbx
	jne	.label_111
	cmp	byte ptr [rip + hard_LC_TIME],  0
	je	.label_115
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_293:
	lea	edi, [r13 + 0x2000e]
	call	rpl_nl_langinfo
	mov	rbp, rax
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	xmalloc
	mov	rcx, r13
	shl	rcx, 4
	mov	qword ptr [rcx + monthtab],  rax
	inc	r13
	mov	dword ptr [rcx + label_128],  r13d
	test	rbx, rbx
	mov	ecx, 0
	je	.label_129
	mov	r8d, ebx
	and	r8d, 1
	cmp	rbx, 1
	mov	ecx, 0
	mov	esi, 0
	je	.label_298
	sub	rbx, r8
	xor	ecx, ecx
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_269:
	movzx	edi, byte ptr [rbp + rsi]
	mov	rdx, qword ptr [r15]
	test	byte ptr [rdx + rdi*2], 1
	jne	.label_145
	movzx	edx, byte ptr [rdi + fold_toupper]
	mov	byte ptr [rax + rcx], dl
	inc	rcx
.label_145:
	movzx	edi, byte ptr [rbp + rsi + 1]
	mov	rdx, qword ptr [r15]
	test	byte ptr [rdx + rdi*2], 1
	jne	.label_149
	movzx	edx, byte ptr [rdi + fold_toupper]
	mov	byte ptr [rax + rcx], dl
	inc	rcx
.label_149:
	add	rsi, 2
	cmp	rbx, rsi
	jne	.label_269
.label_298:
	test	r8, r8
	je	.label_129
	movzx	edx, byte ptr [rbp + rsi]
	mov	rsi, qword ptr [r15]
	test	byte ptr [rsi + rdx*2], 1
	jne	.label_129
	mov	dl, byte ptr [rdx + fold_toupper]
	mov	byte ptr [rax + rcx], dl
	inc	rcx
	nop	
.label_129:
	mov	byte ptr [rax + rcx], 0
	cmp	r13, 0xc
	jne	.label_293
	mov	edi, OFFSET FLAT:monthtab
	mov	esi, 0xc
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:struct_month_cmp
	call	qsort
.label_115:
	mov	edi, OFFSET FLAT:caught_signals
	call	sigemptyset
	lea	rdx, [rsp + 0x228]
	mov	edi, 0xe
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x228], 1
	je	.label_169
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	call	sigaddset
.label_169:
	lea	rdx, [rsp + 0x228]
	mov	edi, 1
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x228], 1
	je	.label_61
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigaddset
.label_61:
	lea	rdx, [rsp + 0x228]
	mov	edi, 2
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x228], 1
	je	.label_435
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigaddset
.label_435:
	lea	rdx, [rsp + 0x228]
	mov	edi, 0xd
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x228], 1
	je	.label_195
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	call	sigaddset
.label_195:
	lea	rdx, [rsp + 0x228]
	mov	edi, 3
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x228], 1
	je	.label_203
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 3
	call	sigaddset
.label_203:
	lea	rdx, [rsp + 0x228]
	mov	edi, 0xf
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x228], 1
	je	.label_212
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigaddset
.label_212:
	lea	rdx, [rsp + 0x228]
	mov	edi, 0x1d
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x228], 1
	je	.label_221
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigaddset
.label_221:
	lea	rdx, [rsp + 0x228]
	mov	edi, 0x1b
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x228], 1
	je	.label_374
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigaddset
.label_374:
	lea	rdx, [rsp + 0x228]
	mov	edi, 0x1a
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x228], 1
	je	.label_240
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1a
	call	sigaddset
.label_240:
	lea	rdx, [rsp + 0x228]
	mov	edi, 0x18
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x228], 1
	je	.label_248
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigaddset
.label_248:
	lea	rdx, [rsp + 0x228]
	mov	edi, 0x19
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x228], 1
	je	.label_254
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	call	sigaddset
.label_254:
	mov	qword ptr [rsp + 552], OFFSET FLAT:sighandler
	movups	xmm0, xmmword ptr [rip + label_257]
	movups	xmmword ptr [rsp + 0x2a0], xmm0
	movups	xmm0, xmmword ptr [rip + label_258]
	movups	xmmword ptr [rsp + 0x290], xmm0
	movups	xmm0, xmmword ptr [rip + label_259]
	movups	xmmword ptr [rsp + 0x280], xmm0
	movups	xmm0, xmmword ptr [rip + label_260]
	movups	xmmword ptr [rsp + 0x270], xmm0
	movups	xmm0, xmmword ptr [rip + label_261]
	movups	xmmword ptr [rsp + 0x260], xmm0
	movups	xmm0, xmmword ptr [rip + label_262]
	movups	xmmword ptr [rsp + 0x250], xmm0
	movups	xmm0, xmmword ptr [rip + label_263]
	movups	xmmword ptr [rsp + 0x240], xmm0
	movupd	xmm0, xmmword ptr [rip + caught_signals]
	movupd	xmmword ptr [rsp + 0x230], xmm0
	mov	dword ptr [rsp + 0x2b0], 0
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	call	sigismember
	test	eax, eax
	je	.label_291
	lea	rsi, [rsp + 0x228]
	mov	edi, 0xe
	xor	edx, edx
	call	sigaction
.label_291:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigismember
	test	eax, eax
	je	.label_295
	lea	rsi, [rsp + 0x228]
	mov	edi, 1
	xor	edx, edx
	call	sigaction
.label_295:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigismember
	test	eax, eax
	je	.label_55
	lea	rsi, [rsp + 0x228]
	mov	edi, 2
	xor	edx, edx
	call	sigaction
.label_55:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	call	sigismember
	test	eax, eax
	je	.label_308
	lea	rsi, [rsp + 0x228]
	mov	edi, 0xd
	xor	edx, edx
	call	sigaction
.label_308:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 3
	call	sigismember
	test	eax, eax
	je	.label_315
	lea	rsi, [rsp + 0x228]
	mov	edi, 3
	xor	edx, edx
	call	sigaction
.label_315:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigismember
	test	eax, eax
	je	.label_185
	lea	rsi, [rsp + 0x228]
	mov	edi, 0xf
	xor	edx, edx
	call	sigaction
.label_185:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigismember
	test	eax, eax
	je	.label_331
	lea	rsi, [rsp + 0x228]
	mov	edi, 0x1d
	xor	edx, edx
	call	sigaction
.label_331:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigismember
	test	eax, eax
	je	.label_338
	lea	rsi, [rsp + 0x228]
	mov	edi, 0x1b
	xor	edx, edx
	call	sigaction
.label_338:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1a
	call	sigismember
	test	eax, eax
	je	.label_349
	lea	rsi, [rsp + 0x228]
	mov	edi, 0x1a
	xor	edx, edx
	call	sigaction
.label_349:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigismember
	test	eax, eax
	je	.label_353
	lea	rsi, [rsp + 0x228]
	mov	edi, 0x18
	xor	edx, edx
	call	sigaction
.label_353:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	call	sigismember
	test	eax, eax
	je	.label_364
	lea	rsi, [rsp + 0x228]
	mov	edi, 0x19
	xor	edx, edx
	call	sigaction
.label_364:
	xor	ebx, ebx
	mov	edi, 0x11
	xor	esi, esi
	call	signal
	mov	edi, OFFSET FLAT:exit_cleanup
	call	atexit
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rsp + 0x180], xmm0
	movupd	xmmword ptr [rsp + 0x170], xmm0
	movupd	xmmword ptr [rsp + 0x160], xmm0
	movupd	xmmword ptr [rsp + 0x150], xmm0
	mov	qword ptr [rsp + 0x158], -1
	mov	qword ptr [rsp + 0x148], -1
	test	r12d, r12d
	js	.label_378
	movsxd	rdi, r12d
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [rsp + 0x28], 0
	sete	byte ptr [rsp + 0x38]
	mov	eax, 0
	mov	qword ptr [rsp + 0x98], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x20], rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x138], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xd8], rax
	xor	r14d, r14d
	xor	r15d, r15d
	mov	r8, qword ptr [rsp + 8]
	jmp	.label_389
	nop	word ptr cs:[rax + rax]
.label_83:
	mov	r14b, cl
	mov	ebx, ebp
.label_389:
	mov	dword ptr [rsp + 0xb0], 0xffffffff
	cmp	ebx, -1
	je	.label_410
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_414
	test	r13, r13
	je	.label_414
	mov	eax, dword ptr [rsp + 0x18]
	test	al, 1
	je	.label_416
	test	r15b, r15b
	jne	.label_416
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r12d
	je	.label_416
	mov	rcx, qword ptr [r8 + rax*8]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_416
	cmp	byte ptr [rcx + 1], 0x6f
	jne	.label_416
	inc	eax
	cmp	eax, r12d
	jne	.label_414
	mov	al, byte ptr [rcx + 2]
	test	al, al
	je	.label_416
	nop	word ptr cs:[rax + rax]
.label_414:
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r12d
	mov	rsi, r8
	lea	r8, [rsp + 0xb0]
	call	getopt_long
	mov	r8, qword ptr [rsp + 8]
	lea	edx, [rax + 0x83]
	cmp	edx, 0x10a
	ja	.label_51
	mov	ebp, 0x6d
	mov	cl, 1
	mov	ebx, 0xffffffff
	jmp	qword ptr [(rdx * 8) + label_59]
.label_2060:
	mov	rdi, qword ptr [rip + optarg]
	cmp	byte ptr [rdi], 0x2b
	jne	.label_62
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r12d
	je	.label_65
	mov	rax, qword ptr [r8 + rax*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_65
	movsx	eax, byte ptr [rax + 1]
	add	eax, -0x30
	cmp	eax, 0xa
	setb	bl
	jmp	.label_72
	nop	word ptr cs:[rax + rax]
.label_410:
	mov	ebx, 0xffffffff
.label_416:
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r12d
	jge	.label_79
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rax, qword ptr [r8 + rax*8]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	qword ptr [rcx + r13*8], rax
	inc	r13
	mov	ecx, r14d
	mov	ebp, ebx
	jmp	.label_83
.label_2063:
	mov	rbx, qword ptr [rip + optarg]
	mov	rcx, qword ptr [rip + temp_dir_count]
	cmp	rcx, qword ptr [rip + temp_dir_alloc]
	jne	.label_91
	mov	rdi, qword ptr [rip + temp_dirs]
	test	rdi, rdi
	je	.label_95
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	jae	.label_98
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_100
.label_2064:
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x70], xmm0
	movapd	xmmword ptr [rsp + 0x60], xmm0
	movapd	xmmword ptr [rsp + 0x50], xmm0
	movapd	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x80], 0
	mov	qword ptr [rsp + 0x50], -1
	mov	rbx, qword ptr [rip + optarg]
	lea	rsi, [rsp + 0x228]
	lea	rcx, [rsp + 0x190]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_75
	mov	rdi, rbx
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_117
	jmp	qword ptr [(rcx * 8) + label_119]
.label_1923:
	mov	rcx, qword ptr [rsp + 0x190]
	mov	qword ptr [rsp + 0x40], rcx
	jmp	.label_120
.label_2070:
	mov	byte ptr [rip + eolchar],  1
	mov	ebp, 0x7a
	jmp	.label_64
.label_2072:
	mov	rdi, qword ptr [rip + compress_program]
	test	rdi, rdi
	je	.label_130
	mov	rbx, qword ptr [rip + optarg]
	mov	rsi, rbx
	call	strcmp
	mov	r8, qword ptr [rsp + 8]
	test	eax, eax
	je	.label_135
	jmp	.label_138
.label_2073:
	mov	byte ptr [rip + debug],  1
	mov	ebp, 0x82
	jmp	.label_64
.label_2077:
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_197
	mov	edx, OFFSET FLAT:sort_args
	mov	ecx, OFFSET FLAT:sort_types
	mov	r8d, 1
	call	__xargmatch_internal
	mov	r8, qword ptr [rsp + 8]
	movsx	eax, byte ptr [rax + sort_types]
.label_2061:
	mov	ebp, eax
	mov	byte ptr [rsp + 0x228], bpl
	mov	byte ptr [rsp + 0x229], 0
	test	bpl, bpl
	je	.label_64
	lea	rax, [rsp + 0x229]
	mov	ecx, ebp
	nop	word ptr cs:[rax + rax]
.label_189:
	movsx	ecx, cl
	add	ecx, -0x4d
	cmp	ecx, 0x25
	ja	.label_64
	jmp	qword ptr [(rcx * 8) + label_158]
.label_1986:
	mov	byte ptr [rsp + 0x17e], 1
	jmp	.label_161
.label_1993:
	mov	byte ptr [rsp + 0x17d], 1
	jmp	.label_161
.label_1991:
	mov	qword ptr [rsp + 368], OFFSET FLAT:fold_toupper
	jmp	.label_161
.label_1994:
	cmp	qword ptr [rsp + 0x168], 0
	jne	.label_161
	mov	qword ptr [rsp + 360], OFFSET FLAT:nonprinting
	jmp	.label_161
.label_1989:
	mov	word ptr [rsp + 0x178], 0x101
	jmp	.label_161
.label_1992:
	mov	byte ptr [rsp + 0x17c], 1
	jmp	.label_161
.label_1988:
	mov	byte ptr [rsp + 0x180], 1
	jmp	.label_161
.label_1990:
	mov	qword ptr [rsp + 360], OFFSET FLAT:nondictionary
	jmp	.label_161
.label_1987:
	mov	byte ptr [rsp + 0x17b], 1
	jmp	.label_161
.label_1996:
	mov	byte ptr [rsp + 0x17f], 1
	jmp	.label_161
.label_1995:
	mov	byte ptr [rsp + 0x17a], 1
	nop	
.label_161:
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_189
	jmp	.label_64
.label_2062:
	mov	rbx, r15
	mov	r15d, dword ptr [rsp + 0xb0]
	mov	rbp, qword ptr [rip + optarg]
	lea	rsi, [rsp + 0x190]
	lea	rcx, [rsp + 0x228]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_193
	mov	rdi, rbp
	call	xstrtoumax
	cmp	eax, 2
	je	.label_200
	test	eax, eax
	mov	r8, qword ptr [rsp + 8]
	jne	.label_202
	mov	rax, qword ptr [rsp + 0x190]
	movsx	eax, byte ptr [rax - 1]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_204
	mov	rcx, qword ptr [rsp + 0x228]
	mov	eax, 1
	mov	rdx, rcx
	shr	rdx, 0x36
	jne	.label_202
	shl	rcx, 0xa
	mov	qword ptr [rsp + 0x228], rcx
	jmp	.label_204
.label_2065:
	mov	rdi, qword ptr [rsp + 0x98]
	test	rdi, rdi
	mov	ebp, 0x6f
	mov	rbx, qword ptr [rip + optarg]
	je	.label_290
	mov	rsi, rbx
	call	strcmp
	mov	r8, qword ptr [rsp + 8]
	test	eax, eax
	mov	qword ptr [rsp + 0x98], rbx
	mov	ecx, r14d
	je	.label_83
	jmp	.label_229
.label_2066:
	mov	byte ptr [rip + stable],  1
	mov	ebp, 0x73
	jmp	.label_64
.label_2067:
	mov	rcx, qword ptr [rip + optarg]
	mov	al, byte ptr [rcx]
	test	al, al
	je	.label_383
	mov	dl, byte ptr [rcx + 1]
	test	dl, dl
	je	.label_236
	cmp	al, 0x5c
	jne	.label_238
	cmp	dl, 0x30
	jne	.label_238
	cmp	byte ptr [rcx + 2], 0
	jne	.label_238
	xor	eax, eax
.label_236:
	mov	ecx, dword ptr [rip + tab]
	cmp	ecx, 0x80
	movsx	eax, al
	je	.label_245
	cmp	ecx, eax
	jne	.label_247
.label_245:
	mov	dword ptr [rip + tab],  eax
	mov	ebp, 0x74
	jmp	.label_64
.label_2068:
	mov	byte ptr [rip + unique],  1
	mov	ebp, 0x75
	jmp	.label_64
.label_2069:
	mov	rcx, qword ptr [rip + optarg]
	movsxd	rax, dword ptr [rip + optind]
	mov	ebp, 0x79
	cmp	rcx, qword ptr [r8 + rax*8 - 8]
	jne	.label_64
	nop	word ptr cs:[rax + rax]
.label_266:
	movsx	edx, byte ptr [rcx]
	lea	esi, [rdx - 0x30]
	inc	rcx
	cmp	esi, 0xa
	jb	.label_266
	cmp	dl, 1
	adc	eax, -1
	mov	dword ptr [rip + optind],  eax
	jmp	.label_64
.label_2071:
	mov	rsi, qword ptr [rip + optarg]
	mov	eax, 0x63
	test	rsi, rsi
	je	.label_272
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_275
	mov	edx, OFFSET FLAT:check_args
	mov	ecx, OFFSET FLAT:check_types
	mov	r8d, 1
	call	__xargmatch_internal
	mov	r8, qword ptr [rsp + 8]
	movsx	eax, byte ptr [rax + check_types]
.label_272:
	test	r15b, r15b
	je	.label_277
	movsx	ecx, r15b
	cmp	ecx, eax
	jne	.label_279
.label_277:
	mov	ecx, r14d
	mov	r15b, al
	mov	ebp, eax
	jmp	.label_83
.label_2074:
	mov	ebp, 0x83
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_64
.label_2075:
	mov	qword ptr [rsp + 0xe0], r15
	movsxd	rax, dword ptr [rsp + 0xb0]
	mov	qword ptr [rsp + 0x90], rax
	mov	rbp, qword ptr [rip + optarg]
	lea	rcx, [rsp + 0x100]
	xor	esi, esi
	mov	edx, 0xa
	xor	r8d, r8d
	mov	rdi, rbp
	call	xstrtoumax
	mov	ebx, eax
	lea	rsi, [rsp + 0x228]
	mov	edi, 7
	call	getrlimit
	mov	ecx, dword ptr [rsp + 0x228]
	add	ecx, -3
	test	eax, eax
	mov	r15d, 0x11
	cmove	r15d, ecx
	test	ebx, ebx
	jne	.label_300
	mov	rax, qword ptr [rsp + 0x100]
	mov	dword ptr [rip + nmerge],  eax
	mov	ecx, eax
	cmp	rcx, rax
	mov	r8, qword ptr [rsp + 8]
	jne	.label_304
	cmp	eax, 1
	jbe	.label_310
	cmp	r15d, eax
	jb	.label_304
	mov	ebp, 0x84
	mov	ecx, r14d
	mov	r15, qword ptr [rsp + 0xe0]
	jmp	.label_83
.label_2076:
	mov	rdi, qword ptr [rsp + 0xd8]
	test	rdi, rdi
	mov	ebp, 0x85
	mov	rbx, qword ptr [rip + optarg]
	je	.label_317
	mov	rsi, rbx
	call	strcmp
	mov	r8, qword ptr [rsp + 8]
	test	eax, eax
	mov	qword ptr [rsp + 0xd8], rbx
	mov	ecx, r14d
	je	.label_83
	jmp	.label_329
.label_2078:
	mov	ebx, dword ptr [rsp + 0xb0]
	mov	rbp, qword ptr [rip + optarg]
	lea	rcx, [rsp + 0x228]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_75
	mov	rdi, rbp
	call	xstrtoul
	test	eax, eax
	je	.label_339
	mov	qword ptr [rsp + 0x138], -1
	cmp	eax, 1
	je	.label_343
	jmp	.label_347
.label_91:
	mov	rax, qword ptr [rip + temp_dirs]
	jmp	.label_348
.label_200:
	mov	rcx, qword ptr [rsp + 0x190]
	movsx	edx, byte ptr [rcx - 1]
	add	edx, -0x30
	mov	eax, 2
	cmp	edx, 9
	ja	.label_202
	cmp	byte ptr [rcx + 1], 0
	mov	r8, qword ptr [rsp + 8]
	jne	.label_202
	movsx	ecx, byte ptr [rcx]
	cmp	ecx, 0x62
	je	.label_204
	cmp	ecx, 0x25
	jne	.label_202
	call	physmem_total
	mov	r8, qword ptr [rsp + 8]
	movq	xmm2, qword ptr [rsp + 0x228]
	punpckldq	xmm2, xmmword ptr [rip + label_365]
	subpd	xmm2, xmmword ptr [rip + label_366]
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	mulsd	xmm1, xmm0
	divsd	xmm1, qword ptr [rip + label_367]
	mov	eax, 1
	movsd	xmm0, qword ptr [rip + label_368]
	ucomisd	xmm0, xmm1
	jbe	.label_202
	movsd	xmm0, qword ptr [rip + label_377]
	movapd	xmm2, xmm1
	subsd	xmm2, xmm0
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttsd2si	rax, xmm1
	ucomisd	xmm1, xmm0
	cmovae	rax, rcx
	mov	qword ptr [rsp + 0x228], rax
.label_204:
	mov	rax, qword ptr [rsp + 0x228]
	cmp	rax, qword ptr [rip + sort_size]
	jb	.label_388
	mov	ecx, dword ptr [rip + nmerge]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	cmova	rcx, rax
	mov	qword ptr [rip + sort_size],  rcx
.label_388:
	mov	ebp, 0x53
	mov	ecx, r14d
	mov	r15, rbx
	jmp	.label_83
.label_339:
	mov	rcx, qword ptr [rsp + 0x228]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x138], rax
	test	rcx, rcx
	je	.label_399
.label_343:
	mov	ebp, 0x87
	jmp	.label_396
.label_1924:
	mov	qword ptr [rsp + 0x40], -1
	mov	rcx, -1
	jmp	.label_120
.label_130:
	mov	rbx, qword ptr [rip + optarg]
.label_135:
	mov	qword ptr [rip + compress_program],  rbx
	mov	ebp, 0x81
	jmp	.label_64
.label_290:
	mov	qword ptr [rsp + 0x98], rbx
	jmp	.label_64
.label_65:
	xor	ebx, ebx
.label_72:
	mov	eax, ebx
	and	al, byte ptr [rsp + 0x38]
	mov	ecx, dword ptr [rsp + 0x18]
	and	cl, 1
	or	cl, al
	mov	dword ptr [rsp + 0x18], ecx
	je	.label_420
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x70], xmm0
	movapd	xmmword ptr [rsp + 0x60], xmm0
	movapd	xmmword ptr [rsp + 0x50], xmm0
	movapd	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x80], 0
	mov	qword ptr [rsp + 0x50], -1
	inc	rdi
	lea	rsi, [rsp + 0x228]
	lea	rcx, [rsp + 0x190]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_75
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_57
	jmp	qword ptr [(rcx * 8) + label_60]
.label_1980:
	mov	rax, qword ptr [rsp + 0x190]
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_57
.label_317:
	mov	qword ptr [rsp + 0xd8], rbx
	jmp	.label_64
.label_117:
	mov	rcx, qword ptr [rsp + 0x40]
.label_120:
	mov	rbp, qword ptr [rsp + 0x228]
	lea	rax, [rcx - 1]
	mov	qword ptr [rsp + 0x40], rax
	test	rcx, rcx
	je	.label_67
	cmp	byte ptr [rbp], 0x2e
	jne	.label_74
	inc	rbp
	lea	rsi, [rsp + 0x228]
	lea	rcx, [rsp + 0x190]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_75
	mov	rdi, rbp
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_84
	jmp	qword ptr [(rcx * 8) + label_87]
.label_1927:
	mov	rax, qword ptr [rsp + 0x190]
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_90
.label_74:
	mov	rcx, qword ptr [rsp + 0x48]
	jmp	.label_92
.label_1928:
	mov	qword ptr [rsp + 0x48], -1
	mov	rax, -1
	jmp	.label_90
.label_95:
	test	rcx, rcx
	mov	esi, 0x10
	cmovne	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3c
	jne	.label_96
.label_100:
	mov	qword ptr [rip + temp_dir_alloc],  rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [rip + temp_dirs],  rax
	mov	rcx, qword ptr [rip + temp_dir_count]
	mov	r8, qword ptr [rsp + 8]
.label_348:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rip + temp_dir_count],  rdx
	mov	qword ptr [rax + rcx*8], rbx
	mov	ebp, 0x54
	jmp	.label_64
.label_420:
	mov	dword ptr [rsp + 0x18], 0
	jmp	.label_62
.label_1981:
	mov	qword ptr [rsp + 0x40], -1
.label_57:
	mov	rdi, qword ptr [rsp + 0x228]
	xor	ecx, ecx
	test	rdi, rdi
	mov	r8, qword ptr [rsp + 8]
	je	.label_110
	cmp	byte ptr [rdi], 0x2e
	jne	.label_116
	inc	rdi
	lea	rsi, [rsp + 0x228]
	lea	rcx, [rsp + 0x190]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_75
	call	xstrtoumax
	mov	r8, qword ptr [rsp + 8]
	xor	ecx, ecx
	mov	edx, eax
	cmp	eax, 4
	ja	.label_124
	jmp	qword ptr [(rdx * 8) + label_133]
.label_1911:
	mov	rax, qword ptr [rsp + 0x190]
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_124
.label_84:
	mov	rax, qword ptr [rsp + 0x48]
.label_90:
	mov	rbp, qword ptr [rsp + 0x228]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x48], rcx
	test	rax, rax
	je	.label_162
	mov	rax, qword ptr [rsp + 0x40]
.label_92:
	or	rcx, rax
	jne	.label_143
	mov	qword ptr [rsp + 0x40], -1
.label_143:
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_210
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_168:
	movsx	ecx, al
	add	ecx, -0x4d
	cmp	ecx, 0x25
	ja	.label_243
	jmp	qword ptr [(rcx * 8) + label_152]
.label_1930:
	mov	byte ptr [rsp + 0x76], 1
	jmp	.label_66
.label_1933:
	mov	byte ptr [rsp + 0x70], 1
	jmp	.label_66
.label_1935:
	mov	qword ptr [rsp + 104], OFFSET FLAT:fold_toupper
	jmp	.label_66
.label_1936:
	mov	byte ptr [rsp + 0x74], 1
	jmp	.label_66
.label_1937:
	mov	byte ptr [rsp + 0x75], 1
	jmp	.label_66
.label_1938:
	cmp	qword ptr [rsp + 0x60], 0
	jne	.label_66
	mov	qword ptr [rsp + 96], OFFSET FLAT:nonprinting
	jmp	.label_66
.label_1931:
	mov	byte ptr [rsp + 0x73], 1
	jmp	.label_66
.label_1932:
	mov	byte ptr [rsp + 0x78], 1
	jmp	.label_66
.label_1934:
	mov	qword ptr [rsp + 96], OFFSET FLAT:nondictionary
	jmp	.label_66
.label_1939:
	mov	byte ptr [rsp + 0x72], 1
	jmp	.label_66
.label_1940:
	mov	byte ptr [rsp + 0x77], 1
	nop	word ptr cs:[rax + rax]
.label_66:
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_168
	jmp	.label_171
.label_243:
	cmp	al, 0x2c
	jne	.label_171
	lea	rsi, [rsp + 0x228]
	lea	rcx, [rsp + 0x190]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_75
	mov	rdi, rbp
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_178
	jmp	qword ptr [(rcx * 8) + label_180]
.label_1966:
	mov	rax, qword ptr [rsp + 0x190]
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_182
.label_171:
	dec	rbp
.label_210:
	mov	rax, -1
	movq	xmm0, rax
	movapd	xmmword ptr [rsp + 0x50], xmm0
	cmp	byte ptr [rbp], 0
	jne	.label_188
.label_235:
	lea	rdi, [rsp + 0x40]
	mov	esi, 0x48
	call	xmemdup
	mov	ecx, OFFSET FLAT:keylist
	nop	
.label_196:
	mov	rdx, rcx
	mov	rcx, qword ptr [rdx]
	test	rcx, rcx
	lea	rcx, [rcx + 0x40]
	jne	.label_196
	mov	qword ptr [rdx], rax
	mov	qword ptr [rax + 0x40], 0
	mov	ebp, 0x6b
.label_396:
	mov	ecx, r14d
	mov	r8, qword ptr [rsp + 8]
	jmp	.label_83
.label_116:
	mov	rcx, rdi
	jmp	.label_110
.label_1967:
	mov	qword ptr [rsp + 0x50], -1
	mov	rax, -1
	jmp	.label_182
.label_1982:
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 8]
	jmp	.label_110
.label_178:
	mov	rax, qword ptr [rsp + 0x50]
.label_182:
	mov	rbp, qword ptr [rsp + 0x228]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x50], rcx
	test	rax, rax
	je	.label_67
	mov	al, byte ptr [rbp]
	cmp	al, 0x2e
	jne	.label_216
	inc	rbp
	lea	rsi, [rsp + 0x228]
	lea	rcx, [rsp + 0x190]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_75
	mov	rdi, rbp
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_223
	jmp	qword ptr [(rcx * 8) + label_226]
.label_1970:
	mov	rax, qword ptr [rsp + 0x190]
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_223
.label_1971:
	mov	qword ptr [rsp + 0x58], -1
.label_223:
	mov	rbp, qword ptr [rsp + 0x228]
	mov	al, byte ptr [rbp]
.label_216:
	test	al, al
	je	.label_235
	inc	rbp
	nop	word ptr [rax + rax]
.label_173:
	movsx	eax, al
	add	eax, -0x4d
	cmp	eax, 0x25
	ja	.label_188
	jmp	qword ptr [(rax * 8) + label_242]
.label_2192:
	mov	byte ptr [rsp + 0x76], 1
	jmp	.label_94
.label_2193:
	mov	byte ptr [rsp + 0x73], 1
	jmp	.label_94
.label_2194:
	mov	byte ptr [rsp + 0x78], 1
	jmp	.label_94
.label_2195:
	mov	byte ptr [rsp + 0x71], 1
	jmp	.label_94
.label_2196:
	mov	qword ptr [rsp + 96], OFFSET FLAT:nondictionary
	jmp	.label_94
.label_2197:
	mov	qword ptr [rsp + 104], OFFSET FLAT:fold_toupper
	jmp	.label_94
.label_2198:
	mov	byte ptr [rsp + 0x74], 1
	jmp	.label_94
.label_2199:
	mov	byte ptr [rsp + 0x75], 1
	jmp	.label_94
.label_2200:
	cmp	qword ptr [rsp + 0x60], 0
	jne	.label_94
	mov	qword ptr [rsp + 96], OFFSET FLAT:nonprinting
	jmp	.label_94
.label_2201:
	mov	byte ptr [rsp + 0x72], 1
	jmp	.label_94
.label_2202:
	mov	byte ptr [rsp + 0x77], 1
	nop	word ptr cs:[rax + rax]
.label_94:
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_173
	jmp	.label_235
.label_1912:
	mov	qword ptr [rsp + 0x48], -1
.label_124:
	mov	rcx, qword ptr [rsp + 0x228]
.label_110:
	mov	rax, qword ptr [rsp + 0x40]
	or	rax, qword ptr [rsp + 0x48]
	jne	.label_274
	mov	qword ptr [rsp + 0x40], -1
.label_274:
	test	rcx, rcx
	je	.label_62
	mov	al, byte ptr [rcx]
	test	al, al
	je	.label_276
	inc	rcx
.label_297:
	movsx	eax, al
	add	eax, -0x4d
	cmp	eax, 0x25
	ja	.label_62
	jmp	qword ptr [(rax * 8) + label_278]
.label_2024:
	mov	byte ptr [rsp + 0x76], 1
	jmp	.label_283
.label_2025:
	mov	byte ptr [rsp + 0x73], 1
	jmp	.label_283
.label_2026:
	mov	byte ptr [rsp + 0x78], 1
	jmp	.label_283
.label_2027:
	mov	byte ptr [rsp + 0x70], 1
	jmp	.label_283
.label_2028:
	mov	qword ptr [rsp + 96], OFFSET FLAT:nondictionary
	jmp	.label_283
.label_2029:
	mov	qword ptr [rsp + 104], OFFSET FLAT:fold_toupper
	jmp	.label_283
.label_2030:
	mov	byte ptr [rsp + 0x74], 1
	jmp	.label_283
.label_2031:
	mov	byte ptr [rsp + 0x75], 1
	jmp	.label_283
.label_2032:
	cmp	qword ptr [rsp + 0x60], 0
	jne	.label_283
	mov	qword ptr [rsp + 96], OFFSET FLAT:nonprinting
	jmp	.label_283
.label_2033:
	mov	byte ptr [rsp + 0x72], 1
	jmp	.label_283
.label_2034:
	mov	byte ptr [rsp + 0x77], 1
	nop	word ptr cs:[rax + rax]
.label_283:
	movzx	eax, byte ptr [rcx]
	inc	rcx
	test	al, al
	jne	.label_297
.label_276:
	test	bl, bl
	je	.label_114
	movsxd	rax, dword ptr [rip + optind]
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rbp, qword ptr [r8 + rax*8]
	lea	rbx, [rbp + 1]
	lea	rsi, [rsp + 0x228]
	lea	rcx, [rsp + 0x190]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_75
	mov	rdi, rbx
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_118
	jmp	qword ptr [(rcx * 8) + label_126]
.label_2083:
	mov	rax, qword ptr [rsp + 0x190]
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_118
.label_62:
	mov	rax, qword ptr [rip + optarg]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	qword ptr [rcx + r13*8], rax
	inc	r13
	mov	ebp, 1
	nop	word ptr cs:[rax + rax]
.label_64:
	mov	ecx, r14d
	jmp	.label_83
.label_2084:
	mov	qword ptr [rsp + 0x50], -1
.label_118:
	mov	rbx, rbp
	mov	rbp, qword ptr [rsp + 0x228]
	test	rbp, rbp
	je	.label_205
	cmp	byte ptr [rbp], 0x2e
	jne	.label_232
	inc	rbp
	lea	rsi, [rsp + 0x228]
	lea	rcx, [rsp + 0x190]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_75
	mov	rdi, rbp
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_340
	jmp	qword ptr [(rcx * 8) + label_344]
.label_2134:
	mov	rax, qword ptr [rsp + 0x190]
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_340
.label_2135:
	mov	qword ptr [rsp + 0x58], -1
.label_340:
	mov	rbp, qword ptr [rsp + 0x228]
.label_232:
	cmp	qword ptr [rsp + 0x58], 0
	jne	.label_325
	mov	rax, qword ptr [rsp + 0x50]
	test	rax, rax
	je	.label_325
	dec	rax
	mov	qword ptr [rsp + 0x50], rax
.label_325:
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_114
	inc	rbp
	nop	word ptr [rax + rax]
.label_384:
	movsx	eax, al
	add	eax, -0x4d
	cmp	eax, 0x25
	ja	.label_359
	jmp	qword ptr [(rax * 8) + label_363]
.label_2147:
	mov	byte ptr [rsp + 0x76], 1
	jmp	.label_45
.label_2148:
	mov	byte ptr [rsp + 0x73], 1
	jmp	.label_45
.label_2149:
	mov	byte ptr [rsp + 0x78], 1
	jmp	.label_45
.label_2150:
	mov	byte ptr [rsp + 0x71], 1
	jmp	.label_45
.label_2151:
	mov	qword ptr [rsp + 96], OFFSET FLAT:nondictionary
	jmp	.label_45
.label_2152:
	mov	qword ptr [rsp + 104], OFFSET FLAT:fold_toupper
	jmp	.label_45
.label_2153:
	mov	byte ptr [rsp + 0x74], 1
	jmp	.label_45
.label_2154:
	mov	byte ptr [rsp + 0x75], 1
	jmp	.label_45
.label_2155:
	cmp	qword ptr [rsp + 0x60], 0
	jne	.label_45
	mov	qword ptr [rsp + 96], OFFSET FLAT:nonprinting
	jmp	.label_45
.label_2156:
	mov	byte ptr [rsp + 0x72], 1
	jmp	.label_45
.label_2157:
	mov	byte ptr [rsp + 0x77], 1
	nop	word ptr cs:[rax + rax]
.label_45:
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_384
.label_114:
	mov	byte ptr [rsp + 0x79], 1
	lea	rdi, [rsp + 0x40]
	mov	esi, 0x48
	call	xmemdup
	mov	ecx, OFFSET FLAT:keylist
	nop	dword ptr [rax + rax]
.label_392:
	mov	rdx, rcx
	mov	rcx, qword ptr [rdx]
	test	rcx, rcx
	lea	rcx, [rcx + 0x40]
	jne	.label_392
	mov	qword ptr [rdx], rax
	mov	qword ptr [rax + 0x40], 0
	mov	ebp, 1
	jmp	.label_396
.label_79:
	mov	rbp, qword ptr [rsp + 0x20]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x348], r14
	je	.label_241
	test	r13, r13
	jne	.label_408
	mov	esi, OFFSET FLAT:label_181
	mov	rdi, rbp
	call	stream_open
	mov	rbx, rax
	test	rbx, rbx
	mov	r14, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rsp + 0x98]
	je	.label_412
	lea	r12, [rsp + 0x228]
	mov	rdi, r12
	call	readtokens0_init
	mov	rdi, rbx
	mov	rsi, r12
	call	readtokens0
	test	al, al
	je	.label_422
	mov	rdi, rbx
	mov	rsi, rbp
	call	xfclose
	cmp	qword ptr [rsp + 0x228], 0
	je	.label_220
	mov	rdi, r14
	call	free
	mov	r12, qword ptr [rsp + 0x228]
	mov	r14, qword ptr [rsp + 0x230]
	xor	ebp, ebp
.label_50:
	cmp	rbp, r12
	jae	.label_431
	mov	rcx, qword ptr [r14 + rbp*8]
	movzx	eax, byte ptr [rcx]
	cmp	al, 0x2d
	jne	.label_433
	cmp	byte ptr [rcx + 1], 0
	je	.label_44
.label_433:
	inc	rbp
	test	al, al
	jne	.label_50
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	r8, rbp
	call	error
.label_241:
	mov	r14, qword ptr [rsp + 0x30]
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x98]
.label_431:
	movabs	r8, 0xff000000000000
	movabs	rcx, 0xffffffffffffff
	mov	rax, qword ptr [rip + keylist]
	test	rax, rax
	mov	qword ptr [rsp + 0x30], r14
	je	.label_70
	xor	r10d, r10d
	lea	r9, [rcx + 1]
	mov	rsi, rax
.label_86:
	cmp	qword ptr [rsi + 0x20], 0
	jne	.label_85
	cmp	qword ptr [rsi + 0x28], 0
	jne	.label_85
	mov	rdi, qword ptr [rsi + 0x30]
	test	di, 0xffff
	jne	.label_85
	mov	ebp, edi
	shr	ebp, 0x10
	test	bpl, bpl
	jne	.label_85
	test	rdi, r8
	jne	.label_85
	mov	rbp, rdi
	shr	rbp, 0x20
	test	bpl, bpl
	jne	.label_85
	movzx	ebp, bp
	cmp	ebp, 0xff
	ja	.label_85
	cmp	edi, 0xffffff
	ja	.label_85
	movzx	ebx, byte ptr [rsi + 0x38]
	test	bl, bl
	jne	.label_85
	cmp	rdi, r9
	jae	.label_85
	movupd	xmm0, xmmword ptr [rsp + 0x168]
	movupd	xmmword ptr [rsi + 0x20], xmm0
	movzx	ecx, byte ptr [rsp + 0x17b]
	mov	rbx, qword ptr [rsp + 0x178]
	mov	byte ptr [rsi + 0x30], bl
	mov	byte ptr [rsi + 0x31], bh
	mov	rdi, rbx
	shr	rdi, 0x30
	mov	byte ptr [rsi + 0x36], dil
	mov	edi, ebx
	shr	edi, 0x10
	mov	byte ptr [rsi + 0x32], dil
	mov	rdi, rbx
	shr	rdi, 0x20
	mov	byte ptr [rsi + 0x34], dil
	mov	rdi, rbx
	shr	rdi, 0x28
	mov	byte ptr [rsi + 0x35], dil
	movzx	edx, byte ptr [rsp + 0x180]
	mov	byte ptr [rsi + 0x38], dl
	mov	byte ptr [rsi + 0x33], cl
	shr	rbx, 0x38
	mov	byte ptr [rsi + 0x37], bl
	nop	word ptr cs:[rax + rax]
.label_85:
	or	r10b, byte ptr [rsi + 0x33]
	mov	rsi, qword ptr [rsi + 0x40]
	test	rsi, rsi
	jne	.label_86
	test	rax, rax
	je	.label_121
	mov	dword ptr [rsp + 0xa4], 0
	jmp	.label_123
.label_70:
	xor	r10d, r10d
.label_121:
	mov	rax, qword ptr [rsp + 0x168]
	or	rax, qword ptr [rsp + 0x170]
	jne	.label_132
	mov	rax, qword ptr [rsp + 0x178]
	test	ax, 0xffff
	jne	.label_132
	mov	ecx, eax
	shr	ecx, 0x10
	test	cl, cl
	jne	.label_132
	test	rax, r8
	jne	.label_132
	shr	rax, 0x20
	test	al, al
	jne	.label_132
	movzx	eax, ax
	cmp	eax, 0xff
	ja	.label_132
	cmp	dword ptr [rsp + 0x178], 0xffffff
	ja	.label_132
	mov	al, byte ptr [rsp + 0x180]
	test	al, al
	jne	.label_132
	mov	dword ptr [rsp + 0xa4], 0
	jmp	.label_148
.label_132:
	mov	ebx, r10d
	lea	rdi, [rsp + 0x148]
	mov	esi, 0x48
	call	xmemdup
	mov	ecx, OFFSET FLAT:keylist
	nop	dword ptr [rax + rax]
.label_154:
	mov	rdx, rcx
	mov	rcx, qword ptr [rdx]
	test	rcx, rcx
	lea	rcx, [rcx + 0x40]
	jne	.label_154
	mov	qword ptr [rdx], rax
	mov	qword ptr [rax + 0x40], 0
	mov	r10d, ebx
	or	r10b, byte ptr [rsp + 0x17b]
	mov	rax, qword ptr [rip + keylist]
	mov	cl, 1
	mov	dword ptr [rsp + 0xa4], ecx
	jmp	.label_294
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14 + rbp*8]
	mov	edi, 4
.label_224:
	call	quotearg_style
.label_69:
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_2058:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_28
	mov	edx, OFFSET FLAT:label_30
	mov	r8d, OFFSET FLAT:label_405
	mov	r9d, OFFSET FLAT:label_406
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_2059:
	xor	edi, edi
	call	usage
.label_51:
	mov	edi, 2
	call	usage
.label_188:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, OFFSET FLAT:label_187
	call	badfieldspec
.label_279:
	mov	edi, OFFSET FLAT:label_151
	call	incompatible_options
.label_202:
	mov	edx, 0x53
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r15d
	mov	r8, rbp
	call	xstrtol_fatal
.label_378:
	call	xalloc_die
.label_408:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_252
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 2
	call	usage
.label_412:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, rbp
	call	sort_die
.label_422:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_318
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	jmp	.label_224
.label_220:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_224
.label_359:
	mov	esi, OFFSET FLAT:label_187
	mov	rdi, rbx
	call	badfieldspec
.label_238:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	jmp	.label_69
.label_67:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, OFFSET FLAT:label_246
	call	badfieldspec
.label_1925:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
.label_358:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rbx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
	jmp	.label_265
.label_247:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
	jmp	.label_265
.label_300:
	cmp	ebx, 1
	jne	.label_271
.label_304:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x90]
	shl	rax, 5
	mov	r14, qword ptr [rax + long_options]
	mov	rdi, rbp
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
	mov	esi, OFFSET FLAT:label_280
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp + 0x190]
	mov	edi, r15d
	call	uinttostr
	jmp	.label_288
.label_310:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x90]
	shl	rax, 5
	mov	r14, qword ptr [rax + long_options]
	mov	rdi, rbp
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
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_301
	call	quote
.label_288:
	mov	rbp, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, rbp
	call	error
.label_347:
	mov	edx, 0xffffff87
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, ebx
	mov	r8, rbp
	call	xstrtol_fatal
.label_138:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
	jmp	.label_265
.label_229:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
	jmp	.label_265
.label_329:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
	jmp	.label_265
.label_1929:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
	jmp	.label_321
.label_399:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
.label_265:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_162:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, OFFSET FLAT:label_328
	call	badfieldspec
.label_271:
	mov	edx, 0xffffff84
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, ebx
	mov	rsi, qword ptr [rsp + 0x90]
	mov	r8, rbp
	call	xstrtol_fatal
.label_98:
	call	xalloc_die
.label_96:
	call	xalloc_die
.label_1968:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_346
.label_321:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rbp, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_2085:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
	jmp	.label_358
.label_205:
	mov	edi, OFFSET FLAT:label_360
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 0x1112
	mov	ecx, OFFSET FLAT:label_362
	call	__assert_fail
.label_123:
	movzx	edx, word ptr [rax + 0x32]
	movzx	esi, dl
	mov	ecx, dword ptr [rax + 0x34]
	movzx	edi, cl
	add	edi, esi
	movzx	esi, ch
	add	esi, edi
	shr	ecx, 0x10
	movzx	ecx, cl
	add	ecx, esi
	shr	edx, 8
	or	dl, byte ptr [rax + 0x38]
	mov	rsi, qword ptr [rax + 0x20]
	test	rsi, rsi
	setne	bl
	or	bl, dl
	movzx	edx, bl
	add	edx, ecx
	cmp	edx, 2
	jae	.label_373
	mov	rax, qword ptr [rax + 0x40]
.label_294:
	test	rax, rax
	jne	.label_123
.label_148:
	mov	dword ptr [rsp + 0x144], r10d
	cmp	byte ptr [rip + debug],  1
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0xe0], r15
	jne	.label_292
	test	r13, r13
	jne	.label_386
	test	r15b, r15b
	jne	.label_386
	cmp	qword ptr [rsp + 0xd0], 0
	mov	al, byte ptr [rsp + 0xa8]
	je	.label_183
	mov	edi, 3
	mov	esi, OFFSET FLAT:label_75
	call	setlocale
	test	rax, rax
	setne	al
.label_183:
	test	al, al
	jne	.label_398
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_404
	xor	eax, eax
	call	error
.label_398:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_409
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 3
	xor	esi, esi
	call	setlocale
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_419
.label_409:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_404
	xor	eax, eax
.label_419:
	call	error
	mov	r10, qword ptr [rsp + 0x168]
	mov	r8, qword ptr [rsp + 0x170]
	mov	rcx, qword ptr [rsp + 0x178]
	mov	edi, ecx
	shr	edi, 8
	mov	r9d, ecx
	shr	r9d, 0x10
	mov	eax, ecx
	shr	eax, 0x18
	mov	dword ptr [rsp + 8], eax
	mov	rbp, rcx
	shr	rbp, 0x20
	mov	rbx, rcx
	shr	rbx, 0x28
	mov	rsi, rcx
	shr	rsi, 0x30
	mov	rax, rcx
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, rcx
	shr	rdx, 0x38
	mov	al, byte ptr [rsp + 0x180]
	mov	byte ptr [rsp + 0x17], al
	mov	r15, qword ptr [rip + keylist]
	test	r15, r15
	je	.label_426
	mov	qword ptr [rsp + 0xf0], r10
	mov	dword ptr [rsp + 0xf8], edi
	mov	qword ptr [rsp + 0x90], r8
	mov	qword ptr [rsp + 0xd0], rsi
	mov	dword ptr [rsp + 0xa8], r9d
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x18], rdx
	mov	eax, 1
	mov	qword ptr [rsp + 0xe8], rax
	lea	r10, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x38], r12
	nop	dword ptr [rax]
.label_231:
	cmp	byte ptr [r15 + 0x39], 0
	je	.label_80
	mov	qword ptr [rsp + 0x350], rbx
	mov	rbp, qword ptr [r15]
	mov	r14, qword ptr [r15 + 0x10]
	xor	ebx, ebx
	cmp	rbp, -1
	sete	bl
	lea	rdi, [rbx + rbp]
	mov	word ptr [rsp + 0x100], 0x2b
	mov	rsi, r10
	mov	r13, r10
	call	umaxtostr
	mov	edx, 0x2d
	lea	rdi, [rsp + 0x101]
	mov	rsi, rax
	call	__stpcpy_chk
	mov	r12, rax
	mov	dword ptr [rsp + 0x190], 0x206b2d
	lea	rdi, [rbx + rbp + 1]
	mov	rsi, r13
	call	umaxtostr
	mov	edx, 0x2c
	lea	rdi, [rsp + 0x193]
	mov	rsi, rax
	call	__stpcpy_chk
	mov	rbp, rax
	cmp	qword ptr [r15 + 0x10], -1
	je	.label_104
	mov	r13, r14
	mov	r14, r12
	add	r14, 2
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x2d20
	lea	rdi, [r13 + 1]
	lea	rsi, [rsp + 0xb0]
	call	umaxtostr
	mov	rdi, r14
	mov	rsi, rax
	call	stpcpy
	mov	rbx, rbp
	inc	rbx
	mov	word ptr [rbp], 0x2c
	xor	eax, eax
	cmp	qword ptr [r15 + 0x18], -1
	sete	al
	lea	rdi, [rax + r13 + 1]
	lea	r13, [rsp + 0xb0]
	mov	rsi, r13
	call	umaxtostr
	mov	rdi, rbx
	mov	rsi, rax
	call	stpcpy
.label_104:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	lea	rsi, [rsp + 0x100]
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	lea	rsi, [rsp + 0x190]
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rsp + 0x98]
	mov	r12, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 0x350]
	mov	r10, r13
	mov	r13, rax
.label_80:
	mov	rax, qword ptr [r15]
	cmp	rax, -1
	je	.label_146
	cmp	qword ptr [r15 + 0x10], rax
	jae	.label_146
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_150
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0xe8]
	call	error
	lea	r10, [rsp + 0xb0]
	mov	cl, 1
	jmp	.label_427
	nop	word ptr cs:[rax + rax]
.label_146:
	xor	ecx, ecx
.label_427:
	mov	al, 1
	cmp	byte ptr [r15 + 0x32], 0
	jne	.label_157
	mov	edx, dword ptr [r15 + 0x34]
	movzx	esi, dx
	cmp	esi, 0xff
	ja	.label_157
	test	dl, dl
	jne	.label_157
	test	edx, 0xff0000
	setne	al
	nop	word ptr [rax + rax]
.label_157:
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_228
	xor	edx, edx
	jmp	.label_379
	nop	dword ptr [rax + rax]
.label_228:
	cmp	qword ptr [r15 + 0x18], 0
	setne	dl
.label_379:
	test	cl, cl
	jne	.label_89
	cmp	dword ptr [rip + tab],  0x80
	setne	cl
	mov	esi, dword ptr [rsp + 0xa4]
	or	cl, sil
	or	dl, cl
	jne	.label_89
	movzx	ecx, word ptr [r15 + 0x30]
	test	cl, cl
	setne	dl
	or	al, dl
	cmp	al, 1
	jne	.label_174
	test	cl, cl
	jne	.label_179
	cmp	qword ptr [r15 + 8], 0
	jne	.label_174
.label_179:
	movzx	eax, cx
	cmp	eax, 0xff
	ja	.label_89
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_89
.label_174:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_186
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0xe8]
	call	error
	lea	r10, [rsp + 0xb0]
	nop	dword ptr [rax]
.label_89:
	mov	eax, dword ptr [rsp + 0xa4]
	test	al, al
	jne	.label_164
	cmp	byte ptr [r15 + 0x32], 0
	jne	.label_199
	movzx	eax, word ptr [r15 + 0x34]
	cmp	eax, 0xff
	ja	.label_199
	test	al, al
	je	.label_164
	nop	word ptr cs:[rax + rax]
.label_199:
	mov	rax, qword ptr [r15]
	lea	rcx, [rax + 1]
	add	rax, 2
	test	rcx, rcx
	cmovne	rax, rcx
	cmp	qword ptr [r15 + 0x10], rax
	jb	.label_164
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0xe8]
	call	error
	lea	r10, [rsp + 0xb0]
.label_164:
	mov	rax, qword ptr [rsp + 0xf0]
	test	rax, rax
	mov	r8d, 0
	je	.label_219
	cmp	rax, qword ptr [r15 + 0x20]
	mov	r8d, 0
	cmovne	r8, rax
.label_219:
	mov	rax, qword ptr [rsp + 0x90]
	test	rax, rax
	mov	r11d, 0
	je	.label_222
	cmp	rax, qword ptr [r15 + 0x28]
	mov	r11d, 0
	cmovne	r11, rax
.label_222:
	movzx	r9d, byte ptr [r15 + 0x33]
	mov	r14, qword ptr [r15 + 0x30]
	mov	eax, r14d
	xor	al, 1
	mov	rcx, qword ptr [rsp + 0x28]
	and	cl, al
	mov	qword ptr [rsp + 0x28], rcx
	mov	eax, r14d
	shr	eax, 8
	xor	al, 1
	mov	ecx, dword ptr [rsp + 0xf8]
	and	al, cl
	mov	rdx, r14
	shr	rdx, 0x30
	xor	dl, 1
	mov	rcx, qword ptr [rsp + 0xd0]
	and	dl, cl
	mov	ecx, r14d
	shr	ecx, 0x10
	xor	cl, 1
	mov	esi, dword ptr [rsp + 0xa8]
	and	cl, sil
	mov	rbp, r14
	shr	rbp, 0x20
	xor	bpl, 1
	mov	rsi, qword ptr [rsp + 0x20]
	and	bpl, sil
	mov	rdi, r14
	shr	rdi, 0x28
	xor	dil, 1
	and	dil, bl
	xor	r9b, 1
	mov	esi, dword ptr [rsp + 8]
	and	sil, r9b
	mov	dword ptr [rsp + 8], esi
	movzx	ebx, byte ptr [r15 + 0x38]
	xor	bl, 1
	and	byte ptr [rsp + 0x17], bl
	shr	r14, 0x38
	xor	r14b, 1
	mov	rsi, qword ptr [rsp + 0x18]
	and	r14b, sil
	inc	qword ptr [rsp + 0xe8]
	mov	r15, qword ptr [r15 + 0x40]
	test	r15, r15
	mov	qword ptr [rsp + 0xf0], r8
	mov	qword ptr [rsp + 0x90], r11
	mov	sil, dl
	mov	qword ptr [rsp + 0xd0], rsi
	mov	sil, r14b
	mov	qword ptr [rsp + 0x18], rsi
	mov	sil, bpl
	mov	qword ptr [rsp + 0x20], rsi
	mov	bl, dil
	mov	sil, cl
	mov	dword ptr [rsp + 0xa8], esi
	mov	sil, al
	mov	dword ptr [rsp + 0xf8], esi
	jne	.label_231
	jmp	.label_112
.label_426:
	mov	al, dil
	mov	cl, r9b
	mov	dil, bl
	mov	r14b, dl
	mov	dl, sil
	mov	r11, r8
	mov	r8, r10
.label_112:
	mov	rsi, r11
	or	rsi, r8
	mov	r15, qword ptr [rsp + 0xe0]
	jne	.label_281
	movzx	esi, al
	shl	esi, 8
	mov	rbx, qword ptr [rsp + 0x28]
	movzx	ebx, bl
	or	ebx, esi
	jne	.label_281
	test	cl, cl
	jne	.label_281
	mov	ebx, edi
	mov	esi, dword ptr [rsp + 8]
	or	bl, sil
	or	bl, bpl
	or	bl, dl
	or	bl, byte ptr [rsp + 0x17]
	jne	.label_281
	test	r14b, r14b
	je	.label_292
	mov	bl, byte ptr [rip + stable]
	test	bl, bl
	je	.label_372
	cmp	qword ptr [rip + keylist],  0
	jne	.label_281
	jmp	.label_292
.label_372:
	mov	r9b, byte ptr [rip + unique]
	mov	r10, qword ptr [rip + keylist]
	cmp	r9b, 1
	jne	.label_296
	test	r10, r10
	je	.label_296
.label_281:
	mov	r9b, byte ptr [rip + stable]
	mov	r10b, byte ptr [rip + unique]
	mov	rsi, qword ptr [rsp + 0x28]
	or	sil, al
	je	.label_302
	lea	rax, [rsp + 0x191]
	mov	byte ptr [rsp + 0x190], 0x62
	jmp	.label_305
.label_302:
	lea	rax, [rsp + 0x190]
.label_305:
	mov	esi, OFFSET FLAT:nondictionary
	cmp	r8, rsi
	jne	.label_309
	mov	byte ptr [rax], 0x64
	inc	rax
.label_309:
	test	r11, r11
	je	.label_312
	mov	byte ptr [rax], 0x66
	inc	rax
.label_312:
	test	bpl, bpl
	je	.label_141
	mov	byte ptr [rax], 0x67
	inc	rax
.label_141:
	test	dil, dil
	je	.label_316
	mov	byte ptr [rax], 0x68
	inc	rax
.label_316:
	mov	esi, OFFSET FLAT:nonprinting
	cmp	r8, rsi
	jne	.label_319
	mov	byte ptr [rax], 0x69
	inc	rax
.label_319:
	test	dl, dl
	je	.label_176
	mov	byte ptr [rax], 0x4d
	inc	rax
.label_176:
	test	cl, cl
	je	.label_192
	mov	byte ptr [rax], 0x6e
	inc	rax
.label_192:
	mov	ecx, dword ptr [rsp + 8]
	test	cl, cl
	je	.label_326
	mov	byte ptr [rax], 0x52
	inc	rax
.label_326:
	test	r14b, r14b
	je	.label_327
	or	r9b, r10b
	xor	r9b, 1
	test	r9b, 1
	jne	.label_327
	mov	byte ptr [rax], 0x72
	inc	rax
.label_327:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_332
	mov	byte ptr [rax], 0x56
	inc	rax
.label_332:
	mov	byte ptr [rax], 0
	lea	rbp, [rsp + 0x190]
	mov	rdi, rbp
	call	strlen
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, OFFSET FLAT:label_342
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	test	r14b, r14b
	je	.label_292
	mov	al, byte ptr [rip + stable]
	test	al, al
	jne	.label_292
	mov	r9b, byte ptr [rip + unique]
	mov	r10, qword ptr [rip + keylist]
.label_296:
	test	r10, r10
	je	.label_292
	xor	r9b, 1
	test	r9b, 1
	je	.label_292
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_292:
	mov	al, byte ptr [rsp + 0x17f]
	mov	byte ptr [rip + reverse],  al
	mov	eax, dword ptr [rsp + 0x144]
	test	al, 1
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_371
	mov	esi, 0x10
	mov	rdi, qword ptr [rsp + 0xd8]
	call	randread_new
	mov	rbx, rax
	test	rbx, rbx
	je	.label_380
	lea	rsi, [rsp + 0x190]
	mov	edx, 0x10
	mov	rdi, rbx
	call	randread
	mov	rdi, rbx
	call	randread_free
	test	eax, eax
	jne	.label_382
	mov	edi, OFFSET FLAT:random_md5_state
	call	md5_init_ctx
	lea	rdi, [rsp + 0x190]
	mov	esi, 0x10
	mov	edx, OFFSET FLAT:random_md5_state
	call	md5_process_bytes
.label_371:
	cmp	qword ptr [rip + temp_dir_count],  0
	jne	.label_390
	mov	edi, OFFSET FLAT:label_391
	call	getenv
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_10
	cmovne	rbx, rax
	cmp	qword ptr [rip + temp_dir_alloc],  0
	je	.label_393
	mov	rax, qword ptr [rip + temp_dirs]
	xor	ecx, ecx
	jmp	.label_397
.label_393:
	mov	rdi, qword ptr [rip + temp_dirs]
	test	rdi, rdi
	mov	eax, 0x10
	mov	esi, 1
	cmove	rsi, rax
	mov	qword ptr [rip + temp_dir_alloc],  rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [rip + temp_dirs],  rax
	mov	rcx, qword ptr [rip + temp_dir_count]
.label_397:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rip + temp_dir_count],  rdx
	mov	qword ptr [rax + rcx*8], rbx
.label_390:
	test	r12, r12
	jne	.label_417
	mov	rdi, r14
	call	free
	mov	edi, 8
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [r14], OFFSET FLAT:label_415
	mov	r12d, 1
.label_417:
	mov	rax, qword ptr [rip + sort_size]
	test	rax, rax
	je	.label_424
	mov	ecx, dword ptr [rip + nmerge]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	cmova	rcx, rax
	mov	qword ptr [rip + sort_size],  rcx
.label_424:
	test	r15b, r15b
	je	.label_428
	cmp	r12, 2
	jae	.label_430
	test	r13, r13
	jne	.label_434
	mov	r12, qword ptr [r14]
	mov	esi, OFFSET FLAT:label_181
	mov	rdi, r12
	call	stream_open
	mov	rbp, rax
	test	rbp, rbp
	je	.label_52
	mov	r14, qword ptr [rip + keylist]
	movzx	r15d, byte ptr [rip + unique]
	xor	r15d, 1
	mov	rcx, qword ptr [rip + merge_buffer_size]
	mov	rax, qword ptr [rip + sort_size]
	cmp	rcx, rax
	cmova	rax, rcx
	nop	word ptr cs:[rax + rax]
.label_77:
	mov	ecx, eax
	and	ecx, 0x1f
	mov	ebx, 0x20
	sub	rbx, rcx
	add	rbx, rax
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x190], rax
	test	rax, rax
	jne	.label_73
	mov	rax, rbx
	shr	rax, 1
	cmp	rbx, 0x43
	ja	.label_77
	call	xalloc_die
.label_73:
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	eax, 0x20
	movq	xmm0, rax
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rsp + 0x1b0], xmm0
	mov	byte ptr [rsp + 0x1c0], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rsp + 0x198], xmm0
	mov	qword ptr [rsp + 0x100], 0
	lea	rdi, [rsp + 0x190]
	mov	qword ptr [rsp + 0x28], rbp
	mov	rsi, rbp
	mov	rdx, r12
	call	fillbuf
	xor	ebx, ebx
	test	al, al
	mov	ebp, 0
	je	.label_97
	test	r14, r14
	mov	qword ptr [rsp + 0x20], r12
	je	.label_99
	xor	ebx, ebx
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
.label_160:
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbx, qword ptr [rsp + 0x190]
	mov	rax, qword ptr [rsp + 0x1a0]
	mov	rbp, qword ptr [rsp + 0x1a8]
	lea	r14, [rbx + rbp]
	mov	qword ptr [rsp + 0x30], rax
	shl	rax, 5
	mov	r12, r14
	sub	r12, rax
	test	r13, r13
	mov	qword ptr [rsp + 8], rbp
	je	.label_103
	mov	rsi, r14
	add	rsi, -0x20
	lea	rdi, [rsp + 0x100]
	call	compare
	cmp	r15d, eax
	mov	rbp, qword ptr [rsp + 8]
	jle	.label_46
	nop	word ptr cs:[rax + rax]
.label_103:
	lea	rdi, [rbx + rbp - 0x20]
	cmp	r12, rdi
	jae	.label_324
	lea	rsi, [rbx + rbp - 0x40]
	call	compare
	add	rbp, -0x20
	cmp	r15d, eax
	jg	.label_103
	jmp	.label_125
.label_324:
	mov	rdx, qword ptr [rbx + rbp - 0x18]
	cmp	r13, rdx
	jae	.label_127
	mov	r12, qword ptr [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_156:
	add	r13, r13
	je	.label_306
	cmp	r13, rdx
	jb	.label_156
	jmp	.label_136
.label_127:
	mov	r12, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_137
.label_306:
	mov	r13, rdx
.label_136:
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	rdi, r13
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [rsp + 0x100], r14
	mov	rdx, qword ptr [rbx + rbp - 0x18]
.label_137:
	mov	rax, qword ptr [rsp + 0x30]
	add	qword ptr [rsp + 0x38], rax
	mov	rsi, qword ptr [rbx + rbp - 0x20]
	mov	rdi, r14
	call	memcpy
	mov	rax, qword ptr [rbx + rbp - 0x18]
	mov	qword ptr [rsp + 0x108], rax
	mov	rax, qword ptr [rbx + rbp - 0x20]
	mov	rcx, qword ptr [rbx + rbp - 0x10]
	sub	rcx, rax
	add	rcx, r14
	mov	qword ptr [rsp + 0x110], rcx
	mov	rcx, qword ptr [rbx + rbp - 8]
	sub	rcx, rax
	add	rcx, r14
	mov	qword ptr [rsp + 0x118], rcx
	lea	rdi, [rsp + 0x190]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r12
	call	fillbuf
	xor	ebp, ebp
	test	al, al
	mov	rbx, r14
	jne	.label_160
	jmp	.label_97
.label_428:
	test	r12, r12
	je	.label_165
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_407:
	mov	rdi, qword ptr [r14 + rbx*8]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_166
	cmp	byte ptr [rdi + 1], 0
	je	.label_167
.label_166:
	mov	esi, 4
	call	euidaccess
	test	eax, eax
	jne	.label_170
.label_167:
	inc	rbx
	cmp	rbx, r12
	jb	.label_407
.label_165:
	test	r13, r13
	je	.label_172
	mov	esi, 0x80041
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r13
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_177
	cmp	ebx, 1
	je	.label_172
	mov	esi, 1
	mov	edi, ebx
	call	dup2
	mov	edi, ebx
	call	close
.label_172:
	mov	rax, qword ptr [rsp + 0x348]
	test	al, 1
	jne	.label_184
	mov	rcx, qword ptr [rsp + 0x138]
	test	rcx, rcx
	jne	.label_190
	mov	edi, 2
	call	num_processors
	cmp	rax, 8
	mov	ecx, 8
	cmovb	rcx, rax
.label_190:
	movabs	rax, 0xffffffffffffff
	cmp	rcx, rax
	cmovb	rax, rcx
	mov	qword ptr [rsp + 0x118], 0
	test	r12, r12
	je	.label_194
	lea	rcx, [rax + rax]
	mov	qword ptr [rsp + 0xf8], rcx
	mov	qword ptr [rsp + 0x90], rax
	shl	rax, 8
	mov	qword ptr [rsp + 0xf0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_142:
	mov	qword ptr [rsp + 0x30], r14
	mov	rdi, qword ptr [r14]
	mov	esi, OFFSET FLAT:label_181
	mov	qword ptr [rsp + 0x18], rdi
	call	stream_open
	mov	qword ptr [rsp + 0x28], rax
	test	rax, rax
	je	.label_214
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	rcx, 2
	mov	edx, 0x30
	mov	r14, rbx
	jb	.label_218
	mov	edx, 0x20
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_225:
	add	rax, rax
	add	rdx, 0x20
	cmp	rax, rcx
	jb	.label_225
.label_218:
	mov	rax, rdx
	or	rax, 1
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rsp + 0x118], 0
	mov	qword ptr [rsp + 0xd0], rdx
	jne	.label_191
	mov	rbp, rdx
	or	rbp, 2
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], r12
	nop	dword ptr [rax]
.label_335:
	test	rbx, rbx
	je	.label_102
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax + rbx*8]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_423
	cmp	byte ptr [rsi + 1], 0
	je	.label_244
.label_423:
	mov	edi, 1
	lea	rdx, [rsp + 0x190]
	call	__xstat
	jmp	.label_88
	nop	dword ptr [rax]
.label_102:
	mov	rdi, qword ptr [rsp + 0x28]
	call	fileno
	mov	edi, 1
	mov	esi, eax
	jmp	.label_249
.label_244:
	mov	edi, 1
	xor	esi, esi
.label_249:
	lea	rdx, [rsp + 0x190]
	call	__fxstat
.label_88:
	test	eax, eax
	jne	.label_63
	mov	eax, dword ptr [rsp + 0x1a8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_253
	mov	r15, qword ptr [rsp + 0x1c0]
	jmp	.label_256
	nop	
.label_253:
	mov	rsi, qword ptr [rip + sort_size]
	test	rsi, rsi
	mov	r15d, 0x20000
	jne	.label_49
.label_256:
	mov	rsi, qword ptr [rip + sort_buffer_size.size_bound]
	test	rsi, rsi
	jne	.label_270
	mov	rsi, qword ptr [rip + sort_size]
	mov	qword ptr [rip + sort_buffer_size.size_bound],  rsi
	test	rsi, rsi
	jne	.label_270
	mov	edi, 2
	lea	r13, [rsp + 0xb0]
	mov	rsi, r13
	call	getrlimit
	cmp	eax, 1
	sbb	r12, r12
	not	r12
	or	r12, qword ptr [rsp + 0xb0]
	mov	edi, 9
	mov	rsi, r13
	call	getrlimit
	test	eax, eax
	jne	.label_284
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, r12
	cmovb	r12, rax
.label_284:
	shr	r12, 1
	mov	edi, 5
	lea	rsi, [rsp + 0xb0]
	call	getrlimit
	test	eax, eax
	jne	.label_144
	mov	rax, qword ptr [rsp + 0xb0]
	shr	rax, 4
	lea	rax, [rax + rax*4]
	lea	rax, [rax + rax*2]
	cmp	rax, r12
	cmovb	r12, rax
.label_144:
	call	physmem_available
	movsd	qword ptr [rsp + 0xa8], xmm0
	call	physmem_total
	movapd	xmm1, xmm0
	mulsd	xmm1, qword ptr [rip + label_375]
	movsd	xmm6, qword ptr [rsp + 0xa8]
	maxsd	xmm6, xmm1
	mulsd	xmm0, qword ptr [rip + label_376]
	movq	xmm1, r12
	movdqa	xmm2, xmmword ptr [rip + label_365]
	movdqa	xmm3, xmm2
	punpckldq	xmm1, xmm3
	movapd	xmm2, xmmword ptr [rip + label_366]
	movapd	xmm4, xmm2
	subpd	xmm1, xmm4
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	movapd	xmm1, xmm0
	movsd	xmm5, qword ptr [rip + label_377]
	subsd	xmm1, xmm5
	cvttsd2si	rax, xmm1
	movabs	rcx, 0x8000000000000000
	mov	rdx, rcx
	xor	rax, rdx
	cvttsd2si	rcx, xmm0
	ucomisd	xmm0, xmm5
	cmovae	rcx, rax
	ucomisd	xmm2, xmm0
	cmovbe	rcx, r12
	movq	xmm0, rcx
	punpckldq	xmm0, xmm3
	subpd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	movapd	xmm2, xmm6
	movapd	xmm0, xmm2
	subsd	xmm0, xmm5
	cvttsd2si	rax, xmm0
	xor	rax, rdx
	cvttsd2si	rsi, xmm2
	ucomisd	xmm2, xmm5
	cmovae	rsi, rax
	ucomisd	xmm1, xmm2
	cmovbe	rsi, rcx
	mov	eax, dword ptr [rip + nmerge]
	imul	rax, rax, 0x22
	cmp	rsi, rax
	cmovbe	rsi, rax
	mov	qword ptr [rip + sort_buffer_size.size_bound],  rsi
	mov	r12, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x98]
	nop	word ptr [rax + rax]
.label_270:
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 8]
	imul	rcx, rdi
	inc	rcx
	xor	edx, edx
	mov	rax, rcx
	div	rdi
	cmp	r15, rax
	jne	.label_49
	mov	rax, rsi
	sub	rax, rbp
	cmp	rax, rcx
	jbe	.label_49
	add	rbp, rcx
	inc	rbx
	cmp	rbx, r12
	jb	.label_335
	jmp	.label_352
	nop	dword ptr [rax + rax]
.label_49:
	mov	rbp, rsi
	nop	word ptr cs:[rax + rax]
.label_352:
	mov	eax, ebp
	and	eax, 0x1f
	mov	ebx, 0x20
	sub	rbx, rax
	add	rbx, rbp
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x100], rax
	test	rax, rax
	jne	.label_370
	shr	rbx, 1
	cmp	rbx, qword ptr [rsp + 8]
	mov	rbp, rbx
	ja	.label_352
	jmp	.label_234
	nop	word ptr [rax + rax]
.label_370:
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	qword ptr [rsp + 0x128], rdx
	mov	qword ptr [rsp + 0x118], rbx
	mov	qword ptr [rsp + 0x120], 0
	mov	byte ptr [rsp + 0x130], 0
	lea	rax, [rsp + 0x108]
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rax], xmm0
.label_191:
	mov	byte ptr [rsp + 0x130], 0
	add	qword ptr [rsp + 0x30], 8
	dec	r12
	mov	qword ptr [rsp + 0x38], r12
	nop	word ptr cs:[rax + rax]
.label_175:
	lea	rdi, [rsp + 0x100]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x18]
	call	fillbuf
	test	al, al
	je	.label_394
	movzx	eax, byte ptr [rsp + 0x130]
	mov	r15, qword ptr [rsp + 0x118]
	test	r12, r12
	je	.label_215
	test	al, al
	je	.label_215
	mov	rcx, qword ptr [rsp + 0x108]
	mov	rdx, r15
	sub	rdx, rcx
	mov	rsi, qword ptr [rsp + 0x110]
	imul	rsi, qword ptr [rsp + 0xd0]
	sub	rdx, rsi
	cmp	qword ptr [rsp + 8], rdx
	jae	.label_215
	mov	qword ptr [rsp + 0x120], rcx
	mov	eax, 7
	jmp	.label_413
	nop	word ptr cs:[rax + rax]
.label_215:
	mov	qword ptr [rip + saved_line],  0
	add	r15, qword ptr [rsp + 0x100]
	test	al, al
	je	.label_418
	mov	rax, r14
	or	rax, r12
	or	rax, qword ptr [rsp + 0x120]
	jne	.label_418
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x18]
	call	xfclose
	mov	esi, OFFSET FLAT:label_385
	mov	rdi, r13
	call	stream_open
	test	rax, rax
	je	.label_177
	mov	qword ptr [rsp + 0xb0], rax
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	r12, r13
	jmp	.label_429
.label_418:
	inc	r14
	xor	esi, esi
	lea	rdi, [rsp + 0xb0]
	call	maybe_create_temp
	mov	r12, rax
	add	r12, 0xd
.label_429:
	mov	rbx, qword ptr [rsp + 0x110]
	cmp	rbx, 2
	jb	.label_56
	mov	edi, OFFSET FLAT:compare_nodes
	mov	rsi, qword ptr [rsp + 0xf8]
	call	heap_alloc
	mov	qword ptr [rsp + 0x190], rax
	xor	esi, esi
	lea	rdi, [rsp + 0x198]
	call	pthread_mutex_init
	xor	esi, esi
	lea	rdi, [rsp + 0x1c0]
	call	pthread_cond_init
	mov	rdi, qword ptr [rsp + 0xf0]
	call	xmalloc
	mov	rbp, rax
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rbp + 0x10], xmm0
	movupd	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x20], 0
	mov	qword ptr [rbp + 0x30], rbx
	mov	qword ptr [rbp + 0x28], rbx
	mov	qword ptr [rbp + 0x38], 0
	mov	dword ptr [rbp + 0x50], 0
	mov	byte ptr [rbp + 0x54], 0
	lea	rdi, [rbp + 0x58]
	xor	esi, esi
	call	pthread_mutex_init
	mov	r13, rbp
	sub	r13, -0x80
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r15
	mov	qword ptr [rsp + 0xa8], r14
	mov	r14, qword ptr [rsp + 0x90]
	mov	rcx, r14
	mov	r8, rbx
	call	init_node
	mov	rbp, qword ptr [rsp + 0xb0]
	mov	qword ptr [rsp], r12
	mov	rdi, r15
	mov	rsi, r14
	mov	r14, qword ptr [rsp + 0xa8]
	mov	rdx, rbx
	mov	rcx, r13
	mov	r13, qword ptr [rsp + 0x98]
	lea	r8, [rsp + 0x190]
	mov	r9, rbp
	call	sortlines
	jmp	.label_106
	nop	word ptr [rax + rax]
.label_56:
	add	r15, -0x20
	mov	rbp, qword ptr [rsp + 0xb0]
	cmp	byte ptr [rip + unique],  1
	jne	.label_107
	cmp	qword ptr [rip + saved_line],  0
	je	.label_109
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, r15
	call	compare
	test	eax, eax
	je	.label_106
.label_109:
	movupd	xmm0, xmmword ptr [r15]
	movupd	xmm1, xmmword ptr [r15 + 0x10]
	movupd	xmmword ptr [rip + label_113],  xmm1
	movupd	xmmword ptr [rip + saved_line],  xmm0
.label_107:
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, r12
	call	write_line
.label_106:
	mov	rdi, rbp
	mov	rsi, r12
	call	xfclose
	mov	rax, qword ptr [rsp + 0x20]
	and	al, 1
	movzx	eax, al
	shl	eax, 3
	mov	r12, qword ptr [rsp + 0x38]
.label_413:
	mov	ecx, eax
	and	cl, 0xf
	je	.label_175
	mov	rbx, r14
	cmp	cl, 7
	je	.label_134
	jmp	.label_285
	nop	dword ptr [rax + rax]
.label_394:
	mov	rbx, r14
.label_134:
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x18]
	call	xfclose
	xor	eax, eax
.label_285:
	test	r12, r12
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_139
	test	eax, eax
	je	.label_142
.label_139:
	mov	rdi, qword ptr [rsp + 0x100]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_207
	mov	rbp, qword ptr [rip + temphead]
	mov	r14, rbx
	mov	rax, r14
	shr	rax, 0x3b
	je	.label_147
	call	xalloc_die
.label_184:
	mov	esi, 0x10
	mov	rdi, r12
	call	xcalloc
	test	r12, r12
	je	.label_153
	lea	rsi, [r12 - 1]
	mov	ecx, r12d
	and	ecx, 3
	xor	edx, edx
	cmp	rsi, 3
	jb	.label_155
	mov	rsi, r12
	sub	rsi, rcx
	lea	rdi, [rax + 0x30]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_159:
	mov	rbp, qword ptr [r14 + rdx*8]
	mov	qword ptr [rdi - 0x30], rbp
	mov	rbp, qword ptr [r14 + rdx*8 + 8]
	mov	qword ptr [rdi - 0x20], rbp
	mov	rbp, qword ptr [r14 + rdx*8 + 0x10]
	mov	qword ptr [rdi - 0x10], rbp
	mov	rbp, qword ptr [r14 + rdx*8 + 0x18]
	mov	qword ptr [rdi], rbp
	add	rdx, 4
	add	rdi, 0x40
	cmp	rsi, rdx
	jne	.label_159
.label_155:
	test	rcx, rcx
	je	.label_153
	lea	rsi, [r14 + rdx*8]
	shl	rdx, 4
	mov	rdi, rax
	add	rdi, rdx
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_425:
	mov	rdx, qword ptr [rsi]
	mov	qword ptr [rdi], rdx
	add	rdi, 0x10
	add	rsi, 8
	inc	rcx
	jne	.label_425
.label_153:
	xor	esi, esi
	mov	rdi, rax
	mov	rdx, r12
	mov	rcx, r13
	call	merge
	jmp	.label_81
.label_99:
	xor	ebx, ebx
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
.label_233:
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbx, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x1a0]
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	qword ptr [rsp + 8], rax
	lea	r14, [rbx + rax]
	test	r13, r13
	je	.label_432
	lea	rsi, [r14 - 0x20]
	lea	rdi, [rsp + 0x100]
	call	compare
	cmp	r15d, eax
	jle	.label_46
.label_432:
	mov	rax, r12
	shl	rax, 5
	sub	r14, rax
	mov	rbp, qword ptr [rsp + 8]
	nop	dword ptr [rax + rax]
.label_68:
	lea	rdi, [rbx + rbp - 0x20]
	cmp	r14, rdi
	jae	.label_201
	lea	rsi, [rbx + rbp - 0x40]
	call	compare
	add	rbp, -0x20
	cmp	r15d, eax
	jg	.label_68
	jmp	.label_125
.label_201:
	mov	rdx, qword ptr [rbx + rbp - 0x18]
	cmp	r13, rdx
	jae	.label_206
	nop	dword ptr [rax]
.label_255:
	add	r13, r13
	je	.label_251
	cmp	r13, rdx
	jb	.label_255
	jmp	.label_211
.label_206:
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_213
.label_251:
	mov	r13, rdx
.label_211:
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	rdi, r13
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [rsp + 0x100], r14
	mov	rdx, qword ptr [rbx + rbp - 0x18]
.label_213:
	add	qword ptr [rsp + 0x38], r12
	mov	rsi, qword ptr [rbx + rbp - 0x20]
	mov	rdi, r14
	call	memcpy
	mov	rax, qword ptr [rbx + rbp - 0x18]
	mov	qword ptr [rsp + 0x108], rax
	lea	rdi, [rsp + 0x190]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0x20]
	mov	rdx, r12
	call	fillbuf
	xor	ebp, ebp
	test	al, al
	mov	rbx, r14
	jne	.label_233
	jmp	.label_97
.label_125:
	add	rbp, rbx
	mov	r14, rbp
.label_46:
	mov	ebp, 1
	mov	rax, qword ptr [rsp + 0xe0]
	cmp	al, 0x63
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_237
	add	r14, -0x20
	add	rbx, qword ptr [rsp + 8]
	sub	rbx, r14
	sar	rbx, 5
	add	rbx, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rip + stderr]
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	r15, qword ptr [rip + program_name]
	lea	rsi, [rsp + 0xb0]
	mov	rdi, rbx
	call	umaxtostr
	mov	rbx, rax
	mov	ebp, 1
	mov	esi, 1
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, r15
	mov	r8, r12
	mov	r9, rbx
	call	__fprintf_chk
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	call	write_line
.label_237:
	mov	rbx, qword ptr [rsp + 0x18]
.label_97:
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r12
	call	xfclose
	mov	rdi, qword ptr [rsp + 0x190]
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_140
.label_194:
	mov	rbp, qword ptr [rip + temphead]
	xor	r14d, r14d
.label_147:
	mov	rdi, r14
	shl	rdi, 4
	call	xmalloc
	mov	rbx, rax
	test	rbp, rbp
	je	.label_282
	mov	rax, rbx
	add	rax, 8
	nop	dword ptr [rax + rax]
.label_286:
	lea	rcx, [rbp + 0xd]
	mov	qword ptr [rax - 8], rcx
	mov	qword ptr [rax], rbp
	mov	rbp, qword ptr [rbp]
	add	rax, 0x10
	test	rbp, rbp
	jne	.label_286
.label_282:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r14
	mov	rcx, r13
	call	merge
	mov	rdi, rbx
	call	free
	jmp	.label_207
	nop	word ptr cs:[rax + rax]
.label_403:
	mov	edi, 0xffffffff
	call	reap
.label_207:
	cmp	dword ptr [rip + nprocs],  0
	jg	.label_403
.label_81:
	xor	ebp, ebp
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_140
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_303
.label_140:
	mov	eax, ebp
	add	rsp, 0x358
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_234:
	call	xalloc_die
.label_373:
	mov	byte ptr [rax + 0x37], 0
	mov	word ptr [rax + 0x30], 0
	mov	rdx, qword ptr [rax + 0x30]
	movzx	ecx, dx
	cmp	ecx, 0xff
	ja	.label_307
	test	dl, dl
	jne	.label_307
	lea	rcx, [rsp + 0x190]
	jmp	.label_131
.label_177:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	sort_die
.label_63:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	mov	edx, 5
	call	dcgettext
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rcx + rbx*8]
	mov	rdi, rax
	call	sort_die
.label_307:
	lea	rcx, [rsp + 0x191]
	mov	byte ptr [rsp + 0x190], 0x62
.label_131:
	shr	rdx, 0x20
	mov	edi, OFFSET FLAT:nondictionary
	cmp	rsi, rdi
	jne	.label_330
	mov	byte ptr [rcx], 0x64
	inc	rcx
.label_330:
	cmp	qword ptr [rax + 0x28], 0
	je	.label_333
	mov	byte ptr [rcx], 0x66
	inc	rcx
	mov	dx, word ptr [rax + 0x34]
.label_333:
	test	dl, dl
	jne	.label_336
	shr	edx, 8
	jmp	.label_337
.label_336:
	mov	byte ptr [rcx], 0x67
	inc	rcx
	mov	dl, byte ptr [rax + 0x35]
.label_337:
	test	dl, dl
	je	.label_287
	mov	byte ptr [rcx], 0x68
	inc	rcx
.label_287:
	mov	edx, OFFSET FLAT:nonprinting
	cmp	qword ptr [rax + 0x20], rdx
	jne	.label_345
	mov	byte ptr [rcx], 0x69
	inc	rcx
.label_345:
	cmp	byte ptr [rax + 0x36], 0
	je	.label_387
	mov	byte ptr [rcx], 0x4d
	inc	rcx
.label_387:
	mov	dx, word ptr [rax + 0x32]
	test	dl, dl
	jne	.label_350
	shr	edx, 8
	jmp	.label_334
.label_350:
	mov	byte ptr [rcx], 0x6e
	inc	rcx
	mov	dl, byte ptr [rax + 0x33]
.label_334:
	test	dl, dl
	je	.label_351
	mov	byte ptr [rcx], 0x52
	inc	rcx
.label_351:
	cmp	byte ptr [rax + 0x37], 0
	je	.label_354
	mov	byte ptr [rcx], 0x72
	inc	rcx
.label_354:
	cmp	byte ptr [rax + 0x38], 0
	je	.label_355
	mov	byte ptr [rcx], 0x56
	inc	rcx
.label_355:
	mov	byte ptr [rcx], 0
	lea	rdi, [rsp + 0x190]
	call	incompatible_options
.label_170:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [r14 + rbx*8]
	mov	rdi, rax
	call	sort_die
.label_214:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x18]
	call	sort_die
.label_430:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14 + 8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	movsx	r8d, r15b
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_434:
	mov	byte ptr [rip + main.opts.64],  r15b
	mov	edi, OFFSET FLAT:main.opts.64
	call	incompatible_options
.label_52:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r12
	call	sort_die
.label_386:
	mov	rax, r15
	test	r15b, r15b
	jne	.label_395
	mov	al, 0x6f
.label_395:
	mov	byte ptr [rip + main.opts],  al
	mov	edi, OFFSET FLAT:main.opts
	call	incompatible_options
.label_380:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	jmp	.label_401
.label_382:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_402
.label_401:
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0xd8]
	call	sort_die
.label_303:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_402
	mov	edx, 5
	call	dcgettext
	mov	esi, OFFSET FLAT:label_415
	mov	rdi, rax
	call	sort_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067a0

	.globl sighandler
	.type sighandler, @function
sighandler:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	mov	rbx, qword ptr [rip + temphead]
	jmp	.label_436
	nop	
.label_437:
	lea	rdi, [rbx + 0xd]
	call	unlink
	mov	rbx, qword ptr [rbx]
.label_436:
	test	rbx, rbx
	jne	.label_437
	mov	qword ptr [rip + temphead],  0
	xor	esi, esi
	mov	edi, ebp
	call	signal
	mov	edi, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	raise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067f0

	.globl exit_cleanup
	.type exit_cleanup, @function
exit_cleanup:
	push	r14
	push	rbx
	sub	rsp, 0x88
	cmp	qword ptr [rip + temphead],  0
	je	.label_438
	lea	r14, [rsp + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r14
	call	pthread_sigmask
	test	eax, eax
	sete	al
	sete	byte ptr [rsp]
	mov	rbx, qword ptr [rip + temphead]
	test	rbx, rbx
	je	.label_440
	nop	dword ptr [rax]
.label_439:
	lea	rdi, [rbx + 0xd]
	call	unlink
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	jne	.label_439
	mov	al, byte ptr [rsp]
.label_440:
	mov	qword ptr [rip + temphead],  0
	test	al, al
	je	.label_438
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r14
	call	pthread_sigmask
.label_438:
	call	close_stdout
	add	rsp, 0x88
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406880

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
	mov	esi, OFFSET FLAT:label_441
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
	#Procedure 0x4068e0

	.globl incompatible_options
	.type incompatible_options, @function
incompatible_options:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_442
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
	#Procedure 0x406910

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
	je	.label_448
	test	eax, eax
	jne	.label_446
	test	byte ptr [rbx], 0x10
	je	.label_445
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	clearerr_unlocked
.label_448:
	mov	rdi, rbx
	call	fflush_unlocked
	test	eax, eax
	je	.label_445
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_443
	jmp	.label_444
.label_446:
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_447
.label_445:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_447:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_402
.label_444:
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	sort_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406990

	.globl merge
	.type merge, @function
merge:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	qword ptr [rsp + 0x20], rcx
	mov	r13, rdx
	mov	r12, rdi
	mov	ebx, dword ptr [rip + nmerge]
	cmp	rbx, r13
	mov	qword ptr [rsp + 0x18], r12
	jae	.label_473
	lea	rax, [r12 + 8]
	mov	qword ptr [rsp + 0x40], rax
	mov	rbp, rsi
	nop	dword ptr [rax]
.label_486:
	mov	qword ptr [rsp], rbp
	mov	ecx, ebx
	cmp	rcx, r13
	jbe	.label_483
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r14d, r14d
	mov	rbp, r13
	jmp	.label_484
	nop	dword ptr [rax]
.label_483:
	mov	r15, qword ptr [rsp + 0x40]
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x48], r13
	nop	word ptr cs:[rax + rax]
.label_469:
	xor	esi, esi
	lea	rdi, [rsp + 8]
	call	maybe_create_temp
	mov	rcx, r12
	mov	r12, rax
	mov	rbx, r14
	shl	rbx, 4
	add	rbx, rcx
	mov	r13d, dword ptr [rip + nmerge]
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, rbx
	mov	rsi, r13
	lea	rdx, [rsp + 0x58]
	call	open_input_files
	mov	rbp, rax
	cmp	rbp, r13
	jae	.label_459
	cmp	rbp, 1
	jbe	.label_462
.label_459:
	mov	qword ptr [rsp + 0x50], r12
	add	r12, 0xd
	mov	qword ptr [rsp + 0x30], r14
	mov	r14, qword ptr [rsp]
	cmp	r14, r13
	cmovb	r13, r14
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, r12
	call	mergefps
	cmp	r14, rbp
	mov	rax, rbp
	cmovb	rax, r14
	sub	r14, rax
	mov	qword ptr [rsp], r14
	mov	r14, qword ptr [rsp + 0x30]
	mov	qword ptr [r15 - 8], r12
	mov	r12, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [r15], rax
	add	r14, rbp
	inc	qword ptr [rsp + 0x10]
	mov	ebx, dword ptr [rip + nmerge]
	mov	r13, qword ptr [rsp + 0x48]
	mov	rbp, r13
	sub	rbp, r14
	add	r15, 0x10
	cmp	rbx, rbp
	mov	rcx, rbx
	jbe	.label_469
.label_484:
	xor	edx, edx
	mov	r15, qword ptr [rsp + 0x10]
	mov	rax, r15
	div	rcx
	sub	rcx, rdx
	sub	rbp, rcx
	jbe	.label_485
	inc	rbp
	xor	esi, esi
	lea	rdi, [rsp + 8]
	call	maybe_create_temp
	mov	r15, rax
	mov	rax, r12
	mov	qword ptr [rsp + 0x30], r14
	mov	r12, r14
	shl	r12, 4
	add	r12, rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, r12
	mov	rsi, rbp
	lea	rdx, [rsp + 0x58]
	call	open_input_files
	mov	r14, rax
	cmp	r14, rbp
	jae	.label_455
	cmp	r14, 1
	jbe	.label_457
.label_455:
	mov	rbx, r15
	add	rbx, 0xd
	mov	rax, qword ptr [rsp]
	cmp	rax, rbp
	cmovb	rbp, rax
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, r12
	mov	rsi, rbp
	mov	rbp, rax
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, rbx
	call	mergefps
	cmp	rbp, r14
	mov	rax, r14
	cmovb	rax, rbp
	sub	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, rax
	shl	rax, 4
	mov	r12, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + rax], rbx
	inc	rcx
	mov	qword ptr [r12 + rax + 8], r15
	mov	r15, rcx
	mov	rax, qword ptr [rsp + 0x30]
	add	rax, r14
	mov	r14, rax
	mov	ebx, dword ptr [rip + nmerge]
	jmp	.label_487
	nop	dword ptr [rax]
.label_485:
	mov	rbp, qword ptr [rsp]
.label_487:
	mov	rdi, r15
	shl	rdi, 4
	add	rdi, r12
	mov	rsi, r14
	shl	rsi, 4
	add	rsi, r12
	mov	rdx, r13
	sub	rdx, r14
	shl	rdx, 4
	call	memmove
	add	rbp, r15
	add	r15, r13
	sub	r15, r14
	mov	eax, ebx
	cmp	rax, r15
	mov	r13, r15
	jb	.label_486
	jmp	.label_489
.label_473:
	mov	r15, r13
	mov	rbp, rsi
.label_489:
	mov	qword ptr [rsp], rbp
	cmp	rbp, r15
	jae	.label_450
	cmp	qword ptr [rsp + 0x20], 0
	mov	r14, qword ptr [rsp]
	je	.label_451
	mov	r12, r14
	shl	r12, 4
	add	r12, qword ptr [rsp + 0x18]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_461:
	mov	rsi, qword ptr [r12]
	movzx	eax, byte ptr [rsi]
	mov	ebx, 0x2d
	sub	ebx, eax
	jne	.label_456
	movzx	ebx, byte ptr [rsi + 1]
	neg	ebx
.label_456:
	mov	rdi, qword ptr [rsp + 0x20]
	call	strcmp
	test	ebx, ebx
	je	.label_463
	test	eax, eax
	je	.label_465
.label_463:
	mov	ecx, dword ptr [rip + get_outstatus.outstat_errno]
	test	ecx, ecx
	jne	.label_467
	mov	edi, 1
	mov	esi, 1
	mov	edx, OFFSET FLAT:get_outstatus.outstat
	call	__fxstat
	mov	ecx, 0xffffffff
	test	eax, eax
	je	.label_472
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_472:
	mov	dword ptr [rip + get_outstatus.outstat_errno],  ecx
.label_467:
	test	ecx, ecx
	mov	ebp, 0
	mov	eax, OFFSET FLAT:get_outstatus.outstat
	cmovs	rbp, rax
	jns	.label_450
	test	ebx, ebx
	je	.label_480
	mov	rsi, qword ptr [r12]
	mov	edi, 1
	lea	rdx, [rsp + 0x58]
	call	__xstat
	jmp	.label_468
.label_480:
	mov	edi, 1
	xor	esi, esi
	lea	rdx, [rsp + 0x58]
	call	__fxstat
.label_468:
	test	eax, eax
	jne	.label_475
	mov	rax, qword ptr [rsp + 0x60]
	cmp	rax, qword ptr [rbp + 8]
	jne	.label_475
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rbp]
	jne	.label_475
	nop	
.label_465:
	test	r13, r13
	jne	.label_449
	mov	rbx, r15
	xor	esi, esi
	lea	rdi, [rsp + 0x38]
	call	maybe_create_temp
	mov	r13, rax
	mov	r15, qword ptr [rsp + 0x38]
	mov	esi, 1
	mov	rdi, r12
	lea	rdx, [rsp + 8]
	call	open_input_files
	test	rax, rax
	je	.label_454
	mov	r8, r13
	add	r8, 0xd
	mov	r9, qword ptr [rsp + 8]
	xor	esi, esi
	mov	rdi, r12
	mov	rdx, rax
	mov	rcx, r15
	call	mergefps
	mov	r15, rbx
.label_449:
	lea	rax, [r13 + 0xd]
	mov	qword ptr [r12], rax
	mov	qword ptr [r12 + 8], r13
.label_475:
	inc	r14
	add	r12, 0x10
	cmp	r14, r15
	jb	.label_461
	jmp	.label_450
.label_451:
	mov	r13, r14
	shl	r13, 4
	add	r13, qword ptr [rsp + 0x18]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_479:
	mov	rax, qword ptr [r13]
	movzx	ecx, byte ptr [rax]
	mov	ebx, 0x2d
	sub	ebx, ecx
	jne	.label_460
	movzx	ebx, byte ptr [rax + 1]
	neg	ebx
.label_460:
	mov	ecx, dword ptr [rip + get_outstatus.outstat_errno]
	test	ecx, ecx
	jne	.label_478
	mov	edi, 1
	mov	esi, 1
	mov	edx, OFFSET FLAT:get_outstatus.outstat
	call	__fxstat
	mov	ecx, 0xffffffff
	test	eax, eax
	je	.label_482
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_482:
	mov	dword ptr [rip + get_outstatus.outstat_errno],  ecx
.label_478:
	test	ecx, ecx
	mov	ebp, 0
	mov	eax, OFFSET FLAT:get_outstatus.outstat
	cmovs	rbp, rax
	jns	.label_450
	test	ebx, ebx
	je	.label_477
	mov	rsi, qword ptr [r13]
	mov	edi, 1
	lea	rdx, [rsp + 0x58]
	call	__xstat
	jmp	.label_453
	nop	dword ptr [rax]
.label_477:
	mov	edi, 1
	xor	esi, esi
	lea	rdx, [rsp + 0x58]
	call	__fxstat
.label_453:
	test	eax, eax
	jne	.label_452
	mov	rax, qword ptr [rsp + 0x60]
	cmp	rax, qword ptr [rbp + 8]
	jne	.label_452
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rbp]
	jne	.label_452
	test	r12, r12
	jne	.label_458
	mov	qword ptr [rsp + 0x10], r15
	xor	esi, esi
	lea	rdi, [rsp + 0x38]
	call	maybe_create_temp
	mov	r12, rax
	mov	r15, qword ptr [rsp + 0x38]
	mov	esi, 1
	mov	rdi, r13
	lea	rdx, [rsp + 8]
	call	open_input_files
	test	rax, rax
	je	.label_454
	mov	r8, r12
	add	r8, 0xd
	mov	r9, qword ptr [rsp + 8]
	xor	esi, esi
	mov	rdi, r13
	mov	rdx, rax
	mov	rcx, r15
	call	mergefps
	mov	r15, qword ptr [rsp + 0x10]
.label_458:
	lea	rax, [r12 + 0xd]
	mov	qword ptr [r13], rax
	mov	qword ptr [r13 + 8], r12
	nop	word ptr [rax + rax]
.label_452:
	inc	r14
	add	r13, 0x10
	cmp	r14, r15
	jb	.label_479
.label_450:
	mov	rbx, qword ptr [rsp + 0x18]
	lea	rax, [rbx + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	r12, qword ptr [rsp]
	jmp	.label_481
	nop	word ptr cs:[rax + rax]
.label_488:
	mov	rax, r12
	cmp	rax, r14
	mov	rsi, r14
	cmovb	rsi, rax
	mov	qword ptr [rsp + 0x30], rsi
	mov	rcx, qword ptr [rsp + 8]
	mov	r12, rbx
	add	r12, 0xd
	mov	qword ptr [rsp], rax
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, rbp
	mov	rdx, r14
	mov	r8, r12
	mov	r9, r15
	call	mergefps
	mov	qword ptr [rbp], r12
	mov	rax, rbp
	mov	r12, qword ptr [rsp]
	mov	qword ptr [rax + 8], rbx
	mov	rbx, rax
	mov	r15, qword ptr [rsp + 0x10]
	sub	r15, r14
	mov	rdx, r15
	shl	rdx, 4
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r13
	call	memmove
	inc	r12
	sub	r12, qword ptr [rsp + 0x30]
	inc	r15
.label_481:
	mov	rdi, rbx
	mov	rsi, r15
	lea	rdx, [rsp + 0x58]
	call	open_input_files
	mov	r14, rax
	cmp	r14, r15
	mov	qword ptr [rsp + 0x10], r15
	jne	.label_464
	mov	esi, OFFSET FLAT:label_385
	mov	rdi, qword ptr [rsp + 0x20]
	call	stream_open
	test	rax, rax
	jne	.label_470
	call	__errno_location
	cmp	r15, 3
	jb	.label_471
	cmp	dword ptr [rax], 0x18
	je	.label_474
	jmp	.label_471
	nop	dword ptr [rax + rax]
.label_464:
	cmp	r14, 2
	jbe	.label_476
.label_474:
	mov	r15, qword ptr [rsp + 0x58]
	mov	r13, r14
	shl	r13, 4
	add	r13, rbx
	lea	rbp, [rsp + 8]
	nop	
.label_466:
	mov	rdi, qword ptr [r15 + r14*8 - 8]
	dec	r14
	mov	rsi, qword ptr [r13 - 0x10]
	add	r13, -0x10
	call	xfclose
	xor	esi, esi
	cmp	r14, 2
	seta	sil
	mov	rdi, rbp
	call	maybe_create_temp
	mov	rbx, rax
	test	rbx, rbx
	je	.label_466
	jmp	.label_488
.label_470:
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, rax
	mov	r8, qword ptr [rsp + 0x20]
	call	mergefps
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_462:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	shl	rbp, 4
	mov	rsi, qword ptr [rbx + rbp]
	mov	rdi, rax
	call	sort_die
.label_476:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	shl	r14, 4
	mov	rsi, qword ptr [rbx + r14]
	mov	rdi, rax
	call	sort_die
.label_471:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x20]
	call	sort_die
.label_457:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	shl	r14, 4
	mov	rsi, qword ptr [r12 + r14]
	mov	rdi, rax
	call	sort_die
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	shl	r14, 4
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rcx + r14]
	mov	rdi, rax
	call	sort_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070d0

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
	jne	.label_492
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_490
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_492:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rbx, rax
	mov	edi, 2
	mov	edx, OFFSET FLAT:label_491
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	mov	r8, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407130

	.globl struct_month_cmp
	.type struct_month_cmp, @function
struct_month_cmp:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407140

	.globl stream_open
	.type stream_open, @function
stream_open:
	push	rbp
	push	r14
	push	rbx
	mov	rbp, rsi
	mov	r14, rdi
	mov	al, byte ptr [rbp]
	cmp	al, 0x77
	je	.label_493
	cmp	al, 0x72
	jne	.label_496
	cmp	byte ptr [r14], 0x2d
	jne	.label_499
	cmp	byte ptr [r14 + 1], 0
	je	.label_500
.label_499:
	xor	ebx, ebx
	mov	esi, 0x80000
	xor	eax, eax
	mov	rdi, r14
	call	open
	test	eax, eax
	js	.label_498
	mov	edi, eax
	mov	rsi, rbp
	call	fdopen
	mov	rbx, rax
	jmp	.label_498
.label_493:
	test	r14, r14
	je	.label_497
	mov	edi, 1
	xor	esi, esi
	call	ftruncate
	test	eax, eax
	je	.label_497
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	ecx, dword ptr [rip + get_outstatus.outstat_errno]
	test	ecx, ecx
	jne	.label_505
	mov	edi, 1
	mov	esi, 1
	mov	edx, OFFSET FLAT:get_outstatus.outstat
	call	__fxstat
	mov	ecx, 0xffffffff
	test	eax, eax
	je	.label_495
	mov	ecx, dword ptr [rbx]
.label_495:
	mov	dword ptr [rip + get_outstatus.outstat_errno],  ecx
.label_505:
	test	ecx, ecx
	jns	.label_501
	mov	eax, 0xf000
	and	eax, dword ptr [rip + label_504]
	cmp	eax, 0x8000
	je	.label_501
.label_497:
	mov	rbx, qword ptr [rip + stdout]
	jmp	.label_506
.label_500:
	mov	byte ptr [rip + have_read_stdin],  1
	mov	rbx, qword ptr [rip + stdin]
.label_498:
	mov	esi, 2
	mov	rdi, rbx
	call	fadvise
.label_506:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_496:
	mov	edi, OFFSET FLAT:label_502
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 0x3d6
	mov	ecx, OFFSET FLAT:label_503
	call	__assert_fail
.label_501:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_494
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
	#Procedure 0x407280

	.globl fillbuf
	.type fillbuf, @function
fillbuf:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbp, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [rip + keylist]
	mov	dl, byte ptr [rip + eolchar]
	xor	eax, eax
	test	dl, dl
	mov	dword ptr [rsp + 4], 0
	jne	.label_507
	mov	dl, 0xa
	mov	dword ptr [rsp + 4], edx
.label_507:
	cmp	byte ptr [r15 + 0x30], 0
	jne	.label_522
	mov	rax, qword ptr [r15 + 0x28]
	mov	qword ptr [rsp + 0x20], rax
	mov	rbx, qword ptr [rip + merge_buffer_size]
	mov	r12, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x20]
	cmp	r12, rdx
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x38], rbp
	je	.label_528
	mov	rdi, qword ptr [r15]
	add	r12, rdi
	sub	r12, rdx
	mov	rsi, r12
	call	memmove
	mov	r14, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [r15 + 0x20]
	mov	qword ptr [r15 + 8], r12
	mov	qword ptr [r15 + 0x10], 0
.label_528:
	add	rbx, -0x22
	mov	qword ptr [rsp + 8], rbx
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdx, rax
	neg	rdx
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rax + 1]
	mov	eax, dword ptr [rsp + 4]
	movzx	eax, al
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x10], r15
	jmp	.label_513
	nop	dword ptr [rax + rax]
.label_510:
	mov	r12, qword ptr [r15 + 8]
.label_513:
	mov	rbp, qword ptr [r15]
	mov	rax, qword ptr [r15 + 0x10]
	add	r12, rbp
	mov	rsi, qword ptr [r15 + 0x18]
	add	rsi, rbp
	mov	rdx, rax
	shl	rdx, 5
	mov	r13, rsi
	sub	r13, rdx
	mov	r15, rax
	imul	r15, qword ptr [rsp + 0x40]
	add	r15, rsi
	test	rax, rax
	je	.label_531
	neg	rax
	mov	rbp, qword ptr [r13]
	shl	rax, 5
	add	rbp, qword ptr [rsi + rax + 8]
.label_531:
	sub	r15, r12
	jmp	.label_512
.label_530:
	mov	rbx, r12
	jmp	.label_514
.label_512:
	cmp	rdi, r15
	jae	.label_527
	lea	rax, [r15 - 1]
	xor	edx, edx
	div	rdi
	mov	rbx, rax
	mov	esi, 1
	mov	rdi, r12
	mov	rdx, rbx
	mov	rcx, r14
	call	fread_unlocked
	lea	rsi, [r12 + rax]
	sub	r15, rax
	cmp	rax, rbx
	je	.label_525
	mov	eax, dword ptr [r14]
	test	al, 0x20
	jne	.label_537
	test	al, 0x10
	je	.label_525
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + 0x30], 1
	mov	eax, 1
	cmp	qword ptr [rdx], rsi
	je	.label_530
	cmp	rbp, rsi
	mov	rbx, rbp
	je	.label_536
	movsx	eax, byte ptr [rsi - 1]
	cmp	eax, dword ptr [rsp]
	je	.label_525
	mov	eax, dword ptr [rsp + 4]
	mov	byte ptr [rsi], al
	inc	rsi
.label_525:
	mov	rbx, rsi
.label_536:
	mov	rdx, rbx
	sub	rdx, r12
	mov	rdi, r12
	mov	esi, dword ptr [rsp]
	call	memchr
	test	rax, rax
	je	.label_517
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_520
	nop	dword ptr [rax]
.label_523:
	mov	r12, rbx
	mov	byte ptr [rax], 0
	lea	r14, [rax + 1]
	mov	qword ptr [r13 - 0x20], rbp
	mov	rbx, r14
	sub	rbx, rbp
	mov	qword ptr [r13 - 0x18], rbx
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, rbx
	cmovbe	rcx, rbx
	mov	qword ptr [rsp + 8], rcx
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rdx + 0x10], -1
	je	.label_526
	mov	rdi, rbp
	mov	rsi, rbx
	call	limfield
	mov	rdx, qword ptr [rsp + 0x28]
.label_526:
	mov	qword ptr [r13 - 8], rax
	cmp	qword ptr [rdx], -1
	je	.label_516
	mov	rdi, rbp
	mov	rsi, rbx
	call	begfield
	mov	qword ptr [r13 - 0x10], rax
	mov	rbx, r12
	jmp	.label_515
	nop	word ptr cs:[rax + rax]
.label_516:
	cmp	byte ptr [rdx + 0x30], 0
	je	.label_521
	dec	rbp
	mov	rbx, r12
	nop	dword ptr [rax]
.label_519:
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	cmp	byte ptr [rax + blanks],  0
	jne	.label_519
	jmp	.label_509
.label_521:
	mov	rbx, r12
.label_509:
	mov	qword ptr [r13 - 0x10], rbp
.label_515:
	add	r13, -0x20
	sub	r15, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	sub	rdx, r14
	mov	rdi, r14
	mov	esi, dword ptr [rsp]
	call	memchr
	test	rax, rax
	mov	rbp, r14
	jne	.label_523
	jmp	.label_533
	nop	word ptr cs:[rax + rax]
.label_520:
	mov	byte ptr [rax], 0
	mov	r14, rax
	inc	r14
	mov	qword ptr [r13 - 0x20], rbp
	mov	rax, r14
	sub	rax, rbp
	mov	qword ptr [r13 - 0x18], rax
	lea	r13, [r13 - 0x20]
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, rax
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	sub	r15, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	sub	rdx, r14
	mov	rdi, r14
	mov	esi, dword ptr [rsp]
	call	memchr
	test	rax, rax
	mov	rbp, r14
	jne	.label_520
	jmp	.label_533
	nop	dword ptr [rax]
.label_517:
	mov	r14, rbp
.label_533:
	mov	rax, qword ptr [rsp + 0x10]
	movzx	eax, byte ptr [rax + 0x30]
	lea	eax, [rax + rax*4]
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x18]
.label_514:
	mov	edx, eax
	and	dl, 7
	mov	r12, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	je	.label_512
	cmp	dl, 5
	mov	r15, qword ptr [rsp + 0x10]
	jne	.label_508
	mov	r12, rbx
	jmp	.label_511
	nop	dword ptr [rax]
.label_527:
	mov	r15, qword ptr [rsp + 0x10]
.label_511:
	mov	rdi, qword ptr [r15]
	mov	rax, r12
	sub	rax, rdi
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r15 + 0x18]
	lea	rcx, [rdi + rax]
	sub	rcx, r13
	sar	rcx, 5
	mov	qword ptr [r15 + 0x10], rcx
	jne	.label_518
	mov	rbx, rax
	shr	rbx, 5
	test	rdi, rdi
	je	.label_529
	movabs	rcx, 0x5555555555555540
	cmp	rax, rcx
	jae	.label_532
	shr	rax, 6
	lea	rbx, [rbx + rax + 1]
	jmp	.label_534
	nop	word ptr cs:[rax + rax]
.label_529:
	test	rbx, rbx
	mov	eax, 4
	cmove	rbx, rax
	mov	rax, rbx
	shr	rax, 0x3a
	jne	.label_524
.label_534:
	shl	rbx, 5
	mov	rsi, rbx
	call	xrealloc
	mov	qword ptr [r15], rax
	mov	qword ptr [r15 + 0x18], rbx
	mov	r14, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x30]
	jmp	.label_510
	nop	dword ptr [rax + rax]
.label_508:
	test	eax, eax
	je	.label_510
	xor	eax, eax
	jmp	.label_522
.label_518:
	sub	r12, rbp
	mov	qword ptr [r15 + 0x20], r12
	mov	rax, qword ptr [rsp + 8]
	add	rax, 0x22
	mov	qword ptr [rip + merge_buffer_size],  rax
	mov	al, 1
.label_522:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_537:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_535
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x38]
	call	sort_die
.label_532:
	call	xalloc_die
.label_524:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4076a0

	.globl compare
	.type compare, @function
compare:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2148
	mov	rdx, rsi
	mov	r15, qword ptr [rip + keylist]
	test	r15, r15
	je	.label_659
	mov	r14, qword ptr [rdi + 0x10]
	mov	qword ptr [rsp + 0x88], rdi
	mov	r9, qword ptr [rdi + 0x18]
	mov	rbp, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x90], rdx
	mov	rdi, qword ptr [rdx + 0x18]
	mov	byte ptr [rsp + 0xf], al
	mov	byte ptr [rsp + 0xe], al
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_594
	nop	word ptr cs:[rax + rax]
.label_657:
	mov	r13, r15
	mov	r15, rdi
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	call	begfield
	mov	r14, rax
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	call	begfield
	mov	rdi, r15
	mov	r15, r13
	mov	rbp, rax
	mov	r9, qword ptr [rsp + 0x10]
.label_594:
	mov	rax, r15
	mov	r15, qword ptr [rax + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, qword ptr [rax + 0x28]
	cmp	r14, r9
	cmova	r9, r14
	cmp	rbp, rdi
	cmova	rdi, rbp
	mov	rdx, r9
	sub	rdx, r14
	mov	r10, rdi
	sub	r10, rbp
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	jne	.label_685
	mov	rax, qword ptr [rsp + 0x10]
	mov	ax, word ptr [rax + 0x32]
	test	al, al
	jne	.label_685
	mov	rcx, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rcx + 0x34]
	test	ecx, 0xff00ff
	jne	.label_685
	or	eax, ecx
	movzx	eax, ax
	cmp	eax, 0xff
	ja	.label_685
	mov	rax, qword ptr [rsp + 0x10]
	cmp	byte ptr [rax + 0x38], 0
	je	.label_696
	nop	
.label_685:
	mov	rax, r12
	or	rax, r15
	setne	byte ptr [rsp + 0x27]
	je	.label_699
	mov	qword ptr [rsp + 0x18], rdi
	lea	rdi, [r10 + rdx + 2]
	cmp	rdi, 0xfa1
	lea	rax, [rsp + 0x11a0]
	mov	r8, rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x70], rax
	jb	.label_703
	mov	r13, r10
	mov	rbx, r9
	mov	qword ptr [rsp], r15
	mov	r15, rdx
	call	xmalloc
	mov	rdx, r15
	mov	r15, qword ptr [rsp]
	mov	r9, rbx
	mov	r10, r13
	mov	r8, rax
	mov	qword ptr [rsp + 0x70], r8
.label_703:
	mov	qword ptr [rsp], rdx
	test	rdx, rdx
	mov	r11d, 0
	mov	rdi, qword ptr [rsp + 0x18]
	je	.label_538
	test	r15, r15
	je	.label_543
	mov	rcx, r9
	sub	rcx, r14
	lea	rdx, [r9 - 1]
	mov	eax, ecx
	and	eax, 1
	test	r12, r12
	je	.label_545
	cmp	rdx, r14
	mov	edx, 0
	mov	r11d, 0
	je	.label_551
	sub	rcx, rax
	xor	edx, edx
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_570:
	movzx	esi, byte ptr [r14 + rdx]
	cmp	byte ptr [r15 + rsi], 0
	jne	.label_559
	movzx	ebx, byte ptr [r12 + rsi]
	mov	byte ptr [r8 + r11], bl
	inc	r11
.label_559:
	movzx	esi, byte ptr [r14 + rdx + 1]
	cmp	byte ptr [r15 + rsi], 0
	jne	.label_668
	movzx	ebx, byte ptr [r12 + rsi]
	mov	byte ptr [r8 + r11], bl
	inc	r11
.label_668:
	add	rdx, 2
	cmp	rcx, rdx
	jne	.label_570
.label_551:
	test	rax, rax
	je	.label_538
	movzx	eax, byte ptr [r14 + rdx]
	cmp	byte ptr [r15 + rax], 0
	jne	.label_538
	mov	al, byte ptr [r12 + rax]
	mov	byte ptr [r8 + r11], al
	inc	r11
	jmp	.label_538
	nop	word ptr cs:[rax + rax]
.label_699:
	mov	al, byte ptr [r9]
	mov	byte ptr [rsp + 0xf], al
	mov	byte ptr [r9], 0
	mov	al, byte ptr [rdi]
	mov	byte ptr [rsp + 0xe], al
	mov	byte ptr [rdi], 0
	mov	r8, r14
	mov	r13, rbp
	mov	r11, rdx
	jmp	.label_582
.label_543:
	test	r12, r12
	je	.label_591
	mov	rdx, r9
	sub	rdx, r14
	lea	rcx, [r9 - 1]
	sub	rcx, r14
	mov	eax, edx
	and	eax, 3
	cmp	rcx, 3
	mov	ecx, 0
	jb	.label_595
	sub	rdx, rax
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_600:
	movzx	esi, byte ptr [r14 + rcx]
	movzx	ebx, byte ptr [r12 + rsi]
	mov	byte ptr [r8 + rcx], bl
	movzx	esi, byte ptr [r14 + rcx + 1]
	movzx	ebx, byte ptr [r12 + rsi]
	mov	byte ptr [r8 + rcx + 1], bl
	movzx	esi, byte ptr [r14 + rcx + 2]
	movzx	ebx, byte ptr [r12 + rsi]
	mov	byte ptr [r8 + rcx + 2], bl
	movzx	esi, byte ptr [r14 + rcx + 3]
	movzx	ebx, byte ptr [r12 + rsi]
	mov	byte ptr [r8 + rcx + 3], bl
	add	rcx, 4
	cmp	rdx, rcx
	jne	.label_600
.label_595:
	test	rax, rax
	mov	r11, qword ptr [rsp]
	je	.label_538
	lea	rdx, [r8 + rcx]
	add	rcx, r14
	neg	rax
	nop	
.label_612:
	movzx	esi, byte ptr [rcx]
	movzx	ebx, byte ptr [r12 + rsi]
	mov	byte ptr [rdx], bl
	inc	rdx
	inc	rcx
	inc	rax
	jne	.label_612
	jmp	.label_616
.label_545:
	cmp	rdx, r14
	mov	edx, 0
	mov	r11d, 0
	je	.label_617
	sub	rcx, rax
	xor	edx, edx
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_634:
	movzx	esi, byte ptr [r14 + rdx]
	cmp	byte ptr [r15 + rsi], 0
	jne	.label_625
	mov	byte ptr [r8 + r11], sil
	inc	r11
.label_625:
	movzx	esi, byte ptr [r14 + rdx + 1]
	cmp	byte ptr [r15 + rsi], 0
	jne	.label_630
	mov	byte ptr [r8 + r11], sil
	inc	r11
.label_630:
	add	rdx, 2
	cmp	rcx, rdx
	jne	.label_634
.label_617:
	test	rax, rax
	je	.label_538
	movzx	eax, byte ptr [r14 + rdx]
	cmp	byte ptr [r15 + rax], 0
	jne	.label_538
	mov	byte ptr [r8 + r11], al
	inc	r11
	jmp	.label_538
.label_591:
	cmp	qword ptr [rsp], 0x1f
	mov	ecx, 0
	jbe	.label_643
	mov	rax, qword ptr [rsp]
	and	rax, 0xffffffffffffffe0
	mov	ecx, 0
	je	.label_643
	mov	rcx, qword ptr [rsp]
	lea	rcx, [r14 + rcx - 1]
	cmp	r8, rcx
	ja	.label_646
	mov	rcx, qword ptr [rsp]
	lea	rcx, [r8 + rcx - 1]
	cmp	r14, rcx
	mov	ecx, 0
	jbe	.label_643
.label_646:
	mov	rdx, r9
	sub	rdx, r14
	add	rdx, -0x20
	mov	rdi, rdx
	shr	rdi, 5
	lea	ecx, [rdi + 1]
	and	ecx, 3
	cmp	rdx, 0x60
	mov	edx, 0
	jb	.label_651
	lea	rsi, [rcx - 1]
	sub	rsi, rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_658:
	movups	xmm0, xmmword ptr [r14 + rdx]
	movups	xmm1, xmmword ptr [r14 + rdx + 0x10]
	movups	xmmword ptr [r8 + rdx], xmm0
	movups	xmmword ptr [r8 + rdx + 0x10], xmm1
	movups	xmm0, xmmword ptr [r14 + rdx + 0x20]
	movups	xmm1, xmmword ptr [r14 + rdx + 0x30]
	movups	xmmword ptr [r8 + rdx + 0x20], xmm0
	movups	xmmword ptr [r8 + rdx + 0x30], xmm1
	movups	xmm0, xmmword ptr [r14 + rdx + 0x40]
	movups	xmm1, xmmword ptr [r14 + rdx + 0x50]
	movups	xmmword ptr [r8 + rdx + 0x40], xmm0
	movups	xmmword ptr [r8 + rdx + 0x50], xmm1
	movups	xmm0, xmmword ptr [r14 + rdx + 0x60]
	movups	xmm1, xmmword ptr [r14 + rdx + 0x70]
	movups	xmmword ptr [r8 + rdx + 0x60], xmm0
	movups	xmmword ptr [r8 + rdx + 0x70], xmm1
	sub	rdx, -0x80
	add	rsi, 4
	jne	.label_658
.label_651:
	test	rcx, rcx
	je	.label_673
	lea	rsi, [r8 + rdx + 0x10]
	lea	rdx, [r14 + rdx + 0x10]
	neg	rcx
	nop	word ptr [rax + rax]
.label_678:
	movups	xmm0, xmmword ptr [rdx - 0x10]
	movups	xmm1, xmmword ptr [rdx]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rsi, 0x20
	add	rdx, 0x20
	inc	rcx
	jne	.label_678
.label_673:
	mov	rcx, qword ptr [rsp]
	mov	rdx, rcx
	cmp	rdx, rax
	mov	rcx, rax
	mov	r11, rdx
	mov	rdi, qword ptr [rsp + 0x18]
	je	.label_538
.label_643:
	mov	eax, r9d
	sub	eax, ecx
	sub	eax, r14d
	lea	rdx, [r9 - 1]
	sub	rdx, rcx
	sub	rdx, r14
	and	eax, 7
	cmp	rdx, 7
	jb	.label_688
	mov	rdx, r9
	sub	rdx, r14
	sub	rdx, rax
	nop	word ptr [rax + rax]
.label_676:
	movzx	ebx, byte ptr [r14 + rcx]
	mov	byte ptr [r8 + rcx], bl
	movzx	ebx, byte ptr [r14 + rcx + 1]
	mov	byte ptr [r8 + rcx + 1], bl
	movzx	ebx, byte ptr [r14 + rcx + 2]
	mov	byte ptr [r8 + rcx + 2], bl
	movzx	ebx, byte ptr [r14 + rcx + 3]
	mov	byte ptr [r8 + rcx + 3], bl
	movzx	ebx, byte ptr [r14 + rcx + 4]
	mov	byte ptr [r8 + rcx + 4], bl
	movzx	ebx, byte ptr [r14 + rcx + 5]
	mov	byte ptr [r8 + rcx + 5], bl
	movzx	ebx, byte ptr [r14 + rcx + 6]
	mov	byte ptr [r8 + rcx + 6], bl
	movzx	ebx, byte ptr [r14 + rcx + 7]
	mov	byte ptr [r8 + rcx + 7], bl
	add	rcx, 8
	cmp	rdx, rcx
	jne	.label_676
.label_688:
	test	rax, rax
	mov	r11, qword ptr [rsp]
	je	.label_538
	lea	rdx, [r8 + rcx]
	add	rcx, r14
	neg	rax
	nop	word ptr cs:[rax + rax]
.label_640:
	movzx	ebx, byte ptr [rcx]
	mov	byte ptr [rdx], bl
	inc	rdx
	inc	rcx
	inc	rax
	jne	.label_640
.label_616:
	mov	r11, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_538:
	mov	r13, r9
	mov	rax, qword ptr [rsp]
	lea	r9, [r8 + rax + 1]
	mov	byte ptr [r8 + r11], 0
	test	r10, r10
	mov	eax, 0
	je	.label_541
	test	r15, r15
	je	.label_547
	mov	rcx, rdi
	sub	rcx, rbp
	dec	rdi
	test	r12, r12
	je	.label_550
	mov	r10d, ecx
	and	r10d, 1
	cmp	rdi, rbp
	mov	esi, 0
	mov	eax, 0
	mov	rdx, r9
	je	.label_554
	sub	rcx, r10
	xor	esi, esi
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_572:
	movzx	edi, byte ptr [rbp + rsi]
	cmp	byte ptr [r15 + rdi], 0
	jne	.label_563
	movzx	ebx, byte ptr [r12 + rdi]
	mov	byte ptr [rdx + rax], bl
	inc	rax
.label_563:
	movzx	edi, byte ptr [rbp + rsi + 1]
	cmp	byte ptr [r15 + rdi], 0
	jne	.label_568
	movzx	ebx, byte ptr [r12 + rdi]
	mov	byte ptr [rdx + rax], bl
	inc	rax
.label_568:
	add	rsi, 2
	cmp	rcx, rsi
	jne	.label_572
.label_554:
	test	r10, r10
	je	.label_541
	movzx	ecx, byte ptr [rbp + rsi]
	cmp	byte ptr [r15 + rcx], 0
	jne	.label_541
	mov	cl, byte ptr [r12 + rcx]
	mov	byte ptr [r9 + rax], cl
	inc	rax
	jmp	.label_541
.label_547:
	test	r12, r12
	je	.label_555
	mov	rcx, rdi
	sub	rcx, rbp
	dec	rdi
	sub	rdi, rbp
	mov	eax, ecx
	and	eax, 3
	cmp	rdi, 3
	mov	edx, 0
	jb	.label_585
	sub	rcx, rax
	mov	rdx, qword ptr [rsp]
	lea	rsi, [r8 + rdx + 4]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_598:
	movzx	edi, byte ptr [rbp + rdx]
	movzx	ebx, byte ptr [r12 + rdi]
	mov	byte ptr [rsi + rdx - 3], bl
	movzx	edi, byte ptr [rbp + rdx + 1]
	movzx	ebx, byte ptr [r12 + rdi]
	mov	byte ptr [rsi + rdx - 2], bl
	movzx	edi, byte ptr [rbp + rdx + 2]
	movzx	ebx, byte ptr [r12 + rdi]
	mov	byte ptr [rsi + rdx - 1], bl
	movzx	edi, byte ptr [rbp + rdx + 3]
	movzx	ebx, byte ptr [r12 + rdi]
	mov	byte ptr [rsi + rdx], bl
	add	rdx, 4
	cmp	rcx, rdx
	jne	.label_598
.label_585:
	test	rax, rax
	je	.label_607
	add	r13, rdx
	sub	r13, r14
	lea	rcx, [r8 + r13 + 1]
	add	rbp, rdx
	neg	rax
	nop	word ptr [rax + rax]
.label_679:
	movzx	edx, byte ptr [rbp]
	movzx	edx, byte ptr [r12 + rdx]
	mov	byte ptr [rcx], dl
	inc	rcx
	inc	rbp
	inc	rax
	jne	.label_679
	jmp	.label_607
.label_550:
	mov	edx, ecx
	and	edx, 1
	cmp	rdi, rbp
	mov	esi, 0
	mov	eax, 0
	mov	rbx, r9
	je	.label_614
	sub	rcx, rdx
	xor	esi, esi
	xor	eax, eax
	nop	dword ptr [rax]
.label_677:
	movzx	edi, byte ptr [rbp + rsi]
	cmp	byte ptr [r15 + rdi], 0
	jne	.label_622
	mov	byte ptr [rbx + rax], dil
	inc	rax
.label_622:
	movzx	edi, byte ptr [rbp + rsi + 1]
	cmp	byte ptr [r15 + rdi], 0
	jne	.label_627
	mov	byte ptr [rbx + rax], dil
	inc	rax
.label_627:
	add	rsi, 2
	cmp	rcx, rsi
	jne	.label_677
.label_614:
	test	rdx, rdx
	je	.label_541
	movzx	ecx, byte ptr [rbp + rsi]
	cmp	byte ptr [r15 + rcx], 0
	jne	.label_541
	mov	byte ptr [r9 + rax], cl
	inc	rax
	jmp	.label_541
.label_555:
	cmp	r10, 0x1f
	mov	ecx, 0
	jbe	.label_639
	mov	rax, r10
	and	rax, 0xffffffffffffffe0
	mov	ecx, 0
	je	.label_639
	lea	rcx, [rbp + r10 - 1]
	cmp	r9, rcx
	ja	.label_587
	lea	rcx, [rdi + r13]
	sub	rcx, rbp
	sub	rcx, r14
	add	rcx, r8
	cmp	rbp, rcx
	mov	ecx, 0
	jbe	.label_639
.label_587:
	mov	rdx, rdi
	sub	rdx, rbp
	add	rdx, -0x20
	mov	rbx, rdx
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	cmp	rdx, 0x60
	mov	edx, 0
	jb	.label_649
	mov	rdx, qword ptr [rsp]
	lea	rsi, [r8 + rdx + 0x71]
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	edx, edx
	nop	
.label_655:
	movups	xmm0, xmmword ptr [rbp + rdx]
	movups	xmm1, xmmword ptr [rbp + rdx + 0x10]
	movups	xmmword ptr [rsi + rdx - 0x70], xmm0
	movups	xmmword ptr [rsi + rdx - 0x60], xmm1
	movups	xmm0, xmmword ptr [rbp + rdx + 0x20]
	movups	xmm1, xmmword ptr [rbp + rdx + 0x30]
	movups	xmmword ptr [rsi + rdx - 0x50], xmm0
	movups	xmmword ptr [rsi + rdx - 0x40], xmm1
	movups	xmm0, xmmword ptr [rbp + rdx + 0x40]
	movups	xmm1, xmmword ptr [rbp + rdx + 0x50]
	movups	xmmword ptr [rsi + rdx - 0x30], xmm0
	movups	xmmword ptr [rsi + rdx - 0x20], xmm1
	movups	xmm0, xmmword ptr [rbp + rdx + 0x60]
	movups	xmm1, xmmword ptr [rbp + rdx + 0x70]
	movups	xmmword ptr [rsi + rdx - 0x10], xmm0
	movups	xmmword ptr [rsi + rdx], xmm1
	sub	rdx, -0x80
	add	rdi, 4
	jne	.label_655
.label_649:
	test	rcx, rcx
	je	.label_599
	lea	rsi, [rdx + r13]
	sub	rsi, r14
	lea	rsi, [r8 + rsi + 0x11]
	lea	rdx, [rbp + rdx + 0x10]
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_637:
	movups	xmm0, xmmword ptr [rdx - 0x10]
	movups	xmm1, xmmword ptr [rdx]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rsi, 0x20
	add	rdx, 0x20
	inc	rcx
	jne	.label_637
.label_599:
	cmp	r10, rax
	mov	rcx, rax
	mov	rdi, qword ptr [rsp + 0x18]
	je	.label_607
.label_639:
	mov	eax, edi
	sub	eax, ecx
	sub	eax, ebp
	lea	rdx, [rdi - 1]
	sub	rdx, rcx
	sub	rdx, rbp
	and	eax, 7
	cmp	rdx, 7
	jb	.label_683
	mov	rdx, qword ptr [rsp]
	lea	rdx, [r8 + rdx + 8]
	sub	rdi, rbp
	sub	rdi, rax
	nop	word ptr cs:[rax + rax]
.label_553:
	movzx	ebx, byte ptr [rbp + rcx]
	mov	byte ptr [rdx + rcx - 7], bl
	movzx	ebx, byte ptr [rbp + rcx + 1]
	mov	byte ptr [rdx + rcx - 6], bl
	movzx	ebx, byte ptr [rbp + rcx + 2]
	mov	byte ptr [rdx + rcx - 5], bl
	movzx	ebx, byte ptr [rbp + rcx + 3]
	mov	byte ptr [rdx + rcx - 4], bl
	movzx	ebx, byte ptr [rbp + rcx + 4]
	mov	byte ptr [rdx + rcx - 3], bl
	movzx	ebx, byte ptr [rbp + rcx + 5]
	mov	byte ptr [rdx + rcx - 2], bl
	movzx	ebx, byte ptr [rbp + rcx + 6]
	mov	byte ptr [rdx + rcx - 1], bl
	movzx	ebx, byte ptr [rbp + rcx + 7]
	mov	byte ptr [rdx + rcx], bl
	add	rcx, 8
	cmp	rdi, rcx
	jne	.label_553
.label_683:
	test	rax, rax
	je	.label_607
	add	r13, rcx
	sub	r13, r14
	lea	rdx, [r8 + r13 + 1]
	add	rbp, rcx
	neg	rax
	nop	word ptr cs:[rax + rax]
.label_708:
	movzx	ecx, byte ptr [rbp]
	mov	byte ptr [rdx], cl
	inc	rdx
	inc	rbp
	inc	rax
	jne	.label_708
.label_607:
	mov	rax, r10
.label_541:
	mov	r13, r9
	mov	byte ptr [r13 + rax], 0
	mov	r10, rax
.label_582:
	mov	r15, qword ptr [rsp + 0x10]
	movzx	eax, word ptr [r15 + 0x32]
	test	al, al
	mov	qword ptr [rsp + 0x60], r8
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp], r11
	je	.label_712
	lea	rdi, [r8 - 1]
.label_560:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	byte ptr [rax + blanks],  0
	jne	.label_560
	lea	rsi, [r13 - 1]
	nop	word ptr cs:[rax + rax]
.label_620:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	byte ptr [rax + blanks],  0
	jne	.label_620
	mov	edx, dword ptr [rip + decimal_point]
	mov	ecx, dword ptr [rip + thousands_sep]
	call	strnumcmp
	mov	ebx, eax
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp]
	jmp	.label_556
	nop	word ptr cs:[rax + rax]
.label_712:
	mov	ecx, dword ptr [r15 + 0x34]
	test	cl, cl
	je	.label_660
	mov	rdi, r8
	lea	rsi, [rsp + 0xa0]
	call	strtold
	fstp	xword ptr [rsp + 0x28]
	mov	rdi, r13
	lea	rsi, [rsp + 0x98]
	call	strtold
	mov	rax, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 0x60]
	cmp	qword ptr [rsp + 0xa0], rcx
	je	.label_571
	mov	ebx, 1
	cmp	rax, r13
	je	.label_576
	fld	xword ptr [rsp + 0x28]
	fxch	st(1)
	fucomi	st(1)
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp]
	jbe	.label_579
	fstp	st(0)
	fstp	st(0)
	mov	ebx, 0xffffffff
	jmp	.label_586
.label_660:
	test	ch, 0xff
	je	.label_590
	lea	rdi, [r8 - 1]
	nop	word ptr [rax + rax]
.label_596:
	movzx	r11d, byte ptr [rdi + 1]
	inc	rdi
	cmp	byte ptr [r11 + blanks],  0
	jne	.label_596
	lea	rsi, [r13 - 1]
	nop	word ptr cs:[rax + rax]
.label_664:
	movzx	r8d, byte ptr [rsi + 1]
	inc	rsi
	cmp	byte ptr [r8 + blanks],  0
	jne	.label_664
	xor	ebp, ebp
	cmp	r11b, 0x2d
	sete	bpl
	lea	r14, [rbp + rdi + 1]
	mov	cl, byte ptr [rbp + rdi]
	movzx	r15d, cl
	lea	eax, [r15 - 0x30]
	cmp	eax, 9
	ja	.label_604
	add	rbp, rdi
	mov	r9d, dword ptr [rip + thousands_sep]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_609:
	cmp	dl, cl
	mov	r10b, cl
	jb	.label_608
	mov	r10b, dl
.label_608:
	movsx	eax, byte ptr [r14]
	mov	rbx, rbp
	add	rbx, 2
	cmp	eax, r9d
	mov	rbp, r14
	cmove	rbp, rbx
	lea	r14, [rbp + 1]
	movzx	ecx, byte ptr [rbp]
	movzx	r15d, cl
	lea	edx, [r15 - 0x30]
	cmp	edx, 0xa
	mov	dl, r10b
	jb	.label_609
	cmp	eax, r9d
	jne	.label_635
	jmp	.label_628
.label_571:
	fstp	st(0)
	cmp	rax, r13
	mov	ebx, 0
	mov	eax, 0xffffffff
	cmovne	ebx, eax
	jmp	.label_623
.label_576:
	fstp	st(0)
.label_623:
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp]
.label_586:
	fldz	
	fldz	
.label_633:
	fstp	st(1)
	fstp	st(0)
.label_556:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_632
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	jmp	.label_592
	nop	
.label_632:
	mov	al, byte ptr [rsp + 0xf]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	byte ptr [rcx + r11], al
	mov	al, byte ptr [rsp + 0xe]
	mov	byte ptr [r13 + r10], al
.label_592:
	test	ebx, ebx
	jne	.label_618
	mov	r15, qword ptr [r15 + 0x40]
	test	r15, r15
	je	.label_642
	cmp	qword ptr [r15 + 0x10], -1
	mov	rax, qword ptr [rsp + 0x88]
	mov	r14, qword ptr [rax]
	mov	r12, qword ptr [rax + 8]
	mov	rbx, qword ptr [rsp + 0x90]
	je	.label_644
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r15
	call	limfield
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, qword ptr [rbx]
	mov	rbx, qword ptr [rbx + 8]
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	call	limfield
	mov	rdi, rax
	jmp	.label_652
	nop	word ptr cs:[rax + rax]
.label_644:
	lea	rax, [r14 + r12 - 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, qword ptr [rbx]
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rbp + rbx - 1]
.label_652:
	cmp	qword ptr [r15], -1
	jne	.label_657
	cmp	byte ptr [r15 + 0x30], 0
	mov	r9, qword ptr [rsp + 0x10]
	je	.label_594
	jmp	.label_705
	nop	word ptr cs:[rax + rax]
.label_663:
	inc	r14
.label_705:
	cmp	r14, r9
	jae	.label_573
	movzx	eax, byte ptr [r14]
	cmp	byte ptr [rax + blanks],  0
	jne	.label_663
	jmp	.label_573
	nop	word ptr [rax + rax]
.label_669:
	inc	rbp
.label_573:
	cmp	rbp, rdi
	jae	.label_594
	movzx	eax, byte ptr [rbp]
	cmp	byte ptr [rax + blanks],  0
	jne	.label_669
	jmp	.label_594
.label_590:
	test	ecx, 0xff0000
	je	.label_671
	lea	rax, [r8 - 1]
	nop	
.label_675:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	byte ptr [rcx + blanks],  0
	jne	.label_675
	xor	r8d, r8d
	mov	r9d, 0xc
.label_693:
	lea	rsi, [r9 + r8]
	shr	rsi, 1
	mov	rdi, rsi
	shl	rdi, 4
	mov	rbp, qword ptr [rdi + monthtab]
	mov	cl, byte ptr [rbp]
	test	cl, cl
	je	.label_681
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_690:
	movzx	edx, byte ptr [rax + rbx]
	cmp	byte ptr [rdx + fold_toupper],  cl
	jb	.label_687
	ja	.label_689
	movzx	ecx, byte ptr [rbp + rbx + 1]
	inc	rbx
	test	cl, cl
	jne	.label_690
	jmp	.label_681
	nop	
.label_687:
	mov	r9, rsi
	jmp	.label_692
	nop	word ptr cs:[rax + rax]
.label_689:
	inc	rsi
	mov	r8, rsi
.label_692:
	xor	ebx, ebx
	cmp	r8, r9
	jb	.label_693
	jmp	.label_694
.label_579:
	fxch	st(1)
	fucomi	st(1)
	jbe	.label_695
	fstp	st(1)
	fstp	st(0)
	jmp	.label_586
.label_604:
	xor	r10d, r10d
.label_635:
	cmp	r15d, dword ptr [rip + decimal_point]
	jne	.label_697
	movzx	edx, byte ptr [r14]
	inc	r14
	lea	eax, [rdx - 0x30]
	mov	rbx, r14
	cmp	eax, 9
	ja	.label_628
	nop	word ptr cs:[rax + rax]
.label_706:
	cmp	r10b, dl
	jb	.label_704
	mov	dl, r10b
.label_704:
	mov	r10b, dl
	movzx	edx, byte ptr [rbx]
	inc	rbx
	mov	eax, edx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_706
	jmp	.label_628
.label_697:
	mov	rbx, r14
.label_628:
	xor	r12d, r12d
	cmp	r10b, 0x31
	jb	.label_710
	movzx	eax, byte ptr [rbx - 1]
	movsx	eax, byte ptr [rax + unit_order]
	mov	ecx, eax
	neg	ecx
	cmp	r11b, 0x2d
	cmovne	ecx, eax
	mov	r12d, ecx
.label_710:
	xor	eax, eax
	cmp	r8b, 0x2d
	sete	al
	lea	r11, [rax + rsi + 1]
	mov	cl, byte ptr [rax + rsi]
	movzx	r14d, cl
	lea	edx, [r14 - 0x30]
	cmp	edx, 9
	mov	r15, qword ptr [rsp + 0x10]
	ja	.label_539
	add	rax, rsi
	mov	r9d, dword ptr [rip + thousands_sep]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_624:
	cmp	bl, cl
	mov	r10b, cl
	jb	.label_613
	mov	r10b, bl
.label_613:
	movsx	edx, byte ptr [r11]
	mov	rbp, rax
	add	rbp, 2
	cmp	edx, r9d
	mov	rax, r11
	cmove	rax, rbp
	lea	r11, [rax + 1]
	movzx	ecx, byte ptr [rax]
	movzx	r14d, cl
	lea	ebx, [r14 - 0x30]
	cmp	ebx, 0xa
	mov	bl, r10b
	jb	.label_624
	cmp	edx, r9d
	mov	ebx, r12d
	jne	.label_565
	jmp	.label_566
.label_539:
	xor	r10d, r10d
	mov	ebx, r12d
.label_565:
	cmp	r14d, dword ptr [rip + decimal_point]
	jne	.label_709
	movzx	eax, byte ptr [r11]
	inc	r11
	lea	ecx, [rax - 0x30]
	mov	rbp, r11
	cmp	ecx, 9
	ja	.label_566
	nop	word ptr cs:[rax + rax]
.label_577:
	cmp	r10b, al
	jb	.label_581
	mov	al, r10b
.label_581:
	mov	r10b, al
	movzx	eax, byte ptr [rbp]
	inc	rbp
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_577
	jmp	.label_566
.label_709:
	mov	rbp, r11
.label_566:
	xor	eax, eax
	cmp	r10b, 0x31
	jb	.label_583
	movzx	eax, byte ptr [rbp - 1]
	movsx	ecx, byte ptr [rax + unit_order]
	mov	eax, ecx
	neg	eax
	cmp	r8b, 0x2d
	cmovne	eax, ecx
.label_583:
	sub	ebx, eax
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp]
	jne	.label_556
	mov	edx, dword ptr [rip + decimal_point]
	mov	ecx, dword ptr [rip + thousands_sep]
	call	strnumcmp
.label_578:
	mov	r11, qword ptr [rsp]
	mov	r10, qword ptr [rsp + 0x18]
	mov	ebx, eax
	jmp	.label_556
.label_681:
	mov	ebx, dword ptr [rdi + label_128]
.label_694:
	lea	rax, [r13 - 1]
	nop	dword ptr [rax + rax]
.label_603:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	byte ptr [rcx + blanks],  0
	jne	.label_603
	xor	r8d, r8d
	mov	r9d, 0xc
.label_619:
	mov	r14d, ebx
	lea	rsi, [r9 + r8]
	shr	rsi, 1
	mov	rdi, rsi
	shl	rdi, 4
	mov	rbp, qword ptr [rdi + monthtab]
	mov	cl, byte ptr [rbp]
	test	cl, cl
	je	.label_605
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_611:
	movzx	edx, byte ptr [rax + rbx]
	cmp	byte ptr [rdx + fold_toupper],  cl
	jb	.label_574
	ja	.label_610
	movzx	ecx, byte ptr [rbp + rbx + 1]
	inc	rbx
	test	cl, cl
	jne	.label_611
	jmp	.label_605
	nop	dword ptr [rax]
.label_574:
	mov	r9, rsi
	jmp	.label_615
	nop	word ptr cs:[rax + rax]
.label_610:
	inc	rsi
	mov	r8, rsi
.label_615:
	mov	ebx, r14d
	xor	ecx, ecx
	cmp	r8, r9
	jb	.label_619
	jmp	.label_648
.label_605:
	mov	ecx, dword ptr [rdi + label_128]
	mov	ebx, r14d
.label_648:
	sub	ebx, ecx
	jmp	.label_556
.label_696:
	test	r15, r15
	je	.label_626
	test	r12, r12
	jne	.label_629
	jmp	.label_674
.label_695:
	xor	ebx, ebx
	fucomi	st(1)
	jne	.label_631
	jnp	.label_633
.label_631:
	fxch	st(1)
	fucomip	st(0)
	mov	ebx, 0xffffffff
	fldz	
	fxch	st(1)
	jnp	.label_633
	fstp	st(1)
	fucomip	st(0)
	mov	ebx, 1
	fldz	
	fldz	
	jnp	.label_633
	fstp	st(1)
	fstp	st(0)
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x200], xmm0
	xor	esi, esi
	mov	rdi, qword ptr [rsp + 0x60]
	call	strtold
	fstp	xword ptr [rsp + 0x200]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	xor	esi, esi
	mov	rdi, r13
	call	strtold
	fstp	xword ptr [rsp + 0xc0]
	mov	edx, 0x10
	lea	rdi, [rsp + 0x200]
	lea	rsi, [rsp + 0xc0]
	call	memcmp
	mov	r11, qword ptr [rsp]
	mov	r10, qword ptr [rsp + 0x18]
	mov	ebx, eax
	jmp	.label_586
.label_671:
	movzx	eax, ax
	cmp	eax, 0x100
	jae	.label_654
	cmp	byte ptr [r15 + 0x38], 0
	je	.label_656
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsi, r13
	call	filevercmp
	mov	r10, qword ptr [rsp + 0x18]
	mov	ebx, eax
	mov	r11, qword ptr [rsp]
	jmp	.label_556
.label_626:
	test	rdx, rdx
	je	.label_662
	mov	ebx, 1
	test	r10, r10
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_618
	test	r12, r12
	je	.label_665
	nop	
.label_670:
	cmp	rbp, rdi
	jae	.label_588
	cmp	r14, r9
	jae	.label_588
	movzx	eax, byte ptr [r14]
	inc	r14
	movzx	ebx, byte ptr [r12 + rax]
	movzx	eax, byte ptr [rbp]
	inc	rbp
	movzx	eax, byte ptr [r12 + rax]
	sub	ebx, eax
	je	.label_670
	jmp	.label_542
.label_654:
	mov	esi, OFFSET FLAT:random_md5_state
	mov	edx, 0x9c
	lea	rdi, [rsp + 0x15c]
	call	memcpy
	mov	esi, OFFSET FLAT:random_md5_state
	mov	edx, 0x9c
	lea	rdi, [rsp + 0xc0]
	call	memcpy
	mov	rax, qword ptr [rsp + 0x18]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x38], rcx
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	mov	r12d, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x78], r13
	mov	rdx, qword ptr [rsp]
	mov	r14, rdx
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r15, rcx
	je	.label_684
	lea	rsi, [rcx + rdx]
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rsi + rax]
	mov	qword ptr [rsp + 0x48], rdi
	lea	rax, [rax + rdx]
	lea	rdx, [rax + rax*2 + 2]
	mov	rbx, rcx
	mov	qword ptr [rsp + 0x40], rsi
	lea	rbp, [rsp + 0x200]
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	mov	r13d, 0xfa0
	mov	qword ptr [rsp + 0x80], rdx
	nop	
.label_621:
	mov	rax, r13
	cmp	rax, rdx
	jae	.label_702
	mov	r14, rbx
	lea	rbx, [rax + rax*2]
	shr	rbx, 1
	cmp	rdx, rbx
	cmova	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	rdi, rbx
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	mov	r13d, 0xfa0
	cmovne	r13, rbx
	mov	rbx, r14
	mov	rcx, rbp
	mov	qword ptr [rsp + 0x38], rcx
	lea	rax, [rsp + 0x200]
	cmove	rbp, rax
.label_702:
	mov	r12, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x58], rbp
	cmp	rbx, qword ptr [rsp + 0x50]
	mov	r14d, 0
	mov	r15, r13
	jae	.label_540
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	mov	rdx, r15
	call	xstrxfrm
	mov	r14, rax
	inc	r14
.label_540:
	mov	r13, r12
	cmp	r13, qword ptr [rsp + 0x48]
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	jae	.label_549
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rax + r14]
	mov	rdx, r15
	sub	rdx, r14
	mov	eax, 0
	cmovb	rdi, rax
	cmovb	rdx, rax
	mov	rsi, r13
	call	xstrxfrm
	inc	rax
	mov	qword ptr [rsp + 0x28], rax
.label_549:
	cmp	r15, r14
	setb	cl
	mov	rax, qword ptr [rsp + 0x28]
	lea	rax, [rax + r14]
	cmp	rax, r15
	ja	.label_564
	test	cl, cl
	je	.label_567
.label_564:
	lea	r15, [rax + rax*2]
	shr	r15, 1
	movabs	rcx, 0x5555555555555555
	cmp	rax, rcx
	cmovae	r15, rax
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	rdi, r15
	call	xmalloc
	mov	rcx, rbx
	mov	rbx, rax
	mov	r12, rcx
	cmp	rcx, qword ptr [rsp + 0x50]
	jae	.label_575
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r14
	call	strxfrm
.label_575:
	cmp	r13, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x38], rbx
	jae	.label_584
	mov	rdi, rbx
	add	rdi, r14
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x28]
	call	strxfrm
.label_584:
	mov	qword ptr [rsp + 0x58], rbx
	mov	rbx, r12
.label_567:
	cmp	rbx, qword ptr [rsp + 0x50]
	jae	.label_593
	mov	rdi, rbx
	call	strlen
	lea	rbx, [rbx + rax + 1]
.label_593:
	cmp	r13, qword ptr [rsp + 0x48]
	jae	.label_597
	mov	rdi, r13
	call	strlen
	lea	r13, [r13 + rax + 1]
.label_597:
	cmp	rbx, qword ptr [rsp + 0x50]
	jb	.label_667
	xor	r12d, r12d
	cmp	r13, qword ptr [rsp + 0x48]
	jae	.label_601
.label_667:
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	rax, r13
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x40], rax
	mov	rdi, r15
	mov	rsi, rbp
	lea	rdx, [rsp + 0xc0]
	call	md5_process_bytes
	mov	qword ptr [rsp + 0x68], rbx
	lea	rbx, [r15 + rbp]
	mov	rdi, rbx
	mov	rsi, r14
	lea	rdx, [rsp + 0x15c]
	call	md5_process_bytes
	xor	r12d, r12d
	cmp	rbp, r14
	cmovb	r14, rbp
	seta	r12b
	sbb	r12d, 0
	mov	rbp, r15
	mov	rdi, r15
	mov	rsi, rbx
	mov	rbx, qword ptr [rsp + 0x68]
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	cmovne	r12d, eax
	test	r12d, r12d
	mov	rdx, qword ptr [rsp + 0x80]
	je	.label_621
	mov	r15, rbp
	mov	rbp, r13
	jmp	.label_653
	nop	word ptr cs:[rax + rax]
.label_682:
	mov	rdi, r15
	mov	rsi, r14
	lea	rdx, [rsp + 0xc0]
	call	md5_process_bytes
	add	r14, r15
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rdx, [rsp + 0x15c]
	call	md5_process_bytes
	mov	rdx, qword ptr [rsp + 0x80]
.label_653:
	cmp	rbp, rdx
	jae	.label_638
	mov	r14, rbx
	lea	rbx, [rbp + rbp*2]
	shr	rbx, 1
	cmp	rdx, rbx
	cmova	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	rdi, rbx
	call	malloc
	test	rax, rax
	mov	ebp, 0xfa0
	cmovne	rbp, rbx
	mov	rbx, r14
	mov	rcx, rax
	mov	qword ptr [rsp + 0x38], rcx
	mov	r15, rax
	lea	rax, [rsp + 0x200]
	cmove	r15, rax
.label_638:
	cmp	rbx, qword ptr [rsp + 0x50]
	mov	r14d, 0
	jae	.label_650
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, rbp
	call	xstrxfrm
	mov	r14, rax
	inc	r14
.label_650:
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, qword ptr [rsp + 0x48]
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	jae	.label_606
	lea	rdi, [r15 + r14]
	mov	rdx, rbp
	sub	rdx, r14
	mov	eax, 0
	cmovb	rdi, rax
	cmovb	rdx, rax
	mov	rsi, qword ptr [rsp + 0x40]
	call	xstrxfrm
	inc	rax
	mov	qword ptr [rsp + 0x28], rax
.label_606:
	cmp	rbp, r14
	setb	cl
	mov	rax, qword ptr [rsp + 0x28]
	lea	rax, [rax + r14]
	cmp	rax, rbp
	ja	.label_546
	test	cl, cl
	je	.label_666
.label_546:
	lea	rbp, [rax + rax*2]
	shr	rbp, 1
	movabs	rcx, 0x5555555555555555
	cmp	rax, rcx
	cmovae	rbp, rax
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	rdi, rbp
	call	xmalloc
	mov	rcx, rbx
	mov	rbx, rax
	mov	qword ptr [rsp + 0x68], rcx
	cmp	rcx, qword ptr [rsp + 0x50]
	jae	.label_672
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, r14
	call	strxfrm
.label_672:
	mov	rsi, qword ptr [rsp + 0x40]
	cmp	rsi, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x38], rbx
	jae	.label_680
	mov	rdi, rbx
	add	rdi, r14
	mov	rdx, qword ptr [rsp + 0x28]
	call	strxfrm
.label_680:
	mov	r15, rbx
	mov	rbx, qword ptr [rsp + 0x68]
.label_666:
	cmp	rbx, qword ptr [rsp + 0x50]
	jae	.label_686
	mov	r13, r15
	mov	rdi, rbx
	call	strlen
	lea	rbx, [rbx + rax + 1]
	jmp	.label_691
	nop	dword ptr [rax + rax]
.label_686:
	mov	r13, r15
.label_691:
	mov	r15, qword ptr [rsp + 0x40]
	cmp	r15, qword ptr [rsp + 0x48]
	jae	.label_641
	mov	rdi, r15
	call	strlen
	lea	r15, [r15 + rax + 1]
	mov	qword ptr [rsp + 0x40], r15
.label_641:
	mov	r15, r13
	cmp	rbx, qword ptr [rsp + 0x50]
	jb	.label_682
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, qword ptr [rsp + 0x48]
	jb	.label_682
	jmp	.label_698
.label_713:
	inc	r14
	inc	rbp
.label_629:
	xor	eax, eax
	cmp	r14, r9
	jae	.label_701
	nop	word ptr cs:[rax + rax]
.label_707:
	movzx	esi, byte ptr [r14]
	mov	dl, 1
	cmp	byte ptr [r15 + rsi], 0
	je	.label_589
	inc	r14
	cmp	r14, r9
	jb	.label_707
	xor	edx, edx
	jmp	.label_589
.label_701:
	xor	edx, edx
	jmp	.label_589
	nop	dword ptr [rax]
.label_711:
	inc	rbp
.label_589:
	cmp	rbp, rdi
	jae	.label_557
	movzx	esi, byte ptr [rbp]
	cmp	byte ptr [r15 + rsi], 0
	jne	.label_711
	test	dl, dl
	je	.label_561
	movzx	eax, byte ptr [r14]
	movzx	ebx, byte ptr [r12 + rax]
	movzx	eax, byte ptr [r12 + rsi]
	sub	ebx, eax
	je	.label_713
	jmp	.label_542
.label_562:
	inc	r14
	inc	rbp
.label_674:
	xor	eax, eax
	cmp	r14, r9
	jae	.label_544
	nop	word ptr cs:[rax + rax]
.label_552:
	movzx	esi, byte ptr [r14]
	mov	dl, 1
	cmp	byte ptr [r15 + rsi], 0
	je	.label_548
	inc	r14
	cmp	r14, r9
	jb	.label_552
	xor	edx, edx
	jmp	.label_548
.label_544:
	xor	edx, edx
	jmp	.label_548
	nop	dword ptr [rax]
.label_558:
	inc	rbp
.label_548:
	cmp	rbp, rdi
	jae	.label_557
	movzx	esi, byte ptr [rbp]
	cmp	byte ptr [r15 + rsi], 0
	jne	.label_558
	test	dl, dl
	je	.label_561
	movzx	ebx, byte ptr [r14]
	sub	ebx, esi
	je	.label_562
	jmp	.label_542
.label_662:
	neg	r10
	sbb	ebx, ebx
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_592
.label_656:
	mov	r11, qword ptr [rsp]
	test	r11, r11
	je	.label_569
	mov	ebx, 1
	test	r10, r10
	je	.label_556
	lea	rsi, [r11 + 1]
	lea	rcx, [r10 + 1]
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rdx, r13
	call	xmemcoll0
	jmp	.label_578
.label_601:
	mov	r15, qword ptr [rsp + 0x58]
.label_698:
	lea	r13, [r15 + r14]
.label_684:
	mov	rdi, r15
	mov	rsi, r14
	lea	rbx, [rsp + 0xc0]
	mov	rdx, rbx
	call	md5_process_bytes
	mov	rdi, rbx
	lea	rbp, [rsp + 0xa0]
	mov	rsi, rbp
	call	md5_finish_ctx
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rbx, [rsp + 0x15c]
	mov	rdx, rbx
	call	md5_process_bytes
	mov	rdi, rbx
	lea	rbx, [rsp + 0xb0]
	mov	rsi, rbx
	call	md5_finish_ctx
	mov	edx, 0x10
	mov	rdi, rbp
	mov	rsi, rbx
	call	memcmp
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_602
	test	r12d, r12d
	mov	ebx, r12d
	jne	.label_602
	mov	rax, qword ptr [rsp + 0x28]
	cmp	r14, rax
	mov	rdx, rax
	cmovb	rdx, r14
	mov	rdi, r15
	mov	rsi, r13
	call	memcmp
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_602
	xor	ebx, ebx
	cmp	r14, qword ptr [rsp + 0x28]
	seta	bl
	sbb	ebx, 0
.label_602:
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	r15, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp]
	mov	r13, qword ptr [rsp + 0x78]
	jmp	.label_556
.label_665:
	cmp	rdx, r10
	mov	rbx, rdx
	mov	rdx, r10
	cmovb	rdx, rbx
	mov	rdi, r14
	mov	rsi, rbp
	mov	rbp, r10
	call	memcmp
	mov	rdx, rbx
	mov	r10, rbp
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_618
.label_588:
	xor	eax, eax
	cmp	rdx, r10
	setne	cl
	mov	ebx, 0xffffffff
	jb	.label_618
	mov	al, cl
	mov	ebx, eax
	jmp	.label_592
.label_569:
	mov	rax, r10
	neg	rax
	sbb	ebx, ebx
	jmp	.label_556
.label_561:
	mov	eax, 1
	xor	edx, edx
.label_557:
	mov	r15, qword ptr [rsp + 0x10]
	movzx	ebx, dl
	sub	ebx, eax
	jmp	.label_592
.label_618:
	mov	cl, byte ptr [r15 + 0x37]
.label_661:
	mov	eax, ebx
	neg	eax
	test	cl, cl
	cmove	eax, ebx
	jmp	.label_700
.label_642:
	xor	ecx, ecx
	mov	al, byte ptr [rip + unique]
	test	al, al
	mov	rdx, qword ptr [rsp + 0x90]
	mov	rdi, qword ptr [rsp + 0x88]
	jne	.label_636
	mov	al, byte ptr [rip + stable]
	test	al, al
	jne	.label_636
.label_659:
	mov	rsi, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdx + 8]
	lea	rbx, [rcx - 1]
	mov	rbp, rsi
	dec	rbp
	je	.label_580
	mov	eax, 1
	test	rbx, rbx
	je	.label_645
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	mov	rdi, qword ptr [rdi]
	mov	rdx, qword ptr [rdx]
	je	.label_647
	call	xmemcoll0
	jmp	.label_645
.label_580:
	neg	rbx
	sbb	eax, eax
.label_645:
	mov	ecx, eax
	neg	ecx
	cmp	byte ptr [rip + reverse],  0
	cmove	ecx, eax
.label_636:
	mov	eax, ecx
.label_700:
	add	rsp, 0x2148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_647:
	cmp	rbp, rbx
	mov	rax, rbx
	cmovb	rax, rbp
	mov	rsi, rdx
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	jne	.label_645
	xor	ecx, ecx
	cmp	rbp, rbx
	setne	cl
	mov	eax, 0xffffffff
	cmovae	eax, ecx
	jmp	.label_645
.label_542:
	shr	ecx, 0x18
	jmp	.label_661
	nop	
	.section	.text
	.align	32
	#Procedure 0x408eb0

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
	mov	r12, rdx
	mov	r15, rsi
	mov	rbp, qword ptr [rdi]
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbx, qword ptr [rdi + 8]
	lea	r14, [rbp + rbx]
	test	r12, r12
	jne	.label_723
	cmp	byte ptr [rip + debug],  1
	jne	.label_723
	test	rbx, rbx
	jle	.label_726
	dec	rbx
	mov	r12d, 0xa
	mov	r13d, 0x3e
	nop	
.label_724:
	test	rbx, rbx
	movsx	ecx, byte ptr [rbp]
	mov	eax, ecx
	cmove	eax, r12d
	cmp	ecx, 9
	cmove	eax, r13d
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	rcx, qword ptr [r15 + 0x30]
	jae	.label_714
	lea	rdx, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rdx
	mov	byte ptr [rcx], al
.label_748:
	inc	rbp
	dec	rbx
	cmp	rbp, r14
	jb	.label_724
	jmp	.label_726
.label_714:
	movzx	esi, al
	mov	rdi, r15
	call	__overflow
	cmp	eax, -1
	jne	.label_748
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_733
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdi, rax
	call	sort_die
.label_723:
	mov	al, byte ptr [rip + eolchar]
	test	al, al
	jne	.label_732
	mov	al, 0xa
	jmp	.label_740
.label_732:
	xor	eax, eax
.label_740:
	mov	byte ptr [rbp + rbx - 1], al
	mov	esi, 1
	mov	rdi, rbp
	mov	rdx, rbx
	mov	rcx, r15
	call	fwrite_unlocked
	cmp	rax, rbx
	jne	.label_749
	mov	byte ptr [r14 - 1], 0
.label_716:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_726:
	mov	rbp, qword ptr [rip + keylist]
	jmp	.label_738
	nop	dword ptr [rax]
.label_763:
	mov	rbp, qword ptr [rbp + 0x40]
	test	rbp, rbp
	jne	.label_738
	mov	al, byte ptr [rip + unique]
	test	al, al
	jne	.label_716
	test	byte ptr [rip + stable],  1
	mov	ebp, 0
	je	.label_738
	jmp	.label_716
.label_728:
	mov	rdx, rsi
.label_718:
	cmp	r10b, 0x30
	mov	rsi, r12
	jb	.label_761
	dec	rdx
	test	r8b, r8b
	je	.label_764
	movzx	eax, byte ptr [rdx]
	cmp	byte ptr [rax + unit_order],  0
	setne	al
	jmp	.label_765
.label_764:
	xor	eax, eax
.label_765:
	movzx	eax, al
	add	rdx, rax
	mov	qword ptr [rsp + 8], rdx
	mov	rsi, rdx
	jmp	.label_761
.label_755:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_721
	nop	
.label_738:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rax]
	mov	r15, qword ptr [rax + 8]
	lea	r13, [r14 + r15 - 1]
	test	rbp, rbp
	je	.label_722
	mov	rbx, qword ptr [rbp]
	cmp	rbx, -1
	mov	r12, r14
	je	.label_730
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	begfield
	mov	r12, rax
.label_730:
	cmp	qword ptr [rbp + 0x10], -1
	je	.label_736
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	call	limfield
	mov	r13, rax
.label_736:
	mov	rax, qword ptr [rbp + 0x30]
	test	al, al
	sete	cl
	cmp	rbx, -1
	setne	dl
	movabs	rsi, 0xff000000000000
	test	rax, rsi
	jne	.label_742
	or	cl, dl
	je	.label_742
	mov	ecx, eax
	shr	ecx, 0x10
	test	cl, cl
	jne	.label_742
	shr	rax, 0x20
	movzx	ecx, ax
	cmp	ecx, 0xff
	ja	.label_742
	test	al, al
	jne	.label_742
	mov	r15, rbp
	jmp	.label_747
	nop	word ptr [rax + rax]
.label_742:
	mov	r11b, byte ptr [r13]
	mov	byte ptr [r13], 0
	dec	r12
	nop	dword ptr [rax]
.label_762:
	mov	rax, r12
	lea	r12, [rax + 1]
	movzx	ecx, byte ptr [rax + 1]
	cmp	byte ptr [rcx + blanks],  0
	jne	.label_762
	mov	qword ptr [rsp + 8], r12
	cmp	r13, r12
	jb	.label_754
	cmp	byte ptr [rbp + 0x36], 0
	je	.label_766
	mov	r9, rbp
	nop	
.label_715:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	byte ptr [rcx + blanks],  0
	jne	.label_715
	xor	r8d, r8d
	mov	edx, 0xc
.label_744:
	lea	rdi, [rdx + r8]
	shr	rdi, 1
	mov	rsi, rdi
	shl	rsi, 4
	mov	rbp, qword ptr [rsi + monthtab]
	mov	bl, byte ptr [rbp]
	test	bl, bl
	je	.label_720
	inc	rbp
	mov	rsi, rax
	nop	
.label_735:
	movzx	ecx, byte ptr [rsi]
	cmp	byte ptr [rcx + fold_toupper],  bl
	jb	.label_743
	ja	.label_734
	inc	rsi
	movzx	ebx, byte ptr [rbp]
	inc	rbp
	test	bl, bl
	jne	.label_735
	jmp	.label_737
.label_743:
	mov	rdx, rdi
	jmp	.label_729
	nop	word ptr cs:[rax + rax]
.label_734:
	inc	rdi
	mov	r8, rdi
.label_729:
	cmp	r8, rdx
	jb	.label_744
	mov	rsi, r12
	jmp	.label_746
.label_722:
	mov	r15, rbp
	mov	r12, r14
	jmp	.label_747
.label_766:
	movzx	r8d, word ptr [rbp + 0x34]
	test	r8b, r8b
	je	.label_750
	mov	rdi, r12
	lea	rsi, [rsp + 8]
	mov	ebx, r11d
	call	strtold
	fstp	st(0)
	mov	r11d, ebx
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_761
.label_750:
	shr	r8d, 8
	mov	al, byte ptr [rbp + 0x32]
	or	al, r8b
	je	.label_754
	cmp	r12, r13
	jae	.label_757
	cmp	byte ptr [r12], 0x2d
	sete	al
	jmp	.label_759
.label_754:
	mov	qword ptr [rsp + 8], r13
	mov	rsi, r13
	jmp	.label_761
.label_720:
	mov	rsi, rax
.label_737:
	mov	qword ptr [rsp + 8], rsi
.label_746:
	mov	rbp, r9
.label_761:
	mov	r15, rbp
	mov	byte ptr [r13], r11b
	mov	r13, rsi
.label_747:
	mov	rsi, r12
	sub	rsi, r14
	xor	edx, edx
	mov	rdi, r14
	call	mbsnwidth
	cmp	r12, r14
	movsxd	rbp, eax
	jbe	.label_768
	nop	word ptr [rax + rax]
.label_719:
	xor	eax, eax
	cmp	byte ptr [r14], 9
	lea	r14, [r14 + 1]
	sete	al
	add	rbp, rax
	cmp	r12, r14
	jne	.label_719
.label_768:
	mov	rsi, r13
	sub	rsi, r12
	xor	edx, edx
	mov	rdi, r12
	call	mbsnwidth
	movsxd	rbx, eax
	cmp	r12, r13
	jae	.label_727
	nop	dword ptr [rax]
.label_731:
	xor	eax, eax
	cmp	byte ptr [r12], 9
	lea	r12, [r12 + 1]
	sete	al
	add	rbx, rax
	cmp	r13, r12
	jne	.label_731
	jmp	.label_727
	nop	dword ptr [rax]
.label_756:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_727:
	test	rbp, rbp
	je	.label_741
	dec	rbp
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_756
	mov	esi, 0x20
	call	__overflow
	jmp	.label_727
.label_741:
	test	rbx, rbx
	mov	rbp, r15
	jne	.label_745
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_753
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	jmp	.label_721
.label_757:
	xor	eax, eax
.label_759:
	movzx	edi, al
	lea	rsi, [rdi + r12 + 1]
	mov	al, byte ptr [rdi + r12]
	movzx	ebx, al
	lea	ecx, [rbx - 0x30]
	cmp	ecx, 9
	ja	.label_760
	mov	r15d, r11d
	mov	r11, rbp
	add	rdi, r12
	mov	r9d, dword ptr [rip + thousands_sep]
	xor	ecx, ecx
	nop	
.label_767:
	cmp	cl, al
	mov	r10b, al
	jb	.label_758
	mov	r10b, cl
.label_758:
	movsx	ebp, byte ptr [rsi]
	mov	rdx, rdi
	add	rdx, 2
	cmp	ebp, r9d
	mov	rdi, rsi
	cmove	rdi, rdx
	lea	rsi, [rdi + 1]
	movzx	eax, byte ptr [rdi]
	movzx	ebx, al
	lea	ecx, [rbx - 0x30]
	cmp	ecx, 0xa
	mov	cl, r10b
	jb	.label_767
	cmp	ebp, r9d
	mov	rbp, r11
	mov	r11d, r15d
	je	.label_718
	jmp	.label_725
.label_760:
	xor	r10d, r10d
.label_725:
	cmp	ebx, dword ptr [rip + decimal_point]
	jne	.label_728
	movzx	edi, byte ptr [rsi]
	inc	rsi
	lea	eax, [rdi - 0x30]
	mov	rdx, rsi
	cmp	eax, 9
	ja	.label_718
	nop	dword ptr [rax + rax]
.label_739:
	cmp	r10b, dil
	jb	.label_717
	mov	dil, r10b
.label_717:
	mov	r10b, dil
	movzx	edi, byte ptr [rdx]
	inc	rdx
	mov	eax, edi
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_739
	jmp	.label_718
.label_752:
	mov	esi, 0x5f
	call	__overflow
	jmp	.label_751
	nop	dword ptr [rax]
.label_745:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_752
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5f
.label_751:
	dec	rbx
	jne	.label_745
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_755
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_721:
	test	rbp, rbp
	jne	.label_763
	jmp	.label_716
.label_749:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_733
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r12
	call	sort_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409400

	.globl limfield
	.type limfield, @function
limfield:
	lea	rax, [rdi + rsi - 1]
	mov	r9, qword ptr [rdx + 0x10]
	mov	r8, qword ptr [rdx + 0x18]
	cmp	r8, 1
	adc	r9, 0
	mov	ecx, dword ptr [rip + tab]
	cmp	ecx, 0x80
	jne	.label_769
	cmp	rax, rdi
	jbe	.label_775
	nop	dword ptr [rax]
.label_783:
	test	r9, r9
	jne	.label_781
	jmp	.label_775
	nop	word ptr [rax + rax]
.label_773:
	inc	rdi
.label_781:
	cmp	rdi, rax
	jae	.label_777
	movzx	ecx, byte ptr [rdi]
	cmp	byte ptr [rcx + blanks],  0
	jne	.label_773
	jmp	.label_777
	nop	word ptr cs:[rax + rax]
.label_782:
	inc	rdi
.label_777:
	cmp	rdi, rax
	jae	.label_771
	movzx	ecx, byte ptr [rdi]
	cmp	byte ptr [rcx + blanks],  0
	je	.label_782
.label_771:
	dec	r9
	cmp	rdi, rax
	jb	.label_783
	jmp	.label_775
.label_769:
	cmp	rax, rdi
	jbe	.label_775
	nop	word ptr cs:[rax + rax]
.label_784:
	test	r9, r9
	je	.label_775
	dec	r9
	jmp	.label_778
	nop	word ptr [rax + rax]
.label_780:
	inc	rdi
.label_778:
	cmp	rdi, rax
	jae	.label_776
	movsx	esi, byte ptr [rdi]
	cmp	esi, ecx
	jne	.label_780
	lea	r10, [rdi + 1]
	mov	rsi, r9
	or	rsi, r8
	cmovne	rdi, r10
.label_776:
	cmp	rdi, rax
	jb	.label_784
.label_775:
	test	r8, r8
	je	.label_770
	cmp	byte ptr [rdx + 0x31], 0
	jne	.label_772
	jmp	.label_774
	nop	
.label_779:
	inc	rdi
.label_772:
	cmp	rdi, rax
	jae	.label_774
	movzx	ecx, byte ptr [rdi]
	cmp	byte ptr [rcx + blanks],  0
	jne	.label_779
.label_774:
	add	rdi, r8
	cmp	rax, rdi
	cmovb	rdi, rax
.label_770:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409500

	.globl begfield
	.type begfield, @function
begfield:
	lea	rax, [rdi + rsi - 1]
	mov	r9, qword ptr [rdx]
	mov	r8, qword ptr [rdx + 8]
	mov	ecx, dword ptr [rip + tab]
	cmp	ecx, 0x80
	jne	.label_785
	cmp	rax, rdi
	jbe	.label_788
	nop	word ptr cs:[rax + rax]
.label_797:
	test	r9, r9
	jne	.label_795
	jmp	.label_788
	nop	word ptr [rax + rax]
.label_796:
	inc	rdi
.label_795:
	cmp	rdi, rax
	jae	.label_789
	movzx	ecx, byte ptr [rdi]
	cmp	byte ptr [rcx + blanks],  0
	jne	.label_796
	jmp	.label_789
	nop	word ptr cs:[rax + rax]
.label_793:
	inc	rdi
.label_789:
	cmp	rdi, rax
	jae	.label_791
	movzx	ecx, byte ptr [rdi]
	cmp	byte ptr [rcx + blanks],  0
	je	.label_793
.label_791:
	dec	r9
	cmp	rdi, rax
	jb	.label_797
	jmp	.label_788
.label_785:
	cmp	rax, rdi
	jbe	.label_788
	nop	word ptr cs:[rax + rax]
.label_794:
	test	r9, r9
	je	.label_788
	nop	word ptr cs:[rax + rax]
.label_792:
	cmp	rdi, rax
	jae	.label_790
	movsx	esi, byte ptr [rdi]
	inc	rdi
	cmp	esi, ecx
	jne	.label_792
.label_790:
	dec	r9
	cmp	rdi, rax
	jb	.label_794
.label_788:
	cmp	byte ptr [rdx + 0x30], 0
	jne	.label_798
	jmp	.label_787
	nop	
.label_786:
	inc	rdi
.label_798:
	cmp	rdi, rax
	jae	.label_787
	movzx	ecx, byte ptr [rdi]
	cmp	byte ptr [rcx + blanks],  0
	jne	.label_786
.label_787:
	add	rdi, r8
	cmp	rax, rdi
	cmovb	rdi, rax
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095f0

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
	jne	.label_802
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_802:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_799
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_800
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_801
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
	#Procedure 0x4096b0

	.globl move_fd
	.type move_fd, @function
move_fd:
	push	rbx
	mov	ebx, edi
	cmp	ebx, esi
	jne	.label_803
	pop	rbx
	ret	
.label_803:
	mov	edi, ebx
	call	dup2
	mov	edi, ebx
	pop	rbx
	jmp	close
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096d0

	.globl open_input_files
	.type open_input_files, @function
open_input_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	rax, r14
	shr	rax, 0x3c
	jne	.label_812
	lea	rdi, [r14*8]
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [rbx], r15
	xor	ebx, ebx
	test	r14, r14
	je	.label_804
	add	r12, 8
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x10], r15
	jmp	.label_808
	nop	
.label_807:
	inc	rbx
	add	r12, 0x10
	cmp	rbx, r14
	jb	.label_808
	jmp	.label_804
.label_813:
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	cmp	ebp, 0x18
	jne	.label_809
	mov	edi, r13d
	call	close
	mov	dword ptr [r15], 0x18
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_805
.label_808:
	mov	rbp, qword ptr [r12]
	test	rbp, rbp
	je	.label_815
	movzx	eax, byte ptr [rbp + 0xc]
	test	al, al
	je	.label_815
	cmp	al, 1
	jne	.label_810
	mov	r13d, dword ptr [rbp + 8]
	mov	dword ptr [rsp + 8], r13d
	mov	rdi, qword ptr [rip + proctab]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_810
	mov	byte ptr [rax + 0xc], 2
	mov	edi, r13d
	call	reap
.label_810:
	lea	rdi, [rbp + 0xd]
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13d, eax
	test	r13d, r13d
	mov	eax, 0
	js	.label_805
	mov	esi, 9
	lea	rdi, [rsp]
	call	pipe_fork
	cmp	eax, -1
	je	.label_813
	test	eax, eax
	je	.label_814
	mov	dword ptr [rbp + 8], eax
	mov	rax, qword ptr [rip + proctab]
	test	rax, rax
	jne	.label_816
	mov	edi, 0x2f
	xor	esi, esi
	mov	edx, OFFSET FLAT:proctab_hasher
	mov	ecx, OFFSET FLAT:proctab_comparator
	xor	r8d, r8d
	call	hash_initialize
	mov	qword ptr [rip + proctab],  rax
	test	rax, rax
	je	.label_806
.label_816:
	mov	byte ptr [rbp + 0xc], 1
	mov	rdi, rax
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_806
	mov	edi, r13d
	call	close
	mov	edi, dword ptr [rsp + 4]
	call	close
	mov	edi, dword ptr [rsp]
	mov	esi, OFFSET FLAT:label_181
	call	fdopen
	test	rax, rax
	jne	.label_805
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, dword ptr [rsp]
	call	close
	mov	dword ptr [rbp], r15d
	mov	r15, qword ptr [rsp + 0x10]
	xor	eax, eax
	jmp	.label_805
	nop	dword ptr [rax + rax]
.label_815:
	mov	rdi, qword ptr [r12 - 8]
	mov	esi, OFFSET FLAT:label_181
	call	stream_open
.label_805:
	mov	qword ptr [r15 + rbx*8], rax
	test	rax, rax
	jne	.label_807
.label_804:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_814:
	mov	edi, dword ptr [rsp]
	call	close
	xor	esi, esi
	mov	edi, r13d
	call	move_fd
	mov	edi, dword ptr [rsp + 4]
	mov	esi, 1
	call	move_fd
	mov	rdi, qword ptr [rip + compress_program]
	mov	edx, OFFSET FLAT:label_811
	xor	ecx, ecx
	xor	eax, eax
	mov	rsi, rdi
	call	execlp
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	esi, OFFSET FLAT:label_817
	call	async_safe_die
.label_806:
	call	xalloc_die
.label_809:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_818
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + compress_program]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_812:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409940

	.globl mergefps
	.type mergefps, @function
mergefps:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	qword ptr [rsp + 0x40], r9
	mov	qword ptr [rsp + 0xa0], r8
	mov	qword ptr [rsp + 0x98], rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x88], rsi
	mov	r15, rdi
	movabs	rax, 0x24924924924924a
	cmp	rbp, rax
	jae	.label_861
	imul	rdi, rbp, 0x38
	call	xmalloc
	mov	r13, rax
	lea	rbx, [rbp*8]
	mov	rdi, rbx
	call	xmalloc
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, rbx
	call	xmalloc
	mov	qword ptr [rsp + 0x50], rax
	mov	rdi, rbx
	call	xmalloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rip + keylist]
	mov	qword ptr [rsp + 0x130], rax
	mov	qword ptr [rsp + 0xd0], 0
	test	rbp, rbp
	mov	r12, qword ptr [rsp + 0x40]
	je	.label_842
	mov	qword ptr [rsp + 0x18], r13
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x70], rax
	lea	rax, [r12 + 8]
	mov	qword ptr [rsp + 0xb8], rax
	mov	qword ptr [rsp + 0xc8], r15
	lea	rax, [r15 + 0x10]
	mov	qword ptr [rsp + 0xb0], rax
	mov	qword ptr [rsp + 0x68], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	r12, qword ptr [rsp + 0x40]
.label_883:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, rcx
	not	rsi
	mov	rdx, -2
	sub	rdx, rcx
	imul	rdi, rcx, 0x38
	mov	rax, qword ptr [rsp + 0x18]
	lea	rbx, [rax + rdi]
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi + 0x18]
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, rcx
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0xc8]
	add	rsi, rbp
	mov	qword ptr [rsp + 0x80], rsi
	add	rdx, rbp
	mov	qword ptr [rsp + 0xc0], rdx
	mov	rcx, rbp
	neg	rcx
	mov	rax, qword ptr [rsp + 0x68]
	lea	eax, [rbp + rax]
	xor	edx, edx
	mov	qword ptr [rsp + 0x78], rdi
	nop	
.label_874:
	mov	dword ptr [rsp + 0x90], eax
	and	al, 3
	movzx	r13d, al
	mov	qword ptr [rsp + 0x48], rcx
	lea	r15, [rcx + r13]
	neg	r13
	mov	rax, qword ptr [rsp + 0x80]
	sub	rax, rdx
	mov	qword ptr [rsp + 8], rax
	mov	r14, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0x38], rdx
	sub	r14, rdx
	mov	rcx, qword ptr [rip + merge_buffer_size]
	mov	rax, qword ptr [rip + sort_size]
	xor	edx, edx
	mov	qword ptr [rsp + 0x30], rbp
	div	rbp
	cmp	rcx, rax
	cmova	rax, rcx
	nop	dword ptr [rax + rax]
.label_881:
	mov	ecx, eax
	and	ecx, 0x1f
	mov	ebp, 0x20
	sub	rbp, rcx
	add	rbp, rax
	mov	rdi, rbp
	call	malloc
	mov	qword ptr [rbx], rax
	test	rax, rax
	jne	.label_827
	mov	rax, rbp
	shr	rax, 1
	cmp	rbp, 0x43
	ja	.label_881
	jmp	.label_822
	nop	word ptr cs:[rax + rax]
.label_827:
	mov	qword ptr [rsp + 0x60], r14
	mov	rcx, qword ptr [rsp + 0x58]
	mov	qword ptr [rcx], rbp
	mov	eax, 0x20
	movq	xmm0, rax
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rcx + 8], xmm0
	mov	byte ptr [rcx + 0x18], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx - 0x10], xmm0
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [r12 + rbp*8]
	mov	r14, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [r14]
	mov	rdi, rbx
	call	fillbuf
	test	al, al
	jne	.label_836
	mov	rdi, qword ptr [r12 + rbp*8]
	mov	rsi, qword ptr [r14]
	call	xfclose
	mov	rax, qword ptr [rsp + 0x88]
	cmp	rbp, rax
	jae	.label_873
	dec	rax
	mov	qword ptr [rsp + 0x88], rax
	mov	rdi, qword ptr [r14]
	call	zaptemp
.label_873:
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp + 0x30]
	dec	rax
	mov	rsi, rax
	cmp	rbp, rax
	jae	.label_882
	mov	rdi, qword ptr [rsp + 8]
	and	edi, 3
	cmp	qword ptr [rsp + 0x60], 3
	mov	rax, rbp
	jb	.label_886
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rax, rbp
	nop	word ptr cs:[rax + rax]
.label_889:
	movups	xmm0, xmmword ptr [rcx - 0x30]
	movups	xmmword ptr [rcx - 0x40], xmm0
	mov	rdx, qword ptr [r12 + rax*8 + 8]
	mov	qword ptr [r12 + rax*8], rdx
	movups	xmm0, xmmword ptr [rcx - 0x20]
	movups	xmmword ptr [rcx - 0x30], xmm0
	mov	rdx, qword ptr [r12 + rax*8 + 0x10]
	mov	qword ptr [r12 + rax*8 + 8], rdx
	movups	xmm0, xmmword ptr [rcx - 0x10]
	movups	xmmword ptr [rcx - 0x20], xmm0
	mov	rdx, qword ptr [r12 + rax*8 + 0x18]
	mov	qword ptr [r12 + rax*8 + 0x10], rdx
	movdqu	xmm0, xmmword ptr [rcx]
	movdqu	xmmword ptr [rcx - 0x10], xmm0
	mov	rdx, qword ptr [r12 + rax*8 + 0x20]
	mov	qword ptr [r12 + rax*8 + 0x18], rdx
	add	rcx, 0x40
	lea	rdx, [r15 + rax + 4]
	lea	rax, [rax + 4]
	cmp	rdx, -1
	jne	.label_889
.label_886:
	test	rdi, rdi
	je	.label_831
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rcx, [rcx + rax*8]
	shl	rax, 4
	add	rax, qword ptr [rsp + 0xb0]
	nop	dword ptr [rax + rax]
.label_860:
	movdqu	xmm0, xmmword ptr [rax]
	movdqu	xmmword ptr [rax - 0x10], xmm0
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rcx - 8], rdx
	add	rcx, 8
	add	rax, 0x10
	inc	r13
	jne	.label_860
.label_831:
	mov	rdx, qword ptr [rsp + 0x38]
	inc	rdx
	mov	rcx, qword ptr [rsp + 0x48]
	inc	rcx
	mov	eax, dword ptr [rsp + 0x90]
	add	al, 3
	mov	rbp, rsi
	cmp	qword ptr [rsp + 0x28], rbp
	jb	.label_874
	jmp	.label_843
	nop	word ptr cs:[rax + rax]
.label_836:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rcx]
	lea	rdx, [rax + rcx]
	lea	rax, [rax + rcx - 0x20]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rax + rcx + 0x10]
	shl	rax, 5
	sub	rdx, rax
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rax + rbp*8], rdx
	inc	rbp
	add	qword ptr [rsp + 0x70], 0x10
	dec	qword ptr [rsp + 0x68]
	mov	rax, rbp
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x28], rcx
	cmp	rax, rbp
	jb	.label_883
	jmp	.label_843
.label_882:
	mov	rbp, rsi
.label_843:
	test	rbp, rbp
	mov	r13, qword ptr [rsp + 0x18]
	je	.label_842
	xor	ecx, ecx
	cmp	rbp, 3
	mov	r13, rbp
	mov	rbx, qword ptr [rsp + 0x10]
	jbe	.label_846
	xor	ecx, ecx
	mov	rax, r13
	and	rax, 0xfffffffffffffffc
	je	.label_846
	lea	rdi, [rax - 4]
	mov	rsi, rdi
	shr	rsi, 2
	lea	ecx, [rsi + 1]
	and	ecx, 3
	mov	edx, 1
	cmp	rdi, 0xc
	jae	.label_863
	movq	xmm0, rdx
	pslldq	xmm0, 8
	jmp	.label_862
.label_863:
	lea	rdx, [rcx - 1]
	sub	rdx, rsi
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_851]
	movdqa	xmm9, xmmword ptr [rip + label_852]
	movdqa	xmm10, xmmword ptr [rip + label_867]
	movdqa	xmm11, xmmword ptr [rip + label_868]
	movdqa	xmm5, xmmword ptr [rip + label_869]
	movdqa	xmm6, xmmword ptr [rip + label_870]
	movdqa	xmm7, xmmword ptr [rip + label_871]
	movdqa	xmm1, xmmword ptr [rip + label_872]
	nop	word ptr cs:[rax + rax]
.label_894:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rsi, xmm0
	movdqu	xmmword ptr [rbx + rsi*8], xmm0
	movdqu	xmmword ptr [rbx + rsi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rsi, xmm3
	movdqu	xmmword ptr [rbx + rsi*8], xmm3
	movdqu	xmmword ptr [rbx + rsi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rsi, xmm4
	movdqu	xmmword ptr [rbx + rsi*8], xmm4
	movdqu	xmmword ptr [rbx + rsi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rsi, xmm3
	movdqu	xmmword ptr [rbx + rsi*8], xmm3
	movdqu	xmmword ptr [rbx + rsi*8 + 0x10], xmm2
	add	rdx, 4
	jne	.label_894
.label_862:
	test	rcx, rcx
	je	.label_864
	neg	rcx
	movdqa	xmm1, xmmword ptr [rip + label_851]
	movdqa	xmm2, xmmword ptr [rip + label_852]
	nop	word ptr cs:[rax + rax]
.label_830:
	movdqa	xmm3, xmm0
	movq	rdx, xmm0
	movdqu	xmmword ptr [rbx + rdx*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rbx + rdx*8 + 0x10], xmm0
	inc	rcx
	movdqa	xmm0, xmm3
	jne	.label_830
.label_864:
	cmp	r13, rax
	mov	rcx, rax
	je	.label_885
	nop	dword ptr [rax]
.label_846:
	mov	qword ptr [rbx + rcx*8], rcx
	inc	rcx
	cmp	r13, rcx
	jne	.label_846
.label_885:
	cmp	r13, 2
	jb	.label_890
	mov	ebx, 1
	mov	rbp, qword ptr [rsp + 0x10]
	nop	dword ptr [rax]
.label_837:
	mov	r15, qword ptr [rbp + rbx*8 - 8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rax + r15*8]
	mov	r14, qword ptr [rbp + rbx*8]
	mov	rsi, qword ptr [rax + r14*8]
	call	compare
	test	eax, eax
	jle	.label_828
	mov	qword ptr [rbp + rbx*8 - 8], r14
	mov	qword ptr [rbp + rbx*8], r15
	xor	ebx, ebx
.label_828:
	inc	rbx
	cmp	rbx, r13
	jb	.label_837
.label_890:
	test	r13, r13
	mov	rax, r13
	mov	r12, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0xc8]
	je	.label_842
	lea	rcx, [rax - 1]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rsi
	add	rdx, 8
	mov	qword ptr [rsp + 0x38], rdx
	mov	rdx, qword ptr [rsp + 0x50]
	add	rdx, 0x10
	mov	qword ptr [rsp + 0x118], rdx
	mov	rdx, qword ptr [rsp + 0x20]
	add	rdx, 0x10
	mov	qword ptr [rsp + 0x110], rdx
	lea	rdx, [r13 + 0x70]
	mov	rdi, rsi
	mov	qword ptr [rsp + 0x108], rdx
	lea	rdx, [rbp + 0x20]
	mov	qword ptr [rsp + 0x100], rdx
	lea	rdx, [r12 + 0x10]
	mov	qword ptr [rsp + 0xf8], rdx
	mov	edx, 1
	sub	rdx, rax
	mov	qword ptr [rsp + 0xf0], rdx
	lea	rsi, [rax - 5]
	xor	r10d, r10d
	mov	qword ptr [rsp + 0x120], rcx
	mov	rbx, rcx
	lea	rcx, [rax - 2]
	mov	qword ptr [rsp + 0x78], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x48], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x90], rcx
	nop	dword ptr [rax]
.label_826:
	mov	r15, rax
	mov	qword ptr [rsp + 0xc0], rsi
	mov	rax, rsi
	shr	rax, 2
	lea	edx, [rax + 1]
	and	edx, 3
	mov	rcx, rdx
	neg	rcx
	mov	qword ptr [rsp + 0xb0], rcx
	dec	rdx
	sub	rdx, rax
	mov	qword ptr [rsp + 0x70], rdx
	mov	qword ptr [rsp + 0x80], rbx
	mov	eax, ebx
	and	eax, 1
	mov	rcx, r15
	sub	rcx, rax
	mov	qword ptr [rsp + 0x128], rcx
	mov	rax, qword ptr [rsp + 0x120]
	sub	rax, r10
	mov	qword ptr [rsp + 0x60], rax
	lea	rax, [rax - 4]
	mov	qword ptr [rsp + 0xa8], rax
	shr	rax, 2
	inc	rax
	mov	qword ptr [rsp + 0x68], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rsp + 0x58], r10
	sub	rax, r10
	mov	qword ptr [rsp + 0xb8], rax
	lea	rax, [r15 - 1]
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 0x28], r15
	jmp	.label_892
	nop	dword ptr [rax]
.label_847:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rdi + rcx*8], rbp
	mov	r15, qword ptr [rsp + 0x28]
.label_892:
	mov	rbp, qword ptr [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rax + rbp*8]
	cmp	byte ptr [rip + unique],  1
	jne	.label_875
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_841
	mov	rsi, r13
	call	compare
	test	eax, eax
	je	.label_834
	lea	rdi, [rsp + 0xd0]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp + 0xa0]
	call	write_line
.label_841:
	mov	rdx, qword ptr [r13 + 8]
	mov	rax, qword ptr [rsp + 0x90]
	cmp	rax, rdx
	jae	.label_857
	nop	dword ptr [rax + rax]
.label_821:
	test	rax, rax
	je	.label_819
	add	rax, rax
	cmp	rax, rdx
	jb	.label_821
	jmp	.label_824
	nop	
.label_875:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp + 0xa0]
	call	write_line
	jmp	.label_834
.label_857:
	mov	rdi, qword ptr [rsp + 0xd0]
	jmp	.label_838
.label_819:
	mov	rax, rdx
.label_824:
	mov	rdi, qword ptr [rsp + 0xd0]
	mov	rbx, rax
	call	free
	mov	rax, rbx
	mov	qword ptr [rsp + 0x90], rax
	mov	rdi, rbx
	call	xmalloc
	mov	rdi, rax
	mov	qword ptr [rsp + 0xd0], rdi
	mov	rdx, qword ptr [r13 + 8]
.label_838:
	mov	qword ptr [rsp + 0xd8], rdx
	mov	rsi, qword ptr [r13]
	call	memcpy
	cmp	qword ptr [rsp + 0x130], 0
	je	.label_859
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rcx, qword ptr [r13]
	mov	rdx, qword ptr [r13 + 0x10]
	sub	rdx, rcx
	add	rdx, rax
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rdx, qword ptr [r13 + 0x18]
	sub	rdx, rcx
	add	rdx, rax
	mov	qword ptr [rsp + 0xe8], rdx
.label_859:
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0x48], rax
.label_834:
	mov	rax, qword ptr [rsp + 0x50]
	cmp	qword ptr [rax + rbp*8], r13
	jae	.label_835
	add	r13, -0x20
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + rbp*8], r13
	jmp	.label_888
	nop	
.label_835:
	imul	r14, rbp, 0x38
	mov	rbx, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rdi, [rbp + r14]
	mov	rsi, qword ptr [r12 + rbx*8]
	mov	rax, rbx
	shl	rax, 4
	mov	r13, qword ptr [rsp + 0xc8]
	mov	rdx, qword ptr [r13 + rax]
	call	fillbuf
	test	al, al
	je	.label_825
	mov	rax, qword ptr [rbp + r14]
	mov	rcx, qword ptr [rbp + r14 + 0x18]
	lea	rdx, [rax + rcx]
	lea	r13, [rax + rcx - 0x20]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	mov	rax, qword ptr [rbp + r14 + 0x10]
	shl	rax, 5
	sub	rdx, rax
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rax + rbx*8], rdx
	mov	rbp, rbx
.label_888:
	cmp	r15, 2
	mov	ecx, 0
	jb	.label_847
	mov	r14, rbp
	mov	ebx, 1
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r15d, 1
	nop	dword ptr [rax]
.label_876:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rdi, r13
	call	compare
	test	eax, eax
	js	.label_845
	sete	al
	cmp	r14, r12
	setb	cl
	lea	rdx, [rbx + 1]
	and	cl, al
	cmove	r15, rdx
	test	cl, cl
	cmove	rbx, rbp
.label_845:
	mov	rbp, rbx
	lea	rbx, [rbp + r15]
	shr	rbx, 1
	cmp	r15, rbp
	jb	.label_876
	mov	rax, r15
	dec	rax
	mov	ecx, 0
	mov	r12, qword ptr [rsp + 0x40]
	mov	rbp, r14
	je	.label_847
	cmp	rax, 4
	mov	edx, 0
	jb	.label_855
	mov	rcx, rax
	and	rcx, 0xfffffffffffffffc
	mov	edx, 0
	je	.label_855
	lea	rsi, [r15 - 5]
	mov	rbp, rsi
	shr	rbp, 2
	lea	edx, [rbp + 1]
	and	edx, 3
	cmp	rsi, 0xc
	mov	esi, 0
	mov	rbx, qword ptr [rsp + 0x10]
	jb	.label_895
	lea	rdi, [rdx - 1]
	sub	rdi, rbp
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_856:
	movups	xmm0, xmmword ptr [rbx + rsi*8 + 8]
	movups	xmm1, xmmword ptr [rbx + rsi*8 + 0x18]
	movups	xmmword ptr [rbx + rsi*8], xmm0
	movups	xmmword ptr [rbx + rsi*8 + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbx + rsi*8 + 0x28]
	movups	xmm1, xmmword ptr [rbx + rsi*8 + 0x38]
	movups	xmmword ptr [rbx + rsi*8 + 0x20], xmm0
	movups	xmmword ptr [rbx + rsi*8 + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbx + rsi*8 + 0x48]
	movups	xmm1, xmmword ptr [rbx + rsi*8 + 0x58]
	movups	xmmword ptr [rbx + rsi*8 + 0x40], xmm0
	movups	xmmword ptr [rbx + rsi*8 + 0x50], xmm1
	movdqu	xmm0, xmmword ptr [rbx + rsi*8 + 0x68]
	movdqu	xmm1, xmmword ptr [rbx + rsi*8 + 0x78]
	movdqu	xmmword ptr [rbx + rsi*8 + 0x60], xmm0
	movdqu	xmmword ptr [rbx + rsi*8 + 0x70], xmm1
	add	rsi, 0x10
	add	rdi, 4
	jne	.label_856
.label_895:
	test	rdx, rdx
	je	.label_891
	neg	rdx
	nop	word ptr cs:[rax + rax]
.label_820:
	mov	rdi, rsi
	or	rdi, 1
	movdqu	xmm0, xmmword ptr [rbx + rdi*8]
	movdqu	xmm1, xmmword ptr [rbx + rdi*8 + 0x10]
	movdqu	xmmword ptr [rbx + rsi*8], xmm0
	movdqu	xmmword ptr [rbx + rsi*8 + 0x10], xmm1
	add	rsi, 4
	inc	rdx
	jne	.label_820
.label_891:
	cmp	rax, rcx
	mov	rdx, rcx
	mov	r12, qword ptr [rsp + 0x40]
	mov	rbp, r14
	je	.label_878
	nop	word ptr cs:[rax + rax]
.label_855:
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rcx, [rcx + rdx*8]
	not	rdx
	add	rdx, r15
	nop	
.label_853:
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rcx - 8], rsi
	add	rcx, 8
	dec	rdx
	jne	.label_853
.label_878:
	mov	rcx, rax
	jmp	.label_847
	nop	dword ptr [rax + rax]
.label_825:
	mov	qword ptr [rsp + 8], rbx
	cmp	r15, 2
	jb	.label_832
	mov	rax, qword ptr [rsp + 0x60]
	and	eax, 1
	mov	rcx, qword ptr [rsp + 0x78]
	cmp	rcx, qword ptr [rsp + 0x58]
	jne	.label_823
	mov	ecx, 1
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_829
	nop	dword ptr [rax + rax]
.label_832:
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_839
	nop	word ptr [rax + rax]
.label_823:
	mov	ecx, 1
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x128]
	nop	word ptr cs:[rax + rax]
.label_865:
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rdx + rcx*8 - 8]
	cmp	rdx, rsi
	jbe	.label_854
	dec	rdx
	mov	rsi, qword ptr [rsp + 0x38]
	mov	qword ptr [rsi + rcx*8 - 8], rdx
.label_854:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsi + rcx*8 + 8]
	cmp	rdx, qword ptr [rsi]
	jbe	.label_858
	dec	rdx
	mov	rsi, qword ptr [rsp + 0x38]
	mov	qword ptr [rsi + rcx*8], rdx
.label_858:
	add	rcx, 2
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rdx]
	cmp	rdi, rcx
	jne	.label_865
.label_829:
	mov	qword ptr [rsp + 8], rsi
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x18]
	je	.label_839
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rdx + rcx*8]
	cmp	rax, qword ptr [rsp + 8]
	jbe	.label_879
	dec	rax
	mov	qword ptr [rdx + rcx*8], rax
.label_879:
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 8], rax
.label_839:
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, qword ptr [r12 + rbx*8]
	mov	r15, rbx
	shl	r15, 4
	mov	rsi, qword ptr [r13 + r15]
	call	xfclose
	mov	rcx, qword ptr [rsp + 0x88]
	cmp	rbx, rcx
	jae	.label_849
	lea	rax, [r13 + r15]
	dec	rcx
	mov	qword ptr [rsp + 0x88], rcx
	mov	rdi, qword ptr [rax]
	call	zaptemp
.label_849:
	mov	rbp, qword ptr [rsp + 8]
	imul	rbx, rbp, 0x38
	mov	rdi, qword ptr [r14 + rbx]
	call	free
	cmp	rbp, qword ptr [rsp + 0x30]
	jae	.label_833
	mov	r8, qword ptr [rsp + 0x60]
	sub	r8d, ebp
	and	r8d, 1
	cmp	qword ptr [rsp + 0xb8], rbp
	je	.label_840
	mov	rax, qword ptr [rsp + 0x118]
	lea	rcx, [rax + rbp*8]
	mov	rax, qword ptr [rsp + 0x110]
	lea	rdx, [rax + rbp*8]
	add	rbx, qword ptr [rsp + 0x108]
	add	r15, qword ptr [rsp + 0x100]
	mov	rax, qword ptr [rsp + 0xf8]
	lea	rsi, [rax + rbp*8]
	mov	r9, qword ptr [rsp + 0x80]
	sub	r9d, ebp
	and	r9d, 1
	add	r9, qword ptr [rsp + 0xf0]
	add	r9, rbp
	xor	eax, eax
	nop	dword ptr [rax]
.label_893:
	mov	rbp, qword ptr [rsi + rax*8 - 8]
	mov	qword ptr [rsi + rax*8 - 0x10], rbp
	movups	xmm0, xmmword ptr [r15 - 0x10]
	movups	xmmword ptr [r15 - 0x20], xmm0
	mov	rbp, qword ptr [rbx - 8]
	mov	qword ptr [rbx - 0x40], rbp
	movups	xmm0, xmmword ptr [rbx - 0x38]
	movups	xmm1, xmmword ptr [rbx - 0x28]
	movups	xmm2, xmmword ptr [rbx - 0x18]
	movups	xmmword ptr [rbx - 0x50], xmm2
	movups	xmmword ptr [rbx - 0x60], xmm1
	movups	xmmword ptr [rbx - 0x70], xmm0
	mov	rbp, qword ptr [rdx + rax*8 - 8]
	mov	qword ptr [rdx + rax*8 - 0x10], rbp
	mov	rbp, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx + rax*8 - 0x10], rbp
	mov	rbp, qword ptr [rsi + rax*8]
	mov	qword ptr [rsi + rax*8 - 8], rbp
	movups	xmm0, xmmword ptr [r15]
	movups	xmmword ptr [r15 - 0x10], xmm0
	mov	rbp, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx - 8], rbp
	movdqu	xmm0, xmmword ptr [rbx]
	movdqu	xmm1, xmmword ptr [rbx + 0x10]
	movdqu	xmm2, xmmword ptr [rbx + 0x20]
	movdqu	xmmword ptr [rbx - 0x18], xmm2
	movdqu	xmmword ptr [rbx - 0x28], xmm1
	movdqu	xmmword ptr [rbx - 0x38], xmm0
	mov	rbp, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rax*8 - 8], rbp
	mov	rbp, qword ptr [rcx + rax*8]
	mov	qword ptr [rcx + rax*8 - 8], rbp
	add	rax, 2
	add	rbx, 0x70
	add	r15, 0x20
	mov	rdi, r9
	add	rdi, rax
	jne	.label_893
	add	qword ptr [rsp + 8], rax
	mov	r12, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [rsp + 0x18]
.label_840:
	test	r8, r8
	mov	rdx, qword ptr [rsp + 8]
	je	.label_833
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [r12 + rdx*8 + 8]
	mov	qword ptr [r12 + rdx*8], rcx
	mov	rcx, rdx
	shl	rcx, 4
	shl	rax, 4
	movups	xmm0, xmmword ptr [r13 + rax]
	movups	xmmword ptr [r13 + rcx], xmm0
	imul	rax, rdx, 0x38
	mov	rcx, qword ptr [r14 + rax + 0x68]
	mov	qword ptr [r14 + rax + 0x30], rcx
	movdqu	xmm0, xmmword ptr [r14 + rax + 0x38]
	movdqu	xmm1, xmmword ptr [r14 + rax + 0x48]
	movdqu	xmm2, xmmword ptr [r14 + rax + 0x58]
	movdqu	xmmword ptr [r14 + rax + 0x20], xmm2
	movdqu	xmmword ptr [r14 + rax + 0x10], xmm1
	movdqu	xmmword ptr [r14 + rax], xmm0
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
.label_833:
	cmp	qword ptr [rsp + 0x30], 0
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	r10, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x10]
	je	.label_887
	mov	r9, qword ptr [rsp + 0x60]
	cmp	r9, 3
	mov	ecx, 0
	mov	rbp, qword ptr [rsp + 0x28]
	jbe	.label_866
	mov	r8, r9
	and	r8, 0xfffffffffffffffc
	mov	ecx, 0
	je	.label_866
	mov	rdx, qword ptr [rsp + 0x68]
	and	edx, 3
	cmp	qword ptr [rsp + 0xa8], 0xc
	mov	ecx, 0
	mov	rax, qword ptr [rsp + 0x70]
	jb	.label_884
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_850:
	movups	xmm0, xmmword ptr [rdi + rcx*8 + 8]
	movups	xmm1, xmmword ptr [rdi + rcx*8 + 0x18]
	movups	xmmword ptr [rdi + rcx*8], xmm0
	movups	xmmword ptr [rdi + rcx*8 + 0x10], xmm1
	movups	xmm0, xmmword ptr [rdi + rcx*8 + 0x28]
	movups	xmm1, xmmword ptr [rdi + rcx*8 + 0x38]
	movups	xmmword ptr [rdi + rcx*8 + 0x20], xmm0
	movups	xmmword ptr [rdi + rcx*8 + 0x30], xmm1
	movups	xmm0, xmmword ptr [rdi + rcx*8 + 0x48]
	movups	xmm1, xmmword ptr [rdi + rcx*8 + 0x58]
	movups	xmmword ptr [rdi + rcx*8 + 0x40], xmm0
	movups	xmmword ptr [rdi + rcx*8 + 0x50], xmm1
	movdqu	xmm0, xmmword ptr [rdi + rcx*8 + 0x68]
	movdqu	xmm1, xmmword ptr [rdi + rcx*8 + 0x78]
	movdqu	xmmword ptr [rdi + rcx*8 + 0x60], xmm0
	movdqu	xmmword ptr [rdi + rcx*8 + 0x70], xmm1
	add	rcx, 0x10
	add	rax, 4
	jne	.label_850
.label_884:
	test	rdx, rdx
	mov	rax, qword ptr [rsp + 0xb0]
	je	.label_877
	nop	word ptr [rax + rax]
.label_880:
	mov	rdx, rcx
	or	rdx, 1
	movdqu	xmm0, xmmword ptr [rdi + rdx*8]
	movdqu	xmm1, xmmword ptr [rdi + rdx*8 + 0x10]
	movdqu	xmmword ptr [rdi + rcx*8], xmm0
	movdqu	xmmword ptr [rdi + rcx*8 + 0x10], xmm1
	add	rcx, 4
	inc	rax
	jne	.label_880
.label_877:
	cmp	r9, r8
	mov	rcx, r8
	je	.label_844
	nop	
.label_866:
	inc	rcx
	nop	word ptr cs:[rax + rax]
.label_848:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	qword ptr [rdi + rcx*8 - 8], rax
	inc	rcx
	cmp	rbp, rcx
	jne	.label_848
.label_844:
	inc	r10
	inc	qword ptr [rsp + 0xf0]
	dec	rbx
	dec	rsi
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	jne	.label_826
.label_887:
	cmp	qword ptr [rsp + 0x48], 0
	mov	r13, qword ptr [rsp + 0x18]
	je	.label_842
	test	byte ptr [rip + unique],  1
	je	.label_842
	lea	rdi, [rsp + 0xd0]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp + 0xa0]
	call	write_line
	mov	rdi, qword ptr [rsp + 0xd0]
	call	free
.label_842:
	mov	rdi, qword ptr [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0xa0]
	call	xfclose
	mov	rdi, r12
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_822:
	call	xalloc_die
.label_861:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a8d0

	.globl maybe_create_temp
	.type maybe_create_temp, @function
maybe_create_temp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rax, qword ptr [rip + create_temp_file.temp_dir_index]
	mov	rcx, qword ptr [rip + temp_dirs]
	mov	r12, qword ptr [rcx + rax*8]
	mov	rdi, r12
	call	strlen
	mov	rbp, rax
	lea	rdi, [rbp + 0x20]
	and	rdi, 0xfffffffffffffff8
	call	xmalloc
	mov	r15, rax
	lea	rbx, [r15 + 0xd]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	memcpy
	movabs	rax, 0x58585874726f732f
	mov	qword ptr [r15 + rbp + 0xd], rax
	mov	dword ptr [r15 + rbp + 0x15], 0x585858
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rip + create_temp_file.temp_dir_index]
	inc	rax
	xor	ecx, ecx
	cmp	rax, qword ptr [rip + temp_dir_count]
	cmovne	rcx, rax
	mov	qword ptr [rip + create_temp_file.temp_dir_index],  rcx
	lea	rdx, [rsp + 0x28]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	call	pthread_sigmask
	test	eax, eax
	sete	byte ptr [rsp + 0x20]
	mov	esi, 0x80000
	mov	qword ptr [rsp + 0x10], rbx
	mov	rdi, rbx
	call	mkostemp_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_901
	mov	rax, qword ptr [rip + temptail]
	mov	qword ptr [rax], r15
	mov	qword ptr [rip + temptail],  r15
.label_901:
	call	__errno_location
	mov	r14, rax
	mov	r13d, dword ptr [r14]
	cmp	byte ptr [rsp + 0x20], 0
	je	.label_908
	mov	edi, 2
	xor	edx, edx
	lea	rsi, [rsp + 0x28]
	call	pthread_sigmask
.label_908:
	mov	dword ptr [r14], r13d
	test	ebp, ebp
	js	.label_899
	xor	eax, eax
	test	r15, r15
	je	.label_897
	mov	byte ptr [r15 + 0xc], 0
	cmp	qword ptr [rip + compress_program],  0
	je	.label_900
	lea	rdi, [rsp + 0x20]
	mov	esi, 4
	call	pipe_fork
	mov	dword ptr [r15 + 8], eax
	test	eax, eax
	jle	.label_896
	mov	edi, ebp
	call	close
	mov	edi, dword ptr [rsp + 0x20]
	call	close
	mov	ebp, dword ptr [rsp + 0x24]
	mov	rdi, qword ptr [rip + proctab]
	test	rdi, rdi
	jne	.label_905
	mov	edi, 0x2f
	xor	esi, esi
	mov	edx, OFFSET FLAT:proctab_hasher
	mov	ecx, OFFSET FLAT:proctab_comparator
	xor	r8d, r8d
	call	hash_initialize
	mov	rdi, rax
	mov	qword ptr [rip + proctab],  rdi
	test	rdi, rdi
	je	.label_909
.label_905:
	mov	byte ptr [r15 + 0xc], 1
	mov	rsi, r15
	call	hash_insert
	test	rax, rax
	jne	.label_900
	call	xalloc_die
.label_899:
	cmp	r13d, 0x18
	jne	.label_902
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_902
	mov	rdi, r15
	call	free
	xor	eax, eax
	jmp	.label_897
.label_896:
	je	.label_898
.label_900:
	mov	esi, OFFSET FLAT:label_385
	mov	edi, ebp
	call	fdopen
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
	test	rax, rax
	mov	rax, r15
	je	.label_903
.label_897:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_903:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_907
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x10]
	call	sort_die
.label_902:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_904
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
.label_898:
	mov	edi, dword ptr [rsp + 0x24]
	call	close
	mov	esi, 1
	mov	edi, ebp
	call	move_fd
	mov	edi, dword ptr [rsp + 0x20]
	xor	esi, esi
	call	move_fd
	mov	rdi, qword ptr [rip + compress_program]
	xor	edx, edx
	xor	eax, eax
	mov	rsi, rdi
	call	execlp
	mov	edi, dword ptr [r14]
	mov	esi, OFFSET FLAT:label_906
	call	async_safe_die
.label_909:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab60

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
	mov	r12, rsi
	mov	rbx, rdi
	mov	esi, 0x80000
	call	rpl_pipe2
	mov	r13d, 0xffffffff
	test	eax, eax
	js	.label_910
	mov	eax, dword ptr [rip + nmerge]
	inc	eax
	cmp	eax, dword ptr [rip + nprocs]
	jae	.label_913
	mov	edi, 0xffffffff
	call	reap
	cmp	dword ptr [rip + nprocs],  0
	jle	.label_913
	nop	word ptr cs:[rax + rax]
.label_914:
	xor	edi, edi
	call	reap
	test	eax, eax
	je	.label_913
	mov	eax, dword ptr [rip + nprocs]
	test	eax, eax
	jg	.label_914
.label_913:
	test	r12, r12
	je	.label_916
	mov	qword ptr [rsp + 8], rbx
	movsd	xmm0, qword ptr [rip + label_918]
	movsd	qword ptr [rsp], xmm0
	lea	r15, [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_915:
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	pthread_sigmask
	test	eax, eax
	sete	byte ptr [rsp + 0x10]
	mov	r14, qword ptr [rip + temphead]
	mov	qword ptr [rip + temphead],  0
	call	fork
	mov	r13d, eax
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r13d, r13d
	je	.label_921
	mov	qword ptr [rip + temphead],  r14
.label_921:
	cmp	byte ptr [rsp + 0x10], 0
	je	.label_912
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	pthread_sigmask
.label_912:
	mov	dword ptr [rbx], ebp
	test	r13d, r13d
	jns	.label_917
	cmp	ebp, 0xb
	jne	.label_917
	dec	r12
	movsd	xmm0, qword ptr [rsp]
	call	xnanosleep
	cmp	dword ptr [rip + nprocs],  0
	jle	.label_919
	nop	
.label_911:
	xor	edi, edi
	call	reap
	test	eax, eax
	je	.label_919
	mov	eax, dword ptr [rip + nprocs]
	test	eax, eax
	jg	.label_911
.label_919:
	movsd	xmm0, qword ptr [rsp]
	addsd	xmm0, xmm0
	movsd	qword ptr [rsp], xmm0
	test	r12, r12
	jne	.label_915
.label_917:
	test	r13d, r13d
	js	.label_920
	je	.label_916
	inc	dword ptr [rip + nprocs]
	jmp	.label_910
.label_916:
	xor	r13d, r13d
	xor	edi, edi
	call	close
	mov	edi, 1
	call	close
	jmp	.label_910
.label_920:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rbp, qword ptr [rsp + 8]
	mov	edi, dword ptr [rbp]
	call	close
	mov	edi, dword ptr [rbp + 4]
	call	close
	mov	dword ptr [rbx], r14d
.label_910:
	mov	eax, r13d
	add	rsp, 0x98
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
	#Procedure 0x40ad10

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
	je	.label_923
	lea	rsi, [rsp + 0xc]
	mov	edi, ebp
	call	inttostr
	mov	rbx, rax
	mov	edi, 2
	mov	esi, OFFSET FLAT:label_924
	mov	edx, 8
	call	write
	mov	rdi, rbx
	call	strlen
	mov	edi, 2
	mov	rsi, rbx
	mov	rdx, rax
	call	write
.label_923:
	mov	edi, 2
	mov	esi, OFFSET FLAT:label_922
	mov	edx, 1
	call	write
	mov	edi, 2
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x40ad90

	.globl reap
	.type reap, @function
reap:
	push	rbp
	push	rbx
	sub	rsp, 0x18
	mov	ebp, edi
	cmp	ebp, 1
	sbb	edi, edi
	or	edi, ebp
	xor	edx, edx
	test	ebp, ebp
	sete	dl
	lea	rsi, [rsp + 4]
	call	waitpid
	mov	ebx, eax
	test	ebx, ebx
	js	.label_925
	je	.label_927
	test	ebp, ebp
	jg	.label_928
	mov	dword ptr [rsp + 0x10], ebx
	mov	rdi, qword ptr [rip + proctab]
	lea	rsi, [rsp + 8]
	call	hash_delete
	test	rax, rax
	je	.label_927
	mov	byte ptr [rax + 0xc], 2
.label_928:
	movzx	eax, word ptr [rsp + 4]
	test	ax, 0xff7f
	jne	.label_930
	dec	dword ptr [rip + nprocs]
.label_927:
	mov	eax, ebx
	add	rsp, 0x18
	pop	rbx
	pop	rbp
	ret	
.label_925:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_929
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + compress_program]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_930:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_926
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + compress_program]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ae70

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
	#Procedure 0x40ae80

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
	#Procedure 0x40ae90

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
.label_932:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp]
	lea	rax, [rbx + 0xd]
	cmp	rax, r14
	jne	.label_932
	cmp	byte ptr [rbx + 0xc], 1
	jne	.label_931
	mov	r15d, dword ptr [rbx + 8]
	mov	dword ptr [rsp + 0x18], r15d
	mov	rdi, qword ptr [rip + proctab]
	lea	rsi, [rsp + 0x10]
	call	hash_delete
	test	rax, rax
	je	.label_931
	mov	byte ptr [rax + 0xc], 2
	mov	edi, r15d
	call	reap
.label_931:
	mov	r12, qword ptr [rbx]
	lea	r15, [rsp + 0x18]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	pthread_sigmask
	test	eax, eax
	sete	byte ptr [rsp + 0x10]
	mov	rdi, r14
	call	unlink
	mov	r13d, eax
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rbp], r12
	cmp	byte ptr [rsp + 0x10], 0
	je	.label_935
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	pthread_sigmask
.label_935:
	test	r13d, r13d
	je	.label_936
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_933
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, r15
	call	error
.label_936:
	test	r12, r12
	jne	.label_934
	mov	qword ptr [rip + temptail],  rbp
.label_934:
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
	.section	.text
	.align	32
	#Procedure 0x40afa0

	.globl sortlines
	.type sortlines, @function
sortlines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r14, rcx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, qword ptr [r14 + 0x28]
	mov	r15, qword ptr [r14 + 0x30]
	mov	r13, r12
	shr	r13, 1
	mov	qword ptr [rsp + 0x80], rbx
	mov	qword ptr [rsp + 0x88], r13
	mov	qword ptr [rsp + 0x50], rdx
	mov	qword ptr [rsp + 0x90], rdx
	mov	rax, qword ptr [r14 + 0x40]
	mov	qword ptr [rsp + 0x98], rax
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp + 0xa0], r8
	mov	qword ptr [rsp + 0x38], r9
	mov	qword ptr [rsp + 0xa8], r9
	mov	qword ptr [rsp + 0xb0], rcx
	cmp	r12, 2
	jb	.label_945
	lea	rax, [r15 + rbp]
	cmp	rax, 0x20000
	jb	.label_945
	lea	rdi, [rsp + 0x78]
	lea	rcx, [rsp + 0x80]
	xor	esi, esi
	mov	edx, OFFSET FLAT:sortlines_thread
	call	pthread_create
	test	eax, eax
	mov	rbp, qword ptr [r14 + 0x28]
	je	.label_956
	mov	r15, qword ptr [r14 + 0x30]
.label_945:
	mov	rax, qword ptr [rsp + 0x50]
	shl	rax, 5
	mov	r12, rbx
	sub	r12, rax
	cmp	r15, 2
	jb	.label_960
	mov	rax, rbp
	shl	rax, 5
	mov	rdi, rbx
	sub	rdi, rax
	mov	rax, rbp
	shl	rax, 4
	and	rax, 0xffffffffffffffe0
	mov	rdx, r12
	sub	rdx, rax
	xor	ecx, ecx
	mov	rsi, r15
	call	sequential_sort
.label_960:
	cmp	rbp, 2
	jb	.label_978
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r12
	call	sequential_sort
.label_978:
	mov	qword ptr [r14], rbx
	shl	rbp, 5
	sub	rbx, rbp
	mov	qword ptr [r14 + 8], rbx
	mov	qword ptr [r14 + 0x10], rbx
	shl	r15, 5
	sub	rbx, r15
	mov	qword ptr [r14 + 0x18], rbx
	mov	r13, qword ptr [rsp + 8]
	lea	rbx, [r13 + 8]
	mov	rdi, rbx
	call	pthread_mutex_lock
	mov	rdi, qword ptr [r13]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	lea	rbp, [r13 + 0x30]
	mov	rdi, rbp
	call	pthread_cond_signal
	mov	rdi, rbx
	call	pthread_mutex_unlock
	mov	qword ptr [rsp + 0x70], rbx
	mov	qword ptr [rsp + 0x68], rbp
	jmp	.label_996
	nop	dword ptr [rax + rax]
.label_974:
	mov	rdi, qword ptr [rsp + 0x60]
	call	pthread_mutex_unlock
.label_996:
	mov	rdi, rbx
	call	pthread_mutex_lock
	jmp	.label_946
	nop	word ptr cs:[rax + rax]
.label_955:
	mov	rdi, rbp
	mov	rsi, rbx
	call	pthread_cond_wait
.label_946:
	mov	rdi, qword ptr [r13]
	call	heap_remove_top
	mov	r12, rax
	test	r12, r12
	je	.label_955
	mov	rdi, rbx
	call	pthread_mutex_unlock
	lea	rdi, [r12 + 0x58]
	mov	qword ptr [rsp + 0x60], rdi
	call	pthread_mutex_lock
	mov	byte ptr [r12 + 0x54], 0
	mov	eax, dword ptr [r12 + 0x50]
	test	eax, eax
	je	.label_965
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	ecx, [rax + rax + 2]
	mov	rdx, qword ptr [rsp + 0x50]
	shr	rdx, cl
	lea	rbx, [rdx + 1]
	cmp	eax, 1
	mov	qword ptr [rsp + 0x48], rsi
	mov	qword ptr [rsp + 0x28], r12
	mov	qword ptr [rsp + 0x58], rdi
	jne	.label_970
	mov	rax, qword ptr [r12 + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	cmp	rdi, rax
	je	.label_983
	mov	rdx, qword ptr [r12 + 0x18]
	mov	qword ptr [rsp + 0x10], rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x30], rsi
	mov	rbp, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x18], rdx
	nop	dword ptr [rax]
.label_994:
	mov	r15, rbx
	cmp	rbp, rdx
	je	.label_992
	test	r15, r15
	je	.label_997
	lea	r13, [r12 - 0x20]
	mov	rbx, rbp
	lea	rbp, [rbx - 0x20]
	mov	rdi, r13
	mov	rsi, rbp
	call	compare
	test	eax, eax
	jle	.label_958
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + 8], rbp
	cmp	byte ptr [rip + unique],  1
	jne	.label_964
	cmp	qword ptr [rip + saved_line],  0
	je	.label_986
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, rbp
	call	compare
	test	eax, eax
	je	.label_951
.label_986:
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [rip + label_113],  xmm1
	movups	xmmword ptr [rip + saved_line],  xmm0
.label_964:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0xf0]
	call	write_line
.label_951:
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x30], rbp
	mov	r13, r12
	jmp	.label_967
	nop	word ptr [rax + rax]
.label_958:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r13
	cmp	byte ptr [rip + unique],  1
	mov	rbp, rbx
	jne	.label_981
	cmp	qword ptr [rip + saved_line],  0
	je	.label_979
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, r13
	call	compare
	test	eax, eax
	je	.label_984
.label_979:
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmmword ptr [rip + label_113],  xmm1
	movups	xmmword ptr [rip + saved_line],  xmm0
.label_981:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0xf0]
	call	write_line
.label_984:
	mov	r14, r13
	mov	qword ptr [rsp + 0x40], r13
.label_967:
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rbx, [r15 - 1]
	cmp	r13, qword ptr [rsp + 0x20]
	mov	r12, r13
	jne	.label_994
	mov	r12, qword ptr [rsp + 0x20]
.label_997:
	dec	r15
	mov	rdx, rbp
.label_992:
	mov	rbx, r15
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp + 0x30]
	jmp	.label_939
	nop	dword ptr [rax]
.label_970:
	mov	r8, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [r12 + 0x20]
	mov	rax, qword ptr [rcx]
	cmp	rdi, r8
	mov	qword ptr [rsp + 0x30], rcx
	je	.label_944
	mov	rbp, qword ptr [r12 + 0x18]
	mov	qword ptr [rsp + 0x18], rbp
	cmp	rsi, rbp
	je	.label_952
	neg	rdx
	mov	r15, rsi
	mov	r14, rdi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x10], r8
	nop	
.label_999:
	mov	r13, rax
	mov	rbx, rdx
	cmp	rbx, 1
	je	.label_963
	mov	r12, rbx
	mov	qword ptr [rsp + 0x20], rbp
	lea	rbp, [rbp - 0x20]
	lea	rbx, [r15 - 0x20]
	mov	rdi, rbp
	mov	rsi, rbx
	call	compare
	test	eax, eax
	jle	.label_975
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + 8], rbx
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	movups	xmmword ptr [r13 - 0x20], xmm0
	mov	r15, rbx
	mov	rbx, r12
	mov	r12, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_977
	nop	
.label_975:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], rbp
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	movups	xmmword ptr [r13 - 0x20], xmm0
	mov	r14, rbp
	mov	rbx, r12
	mov	r12, rax
	mov	r8, qword ptr [rsp + 0x10]
.label_977:
	cmp	rbp, r8
	je	.label_995
	lea	rax, [r13 - 0x20]
	lea	rdx, [rbx + 1]
	cmp	r15, qword ptr [rsp + 0x18]
	jne	.label_999
	mov	rax, rbp
	jmp	.label_938
.label_983:
	mov	qword ptr [rsp + 0x10], rsi
	mov	r14, rdi
	mov	r12, rdi
	mov	rdx, rsi
	mov	rbp, rdi
	mov	rax, rsi
.label_939:
	mov	rdi, rsi
	sub	rdi, rax
	sar	rdi, 5
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rcx + 0x30]
	cmp	rsi, rdi
	jne	.label_987
	cmp	r12, qword ptr [rsp + 0x20]
	je	.label_953
	test	rbx, rbx
	mov	r13, qword ptr [rsp + 8]
	je	.label_957
	mov	qword ptr [rsp + 0x18], rdi
	add	r12, -0x20
	mov	ebp, 1
	sub	rbp, rbx
	mov	r14, r12
	mov	r15, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x20]
	nop	dword ptr [rax + rax]
.label_949:
	mov	qword ptr [r12], r14
	cmp	byte ptr [rip + unique],  1
	jne	.label_973
	cmp	qword ptr [rip + saved_line],  0
	je	.label_976
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, r14
	call	compare
	test	eax, eax
	je	.label_982
.label_976:
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmmword ptr [rip + label_113],  xmm1
	movups	xmmword ptr [rip + saved_line],  xmm0
.label_973:
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0xf0]
	call	write_line
.label_982:
	cmp	rbx, r14
	lea	r14, [r14 - 0x20]
	je	.label_991
	test	rbp, rbp
	lea	rbp, [rbp + 1]
	jne	.label_949
.label_991:
	add	r14, 0x20
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_941
	nop	word ptr cs:[rax + rax]
.label_987:
	mov	rax, qword ptr [rsp + 0x58]
	sub	rax, rbp
	sar	rax, 5
	cmp	qword ptr [rcx + 0x28], rax
	mov	r12, rcx
	jne	.label_937
	test	rbx, rbx
	je	.label_937
	mov	r13, qword ptr [r12 + 0x18]
	cmp	rdx, r13
	je	.label_937
	mov	qword ptr [rsp + 0x20], rsi
	add	rdx, -0x20
	mov	ebp, 1
	sub	rbp, rbx
	mov	rbx, rdx
	nop	word ptr cs:[rax + rax]
.label_940:
	mov	qword ptr [r12 + 8], rbx
	cmp	byte ptr [rip + unique],  1
	jne	.label_993
	cmp	qword ptr [rip + saved_line],  0
	je	.label_961
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, rbx
	call	compare
	test	eax, eax
	je	.label_969
.label_961:
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [rip + label_113],  xmm1
	movups	xmmword ptr [rip + saved_line],  xmm0
.label_993:
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0xf0]
	call	write_line
.label_969:
	cmp	r13, rbx
	lea	rbx, [rbx - 0x20]
	je	.label_990
	test	rbp, rbp
	lea	rbp, [rbp + 1]
	jne	.label_940
.label_990:
	mov	r15, rbx
	add	r15, 0x20
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_941
.label_944:
	mov	r15, rsi
	mov	r14, rdi
	mov	rdx, rdi
	mov	rbp, rdi
	mov	rcx, rdi
	jmp	.label_988
.label_937:
	mov	rdi, rsi
	mov	r13, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_941
.label_952:
	mov	r15, rsi
	mov	r14, rdi
	mov	rbp, rdi
	mov	rcx, rdi
	jmp	.label_998
.label_963:
	mov	rcx, rbp
	jmp	.label_1001
.label_995:
	mov	rax, r8
.label_938:
	mov	rcx, rbp
	add	r13, -0x20
	mov	rbp, rax
.label_1001:
	neg	rbx
	mov	rax, r13
.label_998:
	mov	rdx, r8
	mov	rsi, qword ptr [rsp + 0x48]
.label_988:
	sub	rsi, r15
	sar	rsi, 5
	mov	rdi, qword ptr [r12 + 0x30]
	cmp	rdi, rsi
	jne	.label_943
	cmp	rbp, rdx
	je	.label_948
	test	rbx, rbx
	je	.label_948
	add	rbp, -0x20
	mov	ecx, 1
	sub	rcx, rbx
	mov	r14, rbp
	nop	
.label_968:
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmmword ptr [rax - 0x10], xmm1
	movups	xmmword ptr [rax - 0x20], xmm0
	lea	rax, [rax - 0x20]
	cmp	r8, r14
	lea	r14, [r14 - 0x20]
	je	.label_959
	test	rcx, rcx
	lea	rcx, [rcx + 1]
	jne	.label_968
.label_959:
	add	r14, 0x20
	mov	qword ptr [r12], r14
	jmp	.label_948
	nop	word ptr cs:[rax + rax]
.label_943:
	mov	rdx, qword ptr [rsp + 0x58]
	sub	rdx, rcx
	sar	rdx, 5
	cmp	qword ptr [r12 + 0x28], rdx
	jne	.label_948
	test	rbx, rbx
	mov	r13, qword ptr [rsp + 8]
	je	.label_972
	mov	rcx, qword ptr [r12 + 0x18]
	cmp	r15, rcx
	je	.label_972
	add	r15, -0x20
	mov	edx, 1
	sub	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_980:
	movups	xmm0, xmmword ptr [r15]
	movups	xmm1, xmmword ptr [r15 + 0x10]
	movups	xmmword ptr [rax - 0x10], xmm1
	movups	xmmword ptr [rax - 0x20], xmm0
	lea	rax, [rax - 0x20]
	cmp	rcx, r15
	lea	r15, [r15 - 0x20]
	je	.label_985
	test	rdx, rdx
	lea	rdx, [rdx + 1]
	jne	.label_980
.label_985:
	add	r15, 0x20
	mov	qword ptr [r12 + 8], r15
	jmp	.label_972
	nop	word ptr cs:[rax + rax]
.label_948:
	mov	r13, qword ptr [rsp + 8]
.label_972:
	mov	rcx, qword ptr [rsp + 0x30]
	mov	qword ptr [rcx], rax
	jmp	.label_941
.label_953:
	mov	r13, qword ptr [rsp + 8]
.label_957:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x28]
	nop	
.label_941:
	mov	rcx, qword ptr [rsp + 0x58]
	sub	rcx, r14
	sar	rcx, 5
	mov	rax, qword ptr [rsp + 0x48]
	sub	rax, r15
	sar	rax, 5
	sub	qword ptr [r12 + 0x28], rcx
	sub	rdi, rax
	mov	qword ptr [r12 + 0x30], rdi
	cmp	byte ptr [r12 + 0x54], 0
	mov	rbx, qword ptr [rsp + 0x70]
	mov	rbp, qword ptr [rsp + 0x68]
	jne	.label_962
	mov	rcx, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	cmp	rcx, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [r12 + 0x18]
	jne	.label_966
	cmp	rax, rcx
	je	.label_962
	cmp	qword ptr [r12 + 0x28], 0
	jne	.label_962
	jmp	.label_954
.label_966:
	cmp	rax, rcx
	jne	.label_954
	cmp	qword ptr [r12 + 0x30], 0
	jne	.label_962
.label_954:
	mov	rdi, rbx
	call	pthread_mutex_lock
	mov	rdi, qword ptr [r13]
	mov	rsi, r12
	call	heap_insert
	mov	byte ptr [r12 + 0x54], 1
	mov	rdi, rbp
	call	pthread_cond_signal
	mov	rdi, rbx
	call	pthread_mutex_unlock
	nop	word ptr cs:[rax + rax]
.label_962:
	cmp	dword ptr [r12 + 0x50], 2
	jb	.label_989
	mov	rdi, qword ptr [r12 + 0x38]
	add	rdi, 0x58
	call	pthread_mutex_lock
	mov	r14, qword ptr [r12 + 0x38]
	cmp	byte ptr [r14 + 0x54], 0
	jne	.label_947
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	cmp	rcx, qword ptr [r14 + 0x10]
	mov	rcx, qword ptr [r14 + 0x18]
	jne	.label_1000
	cmp	rax, rcx
	je	.label_947
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_947
	jmp	.label_942
	nop	dword ptr [rax]
.label_989:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, qword ptr [r12 + 0x30]
	jne	.label_974
	mov	r14, qword ptr [r12 + 0x38]
	mov	rdi, rbx
	call	pthread_mutex_lock
	mov	rdi, qword ptr [r13]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	mov	rdi, rbp
	call	pthread_cond_signal
	mov	rdi, rbx
	jmp	.label_971
.label_1000:
	cmp	rax, rcx
	jne	.label_942
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_947
.label_942:
	mov	rdi, rbx
	call	pthread_mutex_lock
	mov	rdi, qword ptr [r13]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	mov	rdi, rbp
	call	pthread_cond_signal
	mov	rdi, rbx
	call	pthread_mutex_unlock
	mov	r14, qword ptr [r12 + 0x38]
	nop	word ptr cs:[rax + rax]
.label_947:
	add	r14, 0x58
	mov	rdi, r14
.label_971:
	call	pthread_mutex_unlock
	jmp	.label_974
.label_965:
	mov	rdi, qword ptr [rsp + 0x60]
	call	pthread_mutex_unlock
	mov	rdi, rbx
	call	pthread_mutex_lock
	mov	rdi, qword ptr [r13]
	mov	rsi, r12
	call	heap_insert
	mov	byte ptr [r12 + 0x54], 1
	mov	rdi, rbp
	call	pthread_cond_signal
	mov	rdi, rbx
	call	pthread_mutex_unlock
.label_950:
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_956:
	sub	r12, r13
	shl	rbp, 5
	sub	rbx, rbp
	mov	rcx, qword ptr [r14 + 0x48]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x50]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x38]
	call	sortlines
	mov	rdi, qword ptr [rsp + 0x78]
	xor	esi, esi
	call	pthread_join
	jmp	.label_950
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b940

	.globl compare_nodes
	.type compare_nodes, @function
compare_nodes:
	mov	eax, dword ptr [rsi + 0x50]
	cmp	dword ptr [rdi + 0x50], eax
	jne	.label_1002
	mov	rax, qword ptr [rdi + 0x30]
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x30]
	add	rcx, qword ptr [rsi + 0x28]
	cmp	rax, rcx
.label_1002:
	setb	al
	movzx	eax, al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b970

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
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	qword ptr [rsp], r14
	neg	r14
	shl	r14, 5
	jmp	.label_1003
	nop	word ptr cs:[rax + rax]
.label_1004:
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
.label_1003:
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
	mov	rbp, r13
	sub	rbp, -0x80
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
	jae	.label_1004
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
	#Procedure 0x40ba80

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
	#Procedure 0x40bab0

	.globl sequential_sort
	.type sequential_sort, @function
sequential_sort:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13d, ecx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r12, rdi
	cmp	r14, 2
	jne	.label_1015
	lea	rbp, [r12 - 0x20]
	lea	r14, [r12 - 0x40]
	mov	rdi, rbp
	mov	rsi, r14
	call	compare
	test	r13b, r13b
	je	.label_1012
	xor	ecx, ecx
	test	eax, eax
	setg	cl
	mov	rax, rcx
	not	rax
	shl	rax, 5
	movups	xmm0, xmmword ptr [r12 + rax]
	movups	xmm1, xmmword ptr [r12 + rax + 0x10]
	movups	xmmword ptr [rbx - 0x10], xmm1
	movups	xmmword ptr [rbx - 0x20], xmm0
	shl	rcx, 5
	movups	xmm0, xmmword ptr [r12 + rcx - 0x40]
	movups	xmm1, xmmword ptr [r12 + rcx - 0x30]
	movups	xmmword ptr [rbx - 0x30], xmm1
	movups	xmmword ptr [rbx - 0x40], xmm0
	jmp	.label_1009
.label_1015:
	mov	rbp, r14
	shr	rbp, 1
	mov	r15, r14
	sub	r15, rbp
	mov	rcx, rbp
	neg	rcx
	mov	rax, rbp
	shl	rax, 5
	mov	rdi, r12
	sub	rdi, rax
	xor	edx, edx
	test	r13b, r13b
	mov	qword ptr [rsp + 8], rcx
	cmovne	rdx, rcx
	shl	rdx, 5
	add	rdx, rbx
	movzx	ecx, r13b
	mov	rsi, r15
	call	sequential_sort
	cmp	r14, 4
	mov	qword ptr [rsp + 0x10], rbp
	jb	.label_1011
	mov	eax, r13d
	xor	al, 1
	movzx	ecx, al
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	sequential_sort
	jmp	.label_1007
.label_1012:
	test	eax, eax
	jle	.label_1009
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [rbx - 0x10], xmm1
	movups	xmmword ptr [rbx - 0x20], xmm0
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmmword ptr [rbp + 0x10], xmm1
	movups	xmmword ptr [rbp], xmm0
	movups	xmm0, xmmword ptr [rbx - 0x20]
	movups	xmm1, xmmword ptr [rbx - 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm1
	movups	xmmword ptr [r14], xmm0
	jmp	.label_1009
.label_1011:
	test	r13b, r13b
	jne	.label_1007
	movups	xmm0, xmmword ptr [r12 - 0x20]
	movups	xmm1, xmmword ptr [r12 - 0x10]
	movups	xmmword ptr [rbx - 0x10], xmm1
	movups	xmmword ptr [rbx - 0x20], xmm0
.label_1007:
	test	r13b, r13b
	mov	rbp, r12
	cmovne	rbp, rbx
	cmovne	rbx, r12
	mov	rax, qword ptr [rsp + 8]
	mov	r13, rax
	shl	r13, 5
	add	r13, rbp
.label_1005:
	mov	qword ptr [rsp + 8], rax
	lea	r12, [rbx - 0x20]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1017:
	lea	rsi, [r13 + r14 - 0x20]
	mov	rdi, r12
	call	compare
	lea	rcx, [rbp + r14 - 0x20]
	test	eax, eax
	jle	.label_1014
	movups	xmm0, xmmword ptr [r13 + r14 - 0x20]
	movups	xmm1, xmmword ptr [r13 + r14 - 0x10]
	movups	xmmword ptr [rcx + 0x10], xmm1
	movups	xmmword ptr [rcx], xmm0
	add	r14, -0x20
	dec	r15
	jne	.label_1017
	jmp	.label_1008
	nop	word ptr cs:[rax + rax]
.label_1014:
	movups	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmmword ptr [rbp + r14 - 0x10], xmm1
	movups	xmmword ptr [rbp + r14 - 0x20], xmm0
	mov	rax, qword ptr [rsp + 8]
	inc	rax
	add	r13, r14
	dec	qword ptr [rsp + 0x10]
	mov	rbp, rcx
	mov	rbx, r12
	jne	.label_1005
	jmp	.label_1009
.label_1008:
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rcx, [rdx - 1]
	mov	eax, edx
	and	eax, 7
	cmp	rcx, 7
	jae	.label_1010
	add	rbp, r14
	jmp	.label_1013
.label_1010:
	mov	ecx, edx
	and	cl, 7
	movzx	ecx, cl
	mov	rdx, qword ptr [rsp + 8]
	add	rdx, rcx
	add	rbp, r14
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_1006:
	movups	xmm0, xmmword ptr [rbx + rcx - 0x20]
	movups	xmm1, xmmword ptr [rbx + rcx - 0x10]
	movups	xmmword ptr [rbp + rcx - 0x10], xmm1
	movups	xmmword ptr [rbp + rcx - 0x20], xmm0
	movups	xmm0, xmmword ptr [rbx + rcx - 0x40]
	movups	xmm1, xmmword ptr [rbx + rcx - 0x30]
	movups	xmmword ptr [rbp + rcx - 0x30], xmm1
	movups	xmmword ptr [rbp + rcx - 0x40], xmm0
	movups	xmm0, xmmword ptr [rbx + rcx - 0x60]
	movups	xmm1, xmmword ptr [rbx + rcx - 0x50]
	movups	xmmword ptr [rbp + rcx - 0x50], xmm1
	movups	xmmword ptr [rbp + rcx - 0x60], xmm0
	movups	xmm0, xmmword ptr [rbx + rcx - 0x80]
	movups	xmm1, xmmword ptr [rbx + rcx - 0x70]
	movups	xmmword ptr [rbp + rcx - 0x70], xmm1
	movups	xmmword ptr [rbp + rcx - 0x80], xmm0
	movups	xmm0, xmmword ptr [rbx + rcx - 0xa0]
	movups	xmm1, xmmword ptr [rbx + rcx - 0x90]
	movups	xmmword ptr [rbp + rcx - 0x90], xmm1
	movups	xmmword ptr [rbp + rcx - 0xa0], xmm0
	movups	xmm0, xmmword ptr [rbx + rcx - 0xc0]
	movups	xmm1, xmmword ptr [rbx + rcx - 0xb0]
	movups	xmmword ptr [rbp + rcx - 0xb0], xmm1
	movups	xmmword ptr [rbp + rcx - 0xc0], xmm0
	movups	xmm0, xmmword ptr [rbx + rcx - 0xe0]
	movups	xmm1, xmmword ptr [rbx + rcx - 0xd0]
	movups	xmmword ptr [rbp + rcx - 0xd0], xmm1
	movups	xmmword ptr [rbp + rcx - 0xe0], xmm0
	movups	xmm0, xmmword ptr [rbx + rcx - 0x100]
	movups	xmm1, xmmword ptr [rbx + rcx - 0xf0]
	movups	xmmword ptr [rbp + rcx - 0xf0], xmm1
	movups	xmmword ptr [rbp + rcx - 0x100], xmm0
	add	rcx, -0x100
	add	rdx, 8
	jne	.label_1006
	add	rbp, rcx
	add	rbx, rcx
.label_1013:
	test	rax, rax
	je	.label_1009
	add	rbp, -0x20
	add	rbx, -0x20
	mov	rax, qword ptr [rsp + 0x10]
	and	al, 7
	movzx	eax, al
	neg	rax
	nop	word ptr cs:[rax + rax]
.label_1016:
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [rbp + 0x10], xmm1
	movups	xmmword ptr [rbp], xmm0
	add	rbp, -0x20
	add	rbx, -0x20
	inc	rax
	jne	.label_1016
.label_1009:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40be10

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40be20

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
	mov	rbx, rsi
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_1025
	test	r14, r14
	je	.label_1020
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1026:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_1019
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_1021
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_1022
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_1019
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1019
.label_1022:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_1019:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_1026
	jmp	.label_1024
.label_1025:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1024
.label_1020:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1018:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_1023
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_1021
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_1023
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_1023:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_1018
.label_1024:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_1021:
	mov	rax, rbx
	add	rsp, 0x28
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
	#Procedure 0x40bfa0
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
	je	.label_1027
	mov	esi, OFFSET FLAT:label_1028
	jmp	.label_1029
.label_1027:
	mov	esi, OFFSET FLAT:label_1030
.label_1029:
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
	#Procedure 0x40c010

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
	mov	r12, rsi
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1035
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_1032
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_1037:
	test	r15, r15
	je	.label_1031
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1036
.label_1031:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1033
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_1039
	nop	word ptr cs:[rax + rax]
.label_1036:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1038
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_1039:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_1037
.label_1032:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1034
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1034:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c140

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_1041
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_1042
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1028
	jmp	.label_1040
.label_1042:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1030
.label_1040:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_1041:
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
	#Procedure 0x40c210
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
	je	.label_1043
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_1044:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_1043
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_1044
.label_1043:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c280
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c290
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c2a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_1049
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_1046
	cmp	dword ptr [rbp], 0x20
	jne	.label_1046
.label_1049:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_1048
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1046:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1045
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_1047
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_404
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_1048:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_1047:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_491
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c360

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	movaps	xmm0, xmmword ptr [rip + label_1050]
	movups	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c380
	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:

	mov	eax, dword ptr [rdi]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rdi + 4]
	mov	dword ptr [rsi + 4], eax
	mov	eax, dword ptr [rdi + 8]
	mov	dword ptr [rsi + 8], eax
	mov	eax, dword ptr [rdi + 0xc]
	mov	dword ptr [rsi + 0xc], eax
	mov	rax, rsi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c3a0

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
	jae	.label_1051
	inc	dword ptr [rbx + 0x14]
.label_1051:
	lea	edx, [rcx*8]
	lea	r12, [rbx + 0x1c]
	mov	dword ptr [rbx + r15*4 + 0x14], edx
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
	mov	eax, dword ptr [rbx]
	mov	dword ptr [r14], eax
	mov	eax, dword ptr [rbx + 4]
	mov	dword ptr [r14 + 4], eax
	mov	eax, dword ptr [rbx + 8]
	mov	dword ptr [r14 + 8], eax
	mov	eax, dword ptr [rbx + 0xc]
	mov	dword ptr [r14 + 0xc], eax
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c450

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r8, rsi
	and	r8, 0xfffffffffffffffc
	add	r8, rdi
	mov	r10d, dword ptr [rdx]
	mov	ebx, dword ptr [rdx + 4]
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	mov	rax, rsi
	shr	rax, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	add	ecx, esi
	mov	dword ptr [rdx + 0x10], ecx
	adc	eax, 0
	mov	qword ptr [rsp - 0x28], rdx
	add	dword ptr [rdx + 0x14], eax
	cmp	rdi, r8
	jae	.label_1053
	mov	qword ptr [rsp - 0x20], r8
	nop	word ptr [rax + rax]
.label_1052:
	mov	qword ptr [rsp - 0x78], rbx
	mov	qword ptr [rsp - 8], rbp
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp - 0x34], r10d
	mov	eax, r9d
	xor	eax, ebp
	and	eax, ebx
	xor	eax, ebp
	add	eax, r10d
	mov	ecx, dword ptr [rdi]
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 0x58], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	mov	qword ptr [rsp - 0x10], r10
	rol	edx, 7
	mov	rax, qword ptr [rsp - 0x78]
	add	edx, eax
	mov	rax, qword ptr [rsp - 0x78]
	xor	eax, r9d
	and	eax, edx
	xor	eax, r9d
	lea	ecx, [rbp + rsi]
	lea	ebp, [rax + rcx - 0x173848aa]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	mov	rcx, qword ptr [rsp - 0x78]
	xor	eax, ecx
	and	eax, ebp
	mov	rcx, qword ptr [rsp - 0x78]
	xor	eax, ecx
	mov	ecx, dword ptr [rdi + 8]
	mov	qword ptr [rsp - 0x30], rcx
	lea	ecx, [r9 + rcx]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	add	ebx, ebp
	mov	eax, ebp
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	esi, dword ptr [rdi + 0xc]
	mov	rcx, qword ptr [rsp - 0x78]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	mov	qword ptr [rsp - 0x18], r12
	lea	eax, [rax + rcx - 0x3e423112]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	xor	ecx, ebp
	and	ecx, eax
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	mov	dword ptr [rsp - 0x64], esi
	add	edx, esi
	lea	ecx, [rcx + rdx - 0xa83f051]
	rol	ecx, 7
	add	ecx, eax
	mov	edx, eax
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x6c], esi
	add	ebp, esi
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	mov	edx, ecx
	xor	edx, eax
	and	edx, r8d
	xor	edx, eax
	mov	esi, dword ptr [rdi + 0x18]
	add	ebx, esi
	mov	dword ptr [rsp - 0x38], esi
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	rol	ebx, 0x11
	add	ebx, r8d
	mov	ebp, r8d
	xor	ebp, ecx
	and	ebp, ebx
	xor	ebp, ecx
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x60], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	rol	r9d, 0x16
	add	r9d, ebx
	mov	eax, ebx
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	edx, dword ptr [rdi + 0x20]
	mov	dword ptr [rsp - 0x68], edx
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	rol	ecx, 7
	add	ecx, r9d
	mov	eax, r9d
	xor	eax, ebx
	and	eax, ecx
	xor	eax, ebx
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp - 0x7c], edx
	add	r8d, edx
	lea	ebp, [rax + r8 - 0x74bb0851]
	rol	ebp, 0xc
	add	ebp, ecx
	mov	eax, ecx
	xor	eax, r9d
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	add	ebx, edx
	mov	r13d, edx
	mov	dword ptr [rsp - 0x48], r13d
	lea	r15d, [rax + rbx - 0xa44f]
	rol	r15d, 0x11
	add	r15d, ebp
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	add	r9d, edx
	mov	dword ptr [rsp - 0x5c], edx
	lea	r11d, [rax + r9 - 0x76a32842]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	xor	eax, ebp
	mov	ebx, dword ptr [rdi + 0x30]
	mov	dword ptr [rsp - 0x40], ebx
	add	ecx, ebx
	lea	ecx, [rax + rcx + 0x6b901122]
	rol	ecx, 7
	add	ecx, r11d
	mov	eax, r11d
	xor	eax, r15d
	and	eax, ecx
	xor	eax, r15d
	mov	ebx, dword ptr [rdi + 0x34]
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	add	r9d, ecx
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r9d
	xor	eax, r11d
	mov	r14d, dword ptr [rdi + 0x38]
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	add	r8d, r9d
	mov	eax, r9d
	xor	eax, ecx
	and	eax, r8d
	xor	eax, ecx
	mov	ebp, dword ptr [rdi + 0x3c]
	add	r11d, ebp
	mov	r15d, ebp
	mov	dword ptr [rsp - 0x3c], r15d
	lea	r11d, [rax + r11 + 0x49b40821]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	rbp, qword ptr [rsp - 0x58]
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
	mov	r9d, dword ptr [rsp - 0x6c]
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
	mov	r10d, dword ptr [rsp - 0x64]
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, dword ptr [rsp - 0x7c]
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	r13d, r14d
	mov	dword ptr [rsp - 0x4c], r13d
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
	mov	esi, dword ptr [rsp - 0x68]
	add	r11d, esi
	lea	r11d, [rax + r11 + 0x455a14ed]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	mov	dword ptr [rsp - 0x44], ebx
	lea	ecx, [rax + rcx - 0x561c16fb]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x30]
	add	ebp, edx
	lea	r14d, [rax + rbp - 0x3105c08]
	rol	r14d, 9
	add	r14d, ecx
	mov	eax, r14d
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	mov	edx, dword ptr [rsp - 0x60]
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x676f02d9]
	rol	r8d, 0xe
	add	r8d, r14d
	mov	ebp, r8d
	xor	ebp, r14d
	mov	eax, ebp
	and	eax, ecx
	xor	eax, r14d
	mov	r15d, dword ptr [rsp - 0x40]
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
	add	r8d, dword ptr [rsp - 0x5c]
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
	mov	rcx, qword ptr [rsp - 0x58]
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
	mov	r10d, dword ptr [rsp - 0x48]
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
	mov	rsi, qword ptr [rsp - 0x10]
	add	r14d, esi
	lea	r11d, [rcx + r14 - 0x155ed806]
	rol	r11d, 0xb
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	mov	r9, qword ptr [rsp - 0x18]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	rol	r14d, 0x10
	add	r14d, r11d
	mov	ecx, r11d
	xor	ecx, eax
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x38]
	add	r8d, r12d
	lea	r8d, [rcx + r8 + 0x4881d05]
	rol	r8d, 0x17
	add	r8d, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, r8d
	add	eax, dword ptr [rsp - 0x7c]
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
	mov	r13d, dword ptr [rsp - 0x3c]
	add	r14d, r13d
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	rol	r11d, 0x10
	add	r11d, edx
	mov	ebp, edx
	xor	ebp, ecx
	xor	ebp, r11d
	mov	rax, qword ptr [rsp - 0x30]
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
	add	edx, dword ptr [rsp - 0x60]
	rol	ecx, 6
	add	ecx, r8d
	mov	eax, r11d
	not	eax
	or	eax, ecx
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	add	r11d, dword ptr [rsp - 0x4c]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	eax, r8d
	not	eax
	or	eax, ebp
	xor	eax, ecx
	lea	eax, [rax + r11 - 0x546bdc59]
	add	r8d, dword ptr [rsp - 0x6c]
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
	mov	rbx, qword ptr [rsp - 0x78]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	edx, esi
	not	edx
	or	edx, ebp
	xor	edx, ecx
	lea	eax, [rdx + rax - 0x100b83]
	rol	eax, 0xf
	add	eax, ebp
	mov	rdx, qword ptr [rsp - 0x58]
	add	esi, edx
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	add	r8d, eax
	add	ecx, dword ptr [rsp - 0x68]
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
	add	r8d, dword ptr [rsp - 0x44]
	mov	eax, ecx
	not	eax
	or	eax, ebp
	xor	eax, edx
	lea	esi, [rax + r8 + 0x4e0811a1]
	mov	r8, qword ptr [rsp - 0x20]
	mov	r10d, dword ptr [rsp - 0x34]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x64]
	mov	eax, edx
	not	eax
	or	eax, esi
	xor	eax, ebp
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	add	ecx, esi
	add	edx, dword ptr [rsp - 0x5c]
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
	add	esi, dword ptr [rsp - 0x7c]
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
	mov	rcx, qword ptr [rsp]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 8]
	add	edx, ecx
	add	rdi, 0x40
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_1052
	jmp	.label_1054
.label_1053:
	mov	edx, ebp
	mov	eax, r9d
.label_1054:
	mov	rcx, qword ptr [rsp - 0x28]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
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
	#Procedure 0x40cc60
	.globl md5_stream
	.type md5_stream, @function
md5_stream:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa0
	mov	r14, rsi
	mov	r12, rdi
	mov	edi, 0x8048
	call	malloc
	mov	r15, rax
	mov	eax, 1
	test	r15, r15
	je	.label_1055
	movaps	xmm0, xmmword ptr [rip + label_1050]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x14], 0
	mov	dword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0
	lea	r13, [rsp]
	jmp	.label_1061
	nop	word ptr [rax + rax]
.label_1059:
	mov	esi, 0x8000
	mov	rdi, r15
	mov	rdx, r13
	call	md5_process_block
.label_1061:
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1057:
	test	byte ptr [r12], 0x10
	jne	.label_1058
	lea	rdi, [r15 + rbx]
	mov	edx, 0x8000
	sub	rdx, rbx
	mov	esi, 1
	mov	rcx, r12
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	je	.label_1059
	test	rax, rax
	jne	.label_1057
	test	byte ptr [r12], 0x20
	jne	.label_1056
.label_1058:
	test	rbx, rbx
	je	.label_1062
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_bytes
.label_1062:
	mov	eax, dword ptr [rsp + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	ebx, 0x20
	cmovb	rbx, rcx
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	jae	.label_1060
	inc	dword ptr [rsp + 0x14]
.label_1060:
	lea	edx, [rcx*8]
	lea	r12, [rsp + 0x1c]
	mov	dword ptr [rsp + rbx*4 + 0x14], edx
	mov	edx, dword ptr [rsp + 0x14]
	shld	edx, ecx, 3
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	lea	rdi, [rsp + rax + 0x1c]
	lea	rdx, [rbx*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf_0
	call	memcpy
	shl	rbx, 2
	lea	rdx, [rsp]
	mov	rdi, r12
	mov	rsi, rbx
	call	md5_process_block
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rdi, r15
	call	free
	xor	eax, eax
	jmp	.label_1055
.label_1056:
	mov	rdi, r15
	call	free
	mov	eax, 1
.label_1055:
	add	rsp, 0xa0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cde0

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
	mov	ebx, dword ptr [r14 + 0x18]
	test	rbx, rbx
	je	.label_1063
	mov	r13d, 0x80
	sub	r13, rbx
	cmp	r13, r12
	cmova	r13, r12
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r13
	call	memcpy
	add	rbx, r13
	mov	dword ptr [r14 + 0x18], ebx
	cmp	ebx, 0x41
	jb	.label_1067
	lea	rbp, [r14 + 0x1c]
	mov	esi, ebx
	and	esi, 0xffffffc0
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	mov	edx, dword ptr [r14 + 0x18]
	and	edx, 0x3f
	mov	dword ptr [r14 + 0x18], edx
	and	rbx, 0xffffffffffffffc0
	add	rbx, rbp
	mov	rdi, rbp
	mov	rsi, rbx
	call	memcpy
.label_1067:
	add	r15, r13
	sub	r12, r13
.label_1063:
	cmp	r12, 0x40
	jb	.label_1064
	mov	rbx, r12
	and	rbx, 0xffffffffffffffc0
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	md5_process_block
	add	r15, rbx
	and	r12d, 0x3f
.label_1064:
	test	r12, r12
	je	.label_1065
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x40
	jb	.label_1066
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
.label_1066:
	mov	dword ptr [r14 + 0x18], ebx
.label_1065:
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
	#Procedure 0x40cee0
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xa0
	mov	r14, rdx
	movaps	xmm0, xmmword ptr [rip + label_1050]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x14], 0
	mov	dword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0
	lea	rdx, [rsp]
	call	md5_process_bytes
	mov	eax, dword ptr [rsp + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	ebx, 0x20
	cmovb	rbx, rcx
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	mov	edx, dword ptr [rsp + 0x14]
	jae	.label_1068
	inc	edx
	mov	dword ptr [rsp + 0x14], edx
.label_1068:
	lea	esi, [rcx*8]
	lea	r15, [rsp + 0x1c]
	mov	dword ptr [rsp + rbx*4 + 0x14], esi
	shld	edx, ecx, 3
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	lea	rdi, [rsp + rax + 0x1c]
	lea	rdx, [rbx*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf_0
	call	memcpy
	shl	rbx, 2
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_block
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rax, r14
	add	rsp, 0xa0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cfb0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cfc0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_1069
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_1069:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cfe0

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	call	strcmp
	mov	r11d, eax
	xor	eax, eax
	test	r11d, r11d
	je	.label_1073
	mov	dl, byte ptr [rbx]
	mov	eax, 0xffffffff
	test	dl, dl
	je	.label_1073
	mov	cl, byte ptr [r12]
	test	cl, cl
	je	.label_1077
	cmp	dl, 0x2e
	jne	.label_1079
	cmp	byte ptr [rbx + 1], 0
	je	.label_1073
.label_1079:
	cmp	cl, 0x2e
	jne	.label_1083
	cmp	byte ptr [r12 + 1], 0
	je	.label_1084
.label_1083:
	cmp	dl, 0x2e
	jne	.label_1085
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_1085
	cmp	byte ptr [rbx + 2], 0
	je	.label_1073
.label_1085:
	cmp	cl, 0x2e
	jne	.label_1091
	cmp	byte ptr [r12 + 1], 0x2e
	jne	.label_1091
	cmp	byte ptr [r12 + 2], 0
	je	.label_1093
.label_1091:
	cmp	dl, 0x2e
	jne	.label_1095
	cmp	cl, 0x2e
	jne	.label_1073
	inc	r12
	mov	dl, byte ptr [rbx + 1]
	inc	rbx
	jmp	.label_1096
.label_1077:
	mov	eax, 1
	jmp	.label_1073
.label_1095:
	cmp	cl, 0x2e
	mov	eax, 1
	je	.label_1073
.label_1096:
	movabs	r15, 0x3ffffff03ffffff
	xor	r10d, r10d
	test	dl, dl
	mov	qword ptr [rsp], rbx
	mov	rbp, rbx
	je	.label_1103
	xor	r8d, r8d
	movabs	rsi, 0x3ffffffffffffff
	and	rsi, r15
	mov	rbp, qword ptr [rsp]
	xor	edi, edi
	xor	r10d, r10d
	nop	word ptr cs:[rax + rax]
.label_1090:
	test	dil, 1
	jne	.label_1086
	cmp	dl, 0x2e
	jne	.label_1114
	test	r10, r10
	cmove	r10, rbp
	mov	dil, 1
	jmp	.label_1076
	nop	word ptr [rax + rax]
.label_1086:
	movsx	edi, dl
	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1070
	bt	rsi, rdi
	jb	.label_1087
.label_1070:
	xor	edi, edi
	cmp	dl, 0x7e
	cmovne	r10, rdi
	jmp	.label_1076
	nop	dword ptr [rax]
.label_1114:
	movsx	ebx, dl
	lea	eax, [rbx - 0x41]
	cmp	eax, 0x39
	ja	.label_1081
	bt	r15, rax
	jb	.label_1076
.label_1081:
	add	ebx, -0x30
	cmp	ebx, 0xa
	jb	.label_1076
	cmp	dl, 0x7e
	cmovne	r10, r8
	jmp	.label_1076
.label_1087:
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1076:
	movzx	edx, byte ptr [rbp + 1]
	inc	rbp
	test	dl, dl
	jne	.label_1090
.label_1103:
	mov	dl, byte ptr [r12]
	xor	eax, eax
	test	dl, dl
	mov	rbx, r12
	je	.label_1092
	xor	r8d, r8d
	movabs	r9, 0x3ffffffffffffff
	and	r9, r15
	mov	rbx, r12
	xor	edi, edi
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1071:
	test	dil, 1
	jne	.label_1099
	cmp	dl, 0x2e
	jne	.label_1100
	test	rax, rax
	cmove	rax, rbx
	mov	dil, 1
	jmp	.label_1102
	nop	word ptr [rax + rax]
.label_1099:
	movsx	esi, dl
	add	esi, -0x41
	cmp	esi, 0x39
	ja	.label_1109
	bt	r9, rsi
	jb	.label_1111
.label_1109:
	xor	edi, edi
	cmp	dl, 0x7e
	cmovne	rax, rdi
	jmp	.label_1102
	nop	dword ptr [rax]
.label_1100:
	movsx	esi, dl
	lea	ecx, [rsi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1112
	bt	r15, rcx
	jb	.label_1102
.label_1112:
	add	esi, -0x30
	cmp	esi, 0xa
	jb	.label_1102
	cmp	dl, 0x7e
	cmovne	rax, r8
	jmp	.label_1102
.label_1111:
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1102:
	movzx	edx, byte ptr [rbx + 1]
	inc	rbx
	test	dl, dl
	jne	.label_1071
.label_1092:
	test	r10, r10
	mov	r13, rbp
	cmovne	r13, r10
	sub	r13, qword ptr [rsp]
	test	rax, rax
	mov	rdi, rbx
	cmovne	rdi, rax
	sub	rdi, r12
	or	r10, rax
	mov	dword ptr [rsp + 0x14], r11d
	mov	qword ptr [rsp + 0x18], r13
	je	.label_1075
	cmp	r13, rdi
	jne	.label_1075
	mov	r14, qword ptr [rsp]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	call	strncmp
	test	eax, eax
	mov	rdi, r13
	jne	.label_1089
	sub	rbp, r14
	sub	rbx, r12
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rbp
	jmp	.label_1089
.label_1084:
	mov	eax, 1
	jmp	.label_1073
.label_1075:
	mov	r14, qword ptr [rsp]
.label_1089:
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r14 + 1]
	mov	qword ptr [rsp + 0x28], rax
	xor	ecx, ecx
	movabs	rax, 0x3ffffffffffffff
	and	r15, rax
	mov	qword ptr [rsp + 0x20], r15
	xor	r13d, r13d
	mov	rbx, r14
	mov	qword ptr [rsp + 8], rdi
.label_1107:
	cmp	rcx, rdi
	mov	rbp, qword ptr [rsp + 0x18]
	jb	.label_1105
	cmp	r13, rbp
	jae	.label_1108
.label_1105:
	lea	r9, [r13 - 1]
	lea	r10, [rcx - 1]
	lea	r15, [rcx + 1]
	mov	rax, qword ptr [rsp + 0x30]
	lea	r11, [rax + rcx]
	lea	r14, [r13 + 1]
	mov	rax, qword ptr [rsp + 0x28]
	lea	r8, [rax + r13]
	jmp	.label_1110
	nop	word ptr [rax + rax]
.label_1072:
	inc	r13
	inc	rcx
	inc	r9
	inc	r10
	inc	r15
	inc	r11
	inc	r14
	inc	r8
.label_1110:
	cmp	r13, rbp
	jae	.label_1116
	movsx	eax, byte ptr [rbx + r13]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_1115
.label_1116:
	cmp	rcx, rdi
	jae	.label_1074
	movsx	eax, byte ptr [r12 + rcx]
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_1074
.label_1115:
	xor	edx, edx
	cmp	rbp, r13
	mov	eax, 0
	je	.label_1082
	movzx	esi, byte ptr [rbx + r13]
	lea	eax, [rsi - 0x30]
	cmp	eax, 0xa
	mov	eax, 0
	jb	.label_1082
	lea	eax, [rsi - 0x41]
	cmp	eax, 0x39
	ja	.label_1098
	mov	rdi, qword ptr [rsp + 0x20]
	bt	rdi, rax
	mov	rdi, qword ptr [rsp + 8]
	jb	.label_1088
.label_1098:
	mov	eax, esi
	or	eax, 0x100
	cmp	sil, 0x7e
	mov	esi, 0xffffffff
	cmove	eax, esi
	jmp	.label_1082
.label_1088:
	mov	eax, esi
	nop	word ptr cs:[rax + rax]
.label_1082:
	cmp	rdi, rcx
	je	.label_1080
	movzx	esi, byte ptr [r12 + rcx]
	lea	edi, [rsi - 0x30]
	cmp	edi, 0xa
	mov	rdi, qword ptr [rsp + 8]
	jb	.label_1080
	lea	edx, [rsi - 0x41]
	cmp	edx, 0x39
	ja	.label_1101
	mov	rdi, qword ptr [rsp + 0x20]
	bt	rdi, rdx
	mov	rdi, qword ptr [rsp + 8]
	jb	.label_1104
.label_1101:
	mov	edx, esi
	or	edx, 0x100
	cmp	sil, 0x7e
	mov	esi, 0xffffffff
	cmove	edx, esi
	jmp	.label_1080
.label_1104:
	mov	edx, esi
	nop	word ptr [rax + rax]
.label_1080:
	sub	eax, edx
	je	.label_1072
	jmp	.label_1097
.label_1074:
	mov	r13, r9
.label_1113:
	mov	rax, r14
	mov	rsi, r8
	movsx	r9d, byte ptr [rbx + r13 + 1]
	inc	r13
	lea	r14, [rax + 1]
	lea	r8, [rsi + 1]
	cmp	r9d, 0x30
	je	.label_1113
	mov	rcx, r10
.label_1106:
	mov	rdi, r15
	mov	rdx, r11
	movsx	ebp, byte ptr [r12 + rcx + 1]
	inc	rcx
	lea	r15, [rdi + 1]
	lea	r11, [rdx + 1]
	cmp	ebp, 0x30
	je	.label_1106
	lea	ebx, [r9 - 0x30]
	xor	r8d, r8d
	cmp	ebx, 9
	ja	.label_1078
	lea	ebx, [rbp - 0x30]
	cmp	ebx, 9
	ja	.label_1078
	xor	r8d, r8d
	mov	ebx, r9d
	nop	word ptr cs:[rax + rax]
.label_1094:
	mov	r9d, r8d
	mov	rcx, rdi
	mov	r13, rax
	sub	ebx, ebp
	test	r9d, r9d
	mov	r8d, ebx
	cmovne	r8d, r9d
	mov	r9b, byte ptr [rsi]
	movsx	ebx, r9b
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_1078
	movsx	ebp, byte ptr [rdx]
	lea	r10d, [rbp - 0x30]
	lea	rdi, [rcx + 1]
	inc	rdx
	lea	rax, [r13 + 1]
	inc	rsi
	cmp	r10d, 0xa
	jb	.label_1094
.label_1078:
	movsx	edx, r9b
	add	edx, -0x30
	mov	eax, 1
	cmp	edx, 0xa
	mov	rbx, qword ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	jb	.label_1097
	movsx	edx, byte ptr [r12 + rcx]
	add	edx, -0x30
	mov	eax, 0xffffffff
	cmp	edx, 0xa
	jb	.label_1097
	test	r8d, r8d
	mov	eax, r8d
	je	.label_1107
	jmp	.label_1097
.label_1093:
	mov	eax, 1
	jmp	.label_1073
.label_1108:
	xor	eax, eax
.label_1097:
	test	eax, eax
	mov	ecx, dword ptr [rsp + 0x14]
	cmovne	ecx, eax
	mov	eax, ecx
.label_1073:
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
	#Procedure 0x40d4e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1118
	cmp	byte ptr [rax], 0x43
	jne	.label_1120
	cmp	byte ptr [rax + 1], 0
	je	.label_1117
.label_1120:
	mov	esi, OFFSET FLAT:label_1119
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1118
.label_1117:
	xor	ebx, ebx
.label_1118:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d520
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d530
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d540
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d550
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_1123
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_1122
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1124:
	cmp	qword ptr [rcx], 0
	je	.label_1125
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_1121:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_1121
	cmp	rdi, rax
	cmova	rax, rdi
.label_1125:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_1126
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_1127:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_1127
	cmp	rdi, rax
	cmova	rax, rdi
.label_1126:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_1124
.label_1122:
	test	r8, r8
	je	.label_1123
	cmp	qword ptr [rcx], 0
	je	.label_1123
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1128:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_1128
	cmp	rdx, rax
	cmova	rax, rdx
.label_1123:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d610
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_1133
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_1135
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_1138:
	cmp	qword ptr [rax], 0
	je	.label_1131
	mov	rdx, rax
	nop	dword ptr [rax]
.label_1134:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_1134
	inc	r10
.label_1131:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1136
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_1129:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_1129
	inc	r10
.label_1136:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_1138
	jmp	.label_1132
.label_1135:
	xor	r10d, r10d
.label_1132:
	test	r8, r8
	je	.label_1133
	cmp	qword ptr [rax], 0
	je	.label_1133
	nop	dword ptr [rax]
.label_1137:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_1137
	inc	r10
.label_1133:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_1139
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_1130
.label_1139:
	xor	eax, eax
.label_1130:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d6d0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_1144
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_1147
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_1148:
	cmp	qword ptr [rax], 0
	je	.label_1140
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_1151:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_1151
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_1140:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1142
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_1146:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_1146
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_1142:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_1148
.label_1147:
	test	r8, r8
	je	.label_1144
	cmp	qword ptr [rax], 0
	je	.label_1144
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1141:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_1141
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_1144:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1145
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1143
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_365]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_366]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_367]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1150
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1149
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d840
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
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_1156
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_1153
	add	rbx, rax
	je	.label_1153
	cmp	rsi, r12
	je	.label_1155
	xor	r15d, r15d
	nop	
.label_1154:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_1152
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_1153
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_1154
.label_1155:
	mov	r15, r12
	jmp	.label_1153
.label_1152:
	mov	r15, qword ptr [rbx]
.label_1153:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1156:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d8c0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_1157
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_1160
	nop	word ptr cs:[rax + rax]
.label_1159:
	add	rcx, 0x10
.label_1160:
	cmp	rcx, rdx
	jae	.label_1158
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_1159
.label_1157:
	ret	
.label_1158:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d900
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_1164
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_1165:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_1163
	test	rdx, rdx
	jne	.label_1165
	jmp	.label_1161
.label_1163:
	test	rdx, rdx
	je	.label_1161
	mov	rax, qword ptr [rdx]
	jmp	.label_1162
.label_1161:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1166:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_1162
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_1166
.label_1162:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1164:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d990
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_1167
	xor	eax, eax
.label_1169:
	cmp	qword ptr [r9], 0
	je	.label_1168
	test	r9, r9
	je	.label_1168
	mov	r8, r9
	nop	
.label_1170:
	cmp	rax, rdx
	jae	.label_1167
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_1170
	mov	r8, qword ptr [rdi + 8]
.label_1168:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_1169
.label_1167:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d9e0
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
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	cmp	r13, rax
	jae	.label_1171
	xor	ebx, ebx
.label_1175:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_1173
	test	r13, r13
	je	.label_1173
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_1171
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_1172:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_1174
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_1172
	jmp	.label_1171
	nop	dword ptr [rax]
.label_1174:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_1173:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_1175
.label_1171:
	mov	rax, rbx
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
	#Procedure 0x40da80
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_1176
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_1177:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_1177
.label_1176:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dac0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_1178]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dae0

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
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_1184
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_1190
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_1193]
	jbe	.label_1182
	movss	xmm1, dword ptr [rip + label_1181]
	ucomiss	xmm1, xmm0
	jbe	.label_1182
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_1188]
	jbe	.label_1182
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_1182
	addss	xmm1, dword ptr [rip + label_1193]
	ucomiss	xmm0, xmm1
	jbe	.label_1182
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_1183]
	ucomiss	xmm2, xmm0
	jb	.label_1182
	ucomiss	xmm0, xmm1
	jbe	.label_1182
.label_1190:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_1185
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_1192
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_1179
.label_1192:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_1179:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_1186]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_1187]
	jae	.label_1182
.label_1185:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_1189
	nop	
.label_1194:
	add	rbx, 2
.label_1189:
	cmp	rbx, -1
	je	.label_1182
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_1180
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_1191:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_1180
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_1191
.label_1180:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_1194
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_1182
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_1182
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_1182
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_1184
.label_1182:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_1184:
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
	#Procedure 0x40dd00

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dd10

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dd20
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_1195
	nop	word ptr cs:[rax + rax]
.label_1198:
	add	r14, 0x10
.label_1195:
	cmp	r14, rax
	jae	.label_1197
	cmp	qword ptr [r14], 0
	je	.label_1198
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_1199
	nop	word ptr cs:[rax + rax]
.label_1201:
	test	cl, 1
	je	.label_1200
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_1200:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_1201
.label_1199:
	test	cl, cl
	je	.label_1196
	mov	rdi, qword ptr [r14]
	call	rax
.label_1196:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_1198
.label_1197:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ddd0
	.globl hash_free
	.type hash_free, @function
hash_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_1204
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_1204
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1208
	nop	
.label_1202:
	add	r15, 0x10
.label_1208:
	cmp	r15, rax
	jae	.label_1204
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_1202
	test	r15, r15
	je	.label_1202
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_1203
.label_1206:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_1203:
	test	rbx, rbx
	jne	.label_1206
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1202
.label_1204:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1207
	nop	
.label_1210:
	add	r15, 0x10
.label_1207:
	cmp	r15, rax
	jae	.label_1211
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_1210
	nop	word ptr cs:[rax + rax]
.label_1205:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1205
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1210
.label_1211:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_1209
.label_1212:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1212
.label_1209:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dea0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_1224
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_1228
	cvtsi2ss	xmm0, rsi
	jmp	.label_1215
.label_1228:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_1215:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_1186]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_1187]
	jae	.label_1217
.label_1224:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_1220
	nop	dword ptr [rax + rax]
.label_1231:
	add	rbx, 2
.label_1220:
	cmp	rbx, -1
	je	.label_1217
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_1213
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_1227:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_1213
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_1227
.label_1213:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_1231
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_1217
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_1221
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_1217
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_1218
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_1221
.label_1218:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1229
	nop	
.label_1222:
	add	r12, 0x10
.label_1229:
	cmp	r12, r15
	jae	.label_1219
	cmp	qword ptr [r12], 0
	je	.label_1222
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_1225
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1223:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_1216
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_1230
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_1226
	nop	word ptr [rax + rax]
.label_1230:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_1226:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_1223
.label_1225:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_1222
.label_1219:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_1214
	mov	rdi, qword ptr [rsp]
	call	free
.label_1217:
	xor	ebp, ebp
.label_1221:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1216:
	call	abort
.label_1214:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e130

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
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	cmp	r13, rax
	jae	.label_1249
	test	dl, dl
	je	.label_1239
	nop	dword ptr [rax]
.label_1250:
	cmp	qword ptr [r13], 0
	je	.label_1244
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_1248
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_1243:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_1236
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_1241
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_1233
	nop	word ptr [rax + rax]
.label_1241:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_1233:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_1243
	mov	rax, qword ptr [r15 + 8]
.label_1248:
	mov	qword ptr [r13 + 8], 0
.label_1244:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_1250
	jmp	.label_1249
	nop	word ptr cs:[rax + rax]
.label_1239:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_1238
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_1242
	nop	word ptr [rax + rax]
.label_1240:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_1236
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_1234
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_1246
	nop	word ptr [rax + rax]
.label_1234:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_1246:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_1240
	mov	r12, qword ptr [r13]
.label_1242:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_1247
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_1251
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_1232
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_1237
	nop	dword ptr [rax + rax]
.label_1251:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_1235
.label_1232:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_1252
.label_1237:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_1235:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_1238:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_1239
.label_1249:
	mov	al, 1
.label_1245:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1252:
	xor	eax, eax
	jmp	.label_1245
.label_1236:
	call	abort
.label_1247:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e350

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_1271
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_1271
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_1254
	cmp	rsi, r14
	je	.label_1260
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_1263
	mov	rax, qword ptr [r12]
.label_1259:
	test	rax, rax
	jne	.label_1265
	jmp	.label_1254
.label_1260:
	mov	rax, r14
.label_1265:
	xor	ebp, ebp
	test	r15, r15
	je	.label_1255
	mov	qword ptr [r15], rax
	jmp	.label_1255
.label_1263:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_1254
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_1283:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1277
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_1280
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_1283
.label_1254:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_1256
	cvtsi2ss	xmm1, rax
	jmp	.label_1262
.label_1256:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_1262:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1266
	cvtsi2ss	xmm0, rcx
	jmp	.label_1273
.label_1266:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1273:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_1275
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_1279
	ucomiss	xmm2, dword ptr [rip + label_1193]
	jbe	.label_1253
	movss	xmm3, dword ptr [rip + label_1181]
	ucomiss	xmm3, xmm2
	jbe	.label_1253
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_1188]
	jbe	.label_1253
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_1253
	addss	xmm3, dword ptr [rip + label_1193]
	ucomiss	xmm2, xmm3
	jbe	.label_1253
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_1183]
	ucomiss	xmm5, xmm4
	jb	.label_1253
	ucomiss	xmm4, xmm3
	ja	.label_1272
.label_1253:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_1281]
	jmp	.label_1272
.label_1279:
	mov	eax, OFFSET FLAT:default_tuning
.label_1272:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_1275
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_1276
	mulss	xmm0, xmm2
.label_1276:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_1187]
	jae	.label_1255
	movss	xmm1, dword ptr [rip + label_1186]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_1255
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_1271
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_1275
	cmp	rsi, r14
	mov	rax, r14
	je	.label_1258
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_1257
	mov	rax, qword ptr [r12]
.label_1258:
	test	rax, rax
	jne	.label_1261
.label_1275:
	cmp	qword ptr [r12], 0
	je	.label_1278
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_1264
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_1267
.label_1278:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_1269]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_1270
.label_1264:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_1255
.label_1267:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_1270:
	mov	ebp, 1
.label_1255:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1277:
	mov	rax, r14
	jmp	.label_1259
.label_1280:
	mov	rax, qword ptr [rbp]
	jmp	.label_1259
.label_1257:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_1275
	lea	rbp, [rbx + rbp + 8]
.label_1282:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1268
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_1274
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_1282
	jmp	.label_1275
.label_1268:
	mov	rax, r14
	jmp	.label_1258
.label_1274:
	mov	rax, qword ptr [rbp]
	jmp	.label_1258
.label_1271:
	call	abort
.label_1261:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e690

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
	je	.label_1284
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_1284:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e6c0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_1299
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_1286
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_1285
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_1289
	mov	r14, qword ptr [r13]
.label_1285:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_1293
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_1288
.label_1289:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_1286
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1304:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1296
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_1302
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_1304
	jmp	.label_1286
.label_1293:
	mov	qword ptr [r13], 0
	jmp	.label_1288
.label_1296:
	mov	rcx, rax
	jmp	.label_1291
.label_1302:
	mov	r14, qword ptr [rcx]
.label_1291:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_1288:
	xor	r12d, r12d
	test	r14, r14
	je	.label_1286
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_1287
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_1300
	cvtsi2ss	xmm1, rax
	jmp	.label_1301
.label_1300:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_1301:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1305
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_1303
.label_1305:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1303:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_1287
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_1297
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_1193]
	jbe	.label_1290
	movss	xmm4, dword ptr [rip + label_1181]
	ucomiss	xmm4, xmm3
	jbe	.label_1290
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_1290
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_1188]
	jbe	.label_1290
	movss	xmm4, dword ptr [rip + label_1193]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_1290
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_1183]
	ucomiss	xmm5, xmm3
	jb	.label_1290
	ucomiss	xmm3, xmm4
	ja	.label_1294
.label_1290:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_1294
.label_1297:
	mov	eax, OFFSET FLAT:default_tuning
.label_1294:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_1287
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_1298
	mulss	xmm0, dword ptr [rax + 8]
.label_1298:
	movss	xmm1, dword ptr [rip + label_1186]
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
	jne	.label_1287
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_1292
	nop	word ptr cs:[rax + rax]
.label_1295:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1295
.label_1292:
	mov	qword ptr [r15 + 0x48], 0
.label_1287:
	mov	r12, r14
.label_1286:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1299:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e960

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
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_1306
	lea	rdi, [rbx*8]
	call	xmalloc
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
.label_1306:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e9e0

	.globl heap_default_compare
	.type heap_default_compare, @function
heap_default_compare:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e9f0
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
	#Procedure 0x40ea10

	.globl heap_insert
	.type heap_insert, @function
heap_insert:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdx, [rax - 1]
	cmp	rdx, rcx
	jbe	.label_1310
	mov	rax, qword ptr [r15]
	jmp	.label_1311
.label_1310:
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_1313
	movabs	rcx, 0xaaaaaaaaaaaaaaa
	cmp	rax, rcx
	jae	.label_1314
	mov	rcx, rax
	shr	rcx, 1
	lea	rsi, [rax + rcx + 1]
	jmp	.label_1309
.label_1313:
	test	rax, rax
	mov	esi, 0x10
	cmovne	rsi, rax
	mov	rax, rsi
	shr	rax, 0x3c
	jne	.label_1315
.label_1309:
	mov	qword ptr [r15 + 8], rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x10]
.label_1311:
	lea	rbx, [rcx + 1]
	mov	qword ptr [r15 + 0x10], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	r12, qword ptr [r15]
	mov	r14, qword ptr [r12 + rcx*8 + 8]
	mov	r13d, 1
	test	rcx, rcx
	je	.label_1308
	mov	r15, qword ptr [r15 + 0x18]
	mov	r13d, 1
	nop	word ptr cs:[rax + rax]
.label_1312:
	mov	rbp, rbx
	shr	rbp, 1
	mov	rdi, qword ptr [r12 + rbp*8]
	mov	rsi, r14
	call	r15
	test	eax, eax
	jg	.label_1307
	mov	rax, qword ptr [r12 + rbp*8]
	mov	qword ptr [r12 + rbx*8], rax
	cmp	rbp, 1
	mov	rbx, rbp
	jne	.label_1312
	jmp	.label_1308
.label_1307:
	mov	r13, rbx
.label_1308:
	mov	qword ptr [r12 + r13*8], r14
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1314:
	call	xalloc_die
.label_1315:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40eb10

	.globl heap_remove_top
	.type heap_remove_top, @function
heap_remove_top:
	mov	rdx, qword ptr [rdi + 0x10]
	xor	eax, eax
	test	rdx, rdx
	je	.label_1319
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rcx, qword ptr [rdi]
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 8], rax
	lea	r13, [rdx - 1]
	mov	qword ptr [rdi + 0x10], r13
	mov	rax, qword ptr [rcx + rdx*8]
	mov	qword ptr [rcx + 8], rax
	mov	rbx, qword ptr [rdi]
	mov	r12, qword ptr [rbx + 8]
	mov	r14, r13
	shr	r14, 1
	mov	ebp, 1
	je	.label_1317
	mov	rax, qword ptr [rdi + 0x18]
	mov	r15d, 1
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 0x10], r14
.label_1320:
	lea	rbp, [r15 + r15]
	cmp	rbp, r13
	jae	.label_1316
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	r14, r13
	mov	r13, r12
	mov	r12, rbp
	or	r12, 1
	mov	rsi, qword ptr [rbx + r12*8]
	call	qword ptr [rsp]
	test	eax, eax
	mov	rax, qword ptr [rsp]
	cmovs	rbp, r12
	mov	r12, r13
	mov	r13, r14
	mov	r14, qword ptr [rsp + 0x10]
.label_1316:
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	rsi, r12
	call	rax
	test	eax, eax
	jle	.label_1318
	mov	rax, qword ptr [rbx + rbp*8]
	mov	qword ptr [rbx + r15*8], rax
	cmp	rbp, r14
	mov	r15, rbp
	mov	rax, qword ptr [rsp]
	jbe	.label_1320
	jmp	.label_1317
.label_1318:
	mov	rbp, r15
.label_1317:
	mov	qword ptr [rbx + rbp*8], r12
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
.label_1319:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ebf0

	.globl inttostr
	.type inttostr, @function
inttostr:
	mov	byte ptr [rsi + 0xb], 0
	test	edi, edi
	js	.label_1321
	add	rsi, 0xb
	nop	dword ptr [rax]
.label_1324:
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
	ja	.label_1324
	jmp	.label_1323
.label_1321:
	add	rsi, 0xa
	nop	dword ptr [rax]
.label_1322:
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
	ja	.label_1322
	mov	byte ptr [rsi], 0x2d
.label_1323:
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ec80

	.globl uinttostr
	.type uinttostr, @function
uinttostr:
	mov	byte ptr [rsi + 0xa], 0
	add	rsi, 0xa
	mov	r8d, 0xcccccccd
	nop	
.label_1325:
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
	ja	.label_1325
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ecc0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_1326:
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
	ja	.label_1326
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ed10
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
	#Procedure 0x40ed30

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	r12, [rbx + rbp]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1350
	mov	rax, r14
	xor	r14d, r14d
	test	rbp, rbp
	jle	.label_1329
	mov	ecx, eax
	and	ecx, 2
	mov	dword ptr [rsp + 0x14], ecx
	and	eax, 1
	mov	ecx, eax
	xor	ecx, 1
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x20], rax
	lea	eax, [rax*4]
	xor	eax, 5
	mov	dword ptr [rsp + 0x18], eax
	xor	r15d, r15d
	lea	rbp, [rsp + 8]
	mov	r14d, 0x7fffffff
	nop	
.label_1345:
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	cmp	eax, 0x5e
	ja	.label_1337
	jmp	qword ptr [(rax * 8) + label_1340]
.label_2145:
	inc	rbx
	inc	r15d
.label_1328:
	cmp	rbx, r12
	jb	.label_1345
	jmp	.label_1333
.label_1337:
	mov	rax, qword ptr [rsp + 0x20]
	test	eax, eax
	mov	qword ptr [rsp + 8], 0
	jne	.label_1348
	nop	dword ptr [rax + rax]
.label_1341:
	mov	rdx, r12
	sub	rdx, rbx
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	r13, rax
	cmp	r13, -2
	je	.label_1354
	cmp	r13, -1
	je	.label_1355
	test	r13, r13
	jne	.label_1336
	mov	r13d, 1
.label_1336:
	mov	edi, dword ptr [rsp + 0x10]
	call	wcwidth
	test	eax, eax
	js	.label_1334
	mov	ecx, 0x7fffffff
	sub	ecx, r15d
	mov	edx, 7
	cmp	eax, ecx
	jg	.label_1327
	add	r15d, eax
	jmp	.label_1342
	nop	word ptr cs:[rax + rax]
.label_1354:
	add	r15d, dword ptr [rsp + 0x1c]
	mov	rbx, r12
	mov	edx, dword ptr [rsp + 0x18]
	jmp	.label_1327
	nop	
.label_1355:
	inc	rbx
	inc	r15d
	mov	edx, 5
	jmp	.label_1327
.label_1334:
	mov	edx, 1
	cmp	dword ptr [rsp + 0x14], 0
	jne	.label_1327
	mov	edi, dword ptr [rsp + 0x10]
	call	iswcntrl
	test	eax, eax
	jne	.label_1342
	cmp	r15d, 0x7fffffff
	jne	.label_1349
	mov	edx, 7
	mov	r15d, 0x7fffffff
	jmp	.label_1327
.label_1349:
	inc	r15d
	nop	
.label_1342:
	add	rbx, r13
	xor	edx, edx
.label_1327:
	lea	rbp, [rsp + 8]
	mov	eax, edx
	and	al, 7
	jne	.label_1335
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	je	.label_1341
	jmp	.label_1328
	nop	dword ptr [rax]
.label_1348:
	mov	rdx, r12
	sub	rdx, rbx
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	r13, rax
	mov	edx, 1
	test	r13, r13
	je	.label_1351
	cmp	r13, -1
	je	.label_1332
	cmp	r13, -2
	jne	.label_1353
	add	r15d, dword ptr [rsp + 0x1c]
	mov	edx, dword ptr [rsp + 0x18]
	jmp	.label_1332
	nop	word ptr [rax + rax]
.label_1351:
	mov	r13d, 1
.label_1353:
	mov	edi, dword ptr [rsp + 0x10]
	call	wcwidth
	test	eax, eax
	js	.label_1330
	mov	ecx, 0x7fffffff
	sub	ecx, r15d
	mov	edx, 7
	cmp	eax, ecx
	jg	.label_1332
	add	r15d, eax
	jmp	.label_1347
.label_1330:
	cmp	dword ptr [rsp + 0x14], 0
	mov	edx, 1
	jne	.label_1332
	mov	edi, dword ptr [rsp + 0x10]
	call	iswcntrl
	test	eax, eax
	jne	.label_1347
	cmp	r15d, 0x7fffffff
	jne	.label_1346
	mov	edx, 7
	mov	r15d, 0x7fffffff
	jmp	.label_1332
.label_1346:
	inc	r15d
	nop	dword ptr [rax + rax]
.label_1347:
	add	rbx, r13
	xor	edx, edx
.label_1332:
	lea	rbp, [rsp + 8]
	mov	eax, edx
	and	al, 7
	jne	.label_1335
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	je	.label_1348
	jmp	.label_1328
.label_1335:
	cmp	al, 5
	je	.label_1328
	and	dl, 7
	je	.label_1328
	mov	r15d, 0xffffffff
	cmp	dl, 7
	jne	.label_1333
	jmp	.label_1329
.label_1350:
	test	r14b, 2
	jne	.label_1338
	xor	r15d, r15d
	jmp	.label_1339
.label_1344:
	inc	r15d
	jmp	.label_1339
.label_1352:
	mov	r14d, 0x7fffffff
	cmp	r15d, 0x7fffffff
	jne	.label_1344
	jmp	.label_1329
	nop	word ptr cs:[rax + rax]
.label_1339:
	cmp	rbx, r12
	jae	.label_1333
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_1352
	test	al, 2
	jne	.label_1339
	jmp	.label_1352
.label_1333:
	mov	r14d, r15d
.label_1329:
	mov	eax, r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1338:
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1343:
	cmp	rbx, r12
	jae	.label_1331
	movzx	r15d, byte ptr [rbx]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	r14d, 0xffffffff
	test	byte ptr [rax + r15*2 + 1], 0x40
	je	.label_1329
	inc	rbx
	inc	ebp
	mov	r14d, 0x7fffffff
	cmp	ebp, 0x80000000
	jne	.label_1343
	jmp	.label_1329
.label_1331:
	mov	r14d, ebp
	jmp	.label_1329
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f050

	.globl num_processors
	.type num_processors, @function
num_processors:
	push	r14
	push	rbx
	sub	rsp, 0x88
	mov	rbx, -1
	cmp	edi, 2
	jne	.label_1374
	mov	edi, OFFSET FLAT:label_1378
	call	getenv
	xor	r14d, r14d
	test	rax, rax
	je	.label_1362
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_1356
	mov	edx, 0x80001f
	nop	dword ptr [rax + rax]
.label_1366:
	movsx	esi, cl
	add	esi, -9
	cmp	esi, 0x17
	ja	.label_1363
	bt	edx, esi
	jae	.label_1363
	mov	cl, byte ptr [rax + 1]
	inc	rax
	test	cl, cl
	jne	.label_1366
.label_1356:
	xor	ecx, ecx
.label_1363:
	movsx	ecx, cl
	add	ecx, -0x30
	xor	r14d, r14d
	cmp	ecx, 9
	ja	.label_1362
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtoul
	mov	r14, rax
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_1375
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_1362
	inc	rax
	mov	edx, 0x80001f
.label_1361:
	movsx	esi, cl
	add	esi, -9
	cmp	esi, 0x17
	ja	.label_1367
	bt	edx, esi
	jae	.label_1367
	mov	qword ptr [rsp + 8], rax
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_1361
	jmp	.label_1362
.label_1367:
	cmp	cl, 0x2c
	je	.label_1362
.label_1375:
	xor	r14d, r14d
.label_1362:
	mov	edi, OFFSET FLAT:label_1365
	call	getenv
	xor	ecx, ecx
	test	rax, rax
	je	.label_1359
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_1369
	mov	edx, 0x80001f
	nop	dword ptr [rax]
.label_1377:
	movsx	esi, cl
	add	esi, -9
	cmp	esi, 0x17
	ja	.label_1372
	bt	edx, esi
	jae	.label_1372
	mov	cl, byte ptr [rax + 1]
	inc	rax
	test	cl, cl
	jne	.label_1377
.label_1369:
	xor	ecx, ecx
.label_1372:
	movsx	edx, cl
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_1359
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtoul
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_1360
	mov	dl, byte ptr [rax]
	test	dl, dl
	je	.label_1359
	inc	rax
	mov	esi, 0x80001f
	nop	
.label_1370:
	movsx	edi, dl
	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1358
	bt	esi, edi
	jae	.label_1358
	mov	qword ptr [rsp + 8], rax
	movzx	edx, byte ptr [rax]
	inc	rax
	test	dl, dl
	jne	.label_1370
	jmp	.label_1359
.label_1358:
	cmp	dl, 0x2c
	je	.label_1359
.label_1360:
	xor	ecx, ecx
.label_1359:
	cmp	rcx, 1
	sbb	rbx, rbx
	or	rbx, rcx
	cmp	r14, rbx
	mov	rax, rbx
	cmovb	rax, r14
	mov	edi, 1
	test	r14, r14
	jne	.label_1373
.label_1374:
	cmp	edi, 1
	jne	.label_1376
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x80
	call	sched_getaffinity
	test	eax, eax
	jne	.label_1357
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	call	__sched_cpucount
	test	eax, eax
	je	.label_1357
	cdqe	
	jmp	.label_1364
.label_1376:
	mov	edi, 0x53
	call	sysconf
	cmp	rax, 1
	jne	.label_1368
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x80
	call	sched_getaffinity
	test	eax, eax
	jne	.label_1371
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	call	__sched_cpucount
	test	eax, eax
	je	.label_1371
	cdqe	
	jmp	.label_1368
.label_1357:
	mov	edi, 0x54
	call	sysconf
.label_1368:
	test	rax, rax
	jg	.label_1364
.label_1371:
	mov	eax, 1
.label_1364:
	cmp	rax, rbx
	cmovb	rbx, rax
	mov	rax, rbx
.label_1373:
	add	rsp, 0x88
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f280

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
	js	.label_1381
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
.label_1380:
	mulsd	xmm0, xmm1
	jmp	.label_1383
.label_1381:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_1382
	movsd	xmm0, qword ptr [rip + label_1379]
.label_1383:
	add	rsp, 0x70
	pop	rbx
	ret	
.label_1382:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0, xmmword ptr [rip + label_365]
	subpd	xmm0, xmmword ptr [rip + label_366]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.label_1380
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f300

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
	js	.label_1390
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_1385
.label_1390:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_1384
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_1389
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
.label_1386:
	mulsd	xmm0, xmm1
	jmp	.label_1387
.label_1384:
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1, xmmword ptr [rip + label_365]
	punpckldq	xmm0, xmm1
	movapd	xmm2, xmmword ptr [rip + label_366]
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
	jmp	.label_1385
.label_1389:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_1388
	movsd	xmm0, qword ptr [rip + label_1379]
.label_1387:
	mulsd	xmm0, qword ptr [rip + label_918]
.label_1385:
	add	rsp, 0x70
	pop	rbx
	ret	
.label_1388:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0, xmmword ptr [rip + label_365]
	subpd	xmm0, xmmword ptr [rip + label_366]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.label_1386
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f420

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
	cmp	dword ptr [rip + rpl_pipe2.have_pipe2_really],  0
	js	.label_1394
	mov	rdi, rbx
	mov	r12d, esi
	call	pipe2
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1392
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1392
	mov	dword ptr [rip + rpl_pipe2.have_pipe2_really],  0xffffffff
	mov	esi, r12d
.label_1394:
	test	esi, 0xfff7f7ff
	je	.label_1395
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1397:
	mov	ebp, 0xffffffff
	jmp	.label_1393
.label_1392:
	mov	dword ptr [rip + rpl_pipe2.have_pipe2_really],  1
.label_1393:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1395:
	mov	r12d, esi
	mov	rdi, rbx
	call	pipe
	mov	ebp, 0xffffffff
	test	eax, eax
	js	.label_1393
	mov	eax, r12d
	test	ah, 8
	je	.label_1396
	mov	edi, dword ptr [rbx + 4]
	mov	esi, 3
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1391
	mov	edi, dword ptr [rbx + 4]
	or	ecx, 0x800
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1391
	mov	edi, dword ptr [rbx]
	mov	esi, 3
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1391
	mov	edi, dword ptr [rbx]
	or	ecx, 0x800
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1391
.label_1396:
	xor	ebp, ebp
	test	r12d, 0x80000
	je	.label_1393
	mov	edi, dword ptr [rbx + 4]
	mov	esi, 1
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1391
	mov	edi, dword ptr [rbx + 4]
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1391
	mov	edi, dword ptr [rbx]
	xor	ebp, ebp
	mov	esi, 1
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1391
	mov	edi, dword ptr [rbx]
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_1393
.label_1391:
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
	jmp	.label_1397
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f5c0

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_1398
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_1399
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_1399
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_1399:
	cmp	rcx, 0x7fffffff
	mov	edx, 0x7fffffff
	cmovl	edx, ecx
	cmp	rcx, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, edx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f620

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1400
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1402
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1404
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1402
	mov	esi, OFFSET FLAT:label_1403
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1405
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1405:
	mov	rbx, r14
.label_1402:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1400:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_1401
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f6d0
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
	#Procedure 0x40f710
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
	#Procedure 0x40f720
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
	#Procedure 0x40f730
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
	.align	32
	#Procedure 0x40f770
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
	#Procedure 0x40f790
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_1406
	test	rdx, rdx
	je	.label_1406
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_1406:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f7c0
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
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
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
	.align	32
	#Procedure 0x40f840

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_1451
	nop	
.label_1492:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_1479
	or	al, dl
	jne	.label_1479
	test	dil, 1
	jne	.label_1491
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_1479
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_1451
	jmp	.label_1479
.label_2010:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_1496
	test	rbp, rbp
	je	.label_1436
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_1436:
	mov	r14d, 1
	jmp	.label_1500
.label_2011:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_1502
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_1447
.label_1496:
	xor	r14d, r14d
.label_1500:
	mov	eax, OFFSET FLAT:label_1502
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_1523
	nop	
.label_1451:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1518
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_1452]
.label_2012:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_1529
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_1408
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_2013:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_1420
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_1420
	xor	r14d, r14d
	nop	
.label_1427:
	cmp	r14, rbp
	jae	.label_1435
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_1435:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1427
.label_1420:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_1447
.label_2005:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1447
.label_2008:
	mov	al, 1
.label_2006:
	mov	r12b, 1
.label_2009:
	test	r12b, 1
	mov	cl, 1
	je	.label_1461
	mov	ecx, eax
.label_1461:
	mov	al, cl
.label_2007:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_1463
	test	rbp, rbp
	je	.label_1469
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_1469:
	mov	r14d, 1
	jmp	.label_1472
.label_1463:
	xor	r14d, r14d
.label_1472:
	mov	ecx, OFFSET FLAT:label_1408
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_1523:
	mov	sil, r12b
.label_1447:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_1481
	nop	word ptr cs:[rax + rax]
.label_1483:
	inc	r12
.label_1481:
	cmp	r11, -1
	je	.label_1505
	cmp	r12, r11
	jne	.label_1508
	jmp	.label_1510
	nop	word ptr cs:[rax + rax]
.label_1505:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_1471
.label_1508:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_1519
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_1522
	cmp	r11, -1
	jne	.label_1522
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_1522:
	cmp	rbx, r11
	jbe	.label_1533
.label_1519:
	xor	esi, esi
.label_1449:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_1409
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_1415]
.label_1951:
	test	r12, r12
	jne	.label_1423
	jmp	.label_1426
	nop	word ptr cs:[rax + rax]
.label_1533:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_1438
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_1449
	jmp	.label_1470
.label_1438:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_1449
.label_1955:
	xor	eax, eax
	cmp	r11, -1
	je	.label_1456
	test	r12, r12
	jne	.label_1460
	cmp	r11, 1
	je	.label_1426
	xor	r13d, r13d
	jmp	.label_1414
.label_1944:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_1465
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1470
	cmp	r8d, 2
	jne	.label_1475
	mov	eax, r9d
	and	al, 1
	jne	.label_1475
	cmp	r14, rbp
	jae	.label_1476
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1476:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1480
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_1480:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1484
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1484:
	add	r14, 3
	mov	r9b, 1
.label_1475:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_1489
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_1489:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_1490
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_1490
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_1490
	cmp	r14, rbp
	jae	.label_1430
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_1430:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_1417
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_1417:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_1414
.label_1945:
	mov	bl, 0x62
	jmp	.label_1506
.label_1946:
	mov	cl, 0x74
	jmp	.label_1422
.label_1947:
	mov	bl, 0x76
	jmp	.label_1506
.label_1948:
	mov	bl, 0x66
	jmp	.label_1506
.label_1949:
	mov	cl, 0x72
	jmp	.label_1422
.label_1952:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_1515
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1418
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_1525
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1525:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1412
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_1412:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1419
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1419:
	add	r14, 3
	xor	r9d, r9d
.label_1515:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1414
.label_1953:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_1504
	cmp	r8d, 2
	jne	.label_1423
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_1423
	jmp	.label_1418
.label_1954:
	cmp	r8d, 2
	jne	.label_1443
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1418
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_1448
.label_1409:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_1450
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_1439
.label_1456:
	test	r12, r12
	jne	.label_1473
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_1473
.label_1426:
	mov	dl, 1
.label_1950:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_1418
	xor	eax, eax
	mov	r13b, dl
.label_1414:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_1482
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_1485
	jmp	.label_1487
	nop	word ptr cs:[rax + rax]
.label_1482:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_1487
.label_1485:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1453
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_1494
	nop	dword ptr [rax]
.label_1487:
	test	sil, sil
.label_1494:
	mov	ebx, r15d
	je	.label_1428
	jmp	.label_1498
.label_1453:
	mov	ebx, r15d
	jmp	.label_1498
.label_1465:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_1483
	xor	r15d, r15d
	jmp	.label_1423
.label_1443:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_1422
	xor	eax, eax
	mov	r15b, 0x5c
.label_1448:
	xor	r13d, r13d
	jmp	.label_1428
.label_1422:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_1418
.label_1506:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_1414
	nop	
.label_1498:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1470
	cmp	r8d, 2
	jne	.label_2136
	jne	.label_2136
