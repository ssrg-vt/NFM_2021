	.section	.text
	.align	16
	#Procedure 0x402b90

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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.14
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.16
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.19
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_8
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	strncmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_8
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.79
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.22
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.22
	mov	ecx, OFFSET FLAT:.str.82
	xor	eax, eax
	nop	
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0

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
	sub	rsp, 0x3a8
	mov	rbx, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x278], rbx
	lea	rsi, [rsi]
	mov	r15d, edi
	mov	edi, OFFSET FLAT:.str.23
	lea	rsi, [rsi]
	call	getenv
	mov	qword ptr [rsp + 0x138], rax
	call	posix2_version
	mov	rsp, rsp
	add	eax, 0xfffcf250
	cmp	eax, 0x2b8
	seta	al
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x3a0], eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	lea	rsi, [rsi]
	mov	edi, 6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	qword ptr [rsp + 0x270], rax
	mov	rbp, rbp
	test	rax, rax
	setne	byte ptr [rsp + 0x10]
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
	mov	dword ptr [dword ptr [rip + exit_failure]],  2
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
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx]
	lea	rdi, [rdi]
	test	edx, edx
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + decimal_point]],  edx
	je	.label_75
	nop	
	cmp	byte ptr [rcx + 1], 0
	je	.label_84
.label_75:
	mov	dword ptr [dword ptr [rip + decimal_point]],  0x2e
.label_84:
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	nop	
	test	ecx, ecx
	mov	dword ptr [dword ptr [rip + thousands_sep]],  ecx
	je	.label_87
	cmp	byte ptr [rax + 1], 0
	je	.label_92
.label_87:
	nop	
	mov	dword ptr [dword ptr [rip + thousands_sep]],  0xffffffff
.label_92:
	nop	
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	rsp, rsp
	mov	rbp, -0x100
	call	__ctype_b_loc
	mov	r13, rax
	nop	dword ptr [rax]
.label_135:
	mov	rcx, qword ptr [r13]
	lea	rsi, [rsi]
	movzx	eax, word ptr [rcx + rbp*2 + 0x200]
	and	eax, 1
	movzx	edx, bpl
	cmp	edx, 0xa
	sete	dl
	lea	rdi, [rdi]
	or	dl, al
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rbp + nonprinting]],  dl
	movzx	ecx, word ptr [rcx + rbp*2 + 0x200]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	shr	edx, 0xe
	not	edx
	and	edx, 1
	mov	byte ptr [byte ptr [rbp + nondictionary]],  dl
	test	cl, 8
	jne	.label_102
	mov	rsp, rsp
	movzx	ecx, bpl
	cmp	ecx, 0xa
	mov	rbp, rbp
	setne	cl
	mov	rsp, rsp
	test	ax, ax
	sete	al
	mov	rbp, rbp
	and	al, cl
	jmp	.label_113
	nop	dword ptr [rax + rax]
.label_102:
	lea	rsi, [rsi]
	xor	eax, eax
.label_113:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rbp + fold_toupper]],  al
	lea	rsi, [rsi]
	lea	eax, [rbp + 0x180]
	cmp	eax, 0x180
	jae	.label_315
	lea	rdi, [rdi]
	call	__ctype_toupper_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbp*4 + 0x400]
	mov	rbp, rbp
	jmp	.label_128
	nop	dword ptr [rax]
.label_315:
	lea	rdi, [rdi]
	lea	rax, [rbp + 0x100]
.label_128:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rbp + temphead]],  al
	inc	rbp
	jne	.label_135
	mov	rbp, rbp
	xor	r12d, r12d
	cmp	byte ptr [byte ptr [rip + hard_LC_TIME]],  0
	nop	
	je	.label_137
.label_188:
	mov	rsp, rsp
	lea	edi, [r12 + 0x2000e]
	lea	rsi, [rsi]
	call	rpl_nl_langinfo
	mov	r14, rax
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	strlen
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	lea	rdi, [rbp + 1]
	nop	
	call	xmalloc
	mov	rcx, r12
	lea	rdi, [rdi]
	shl	rcx, 4
	nop	
	mov	qword ptr [word ptr [rcx + monthtab]],  rax
	inc	r12
	mov	dword ptr [dword ptr [rcx + label_119]],  r12d
	test	rbp, rbp
	mov	rsp, rsp
	mov	ecx, 0
	je	.label_120
	lea	rdi, [rdi]
	test	bpl, 1
	mov	esi, 0
	mov	edx, 0
	je	.label_152
	movzx	edi, byte ptr [r14]
	mov	rcx, qword ptr [r13]
	lea	rdi, [rdi]
	test	byte ptr [rcx + rdi*2], 1
	lea	rdi, [rdi]
	mov	ecx, 0
	mov	esi, 0
	mov	edx, 1
	mov	rsp, rsp
	jne	.label_152
	mov	cl,  byte ptr [byte ptr [rdi + fold_toupper]]
	mov	rbp, rbp
	mov	byte ptr [rax], cl
	nop	
	mov	ecx, 1
	mov	esi, 1
	mov	edx, 1
.label_152:
	mov	rbp, rbp
	cmp	rbp, 1
	je	.label_120
	mov	rsp, rsp
	sub	rbp, rdx
	lea	rdx, [r14 + rdx + 1]
	mov	rcx, rsi
	nop	dword ptr [rax + rax]
.label_186:
	movzx	esi, byte ptr [rdx - 1]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r13]
	lea	rsi, [rsi]
	test	byte ptr [rdi + rsi*2], 1
	nop	
	jne	.label_19
	lea	rsi, [rsi]
	mov	bl,  byte ptr [byte ptr [rsi + fold_toupper]]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], bl
	inc	rcx
.label_19:
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rdx]
	mov	rdi, qword ptr [r13]
	lea	rdi, [rdi]
	test	byte ptr [rdi + rsi*2], 1
	nop	
	jne	.label_330
	mov	bl,  byte ptr [byte ptr [rsi + fold_toupper]]
	nop	
	mov	byte ptr [rax + rcx], bl
	inc	rcx
.label_330:
	mov	rsp, rsp
	add	rdx, 2
	add	rbp, -2
	jne	.label_186
.label_120:
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0
	nop	
	cmp	r12, 0xc
	mov	rsp, rsp
	jne	.label_188
	mov	edi, OFFSET FLAT:monthtab
	mov	rbp, rbp
	mov	esi, 0xc
	mov	rsp, rsp
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:struct_month_cmp
	call	qsort
.label_137:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:caught_signals
	nop	
	call	sigemptyset
	lea	rdx, [rsp + 0x90]
	mov	edi, 0xe
	xor	esi, esi
	mov	rbp, rbp
	call	sigaction
	cmp	qword ptr [rsp + 0x90], 1
	mov	rsp, rsp
	je	.label_205
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	esi, 0xe
	nop	
	call	sigaddset
.label_205:
	lea	rdx, [rsp + 0x90]
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x90], 1
	nop	
	je	.label_214
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigaddset
.label_214:
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x90]
	nop	
	mov	edi, 2
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	call	sigaction
	cmp	qword ptr [rsp + 0x90], 1
	nop	
	je	.label_221
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	lea	rdi, [rdi]
	call	sigaddset
.label_221:
	mov	rbp, rbp
	lea	rdx, [rsp + 0x90]
	mov	edi, 0xd
	xor	esi, esi
	lea	rsi, [rsi]
	call	sigaction
	cmp	qword ptr [rsp + 0x90], 1
	je	.label_202
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	mov	rsp, rsp
	call	sigaddset
.label_202:
	lea	rdx, [rsp + 0x90]
	mov	edi, 3
	xor	esi, esi
	nop	
	call	sigaction
	cmp	qword ptr [rsp + 0x90], 1
	lea	rsi, [rsi]
	je	.label_241
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rsp, rsp
	call	sigaddset
.label_241:
	mov	rbp, rbp
	lea	rdx, [rsp + 0x90]
	mov	edi, 0xf
	nop	
	xor	esi, esi
	call	sigaction
	nop	
	cmp	qword ptr [rsp + 0x90], 1
	je	.label_252
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigaddset
.label_252:
	lea	rdx, [rsp + 0x90]
	mov	rsp, rsp
	mov	edi, 0x1d
	xor	esi, esi
	nop	
	call	sigaction
	cmp	qword ptr [rsp + 0x90], 1
	lea	rdi, [rdi]
	je	.label_105
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigaddset
.label_105:
	lea	rdx, [rsp + 0x90]
	mov	edi, 0x1b
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	call	sigaction
	nop	
	cmp	qword ptr [rsp + 0x90], 1
	nop	
	je	.label_276
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigaddset
.label_276:
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x90]
	mov	rbp, rbp
	mov	edi, 0x1a
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	call	sigaction
	cmp	qword ptr [rsp + 0x90], 1
	lea	rdi, [rdi]
	je	.label_286
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	esi, 0x1a
	call	sigaddset
.label_286:
	nop	
	lea	rdx, [rsp + 0x90]
	lea	rsi, [rsi]
	mov	edi, 0x18
	lea	rdi, [rdi]
	xor	esi, esi
	call	sigaction
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x90], 1
	je	.label_291
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigaddset
.label_291:
	lea	rdx, [rsp + 0x90]
	mov	rbp, rbp
	mov	edi, 0x19
	xor	esi, esi
	lea	rsi, [rsi]
	call	sigaction
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x90], 1
	je	.label_302
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	lea	rsi, [rsi]
	call	sigaddset
.label_302:
	mov	qword ptr [word ptr [rsp + 144]], OFFSET FLAT:sighandler
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_307]]
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x108], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_308]]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0xf8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_309]]
	movups	xmmword ptr [rsp + 0xe8], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_310]]
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0xd8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_311]]
	movups	xmmword ptr [rsp + 0xc8], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_312]]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0xb8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_313]]
	movups	xmmword ptr [rsp + 0xa8], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x98], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x118], 0
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	mov	rsp, rsp
	call	sigismember
	mov	rsp, rsp
	test	eax, eax
	je	.label_220
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x90]
	mov	edi, 0xe
	mov	rbp, rbp
	xor	edx, edx
	call	sigaction
.label_220:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigismember
	test	eax, eax
	mov	rsp, rsp
	je	.label_357
	lea	rsi, [rsp + 0x90]
	mov	edi, 1
	xor	edx, edx
	lea	rdi, [rdi]
	call	sigaction
.label_357:
	mov	edi, OFFSET FLAT:caught_signals
	nop	
	mov	esi, 2
	lea	rsi, [rsi]
	call	sigismember
	test	eax, eax
	nop	
	je	.label_361
	lea	rsi, [rsp + 0x90]
	mov	edi, 2
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	call	sigaction
.label_361:
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	esi, 0xd
	call	sigismember
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_10
	lea	rsi, [rsp + 0x90]
	mov	edi, 0xd
	xor	edx, edx
	call	sigaction
.label_10:
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	esi, 3
	call	sigismember
	test	eax, eax
	mov	rsp, rsp
	je	.label_18
	lea	rsi, [rsp + 0x90]
	mov	rbp, rbp
	mov	edi, 3
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	call	sigaction
.label_18:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	lea	rsi, [rsi]
	call	sigismember
	test	eax, eax
	je	.label_25
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x90]
	mov	edi, 0xf
	xor	edx, edx
	mov	rsp, rsp
	call	sigaction
.label_25:
	mov	edi, OFFSET FLAT:caught_signals
	lea	rsi, [rsi]
	mov	esi, 0x1d
	lea	rdi, [rdi]
	call	sigismember
	test	eax, eax
	mov	rbp, rbp
	je	.label_185
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x90]
	mov	edi, 0x1d
	xor	edx, edx
	call	sigaction
.label_185:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	lea	rsi, [rsi]
	call	sigismember
	test	eax, eax
	je	.label_43
	mov	rbp, rbp
	lea	rsi, [rsp + 0x90]
	lea	rsi, [rsi]
	mov	edi, 0x1b
	xor	edx, edx
	lea	rdi, [rdi]
	call	sigaction
.label_43:
	mov	edi, OFFSET FLAT:caught_signals
	nop	
	mov	esi, 0x1a
	mov	rbp, rbp
	call	sigismember
	test	eax, eax
	mov	rbp, rbp
	je	.label_52
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x90]
	mov	edi, 0x1a
	mov	rbp, rbp
	xor	edx, edx
	call	sigaction
.label_52:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigismember
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_62
	lea	rsi, [rsp + 0x90]
	mov	edi, 0x18
	xor	edx, edx
	mov	rsp, rsp
	call	sigaction
.label_62:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	esi, 0x19
	call	sigismember
	test	eax, eax
	je	.label_34
	lea	rsi, [rsp + 0x90]
	mov	rbp, rbp
	mov	edi, 0x19
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	call	sigaction
.label_34:
	xor	ebp, ebp
	mov	rbp, rbp
	mov	edi, 0x11
	xor	esi, esi
	mov	rsp, rsp
	call	signal
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:exit_cleanup
	call	atexit
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], 0
	mov	qword ptr [rsp + 0x30], -1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], -1
	lea	rdi, [rdi]
	test	r15d, r15d
	js	.label_108
	mov	r13d, r15d
	mov	rbp, rbp
	movsxd	rdi, r13d
	shl	rdi, 3
	call	xmalloc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x258], r14
	cmp	qword ptr [rsp + 0x138], 0
	mov	rsp, rsp
	sete	byte ptr [rsp + 0x260]
	lea	rax, [rsp + 0x90]
	mov	qword ptr [rsp + 0x130], rax
	mov	rax, -1
	movq	xmm0, rax
	movapd	xmmword ptr [rsp + 0x1b0], xmm0
	mov	eax, 0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x190], rax
	xor	r10d, r10d
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1a8], rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x278]
	jmp	.label_20
	nop	word ptr [rax + rax]
.label_223:
	mov	rbp, rbp
	lea	ecx, [rax + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rax, qword ptr [r8 + rax*8]
	mov	rsp, rsp
	mov	qword ptr [r14 + r10*8], rax
	mov	rsp, rsp
	inc	r10
	lea	rsi, [rsi]
	mov	cl, r15b
.label_20:
	mov	dword ptr [rsp + 0x1d0], 0xffffffff
	lea	rsi, [rsi]
	cmp	ebp, -1
	je	.label_324
	nop	
	cmp	qword ptr [rsp + 0x138], 0
	lea	rsi, [rsi]
	je	.label_73
	lea	rsi, [rsi]
	test	r10, r10
	je	.label_73
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x3a0]
	test	al, 1
	lea	rsi, [rsi]
	je	.label_141
	lea	rsi, [rsi]
	test	r12b, r12b
	mov	rbp, rbp
	jne	.label_141
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	cmp	eax, r13d
	nop	
	je	.label_141
	mov	rbp, rbp
	mov	rcx, qword ptr [r8 + rax*8]
	movzx	edx, byte ptr [rcx]
	lea	rsi, [rsi]
	cmp	edx, 0x2d
	jne	.label_141
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x6f
	mov	rbp, rbp
	jne	.label_141
	lea	rdi, [rdi]
	inc	eax
	mov	rsp, rsp
	cmp	eax, r13d
	mov	rsp, rsp
	jne	.label_73
	mov	al, byte ptr [rcx + 2]
	test	al, al
	lea	rdi, [rdi]
	je	.label_141
	nop	dword ptr [rax + rax]
.label_73:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1d8], r15
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r12
	mov	r12, r10
	mov	edx, OFFSET FLAT:short_options
	nop	
	mov	ecx, OFFSET FLAT:long_options
	mov	rbp, rbp
	mov	edi, r13d
	lea	rsi, [rsi]
	mov	rsi, r8
	lea	rsi, [rsi]
	mov	rbx, r8
	lea	r8, [rsp + 0x1d0]
	nop	
	call	getopt_long
	test	eax, eax
	jle	.label_177
	lea	rsi, [rsi]
	lea	edx, [rax - 0x43]
	cmp	edx, 0x44
	ja	.label_181
	mov	rbp, rbp
	mov	ebp, 0x6d
	mov	cl, 1
	lea	rdi, [rdi]
	mov	r8, rbx
	mov	r10, r12
	mov	r12, r14
	mov	r14, r15
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_345]]
.label_1927:
	mov	rsp, rsp
	mov	rax, r12
	mov	r12, r10
	mov	qword ptr [rsp + 0x128], rax
	nop	
	mov	rbx, r8
	mov	rsp, rsp
	mov	ebp, dword ptr [rsp + 0x1d0]
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str.140
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsp + 0x200]
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x90]
	call	xstrtoumax
	cmp	eax, 2
	je	.label_107
	test	eax, eax
	mov	rbp, rbp
	mov	r8, rbx
	mov	r10, r12
	nop	
	mov	rbx, qword ptr [rsp + 0x1d8]
	lea	rsi, [rsi]
	jne	.label_207
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x200]
	mov	rsp, rsp
	movsx	eax, byte ptr [rax - 1]
	add	eax, -0x30
	cmp	eax, 9
	mov	rbp, rbp
	ja	.label_142
	mov	rcx, qword ptr [rsp + 0x90]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rsp, rsp
	shr	rdx, 0x36
	lea	rsi, [rsi]
	jne	.label_207
	lea	rsi, [rsi]
	shl	rcx, 0xa
	lea	rsi, [rsi]
	jmp	.label_217
	nop	word ptr cs:[rax + rax]
.label_324:
	lea	rdi, [rdi]
	mov	ebp, 0xffffffff
.label_141:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r13d
	jl	.label_223
	nop	
	jmp	.label_228
.label_177:
	nop	
	cmp	eax, -1
	mov	ebp, 0xffffffff
	mov	rbp, rbp
	mov	r8, rbx
	mov	r10, r12
	mov	r12, r14
	mov	r14, r15
	mov	r15, qword ptr [rsp + 0x1d8]
	lea	rsi, [rsi]
	je	.label_141
	lea	rdi, [rdi]
	jmp	.label_235
.label_181:
	cmp	eax, 1
	mov	rcx, rbx
	mov	r10, r12
	mov	r12, r14
	mov	r14, r15
	mov	rbp, rbp
	jne	.label_237
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2b
	mov	rbp, rbp
	jne	.label_242
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	rbp, r10
	mov	rsp, rsp
	cmp	eax, r13d
	nop	
	jne	.label_247
	xor	ebx, ebx
	mov	r15, qword ptr [rsp + 0x1d8]
	jmp	.label_168
.label_1928:
	mov	qword ptr [rsp + 0x128], r12
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	mov	rsi,  qword ptr [word ptr [rip + temp_dir_count]]
	cmp	rsi,  qword ptr [word ptr [rip + temp_dir_alloc]]
	jne	.label_256
	mov	rdi,  qword ptr [word ptr [rip + temp_dirs]]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_262
	movabs	rax, 0xaaaaaaaaaaaaaaa
	mov	rsp, rsp
	cmp	rsi, rax
	mov	rbx, qword ptr [rsp + 0x1d8]
	mov	rsp, rsp
	jae	.label_266
	mov	r15, r10
	lea	rdi, [rdi]
	mov	rbp, r8
	nop	
	mov	rax, rsi
	lea	rdi, [rdi]
	shr	rax, 1
	nop	
	lea	rsi, [rsi + rax + 1]
	jmp	.label_274
.label_1936:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	eax, 0x63
	nop	
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_280
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.33
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:check_args
	mov	ecx, OFFSET FLAT:check_types
	mov	rbx, r8
	mov	r8d, 1
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	call	__xargmatch_internal
	mov	rsp, rsp
	mov	r10, rbp
	mov	r8, rbx
	movsx	eax,  byte ptr [byte ptr [rax + check_types]]
.label_280:
	lea	rsi, [rsi]
	test	r12b, r12b
	je	.label_290
	movsx	ecx, r12b
	cmp	ecx, eax
	nop	
	jne	.label_292
.label_290:
	mov	rcx, qword ptr [rsp + 0x1d8]
	lea	rsi, [rsi]
	mov	r12b, al
	mov	ebp, eax
	mov	r15b, cl
	jmp	.label_20
.label_1938:
	nop	
	mov	byte ptr [byte ptr [rip + debug]],  1
	mov	rbp, rbp
	mov	ebp, 0x82
	jmp	.label_65
.label_1939:
	mov	ebp, 0x83
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x190], rax
	nop	
	jmp	.label_65
.label_1942:
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.32
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:sort_args
	mov	ecx, OFFSET FLAT:sort_types
	mov	rbp, rbp
	mov	rbx, r8
	lea	rsi, [rsi]
	mov	r8d, 1
	lea	rdi, [rdi]
	mov	rbp, r10
	call	__xargmatch_internal
	mov	r10, rbp
	nop	
	mov	r8, rbx
	movsx	eax,  byte ptr [byte ptr [rax + sort_types]]
.label_1926:
	mov	ebp, eax
	mov	byte ptr [rsp + 0x90], bpl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x91], 0
	test	bpl, bpl
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x91]
	mov	cl, bpl
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x1d8]
	je	.label_327
	nop	word ptr [rax + rax]
.label_9:
	lea	rsi, [rsi]
	movsx	ecx, cl
	mov	rsp, rsp
	cmp	ecx, 0x61
	lea	rsi, [rsi]
	jle	.label_336
	add	ecx, -0x62
	cmp	ecx, 0x10
	ja	.label_327
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_341]]
.label_1910:
	mov	word ptr [rsp + 0x50], 0x101
	mov	rbp, rbp
	jmp	.label_267
	nop	word ptr cs:[rax + rax]
.label_336:
	cmp	ecx, 0x4d
	lea	rdi, [rdi]
	je	.label_346
	cmp	ecx, 0x52
	je	.label_347
	mov	rbp, rbp
	cmp	ecx, 0x56
	mov	rsp, rsp
	jne	.label_327
	mov	byte ptr [rsp + 0x58], 1
	nop	
	jmp	.label_267
.label_1912:
	mov	qword ptr [word ptr [rsp + 72]], OFFSET FLAT:fold_toupper
	jmp	.label_267
.label_1913:
	nop	
	mov	byte ptr [rsp + 0x54], 1
	jmp	.label_267
.label_1916:
	mov	byte ptr [rsp + 0x52], 1
	jmp	.label_267
.label_1911:
	mov	qword ptr [word ptr [rsp + 64]], OFFSET FLAT:nondictionary
	lea	rsi, [rsi]
	jmp	.label_267
.label_1914:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x55], 1
	jmp	.label_267
.label_1915:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x40], 0
	jne	.label_267
	mov	qword ptr [word ptr [rsp + 64]], OFFSET FLAT:nonprinting
	jmp	.label_267
.label_1917:
	nop	
	mov	byte ptr [rsp + 0x57], 1
	nop	
	jmp	.label_267
.label_346:
	mov	byte ptr [rsp + 0x56], 1
	jmp	.label_267
.label_347:
	mov	byte ptr [rsp + 0x53], 1
	nop	dword ptr [rax]
.label_267:
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_9
.label_327:
	mov	cl, dl
	mov	r15b, cl
	lea	rdi, [rdi]
	jmp	.label_20
.label_1929:
	mov	qword ptr [rsp + 0x18], r10
	xorpd	xmm0, xmm0
	lea	rsi, [rsi]
	movapd	xmmword ptr [rsp + 0x170], xmm0
	movapd	xmmword ptr [rsp + 0x160], xmm0
	lea	rdi, [rdi]
	movapd	xmmword ptr [rsp + 0x150], xmm0
	movapd	xmmword ptr [rsp + 0x140], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x180], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x150], -1
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbp
	nop	
	lea	rsi, [rsp + 0x90]
	lea	rcx, [rsp + 0x200]
	call	xstrtoumax
	mov	rbp, rbp
	mov	ecx, eax
	cmp	eax, 4
	mov	rsp, rsp
	ja	.label_32
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_190]]
.label_1770:
	mov	rbp, rbp
	mov	rbx, r14
	mov	rcx, qword ptr [rsp + 0x200]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x140], rcx
	mov	rsp, rsp
	jmp	.label_40
.label_1930:
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rbp, rbp
	mov	ebp, 0x6f
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	je	.label_44
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x128], r12
	mov	r12, r10
	lea	rdi, [rdi]
	call	strcmp
	lea	rdi, [rdi]
	mov	r10, r12
	mov	r8, qword ptr [rsp + 0x278]
	mov	r12, qword ptr [rsp + 0x128]
	test	eax, eax
	mov	qword ptr [rsp + 0x70], rbx
	mov	rax, qword ptr [rsp + 0x1d8]
	mov	cl, al
	mov	rbp, rbp
	je	.label_53
	jmp	.label_63
.label_1931:
	mov	byte ptr [byte ptr [rip + stable]],  1
	mov	ebp, 0x73
	lea	rdi, [rdi]
	jmp	.label_65
.label_1932:
	nop	
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	test	cl, cl
	nop	
	je	.label_67
	mov	dl, byte ptr [rax + 1]
	mov	rsp, rsp
	test	dl, dl
	je	.label_70
	movzx	ecx, cl
	cmp	ecx, 0x5c
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x1d8]
	jne	.label_71
	nop	
	movzx	ecx, dl
	mov	rbp, rbp
	cmp	ecx, 0x30
	mov	rbp, rbp
	jne	.label_71
	cmp	byte ptr [rax + 2], 0
	jne	.label_71
	lea	rdi, [rdi]
	xor	ecx, ecx
	jmp	.label_85
.label_1933:
	mov	byte ptr [byte ptr [rip + unique]],  1
	mov	ebp, 0x75
	nop	
	jmp	.label_65
.label_1934:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	nop	
	mov	ebp, 0x79
	cmp	rcx, qword ptr [r8 + rax*8 - 8]
	jne	.label_65
	nop	dword ptr [rax]
.label_101:
	movsx	edx, byte ptr [rcx]
	mov	rbp, rbp
	lea	esi, [rdx - 0x30]
	inc	rcx
	cmp	esi, 0xa
	mov	rsp, rsp
	jb	.label_101
	nop	
	cmp	dl, 1
	adc	eax, -1
	mov	dword ptr [dword ptr [rip + optind]],  eax
	jmp	.label_65
.label_1935:
	mov	byte ptr [byte ptr [rip + eolchar]],  1
	mov	ebp, 0x7a
	jmp	.label_65
.label_1937:
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	test	rdi, rdi
	je	.label_106
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r12
	mov	r12, r8
	nop	
	mov	rbp, r10
	nop	
	call	strcmp
	lea	rdi, [rdi]
	mov	r10, rbp
	nop	
	mov	r8, r12
	mov	r12, r14
	mov	r14, r15
	test	eax, eax
	je	.label_35
	lea	rdi, [rdi]
	jmp	.label_118
.label_1940:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r10
	mov	rbp, r8
	mov	r15, qword ptr [rsp + 0x1d8]
	mov	qword ptr [rsp + 0x128], r12
	mov	rbx, r14
	movsxd	rax, dword ptr [rsp + 0x1d0]
	mov	qword ptr [rsp + 0x80], rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x1c0], rdi
	lea	rdi, [rdi]
	xor	esi, esi
	mov	edx, 0xa
	nop	
	xor	r8d, r8d
	mov	rbp, rbp
	lea	rcx, [rsp + 0x1e0]
	lea	rdi, [rdi]
	call	xstrtoumax
	mov	rsp, rsp
	mov	r14d, eax
	lea	rsi, [rsi]
	mov	edi, 7
	lea	rsi, [rsp + 0x90]
	call	getrlimit
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	add	r12d, -3
	lea	rsi, [rsi]
	test	eax, eax
	mov	eax, 0x11
	nop	
	cmovne	r12d, eax
	test	r14d, r14d
	jne	.label_139
	mov	rax, qword ptr [rsp + 0x1e0]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + nmerge]],  eax
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	rcx, rax
	mov	r14, rbx
	nop	
	mov	r8, rbp
	nop	
	mov	r10, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	jne	.label_147
	cmp	eax, 1
	jbe	.label_153
	cmp	r12d, eax
	jb	.label_147
	nop	
	mov	ebp, 0x84
	mov	rsp, rsp
	mov	cl, r15b
	nop	
	jmp	.label_157
.label_1941:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x128], r12
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x1a8]
	test	rdi, rdi
	mov	ebp, 0x85
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	nop	
	je	.label_159
	mov	rsi, rbx
	mov	r12, r10
	lea	rsi, [rsi]
	call	strcmp
	nop	
	mov	r10, r12
	test	eax, eax
	nop	
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	rax, qword ptr [rsp + 0x1d8]
	mov	cl, al
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x278]
	mov	r12, qword ptr [rsp + 0x128]
	lea	rsi, [rsi]
	je	.label_53
	jmp	.label_335
.label_1943:
	mov	rsp, rsp
	mov	rax, r12
	mov	r12, r10
	mov	qword ptr [rsp + 0x128], rax
	mov	rbp, rbp
	mov	rbx, r8
	nop	
	mov	r15d, dword ptr [rsp + 0x1d0]
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbp
	lea	rcx, [rsp + 0x90]
	call	xstrtoul
	mov	rsp, rsp
	test	eax, eax
	je	.label_195
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x78], -1
	cmp	eax, 1
	mov	r8, rbx
	mov	r10, r12
	mov	rcx, qword ptr [rsp + 0x1d8]
	je	.label_197
	jmp	.label_203
.label_256:
	nop	
	mov	rax,  qword ptr [word ptr [rip + temp_dirs]]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x1d8]
	jmp	.label_110
.label_107:
	mov	rcx, qword ptr [rsp + 0x200]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx - 1]
	add	edx, -0x30
	mov	eax, 2
	mov	rsp, rsp
	cmp	edx, 9
	mov	rbp, rbp
	mov	r8, rbx
	mov	r10, r12
	ja	.label_207
	cmp	byte ptr [rcx + 1], 0
	mov	rbx, qword ptr [rsp + 0x1d8]
	jne	.label_207
	nop	
	movsx	ecx, byte ptr [rcx]
	mov	rsp, rsp
	cmp	ecx, 0x62
	lea	rdi, [rdi]
	je	.label_142
	cmp	ecx, 0x25
	jne	.label_207
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12d, ebp
	lea	rdi, [rdi]
	mov	rbp, r10
	lea	rdi, [rdi]
	call	physmem_total
	mov	rbp, rbp
	mov	r10, rbp
	mov	rbp, rbp
	mov	ebp, r12d
	nop	
	mov	r8, r15
	lea	rdi, [rdi]
	movq	xmm2, qword ptr [rsp + 0x90]
	punpckldq	xmm2,  xmmword ptr [word ptr [rip + label_13]]
	mov	rbp, rbp
	subpd	xmm2,  xmmword ptr [word ptr [rip + label_14]]
	lea	rsi, [rsi]
	pshufd	xmm1, xmm2, 0x4e
	lea	rdi, [rdi]
	addpd	xmm1, xmm2
	nop	
	mulsd	xmm1, xmm0
	mov	rsp, rsp
	divsd	xmm1,  qword ptr [word ptr [rip + label_249]]
	mov	eax, 1
	movsd	xmm0,  qword ptr [word ptr [rip + label_250]]
	ucomisd	xmm0, xmm1
	jbe	.label_207
	movapd	xmm0, xmm1
	movsd	xmm2,  qword ptr [word ptr [rip + label_15]]
	lea	rdi, [rdi]
	subsd	xmm0, xmm2
	cvttsd2si	rax, xmm0
	nop	
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	mov	rbp, rbp
	cvttsd2si	rcx, xmm1
	mov	rbp, rbp
	ucomisd	xmm1, xmm2
	cmovae	rcx, rax
.label_217:
	mov	qword ptr [rsp + 0x90], rcx
.label_142:
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	cmp	rax,  qword ptr [word ptr [rip + sort_size]]
	jb	.label_257
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	mov	rbp, rbp
	cmova	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + sort_size]],  rcx
.label_257:
	lea	rsi, [rsi]
	mov	ebp, 0x53
	lea	rdi, [rdi]
	mov	cl, bl
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x258]
	lea	rsi, [rsi]
	jmp	.label_157
.label_195:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 0x78], rax
	test	rax, rax
	nop	
	mov	r8, rbx
	mov	r10, r12
	mov	rcx, qword ptr [rsp + 0x1d8]
	nop	
	je	.label_273
.label_197:
	mov	ebp, 0x87
	jmp	.label_157
.label_242:
	nop	
	mov	r15, qword ptr [rsp + 0x1d8]
	jmp	.label_66
.label_1771:
	mov	rbx, r14
	nop	
	mov	qword ptr [rsp + 0x140], -1
	mov	rsp, rsp
	mov	rcx, -1
	lea	rdi, [rdi]
	jmp	.label_40
.label_44:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rbx
	jmp	.label_65
.label_106:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
.label_35:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + compress_program]],  rbx
	nop	
	mov	ebp, 0x81
.label_65:
	nop	
	mov	rax, qword ptr [rsp + 0x1d8]
	lea	rsi, [rsi]
	mov	cl, al
	mov	r15b, cl
	jmp	.label_20
.label_159:
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	rax, qword ptr [rsp + 0x1d8]
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x278]
	jmp	.label_157
.label_70:
	nop	
	mov	rsi, qword ptr [rsp + 0x1d8]
.label_85:
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	mov	rbp, rbp
	cmp	edx, 0x80
	lea	rdi, [rdi]
	movsx	eax, cl
	je	.label_305
	cmp	edx, eax
	jne	.label_26
.label_305:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + tab]],  eax
	mov	ebp, 0x74
	mov	cl, sil
	mov	r15b, cl
	jmp	.label_20
.label_247:
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	mov	r15, qword ptr [rsp + 0x1d8]
	jne	.label_27
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rax + 1]
	add	eax, -0x30
	cmp	eax, 0xa
	setb	bl
	mov	rsp, rsp
	jmp	.label_168
.label_32:
	mov	rbx, r14
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
.label_40:
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x1d8]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x90]
	lea	rax, [rcx - 1]
	mov	qword ptr [rsp + 0x140], rax
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_215
	movzx	ecx, byte ptr [r14]
	mov	rbp, rbp
	cmp	ecx, 0x2e
	mov	rbp, rbp
	jne	.label_337
	inc	r14
	mov	rsp, rsp
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	lea	rsi, [rsp + 0x90]
	mov	rsp, rsp
	lea	rcx, [rsp + 0x200]
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_349
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_350]]
.label_1721:
	nop	
	mov	rax, qword ptr [rsp + 0x200]
	mov	qword ptr [rsp + 0x148], rax
	mov	rsp, rsp
	jmp	.label_352
.label_337:
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rbp, rbp
	jmp	.label_355
.label_1722:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], -1
	mov	rax, -1
	lea	rdi, [rdi]
	jmp	.label_352
.label_262:
	mov	r15, r10
	mov	rbp, r8
	test	rsi, rsi
	mov	eax, 0x10
	cmove	rsi, rax
	mov	rax, rsi
	lea	rdi, [rdi]
	shr	rax, 0x3c
	nop	
	mov	rbx, qword ptr [rsp + 0x1d8]
	lea	rsi, [rsi]
	jne	.label_362
.label_274:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + temp_dir_alloc]],  rsi
	lea	rdi, [rdi]
	shl	rsi, 3
	lea	rsi, [rsi]
	call	xrealloc
	mov	qword ptr [word ptr [rip + temp_dirs]],  rax
	mov	rsi,  qword ptr [word ptr [rip + temp_dir_count]]
	mov	r8, rbp
	mov	rsp, rsp
	mov	r10, r15
.label_110:
	lea	rcx, [rsi + 1]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + temp_dir_count]],  rcx
	nop	
	mov	qword ptr [rax + rsi*8], r12
	mov	ebp, 0x54
	mov	cl, bl
.label_157:
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x128]
.label_53:
	mov	r15b, cl
	jmp	.label_20
.label_27:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_168:
	lea	rdi, [rdi]
	mov	al, bl
	lea	rsi, [rsi]
	and	al, byte ptr [rsp + 0x260]
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x3a0]
	and	cl, 1
	or	cl, al
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x3a0], ecx
	je	.label_59
	xorpd	xmm0, xmm0
	mov	rsp, rsp
	movapd	xmmword ptr [rsp + 0x170], xmm0
	mov	rsp, rsp
	movapd	xmmword ptr [rsp + 0x160], xmm0
	mov	rsp, rsp
	movapd	xmmword ptr [rsp + 0x150], xmm0
	movapd	xmmword ptr [rsp + 0x140], xmm0
	nop	
	mov	qword ptr [rsp + 0x180], 0
	mov	qword ptr [rsp + 0x150], -1
	inc	rdi
	lea	rdi, [rdi]
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str_0
	lea	rsi, [rsp + 0x90]
	mov	rbp, rbp
	lea	rcx, [rsp + 0x200]
	call	xstrtoumax
	mov	rbp, rbp
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_55
	mov	r10, rbp
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_57]]
.label_1764:
	mov	rbp, rbp
	mov	rbp, r10
	mov	rax, qword ptr [rsp + 0x200]
	mov	qword ptr [rsp + 0x140], rax
	jmp	.label_55
.label_59:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3a0], 0
	mov	r10, rbp
	jmp	.label_66
.label_1765:
	nop	
	mov	rbp, r10
	mov	qword ptr [rsp + 0x140], -1
.label_55:
	nop	
	mov	rdi, qword ptr [rsp + 0x90]
	nop	
	test	rdi, rdi
	mov	rsp, rsp
	mov	ecx, 0
	lea	rsi, [rsi]
	mov	r10, rbp
	je	.label_125
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_74
	inc	rdi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	nop	
	lea	rsi, [rsp + 0x90]
	lea	rcx, [rsp + 0x200]
	nop	
	mov	rbp, r10
	call	xstrtoumax
	mov	r10, rbp
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	mov	edx, eax
	cmp	eax, 4
	nop	
	ja	.label_90
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_94]]
.label_1749:
	mov	rax, qword ptr [rsp + 0x200]
	mov	qword ptr [rsp + 0x148], rax
	lea	rsi, [rsi]
	jmp	.label_90
.label_349:
	mov	rax, qword ptr [rsp + 0x148]
.label_352:
	mov	r14, qword ptr [rsp + 0x90]
	lea	rcx, [rax - 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], rcx
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_189
	mov	rax, qword ptr [rsp + 0x140]
.label_355:
	or	rcx, rax
	mov	rsp, rsp
	jne	.label_109
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x140], -1
.label_109:
	lea	rsi, [rsi]
	mov	al, byte ptr [r14]
	nop	
	jmp	.label_111
.label_103:
	mov	al, byte ptr [r14 + 1]
	mov	rbp, rbp
	inc	r14
.label_111:
	nop	
	test	al, al
	je	.label_158
	nop	
	movsx	ecx, al
	cmp	ecx, 0x61
	jle	.label_116
	mov	rsp, rsp
	add	ecx, -0x62
	cmp	ecx, 0x10
	ja	.label_117
	nop	
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_121]]
.label_1725:
	mov	byte ptr [rsp + 0x170], 1
	nop	
	jmp	.label_103
	nop	
.label_116:
	lea	rsi, [rsi]
	cmp	ecx, 0x4d
	je	.label_127
	lea	rdi, [rdi]
	cmp	ecx, 0x52
	je	.label_129
	cmp	ecx, 0x56
	jne	.label_117
	mov	byte ptr [rsp + 0x178], 1
	lea	rdi, [rdi]
	jmp	.label_103
.label_1726:
	nop	
	mov	qword ptr [word ptr [rsp + 352]], OFFSET FLAT:nondictionary
	mov	rbp, rbp
	jmp	.label_103
.label_1727:
	mov	qword ptr [word ptr [rsp + 360]], OFFSET FLAT:fold_toupper
	lea	rdi, [rdi]
	jmp	.label_103
.label_1728:
	mov	byte ptr [rsp + 0x174], 1
	jmp	.label_103
.label_1729:
	mov	byte ptr [rsp + 0x175], 1
	lea	rsi, [rsi]
	jmp	.label_103
.label_1730:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x160], 0
	nop	
	jne	.label_103
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rsp + 352]], OFFSET FLAT:nonprinting
	lea	rdi, [rdi]
	jmp	.label_103
.label_1731:
	mov	byte ptr [rsp + 0x172], 1
	jmp	.label_103
.label_1732:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x177], 1
	lea	rsi, [rsi]
	jmp	.label_103
.label_127:
	mov	byte ptr [rsp + 0x176], 1
	nop	
	jmp	.label_103
.label_129:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x173], 1
	lea	rsi, [rsi]
	jmp	.label_103
.label_117:
	nop	
	movzx	eax, al
	cmp	eax, 0x2c
	jne	.label_158
	lea	rdi, [rdi]
	inc	r14
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, r14
	lea	rsi, [rsp + 0x90]
	lea	rcx, [rsp + 0x200]
	mov	rbp, rbp
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	lea	rsi, [rsi]
	ja	.label_167
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_169]]
.label_1816:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x200]
	mov	qword ptr [rsp + 0x150], rax
	mov	rsp, rsp
	jmp	.label_171
.label_158:
	movapd	xmm0, xmmword ptr [rsp + 0x1b0]
	movapd	xmmword ptr [rsp + 0x150], xmm0
	cmp	byte ptr [r14], 0
	mov	rsp, rsp
	mov	r14, rbx
	mov	rbp, rbp
	jne	.label_176
.label_243:
	mov	rbp, rbp
	mov	esi, 0x48
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x140]
	call	xmemdup
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:keylist
	nop	word ptr cs:[rax + rax]
.label_193:
	lea	rdi, [rdi]
	mov	rcx, rdx
	nop	
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rdx, rdx
	lea	rdx, [rdx + 0x40]
	nop	
	jne	.label_193
	nop	
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x40], 0
	mov	rbp, rbp
	mov	ebp, 0x6b
	mov	rsp, rsp
	mov	cl, r15b
.label_49:
	mov	r8, qword ptr [rsp + 0x278]
	mov	r10, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r15b, cl
	jmp	.label_20
.label_74:
	mov	rcx, rdi
	jmp	.label_125
.label_1817:
	mov	qword ptr [rsp + 0x150], -1
	mov	rax, -1
	jmp	.label_171
.label_1766:
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_125
.label_167:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x150]
.label_171:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x150], rcx
	test	rax, rax
	mov	r14, rbx
	mov	rbp, rbp
	je	.label_215
	movzx	eax, byte ptr [rbp]
	nop	
	cmp	eax, 0x2e
	jne	.label_218
	inc	rbp
	nop	
	mov	edx, 0xa
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbp
	mov	rsp, rsp
	lea	rsi, [rsp + 0x90]
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x200]
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_230
	nop	
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_232]]
.label_1737:
	mov	rax, qword ptr [rsp + 0x200]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x158], rax
	lea	rdi, [rdi]
	jmp	.label_230
.label_1738:
	mov	qword ptr [rsp + 0x158], -1
.label_230:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x90]
	mov	al, byte ptr [rbp]
.label_218:
	mov	rsp, rsp
	test	al, al
	je	.label_243
	mov	rbp, rbp
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_293:
	lea	rdi, [rdi]
	movsx	eax, al
	mov	rbp, rbp
	cmp	eax, 0x61
	jle	.label_170
	mov	rbp, rbp
	add	eax, -0x62
	nop	
	cmp	eax, 0x10
	lea	rdi, [rdi]
	ja	.label_176
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_255]]
.label_1741:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x171], 1
	lea	rdi, [rdi]
	jmp	.label_80
	nop	
.label_170:
	cmp	eax, 0x4d
	je	.label_88
	mov	rbp, rbp
	cmp	eax, 0x52
	je	.label_261
	cmp	eax, 0x56
	jne	.label_176
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x178], 1
	lea	rdi, [rdi]
	jmp	.label_80
.label_1742:
	mov	qword ptr [word ptr [rsp + 352]], OFFSET FLAT:nondictionary
	lea	rsi, [rsi]
	jmp	.label_80
.label_1743:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rsp + 360]], OFFSET FLAT:fold_toupper
	jmp	.label_80
.label_1744:
	mov	byte ptr [rsp + 0x174], 1
	lea	rdi, [rdi]
	jmp	.label_80
.label_1745:
	mov	byte ptr [rsp + 0x175], 1
	mov	rbp, rbp
	jmp	.label_80
.label_1746:
	cmp	qword ptr [rsp + 0x160], 0
	nop	
	jne	.label_80
	mov	qword ptr [word ptr [rsp + 352]], OFFSET FLAT:nonprinting
	jmp	.label_80
.label_1747:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x172], 1
	jmp	.label_80
.label_1748:
	mov	byte ptr [rsp + 0x177], 1
	mov	rsp, rsp
	jmp	.label_80
.label_88:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x176], 1
	jmp	.label_80
.label_261:
	nop	
	mov	byte ptr [rsp + 0x173], 1
	nop	word ptr [rax + rax]
.label_80:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp]
	lea	rdi, [rdi]
	inc	rbp
	mov	rsp, rsp
	test	al, al
	jne	.label_293
	lea	rdi, [rdi]
	jmp	.label_243
.label_1750:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x148], -1
.label_90:
	mov	rcx, qword ptr [rsp + 0x90]
.label_125:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x140]
	mov	rsp, rsp
	or	rax, qword ptr [rsp + 0x148]
	mov	rbp, rbp
	jne	.label_304
	mov	qword ptr [rsp + 0x140], -1
.label_304:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_66
	mov	al, byte ptr [rcx]
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_316
	inc	rcx
	nop	dword ptr [rax]
.label_359:
	movsx	eax, al
	cmp	eax, 0x61
	jle	.label_322
	lea	rsi, [rsi]
	add	eax, -0x62
	nop	
	cmp	eax, 0x10
	lea	rsi, [rsi]
	ja	.label_66
	jmp	qword ptr [word ptr [+ (rax * 8) + label_325]]
.label_1854:
	mov	byte ptr [rsp + 0x170], 1
	nop	
	jmp	.label_104
.label_322:
	lea	rsi, [rsi]
	cmp	eax, 0x4d
	je	.label_331
	lea	rsi, [rsi]
	cmp	eax, 0x52
	nop	
	je	.label_332
	mov	rsp, rsp
	cmp	eax, 0x56
	jne	.label_66
	mov	byte ptr [rsp + 0x178], 1
	lea	rdi, [rdi]
	jmp	.label_104
.label_1855:
	nop	
	mov	qword ptr [word ptr [rsp + 352]], OFFSET FLAT:nondictionary
	lea	rdi, [rdi]
	jmp	.label_104
.label_1856:
	mov	qword ptr [word ptr [rsp + 360]], OFFSET FLAT:fold_toupper
	jmp	.label_104
.label_1857:
	mov	byte ptr [rsp + 0x174], 1
	jmp	.label_104
.label_1858:
	mov	byte ptr [rsp + 0x175], 1
	lea	rdi, [rdi]
	jmp	.label_104
.label_1859:
	cmp	qword ptr [rsp + 0x160], 0
	jne	.label_104
	mov	qword ptr [word ptr [rsp + 352]], OFFSET FLAT:nonprinting
	jmp	.label_104
.label_1860:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x172], 1
	jmp	.label_104
.label_1861:
	mov	byte ptr [rsp + 0x177], 1
	jmp	.label_104
.label_331:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x176], 1
	mov	rsp, rsp
	jmp	.label_104
.label_332:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x173], 1
	nop	word ptr [rax + rax]
.label_104:
	mov	al, byte ptr [rcx]
	lea	rsi, [rsi]
	inc	rcx
	mov	rsp, rsp
	test	al, al
	jne	.label_359
.label_316:
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x128], r12
	lea	rdi, [rdi]
	mov	r12, r14
	test	bl, bl
	mov	rsp, rsp
	je	.label_69
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rcx, qword ptr [rsp + 0x278]
	mov	rbp, rbp
	mov	r14, qword ptr [rcx + rax*8]
	nop	
	lea	rbp, [r14 + 1]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbp
	lea	rsi, [rsp + 0x90]
	lea	rcx, [rsp + 0x200]
	lea	rdi, [rdi]
	call	xstrtoumax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	eax, 4
	ja	.label_21
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_23]]
.label_1774:
	mov	rax, qword ptr [rsp + 0x200]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x150], rax
	jmp	.label_21
.label_66:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [r14 + r10*8], rax
	inc	r10
	mov	ebp, 1
	mov	cl, r15b
	mov	r8, qword ptr [rsp + 0x278]
	jmp	.label_20
.label_1775:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x150], -1
.label_21:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x90]
	test	rbp, rbp
	je	.label_38
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2e
	mov	rbp, rbp
	jne	.label_42
	mov	rsp, rsp
	inc	rbp
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rbp
	mov	rsp, rsp
	lea	rsi, [rsp + 0x90]
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x200]
	nop	
	call	xstrtoumax
	nop	
	mov	ecx, eax
	nop	
	cmp	eax, 4
	lea	rdi, [rdi]
	ja	.label_47
	nop	
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_50]]
.label_1800:
	mov	rax, qword ptr [rsp + 0x200]
	mov	qword ptr [rsp + 0x158], rax
	jmp	.label_47
.label_1801:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x158], -1
.label_47:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x90]
.label_42:
	cmp	qword ptr [rsp + 0x158], 0
	jne	.label_61
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x150]
	test	rax, rax
	mov	rbp, rbp
	je	.label_61
	dec	rax
	mov	qword ptr [rsp + 0x150], rax
.label_61:
	nop	
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_69
	mov	rbp, rbp
	inc	rbp
	nop	word ptr [rax + rax]
.label_122:
	movsx	eax, al
	mov	rbp, rbp
	cmp	eax, 0x61
	lea	rdi, [rdi]
	jle	.label_48
	mov	rbp, rbp
	add	eax, -0x62
	lea	rsi, [rsi]
	cmp	eax, 0x10
	ja	.label_72
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_77]]
.label_1779:
	mov	byte ptr [rsp + 0x171], 1
	mov	rbp, rbp
	jmp	.label_81
.label_48:
	cmp	eax, 0x4d
	je	.label_86
	lea	rsi, [rsi]
	cmp	eax, 0x52
	lea	rdi, [rdi]
	je	.label_89
	cmp	eax, 0x56
	jne	.label_72
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x178], 1
	jmp	.label_81
.label_1780:
	mov	rbp, rbp
	mov	qword ptr [word ptr [rsp + 352]], OFFSET FLAT:nondictionary
	lea	rdi, [rdi]
	jmp	.label_81
.label_1781:
	mov	qword ptr [word ptr [rsp + 360]], OFFSET FLAT:fold_toupper
	mov	rbp, rbp
	jmp	.label_81
.label_1782:
	nop	
	mov	byte ptr [rsp + 0x174], 1
	mov	rsp, rsp
	jmp	.label_81
.label_1783:
	mov	byte ptr [rsp + 0x175], 1
	jmp	.label_81
.label_1784:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x160], 0
	mov	rsp, rsp
	jne	.label_81
	mov	qword ptr [word ptr [rsp + 352]], OFFSET FLAT:nonprinting
	jmp	.label_81
.label_1785:
	mov	byte ptr [rsp + 0x172], 1
	lea	rdi, [rdi]
	jmp	.label_81
.label_1786:
	mov	byte ptr [rsp + 0x177], 1
	jmp	.label_81
.label_86:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x176], 1
	mov	rbp, rbp
	jmp	.label_81
.label_89:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x173], 1
	nop	dword ptr [rax]
.label_81:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp]
	lea	rdi, [rdi]
	inc	rbp
	test	al, al
	mov	rbp, rbp
	jne	.label_122
.label_69:
	mov	byte ptr [rsp + 0x179], 1
	mov	rbp, rbp
	mov	esi, 0x48
	lea	rdi, [rsp + 0x140]
	mov	rbp, rbp
	call	xmemdup
	mov	edx, OFFSET FLAT:keylist
	nop	dword ptr [rax]
.label_136:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rdx, rdx
	lea	rdi, [rdi]
	lea	rdx, [rdx + 0x40]
	nop	
	jne	.label_136
	mov	qword ptr [rcx], rax
	mov	qword ptr [rax + 0x40], 0
	nop	
	mov	ebp, 1
	nop	
	mov	cl, r15b
	nop	
	mov	r14, r12
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x128]
	jmp	.label_49
.label_228:
	mov	r13, qword ptr [rsp + 0x190]
	test	r13, r13
	mov	rbp, rbp
	je	.label_140
	test	r10, r10
	jne	.label_144
	mov	esi, OFFSET FLAT:.str.52
	mov	rdi, r13
	call	stream_open
	mov	rbx, rax
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_150
	mov	rsp, rsp
	lea	rbp, [rsp + 0x280]
	mov	rdi, rbp
	nop	
	call	readtokens0_init
	mov	rdi, rbx
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	readtokens0
	test	al, al
	je	.label_333
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r13
	lea	rdi, [rdi]
	call	xfclose
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x280], 0
	je	.label_161
	mov	rdi, r14
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x280]
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x288]
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	rbx, r14
	nop	
.label_180:
	lea	rdi, [rdi]
	cmp	rbp, r10
	lea	rdi, [rdi]
	jae	.label_140
	mov	rcx, qword ptr [rbx]
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_173
	cmp	byte ptr [rcx + 1], 0
	je	.label_175
.label_173:
	inc	rbp
	lea	rdi, [rdi]
	add	rbx, 8
	mov	rsp, rsp
	test	al, al
	nop	
	jne	.label_180
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	r8, rbp
	call	error
.label_140:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r10
	movabs	r8, 0xff000000000000
	movabs	rcx, 0xffffffffffffff
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	test	rax, rax
	je	.label_198
	nop	
	xor	ebp, ebp
	lea	r9, [rcx + 1]
	nop	word ptr cs:[rax + rax]
.label_258:
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	jne	.label_212
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	jne	.label_212
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	test	si, 0xffff
	jne	.label_212
	lea	rsi, [rsi]
	mov	edi, esi
	shr	edi, 0x10
	test	dil, dil
	jne	.label_212
	test	rsi, r8
	jne	.label_212
	nop	
	mov	rdi, rsi
	shr	rdi, 0x20
	lea	rdi, [rdi]
	test	dil, dil
	jne	.label_212
	nop	
	movzx	edi, di
	cmp	edi, 0xff
	ja	.label_212
	mov	rbp, rbp
	cmp	esi, 0xffffff
	ja	.label_212
	mov	bl, byte ptr [rax + 0x38]
	test	bl, bl
	jne	.label_212
	cmp	rsi, r9
	lea	rdi, [rdi]
	jae	.label_212
	lea	rsi, [rsi]
	movapd	xmm0, xmmword ptr [rsp + 0x40]
	movupd	xmmword ptr [rax + 0x20], xmm0
	mov	cl, byte ptr [rsp + 0x53]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x30], bl
	mov	rsp, rsp
	mov	byte ptr [rax + 0x31], bh
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	shr	rsi, 0x30
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x36], sil
	mov	rbp, rbp
	mov	esi, ebx
	shr	esi, 0x10
	mov	rbp, rbp
	mov	byte ptr [rax + 0x32], sil
	mov	rbp, rbp
	mov	rsi, rbx
	shr	rsi, 0x20
	nop	
	mov	byte ptr [rax + 0x34], sil
	mov	rsi, rbx
	mov	rsp, rsp
	shr	rsi, 0x28
	mov	byte ptr [rax + 0x35], sil
	lea	rdi, [rdi]
	mov	dl, byte ptr [rsp + 0x58]
	mov	byte ptr [rax + 0x38], dl
	mov	rbp, rbp
	mov	byte ptr [rax + 0x33], cl
	mov	rbp, rbp
	shr	rbx, 0x38
	mov	rsp, rsp
	mov	byte ptr [rax + 0x37], bl
	nop	dword ptr [rax + rax]
.label_212:
	nop	
	or	bpl, byte ptr [rax + 0x33]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	test	rax, rax
	jne	.label_258
	mov	dword ptr [rsp + 0x1a4], ebp
	nop	
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	test	rax, rax
	mov	rbp, rbp
	je	.label_265
	mov	qword ptr [rsp + 0x128], r12
	mov	qword ptr [rsp + 0x18], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x240], 0
	mov	rsp, rsp
	jmp	.label_271
.label_198:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x1a4], 0
.label_265:
	nop	
	mov	qword ptr [rsp + 0x18], r10
	mov	rax, qword ptr [rsp + 0x40]
	or	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	jne	.label_206
	mov	rax, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	test	ax, 0xffff
	jne	.label_206
	mov	ecx, eax
	shr	ecx, 0x10
	test	cl, cl
	jne	.label_206
	test	rax, r8
	lea	rdi, [rdi]
	jne	.label_206
	mov	rsp, rsp
	shr	rax, 0x20
	test	al, al
	lea	rsi, [rsi]
	jne	.label_206
	nop	
	movzx	eax, ax
	mov	rsp, rsp
	cmp	eax, 0xff
	ja	.label_206
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x50], 0xffffff
	ja	.label_206
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 0x58]
	nop	
	test	al, al
	jne	.label_206
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x128], r12
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x240], 0
	nop	
	jmp	.label_213
.label_206:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x128], r12
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x20]
	mov	rbp, rbp
	mov	esi, 0x48
	call	xmemdup
	mov	ecx, OFFSET FLAT:keylist
	nop	dword ptr [rax + rax]
.label_306:
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rdx]
	test	rcx, rcx
	lea	rdi, [rdi]
	lea	rcx, [rcx + 0x40]
	mov	rsp, rsp
	jne	.label_306
	mov	qword ptr [rdx], rax
	nop	
	mov	qword ptr [rax + 0x40], 0
	mov	eax, dword ptr [rsp + 0x1a4]
	mov	rbp, rbp
	or	al, byte ptr [rsp + 0x53]
	mov	dword ptr [rsp + 0x1a4], eax
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	mov	cl, 1
	mov	dword ptr [rsp + 0x240], ecx
	lea	rdi, [rdi]
	jmp	.label_224
.label_235:
	cmp	eax, 0xffffff7d
	je	.label_328
	cmp	eax, 0xffffff7e
	lea	rdi, [rdi]
	jne	.label_237
	xor	edi, edi
	call	usage
.label_328:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	nop	
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.47
	mov	rsp, rsp
	mov	r9d, OFFSET FLAT:.str.48
	mov	rbp, rbp
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_175:
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsi, qword ptr [rbx]
	nop	
	mov	edi, 4
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_237:
	lea	rsi, [rsi]
	mov	edi, 2
	call	usage
.label_176:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	esi, OFFSET FLAT:.str.31
	call	badfieldspec
.label_292:
	mov	edi, OFFSET FLAT:.str.34
	call	incompatible_options
.label_207:
	mov	edx, 0x53
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	r8, r14
	call	xstrtol_fatal
.label_108:
	mov	rbp, rbp
	call	xalloc_die
.label_144:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [r14]
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.51
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	mov	edi, 2
	lea	rdi, [rdi]
	call	usage
.label_150:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, r13
	mov	rsp, rsp
	call	sort_die
.label_333:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	jmp	.label_37
.label_161:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
.label_37:
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r13
	lea	rsi, [rsi]
	call	quotearg_style
	jmp	.label_45
.label_72:
	mov	esi, OFFSET FLAT:.str.31
	mov	rdi, r14
	call	badfieldspec
.label_71:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.44
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
.label_45:
	mov	rcx, rax
	mov	edi, 2
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
.label_215:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.37
	call	badfieldspec
.label_1772:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.124
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.36
.label_154:
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
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
.label_67:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	jmp	.label_78
.label_139:
	nop	
	cmp	r14d, 1
	jne	.label_83
.label_147:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.138
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	shl	rax, 5
	mov	r14,  qword ptr [word ptr [rax + long_options]]
	mov	rdi, qword ptr [rsp + 0x1c0]
	lea	rdi, [rdi]
	call	quote
	mov	rbp, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r14
	mov	rbp, rbp
	mov	r8, rbp
	call	error
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.139
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsp + 0x200]
	mov	edi, r12d
	nop	
	call	uinttostr
	jmp	.label_112
.label_153:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.135
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	shl	rax, 5
	mov	r14,  qword ptr [word ptr [rax + long_options]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x1c0]
	call	quote
	lea	rdi, [rdi]
	mov	rbp, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r8, rbp
	call	error
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.136
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.137
	nop	
	call	quote
.label_112:
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r14
	mov	rbp, rbp
	mov	r8, rbp
	call	error
.label_203:
	mov	rsp, rsp
	mov	edx, 0xffffff87
	mov	ecx, OFFSET FLAT:long_options
	mov	rbp, rbp
	mov	edi, eax
	mov	esi, r15d
	mov	r8, rbp
	call	xstrtol_fatal
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	lea	rsi, [rsi]
	jmp	.label_78
.label_63:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.40
	jmp	.label_78
.label_118:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	rbp, rbp
	jmp	.label_78
.label_335:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	lea	rsi, [rsi]
	jmp	.label_78
.label_273:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.141
.label_78:
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	call	error
.label_1723:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.124
	mov	edx, 5
	call	dcgettext
	nop	
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	jmp	.label_165
.label_189:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.38
	lea	rsi, [rsi]
	call	badfieldspec
.label_83:
	mov	edx, 0xffffff84
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r14d
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	nop	
	mov	r8, qword ptr [rsp + 0x1c0]
	lea	rsi, [rsi]
	call	xstrtol_fatal
.label_266:
	call	xalloc_die
.label_362:
	call	xalloc_die
.label_1818:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.124
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
.label_165:
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	quote
	nop	
	mov	rbx, rax
	mov	edi, 2
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_1739:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.124
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	rbp, rbp
	jmp	.label_154
.label_1776:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.124
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.27
	jmp	.label_154
.label_38:
	mov	edi, OFFSET FLAT:.str.28
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 0x1112
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_213:
	mov	qword ptr [rsp + 0x1d8], r15
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_29
	cmp	qword ptr [rsp + 0x70], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x128]
	mov	rbp, rbp
	jne	.label_222
	test	al, al
	jne	.label_222
	cmp	qword ptr [rsp + 0x270], 0
	nop	
	mov	al, byte ptr [rsp + 0x10]
	je	.label_229
	mov	rbp, rbp
	mov	edi, 3
	mov	esi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	call	setlocale
	lea	rsi, [rsi]
	test	rax, rax
	setne	al
.label_229:
	mov	rsp, rsp
	test	al, al
	jne	.label_236
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	call	error
.label_236:
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_248
	nop	
	mov	qword ptr [rsp + 0x258], r14
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 3
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	call	setlocale
	mov	rbp, rbp
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_259
.label_248:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x258], r14
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_2
	mov	rsp, rsp
	xor	eax, eax
.label_259:
	call	error
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x138], rcx
	mov	r13d, ecx
	shr	r13d, 8
	mov	r12d, ecx
	shr	r12d, 0x10
	mov	eax, ecx
	lea	rsi, [rsi]
	shr	eax, 0x18
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x3a0], eax
	lea	rsi, [rsi]
	mov	r9, rcx
	shr	r9, 0x20
	mov	rbp, rbp
	mov	rbx, rcx
	shr	rbx, 0x28
	mov	rsp, rsp
	mov	rdx, rcx
	nop	
	shr	rdx, 0x30
	lea	rsi, [rsi]
	mov	rsi, rcx
	shr	rsi, 0x38
	mov	al, byte ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x1cf], al
	mov	rsp, rsp
	mov	r14,  qword ptr [word ptr [rip + keylist]]
	test	r14, r14
	mov	rsp, rsp
	je	.label_279
	mov	qword ptr [rsp + 0x1b0], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x270], rdi
	mov	qword ptr [rsp + 0x10], rdx
	mov	dword ptr [rsp + 0x190], r13d
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x278], r12d
	mov	eax, 1
	nop	
	mov	qword ptr [rsp + 0x80], rax
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 0x240]
	nop	word ptr cs:[rax + rax]
.label_160:
	mov	qword ptr [rsp + 0x1c0], r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x130], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x260], rsi
	cmp	byte ptr [r14 + 0x39], 0
	mov	rbx, qword ptr [rsp + 0x128]
	je	.label_317
	mov	rbp, rbp
	mov	rbp, qword ptr [r14]
	mov	r12, qword ptr [r14 + 0x10]
	cmp	rbp, -1
	sete	al
	movzx	ebx, al
	lea	rsi, [rsi]
	lea	rdi, [rbx + rbp]
	nop	
	mov	word ptr [rsp + 0x200], 0x2b
	nop	
	lea	r13, [rsp + 0x1e0]
	mov	rsi, r13
	call	umaxtostr
	nop	
	mov	edx, 0x2d
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x201]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	call	__stpcpy_chk
	mov	r15, rax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x90], 0x206b2d
	mov	rbp, rbp
	lea	rdi, [rbx + rbp + 1]
	mov	rsi, r13
	nop	
	call	umaxtostr
	mov	rsp, rsp
	mov	edx, 0x2c
	nop	
	lea	rdi, [rsp + 0x93]
	mov	rsi, rax
	mov	rbp, rbp
	call	__stpcpy_chk
	nop	
	mov	rbp, rax
	nop	
	cmp	qword ptr [r14 + 0x10], -1
	je	.label_254
	mov	rax, r12
	mov	r12, r15
	add	r12, 2
	mov	byte ptr [r15 + 2], 0
	lea	rsi, [rsi]
	mov	word ptr [r15], 0x2d20
	lea	rdi, [rax + 1]
	lea	rdi, [rdi]
	mov	r15, rax
	mov	rsi, r13
	nop	
	call	umaxtostr
	mov	rdi, r12
	nop	
	mov	rsi, rax
	nop	
	call	stpcpy
	mov	rbp, rbp
	mov	rbx, rbp
	inc	rbx
	mov	rsp, rsp
	mov	word ptr [rbp], 0x2c
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x18], -1
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	nop	
	lea	rdi, [rax + r15 + 1]
	mov	rsp, rsp
	mov	rsi, r13
	lea	rdi, [rdi]
	call	umaxtostr
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rax
	call	stpcpy
.label_254:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.150
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsp + 0x200]
	mov	rsp, rsp
	call	quote_n
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsp + 0x90]
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	nop	
	mov	rbx, qword ptr [rsp + 0x128]
	mov	rbp, rbp
	mov	r13d, dword ptr [rsp + 0x240]
.label_317:
	mov	rax, qword ptr [r14]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_30
	cmp	qword ptr [r14 + 0x10], rax
	mov	edi, dword ptr [rsp + 0x278]
	mov	rbp, rbp
	mov	r10d, dword ptr [rsp + 0x190]
	mov	rbp, qword ptr [rsp + 0x270]
	lea	rsi, [rsi]
	jae	.label_36
	mov	r13d, edi
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.151
	mov	edx, 5
	lea	rdi, [rdi]
	mov	r15d, r10d
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x80]
	call	error
	mov	rsp, rsp
	mov	edi, r13d
	mov	rbp, rbp
	mov	r13d, dword ptr [rsp + 0x240]
	mov	r10d, r15d
	mov	rsp, rsp
	mov	cl, 1
	mov	rbp, rbp
	jmp	.label_58
	nop	
.label_30:
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x278]
	mov	r10d, dword ptr [rsp + 0x190]
	mov	rbp, qword ptr [rsp + 0x270]
	jmp	.label_58
	nop	word ptr cs:[rax + rax]
.label_36:
	xor	ecx, ecx
.label_58:
	mov	al, 1
	cmp	byte ptr [r14 + 0x32], 0
	mov	rbp, rbp
	jne	.label_68
	mov	rbp, rbp
	mov	edx, dword ptr [r14 + 0x34]
	movzx	esi, dx
	lea	rsi, [rsi]
	cmp	esi, 0xff
	ja	.label_68
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_68
	lea	rdi, [rdi]
	test	edx, 0xff0000
	setne	al
	nop	word ptr cs:[rax + rax]
.label_68:
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_178
	xor	edx, edx
	jmp	.label_338
	nop	dword ptr [rax + rax]
.label_178:
	cmp	qword ptr [r14 + 0x18], 0
	mov	rsp, rsp
	setne	dl
.label_338:
	lea	rdi, [rdi]
	test	cl, cl
	jne	.label_91
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + tab]],  0x80
	setne	cl
	or	cl, r13b
	lea	rsi, [rsi]
	or	dl, cl
	jne	.label_91
	lea	rsi, [rsi]
	mov	cx, word ptr [r14 + 0x30]
	test	cl, cl
	setne	dl
	or	al, dl
	movzx	eax, al
	cmp	eax, 1
	jne	.label_97
	test	cl, cl
	mov	rbp, rbp
	jne	.label_184
	cmp	qword ptr [r14 + 8], 0
	lea	rsi, [rsi]
	jne	.label_97
.label_184:
	movzx	eax, cx
	mov	rsp, rsp
	cmp	eax, 0xff
	ja	.label_91
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_91
.label_97:
	lea	rsi, [rsi]
	mov	r13d, edi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.152
	nop	
	mov	edx, 5
	mov	r15d, r10d
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x80]
	call	error
	mov	rbp, rbp
	mov	edi, r13d
	mov	rbp, rbp
	mov	r13d, dword ptr [rsp + 0x240]
	mov	r10d, r15d
	nop	dword ptr [rax + rax]
.label_91:
	test	r13b, r13b
	mov	rsp, rsp
	jne	.label_130
	cmp	byte ptr [r14 + 0x32], 0
	mov	rbp, rbp
	jne	.label_126
	movzx	eax, word ptr [r14 + 0x34]
	cmp	eax, 0xff
	lea	rsi, [rsi]
	ja	.label_126
	test	al, al
	mov	rsp, rsp
	je	.label_130
	nop	dword ptr [rax]
.label_126:
	mov	rax, qword ptr [r14]
	nop	
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	add	rax, 2
	test	rcx, rcx
	mov	rbp, rbp
	cmovne	rax, rcx
	cmp	qword ptr [r14 + 0x10], rax
	jb	.label_130
	mov	r13d, edi
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.153
	mov	edx, 5
	mov	r15d, r10d
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x80]
	call	error
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 0x240]
	lea	rsi, [rsi]
	mov	r10d, r15d
.label_130:
	mov	rax, qword ptr [rsp + 0x1b0]
	test	rax, rax
	nop	
	mov	r8d, 0
	je	.label_149
	mov	rsp, rsp
	cmp	rax, qword ptr [r14 + 0x20]
	mov	r8d, 0
	je	.label_149
	mov	r8, rax
.label_149:
	mov	qword ptr [rsp + 0x128], rbx
	test	rbp, rbp
	mov	rbp, rbp
	mov	r11d, 0
	je	.label_151
	cmp	rbp, qword ptr [r14 + 0x28]
	nop	
	mov	r11d, 0
	je	.label_151
	mov	r11, rbp
.label_151:
	lea	rsi, [rsi]
	mov	r9b, byte ptr [r14 + 0x33]
	mov	r15, qword ptr [r14 + 0x30]
	mov	al, r15b
	xor	al, 1
	mov	rcx, qword ptr [rsp + 0x138]
	lea	rdi, [rdi]
	and	cl, al
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x138], rcx
	mov	eax, r15d
	shr	eax, 8
	lea	rdi, [rdi]
	xor	al, 1
	mov	rsp, rsp
	and	al, r10b
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rsi, [rsi]
	shr	rdx, 0x30
	nop	
	xor	dl, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	and	dl, cl
	mov	r12d, r15d
	shr	r12d, 0x10
	xor	r12b, 1
	lea	rsi, [rsi]
	and	r12b, dil
	mov	rbp, r15
	shr	rbp, 0x20
	xor	bpl, 1
	mov	rsi, qword ptr [rsp + 0x1c0]
	mov	rsp, rsp
	and	bpl, sil
	mov	rdi, r15
	shr	rdi, 0x28
	lea	rdi, [rdi]
	xor	dil, 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x130]
	and	dil, sil
	xor	r9b, 1
	mov	ebx, dword ptr [rsp + 0x3a0]
	and	bl, r9b
	mov	dword ptr [rsp + 0x3a0], ebx
	mov	bl, byte ptr [r14 + 0x38]
	mov	rbp, rbp
	xor	bl, 1
	lea	rsi, [rsi]
	and	byte ptr [rsp + 0x1cf], bl
	shr	r15, 0x38
	mov	rsp, rsp
	xor	r15b, 1
	mov	rsi, qword ptr [rsp + 0x260]
	and	r15b, sil
	inc	qword ptr [rsp + 0x80]
	lea	rsi, [rsi]
	mov	r14, qword ptr [r14 + 0x40]
	test	r14, r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1b0], r8
	mov	qword ptr [rsp + 0x270], r11
	mov	cl, dl
	mov	qword ptr [rsp + 0x10], rcx
	mov	sil, r15b
	mov	r9b, bpl
	mov	rsp, rsp
	mov	bl, dil
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x278], ecx
	mov	cl, al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x190], ecx
	nop	
	jne	.label_160
	mov	rbp, rbp
	jmp	.label_216
.label_279:
	mov	rsp, rsp
	mov	r8, rbp
	lea	rdi, [rdi]
	mov	r11, rdi
	mov	r15b, sil
	lea	rdi, [rdi]
	mov	bpl, r9b
	nop	
	mov	dil, bl
	lea	rsi, [rsi]
	mov	al, r13b
.label_216:
	lea	rdi, [rdi]
	mov	rbx, r8
	mov	rbp, rbp
	or	rbx, r11
	mov	r14, qword ptr [rsp + 0x258]
	jne	.label_219
	nop	
	test	r12b, r12b
	jne	.label_219
	movzx	r9d, al
	shl	r9d, 8
	mov	rsi, qword ptr [rsp + 0x138]
	movzx	ebx, sil
	or	ebx, r9d
	test	ebx, ebx
	lea	rdi, [rdi]
	jne	.label_219
	lea	rdi, [rdi]
	mov	bl, dl
	or	bl, byte ptr [rsp + 0x1cf]
	mov	rbp, rbp
	or	bl, bpl
	or	bl, dil
	nop	
	mov	esi, dword ptr [rsp + 0x3a0]
	or	bl, sil
	lea	rsi, [rsi]
	jne	.label_219
	mov	rbp, rbp
	test	r15b, r15b
	lea	rdi, [rdi]
	je	.label_29
	lea	rdi, [rdi]
	mov	bl,  byte ptr [byte ptr [rip + stable]]
	mov	rbp, rbp
	and	bl, 1
	mov	rbp, rbp
	je	.label_244
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + keylist]],  0
	mov	rsp, rsp
	jne	.label_219
	mov	rsp, rsp
	jmp	.label_29
.label_244:
	mov	r9b,  byte ptr [byte ptr [rip + unique]]
	lea	rdi, [rdi]
	and	r9b, 1
	mov	r10,  qword ptr [word ptr [rip + keylist]]
	nop	
	movzx	ebx, r9b
	mov	rbp, rbp
	cmp	ebx, 1
	lea	rdi, [rdi]
	jne	.label_251
	test	r10, r10
	je	.label_251
.label_219:
	mov	r9b,  byte ptr [byte ptr [rip + stable]]
	lea	rdi, [rdi]
	mov	r10b,  byte ptr [byte ptr [rip + unique]]
	mov	rsi, qword ptr [rsp + 0x138]
	mov	rbp, rbp
	or	al, sil
	je	.label_260
	nop	
	lea	rax, [rsp + 0x91]
	mov	byte ptr [rsp + 0x90], 0x62
	jmp	.label_270
.label_260:
	lea	rax, [rsp + 0x90]
.label_270:
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:nondictionary
	cmp	r8, rbx
	jne	.label_275
	mov	byte ptr [rax], 0x64
	mov	rbp, rbp
	inc	rax
.label_275:
	nop	
	test	r11, r11
	je	.label_320
	mov	byte ptr [rax], 0x66
	inc	rax
.label_320:
	test	bpl, bpl
	je	.label_191
	mov	byte ptr [rax], 0x67
	lea	rsi, [rsi]
	inc	rax
.label_191:
	test	dil, dil
	je	.label_283
	mov	rbp, rbp
	mov	byte ptr [rax], 0x68
	inc	rax
.label_283:
	mov	esi, OFFSET FLAT:nonprinting
	lea	rsi, [rsi]
	cmp	r8, rsi
	jne	.label_285
	mov	byte ptr [rax], 0x69
	mov	rbp, rbp
	inc	rax
.label_285:
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_287
	mov	byte ptr [rax], 0x4d
	inc	rax
.label_287:
	mov	rbp, rbp
	test	r12b, r12b
	mov	rsp, rsp
	je	.label_288
	mov	rbp, rbp
	mov	byte ptr [rax], 0x6e
	inc	rax
.label_288:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x3a0]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_281
	nop	
	mov	byte ptr [rax], 0x52
	nop	
	inc	rax
.label_281:
	test	r15b, r15b
	je	.label_297
	lea	rdi, [rdi]
	or	r9b, r10b
	lea	rsi, [rsi]
	xor	r9b, 1
	nop	
	test	r9b, 1
	jne	.label_297
	mov	byte ptr [rax], 0x72
	nop	
	inc	rax
.label_297:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x1cf], 0
	mov	rbp, rbp
	je	.label_300
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x56
	nop	
	inc	rax
.label_300:
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	lea	rbp, [rsp + 0x90]
	nop	
	mov	rdi, rbp
	call	strlen
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.154
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.155
	mov	r8d, 5
	mov	rcx, rax
	lea	rdi, [rdi]
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	lea	rdi, [rdi]
	test	r15b, r15b
	je	.label_29
	mov	al,  byte ptr [byte ptr [rip + stable]]
	and	al, 1
	jne	.label_29
	mov	r9b,  byte ptr [byte ptr [rip + unique]]
	mov	r10,  qword ptr [word ptr [rip + keylist]]
.label_251:
	test	r10, r10
	lea	rsi, [rsi]
	je	.label_29
	nop	
	xor	r9b, 1
	lea	rsi, [rsi]
	test	r9b, 1
	je	.label_29
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.156
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	error
.label_29:
	mov	al, byte ptr [rsp + 0x57]
	mov	byte ptr [byte ptr [rip + reverse]],  al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x1a4]
	nop	
	test	al, 1
	je	.label_342
	mov	esi, 0x10
	mov	rdi, qword ptr [rsp + 0x1a8]
	call	randread_new
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_348
	lea	rsi, [rsp + 0x90]
	mov	edx, 0x10
	nop	
	mov	rdi, rbx
	call	randread
	mov	rdi, rbx
	mov	rsp, rsp
	call	randread_free
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_356
	mov	edi, OFFSET FLAT:random_md5_state
	call	md5_init_ctx
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x90]
	mov	rbp, rbp
	mov	esi, 0x10
	mov	edx, OFFSET FLAT:random_md5_state
	nop	
	call	md5_process_bytes
.label_342:
	cmp	qword ptr [word ptr [rip + temp_dir_count]],  0
	mov	r15, qword ptr [rsp + 0x1d8]
	mov	rbp, rbp
	jne	.label_353
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.62
	mov	rsp, rsp
	call	getenv
	mov	rsp, rsp
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.16
	lea	rdi, [rdi]
	cmovne	rbx, rax
	cmp	qword ptr [word ptr [rip + temp_dir_alloc]],  0
	je	.label_33
	nop	
	mov	rax,  qword ptr [word ptr [rip + temp_dirs]]
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_17
.label_33:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + temp_dirs]]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	eax, 0x10
	mov	esi, 1
	cmove	rsi, rax
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + temp_dir_alloc]],  rsi
	shl	rsi, 3
	nop	
	call	xrealloc
	mov	qword ptr [word ptr [rip + temp_dirs]],  rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + temp_dir_count]]
.label_17:
	lea	rdx, [rcx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + temp_dir_count]],  rdx
	mov	qword ptr [rax + rcx*8], rbx
.label_353:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x18]
	test	rdx, rdx
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x128]
	lea	rdi, [rdi]
	jne	.label_31
	mov	rdi, r14
	call	free
	mov	edi, 8
	lea	rsi, [rsi]
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:.str.54
	nop	
	mov	edx, 1
.label_31:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_233
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	imul	rcx, rcx, 0x22
	nop	
	cmp	rax, rcx
	cmova	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + sort_size]],  rcx
.label_233:
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_51
	cmp	rdx, 2
	jae	.label_54
	cmp	qword ptr [rsp + 0x70], 0
	jne	.label_56
	nop	
	mov	r15, qword ptr [r14]
	mov	esi, OFFSET FLAT:.str.52
	mov	rdi, r15
	mov	rsp, rsp
	call	stream_open
	mov	rbp, rax
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_64
	mov	r13,  qword ptr [word ptr [rip + keylist]]
	movzx	r12d,  byte ptr [byte ptr [rip + unique]]
	and	r12d, 1
	mov	rcx,  qword ptr [word ptr [rip + merge_buffer_size]]
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rbp, rbp
	cmova	rax, rcx
.label_79:
	mov	ecx, eax
	and	ecx, 0x1f
	mov	rbp, rbp
	mov	ebx, 0x20
	sub	rbx, rcx
	add	rbx, rax
	mov	rdi, rbx
	nop	
	call	malloc
	mov	rsp, rsp
	test	rax, rax
	jne	.label_76
	mov	rax, rbx
	mov	rsp, rsp
	shr	rax, 1
	lea	rsi, [rsi]
	cmp	rbx, 0x43
	ja	.label_79
	call	xalloc_die
.label_76:
	mov	qword ptr [rsp + 0x90], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rbx
	mov	eax, 0x20
	mov	rbp, rbp
	movq	xmm0, rax
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rsp + 0xb0], xmm0
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xc0], 0
	mov	rsp, rsp
	pxor	xmm0, xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rsp + 0x98], xmm0
	mov	qword ptr [rsp + 0x200], 0
	lea	rdi, [rsp + 0x90]
	mov	rsi, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x1d8], rbp
	mov	rsp, rsp
	mov	rdx, r15
	call	fillbuf
	xor	ebp, ebp
	test	al, al
	mov	r14d, 0
	lea	rdi, [rdi]
	je	.label_28
	xor	r12d, 1
	xor	ebp, ebp
	mov	rbp, rbp
	test	r13, r13
	je	.label_296
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x278], rax
.label_192:
	mov	qword ptr [rsp + 0x138], r15
	mov	r15, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0x190], rax
	lea	rsi, [rsi]
	lea	rbx, [r15 + rax]
	nop	
	mov	rax, rcx
	shl	rax, 5
	nop	
	mov	r14, rbx
	sub	r14, rax
	mov	rbp, rbp
	test	r13, r13
	je	.label_187
	nop	
	mov	rsi, rbx
	add	rsi, -0x20
	lea	rdi, [rsp + 0x200]
	call	compare
	cmp	r12d, eax
	mov	rbp, rbp
	jle	.label_46
.label_187:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x3a0], rbp
	nop	dword ptr [rax]
.label_143:
	lea	rsi, [rsi]
	lea	rbp, [rbx - 0x20]
	cmp	r14, rbp
	jae	.label_138
	mov	rbp, rbp
	add	rbx, -0x40
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsi, rbx
	call	compare
	lea	rdi, [rdi]
	cmp	r12d, eax
	mov	rbx, rbp
	jg	.label_143
	mov	rbp, rbp
	jmp	.label_132
.label_138:
	mov	rdx, qword ptr [rbx - 0x18]
	cmp	r13, rdx
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x138]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x1d8]
	mov	rbp, qword ptr [rsp + 0x3a0]
	nop	
	jae	.label_148
	nop	dword ptr [rax]
.label_156:
	lea	rsi, [rsi]
	add	r13, r13
	lea	rdi, [rdi]
	je	.label_155
	mov	rbp, rbp
	cmp	r13, rdx
	nop	
	jb	.label_156
	lea	rdi, [rdi]
	jmp	.label_210
.label_155:
	mov	rbp, rbp
	mov	r13, rdx
.label_210:
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	free
	mov	rdi, r13
	nop	
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x200], rbp
	mov	rdx, qword ptr [rbx - 0x18]
.label_148:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x278]
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	add	rax, rcx
	mov	qword ptr [rsp + 0x278], rax
	mov	rsi, qword ptr [rbx - 0x20]
	mov	rdi, rbp
	mov	rsp, rsp
	call	memcpy
	mov	rax, qword ptr [rbx - 0x18]
	mov	qword ptr [rsp + 0x208], rax
	mov	rax, qword ptr [rbx - 0x20]
	mov	rcx, qword ptr [rbx - 0x10]
	sub	rcx, rax
	add	rcx, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x210], rcx
	mov	rcx, qword ptr [rbx - 8]
	nop	
	sub	rcx, rax
	add	rcx, rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x218], rcx
	lea	rdi, [rsp + 0x90]
	mov	rsp, rsp
	mov	rsi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	call	fillbuf
	mov	rbp, rbp
	xor	r14d, r14d
	test	al, al
	jne	.label_192
	jmp	.label_28
.label_51:
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_194
	mov	rbx, r14
	nop	word ptr [rax + rax]
.label_209:
	mov	rdi, qword ptr [rbx]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	nop	
	jne	.label_199
	cmp	byte ptr [rdi + 1], 0
	mov	rbp, rbp
	je	.label_201
.label_199:
	nop	
	mov	esi, 4
	mov	rsp, rsp
	mov	r12, rdx
	mov	rbp, rbp
	call	euidaccess
	mov	rdx, r12
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_208
.label_201:
	lea	rdi, [rdi]
	inc	rbp
	add	rbx, 8
	cmp	rbp, rdx
	mov	rsp, rsp
	jb	.label_209
.label_194:
	cmp	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	je	.label_124
	mov	rsp, rsp
	mov	rbp, rdx
	lea	rdi, [rdi]
	mov	esi, 0x80041
	nop	
	mov	edx, 0x1b6
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	call	open
	nop	
	mov	ebx, eax
	test	ebx, ebx
	js	.label_204
	cmp	ebx, 1
	mov	rdx, rbp
	je	.label_124
	mov	esi, 1
	mov	edi, ebx
	mov	rbp, rbp
	mov	rbp, rdx
	call	dup2
	mov	edi, ebx
	nop	
	call	close
	mov	rsp, rsp
	mov	rdx, rbp
.label_124:
	test	r15b, 1
	jne	.label_225
	mov	rcx, qword ptr [rsp + 0x78]
	test	rcx, rcx
	nop	
	jne	.label_227
	lea	rsi, [rsi]
	mov	edi, 2
	lea	rdi, [rdi]
	mov	rbx, rdx
	call	num_processors
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	cmp	rax, 8
	mov	rsp, rsp
	mov	ecx, 8
	lea	rsi, [rsi]
	cmovb	rcx, rax
.label_227:
	movabs	rax, 0xffffffffffffff
	cmp	rcx, rax
	cmovb	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x218], 0
	test	rdx, rdx
	lea	rdi, [rdi]
	je	.label_239
	lea	rcx, [rax + rax]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x270], rcx
	mov	rsp, rsp
	mov	rcx, rax
	mov	qword ptr [rsp + 0x188], rax
	mov	rsp, rsp
	shl	rcx, 8
	nop	
	mov	qword ptr [rsp + 0x1b0], rcx
	mov	rsp, rsp
	xor	r12d, r12d
	xor	r13d, r13d
.label_200:
	mov	rbx, rdx
	mov	rdi, qword ptr [r14]
	mov	qword ptr [rsp + 0x190], rdi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.52
	call	stream_open
	mov	qword ptr [rsp + 0x278], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_263
	mov	rsi, qword ptr [rsp + 0x188]
	nop	
	cmp	rsi, 2
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	edi, 0x30
	mov	rdx, rbx
	jb	.label_268
	nop	word ptr [rax + rax]
.label_277:
	add	rcx, rcx
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rsi
	jb	.label_277
	mov	rbp, rbp
	shl	rax, 5
	lea	rdi, [rdi]
	mov	rdi, rax
.label_268:
	mov	rsp, rsp
	mov	rax, rdi
	mov	rsp, rsp
	or	rax, 1
	mov	qword ptr [rsp + 0x3a0], rax
	cmp	qword ptr [rsp + 0x218], 0
	nop	
	jne	.label_282
	mov	qword ptr [rsp + 0x1d8], r12
	mov	r15, rdx
	nop	
	mov	qword ptr [rsp + 0x18], r15
	mov	rsp, rsp
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x10], rdi
	or	rbp, 2
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_360:
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_134
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + rbx*8]
	movzx	eax, byte ptr [rsi]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_295
	cmp	byte ptr [rsi + 1], 0
	je	.label_299
.label_295:
	mov	edi, 1
	lea	rdx, [rsp + 0x90]
	call	__xstat
	jmp	.label_303
	nop	word ptr [rax + rax]
.label_134:
	nop	
	mov	rdi, qword ptr [rsp + 0x278]
	lea	rsi, [rsi]
	call	fileno
	mov	edi, 1
	mov	esi, eax
	lea	rdi, [rdi]
	jmp	.label_240
.label_299:
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
.label_240:
	lea	rdx, [rsp + 0x90]
	mov	rbp, rbp
	call	__fxstat
.label_303:
	test	eax, eax
	jne	.label_319
	mov	r12, r14
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xa8]
	mov	ecx, 0xf000
	mov	rsp, rsp
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_321
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_100
	nop	dword ptr [rax]
.label_321:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + sort_size]]
	nop	
	test	rsi, rsi
	nop	
	mov	r14d, 0x20000
	nop	
	jne	.label_60
.label_100:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + sort_buffer_size.size_bound]]
	test	rsi, rsi
	lea	rsi, [rsi]
	jne	.label_131
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + sort_size]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  rsi
	lea	rsi, [rsi]
	test	rsi, rsi
	jne	.label_131
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], r13
	mov	edi, 2
	lea	r13, [rsp + 0x1e0]
	mov	rbp, rbp
	mov	rsi, r13
	call	getrlimit
	nop	
	cmp	eax, 1
	sbb	r15, r15
	nop	
	not	r15
	or	r15, qword ptr [rsp + 0x1e0]
	mov	edi, 9
	mov	rsi, r13
	mov	rbp, rbp
	call	getrlimit
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_354
	mov	rax, qword ptr [rsp + 0x1e0]
	cmp	rax, r15
	cmovb	r15, rax
.label_354:
	shr	r15, 1
	mov	rbp, rbp
	mov	edi, 5
	lea	rsi, [rsp + 0x1e0]
	call	getrlimit
	test	eax, eax
	nop	
	jne	.label_329
	nop	
	mov	rax, qword ptr [rsp + 0x1e0]
	shr	rax, 4
	lea	rax, [rax + rax*4]
	mov	rsp, rsp
	lea	rax, [rax + rax*2]
	lea	rsi, [rsi]
	cmp	rax, r15
	lea	rsi, [rsi]
	cmovb	r15, rax
.label_329:
	call	physmem_available
	movsd	qword ptr [rsp + 0x138], xmm0
	call	physmem_total
	lea	rdi, [rdi]
	movapd	xmm1, xmm0
	mov	rsp, rsp
	mulsd	xmm1,  qword ptr [word ptr [rip + label_11]]
	movsd	xmm6, qword ptr [rsp + 0x138]
	mov	rbp, rbp
	maxsd	xmm6, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_12]]
	movq	xmm1, r15
	lea	rsi, [rsi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_13]]
	lea	rsi, [rsi]
	movdqa	xmm3, xmm2
	punpckldq	xmm1, xmm3
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_14]]
	nop	
	movapd	xmm5, xmm2
	subpd	xmm1, xmm5
	mov	rsp, rsp
	pshufd	xmm2, xmm1, 0x4e
	lea	rsi, [rsi]
	addpd	xmm2, xmm1
	lea	rdi, [rdi]
	movapd	xmm1, xmm0
	movsd	xmm4,  qword ptr [word ptr [rip + label_15]]
	lea	rsi, [rsi]
	subsd	xmm1, xmm4
	mov	rbp, rbp
	cvttsd2si	rax, xmm1
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	mov	rdx, rcx
	xor	rax, rdx
	cvttsd2si	rcx, xmm0
	lea	rdi, [rdi]
	ucomisd	xmm0, xmm4
	lea	rdi, [rdi]
	cmovae	rcx, rax
	lea	rdi, [rdi]
	ucomisd	xmm2, xmm0
	cmovbe	rcx, r15
	movq	xmm0, rcx
	lea	rdi, [rdi]
	punpckldq	xmm0, xmm3
	subpd	xmm0, xmm5
	mov	rsp, rsp
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	movapd	xmm2, xmm6
	movapd	xmm0, xmm2
	subsd	xmm0, xmm4
	nop	
	cvttsd2si	rax, xmm0
	lea	rdi, [rdi]
	xor	rax, rdx
	cvttsd2si	rsi, xmm2
	ucomisd	xmm2, xmm4
	nop	
	cmovae	rsi, rax
	ucomisd	xmm1, xmm2
	mov	rsp, rsp
	cmovbe	rsi, rcx
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	lea	rdi, [rdi]
	imul	rax, rax, 0x22
	mov	rbp, rbp
	cmp	rsi, rax
	cmovbe	rsi, rax
	mov	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  rsi
	mov	r15, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x128]
	nop	dword ptr [rax + rax]
.label_131:
	mov	rsp, rsp
	mov	rcx, r14
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x3a0]
	lea	rsi, [rsi]
	imul	rcx, rdi
	lea	rsi, [rsi]
	inc	rcx
	xor	edx, edx
	mov	rax, rcx
	div	rdi
	nop	
	cmp	r14, rax
	mov	rsp, rsp
	jne	.label_60
	mov	rsp, rsp
	mov	rax, rsi
	mov	rbp, rbp
	sub	rax, rbp
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jbe	.label_60
	add	rbp, rcx
	inc	rbx
	cmp	rbx, r15
	mov	rsp, rsp
	mov	r14, r12
	jb	.label_360
	lea	rdi, [rdi]
	jmp	.label_82
.label_60:
	mov	rbp, rsi
	mov	r14, r12
	nop	word ptr cs:[rax + rax]
.label_82:
	mov	rbp, rbp
	mov	eax, ebp
	nop	
	and	eax, 0x1f
	mov	ebx, 0x20
	nop	
	sub	rbx, rax
	mov	rbp, rbp
	add	rbx, rbp
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	malloc
	test	rax, rax
	jne	.label_98
	shr	rbx, 1
	cmp	rbx, qword ptr [rsp + 0x3a0]
	mov	rbp, rbx
	ja	.label_82
	jmp	.label_326
.label_98:
	mov	qword ptr [rsp + 0x200], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x228], rdi
	mov	qword ptr [rsp + 0x218], rbx
	mov	qword ptr [rsp + 0x220], 0
	mov	byte ptr [rsp + 0x230], 0
	nop	
	lea	rax, [rsp + 0x208]
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rax], xmm0
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x1d8]
.label_282:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x230], 0
	lea	rsi, [rsi]
	add	r14, 8
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x258], r14
	mov	rbp, rbp
	dec	rdx
	mov	qword ptr [rsp + 0x18], rdx
	nop	word ptr cs:[rax + rax]
.label_269:
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rdi, [rsp + 0x200]
	mov	rsi, qword ptr [rsp + 0x278]
	mov	rdx, qword ptr [rsp + 0x190]
	call	fillbuf
	test	al, al
	je	.label_133
	mov	al, byte ptr [rsp + 0x230]
	mov	r15, qword ptr [rsp + 0x218]
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	test	rdi, rdi
	je	.label_39
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_39
	mov	rcx, qword ptr [rsp + 0x208]
	mov	rsp, rsp
	mov	rdx, r15
	sub	rdx, rcx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x210]
	lea	rdi, [rdi]
	imul	rsi, qword ptr [rsp + 0x10]
	sub	rdx, rsi
	nop	
	cmp	qword ptr [rsp + 0x3a0], rdx
	jb	.label_95
.label_39:
	mov	qword ptr [word ptr [rip + saved_line]],  0
	mov	rbp, qword ptr [rsp + 0x200]
	mov	rbp, rbp
	test	al, al
	je	.label_146
	mov	rsp, rsp
	mov	rax, r13
	lea	rdi, [rdi]
	or	rax, rdi
	nop	
	or	rax, qword ptr [rsp + 0x220]
	mov	rsp, rsp
	jne	.label_146
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x278]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x190]
	call	xfclose
	mov	esi, OFFSET FLAT:.str.166
	nop	
	mov	rbx, qword ptr [rsp + 0x70]
	mov	rdi, rbx
	nop	
	call	stream_open
	test	rax, rax
	mov	rsp, rsp
	je	.label_162
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1d0], rax
	mov	al, 1
	mov	qword ptr [rsp + 0x1d8], rax
	mov	rsp, rsp
	mov	r14, rbx
	mov	rbp, rbp
	jmp	.label_164
	nop	word ptr cs:[rax + rax]
.label_146:
	mov	qword ptr [rsp + 0x1d8], r12
	mov	rbp, rbp
	inc	r13
	xor	esi, esi
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x1d0]
	mov	rsp, rsp
	call	maybe_create_temp
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rsp, rsp
	add	r14, 0xd
.label_164:
	mov	qword ptr [rsp + 0x128], r13
	add	r15, rbp
	mov	qword ptr [rsp + 0x138], rbp
	mov	r12, qword ptr [rsp + 0x210]
	cmp	r12, 2
	jb	.label_183
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:compare_nodes
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x270]
	mov	rsp, rsp
	call	heap_alloc
	nop	
	mov	qword ptr [rsp + 0x90], rax
	xor	esi, esi
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x98]
	call	pthread_mutex_init
	xor	esi, esi
	mov	rbp, rbp
	lea	rdi, [rsp + 0xc0]
	call	pthread_cond_init
	mov	rdi, qword ptr [rsp + 0x1b0]
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbx, rax
	xorpd	xmm0, xmm0
	mov	rbp, rbp
	movupd	xmmword ptr [rbx + 0x10], xmm0
	movupd	xmmword ptr [rbx], xmm0
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], r12
	mov	qword ptr [rbx + 0x28], r12
	mov	qword ptr [rbx + 0x38], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x50], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0x54], 0
	lea	rdi, [rbx + 0x58]
	xor	esi, esi
	call	pthread_mutex_init
	lea	rbp, [rbx + 0x80]
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r15
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x188]
	lea	rsi, [rsi]
	mov	rcx, rbx
	nop	
	mov	r8, r12
	call	init_node
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x1d0]
	mov	qword ptr [rsp], r14
	nop	
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, rbp
	mov	r12, qword ptr [rsp + 0x1d8]
	nop	
	lea	r8, [rsp + 0x90]
	mov	r9, r13
	mov	rbp, rbp
	call	sortlines
	nop	
	mov	rbx, qword ptr [rsp + 0x138]
	jmp	.label_145
	nop	word ptr [rax + rax]
.label_183:
	add	r15, -0x20
	nop	
	mov	r13, qword ptr [rsp + 0x1d0]
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x138]
	mov	r12, qword ptr [rsp + 0x1d8]
	jne	.label_234
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	je	.label_245
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:saved_line
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	compare
	nop	
	test	eax, eax
	je	.label_145
.label_245:
	movupd	xmm0, xmmword ptr [r15]
	mov	rbp, rbp
	movupd	xmm1, xmmword ptr [r15 + 0x10]
	movupd	xmmword ptr [word ptr [rip + label_22]],  xmm1
	lea	rsi, [rsi]
	movupd	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_234:
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rsp, rsp
	call	write_line
.label_145:
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, r14
	call	xfclose
	mov	rbp, rbp
	test	r12b, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x128]
	je	.label_269
	mov	rbp, rbp
	jmp	.label_211
.label_95:
	nop	
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x220], rcx
.label_133:
	mov	rdi, qword ptr [rsp + 0x278]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x190]
	nop	
	call	xfclose
	mov	rdx, rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x258]
	jne	.label_200
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x200]
.label_211:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	test	r12b, 1
	jne	.label_99
	nop	
	mov	rbp,  qword ptr [word ptr [rip + temphead]]
	mov	rax, r13
	shr	rax, 0x3b
	lea	rsi, [rsi]
	je	.label_358
	nop	
	call	xalloc_die
.label_225:
	mov	esi, 0x10
	nop	
	mov	rdi, rdx
	mov	rbp, rbp
	mov	rbx, rdx
	nop	
	call	xcalloc
	mov	rsp, rsp
	mov	rdx, rbx
	xor	ecx, ecx
	nop	
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_298
	mov	rbp, rbp
	mov	rdi, rax
	nop	
.label_301:
	mov	rsi, qword ptr [r14 + rcx*8]
	mov	rsp, rsp
	mov	qword ptr [rdi], rsi
	inc	rcx
	add	rdi, 0x10
	cmp	rcx, rdx
	jb	.label_301
.label_298:
	mov	rbp, rbp
	xor	esi, esi
	mov	rdi, rax
	mov	rcx, qword ptr [rsp + 0x70]
	nop	
	call	merge
	jmp	.label_314
.label_132:
	mov	rbx, rbp
	jmp	.label_196
.label_296:
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x278], rax
.label_24:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x3a0], rbp
	mov	qword ptr [rsp + 0x138], r15
	mov	r15, qword ptr [rsp + 0x90]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x190], rax
	lea	rsi, [rsi]
	lea	rbx, [r15 + rax]
	mov	rbp, rbp
	mov	rax, rcx
	mov	rbp, rbp
	shl	rax, 5
	mov	r14, rbx
	sub	r14, rax
	lea	rdi, [rdi]
	test	r13, r13
	je	.label_318
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	add	rsi, -0x20
	lea	rdi, [rsp + 0x200]
	lea	rsi, [rsi]
	call	compare
	nop	
	cmp	r12d, eax
	mov	rsp, rsp
	jg	.label_340
	jmp	.label_196
.label_318:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rcx
	nop	word ptr [rax + rax]
.label_340:
	nop	
	lea	rbp, [rbx - 0x20]
	cmp	r14, rbp
	lea	rdi, [rdi]
	jae	.label_344
	add	rbx, -0x40
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsi, rbx
	call	compare
	mov	rbp, rbp
	cmp	r12d, eax
	mov	rbp, rbp
	mov	rbx, rbp
	jg	.label_340
	jmp	.label_351
.label_344:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx - 0x18]
	cmp	r13, rdx
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x138]
	mov	r14, qword ptr [rsp + 0x1d8]
	nop	
	jae	.label_41
	nop	word ptr cs:[rax + rax]
.label_334:
	lea	rdi, [rdi]
	add	r13, r13
	nop	
	je	.label_323
	mov	rbp, rbp
	cmp	r13, rdx
	jb	.label_334
	jmp	.label_16
.label_41:
	mov	rbp, qword ptr [rsp + 0x3a0]
	lea	rsi, [rsi]
	jmp	.label_339
.label_323:
	mov	r13, rdx
.label_16:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x3a0]
	call	free
	nop	
	mov	rdi, r13
	call	xmalloc
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	qword ptr [rsp + 0x200], rbp
	mov	rdx, qword ptr [rbx - 0x18]
.label_339:
	mov	rax, qword ptr [rsp + 0x278]
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	add	rax, rcx
	mov	qword ptr [rsp + 0x278], rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx - 0x20]
	nop	
	mov	rdi, rbp
	call	memcpy
	mov	rbp, rbp
	mov	rax, qword ptr [rbx - 0x18]
	mov	qword ptr [rsp + 0x208], rax
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	mov	rsi, r14
	nop	
	mov	rdx, r15
	lea	rdi, [rdi]
	call	fillbuf
	xor	r14d, r14d
	lea	rsi, [rsi]
	test	al, al
	jne	.label_24
	jmp	.label_28
.label_351:
	mov	rbx, rbp
.label_196:
	mov	rsp, rsp
	mov	r14d, 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x128]
	mov	rsp, rsp
	movzx	eax, al
	cmp	eax, 0x63
	jne	.label_163
	lea	rsi, [rsi]
	add	rbx, -0x20
	add	r15, qword ptr [rsp + 0x190]
	sub	r15, rbx
	lea	rsi, [rsi]
	sar	r15, 5
	mov	rbp, rbp
	add	r15, qword ptr [rsp + 0x278]
	nop	
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.157
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r12, rax
	mov	r13,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsp + 0x1e0]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	umaxtostr
	mov	r9, rax
	nop	
	mov	r14d, 1
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rsp, rsp
	mov	rcx, r13
	mov	r15, qword ptr [rsp + 0x138]
	lea	rsi, [rsi]
	mov	r8, r15
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.158
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, rax
	call	write_line
	mov	rbp, qword ptr [rsp + 0x3a0]
	jmp	.label_28
.label_163:
	mov	r15, qword ptr [rsp + 0x138]
	mov	rbp, qword ptr [rsp + 0x3a0]
.label_28:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x1d8]
	lea	rsi, [rsi]
	mov	rsi, r15
	call	xfclose
	nop	
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
	mov	rdi, rbp
	nop	
	call	free
	jmp	.label_115
.label_239:
	mov	rbp,  qword ptr [word ptr [rip + temphead]]
	xor	r13d, r13d
.label_358:
	mov	rbp, rbp
	mov	rdi, r13
	shl	rdi, 4
	call	xmalloc
	mov	rbx, rax
	test	rbp, rbp
	je	.label_93
	mov	rax, rbx
	mov	rbp, rbp
	add	rax, 8
	nop	dword ptr [rax + rax]
.label_278:
	lea	rcx, [rbp + 0xd]
	mov	rsp, rsp
	mov	qword ptr [rax - 8], rcx
	mov	qword ptr [rax], rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbp]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	test	rbp, rbp
	jne	.label_278
.label_93:
	mov	rdi, rbx
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	call	merge
	mov	rdi, rbx
	call	free
	nop	
	jmp	.label_99
	nop	dword ptr [rax + rax]
.label_114:
	mov	edi, 0xffffffff
	lea	rsi, [rsi]
	call	reap
.label_99:
	nop	
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	lea	rdi, [rdi]
	jg	.label_114
.label_314:
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_115
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_123
.label_115:
	mov	eax, r14d
	nop	
	add	rsp, 0x3a8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_46:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x3a0], rbp
	nop	
	jmp	.label_196
.label_208:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.165
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rsi, qword ptr [rbx]
	mov	rdi, rax
	nop	
	call	sort_die
.label_326:
	call	xalloc_die
.label_162:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.142
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rbx
	call	sort_die
.label_319:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.178
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi, qword ptr [r14 + rbx*8]
	mov	rdi, rax
	call	sort_die
.label_54:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rdi, [rdi]
	call	quotearg_style
	nop	
	mov	rcx, rax
	nop	
	movsx	r8d, bpl
	mov	edi, 2
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
.label_56:
	mov	byte ptr [byte ptr [rip + main.opts.64]],  bpl
	mov	edi, OFFSET FLAT:main.opts.64
	lea	rdi, [rdi]
	call	incompatible_options
.label_64:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, r15
	call	sort_die
.label_222:
	test	al, al
	mov	r12, rax
	mov	rsp, rsp
	jne	.label_172
	lea	rdi, [rdi]
	mov	r12b, 0x6f
.label_172:
	mov	byte ptr [byte ptr [rip + main.opts]],  r12b
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:main.opts
	call	incompatible_options
.label_348:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.142
	lea	rsi, [rsi]
	jmp	.label_182
.label_356:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
.label_182:
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x1a8]
	nop	
	call	sort_die
.label_263:
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.142
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x190]
	lea	rdi, [rdi]
	call	sort_die
.label_204:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x70]
	call	sort_die
.label_123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	esi, OFFSET FLAT:.str.54
	mov	rdi, rax
	call	sort_die
.label_224:
	test	rax, rax
	mov	rbp, rbp
	je	.label_213
.label_271:
	movzx	edx, word ptr [rax + 0x32]
	mov	rbp, rbp
	movzx	esi, dl
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x34]
	movzx	edi, cl
	mov	rsp, rsp
	add	edi, esi
	movzx	esi, ch
	add	esi, edi
	lea	rdi, [rdi]
	shr	ecx, 0x10
	movzx	edi, cl
	add	edi, esi
	shr	edx, 8
	nop	
	or	dl, byte ptr [rax + 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rsi, [rsi]
	setne	bl
	nop	
	or	bl, dl
	movzx	edx, bl
	add	edx, edi
	cmp	edx, 2
	lea	rsi, [rsi]
	jae	.label_166
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	nop	
	jmp	.label_224
.label_166:
	mov	byte ptr [rax + 0x37], 0
	mov	word ptr [rax + 0x30], 0
	xor	edx, edx
	test	dl, dl
	jne	.label_226
	mov	dl, 1
	lea	rdi, [rdi]
	test	dl, dl
	nop	
	jne	.label_231
.label_226:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x90], 0x62
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdx, [rsp + 0x91]
	mov	qword ptr [rsp + 0x130], rdx
.label_231:
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:nondictionary
	cmp	rcx, rdx
	jne	.label_238
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rbp, rbp
	mov	byte ptr [rcx], 0x64
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x130], rcx
.label_238:
	cmp	qword ptr [rax + 0x28], 0
	je	.label_246
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rbp, rbp
	mov	byte ptr [rcx], 0x66
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x130], rcx
.label_246:
	mov	rbp, rbp
	mov	cx, word ptr [rax + 0x34]
	test	cl, cl
	jne	.label_253
	shr	ecx, 8
	mov	rbp, rbp
	jmp	.label_96
.label_253:
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rbp, rbp
	mov	byte ptr [rcx], 0x67
	mov	rsp, rsp
	inc	rcx
	nop	
	mov	qword ptr [rsp + 0x130], rcx
	mov	cl, byte ptr [rax + 0x35]
.label_96:
	test	cl, cl
	je	.label_264
	mov	rcx, qword ptr [rsp + 0x130]
	mov	byte ptr [rcx], 0x68
	mov	rbp, rbp
	inc	rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x130], rcx
.label_264:
	mov	ecx, OFFSET FLAT:nonprinting
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x20], rcx
	jne	.label_272
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x130]
	mov	byte ptr [rcx], 0x69
	inc	rcx
	mov	qword ptr [rsp + 0x130], rcx
.label_272:
	cmp	byte ptr [rax + 0x36], 0
	je	.label_174
	mov	rcx, qword ptr [rsp + 0x130]
	mov	byte ptr [rcx], 0x4d
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x130], rcx
.label_174:
	mov	cx, word ptr [rax + 0x32]
	mov	rsp, rsp
	test	cl, cl
	jne	.label_284
	mov	rbp, rbp
	shr	ecx, 8
	mov	rbp, rbp
	jmp	.label_179
.label_284:
	mov	rcx, qword ptr [rsp + 0x130]
	mov	byte ptr [rcx], 0x6e
	inc	rcx
	mov	qword ptr [rsp + 0x130], rcx
	mov	cl, byte ptr [rax + 0x33]
.label_179:
	test	cl, cl
	je	.label_289
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x130]
	mov	byte ptr [rcx], 0x52
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [rsp + 0x130], rcx
.label_289:
	cmp	byte ptr [rax + 0x37], 0
	lea	rdi, [rdi]
	je	.label_294
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rbp, rbp
	mov	byte ptr [rcx], 0x72
	mov	rbp, rbp
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x130], rcx
.label_294:
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x38], 0
	mov	rsp, rsp
	je	.label_343
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x130]
	mov	byte ptr [rax], 0x56
	inc	rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x130], rax
.label_343:
	mov	rax, qword ptr [rsp + 0x130]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x90]
	call	incompatible_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ee0

	.globl sighandler
	.type sighandler, @function
sighandler:
	mov	rsp, rsp
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, edi
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + temphead]]
	mov	rsp, rsp
	jmp	.label_363
	nop	dword ptr [rax + rax]
.label_364:
	lea	rsi, [rsi]
	lea	rdi, [rbx + 0xd]
	call	unlink
	mov	rsp, rsp
	mov	rbx, qword ptr [rbx]
.label_363:
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_364
	mov	qword ptr [word ptr [rip + temphead]],  0
	xor	esi, esi
	mov	edi, ebp
	call	signal
	lea	rsi, [rsi]
	mov	edi, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	mov	rbp, rbp
	jmp	raise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f50

	.globl exit_cleanup
	.type exit_cleanup, @function
exit_cleanup:
	lea	rdi, [rdi]
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x88
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + temphead]],  0
	lea	rdi, [rdi]
	je	.label_365
	lea	rdi, [rdi]
	lea	r14, [rsp + 8]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rsp, rsp
	call	pthread_sigmask
	nop	
	test	eax, eax
	mov	rbp, rbp
	sete	byte ptr [rsp]
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + temphead]]
	mov	rbp, rbp
	jmp	.label_366
	nop	dword ptr [rax]
.label_367:
	lea	rdi, [rbx + 0xd]
	lea	rsi, [rsi]
	call	unlink
	mov	rbx, qword ptr [rbx]
.label_366:
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_367
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + temphead]],  0
	lea	rdi, [rdi]
	cmp	byte ptr [rsp], 0
	je	.label_365
	mov	rsp, rsp
	mov	edi, 2
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rbp, rbp
	call	pthread_sigmask
.label_365:
	mov	rbp, rbp
	call	close_stdout
	mov	rsp, rsp
	add	rsp, 0x88
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408010

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
	.align	16
	#Procedure 0x408090

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
	.align	16
	#Procedure 0x4080e0

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
	je	.label_371
	mov	rsp, rsp
	test	eax, eax
	jne	.label_372
	test	byte ptr [rbx], 0x10
	je	.label_368
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	jmp	clearerr_unlocked
.label_371:
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	fflush_unlocked
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_368
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.145
	lea	rdi, [rdi]
	jmp	.label_370
.label_372:
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_fclose
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_369
.label_368:
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
.label_369:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.65
.label_370:
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, r14
	call	sort_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408190

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
	sub	rsp, 0xe8
	mov	qword ptr [rsp + 8], rcx
	mov	r13, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rbp, rbp
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r12
	lea	rsi, [rsi]
	mov	r14d,  dword ptr [dword ptr [rip + nmerge]]
	lea	rsi, [rsi]
	cmp	r14, r13
	lea	rdi, [rdi]
	jae	.label_397
	mov	rbp, rbp
	lea	rax, [r12 + 8]
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax + rax]
.label_399:
	nop	
	mov	qword ptr [rsp + 0x40], r13
	mov	qword ptr [rsp + 0x48], r15
	mov	ecx, r14d
	nop	
	cmp	rcx, r13
	mov	r15, qword ptr [rsp + 0x50]
	mov	ebx, 0
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, r13
	nop	
	ja	.label_409
	nop	word ptr cs:[rax + rax]
.label_376:
	mov	qword ptr [rsp + 0x20], rbx
	xor	esi, esi
	lea	rdi, [rsp + 0x10]
	mov	rbp, rbp
	call	maybe_create_temp
	mov	r14, rax
	mov	rsp, rsp
	shl	rbx, 4
	lea	rsi, [rsi]
	add	rbx, r12
	mov	rbp, rbp
	mov	r13d,  dword ptr [dword ptr [rip + nmerge]]
	mov	r12, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rdx, [rsp + 0x58]
	call	open_input_files
	mov	rbp, rax
	cmp	rbp, r13
	jae	.label_392
	lea	rdi, [rdi]
	cmp	rbp, 1
	mov	rbp, rbp
	jbe	.label_393
.label_392:
	mov	rbp, rbp
	mov	rcx, r12
	lea	rsi, [rsi]
	mov	r12, r14
	nop	
	add	r12, 0xd
	mov	qword ptr [rsp + 0x28], r14
	mov	r14, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	cmp	r14, r13
	cmovb	r13, r14
	mov	r9, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	r8, r12
	mov	rsp, rsp
	call	mergefps
	cmp	r14, rbp
	mov	rax, rbp
	cmovb	rax, r14
	sub	r14, rax
	mov	qword ptr [rsp + 0x48], r14
	lea	rdi, [rdi]
	mov	qword ptr [r15 - 8], r12
	mov	r12, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r15], rax
	mov	rbx, qword ptr [rsp + 0x20]
	add	rbx, rbp
	inc	qword ptr [rsp + 0x18]
	nop	
	mov	r14d,  dword ptr [dword ptr [rip + nmerge]]
	mov	r13, qword ptr [rsp + 0x40]
	mov	rbp, r13
	sub	rbp, rbx
	mov	rbp, rbp
	add	r15, 0x10
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rcx, r14
	jbe	.label_376
.label_409:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rbx
	xor	edx, edx
	mov	rax, qword ptr [rsp + 0x18]
	div	rcx
	sub	rcx, rdx
	mov	rsp, rsp
	sub	rbp, rcx
	jbe	.label_382
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], r13
	mov	rsp, rsp
	inc	rbp
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	call	maybe_create_temp
	nop	
	mov	r13, rax
	nop	
	mov	r12, qword ptr [rsp + 0x20]
	shl	r12, 4
	add	r12, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, r12
	mov	rsi, rbp
	mov	rsp, rsp
	lea	rdx, [rsp + 0x58]
	call	open_input_files
	mov	rsp, rsp
	mov	r14, rax
	cmp	r14, rbp
	jae	.label_400
	cmp	r14, 1
	lea	rdi, [rdi]
	jbe	.label_402
.label_400:
	mov	rbx, r13
	add	rbx, 0xd
	mov	r15, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	cmp	r15, rbp
	cmovb	rbp, r15
	nop	
	mov	r9, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r14
	nop	
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r8, rbx
	lea	rdi, [rdi]
	call	mergefps
	cmp	r15, r14
	mov	rsp, rsp
	mov	rax, r14
	cmovb	rax, r15
	sub	r15, rax
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rax, rbp
	mov	rsp, rsp
	shl	rax, 4
	mov	r12, qword ptr [rsp + 0x30]
	mov	qword ptr [r12 + rax], rbx
	mov	rsp, rsp
	inc	rbp
	mov	qword ptr [r12 + rax + 8], r13
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	add	rbx, r14
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + nmerge]]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	jmp	.label_412
	nop	dword ptr [rax]
.label_382:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
.label_412:
	mov	rdi, rbp
	shl	rdi, 4
	add	rdi, r12
	mov	rsi, rbx
	shl	rsi, 4
	lea	rsi, [rsi]
	add	rsi, r12
	mov	rbp, rbp
	mov	rdx, r13
	lea	rsi, [rsi]
	sub	rdx, rbx
	shl	rdx, 4
	call	memmove
	nop	
	add	r15, rbp
	add	rbp, r13
	mov	rsp, rsp
	sub	rbp, rbx
	mov	eax, r14d
	lea	rdi, [rdi]
	cmp	rax, rbp
	mov	rbp, rbp
	mov	r13, rbp
	mov	rbp, rbp
	jb	.label_399
	mov	rbp, rbp
	jmp	.label_406
.label_397:
	lea	rdi, [rdi]
	mov	rbp, r13
.label_406:
	mov	qword ptr [rsp + 0x48], r15
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], r12
	cmp	r15, rbp
	mov	rsp, rsp
	mov	r15, rbp
	mov	rsp, rsp
	jae	.label_389
	cmp	qword ptr [rsp + 8], 0
	nop	
	je	.label_410
	mov	r14, qword ptr [rsp + 0x48]
	mov	r12, r14
	lea	rdi, [rdi]
	shl	r12, 4
	add	r12, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_401:
	nop	
	mov	rsi, qword ptr [r12]
	movzx	eax, byte ptr [rsi]
	mov	ebx, 0x2d
	lea	rdi, [rdi]
	sub	ebx, eax
	jne	.label_378
	movzx	ebx, byte ptr [rsi + 1]
	lea	rsi, [rsi]
	neg	ebx
.label_378:
	nop	
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	strcmp
	test	ebx, ebx
	nop	
	je	.label_385
	mov	rsp, rsp
	test	eax, eax
	je	.label_386
.label_385:
	mov	ecx,  dword ptr [dword ptr [rip + get_outstatus.outstat_errno]]
	mov	rbp, rbp
	test	ecx, ecx
	jne	.label_388
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:get_outstatus.outstat
	lea	rsi, [rsi]
	call	__fxstat
	mov	ecx, 0xffffffff
	test	eax, eax
	mov	rsp, rsp
	je	.label_394
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_394:
	mov	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  ecx
.label_388:
	test	ecx, ecx
	lea	rsi, [rsi]
	mov	ebp, 0
	mov	eax, OFFSET FLAT:get_outstatus.outstat
	lea	rsi, [rsi]
	cmovs	rbp, rax
	jns	.label_389
	test	ebx, ebx
	lea	rsi, [rsi]
	je	.label_387
	mov	rsi, qword ptr [r12]
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x58]
	call	__xstat
	jmp	.label_395
.label_387:
	mov	edi, 1
	xor	esi, esi
	lea	rdx, [rsp + 0x58]
	nop	
	call	__fxstat
.label_395:
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_374
	mov	rax, qword ptr [rsp + 0x60]
	cmp	rax, qword ptr [rbp + 8]
	mov	rbp, rbp
	jne	.label_374
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rbp]
	lea	rsi, [rsi]
	jne	.label_374
	nop	
.label_386:
	test	r13, r13
	jne	.label_411
	mov	rbx, r15
	xor	esi, esi
	mov	rsp, rsp
	lea	rdi, [rsp + 0x38]
	mov	rbp, rbp
	call	maybe_create_temp
	mov	r13, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rdx, [rsp + 0x10]
	mov	rsp, rsp
	call	open_input_files
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_380
	lea	rsi, [rsi]
	mov	r8, r13
	mov	rbp, rbp
	add	r8, 0xd
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x10]
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, r15
	nop	
	call	mergefps
	mov	rbp, rbp
	mov	r15, rbx
.label_411:
	lea	rax, [r13 + 0xd]
	mov	qword ptr [r12], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 8], r13
.label_374:
	lea	rsi, [rsi]
	inc	r14
	add	r12, 0x10
	cmp	r14, r15
	jb	.label_401
	jmp	.label_389
.label_410:
	mov	r14, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	r13, r14
	shl	r13, 4
	add	r13, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsp, rsp
	mov	r12d, OFFSET FLAT:get_outstatus.outstat
	nop	word ptr cs:[rax + rax]
.label_379:
	mov	rax, qword ptr [r13]
	movzx	ecx, byte ptr [rax]
	mov	ebx, 0x2d
	sub	ebx, ecx
	jne	.label_373
	movzx	ebx, byte ptr [rax + 1]
	neg	ebx
.label_373:
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + get_outstatus.outstat_errno]]
	test	ecx, ecx
	jne	.label_377
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:get_outstatus.outstat
	call	__fxstat
	mov	ecx, 0xffffffff
	test	eax, eax
	mov	rsp, rsp
	je	.label_383
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
.label_383:
	mov	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  ecx
.label_377:
	test	ecx, ecx
	mov	ebp, 0
	nop	
	cmovs	rbp, r12
	mov	rbp, rbp
	jns	.label_389
	mov	rsp, rsp
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_391
	mov	rsi, qword ptr [r13]
	mov	edi, 1
	mov	rsp, rsp
	lea	rdx, [rsp + 0x58]
	call	__xstat
	jmp	.label_398
	nop	word ptr cs:[rax + rax]
.label_391:
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	nop	
	lea	rdx, [rsp + 0x58]
	lea	rdi, [rdi]
	call	__fxstat
.label_398:
	test	eax, eax
	jne	.label_404
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp + 8]
	jne	.label_404
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp]
	nop	
	jne	.label_404
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	jne	.label_408
	nop	
	mov	rbx, r15
	xor	esi, esi
	nop	
	lea	rdi, [rsp + 0x38]
	mov	rbp, rbp
	call	maybe_create_temp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	esi, 1
	mov	rdi, r13
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x10]
	call	open_input_files
	mov	rbp, rbp
	test	rax, rax
	je	.label_380
	mov	rbp, rbp
	mov	r8, rbp
	mov	rbp, rbp
	add	r8, 0xd
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x10]
	xor	esi, esi
	mov	rdi, r13
	mov	rbp, rbp
	mov	rdx, rax
	mov	rcx, r15
	nop	
	call	mergefps
	mov	r15, rbx
	lea	rsi, [rsi]
	mov	rax, rbp
.label_408:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	rcx, rax
	lea	rax, [rcx + 0xd]
	mov	qword ptr [r13], rax
	mov	qword ptr [r13 + 8], rcx
	nop	word ptr cs:[rax + rax]
.label_404:
	inc	r14
	add	r13, 0x10
	cmp	r14, r15
	jb	.label_379
.label_389:
	mov	r14, qword ptr [rsp + 0x30]
	lea	rax, [r14 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rax
	nop	
	mov	rbx, r15
	jmp	.label_375
	nop	word ptr [rax + rax]
.label_384:
	mov	r12, qword ptr [rsp + 0x48]
	cmp	r12, rbp
	mov	rsi, rbp
	cmovb	rsi, r12
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rsi
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	r8, rbx
	mov	rsp, rsp
	add	r8, 0xd
	mov	qword ptr [rsp + 0x28], r8
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	r9, r15
	call	mergefps
	mov	r15, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r15], rcx
	nop	
	mov	qword ptr [r15 + 8], rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x18]
	nop	
	mov	rdx, rbx
	mov	rsp, rsp
	sub	rdx, rbp
	shl	rdx, 4
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rsi, r13
	call	memmove
	inc	r12
	sub	r12, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x48], r12
	add	rbx, 2
	sub	rbx, r14
	mov	rsp, rsp
	mov	r14, r15
.label_375:
	mov	rbp, rbp
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	lea	rdx, [rsp + 0x58]
	nop	
	call	open_input_files
	mov	rbp, rax
	lea	rsi, [rsi]
	cmp	rbp, rbx
	mov	rbp, rbp
	jne	.label_390
	mov	esi, OFFSET FLAT:.str.166
	mov	rdi, qword ptr [rsp + 8]
	nop	
	call	stream_open
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_396
	call	__errno_location
	lea	rsi, [rsi]
	cmp	rbx, 3
	nop	
	mov	qword ptr [rsp + 0x18], rbx
	mov	rsp, rsp
	jb	.label_405
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x18
	lea	rsi, [rsi]
	je	.label_403
	jmp	.label_405
	nop	word ptr cs:[rax + rax]
.label_390:
	nop	
	mov	qword ptr [rsp + 0x18], rbx
	cmp	rbp, 2
	lea	rdi, [rdi]
	jbe	.label_407
.label_403:
	mov	r15, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	r13, rbp
	shl	r13, 4
	add	r13, r14
	mov	rsp, rsp
	lea	r12, [rsp + 0x10]
	nop	dword ptr [rax]
.label_381:
	lea	rsi, [rsi]
	mov	r14, rbp
	lea	rbp, [r14 - 1]
	mov	rdi, qword ptr [r15 + r14*8 - 8]
	mov	rsi, qword ptr [r13 - 0x10]
	nop	
	add	r13, -0x10
	call	xfclose
	mov	rbp, rbp
	cmp	rbp, 2
	seta	al
	movzx	esi, al
	mov	rdi, r12
	lea	rsi, [rsi]
	call	maybe_create_temp
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_381
	jmp	.label_384
.label_396:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 8]
	nop	
	call	mergefps
	lea	rsi, [rsi]
	add	rsp, 0xe8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_393:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.142
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	shl	rbp, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + rbp]
	mov	rdi, rax
	nop	
	call	sort_die
.label_407:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.142
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	shl	rbp, 4
	nop	
	mov	rsi, qword ptr [r14 + rbp]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	sort_die
.label_405:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 8]
	nop	
	call	sort_die
.label_402:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	shl	r14, 4
	mov	rsi, qword ptr [r12 + r14]
	mov	rdi, rax
	call	sort_die
.label_380:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	shl	r14, 4
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + r14]
	mov	rdi, rax
	call	sort_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b70

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
	jne	.label_413
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.180
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
.label_413:
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
	.align	16
	#Procedure 0x408bf0

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
	.align	16
	#Procedure 0x408c10

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
	je	.label_418
	mov	rbp, rbp
	movzx	eax, al
	nop	
	cmp	eax, 0x72
	nop	
	jne	.label_422
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_421
	cmp	byte ptr [r14 + 1], 0
	je	.label_416
.label_421:
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
	js	.label_423
	mov	edi, eax
	nop	
	mov	rsi, rbp
	nop	
	call	fdopen
	mov	rbx, rax
	mov	rsp, rsp
	jmp	.label_423
.label_418:
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_417
	nop	
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	call	ftruncate
	test	eax, eax
	mov	rbp, rbp
	je	.label_417
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	nop	
	mov	ecx,  dword ptr [dword ptr [rip + get_outstatus.outstat_errno]]
	mov	rbp, rbp
	test	ecx, ecx
	jne	.label_424
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:get_outstatus.outstat
	call	__fxstat
	nop	
	mov	ecx, 0xffffffff
	test	eax, eax
	je	.label_420
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbx]
.label_420:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  ecx
.label_424:
	test	ecx, ecx
	mov	rbp, rbp
	jns	.label_414
	lea	rsi, [rsi]
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax,  dword ptr [dword ptr [rip + label_415]]
	cmp	eax, 0x8000
	lea	rsi, [rsi]
	je	.label_414
.label_417:
	mov	rbx,  qword ptr [word ptr [rip + stdout]]
	jmp	.label_419
.label_416:
	nop	
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
.label_423:
	mov	esi, 2
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	fadvise
.label_419:
	mov	rbp, rbp
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_422:
	mov	edi, OFFSET FLAT:.str.144
	mov	esi, OFFSET FLAT:.str.29
	mov	rbp, rbp
	mov	edx, 0x3d6
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.stream_open
	call	__assert_fail
.label_414:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.143
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	nop	
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebp
	mov	rsp, rsp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408dc0

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
	sub	rsp, 0x58
	mov	rbx, rdi
	mov	rdi,  qword ptr [word ptr [rip + keylist]]
	mov	cl,  byte ptr [byte ptr [rip + eolchar]]
	lea	rsi, [rsi]
	xor	eax, eax
	and	cl, 1
	mov	dword ptr [rsp + 0x40], 0
	jne	.label_443
	mov	cl, 0xa
	mov	dword ptr [rsp + 0x40], ecx
.label_443:
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x30], 0
	jne	.label_425
	nop	
	mov	qword ptr [rsp + 8], rdx
	mov	rbp, qword ptr [rbx + 0x28]
	mov	r14,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	rbp, rbp
	mov	r8, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x20]
	lea	rsi, [rsi]
	cmp	r8, rdx
	nop	
	jne	.label_428
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp], rsi
	nop	
	lea	rax, [rbx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_438
.label_428:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rdi
	nop	
	mov	qword ptr [rsp], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	add	r8, rdi
	sub	r8, rdx
	lea	rsi, [rsi]
	mov	rsi, r8
	call	memmove
	mov	r8, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbx + 8], r8
	lea	rdi, [rdi]
	lea	rax, [rbx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], 0
.label_438:
	add	r14, -0x22
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rbp
	mov	rax, rbp
	neg	rax
	mov	qword ptr [rsp + 0x38], rax
	lea	rdi, [rdi]
	lea	rax, [rbp + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rax
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x40]
	movzx	eax, al
	mov	dword ptr [rsp + 0x44], eax
	mov	rbp, qword ptr [rbx]
	mov	r15, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	jmp	.label_430
	nop	dword ptr [rax]
.label_431:
	shl	r15, 5
	mov	rbp, rbp
	mov	rsi, r15
	mov	rsp, rsp
	call	xrealloc
	mov	rbp, rax
	mov	rbp, rbp
	mov	qword ptr [rbx], rbp
	mov	qword ptr [rbx + 0x18], r15
	nop	
	mov	r8, qword ptr [rbx + 8]
.label_430:
	mov	rsp, rsp
	add	r8, rbp
	add	r15, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	shl	rcx, 5
	nop	
	mov	r13, r15
	mov	rbp, rbp
	sub	r13, rcx
	mov	rbp, rbp
	mov	r12, rax
	lea	rdi, [rdi]
	imul	r12, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	add	r12, r15
	nop	
	sub	r12, r8
	test	rax, rax
	je	.label_427
	neg	rax
	mov	rbp, qword ptr [r13]
	mov	rsp, rsp
	shl	rax, 5
	mov	rbp, rbp
	add	rbp, qword ptr [r15 + rax + 8]
.label_427:
	nop	
	mov	rsi, qword ptr [rsp + 0x48]
	nop	word ptr cs:[rax + rax]
.label_426:
	cmp	rsi, r12
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	nop	
	jae	.label_449
	lea	rsi, [rsi]
	lea	rax, [r12 - 1]
	xor	edx, edx
	div	rsi
	mov	rbx, rax
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdi, r8
	nop	
	mov	rdx, rbx
	mov	rsp, rsp
	mov	r15, r8
	mov	rbp, rbp
	call	fread_unlocked
	lea	rcx, [r15 + rax]
	nop	
	cmp	rax, rbx
	je	.label_436
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	mov	edx, dword ptr [rdx]
	mov	rbp, rbp
	test	dl, 0x20
	jne	.label_440
	mov	rsp, rsp
	test	dl, 0x10
	nop	
	je	.label_436
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	byte ptr [rdx + 0x30], 1
	mov	rsp, rsp
	cmp	qword ptr [rdx], rcx
	je	.label_446
	cmp	rbp, rcx
	mov	rsp, rsp
	mov	rbx, rbp
	je	.label_448
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx - 1]
	cmp	edx, dword ptr [rsp + 0x44]
	lea	rsi, [rsi]
	je	.label_436
	mov	edx, dword ptr [rsp + 0x40]
	mov	byte ptr [rcx], dl
	inc	rcx
	nop	word ptr cs:[rax + rax]
.label_436:
	lea	rsi, [rsi]
	mov	rbx, rcx
.label_448:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rbx
	sub	r12, rax
	mov	rsp, rsp
	mov	rdx, rbx
	sub	rdx, r15
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x44]
	call	memchr
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_445
	cmp	qword ptr [rsp + 0x10], 0
	lea	rdi, [rdi]
	je	.label_447
	nop	word ptr [rax + rax]
.label_433:
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	lea	rsi, [rsi]
	lea	r15, [rax + 1]
	mov	qword ptr [r13 - 0x20], rbp
	lea	rsi, [rsi]
	mov	rbx, r15
	sub	rbx, rbp
	mov	rbp, rbp
	mov	qword ptr [r13 - 0x18], rbx
	cmp	r14, rbx
	mov	rbp, rbp
	cmovbe	r14, rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], r14
	mov	r14, qword ptr [rsp + 0x10]
	cmp	qword ptr [r14 + 0x10], -1
	nop	
	je	.label_435
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r14
	call	limfield
.label_435:
	lea	rsi, [rsi]
	mov	qword ptr [r13 - 8], rax
	cmp	qword ptr [r14], -1
	je	.label_442
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r14
	call	begfield
	mov	qword ptr [r13 - 0x10], rax
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	jmp	.label_444
	nop	word ptr cs:[rax + rax]
.label_442:
	nop	
	cmp	byte ptr [r14 + 0x30], 0
	mov	rbx, qword ptr [rsp + 0x28]
	nop	
	je	.label_429
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r14
	dec	rbp
	mov	r14, qword ptr [rsp + 0x30]
	nop	
.label_437:
	nop	
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	nop	
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_437
	mov	qword ptr [r13 - 0x10], rbp
	mov	rbp, rbp
	jmp	.label_444
.label_429:
	mov	qword ptr [rsp + 0x10], r14
	mov	r14, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [r13 - 0x10], rbp
	nop	dword ptr [rax]
.label_444:
	add	r13, -0x20
	sub	r12, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	mov	rdx, rbx
	sub	rdx, r15
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x44]
	lea	rsi, [rsi]
	call	memchr
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	mov	rbp, r15
	mov	rsp, rsp
	jne	.label_433
	jmp	.label_432
	nop	dword ptr [rax]
.label_447:
	nop	
	mov	byte ptr [rax], 0
	mov	r15, rax
	inc	r15
	mov	qword ptr [r13 - 0x20], rbp
	lea	rdi, [rdi]
	mov	rax, r15
	sub	rax, rbp
	mov	rsp, rsp
	mov	qword ptr [r13 - 0x18], rax
	lea	r13, [r13 - 0x20]
	lea	rdi, [rdi]
	cmp	r14, rax
	cmovbe	r14, rax
	sub	r12, qword ptr [rsp + 0x50]
	mov	rdx, rbx
	mov	rbp, rbp
	sub	rdx, r15
	mov	rdi, r15
	mov	esi, dword ptr [rsp + 0x44]
	mov	rbp, rbp
	call	memchr
	test	rax, rax
	mov	rbp, r15
	jne	.label_447
	jmp	.label_432
	nop	word ptr cs:[rax + rax]
.label_445:
	mov	r15, rbp
.label_432:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x30], 0
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	rbp, r15
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x48]
	je	.label_426
	jmp	.label_450
	nop	dword ptr [rax + rax]
.label_449:
	mov	rbx, r8
	mov	r15, rbp
.label_450:
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	mov	rax, rdx
	mov	rsp, rsp
	sub	rax, rdi
	nop	
	mov	qword ptr [rbx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rdi + rax]
	sub	rcx, r13
	sar	rcx, 5
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], rcx
	jne	.label_439
	mov	r15, rax
	nop	
	shr	r15, 5
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_441
	mov	rbp, rbp
	movabs	rcx, 0x5555555555555540
	cmp	rax, rcx
	jae	.label_434
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rsi
	shr	rax, 6
	lea	r15, [r15 + rax + 1]
	lea	rsi, [rsi]
	jmp	.label_431
	nop	
.label_441:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rsi
	test	r15, r15
	mov	eax, 4
	cmove	r15, rax
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	shr	rax, 0x3a
	mov	rsp, rsp
	je	.label_431
	call	xalloc_die
.label_446:
	xor	eax, eax
	jmp	.label_425
.label_439:
	sub	rdx, r15
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x20], rdx
	lea	rsi, [rsi]
	add	r14, 0x22
	mov	qword ptr [word ptr [rip + merge_buffer_size]],  r14
	lea	rdi, [rdi]
	mov	al, 1
.label_425:
	mov	rbp, rbp
	add	rsp, 0x58
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_440:
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.159
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 8]
	mov	rbp, rbp
	call	sort_die
.label_434:
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409350

	.globl compare
	.type compare, @function
compare:
	nop	
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x2178
	mov	qword ptr [rsp + 0x1028], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1040], rdi
	lea	rdi, [rdi]
	mov	rbp,  qword ptr [word ptr [rip + keylist]]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_553
	nop	
	mov	rax, qword ptr [rsp + 0x1040]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x1028]
	mov	r14, qword ptr [rax + 0x10]
	nop	
	mov	r8, qword ptr [rax + 0x18]
	mov	byte ptr [rsp + 0x16], al
	nop	
	mov	byte ptr [rsp + 0x17], al
	mov	qword ptr [rsp + 0x1068], rax
	jmp	.label_458
	nop	dword ptr [rax]
.label_475:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	r12, r8
	nop	
	call	begfield
	mov	rbx, rax
	mov	rdi, r14
	mov	rsi, r15
	nop	
	mov	rdx, rbp
	call	begfield
	lea	rsi, [rsi]
	mov	r8, r12
	mov	r14, rax
	mov	rdx, r13
.label_458:
	mov	qword ptr [rsp + 0x2160], rbp
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbp + 0x20]
	mov	rbp, qword ptr [rbp + 0x28]
	cmp	rbx, rdx
	cmova	rdx, rbx
	mov	rbp, rbp
	cmp	r14, r8
	mov	rsp, rsp
	cmova	r8, r14
	lea	rdi, [rdi]
	mov	r13, rdx
	mov	rsp, rsp
	sub	r13, rbx
	mov	r10, r8
	sub	r10, r14
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	lea	rsi, [rsi]
	jne	.label_454
	mov	rax, qword ptr [rsp + 0x2160]
	mov	ax, word ptr [rax + 0x32]
	test	al, al
	jne	.label_454
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x2160]
	mov	rsp, rsp
	mov	ecx, dword ptr [rcx + 0x34]
	test	ecx, 0xff00ff
	mov	rsp, rsp
	jne	.label_454
	or	eax, ecx
	lea	rdi, [rdi]
	movzx	eax, ax
	lea	rsi, [rsi]
	cmp	eax, 0xff
	ja	.label_454
	nop	
	mov	rax, qword ptr [rsp + 0x2160]
	cmp	byte ptr [rax + 0x38], 0
	lea	rdi, [rdi]
	je	.label_498
	nop	word ptr cs:[rax + rax]
.label_454:
	mov	rax, rbp
	mov	rsp, rsp
	or	rax, r15
	lea	rsi, [rsi]
	setne	byte ptr [rsp + 0x104f]
	mov	rsp, rsp
	je	.label_550
	lea	rdi, [r10 + r13 + 2]
	cmp	rdi, 0xfa1
	mov	rsp, rsp
	lea	rax, [rsp + 0x70]
	mov	rsi, rax
	mov	eax, 0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x1068], rax
	jb	.label_515
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1030], r10
	mov	r12, rdx
	mov	qword ptr [rsp + 0x60], r8
	call	xmalloc
	nop	
	mov	r8, qword ptr [rsp + 0x60]
	nop	
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x1030]
	mov	rsi, rax
	mov	qword ptr [rsp + 0x1068], rsi
.label_515:
	sub	rdx, rbx
	lea	rsi, [rsi]
	mov	r12d, 0
	je	.label_457
	test	r15, r15
	nop	
	je	.label_567
	test	rbp, rbp
	nop	
	mov	eax, 0
	mov	r12d, 0
	mov	ecx, 0
	je	.label_549
.label_565:
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx + rax]
	nop	
	cmp	byte ptr [r15 + rcx], 0
	jne	.label_555
	mov	cl, byte ptr [rbp + rcx]
	nop	
	mov	byte ptr [rsi + r12], cl
	mov	rsp, rsp
	inc	r12
.label_555:
	mov	rbp, rbp
	inc	rax
	nop	
	cmp	rax, r13
	jb	.label_565
	jmp	.label_457
	nop	
.label_549:
	movzx	eax, byte ptr [rbx + rcx]
	cmp	byte ptr [r15 + rax], 0
	nop	
	jne	.label_556
	mov	byte ptr [rsi + r12], al
	inc	r12
.label_556:
	inc	rcx
	cmp	rcx, r13
	mov	rsp, rsp
	jb	.label_549
	mov	rsp, rsp
	jmp	.label_457
	nop	word ptr cs:[rax + rax]
.label_550:
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	nop	
	mov	byte ptr [rsp + 0x16], al
	mov	byte ptr [rdx], 0
	nop	
	mov	al, byte ptr [r8]
	mov	byte ptr [rsp + 0x17], al
	mov	byte ptr [r8], 0
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbx, r14
	mov	r12, r13
	jmp	.label_494
.label_567:
	test	rbp, rbp
	mov	rbp, rbp
	mov	r12d, 0
	je	.label_459
	nop	dword ptr [rax + rax]
.label_451:
	movzx	eax, byte ptr [rbx + r12]
	mov	al, byte ptr [rbp + rax]
	mov	byte ptr [rsi + r12], al
	inc	r12
	lea	rdi, [rdi]
	cmp	r12, r13
	jb	.label_451
	lea	rdi, [rdi]
	jmp	.label_457
	nop	dword ptr [rax]
.label_459:
	mov	rsp, rsp
	mov	al, byte ptr [rbx + r12]
	nop	
	mov	byte ptr [rsi + r12], al
	mov	rbp, rbp
	inc	r12
	cmp	r12, r13
	mov	rsp, rsp
	jb	.label_459
	nop	word ptr [rax + rax]
.label_457:
	lea	rbx, [rsi + r13 + 1]
	mov	byte ptr [rsi + r12], 0
	nop	
	cmp	r8, r14
	mov	eax, 0
	je	.label_469
	nop	
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_480
	test	rbp, rbp
	mov	ecx, 0
	mov	eax, 0
	mov	edx, 0
	lea	rdi, [rdi]
	je	.label_474
	nop	dword ptr [rax]
.label_576:
	movzx	edx, byte ptr [r14 + rcx]
	cmp	byte ptr [r15 + rdx], 0
	jne	.label_532
	mov	dl, byte ptr [rbp + rdx]
	mov	byte ptr [rbx + rax], dl
	lea	rdi, [rdi]
	inc	rax
.label_532:
	nop	
	inc	rcx
	cmp	rcx, r10
	jb	.label_576
	lea	rsi, [rsi]
	jmp	.label_469
	nop	word ptr [rax + rax]
.label_474:
	movzx	ecx, byte ptr [r14 + rdx]
	cmp	byte ptr [r15 + rcx], 0
	jne	.label_507
	mov	rsp, rsp
	mov	byte ptr [rbx + rax], cl
	lea	rsi, [rsi]
	inc	rax
.label_507:
	mov	rbp, rbp
	inc	rdx
	cmp	rdx, r10
	lea	rdi, [rdi]
	jb	.label_474
	lea	rsi, [rsi]
	jmp	.label_469
.label_480:
	lea	rcx, [rsi + rdx + 1]
	xor	eax, eax
	test	rbp, rbp
	je	.label_524
	nop	word ptr [rax + rax]
.label_525:
	movzx	edx, byte ptr [r14 + rax]
	nop	
	mov	dl, byte ptr [rbp + rdx]
	mov	byte ptr [rcx + rax], dl
	inc	rax
	cmp	rax, r10
	jb	.label_525
	jmp	.label_469
	nop	word ptr [rax + rax]
.label_524:
	mov	rbp, rbp
	mov	dl, byte ptr [r14 + rax]
	mov	byte ptr [rcx + rax], dl
	inc	rax
	cmp	rax, r10
	lea	rdi, [rdi]
	jb	.label_524
	nop	word ptr cs:[rax + rax]
.label_469:
	mov	byte ptr [rbx + rax], 0
	mov	r10, rax
.label_494:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x2160]
	mov	ax, word ptr [r13 + 0x32]
	mov	rbp, rbp
	test	al, al
	je	.label_544
	nop	
	lea	rdi, [rsi - 1]
	mov	qword ptr [rsp + 0x1018], rsi
	nop	
.label_470:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	mov	rbp, rbp
	jne	.label_470
	nop	
	mov	rbp, r10
	lea	rsi, [rbx - 1]
	mov	qword ptr [rsp + 0x60], rbx
	nop	dword ptr [rax]
.label_573:
	movzx	eax, byte ptr [rsi + 1]
	lea	rdi, [rdi]
	inc	rsi
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	lea	rdi, [rdi]
	jne	.label_573
	mov	edx,  dword ptr [dword ptr [rip + decimal_point]]
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + thousands_sep]]
	lea	rsi, [rsi]
	call	strnumcmp
	mov	r15d, eax
	lea	rsi, [rsi]
	mov	r10, rbp
	mov	rsp, rsp
	jmp	.label_508
	nop	word ptr cs:[rax + rax]
.label_544:
	mov	qword ptr [rsp + 0x60], rbx
	mov	ecx, dword ptr [r13 + 0x34]
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_589
	mov	r14, r10
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rbp, rsi
	mov	rsp, rsp
	lea	rsi, [rsp + 0x30]
	call	strtold
	fstp	xword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x60]
	mov	rdi, rbx
	lea	rsi, [rsp + 0x2158]
	mov	rbp, rbp
	call	strtold
	nop	
	mov	rcx, rbp
	mov	rax, qword ptr [rsp + 0x2158]
	cmp	qword ptr [rsp + 0x30], rcx
	lea	rsi, [rsi]
	je	.label_462
	mov	r15d, 1
	lea	rdi, [rdi]
	cmp	rax, rbx
	je	.label_471
	fld	xword ptr [rsp + 0x18]
	nop	
	fxch	st(1)
	fucomi	st(1)
	mov	r10, r14
	mov	rbp, rbp
	jbe	.label_478
	mov	rsp, rsp
	fstp	st(0)
	fstp	st(0)
	mov	qword ptr [rsp + 0x1018], rcx
	mov	r15d, 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_485
.label_589:
	lea	rsi, [rsi]
	test	ch, 0xff
	mov	rsp, rsp
	je	.label_496
	lea	rdi, [rsi - 1]
	mov	qword ptr [rsp + 0x1018], rsi
	nop	word ptr cs:[rax + rax]
.label_460:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	lea	rsi, [rsi]
	jne	.label_460
	mov	rcx, qword ptr [rsp + 0x60]
	lea	rsi, [rcx - 1]
	nop	
.label_518:
	movzx	r11d, byte ptr [rsi + 1]
	inc	rsi
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [r11 + blanks]],  0
	jne	.label_518
	nop	
	mov	qword ptr [rsp + 0x1030], r10
	movzx	r8d, al
	nop	
	cmp	r8d, 0x2d
	lea	rdi, [rdi]
	sete	al
	lea	rdi, [rdi]
	movzx	ebp, al
	lea	rsi, [rsi]
	lea	r14, [rdi + rbp + 1]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rdi + rbp]
	nop	
	movzx	r15d, dl
	mov	rbp, rbp
	lea	eax, [r15 - 0x30]
	cmp	eax, 9
	mov	rbp, rbp
	ja	.label_528
	add	rbp, rdi
	mov	r9d,  dword ptr [dword ptr [rip + thousands_sep]]
	mov	rsp, rsp
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_591:
	movzx	eax, dl
	movzx	ebx, cl
	cmp	ebx, eax
	mov	rsp, rsp
	mov	r10b, dl
	jb	.label_477
	mov	r10b, cl
.label_477:
	movsx	eax, byte ptr [r14]
	mov	rbx, rbp
	lea	rdi, [rdi]
	add	rbx, 2
	nop	
	cmp	eax, r9d
	mov	rbp, r14
	cmove	rbp, rbx
	lea	rsi, [rsi]
	lea	r14, [rbp + 1]
	mov	dl, byte ptr [rbp]
	lea	rsi, [rsi]
	movzx	r15d, dl
	mov	rbp, rbp
	lea	ecx, [r15 - 0x30]
	cmp	ecx, 0xa
	lea	rsi, [rsi]
	mov	cl, r10b
	jb	.label_591
	cmp	eax, r9d
	lea	rsi, [rsi]
	je	.label_500
	lea	rdi, [rdi]
	jmp	.label_559
.label_462:
	fstp	st(0)
	mov	qword ptr [rsp + 0x1018], rcx
	mov	rsp, rsp
	cmp	rax, rbx
	mov	r15d, 0
	mov	rsp, rsp
	mov	eax, 0xffffffff
	cmovne	r15d, eax
	mov	r10, r14
	lea	rsi, [rsi]
	jmp	.label_485
.label_471:
	nop	
	fstp	st(0)
	nop	
	mov	qword ptr [rsp + 0x1018], rcx
	lea	rsi, [rsi]
	mov	r10, r14
	mov	rbp, rbp
	jmp	.label_485
.label_496:
	test	ecx, 0xff0000
	mov	rsp, rsp
	je	.label_590
	lea	rbx, [rsi - 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1018], rsi
	nop	dword ptr [rax + rax]
.label_455:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	lea	rdi, [rdi]
	jne	.label_455
	xor	r8d, r8d
	nop	
	mov	r9d, 0xc
.label_510:
	lea	rsi, [r9 + r8]
	shr	rsi, 1
	lea	rsi, [rsi]
	mov	rdi, rsi
	shl	rdi, 4
	mov	rbp,  qword ptr [word ptr [rdi + monthtab]]
	mov	cl, byte ptr [rbp]
	nop	
	test	cl, cl
	nop	
	je	.label_463
	inc	rbp
	mov	rsp, rsp
	mov	rax, rbx
	nop	dword ptr [rax + rax]
.label_492:
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax]
	movzx	edx,  byte ptr [byte ptr [rdx + fold_toupper]]
	movzx	ecx, cl
	cmp	edx, ecx
	jb	.label_481
	movzx	edx, dl
	nop	
	cmp	edx, ecx
	mov	rsp, rsp
	ja	.label_488
	mov	rbp, rbp
	inc	rax
	mov	cl, byte ptr [rbp]
	nop	
	inc	rbp
	lea	rdi, [rdi]
	test	cl, cl
	jne	.label_492
	lea	rdi, [rdi]
	jmp	.label_463
	nop	dword ptr [rax + rax]
.label_481:
	mov	r9, rsi
	jmp	.label_464
	nop	word ptr cs:[rax + rax]
.label_488:
	nop	
	inc	rsi
	mov	rbp, rbp
	mov	r8, rsi
.label_464:
	nop	
	xor	r15d, r15d
	cmp	r8, r9
	jb	.label_510
	lea	rdi, [rdi]
	jmp	.label_513
.label_478:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x1018], rcx
	fxch	st(1)
	mov	rbp, rbp
	fucomi	st(1)
	mov	rbp, rbp
	jbe	.label_517
	fstp	st(1)
	mov	rbp, rbp
	fstp	st(0)
	nop	word ptr cs:[rax + rax]
.label_485:
	mov	rbp, rbp
	fldz	
	mov	rbp, rbp
	fldz	
.label_584:
	fstp	st(1)
	fstp	st(0)
.label_508:
	mov	qword ptr [rsp + 0x2160], r13
	cmp	byte ptr [rsp + 0x104f], 0
	lea	rdi, [rdi]
	je	.label_495
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x1068]
	nop	
	call	free
	mov	rsp, rsp
	jmp	.label_536
	nop	dword ptr [rax]
.label_495:
	mov	al, byte ptr [rsp + 0x16]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x1018]
	mov	byte ptr [rcx + r12], al
	mov	al, byte ptr [rsp + 0x17]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r10], al
.label_536:
	test	r15d, r15d
	jne	.label_522
	mov	rbp, qword ptr [rsp + 0x2160]
	mov	rbp, qword ptr [rbp + 0x40]
	test	rbp, rbp
	je	.label_503
	mov	rsp, rsp
	cmp	qword ptr [rbp + 0x10], -1
	mov	rax, qword ptr [rsp + 0x1040]
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [rax + 8]
	lea	rdi, [rdi]
	je	.label_568
	mov	rdi, rbx
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	limfield
	mov	rsp, rsp
	mov	r13, rax
	mov	rax, qword ptr [rsp + 0x1028]
	mov	rbp, rbp
	mov	r14, qword ptr [rax]
	nop	
	mov	r15, qword ptr [rax + 8]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, rbp
	call	limfield
	mov	r8, rax
	lea	rsi, [rsi]
	jmp	.label_587
	nop	word ptr cs:[rax + rax]
.label_568:
	mov	rbp, rbp
	lea	r13, [rbx + r12 - 1]
	mov	rax, qword ptr [rsp + 0x1028]
	mov	r14, qword ptr [rax]
	mov	r15, qword ptr [rax + 8]
	lea	r8, [r14 + r15 - 1]
.label_587:
	cmp	qword ptr [rbp], -1
	mov	rbp, rbp
	jne	.label_475
	cmp	byte ptr [rbp + 0x30], 0
	mov	rdx, r13
	je	.label_458
	jmp	.label_461
	nop	dword ptr [rax]
.label_468:
	lea	rsi, [rsi]
	inc	rbx
.label_461:
	lea	rsi, [rsi]
	cmp	rbx, rdx
	nop	
	jae	.label_467
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_468
	mov	rsp, rsp
	jmp	.label_467
	nop	word ptr cs:[rax + rax]
.label_486:
	inc	r14
.label_467:
	cmp	r14, r8
	lea	rdi, [rdi]
	jae	.label_458
	mov	rbp, rbp
	movzx	eax, byte ptr [r14]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	mov	rsp, rsp
	jne	.label_486
	nop	
	jmp	.label_458
.label_528:
	xor	r10d, r10d
.label_559:
	cmp	r15d,  dword ptr [dword ptr [rip + decimal_point]]
	lea	rdi, [rdi]
	jne	.label_497
	movzx	edx, byte ptr [r14]
	nop	
	inc	r14
	nop	
	mov	eax, edx
	add	eax, -0x30
	mov	rbp, rbp
	cmp	eax, 9
	nop	
	mov	rbx, r14
	ja	.label_500
	nop	word ptr cs:[rax + rax]
.label_511:
	movzx	eax, dl
	mov	rbp, rbp
	movzx	ecx, r10b
	lea	rdi, [rdi]
	cmp	ecx, eax
	mov	rsp, rsp
	jb	.label_560
	mov	dl, r10b
.label_560:
	mov	r10b, dl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	mov	eax, edx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_511
	lea	rsi, [rsi]
	jmp	.label_500
.label_497:
	mov	rbx, r14
.label_500:
	xor	r15d, r15d
	movzx	eax, r10b
	mov	rbp, rbp
	cmp	eax, 0x31
	mov	rsp, rsp
	jb	.label_530
	movzx	eax, byte ptr [rbx - 1]
	movsx	eax,  byte ptr [byte ptr [rax + unit_order]]
	mov	r15d, eax
	lea	rdi, [rdi]
	neg	r15d
	cmp	r8d, 0x2d
	cmovne	r15d, eax
.label_530:
	mov	rsp, rsp
	movzx	r8d, r11b
	cmp	r8d, 0x2d
	sete	al
	lea	rdi, [rdi]
	movzx	edx, al
	lea	r11, [rsi + rdx + 1]
	mov	al, byte ptr [rsi + rdx]
	nop	
	movzx	r14d, al
	lea	rsi, [rsi]
	lea	ecx, [r14 - 0x30]
	lea	rdi, [rdi]
	cmp	ecx, 9
	ja	.label_529
	mov	rbp, rbp
	add	rdx, rsi
	nop	
	mov	r9d,  dword ptr [dword ptr [rip + thousands_sep]]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_534:
	movzx	ecx, al
	movzx	ebp, bl
	cmp	ebp, ecx
	mov	r10b, al
	nop	
	jb	.label_562
	mov	r10b, bl
.label_562:
	movsx	ecx, byte ptr [r11]
	nop	
	mov	rbp, rdx
	mov	rbp, rbp
	add	rbp, 2
	cmp	ecx, r9d
	mov	rdx, r11
	cmove	rdx, rbp
	lea	r11, [rdx + 1]
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	movzx	r14d, al
	lea	rdi, [rdi]
	lea	ebx, [r14 - 0x30]
	nop	
	cmp	ebx, 0xa
	mov	bl, r10b
	jb	.label_534
	cmp	ecx, r9d
	mov	rsp, rsp
	je	.label_473
	nop	
	jmp	.label_490
.label_529:
	lea	rdi, [rdi]
	xor	r10d, r10d
.label_490:
	lea	rsi, [rsi]
	cmp	r14d,  dword ptr [dword ptr [rip + decimal_point]]
	jne	.label_483
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r11]
	inc	r11
	mov	ecx, eax
	add	ecx, -0x30
	mov	rbp, rbp
	cmp	ecx, 9
	lea	rdi, [rdi]
	mov	rbp, r11
	ja	.label_473
	nop	word ptr cs:[rax + rax]
.label_514:
	movzx	ecx, al
	nop	
	movzx	edx, r10b
	cmp	edx, ecx
	nop	
	jb	.label_526
	mov	al, r10b
.label_526:
	mov	r10b, al
	movzx	eax, byte ptr [rbp]
	mov	rbp, rbp
	inc	rbp
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -0x30
	lea	rsi, [rsi]
	cmp	ecx, 0xa
	jb	.label_514
	jmp	.label_473
.label_483:
	mov	rbp, r11
.label_473:
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	ecx, r10b
	mov	rbp, rbp
	cmp	ecx, 0x31
	jb	.label_543
	movzx	eax, byte ptr [rbp - 1]
	mov	rbp, rbp
	movsx	ecx,  byte ptr [byte ptr [rax + unit_order]]
	mov	rbp, rbp
	mov	eax, ecx
	neg	eax
	mov	rsp, rsp
	cmp	r8d, 0x2d
	lea	rsi, [rsi]
	cmovne	eax, ecx
.label_543:
	nop	
	sub	r15d, eax
	nop	
	jne	.label_484
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [rip + decimal_point]]
	mov	ecx,  dword ptr [dword ptr [rip + thousands_sep]]
	call	strnumcmp
	mov	r15d, eax
	mov	r10, qword ptr [rsp + 0x1030]
	jmp	.label_508
.label_484:
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x1030]
	lea	rsi, [rsi]
	jmp	.label_508
.label_463:
	mov	r15d,  dword ptr [dword ptr [rdi + label_119]]
.label_513:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x60]
	lea	rbx, [rax - 1]
	nop	word ptr [rax + rax]
.label_574:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	nop	
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_574
	xor	r8d, r8d
	mov	rsp, rsp
	mov	r9d, 0xc
.label_551:
	lea	rsi, [r9 + r8]
	mov	rsp, rsp
	shr	rsi, 1
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rsp, rsp
	shl	rdi, 4
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rdi + monthtab]]
	mov	cl, byte ptr [rbp]
	lea	rsi, [rsi]
	test	cl, cl
	lea	rdi, [rdi]
	je	.label_541
	lea	rdi, [rdi]
	inc	rbp
	mov	rbp, rbp
	mov	rax, rbx
	nop	dword ptr [rax + rax]
.label_570:
	movzx	edx, byte ptr [rax]
	movzx	edx,  byte ptr [byte ptr [rdx + fold_toupper]]
	lea	rdi, [rdi]
	movzx	ecx, cl
	lea	rdi, [rdi]
	cmp	edx, ecx
	jb	.label_539
	movzx	edx, dl
	lea	rdi, [rdi]
	cmp	edx, ecx
	ja	.label_563
	inc	rax
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp]
	inc	rbp
	test	cl, cl
	lea	rsi, [rsi]
	jne	.label_570
	lea	rsi, [rsi]
	jmp	.label_541
	nop	dword ptr [rax]
.label_539:
	mov	rbp, rbp
	mov	r9, rsi
	nop	
	jmp	.label_561
	nop	dword ptr [rax]
.label_563:
	mov	rsp, rsp
	inc	rsi
	nop	
	mov	r8, rsi
.label_561:
	mov	rbp, rbp
	xor	eax, eax
	cmp	r8, r9
	lea	rdi, [rdi]
	jb	.label_551
	jmp	.label_572
.label_541:
	mov	eax,  dword ptr [dword ptr [rdi + label_119]]
.label_572:
	sub	r15d, eax
	jmp	.label_508
.label_498:
	test	r15, r15
	je	.label_577
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_579
	jmp	.label_581
.label_517:
	mov	rsp, rsp
	xor	r15d, r15d
	fucomi	st(1)
	jne	.label_582
	lea	rdi, [rdi]
	jnp	.label_584
.label_582:
	fxch	st(1)
	fucomip	st(0)
	mov	r15d, 0xffffffff
	fldz	
	nop	
	fxch	st(1)
	jnp	.label_584
	lea	rsi, [rsi]
	fstp	st(1)
	mov	rsp, rsp
	fucomip	st(0)
	lea	rsi, [rsi]
	mov	r15d, 1
	mov	rsp, rsp
	fldz	
	fldz	
	lea	rsi, [rsi]
	jnp	.label_584
	fstp	st(1)
	fstp	st(0)
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x1070], xmm0
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	mov	rdi, qword ptr [rsp + 0x1018]
	mov	rbx, r10
	nop	
	call	strtold
	fstp	xword ptr [rsp + 0x1070]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x2020], xmm0
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	call	strtold
	fstp	xword ptr [rsp + 0x2020]
	mov	edx, 0x10
	lea	rdi, [rsp + 0x1070]
	lea	rsi, [rsp + 0x2020]
	call	memcmp
	mov	r10, rbx
	mov	r15d, eax
	mov	rsp, rsp
	jmp	.label_485
.label_590:
	mov	qword ptr [rsp + 0x1018], rsi
	mov	rbx, r10
	movzx	eax, ax
	cmp	eax, 0x100
	jae	.label_491
	cmp	byte ptr [r13 + 0x38], 0
	je	.label_499
	mov	rdi, qword ptr [rsp + 0x1018]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x60]
	call	filevercmp
	mov	rsp, rsp
	mov	r15d, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	jmp	.label_508
.label_577:
	lea	rdi, [rdi]
	cmp	rdx, rbx
	mov	rbp, rbp
	je	.label_558
	mov	r15d, 1
	cmp	r8, r14
	je	.label_522
	test	rbp, rbp
	je	.label_527
	nop	dword ptr [rax]
.label_535:
	lea	rdi, [rdi]
	cmp	r14, r8
	jae	.label_531
	lea	rdi, [rdi]
	cmp	rbx, rdx
	lea	rdi, [rdi]
	jae	.label_531
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx]
	inc	rbx
	mov	rsp, rsp
	movzx	r15d, byte ptr [rbp + rax]
	movzx	eax, byte ptr [r14]
	mov	rsp, rsp
	inc	r14
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp + rax]
	nop	
	sub	r15d, eax
	lea	rdi, [rdi]
	je	.label_535
	mov	rsp, rsp
	jmp	.label_545
.label_491:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x2160], r13
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:random_md5_state
	mov	rsp, rsp
	mov	edx, 0x9c
	lea	rdi, [rsp + 0x20bc]
	call	memcpy
	mov	esi, OFFSET FLAT:random_md5_state
	mov	edx, 0x9c
	lea	rdi, [rsp + 0x2020]
	call	memcpy
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1038], rax
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	mov	r13d, 0
	mov	rcx, rbx
	mov	rbp, rcx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r15, r12
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x1018]
	lea	rsi, [rsi]
	mov	rdi, rdx
	lea	rdi, [rdi]
	je	.label_566
	mov	rbp, rbp
	lea	rax, [rdx + r12]
	mov	qword ptr [rsp + 0x28], rax
	lea	rax, [rsi + rcx]
	mov	qword ptr [rsp + 0x1060], rax
	mov	rsp, rsp
	lea	rax, [rcx + r12]
	nop	
	mov	qword ptr [rsp + 0x1030], rcx
	mov	rsp, rsp
	lea	rcx, [rax + rax*2 + 2]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2170], rdx
	mov	qword ptr [rsp + 0x18], rsi
	lea	rdi, [rdi]
	lea	r14, [rsp + 0x1070]
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x1038], rax
	mov	ebp, 0xfa0
	nop	word ptr cs:[rax + rax]
.label_520:
	nop	
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jae	.label_501
	nop	
	lea	rbx, [rbp + rbp*2]
	mov	rbp, rbp
	shr	rbx, 1
	nop	
	cmp	rcx, rbx
	cmova	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x1038]
	call	free
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	call	malloc
	nop	
	mov	r14, rax
	mov	qword ptr [rsp + 0x1038], r14
	test	r14, r14
	mov	ebp, 0xfa0
	cmovne	rbp, rbx
	lea	rsi, [rsi]
	lea	rax, [rsp + 0x1070]
	lea	rdi, [rdi]
	cmove	r14, rax
.label_501:
	mov	r15, qword ptr [rsp + 0x2170]
	cmp	r15, qword ptr [rsp + 0x28]
	mov	ebx, 0
	lea	rsi, [rsi]
	jae	.label_585
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	xstrxfrm
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	mov	rbx, rax
.label_585:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0x1060]
	mov	r13d, 0
	jae	.label_523
	lea	rdi, [r14 + rbx]
	mov	rdx, rbp
	lea	rsi, [rsi]
	sub	rdx, rbx
	mov	eax, 0
	cmovb	rdi, rax
	lea	rsi, [rsi]
	cmovb	rdx, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	call	xstrxfrm
	mov	rsp, rsp
	mov	r13, rax
	nop	
	inc	r13
.label_523:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2168], rbx
	lea	rsi, [rsi]
	cmp	rbp, rbx
	setb	cl
	lea	rdi, [rdi]
	lea	rax, [r13 + rbx]
	cmp	rax, rbp
	lea	rsi, [rsi]
	ja	.label_521
	test	cl, cl
	mov	rsp, rsp
	jne	.label_521
	mov	qword ptr [rsp + 0x68], rbp
	nop	
	jmp	.label_552
	nop	dword ptr [rax]
.label_521:
	mov	rsp, rsp
	lea	rbp, [rax + rax*2]
	nop	
	shr	rbp, 1
	lea	rdi, [rdi]
	movabs	rcx, 0x5555555555555555
	cmp	rax, rcx
	lea	rdi, [rdi]
	cmovae	rbp, rax
	mov	rdi, qword ptr [rsp + 0x1038]
	call	free
	mov	rsp, rsp
	mov	rdi, rbp
	call	xmalloc
	mov	rbp, rbp
	mov	r14, rax
	lea	rsi, [rsi]
	cmp	r15, qword ptr [rsp + 0x28]
	jae	.label_578
	nop	
	mov	rdi, r14
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x2168]
	call	strxfrm
.label_578:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	rsi, qword ptr [rsp + 0x1060]
	jae	.label_546
	mov	qword ptr [rsp + 0x68], rbp
	mov	rsp, rsp
	mov	rdi, r14
	add	rdi, qword ptr [rsp + 0x2168]
	mov	rsp, rsp
	mov	rdx, r13
	mov	rbp, rbp
	call	strxfrm
	jmp	.label_583
	nop	word ptr cs:[rax + rax]
.label_546:
	mov	qword ptr [rsp + 0x68], rbp
.label_583:
	mov	qword ptr [rsp + 0x1038], r14
.label_552:
	mov	qword ptr [rsp + 0x1050], r13
	lea	rsi, [rsi]
	cmp	r15, qword ptr [rsp + 0x28]
	jae	.label_476
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	lea	r15, [rax + r15 + 1]
.label_476:
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	rbx, qword ptr [rsp + 0x1060]
	lea	rsi, [rsi]
	jae	.label_466
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	strlen
	lea	rsi, [rsi]
	lea	rbx, [rax + rbx + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rbx
.label_466:
	mov	rsp, rsp
	cmp	r15, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x2170], r15
	jb	.label_557
	mov	rbp, rbp
	xor	r13d, r13d
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0x1060]
	jae	.label_509
.label_557:
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x2168]
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rdx, [rsp + 0x2020]
	call	md5_process_bytes
	lea	rbx, [r14 + rbp]
	mov	rdi, rbx
	mov	r15, qword ptr [rsp + 0x1050]
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdx, [rsp + 0x20bc]
	lea	rdi, [rdi]
	call	md5_process_bytes
	nop	
	cmp	rbp, r15
	cmovb	r15, rbp
	mov	rsp, rsp
	seta	al
	lea	rdi, [rdi]
	movzx	r13d, al
	mov	rbp, rbp
	sbb	r13d, 0
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, r15
	mov	rsp, rsp
	call	memcmp
	test	eax, eax
	cmovne	r13d, eax
	test	r13d, r13d
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	je	.label_520
	lea	rdi, [rdi]
	jmp	.label_538
	nop	word ptr cs:[rax + rax]
.label_580:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x1038], r14
	mov	r14, qword ptr [rsp + 0x68]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rdx, [rsp + 0x2020]
	mov	rbp, rbp
	call	md5_process_bytes
	add	r15, r14
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x1050]
	lea	rdx, [rsp + 0x20bc]
	nop	
	call	md5_process_bytes
	nop	
	mov	rcx, qword ptr [rsp + 8]
.label_538:
	mov	rsp, rsp
	cmp	rbp, rcx
	jae	.label_569
	mov	rbp, rbp
	lea	rbx, [rbp + rbp*2]
	mov	rbp, rbp
	shr	rbx, 1
	cmp	rcx, rbx
	nop	
	cmova	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x1038]
	mov	rsp, rsp
	call	free
	mov	rdi, rbx
	mov	rsp, rsp
	call	malloc
	mov	r14, rax
	mov	rsp, rsp
	test	r14, r14
	mov	ebp, 0xfa0
	cmovne	rbp, rbx
	nop	
	mov	rcx, r14
	lea	rax, [rsp + 0x1070]
	lea	rsi, [rsi]
	cmove	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rcx
	nop	
	jmp	.label_575
	nop	
.label_569:
	nop	
	mov	qword ptr [rsp + 0x68], r14
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x1038]
.label_575:
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x2170]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r15d, 0
	nop	
	jae	.label_516
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x2170]
	nop	
	mov	rdx, rbp
	call	xstrxfrm
	mov	r15, rax
	lea	rsi, [rsi]
	inc	r15
.label_516:
	cmp	rbx, qword ptr [rsp + 0x1060]
	lea	rsi, [rsi]
	mov	eax, 0
	jae	.label_564
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rax + r15]
	mov	rdx, rbp
	mov	rsp, rsp
	sub	rdx, r15
	mov	eax, 0
	cmovb	rdi, rax
	nop	
	cmovb	rdx, rax
	mov	rbp, rbp
	mov	rsi, rbx
	call	xstrxfrm
	inc	rax
.label_564:
	cmp	rbp, r15
	mov	rbp, rbp
	setb	cl
	nop	
	lea	rdx, [rax + r15]
	nop	
	cmp	rdx, rbp
	nop	
	ja	.label_504
	test	cl, cl
	mov	rbp, rbp
	jne	.label_504
	mov	qword ptr [rsp + 0x1050], rax
	mov	rsp, rsp
	jmp	.label_505
	nop	word ptr cs:[rax + rax]
.label_504:
	mov	qword ptr [rsp + 0x1050], rax
	mov	rsp, rsp
	lea	rbp, [rdx + rdx*2]
	lea	rdi, [rdi]
	shr	rbp, 1
	mov	rbp, rbp
	movabs	rcx, 0x5555555555555555
	lea	rdi, [rdi]
	cmp	rdx, rcx
	lea	rdi, [rdi]
	cmovae	rbp, rdx
	mov	rdi, r14
	mov	rbp, rbp
	call	free
	mov	rdi, rbp
	call	xmalloc
	mov	rsp, rsp
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x2170]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsp + 0x28]
	jae	.label_533
	mov	rdi, r14
	nop	
	mov	rsi, qword ptr [rsp + 0x2170]
	mov	rdx, r15
	lea	rsi, [rsi]
	call	strxfrm
.label_533:
	cmp	rbx, qword ptr [rsp + 0x1060]
	jae	.label_542
	mov	rdi, r14
	mov	rsp, rsp
	add	rdi, r15
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x1050]
	lea	rsi, [rsi]
	call	strxfrm
.label_542:
	mov	qword ptr [rsp + 0x68], r14
.label_505:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x2170]
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [rsp + 0x28]
	jae	.label_554
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strlen
	lea	rbx, [rax + rbx + 1]
	mov	qword ptr [rsp + 0x2170], rbx
.label_554:
	mov	rbx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [rsp + 0x1060]
	jae	.label_571
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	strlen
	nop	
	lea	rbx, [rax + rbx + 1]
.label_571:
	mov	rax, qword ptr [rsp + 0x2170]
	cmp	rax, qword ptr [rsp + 0x28]
	jb	.label_580
	cmp	rbx, qword ptr [rsp + 0x1060]
	jb	.label_580
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1038], r14
	mov	rcx, qword ptr [rsp + 0x1030]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x1018]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rbp, qword ptr [rsp + 0x1050]
	jmp	.label_586
.label_493:
	inc	rbx
	inc	r14
.label_579:
	xor	eax, eax
	cmp	rbx, rdx
	mov	rsp, rsp
	mov	edi, 0
	mov	rsp, rsp
	jae	.label_472
	nop	
.label_465:
	mov	rbp, rbp
	movzx	esi, byte ptr [rbx]
	mov	dil, 1
	cmp	byte ptr [r15 + rsi], 0
	lea	rsi, [rsi]
	je	.label_472
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, rdx
	lea	rdi, [rdi]
	jb	.label_465
	xor	edi, edi
	mov	rsp, rsp
	jmp	.label_472
	nop	dword ptr [rax + rax]
.label_482:
	mov	rbp, rbp
	inc	r14
.label_472:
	lea	rsi, [rsi]
	cmp	r14, r8
	jae	.label_479
	mov	rsp, rsp
	movzx	esi, byte ptr [r14]
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + rsi], 0
	jne	.label_482
	mov	rsp, rsp
	test	dil, dil
	nop	
	je	.label_487
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx]
	movzx	edi, byte ptr [rbp + rax]
	nop	
	movzx	eax, byte ptr [rbp + rsi]
	sub	edi, eax
	je	.label_493
	jmp	.label_502
.label_537:
	nop	
	inc	rbx
	lea	rsi, [rsi]
	inc	r14
.label_581:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbx, rdx
	mov	edi, 0
	nop	
	jae	.label_506
	nop	dword ptr [rax + rax]
.label_519:
	mov	rbp, rbp
	movzx	esi, byte ptr [rbx]
	mov	dil, 1
	nop	
	cmp	byte ptr [r15 + rsi], 0
	je	.label_506
	inc	rbx
	cmp	rbx, rdx
	mov	rsp, rsp
	jb	.label_519
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	jmp	.label_506
	nop	word ptr cs:[rax + rax]
.label_452:
	inc	r14
.label_506:
	mov	rsp, rsp
	cmp	r14, r8
	nop	
	jae	.label_479
	lea	rdi, [rdi]
	movzx	esi, byte ptr [r14]
	cmp	byte ptr [r15 + rsi], 0
	lea	rdi, [rdi]
	jne	.label_452
	test	dil, dil
	je	.label_487
	movzx	eax, byte ptr [rbx]
	nop	
	sub	eax, esi
	je	.label_537
	mov	rsp, rsp
	jmp	.label_540
.label_558:
	nop	
	cmp	r8, r14
	mov	r15d, 0
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmovne	r15d, eax
	jmp	.label_536
.label_499:
	test	r12, r12
	mov	rsp, rsp
	je	.label_548
	mov	r15d, 1
	mov	r10, rbx
	nop	
	test	r10, r10
	lea	rsi, [rsi]
	je	.label_508
	lea	rsi, [rsi]
	lea	rsi, [r12 + 1]
	mov	rsp, rsp
	lea	rcx, [r10 + 1]
	nop	
	mov	rdi, qword ptr [rsp + 0x1018]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rbx, r10
	lea	rdi, [rdi]
	call	xmemcoll0
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r15d, eax
	mov	rbp, rbp
	jmp	.label_508
.label_509:
	nop	
	mov	rcx, qword ptr [rsp + 0x1030]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x1018]
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x1050]
	mov	r15, qword ptr [rsp + 0x2168]
.label_586:
	lea	r14, [rdi + r15]
.label_566:
	mov	qword ptr [rsp + 0x2168], r15
	mov	qword ptr [rsp + 0x18], r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rdi
	mov	qword ptr [rsp + 0x60], rsi
	mov	qword ptr [rsp + 0x1018], rdx
	mov	qword ptr [rsp + 0x1030], rcx
	mov	rbp, rbp
	mov	rsi, r15
	lea	rbx, [rsp + 0x2020]
	mov	rdx, rbx
	call	md5_process_bytes
	nop	
	mov	rdi, rbx
	lea	r15, [rsp + 0x30]
	mov	rbp, rbp
	mov	rsi, r15
	call	md5_finish_ctx
	mov	rdi, r14
	mov	rsi, rbp
	mov	rsp, rsp
	lea	rbx, [rsp + 0x20bc]
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	md5_process_bytes
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rbx, [rsp + 0x40]
	mov	rsi, rbx
	call	md5_finish_ctx
	lea	rdi, [rdi]
	mov	edx, 0x10
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	memcmp
	mov	r15d, eax
	lea	rdi, [rdi]
	test	r15d, r15d
	nop	
	jne	.label_489
	mov	rsp, rsp
	test	r13d, r13d
	mov	r15d, r13d
	jne	.label_489
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x2168]
	mov	rsp, rsp
	cmp	r14, rbp
	nop	
	mov	rdx, rbp
	mov	rbp, rbp
	cmovb	rdx, r14
	mov	rbx, r14
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	call	memcmp
	mov	r15d, eax
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_489
	lea	rsi, [rsi]
	cmp	rbx, rbp
	mov	rbp, rbp
	seta	al
	movzx	r15d, al
	lea	rdi, [rdi]
	sbb	r15d, 0
.label_489:
	nop	
	mov	rdi, qword ptr [rsp + 0x1038]
	call	free
	mov	r13, qword ptr [rsp + 0x2160]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x1030]
	jmp	.label_508
.label_527:
	cmp	r13, r10
	mov	rdx, r10
	mov	rbp, rbp
	cmovb	rdx, r13
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r14
	mov	rbx, r10
	call	memcmp
	mov	r10, rbx
	mov	r15d, eax
	lea	rdi, [rdi]
	test	r15d, r15d
	mov	rbp, rbp
	jne	.label_522
.label_531:
	mov	rbp, rbp
	cmp	r13, r10
	setne	al
	mov	rsp, rsp
	mov	r15d, 0xffffffff
	mov	rbp, rbp
	jb	.label_522
	movzx	r15d, al
	lea	rsi, [rsi]
	jmp	.label_536
.label_548:
	mov	r10, rbx
	lea	rsi, [rsi]
	mov	rax, r10
	neg	rax
	mov	rbp, rbp
	sbb	r15d, r15d
	jmp	.label_508
.label_487:
	mov	eax, 1
	xor	edi, edi
.label_479:
	movzx	r15d, dil
	lea	rdi, [rdi]
	sub	r15d, eax
	jmp	.label_536
.label_522:
	mov	rax, qword ptr [rsp + 0x2160]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x37]
.label_512:
	mov	rbp, rbp
	mov	eax, r15d
	neg	eax
	test	cl, cl
	lea	rsi, [rsi]
	cmove	eax, r15d
	test	eax, eax
	jne	.label_547
.label_503:
	mov	rbp, rbp
	mov	cl,  byte ptr [byte ptr [rip + unique]]
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	and	cl, 1
	jne	.label_547
	mov	cl,  byte ptr [byte ptr [rip + stable]]
	and	cl, 1
	jne	.label_547
.label_553:
	mov	rax, qword ptr [rsp + 0x1040]
	mov	rsi, qword ptr [rax + 8]
	mov	rax, qword ptr [rsp + 0x1028]
	mov	rcx, qword ptr [rax + 8]
	nop	
	lea	rbx, [rcx - 1]
	mov	rbp, rsi
	lea	rsi, [rsi]
	dec	rbp
	mov	rbp, rbp
	je	.label_588
	mov	rbp, rbp
	mov	eax, 1
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_453
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x1040]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x1028]
	mov	rdx, qword ptr [rax]
	mov	rbp, rbp
	je	.label_456
	nop	
	call	xmemcoll0
	jmp	.label_453
.label_588:
	neg	rbx
	nop	
	sbb	eax, eax
	jmp	.label_453
.label_456:
	mov	rbp, rbp
	cmp	rbp, rbx
	mov	rax, rbx
	cmovb	rax, rbp
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	jne	.label_453
	lea	rsi, [rsi]
	cmp	rbp, rbx
	setne	al
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	mov	rsp, rsp
	cmovae	eax, ecx
.label_453:
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + reverse]],  0
	lea	rdi, [rdi]
	je	.label_547
	mov	rbp, rbp
	neg	eax
.label_547:
	mov	rbp, rbp
	add	rsp, 0x2178
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_545:
	lea	rdi, [rdi]
	shr	ecx, 0x18
	jmp	.label_512
.label_502:
	shr	ecx, 0x18
	lea	rsi, [rsi]
	mov	r15d, edi
	mov	rbp, rbp
	jmp	.label_512
.label_540:
	shr	ecx, 0x18
	mov	r15d, eax
	jmp	.label_512
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40acf0

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
	sub	rsp, 0x38
	mov	r12, rdx
	mov	r15, rsi
	mov	qword ptr [rsp + 8], rdi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	lea	r14, [rbp + rbx]
	mov	rsp, rsp
	test	r12, r12
	jne	.label_605
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_605
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	jle	.label_616
	dec	rbx
	nop	
	mov	r12d, 0xa
	mov	r13d, 0x3e
	nop	word ptr cs:[rax + rax]
.label_640:
	lea	rsi, [rsi]
	test	rbx, rbx
	movsx	ecx, byte ptr [rbp]
	mov	rsp, rsp
	mov	eax, ecx
	nop	
	cmove	eax, r12d
	cmp	ecx, 9
	cmove	eax, r13d
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	rcx, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	jae	.label_628
	lea	rdx, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx], al
.label_648:
	inc	rbp
	dec	rbx
	lea	rdi, [rdi]
	cmp	rbp, r14
	mov	rbp, rbp
	jb	.label_640
	mov	rsp, rsp
	jmp	.label_616
.label_628:
	mov	rsp, rsp
	movzx	esi, al
	mov	rdi, r15
	lea	rdi, [rdi]
	call	__overflow
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_648
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.163
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, rax
	call	sort_die
.label_605:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_653
	lea	rdi, [rdi]
	mov	al, 0xa
	lea	rsi, [rsi]
	jmp	.label_596
.label_653:
	xor	eax, eax
.label_596:
	mov	byte ptr [rbp + rbx - 1], al
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	mov	rcx, r15
	mov	rsp, rsp
	call	fwrite_unlocked
	lea	rsi, [rsi]
	cmp	rax, rbx
	jne	.label_608
	lea	rdi, [rdi]
	mov	byte ptr [r14 - 1], 0
.label_633:
	nop	
	add	rsp, 0x38
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
	ret	
.label_616:
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + keylist]]
	jmp	.label_623
	nop	word ptr cs:[rax + rax]
.label_637:
	mov	rbp, qword ptr [rbp + 0x40]
	lea	rsi, [rsi]
	test	rbp, rbp
	jne	.label_623
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + unique]]
	and	al, 1
	jne	.label_633
	nop	
	test	byte ptr [byte ptr [rip + stable]],  1
	nop	
	mov	ebp, 0
	je	.label_623
	nop	
	jmp	.label_633
.label_632:
	nop	
	mov	esi, 0xa
	call	__overflow
	mov	rbp, rbp
	jmp	.label_604
.label_634:
	xor	eax, eax
.label_636:
	lea	rsi, [rsi]
	movzx	edi, al
	lea	rsi, [r12 + rdi + 1]
	mov	bl, byte ptr [r12 + rdi]
	movzx	eax, bl
	lea	ecx, [rax - 0x30]
	cmp	ecx, 9
	lea	rsi, [rsi]
	ja	.label_647
	mov	r15b, r11b
	mov	r11, rbp
	add	rdi, r12
	mov	r9d,  dword ptr [dword ptr [rip + thousands_sep]]
	nop	
	xor	edx, edx
	nop	dword ptr [rax]
.label_599:
	mov	rbp, rbp
	movzx	eax, bl
	movzx	ecx, dl
	cmp	ecx, eax
	nop	
	mov	r10b, bl
	lea	rdi, [rdi]
	jb	.label_639
	mov	r10b, dl
.label_639:
	movsx	ebp, byte ptr [rsi]
	lea	rdi, [rdi]
	mov	rcx, rdi
	add	rcx, 2
	cmp	ebp, r9d
	nop	
	mov	rdi, rsi
	mov	rsp, rsp
	cmove	rdi, rcx
	mov	rsp, rsp
	lea	rsi, [rdi + 1]
	mov	bl, byte ptr [rdi]
	mov	rbp, rbp
	movzx	eax, bl
	mov	rbp, rbp
	lea	edx, [rax - 0x30]
	cmp	edx, 0xa
	nop	
	mov	dl, r10b
	jb	.label_599
	lea	rdi, [rdi]
	cmp	ebp, r9d
	mov	rbp, rbp
	mov	rbp, r11
	mov	rsp, rsp
	mov	r11b, r15b
	je	.label_619
	mov	rsp, rsp
	jmp	.label_609
.label_647:
	mov	rsp, rsp
	xor	r10d, r10d
.label_609:
	mov	rsp, rsp
	cmp	eax,  dword ptr [dword ptr [rip + decimal_point]]
	jne	.label_627
	movzx	edi, byte ptr [rsi]
	mov	rsp, rsp
	inc	rsi
	nop	
	mov	eax, edi
	lea	rsi, [rsi]
	add	eax, -0x30
	mov	rbp, rbp
	cmp	eax, 9
	nop	
	mov	rcx, rsi
	lea	rsi, [rsi]
	ja	.label_619
	nop	dword ptr [rax + rax]
.label_643:
	movzx	eax, dil
	movzx	edx, r10b
	cmp	edx, eax
	jb	.label_597
	lea	rdi, [rdi]
	mov	dil, r10b
.label_597:
	mov	r10b, dil
	nop	
	movzx	edi, byte ptr [rcx]
	inc	rcx
	nop	
	mov	eax, edi
	lea	rsi, [rsi]
	add	eax, -0x30
	mov	rbp, rbp
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jb	.label_643
	jmp	.label_619
.label_627:
	mov	rcx, rsi
.label_619:
	movzx	eax, r10b
	cmp	eax, 0x30
	mov	rsi, r12
	jb	.label_594
	lea	rsi, [rsi]
	dec	rcx
	test	r8b, r8b
	je	.label_621
	movzx	eax, byte ptr [rcx]
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rax + unit_order]],  0
	setne	al
	jmp	.label_626
.label_621:
	lea	rsi, [rsi]
	xor	eax, eax
.label_626:
	movzx	eax, al
	mov	rbp, rbp
	add	rcx, rax
	mov	qword ptr [rsp], rcx
	mov	rsi, rcx
	lea	rsi, [rsi]
	jmp	.label_594
	nop	
.label_623:
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax]
	mov	r15, qword ptr [rax + 8]
	lea	r13, [r14 + r15 - 1]
	mov	rsp, rsp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_601
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp]
	mov	rsp, rsp
	cmp	rbx, -1
	mov	r12, r14
	lea	rsi, [rsi]
	je	.label_614
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	begfield
	mov	rsp, rsp
	mov	r12, rax
.label_614:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + 0x10], -1
	lea	rsi, [rsi]
	je	.label_638
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rdx, rbp
	call	limfield
	mov	r13, rax
.label_638:
	nop	
	mov	rax, qword ptr [rbp + 0x30]
	test	al, al
	lea	rsi, [rsi]
	sete	cl
	cmp	rbx, -1
	lea	rdi, [rdi]
	setne	dl
	mov	rbp, rbp
	movabs	rsi, 0xff000000000000
	test	rax, rsi
	jne	.label_624
	or	cl, dl
	mov	rsp, rsp
	je	.label_624
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	shr	ecx, 0x10
	test	cl, cl
	nop	
	jne	.label_624
	shr	rax, 0x20
	movzx	ecx, ax
	cmp	ecx, 0xff
	ja	.label_624
	test	al, al
	mov	rsp, rsp
	jne	.label_624
	mov	rbp, rbp
	mov	r15, rbp
	jmp	.label_625
	nop	word ptr cs:[rax + rax]
.label_624:
	nop	
	mov	r11b, byte ptr [r13]
	lea	rdi, [rdi]
	mov	byte ptr [r13], 0
	dec	r12
.label_598:
	nop	
	movzx	eax, byte ptr [r12 + 1]
	inc	r12
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_598
	mov	qword ptr [rsp], r12
	nop	
	cmp	r13, r12
	mov	rsp, rsp
	jb	.label_603
	mov	rsp, rsp
	cmp	byte ptr [rbp + 0x36], 0
	lea	rdi, [rdi]
	je	.label_607
	mov	rsp, rsp
	mov	r9, rbp
	lea	rax, [r12 - 1]
	nop	word ptr cs:[rax + rax]
.label_622:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rcx + blanks]],  0
	mov	rbp, rbp
	jne	.label_622
	xor	r8d, r8d
	mov	edx, 0xc
.label_600:
	lea	rdi, [rdx + r8]
	shr	rdi, 1
	nop	
	mov	rcx, rdi
	nop	
	shl	rcx, 4
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rcx + monthtab]]
	mov	rbp, rbp
	mov	bl, byte ptr [rbp]
	mov	rbp, rbp
	test	bl, bl
	je	.label_630
	mov	rsp, rsp
	inc	rbp
	lea	rsi, [rsi]
	mov	rsi, rax
	nop	word ptr cs:[rax + rax]
.label_651:
	movzx	ecx, byte ptr [rsi]
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [rcx + fold_toupper]]
	movzx	ebx, bl
	cmp	ecx, ebx
	mov	rsp, rsp
	jb	.label_646
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, ebx
	ja	.label_595
	inc	rsi
	lea	rdi, [rdi]
	mov	bl, byte ptr [rbp]
	inc	rbp
	test	bl, bl
	jne	.label_651
	lea	rdi, [rdi]
	jmp	.label_652
	nop	dword ptr [rax]
.label_646:
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsp, rsp
	jmp	.label_635
	nop	dword ptr [rax + rax]
.label_595:
	lea	rsi, [rsi]
	inc	rdi
	mov	rbp, rbp
	mov	r8, rdi
.label_635:
	cmp	r8, rdx
	nop	
	jb	.label_600
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rbp, r9
	jmp	.label_594
	nop	word ptr cs:[rax + rax]
.label_601:
	mov	r15, rbp
	mov	r12, r14
	jmp	.label_625
.label_607:
	mov	rbp, rbp
	mov	bl, r11b
	movzx	r8d, word ptr [rbp + 0x34]
	nop	
	test	r8b, r8b
	je	.label_618
	mov	rdi, r12
	lea	rsi, [rsp]
	call	strtold
	mov	rsp, rsp
	fstp	st(0)
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp]
	mov	r11b, bl
	jmp	.label_594
.label_618:
	mov	rsp, rsp
	shr	r8d, 8
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp + 0x32]
	or	al, r8b
	lea	rdi, [rdi]
	mov	r11b, bl
	je	.label_603
	cmp	r12, r13
	jae	.label_634
	nop	
	movzx	eax, byte ptr [r12]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	sete	al
	jmp	.label_636
	nop	
.label_603:
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rsi, r13
	jmp	.label_594
.label_630:
	lea	rsi, [rsi]
	mov	rsi, rax
.label_652:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rsi
	mov	rbp, r9
.label_594:
	nop	
	mov	r15, rbp
	lea	rsi, [rsi]
	mov	byte ptr [r13], r11b
	mov	rsp, rsp
	mov	r13, rsi
.label_625:
	mov	rsi, r12
	mov	rbp, rbp
	sub	rsi, r14
	xor	edx, edx
	mov	rdi, r14
	call	mbsnwidth
	mov	rcx, r12
	nop	
	sub	rcx, r14
	movsxd	rbp, eax
	jbe	.label_645
	cmp	rcx, 4
	jb	.label_592
	lea	rdi, [rdi]
	mov	rax, rcx
	and	rax, 0xfffffffffffffffc
	lea	rsi, [rsi]
	mov	rdx, rcx
	and	rdx, 0xfffffffffffffffc
	je	.label_592
	movq	xmm2, rbp
	mov	rbp, rbp
	pxor	xmm0, xmm0
	lea	rdi, [rcx - 4]
	mov	rsi, rdi
	shr	rsi, 2
	bt	rdi, 2
	lea	rsi, [rsi]
	jb	.label_602
	movzx	edi, word ptr [r14]
	movd	xmm1, edi
	pxor	xmm5, xmm5
	punpcklbw	xmm1, xmm5
	punpcklwd	xmm1, xmm5
	mov	rbp, rbp
	punpckldq	xmm1, xmm5
	lea	rdi, [rdi]
	movzx	edi, word ptr [r14 + 2]
	movd	xmm0, edi
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	punpckldq	xmm0, xmm5
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_611]]
	pcmpeqd	xmm1, xmm6
	pshufd	xmm3, xmm1, 0xb1
	mov	rsp, rsp
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_612]]
	pand	xmm1, xmm7
	nop	
	pand	xmm1, xmm3
	mov	rbp, rbp
	pcmpeqd	xmm0, xmm6
	pshufd	xmm3, xmm0, 0xb1
	lea	rdi, [rdi]
	pand	xmm0, xmm7
	pand	xmm0, xmm3
	paddq	xmm1, xmm2
	mov	edi, 4
	nop	
	movdqa	xmm2, xmm1
	jmp	.label_615
.label_602:
	xor	edi, edi
	mov	rsp, rsp
	pxor	xmm5, xmm5
	lea	rdi, [rdi]
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_611]]
	nop	
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_612]]
.label_615:
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_593
	mov	rbp, rbp
	mov	rsi, rdx
	sub	rsi, rdi
	lea	rdi, [rdi]
	lea	rdi, [r14 + rdi + 6]
	lea	rsi, [rsi]
	movdqa	xmm1, xmm2
	nop	word ptr cs:[rax + rax]
.label_631:
	movzx	ebp, word ptr [rdi - 6]
	mov	rbp, rbp
	movd	xmm2, ebp
	punpcklbw	xmm2, xmm5
	nop	
	punpcklwd	xmm2, xmm5
	mov	rbp, rbp
	punpckldq	xmm2, xmm5
	mov	rsp, rsp
	movzx	ebp, word ptr [rdi - 4]
	movd	xmm3, ebp
	mov	rsp, rsp
	punpcklbw	xmm3, xmm5
	punpcklwd	xmm3, xmm5
	punpckldq	xmm3, xmm5
	pcmpeqd	xmm2, xmm6
	pshufd	xmm4, xmm2, 0xb1
	nop	
	pand	xmm2, xmm7
	pand	xmm2, xmm4
	pcmpeqd	xmm3, xmm6
	lea	rsi, [rsi]
	pshufd	xmm4, xmm3, 0xb1
	pand	xmm3, xmm7
	pand	xmm3, xmm4
	lea	rdi, [rdi]
	paddq	xmm2, xmm1
	paddq	xmm3, xmm0
	movzx	ebp, word ptr [rdi - 2]
	movd	xmm1, ebp
	lea	rsi, [rsi]
	punpcklbw	xmm1, xmm5
	punpcklwd	xmm1, xmm5
	mov	rbp, rbp
	punpckldq	xmm1, xmm5
	lea	rdi, [rdi]
	movzx	ebp, word ptr [rdi]
	lea	rsi, [rsi]
	movd	xmm0, ebp
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	punpckldq	xmm0, xmm5
	pcmpeqd	xmm1, xmm6
	pshufd	xmm4, xmm1, 0xb1
	mov	rsp, rsp
	pand	xmm1, xmm7
	pand	xmm1, xmm4
	pcmpeqd	xmm0, xmm6
	pshufd	xmm4, xmm0, 0xb1
	pand	xmm0, xmm7
	pand	xmm0, xmm4
	paddq	xmm1, xmm2
	paddq	xmm0, xmm3
	lea	rdi, [rdi]
	add	rdi, 8
	add	rsi, -8
	mov	rbp, rbp
	jne	.label_631
.label_593:
	paddq	xmm0, xmm1
	nop	
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	rbp, xmm1
	nop	
	cmp	rcx, rdx
	je	.label_645
	add	r14, rax
	nop	word ptr cs:[rax + rax]
.label_592:
	movzx	eax, byte ptr [r14]
	inc	r14
	cmp	eax, 9
	nop	
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	nop	
	add	rbp, rax
	mov	rsp, rsp
	cmp	r12, r14
	nop	
	jne	.label_592
.label_645:
	lea	rdi, [rdi]
	mov	r14, r13
	lea	rsi, [rsi]
	sub	r14, r12
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, r12
	nop	
	mov	rsi, r14
	lea	rsi, [rsi]
	call	mbsnwidth
	movsxd	rbx, eax
	mov	rbp, rbp
	cmp	r12, r13
	jae	.label_620
	mov	rbp, rbp
	cmp	r14, 4
	pxor	xmm5, xmm5
	nop	
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_611]]
	movdqa	xmm6, xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_612]]
	movdqa	xmm7, xmm0
	nop	
	jb	.label_613
	mov	rax, r14
	lea	rdi, [rdi]
	and	rax, 0xfffffffffffffffc
	mov	rsp, rsp
	mov	rcx, r14
	mov	rsp, rsp
	and	rcx, 0xfffffffffffffffc
	je	.label_613
	movq	xmm2, rbx
	pxor	xmm0, xmm0
	lea	rdi, [rdi]
	lea	rsi, [r14 - 4]
	lea	rdi, [rdi]
	mov	rdx, rsi
	lea	rdi, [rdi]
	shr	rdx, 2
	mov	rbp, rbp
	bt	rsi, 2
	jb	.label_641
	movzx	esi, word ptr [r12]
	lea	rsi, [rsi]
	movd	xmm1, esi
	punpcklbw	xmm1, xmm5
	punpcklwd	xmm1, xmm5
	punpckldq	xmm1, xmm5
	nop	
	movzx	esi, word ptr [r12 + 2]
	movd	xmm0, esi
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	mov	rbp, rbp
	punpckldq	xmm0, xmm5
	mov	rbp, rbp
	pcmpeqd	xmm1, xmm6
	pshufd	xmm3, xmm1, 0xb1
	mov	rbp, rbp
	pand	xmm1, xmm7
	lea	rsi, [rsi]
	pand	xmm1, xmm3
	mov	rbp, rbp
	pcmpeqd	xmm0, xmm6
	pshufd	xmm3, xmm0, 0xb1
	pand	xmm0, xmm7
	pand	xmm0, xmm3
	mov	rbp, rbp
	paddq	xmm1, xmm2
	lea	rdi, [rdi]
	mov	esi, 4
	lea	rdi, [rdi]
	movdqa	xmm2, xmm1
	jmp	.label_650
.label_641:
	xor	esi, esi
.label_650:
	lea	rsi, [rsi]
	test	rdx, rdx
	nop	
	je	.label_617
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	sub	rdx, rsi
	mov	rsp, rsp
	lea	rsi, [r12 + rsi + 6]
	mov	rsp, rsp
	movdqa	xmm1, xmm2
	nop	
.label_649:
	movzx	edi, word ptr [rsi - 6]
	movd	xmm2, edi
	punpcklbw	xmm2, xmm5
	punpcklwd	xmm2, xmm5
	punpckldq	xmm2, xmm5
	movzx	edi, word ptr [rsi - 4]
	movd	xmm3, edi
	punpcklbw	xmm3, xmm5
	punpcklwd	xmm3, xmm5
	lea	rsi, [rsi]
	punpckldq	xmm3, xmm5
	lea	rsi, [rsi]
	pcmpeqd	xmm2, xmm6
	pshufd	xmm4, xmm2, 0xb1
	pand	xmm2, xmm7
	pand	xmm2, xmm4
	pcmpeqd	xmm3, xmm6
	nop	
	pshufd	xmm4, xmm3, 0xb1
	mov	rbp, rbp
	pand	xmm3, xmm7
	pand	xmm3, xmm4
	paddq	xmm2, xmm1
	mov	rsp, rsp
	paddq	xmm3, xmm0
	movzx	edi, word ptr [rsi - 2]
	lea	rdi, [rdi]
	movd	xmm1, edi
	mov	rsp, rsp
	punpcklbw	xmm1, xmm5
	nop	
	punpcklwd	xmm1, xmm5
	punpckldq	xmm1, xmm5
	movzx	edi, word ptr [rsi]
	lea	rsi, [rsi]
	movd	xmm0, edi
	lea	rdi, [rdi]
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	lea	rdi, [rdi]
	punpckldq	xmm0, xmm5
	mov	rsp, rsp
	pcmpeqd	xmm1, xmm6
	pshufd	xmm4, xmm1, 0xb1
	mov	rbp, rbp
	pand	xmm1, xmm7
	pand	xmm1, xmm4
	mov	rbp, rbp
	pcmpeqd	xmm0, xmm6
	pshufd	xmm4, xmm0, 0xb1
	lea	rsi, [rsi]
	pand	xmm0, xmm7
	pand	xmm0, xmm4
	paddq	xmm1, xmm2
	nop	
	paddq	xmm0, xmm3
	add	rsi, 8
	add	rdx, -8
	jne	.label_649
.label_617:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	mov	rbp, rbp
	paddq	xmm1, xmm0
	movq	rbx, xmm1
	cmp	r14, rcx
	je	.label_620
	lea	rdi, [rdi]
	add	r12, rax
	nop	dword ptr [rax + rax]
.label_613:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r12]
	inc	r12
	lea	rsi, [rsi]
	cmp	eax, 9
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
	add	rbx, rax
	cmp	r13, r12
	jne	.label_613
	nop	
	jmp	.label_620
	nop	word ptr cs:[rax + rax]
.label_644:
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_620:
	lea	rdi, [rdi]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_642
	dec	rbp
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_644
	nop	
	mov	esi, 0x20
	mov	rsp, rsp
	call	__overflow
	jmp	.label_620
	nop	word ptr cs:[rax + rax]
.label_642:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, r15
	jne	.label_629
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.164
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	__printf_chk
	mov	rsp, rsp
	jmp	.label_604
.label_610:
	mov	esi, 0x5f
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_606
	nop	dword ptr [rax + rax]
.label_629:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_610
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x5f
.label_606:
	dec	rbx
	jne	.label_629
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_632
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0xa
.label_604:
	mov	rsp, rsp
	test	rbp, rbp
	mov	rbp, rbp
	jne	.label_637
	jmp	.label_633
.label_608:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.163
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, r12
	call	sort_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b8e0

	.globl limfield
	.type limfield, @function
limfield:
	lea	rax, [rdi + rsi - 1]
	mov	r9, qword ptr [rdx + 0x10]
	nop	
	mov	r8, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	cmp	r8, 1
	lea	rdi, [rdi]
	adc	r9, 0
	mov	ecx,  dword ptr [dword ptr [rip + tab]]
	cmp	ecx, 0x80
	lea	rsi, [rsi]
	jne	.label_662
	mov	rbp, rbp
	cmp	rax, rdi
	lea	rdi, [rdi]
	jbe	.label_655
	nop	dword ptr [rax]
.label_664:
	test	r9, r9
	jne	.label_654
	jmp	.label_655
	nop	word ptr [rax + rax]
.label_668:
	mov	rsp, rsp
	inc	rdi
.label_654:
	cmp	rdi, rax
	jae	.label_663
	mov	rsp, rsp
	movzx	ecx, byte ptr [rdi]
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rcx + blanks]],  0
	lea	rsi, [rsi]
	jne	.label_668
	mov	rsp, rsp
	jmp	.label_663
	nop	word ptr cs:[rax + rax]
.label_661:
	nop	
	inc	rdi
.label_663:
	cmp	rdi, rax
	jae	.label_665
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdi]
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rcx + blanks]],  0
	je	.label_661
.label_665:
	dec	r9
	cmp	rdi, rax
	nop	
	jb	.label_664
	mov	rsp, rsp
	jmp	.label_655
.label_662:
	mov	rbp, rbp
	cmp	rax, rdi
	lea	rsi, [rsi]
	jbe	.label_655
	nop	word ptr cs:[rax + rax]
.label_660:
	lea	rdi, [rdi]
	test	r9, r9
	nop	
	je	.label_655
	lea	rsi, [rsi]
	dec	r9
	lea	rsi, [rsi]
	jmp	.label_666
	nop	word ptr cs:[rax + rax]
.label_658:
	lea	rsi, [rsi]
	inc	rdi
.label_666:
	nop	
	cmp	rdi, rax
	jae	.label_657
	movsx	esi, byte ptr [rdi]
	lea	rsi, [rsi]
	cmp	esi, ecx
	jne	.label_658
	lea	r10, [rdi + 1]
	nop	
	mov	rsi, r9
	mov	rbp, rbp
	or	rsi, r8
	nop	
	cmovne	rdi, r10
.label_657:
	mov	rbp, rbp
	cmp	rdi, rax
	lea	rsi, [rsi]
	jb	.label_660
.label_655:
	mov	rbp, rbp
	test	r8, r8
	je	.label_667
	mov	rbp, rbp
	cmp	byte ptr [rdx + 0x31], 0
	jne	.label_669
	lea	rsi, [rsi]
	jmp	.label_656
	nop	word ptr [rax + rax]
.label_659:
	inc	rdi
.label_669:
	cmp	rdi, rax
	mov	rsp, rsp
	jae	.label_656
	movzx	ecx, byte ptr [rdi]
	cmp	byte ptr [byte ptr [rcx + blanks]],  0
	jne	.label_659
.label_656:
	lea	rsi, [rsi]
	add	rdi, r8
	lea	rsi, [rsi]
	cmp	rax, rdi
	cmovb	rdi, rax
.label_667:
	mov	rax, rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ba40

	.globl begfield
	.type begfield, @function
begfield:
	lea	rdi, [rdi]
	lea	rax, [rdi + rsi - 1]
	mov	rsp, rsp
	mov	r9, qword ptr [rdx]
	mov	r8, qword ptr [rdx + 8]
	mov	ecx,  dword ptr [dword ptr [rip + tab]]
	cmp	ecx, 0x80
	lea	rdi, [rdi]
	jne	.label_670
	cmp	rax, rdi
	mov	rbp, rbp
	jbe	.label_673
	nop	
.label_683:
	lea	rsi, [rsi]
	test	r9, r9
	jne	.label_680
	jmp	.label_673
	nop	dword ptr [rax]
.label_674:
	mov	rbp, rbp
	inc	rdi
.label_680:
	cmp	rdi, rax
	jae	.label_672
	movzx	ecx, byte ptr [rdi]
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rcx + blanks]],  0
	nop	
	jne	.label_674
	nop	
	jmp	.label_672
	nop	
.label_679:
	mov	rsp, rsp
	inc	rdi
.label_672:
	cmp	rdi, rax
	jae	.label_676
	movzx	ecx, byte ptr [rdi]
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rcx + blanks]],  0
	lea	rdi, [rdi]
	je	.label_679
.label_676:
	dec	r9
	nop	
	cmp	rdi, rax
	nop	
	jb	.label_683
	jmp	.label_673
.label_670:
	cmp	rax, rdi
	mov	rsp, rsp
	jbe	.label_673
	nop	word ptr cs:[rax + rax]
.label_671:
	mov	rbp, rbp
	test	r9, r9
	je	.label_673
	nop	dword ptr [rax + rax]
.label_682:
	cmp	rdi, rax
	jae	.label_678
	movsx	esi, byte ptr [rdi]
	lea	rsi, [rsi]
	inc	rdi
	cmp	esi, ecx
	jne	.label_682
.label_678:
	mov	rbp, rbp
	dec	r9
	cmp	rdi, rax
	nop	
	jb	.label_671
.label_673:
	nop	
	cmp	byte ptr [rdx + 0x30], 0
	lea	rdi, [rdi]
	jne	.label_675
	lea	rdi, [rdi]
	jmp	.label_677
	nop	dword ptr [rax]
.label_681:
	mov	rbp, rbp
	inc	rdi
.label_675:
	lea	rsi, [rsi]
	cmp	rdi, rax
	lea	rsi, [rsi]
	jae	.label_677
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdi]
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rcx + blanks]],  0
	lea	rsi, [rsi]
	jne	.label_681
.label_677:
	mov	rsp, rsp
	add	rdi, r8
	lea	rsi, [rsi]
	cmp	rax, rdi
	mov	rsp, rsp
	cmovb	rdi, rax
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bb60

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
	jne	.label_684
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_684:
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
	.align	16
	#Procedure 0x40bc80

	.globl open_input_files
	.type open_input_files, @function
open_input_files:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	r13, rdi
	mov	rax, r14
	lea	rsi, [rsi]
	shr	rax, 0x3c
	jne	.label_685
	lea	rdi, [r14*8]
	call	xmalloc
	mov	r15, rax
	nop	
	mov	qword ptr [rbx], r15
	mov	rbp, rbp
	xor	ebx, ebx
	test	r14, r14
	mov	rsp, rsp
	je	.label_695
	add	r13, 8
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_696:
	mov	r12, qword ptr [r13]
	lea	rdi, [rdi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_686
	mov	al, byte ptr [r12 + 0xc]
	test	al, al
	lea	rsi, [rsi]
	je	.label_686
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_688
	mov	rsp, rsp
	mov	ebp, dword ptr [r12 + 8]
	mov	dword ptr [rsp + 8], ebp
	nop	
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	lea	rsi, [rsp]
	call	hash_delete
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_688
	mov	rsp, rsp
	mov	byte ptr [rax + 0xc], 2
	mov	edi, ebp
	call	reap
.label_688:
	mov	rsp, rsp
	lea	rdi, [r12 + 0xd]
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	call	open
	lea	rdi, [rdi]
	mov	ebp, eax
	test	ebp, ebp
	mov	rbp, rbp
	mov	eax, 0
	js	.label_689
	nop	
	mov	esi, 9
	lea	rdi, [rsp + 0x10]
	lea	rdi, [rdi]
	call	pipe_fork
	cmp	eax, -1
	mov	rbp, rbp
	je	.label_690
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_693
	mov	dword ptr [r12 + 8], eax
	mov	rax,  qword ptr [word ptr [rip + proctab]]
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_691
	mov	edi, 0x2f
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:proctab_hasher
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:proctab_comparator
	mov	rsp, rsp
	xor	r8d, r8d
	call	hash_initialize
	mov	qword ptr [word ptr [rip + proctab]],  rax
	test	rax, rax
	je	.label_687
.label_691:
	mov	byte ptr [r12 + 0xc], 1
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, r12
	call	hash_insert
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_687
	mov	edi, ebp
	mov	rbp, rbp
	call	close
	mov	edi, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	call	close
	mov	edi, dword ptr [rsp + 0x10]
	mov	esi, OFFSET FLAT:.str.52
	call	fdopen
	test	rax, rax
	jne	.label_689
	call	__errno_location
	mov	rbp, rax
	mov	rbp, rbp
	mov	r12, r14
	nop	
	mov	r14, r15
	mov	r15d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp], r15d
	lea	rsi, [rsi]
	mov	r15, r14
	mov	r14, r12
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_689
.label_686:
	mov	rdi, qword ptr [r13 - 8]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.52
	mov	rsp, rsp
	call	stream_open
	jmp	.label_689
.label_690:
	lea	rdi, [rdi]
	mov	r12, r14
	mov	r14, r15
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	lea	rdi, [rdi]
	cmp	eax, 0x18
	nop	
	jne	.label_692
	mov	edi, ebp
	mov	rbp, rbp
	call	close
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0x18
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r15, r14
	mov	r14, r12
	nop	word ptr cs:[rax + rax]
.label_689:
	mov	rsp, rsp
	mov	qword ptr [r15 + rbx*8], rax
	test	rax, rax
	nop	
	je	.label_695
	nop	
	inc	rbx
	lea	rsi, [rsi]
	add	r13, 0x10
	cmp	rbx, r14
	nop	
	jb	.label_696
.label_695:
	mov	rax, rbx
	lea	rsi, [rsi]
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_693:
	mov	edi, dword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	close
	test	ebp, ebp
	je	.label_694
	xor	esi, esi
	nop	
	mov	edi, ebp
	call	dup2
	lea	rsi, [rsi]
	mov	edi, ebp
	call	close
.label_694:
	mov	ebx, dword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	cmp	ebx, 1
	lea	rsi, [rsi]
	je	.label_697
	mov	esi, 1
	mov	edi, ebx
	lea	rsi, [rsi]
	call	dup2
	mov	edi, ebx
	nop	
	call	close
.label_697:
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	mov	edx, OFFSET FLAT:.str.168
	lea	rsi, [rsi]
	xor	ecx, ecx
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rsp, rsp
	call	execlp
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	esi, OFFSET FLAT:.str.169
	call	async_safe_die
.label_687:
	call	xalloc_die
.label_692:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	ebp, eax
	mov	esi, OFFSET FLAT:.str.167
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	nop	
	mov	edi, 4
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_685:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c000

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
	sub	rsp, 0x118
	mov	qword ptr [rsp + 0x28], r9
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd0], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x60], rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rbp, rbp
	movabs	rax, 0x24924924924924a
	lea	rsi, [rsi]
	cmp	r13, rax
	lea	rdi, [rdi]
	jae	.label_698
	nop	
	imul	rdi, r13, 0x38
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	lea	rbp, [r13*8]
	mov	rdi, rbp
	mov	rsp, rsp
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, rbp
	call	xmalloc
	mov	qword ptr [rsp], rax
	mov	rdi, rbp
	call	xmalloc
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	mov	qword ptr [rsp + 0x100], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe0], 0
	nop	
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_732
	mov	qword ptr [rsp + 0xc0], rbx
	lea	rdi, [rdi]
	lea	rax, [rbx + 0x10]
	nop	
	mov	qword ptr [rsp + 0x80], rax
	lea	rax, [rbx + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	xor	ebp, ebp
.label_754:
	mov	qword ptr [rsp + 0x48], rbp
	lea	rsi, [rsi]
	mov	rdx, rbp
	xor	rdx, 3
	mov	rsi, -2
	sub	rsi, rbp
	imul	rcx, rbp, 0x38
	mov	qword ptr [rsp + 0x10], rcx
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rax + rcx]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdi
	lea	rdi, [rax + rcx + 0x18]
	mov	qword ptr [rsp + 0x18], rdi
	lea	rdi, [rax + rcx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rdi
	lea	rdi, [rax + rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rdi
	lea	rax, [rax + rcx + 0x30]
	nop	
	mov	qword ptr [rsp + 0xc8], rax
	mov	rax, rbp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	add	rdx, r13
	nop	
	mov	qword ptr [rsp + 0x110], rdx
	lea	rsi, [rsi]
	add	rsi, r13
	mov	qword ptr [rsp + 0x30], rsi
	mov	al, dl
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	r9, r13
	nop	word ptr [rax + rax]
.label_712:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd8], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xb8], al
	mov	r13, r9
	mov	rbp, rbp
	and	al, 3
	movzx	r12d, al
	mov	rbp, rbp
	neg	r12
	mov	r15, qword ptr [rsp + 0x110]
	sub	r15, rcx
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rsp + 0xb0], rax
	lea	rax, [r13 - 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	xor	edx, edx
	div	r13
	cmp	rcx, rax
	nop	
	cmova	rax, rcx
	nop	word ptr cs:[rax + rax]
.label_716:
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	and	ecx, 0x1f
	nop	
	mov	ebp, 0x20
	sub	rbp, rcx
	add	rbp, rax
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	jne	.label_714
	mov	rax, rbp
	shr	rax, 1
	cmp	rbp, 0x43
	ja	.label_716
	jmp	.label_720
	nop	word ptr cs:[rax + rax]
.label_714:
	mov	rdi, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax], rbp
	mov	eax, 0x20
	lea	rsi, [rsi]
	movq	xmm0, rax
	pslldq	xmm0, 8
	mov	rax, qword ptr [rsp + 0x78]
	movdqu	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xc8]
	mov	byte ptr [rax], 0
	pxor	xmm0, xmm0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x108]
	movdqu	xmmword ptr [rax], xmm0
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rbx + rbp*8]
	mov	r14, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [r14]
	call	fillbuf
	test	al, al
	lea	rsi, [rsi]
	jne	.label_757
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	rsi, qword ptr [r14]
	nop	
	call	xfclose
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x60]
	cmp	rbp, rax
	mov	rbp, rbp
	jae	.label_737
	lea	rdi, [rdi]
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	call	zaptemp
.label_737:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rax]
	call	free
	nop	
	mov	r9, qword ptr [rsp + 0x90]
	cmp	rbp, r9
	jae	.label_725
	test	r15b, 3
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	mov	rax, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	je	.label_713
	nop	word ptr cs:[rax + rax]
.label_715:
	nop	
	movdqu	xmm0, xmmword ptr [rcx]
	movdqu	xmmword ptr [rcx - 0x10], xmm0
	mov	rdx, qword ptr [rsi + rax*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rax*8], rdx
	lea	rsi, [rsi]
	inc	rax
	lea	rsi, [rsi]
	add	rcx, 0x10
	mov	rbp, rbp
	inc	r12
	jne	.label_715
.label_713:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0xb0], 3
	lea	rsi, [rsi]
	jb	.label_739
	dec	r13
	mov	rbp, rbp
	mov	rcx, rax
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_755:
	movups	xmm0, xmmword ptr [rcx - 0x30]
	mov	rsp, rsp
	movups	xmmword ptr [rcx - 0x40], xmm0
	mov	rdx, qword ptr [rsi + rax*8 + 8]
	mov	qword ptr [rsi + rax*8], rdx
	movups	xmm0, xmmword ptr [rcx - 0x20]
	nop	
	movups	xmmword ptr [rcx - 0x30], xmm0
	mov	rdx, qword ptr [rsi + rax*8 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rax*8 + 8], rdx
	movups	xmm0, xmmword ptr [rcx - 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [rcx - 0x20], xmm0
	mov	rdx, qword ptr [rsi + rax*8 + 0x18]
	mov	qword ptr [rsi + rax*8 + 0x10], rdx
	movdqu	xmm0, xmmword ptr [rcx]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rcx - 0x10], xmm0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsi + rax*8 + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rax*8 + 0x18], rdx
	nop	
	lea	rax, [rax + 4]
	lea	rdi, [rdi]
	add	rcx, 0x40
	cmp	r13, rax
	mov	rsp, rsp
	jne	.label_755
.label_739:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	inc	rcx
	nop	
	mov	al, byte ptr [rsp + 0xb8]
	nop	
	add	al, 3
	mov	rbp, rbp
	cmp	rbp, r9
	lea	rsi, [rsi]
	jb	.label_712
	jmp	.label_725
	nop	dword ptr [rax]
.label_757:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	lea	rdx, [rax + rcx]
	lea	rax, [rax + rcx - 0x20]
	mov	rcx, qword ptr [rsp + 0x58]
	nop	
	mov	qword ptr [rcx + rbp*8], rax
	nop	
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + rcx + 0x10]
	mov	rbp, rbp
	shl	rax, 5
	sub	rdx, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + rbp*8], rdx
	inc	rbp
	nop	
	add	qword ptr [rsp + 0x80], 0x10
	cmp	rbp, r13
	mov	r9, r13
	jb	.label_754
.label_725:
	lea	rsi, [rsi]
	test	r9, r9
	je	.label_732
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r9, 4
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jb	.label_699
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rax, r9
	and	rax, 0xfffffffffffffffc
	je	.label_699
	mov	rsp, rsp
	lea	rsi, [r9 - 4]
	mov	rsp, rsp
	mov	rdx, rsi
	shr	rdx, 2
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	bt	rsi, 2
	jb	.label_701
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	movq	xmm0, rcx
	lea	rdi, [rdi]
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rbp], xmm0
	lea	rsi, [rsi]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_727]]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rbp + 0x10], xmm0
	mov	ecx, 4
.label_701:
	test	rdx, rdx
	nop	
	je	.label_724
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	mov	rsp, rsp
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_727]]
	nop	dword ptr [rax]
.label_735:
	mov	rsp, rsp
	movq	xmm2, rcx
	mov	rbp, rbp
	pshufd	xmm2, xmm2, 0x44
	lea	rdi, [rdi]
	movdqa	xmm3, xmm2
	mov	rsp, rsp
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rbp + rcx*8], xmm3
	nop	
	movdqu	xmmword ptr [rbp + rcx*8 + 0x10], xmm2
	lea	rdx, [rcx + 4]
	mov	rsp, rsp
	movq	xmm2, rdx
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	nop	
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rbp + rcx*8 + 0x20], xmm3
	mov	rbp, rbp
	movdqu	xmmword ptr [rbp + rcx*8 + 0x30], xmm2
	add	rcx, 8
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jne	.label_735
.label_724:
	cmp	r9, rax
	lea	rdi, [rdi]
	mov	rcx, rax
	je	.label_763
	nop	word ptr [rax + rax]
.label_699:
	mov	rsp, rsp
	mov	qword ptr [rbp + rcx*8], rcx
	inc	rcx
	mov	rbp, rbp
	cmp	r9, rcx
	jne	.label_699
.label_763:
	mov	rbp, rbp
	mov	ebx, 1
	cmp	r9, 1
	lea	rsi, [rsi]
	jbe	.label_704
	nop	word ptr cs:[rax + rax]
.label_729:
	mov	r12, r9
	nop	
	mov	r15, qword ptr [rbp + rbx*8 - 8]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rax + r15*8]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rbp + rbx*8]
	mov	rsi, qword ptr [rax + r14*8]
	lea	rdi, [rdi]
	call	compare
	lea	rsi, [rsi]
	test	eax, eax
	jle	.label_722
	mov	qword ptr [rbp + rbx*8 - 8], r14
	mov	qword ptr [rbp + rbx*8], r15
	xor	ebx, ebx
.label_722:
	nop	
	mov	r9, r12
	inc	rbx
	cmp	rbx, r9
	jb	.label_729
.label_704:
	mov	qword ptr [rsp + 8], rbp
	lea	rsi, [rsi]
	test	r9, r9
	je	.label_732
	mov	rbp, rbp
	lea	rcx, [r9 - 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rcx
	mov	r14, qword ptr [rsp + 8]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rax, 8
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rsp]
	add	rax, 0x10
	mov	qword ptr [rsp + 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	lea	rax, [rax + 0x70]
	mov	qword ptr [rsp + 0xa0], rax
	nop	
	mov	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	rax, [rax + 0x20]
	nop	
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	lea	rax, [rax + 0x10]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rbx, [r9 - 5]
	mov	rsp, rsp
	xor	esi, esi
	mov	r10, rcx
	lea	rdi, [rdi]
	lea	rax, [r9 - 2]
	mov	qword ptr [rsp + 0x108], rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd8], rax
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0xb0], rax
	nop	dword ptr [rax]
.label_741:
	mov	qword ptr [rsp + 0x78], r10
	mov	qword ptr [rsp + 0x110], rsi
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0xb8], r9
	mov	rsp, rsp
	mov	r13d, ebx
	nop	
	shr	r13d, 2
	inc	r13d
	and	r13d, 3
	lea	rdi, [rdi]
	neg	r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], r13
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	sub	rax, rsi
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	lea	rax, [rax - 4]
	mov	qword ptr [rsp + 0x80], rax
	mov	rsp, rsp
	shr	rax, 2
	lea	rdi, [rdi]
	inc	rax
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x108]
	sub	rax, rsi
	mov	qword ptr [rsp + 0xc8], rax
	lea	rax, [r9 - 1]
	mov	qword ptr [rsp + 0x90], rax
	mov	rbp, rbp
	jmp	.label_721
	nop	word ptr cs:[rax + rax]
.label_717:
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + rcx*8], rax
.label_721:
	mov	rbp, rbp
	mov	rbp, qword ptr [r14]
	mov	rax, qword ptr [rsp + 0x58]
	mov	r13, qword ptr [rax + rbp*8]
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_719
	mov	rax, qword ptr [rsp + 0xd8]
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_760
	mov	rdi, rax
	mov	rsi, r13
	mov	rsp, rsp
	call	compare
	lea	rdi, [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_743
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	call	write_line
.label_760:
	mov	rdx, qword ptr [r13 + 8]
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, rdx
	jae	.label_731
	nop	word ptr cs:[rax + rax]
.label_745:
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_740
	add	rax, rax
	cmp	rax, rdx
	mov	rbp, rbp
	jb	.label_745
	jmp	.label_748
	nop	word ptr cs:[rax + rax]
.label_719:
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0xd0]
	call	write_line
	mov	rbp, rbp
	jmp	.label_743
.label_731:
	mov	rdi, qword ptr [rsp + 0xe0]
	jmp	.label_758
.label_740:
	mov	rax, rdx
.label_748:
	mov	qword ptr [rsp + 0xb0], rax
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	xmalloc
	mov	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], rdi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r13 + 8]
.label_758:
	nop	
	mov	qword ptr [rsp + 0xe8], rdx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r13]
	mov	rsp, rsp
	call	memcpy
	cmp	qword ptr [rsp + 0x100], 0
	je	.label_711
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [r13]
	mov	rdx, qword ptr [r13 + 0x10]
	nop	
	sub	rdx, rcx
	add	rdx, rax
	mov	qword ptr [rsp + 0xf0], rdx
	mov	rdx, qword ptr [r13 + 0x18]
	mov	rbp, rbp
	sub	rdx, rcx
	add	rdx, rax
	mov	qword ptr [rsp + 0xf8], rdx
.label_711:
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 0xd8], rax
.label_743:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax + rbp*8], r13
	jae	.label_734
	mov	rbp, rbp
	add	r13, -0x20
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rbp*8], r13
	jmp	.label_738
	nop	word ptr cs:[rax + rax]
.label_734:
	mov	rbp, rbp
	imul	rbx, rbp, 0x38
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	lea	rdi, [r13 + rbx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	mov	rax, rbp
	mov	rbp, rbp
	shl	rax, 4
	mov	r12, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [r12 + rax]
	mov	rbp, rbp
	call	fillbuf
	test	al, al
	mov	rsp, rsp
	je	.label_764
	mov	rax, qword ptr [r13 + rbx]
	mov	rbp, rbp
	mov	rcx, qword ptr [r13 + rbx + 0x18]
	mov	rsp, rsp
	lea	rdx, [rax + rcx]
	mov	rsi, r13
	lea	r13, [rax + rcx - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	mov	qword ptr [rax + rbp*8], r13
	mov	rax, qword ptr [rsi + rbx + 0x10]
	shl	rax, 5
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rax + rbp*8], rdx
.label_738:
	mov	qword ptr [rsp + 0x88], rbp
	mov	r12, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	cmp	r12, 2
	lea	rsi, [rsi]
	mov	ebx, 1
	mov	r15d, 1
	mov	ecx, 0
	mov	rsp, rsp
	jb	.label_717
	nop	word ptr cs:[rax + rax]
.label_759:
	mov	rbp, qword ptr [r14 + rbx*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	mov	rdi, r13
	nop	
	call	compare
	mov	rbp, rbp
	test	eax, eax
	js	.label_746
	sete	al
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x88], rbp
	setb	cl
	lea	rdi, [rdi]
	lea	rdx, [rbx + 1]
	mov	rbp, rbp
	and	cl, al
	lea	rdi, [rdi]
	cmove	r15, rdx
	lea	rdi, [rdi]
	test	cl, cl
	lea	rdi, [rdi]
	cmove	rbx, r12
.label_746:
	mov	r12, rbx
	lea	rbx, [r12 + r15]
	mov	rsp, rsp
	shr	rbx, 1
	cmp	r15, r12
	jb	.label_759
	lea	rsi, [rsi]
	mov	rax, r15
	dec	rax
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_717
	lea	rdi, [rdi]
	lea	rcx, [r15 - 1]
	cmp	rcx, 4
	mov	rsp, rsp
	mov	esi, 0
	jb	.label_705
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	and	rdx, 0xfffffffffffffffc
	mov	esi, 0
	je	.label_705
	mov	rbp, rbp
	lea	rbp, [r15 - 5]
	lea	rdi, [rdi]
	mov	esi, ebp
	shr	esi, 2
	inc	esi
	test	sil, 3
	mov	rbp, rbp
	mov	esi, 0
	nop	
	je	.label_710
	lea	rdi, [rdi]
	add	r15d, -5
	shr	r15d, 2
	mov	rbp, rbp
	inc	r15d
	and	r15d, 3
	neg	r15
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_747:
	movdqu	xmm0, xmmword ptr [r14 + rsi*8 + 8]
	movdqu	xmm1, xmmword ptr [r14 + rsi*8 + 0x18]
	movdqu	xmmword ptr [r14 + rsi*8], xmm0
	movdqu	xmmword ptr [r14 + rsi*8 + 0x10], xmm1
	add	rsi, 4
	inc	r15
	jne	.label_747
.label_710:
	mov	rbp, rbp
	cmp	rbp, 0xc
	jb	.label_753
	nop	word ptr cs:[rax + rax]
.label_700:
	lea	rdi, [rdi]
	mov	rbp, rsi
	nop	
	or	rbp, 1
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [r14 + rbp*8]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [r14 + rbp*8 + 0x10]
	movups	xmmword ptr [r14 + rsi*8], xmm0
	nop	
	movups	xmmword ptr [r14 + rsi*8 + 0x10], xmm1
	lea	rbp, [rsi + 4]
	mov	rsp, rsp
	or	rbp, 1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [r14 + rbp*8]
	movups	xmm1, xmmword ptr [r14 + rbp*8 + 0x10]
	mov	rbp, rbp
	movups	xmmword ptr [r14 + rsi*8 + 0x20], xmm0
	movups	xmmword ptr [r14 + rsi*8 + 0x30], xmm1
	lea	rbp, [rsi + 8]
	or	rbp, 1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [r14 + rbp*8]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [r14 + rbp*8 + 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rsi*8 + 0x40], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r14 + rsi*8 + 0x50], xmm1
	lea	rbp, [rsi + 0xc]
	or	rbp, 1
	lea	rsi, [rsi]
	movdqu	xmm0, xmmword ptr [r14 + rbp*8]
	mov	rbp, rbp
	movdqu	xmm1, xmmword ptr [r14 + rbp*8 + 0x10]
	nop	
	movdqu	xmmword ptr [r14 + rsi*8 + 0x60], xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r14 + rsi*8 + 0x70], xmm1
	lea	rdi, [rdi]
	add	rsi, 0x10
	cmp	rsi, rdx
	jne	.label_700
.label_753:
	cmp	rcx, rdx
	mov	rbp, rbp
	mov	rsi, rdx
	je	.label_728
	nop	word ptr cs:[rax + rax]
.label_705:
	sub	rcx, rsi
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdx, [rdx + rsi*8]
	nop	dword ptr [rax]
.label_726:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdx]
	mov	rsp, rsp
	mov	qword ptr [rdx - 8], rsi
	nop	
	add	rdx, 8
	mov	rbp, rbp
	dec	rcx
	jne	.label_726
.label_728:
	nop	
	mov	rcx, rax
	nop	
	jmp	.label_717
	nop	word ptr cs:[rax + rax]
.label_764:
	mov	rsi, qword ptr [rsp + 0xb8]
	cmp	rsi, 2
	mov	rbp, rbp
	jb	.label_736
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_762
	mov	eax, 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x110]
	lea	rsi, [rsi]
	jmp	.label_761
	nop	dword ptr [rax]
.label_736:
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	jmp	.label_730
	nop	dword ptr [rax]
.label_762:
	mov	rax, qword ptr [r14 + 8]
	mov	rsp, rsp
	cmp	rax, rbp
	mov	rcx, qword ptr [rsp + 0x110]
	jbe	.label_703
	nop	
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], rax
.label_703:
	mov	rbp, rbp
	mov	rbp, qword ptr [r14]
	mov	rsp, rsp
	mov	eax, 2
	mov	rdx, qword ptr [rsp + 0x28]
.label_761:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x110], rcx
	cmp	qword ptr [rsp + 0x108], rcx
	je	.label_730
	nop	word ptr [rax + rax]
.label_744:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + rax*8]
	cmp	rcx, rbp
	mov	rsp, rsp
	jbe	.label_751
	dec	rcx
	mov	rbp, rbp
	mov	qword ptr [r14 + rax*8], rcx
.label_751:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + rax*8 + 8]
	cmp	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	jbe	.label_733
	mov	rsp, rsp
	dec	rcx
	mov	qword ptr [r14 + rax*8 + 8], rcx
.label_733:
	add	rax, 2
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r14]
	mov	rsp, rsp
	cmp	rsi, rax
	mov	rsp, rsp
	jne	.label_744
.label_730:
	mov	qword ptr [rsp + 0x28], rdx
	mov	rdi, qword ptr [rdx + rbp*8]
	mov	rbp, rbp
	mov	r15, rbp
	shl	r15, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [r12 + r15]
	lea	rsi, [rsi]
	call	xfclose
	mov	rcx, qword ptr [rsp + 0x60]
	cmp	rbp, rcx
	lea	rdi, [rdi]
	mov	rbx, rbp
	jae	.label_756
	lea	rax, [r12 + r15]
	dec	rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rcx
	mov	rdi, qword ptr [rax]
	nop	
	call	zaptemp
.label_756:
	mov	rbp, rbx
	lea	rdi, [rdi]
	imul	rbx, rbp, 0x38
	mov	rdi, qword ptr [r13 + rbx]
	call	free
	mov	r9, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	cmp	rbp, r9
	mov	r10, qword ptr [rsp + 0x78]
	mov	r11, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	jae	.label_709
	lea	rsi, [rsi]
	mov	eax, r11d
	mov	rbp, rbp
	sub	eax, ebp
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	mov	rax, rbp
	je	.label_708
	lea	rax, [rbp + 1]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rdx + rbp*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rdx + rbp*8], rcx
	mov	rcx, rax
	shl	rcx, 4
	movups	xmm0, xmmword ptr [r12 + rcx]
	movups	xmmword ptr [r12 + r15], xmm0
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + rbx + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + rbx + 0x30], rcx
	movdqu	xmm0, xmmword ptr [r13 + rbx + 0x38]
	nop	
	movdqu	xmm1, xmmword ptr [r13 + rbx + 0x48]
	movdqu	xmm2, xmmword ptr [r13 + rbx + 0x58]
	movdqu	xmmword ptr [r13 + rbx + 0x20], xmm2
	mov	rbp, rbp
	movdqu	xmmword ptr [r13 + rbx + 0x10], xmm1
	nop	
	movdqu	xmmword ptr [r13 + rbx], xmm0
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rdx + rbp*8 + 8]
	mov	qword ptr [rdx + rbp*8], rcx
	mov	rdx, qword ptr [rsp]
	mov	rcx, qword ptr [rdx + rbp*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rdx + rbp*8], rcx
.label_708:
	cmp	qword ptr [rsp + 0xc8], rbp
	mov	rsp, rsp
	je	.label_709
	mov	r8, r10
	mov	rbp, rbp
	sub	r8, rax
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	lea	rdx, [rcx + rax*8]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rcx + rax*8]
	imul	rdi, rax, 0x38
	add	rdi, qword ptr [rsp + 0xa0]
	mov	rcx, qword ptr [rsp + 0xa8]
	lea	rbp, [rcx + rax*8]
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rsp + 0x98]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_706:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + rcx*8 - 8]
	mov	qword ptr [rbp + rcx*8 - 0x10], rbx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax - 0x10]
	movups	xmmword ptr [rax - 0x20], xmm0
	nop	
	mov	rbx, qword ptr [rdi - 8]
	mov	qword ptr [rdi - 0x40], rbx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdi - 0x38]
	movups	xmm1, xmmword ptr [rdi - 0x28]
	lea	rsi, [rsi]
	movups	xmm2, xmmword ptr [rdi - 0x18]
	movups	xmmword ptr [rdi - 0x50], xmm2
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + rcx*8 - 8]
	mov	qword ptr [rsi + rcx*8 - 0x10], rbx
	nop	
	mov	rbx, qword ptr [rdx + rcx*8 - 8]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8 - 0x10], rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp + rcx*8]
	mov	rsp, rsp
	mov	qword ptr [rbp + rcx*8 - 8], rbx
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [rax - 0x10], xmm0
	mov	rsp, rsp
	mov	rbx, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rdi - 8], rbx
	movdqu	xmm0, xmmword ptr [rdi]
	mov	rbp, rbp
	movdqu	xmm1, xmmword ptr [rdi + 0x10]
	movdqu	xmm2, xmmword ptr [rdi + 0x20]
	mov	rsp, rsp
	movdqu	xmmword ptr [rdi - 0x18], xmm2
	mov	rbp, rbp
	movdqu	xmmword ptr [rdi - 0x28], xmm1
	movdqu	xmmword ptr [rdi - 0x38], xmm0
	nop	
	mov	rbx, qword ptr [rsi + rcx*8]
	mov	qword ptr [rsi + rcx*8 - 8], rbx
	nop	
	mov	rbx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rdx + rcx*8 - 8], rbx
	add	rcx, 2
	mov	rbp, rbp
	add	rdi, 0x70
	mov	rbp, rbp
	add	rax, 0x20
	cmp	r8, rcx
	lea	rsi, [rsi]
	jne	.label_706
.label_709:
	mov	rsp, rsp
	test	r9, r9
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x110]
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	je	.label_723
	cmp	r11, 3
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xb8]
	jbe	.label_707
	mov	rax, r11
	and	rax, 0xfffffffffffffffc
	mov	rsp, rsp
	mov	ecx, 0
	je	.label_707
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	test	cl, 3
	mov	rbp, rbp
	mov	ecx, 0
	mov	rdx, qword ptr [rsp + 0x50]
	je	.label_749
	nop	
.label_702:
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [r14 + rcx*8 + 8]
	movdqu	xmm1, xmmword ptr [r14 + rcx*8 + 0x18]
	mov	rbp, rbp
	movdqu	xmmword ptr [r14 + rcx*8], xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r14 + rcx*8 + 0x10], xmm1
	add	rcx, 4
	lea	rsi, [rsi]
	inc	rdx
	jne	.label_702
.label_749:
	cmp	qword ptr [rsp + 0x80], 0xc
	lea	rsi, [rsi]
	jb	.label_750
	nop	word ptr cs:[rax + rax]
.label_752:
	mov	rdx, rcx
	or	rdx, 1
	movups	xmm0, xmmword ptr [r14 + rdx*8]
	movups	xmm1, xmmword ptr [r14 + rdx*8 + 0x10]
	movups	xmmword ptr [r14 + rcx*8], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r14 + rcx*8 + 0x10], xmm1
	lea	rdx, [rcx + 4]
	or	rdx, 1
	movups	xmm0, xmmword ptr [r14 + rdx*8]
	movups	xmm1, xmmword ptr [r14 + rdx*8 + 0x10]
	movups	xmmword ptr [r14 + rcx*8 + 0x20], xmm0
	movups	xmmword ptr [r14 + rcx*8 + 0x30], xmm1
	lea	rdx, [rcx + 8]
	lea	rdi, [rdi]
	or	rdx, 1
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [r14 + rdx*8]
	movups	xmm1, xmmword ptr [r14 + rdx*8 + 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rcx*8 + 0x40], xmm0
	nop	
	movups	xmmword ptr [r14 + rcx*8 + 0x50], xmm1
	lea	rdx, [rcx + 0xc]
	mov	rbp, rbp
	or	rdx, 1
	movdqu	xmm0, xmmword ptr [r14 + rdx*8]
	lea	rdi, [rdi]
	movdqu	xmm1, xmmword ptr [r14 + rdx*8 + 0x10]
	movdqu	xmmword ptr [r14 + rcx*8 + 0x60], xmm0
	movdqu	xmmword ptr [r14 + rcx*8 + 0x70], xmm1
	add	rcx, 0x10
	cmp	rcx, rax
	lea	rdi, [rdi]
	jne	.label_752
.label_750:
	nop	
	cmp	r11, rax
	mov	rcx, rax
	nop	
	je	.label_718
	nop	dword ptr [rax + rax]
.label_707:
	inc	rcx
	nop	word ptr cs:[rax + rax]
.label_742:
	mov	rax, qword ptr [r14 + rcx*8]
	mov	qword ptr [r14 + rcx*8 - 8], rax
	inc	rcx
	cmp	rbp, rcx
	jne	.label_742
.label_718:
	inc	rsi
	dec	r10
	mov	rsp, rsp
	dec	rbx
	test	r9, r9
	jne	.label_741
.label_723:
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r14
	cmp	qword ptr [rsp + 0xd8], 0
	mov	rbp, rbp
	je	.label_732
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [rip + unique]],  1
	je	.label_732
	lea	rdi, [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xd0]
	call	write_line
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	call	free
.label_732:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd0]
	call	xfclose
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	nop	
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	add	rsp, 0x118
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_720:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	call	xalloc_die
.label_698:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d290

	.globl maybe_create_temp
	.type maybe_create_temp, @function
maybe_create_temp:
	push	rbp
	nop	
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0xa8
	mov	dword ptr [rsp + 0x9c], esi
	mov	qword ptr [rsp + 0xa0], rdi
	mov	rax,  qword ptr [word ptr [rip + create_temp_file.temp_dir_index]]
	mov	rcx,  qword ptr [word ptr [rip + temp_dirs]]
	mov	r12, qword ptr [rcx + rax*8]
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strlen
	nop	
	mov	rbp, rax
	lea	rdi, [rbp + 0x20]
	and	rdi, 0xfffffffffffffff8
	call	xmalloc
	nop	
	mov	r15, rax
	mov	rsp, rsp
	lea	rbx, [r15 + 0xd]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	memcpy
	lea	rdi, [rdi]
	movabs	rax, 0x58585874726f732f
	mov	rsp, rsp
	mov	qword ptr [r15 + rbp + 0xd], rax
	nop	
	mov	dword ptr [r15 + rbp + 0x15], 0x585858
	mov	qword ptr [r15], 0
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + create_temp_file.temp_dir_index]]
	lea	rsi, [rsi]
	inc	rax
	xor	ecx, ecx
	cmp	rax,  qword ptr [word ptr [rip + temp_dir_count]]
	je	.label_777
	mov	rbp, rbp
	mov	rcx, rax
.label_777:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + create_temp_file.temp_dir_index]],  rcx
	lea	rdx, [rsp + 0x18]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:caught_signals
	call	pthread_sigmask
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	sete	byte ptr [rsp + 0x10]
	mov	esi, 0x80000
	mov	rdi, rbx
	nop	
	mov	qword ptr [rsp + 8], rbx
	lea	rdi, [rdi]
	call	mkostemp_safer
	lea	rdi, [rdi]
	mov	ebp, eax
	nop	
	test	ebp, ebp
	js	.label_765
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + temptail]]
	mov	qword ptr [rax], r15
	mov	qword ptr [word ptr [rip + temptail]],  r15
.label_765:
	mov	rsp, rsp
	call	__errno_location
	mov	r14, rax
	mov	r13d, dword ptr [r14]
	cmp	byte ptr [rsp + 0x10], 0
	je	.label_766
	mov	edi, 2
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x18]
	call	pthread_sigmask
.label_766:
	mov	dword ptr [r14], r13d
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_774
	xor	eax, eax
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_776
	mov	rbp, rbp
	mov	byte ptr [r15 + 0xc], 0
	cmp	qword ptr [word ptr [rip + compress_program]],  0
	nop	
	je	.label_769
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rsp, rsp
	call	pipe_fork
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	jle	.label_767
	mov	rbp, rbp
	mov	edi, ebp
	nop	
	call	close
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x10]
	call	close
	mov	rsp, rsp
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_773
	mov	edi, 0x2f
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:proctab_hasher
	mov	ecx, OFFSET FLAT:proctab_comparator
	mov	rbp, rbp
	xor	r8d, r8d
	lea	rsi, [rsi]
	call	hash_initialize
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + proctab]],  rdi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_770
.label_773:
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 0xc], 1
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	call	hash_insert
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	jne	.label_769
	call	xalloc_die
.label_774:
	mov	rsp, rsp
	cmp	r13d, 0x18
	mov	rsp, rsp
	jne	.label_772
	mov	eax, dword ptr [rsp + 0x9c]
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_772
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_776
.label_767:
	je	.label_778
.label_769:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.166
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rsp, rsp
	call	fdopen
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	qword ptr [rcx], rax
	test	rax, rax
	lea	rsi, [rsi]
	mov	rax, r15
	je	.label_768
.label_776:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
.label_768:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.176
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	call	sort_die
.label_772:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.177
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, r12
	nop	
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, r13d
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	error
.label_778:
	mov	edi, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	call	close
	cmp	ebp, 1
	je	.label_771
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edi, ebp
	call	dup2
	mov	edi, ebp
	lea	rsi, [rsi]
	call	close
.label_771:
	nop	
	mov	ebx, dword ptr [rsp + 0x10]
	test	ebx, ebx
	mov	rbp, rbp
	je	.label_775
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	mov	edi, ebx
	call	dup2
	mov	rsp, rsp
	mov	edi, ebx
	nop	
	call	close
.label_775:
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	mov	rsp, rsp
	xor	edx, edx
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rdi
	call	execlp
	mov	edi, dword ptr [r14]
	mov	esi, OFFSET FLAT:.str.175
	mov	rsp, rsp
	call	async_safe_die
.label_770:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d630

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
	mov	r13, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	esi, 0x80000
	lea	rsi, [rsi]
	call	rpl_pipe2
	mov	ebp, 0xffffffff
	test	eax, eax
	nop	
	js	.label_783
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	lea	rsi, [rsi]
	inc	eax
	nop	
	cmp	eax,  dword ptr [dword ptr [rip + nprocs]]
	jae	.label_786
	mov	edi, 0xffffffff
	call	reap
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	jle	.label_786
	nop	
.label_789:
	mov	rsp, rsp
	xor	edi, edi
	call	reap
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_786
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + nprocs]]
	test	eax, eax
	mov	rbp, rbp
	jg	.label_789
.label_786:
	nop	
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_779
	mov	qword ptr [rsp], rbx
	lea	r15, [rsp + 0x10]
	lea	rsi, [rsi]
	movsd	xmm0,  qword ptr [word ptr [rip + label_785]]
	movsd	qword ptr [rsp + 0x90], xmm0
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12, rax
	nop	dword ptr [rax]
.label_790:
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	pthread_sigmask
	test	eax, eax
	lea	rdi, [rdi]
	sete	byte ptr [rsp + 8]
	nop	
	mov	r14,  qword ptr [word ptr [rip + temphead]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + temphead]],  0
	call	fork
	mov	ebp, eax
	mov	rsp, rsp
	mov	ebx, dword ptr [r12]
	test	ebp, ebp
	je	.label_788
	mov	qword ptr [word ptr [rip + temphead]],  r14
.label_788:
	nop	
	cmp	byte ptr [rsp + 8], 0
	je	.label_781
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	pthread_sigmask
.label_781:
	lea	rsi, [rsi]
	mov	dword ptr [r12], ebx
	mov	rsp, rsp
	test	ebp, ebp
	jns	.label_780
	lea	rdi, [rdi]
	cmp	ebx, 0xb
	nop	
	jne	.label_780
	dec	r13
	movsd	xmm0, qword ptr [rsp + 0x90]
	mov	rbp, rbp
	call	xnanosleep
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	jle	.label_782
	nop	word ptr cs:[rax + rax]
.label_787:
	mov	rbp, rbp
	xor	edi, edi
	call	reap
	test	eax, eax
	je	.label_782
	mov	eax,  dword ptr [dword ptr [rip + nprocs]]
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jg	.label_787
.label_782:
	mov	rbp, rbp
	movsd	xmm0, qword ptr [rsp + 0x90]
	addsd	xmm0, xmm0
	movsd	qword ptr [rsp + 0x90], xmm0
	test	r13, r13
	jne	.label_790
.label_780:
	mov	rbp, rbp
	test	ebp, ebp
	js	.label_784
	je	.label_779
	inc	dword ptr [dword ptr [rip + nprocs]]
	nop	
	jmp	.label_783
.label_779:
	xor	ebp, ebp
	xor	edi, edi
	nop	
	call	close
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	call	close
	jmp	.label_783
.label_784:
	call	__errno_location
	mov	rsp, rsp
	mov	r15, rax
	lea	rdi, [rdi]
	mov	r14d, dword ptr [r15]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbx]
	lea	rdi, [rdi]
	call	close
	nop	
	mov	edi, dword ptr [rbx + 4]
	mov	rsp, rsp
	call	close
	mov	rbp, rbp
	mov	dword ptr [r15], r14d
.label_783:
	mov	rbp, rbp
	mov	eax, ebp
	nop	
	add	rsp, 0x98
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d870

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
	je	.label_791
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
.label_791:
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
	.align	16
	#Procedure 0x40d920

	.globl reap
	.type reap, @function
reap:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
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
	js	.label_792
	jle	.label_794
	test	ebp, ebp
	mov	rbp, rbp
	jg	.label_795
	mov	dword ptr [rsp + 0x10], ebx
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 8]
	mov	rbp, rbp
	call	hash_delete
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_794
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0xc], 2
.label_795:
	movzx	eax, word ptr [rsp + 4]
	test	ax, 0xff7f
	jne	.label_793
	dec	dword ptr [dword ptr [rip + nprocs]]
.label_794:
	lea	rdi, [rdi]
	mov	eax, ebx
	add	rsp, 0x18
	pop	rbx
	pop	rbp
	ret	
.label_792:
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.170
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	rbp, rbp
	mov	edi, 4
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
.label_793:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.171
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 2
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rbx
	nop	
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da60

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
	.align	16
	#Procedure 0x40da80

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
	.align	16
	#Procedure 0x40daa0

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
	sub	rsp, 0xa8
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:temphead
	nop	word ptr cs:[rax + rax]
.label_797:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp]
	lea	rax, [rbx + 0xd]
	lea	rdi, [rdi]
	cmp	rax, r14
	mov	rsp, rsp
	jne	.label_797
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 0xc]
	cmp	eax, 1
	nop	
	jne	.label_796
	mov	rbp, rbp
	mov	r15d, dword ptr [rbx + 8]
	mov	dword ptr [rsp + 0x98], r15d
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	lea	rsi, [rsp + 0x90]
	mov	rsp, rsp
	call	hash_delete
	test	rax, rax
	mov	rsp, rsp
	je	.label_796
	mov	rbp, rbp
	mov	byte ptr [rax + 0xc], 2
	mov	edi, r15d
	nop	
	call	reap
.label_796:
	mov	r12, qword ptr [rbx]
	lea	r15, [rsp + 0x10]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	lea	rsi, [rsi]
	call	pthread_sigmask
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	sete	byte ptr [rsp + 8]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	unlink
	mov	rbp, rbp
	mov	r13d, eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xa4], eax
	mov	rbp, rbp
	mov	qword ptr [rbp], r12
	cmp	byte ptr [rsp + 8], 0
	nop	
	je	.label_798
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	pthread_sigmask
.label_798:
	test	r13d, r13d
	lea	rdi, [rdi]
	je	.label_800
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.174
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	r15, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, r14
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0xa4]
	mov	rsp, rsp
	mov	rdx, r15
	lea	rsi, [rsi]
	call	error
.label_800:
	test	r12, r12
	lea	rsi, [rsi]
	jne	.label_799
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + temptail]],  rbp
.label_799:
	mov	rdi, rbx
	call	free
	add	rsp, 0xa8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dc40

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
	sub	rsp, 0xb8
	mov	qword ptr [rsp + 0x78], r9
	mov	qword ptr [rsp + 0x88], r8
	mov	r14, rcx
	nop	
	mov	qword ptr [rsp + 0x38], rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	rbp, qword ptr [r14 + 0x28]
	mov	r15, qword ptr [r14 + 0x30]
	mov	r13, r12
	shr	r13, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], r13
	mov	qword ptr [rsp + 0x50], rdx
	mov	rax, qword ptr [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	qword ptr [rsp + 0x60], r8
	mov	qword ptr [rsp + 0x68], r9
	mov	qword ptr [rsp + 0x70], rcx
	cmp	r12, 2
	jb	.label_836
	lea	rax, [r15 + rbp]
	mov	rbp, rbp
	cmp	rax, 0x20000
	jb	.label_836
	lea	rdi, [rsp + 0xa0]
	lea	rcx, [rsp + 0x40]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, OFFSET FLAT:sortlines_thread
	lea	rsi, [rsi]
	call	pthread_create
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	je	.label_866
	mov	r15, qword ptr [r14 + 0x30]
.label_836:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	shl	rax, 5
	mov	r12, rbx
	sub	r12, rax
	cmp	r15, 2
	mov	rbp, rbp
	jb	.label_805
	mov	rax, rbp
	mov	rbp, rbp
	shl	rax, 5
	mov	rdi, rbx
	mov	rsp, rsp
	sub	rdi, rax
	mov	rax, rbp
	mov	rsp, rsp
	shl	rax, 4
	and	rax, 0xffffffffffffffe0
	mov	rdx, r12
	lea	rsi, [rsi]
	sub	rdx, rax
	nop	
	xor	ecx, ecx
	mov	rsi, r15
	mov	rsp, rsp
	call	sequential_sort
.label_805:
	mov	rbp, rbp
	cmp	rbp, 2
	mov	rsp, rsp
	jb	.label_822
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r12
	mov	rsp, rsp
	call	sequential_sort
.label_822:
	mov	rsp, rsp
	mov	qword ptr [r14], rbx
	lea	rsi, [rsi]
	shl	rbp, 5
	sub	rbx, rbp
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 8], rbx
	mov	qword ptr [r14 + 0x10], rbx
	lea	rdi, [rdi]
	shl	r15, 5
	lea	rsi, [rsi]
	sub	rbx, r15
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x18], rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x88]
	lea	r15, [rbx + 8]
	nop	
	mov	qword ptr [rsp + 0xb0], r15
	lea	rdi, [rdi]
	mov	rdi, r15
	call	pthread_mutex_lock
	mov	rdi, qword ptr [rbx]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	lea	r13, [rbx + 0x30]
	mov	qword ptr [rsp + 0xa8], r13
	nop	
	mov	rdi, r13
	lea	rdi, [rdi]
	call	pthread_cond_signal
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	jmp	.label_802
	nop	dword ptr [rax]
.label_815:
	mov	rdi, rbp
.label_802:
	lea	rdi, [rdi]
	call	pthread_mutex_unlock
	lea	rdi, [rdi]
	mov	rdi, r15
	call	pthread_mutex_lock
	nop	
	jmp	.label_859
	nop	dword ptr [rax]
.label_816:
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rsp, rsp
	call	pthread_cond_wait
.label_859:
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	heap_remove_top
	mov	r12, rax
	mov	rbp, rbp
	test	r12, r12
	mov	rsp, rsp
	je	.label_816
	mov	rdi, r15
	call	pthread_mutex_unlock
	mov	rsp, rsp
	lea	rbp, [r12 + 0x58]
	nop	
	mov	rdi, rbp
	call	pthread_mutex_lock
	mov	byte ptr [r12 + 0x54], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12 + 0x50]
	test	eax, eax
	mov	rsp, rsp
	je	.label_830
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	ecx, [rax + rax + 2]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	shr	rdx, cl
	lea	r14, [rdx + 1]
	cmp	eax, 1
	mov	rsp, rsp
	jbe	.label_838
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x90], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], rax
	mov	rax, qword ptr [rax]
	cmp	rdi, rcx
	je	.label_821
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rbp
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], rcx
	cmp	rsi, rcx
	mov	qword ptr [rsp + 0x20], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rdi
	mov	rbp, rbp
	mov	rcx, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rsi
	mov	r15, rdi
	mov	rbp, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdi
	mov	rbp, rbp
	je	.label_862
	nop	dword ptr [rax]
.label_861:
	mov	rsp, rsp
	mov	r13, rax
	mov	r14, rdx
	mov	rsp, rsp
	cmp	r14, -1
	mov	rsp, rsp
	je	.label_814
	lea	rsi, [rsi]
	lea	rbp, [r15 - 0x20]
	lea	rbx, [rcx - 0x20]
	mov	rdi, rbp
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x28], rcx
	call	compare
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	jle	.label_831
	mov	rsp, rsp
	mov	qword ptr [r12 + 8], rbx
	movups	xmm0, xmmword ptr [rbx]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	lea	rdi, [rdi]
	movups	xmmword ptr [r13 - 0x20], xmm0
	nop	
	mov	qword ptr [rsp + 0x20], rbx
	nop	
	mov	rcx, rbx
	lea	rsi, [rsi]
	jmp	.label_834
	nop	dword ptr [rax]
.label_831:
	mov	qword ptr [r12], rbp
	movups	xmm0, xmmword ptr [rbp]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	movups	xmmword ptr [r13 - 0x20], xmm0
	nop	
	mov	qword ptr [rsp + 0x30], rbp
	mov	r15, rbp
	nop	
	mov	rcx, qword ptr [rsp + 0x28]
.label_834:
	mov	rsp, rsp
	cmp	r15, qword ptr [rsp + 0x90]
	je	.label_855
	lea	rax, [r13 - 0x20]
	mov	rsp, rsp
	lea	rdx, [r14 - 1]
	cmp	rcx, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	jne	.label_861
	mov	rax, r15
	jmp	.label_808
	nop	dword ptr [rax]
.label_838:
	mov	r13, qword ptr [r12 + 0x10]
	cmp	rdi, r13
	mov	rbp, rbp
	je	.label_825
	mov	qword ptr [rsp + 0x90], r13
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rsp + 0x28], rcx
	lea	rdi, [rdi]
	mov	rbx, r12
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x30], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rdi
	nop	
	mov	qword ptr [rsp + 0x98], rsi
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x18], rsi
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdi
	nop	word ptr cs:[rax + rax]
.label_832:
	mov	r15, r14
	lea	rsi, [rsi]
	cmp	rbp, rcx
	nop	
	je	.label_835
	test	r15, r15
	je	.label_839
	mov	rsp, rsp
	lea	r13, [r12 - 0x20]
	nop	
	mov	r14, rbp
	lea	rbp, [r14 - 0x20]
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, rbp
	nop	
	call	compare
	test	eax, eax
	lea	rsi, [rsi]
	jle	.label_848
	mov	qword ptr [rbx + 8], rbp
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_850
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	je	.label_856
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:saved_line
	mov	rbp, rbp
	mov	rdi, rbp
	call	compare
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_868
.label_856:
	nop	
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [word ptr [rip + label_22]],  xmm1
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_850:
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	call	write_line
.label_868:
	mov	qword ptr [rsp + 0x20], rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rbp
	mov	r13, r12
	lea	rsi, [rsi]
	jmp	.label_813
	nop	dword ptr [rax]
.label_848:
	lea	rsi, [rsi]
	mov	qword ptr [rbx], r13
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, r14
	mov	rsp, rsp
	jne	.label_824
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	mov	rbp, rbp
	je	.label_844
	mov	esi, OFFSET FLAT:saved_line
	lea	rsi, [rsi]
	mov	rdi, r13
	call	compare
	nop	
	test	eax, eax
	je	.label_841
.label_844:
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmmword ptr [word ptr [rip + label_22]],  xmm1
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_824:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	call	write_line
.label_841:
	mov	qword ptr [rsp + 0x30], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], r13
.label_813:
	mov	rcx, qword ptr [rsp + 0x28]
	lea	r14, [r15 - 1]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	mov	r12, r13
	jne	.label_832
	mov	r13, qword ptr [rsp + 0x90]
	mov	r12, r13
	nop	
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsp, rsp
	jmp	.label_863
.label_821:
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x90], rdi
	mov	rsp, rsp
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	rsp, rsp
	mov	rbp, rdi
	jmp	.label_810
.label_825:
	mov	rbx, r12
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x20], rsi
	nop	
	mov	qword ptr [rsp + 0x30], rdi
	nop	
	mov	r12, rdi
	nop	
	mov	rcx, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], rdi
	mov	rdx, rsi
	lea	rsi, [rsi]
	jmp	.label_820
.label_835:
	mov	r14, r15
	nop	
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	jmp	.label_820
.label_839:
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	mov	r13, qword ptr [rsp + 0x90]
.label_863:
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	dec	r15
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	mov	r14, r15
.label_820:
	mov	rax, rsi
	mov	rbp, rbp
	sub	rax, rdx
	nop	
	sar	rax, 5
	mov	r15, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	cmp	r15, rax
	jne	.label_858
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x90], rbx
	nop	
	cmp	r12, r13
	lea	rsi, [rsi]
	je	.label_803
	mov	rbp, rbp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_803
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x18], rsi
	nop	
	add	r12, -0x20
	nop	
	mov	ebp, 1
	sub	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_849:
	mov	rbp, rbp
	mov	rbx, r12
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	jne	.label_817
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	je	.label_828
	nop	
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, rbx
	mov	rsp, rsp
	call	compare
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_827
.label_828:
	movups	xmm0, xmmword ptr [rbx]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [word ptr [rip + label_22]],  xmm1
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_817:
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0xf0]
	call	write_line
.label_827:
	mov	rsp, rsp
	cmp	r13, rbx
	mov	rsp, rsp
	je	.label_864
	lea	r12, [rbx - 0x20]
	test	rbp, rbp
	nop	
	lea	rbp, [rbp + 1]
	jne	.label_849
.label_864:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x90]
	mov	qword ptr [r12], rbx
	mov	r15, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_819
	nop	word ptr cs:[rax + rax]
.label_858:
	nop	
	mov	rax, rdi
	sub	rax, qword ptr [rsp + 0x80]
	sar	rax, 5
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x28], rax
	mov	r12, rbx
	jne	.label_806
	test	r14, r14
	mov	rsp, rsp
	je	.label_806
	nop	
	mov	r13, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	cmp	rcx, r13
	nop	
	je	.label_806
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	add	rcx, -0x20
	mov	ebx, 1
	lea	rsi, [rsi]
	sub	rbx, r14
	nop	
.label_833:
	lea	rsi, [rsi]
	mov	rbp, rcx
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_829
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	lea	rdi, [rdi]
	je	.label_837
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:saved_line
	nop	
	mov	rdi, rbp
	call	compare
	test	eax, eax
	je	.label_842
.label_837:
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	movups	xmmword ptr [word ptr [rip + label_22]],  xmm1
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_829:
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	call	write_line
.label_842:
	cmp	r13, rbp
	nop	
	je	.label_857
	lea	rcx, [rbp - 0x20]
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rbx, [rbx + 1]
	lea	rsi, [rsi]
	jne	.label_833
.label_857:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 8], rbp
	mov	r8, r15
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0xa8]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_811
.label_806:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	r8, r15
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xb0]
	mov	r13, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	jmp	.label_811
.label_803:
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x90]
.label_819:
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	jmp	.label_811
.label_814:
	mov	rbp, r15
	jmp	.label_843
.label_855:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x90]
.label_808:
	mov	rbp, r15
	nop	
	add	r13, -0x20
	nop	
	mov	r15, rax
.label_843:
	mov	rax, r13
.label_862:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
.label_810:
	mov	rsp, rsp
	mov	rdx, rsi
	lea	rdi, [rdi]
	sub	rdx, rcx
	mov	rbp, rbp
	sar	rdx, 5
	mov	r8, qword ptr [r12 + 0x30]
	lea	rdi, [rdi]
	cmp	r8, rdx
	jne	.label_852
	cmp	r15, qword ptr [rsp + 0x90]
	je	.label_801
	test	r14, r14
	je	.label_801
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x18], rsi
	nop	
	mov	rcx, qword ptr [r12 + 0x10]
	lea	rdi, [rdi]
	add	r15, -0x20
	mov	rbp, rbp
	mov	edx, 1
	mov	rsp, rsp
	sub	rdx, r14
	nop	
.label_818:
	mov	rbp, rbp
	mov	rbx, r15
	movups	xmm0, xmmword ptr [rbx]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	nop	
	movups	xmmword ptr [rax - 0x10], xmm1
	movups	xmmword ptr [rax - 0x20], xmm0
	lea	rax, [rax - 0x20]
	cmp	rcx, rbx
	mov	rbp, rbp
	je	.label_854
	lea	r15, [rbx - 0x20]
	test	rdx, rdx
	nop	
	lea	rdx, [rdx + 1]
	jne	.label_818
.label_854:
	nop	
	mov	qword ptr [r12], rbx
	nop	
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_826
	nop	dword ptr [rax]
.label_852:
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	sub	rdx, rbp
	lea	rsi, [rsi]
	sar	rdx, 5
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x28], rdx
	jne	.label_801
	mov	rsp, rsp
	test	r14, r14
	je	.label_801
	mov	rbx, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	cmp	rcx, rbx
	mov	rsp, rsp
	je	.label_801
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x18], rsi
	add	rcx, -0x20
	lea	rsi, [rsi]
	mov	edx, 1
	sub	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_807:
	mov	rsp, rsp
	mov	rbp, rcx
	movups	xmm0, xmmword ptr [rbp]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [rax - 0x10], xmm1
	movups	xmmword ptr [rax - 0x20], xmm0
	lea	rax, [rax - 0x20]
	cmp	rbx, rbp
	je	.label_865
	lea	rcx, [rbp - 0x20]
	lea	rsi, [rsi]
	test	rdx, rdx
	lea	rdx, [rdx + 1]
	lea	rsi, [rsi]
	jne	.label_807
.label_865:
	mov	qword ptr [r12 + 8], rbp
	mov	r15, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0xa8]
	jmp	.label_809
	nop	
.label_801:
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x18], rsi
	nop	
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x20]
.label_809:
	nop	
	mov	rbx, qword ptr [rsp + 0x30]
.label_826:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	qword ptr [rcx], rax
.label_811:
	mov	rcx, qword ptr [rsp + 8]
	sub	rcx, rbx
	sar	rcx, 5
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, rbp
	mov	rsp, rsp
	sar	rax, 5
	lea	rdi, [rdi]
	sub	qword ptr [r12 + 0x28], rcx
	mov	rsp, rsp
	sub	r8, rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x30], r8
	cmp	byte ptr [r12 + 0x54], 0
	jne	.label_804
	mov	rcx, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	nop	
	cmp	rcx, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	jne	.label_847
	cmp	rax, rcx
	je	.label_804
	cmp	qword ptr [r12 + 0x28], 0
	mov	rbp, rbp
	jne	.label_804
	lea	rsi, [rsi]
	jmp	.label_860
.label_847:
	cmp	rax, rcx
	jne	.label_860
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x30], 0
	mov	rbp, rbp
	jne	.label_804
.label_860:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	pthread_mutex_lock
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rax]
	mov	rsi, r12
	mov	rbp, rbp
	call	heap_insert
	mov	byte ptr [r12 + 0x54], 1
	mov	rdi, r13
	mov	rbp, rbp
	call	pthread_cond_signal
	mov	rdi, r15
	call	pthread_mutex_unlock
	nop	dword ptr [rax + rax]
.label_804:
	cmp	dword ptr [r12 + 0x50], 2
	mov	rbp, qword ptr [rsp + 0x10]
	jb	.label_851
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r12 + 0x38]
	add	rdi, 0x58
	nop	
	call	pthread_mutex_lock
	lea	rsi, [rsi]
	mov	r14, qword ptr [r12 + 0x38]
	cmp	byte ptr [r14 + 0x54], 0
	je	.label_823
	nop	
	mov	rbx, qword ptr [rsp + 0x88]
	jmp	.label_812
	nop	dword ptr [rax]
.label_851:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, qword ptr [r12 + 0x30]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x88]
	jne	.label_815
	mov	r14, qword ptr [r12 + 0x38]
	mov	rdi, r15
	call	pthread_mutex_lock
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	mov	rdi, r13
	mov	rbp, rbp
	call	pthread_cond_signal
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	jmp	.label_846
.label_823:
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 8]
	cmp	rcx, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x18]
	jne	.label_867
	cmp	rax, rcx
	lea	rdi, [rdi]
	je	.label_840
	cmp	qword ptr [r14 + 0x28], 0
	mov	rbx, qword ptr [rsp + 0x88]
	jne	.label_812
	jmp	.label_845
.label_867:
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jne	.label_845
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_812
.label_845:
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	call	pthread_mutex_lock
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, r14
	mov	rsp, rsp
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	mov	rdi, r13
	mov	rsp, rsp
	call	pthread_cond_signal
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rbp, rbp
	call	pthread_mutex_unlock
	mov	r14, qword ptr [r12 + 0x38]
	lea	rdi, [rdi]
	jmp	.label_812
.label_840:
	mov	rbx, qword ptr [rsp + 0x88]
	nop	
.label_812:
	lea	rsi, [rsi]
	add	r14, 0x58
	mov	rdi, r14
.label_846:
	call	pthread_mutex_unlock
	lea	rsi, [rsi]
	jmp	.label_815
.label_830:
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	pthread_mutex_unlock
	mov	rdi, r15
	lea	rsi, [rsi]
	call	pthread_mutex_lock
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	mov	rsi, r12
	call	heap_insert
	mov	byte ptr [r12 + 0x54], 1
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rsi, [rsi]
	call	pthread_cond_signal
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rbp, rbp
	call	pthread_mutex_unlock
	mov	rsp, rsp
	jmp	.label_853
.label_866:
	sub	r12, r13
	shl	rbp, 5
	sub	rbx, rbp
	mov	rcx, qword ptr [r14 + 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x38]
	nop	
	mov	r8, qword ptr [rsp + 0x88]
	mov	r9, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	call	sortlines
	nop	
	mov	rdi, qword ptr [rsp + 0xa0]
	xor	esi, esi
	mov	rbp, rbp
	call	pthread_join
.label_853:
	lea	rsi, [rsi]
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ea50

	.globl compare_nodes
	.type compare_nodes, @function
compare_nodes:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsi + 0x50]
	cmp	dword ptr [rdi + 0x50], eax
	mov	rbp, rbp
	jne	.label_869
	mov	rax, qword ptr [rdi + 0x30]
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x30]
	add	rcx, qword ptr [rsi + 0x28]
	nop	
	cmp	rax, rcx
.label_869:
	nop	
	setb	al
	lea	rsi, [rsi]
	movzx	eax, al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ea80

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
	jmp	.label_870
.label_871:
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
.label_870:
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
	jae	.label_871
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
	.align	16
	#Procedure 0x40ebe0

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
	.align	16
	#Procedure 0x40ec20

	.globl sequential_sort
	.type sequential_sort, @function
sequential_sort:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	ebx, ecx
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rsp, rsp
	cmp	rbp, 2
	jne	.label_876
	nop	
	lea	rbp, [rdi - 0x20]
	mov	rsp, rsp
	lea	r14, [rdi - 0x40]
	mov	r15, rdi
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, r14
	call	compare
	lea	rdi, [rdi]
	test	bl, bl
	mov	rbp, rbp
	je	.label_878
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	setg	al
	mov	rsp, rsp
	movzx	eax, al
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	not	rcx
	mov	rbp, rbp
	shl	rcx, 5
	movups	xmm0, xmmword ptr [r15 + rcx]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [r15 + rcx + 0x10]
	lea	rdi, [rdi]
	movups	xmmword ptr [r13 - 0x10], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [r13 - 0x20], xmm0
	shl	rax, 5
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rax + r15 - 0x40]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rax + r15 - 0x30]
	lea	rsi, [rsi]
	movups	xmmword ptr [r13 - 0x30], xmm1
	movups	xmmword ptr [r13 - 0x40], xmm0
	jmp	.label_873
.label_876:
	nop	
	mov	r14, rbp
	shr	r14, 1
	mov	r15, rbp
	sub	r15, r14
	lea	rdi, [rdi]
	mov	r12, r14
	neg	r12
	mov	rax, r14
	shl	rax, 5
	mov	qword ptr [rsp], rdi
	nop	
	sub	rdi, rax
	xor	edx, edx
	test	bl, bl
	cmovne	rdx, r12
	shl	rdx, 5
	add	rdx, r13
	movzx	ecx, bl
	mov	rsi, r15
	call	sequential_sort
	cmp	rbp, 4
	jb	.label_880
	mov	al, bl
	mov	rsp, rsp
	xor	al, 1
	movzx	ecx, al
	mov	rbp, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	mov	rdx, r13
	mov	rbp, rbp
	call	sequential_sort
	lea	rsi, [rsi]
	mov	rax, rbp
	jmp	.label_874
.label_878:
	lea	rsi, [rsi]
	test	eax, eax
	jle	.label_873
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	mov	rsp, rsp
	movups	xmmword ptr [r13 - 0x10], xmm1
	mov	rbp, rbp
	movups	xmmword ptr [r13 - 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [r14]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0x10], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rbp], xmm0
	movups	xmm0, xmmword ptr [r13 - 0x20]
	movups	xmm1, xmmword ptr [r13 - 0x10]
	mov	rbp, rbp
	movups	xmmword ptr [r14 + 0x10], xmm1
	movups	xmmword ptr [r14], xmm0
	jmp	.label_873
.label_880:
	mov	rbp, rbp
	test	bl, bl
	mov	rax, qword ptr [rsp]
	nop	
	jne	.label_874
	nop	
	movups	xmm0, xmmword ptr [rax - 0x20]
	nop	
	movups	xmm1, xmmword ptr [rax - 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	movups	xmmword ptr [r13 - 0x20], xmm0
.label_874:
	nop	
	test	bl, bl
	mov	rbx, rax
	mov	rbp, rbp
	cmovne	rbx, r13
	cmovne	r13, rax
	lea	rdi, [rdi]
	shl	r12, 5
	mov	rbp, rbp
	add	r12, rbx
.label_877:
	lea	rax, [r13 - 0x20]
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_879:
	mov	rsp, rsp
	lea	rbp, [r12 - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	nop	
	mov	rsi, rbp
	call	compare
	mov	rsp, rsp
	add	rbx, -0x20
	test	eax, eax
	mov	rbp, rbp
	jle	.label_875
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [r12 - 0x20]
	movups	xmm1, xmmword ptr [r12 - 0x10]
	movups	xmmword ptr [rbx + 0x10], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx], xmm0
	dec	r15
	mov	r12, rbp
	jne	.label_879
	lea	rdi, [rdi]
	jmp	.label_872
	nop	dword ptr [rax]
.label_875:
	mov	r13, qword ptr [rsp]
	movups	xmm0, xmmword ptr [r13]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmmword ptr [rbx + 0x10], xmm1
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	dec	r14
	jne	.label_877
	nop	
	jmp	.label_873
.label_872:
	lea	rax, [r14 - 1]
	test	r14b, 7
	je	.label_881
	nop	
	mov	ecx, r14d
	lea	rsi, [rsi]
	and	ecx, 7
	lea	rsi, [rsi]
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_882:
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [r13 - 0x20]
	movups	xmm1, xmmword ptr [r13 - 0x10]
	lea	r13, [r13 - 0x20]
	movups	xmmword ptr [rbx - 0x10], xmm1
	movups	xmmword ptr [rbx - 0x20], xmm0
	lea	rbx, [rbx - 0x20]
	dec	r14
	lea	rdi, [rdi]
	inc	rcx
	jne	.label_882
.label_881:
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	rax, 7
	mov	rbp, rbp
	jb	.label_873
	nop	word ptr [rax + rax]
.label_883:
	nop	
	movups	xmm0, xmmword ptr [r13 + rcx - 0x20]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [r13 + rcx - 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + rcx - 0x10], xmm1
	movups	xmmword ptr [rbx + rcx - 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [r13 + rcx - 0x40]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [r13 + rcx - 0x30]
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + rcx - 0x30], xmm1
	movups	xmmword ptr [rbx + rcx - 0x40], xmm0
	movups	xmm0, xmmword ptr [r13 + rcx - 0x60]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [r13 + rcx - 0x50]
	movups	xmmword ptr [rbx + rcx - 0x50], xmm1
	movups	xmmword ptr [rbx + rcx - 0x60], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [r13 + rcx - 0x80]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [r13 + rcx - 0x70]
	movups	xmmword ptr [rbx + rcx - 0x70], xmm1
	movups	xmmword ptr [rbx + rcx - 0x80], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [r13 + rcx - 0xa0]
	movups	xmm1, xmmword ptr [r13 + rcx - 0x90]
	movups	xmmword ptr [rbx + rcx - 0x90], xmm1
	movups	xmmword ptr [rbx + rcx - 0xa0], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [r13 + rcx - 0xc0]
	movups	xmm1, xmmword ptr [r13 + rcx - 0xb0]
	movups	xmmword ptr [rbx + rcx - 0xb0], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + rcx - 0xc0], xmm0
	movups	xmm0, xmmword ptr [r13 + rcx - 0xe0]
	movups	xmm1, xmmword ptr [r13 + rcx - 0xd0]
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + rcx - 0xd0], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rbx + rcx - 0xe0], xmm0
	movups	xmm0, xmmword ptr [r13 + rcx - 0x100]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [r13 + rcx - 0xf0]
	movups	xmmword ptr [rbx + rcx - 0xf0], xmm1
	nop	
	movups	xmmword ptr [rbx + rcx - 0x100], xmm0
	mov	rsp, rsp
	add	rcx, -0x100
	add	r14, -8
	nop	
	jne	.label_883
.label_873:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f020

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x40f030

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
	je	.label_890
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	je	.label_892
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	rbp, rbp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_891:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_884
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, r12
	lea	rsi, [rsi]
	je	.label_887
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_889
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
	je	.label_884
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_884
.label_889:
	mov	qword ptr [rsp + 0x18], rbx
	nop	dword ptr [rax + rax]
.label_884:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	lea	rsi, [rsi]
	add	r14, r13
	test	rbp, rbp
	jne	.label_891
	nop	
	jmp	.label_885
.label_890:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], -1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	jmp	.label_885
.label_892:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_888:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_886
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	nop	
	cmp	rax, r12
	je	.label_887
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, -1
	nop	
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x18], rax
	je	.label_886
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_886:
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	nop	
	jne	.label_888
.label_885:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 0x18]
.label_887:
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
	.align	16
	#Procedure 0x40f230
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
	je	.label_893
	mov	esi, OFFSET FLAT:.str.1_1
	nop	
	jmp	.label_894
.label_893:
	nop	
	mov	esi, OFFSET FLAT:.str_3
.label_894:
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
	.align	16
	#Procedure 0x40f2d0

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
	mov	esi, OFFSET FLAT:.str.2_0
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
	je	.label_900
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_896:
	test	r15, r15
	mov	rbp, rbp
	je	.label_895
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_899
.label_895:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_898
	nop	dword ptr [rax]
.label_899:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_898:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_896
.label_900:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_897
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
.label_897:
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
	.align	16
	#Procedure 0x40f450

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
	jns	.label_903
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_901
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	jmp	.label_902
.label_901:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_3
.label_902:
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
.label_903:
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
	.align	16
	#Procedure 0x40f570
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
	je	.label_904
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_905:
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
	je	.label_904
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_905
.label_904:
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
	.align	16
	#Procedure 0x40f600
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
	#Procedure 0x40f610
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f620

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
	je	.label_909
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_906
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_906
.label_909:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_907
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_906:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_908
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
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
.label_907:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_908:
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f720

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_910]]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x10], 0
	mov	rsp, rsp
	mov	dword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f750
	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:

	nop
	mov	eax, dword ptr [rdi]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rdi + 4]
	nop	
	mov	dword ptr [rsi + 4], eax
	mov	eax, dword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsi + 8], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi + 0xc]
	mov	rsp, rsp
	mov	dword ptr [rsi + 0xc], eax
	lea	rsi, [rsi]
	mov	rax, rsi
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f780

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
	jae	.label_911
	inc	dword ptr [rbx + 0x14]
.label_911:
	lea	edx, [rcx*8]
	lea	r12, [rbx + 0x1c]
	mov	dword ptr [rbx + r15*4 + 0x14], edx
	mov	rbp, rbp
	mov	edx, dword ptr [rbx + 0x14]
	shld	edx, ecx, 3
	mov	rbp, rbp
	mov	dword ptr [rbx + r15*4 + 0x18], edx
	mov	rsp, rsp
	lea	rdi, [rbx + rax + 0x1c]
	mov	rsp, rsp
	lea	rdx, [r15*4 - 8]
	mov	rsp, rsp
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf_0
	call	memcpy
	mov	rsp, rsp
	shl	r15, 2
	mov	rdi, r12
	nop	
	mov	rsi, r15
	mov	rdx, rbx
	call	md5_process_block
	mov	eax, dword ptr [rbx]
	mov	dword ptr [r14], eax
	mov	eax, dword ptr [rbx + 4]
	mov	dword ptr [r14 + 4], eax
	nop	
	mov	eax, dword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 8], eax
	nop	
	mov	eax, dword ptr [rbx + 0xc]
	mov	rbp, rbp
	mov	dword ptr [r14 + 0xc], eax
	lea	rsi, [rsi]
	mov	rax, r14
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f860

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
	mov	qword ptr [rsp - 0x58], rdx
	mov	rax, rsi
	nop	
	and	rax, 0xfffffffffffffffc
	add	rax, rdi
	mov	qword ptr [rsp - 8], rax
	lea	rdi, [rdi]
	mov	r10d, dword ptr [rdx]
	mov	ebx, dword ptr [rdx + 4]
	mov	rbp, rbp
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	mov	r8, rsi
	nop	
	shr	r8, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	add	ecx, esi
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x10], ecx
	mov	rbp, rbp
	adc	r8d, 0
	mov	rsp, rsp
	add	dword ptr [rdx + 0x14], r8d
	cmp	rdi, rax
	mov	rsp, rsp
	jae	.label_913
	nop	word ptr cs:[rax + rax]
.label_912:
	nop	
	mov	qword ptr [rsp - 0x50], rbx
	mov	qword ptr [rsp - 0x70], r9
	mov	qword ptr [rsp - 0x48], rbp
	nop	
	mov	dword ptr [rsp - 0x34], r10d
	mov	eax, r9d
	xor	eax, ebp
	and	eax, ebx
	mov	rbp, rbp
	xor	eax, ebp
	add	eax, r10d
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rdi]
	mov	qword ptr [rsp - 0x80], rcx
	nop	
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 0x10], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	rol	edx, 7
	mov	rax, qword ptr [rsp - 0x50]
	mov	rsp, rsp
	add	edx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp - 0x50]
	mov	rsp, rsp
	xor	eax, r9d
	and	eax, edx
	mov	rsp, rsp
	xor	eax, r9d
	lea	rsi, [rsi]
	lea	ecx, [rbp + rsi]
	lea	ebp, [rax + rcx - 0x173848aa]
	lea	rdi, [rdi]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	mov	rcx, qword ptr [rsp - 0x50]
	lea	rdi, [rdi]
	xor	eax, ecx
	and	eax, ebp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp - 0x50]
	mov	rsp, rsp
	xor	eax, ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rdi + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp - 0x78], rcx
	lea	ecx, [r9 + rcx]
	lea	rsi, [rsi]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	add	ebx, ebp
	nop	
	mov	eax, ebp
	lea	rdi, [rdi]
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	esi, dword ptr [rdi + 0xc]
	mov	rsp, rsp
	mov	qword ptr [rsp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp - 0x50]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	lea	eax, [rax + rcx - 0x3e423112]
	lea	rsi, [rsi]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	xor	ecx, ebp
	mov	rsp, rsp
	and	ecx, eax
	mov	rsp, rsp
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	mov	dword ptr [rsp - 0x40], esi
	nop	
	add	edx, esi
	nop	
	lea	ecx, [rcx + rdx - 0xa83f051]
	nop	
	rol	ecx, 7
	add	ecx, eax
	nop	
	mov	edx, eax
	lea	rsi, [rsi]
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x14], esi
	add	ebp, esi
	nop	
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	xor	edx, eax
	mov	rsp, rsp
	and	edx, r8d
	mov	rsp, rsp
	xor	edx, eax
	mov	esi, dword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	dword ptr [rsp - 0x64], esi
	add	ebx, esi
	mov	rsp, rsp
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	mov	rbp, rbp
	rol	ebx, 0x11
	add	ebx, r8d
	lea	rdi, [rdi]
	mov	ebp, r8d
	mov	rbp, rbp
	xor	ebp, ecx
	nop	
	and	ebp, ebx
	mov	rsp, rsp
	xor	ebp, ecx
	mov	rsp, rsp
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x2c], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	rol	r9d, 0x16
	mov	rbp, rbp
	add	r9d, ebx
	mov	eax, ebx
	mov	rbp, rbp
	xor	eax, r8d
	and	eax, r9d
	lea	rsi, [rsi]
	xor	eax, r8d
	mov	edx, dword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	dword ptr [rsp - 0x60], edx
	mov	rsp, rsp
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	rol	ecx, 7
	mov	rbp, rbp
	add	ecx, r9d
	mov	rsp, rsp
	mov	eax, r9d
	xor	eax, ebx
	mov	rsp, rsp
	and	eax, ecx
	xor	eax, ebx
	mov	rbp, rbp
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp - 0x38], edx
	add	r8d, edx
	lea	rsi, [rsi]
	lea	ebp, [rax + r8 - 0x74bb0851]
	rol	ebp, 0xc
	lea	rdi, [rdi]
	add	ebp, ecx
	nop	
	mov	eax, ecx
	lea	rsi, [rsi]
	xor	eax, r9d
	mov	rsp, rsp
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	mov	dword ptr [rsp - 0x18], edx
	nop	
	add	ebx, edx
	mov	r13d, edx
	lea	r15d, [rax + rbx - 0xa44f]
	lea	rsi, [rsi]
	rol	r15d, 0x11
	add	r15d, ebp
	mov	rbp, rbp
	mov	eax, ebp
	lea	rdi, [rdi]
	xor	eax, ecx
	lea	rdi, [rdi]
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	mov	dword ptr [rsp - 0x3c], edx
	add	r9d, edx
	lea	r11d, [rax + r9 - 0x76a32842]
	lea	rsi, [rsi]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	xor	eax, ebp
	mov	rbp, rbp
	mov	ebx, dword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rsp - 0x24], ebx
	add	ecx, ebx
	lea	ecx, [rax + rcx + 0x6b901122]
	mov	rsp, rsp
	rol	ecx, 7
	lea	rsi, [rsi]
	add	ecx, r11d
	mov	eax, r11d
	xor	eax, r15d
	lea	rsi, [rsi]
	and	eax, ecx
	mov	rsp, rsp
	xor	eax, r15d
	nop	
	mov	ebx, dword ptr [rdi + 0x34]
	mov	dword ptr [rsp - 0x28], ebx
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	add	r9d, ecx
	lea	rdi, [rdi]
	mov	eax, ecx
	xor	eax, r11d
	mov	rsp, rsp
	and	eax, r9d
	xor	eax, r11d
	mov	r14d, dword ptr [rdi + 0x38]
	nop	
	mov	dword ptr [rsp - 0x5c], r14d
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	add	r8d, r9d
	mov	rbp, rbp
	mov	eax, r9d
	xor	eax, ecx
	nop	
	and	eax, r8d
	xor	eax, ecx
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rdi + 0x3c]
	nop	
	mov	dword ptr [rsp - 0x30], ebp
	mov	rbp, rbp
	add	r11d, ebp
	mov	r15d, ebp
	lea	rsi, [rsi]
	lea	r11d, [rax + r11 + 0x49b40821]
	lea	rdi, [rdi]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	mov	rbp, rbp
	and	eax, r9d
	xor	eax, r8d
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp - 0x10]
	mov	rbp, rbp
	add	ecx, ebp
	lea	ecx, [rax + rcx - 0x9e1da9e]
	lea	rsi, [rsi]
	rol	ecx, 5
	lea	rdi, [rdi]
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	mov	rsp, rsp
	and	eax, r8d
	xor	eax, r11d
	mov	rbp, rbp
	add	r9d, esi
	lea	ebp, [rax + r9 - 0x3fbf4cc0]
	rol	ebp, 9
	lea	rdi, [rdi]
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	lea	rsi, [rsi]
	and	eax, r11d
	lea	rsi, [rsi]
	xor	eax, ecx
	add	r8d, edx
	nop	
	lea	r8d, [rax + r8 + 0x265e5a51]
	rol	r8d, 0xe
	mov	rsp, rsp
	add	r8d, ebp
	mov	rsp, rsp
	mov	eax, r8d
	mov	rbp, rbp
	xor	eax, ebp
	and	eax, ecx
	mov	rsp, rsp
	xor	eax, ebp
	lea	rdi, [rdi]
	add	r11d, r10d
	mov	rsp, rsp
	lea	r11d, [rax + r11 - 0x16493856]
	lea	rsi, [rsi]
	rol	r11d, 0x14
	mov	rbp, rbp
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	nop	
	and	eax, ebp
	nop	
	xor	eax, r8d
	nop	
	mov	r9d, dword ptr [rsp - 0x14]
	nop	
	add	ecx, r9d
	lea	ecx, [rax + rcx - 0x29d0efa3]
	rol	ecx, 5
	mov	rsp, rsp
	add	ecx, r11d
	lea	rsi, [rsi]
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	lea	rsi, [rsi]
	xor	eax, r11d
	lea	rdi, [rdi]
	add	ebp, r13d
	lea	rdi, [rdi]
	lea	ebp, [rax + rbp + 0x2441453]
	lea	rsi, [rsi]
	rol	ebp, 9
	mov	rbp, rbp
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	lea	rsi, [rsi]
	and	eax, r11d
	nop	
	xor	eax, ecx
	add	r8d, r15d
	mov	rbp, rbp
	lea	r8d, [rax + r8 - 0x275e197f]
	rol	r8d, 0xe
	add	r8d, ebp
	nop	
	mov	eax, r8d
	lea	rdi, [rdi]
	xor	eax, ebp
	and	eax, ecx
	lea	rdi, [rdi]
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x40]
	add	r11d, r10d
	lea	rsi, [rsi]
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	add	r11d, r8d
	lea	rdi, [rdi]
	mov	eax, r11d
	mov	rbp, rbp
	xor	eax, r8d
	and	eax, ebp
	lea	rsi, [rsi]
	xor	eax, r8d
	nop	
	add	ecx, dword ptr [rsp - 0x38]
	mov	rbp, rbp
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	nop	
	xor	eax, r11d
	lea	rdi, [rdi]
	mov	r13d, r14d
	mov	rbp, rbp
	add	ebp, r13d
	nop	
	lea	ebp, [rax + rbp - 0x3cc8f82a]
	mov	rbp, rbp
	rol	ebp, 9
	add	ebp, ecx
	mov	rbp, rbp
	mov	eax, ebp
	mov	rbp, rbp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	nop	
	add	r8d, r12d
	mov	rbp, rbp
	lea	r8d, [rax + r8 - 0xb2af279]
	rol	r8d, 0xe
	add	r8d, ebp
	lea	rdi, [rdi]
	mov	eax, r8d
	mov	rbp, rbp
	xor	eax, ebp
	mov	rsp, rsp
	and	eax, ecx
	xor	eax, ebp
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp - 0x60]
	mov	rbp, rbp
	add	r11d, esi
	lea	rdi, [rdi]
	lea	r11d, [rax + r11 + 0x455a14ed]
	rol	r11d, 0x14
	lea	rsi, [rsi]
	add	r11d, r8d
	nop	
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	lea	ecx, [rax + rcx - 0x561c16fb]
	nop	
	rol	ecx, 5
	mov	rbp, rbp
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	nop	
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x78]
	add	ebp, edx
	lea	rsi, [rsi]
	lea	r14d, [rax + rbp - 0x3105c08]
	rol	r14d, 9
	mov	rsp, rsp
	add	r14d, ecx
	nop	
	mov	eax, r14d
	nop	
	xor	eax, ecx
	lea	rdi, [rdi]
	and	eax, r11d
	xor	eax, ecx
	mov	rbp, rbp
	mov	edx, dword ptr [rsp - 0x2c]
	nop	
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x676f02d9]
	nop	
	rol	r8d, 0xe
	add	r8d, r14d
	lea	rdi, [rdi]
	mov	ebp, r8d
	xor	ebp, r14d
	mov	eax, ebp
	lea	rsi, [rsi]
	and	eax, ecx
	xor	eax, r14d
	nop	
	mov	r15d, dword ptr [rsp - 0x24]
	mov	rbp, rbp
	add	r11d, r15d
	mov	rsp, rsp
	lea	eax, [rax + r11 - 0x72d5b376]
	rol	eax, 0x14
	add	eax, r8d
	lea	rsi, [rsi]
	xor	ebp, eax
	lea	rdi, [rdi]
	add	ecx, r9d
	mov	rbp, rbp
	lea	r11d, [rbp + rcx - 0x5c6be]
	mov	rsp, rsp
	rol	r11d, 4
	add	r11d, eax
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	xor	ecx, r8d
	mov	rsp, rsp
	xor	ecx, r11d
	lea	rdi, [rdi]
	add	r14d, esi
	lea	rdi, [rdi]
	lea	r14d, [rcx + r14 - 0x788e097f]
	lea	rdi, [rdi]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	ebp, r11d
	lea	rdi, [rdi]
	xor	ebp, eax
	lea	rdi, [rdi]
	xor	ebp, r14d
	add	r8d, dword ptr [rsp - 0x3c]
	lea	ebp, [rbp + r8 + 0x6d9d6122]
	mov	rbp, rbp
	rol	ebp, 0x10
	add	ebp, r14d
	lea	rsi, [rsi]
	mov	ecx, r14d
	mov	rbp, rbp
	xor	ecx, r11d
	xor	ecx, ebp
	add	eax, r13d
	mov	rbp, rbp
	lea	r8d, [rcx + rax - 0x21ac7f4]
	rol	r8d, 0x17
	nop	
	add	r8d, ebp
	mov	eax, ebp
	nop	
	xor	eax, r14d
	mov	rsp, rsp
	xor	eax, r8d
	mov	rcx, qword ptr [rsp - 0x10]
	add	r11d, ecx
	mov	rbp, rbp
	lea	r11d, [rax + r11 - 0x5b4115bc]
	rol	r11d, 4
	lea	rsi, [rsi]
	add	r11d, r8d
	lea	rsi, [rsi]
	mov	ecx, r8d
	mov	rsp, rsp
	xor	ecx, ebp
	xor	ecx, r11d
	add	r14d, r10d
	lea	r14d, [rcx + r14 + 0x4bdecfa9]
	lea	rsi, [rsi]
	rol	r14d, 0xb
	add	r14d, r11d
	lea	rdi, [rdi]
	mov	eax, r11d
	lea	rsi, [rsi]
	xor	eax, r8d
	mov	rsp, rsp
	xor	eax, r14d
	add	ebp, edx
	lea	ebp, [rax + rbp - 0x944b4a0]
	nop	
	rol	ebp, 0x10
	add	ebp, r14d
	mov	eax, r14d
	xor	eax, r11d
	mov	rsp, rsp
	xor	eax, ebp
	mov	rsp, rsp
	mov	r10d, dword ptr [rsp - 0x18]
	add	r8d, r10d
	lea	rdi, [rdi]
	lea	r8d, [rax + r8 - 0x41404390]
	lea	rsi, [rsi]
	rol	r8d, 0x17
	add	r8d, ebp
	lea	rdi, [rdi]
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	add	r11d, ebx
	lea	eax, [rax + r11 + 0x289b7ec6]
	rol	eax, 4
	add	eax, r8d
	lea	rdi, [rdi]
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, eax
	mov	rsi, qword ptr [rsp - 0x80]
	add	r14d, esi
	lea	r11d, [rcx + r14 - 0x155ed806]
	nop	
	rol	r11d, 0xb
	add	r11d, eax
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	ecx, r8d
	mov	rsp, rsp
	xor	ecx, r11d
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp - 0x20]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	rol	r14d, 0x10
.label_1924:
	lea	rsi, [rsi]
	add	r14d, r11d
	mov	ecx, r11d
	xor	ecx, eax
	mov	rsp, rsp
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x64]
	add	r8d, r12d
	nop	
	lea	r8d, [rcx + r8 + 0x4881d05]
	rol	r8d, 0x17
	lea	rdi, [rdi]
	add	r8d, r14d
	mov	rbp, rbp
	mov	ecx, r14d
	lea	rsi, [rsi]
	xor	ecx, r11d
	xor	ecx, r8d
	lea	rdi, [rdi]
	add	eax, dword ptr [rsp - 0x38]
	lea	rdi, [rdi]
	lea	ecx, [rcx + rax - 0x262b2fc7]
	mov	rbp, rbp
	rol	ecx, 4
	lea	rsi, [rsi]
	add	ecx, r8d
	mov	eax, r8d
	lea	rdi, [rdi]
	xor	eax, r14d
	xor	eax, ecx
	add	r11d, r15d
	lea	edx, [rax + r11 - 0x1924661b]
	rol	edx, 0xb
	add	edx, ecx
	nop	
	mov	ebp, ecx
	xor	ebp, r8d
	xor	ebp, edx
	nop	
	mov	r13d, dword ptr [rsp - 0x30]
	lea	rdi, [rdi]
	add	r14d, r13d
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	lea	rsi, [rsi]
	rol	r11d, 0x10
	add	r11d, edx
	mov	ebp, edx
	mov	rbp, rbp
	xor	ebp, ecx
	mov	rsp, rsp
	xor	ebp, r11d
	mov	rbp, rbp
	mov	rax, qword ptr [rsp - 0x78]
	mov	rbp, rbp
	add	r8d, eax
	mov	rbp, rbp
	mov	r14, rax
	lea	rdi, [rdi]
	lea	r8d, [rbp + r8 - 0x3b53a99b]
	lea	rdi, [rdi]
	add	ecx, esi
	rol	r8d, 0x17
	add	r8d, r11d
	mov	eax, edx
	lea	rsi, [rsi]
	not	eax
	or	eax, r8d
	xor	eax, r11d
	lea	ecx, [rax + rcx - 0xbd6ddbc]
	add	edx, dword ptr [rsp - 0x2c]
	rol	ecx, 6
	add	ecx, r8d
	mov	eax, r11d
	nop	
	not	eax
	or	eax, ecx
	lea	rdi, [rdi]
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	add	r11d, dword ptr [rsp - 0x5c]
	mov	rsp, rsp
	rol	ebp, 0xa
	add	ebp, ecx
	mov	eax, r8d
	mov	rbp, rbp
	not	eax
	lea	rsi, [rsi]
	or	eax, ebp
	xor	eax, ecx
	mov	rsp, rsp
	lea	eax, [rax + r11 - 0x546bdc59]
	add	r8d, dword ptr [rsp - 0x14]
	mov	rsp, rsp
	rol	eax, 0xf
	lea	rsi, [rsi]
	add	eax, ebp
	mov	rbp, rbp
	mov	edx, ecx
	mov	rbp, rbp
	not	edx
	or	edx, eax
	xor	edx, ebp
	mov	rbp, rbp
	lea	esi, [rdx + r8 - 0x36c5fc7]
	add	ecx, r15d
	rol	esi, 0x15
	add	esi, eax
	mov	rsp, rsp
	mov	edx, ebp
	not	edx
	or	edx, esi
	lea	rdi, [rdi]
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x655b59c3]
	mov	rsp, rsp
	add	ebp, r9d
	rol	ecx, 6
	add	ecx, esi
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	not	edx
	or	edx, ecx
	lea	rdi, [rdi]
	xor	edx, esi
	lea	ebp, [rdx + rbp - 0x70f3336e]
	add	eax, r10d
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp - 0x50]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	edx, esi
	nop	
	not	edx
	mov	rsp, rsp
	or	edx, ebp
	xor	edx, ecx
	lea	rdi, [rdi]
	lea	eax, [rdx + rax - 0x100b83]
	mov	rbp, rbp
	rol	eax, 0xf
	add	eax, ebp
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp - 0x10]
	mov	rsp, rsp
	add	esi, edx
	mov	edx, ecx
	not	edx
	mov	rbp, rbp
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	add	r8d, eax
	lea	rdi, [rdi]
	add	ecx, dword ptr [rsp - 0x60]
	mov	edx, ebp
	not	edx
	or	edx, r8d
	lea	rsi, [rsi]
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x6fa87e4f]
	rol	ecx, 6
	lea	rdi, [rdi]
	add	ecx, r8d
	nop	
	add	ebp, r13d
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	not	edx
	or	edx, ecx
	mov	rbp, rbp
	xor	edx, r8d
	lea	edx, [rdx + rbp - 0x1d31920]
	rol	edx, 0xa
	mov	rbp, rbp
	add	edx, ecx
	mov	rbp, rbp
	add	eax, r12d
	mov	esi, r8d
	not	esi
	or	esi, edx
	xor	esi, ecx
	nop	
	lea	ebp, [rsi + rax - 0x5cfebcec]
	rol	ebp, 0xf
	add	ebp, edx
	mov	rbp, rbp
	add	r8d, dword ptr [rsp - 0x28]
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	not	eax
	or	eax, ebp
	xor	eax, edx
	lea	esi, [rax + r8 + 0x4e0811a1]
	nop	
	mov	r8, qword ptr [rsp - 8]
	mov	r10d, dword ptr [rsp - 0x34]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x40]
	mov	eax, edx
	mov	rsp, rsp
	not	eax
	or	eax, esi
	mov	rsp, rsp
	xor	eax, ebp
	lea	rdi, [rdi]
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	add	ecx, esi
	lea	rsi, [rsi]
	add	edx, dword ptr [rsp - 0x3c]
	mov	eax, ebp
	nop	
	not	eax
	mov	rbp, rbp
	or	eax, ecx
	lea	rdi, [rdi]
	xor	eax, esi
	mov	rsp, rsp
	lea	edx, [rax + rdx - 0x42c50dcb]
	rol	edx, 0xa
	add	edx, ecx
	lea	rdi, [rdi]
	add	ebp, r14d
	lea	rdi, [rdi]
	mov	eax, esi
	lea	rdi, [rdi]
	not	eax
	or	eax, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	lea	eax, [rax + rbp + 0x2ad7d2bb]
	add	esi, dword ptr [rsp - 0x38]
	rol	eax, 0xf
	add	eax, edx
	add	r10d, ecx
	mov	rbp, rbp
	not	ecx
	or	ecx, eax
	mov	rbp, rbp
	xor	ecx, edx
	lea	ecx, [rcx + rsi - 0x14792c6f]
	rol	ecx, 0x15
	add	ebx, eax
	nop	
	add	ebx, ecx
	mov	rcx, qword ptr [rsp - 0x70]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 0x48]
	add	edx, ecx
	lea	rdi, [rdi]
	add	rdi, 0x40
	nop	
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_912
	jmp	.label_914
.label_913:
	mov	rsp, rsp
	mov	eax, r9d
	mov	edx, ebp
.label_914:
	mov	rcx, qword ptr [rsp - 0x58]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410360
	.globl md5_stream
	.type md5_stream, @function
md5_stream:

	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	mov	edi, 0x8048
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	mov	r15, rax
	mov	eax, 1
	mov	rsp, rsp
	test	r15, r15
	mov	rbp, rbp
	je	.label_918
	lea	rdi, [rdi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_910]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0
	nop	
	xor	ebx, ebx
	mov	rsp, rsp
	test	byte ptr [r12], 0x10
	lea	rdi, [rdi]
	jne	.label_919
	lea	r13, [rsp]
	nop	word ptr cs:[rax + rax]
.label_923:
	lea	rdi, [r15 + rbx]
	nop	
	mov	edx, 0x8000
	sub	rdx, rbx
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	jne	.label_922
	mov	esi, 0x8000
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rdx, r13
	call	md5_process_block
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_915
	nop	dword ptr [rax]
.label_922:
	test	rax, rax
	je	.label_917
.label_915:
	test	byte ptr [r12], 0x10
	je	.label_923
	nop	
	jmp	.label_920
.label_917:
	test	byte ptr [r12], 0x20
	jne	.label_921
.label_920:
	test	rbx, rbx
	nop	
	je	.label_919
	lea	rdi, [rdi]
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	md5_process_bytes
.label_919:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, 0x38
	mov	rsp, rsp
	mov	ecx, 0x10
	mov	ebx, 0x20
	cmovb	rbx, rcx
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x10], ecx
	jae	.label_916
	inc	dword ptr [rsp + 0x14]
.label_916:
	nop	
	lea	edx, [rcx*8]
	lea	rsi, [rsi]
	lea	r12, [rsp + 0x1c]
	mov	dword ptr [rsp + rbx*4 + 0x14], edx
	mov	edx, dword ptr [rsp + 0x14]
	shld	edx, ecx, 3
	mov	rbp, rbp
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	mov	rsp, rsp
	lea	rdi, [rsp + rax + 0x1c]
	mov	rsp, rsp
	lea	rdx, [rbx*4 - 8]
	nop	
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf_0
	nop	
	call	memcpy
	mov	rbp, rbp
	shl	rbx, 2
	mov	rsp, rsp
	lea	rdx, [rsp]
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, rbx
	mov	rsp, rsp
	call	md5_process_block
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rdi, r15
	call	free
	mov	rbp, rbp
	xor	eax, eax
.label_918:
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	ret	
.label_921:
	mov	rdi, r15
	nop	
	call	free
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_918
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410570

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
	mov	ebx, dword ptr [r14 + 0x18]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_926
	mov	rbp, rbp
	mov	r13d, 0x80
	sub	r13, rbx
	cmp	r13, r12
	cmova	r13, r12
	lea	rsi, [rsi]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r13
	mov	rbp, rbp
	call	memcpy
	lea	rdi, [rdi]
	add	rbx, r13
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 0x18], ebx
	mov	rsp, rsp
	cmp	ebx, 0x41
	jb	.label_925
	lea	rbp, [r14 + 0x1c]
	mov	rsp, rsp
	mov	esi, ebx
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
	and	rbx, 0xffffffffffffffc0
	add	rbx, rbp
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	memcpy
.label_925:
	mov	rsp, rsp
	add	r15, r13
	nop	
	sub	r12, r13
.label_926:
	cmp	r12, 0x40
	lea	rsi, [rsi]
	jb	.label_927
	mov	rbx, r12
	mov	rsp, rsp
	and	rbx, 0xffffffffffffffc0
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	md5_process_block
	mov	rsp, rsp
	add	r15, rbx
	and	r12d, 0x3f
.label_927:
	test	r12, r12
	je	.label_924
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	lea	rdi, [rdi]
	add	rbx, r12
	lea	rsi, [rsi]
	cmp	rbx, 0x40
	jb	.label_928
	lea	rbp, [r14 + 0x1c]
	mov	esi, 0x40
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	add	rbx, -0x40
	mov	rsp, rsp
	lea	rsi, [r14 + 0x5c]
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, rbx
	mov	rsp, rsp
	call	memcpy
.label_928:
	mov	rbp, rbp
	mov	dword ptr [r14 + 0x18], ebx
.label_924:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4106e0
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	nop
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	nop	
	mov	r14, rdx
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_910]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x14], 0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x10], 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], 0
	mov	rsp, rsp
	lea	rdx, [rsp]
	call	md5_process_bytes
	mov	eax, dword ptr [rsp + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	nop	
	mov	ebx, 0x20
	cmovb	rbx, rcx
	nop	
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	lea	rdi, [rdi]
	jae	.label_929
	mov	rsp, rsp
	inc	dword ptr [rsp + 0x14]
.label_929:
	lea	rdi, [rdi]
	lea	edx, [rcx*8]
	mov	rsp, rsp
	lea	r15, [rsp + 0x1c]
	mov	rsp, rsp
	mov	dword ptr [rsp + rbx*4 + 0x14], edx
	mov	edx, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	shld	edx, ecx, 3
	nop	
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	nop	
	lea	rdi, [rsp + rax + 0x1c]
	mov	rbp, rbp
	lea	rdx, [rbx*4 - 8]
	lea	rdi, [rdi]
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:fillbuf_0
	call	memcpy
	shl	rbx, 2
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_block
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14], xmm0
	mov	rax, r14
	add	rsp, 0xa0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4107e0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4107f0

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_930
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_930:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410820

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
	push	rax
	mov	r13, rsi
	mov	r15, rdi
	call	strcmp
	mov	r10d, eax
	xor	eax, eax
	test	r10d, r10d
	lea	rsi, [rsi]
	je	.label_931
	lea	rsi, [rsi]
	mov	dl, byte ptr [r15]
	mov	eax, 0xffffffff
	test	dl, dl
	je	.label_931
	mov	rbp, rbp
	mov	bl, byte ptr [r13]
	mov	rbp, rbp
	test	bl, bl
	je	.label_966
	movzx	ecx, dl
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_956
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 1], 0
	je	.label_931
.label_956:
	movzx	esi, bl
	lea	rdi, [rdi]
	cmp	esi, 0x2e
	jne	.label_961
	cmp	byte ptr [r13 + 1], 0
	je	.label_963
.label_961:
	cmp	ecx, 0x2e
	nop	
	jne	.label_967
	lea	rdi, [rdi]
	movzx	edi, byte ptr [r15 + 1]
	cmp	edi, 0x2e
	jne	.label_967
	cmp	byte ptr [r15 + 2], 0
	je	.label_931
.label_967:
	cmp	esi, 0x2e
	jne	.label_959
	movzx	edi, byte ptr [r13 + 1]
	mov	rbp, rbp
	cmp	edi, 0x2e
	mov	rbp, rbp
	jne	.label_959
	mov	rbp, rbp
	cmp	byte ptr [r13 + 2], 0
	je	.label_981
.label_959:
	cmp	ecx, 0x2e
	jne	.label_977
	lea	rsi, [rsi]
	cmp	esi, 0x2e
	mov	rsp, rsp
	jne	.label_931
	nop	
	inc	r13
	mov	dl, byte ptr [r15 + 1]
	mov	rsp, rsp
	inc	r15
	jmp	.label_974
.label_966:
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_931
.label_977:
	cmp	esi, 0x2e
	mov	eax, 1
	mov	rbp, rbp
	je	.label_931
.label_974:
	movabs	r11, 0x3ffffff03ffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	dl, dl
	je	.label_938
	lea	rdi, [rdi]
	xor	r8d, r8d
	movabs	rsi, 0x3ffffffffffffff
	and	rsi, r11
	mov	rsp, rsp
	mov	rbp, r15
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_934:
	mov	rbp, rbp
	test	dil, 1
	mov	rbp, rbp
	jne	.label_952
	mov	rbp, rbp
	movzx	ebx, dl
	lea	rdi, [rdi]
	cmp	ebx, 0x2e
	jne	.label_954
	test	rcx, rcx
	cmove	rcx, rbp
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_946
	nop	dword ptr [rax]
.label_952:
	movsx	edi, dl
	lea	rdi, [rdi]
	add	edi, -0x41
	mov	rbp, rbp
	cmp	edi, 0x39
	nop	
	ja	.label_953
	bt	rsi, rdi
	nop	
	jb	.label_965
.label_953:
	lea	rsi, [rsi]
	movzx	eax, dl
	xor	edi, edi
	mov	rbp, rbp
	cmp	eax, 0x7e
	cmovne	rcx, rdi
	nop	
	jmp	.label_946
	nop	
.label_954:
	lea	rdi, [rdi]
	movsx	edx, dl
	mov	rbp, rbp
	lea	eax, [rdx - 0x41]
	nop	
	cmp	eax, 0x39
	mov	rsp, rsp
	ja	.label_972
	lea	rsi, [rsi]
	bt	r11, rax
	mov	rbp, rbp
	jb	.label_946
.label_972:
	lea	rdi, [rdi]
	add	edx, -0x30
	lea	rdi, [rdi]
	cmp	edx, 0xa
	lea	rdi, [rdi]
	jb	.label_946
	nop	
	cmp	ebx, 0x7e
	cmovne	rcx, r8
	mov	rbp, rbp
	jmp	.label_946
.label_965:
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_946:
	mov	dl, byte ptr [rbp + 1]
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	test	dl, dl
	jne	.label_934
	lea	rdi, [rdi]
	jmp	.label_937
.label_963:
	lea	rdi, [rdi]
	mov	eax, 1
	jmp	.label_931
.label_938:
	lea	rsi, [rsi]
	mov	rbp, r15
.label_937:
	mov	bl, byte ptr [r13]
	xor	edx, edx
	test	bl, bl
	mov	rsp, rsp
	je	.label_943
	xor	r8d, r8d
	movabs	r9, 0x3ffffffffffffff
	and	r9, r11
	mov	rbp, rbp
	mov	r12, r13
	lea	rdi, [rdi]
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_944:
	nop	
	test	dil, 1
	mov	rsp, rsp
	jne	.label_955
	movzx	eax, bl
	cmp	eax, 0x2e
	jne	.label_976
	test	rdx, rdx
	cmove	rdx, r12
	mov	rsp, rsp
	mov	dil, 1
	nop	
	jmp	.label_960
	nop	word ptr cs:[rax + rax]
.label_955:
	movsx	eax, bl
	add	eax, -0x41
	lea	rdi, [rdi]
	cmp	eax, 0x39
	mov	rbp, rbp
	ja	.label_964
	lea	rsi, [rsi]
	bt	r9, rax
	jb	.label_969
.label_964:
	movzx	eax, bl
	xor	edi, edi
	mov	rbp, rbp
	cmp	eax, 0x7e
	nop	
	cmovne	rdx, rdi
	jmp	.label_960
	nop	dword ptr [rax]
.label_976:
	movsx	ebx, bl
	lea	esi, [rbx - 0x41]
	cmp	esi, 0x39
	nop	
	ja	.label_975
	lea	rdi, [rdi]
	bt	r11, rsi
	jb	.label_960
.label_975:
	add	ebx, -0x30
	mov	rbp, rbp
	cmp	ebx, 0xa
	mov	rbp, rbp
	jb	.label_960
	mov	rsp, rsp
	cmp	eax, 0x7e
	cmovne	rdx, r8
	mov	rbp, rbp
	jmp	.label_960
.label_969:
	lea	rdi, [rdi]
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_960:
	lea	rsi, [rsi]
	mov	bl, byte ptr [r12 + 1]
	inc	r12
	test	bl, bl
	mov	rsp, rsp
	jne	.label_944
	mov	rsp, rsp
	jmp	.label_939
.label_943:
	mov	r12, r13
.label_939:
	test	rcx, rcx
	mov	rsp, rsp
	mov	r14, rbp
	cmovne	r14, rcx
	sub	r14, r15
	mov	rbp, rbp
	test	rdx, rdx
	mov	r9, r12
	lea	rdi, [rdi]
	cmovne	r9, rdx
	sub	r9, r13
	or	rcx, rdx
	nop	
	je	.label_940
	mov	rsp, rsp
	cmp	r14, r9
	jne	.label_949
	mov	dword ptr [rsp + 4], r10d
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r14
	mov	rbp, rbp
	mov	rbx, r11
	call	strncmp
	mov	r11, rbx
	test	eax, eax
	mov	r9, r14
	lea	rdi, [rdi]
	jne	.label_957
	sub	rbp, r15
	sub	r12, r13
	mov	r9, r12
	lea	rsi, [rsi]
	mov	r14, rbp
	lea	rdi, [rdi]
	jmp	.label_957
.label_940:
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], r10d
	lea	rdi, [rdi]
	jmp	.label_957
.label_949:
	nop	
	mov	dword ptr [rsp + 4], r10d
.label_957:
	lea	rdi, [rdi]
	xor	edx, edx
	movabs	rax, 0x3ffffffffffffff
	and	r11, rax
	mov	r8d, 0xffffffff
	xor	esi, esi
.label_936:
	cmp	rdx, r9
	jb	.label_973
	lea	rdi, [rdi]
	cmp	rsi, r14
	lea	rsi, [rsi]
	jb	.label_973
	jmp	.label_935
	nop	
.label_979:
	mov	rbp, rbp
	inc	rsi
	inc	rdx
.label_973:
	mov	rsp, rsp
	cmp	rsi, r14
	jae	.label_978
	movsx	eax, byte ptr [r15 + rsi]
	lea	rdi, [rdi]
	add	eax, -0x30
	cmp	eax, 9
	mov	rbp, rbp
	ja	.label_980
.label_978:
	cmp	rdx, r9
	lea	rsi, [rsi]
	jae	.label_932
	lea	rsi, [rsi]
	movsx	eax, byte ptr [r13 + rdx]
	add	eax, -0x30
	lea	rdi, [rdi]
	cmp	eax, 0xa
	mov	rbp, rbp
	jb	.label_932
.label_980:
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	r14, rsi
	mov	edi, 0
	je	.label_942
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r15 + rsi]
	lea	edi, [rax - 0x30]
	nop	
	cmp	edi, 0xa
	mov	rbp, rbp
	mov	edi, 0
	jb	.label_942
	mov	rsp, rsp
	lea	edi, [rax - 0x41]
	cmp	edi, 0x39
	ja	.label_948
	lea	rsi, [rsi]
	bt	r11, rdi
	jb	.label_951
.label_948:
	mov	rsp, rsp
	lea	edi, [rax + 0x100]
	lea	rdi, [rdi]
	cmp	eax, 0x7e
	lea	rdi, [rdi]
	cmove	edi, r8d
	mov	rsp, rsp
	jmp	.label_942
.label_951:
	mov	edi, eax
	nop	word ptr cs:[rax + rax]
.label_942:
	lea	rsi, [rsi]
	cmp	r9, rdx
	mov	rbp, rbp
	je	.label_962
	mov	rsp, rsp
	movzx	eax, byte ptr [r13 + rdx]
	nop	
	lea	ebp, [rax - 0x30]
	mov	rbp, rbp
	cmp	ebp, 0xa
	jb	.label_962
	mov	rbp, rbp
	lea	ecx, [rax - 0x41]
	mov	rsp, rsp
	cmp	ecx, 0x39
	ja	.label_968
	mov	rsp, rsp
	bt	r11, rcx
	lea	rsi, [rsi]
	jb	.label_971
.label_968:
	lea	rsi, [rsi]
	lea	ecx, [rax + 0x100]
	mov	rbp, rbp
	cmp	eax, 0x7e
	cmove	ecx, r8d
	lea	rsi, [rsi]
	jmp	.label_962
.label_971:
	mov	ecx, eax
	nop	word ptr cs:[rax + rax]
.label_962:
	mov	rsp, rsp
	sub	edi, ecx
	nop	
	je	.label_979
	mov	rsp, rsp
	jmp	.label_933
.label_932:
	lea	rdi, [rdi]
	dec	rsi
	nop	word ptr [rax + rax]
.label_947:
	lea	rsi, [rsi]
	movsx	ebp, byte ptr [r15 + rsi + 1]
	mov	rsp, rsp
	inc	rsi
	cmp	ebp, 0x30
	je	.label_947
	lea	rdi, [rdi]
	mov	r12, r11
	lea	rsi, [rsi]
	dec	rdx
.label_941:
	movsx	edi, byte ptr [r13 + rdx + 1]
	lea	rdi, [rdi]
	inc	rdx
	cmp	edi, 0x30
	je	.label_941
	lea	rdi, [rdi]
	lea	eax, [rbp - 0x30]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	eax, 9
	lea	rdi, [rdi]
	ja	.label_945
	lea	eax, [rdi - 0x30]
	mov	rsp, rsp
	cmp	eax, 9
	lea	rsi, [rsi]
	ja	.label_950
	inc	rdx
	nop	
	inc	rsi
	xor	ecx, ecx
	mov	r11, rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	nop	dword ptr [rax + rax]
.label_970:
	mov	ebx, ecx
	nop	
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rsi, r11
	sub	ebp, edi
	nop	
	test	ebx, ebx
	nop	
	mov	ecx, ebp
	cmovne	ecx, ebx
	mov	rsp, rsp
	mov	r10b, byte ptr [r15 + rsi]
	lea	rdi, [rdi]
	movsx	ebp, r10b
	mov	rbp, rbp
	lea	eax, [rbp - 0x30]
	mov	rbp, rbp
	cmp	eax, 9
	mov	rsp, rsp
	ja	.label_958
	lea	rsi, [rsi]
	movsx	edi, byte ptr [r13 + rdx]
	lea	rdi, [rdi]
	lea	ebx, [rdi - 0x30]
	lea	rax, [rdx + 1]
	lea	r11, [rsi + 1]
	mov	rsp, rsp
	cmp	ebx, 0xa
	lea	rsi, [rsi]
	jb	.label_970
	jmp	.label_958
.label_945:
	mov	r10b, bpl
	jmp	.label_958
.label_950:
	mov	r10b, bpl
.label_958:
	lea	rsi, [rsi]
	movsx	eax, r10b
	mov	rsp, rsp
	add	eax, -0x30
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	cmp	eax, 0xa
	lea	rdi, [rdi]
	mov	r11, r12
	jb	.label_933
	lea	rsi, [rsi]
	movsx	eax, byte ptr [r13 + rdx]
	add	eax, -0x30
	mov	edi, 0xffffffff
	cmp	eax, 0xa
	nop	
	jb	.label_933
	test	ecx, ecx
	mov	edi, ecx
	je	.label_936
	lea	rdi, [rdi]
	jmp	.label_933
.label_981:
	mov	eax, 1
	jmp	.label_931
.label_935:
	mov	rbp, rbp
	xor	edi, edi
.label_933:
	nop	
	test	edi, edi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 4]
	mov	rsp, rsp
	cmovne	eax, edi
.label_931:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410e60

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
	je	.label_983
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_982
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_984
.label_982:
	nop	
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_983
.label_984:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_983:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x410eb0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410ec0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410ed0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410ee0
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
	jae	.label_985
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
	jb	.label_990
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_992
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_988:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_988
.label_992:
	add	rcx, 0x10
.label_990:
	nop	
	test	rsi, rsi
	je	.label_985
	nop	word ptr cs:[rax + rax]
.label_991:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_986
	nop	word ptr cs:[rax + rax]
.label_987:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_987
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_986:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_993
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_989:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_989
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_993:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_991
.label_985:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410ff0
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
	jae	.label_1005
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
	jb	.label_996
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_1006
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_1000:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_1000
	mov	rsp, rsp
	jmp	.label_1002
.label_996:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_1004
.label_1006:
	xor	esi, esi
.label_1002:
	add	rcx, 0x10
.label_1004:
	test	r8, r8
	nop	
	je	.label_1005
	nop	dword ptr [rax]
.label_997:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_994
	nop	dword ptr [rax]
.label_998:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_998
	lea	rdi, [rdi]
	inc	rsi
.label_994:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_1003
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_995:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_995
	inc	rsi
.label_1003:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_997
.label_1005:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_999
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_1001
.label_999:
	xor	eax, eax
.label_1001:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411100
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
	jae	.label_1007
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
	jb	.label_1009
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1012
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_1013:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_1013
.label_1012:
	add	rax, 0x10
.label_1009:
	test	rsi, rsi
	je	.label_1007
	nop	dword ptr [rax]
.label_1015:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_1008
	nop	word ptr cs:[rax + rax]
.label_1010:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_1010
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_1008:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1011
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_1014:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_1014
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_1011:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_1015
.label_1007:
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_3
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	nop	
	call	__fprintf_chk
	nop	
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_13]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_14]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_249]]
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
	mov	edx, OFFSET FLAT:.str.2_1
	mov	al, 1
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
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
	.align	16
	#Procedure 0x411310
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
	jae	.label_1019
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_1017
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_1017
	cmp	rsi, r12
	je	.label_1016
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1018:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_1020
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_1017
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_1018
.label_1016:
	mov	r15, r12
	jmp	.label_1017
.label_1020:
	nop	
	mov	r15, qword ptr [rbx]
.label_1017:
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
.label_1019:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4113d0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_1021
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_1024
	nop	dword ptr [rax]
.label_1022:
	add	rcx, 0x10
.label_1024:
	cmp	rcx, rdx
	jae	.label_1023
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1022
.label_1021:
	mov	rsp, rsp
	ret	
.label_1023:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x411410
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
	jae	.label_1029
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_1030:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_1026
	test	rdx, rdx
	jne	.label_1030
	lea	rdi, [rdi]
	jmp	.label_1027
.label_1026:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1027
	mov	rax, qword ptr [rdx]
	jmp	.label_1025
.label_1027:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_1028:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_1025
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1028
.label_1025:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1029:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4114b0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1031
	nop	word ptr cs:[rax + rax]
.label_1033:
	add	r9, 0x10
.label_1031:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_1032
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_1033
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_1033
	nop	word ptr cs:[rax + rax]
.label_1034:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_1032
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
	jne	.label_1034
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_1033
.label_1032:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411530
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
	jmp	.label_1038
	nop	dword ptr [rax]
.label_1036:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_1038:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_1037
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_1036
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_1036
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_1037
	nop	word ptr [rax + rax]
.label_1039:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_1035
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_1039
	jmp	.label_1037
	nop	word ptr cs:[rax + rax]
.label_1035:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_1036
.label_1037:
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
	.align	16
	#Procedure 0x411600
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_1041
	inc	rdi
	nop	
	xor	edx, edx
.label_1040:
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
	jne	.label_1040
.label_1041:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411640
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_1042]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411660

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
	je	.label_1051
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_1046
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_1052]]
	jbe	.label_1043
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1057]]
	ucomiss	xmm1, xmm0
	jbe	.label_1043
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_1049]]
	lea	rsi, [rsi]
	jbe	.label_1043
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_1043
	addss	xmm1,  dword ptr [dword ptr [rip + label_1052]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_1043
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_1053]]
	ucomiss	xmm2, xmm0
	jb	.label_1043
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_1043
.label_1046:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_1058
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_1045
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_1050
.label_1045:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_1050:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1055]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_1056]]
	nop	
	jae	.label_1043
.label_1058:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_1048
.label_1047:
	mov	rbp, rbp
	add	rbx, 2
.label_1048:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_1043
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_1054
	nop	word ptr cs:[rax + rax]
.label_1044:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_1054
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_1044
.label_1054:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1047
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_1043
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_1043
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1043
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
	jmp	.label_1051
.label_1043:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_1051:
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
	.align	16
	#Procedure 0x411940

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
	.align	16
	#Procedure 0x411960

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
	.align	16
	#Procedure 0x411970
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
	jmp	.label_1063
.label_1059:
	mov	rsp, rsp
	add	r14, 0x10
.label_1063:
	cmp	r14, rax
	jae	.label_1064
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_1059
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1062
	nop	word ptr [rax + rax]
.label_1061:
	nop	
	test	cl, 1
	je	.label_1060
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_1060:
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
	jne	.label_1061
.label_1062:
	test	cl, cl
	je	.label_1065
	mov	rdi, qword ptr [r14]
	call	rax
.label_1065:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_1059
.label_1064:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411a50
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
	je	.label_1070
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_1070
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_1076
	nop	word ptr [rax + rax]
.label_1071:
	mov	rsp, rsp
	add	r15, 0x10
.label_1076:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_1070
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_1071
	test	r15, r15
	je	.label_1071
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_1067
	nop	dword ptr [rax]
.label_1066:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_1067:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_1066
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1071
.label_1070:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_1075
	nop	dword ptr [rax + rax]
.label_1068:
	mov	rbp, rbp
	add	r15, 0x10
.label_1075:
	cmp	r15, rax
	jae	.label_1074
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1068
	nop	dword ptr [rax + rax]
.label_1072:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1072
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1068
.label_1074:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_1073
	nop	word ptr cs:[rax + rax]
.label_1069:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_1069
.label_1073:
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
	.align	16
	#Procedure 0x411b80

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
	jne	.label_1077
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_1089
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_1095
.label_1089:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_1095:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1055]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_1056]]
	mov	rbp, rbp
	jae	.label_1079
.label_1077:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_1092
	nop	word ptr cs:[rax + rax]
.label_1091:
	lea	rsi, [rsi]
	add	rbx, 2
.label_1092:
	cmp	rbx, -1
	je	.label_1079
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_1082
.label_1093:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_1082
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_1093
.label_1082:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_1091
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_1079
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_1086
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1079
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
	je	.label_1088
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
	jmp	.label_1086
.label_1088:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_1085
.label_1080:
	add	r12, 0x10
.label_1085:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_1083
	cmp	qword ptr [r12], 0
	je	.label_1080
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_1084
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1094:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_1081
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_1078
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_1087
	nop	
.label_1078:
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
.label_1087:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_1094
.label_1084:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_1080
.label_1083:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_1090
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_1079:
	mov	rbp, rbp
	xor	ebp, ebp
.label_1086:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_1081:
	mov	rbp, rbp
	call	abort
.label_1090:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ef0

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
	jae	.label_1104
	nop	
	test	dl, dl
	je	.label_1105
	nop	dword ptr [rax]
.label_1099:
	nop	
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	je	.label_1106
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_1116
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	dword ptr [rax]
.label_1114:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	nop	
	call	qword ptr [r15 + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_1109
	mov	rbp, rbp
	mov	rdx, qword ptr [r15]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_1097
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], rbp
	nop	
	jmp	.label_1112
	nop	word ptr cs:[rax + rax]
.label_1097:
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
.label_1112:
	test	rcx, rcx
	mov	rbp, rcx
	mov	rsp, rsp
	jne	.label_1114
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
.label_1116:
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], 0
.label_1106:
	mov	rsp, rsp
	add	r13, 0x10
	mov	rsp, rsp
	cmp	r13, rax
	jb	.label_1099
	jmp	.label_1104
	nop	word ptr cs:[rax + rax]
.label_1105:
	mov	rbp, rbp
	mov	r12, qword ptr [r13]
	mov	rbp, rbp
	test	r12, r12
	mov	rsp, rsp
	je	.label_1110
	lea	rdi, [rdi]
	mov	r14, qword ptr [r13 + 8]
	test	r14, r14
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	je	.label_1098
	nop	dword ptr [rax + rax]
.label_1101:
	mov	rbx, qword ptr [r14]
	mov	rdi, rbx
	nop	
	call	qword ptr [r15 + 0x30]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	cmp	rax, rsi
	jae	.label_1109
	mov	rdx, qword ptr [r15]
	nop	
	mov	rcx, qword ptr [r14 + 8]
	nop	
	shl	rax, 4
	nop	
	cmp	qword ptr [rdx + rax], 0
	mov	rsp, rsp
	je	.label_1115
	mov	rdi, qword ptr [rdx + rax + 8]
	nop	
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r14
	lea	rdi, [rdi]
	jmp	.label_1102
	nop	word ptr [rax + rax]
.label_1115:
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
.label_1102:
	mov	rbp, rbp
	test	rcx, rcx
	mov	r14, rcx
	jne	.label_1101
	mov	r12, qword ptr [r13]
.label_1098:
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
	jae	.label_1096
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rbx], 0
	je	.label_1103
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x48]
	test	rax, rax
	je	.label_1107
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x48], rcx
	jmp	.label_1111
	nop	word ptr cs:[rax + rax]
.label_1103:
	lea	rsi, [rsi]
	add	rbp, rbx
	mov	rbp, rbp
	mov	qword ptr [rbp], r12
	inc	qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	jmp	.label_1100
.label_1107:
	mov	rbp, rbp
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1113
.label_1111:
	mov	qword ptr [rax], r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp + rbx + 8], rax
.label_1100:
	mov	qword ptr [r13], 0
	nop	
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	dec	qword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
.label_1110:
	mov	rsp, rsp
	add	r13, 0x10
	cmp	r13, rax
	nop	
	jb	.label_1105
.label_1104:
	nop	
	mov	al, 1
.label_1108:
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
.label_1113:
	xor	eax, eax
	jmp	.label_1108
.label_1109:
	call	abort
.label_1096:
	mov	rsp, rsp
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412200

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
	je	.label_1117
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
	jae	.label_1117
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_1118
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_1145
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_1120
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_1137
.label_1145:
	mov	rax, r14
	jmp	.label_1124
.label_1120:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1118
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_1139:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_1130
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_1136
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_1139
	nop	
	jmp	.label_1118
.label_1130:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_1137
.label_1136:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_1137:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1118
.label_1124:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_1122
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_1122
.label_1118:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_1121
	cvtsi2ss	xmm1, rax
	jmp	.label_1128
.label_1121:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_1128:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_1138
	cvtsi2ss	xmm0, rcx
	jmp	.label_1144
.label_1138:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_1144:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_1119
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_1127
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_1052]]
	jbe	.label_1132
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_1057]]
	ucomiss	xmm3, xmm2
	jbe	.label_1132
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_1049]]
	jbe	.label_1132
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_1132
	addss	xmm3,  dword ptr [dword ptr [rip + label_1052]]
	ucomiss	xmm2, xmm3
	jbe	.label_1132
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_1053]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_1132
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_1135
.label_1132:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_1134]]
	jmp	.label_1135
.label_1127:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_1135:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_1119
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_1140
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_1140:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_1056]]
	mov	rsp, rsp
	jae	.label_1122
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_1055]]
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
	je	.label_1122
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_1117
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_1119
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_1142
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_1126
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_1142
.label_1126:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1119
	lea	rbp, [r15 + rbp + 8]
.label_1143:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_1146
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_1141
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1143
	lea	rsi, [rsi]
	jmp	.label_1119
.label_1146:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_1142
.label_1141:
	mov	rax, qword ptr [rbp]
.label_1142:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_1123
.label_1119:
	cmp	qword ptr [r12], 0
	je	.label_1125
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1129
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_1131
.label_1125:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_612]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_1133
.label_1129:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_1122
.label_1131:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_1133:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_1122:
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
.label_1117:
	mov	rsp, rsp
	call	abort
.label_1123:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412640

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
	je	.label_1147
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_1147:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412690

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
	jae	.label_1158
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_1154
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_1161
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_1165
	mov	r14, qword ptr [r13]
.label_1161:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_1168
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
	jmp	.label_1153
.label_1165:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_1154
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1167:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1160
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_1162
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_1167
	lea	rsi, [rsi]
	jmp	.label_1154
.label_1168:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_1153
.label_1160:
	mov	rcx, rax
	jmp	.label_1156
.label_1162:
	mov	r14, qword ptr [rcx]
.label_1156:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_1153:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_1154
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_1149
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_1163
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_1151
.label_1163:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_1151:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_1157
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_1159
.label_1157:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1159:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_1149
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_1164
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_1052]]
	nop	
	jbe	.label_1148
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_1057]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_1148
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_1148
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_1049]]
	jbe	.label_1148
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_1052]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_1148
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_1053]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_1148
	ucomiss	xmm3, xmm4
	ja	.label_1150
.label_1148:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_1150
.label_1164:
	mov	eax, OFFSET FLAT:default_tuning
.label_1150:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_1149
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_1155
	mulss	xmm0, dword ptr [rax + 8]
.label_1155:
	movss	xmm1,  dword ptr [dword ptr [rip + label_1055]]
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
	jne	.label_1149
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_1166
.label_1152:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_1152
.label_1166:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_1149:
	nop	
	mov	r12, r14
.label_1154:
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
.label_1158:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4129e0

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
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_1169
	mov	rsp, rsp
	lea	rdi, [rbx*8]
	call	xmalloc
	mov	qword ptr [r12], rax
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	qword ptr [r12 + 8], rbx
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x10], 0
	test	r14, r14
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:heap_default_compare
	lea	rdi, [rdi]
	cmovne	rax, r14
	mov	qword ptr [r12 + 0x18], rax
	mov	rbp, rbp
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	ret	
.label_1169:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412a90

	.globl heap_default_compare
	.type heap_default_compare, @function
heap_default_compare:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412aa0
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
	.align	16
	#Procedure 0x412ac0

	.globl heap_insert
	.type heap_insert, @function
heap_insert:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdx, [rax - 1]
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jbe	.label_1170
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15]
	jmp	.label_1174
.label_1170:
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_1176
	lea	rdi, [rdi]
	movabs	rcx, 0xaaaaaaaaaaaaaaa
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_1172
	mov	rcx, rax
	nop	
	shr	rcx, 1
	lea	rsi, [rax + rcx + 1]
	jmp	.label_1177
.label_1176:
	mov	rbp, rbp
	test	rax, rax
	mov	esi, 0x10
	cmovne	rsi, rax
	mov	rax, rsi
	nop	
	shr	rax, 0x3c
	nop	
	jne	.label_1173
.label_1177:
	mov	qword ptr [r15 + 8], rsi
	shl	rsi, 3
	lea	rdi, [rdi]
	call	xrealloc
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x10]
.label_1174:
	lea	rbx, [rcx + 1]
	mov	qword ptr [r15 + 0x10], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8 + 8], r14
	lea	rsi, [rsi]
	mov	r12, qword ptr [r15]
	mov	r14, qword ptr [r12 + rcx*8 + 8]
	mov	r13d, 1
	test	rcx, rcx
	je	.label_1171
	mov	rbp, rbp
	mov	r15, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	mov	r13d, 1
	nop	word ptr [rax + rax]
.label_1178:
	mov	rbp, rbx
	shr	rbp, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r12 + rbp*8]
	nop	
	mov	rsi, r14
	mov	rbp, rbp
	call	r15
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jg	.label_1175
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + rbp*8]
	mov	qword ptr [r12 + rbx*8], rax
	cmp	rbp, 1
	mov	rbp, rbp
	mov	rbx, rbp
	mov	rsp, rsp
	jne	.label_1178
	nop	
	jmp	.label_1171
.label_1175:
	lea	rdi, [rdi]
	mov	r13, rbx
.label_1171:
	mov	qword ptr [r12 + r13*8], r14
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_1172:
	call	xalloc_die
.label_1173:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412c20

	.globl heap_remove_top
	.type heap_remove_top, @function
heap_remove_top:
	mov	rsp, rsp
	mov	rsi, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	xor	eax, eax
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1179
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rcx, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 8]
	nop	
	lea	r13, [rsi - 1]
	mov	qword ptr [rsp + 0x10], r13
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x10], r13
	mov	rax, qword ptr [rcx + rsi*8]
	mov	qword ptr [rcx + 8], rax
	mov	rbx, qword ptr [rdi]
	nop	
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	shr	r13, 1
	nop	
	mov	r14d, 1
	je	.label_1183
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rdx
	mov	r15, qword ptr [rdi + 0x18]
	nop	dword ptr [rax]
.label_1182:
	mov	rbp, rbp
	lea	rbp, [r14 + r14]
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rsp + 0x10]
	jae	.label_1180
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + rbp*8]
	lea	rsi, [rsi]
	mov	r12, rbp
	or	r12, 1
	nop	
	mov	rsi, qword ptr [rbx + r12*8]
	nop	
	call	r15
	test	eax, eax
	cmovs	rbp, r12
.label_1180:
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	call	r15
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jle	.label_1181
	mov	rax, qword ptr [rbx + rbp*8]
	mov	qword ptr [rbx + r14*8], rax
	cmp	rbp, r13
	mov	r14, rbp
	jbe	.label_1182
	lea	rdi, [rdi]
	jmp	.label_1184
.label_1183:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdx
	mov	rsp, rsp
	mov	ebp, 1
	mov	rbp, rbp
	jmp	.label_1184
.label_1181:
	mov	rbp, r14
.label_1184:
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rbx + rbp*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
.label_1179:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412d40

	.globl inttostr
	.type inttostr, @function
inttostr:
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0xb], 0
	test	edi, edi
	nop	
	js	.label_1185
	add	rsi, 0xb
.label_1188:
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
	ja	.label_1188
	jmp	.label_1187
.label_1185:
	add	rsi, 0xc
	nop	word ptr cs:[rax + rax]
.label_1186:
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
	mov	byte ptr [rsi - 2], cl
	add	eax, 9
	nop	
	dec	rsi
	mov	rbp, rbp
	cmp	eax, 0x12
	nop	
	ja	.label_1186
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 2], 0x2d
	add	rsi, -2
.label_1187:
	mov	rax, rsi
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412e10

	.globl uinttostr
	.type uinttostr, @function
uinttostr:
	mov	byte ptr [rsi + 0xa], 0
	mov	rsp, rsp
	add	rsi, 0xa
	lea	rdi, [rdi]
	mov	r8d, 0xcccccccd
	nop	word ptr cs:[rax + rax]
.label_1189:
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
	ja	.label_1189
	lea	rdi, [rdi]
	mov	rax, rsi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412e80

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_1190:
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
	ja	.label_1190
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412ee0
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
	.align	16
	#Procedure 0x412f10

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
	sub	rsp, 0x28
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	r15, [rbx + rbp]
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1212
	xor	r12d, r12d
	test	rbp, rbp
	jle	.label_1192
	mov	rsp, rsp
	mov	ecx, r14d
	nop	
	and	ecx, 1
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rbp, rbp
	xor	eax, 1
	mov	dword ptr [rsp + 0x24], eax
	lea	eax, [rcx*4]
	xor	eax, 5
	mov	dword ptr [rsp + 0x14], eax
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rbp, [rsp + 8]
	mov	rsp, rsp
	mov	r12d, 0x7fffffff
	lea	rdi, [rdi]
	test	r14b, 2
	mov	rbp, rbp
	jne	.label_1218
	nop	
.label_1215:
	mov	rbp, rbp
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	lea	rsi, [rsi]
	cmp	eax, 0x5e
	ja	.label_1203
	nop	
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1209]]
.label_1762:
	inc	rbx
	inc	r13d
.label_1206:
	cmp	rbx, r15
	jb	.label_1215
	mov	rbp, rbp
	jmp	.label_1195
.label_1203:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	nop	dword ptr [rax + rax]
.label_1210:
	mov	rdx, r15
	mov	rsp, rsp
	sub	rdx, rbx
	lea	rsi, [rsi]
	lea	rdi, [rsp + 4]
	mov	rsi, rbx
	mov	rcx, rbp
	lea	rsi, [rsi]
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	r14, rax
	test	r14, r14
	je	.label_1223
	cmp	r14, -2
	je	.label_1197
	lea	rdi, [rdi]
	cmp	r14, -1
	jne	.label_1200
	lea	rsi, [rsi]
	jmp	.label_1202
	nop	word ptr cs:[rax + rax]
.label_1223:
	mov	r14d, 1
.label_1200:
	mov	edi, dword ptr [rsp + 4]
	lea	rdi, [rdi]
	call	wcwidth
	test	eax, eax
	js	.label_1205
	mov	rbp, rbp
	mov	edx, 0x7fffffff
	sub	edx, r13d
	mov	ecx, 7
	lea	rsi, [rsi]
	cmp	eax, edx
	jg	.label_1213
	add	r13d, eax
	jmp	.label_1211
	nop	word ptr cs:[rax + rax]
.label_1205:
	mov	edi, dword ptr [rsp + 4]
	call	iswcntrl
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1211
	mov	rsp, rsp
	cmp	r13d, 0x7fffffff
	je	.label_1193
	inc	r13d
	nop	word ptr cs:[rax + rax]
.label_1211:
	mov	rbp, rbp
	add	rbx, r14
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	call	mbsinit
	test	eax, eax
	mov	rbp, rbp
	mov	rax, rbx
	je	.label_1210
	jmp	.label_1196
.label_1197:
	nop	
	add	r13d, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	test	eax, eax
	mov	rax, r15
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x14]
	je	.label_1196
	lea	rdi, [rdi]
	jmp	.label_1213
.label_1202:
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1213
	inc	rbx
	inc	r13d
	mov	rax, rbx
.label_1196:
	mov	rbx, rax
	mov	rbp, rbp
	jmp	.label_1206
.label_1193:
	mov	rsp, rsp
	mov	ecx, 7
	lea	rdi, [rdi]
	mov	r13d, 0x7fffffff
.label_1213:
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	je	.label_1206
	jmp	.label_1221
	nop	
.label_1218:
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	cmp	eax, 0x5e
	mov	rbp, rbp
	ja	.label_1208
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1214]]
.label_1792:
	lea	rsi, [rsi]
	inc	rbx
	inc	r13d
.label_1191:
	lea	rdi, [rdi]
	cmp	rbx, r15
	nop	
	jb	.label_1218
	jmp	.label_1195
.label_1208:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	nop	dword ptr [rax + rax]
.label_1219:
	nop	
	mov	rdx, r15
	nop	
	sub	rdx, rbx
	lea	rdi, [rsp + 4]
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rcx, rbp
	lea	rsi, [rsi]
	call	rpl_mbrtowc
	mov	r14, rax
	mov	rsp, rsp
	test	r14, r14
	je	.label_1198
	mov	rbp, rbp
	cmp	r14, -2
	je	.label_1201
	cmp	r14, -1
	lea	rsi, [rsi]
	jne	.label_1204
	mov	rsp, rsp
	jmp	.label_1207
	nop	word ptr cs:[rax + rax]
.label_1198:
	mov	r14d, 1
.label_1204:
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 4]
	call	wcwidth
	mov	ecx, 1
	test	eax, eax
	js	.label_1216
	mov	rsp, rsp
	mov	edx, 0x7fffffff
	sub	edx, r13d
	mov	ecx, 7
	cmp	eax, edx
	lea	rdi, [rdi]
	jg	.label_1216
	mov	rsp, rsp
	add	r13d, eax
	mov	rsp, rsp
	add	rbx, r14
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	mbsinit
	nop	
	test	eax, eax
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	je	.label_1219
	jmp	.label_1222
.label_1201:
	mov	rsp, rsp
	add	r13d, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	test	eax, eax
	lea	rdi, [rdi]
	mov	rax, r15
	nop	
	mov	ecx, dword ptr [rsp + 0x14]
	jne	.label_1216
.label_1222:
	mov	rbx, rax
	jmp	.label_1191
.label_1207:
	mov	ecx, 1
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	test	eax, eax
	nop	
	jne	.label_1216
	inc	rbx
	mov	rsp, rsp
	inc	r13d
	mov	rax, rbx
	jmp	.label_1191
.label_1216:
	lea	rdi, [rdi]
	test	ecx, ecx
	je	.label_1191
.label_1221:
	mov	r13d, 0xffffffff
	cmp	ecx, 7
	jne	.label_1195
	mov	rsp, rsp
	jmp	.label_1192
.label_1212:
	xor	r13d, r13d
	mov	rbp, rbp
	test	r14b, 2
	lea	rsi, [rsi]
	je	.label_1194
	nop	word ptr cs:[rax + rax]
.label_1220:
	lea	rsi, [rsi]
	cmp	rbx, r15
	mov	rsp, rsp
	jae	.label_1195
	movzx	ebp, byte ptr [rbx]
	mov	rsp, rsp
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	r12d, 0xffffffff
	mov	rsp, rsp
	test	byte ptr [rax + rbp*2 + 1], 0x40
	je	.label_1192
	lea	rdi, [rdi]
	inc	rbx
	inc	r13d
	mov	r12d, 0x7fffffff
	lea	rdi, [rdi]
	cmp	r13d, 0x80000000
	jne	.label_1220
	mov	rsp, rsp
	jmp	.label_1192
.label_1199:
	lea	rdi, [rdi]
	inc	r13d
	mov	rsp, rsp
	jmp	.label_1194
.label_1217:
	nop	
	mov	r12d, 0x7fffffff
	cmp	r13d, 0x7fffffff
	jne	.label_1199
	mov	rsp, rsp
	jmp	.label_1192
	nop	word ptr [rax + rax]
.label_1194:
	mov	rbp, rbp
	cmp	rbx, r15
	lea	rsi, [rsi]
	jae	.label_1195
	mov	rbp, rbp
	movzx	ebp, byte ptr [rbx]
	mov	rsp, rsp
	inc	rbx
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_1217
	mov	rsp, rsp
	test	al, 2
	mov	rsp, rsp
	jne	.label_1194
	lea	rdi, [rdi]
	jmp	.label_1217
.label_1195:
	mov	rbp, rbp
	mov	r12d, r13d
.label_1192:
	mov	eax, r12d
	lea	rdi, [rdi]
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4133a0

	.globl num_processors
	.type num_processors, @function
num_processors:
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x88
	lea	rdi, [rdi]
	mov	rbx, -1
	cmp	edi, 2
	mov	rbp, rbp
	jne	.label_1231
	nop	
	mov	edi, OFFSET FLAT:.str_6
	mov	rsp, rsp
	call	getenv
	nop	
	xor	r14d, r14d
	test	rax, rax
	je	.label_1236
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	lea	rdi, [rdi]
	test	cl, cl
	nop	
	je	.label_1241
	mov	edx, 0x80001f
	nop	word ptr cs:[rax + rax]
.label_1229:
	movsx	esi, cl
	add	esi, -9
	lea	rdi, [rdi]
	cmp	esi, 0x17
	ja	.label_1224
	nop	
	bt	edx, esi
	nop	
	jae	.label_1224
	nop	
	mov	cl, byte ptr [rax + 1]
	nop	
	inc	rax
	lea	rsi, [rsi]
	test	cl, cl
	lea	rsi, [rsi]
	jne	.label_1229
.label_1241:
	lea	rsi, [rsi]
	xor	ecx, ecx
.label_1224:
	lea	rsi, [rsi]
	movsx	ecx, cl
	add	ecx, -0x30
	lea	rsi, [rsi]
	xor	r14d, r14d
	cmp	ecx, 9
	mov	rbp, rbp
	ja	.label_1236
	mov	qword ptr [rsp + 8], 0
	mov	rbp, rbp
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	mov	edx, 0xa
	mov	rdi, rax
	call	strtoul
	mov	r14, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	test	rax, rax
	je	.label_1244
	mov	cl, byte ptr [rax]
	test	cl, cl
	nop	
	je	.label_1236
	lea	rdi, [rdi]
	inc	rax
	mov	edx, 0x80001f
	nop	word ptr [rax + rax]
.label_1234:
	lea	rdi, [rdi]
	movsx	esi, cl
	add	esi, -9
	mov	rsp, rsp
	cmp	esi, 0x17
	ja	.label_1227
	bt	edx, esi
	jae	.label_1227
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	mov	rbp, rbp
	jne	.label_1234
	lea	rdi, [rdi]
	jmp	.label_1236
.label_1227:
	mov	rbp, rbp
	movzx	eax, cl
	cmp	eax, 0x2c
	je	.label_1236
.label_1244:
	xor	r14d, r14d
.label_1236:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.1_4
	call	getenv
	xor	ecx, ecx
	test	rax, rax
	mov	rbp, rbp
	je	.label_1235
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	test	cl, cl
	mov	rbp, rbp
	je	.label_1243
	mov	rbp, rbp
	mov	edx, 0x80001f
	nop	dword ptr [rax]
.label_1230:
	movsx	esi, cl
	add	esi, -9
	cmp	esi, 0x17
	ja	.label_1225
	mov	rsp, rsp
	bt	edx, esi
	lea	rsi, [rsi]
	jae	.label_1225
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 1]
	inc	rax
	nop	
	test	cl, cl
	jne	.label_1230
.label_1243:
	lea	rsi, [rsi]
	xor	ecx, ecx
.label_1225:
	lea	rdi, [rdi]
	movsx	edx, cl
	nop	
	add	edx, -0x30
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_1235
	mov	qword ptr [rsp + 8], 0
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rsp, rsp
	mov	rdi, rax
	call	strtoul
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1242
	mov	rsp, rsp
	mov	dl, byte ptr [rax]
	mov	rsp, rsp
	test	dl, dl
	lea	rdi, [rdi]
	je	.label_1235
	nop	
	inc	rax
	nop	
	mov	esi, 0x80001f
	nop	word ptr cs:[rax + rax]
.label_1238:
	movsx	edi, dl
	add	edi, -9
	cmp	edi, 0x17
	lea	rsi, [rsi]
	ja	.label_1237
	mov	rbp, rbp
	bt	esi, edi
	jae	.label_1237
	mov	qword ptr [rsp + 8], rax
	mov	dl, byte ptr [rax]
	inc	rax
	mov	rbp, rbp
	test	dl, dl
	nop	
	jne	.label_1238
	jmp	.label_1235
.label_1237:
	nop	
	movzx	eax, dl
	nop	
	cmp	eax, 0x2c
	mov	rsp, rsp
	je	.label_1235
.label_1242:
	mov	rsp, rsp
	xor	ecx, ecx
.label_1235:
	cmp	rcx, 1
	lea	rdi, [rdi]
	sbb	rbx, rbx
	nop	
	or	rbx, rcx
	cmp	r14, rbx
	mov	rax, rbx
	cmovb	rax, r14
	nop	
	mov	edi, 1
	nop	
	test	r14, r14
	jne	.label_1240
.label_1231:
	cmp	edi, 1
	jne	.label_1226
	lea	rdx, [rsp + 8]
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 0x80
	mov	rsp, rsp
	call	sched_getaffinity
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1232
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	lea	rdi, [rdi]
	call	__sched_cpucount
	test	eax, eax
	je	.label_1232
	lea	rsi, [rsi]
	cdqe	
	mov	rsp, rsp
	jmp	.label_1233
.label_1226:
	mov	edi, 0x53
	lea	rsi, [rsi]
	call	sysconf
	cmp	rax, 1
	jne	.label_1228
	lea	rdx, [rsp + 8]
	nop	
	xor	edi, edi
	mov	esi, 0x80
	lea	rdi, [rdi]
	call	sched_getaffinity
	test	eax, eax
	jne	.label_1239
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	nop	
	call	__sched_cpucount
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_1239
	cdqe	
	mov	rbp, rbp
	jmp	.label_1228
.label_1232:
	mov	rsp, rsp
	mov	edi, 0x54
	call	sysconf
.label_1228:
	lea	rsi, [rsi]
	test	rax, rax
	jg	.label_1233
.label_1239:
	lea	rsi, [rsi]
	mov	eax, 1
.label_1233:
	cmp	rax, rbx
	cmovb	rbx, rax
	nop	
	mov	rax, rbx
.label_1240:
	lea	rsi, [rsi]
	add	rsp, 0x88
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4136e0

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
	js	.label_1248
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_1247
.label_1248:
	mov	rbp, rbp
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_1245
	nop	
	movsd	xmm0,  qword ptr [word ptr [rip + label_1246]]
	jmp	.label_1247
.label_1245:
	mov	rsp, rsp
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_13]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_14]]
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
.label_1247:
	nop	
	add	rsp, 0x70
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413780

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
	js	.label_1249
	lea	rdi, [rdi]
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	nop	
	jmp	.label_1250
.label_1249:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	mov	rsp, rsp
	je	.label_1252
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	mov	rsp, rsp
	or	rcx, rbx
	js	.label_1251
	mov	rsp, rsp
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mov	rbp, rbp
	jmp	.label_1254
.label_1252:
	lea	rsi, [rsi]
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_13]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_14]]
	subpd	xmm0, xmm2
	lea	rsi, [rsi]
	pshufd	xmm3, xmm0, 0x4e
	lea	rsi, [rsi]
	addpd	xmm3, xmm0
	movq	xmm0, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	lea	rsi, [rsi]
	addpd	xmm1, xmm0
	addsd	xmm1, xmm3
	mov	eax, dword ptr [rsp + 0x68]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	nop	
	mulsd	xmm0, xmm1
	jmp	.label_1250
.label_1251:
	lea	rdi, [rsp]
	nop	
	call	sysinfo
	test	eax, eax
	mov	rsp, rsp
	je	.label_1255
	movsd	xmm0,  qword ptr [word ptr [rip + label_1246]]
	jmp	.label_1253
.label_1255:
	lea	rdi, [rdi]
	movq	xmm0, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_13]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_14]]
	mov	rsp, rsp
	pshufd	xmm1, xmm0, 0x4e
	lea	rsi, [rsi]
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
.label_1254:
	mulsd	xmm0, xmm1
.label_1253:
	mulsd	xmm0,  qword ptr [word ptr [rip + label_785]]
.label_1250:
	mov	rsp, rsp
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4138e0

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
	js	.label_1262
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	r12d, esi
	mov	rsp, rsp
	call	pipe2
	mov	ebp, eax
	mov	rbp, rbp
	test	ebp, ebp
	mov	rsp, rsp
	jns	.label_1260
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	jne	.label_1260
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  0xffffffff
	lea	rdi, [rdi]
	mov	esi, r12d
.label_1262:
	mov	rsp, rsp
	test	esi, 0xfff7f7ff
	nop	
	je	.label_1258
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x16
	jmp	.label_1261
.label_1260:
	mov	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  1
	mov	rbp, rbp
	jmp	.label_1257
.label_1258:
	mov	r12d, esi
	nop	
	mov	rdi, rbx
	call	pipe
	mov	ebp, 0xffffffff
	test	eax, eax
	js	.label_1257
	mov	rsp, rsp
	mov	eax, r12d
	test	ah, 8
	je	.label_1259
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
	js	.label_1256
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
	je	.label_1256
	mov	edi, dword ptr [rbx]
	mov	esi, 3
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1256
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
	je	.label_1256
.label_1259:
	xor	ebp, ebp
	test	r12d, 0x80000
	je	.label_1257
	mov	edi, dword ptr [rbx + 4]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	mov	rsp, rsp
	js	.label_1256
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbx + 4]
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_1256
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
	js	.label_1256
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
	jne	.label_1257
.label_1256:
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
.label_1261:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
.label_1257:
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
	.align	16
	#Procedure 0x413b20

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
	je	.label_1263
	mov	rbp, rbp
	mov	eax, 0x31069
	lea	rdi, [rdi]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1263
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	strtol
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	je	.label_1263
	nop	
	mov	eax, 0x31069
.label_1263:
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
	.align	16
	#Procedure 0x413bb0

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
	je	.label_1264
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
	jl	.label_1266
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1266
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
	jne	.label_1265
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_1265:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_1266:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_1264:
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
	.align	16
	#Procedure 0x413ca0
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
	#Procedure 0x413cf0
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
	#Procedure 0x413d10
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
	#Procedure 0x413d30
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
	#Procedure 0x413da0
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
	#Procedure 0x413dc0
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
	je	.label_1267
	test	rdx, rdx
	nop	
	je	.label_1267
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_1267:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413e00
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
	#Procedure 0x413eb0

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
.label_1354:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_1371
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1394]]
.label_1872:
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
.label_1873:
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
	jne	.label_1275
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_1275
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_1305:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_1298
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_1298:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_1305
.label_1275:
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
	jmp	.label_1317
.label_1865:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_1317
.label_1868:
	lea	rsi, [rsi]
	mov	al, 1
.label_1866:
	lea	rsi, [rsi]
	mov	dl, 1
.label_1869:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_1339
	mov	rbp, rbp
	mov	cl, al
.label_1339:
	mov	al, cl
.label_1867:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1343
	test	rbp, rbp
	je	.label_1348
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_1336
.label_1343:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_1336
.label_1870:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_1356
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1361
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_1306
.label_1871:
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
	jmp	.label_1317
.label_1348:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_1336:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_1317
.label_1356:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_1306
.label_1361:
	nop	
	mov	r14d, 1
.label_1306:
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
.label_1317:
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
	jmp	.label_1277
	nop	dword ptr [rax]
.label_1270:
	mov	rsp, rsp
	inc	r15
.label_1277:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_1376
	cmp	r15, r10
	jne	.label_1334
	jmp	.label_1335
	nop	dword ptr [rax]
.label_1376:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_1337
.label_1334:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_1340
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_1345
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_1345
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
.label_1345:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_1370
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_1281
	nop	dword ptr [rax]
.label_1340:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_1281
	nop	word ptr cs:[rax + rax]
.label_1370:
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
	jne	.label_1274
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
	je	.label_1281
	jmp	.label_1269
.label_1274:
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
.label_1281:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_1312
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1316]]
.label_1885:
	test	r15, r15
	jne	.label_1276
	jmp	.label_1325
.label_1889:
	xor	eax, eax
	cmp	r10, -1
	je	.label_1327
	test	r15, r15
	jne	.label_1329
	nop	
	cmp	r10, 1
	je	.label_1325
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_1273
.label_1878:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_1384
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_1269
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_1315
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_1315
	cmp	r14, rbp
	jae	.label_1347
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_1347:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_1393
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_1393:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_1360
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_1360:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_1315:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_1369
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_1369:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_1374
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_1382
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_1383
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_1387
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_1387:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_1395
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_1395:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_1273
.label_1879:
	mov	bl, 0x62
	nop	
	jmp	.label_1279
.label_1880:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_1280
.label_1881:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_1279
.label_1882:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_1279
.label_1883:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_1280
.label_1886:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_1295
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_1302
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
	jae	.label_1307
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_1307:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_1326
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_1326:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_1333
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_1333:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_1295:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_1273
.label_1887:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_1342
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_1276
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_1276
	nop	
	jmp	.label_1353
.label_1888:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_1355
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_1358
	jmp	.label_1362
.label_1312:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_1365
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
	jmp	.label_1378
.label_1327:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_1304
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_1304
.label_1325:
	mov	dl, 1
.label_1884:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_1391
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_1273
.label_1384:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_1270
	jmp	.label_1276
.label_1355:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_1280
.label_1358:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_1282
.label_1280:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_1286
.label_1279:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_1273
	jmp	.label_1293
.label_1365:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_1300
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_1300:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_1313
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_1385:
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
	je	.label_1292
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_1287
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_1344
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_1351
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_1372:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_1368
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_1379
.label_1368:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_1372
.label_1351:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1377
	mov	rbp, rbp
	xor	r13d, r13d
.label_1377:
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
	je	.label_1385
	jmp	.label_1288
	nop	
.label_1313:
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
	je	.label_1284
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_1287
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_1292
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1303
	xor	r13d, r13d
.label_1303:
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
	je	.label_1313
	lea	rsi, [rsi]
	jmp	.label_1288
.label_1304:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_1273
.label_1342:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_1276
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_1276
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_1276
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_1338
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_1341
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_1296
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_1352
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_1352:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_1357
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_1357:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1294
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_1294:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_1291
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_1291:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_1273
.label_1276:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_1273:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_1323
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_1349
	nop	
	jmp	.label_1390
	nop	dword ptr [rax + rax]
.label_1323:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_1390
.label_1349:
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
	jne	.label_1396
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_1330
	nop	word ptr cs:[rax + rax]
.label_1390:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_1330:
	mov	bl, r12b
	je	.label_1282
	jmp	.label_1293
.label_1396:
	mov	bl, r12b
.label_1293:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_1269
	cmp	r9d, 2
	jne	.label_1299
	mov	al, dil
	and	al, 1
	jne	.label_1299
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_1320
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_1320:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_1310
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1310:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1318
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_1318:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_1299:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_1324
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_1324:
	mov	rbp, rbp
	inc	r14
	jmp	.label_1332
.label_1329:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_1273
.label_1374:
	xor	r13d, r13d
	jmp	.label_1273
.label_1382:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_1273
.label_1383:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_1273
.label_1287:
	xor	r13d, r13d
.label_1284:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_1288
.label_1292:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_1350
	lea	rax, [r11 + r15]
.label_1366:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_1392
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_1366
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_1288
.label_1350:
	xor	r13d, r13d
	jmp	.label_1288
.label_1392:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_1288
.label_1344:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_1288:
	mov	rbp, rbp
	mov	rbx, r10
.label_1378:
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
	ja	.label_1380
	test	cl, cl
	je	.label_1380
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_1273
.label_1380:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1268
	nop	dword ptr [rax]
.label_1389:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_1268:
	mov	rsp, rsp
	test	cl, cl
	je	.label_1283
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_1285
	cmp	r14, rbp
	jae	.label_1289
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_1289:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_1285:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_1301
	nop	dword ptr [rax + rax]
.label_1283:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_1308
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_1363
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_1363
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_1319
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_1319:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_1373
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_1373:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_1331
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_1331:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_1363:
	cmp	r14, rbp
	jae	.label_1271
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_1271:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_1311
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_1311:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_1367
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_1367:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_1301:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_1282
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_1359
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_1359
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_1388
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_1388:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_1309
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_1309:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_1359:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_1389
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_1389
	nop	word ptr cs:[rax + rax]
.label_1282:
	test	dil, 1
	je	.label_1272
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_1272
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_1322
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_1322:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1297
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1297:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_1272:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_1332:
	cmp	r14, rbp
	jae	.label_1290
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_1290:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_1270
.label_1338:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_1273
.label_1341:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_1273
	nop	word ptr [rax + rax]
.label_1335:
	nop	
	mov	rcx, r15
.label_1337:
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
	je	.label_1321
	mov	rsp, rsp
	or	al, dl
	je	.label_1386
.label_1321:
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
	je	.label_1328
	mov	rsp, rsp
	or	al, dl
	jne	.label_1328
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_1346
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_1328
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
	je	.label_1354
.label_1328:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_1364
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_1364
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_1364
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1381:
	cmp	r14, rbp
	jae	.label_1375
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_1375:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_1381
.label_1364:
	cmp	r14, rbp
	jae	.label_1314
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_1314
.label_1391:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_1269
.label_1379:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_1269
.label_1308:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_1269
.label_1386:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_1269
.label_1286:
	nop	
	mov	r9d, 2
.label_1269:
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
.label_1278:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_1314:
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
.label_1346:
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
	jmp	.label_1278
.label_1302:
	mov	r9d, 2
	jmp	.label_1269
.label_1362:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_1269
.label_1353:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_1269
.label_1296:
	mov	r9d, 5
	nop	
	jmp	.label_1269
.label_1371:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415350
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
	#Procedure 0x415490
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
	je	.label_1397
	mov	qword ptr [rax], rbx
.label_1397:
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
	#Procedure 0x4155e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1398
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1402:
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
	jl	.label_1402
.label_1398:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_1401
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_1399]], OFFSET FLAT:slot0
.label_1401:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1400
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1400:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4156a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4156b0

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
	js	.label_1409
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_1404
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_1406
.label_1404:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_1405
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
	jne	.label_1408
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_1408:
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
.label_1406:
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
	ja	.label_1407
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
	je	.label_1403
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_1403:
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
.label_1407:
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
.label_1409:
	lea	rdi, [rdi]
	call	abort
.label_1405:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x415920
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415930
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
	#Procedure 0x415960
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
	#Procedure 0x415990

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
	je	.label_1410
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
.label_1410:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415a20

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
	je	.label_1411
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
.label_1411:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415ac0

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
	je	.label_1412
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
.label_1412:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415b50
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
	je	.label_1413
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
.label_1413:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x415bc0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_1414]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1415]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1416]]
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
	#Procedure 0x415c60
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_1414]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1415]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1416]]
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
	#Procedure 0x415d00

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_1414]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1415]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1416]]
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
	#Procedure 0x415d70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_1414]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1415]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1416]]
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
	#Procedure 0x415de0

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
	je	.label_1417
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
.label_1417:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x415ec0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_1414]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1415]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1416]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1418
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_1418
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
.label_1418:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x415f50
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1414]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1415]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1416]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1419
	test	rdx, rdx
	je	.label_1419
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
.label_1419:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415fe0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_1414]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1415]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1416]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1420
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1420
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
.label_1420:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416080
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1414]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1415]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1416]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1421
	test	rsi, rsi
	je	.label_1421
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
.label_1421:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416120
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416130
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
	#Procedure 0x416150

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
	#Procedure 0x416170

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
	#Procedure 0x4161a0

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
	jne	.label_1423
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_1425
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_1424
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1424
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_1424
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_1424
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_1424
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_1424
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_1423
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_1423
.label_1425:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_1424
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_1424
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_1424
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_1424
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_1424
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_1424
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_1422
.label_1424:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_1423:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1422:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_1423
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_1423
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416310

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	r12, rsi
	mov	r14, rdi
	lea	rsi, [rsi]
	test	r12, r12
	mov	rsp, rsp
	je	.label_1429
	nop	
	xor	ebx, ebx
	test	r14, r14
	je	.label_1427
	mov	esi, OFFSET FLAT:.str_9
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	fopen_safer
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1430
.label_1427:
	nop	
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	lea	rdi, [rdi]
	mov	qword ptr [r15], rbx
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1431
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	rdi, rbx
	call	setvbuf
	mov	rsp, rsp
	jmp	.label_1430
.label_1429:
	mov	edi, 0x1038
	mov	rbp, rbp
	call	xmalloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	mov	qword ptr [r15], 0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_1430
.label_1431:
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	mov	rsp, rsp
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:.str.3_2
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	call	open
	mov	rbp, rbp
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1428
	lea	rdi, [rdi]
	cmp	r12, 0x800
	mov	edx, 0x800
	mov	rsp, rsp
	cmovbe	rdx, r12
	mov	edi, ebx
	mov	rsi, r14
	call	read
	nop	
	mov	r12, rax
	mov	rbp, rbp
	mov	edi, ebx
	nop	
	call	close
	lea	rsi, [rsi]
	xor	r13d, r13d
	test	r12, r12
	js	.label_1428
	lea	rsi, [rsi]
	cmp	r12, 0x7ff
	lea	rsi, [rsi]
	mov	r13, r12
	ja	.label_1426
.label_1428:
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r13
	cmp	rax, 0x10
	mov	ebx, 0x10
	mov	rbp, rbp
	cmovbe	rbx, rax
	lea	rsi, [rsi]
	lea	r12, [rsp]
	xor	esi, esi
	mov	rdi, r12
	lea	rdi, [rdi]
	call	gettimeofday
	mov	rsp, rsp
	lea	rdi, [r14 + r13]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r13
	cmp	rbx, 0x7ff
	ja	.label_1426
	mov	eax, 0x800
	mov	rsp, rsp
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, 4
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rdi, [rdi]
	cmovbe	r12, rax
	nop	
	call	getpid
	mov	rbp, rbp
	mov	dword ptr [rsp], eax
	nop	
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	add	r12, rbx
	lea	rsi, [rsi]
	cmp	r12, 0x7ff
	mov	rsp, rsp
	ja	.label_1426
	mov	eax, 0x800
	mov	rbp, rbp
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	lea	rdi, [r14 + r12]
	nop	
	lea	rsi, [rsp]
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	add	rbx, r12
	cmp	rbx, 0x7ff
	ja	.label_1426
	mov	eax, 0x800
	nop	
	sub	rax, rbx
	cmp	rax, 4
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rsi, [rsi]
	cmovbe	r12, rax
	call	getuid
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	nop	
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	add	r12, rbx
	nop	
	cmp	r12, 0x7ff
	lea	rdi, [rdi]
	ja	.label_1426
	mov	rbp, rbp
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r12
	nop	
	cmp	rax, 4
	mov	rbp, rbp
	mov	ebx, 4
	cmovbe	rbx, rax
	mov	rbp, rbp
	call	getgid
	mov	rsp, rsp
	mov	dword ptr [rsp], eax
	mov	rbp, rbp
	add	r12, r14
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
.label_1426:
	mov	rdi, r14
	nop	
	call	isaac_seed
.label_1430:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416640
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416650
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416660

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r15, rsi
	nop	
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	je	.label_1437
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	mov	rbp, rbp
	call	fread_unlocked
	mov	rbp, rax
	nop	
	call	__errno_location
	mov	r12, rax
	nop	
	cmp	rbp, rbx
	mov	rsp, rsp
	je	.label_1435
	nop	
.label_1433:
	lea	rdi, [rdi]
	sub	rbx, rbp
	add	r15, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	mov	rbp, rbp
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14]
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	cmp	rbx, rbp
	jne	.label_1433
	mov	rsp, rsp
	jmp	.label_1435
.label_1437:
	mov	r12, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	lea	rsi, [rsi]
	cmp	r12, rbx
	nop	
	jae	.label_1436
	lea	rbp, [r14 + 0x20]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rdx, r12
	lea	rdi, [rdi]
	call	memcpy
	add	r15, r12
	lea	rsi, [rsi]
	sub	rbx, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1438:
	nop	
	cmp	rbx, 0x800
	jb	.label_1432
	mov	rdi, rbp
	mov	rsi, r15
	call	isaac_refill
	add	r15, 0x800
	mov	rbp, rbp
	add	rbx, -0x800
	jne	.label_1438
	mov	rbp, rbp
	jmp	.label_1434
.label_1432:
	mov	rdi, rbp
	mov	rsi, r13
	mov	rsp, rsp
	call	isaac_refill
	lea	rdi, [rdi]
	mov	r12d, 0x800
	mov	rsi, r13
.label_1436:
	mov	rdi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
.label_1434:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x18], r12
.label_1435:
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4167e0

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
	je	.label_1439
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	rpl_fclose
.label_1439:
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
	.align	16
	#Procedure 0x416830

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
	je	.label_1440
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_1442
	mov	esi, OFFSET FLAT:.str.1_6
	jmp	.label_1441
.label_1442:
	mov	esi, OFFSET FLAT:.str.2_3
.label_1441:
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
.label_1440:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4168c0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	mov	rax, qword ptr [rdi + 0x800]
	mov	rdx, qword ptr [rdi + 0x810]
	inc	rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x808]
	mov	rbp, rbp
	add	rcx, rdx
	mov	qword ptr [rdi + 0x810], rdx
	nop	
	lea	r9, [rdi + 0x400]
	mov	rsp, rsp
	mov	r8, rsi
	mov	r10, rdi
	nop	dword ptr [rax]
.label_1443:
	mov	r11, rax
	lea	rdi, [rdi]
	shl	r11, 0x15
	mov	rbp, rbp
	xor	r11, rax
	not	r11
	add	r11, qword ptr [r10 + 0x400]
	mov	rdx, qword ptr [r10]
	nop	
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	lea	rsi, [rsi]
	add	rcx, r11
	mov	qword ptr [r10], rcx
	lea	rsi, [rsi]
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8], rdx
	mov	rax, r11
	shr	rax, 5
	xor	rax, r11
	nop	
	add	rax, qword ptr [r10 + 0x408]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10 + 8]
	lea	rdi, [rdi]
	mov	r11d, ecx
	lea	rdi, [rdi]
	and	r11d, 0x7f8
	add	rdx, rax
	lea	rsi, [rsi]
	add	rdx, qword ptr [rdi + r11]
	mov	rbp, rbp
	mov	qword ptr [r10 + 8], rdx
	mov	rsp, rsp
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 8], rcx
	mov	rsp, rsp
	mov	r11, rax
	shl	r11, 0xc
	xor	r11, rax
	lea	rdi, [rdi]
	add	r11, qword ptr [r10 + 0x410]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rsp, rsp
	mov	eax, edx
	lea	rdi, [rdi]
	and	eax, 0x7f8
	lea	rdi, [rdi]
	add	rcx, r11
	nop	
	add	rcx, qword ptr [rdi + rax]
	nop	
	mov	qword ptr [r10 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x10], rdx
	mov	rax, r11
	shr	rax, 0x21
	mov	rbp, rbp
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x418]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10 + 0x18]
	lea	rsi, [rsi]
	mov	r11d, ecx
	and	r11d, 0x7f8
	lea	rsi, [rsi]
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	lea	rsi, [rsi]
	mov	qword ptr [r10 + 0x18], rdx
	shr	rdx, 8
	mov	rbp, rbp
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 0x18], rcx
	add	r10, 0x20
	add	r8, 0x20
	mov	rbp, rbp
	cmp	r10, r9
	jb	.label_1443
	add	rsi, 0x400
	lea	r8, [rdi + 0x800]
	nop	word ptr cs:[rax + rax]
.label_1444:
	mov	r10, rax
	shl	r10, 0x15
	xor	r10, rax
	not	r10
	add	r10, qword ptr [r9 - 0x400]
	mov	rsp, rsp
	mov	rdx, qword ptr [r9]
	mov	rbp, rbp
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r10
	mov	rsp, rsp
	mov	qword ptr [r9], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	nop	
	add	rdx, qword ptr [rdi + rcx]
	mov	rbp, rbp
	mov	qword ptr [rsi], rdx
	mov	rax, r10
	nop	
	shr	rax, 5
	lea	rsi, [rsi]
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3f8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 8]
	mov	r10d, ecx
	and	r10d, 0x7f8
	nop	
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 8], rcx
	mov	r10, rax
	shl	r10, 0xc
	nop	
	xor	r10, rax
	nop	
	add	r10, qword ptr [r9 - 0x3f0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	eax, edx
	lea	rsi, [rsi]
	and	eax, 0x7f8
	add	rcx, r10
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r9 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rdx
	nop	
	mov	rax, r10
	nop	
	shr	rax, 0x21
	xor	rax, r10
	nop	
	add	rax, qword ptr [r9 - 0x3e8]
	mov	rcx, qword ptr [r9 + 0x18]
	mov	r10d, ecx
	mov	rsp, rsp
	and	r10d, 0x7f8
	mov	rbp, rbp
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 0x18], rdx
	shr	rdx, 8
	mov	rsp, rsp
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 0x18], rcx
	add	r9, 0x20
	add	rsi, 0x20
	cmp	r9, r8
	nop	
	jb	.label_1444
	mov	qword ptr [rdi + 0x800], rax
	mov	qword ptr [rdi + 0x808], rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416ba0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	movabs	rdx, 0x647c4677a2884b7c
	nop	
	movabs	r8, 0xb9f8b322c73ac862
	mov	rbp, rbp
	movabs	rsi, 0x8c0ea5053d4712a0
	movabs	rcx, 0xb29b2e824a595524
	movabs	rax, 0x82f053db8355e0ce
	movabs	r11, 0x48fe4a0fa5a09315
	mov	rbp, rbp
	movabs	r10, 0xae985bf2cbfc89ed
	movabs	r9, 0x98f5704f6c44c0ab
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1445:
	mov	rbp, rbp
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	mov	rbp, rbp
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	lea	rdi, [rdi]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	mov	rbp, rbp
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	lea	rsi, [rsi]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r11, [r8 + rdx]
	mov	rbp, rbp
	shl	rdx, 9
	mov	r15, rdx
	nop	
	xor	r15, r10
	sub	rsi, r15
	lea	rdi, [rdi]
	mov	r10, r8
	nop	
	shr	r8, 0x17
	nop	
	xor	r9, r8
	add	r10, rsi
	sub	rcx, r9
	mov	rbp, rbp
	lea	r12, [rcx + rsi]
	lea	rsi, [rsi]
	shl	rsi, 0xf
	mov	rdx, rsi
	nop	
	xor	rdx, r11
	sub	rax, rdx
	mov	r8, rcx
	shr	r8, 0xe
	mov	rsp, rsp
	xor	r8, r10
	mov	r10, rcx
	nop	
	add	r10, rax
	mov	rbp, rbp
	sub	r14, r8
	nop	
	lea	r13, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	mov	rsp, rsp
	xor	rsi, r12
	sub	r15, rsi
	mov	rcx, r14
	shr	rcx, 0x11
	mov	rsp, rsp
	xor	rcx, r10
	mov	rbp, rbp
	mov	r11, r14
	mov	rbp, rbp
	add	r11, r15
	mov	rbp, rbp
	sub	r9, rcx
	lea	r10, [r9 + r15]
	lea	rdi, [rdi]
	shl	r15, 0xe
	mov	rsp, rsp
	mov	rax, r15
	xor	rax, r13
	mov	rsp, rsp
	mov	qword ptr [rdi + rbx*8], rdx
	mov	qword ptr [rdi + rbx*8 + 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rdi + rbx*8 + 0x20], rax
	mov	qword ptr [rdi + rbx*8 + 0x28], r11
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	nop	
	mov	qword ptr [rdi + rbx*8 + 0x38], r9
	nop	
	add	rbx, 8
	cmp	rbx, 0x100
	lea	rdi, [rdi]
	jl	.label_1445
	xor	ebx, ebx
	nop	
.label_1446:
	mov	rsp, rsp
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	lea	rsi, [rsi]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	mov	rbp, rbp
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	nop	
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	rsp, rsp
	mov	r14, r9
	shr	r14, 9
	mov	rbp, rbp
	xor	r14, r11
	mov	rbp, rbp
	add	r9, rdx
	lea	rdi, [rdi]
	sub	r8, r14
	lea	rsi, [rsi]
	lea	r12, [r8 + rdx]
	shl	rdx, 9
	xor	rdx, r10
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	r11, r8
	shr	r11, 0x17
	xor	r11, r9
	mov	rsp, rsp
	add	r8, rsi
	sub	rcx, r11
	mov	rbp, rbp
	lea	r9, [rcx + rsi]
	lea	rdi, [rdi]
	shl	rsi, 0xf
	mov	rsp, rsp
	mov	r15, rsi
	xor	r15, r12
	sub	rax, r15
	lea	rsi, [rsi]
	mov	rsi, rcx
	shr	rsi, 0xe
	xor	r8, rsi
	add	rcx, rax
	sub	r14, r8
	lea	r12, [r14 + rax]
	lea	rsi, [rsi]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r9
	lea	rdi, [rdi]
	sub	rdx, rsi
	mov	rax, r14
	shr	rax, 0x11
	nop	
	xor	rcx, rax
	add	r14, rdx
	sub	r11, rcx
	mov	rsp, rsp
	lea	r10, [r11 + rdx]
	shl	rdx, 0xe
	mov	rbp, rbp
	xor	rdx, r12
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8], r15
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8 + 0x20], rdx
	mov	qword ptr [rdi + rbx*8 + 0x28], r14
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8 + 0x38], r11
	add	rbx, 8
	cmp	rbx, 0x100
	mov	r9, r11
	mov	r11, r14
	mov	rax, rdx
	mov	rdx, r15
	jl	.label_1446
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x416ed0

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
	.align	16
	#Procedure 0x416f50
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
	.align	16
	#Procedure 0x416f90

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	call	fgetc
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rsp, rsp
	cmp	ebp, -1
	je	.label_1451
	lea	rdi, [rdi]
	lea	r12, [rbx + 0x30]
	lea	r15, [rbx + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1450:
	mov	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x38], rax
	lea	rdi, [rdi]
	jne	.label_1449
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	call	_obstack_newchunk
	nop	
	mov	rax, qword ptr [r12]
.label_1449:
	lea	rcx, [rax + 1]
	mov	qword ptr [r12], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], bpl
	mov	rbp, rbp
	test	ebp, ebp
	jne	.label_1456
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	save_token
.label_1456:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	fgetc
	mov	ebp, eax
	nop	
	cmp	ebp, -1
	mov	rsp, rsp
	jne	.label_1450
	nop	
	jmp	.label_1453
.label_1451:
	lea	r15, [rbx + 0x18]
	lea	r12, [rbx + 0x30]
.label_1453:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	je	.label_1457
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_1455
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rsp, rsp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_1455:
	nop	
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	mov	rsp, rsp
	call	save_token
.label_1457:
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	lea	rsi, [rsi]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_1448
	lea	rdi, [rbx + 0x70]
	mov	rbp, rbp
	mov	esi, 8
	nop	
	call	_obstack_newchunk
	nop	
	mov	rax, qword ptr [rbx + 0x88]
.label_1448:
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x88]
	add	rdx, 8
	mov	qword ptr [rbx + 0x88], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x80]
	lea	rdi, [rdi]
	cmp	rdx, rax
	mov	rbp, rbp
	jne	.label_1458
	or	byte ptr [rbx + 0xc0], 2
.label_1458:
	mov	rcx, qword ptr [rbx + 0xa0]
	add	rdx, rcx
	lea	rsi, [rsi]
	not	rcx
	and	rcx, rdx
	mov	qword ptr [rbx + 0x88], rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, qword ptr [rbx + 0x90]
	nop	
	mov	rdi, rcx
	lea	rsi, [rsi]
	sub	rdi, rsi
	nop	
	mov	rdx, rbp
	sub	rdx, rsi
	cmp	rdi, rdx
	mov	rbp, rbp
	jbe	.label_1454
	mov	qword ptr [rbx + 0x88], rbp
	mov	rbp, rbp
	mov	rcx, rbp
.label_1454:
	mov	qword ptr [rbx + 0x80], rcx
	nop	
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0xd8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0xe0]
	lea	rsi, [rsi]
	cmp	rdx, rax
	jne	.label_1447
	or	byte ptr [rbx + 0x118], 2
.label_1447:
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rsp, rsp
	add	rdx, rcx
	not	rcx
	and	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0xe0], rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0xd0]
	mov	rbp, qword ptr [rbx + 0xe8]
	nop	
	mov	rdi, rcx
	nop	
	sub	rdi, rsi
	mov	rdx, rbp
	lea	rdi, [rdi]
	sub	rdx, rsi
	cmp	rdi, rdx
	lea	rsi, [rsi]
	jbe	.label_1452
	mov	rsp, rsp
	mov	qword ptr [rbx + 0xe0], rbp
	mov	rcx, rbp
.label_1452:
	mov	qword ptr [rbx + 0xd8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x10], rax
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	ferror
	test	eax, eax
	mov	rbp, rbp
	sete	al
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417200

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
	jne	.label_1459
	or	byte ptr [rbx + 0x68], 2
.label_1459:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rsi, [rsi]
	lea	rcx, [rax + r14]
	not	rax
	lea	rsi, [rsi]
	and	rax, rcx
	mov	qword ptr [rbx + 0x30], rax
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x38]
	lea	rsi, [rsi]
	mov	rsi, rax
	sub	rsi, rdx
	mov	rdi, rcx
	lea	rsi, [rsi]
	sub	rdi, rdx
	lea	rdi, [rdi]
	cmp	rsi, rdi
	jbe	.label_1460
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	rax, rcx
.label_1460:
	mov	rsp, rsp
	dec	r14
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 0x88]
	nop	
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	lea	rdi, [rdi]
	cmp	rcx, 8
	nop	
	jae	.label_1461
	nop	
	lea	rdi, [rbx + 0x70]
	lea	rsi, [rsi]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_1461:
	sub	r14, r15
	mov	rsp, rsp
	mov	qword ptr [rax], r15
	mov	rbp, rbp
	add	qword ptr [rbx + 0x88], 8
	mov	rax, qword ptr [rbx + 0xe0]
	mov	rcx, qword ptr [rbx + 0xe8]
	sub	rcx, rax
	mov	rbp, rbp
	cmp	rcx, 8
	jae	.label_1462
	lea	rdi, [rdi]
	lea	rdi, [rbx + 0xc8]
	lea	rdi, [rdi]
	mov	esi, 8
	lea	rsi, [rsi]
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0xe0]
.label_1462:
	mov	qword ptr [rax], r14
	add	qword ptr [rbx + 0xe0], 8
	inc	qword ptr [rbx]
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x417320
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
	.align	16
	#Procedure 0x417340

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
	.align	16
	#Procedure 0x417360

	.globl strnumcmp
	.type strnumcmp, @function
strnumcmp:
	push	rbp
	mov	rbp, rbp
	push	r14
	push	rbx
	movzx	r8d, byte ptr [rdi]
	cmp	r8d, 0x2d
	mov	r9b, byte ptr [rsi]
	movzx	r10d, r9b
	jne	.label_1486
	nop	dword ptr [rax]
.label_1495:
	lea	rdi, [rdi]
	movzx	r11d, byte ptr [rdi + 1]
	mov	rbp, rbp
	inc	rdi
	cmp	r11d, 0x30
	lea	rsi, [rsi]
	je	.label_1495
	mov	rsp, rsp
	cmp	r11d, ecx
	mov	rsp, rsp
	je	.label_1495
	movzx	r8d, r9b
	cmp	r8d, 0x2d
	jne	.label_1507
.label_1472:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1472
	cmp	eax, ecx
	je	.label_1472
	mov	rsp, rsp
	lea	ebp, [r11 - 0x30]
	cmp	ebp, 0xa
	setb	r10b
	mov	rsp, rsp
	cmp	ebp, 9
	ja	.label_1481
	mov	rsp, rsp
	movzx	ebp, r11b
	movzx	ebx, al
	nop	
	cmp	ebx, ebp
	nop	
	jne	.label_1481
	nop	
.label_1479:
	mov	r9b, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	lea	rdi, [rdi]
	movzx	r11d, r9b
	cmp	r11d, ecx
	je	.label_1479
	nop	word ptr cs:[rax + rax]
.label_1490:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rsi + 1]
	nop	
	inc	rsi
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rsp, rsp
	je	.label_1490
	lea	rdi, [rdi]
	lea	ebp, [r11 - 0x30]
	lea	rsi, [rsi]
	cmp	ebp, 0xa
	lea	rsi, [rsi]
	setb	r10b
	cmp	ebp, 9
	lea	rsi, [rsi]
	ja	.label_1474
	movzx	ebp, r9b
	lea	rdi, [rdi]
	movzx	ebx, al
	cmp	ebx, ebp
	mov	rsp, rsp
	je	.label_1479
	lea	rsi, [rsi]
	jmp	.label_1474
.label_1486:
	movzx	eax, r9b
	mov	rbp, rbp
	cmp	eax, 0x2d
	jne	.label_1510
	nop	
.label_1496:
	nop	
	movzx	eax, byte ptr [rsi + 1]
	mov	rbp, rbp
	inc	rsi
	nop	
	cmp	eax, 0x30
	je	.label_1496
	cmp	eax, ecx
	nop	
	je	.label_1496
	nop	
	cmp	eax, edx
	jne	.label_1498
	mov	rbp, rbp
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_1506:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi]
	lea	rdi, [rdi]
	inc	rsi
	cmp	eax, 0x30
	mov	rsp, rsp
	je	.label_1506
.label_1498:
	movzx	esi, al
	add	esi, -0x30
	mov	rsp, rsp
	mov	eax, 1
	cmp	esi, 0xa
	nop	
	jb	.label_1463
	nop	
	movzx	eax, r8b
	cmp	eax, 0x30
	jne	.label_1515
	lea	rsi, [rsi]
	jmp	.label_1519
.label_1507:
	cmp	r11d, edx
	jne	.label_1482
	nop	
	inc	rdi
	nop	dword ptr [rax + rax]
.label_1516:
	mov	rbp, rbp
	movzx	r11d, byte ptr [rdi]
	inc	rdi
	cmp	r11d, 0x30
	nop	
	je	.label_1516
.label_1482:
	lea	rsi, [rsi]
	movzx	edi, r11b
	lea	rsi, [rsi]
	add	edi, -0x30
	mov	eax, 0xffffffff
	cmp	edi, 0xa
	mov	rsp, rsp
	jb	.label_1463
	lea	rdi, [rdi]
	cmp	r8d, 0x30
	lea	rsi, [rsi]
	je	.label_1470
	cmp	r10d, ecx
	jne	.label_1476
.label_1470:
	lea	rsi, [rsi]
	movzx	r10d, byte ptr [rsi + 1]
	nop	
	inc	rsi
	cmp	r10d, 0x30
	je	.label_1470
	cmp	r10d, ecx
	mov	r9b, r10b
	je	.label_1470
.label_1476:
	cmp	r10d, edx
	nop	
	jne	.label_1480
	nop	
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_1478:
	movzx	r9d, byte ptr [rsi]
	mov	rsp, rsp
	inc	rsi
	cmp	r9d, 0x30
	je	.label_1478
.label_1480:
	movzx	eax, r9b
	jmp	.label_1491
.label_1510:
	lea	rdi, [rdi]
	movzx	ebp, r8b
	lea	rsi, [rsi]
	cmp	ebp, 0x30
	lea	rdi, [rdi]
	jne	.label_1488
	mov	rbp, rbp
	jmp	.label_1493
.label_1481:
	lea	rsi, [rsi]
	mov	r9b, r11b
.label_1474:
	lea	rdi, [rdi]
	movzx	r8d, al
	lea	rdi, [rdi]
	cmp	r11d, edx
	setne	bl
	lea	ebp, [r8 - 0x30]
	cmp	ebp, 0xa
	setb	r14b
	cmp	r8d, edx
	setne	al
	or	al, r10b
	movzx	eax, al
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_1505
	or	bl, r14b
	je	.label_1505
	movzx	eax, r9b
	lea	rsi, [rsi]
	add	eax, -0x30
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	cmp	eax, 9
	ja	.label_1518
.label_1465:
	lea	rsi, [rsi]
	movzx	ebx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ebx, ecx
	mov	rbp, rbp
	je	.label_1465
	inc	rdx
	add	ebx, -0x30
	lea	rsi, [rsi]
	cmp	ebx, 0xa
	nop	
	jb	.label_1465
.label_1518:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	cmp	ebp, 0xa
	mov	rbp, rbp
	jae	.label_1502
.label_1471:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, ecx
	je	.label_1471
	inc	rdi
	mov	rbp, rbp
	add	eax, -0x30
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jb	.label_1471
.label_1502:
	cmp	rdx, rdi
	mov	rbp, rbp
	jne	.label_1477
	sub	r8d, r11d
	xor	eax, eax
	test	rdx, rdx
	lea	rsi, [rsi]
	cmovne	eax, r8d
	jmp	.label_1463
.label_1505:
	mov	rsp, rsp
	movzx	ecx, dl
	cmp	r8d, ecx
	jne	.label_1483
	movzx	eax, r9b
	mov	rbp, rbp
	inc	rsi
	mov	rbp, rbp
	cmp	eax, ecx
	jne	.label_1489
	inc	rdi
	nop	
.label_1500:
	movzx	ebp, byte ptr [rsi]
	movsx	eax, bpl
	movzx	edx, byte ptr [rdi]
	lea	ecx, [rax - 0x30]
	lea	rdi, [rdi]
	cmp	ebp, edx
	jne	.label_1513
	inc	rsi
	nop	
	inc	rdi
	xor	eax, eax
	cmp	ecx, 0xa
	mov	rbp, rbp
	jb	.label_1500
	nop	
	jmp	.label_1463
.label_1477:
	mov	ecx, 1
	mov	eax, 0xffffffff
	mov	rsp, rsp
	cmovb	eax, ecx
	mov	rbp, rbp
	jmp	.label_1463
.label_1483:
	lea	rdi, [rdi]
	xor	eax, eax
	movzx	edx, r9b
	cmp	edx, ecx
	mov	rsp, rsp
	jne	.label_1463
	mov	rbp, rbp
	inc	rdi
	nop	dword ptr [rax]
.label_1475:
	nop	
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_1475
	jmp	.label_1491
.label_1513:
	mov	rsp, rsp
	movsx	ebx, dl
	lea	edx, [rbx - 0x30]
	nop	
	cmp	ecx, 9
	ja	.label_1485
	cmp	edx, 9
	ja	.label_1485
	sub	eax, ebx
	jmp	.label_1463
.label_1485:
	cmp	ecx, 0xa
	jae	.label_1466
	nop	
.label_1489:
	mov	rsp, rsp
	movsx	eax, byte ptr [rsi]
	mov	rbp, rbp
	inc	rsi
	cmp	eax, 0x30
	mov	rsp, rsp
	je	.label_1489
	jmp	.label_1469
.label_1466:
	xor	eax, eax
	cmp	edx, 0xa
	jb	.label_1475
	lea	rsi, [rsi]
	jmp	.label_1463
.label_1469:
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	jmp	.label_1463
.label_1491:
	lea	rsi, [rsi]
	add	eax, -0x30
	cmp	eax, 0xa
	lea	rdi, [rdi]
	sbb	eax, eax
	mov	rsp, rsp
	jmp	.label_1463
.label_1488:
	cmp	r8d, ecx
	mov	rbp, rbp
	jne	.label_1484
.label_1493:
	lea	rdi, [rdi]
	movzx	r8d, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	r8d, 0x30
	jne	.label_1488
	nop	
	jmp	.label_1493
.label_1484:
	nop	
	cmp	eax, 0x30
	je	.label_1494
	cmp	r10d, ecx
	jne	.label_1497
	nop	dword ptr [rax + rax]
.label_1494:
	mov	rbp, rbp
	movzx	r9d, byte ptr [rsi + 1]
	mov	rsp, rsp
	inc	rsi
	mov	rbp, rbp
	cmp	r9d, 0x30
	mov	rbp, rbp
	je	.label_1494
	cmp	r9d, ecx
	mov	rsp, rsp
	je	.label_1494
.label_1497:
	movzx	r10d, r8b
	jmp	.label_1512
	nop	dword ptr [rax + rax]
.label_1464:
	nop	
	mov	r8b, byte ptr [rdi + 1]
	inc	rdi
	lea	rsi, [rsi]
	movzx	r10d, r8b
	mov	rsp, rsp
	cmp	r10d, ecx
	lea	rdi, [rdi]
	je	.label_1464
	nop	word ptr [rax + rax]
.label_1521:
	movzx	r9d, byte ptr [rsi + 1]
	nop	
	inc	rsi
	cmp	r9d, ecx
	je	.label_1521
.label_1512:
	lea	ebp, [r10 - 0x30]
	mov	rsp, rsp
	cmp	ebp, 0xa
	setb	al
	lea	rdi, [rdi]
	cmp	ebp, 9
	ja	.label_1509
	lea	rdi, [rdi]
	movzx	ebp, r9b
	movzx	ebx, r8b
	cmp	ebx, ebp
	je	.label_1464
.label_1509:
	movzx	r9d, r9b
	cmp	r10d, edx
	setne	r14b
	lea	r11d, [r9 - 0x30]
	nop	
	cmp	r11d, 0xa
	setb	bpl
	mov	rsp, rsp
	cmp	r9d, edx
	setne	bl
	mov	rsp, rsp
	or	bl, al
	movzx	eax, bl
	cmp	eax, 1
	jne	.label_1468
	mov	rbp, rbp
	or	r14b, bpl
	je	.label_1468
	mov	rbp, rbp
	movzx	eax, r8b
	lea	rsi, [rsi]
	add	eax, -0x30
	xor	edx, edx
	mov	rbp, rbp
	cmp	eax, 9
	mov	rsp, rsp
	ja	.label_1522
	nop	word ptr [rax + rax]
.label_1503:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rbp, rbp
	je	.label_1503
	lea	rsi, [rsi]
	inc	rdx
	mov	rbp, rbp
	add	eax, -0x30
	mov	rbp, rbp
	cmp	eax, 0xa
	nop	
	jb	.label_1503
.label_1522:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	r11d, 0xa
	nop	
	jae	.label_1504
	nop	dword ptr [rax + rax]
.label_1492:
	nop	
	movzx	edi, byte ptr [rsi + 1]
	nop	
	inc	rsi
	mov	rsp, rsp
	cmp	edi, ecx
	lea	rdi, [rdi]
	je	.label_1492
	inc	rax
	lea	rsi, [rsi]
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1492
.label_1504:
	nop	
	cmp	rdx, rax
	jne	.label_1517
	mov	rbp, rbp
	sub	r10d, r9d
	xor	eax, eax
	test	rdx, rdx
	mov	rbp, rbp
	cmovne	eax, r10d
	jmp	.label_1463
.label_1468:
	movzx	eax, r8b
	mov	rsp, rsp
	movzx	ecx, dl
	cmp	eax, ecx
	jne	.label_1501
	inc	rdi
	cmp	r9d, eax
	jne	.label_1511
	inc	rsi
	nop	dword ptr [rax + rax]
.label_1473:
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rdi]
	movsx	eax, bpl
	movzx	edx, byte ptr [rsi]
	lea	ecx, [rax - 0x30]
	cmp	ebp, edx
	jne	.label_1467
	lea	rsi, [rsi]
	inc	rdi
	lea	rdi, [rdi]
	inc	rsi
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	cmp	ecx, 0xa
	jb	.label_1473
	jmp	.label_1463
.label_1517:
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	mov	rsp, rsp
	mov	eax, 1
	cmovb	eax, ecx
	jmp	.label_1463
.label_1501:
	xor	eax, eax
	cmp	r9d, ecx
	lea	rsi, [rsi]
	jne	.label_1463
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_1514:
	nop	
	movsx	eax, byte ptr [rsi]
	lea	rsi, [rsi]
	inc	rsi
	cmp	eax, 0x30
	mov	rsp, rsp
	je	.label_1514
	jmp	.label_1491
.label_1467:
	nop	
	movsx	ebx, dl
	lea	rsi, [rsi]
	lea	edx, [rbx - 0x30]
	cmp	ecx, 9
	lea	rsi, [rsi]
	ja	.label_1499
	cmp	edx, 9
	ja	.label_1499
	sub	eax, ebx
	mov	rbp, rbp
	jmp	.label_1463
.label_1499:
	lea	rdi, [rdi]
	cmp	ecx, 0xa
	jae	.label_1508
	nop	dword ptr [rax]
.label_1511:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	nop	
	cmp	eax, 0x30
	je	.label_1511
	jmp	.label_1469
.label_1508:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0xa
	lea	rdi, [rdi]
	jb	.label_1514
.label_1463:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
.label_1515:
	nop	
	cmp	r8d, ecx
	jne	.label_1520
.label_1519:
	movzx	r8d, byte ptr [rdi + 1]
	inc	rdi
	mov	rsp, rsp
	cmp	r8d, 0x30
	jne	.label_1515
	jmp	.label_1519
.label_1520:
	lea	rsi, [rsi]
	cmp	r8d, edx
	lea	rsi, [rsi]
	jne	.label_1523
	inc	rdi
	nop	word ptr cs:[rax + rax]
.label_1487:
	movzx	r8d, byte ptr [rdi]
	inc	rdi
	cmp	r8d, 0x30
	je	.label_1487
.label_1523:
	movzx	eax, r8b
	jmp	.label_1469
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417a30

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
	ja	.label_1525
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
	jmp	.label_1524
.label_1525:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_1524:
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
	#Procedure 0x417aa0

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
	je	.label_1530
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
	jmp	.label_1532
.label_1530:
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
.label_1532:
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
	ja	.label_1534
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1526]]
.label_1806:
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
.label_1534:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_1529
.label_1807:
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
.label_1808:
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
.label_1809:
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
	jmp	.label_1533
.label_1810:
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
	jmp	.label_1528
.label_1811:
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
	jmp	.label_1527
.label_1812:
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
.label_1527:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_1528:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_1533:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_1535
.label_1814:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_1529:
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
	jmp	.label_1531
.label_1813:
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
.label_1531:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_1535:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1805:
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
	#Procedure 0x417e90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_1536:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_1536
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417ec0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_1538:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_1537
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_1539
	nop	word ptr cs:[rax + rax]
.label_1537:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1539:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_1540
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_1538
.label_1540:
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
	#Procedure 0x417f50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_1541
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
.label_1541:
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
.label_1543:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_1542
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_1544
	nop	dword ptr [rax + rax]
.label_1542:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_1544:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1545
	inc	r9
	cmp	r9, 0xa
	jb	.label_1543
.label_1545:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418090
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
	mov	edx, OFFSET FLAT:.str.17
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
	.align	16
	#Procedure 0x418120
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
	jb	.label_1546
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1547
	test	rax, rax
	je	.label_1546
.label_1547:
	nop	
	pop	rbx
	ret	
.label_1546:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x418170

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1548
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1549
.label_1548:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1549:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4181a0
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
	jb	.label_1551
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_1550
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_1550
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1550:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1552
	test	rax, rax
	je	.label_1551
.label_1552:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_1551:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418220

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_1553
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_1553
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_1553:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_1554
	test	rax, rax
	nop	
	je	.label_1555
.label_1554:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1555:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418270
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1560
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_1556
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1562
.label_1560:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_1559
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_1559:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_1561
.label_1562:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_1558
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_1558
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1558:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_1557
	test	rax, rax
	mov	rbp, rbp
	je	.label_1556
.label_1557:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1556:
	call	xalloc_die
.label_1561:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418350
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1564
	test	rax, rax
	mov	rbp, rbp
	je	.label_1563
.label_1564:
	pop	rbx
	ret	
.label_1563:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x418370
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_1568
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_1569
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1567
	call	free
	xor	eax, eax
	jmp	.label_1565
.label_1568:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_1566
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_1567:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1565
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1566
.label_1565:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1566:
	mov	rbp, rbp
	call	xalloc_die
.label_1569:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x418400
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
	je	.label_1570
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_1571
.label_1570:
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
.label_1571:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418460

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
	jb	.label_1572
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_1572
	pop	rcx
	ret	
.label_1572:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x418490

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
	je	.label_1574
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1573
.label_1574:
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
.label_1573:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4184f0
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
	je	.label_1575
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1576
.label_1575:
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
.label_1576:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x418550

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
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4185a0
	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:

	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r13, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	r14, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_1577
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_11
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	error
	nop	
	mov	eax,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_5
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, r13
	mov	r13, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	nop	
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	lea	rdi, [rdi]
	call	quotearg_n_style_mem
	mov	r14, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 8
	mov	rdx, r12
	mov	rsp, rsp
	mov	rcx, rbx
	call	quotearg_n_style_mem
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, dword ptr [rsp + 4]
	mov	rsp, rsp
	mov	rdx, r13
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r8, rbx
	mov	rbp, rbp
	call	error
.label_1577:
	mov	rsp, rsp
	mov	eax, ebp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4186f0

	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rdi, [rdi]
	mov	r14, rcx
	lea	rdi, [rdi]
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	r12, rdi
	lea	rsi, [rsi]
	call	memcoll0
	mov	r13d, eax
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	mov	rbp, rbp
	je	.label_1578
	lea	rdi, [rdi]
	dec	rbp
	dec	r14
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_11
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	call	error
	mov	eax,  dword ptr [dword ptr [rip + exit_failure]]
	mov	dword ptr [rsp + 4], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_5
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbx, r15
	nop	
	mov	r15d, r13d
	lea	rdi, [rdi]
	mov	r13, rax
	xor	edi, edi
	nop	
	mov	esi, 8
	mov	rdx, r12
	mov	rcx, rbp
	call	quotearg_n_style_mem
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 8
	nop	
	mov	rdx, rbx
	mov	rcx, r14
	call	quotearg_n_style_mem
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 4]
	mov	rdx, r13
	nop	
	mov	r13d, r15d
	mov	rcx, rbp
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	rsp, rsp
	call	error
.label_1578:
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x418840

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
	je	.label_1579
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_1580:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_1579
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
	jne	.label_1580
.label_1579:
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
	.align	16
	#Procedure 0x4188f0

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
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	r12d, 0x25
	lea	rsi, [rsi]
	jae	.label_1605
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	
.label_1601:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_1601
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	lea	rsi, [rsi]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	rsp, rsp
	mov	r13d, 4
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	je	.label_1585
	mov	rsp, rsp
	mov	rdi, rbx
	mov	edx, r12d
	mov	rbp, rsi
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	r12, qword ptr [rcx]
	mov	rbp, rbp
	cmp	r12, rbx
	mov	rbp, rbp
	je	.label_1590
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1598
	cmp	eax, 0x22
	lea	rsi, [rsi]
	jne	.label_1585
	mov	ebx, 1
.label_1598:
	test	r14, r14
	jne	.label_1602
	mov	rbp, rbp
	jmp	.label_1593
.label_1590:
	mov	rsp, rsp
	test	r14, r14
	je	.label_1585
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	lea	rdi, [rdi]
	je	.label_1585
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	nop	
	mov	rcx, rbx
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	mov	ebp, 1
	test	rax, rax
	je	.label_1585
.label_1602:
	movsx	r13d, byte ptr [r12]
	nop	
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_1593
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	mov	rdi, r14
	mov	esi, r13d
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	je	.label_1587
	mov	rsp, rsp
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1588
	movabs	rdx, 0x814400308945
	lea	rsi, [rsi]
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_1588
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	nop	
	mov	r15d, 1
	mov	rbp, rbp
	mov	esi, 0x400
	test	rax, rax
	je	.label_1588
	movsx	eax, byte ptr [r12 + 1]
	mov	rsp, rsp
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	nop	
	je	.label_1596
	nop	
	cmp	eax, 0x44
	je	.label_1596
	cmp	eax, 0x69
	jne	.label_1588
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 2]
	lea	rsi, [rsi]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_1594
	mov	r15d, 1
.label_1594:
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rsp, rsp
	jmp	.label_1588
.label_1596:
	mov	r15d, 2
	nop	
	mov	esi, 0x3e8
.label_1588:
	cmp	r13d, 0x59
	jg	.label_1584
	lea	eax, [r13 - 0x42]
	mov	rbp, rbp
	cmp	eax, 0xe
	ja	.label_1586
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1589]]
.label_1895:
	nop	
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	mov	rsp, rsp
	shl	rbp, 0xa
	jmp	.label_1592
.label_1584:
	cmp	r13d, 0x73
	mov	rbp, rbp
	jg	.label_1599
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_1597
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1581]]
.label_1843:
	nop	
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_1592:
	cmp	rax, 1
	mov	rbp, rbp
	sbb	rax, rax
	not	rax
	lea	rdi, [rdi]
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_1604
.label_1586:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	lea	rdi, [rdi]
	je	.label_1583
	mov	rbp, rbp
	cmp	r13d, 0x59
	jne	.label_1587
	mov	rsp, rsp
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	cmp	rax, rbp
	nop	
	sbb	r8b, r8b
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	imul	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	lea	rdi, [rdi]
	cmp	rax, rbp
	sbb	r9b, r9b
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	rbp, rbp
	imul	rcx, rsi
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rcx, rdi
	cmp	rax, rcx
	lea	rsi, [rsi]
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rcx
	imul	rbp, rsi
	lea	rdi, [rdi]
	cmp	rax, rcx
	cmovb	rbp, rdi
	mov	rsp, rsp
	cmp	rax, rbp
	mov	rsp, rsp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rcx, rbp
	imul	rcx, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rcx, rdi
	lea	rdi, [rdi]
	cmp	rax, rcx
	sbb	r14b, r14b
	nop	
	mov	rbp, rcx
	imul	rbp, rsi
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r13b, r13b
	nop	
	mov	rcx, rbp
	imul	rcx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rcx, rdi
	nop	
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	lea	rsi, [rsi]
	cmp	rax, rcx
	cmovb	rsi, rdi
	nop	
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	mov	rbp, rbp
	or	dl, r13b
	nop	
	or	dl, bpl
	mov	rbp, rbp
	jmp	.label_1591
.label_1599:
	nop	
	cmp	r13d, 0x74
	mov	rbp, rbp
	je	.label_1583
	mov	rsp, rsp
	cmp	r13d, 0x77
	jne	.label_1587
	mov	rbp, rbp
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	rsp, rsp
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_1604
.label_1844:
	lea	rsi, [rsi]
	mov	r8, -1
	mov	rbp, rbp
	mov	rax, -1
	nop	
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r9b, r9b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	mov	rsp, rsp
	cmp	rax, rdi
	lea	rsi, [rsi]
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rdi
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rdi
	nop	
	cmovb	rbp, r8
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	nop	
	or	dl, r9b
	or	dl, dil
	nop	
	jmp	.label_1600
.label_1845:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
	div	rsi
	mov	rsp, rsp
	imul	rsi, rbp
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	jmp	.label_1582
.label_1846:
	mov	r8, -1
	nop	
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rdi, rbp
	lea	rsi, [rsi]
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	mov	rsp, rsp
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	nop	
	jmp	.label_1600
.label_1583:
	mov	rbp, rbp
	mov	r9, -1
	nop	
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r8b, r8b
	lea	rdi, [rdi]
	mov	rdi, rbp
	imul	rdi, rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rdi, r9
	lea	rsi, [rsi]
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	lea	rdi, [rdi]
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	mov	rsp, rsp
	imul	rdi, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rdi, r9
	mov	rbp, rbp
	cmp	rax, rdi
	nop	
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	lea	rsi, [rsi]
	cmovb	rsi, r9
	lea	rdi, [rdi]
	or	dl, r8b
	mov	rbp, rbp
	or	dl, r10b
	or	dl, cl
	jmp	.label_1600
.label_1597:
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_1587
	lea	rsi, [rsi]
	mov	rdi, -1
	nop	
	mov	rax, -1
	nop	
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rcx, rbp
	mov	rbp, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	nop	
	imul	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rcx
	lea	rdi, [rdi]
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rsp, rsp
	mov	rcx, rbp
	imul	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rcx, rdi
	nop	
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	lea	rsi, [rsi]
	or	dl, r10b
	lea	rsi, [rsi]
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	or	dl, cl
.label_1591:
	lea	rsi, [rsi]
	movzx	eax, dl
	and	eax, 1
	jmp	.label_1582
.label_1587:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	mov	rsp, rsp
	jmp	.label_1595
.label_1896:
	lea	rdi, [rdi]
	mov	r9, -1
	mov	rbp, rbp
	mov	rax, -1
	xor	edx, edx
	mov	rbp, rbp
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	imul	rdi, rsi
	mov	rsp, rsp
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	nop	
	sbb	dl, dl
	mov	rbp, rdi
	lea	rsi, [rsi]
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rdi
	cmovb	rbp, r9
	mov	rsp, rsp
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	nop	
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rbp
	mov	rbp, rdi
	nop	
	imul	rbp, rsi
	cmp	rax, rdi
	nop	
	cmovb	rbp, r9
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r14b, r14b
	nop	
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	lea	rsi, [rsi]
	or	dl, r11b
	lea	rsi, [rsi]
	or	dl, r14b
	lea	rdi, [rdi]
	or	dl, bpl
.label_1600:
	lea	rdi, [rdi]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
.label_1582:
	mov	rbp, rsi
.label_1604:
	or	eax, ebx
	nop	
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + r15], 0
	mov	rbp, rbp
	je	.label_1603
	or	eax, 2
.label_1603:
	mov	ebx, eax
.label_1593:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rax], rbp
.label_1595:
	mov	r13d, ebx
.label_1585:
	mov	eax, r13d
	mov	rsp, rsp
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1897:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	lea	rsi, [rsi]
	imul	rdx, rsi
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	lea	rdi, [rdi]
	mov	rbp, rdx
	nop	
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	nop	
	sbb	r9b, r9b
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	imul	rdx, rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rdx, rdi
	nop	
	cmp	rax, rdx
	mov	rsp, rsp
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbp, rbp
	imul	rbp, rsi
	lea	rdi, [rdi]
	cmp	rax, rdx
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbp
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	nop	
	or	cl, dl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	jmp	.label_1582
.label_1605:
	mov	edi, OFFSET FLAT:.str_12
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4191d0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	lea	rsi, [rsi]
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	mov	r15, r8
	mov	eax, esi
	nop	
	mov	ebp,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	dec	edi
	nop	
	cmp	edi, 4
	jae	.label_1606
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_1608]]
	mov	rbp, rbp
	cdqe	
	test	eax, eax
	nop	
	jns	.label_1609
	nop	
	lea	r14, [rsp + 6]
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str_13
	mov	rsp, rsp
	sub	rbx, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
	mov	rsp, rsp
	jmp	.label_1607
.label_1609:
	mov	rbp, rbp
	shl	rax, 5
	mov	r14, qword ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str_13
.label_1607:
	xor	edi, edi
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r14
	mov	r9, r15
	mov	rbp, rbp
	call	error
.label_1606:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419280

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
	jae	.label_1610
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
.label_1632:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1632
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
	je	.label_1613
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
	je	.label_1623
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_1626
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_1613
	mov	dword ptr [rsp + 4], 1
.label_1626:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_1634
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_1613
.label_1623:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1613
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_1613
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
	je	.label_1613
.label_1634:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_1628
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
	je	.label_1617
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1612
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1612
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
	je	.label_1612
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1611
	cmp	eax, 0x44
	nop	
	je	.label_1611
	cmp	eax, 0x69
	jne	.label_1612
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_1615
	lea	rdi, [rdi]
	mov	ecx, 1
.label_1615:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_1612
.label_1628:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_1620
.label_1611:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_1612:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_1627
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_1629
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1633]]
.label_1959:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_1635
.label_1627:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_1636
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_1622
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1618]]
.label_1966:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_1635:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_1614
.label_1629:
	cmp	r13d, 0x54
	nop	
	je	.label_1630
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_1617
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
	jmp	.label_1619
.label_1636:
	cmp	r13d, 0x74
	je	.label_1630
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_1617
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
	jmp	.label_1614
.label_1961:
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
	jmp	.label_1631
.label_1962:
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
	jmp	.label_1624
.label_1963:
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
	jmp	.label_1621
.label_1630:
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
	jmp	.label_1625
.label_1622:
	cmp	r13d, 0x5a
	jne	.label_1617
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
.label_1619:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_1624
.label_1617:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_1613
.label_1960:
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
	jmp	.label_1621
.label_1964:
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
.label_1625:
	or	dl, r10b
.label_1631:
	lea	rsi, [rsi]
	or	dl, bl
.label_1621:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_1624:
	mov	rsp, rsp
	mov	rbp, rsi
.label_1614:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_1616
	or	eax, 2
.label_1616:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_1620:
	mov	qword ptr [rax], rbp
.label_1613:
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
.label_1610:
	mov	edi, OFFSET FLAT:.str_12
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419b40

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_1637
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1638
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
	je	.label_1638
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
.label_1637:
	mov	ecx, 1
.label_1638:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419bb0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	memset
	.section	.text
	.align	16
	#Procedure 0x419bc0

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
	js	.label_1639
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_1641
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
	je	.label_1639
.label_1641:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1639
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_1640
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_1640:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1639:
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
	#Procedure 0x419c70

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
	je	.label_1659
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
.label_1659:
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
	ja	.label_1653
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_1648
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_1646
	mov	rsp, rsp
	test	esi, esi
	jne	.label_1653
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_1654
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1658
.label_1653:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_1645
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_1646
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1647
.label_1648:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1644
.label_1646:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_1652
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1655
.label_1652:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1655:
	mov	edx, dword ptr [rax]
.label_1649:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_1644:
	mov	ebp, eax
.label_1642:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1647:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_1645
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1650
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1651
.label_1645:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1657
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_1661
.label_1654:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1658:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_1649
.label_1650:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1651:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1662
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
	jns	.label_1643
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1643
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
	js	.label_1642
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_1660
.label_1643:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1642
.label_1657:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_1661:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_1644
.label_1662:
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
.label_1660:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_1642
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_1642
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1656
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
	jne	.label_1642
.label_1656:
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
	jmp	.label_1642
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x41a040

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1663
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_1663
	test	byte ptr [rbx + 1], 1
	je	.label_1663
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_1663:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41a080

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
	jne	.label_1664
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1664
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1665
.label_1664:
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
.label_1665:
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
	je	.label_1666
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1666:
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
	#Procedure 0x41a130

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
	je	.label_1667
	nop	
	cmp	r15, -2
	jb	.label_1667
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_1667
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_1667:
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
	#Procedure 0x41a1c0

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
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, 0x3b9aca00
	nop	
	jb	.label_1668
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	mov	rbp, rbp
	jmp	.label_1669
.label_1668:
	mov	rbx, qword ptr [rdi]
	lea	r14, [rsp]
	nop	dword ptr [rax + rax]
.label_1671:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	nop	
	cmp	rbx, 0x1fa401
	mov	rsp, rsp
	jl	.label_1670
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
	je	.label_1671
	test	r15, r15
	je	.label_1669
	add	qword ptr [r15], rbx
	jmp	.label_1669
.label_1670:
	mov	rsp, rsp
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	lea	rdi, [rdi]
	call	nanosleep
.label_1669:
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
	.align	16
	#Procedure 0x41a290

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
	#Procedure 0x41a2b0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	r15
	push	r14
	nop	
	push	rbx
	mov	r14, rdi
	nop	
	mov	qword ptr [r14 + 0x38], rcx
	mov	qword ptr [r14 + 0x40], r8
	mov	rsp, rsp
	and	byte ptr [r14 + 0x50], 0xfe
	mov	rsp, rsp
	test	rdx, rdx
	nop	
	mov	ebx, 0x10
	mov	rbp, rbp
	cmovne	rbx, rdx
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	edi, 0xfe0
	cmovne	rdi, rsi
	mov	qword ptr [r14], rdi
	lea	rsi, [rsi]
	lea	r15, [rbx - 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x30], r15
	nop	
	call	rcx
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_1672
	lea	rcx, [rax + r15 + 0x10]
	mov	rsp, rsp
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x20], rcx
	nop	
	mov	qword ptr [rax + 8], 0
	nop	
	and	byte ptr [r14 + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	ret	
.label_1672:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41a360

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	mov	qword ptr [rbx + 0x38], rcx
	mov	qword ptr [rbx + 0x40], r8
	mov	qword ptr [rbx + 0x48], r9
	or	byte ptr [rbx + 0x50], 1
	test	rdx, rdx
	mov	rsp, rsp
	mov	r14d, 0x10
	mov	rbp, rbp
	cmovne	r14, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rax
	lea	r15, [r14 - 1]
	mov	qword ptr [rbx + 0x30], r15
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	rcx
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1673
	mov	rsp, rsp
	lea	rcx, [rax + r15 + 0x10]
	neg	r14
	nop	
	and	r14, rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], r14
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x18], r14
	mov	rcx, qword ptr [rbx]
	mov	rsp, rsp
	add	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rax + 8], 0
	mov	rbp, rbp
	and	byte ptr [rbx + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	nop	
	pop	r14
	pop	r15
	nop	
	ret	
.label_1673:
	mov	rsp, rsp
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41a420

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	mov	rbp, rbp
	mov	rcx, qword ptr [r12]
	mov	r14, qword ptr [r12 + 0x18]
	sub	r14, qword ptr [r12 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r12 + 0x30]
	setb	al
	mov	rbx, r14
	nop	
	shr	rbx, 3
	lea	rsi, [rsi]
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	lea	rsi, [rsi]
	add	rsi, r14
	mov	rsp, rsp
	jb	.label_1674
	test	al, al
	nop	
	jne	.label_1674
	mov	rsp, rsp
	mov	r15, qword ptr [r12 + 8]
	test	byte ptr [r12 + 0x50], 1
	mov	rsp, rsp
	jne	.label_1677
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	qword ptr [r12 + 0x38]
	jmp	.label_1676
.label_1677:
	mov	rdi, qword ptr [r12 + 0x48]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rsp, rsp
	call	qword ptr [r12 + 0x38]
.label_1676:
	lea	rsi, [rsi]
	mov	r13, rax
	test	r13, r13
	je	.label_1674
	mov	rsp, rsp
	mov	qword ptr [r12 + 8], r13
	mov	qword ptr [r13 + 8], r15
	mov	rsp, rsp
	add	rbx, r13
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x20], rbx
	mov	qword ptr [r13], rbx
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	mov	qword ptr [rsp + 0x10], rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 0x30]
	mov	rsp, rsp
	lea	rbx, [r13 + rbp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r15
	lea	rdi, [rdi]
	mov	r15, rbp
	not	r15
	and	rbx, r15
	mov	rdi, rbx
	mov	rdx, r14
	nop	
	call	memcpy
	test	byte ptr [r12 + 0x50], 2
	jne	.label_1675
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	lea	rax, [rax + rbp + 0x10]
	and	rax, r15
	cmp	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	jne	.label_1675
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r12 + 0x50], 1
	mov	rsi, rcx
	mov	rsp, rsp
	jne	.label_1678
	nop	
	mov	rdi, rsi
	call	qword ptr [r12 + 0x40]
	nop	
	jmp	.label_1675
.label_1678:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x48]
	call	qword ptr [r12 + 0x40]
.label_1675:
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], rbx
	mov	rsp, rsp
	add	r14, rbx
	mov	qword ptr [r12 + 0x18], r14
	mov	rsp, rsp
	and	byte ptr [r12 + 0x50], 0xfd
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_1674:
	mov	rsp, rsp
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41a5c0

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_1679
	nop	word ptr cs:[rax + rax]
.label_1682:
	mov	rcx, qword ptr [rcx + 8]
.label_1679:
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_1680
	lea	rsi, [rsi]
	cmp	rcx, rsi
	jae	.label_1682
	lea	rdi, [rdi]
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_1682
	mov	rbp, rbp
	jmp	.label_1681
.label_1680:
	xor	eax, eax
.label_1681:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41a600

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
	je	.label_1683
	nop	
.label_1689:
	cmp	rsi, r14
	mov	rbp, rbp
	jae	.label_1684
	cmp	qword ptr [rsi], r14
	jae	.label_1686
.label_1684:
	mov	rbx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	test	byte ptr [r15 + 0x50], 1
	mov	rsp, rsp
	jne	.label_1688
	mov	rdi, rsi
	nop	
	call	qword ptr [r15 + 0x40]
	jmp	.label_1685
	nop	dword ptr [rax + rax]
.label_1688:
	mov	rdi, qword ptr [r15 + 0x48]
	call	qword ptr [r15 + 0x40]
.label_1685:
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	jne	.label_1689
.label_1683:
	lea	rsi, [rsi]
	test	r14, r14
	mov	rsp, rsp
	je	.label_1687
	call	abort
.label_1686:
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x18], r14
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_1687:
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41a6b0

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 8]
	nop	
	xor	eax, eax
	jmp	.label_1690
	nop	dword ptr [rax]
.label_1691:
	sub	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
.label_1690:
	mov	rbp, rbp
	test	rcx, rcx
	nop	
	jne	.label_1691
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41a6e0

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
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41a730

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
	jne	.label_1692
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_1693
	test	cl, cl
	mov	rsp, rsp
	jne	.label_1693
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_1693
.label_1692:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1693
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_1693:
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
	#Procedure 0x41a7c0

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	ucomisd	xmm0,  qword ptr [word ptr [rip + label_1694]]
	mov	rbp, rbp
	jbe	.label_1695
	mov	edx, 0x3b9ac9ff
	lea	rsi, [rsi]
	movsd	xmm1,  qword ptr [word ptr [rip + label_15]]
	lea	rsi, [rsi]
	ucomisd	xmm1, xmm0
	mov	rsp, rsp
	jbe	.label_1697
	lea	rdi, [rdi]
	cvttsd2si	rsi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rsi
	subsd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_1696]]
	mov	rbp, rbp
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	ucomisd	xmm0, xmm1
	seta	cl
	lea	rdi, [rdi]
	movzx	ecx, cl
	add	rcx, rax
	nop	
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	nop	
	mov	rax, rdx
	mov	rbp, rbp
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	sar	rax, 0x1a
	add	rax, rdx
	nop	
	imul	rdi, rax, 0x3b9aca00
	mov	rdx, rcx
	mov	rbp, rbp
	sub	rdx, rdi
	lea	rdi, [rdi]
	add	rdx, 0x3b9aca00
	sub	rcx, rdi
	lea	rdi, [rdi]
	cmovns	rdx, rcx
	add	rax, rsi
	sar	rcx, 0x3f
	lea	rsi, [rsi]
	add	rcx, rax
.label_1697:
	lea	rdi, [rdi]
	mov	rax, rcx
	ret	
.label_1695:
	mov	rbp, rbp
	inc	rcx
	mov	rax, rcx
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41a8b0

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
	ja	.label_1698
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
	jmp	.label_1699
.label_1698:
	mov	eax, ebx
.label_1699:
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
	.align	16
	#Procedure 0x41a920

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
	.align	16
	#Procedure 0x41a940

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
	je	.label_1701
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1703
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1700
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1704
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_1701
.label_1704:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_1702
.label_1703:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_1701
.label_1700:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1702:
	xor	eax, eax
.label_1701:
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
	.align	16
	#Procedure 0x41aa20

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
	je	.label_1705
	nop	
	mov	rax, rcx
.label_1705:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41aa60

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
	sub	rsp, 0x38
	nop	
	mov	rbx, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	nop	
	cmp	rbp, rbx
	mov	rbp, rbp
	jne	.label_1706
	mov	rdi, r12
	nop	
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1711
.label_1706:
	mov	rsp, rsp
	mov	al, byte ptr [r12 + rbp]
	mov	byte ptr [rsp + 0x37], al
	mov	al, byte ptr [r14 + rbx]
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x17], al
	mov	byte ptr [r12 + rbp], 0
	nop	
	mov	byte ptr [r14 + rbx], 0
	lea	r13, [rbp + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	lea	r15, [rbx + 1]
	nop	
	mov	qword ptr [rsp + 0x18], rbx
	call	__errno_location
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
	mov	r14, r12
	mov	qword ptr [rsp + 0x20], r12
	nop	word ptr cs:[rax + rax]
.label_1709:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	nop	
	test	eax, eax
	jne	.label_1707
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strlen
	mov	r12, rax
	mov	rsp, rsp
	inc	r12
	mov	rdi, rbp
	call	strlen
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	sub	r13, r12
	nop	
	je	.label_1710
	lea	rsi, [rsi]
	add	rbp, rax
	lea	rdi, [rdi]
	add	r14, r12
	lea	rdi, [rdi]
	sub	r15, rax
	mov	eax, 1
	jne	.label_1709
	lea	rdi, [rdi]
	jmp	.label_1707
.label_1710:
	nop	
	xor	ecx, ecx
	cmp	r15, rax
	mov	rbp, rbp
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_1707:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	bl, byte ptr [rsp + 0x37]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 0x17]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_1708
.label_1711:
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_1708:
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x41abe0

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	nop	
	mov	r14, rcx
	mov	r12, rdx
	nop	
	mov	r15, rsi
	nop	
	mov	rbx, rdi
	nop	
	cmp	r15, r14
	mov	rsp, rsp
	jne	.label_1712
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1716
.label_1712:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	r13, rax
	nop	word ptr [rax + rax]
.label_1713:
	mov	rsp, rsp
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	nop	
	call	strcoll
	test	eax, eax
	jne	.label_1714
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	lea	rdi, [rdi]
	inc	rbp
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strlen
	lea	rsi, [rsi]
	inc	rax
	sub	r15, rbp
	lea	rdi, [rdi]
	je	.label_1715
	nop	
	add	r12, rax
	nop	
	add	rbx, rbp
	lea	rsi, [rsi]
	sub	r14, rax
	nop	
	mov	eax, 1
	mov	rbp, rbp
	jne	.label_1713
	nop	
	jmp	.label_1714
.label_1715:
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r14, rax
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmove	eax, ecx
	mov	rsp, rsp
	jmp	.label_1714
.label_1716:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_1714:
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	nop	
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	16
	#Procedure 0x41acf0

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