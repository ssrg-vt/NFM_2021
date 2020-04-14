	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c50

	.globl usage
	.type usage, @function
usage:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], edi
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rsp, rsp
	je	.label_8
	jmp	.label_9
.label_9:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_7
.label_8:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	call	emit_stdin_note
	mov	rsp, rsp
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.12
	nop	
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.20
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.21
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.22
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	call	emit_ancillary_info
.label_7:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x5c]
	call	exit
	nop	
	.section	.text
	.align	16
	#Procedure 0x403040

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.66
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403080

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.67
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4030c0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rax
.label_15:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x11], cl
	mov	rbp, rbp
	je	.label_13
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	lea	rsi, [rsi]
	xor	cl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], cl
.label_13:
	mov	al, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_14
	nop	
	jmp	.label_10
.label_14:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_15
.label_10:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_11
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_11:
	movabs	rdi, OFFSET FLAT:.str.76
	lea	rdi, [rdi]
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rdi, [rdi]
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 4], eax
	nop	
	call	setlocale
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_12
	movabs	rsi, OFFSET FLAT:.str.78
	lea	rdi, [rdi]
	mov	eax, 3
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	strncmp
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_12
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.79
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.80
	nop	
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.81
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	lea	rdi, [rdi]
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.82
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmove	rdx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x4c0
	movabs	rax, OFFSET FLAT:.str.23
	nop	
	mov	dword ptr [rbp - 0x3ec], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x134], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x470], rsi
	mov	byte ptr [rbp - 0x3d9], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3f0], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1e9], 0
	mov	byte ptr [rbp - 0x4a1], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x340], 0
	mov	byte ptr [rbp - 0x18a], 0
	mov	qword ptr [rbp - 0x428], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2a8], 0
	mov	rdi, rax
	call	getenv
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x165], cl
	lea	rdi, [rdi]
	call	posix2_version
	xor	edx, edx
	mov	cl, dl
	mov	rbp, rbp
	mov	edx, 0x30db0
	mov	dword ptr [rbp - 0x148], eax
	lea	rsi, [rsi]
	cmp	edx, dword ptr [rbp - 0x148]
	mov	byte ptr [rbp - 0x461], cl
	nop	
	jg	.label_132
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x148], 0x31069
	mov	rsp, rsp
	setl	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x461], al
.label_132:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x461]
	nop	
	xor	al, 0xff
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x3a9], al
	mov	qword ptr [rbp - 0x2b0], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x450], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x470]
	mov	rdi, qword ptr [rcx]
	lea	rdi, [rdi]
	call	set_program_name
	lea	rdi, [rdi]
	mov	edi, 6
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	nop	
	movabs	rdi, OFFSET FLAT:.str.25
	movabs	rsi, OFFSET FLAT:.str.26
	cmp	rax, 0
	setne	dl
	xor	dl, 0xff
	nop	
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 0x321], dl
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.25
	nop	
	mov	qword ptr [rbp - 0x188], rax
	nop	
	call	textdomain
	mov	rsp, rsp
	mov	edi, 2
	mov	qword ptr [rbp - 0x3d8], rax
	call	initialize_exit_failure
	mov	edi, 3
	lea	rsi, [rsi]
	call	hard_locale
	mov	edi, 2
	and	al, 1
	mov	byte ptr [byte ptr [hard_LC_COLLATE]],  al
	call	hard_locale
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [hard_LC_TIME]],  al
	call	localeconv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3c0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x3c0]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	dword ptr [dword ptr [decimal_point]],  edi
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [decimal_point]],  0
	je	.label_89
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3c0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_61
.label_89:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [decimal_point]],  0x2e
.label_61:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x3c0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	nop	
	mov	dword ptr [dword ptr [thousands_sep]],  edi
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [thousands_sep]],  0
	mov	rbp, rbp
	je	.label_73
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x3c0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_81
.label_73:
	mov	dword ptr [dword ptr [thousands_sep]],  0xffffffff
.label_81:
	nop	
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	mov	rsp, rsp
	call	inittables
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:caught_signals
	call	sigemptyset
	nop	
	mov	qword ptr [rbp - 0x460], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x150], eax
.label_118:
	nop	
	cmp	qword ptr [rbp - 0x460], 0xb
	lea	rsi, [rsi]
	jae	.label_96
	nop	
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x288]
	nop	
	mov	rcx, qword ptr [rbp - 0x460]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + main.sig]]
	call	sigaction
	mov	edi, 1
	mov	rsp, rsp
	mov	ecx, edi
	cmp	qword ptr [rbp - 0x288], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3e0], eax
	je	.label_106
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	rax, qword ptr [rbp - 0x460]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + main.sig]]
	call	sigaddset
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x198], eax
.label_106:
	lea	rdi, [rdi]
	jmp	.label_116
.label_116:
	mov	rax, qword ptr [rbp - 0x460]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x460], rax
	jmp	.label_118
.label_96:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:caught_signals
	nop	
	mov	ecx, 0x80
	mov	edx, ecx
	lea	rsi, [rbp - 0x288]
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:sighandler
	mov	qword ptr [rbp - 0x288], rdi
	mov	rsp, rsp
	add	rsi, 8
	mov	rdi, rsi
	mov	rsi, rax
	call	memcpy
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x200], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x460], 0
.label_153:
	nop	
	cmp	qword ptr [rbp - 0x460], 0xb
	lea	rsi, [rsi]
	jae	.label_139
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	rax, qword ptr [rbp - 0x460]
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + main.sig]]
	call	sigismember
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_112
	lea	rsi, [rbp - 0x288]
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x460]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + main.sig]]
	call	sigaction
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x298], eax
.label_112:
	nop	
	jmp	.label_152
.label_152:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x460]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x460], rax
	mov	rsp, rsp
	jmp	.label_153
.label_139:
	mov	edi, 0x11
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	nop	
	call	signal
	movabs	rdi, OFFSET FLAT:exit_cleanup
	mov	qword ptr [rbp - 0x440], rax
	call	atexit
	mov	rbp, rbp
	lea	rdi, [rbp - 0x320]
	mov	dword ptr [rbp - 0x3c4], eax
	mov	rsp, rsp
	call	key_init
	mov	rsp, rsp
	mov	ecx, 8
	lea	rdi, [rdi]
	mov	esi, ecx
	nop	
	mov	qword ptr [rbp - 0x320], -1
	movsxd	rdi, dword ptr [rbp - 0x134]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x130], rax
	call	xnmalloc
	mov	qword ptr [rbp - 0x2a0], rax
.label_161:
	mov	dword ptr [rbp - 0x164], 0xffffffff
	nop	
	cmp	dword ptr [rbp - 0x3f0], -1
	je	.label_20
	test	byte ptr [rbp - 0x165], 1
	je	.label_16
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2a8], 0
	nop	
	je	.label_16
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3a9], 1
	lea	rsi, [rsi]
	je	.label_20
	cmp	byte ptr [rbp - 0x1e9], 0
	nop	
	jne	.label_20
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 0x134]
	lea	rdi, [rdi]
	je	.label_20
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x470]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	jne	.label_20
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x470]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0x6f
	jne	.label_20
	nop	
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x470]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_16
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	nop	
	cmp	eax, dword ptr [rbp - 0x134]
	je	.label_20
.label_16:
	nop	
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	mov	rbp, rbp
	lea	r8, [rbp - 0x164]
	mov	edi, dword ptr [rbp - 0x134]
	mov	rsi, qword ptr [rbp - 0x470]
	call	getopt_long
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3f0], eax
	cmp	eax, -1
	nop	
	jne	.label_60
.label_20:
	mov	eax, dword ptr [rbp - 0x134]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jg	.label_63
	jmp	.label_66
.label_63:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [optind]],  ecx
	mov	rsp, rsp
	movsxd	rdx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x470]
	nop	
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	rsi, qword ptr [rbp - 0x2a8]
	mov	rdi, rsi
	add	rdi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2a8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x2a0]
	nop	
	mov	qword ptr [rdi + rsi*8], rdx
	lea	rdi, [rdi]
	jmp	.label_67
.label_60:
	mov	eax, dword ptr [rbp - 0x3f0]
	lea	rdi, [rdi]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x32c], eax
	mov	dword ptr [rbp - 0x404], ecx
	nop	
	je	.label_86
	lea	rsi, [rsi]
	jmp	.label_91
.label_91:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x32c]
	sub	eax, 0xffffff7e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c0], eax
	je	.label_123
	jmp	.label_97
.label_97:
	mov	eax, dword ptr [rbp - 0x32c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x17c], eax
	mov	rbp, rbp
	je	.label_98
	jmp	.label_102
.label_102:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x32c]
	mov	rsp, rsp
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x190], eax
	mov	rbp, rbp
	je	.label_103
	jmp	.label_109
.label_109:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x32c]
	sub	eax, 0x4d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1a4], eax
	mov	rsp, rsp
	je	.label_54
	jmp	.label_114
.label_114:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x32c]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x458], eax
	lea	rdi, [rdi]
	je	.label_54
	mov	rsp, rsp
	jmp	.label_113
.label_113:
	mov	eax, dword ptr [rbp - 0x32c]
	sub	eax, 0x53
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c8], eax
	lea	rdi, [rdi]
	je	.label_121
	jmp	.label_124
.label_124:
	mov	eax, dword ptr [rbp - 0x32c]
	mov	rsp, rsp
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2b4], eax
	lea	rdi, [rdi]
	je	.label_127
	mov	rbp, rbp
	jmp	.label_134
.label_134:
	mov	eax, dword ptr [rbp - 0x32c]
	mov	rsp, rsp
	sub	eax, 0x56
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x294], eax
	je	.label_54
	lea	rdi, [rdi]
	jmp	.label_46
.label_46:
	mov	eax, dword ptr [rbp - 0x32c]
	mov	rbp, rbp
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x1c4], eax
	lea	rdi, [rdi]
	je	.label_54
	jmp	.label_141
.label_141:
	mov	eax, dword ptr [rbp - 0x32c]
	sub	eax, 0x63
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_103
	jmp	.label_144
.label_144:
	mov	eax, dword ptr [rbp - 0x32c]
	lea	rdi, [rdi]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x3c8], eax
	nop	
	je	.label_54
	lea	rsi, [rsi]
	jmp	.label_147
.label_147:
	mov	eax, dword ptr [rbp - 0x32c]
	nop	
	add	eax, -0x66
	sub	eax, 4
	mov	dword ptr [rbp - 0x1e8], eax
	lea	rsi, [rsi]
	jb	.label_54
	lea	rdi, [rdi]
	jmp	.label_155
.label_155:
	mov	eax, dword ptr [rbp - 0x32c]
	lea	rdi, [rdi]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x344], eax
	mov	rbp, rbp
	je	.label_156
	mov	rsp, rsp
	jmp	.label_159
.label_159:
	mov	eax, dword ptr [rbp - 0x32c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x1b4], eax
	je	.label_160
	jmp	.label_163
.label_163:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x32c]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x154], eax
	mov	rsp, rsp
	je	.label_54
	jmp	.label_168
.label_168:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x32c]
	mov	rbp, rbp
	sub	eax, 0x6f
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x408], eax
	je	.label_169
	jmp	.label_171
.label_171:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x32c]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x2b8], eax
	lea	rdi, [rdi]
	je	.label_54
	jmp	.label_175
.label_175:
	mov	eax, dword ptr [rbp - 0x32c]
	mov	rsp, rsp
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x2d4], eax
	lea	rsi, [rsi]
	je	.label_176
	lea	rdi, [rdi]
	jmp	.label_19
.label_19:
	mov	eax, dword ptr [rbp - 0x32c]
	mov	rbp, rbp
	sub	eax, 0x74
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x328], eax
	je	.label_21
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 0x32c]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x1d4], eax
	lea	rsi, [rsi]
	je	.label_26
	jmp	.label_29
.label_29:
	mov	eax, dword ptr [rbp - 0x32c]
	mov	rbp, rbp
	sub	eax, 0x79
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x414], eax
	je	.label_30
	lea	rdi, [rdi]
	jmp	.label_35
.label_35:
	mov	eax, dword ptr [rbp - 0x32c]
	nop	
	sub	eax, 0x7a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3b0], eax
	je	.label_37
	mov	rbp, rbp
	jmp	.label_40
.label_40:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x32c]
	sub	eax, 0x80
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x16c], eax
	je	.label_42
	lea	rdi, [rdi]
	jmp	.label_25
.label_25:
	mov	eax, dword ptr [rbp - 0x32c]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x4a0], eax
	lea	rsi, [rsi]
	je	.label_47
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x32c]
	sub	eax, 0x82
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x194], eax
	lea	rdi, [rdi]
	je	.label_53
	lea	rdi, [rdi]
	jmp	.label_56
.label_56:
	mov	eax, dword ptr [rbp - 0x32c]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x3cc], eax
	je	.label_172
	mov	rbp, rbp
	jmp	.label_43
.label_43:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x32c]
	lea	rdi, [rdi]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x1e4], eax
	mov	rbp, rbp
	je	.label_64
	jmp	.label_69
.label_69:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x32c]
	lea	rsi, [rsi]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0x42c], eax
	lea	rsi, [rsi]
	je	.label_71
	nop	
	jmp	.label_76
.label_76:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x32c]
	nop	
	sub	eax, 0x86
	mov	dword ptr [rbp - 0x348], eax
	mov	rbp, rbp
	je	.label_78
	jmp	.label_84
.label_84:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x32c]
	lea	rdi, [rdi]
	sub	eax, 0x87
	mov	dword ptr [rbp - 4], eax
	je	.label_33
	mov	rbp, rbp
	jmp	.label_157
.label_98:
	mov	qword ptr [rbp - 0x290], 0
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2b
	jne	.label_90
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 0x134]
	mov	byte ptr [rbp - 0x451], cl
	je	.label_94
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	mov	rsi, qword ptr [rbp - 0x470]
	mov	rdx, qword ptr [rsi + rdx*8]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rdx]
	mov	rsp, rsp
	cmp	eax, 0x2d
	mov	byte ptr [rbp - 0x451], cl
	lea	rsi, [rsi]
	jne	.label_94
	movsxd	rax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x470]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	mov	rbp, rbp
	sub	edx, 0x30
	mov	rbp, rbp
	cmp	edx, 9
	setbe	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x451], sil
.label_94:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x451]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x149], al
	nop	
	test	byte ptr [rbp - 0x149], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x141], dl
	lea	rsi, [rsi]
	je	.label_119
	mov	al, byte ptr [rbp - 0x165]
	mov	rsp, rsp
	xor	al, 0xff
	mov	byte ptr [rbp - 0x141], al
.label_119:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x141]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x3a9]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	edx, al
	mov	rbp, rbp
	or	edx, ecx
	cmp	edx, 0
	lea	rsi, [rsi]
	setne	al
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x3a9], al
	test	byte ptr [rbp - 0x3a9], 1
	mov	rbp, rbp
	je	.label_100
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x390]
	mov	rsp, rsp
	call	key_init
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0x290], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rsi, qword ptr [rbp - 0x290]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	parse_field_count
	mov	qword ptr [rbp - 0x4b0], rax
	nop	
	cmp	qword ptr [rbp - 0x4b0], 0
	mov	rbp, rbp
	je	.label_150
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	nop	
	jne	.label_150
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4b0]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x290]
	mov	rbp, rbp
	add	rsi, 8
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	parse_field_count
	mov	qword ptr [rbp - 0x4b0], rax
.label_150:
	mov	rax, qword ptr [rbp - 0x290]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_166
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x290]
	cmp	qword ptr [rax + 8], 0
	jne	.label_166
	nop	
	mov	rax, qword ptr [rbp - 0x290]
	mov	rsp, rsp
	mov	qword ptr [rax], -1
.label_166:
	cmp	qword ptr [rbp - 0x4b0], 0
	lea	rsi, [rsi]
	je	.label_173
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x4b0]
	mov	rsi, qword ptr [rbp - 0x290]
	lea	rdi, [rdi]
	call	set_ordering
	movsx	edx, byte ptr [rax]
	cmp	edx, 0
	je	.label_177
.label_173:
	mov	qword ptr [rbp - 0x290], 0
	mov	rbp, rbp
	jmp	.label_18
.label_177:
	test	byte ptr [rbp - 0x149], 1
	nop	
	je	.label_22
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.27
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	mov	rbp, rbp
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x470]
	mov	rsi, qword ptr [rdi + rsi*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x420], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x420]
	lea	rsi, [rsi]
	add	rsi, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x290]
	lea	rsi, [rsi]
	add	rdi, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x478], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x478]
	call	parse_field_count
	nop	
	mov	qword ptr [rbp - 0x4b0], rax
	nop	
	cmp	qword ptr [rbp - 0x4b0], 0
	je	.label_45
	mov	rbp, rbp
	jmp	.label_49
.label_45:
	movabs	rdi, OFFSET FLAT:.str.28
	movabs	rsi, OFFSET FLAT:.str.29
	mov	edx, 0x1112
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	lea	rsi, [rsi]
	call	__assert_fail
.label_49:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4b0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_55
	movabs	rdx, OFFSET FLAT:.str.30
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x290]
	lea	rdi, [rdi]
	add	rcx, 0x18
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	parse_field_count
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4b0], rax
.label_55:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x290]
	nop	
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_27
	mov	rax, qword ptr [rbp - 0x290]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_27
	mov	rax, qword ptr [rbp - 0x290]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, -1
	mov	qword ptr [rax + 0x10], rcx
.label_27:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x4b0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x290]
	call	set_ordering
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_88
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.31
	mov	rdi, qword ptr [rbp - 0x420]
	lea	rdi, [rdi]
	call	badfieldspec
.label_88:
	nop	
	jmp	.label_22
.label_22:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x290]
	nop	
	mov	byte ptr [rax + 0x39], 1
	mov	rdi, qword ptr [rbp - 0x290]
	call	insertkey
.label_18:
	mov	rsp, rsp
	jmp	.label_100
.label_100:
	nop	
	jmp	.label_90
.label_90:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x290], 0
	jne	.label_101
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2a8]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x2a8], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2a0]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
.label_101:
	mov	rsp, rsp
	jmp	.label_24
.label_78:
	movabs	rdi, OFFSET FLAT:.str.32
	movabs	rdx, OFFSET FLAT:sort_args
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:sort_types
	mov	eax, 1
	mov	r8d, eax
	mov	rsi,  qword ptr [word ptr [optarg]]
	nop	
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	call	__xargmatch_internal
	lea	rsi, [rsi]
	movsx	r10d,  byte ptr [byte ptr [+ (rax * 1) + sort_types]]
	mov	dword ptr [rbp - 0x3f0], r10d
.label_54:
	lea	rsi, [rbp - 0x320]
	mov	edx, 2
	nop	
	lea	rdi, [rbp - 0x143]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3f0]
	mov	cl, al
	mov	byte ptr [rbp - 0x143], cl
	mov	byte ptr [rbp - 0x142], 0
	lea	rsi, [rsi]
	call	set_ordering
	nop	
	mov	qword ptr [rbp - 0x1b0], rax
	lea	rsi, [rsi]
	jmp	.label_24
.label_42:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_140
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.33
	movabs	rdx, OFFSET FLAT:check_args
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:check_types
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	nop	
	call	__xargmatch_internal
	movsx	r10d,  byte ptr [byte ptr [+ (rax * 1) + check_types]]
	mov	dword ptr [rbp - 0x2c4], r10d
	jmp	.label_83
.label_140:
	mov	rbp, rbp
	mov	eax, 0x63
	mov	dword ptr [rbp - 0x2c4], eax
	lea	rdi, [rdi]
	jmp	.label_83
.label_83:
	mov	eax, dword ptr [rbp - 0x2c4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3f0], eax
.label_103:
	movsx	eax, byte ptr [rbp - 0x1e9]
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_36
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rbp - 0x1e9]
	cmp	eax, dword ptr [rbp - 0x3f0]
	je	.label_36
	movabs	rdi, OFFSET FLAT:.str.34
	mov	rsp, rsp
	call	incompatible_options
.label_36:
	mov	eax, dword ptr [rbp - 0x3f0]
	mov	rbp, rbp
	mov	cl, al
	mov	byte ptr [rbp - 0x1e9], cl
	lea	rdi, [rdi]
	jmp	.label_24
.label_47:
	cmp	qword ptr [word ptr [compress_program]],  0
	je	.label_170
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [compress_program]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [optarg]]
	call	strcmp
	nop	
	cmp	eax, 0
	je	.label_170
	movabs	rdi, OFFSET FLAT:.str.35
	nop	
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_170:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [compress_program]],  rax
	mov	rsp, rsp
	jmp	.label_24
.label_53:
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_24
.label_172:
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0x2b0], rax
	nop	
	jmp	.label_24
.label_156:
	lea	rdi, [rbp - 0x390]
	call	key_init
	movabs	rdx, OFFSET FLAT:.str.36
	mov	qword ptr [rbp - 0x290], rax
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsi, qword ptr [rbp - 0x290]
	call	parse_field_count
	mov	qword ptr [rbp - 0x4b0], rax
	mov	rax, qword ptr [rbp - 0x290]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	mov	rsi, rdx
	add	rsi, -1
	lea	rsi, [rsi]
	mov	qword ptr [rax], rsi
	cmp	rdx, 0
	lea	rdi, [rdi]
	jne	.label_146
	movabs	rsi, OFFSET FLAT:.str.37
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	badfieldspec
.label_146:
	mov	rax, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x2e
	jne	.label_51
	nop	
	movabs	rdx, OFFSET FLAT:.str.30
	mov	rax, qword ptr [rbp - 0x4b0]
	add	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x290]
	add	rcx, 8
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rbp, rbp
	call	parse_field_count
	mov	qword ptr [rbp - 0x4b0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x290]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, -1
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rdx
	cmp	rcx, 0
	jne	.label_65
	movabs	rsi, OFFSET FLAT:.str.38
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_65:
	lea	rdi, [rdi]
	jmp	.label_51
.label_51:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x290]
	cmp	qword ptr [rax], 0
	jne	.label_80
	mov	rax, qword ptr [rbp - 0x290]
	cmp	qword ptr [rax + 8], 0
	jne	.label_80
	mov	rax, qword ptr [rbp - 0x290]
	mov	rbp, rbp
	mov	qword ptr [rax], -1
.label_80:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x4b0]
	mov	rsi, qword ptr [rbp - 0x290]
	lea	rdi, [rdi]
	call	set_ordering
	nop	
	mov	qword ptr [rbp - 0x4b0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax]
	nop	
	cmp	edx, 0x2c
	je	.label_93
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x290]
	mov	qword ptr [rax + 0x10], -1
	mov	rax, qword ptr [rbp - 0x290]
	mov	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	jmp	.label_99
.label_93:
	movabs	rdx, OFFSET FLAT:.str.39
	nop	
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x290]
	add	rcx, 0x10
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0x4b0], rax
	mov	rax, qword ptr [rbp - 0x290]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, rcx
	add	rdx, -1
	nop	
	mov	qword ptr [rax + 0x10], rdx
	cmp	rcx, 0
	jne	.label_115
	movabs	rsi, OFFSET FLAT:.str.37
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_115:
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2e
	jne	.label_126
	movabs	rdx, OFFSET FLAT:.str.30
	mov	rax, qword ptr [rbp - 0x4b0]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x290]
	add	rcx, 0x18
	mov	rdi, rax
	mov	rsi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0x4b0], rax
.label_126:
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x290]
	call	set_ordering
	nop	
	mov	qword ptr [rbp - 0x4b0], rax
.label_99:
	nop	
	mov	rax, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	nop	
	je	.label_142
	movabs	rsi, OFFSET FLAT:.str.31
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_142:
	mov	rdi, qword ptr [rbp - 0x290]
	lea	rdi, [rdi]
	call	insertkey
	lea	rsi, [rsi]
	jmp	.label_24
.label_160:
	mov	byte ptr [rbp - 0x4a1], 1
	jmp	.label_24
.label_64:
	mov	edi, dword ptr [rbp - 0x164]
	mov	eax, dword ptr [rbp - 0x3f0]
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	esi, cl
	call	specify_nmerge
	lea	rdi, [rdi]
	jmp	.label_24
.label_169:
	cmp	qword ptr [rbp - 0x450], 0
	nop	
	je	.label_158
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_158
	movabs	rdi, OFFSET FLAT:.str.40
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 2
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
.label_158:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x450], rax
	mov	rbp, rbp
	jmp	.label_24
.label_71:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x340], 0
	je	.label_17
	mov	rdi, qword ptr [rbp - 0x340]
	nop	
	mov	rsi,  qword ptr [word ptr [optarg]]
	nop	
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_17
	movabs	rdi, OFFSET FLAT:.str.41
	call	gettext
	mov	edi, 2
	nop	
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_17:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x340], rax
	jmp	.label_24
.label_176:
	mov	byte ptr [byte ptr [stable]],  1
	nop	
	jmp	.label_24
.label_121:
	mov	edi, dword ptr [rbp - 0x164]
	mov	eax, dword ptr [rbp - 0x3f0]
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	esi, cl
	nop	
	call	specify_sort_size
	jmp	.label_24
.label_21:
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x189], cl
	lea	rsi, [rsi]
	cmp	byte ptr [rbp - 0x189], 0
	jne	.label_39
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	edi, 2
	mov	rbp, rbp
	xor	esi, esi
	nop	
	mov	rdx, rax
	mov	al, 0
	call	error
.label_39:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_52
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	eax, OFFSET FLAT:.str.43
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_58
	mov	byte ptr [rbp - 0x189], 0
	jmp	.label_62
.label_58:
	movabs	rdi, OFFSET FLAT:.str.44
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0x480], rax
	lea	rdi, [rdi]
	call	quote
	mov	edi, 2
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x480]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_62:
	mov	rbp, rbp
	jmp	.label_52
.label_52:
	cmp	dword ptr [dword ptr [tab]],  0x80
	je	.label_77
	mov	eax,  dword ptr [dword ptr [tab]]
	movsx	ecx, byte ptr [rbp - 0x189]
	cmp	eax, ecx
	nop	
	je	.label_77
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.45
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 2
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_77:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 0x189]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [tab]],  eax
	mov	rbp, rbp
	jmp	.label_24
.label_127:
	nop	
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	call	add_temp_dir
	jmp	.label_24
.label_33:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x164]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3f0]
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	mov	rdx,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	movsx	esi, cl
	call	specify_nthreads
	mov	qword ptr [rbp - 0x428], rax
	jmp	.label_24
.label_26:
	mov	byte ptr [byte ptr [unique]],  1
	jmp	.label_24
.label_30:
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [optind]]
	sub	ecx, 1
	nop	
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x470]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsi + rdx*8]
	mov	rbp, rbp
	jne	.label_111
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x160], rax
.label_128:
	nop	
	mov	rax, qword ptr [rbp - 0x160]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_122
	jmp	.label_117
.label_117:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], rax
	lea	rdi, [rdi]
	jmp	.label_128
.label_122:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	nop	
	movzx	ecx, dl
	mov	esi,  dword ptr [dword ptr [optind]]
	sub	esi, ecx
	nop	
	mov	dword ptr [dword ptr [optind]],  esi
.label_111:
	jmp	.label_24
.label_37:
	mov	byte ptr [byte ptr [eolchar]],  0
	nop	
	jmp	.label_24
.label_123:
	xor	edi, edi
	call	usage
.label_86:
	nop	
	movabs	rsi, OFFSET FLAT:.str.22
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:.str.47
	mov	rbp, rbp
	movabs	r9, OFFSET FLAT:.str.48
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	nop	
	mov	r10,  qword ptr [word ptr [Version]]
	nop	
	mov	qword ptr [rbp - 0x400], rcx
	lea	rsi, [rsi]
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_157:
	lea	rdi, [rdi]
	mov	edi, 2
	call	usage
.label_24:
	nop	
	jmp	.label_67
.label_67:
	jmp	.label_161
.label_66:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2b0], 0
	lea	rdi, [rdi]
	je	.label_110
	cmp	qword ptr [rbp - 0x2a8], 0
	je	.label_165
	movabs	rdi, OFFSET FLAT:.str.49
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x2a0]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x140], rax
	call	quotearg_style
	xor	edi, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x39c], edi
	mov	esi, dword ptr [rbp - 0x39c]
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.51
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x1e0], rcx
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1e0]
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	edi, 2
	mov	dword ptr [rbp - 0x49c], eax
	mov	rbp, rbp
	call	usage
.label_165:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.52
	mov	rdi, qword ptr [rbp - 0x2b0]
	mov	rsp, rsp
	call	xfopen
	lea	rdi, [rbp - 0x128]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x3a8], rax
	nop	
	call	readtokens0_init
	mov	rsp, rsp
	lea	rsi, [rbp - 0x128]
	mov	rdi, qword ptr [rbp - 0x3a8]
	call	readtokens0
	test	al, 1
	jne	.label_44
	movabs	rdi, OFFSET FLAT:.str.53
	nop	
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2b0]
	mov	qword ptr [rbp - 0x438], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	rsp, rsp
	mov	edi, 2
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x438]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_44:
	mov	rdi, qword ptr [rbp - 0x3a8]
	mov	rsi, qword ptr [rbp - 0x2b0]
	call	xfclose
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x128], 0
	nop	
	je	.label_59
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2a0]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x2a0], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x2a8], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x490], 0
.label_133:
	mov	rax, qword ptr [rbp - 0x490]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x2a8]
	nop	
	jae	.label_74
	mov	rax, qword ptr [rbp - 0x490]
	mov	rcx, qword ptr [rbp - 0x2a0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.54
	mov	esi, edx
	lea	rdi, [rdi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_87
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.55
	call	gettext
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x490]
	mov	rdx, qword ptr [rbp - 0x2a0]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x448], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	mov	edi, 2
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_87:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x490]
	mov	rcx, qword ptr [rbp - 0x2a0]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	mov	rbp, rbp
	cmp	edx, 0
	jne	.label_105
	movabs	rdi, OFFSET FLAT:.str.56
	mov	rax, qword ptr [rbp - 0x490]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x338], rax
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2b0]
	mov	qword ptr [rbp - 0x3b8], rax
	call	quotearg_n_style_colon
	nop	
	mov	edi, 2
	xor	esi, esi
	nop	
	mov	r8, qword ptr [rbp - 0x338]
	nop	
	mov	rdx, qword ptr [rbp - 0x3b8]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_105:
	jmp	.label_130
.label_130:
	jmp	.label_131
.label_131:
	mov	rax, qword ptr [rbp - 0x490]
	add	rax, 1
	mov	qword ptr [rbp - 0x490], rax
	jmp	.label_133
.label_74:
	nop	
	jmp	.label_136
.label_59:
	movabs	rdi, OFFSET FLAT:.str.57
	nop	
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x2b0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x398], rax
	nop	
	call	quotearg_style
	mov	edi, 2
	nop	
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x398]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_136:
	jmp	.label_110
.label_110:
	mov	rax,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x290], rax
.label_34:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x290], 0
	lea	rdi, [rdi]
	je	.label_145
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x290]
	call	default_key_compare
	test	al, 1
	mov	rsp, rsp
	jne	.label_151
	lea	rsi, [rsi]
	jmp	.label_154
.label_151:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x290]
	nop	
	test	byte ptr [rax + 0x37], 1
	jne	.label_154
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x300]
	nop	
	mov	rcx, qword ptr [rbp - 0x290]
	mov	qword ptr [rcx + 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x2f8]
	mov	rcx, qword ptr [rbp - 0x290]
	mov	qword ptr [rcx + 0x28], rax
	mov	rsp, rsp
	mov	dl, byte ptr [rbp - 0x2f0]
	mov	rax, qword ptr [rbp - 0x290]
	and	dl, 1
	nop	
	mov	byte ptr [rax + 0x30], dl
	mov	dl, byte ptr [rbp - 0x2ef]
	nop	
	mov	rax, qword ptr [rbp - 0x290]
	lea	rsi, [rsi]
	and	dl, 1
	mov	byte ptr [rax + 0x31], dl
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0x2ea]
	mov	rax, qword ptr [rbp - 0x290]
	and	dl, 1
	mov	byte ptr [rax + 0x36], dl
	mov	dl, byte ptr [rbp - 0x2ee]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x290]
	nop	
	and	dl, 1
	mov	rbp, rbp
	mov	byte ptr [rax + 0x32], dl
	mov	dl, byte ptr [rbp - 0x2ec]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x290]
	and	dl, 1
	mov	byte ptr [rax + 0x34], dl
	mov	dl, byte ptr [rbp - 0x2eb]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x290]
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	byte ptr [rax + 0x35], dl
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x290]
	and	dl, 1
	mov	byte ptr [rax + 0x38], dl
	mov	rsp, rsp
	mov	dl, byte ptr [rbp - 0x2ed]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x290]
	and	dl, 1
	nop	
	mov	byte ptr [rax + 0x33], dl
	mov	rsp, rsp
	mov	dl, byte ptr [rbp - 0x2e9]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x290]
	nop	
	and	dl, 1
	mov	byte ptr [rax + 0x37], dl
.label_154:
	mov	rax, qword ptr [rbp - 0x290]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x33]
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x18a]
	and	cl, 1
	movzx	esi, cl
	mov	rbp, rbp
	or	esi, edx
	cmp	esi, 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	byte ptr [rbp - 0x18a], cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x290]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x290], rax
	jmp	.label_34
.label_145:
	cmp	qword ptr [word ptr [keylist]],  0
	jne	.label_41
	mov	rsp, rsp
	lea	rdi, [rbp - 0x320]
	mov	rbp, rbp
	call	default_key_compare
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_41
	lea	rdi, [rbp - 0x320]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3d9], 1
	lea	rdi, [rdi]
	call	insertkey
	nop	
	mov	al, byte ptr [rbp - 0x2ed]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	nop	
	mov	al, byte ptr [rbp - 0x18a]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	mov	rbp, rbp
	or	edx, ecx
	mov	rsp, rsp
	cmp	edx, 0
	setne	al
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x18a], al
.label_41:
	call	check_ordering_compatibility
	test	byte ptr [byte ptr [debug]],  1
	je	.label_70
	movsx	eax, byte ptr [rbp - 0x1e9]
	cmp	eax, 0
	jne	.label_72
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x450], 0
	mov	rbp, rbp
	je	.label_75
.label_72:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 0x1e9]
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_79
	movsx	eax, byte ptr [rbp - 0x1e9]
	mov	dword ptr [rbp - 0x2bc], eax
	jmp	.label_85
.label_79:
	mov	rbp, rbp
	mov	eax, 0x6f
	mov	dword ptr [rbp - 0x2bc], eax
	nop	
	jmp	.label_85
.label_85:
	mov	eax, dword ptr [rbp - 0x2bc]
	movabs	rdi, OFFSET FLAT:main.opts
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [byte ptr [main.opts]],  cl
	call	incompatible_options
.label_75:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x321], 1
	lea	rsi, [rsi]
	je	.label_95
	mov	edi, 3
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	cmp	rax, 0
	nop	
	setne	cl
	xor	cl, 0xff
	lea	rdi, [rdi]
	xor	cl, 0xff
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 0x321], cl
.label_95:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x321], 1
	jne	.label_108
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.59
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	edi, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_108:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	mov	rsp, rsp
	je	.label_120
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.60
	call	gettext
	mov	edi, 3
	mov	rbp, rbp
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x3e8], rax
	call	setlocale
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	quote
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x3e8]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	mov	rbp, rbp
	jmp	.label_138
.label_120:
	movabs	rdi, OFFSET FLAT:.str.61
	nop	
	call	gettext
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_138:
	lea	rdi, [rbp - 0x320]
	nop	
	mov	al, byte ptr [rbp - 0x3d9]
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	esi, al
	mov	rsp, rsp
	call	key_warnings
.label_70:
	mov	al, byte ptr [rbp - 0x2e9]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [reverse]],  al
	test	byte ptr [rbp - 0x18a], 1
	lea	rsi, [rsi]
	je	.label_148
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x340]
	mov	rbp, rbp
	call	random_md5_state_init
.label_148:
	cmp	qword ptr [word ptr [temp_dir_count]],  0
	mov	rbp, rbp
	jne	.label_31
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.62
	call	getenv
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x410], rax
	nop	
	cmp	qword ptr [rbp - 0x410], 0
	je	.label_162
	mov	rax, qword ptr [rbp - 0x410]
	mov	qword ptr [rbp - 0x178], rax
	jmp	.label_167
.label_162:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.16
	nop	
	mov	qword ptr [rbp - 0x178], rax
	lea	rsi, [rsi]
	jmp	.label_167
.label_167:
	mov	rax, qword ptr [rbp - 0x178]
	mov	rdi, rax
	nop	
	call	add_temp_dir
.label_31:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x2a8], 0
	jne	.label_174
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2a8], 1
	nop	
	mov	rax, qword ptr [rbp - 0x2a0]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	ecx, 8
	lea	rdi, [rdi]
	mov	edi, ecx
	nop	
	call	xmalloc
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.54
	mov	qword ptr [rbp - 0x2a0], rax
	mov	rax, qword ptr [rbp - 0x2a0]
	mov	qword ptr [rax], rdi
.label_174:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx,  qword ptr [word ptr [sort_size]]
	jae	.label_28
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	lea	rdi, [rdi]
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	jbe	.label_32
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2d0], rax
	mov	rsp, rsp
	jmp	.label_38
.label_32:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x22
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2d0], rcx
.label_38:
	mov	rax, qword ptr [rbp - 0x2d0]
	mov	qword ptr [word ptr [sort_size]],  rax
.label_28:
	cmp	byte ptr [rbp - 0x1e9], 0
	lea	rdi, [rdi]
	je	.label_48
	cmp	qword ptr [rbp - 0x2a8], 1
	mov	rsp, rsp
	jbe	.label_50
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.63
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x2a0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rbp - 0x488], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	movsx	r8d, byte ptr [rbp - 0x1e9]
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_50:
	cmp	qword ptr [rbp - 0x450], 0
	je	.label_68
	movabs	rdi, OFFSET FLAT:main.opts.64
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x1e9]
	mov	byte ptr [byte ptr [main.opts.64]],  al
	call	incompatible_options
.label_68:
	mov	rax, qword ptr [rbp - 0x2a0]
	mov	rdi, qword ptr [rax]
	movsx	esi, byte ptr [rbp - 0x1e9]
	call	check
	mov	esi, 1
	xor	ecx, ecx
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	cmovne	esi, ecx
	mov	dword ptr [rbp - 0x3ec], esi
	jmp	.label_82
.label_48:
	mov	rdi, qword ptr [rbp - 0x2a0]
	mov	rsi, qword ptr [rbp - 0x2a8]
	mov	rbp, rbp
	call	check_inputs
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x450]
	call	check_output
	test	byte ptr [rbp - 0x4a1], 1
	je	.label_92
	mov	rsp, rsp
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	esi, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x2a8]
	nop	
	call	xcalloc
	nop	
	mov	qword ptr [rbp - 0x1a0], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x498], 0
.label_107:
	nop	
	mov	rax, qword ptr [rbp - 0x498]
	cmp	rax, qword ptr [rbp - 0x2a8]
	jae	.label_104
	mov	rax, qword ptr [rbp - 0x498]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2a0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x498]
	shl	rcx, 4
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x1a0]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x498]
	add	rax, 1
	mov	qword ptr [rbp - 0x498], rax
	nop	
	jmp	.label_107
.label_104:
	xor	eax, eax
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	rdx, qword ptr [rbp - 0x2a8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	call	merge
	mov	rbp, rbp
	jmp	.label_125
.label_92:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x428], 0
	jne	.label_129
	mov	rbp, rbp
	mov	edi, 2
	call	num_processors
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1c0], rax
	cmp	qword ptr [rbp - 0x1c0], 8
	jae	.label_135
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b8], rax
	jmp	.label_137
.label_135:
	mov	eax, 8
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x4b8], rcx
	mov	rbp, rbp
	jmp	.label_137
.label_137:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	qword ptr [rbp - 0x428], rax
.label_129:
	mov	rbp, rbp
	movabs	rax, 0xffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x3f8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x428]
	cmp	rax, qword ptr [rbp - 0x3f8]
	jae	.label_143
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x428]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1d0], rax
	jmp	.label_149
.label_143:
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	qword ptr [rbp - 0x1d0], rax
.label_149:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	qword ptr [rbp - 0x428], rax
	mov	rdi, qword ptr [rbp - 0x2a0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2a8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x428]
	lea	rdi, [rdi]
	call	sort
.label_125:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_164
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_164
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.65
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.54
	mov	rdi, rax
	lea	rdi, [rdi]
	call	sort_die
.label_164:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3ec], 0
.label_82:
	nop	
	mov	eax, dword ptr [rbp - 0x3ec]
	add	rsp, 0x4c0
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405810

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	je	.label_178
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_178:
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405840

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	nop	
	movzx	eax, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405860

	.globl inittables
	.type inittables, @function
inittables:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
.label_187:
	cmp	qword ptr [rbp - 0x10], 0x100
	jae	.label_183
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, al
	nop	
	movzx	edi, cl
	call	field_sep
	mov	rdx, qword ptr [rbp - 0x10]
	and	al, 1
	mov	byte ptr [byte ptr [+ (rdx * 1) + blanks]],  al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, edx
	lea	rsi, [rsi]
	movsxd	rdx, edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movzx	edi, word ptr [rax + rdx*2]
	lea	rsi, [rsi]
	and	edi, 0x4000
	cmp	edi, 0
	setne	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [byte ptr [+ (rax * 1) + nonprinting]],  cl
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rbp, rbp
	movsxd	rax, edi
	mov	qword ptr [rbp - 0x20], rax
	call	__ctype_b_loc
	mov	rsp, rsp
	xor	edi, edi
	mov	cl, dil
	nop	
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x20]
	movzx	edi, word ptr [rax + rdx*2]
	lea	rsi, [rsi]
	and	edi, 8
	nop	
	cmp	edi, 0
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_180
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, al
	lea	rdi, [rdi]
	movzx	edi, cl
	mov	rbp, rbp
	call	field_sep
	nop	
	xor	al, 0xff
	mov	byte ptr [rbp - 0x31], al
.label_180:
	mov	al, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [byte ptr [+ (rcx * 1) + nondictionary]],  al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edx, ecx
	mov	edi, edx
	call	toupper
	mov	sil, al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]],  sil
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_187
.label_183:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [hard_LC_TIME]],  1
	je	.label_185
	mov	qword ptr [rbp - 0x10], 0
.label_182:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0xc
	jae	.label_188
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 0x2000e
	mov	rbp, rbp
	mov	ecx, eax
	mov	edi, ecx
	mov	rsp, rsp
	call	rpl_nl_langinfo
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	movabs	rdi, OFFSET FLAT:monthtab
	mov	qword ptr [rbp - 0x50], rax
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rdx, 4
	mov	rsi, rdi
	nop	
	add	rsi, rdx
	mov	qword ptr [rsi], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	shl	rax, 4
	add	rdi, rax
	mov	dword ptr [rdi + 8], ecx
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x40], 0
.label_179:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_184
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x28], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	edi, word ptr [rax + rcx*2]
	nop	
	and	edi, 1
	cmp	edi, 0
	lea	rdi, [rdi]
	jne	.label_181
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsx	edi, byte ptr [rcx + rax]
	mov	rsp, rsp
	call	to_uchar
	nop	
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	byte ptr [rdx + rcx], al
.label_181:
	nop	
	jmp	.label_186
.label_186:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_179
.label_184:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_182
.label_188:
	movabs	rax, OFFSET FLAT:monthtab
	mov	ecx, 0xc
	mov	esi, ecx
	mov	ecx, 0x10
	mov	edx, ecx
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:struct_month_cmp
	mov	rbp, rbp
	mov	rdi, rax
	call	qsort
.label_185:
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b80

	.globl sighandler
	.type sighandler, @function
sighandler:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	dword ptr [rbp - 8], edi
	lea	rdi, [rdi]
	call	cleanup
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, edi
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	call	signal
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	call	raise
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bd0

	.globl exit_cleanup
	.type exit_cleanup, @function
exit_cleanup:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x90
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [temphead]]
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_189
	lea	rdi, [rbp - 0x88]
	lea	rdi, [rdi]
	call	cs_enter
	lea	rdi, [rdi]
	call	cleanup
	mov	rsp, rsp
	lea	rdi, [rbp - 0x88]
	nop	
	call	cs_leave
.label_189:
	mov	rbp, rbp
	call	close_stdout
	mov	rsp, rsp
	add	rsp, 0x90
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c40

	.globl key_init
	.type key_init, @function
key_init:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 0x48
	mov	rsp, rsp
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	memset
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x10], -1
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c90

	.globl parse_field_count
	.type parse_field_count, @function
parse_field_count:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x50], rsi
	nop	
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	eax, OFFSET FLAT:.str_0
	mov	r8d, eax
	lea	rsi, [rbp - 0x20]
	nop	
	mov	edx, 0xa
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x28]
	mov	rsp, rsp
	call	xstrtoumax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsp, rsp
	mov	ecx, edx
	sub	eax, 4
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	nop	
	ja	.label_190
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_192]]
	mov	rbp, rbp
	jmp	rcx
.label_2333:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jne	.label_191
	lea	rdi, [rdi]
	jmp	.label_190
.label_191:
	mov	rsp, rsp
	jmp	.label_194
.label_194:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rax], -1
	jmp	.label_190
.label_2334:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_195
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.124
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	call	quote
	mov	edi, 2
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_195:
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_193
.label_190:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_193:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405df0

	.globl set_ordering
	.type set_ordering, @function
set_ordering:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	dword ptr [rbp - 0x14], edx
.label_198:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_199
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x4d
	mov	dword ptr [rbp - 0x40], ecx
	mov	dword ptr [rbp - 0x34], edx
	je	.label_204
	lea	rsi, [rsi]
	jmp	.label_208
.label_208:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x52
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	je	.label_212
	jmp	.label_216
.label_216:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x56
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	je	.label_218
	jmp	.label_222
.label_222:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_224
	mov	rsp, rsp
	jmp	.label_197
.label_197:
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x64
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	je	.label_200
	nop	
	jmp	.label_209
.label_209:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x66
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	mov	rbp, rbp
	je	.label_220
	jmp	.label_211
.label_211:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x30], eax
	je	.label_213
	nop	
	jmp	.label_225
.label_225:
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	sub	eax, 0x68
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	je	.label_219
	jmp	.label_221
.label_221:
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	sub	eax, 0x69
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	je	.label_223
	mov	rbp, rbp
	jmp	.label_203
.label_203:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	sub	eax, 0x6e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	je	.label_196
	jmp	.label_205
.label_205:
	mov	eax, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x38], eax
	je	.label_206
	lea	rsi, [rsi]
	jmp	.label_210
.label_224:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	je	.label_214
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_217
.label_214:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x30], 1
.label_217:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 1
	lea	rdi, [rdi]
	je	.label_201
	nop	
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_226
.label_201:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x31], 1
.label_226:
	jmp	.label_202
.label_200:
	movabs	rax, OFFSET FLAT:nondictionary
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_202
.label_220:
	movabs	rax, OFFSET FLAT:fold_toupper
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	jmp	.label_202
.label_213:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x34], 1
	jmp	.label_202
.label_219:
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax + 0x35], 1
	mov	rsp, rsp
	jmp	.label_202
.label_223:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x20], 0
	nop	
	jne	.label_207
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:nonprinting
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x20], rax
.label_207:
	nop	
	jmp	.label_202
.label_204:
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax + 0x36], 1
	jmp	.label_202
.label_196:
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax + 0x32], 1
	mov	rsp, rsp
	jmp	.label_202
.label_212:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x33], 1
	mov	rbp, rbp
	jmp	.label_202
.label_206:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x37], 1
	lea	rdi, [rdi]
	jmp	.label_202
.label_218:
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax + 0x38], 1
	jmp	.label_202
.label_210:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_215
.label_202:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_198
.label_199:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_215:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4060b0

	.globl badfieldspec
	.type badfieldspec, @function
badfieldspec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.125
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	lea	rsi, [rsi]
	mov	edi, 2
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406130

	.globl insertkey
	.type insertkey, @function
insertkey:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 0x48
	mov	esi, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	call	xmemdup
	movabs	rsi, OFFSET FLAT:keylist
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
.label_227:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_228
	jmp	.label_229
.label_229:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	add	rax, 0x40
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_227
.label_228:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x40], 0
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4061d0

	.globl incompatible_options
	.type incompatible_options, @function
incompatible_options:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	nop	
	movabs	rax, OFFSET FLAT:.str.134
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 2
	xor	esi, esi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406220

	.globl specify_nmerge
	.type specify_nmerge, @function
specify_nmerge:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xa0
	mov	rsp, rsp
	mov	al, sil
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	esi, 0xa
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x90]
	nop	
	mov	dword ptr [rbp - 0x54], edi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x3c], esi
	mov	rsi, rcx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0x38]
	call	xstrtoumax
	mov	edi, 7
	nop	
	lea	rsi, [rbp - 0x78]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	call	getrlimit
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_237
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_238
.label_237:
	mov	rbp, rbp
	mov	eax, 0x14
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rbp, rbp
	jmp	.label_238
.label_238:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	sub	rax, 3
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x9c], 0
	mov	rsp, rsp
	jne	.label_234
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	dword ptr [dword ptr [nmerge]],  ecx
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	rsp, rsp
	mov	eax, ecx
	cmp	rax, qword ptr [rbp - 0x90]
	je	.label_231
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], 1
	lea	rsi, [rsi]
	jmp	.label_236
.label_231:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [nmerge]],  2
	mov	rbp, rbp
	jae	.label_230
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.135
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:long_options
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	shl	rcx, 5
	add	rdi, rcx
	mov	rcx, qword ptr [rdi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x30], rcx
	call	quote
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	edi, edx
	mov	esi, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.136
	mov	rsp, rsp
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.137
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:long_options
	movsxd	rdx, dword ptr [rbp - 0x54]
	shl	rdx, 5
	add	rcx, rdx
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x20], rcx
	call	quote
	mov	edi, 2
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_230:
	nop	
	mov	eax, dword ptr [rbp - 4]
	nop	
	cmp	eax,  dword ptr [dword ptr [nmerge]]
	jae	.label_235
	mov	dword ptr [rbp - 0x9c], 1
	lea	rsi, [rsi]
	jmp	.label_232
.label_235:
	lea	rsi, [rsi]
	add	rsp, 0xa0
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_232:
	mov	rbp, rbp
	jmp	.label_233
.label_233:
	jmp	.label_236
.label_236:
	jmp	.label_234
.label_234:
	cmp	dword ptr [rbp - 0x9c], 1
	lea	rsi, [rsi]
	jne	.label_239
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.138
	mov	rbp, rbp
	call	gettext
	movabs	rdi, OFFSET FLAT:long_options
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	shl	rcx, 5
	nop	
	add	rdi, rcx
	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	mov	rbp, rbp
	call	quote
	xor	edx, edx
	lea	rsi, [rsi]
	mov	edi, edx
	mov	esi, edx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.139
	call	gettext
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x5f]
	nop	
	movabs	rcx, OFFSET FLAT:long_options
	movsxd	rdx, dword ptr [rbp - 0x54]
	nop	
	shl	rdx, 5
	lea	rsi, [rsi]
	add	rcx, rdx
	mov	rcx, qword ptr [rcx]
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rcx
	call	uinttostr
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_239:
	movabs	rcx, OFFSET FLAT:long_options
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x9c]
	mov	esi, dword ptr [rbp - 0x54]
	mov	al, byte ptr [rbp - 0x11]
	mov	r8, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	edx, al
	nop	
	call	xstrtol_fatal
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065a0

	.globl specify_sort_size
	.type specify_sort_size, @function
specify_sort_size:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rsp, rsp
	mov	al, sil
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x48]
	mov	ecx, 0xa
	lea	r8, [rbp - 0x50]
	mov	rbp, rbp
	movabs	r9, OFFSET FLAT:.str.140
	nop	
	mov	dword ptr [rbp - 0x54], edi
	mov	byte ptr [rbp - 0x2d], al
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	r8, r9
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 0
	nop	
	jne	.label_243
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rdi, [rdi]
	ja	.label_243
	movabs	rax, 0x3fffffffffffff
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	ja	.label_247
	mov	rax, qword ptr [rbp - 0x50]
	shl	rax, 0xa
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_257
.label_247:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], 1
.label_257:
	lea	rdi, [rdi]
	jmp	.label_243
.label_243:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_240
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax - 1]
	mov	rbp, rbp
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rsi, [rsi]
	ja	.label_240
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	byte ptr [rax + 1], 0
	jne	.label_240
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	mov	rbp, rbp
	sub	edx, 0x25
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], edx
	je	.label_245
	jmp	.label_256
.label_256:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0x62
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], eax
	jne	.label_241
	jmp	.label_242
.label_242:
	mov	dword ptr [rbp - 0x34], 0
	lea	rsi, [rsi]
	jmp	.label_241
.label_245:
	movsd	xmm0,  qword ptr [word ptr [label_250]]
	movsd	xmm1,  qword ptr [word ptr [label_251]]
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 8], xmm0
	movsd	qword ptr [rbp - 0x20], xmm1
	nop	
	call	physmem_total
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_258]]
	movq	xmm2, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	punpckldq	xmm2, xmm1
	mov	rbp, rbp
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_259]]
	mov	rbp, rbp
	subpd	xmm2, xmm1
	lea	rdi, [rdi]
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	mulsd	xmm0, xmm1
	nop	
	movsd	xmm1, qword ptr [rbp - 0x20]
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x40], xmm0
	mov	rbp, rbp
	movsd	xmm0, qword ptr [rbp - 8]
	ucomisd	xmm0, qword ptr [rbp - 0x40]
	jbe	.label_260
	mov	rsp, rsp
	movsd	xmm0, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movsd	xmm1,  qword ptr [word ptr [rip + label_248]]
	movaps	xmm2, xmm0
	mov	rbp, rbp
	subsd	xmm2, xmm1
	cvttsd2si	rax, xmm2
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	xor	rax, rcx
	cvttsd2si	rcx, xmm0
	ucomisd	xmm1, xmm0
	mov	rsp, rsp
	cmova	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	dword ptr [rbp - 0x34], 0
	lea	rsi, [rsi]
	jmp	.label_249
.label_260:
	mov	dword ptr [rbp - 0x34], 1
.label_249:
	jmp	.label_241
.label_241:
	jmp	.label_240
.label_240:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 0
	nop	
	jne	.label_252
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [sort_size]]
	jae	.label_244
	mov	rsp, rsp
	jmp	.label_254
.label_244:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [word ptr [sort_size]],  rax
	mov	rax,  qword ptr [word ptr [sort_size]]
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	jne	.label_253
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	jbe	.label_246
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_255
.label_246:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	rsp, rsp
	mov	ecx, eax
	imul	rcx, rcx, 0x22
	mov	qword ptr [rbp - 0x10], rcx
.label_255:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [word ptr [sort_size]],  rax
	jmp	.label_254
.label_253:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], 1
.label_252:
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x34]
	nop	
	mov	esi, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x2d]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsx	edx, al
	lea	rdi, [rdi]
	call	xstrtol_fatal
.label_254:
	add	rsp, 0x60
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4068c0

	.globl add_temp_dir
	.type add_temp_dir, @function
add_temp_dir:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [temp_dir_count]]
	cmp	rdi,  qword ptr [word ptr [temp_dir_alloc]]
	jne	.label_261
	nop	
	movabs	rsi, OFFSET FLAT:temp_dir_alloc
	mov	eax, 8
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [temp_dirs]]
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	x2nrealloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [temp_dirs]],  rax
.label_261:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [temp_dir_count]]
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [temp_dir_count]],  rdx
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [temp_dirs]]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406960

	.globl specify_nthreads
	.type specify_nthreads, @function
specify_nthreads:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	al, sil
	xor	esi, esi
	mov	ecx, 0xa
	lea	r8, [rbp - 8]
	movabs	r9, OFFSET FLAT:.str_0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], edi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	edx, ecx
	nop	
	mov	rcx, r8
	mov	r8, r9
	call	xstrtoul
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 1
	jne	.label_265
	mov	qword ptr [rbp - 0x20], -1
	jmp	.label_266
.label_265:
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	je	.label_263
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:long_options
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	nop	
	mov	esi, dword ptr [rbp - 0x10]
	mov	al, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movsx	edx, al
	mov	rbp, rbp
	call	xstrtol_fatal
.label_263:
	mov	rbp, rbp
	mov	rax, -1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 8]
	nop	
	jae	.label_262
	nop	
	mov	qword ptr [rbp - 8], -1
.label_262:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_264
	movabs	rdi, OFFSET FLAT:.str.141
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_264:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_266:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a80

	.globl xfopen
	.type xfopen, @function
xfopen:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	stream_open
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_267
	movabs	rdi, OFFSET FLAT:.str.142
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	sort_die
.label_267:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406af0

	.globl xfclose
	.type xfclose, @function
xfclose:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	ecx, eax
	mov	rsp, rsp
	test	eax, eax
	mov	dword ptr [rbp - 8], ecx
	je	.label_271
	jmp	.label_275
.label_275:
	nop	
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	eax, 1
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_268
	nop	
	jmp	.label_272
.label_271:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	feof_unlocked
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_270
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	clearerr_unlocked
.label_270:
	lea	rdi, [rdi]
	jmp	.label_269
.label_268:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	fflush_unlocked
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_273
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.145
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	call	sort_die
.label_273:
	mov	rbp, rbp
	jmp	.label_269
.label_272:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_274
	movabs	rdi, OFFSET FLAT:.str.65
	mov	rbp, rbp
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	call	sort_die
.label_274:
	jmp	.label_269
.label_269:
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c00

	.globl default_key_compare
	.type default_key_compare, @function
default_key_compare:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 0x20], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
	jne	.label_276
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + 0x28], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	nop	
	jne	.label_276
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	test	byte ptr [rcx + 0x30], 1
	mov	byte ptr [rbp - 1], al
	jne	.label_276
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	test	byte ptr [rcx + 0x31], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	mov	rbp, rbp
	jne	.label_276
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	key_numeric
	mov	rbp, rbp
	mov	cl, 1
	nop	
	test	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], cl
	jne	.label_276
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	test	byte ptr [rcx + 0x36], 1
	nop	
	mov	byte ptr [rbp - 1], al
	jne	.label_276
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x38], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	jne	.label_276
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x33]
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
.label_276:
	mov	al, byte ptr [rbp - 1]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d00

	.globl check_ordering_compatibility
	.type check_ordering_compatibility, @function
check_ordering_compatibility:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rax,  qword ptr [word ptr [keylist]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_277:
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_279
	mov	eax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + 0x32]
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + 0x34]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	edi, dl
	lea	rdi, [rdi]
	add	esi, edi
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + 0x35]
	and	dl, 1
	movzx	edi, dl
	mov	rsp, rsp
	add	esi, edi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + 0x36]
	and	dl, 1
	movzx	edi, dl
	lea	rsi, [rsi]
	add	esi, edi
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + 0x38]
	and	dl, 1
	mov	rbp, rbp
	movzx	edi, dl
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + 0x33]
	mov	rsp, rsp
	and	dl, 1
	movzx	r8d, dl
	or	edi, r8d
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + 0x20], 0
	setne	dl
	lea	rdi, [rdi]
	xor	dl, 0xff
	lea	rdi, [rdi]
	xor	dl, 0xff
	and	dl, 1
	lea	rsi, [rsi]
	movzx	r8d, dl
	or	edi, r8d
	add	esi, edi
	cmp	eax, esi
	jge	.label_278
	lea	rsi, [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x37], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x31], 0
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax + 0x30], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	key_to_opts
	lea	rdi, [rbp - 0x20]
	call	incompatible_options
.label_278:
	mov	rbp, rbp
	jmp	.label_280
.label_280:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_277
.label_279:
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e50

	.globl key_warnings
	.type key_warnings, @function
key_warnings:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x200
	mov	rsp, rsp
	mov	al, sil
	mov	rsp, rsp
	mov	esi, 0x48
	mov	rsp, rsp
	mov	edx, esi
	lea	rcx, [rbp - 0x1f0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rdi
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x119], al
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x168], rdi
	mov	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	call	memcpy
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x148], 1
	mov	rcx,  qword ptr [word ptr [keylist]]
	nop	
	mov	qword ptr [rbp - 0x118], rcx
.label_297:
	cmp	qword ptr [rbp - 0x118], 0
	je	.label_300
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x118]
	test	byte ptr [rax + 0x39], 1
	lea	rsi, [rsi]
	je	.label_302
	lea	rax, [rbp - 0x70]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x100], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x130], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x100], -1
	jne	.label_306
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rax
.label_306:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x1a0]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	eax, OFFSET FLAT:.str.146
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rsi
	nop	
	mov	rsi, rcx
	call	stpcpy
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x78], rax
	call	umaxtostr
	lea	rsi, [rbp - 0x1a0]
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x178], rsi
	mov	rsi, rax
	mov	rsp, rsp
	call	stpcpy
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.147
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	call	stpcpy
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	add	rcx, 1
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x110], rax
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	rsi, rax
	nop	
	call	stpcpy
	mov	qword ptr [rbp - 0x130], rax
	nop	
	mov	rax, qword ptr [rbp - 0x118]
	cmp	qword ptr [rax + 0x10], -1
	je	.label_288
	lea	rsi, [rbp - 0x1a0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.148
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], rsi
	mov	rsp, rsp
	mov	rsi, rcx
	nop	
	call	stpcpy
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	add	rcx, 1
	mov	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	umaxtostr
	mov	rsp, rsp
	lea	rsi, [rbp - 0x1a0]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rsi
	mov	rsi, rax
	call	stpcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x130]
	mov	edx, OFFSET FLAT:.str.149
	lea	rdi, [rdi]
	mov	esi, edx
	mov	qword ptr [rbp - 0x138], rax
	call	stpcpy
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x118]
	cmp	qword ptr [rsi + 0x18], -1
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	mov	rsp, rsp
	movzx	edx, r8b
	nop	
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	rsi, rax
	mov	rbp, rbp
	call	stpcpy
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
.label_288:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.150
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rbp - 0xc0]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	call	quote_n
	mov	edi, 1
	nop	
	lea	rsi, [rbp - 0x70]
	mov	qword ptr [rbp - 0x1a8], rax
	call	quote_n
	xor	edi, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14c], edi
	mov	esi, dword ptr [rbp - 0x14c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	nop	
	call	error
.label_302:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x118]
	cmp	qword ptr [rdx], -1
	nop	
	mov	byte ptr [rbp - 9], cl
	je	.label_298
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	setb	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], dl
.label_298:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x16a], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x16a], 1
	je	.label_303
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.151
	lea	rsi, [rsi]
	call	gettext
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0xc8], rdi
	mov	rbp, rbp
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_303:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x118]
	nop	
	call	key_numeric
	mov	rbp, rbp
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x159], cl
	jne	.label_291
	mov	rax, qword ptr [rbp - 0x118]
	mov	cl, byte ptr [rax + 0x36]
	mov	byte ptr [rbp - 0x159], cl
.label_291:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x159]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, cl
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x101], al
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x118]
	cmp	qword ptr [rsi + 0x10], 0
	mov	byte ptr [rbp - 0xd1], dl
	jne	.label_296
	nop	
	mov	rax, qword ptr [rbp - 0x118]
	cmp	qword ptr [rax + 0x18], 0
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xd1], cl
.label_296:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xd1]
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1f1], al
	test	byte ptr [rbp - 0x16a], 1
	lea	rsi, [rsi]
	jne	.label_281
	test	byte ptr [rbp - 0x119], 1
	lea	rsi, [rsi]
	jne	.label_281
	cmp	dword ptr [dword ptr [tab]],  0x80
	mov	rsp, rsp
	jne	.label_281
	test	byte ptr [rbp - 0x1f1], 1
	jne	.label_281
	mov	rax, qword ptr [rbp - 0x118]
	test	byte ptr [rax + 0x30], 1
	nop	
	jne	.label_289
	test	byte ptr [rbp - 0x101], 1
	mov	rbp, rbp
	je	.label_292
.label_289:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x118]
	test	byte ptr [rax + 0x30], 1
	lea	rsi, [rsi]
	jne	.label_293
	mov	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_292
.label_293:
	mov	rax, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	test	byte ptr [rax + 0x31], 1
	jne	.label_281
	nop	
	mov	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], 0
	nop	
	je	.label_281
.label_292:
	movabs	rdi, OFFSET FLAT:.str.152
	nop	
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_281:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x119], 1
	jne	.label_283
	mov	rdi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	call	key_numeric
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_305
	mov	rbp, rbp
	jmp	.label_283
.label_305:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x158], rax
	nop	
	mov	rax, qword ptr [rbp - 0x118]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0xf8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x158], 0
	jne	.label_285
	mov	rax, qword ptr [rbp - 0x158]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x158], rax
.label_285:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xf8], 0
	je	.label_294
	mov	rax, qword ptr [rbp - 0x158]
	cmp	rax, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	jae	.label_295
.label_294:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.153
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rdi
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	al, 0
	call	error
.label_295:
	nop	
	jmp	.label_283
.label_283:
	cmp	qword ptr [rbp - 0x1d0], 0
	je	.label_284
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	rcx, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_284
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1d0], 0
.label_284:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x1c8], 0
	lea	rdi, [rdi]
	je	.label_286
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	mov	rcx, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rcx + 0x28]
	lea	rsi, [rsi]
	jne	.label_286
	mov	qword ptr [rbp - 0x1c8], 0
.label_286:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x30]
	mov	rsp, rsp
	xor	cl, 0xff
	and	cl, 1
	nop	
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x1c0]
	nop	
	and	cl, 1
	nop	
	movzx	esi, cl
	and	esi, edx
	mov	rbp, rbp
	cmp	esi, 0
	setne	cl
	nop	
	and	cl, 1
	mov	byte ptr [rbp - 0x1c0], cl
	mov	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x31]
	xor	cl, 0xff
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	mov	cl, byte ptr [rbp - 0x1bf]
	and	cl, 1
	mov	rsp, rsp
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x1bf], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x118]
	nop	
	mov	cl, byte ptr [rax + 0x36]
	nop	
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	nop	
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x1ba]
	lea	rdi, [rdi]
	and	cl, 1
	movzx	esi, cl
	lea	rdi, [rdi]
	and	esi, edx
	cmp	esi, 0
	mov	rsp, rsp
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x1ba], cl
	mov	rax, qword ptr [rbp - 0x118]
	mov	cl, byte ptr [rax + 0x32]
	mov	rbp, rbp
	xor	cl, 0xff
	nop	
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0x1be]
	and	cl, 1
	movzx	esi, cl
	mov	rsp, rsp
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 0x1be], cl
	mov	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x34]
	mov	rbp, rbp
	xor	cl, 0xff
	lea	rdi, [rdi]
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x1bc]
	and	cl, 1
	lea	rdi, [rdi]
	movzx	esi, cl
	lea	rsi, [rsi]
	and	esi, edx
	mov	rbp, rbp
	cmp	esi, 0
	mov	rbp, rbp
	setne	cl
	nop	
	and	cl, 1
	mov	byte ptr [rbp - 0x1bc], cl
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x35]
	lea	rsi, [rsi]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x1bb]
	and	cl, 1
	mov	rsp, rsp
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1bb], cl
	mov	rax, qword ptr [rbp - 0x118]
	mov	cl, byte ptr [rax + 0x33]
	xor	cl, 0xff
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x1bd]
	mov	rbp, rbp
	and	cl, 1
	nop	
	movzx	esi, cl
	and	esi, edx
	mov	rbp, rbp
	cmp	esi, 0
	setne	cl
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 0x1bd], cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	cl, byte ptr [rax + 0x38]
	xor	cl, 0xff
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	cl, byte ptr [rbp - 0x1b8]
	lea	rdi, [rdi]
	and	cl, 1
	lea	rdi, [rdi]
	movzx	esi, cl
	and	esi, edx
	nop	
	cmp	esi, 0
	nop	
	setne	cl
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 0x1b8], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x118]
	mov	cl, byte ptr [rax + 0x37]
	xor	cl, 0xff
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x1b9]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	esi, cl
	mov	rsp, rsp
	and	esi, edx
	lea	rsi, [rsi]
	cmp	esi, 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	byte ptr [rbp - 0x1b9], cl
	mov	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x148], rax
	lea	rdi, [rdi]
	jmp	.label_297
.label_300:
	nop	
	lea	rdi, [rbp - 0x1f0]
	mov	rbp, rbp
	call	default_key_compare
	test	al, 1
	jne	.label_299
	nop	
	jmp	.label_301
.label_299:
	test	byte ptr [rbp - 0x1b9], 1
	je	.label_282
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [stable]],  1
	lea	rsi, [rsi]
	jne	.label_304
	test	byte ptr [byte ptr [unique]],  1
	lea	rsi, [rsi]
	je	.label_282
.label_304:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [keylist]],  0
	lea	rsi, [rsi]
	je	.label_282
.label_301:
	mov	al, byte ptr [rbp - 0x1b9]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x169], al
	test	byte ptr [byte ptr [stable]],  1
	jne	.label_290
	test	byte ptr [byte ptr [unique]],  1
	nop	
	jne	.label_290
	mov	byte ptr [rbp - 0x1b9], 0
.label_290:
	lea	rdi, [rbp - 0x1f0]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xf0]
	mov	rbp, rbp
	call	key_to_opts
	lea	rdi, [rbp - 0xf0]
	mov	rbp, rbp
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rax
	call	select_plural
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.154
	nop	
	movabs	rsi, OFFSET FLAT:.str.155
	mov	rdx, rax
	mov	rsp, rsp
	call	ngettext
	xor	ecx, ecx
	nop	
	lea	rdx, [rbp - 0xf0]
	mov	edi, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	al, byte ptr [rbp - 0x169]
	and	al, 1
	mov	byte ptr [rbp - 0x1b9], al
.label_282:
	test	byte ptr [rbp - 0x1b9], 1
	je	.label_287
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [stable]],  1
	nop	
	jne	.label_287
	test	byte ptr [byte ptr [unique]],  1
	jne	.label_287
	cmp	qword ptr [word ptr [keylist]],  0
	je	.label_287
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.156
	nop	
	call	gettext
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_287:
	add	rsp, 0x200
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407960

	.globl random_md5_state_init
	.type random_md5_state_init, @function
random_md5_state_init:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 0x10
	mov	esi, eax
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	randread_new
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_307
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.142
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	sort_die
.label_307:
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	randread
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	randread_free
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_308
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.65
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	sort_die
.label_308:
	nop	
	movabs	rdi, OFFSET FLAT:random_md5_state
	mov	rsp, rsp
	call	md5_init_ctx
	nop	
	mov	eax, 0x10
	mov	rbp, rbp
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:random_md5_state
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rsi]
	call	md5_process_bytes
	nop	
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a60

	.globl check
	.type check, @function
check:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x110
	mov	al, sil
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.52
	nop	
	mov	qword ptr [rbp - 0xe8], rdi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x49], al
	nop	
	mov	rdi, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	call	xfopen
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	rax,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	cl,  byte ptr [byte ptr [unique]]
	xor	cl, 0xff
	and	cl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xea], cl
	mov	byte ptr [rbp - 0xe9], 1
	nop	
	mov	rax,  qword ptr [word ptr [merge_buffer_size]]
	cmp	rax,  qword ptr [word ptr [sort_size]]
	lea	rdi, [rdi]
	jbe	.label_314
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [merge_buffer_size]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_324
.label_314:
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_324:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rbp - 0xd0]
	nop	
	mov	ecx, 0x20
	nop	
	mov	esi, ecx
	mov	rdx, rax
	call	initbuf
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x110], 0
.label_325:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xd0]
	nop	
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xe8]
	call	fillbuf
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_322
	mov	rsp, rsp
	jmp	.label_319
.label_322:
	nop	
	lea	rdi, [rbp - 0xd0]
	mov	rbp, rbp
	call	buffer_linelim
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rdi, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	shl	rdi, 5
	lea	rsi, [rsi]
	add	rax, rdi
	nop	
	mov	qword ptr [rbp - 0xe0], rax
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_309
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x110]
	mov	al, byte ptr [rbp - 0xea]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rdx, -0x20
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], ecx
	call	compare
	nop	
	mov	ecx, dword ptr [rbp - 0xd4]
	cmp	ecx, eax
	jg	.label_309
	jmp	.label_312
.label_312:
	movsx	eax, byte ptr [rbp - 0x49]
	mov	rbp, rbp
	cmp	eax, 0x63
	jne	.label_313
	lea	rdi, [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, -0x20
	nop	
	mov	qword ptr [rbp - 0x90], rax
	nop	
	call	buffer_linelim
	movabs	rdi, OFFSET FLAT:.str.157
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	sub	rax, rcx
	lea	rsi, [rsi]
	sar	rax, 5
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x20], rax
	call	gettext
	lea	rsi, [rbp - 0x70]
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	call	umaxtostr
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, rax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.158
	mov	rcx, qword ptr [rbp - 0x90]
	nop	
	mov	rsi,  qword ptr [word ptr [stderr]]
	nop	
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x78], rcx
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rdx, rax
	lea	rsi, [rsi]
	call	write_line
.label_313:
	nop	
	mov	byte ptr [rbp - 0xe9], 0
	nop	
	jmp	.label_319
.label_309:
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rcx, -0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	jae	.label_321
	nop	
	mov	al, byte ptr [rbp - 0xea]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rdx, -0x20
	mov	rsi, rdx
	mov	dword ptr [rbp - 0x88], ecx
	call	compare
	mov	ecx, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	cmp	ecx, eax
	nop	
	jg	.label_315
	jmp	.label_312
.label_315:
	lea	rdi, [rdi]
	jmp	.label_318
.label_321:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_320
	jmp	.label_317
.label_317:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 1
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_323
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_311
.label_323:
	mov	rsp, rsp
	jmp	.label_316
.label_316:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_317
.label_311:
	mov	rdi, qword ptr [rbp - 0x110]
	call	free
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [rbp - 0x110], rax
.label_320:
	nop	
	mov	rdi, qword ptr [rbp - 0x110]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rax + 8]
	mov	rbp, rbp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_310
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x100], rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx]
	sub	rcx, rdx
	lea	rdi, [rdi]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], rax
.label_310:
	lea	rsi, [rsi]
	jmp	.label_325
.label_319:
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	call	xfclose
	mov	rdi, qword ptr [rbp - 0xd0]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x110]
	call	free
	mov	al, byte ptr [rbp - 0xe9]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x110
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407f50

	.globl check_inputs
	.type check_inputs, @function
check_inputs:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_330:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jae	.label_329
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	nop	
	mov	edx, OFFSET FLAT:.str.54
	mov	esi, edx
	nop	
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_326
	jmp	.label_327
.label_326:
	mov	esi, 4
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + rax*8]
	call	euidaccess
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_328
	movabs	rdi, OFFSET FLAT:.str.165
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rcx + rdi*8]
	mov	rbp, rbp
	mov	rdi, rax
	call	sort_die
.label_328:
	nop	
	jmp	.label_327
.label_327:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_330
.label_329:
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408030

	.globl check_output
	.type check_output, @function
check_output:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_331
	mov	edx, 0x1b6
	mov	dword ptr [rbp - 8], 0x80041
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	lea	rdi, [rdi]
	call	open
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jge	.label_332
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.142
	mov	rsp, rsp
	call	gettext
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	sort_die
.label_332:
	nop	
	mov	esi, 1
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	move_fd
.label_331:
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080d0

	.globl merge
	.type merge, @function
merge:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x110
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0xe0], rsi
	mov	qword ptr [rbp - 0xd0], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
.label_338:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	jae	.label_358
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], 0
.label_346:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [nmerge]]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xd0]
	sub	rdx, qword ptr [rbp - 0xa0]
	nop	
	cmp	rcx, rdx
	ja	.label_345
	lea	rdi, [rbp - 0xf8]
	nop	
	call	create_temp
	mov	qword ptr [rbp - 0xc0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0xe0]
	nop	
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	cmp	rdi, rdx
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	jae	.label_355
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	jmp	.label_339
.label_355:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rcx
.label_339:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rbp - 0xc0]
	add	rsi, 0xd
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rsi
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x78]
	nop	
	call	mergefiles
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_334
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	jmp	.label_343
.label_334:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x80], rax
.label_343:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0xe0]
	sub	rcx, rax
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 0xd
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x98]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x98]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	jmp	.label_346
.label_345:
	mov	rax, qword ptr [rbp - 0xd0]
	sub	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xb0], rax
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	rsp, rsp
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	rsp, rsp
	mov	esi, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	mov	rax, rdx
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	nop	
	div	rsi
	mov	rsi, qword ptr [rbp - 0xe8]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0xc8], rsi
	nop	
	mov	rdx, qword ptr [rbp - 0xc8]
	cmp	rdx, qword ptr [rbp - 0xb0]
	jae	.label_350
	mov	rsp, rsp
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xd8], rax
	call	create_temp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rax
	mov	rax, qword ptr [rbp - 0xa0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe0]
	cmp	rdi, qword ptr [rbp - 0xd8]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jae	.label_356
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_341
.label_356:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_341:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	add	rsi, 0xd
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rsi
	mov	rsi, rax
	mov	r8, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	call	mergefiles
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jae	.label_333
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	jmp	.label_344
.label_333:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
.label_344:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xe0]
	sub	rcx, rax
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rax, qword ptr [rbp - 0x100]
	add	rax, 0xd
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x100]
	nop	
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	qword ptr [rbp - 0x98], rdx
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
.label_350:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0xd0]
	sub	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	shl	rdx, 4
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	nop	
	call	memmove
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd0]
	nop	
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_338
.label_358:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	avoid_trashing_input
.label_357:
	lea	rdx, [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd0]
	call	open_input_files
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	jne	.label_348
	movabs	rsi, OFFSET FLAT:.str.166
	mov	rdi, qword ptr [rbp - 0x20]
	call	stream_open
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_349
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	r8, qword ptr [rbp - 0x20]
	nop	
	mov	r9, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	mergefps
	jmp	.label_335
.label_349:
	call	__errno_location
	cmp	dword ptr [rax], 0x18
	jne	.label_337
	cmp	qword ptr [rbp - 0x10], 2
	nop	
	ja	.label_342
.label_337:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.142
	lea	rsi, [rsi]
	call	gettext
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	mov	rbp, rbp
	call	sort_die
.label_342:
	lea	rdi, [rdi]
	jmp	.label_336
.label_348:
	cmp	qword ptr [rbp - 0x10], 2
	lea	rsi, [rsi]
	ja	.label_352
	movabs	rdi, OFFSET FLAT:.str.142
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	shl	rdi, 4
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	sort_die
.label_352:
	mov	rsp, rsp
	jmp	.label_336
.label_336:
	lea	rdi, [rdi]
	jmp	.label_340
.label_340:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	call	xfclose
	nop	
	lea	rax, [rbp - 0x110]
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 2
	setbe	dl
	xor	dl, 0xff
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	lea	rdi, [rbp - 0x110]
	mov	qword ptr [rbp - 0xb8], rax
	call	maybe_create_temp
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	setne	al
	xor	al, 0xff
	test	al, 1
	mov	rsp, rsp
	jne	.label_340
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x108], rdi
	jae	.label_347
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_354
.label_347:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_354:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsi, 0xd
	mov	r9, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x50], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	mergefps
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_353
	nop	
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	jmp	.label_351
.label_353:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa8], rax
.label_351:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xe0]
	sub	rcx, rax
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xd
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xd0]
	sub	rdx, qword ptr [rbp - 0x10]
	shl	rdx, 4
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	memmove
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xd0]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_357
.label_335:
	mov	rbp, rbp
	add	rsp, 0x110
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4088d0

	.globl sort
	.type sort, @function
sort:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x140
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x128], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], 0
.label_361:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	lea	rsi, [rsi]
	je	.label_364
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.52
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	xfopen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x80], 1
	jbe	.label_371
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], 1
	mov	qword ptr [rbp - 0x120], 1
.label_360:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	jae	.label_359
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_360
.label_359:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x120]
	mov	rbp, rbp
	shl	rax, 5
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_369
.label_371:
	mov	qword ptr [rbp - 0x28], 0x30
.label_369:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	jne	.label_376
	mov	rsp, rsp
	lea	rdi, [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	nop	
	mov	r8, qword ptr [rbp - 0x70]
	mov	r9, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rcx
	nop	
	mov	rcx, r8
	mov	r8, r9
	call	sort_buffer_size
	nop	
	lea	rdi, [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x130]
	mov	rdx, rax
	call	initbuf
.label_376:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
.label_375:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 8]
	call	fillbuf
	test	al, 1
	mov	rbp, rbp
	jne	.label_362
	jmp	.label_365
.label_362:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x30], 1
	mov	rbp, rbp
	je	.label_366
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	nop	
	je	.label_366
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x50]
	sub	rcx, rdx
	nop	
	cmp	rax, rcx
	jae	.label_366
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_365
.label_366:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [word ptr [saved_line]],  0
	lea	rsi, [rsi]
	call	buffer_linelim
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x30], 1
	je	.label_367
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_367
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_367
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_367
	mov	rdi, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	call	xfclose
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.166
	mov	rdi, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	call	xfopen
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0xb0], rax
	mov	byte ptr [rbp - 0x89], 1
	jmp	.label_378
.label_367:
	lea	rdi, [rbp - 0x88]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	call	create_temp
	add	rax, 0xd
	mov	qword ptr [rbp - 0xb0], rax
.label_378:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x50]
	jae	.label_372
	lea	rdi, [rbp - 0x118]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	call	queue_init
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	call	merge_tree_init
	lea	r8, [rbp - 0x118]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x138], rax
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, 0x80
	mov	r9, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	nop	
	call	sortlines
	mov	rbp, rbp
	jmp	.label_370
.label_372:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	rax, -0x20
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	write_unique
.label_370:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0xb0]
	nop	
	call	xfclose
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x89], 1
	je	.label_373
	mov	rbp, rbp
	jmp	.label_368
.label_373:
	lea	rsi, [rsi]
	jmp	.label_375
.label_365:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb8]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	call	xfclose
	lea	rsi, [rsi]
	jmp	.label_361
.label_364:
	jmp	.label_368
.label_368:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	free
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	jne	.label_363
	mov	eax, 0x10
	mov	esi, eax
	nop	
	mov	rcx,  qword ptr [word ptr [temphead]]
	nop	
	mov	qword ptr [rbp - 0x78], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	xnmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x68], 0
.label_377:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x78], 0
	lea	rdi, [rdi]
	je	.label_374
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rax, 0xd
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	jmp	.label_377
.label_374:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x128]
	call	merge
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	rbp, rbp
	call	free
.label_363:
	lea	rdi, [rdi]
	call	reap_all
	add	rsp, 0x140
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e20

	.globl sort_die
	.type sort_die, @function
sort_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], esi
	mov	qword ptr [rbp - 0x18], rcx
	je	.label_380
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_379
.label_380:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.180
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
.label_379:
	mov	rax, qword ptr [rbp - 0x10]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, rax
	nop	
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	edi, 2
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, rax
	mov	al, 0
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408ec0

	.globl field_sep
	.type field_sep, @function
field_sep:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	al, dil
	mov	byte ptr [rbp - 2], al
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rbp - 2]
	movsxd	rcx, edi
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	dl, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edi, 1
	cmp	edi, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], dl
	jne	.label_381
	movzx	eax, byte ptr [rbp - 2]
	cmp	eax, 0xa
	lea	rsi, [rsi]
	sete	cl
	mov	byte ptr [rbp - 1], cl
.label_381:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f40

	.globl struct_month_cmp
	.type struct_month_cmp, @function
struct_month_cmp:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f90

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [temphead]]
	mov	qword ptr [rbp - 8], rax
.label_382:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_383
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 0xd
	mov	rsp, rsp
	mov	rdi, rax
	call	unlink
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_382
.label_383:
	mov	qword ptr [word ptr [temphead]],  0
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409010

	.globl cs_enter
	.type cs_enter, @function
cs_enter:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:caught_signals
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	add	rdi, 8
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rdx, qword ptr [rbp - 8]
	call	pthread_sigmask
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	sete	cl
	mov	rdx, qword ptr [rbp - 0x10]
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rdx], cl
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409070

	.globl cs_leave
	.type cs_leave, @function
cs_leave:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	test	byte ptr [rdi], 1
	lea	rsi, [rsi]
	je	.label_384
	mov	edi, 2
	xor	eax, eax
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 8
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	pthread_sigmask
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_384:
	mov	rbp, rbp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090d0

	.globl stream_open
	.type stream_open, @function
stream_open:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rsi]
	nop	
	cmp	eax, 0x72
	mov	rbp, rbp
	jne	.label_389
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	eax, OFFSET FLAT:.str.54
	mov	esi, eax
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_388
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stdin]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_391
.label_388:
	mov	esi, 0x80000
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, 0
	mov	rbp, rbp
	call	open
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	jge	.label_390
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_386
.label_390:
	nop	
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x30], rax
.label_386:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_391:
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	call	fadvise
	mov	rbp, rbp
	jmp	.label_393
.label_389:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x77
	jne	.label_394
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_385
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rdi, [rdi]
	call	ftruncate
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_385
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	lea	rsi, [rsi]
	call	get_outstatus
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	je	.label_387
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0x8000
	mov	rbp, rbp
	je	.label_387
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_395
.label_387:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.143
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	call	quotearg_n_style_colon
	mov	edi, 2
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
.label_395:
	jmp	.label_385
.label_385:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_392
.label_394:
	movabs	rdi, OFFSET FLAT:.str.144
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.29
	lea	rdi, [rdi]
	mov	edx, 0x3d6
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.stream_open
	call	__assert_fail
.label_392:
	mov	rsp, rsp
	jmp	.label_393
.label_393:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409300

	.globl get_outstatus
	.type get_outstatus, @function
get_outstatus:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [get_outstatus.outstat_errno]],  0
	nop	
	jne	.label_396
	mov	edi, 1
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:get_outstatus.outstat
	nop	
	call	__fstat
	cmp	eax, 0
	jne	.label_397
	nop	
	mov	eax, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_398
.label_397:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
.label_398:
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [get_outstatus.outstat_errno]],  eax
.label_396:
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:get_outstatus.outstat
	cmp	dword ptr [dword ptr [get_outstatus.outstat_errno]],  0
	mov	rbp, rbp
	cmovl	rcx, rdx
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093a0

	.globl key_numeric
	.type key_numeric, @function
key_numeric:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0x32], 1
	mov	byte ptr [rbp - 9], al
	lea	rsi, [rsi]
	jne	.label_399
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x34], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	jne	.label_399
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x35]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], cl
.label_399:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409400

	.globl key_to_opts
	.type key_to_opts, @function
key_to_opts:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	test	byte ptr [rsi + 0x30], 1
	jne	.label_400
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x31], 1
	je	.label_408
.label_400:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x62
.label_408:
	movabs	rax, OFFSET FLAT:nondictionary
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rcx + 0x20], rax
	jne	.label_402
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x64
.label_402:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_401
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x66
.label_401:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	je	.label_409
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x67
.label_409:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x35], 1
	je	.label_405
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x68
.label_405:
	movabs	rax, OFFSET FLAT:nonprinting
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	jne	.label_407
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x69
.label_407:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	test	byte ptr [rax + 0x36], 1
	je	.label_410
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x4d
.label_410:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x32], 1
	je	.label_406
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x6e
.label_406:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x33], 1
	mov	rbp, rbp
	je	.label_411
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x52
.label_411:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x37], 1
	lea	rsi, [rsi]
	je	.label_403
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x72
.label_403:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	test	byte ptr [rax + 0x38], 1
	nop	
	je	.label_404
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x56
.label_404:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409620

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	cmp	qword ptr [rbp - 8], -1
	ja	.label_412
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_413
.label_412:
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	div	rcx
	lea	rsi, [rsi]
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_413:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409680

	.globl initbuf
	.type initbuf, @function
initbuf:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
.label_416:
	mov	eax, 0x20
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	rdx, 0x1f
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	malloc
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_415
	jmp	.label_417
.label_415:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rcx, 1
	nop	
	cmp	rax, rcx
	ja	.label_414
	call	xalloc_die
.label_414:
	jmp	.label_416
.label_417:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x10], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x30], 0
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409790

	.globl fillbuf
	.type fillbuf, @function
fillbuf:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x80], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rdx
	nop	
	mov	rdx,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x10], rdx
	mov	al,  byte ptr [byte ptr [eolchar]]
	mov	byte ptr [rbp - 0x61], al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x28]
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx,  qword ptr [word ptr [merge_buffer_size]]
	sub	rdx, 0x22
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	test	byte ptr [rdx + 0x30], 1
	nop	
	je	.label_422
	mov	byte ptr [rbp - 0x29], 0
	jmp	.label_434
.label_422:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rcx + 0x20]
	je	.label_418
	xor	eax, eax
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rdx]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	add	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rsi + 0x20]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	call	memmove
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 8], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], 0
.label_418:
	lea	rsi, [rsi]
	jmp	.label_424
.label_424:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	buffer_linelim
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	nop	
	sub	rsi, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	shl	rsi, 5
	add	rax, rsi
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	imul	rsi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	sub	rcx, rsi
	mov	rbp, rbp
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	sub	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_436
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	jmp	.label_433
.label_436:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x98], rax
.label_433:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x18], rax
.label_441:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	cmp	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	jae	.label_429
	mov	rbp, rbp
	mov	eax, 1
	mov	esi, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x90]
	sub	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	add	rdx, 1
	mov	rbp, rbp
	mov	rax, rcx
	xor	edi, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rdx
	nop	
	mov	edx, edi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, rax
	mov	rbp, rbp
	call	fread_unlocked
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x90], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	je	.label_419
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	call	ferror_unlocked
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_439
	movabs	rdi, OFFSET FLAT:.str.159
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	sort_die
.label_439:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	call	feof_unlocked
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_423
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x30], 1
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_427
	mov	byte ptr [rbp - 0x29], 0
	jmp	.label_434
.label_427:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_437
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax - 1]
	mov	rsp, rsp
	movsx	edx, byte ptr [rbp - 0x61]
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	je	.label_437
	mov	al, byte ptr [rbp - 0x61]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	byte ptr [rcx], al
.label_437:
	jmp	.label_423
.label_423:
	nop	
	jmp	.label_419
.label_419:
	lea	rdi, [rdi]
	jmp	.label_425
.label_425:
	mov	rdi, qword ptr [rbp - 0x78]
	movsx	esi, byte ptr [rbp - 0x61]
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	je	.label_435
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	add	rax, -0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jbe	.label_440
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_438
.label_440:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x58], rax
.label_438:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x90]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x90], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_442
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], -1
	jne	.label_426
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_431
.label_426:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	limfield
	mov	qword ptr [rbp - 0xb0], rax
.label_431:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax], -1
	je	.label_444
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	begfield
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	qword ptr [rsi + 0x10], rax
	nop	
	jmp	.label_443
.label_444:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x30], 1
	mov	rbp, rbp
	je	.label_421
	jmp	.label_428
.label_428:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	lea	rsi, [rsi]
	mov	ecx, edi
	mov	rbp, rbp
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_430
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_428
.label_430:
	mov	rsp, rsp
	jmp	.label_421
.label_421:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + 0x10], rax
.label_443:
	jmp	.label_442
.label_442:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_425
.label_435:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	test	byte ptr [rax + 0x30], 1
	je	.label_432
	jmp	.label_429
.label_432:
	lea	rsi, [rsi]
	jmp	.label_441
.label_429:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	nop	
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	buffer_linelim
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	sub	rax, rcx
	mov	rsp, rsp
	sar	rax, 5
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x10], 0
	je	.label_420
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 0x22
	mov	qword ptr [word ptr [merge_buffer_size]],  rax
	nop	
	mov	byte ptr [rbp - 0x29], 1
	mov	rbp, rbp
	jmp	.label_434
.label_420:
	lea	rsi, [rbp - 0x40]
	mov	eax, 0x20
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x18]
	shr	rcx, 5
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, qword ptr [rcx]
	lea	rsi, [rsi]
	call	x2nrealloc
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 5
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	nop	
	jmp	.label_424
.label_434:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e80

	.globl buffer_linelim
	.type buffer_linelim, @function
buffer_linelim:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rdi, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ec0

	.globl compare
	.type compare, @function
compare:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x38], rsi
	cmp	qword ptr [word ptr [keylist]],  0
	nop	
	je	.label_445
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	keycompare
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	nop	
	jne	.label_448
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [unique]],  1
	lea	rsi, [rsi]
	jne	.label_448
	mov	rsp, rsp
	test	byte ptr [byte ptr [stable]],  1
	je	.label_454
.label_448:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	jmp	.label_457
.label_454:
	jmp	.label_445
.label_445:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	sub	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	jne	.label_461
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	sub	eax, edx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_447
.label_461:
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_452
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_455
.label_452:
	mov	rsp, rsp
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	je	.label_459
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	rsi, rax
	call	xmemcoll0
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_450
.label_459:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rsi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	jae	.label_446
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_458
.label_446:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
.label_458:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 4], eax
	cmp	eax, 0
	nop	
	jne	.label_456
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_460
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	jmp	.label_451
.label_460:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	setne	cl
	and	cl, 1
	nop	
	movzx	edx, cl
	mov	dword ptr [rbp - 0x1c], edx
.label_451:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_456:
	lea	rsi, [rsi]
	jmp	.label_450
.label_450:
	nop	
	jmp	.label_455
.label_455:
	jmp	.label_447
.label_447:
	test	byte ptr [byte ptr [reverse]],  1
	nop	
	je	.label_449
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 4]
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_453
.label_449:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x2c], eax
.label_453:
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	mov	dword ptr [rbp - 0x3c], eax
.label_457:
	mov	eax, dword ptr [rbp - 0x3c]
	add	rsp, 0x60
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a110

	.globl write_line
	.type write_line, @function
write_line:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x38], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 8], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	jne	.label_463
	test	byte ptr [byte ptr [debug]],  1
	nop	
	je	.label_463
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_467:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_465
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], dl
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	esi, 9
	mov	rbp, rbp
	jne	.label_464
	mov	byte ptr [rbp - 0x19], 0x3e
	jmp	.label_466
.label_464:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_462
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0xa
.label_462:
	mov	rbp, rbp
	jmp	.label_466
.label_466:
	mov	rsp, rsp
	movsx	edi, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	call	fputc_unlocked
	lea	rdi, [rdi]
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_469
	movabs	rdi, OFFSET FLAT:.str.163
	mov	rsp, rsp
	call	gettext
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, rax
	call	sort_die
.label_469:
	mov	rsp, rsp
	jmp	.label_467
.label_465:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	debug_line
	lea	rsi, [rsi]
	jmp	.label_470
.label_463:
	mov	eax, 1
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [eolchar]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx - 1], cl
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	call	fwrite_unlocked
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	je	.label_468
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.163
	call	gettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	sort_die
.label_468:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rax - 1], 0
.label_470:
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a2c0

	.globl limfield
	.type limfield, @function
limfield:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	add	rsi, qword ptr [rdi + 8]
	add	rsi, -1
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	jne	.label_492
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_492:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [tab]],  0x80
	je	.label_493
	jmp	.label_497
.label_497:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3b], cl
	lea	rdi, [rdi]
	jae	.label_498
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x3b], dl
.label_498:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x3b]
	test	al, 1
	jne	.label_479
	nop	
	jmp	.label_475
.label_479:
	mov	rbp, rbp
	jmp	.label_488
.label_488:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	jae	.label_491
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [tab]]
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], dl
.label_491:
	mov	al, byte ptr [rbp - 1]
	test	al, 1
	jne	.label_502
	lea	rsi, [rsi]
	jmp	.label_471
.label_502:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_488
.label_471:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_480
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_487
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_480
.label_487:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_480:
	mov	rsp, rsp
	jmp	.label_497
.label_475:
	jmp	.label_486
.label_493:
	lea	rsi, [rsi]
	jmp	.label_482
.label_482:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 2], cl
	jae	.label_500
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	nop	
	setne	dl
	mov	byte ptr [rbp - 2], dl
.label_500:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 2]
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_483
	mov	rsp, rsp
	jmp	.label_490
.label_483:
	jmp	.label_478
.label_478:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 3], cl
	lea	rdi, [rdi]
	jae	.label_494
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	mov	rsp, rsp
	mov	ecx, edi
	nop	
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 3], al
.label_494:
	mov	al, byte ptr [rbp - 3]
	test	al, 1
	jne	.label_473
	jmp	.label_476
.label_473:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_478
.label_476:
	jmp	.label_477
.label_477:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x3a], cl
	jae	.label_489
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	lea	rsi, [rsi]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	mov	ecx, edi
	nop	
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	xor	al, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x3a], al
.label_489:
	mov	al, byte ptr [rbp - 0x3a]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_503
	jmp	.label_484
.label_503:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_477
.label_484:
	mov	rsp, rsp
	jmp	.label_482
.label_490:
	jmp	.label_486
.label_486:
	cmp	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	je	.label_485
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	test	byte ptr [rax + 0x31], 1
	mov	rsp, rsp
	je	.label_472
	jmp	.label_474
.label_474:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x39], cl
	lea	rsi, [rsi]
	jae	.label_499
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	mov	rbp, rbp
	mov	ecx, edi
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x39], al
.label_499:
	mov	al, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_481
	jmp	.label_495
.label_481:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_474
.label_495:
	nop	
	jmp	.label_472
.label_472:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x48]
	cmp	rax, rcx
	mov	rbp, rbp
	jae	.label_496
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_501
.label_496:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rax
.label_501:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_485:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a6b0

	.globl begfield
	.type begfield, @function
begfield:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x60], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x50]
	add	rsi, qword ptr [rdi + 8]
	mov	rbp, rbp
	add	rsi, -1
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x60]
	nop	
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	cmp	dword ptr [dword ptr [tab]],  0x80
	je	.label_515
	jmp	.label_513
.label_513:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	cmp	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rbp - 0x21], cl
	jae	.label_514
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x21], dl
.label_514:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_527
	mov	rbp, rbp
	jmp	.label_532
.label_527:
	jmp	.label_524
.label_524:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], cl
	lea	rsi, [rsi]
	jae	.label_533
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx,  dword ptr [dword ptr [tab]]
	lea	rsi, [rsi]
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], dl
.label_533:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x51]
	mov	rsp, rsp
	test	al, 1
	jne	.label_508
	jmp	.label_523
.label_508:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_524
.label_523:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_530
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_530:
	jmp	.label_513
.label_532:
	jmp	.label_507
.label_515:
	jmp	.label_509
.label_509:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x12], cl
	nop	
	jae	.label_511
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x12], dl
.label_511:
	mov	al, byte ptr [rbp - 0x12]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_525
	lea	rdi, [rdi]
	jmp	.label_528
.label_525:
	nop	
	jmp	.label_521
.label_521:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x31], cl
	lea	rsi, [rsi]
	jae	.label_522
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], al
.label_522:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_516
	lea	rdi, [rdi]
	jmp	.label_518
.label_516:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_521
.label_518:
	jmp	.label_519
.label_519:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rbp - 0x11], cl
	lea	rdi, [rdi]
	jae	.label_529
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	mov	rsp, rsp
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x11], al
.label_529:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_531
	mov	rsp, rsp
	jmp	.label_517
.label_531:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_519
.label_517:
	lea	rdi, [rdi]
	jmp	.label_509
.label_528:
	jmp	.label_507
.label_507:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	test	byte ptr [rax + 0x30], 1
	nop	
	je	.label_510
	lea	rsi, [rsi]
	jmp	.label_505
.label_505:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x41], cl
	mov	rsp, rsp
	jae	.label_506
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x41], al
.label_506:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	mov	rsp, rsp
	jne	.label_520
	jmp	.label_526
.label_520:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_505
.label_526:
	jmp	.label_510
.label_510:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x40]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_504
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_512
.label_504:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_512:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x60
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa60

	.globl keycompare
	.type keycompare, @function
keycompare:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10d0
	mov	qword ptr [rbp - 0x10c0], rdi
	mov	qword ptr [rbp - 0x70], rsi
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [keylist]]
	nop	
	mov	qword ptr [rbp - 0xc8], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10c0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x78], rsi
	mov	rsi, qword ptr [rbp - 0x10c0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x18]
	nop	
	mov	qword ptr [rbp - 0x98], rsi
	mov	rsi, qword ptr [rbp - 0x70]
	nop	
	mov	rsi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rsi
.label_611:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x98]
	jbe	.label_589
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_573
.label_589:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_573:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	jbe	.label_616
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x1098], rax
	lea	rsi, [rsi]
	jmp	.label_626
.label_616:
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rbp - 0x1098], rax
.label_626:
	mov	rax, qword ptr [rbp - 0x1098]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	nop	
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	jne	.label_631
	nop	
	mov	rdi, qword ptr [rbp - 0xc8]
	call	key_numeric
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_631
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	test	byte ptr [rax + 0x36], 1
	jne	.label_631
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	test	byte ptr [rax + 0x33], 1
	jne	.label_631
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	test	byte ptr [rax + 0x38], 1
	mov	rbp, rbp
	je	.label_538
.label_631:
	cmp	qword ptr [rbp - 8], 0
	jne	.label_544
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_548
.label_544:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	cmp	qword ptr [rbp - 0xd8], 0xfa0
	lea	rdi, [rdi]
	ja	.label_552
	lea	rax, [rbp - 0x1080]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1088], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
	jmp	.label_565
.label_552:
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	call	xmalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x1088], rax
.label_565:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1088]
	add	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10b0], rax
	mov	qword ptr [rbp - 0x10a8], 0
	mov	qword ptr [rbp - 0xa0], 0
.label_643:
	mov	rax, qword ptr [rbp - 0x10a8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_595
	cmp	qword ptr [rbp - 8], 0
	je	.label_600
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10a8]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	nop	
	call	to_uchar
	movzx	edi, al
	lea	rsi, [rsi]
	mov	ecx, edi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	test	byte ptr [rdx + rcx], 1
	jne	.label_612
.label_600:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_624
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10a8]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsx	edi, byte ptr [rdx + rcx]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], edi
	jmp	.label_551
.label_624:
	mov	rax, qword ptr [rbp - 0x10a8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xa4], edx
.label_551:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsi, rdx
	add	rsi, 1
	nop	
	mov	qword ptr [rbp - 0xa0], rsi
	mov	rsi, qword ptr [rbp - 0x1088]
	mov	byte ptr [rsi + rdx], cl
.label_612:
	jmp	.label_642
.label_642:
	nop	
	mov	rax, qword ptr [rbp - 0x10a8]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10a8], rax
	jmp	.label_643
.label_595:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1088]
	mov	byte ptr [rcx + rax], 0
	nop	
	mov	qword ptr [rbp - 0x10a8], 0
	mov	qword ptr [rbp - 0x68], 0
.label_579:
	mov	rax, qword ptr [rbp - 0x10a8]
	nop	
	cmp	rax, qword ptr [rbp - 0x80]
	nop	
	jae	.label_540
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	je	.label_546
	mov	rax, qword ptr [rbp - 0x10a8]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rcx + rax]
	mov	rbp, rbp
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	test	byte ptr [rdx + rcx], 1
	jne	.label_554
.label_546:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_560
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10a8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	lea	rsi, [rsi]
	mov	ecx, edi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rdx + rcx]
	mov	dword ptr [rbp - 0x2c], edi
	lea	rdi, [rdi]
	jmp	.label_575
.label_560:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10a8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], edx
.label_575:
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x68], rsi
	mov	rsi, qword ptr [rbp - 0x10b0]
	mov	byte ptr [rsi + rdx], cl
.label_554:
	mov	rbp, rbp
	jmp	.label_635
.label_635:
	mov	rax, qword ptr [rbp - 0x10a8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10a8], rax
	nop	
	jmp	.label_579
.label_540:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10b0]
	mov	byte ptr [rcx + rax], 0
	nop	
	jmp	.label_608
.label_548:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1088], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1088]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x52], dl
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1088]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10b0], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x10b0]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x54], dl
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10b0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
.label_608:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	test	byte ptr [rax + 0x32], 1
	je	.label_639
	nop	
	mov	rdi, qword ptr [rbp - 0x1088]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10b0]
	mov	rsp, rsp
	call	numcompare
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10b4], eax
	lea	rsi, [rsi]
	jmp	.label_641
.label_639:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	test	byte ptr [rax + 0x34], 1
	je	.label_646
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x1088]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10b0]
	nop	
	call	general_numcompare
	nop	
	mov	dword ptr [rbp - 0x10b4], eax
	lea	rsi, [rsi]
	jmp	.label_543
.label_646:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	test	byte ptr [rax + 0x35], 1
	mov	rsp, rsp
	je	.label_547
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1088]
	mov	rsi, qword ptr [rbp - 0x10b0]
	call	human_numcompare
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10b4], eax
	jmp	.label_556
.label_547:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	test	byte ptr [rax + 0x36], 1
	je	.label_558
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x1088]
	nop	
	call	getmonth
	xor	ecx, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10b0]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	call	getmonth
	mov	ecx, dword ptr [rbp - 0x3c]
	sub	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10b4], ecx
	jmp	.label_580
.label_558:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	test	byte ptr [rax + 0x33], 1
	nop	
	je	.label_583
	mov	rdi, qword ptr [rbp - 0x1088]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x10b0]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	call	compare_random
	mov	dword ptr [rbp - 0x10b4], eax
	nop	
	jmp	.label_598
.label_583:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x38], 1
	je	.label_602
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1088]
	mov	rsi, qword ptr [rbp - 0x10b0]
	nop	
	call	filevercmp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10b4], eax
	mov	rsp, rsp
	jmp	.label_614
.label_602:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_617
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	mov	rbp, rbp
	sub	eax, edx
	mov	dword ptr [rbp - 0x10b4], eax
	jmp	.label_597
.label_617:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_629
	mov	dword ptr [rbp - 0x10b4], 1
	jmp	.label_632
.label_629:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1088]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x10b0]
	mov	rcx, qword ptr [rbp - 0x68]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rbp, rbp
	call	xmemcoll0
	nop	
	mov	dword ptr [rbp - 0x10b4], eax
.label_632:
	lea	rdi, [rdi]
	jmp	.label_597
.label_597:
	jmp	.label_614
.label_614:
	jmp	.label_598
.label_598:
	jmp	.label_580
.label_580:
	jmp	.label_556
.label_556:
	mov	rsp, rsp
	jmp	.label_543
.label_543:
	nop	
	jmp	.label_641
.label_641:
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jne	.label_647
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_535
.label_647:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	free
	jmp	.label_542
.label_535:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x52]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x1088]
	mov	rsp, rsp
	mov	byte ptr [rdx + rcx], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x10b0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rcx], al
.label_542:
	jmp	.label_555
.label_538:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_588
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_574
	jmp	.label_564
.label_564:
	jmp	.label_541
.label_541:
	mov	rbp, rbp
	jmp	.label_568
.label_568:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x98]
	mov	byte ptr [rbp - 0x51], cl
	lea	rdi, [rdi]
	jae	.label_570
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	mov	rbp, rbp
	mov	ecx, edi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x51], al
.label_570:
	mov	al, byte ptr [rbp - 0x51]
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_587
	lea	rdi, [rdi]
	jmp	.label_592
.label_587:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_568
.label_592:
	jmp	.label_603
.label_603:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rbp - 0x88]
	mov	byte ptr [rbp - 0x1d], cl
	jae	.label_604
	mov	rax, qword ptr [rbp - 0x78]
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	mov	ecx, edi
	nop	
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x1d], al
.label_604:
	mov	al, byte ptr [rbp - 0x1d]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_621
	jmp	.label_623
.label_621:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_603
.label_623:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x98]
	jae	.label_581
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	jb	.label_615
.label_581:
	jmp	.label_634
.label_615:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	edi, byte ptr [rdx + rcx]
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	movsx	esi, byte ptr [rcx]
	mov	dword ptr [rbp - 0x1c], edi
	mov	edi, esi
	call	to_uchar
	movzx	esi, al
	mov	rbp, rbp
	mov	ecx, esi
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rdx + rcx]
	nop	
	call	to_uchar
	lea	rsi, [rsi]
	movzx	esi, al
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x1c]
	sub	edi, esi
	mov	dword ptr [rbp - 0x10b4], edi
	cmp	dword ptr [rbp - 0x10b4], 0
	lea	rdi, [rdi]
	je	.label_645
	jmp	.label_534
.label_645:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_541
.label_634:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	setb	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x88]
	setb	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	esi, cl
	sub	edx, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10b4], edx
	mov	rsp, rsp
	jmp	.label_549
.label_574:
	jmp	.label_569
.label_569:
	jmp	.label_537
.label_537:
	jmp	.label_599
.label_599:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x98]
	nop	
	mov	byte ptr [rbp - 0x59], cl
	jae	.label_576
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	mov	rsp, rsp
	mov	ecx, edi
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	al, byte ptr [rdx + rcx]
	nop	
	mov	byte ptr [rbp - 0x59], al
.label_576:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x59]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_591
	lea	rdi, [rdi]
	jmp	.label_644
.label_591:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_599
.label_644:
	jmp	.label_605
.label_605:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x88]
	mov	byte ptr [rbp - 0x1099], cl
	lea	rsi, [rsi]
	jae	.label_606
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	mov	ecx, edi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x1099], al
.label_606:
	mov	al, byte ptr [rbp - 0x1099]
	mov	rsp, rsp
	test	al, 1
	jne	.label_625
	jmp	.label_628
.label_625:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_605
.label_628:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x98]
	jae	.label_633
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	jb	.label_640
.label_633:
	jmp	.label_638
.label_640:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	to_uchar
	nop	
	movzx	edi, al
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	movsx	edx, byte ptr [rcx]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10c4], edi
	mov	edi, edx
	call	to_uchar
	movzx	edx, al
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x10c4]
	nop	
	sub	edi, edx
	nop	
	mov	dword ptr [rbp - 0x10b4], edi
	cmp	dword ptr [rbp - 0x10b4], 0
	je	.label_627
	jmp	.label_534
.label_627:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	jmp	.label_537
.label_638:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	setb	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	esi, cl
	sub	edx, esi
	mov	dword ptr [rbp - 0x10b4], edx
	jmp	.label_549
.label_549:
	lea	rsi, [rsi]
	jmp	.label_566
.label_588:
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_607
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	dword ptr [rbp - 0x10b4], eax
	jmp	.label_571
.label_607:
	nop	
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	jne	.label_550
	lea	rsi, [rsi]
	jmp	.label_582
.label_550:
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_578
	mov	rsp, rsp
	jmp	.label_585
.label_585:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x98]
	mov	byte ptr [rbp - 0xb9], cl
	jae	.label_590
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	setb	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb9], cl
.label_590:
	mov	al, byte ptr [rbp - 0xb9]
	test	al, 1
	jne	.label_609
	mov	rbp, rbp
	jmp	.label_613
.label_609:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	nop	
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rdx + rcx]
	call	to_uchar
	movzx	edi, al
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, rcx
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rsp, rsp
	movsx	esi, byte ptr [rcx]
	nop	
	mov	dword ptr [rbp - 0xcc], edi
	lea	rsi, [rsi]
	mov	edi, esi
	call	to_uchar
	lea	rdi, [rdi]
	movzx	esi, al
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rdx + rcx]
	call	to_uchar
	movzx	esi, al
	mov	edi, dword ptr [rbp - 0xcc]
	sub	edi, esi
	mov	dword ptr [rbp - 0x10b4], edi
	cmp	dword ptr [rbp - 0x10b4], 0
	lea	rsi, [rsi]
	je	.label_637
	nop	
	jmp	.label_534
.label_637:
	nop	
	jmp	.label_585
.label_613:
	mov	rsp, rsp
	jmp	.label_559
.label_578:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xb8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsp, rsp
	jae	.label_618
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	jmp	.label_536
.label_618:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
.label_536:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x10b4], eax
	cmp	dword ptr [rbp - 0x10b4], 0
	je	.label_553
	lea	rdi, [rdi]
	jmp	.label_534
.label_553:
	mov	rbp, rbp
	jmp	.label_559
.label_559:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x80]
	jae	.label_562
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_567
.label_562:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x58], edx
.label_567:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10b4], eax
	jmp	.label_571
.label_571:
	jmp	.label_566
.label_566:
	jmp	.label_555
.label_555:
	cmp	dword ptr [rbp - 0x10b4], 0
	je	.label_584
	jmp	.label_534
.label_584:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	cmp	qword ptr [rbp - 0xc8], 0
	jne	.label_586
	jmp	.label_601
.label_586:
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	qword ptr [rax + 0x10], -1
	nop	
	je	.label_539
	mov	rdi, qword ptr [rbp - 0x10c0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc8]
	call	limfield
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc8]
	call	limfield
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_620
.label_539:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10c0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10c0]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 8]
	nop	
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_620:
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	cmp	qword ptr [rax], -1
	lea	rsi, [rsi]
	je	.label_636
	mov	rdi, qword ptr [rbp - 0x10c0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	call	begfield
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	call	begfield
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	jmp	.label_610
.label_636:
	mov	rax, qword ptr [rbp - 0x10c0]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	test	byte ptr [rax + 0x30], 1
	je	.label_561
	jmp	.label_594
.label_594:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	cmp	rdx, qword ptr [rbp - 0x98]
	mov	byte ptr [rbp - 0x53], cl
	jae	.label_545
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	nop	
	movzx	edi, al
	lea	rsi, [rsi]
	mov	ecx, edi
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x53], al
.label_545:
	nop	
	mov	al, byte ptr [rbp - 0x53]
	test	al, 1
	jne	.label_557
	jmp	.label_563
.label_557:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_594
.label_563:
	lea	rdi, [rdi]
	jmp	.label_572
.label_572:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	rdx, qword ptr [rbp - 0x88]
	mov	byte ptr [rbp - 0x89], cl
	mov	rbp, rbp
	jae	.label_577
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	nop	
	call	to_uchar
	movzx	edi, al
	mov	rsp, rsp
	mov	ecx, edi
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], al
.label_577:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	nop	
	jne	.label_593
	nop	
	jmp	.label_630
.label_593:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_572
.label_630:
	mov	rsp, rsp
	jmp	.label_561
.label_561:
	jmp	.label_610
.label_610:
	lea	rsi, [rsi]
	jmp	.label_611
.label_601:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x108c], 0
	jmp	.label_596
.label_582:
	mov	dword ptr [rbp - 0x10b4], 1
.label_534:
	mov	rax, qword ptr [rbp - 0xc8]
	test	byte ptr [rax + 0x37], 1
	je	.label_619
	xor	eax, eax
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x10b4]
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_622
.label_619:
	mov	eax, dword ptr [rbp - 0x10b4]
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_622:
	mov	eax, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x108c], eax
.label_596:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x108c]
	mov	rbp, rbp
	add	rsp, 0x10d0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bba0

	.globl numcompare
	.type numcompare, @function
numcompare:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
.label_649:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	to_uchar
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	mov	rsp, rsp
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	nop	
	je	.label_648
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_649
.label_648:
	lea	rsi, [rsi]
	jmp	.label_650
.label_650:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	lea	rsi, [rsi]
	call	to_uchar
	movzx	edi, al
	lea	rsi, [rsi]
	mov	ecx, edi
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_651
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_650
.label_651:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [decimal_point]]
	mov	ecx,  dword ptr [dword ptr [thousands_sep]]
	lea	rdi, [rdi]
	call	strnumcmp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bc70

	.globl general_numcompare
	.type general_numcompare, @function
general_numcompare:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdi
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rbp - 0x18]
	call	strtold
	nop	
	fstp	xword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x28]
	call	strtold
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x18]
	jne	.label_663
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rbp - 0x28]
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	nop	
	jmp	.label_665
.label_663:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jne	.label_659
	nop	
	mov	dword ptr [rbp - 0x54], 1
	nop	
	jmp	.label_665
.label_659:
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x10]
	fucomip	st(1)
	fstp	st(0)
	mov	rbp, rbp
	jbe	.label_669
	mov	rsp, rsp
	jmp	.label_658
.label_658:
	nop	
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x34], eax
	nop	
	jmp	.label_660
.label_669:
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x50]
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x10]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	lea	rdi, [rdi]
	jbe	.label_664
	mov	rsp, rsp
	jmp	.label_655
.label_655:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_657
.label_664:
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x50]
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x10]
	fxch	st(1)
	fucomip	st(1)
	mov	rbp, rbp
	fstp	st(0)
	jne	.label_652
	nop	
	jnp	.label_668
	jmp	.label_652
.label_668:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_654
.label_652:
	fld	xword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	fucomip	st(0)
	jp	.label_666
	jmp	.label_661
.label_661:
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_662
.label_666:
	fld	xword ptr [rbp - 0x50]
	fucomip	st(0)
	jp	.label_667
	mov	rsp, rsp
	jmp	.label_653
.label_653:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_656
.label_667:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	nan_compare
	mov	dword ptr [rbp - 0x2c], eax
.label_656:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], eax
.label_662:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x30], eax
.label_654:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
.label_657:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
.label_660:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
.label_665:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x60
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40be40

	.globl human_numcompare
	.type human_numcompare, @function
human_numcompare:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
.label_671:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	mov	ecx, edi
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	nop	
	je	.label_673
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_671
.label_673:
	jmp	.label_675
.label_675:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	rsp, rsp
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_672
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_675
.label_672:
	mov	rdi, qword ptr [rbp - 8]
	call	find_unit_order
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	call	find_unit_order
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	sub	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], ecx
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_674
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_670
.label_674:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	edx,  dword ptr [dword ptr [decimal_point]]
	mov	ecx,  dword ptr [dword ptr [thousands_sep]]
	lea	rdi, [rdi]
	call	strnumcmp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
.label_670:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bf50

	.globl getmonth
	.type getmonth, @function
getmonth:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x10], 0xc
.label_682:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	nop	
	mov	ecx, edi
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_676
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_682
.label_676:
	jmp	.label_684
.label_684:
	movabs	rax, OFFSET FLAT:monthtab
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shr	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_688:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	jne	.label_677
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_680
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_680:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:monthtab
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rax, rcx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x34], edx
	jmp	.label_683
.label_677:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	lea	rsi, [rsi]
	call	to_uchar
	movzx	edi, al
	lea	rsi, [rsi]
	mov	ecx, edi
	nop	
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]]
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx]
	nop	
	mov	dword ptr [rbp - 0x1c], edi
	mov	edi, edx
	call	to_uchar
	movzx	edx, al
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	cmp	edi, edx
	lea	rdi, [rdi]
	jge	.label_685
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_679
.label_685:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]]
	mov	rbp, rbp
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], edi
	nop	
	mov	edi, edx
	call	to_uchar
	nop	
	movzx	edx, al
	mov	edi, dword ptr [rbp - 0x4c]
	cmp	edi, edx
	jle	.label_678
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_679
.label_678:
	lea	rdi, [rdi]
	jmp	.label_686
.label_686:
	mov	rbp, rbp
	jmp	.label_687
.label_687:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_688
.label_679:
	lea	rsi, [rsi]
	jmp	.label_681
.label_681:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	jb	.label_684
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], 0
.label_683:
	mov	eax, dword ptr [rbp - 0x34]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c1a0

	.globl compare_random
	.type compare_random, @function
compare_random:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x1240
	nop	
	mov	eax, 0x9c
	mov	r8d, eax
	lea	rdi, [rdi]
	movabs	r9, OFFSET FLAT:random_md5_state
	nop	
	lea	r10, [rbp - 0x1220]
	lea	rsi, [rsi]
	lea	r11, [rbp - 0x10d0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x68], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10d8], rcx
	mov	dword ptr [rbp - 0x3c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r11
	nop	
	mov	qword ptr [rbp - 0xb8], 0xfa0
	mov	qword ptr [rbp - 0x28], 0
	nop	
	mov	rcx, r10
	mov	rsp, rsp
	add	rcx, 0x9c
	mov	rdx, rcx
	mov	rdi, rdx
	mov	rsi, r9
	mov	rsp, rsp
	mov	rdx, r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], r10
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], r8
	mov	rsp, rsp
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdi, rcx
	nop	
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 8]
	call	memcpy
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	mov	rsp, rsp
	je	.label_699
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rbp - 0x10d8]
	mov	qword ptr [rbp - 0x50], rax
.label_705:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x10d8]
	lea	rsi, [rsi]
	imul	rax, rax, 3
	nop	
	add	rax, 2
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xe8]
	jae	.label_700
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	imul	rcx, qword ptr [rbp - 0xb8], 3
	lea	rdi, [rdi]
	shr	rcx, 1
	lea	rdi, [rdi]
	cmp	rax, rcx
	jbe	.label_715
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xc8], rax
	lea	rdi, [rdi]
	jmp	.label_690
.label_715:
	lea	rdi, [rdi]
	imul	rax, qword ptr [rbp - 0xb8], 3
	lea	rdi, [rdi]
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
.label_690:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_719
	lea	rax, [rbp - 0x10d0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], 0xfa0
.label_719:
	jmp	.label_700
.label_700:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	jae	.label_702
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	call	xstrxfrm
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
	nop	
	jmp	.label_693
.label_702:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rcx
	jmp	.label_693
.label_693:
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	setbe	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x10d9], cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_691
	mov	rsp, rsp
	test	byte ptr [rbp - 0x10d9], 1
	je	.label_709
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_720
.label_709:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	lea	rdi, [rdi]
	jmp	.label_720
.label_720:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rsi, qword ptr [rbp - 0x68]
	test	byte ptr [rbp - 0x10d9], 1
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	qword ptr [rbp - 0x58], rsi
	mov	rbp, rbp
	je	.label_697
	mov	rax, qword ptr [rbp - 0xb8]
	sub	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	jmp	.label_708
.label_697:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_708
.label_708:
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, rax
	call	xstrxfrm
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_689
.label_691:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_689
.label_689:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x10d9], 1
	mov	rsp, rsp
	je	.label_717
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0xb8]
	jbe	.label_701
.label_717:
	movabs	rax, 0x5555555555555555
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xb8], rcx
	cmp	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	jae	.label_711
	imul	rax, qword ptr [rbp - 0xb8], 3
	lea	rsi, [rsi]
	shr	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
.label_711:
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
	mov	rdi, qword ptr [rbp - 0xb8]
	call	xmalloc
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	jae	.label_692
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	call	strxfrm
	mov	qword ptr [rbp - 0x10], rax
.label_692:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_718
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	add	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strxfrm
	mov	qword ptr [rbp - 0x60], rax
.label_718:
	mov	rbp, rbp
	jmp	.label_701
.label_701:
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x128]
	jae	.label_703
	mov	rdi, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	call	strlen
	add	rax, 1
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xe0], rax
.label_703:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	jae	.label_714
	mov	rdi, qword ptr [rbp - 0x68]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rbp - 0x68], rax
.label_714:
	mov	rax, qword ptr [rbp - 0xe0]
	cmp	rax, qword ptr [rbp - 0x128]
	jb	.label_696
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x50]
	jb	.label_696
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xe0], rax
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10d8], rax
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_706
.label_696:
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x1220]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	call	md5_process_bytes
	lea	rdx, [rbp - 0x1220]
	mov	rsi, qword ptr [rbp - 0x38]
	add	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x88]
	add	rdx, 0x9c
	mov	qword ptr [rbp - 0xa8], rdi
	nop	
	mov	rdi, rsi
	nop	
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	call	md5_process_bytes
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_698
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xb0], rdi
	mov	qword ptr [rbp - 0x1230], rax
	mov	rbp, rbp
	jae	.label_710
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	nop	
	jmp	.label_713
.label_710:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
.label_713:
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x1230]
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	memcmp
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_716
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	seta	cl
	and	cl, 1
	movzx	edx, cl
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	cmp	rax, qword ptr [rbp - 0x88]
	setb	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	esi, cl
	sub	edx, esi
	mov	dword ptr [rbp - 0x3c], edx
.label_716:
	mov	rsp, rsp
	jmp	.label_698
.label_698:
	mov	rbp, rbp
	jmp	.label_705
.label_706:
	jmp	.label_699
.label_699:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x1220]
	nop	
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	call	md5_process_bytes
	lea	rdx, [rbp - 0x120]
	nop	
	lea	rdi, [rbp - 0x1220]
	mov	rsi, rdx
	nop	
	call	md5_finish_ctx
	lea	rdx, [rbp - 0x1220]
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10d8]
	add	rdx, 0x9c
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	call	md5_process_bytes
	mov	rsp, rsp
	lea	rax, [rbp - 0x120]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x1220]
	mov	rsp, rsp
	add	rdx, 0x9c
	add	rax, 0x10
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	md5_finish_ctx
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x120]
	mov	rsi, rdx
	add	rdx, 0x10
	mov	ecx, 0x10
	mov	edi, ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rdi
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0x1228], rax
	lea	rsi, [rsi]
	call	memcmp
	mov	dword ptr [rbp - 0xd4], eax
	cmp	dword ptr [rbp - 0xd4], 0
	jne	.label_694
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	jne	.label_707
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10d8]
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x80], rsi
	jae	.label_704
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x1238], rax
	lea	rdi, [rdi]
	jmp	.label_712
.label_704:
	mov	rax, qword ptr [rbp - 0x10d8]
	mov	qword ptr [rbp - 0x1238], rax
.label_712:
	mov	rax, qword ptr [rbp - 0x1238]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, rax
	nop	
	call	memcmp
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rdi, [rdi]
	jne	.label_695
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10d8]
	seta	cl
	nop	
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	rax, qword ptr [rbp - 0x10d8]
	mov	rbp, rbp
	setb	cl
	nop	
	and	cl, 1
	mov	rbp, rbp
	movzx	esi, cl
	sub	edx, esi
	mov	dword ptr [rbp - 0x3c], edx
.label_695:
	jmp	.label_707
.label_707:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xd4], eax
.label_694:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	add	rsp, 0x1240
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ca20

	.globl nan_compare
	.type nan_compare, @function
nan_compare:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x30]
	lea	rcx, [rbp - 0x60]
	mov	qword ptr [rbp - 0x48], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x60], xmm0
	mov	rdi, qword ptr [rbp - 0x48]
	xor	edx, edx
	mov	esi, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rbp, rbp
	call	strtold
	fstp	xword ptr [rbp - 0x60]
	movaps	xmm0, xmmword ptr [rbp - 0x10]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x30], xmm0
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	call	strtold
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, 0x10
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcmp
	nop	
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cad0

	.globl find_unit_order
	.type find_unit_order, @function
find_unit_order:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	lea	rax, [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rdi]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x25], dl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rbp - 0x25]
	lea	rsi, [rsi]
	and	dl, 1
	nop	
	movzx	ecx, dl
	lea	rsi, [rsi]
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	add	rdi, rsi
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	traverse_raw_number
	mov	ecx, 0x30
	mov	byte ptr [rbp - 1], al
	movzx	r8d, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	cmp	ecx, r8d
	jge	.label_721
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x26], cl
	nop	
	movzx	edx, byte ptr [rbp - 0x26]
	mov	eax, edx
	mov	rsp, rsp
	movsx	edx,  byte ptr [byte ptr [+ (rax * 1) + unit_order]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], edx
	test	byte ptr [rbp - 0x25], 1
	je	.label_724
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	jmp	.label_723
.label_724:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x24], eax
.label_723:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 8], eax
	jmp	.label_722
.label_721:
	mov	dword ptr [rbp - 8], 0
.label_722:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cbc0

	.globl traverse_raw_number
	.type traverse_raw_number, @function
traverse_raw_number:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x12], 0
	mov	byte ptr [rbp - 1], 0
.label_727:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
	movzx	esi, dl
	sub	esi, 0x30
	cmp	esi, 9
	ja	.label_729
	movzx	eax, byte ptr [rbp - 0x12]
	movzx	ecx, byte ptr [rbp - 0x11]
	cmp	eax, ecx
	mov	rsp, rsp
	jge	.label_732
	mov	al, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x12], al
.label_732:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [thousands_sep]]
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
	mov	rsp, rsp
	test	byte ptr [rbp - 1], 1
	je	.label_730
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_730:
	jmp	.label_727
.label_729:
	test	byte ptr [rbp - 1], 1
	je	.label_726
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, -2
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0x12]
	nop	
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_733
.label_726:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x11]
	cmp	eax,  dword ptr [dword ptr [decimal_point]]
	jne	.label_731
	jmp	.label_728
.label_728:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	dl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x11], dl
	movzx	esi, dl
	lea	rsi, [rsi]
	sub	esi, 0x30
	nop	
	cmp	esi, 9
	lea	rsi, [rsi]
	ja	.label_725
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x12]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x11]
	cmp	eax, ecx
	jge	.label_734
	mov	al, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x12], al
.label_734:
	nop	
	jmp	.label_728
.label_725:
	jmp	.label_731
.label_731:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	dl, byte ptr [rbp - 0x12]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], dl
.label_733:
	movzx	eax, byte ptr [rbp - 0x21]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd40

	.globl xstrxfrm
	.type xstrxfrm, @function
xstrxfrm:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x10], rdx
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	strxfrm
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0
	nop	
	je	.label_735
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.160
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c], esi
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.161
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.162
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	mov	edi, 2
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_735:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce60

	.globl debug_line
	.type debug_line, @function
debug_line:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x10], rdi
.label_736:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	debug_key
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	je	.label_738
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x40]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	cmp	rcx, 0
	mov	byte ptr [rbp - 0x11], al
	lea	rdi, [rdi]
	jne	.label_739
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [unique]],  1
	mov	byte ptr [rbp - 2], al
	lea	rsi, [rsi]
	jne	.label_737
	mov	al,  byte ptr [byte ptr [stable]]
	mov	rsp, rsp
	mov	byte ptr [rbp - 2], al
.label_737:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 2]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x11], al
.label_739:
	mov	al, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
.label_738:
	mov	al, byte ptr [rbp - 1]
	test	al, 1
	nop	
	jne	.label_736
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cf30

	.globl debug_key
	.type debug_key, @function
debug_key:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0x58], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	add	rsi, qword ptr [rdi + 8]
	add	rsi, -1
	nop	
	mov	qword ptr [rbp - 0x60], rsi
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_750
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], -1
	lea	rsi, [rsi]
	je	.label_741
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	call	begfield
	mov	qword ptr [rbp - 0x58], rax
.label_741:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], -1
	je	.label_749
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	limfield
	mov	qword ptr [rbp - 0x60], rax
.label_749:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	test	byte ptr [rax + 0x30], 1
	nop	
	je	.label_755
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], -1
	je	.label_744
.label_755:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x36], 1
	mov	rsp, rsp
	jne	.label_744
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	key_numeric
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_744
	jmp	.label_757
.label_744:
	mov	rax, qword ptr [rbp - 0x60]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x81], cl
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
.label_758:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	nop	
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	mov	rsp, rsp
	je	.label_753
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_758
.label_753:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	jae	.label_759
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_743
.label_759:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x36], 1
	je	.label_747
	lea	rsi, [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	getmonth
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_752
.label_747:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	je	.label_754
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x20]
	lea	rdi, [rdi]
	call	strtold
	lea	rsi, [rsi]
	fstp	xword ptr [rbp - 0x70]
	jmp	.label_751
.label_754:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rax + 0x32], 1
	jne	.label_740
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x35], 1
	je	.label_756
.label_740:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x28], rdx
	mov	byte ptr [rbp - 0x11], cl
	lea	rsi, [rsi]
	jae	.label_748
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0x11], dl
.label_748:
	mov	al, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	lea	rdi, [rbp - 0x80]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x80], rsi
	call	traverse_raw_number
	mov	ecx, 0x30
	mov	byte ptr [rbp - 0x2a], al
	movzx	r8d, byte ptr [rbp - 0x2a]
	lea	rsi, [rsi]
	cmp	ecx, r8d
	jg	.label_742
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	sil, byte ptr [rdx]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], sil
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	test	byte ptr [rdi + 0x35], 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], cl
	je	.label_746
	movzx	eax, byte ptr [rbp - 0x41]
	mov	ecx, eax
	lea	rdi, [rdi]
	movsx	eax,  byte ptr [byte ptr [+ (rcx * 1) + unit_order]]
	cmp	eax, 0
	mov	rsp, rsp
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x29], dl
.label_746:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x29]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	add	rsi, rdx
	mov	qword ptr [rbp - 0x20], rsi
.label_742:
	lea	rdi, [rdi]
	jmp	.label_745
.label_756:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_745:
	lea	rdi, [rdi]
	jmp	.label_751
.label_751:
	mov	rsp, rsp
	jmp	.label_752
.label_752:
	jmp	.label_743
.label_743:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
.label_757:
	mov	rbp, rbp
	jmp	.label_750
.label_750:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	debug_width
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	call	debug_width
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	mark_key
	mov	rbp, rbp
	add	rsp, 0x90
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d2d0

	.globl debug_width
	.type debug_width, @function
debug_width:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	nop	
	xor	edx, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rsi, rax
	lea	rsi, [rsi]
	call	mbsnwidth
	movsxd	rsi, eax
	mov	qword ptr [rbp - 8], rsi
.label_760:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_761
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	movsx	edx, byte ptr [rax]
	cmp	edx, 9
	mov	rbp, rbp
	sete	sil
	lea	rdi, [rdi]
	and	sil, 1
	mov	rsp, rsp
	movzx	edx, sil
	movsxd	rax, edx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_760
.label_761:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d380

	.globl mark_key
	.type mark_key, @function
mark_key:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x28], rsi
.label_766:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_764
	mov	edi, 0x20
	call	putchar_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_766
.label_764:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_763
	movabs	rdi, OFFSET FLAT:.str.164
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, rax
	nop	
	mov	al, 0
	nop	
	call	printf
	nop	
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	jmp	.label_765
.label_763:
	jmp	.label_762
.label_762:
	lea	rsi, [rsi]
	mov	edi, 0x5f
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_762
	mov	rsp, rsp
	mov	edi, 0xa
	call	putchar_unlocked
	nop	
	mov	dword ptr [rbp - 0x14], eax
.label_765:
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d460

	.globl move_fd
	.type move_fd, @function
move_fd:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 4], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 8]
	cmp	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	je	.label_767
	nop	
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	esi, dword ptr [rbp - 4]
	call	dup2
	nop	
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	call	close
	mov	dword ptr [rbp - 0xc], eax
.label_767:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d4b0

	.globl create_temp
	.type create_temp, @function
create_temp:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	maybe_create_temp
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4e0

	.globl mergefiles
	.type mergefiles, @function
mergefiles:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r8
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, rax
	call	open_input_files
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_768
	nop	
	cmp	qword ptr [rbp - 0x18], 2
	jae	.label_768
	movabs	rdi, OFFSET FLAT:.str.142
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdi]
	mov	rdi, rax
	call	sort_die
.label_768:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	mergefps
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d5b0

	.globl avoid_trashing_input
	.type avoid_trashing_input, @function
avoid_trashing_input:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x68], rdx
	mov	qword ptr [rbp - 0x70], rcx
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x50], rcx
.label_771:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_772
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.54
	mov	rsp, rsp
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	mov	rsp, rsp
	and	dl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], dl
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	je	.label_773
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_773
	test	byte ptr [rbp - 0x41], 1
	jne	.label_773
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x59], 1
	nop	
	jmp	.label_777
.label_773:
	call	get_outstatus
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_780
	jmp	.label_772
.label_780:
	test	byte ptr [rbp - 0x41], 1
	nop	
	je	.label_774
	xor	edi, edi
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x100]
	mov	rsp, rsp
	call	__fstat
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_779
.label_774:
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x100]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	call	stat
	mov	dword ptr [rbp - 0x60], eax
.label_779:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	xor	ecx, ecx
	mov	dl, cl
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
	jne	.label_776
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x31], cl
	nop	
	jne	.label_769
	nop	
	mov	rax, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	sete	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], dl
.label_769:
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], al
.label_776:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x59], al
.label_777:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x59], 1
	nop	
	je	.label_775
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_778
	lea	rdi, [rbp - 0x58]
	call	create_temp
	mov	rsp, rsp
	xor	ecx, ecx
	mov	esi, ecx
	nop	
	mov	ecx, 1
	nop	
	mov	edx, ecx
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rdi, 0xd
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, rax
	mov	r8, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	mergefiles
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_778:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 0xd
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 8], rax
.label_775:
	jmp	.label_770
.label_770:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_771
.label_772:
	mov	rbp, rbp
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d830

	.globl open_input_files
	.type open_input_files, @function
open_input_files:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 8
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	xnmalloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0x2c], 0
.label_781:
	movsxd	rax, dword ptr [rbp - 0x2c]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_785
	movsxd	rax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	je	.label_782
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 0xc]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_782
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rax + 8]
	call	open_temp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_784
.label_782:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.52
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x2c]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	stream_open
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_784:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdx + rcx*8], rax
	movsxd	rax, dword ptr [rbp - 0x2c]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	lea	rdi, [rdi]
	jne	.label_783
	jmp	.label_785
.label_783:
	mov	rbp, rbp
	jmp	.label_786
.label_786:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, 1
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_781
.label_785:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x2c]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d990

	.globl mergefps
	.type mergefps, @function
mergefps:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	lea	rsi, [rsi]
	mov	eax, 0x38
	mov	rsp, rsp
	mov	r10d, eax
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	qword ptr [rbp - 0x78], r8
	mov	qword ptr [rbp - 0xf8], r9
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, r10
	mov	rbp, rbp
	call	xnmalloc
	lea	rsi, [rsi]
	mov	r11d, 8
	lea	rdi, [rdi]
	mov	esi, r11d
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xf0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	xnmalloc
	mov	rsp, rsp
	mov	r11d, 8
	mov	rbp, rbp
	mov	esi, r11d
	mov	qword ptr [rbp - 0xd8], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	xnmalloc
	mov	r11d, 8
	mov	esi, r11d
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	call	xnmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax,  qword ptr [word ptr [keylist]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x98], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], 0
.label_803:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jae	.label_836
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	imul	rax, rax, 0x38
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x68]
	mov	rcx,  qword ptr [word ptr [merge_buffer_size]]
	mov	rdx,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rcx, rax
	jbe	.label_816
	mov	rax,  qword ptr [word ptr [merge_buffer_size]]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_830
.label_816:
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
.label_830:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	ecx, 0x20
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	call	initbuf
	mov	rax, qword ptr [rbp - 0xc8]
	imul	rax, rax, 0x38
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + rdx*8]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx]
	mov	rdi, rax
	call	fillbuf
	test	al, 1
	mov	rbp, rbp
	jne	.label_807
	jmp	.label_809
.label_807:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	imul	rax, rax, 0x38
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	buffer_linelim
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	qword ptr [rbp - 0xa8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	nop	
	add	rax, -0x20
	nop	
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0xc8]
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x68]
	sub	rdi, qword ptr [rdx + 0x10]
	shl	rdi, 5
	add	rax, rdi
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + rdx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_801
.label_809:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	call	xfclose
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_799
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0xc8]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	call	zaptemp
.label_799:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x10], rax
.label_831:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_828
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_831
.label_828:
	mov	rsp, rsp
	jmp	.label_801
.label_801:
	jmp	.label_803
.label_836:
	mov	qword ptr [rbp - 0xc8], 0
.label_811:
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_806
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rax
	lea	rdi, [rdi]
	jmp	.label_811
.label_806:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], 1
.label_822:
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_805
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd8]
	nop	
	mov	rsi, qword ptr [rcx + rax*8]
	call	compare
	mov	rsp, rsp
	xor	edx, edx
	cmp	edx, eax
	jge	.label_793
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	sub	rcx, 1
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], 0
.label_793:
	lea	rsi, [rsi]
	jmp	.label_818
.label_818:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_822
.label_805:
	jmp	.label_789
.label_789:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_829
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [unique]],  1
	lea	rdi, [rdi]
	je	.label_832
	cmp	qword ptr [rbp - 0xf0], 0
	lea	rsi, [rsi]
	je	.label_790
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, qword ptr [rbp - 0x60]
	call	compare
	nop	
	cmp	eax, 0
	je	.label_790
	lea	rdi, [rbp - 0x98]
	mov	qword ptr [rbp - 0xf0], 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	call	write_line
.label_790:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xf0], 0
	mov	rsp, rsp
	jne	.label_804
	lea	rax, [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	nop	
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_810
	jmp	.label_819
.label_819:
	nop	
	cmp	qword ptr [rbp - 0xe8], 0
	jne	.label_821
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rbp, rbp
	jmp	.label_826
.label_821:
	nop	
	jmp	.label_835
.label_835:
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jb	.label_819
.label_826:
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	call	xmalloc
	mov	qword ptr [rbp - 0x98], rax
.label_810:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x90]
	call	memcpy
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_802
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rdx]
	sub	rcx, rdx
	lea	rsi, [rsi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
.label_802:
	jmp	.label_804
.label_804:
	mov	rbp, rbp
	jmp	.label_827
.label_832:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	call	write_line
.label_827:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jae	.label_800
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, -0x20
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	jmp	.label_788
.label_800:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + rcx*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx]
	mov	rdi, rax
	mov	rsp, rsp
	call	fillbuf
	test	al, 1
	mov	rsp, rsp
	jne	.label_812
	jmp	.label_815
.label_812:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	imul	rax, rax, 0x38
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	buffer_linelim
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	add	rax, -0x20
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx]
	imul	rdx, rdx, 0x38
	nop	
	add	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	sub	rdi, qword ptr [rdx + 0x10]
	shl	rdi, 5
	add	rax, rdi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	jmp	.label_823
.label_815:
	mov	qword ptr [rbp - 0xc8], 1
.label_795:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_794
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	jbe	.label_798
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + rax*8]
	nop	
	add	rdx, -1
	mov	qword ptr [rcx + rax*8], rdx
.label_798:
	jmp	.label_814
.label_814:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_795
.label_794:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	xfclose
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_833
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0xb8]
	mov	rdi, qword ptr [rax]
	call	zaptemp
.label_833:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	imul	rax, rax, 0x38
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rax
.label_825:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_792
	lea	rsi, [rsi]
	mov	eax, 0x38
	mov	rbp, rbp
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi + rcx*8 + 8]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	qword ptr [rdi + rsi*8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	add	rsi, 1
	nop	
	shl	rsi, 4
	add	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rdi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	nop	
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rbp - 0xc8]
	imul	rcx, rcx, 0x38
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xc8]
	add	rsi, 1
	imul	rsi, rsi, 0x38
	mov	rsp, rsp
	add	rsi, qword ptr [rbp - 0x68]
	mov	rdi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd8]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsi + rdx*8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdx + rcx*8 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rdx*8], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	jmp	.label_825
.label_792:
	mov	qword ptr [rbp - 0xc8], 0
.label_808:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_820
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_808
.label_820:
	mov	rbp, rbp
	jmp	.label_789
.label_823:
	lea	rdi, [rdi]
	jmp	.label_788
.label_788:
	mov	qword ptr [rbp - 0x50], 1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe0], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
.label_834:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_797
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	call	compare
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xac], eax
	nop	
	cmp	dword ptr [rbp - 0xac], 0
	lea	rsi, [rsi]
	jl	.label_813
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xac], 0
	jne	.label_787
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdx + rcx*8]
	jae	.label_787
.label_813:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_824
.label_787:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
.label_824:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xe0]
	shr	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_834
.label_797:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	sub	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
.label_796:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0xc0]
	jae	.label_791
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_796
.label_791:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_789
.label_829:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [unique]],  1
	lea	rsi, [rsi]
	je	.label_817
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xf0], 0
	je	.label_817
	mov	rbp, rbp
	lea	rdi, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	call	write_line
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	call	free
.label_817:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rsi, qword ptr [rbp - 0x78]
	call	xfclose
	nop	
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdi, rsi
	lea	rdi, [rdi]
	call	free
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, rsi
	lea	rsi, [rsi]
	call	free
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rsi
	call	free
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rdi, rsi
	call	free
	lea	rsi, [rsi]
	add	rsp, 0x100
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e770

	.globl maybe_create_temp
	.type maybe_create_temp, @function
maybe_create_temp:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	al, sil
	lea	rcx, [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdi
	and	al, 1
	mov	byte ptr [rbp - 5], al
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	mov	rdi, rcx
	movzx	esi, al
	call	create_temp_file
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_840
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_843
.label_840:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rax + 0xc], 0
	cmp	qword ptr [word ptr [compress_program]],  0
	je	.label_839
	mov	eax, 4
	mov	esi, eax
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x38]
	mov	rsp, rsp
	call	pipe_fork
	nop	
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dword ptr [rsi + 8], eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	ecx, dword ptr [rsi + 8]
	jge	.label_842
	mov	edi, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	close
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 4], eax
	call	close
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x30], edi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	call	register_proc
	jmp	.label_837
.label_842:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jne	.label_838
	nop	
	mov	edi, dword ptr [rbp - 0x34]
	call	close
	lea	rdi, [rdi]
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	call	move_fd
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x38]
	call	move_fd
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [compress_program]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	al, 0
	call	execlp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	call	__errno_location
	movabs	rsi, OFFSET FLAT:.str.175
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	call	async_safe_die
.label_838:
	mov	rbp, rbp
	jmp	.label_837
.label_837:
	jmp	.label_839
.label_839:
	nop	
	movabs	rsi, OFFSET FLAT:.str.166
	mov	edi, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	fdopen
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rsi], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_841
	nop	
	movabs	rdi, OFFSET FLAT:.str.176
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rdi, 0xd
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	call	sort_die
.label_841:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_843:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e960

	.globl open_temp
	.type open_temp, @function
open_temp:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	movsx	eax, byte ptr [rdi + 0xc]
	nop	
	cmp	eax, 1
	jne	.label_849
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + 8]
	lea	rdi, [rdi]
	call	wait_proc
.label_849:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0xd
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	lea	rdi, [rdi]
	jge	.label_853
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_846
.label_853:
	mov	eax, 9
	lea	rdi, [rdi]
	mov	esi, eax
	nop	
	lea	rdi, [rbp - 0x48]
	nop	
	call	pipe_fork
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	mov	ecx, eax
	sub	eax, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], ecx
	mov	dword ptr [rbp - 0x54], eax
	je	.label_852
	lea	rsi, [rsi]
	jmp	.label_845
.label_845:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_848
	jmp	.label_850
.label_852:
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x18
	lea	rdi, [rdi]
	je	.label_844
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.167
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	mov	edi, 2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_844:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	dword ptr [rbp - 0x10], eax
	call	__errno_location
	mov	dword ptr [rax], 0x18
	mov	rsp, rsp
	jmp	.label_847
.label_848:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x48]
	call	close
	xor	esi, esi
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	dword ptr [rbp - 0x40], eax
	call	move_fd
	nop	
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	call	move_fd
	movabs	rdx, OFFSET FLAT:.str.168
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [compress_program]]
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	rbp, rbp
	mov	al, 0
	call	execlp
	mov	dword ptr [rbp - 0x3c], eax
	call	__errno_location
	movabs	rsi, OFFSET FLAT:.str.169
	mov	edi, dword ptr [rax]
	call	async_safe_die
.label_850:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rcx + 8], eax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	register_proc
	nop	
	mov	edi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	call	close
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	nop	
	call	close
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.52
	nop	
	mov	edi, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
	call	fdopen
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jne	.label_851
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], ecx
	mov	edi, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	close
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rax], ecx
.label_851:
	jmp	.label_847
.label_847:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_846:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rsp, 0x60
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ebe0

	.globl wait_proc
	.type wait_proc, @function
wait_proc:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	call	delete_proc
	test	al, 1
	jne	.label_854
	lea	rsi, [rsi]
	jmp	.label_855
.label_854:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	call	reap
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_855:
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ec20

	.globl pipe_fork
	.type pipe_fork, @function
pipe_fork:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	eax, 0x80000
	lea	rdi, [rdi]
	movsd	xmm0,  qword ptr [word ptr [label_864]]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rsi
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x18], xmm0
	mov	rdi, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rsi, [rsi]
	call	rpl_pipe2
	cmp	eax, 0
	jge	.label_867
	nop	
	mov	dword ptr [rbp - 0xbc], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_869
.label_867:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [nmerge]]
	nop	
	add	eax, 1
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	jae	.label_859
	call	reap_some
.label_859:
	lea	rdi, [rdi]
	jmp	.label_866
.label_866:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rcx
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_860
	lea	rdi, [rbp - 0xa8]
	mov	rbp, rbp
	call	cs_enter
	nop	
	mov	rdi,  qword ptr [word ptr [temphead]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rdi
	mov	qword ptr [word ptr [temphead]],  0
	call	fork
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], eax
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], ecx
	cmp	dword ptr [rbp - 0xd0], 0
	je	.label_863
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [word ptr [temphead]],  rax
.label_863:
	lea	rdi, [rbp - 0xa8]
	lea	rdi, [rdi]
	call	cs_leave
	nop	
	mov	eax, dword ptr [rbp - 0xcc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	call	__errno_location
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], edx
	cmp	ecx, dword ptr [rbp - 0xd0]
	jle	.label_858
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0xb
	je	.label_856
.label_858:
	jmp	.label_860
.label_856:
	movsd	xmm0, qword ptr [rbp - 0x18]
	call	xnanosleep
	lea	rsi, [rsi]
	movsd	xmm0,  qword ptr [word ptr [label_861]]
	mov	rsp, rsp
	mulsd	xmm0, qword ptr [rbp - 0x18]
	movsd	qword ptr [rbp - 0x18], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xac], eax
	nop	
	call	reap_exited
	jmp	.label_866
.label_860:
	cmp	dword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	jge	.label_857
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], ecx
	mov	rax, qword ptr [rbp - 0xb8]
	mov	edi, dword ptr [rax]
	call	close
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	edi, dword ptr [rdx + 4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	mov	rbp, rbp
	call	close
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 8], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rax], ecx
	jmp	.label_865
.label_857:
	cmp	dword ptr [rbp - 0xd0], 0
	nop	
	jne	.label_868
	xor	edi, edi
	call	close
	nop	
	mov	edi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	call	close
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_862
.label_868:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [nprocs]]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [nprocs]],  eax
.label_862:
	lea	rdi, [rdi]
	jmp	.label_865
.label_865:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	mov	dword ptr [rbp - 0xbc], eax
.label_869:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	mov	rbp, rbp
	add	rsp, 0xf0
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40eeb0

	.globl async_safe_die
	.type async_safe_die, @function
async_safe_die:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	mov	eax, 2
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rsi
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rsi
	lea	rsi, [rsi]
	call	strlen
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	mov	rdx, rax
	nop	
	call	write
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	je	.label_870
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x5c]
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	call	inttostr
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:.str.172
	mov	ecx, 8
	mov	rsp, rsp
	mov	edx, ecx
	mov	qword ptr [rbp - 0x40], rax
	call	write
	mov	edi, 2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], edi
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rsi
	call	strlen
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x34]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	write
	mov	qword ptr [rbp - 0x48], rax
.label_870:
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:.str.173
	mov	eax, 1
	mov	edx, eax
	lea	rsi, [rsi]
	call	write
	mov	edi, 2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	_exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40efc0

	.globl register_proc
	.type register_proc, @function
register_proc:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [proctab]],  0
	lea	rsi, [rsi]
	jne	.label_871
	mov	eax, 0x2f
	lea	rsi, [rsi]
	mov	edi, eax
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:proctab_hasher
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:proctab_comparator
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, rcx
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	rcx, r8
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x10]
	call	hash_initialize
	mov	qword ptr [word ptr [proctab]],  rax
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [proctab]],  0
	jne	.label_873
	nop	
	call	xalloc_die
.label_873:
	jmp	.label_871
.label_871:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0xc], 1
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [proctab]]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_insert
	cmp	rax, 0
	nop	
	jne	.label_872
	mov	rbp, rbp
	call	xalloc_die
.label_872:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f0a0

	.globl delete_proc
	.type delete_proc, @function
delete_proc:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	lea	rax, [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], edi
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 8], edi
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [proctab]]
	mov	rsi, rax
	mov	rsp, rsp
	call	hash_delete
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_874
	nop	
	mov	byte ptr [rbp - 0x15], 0
	lea	rdi, [rdi]
	jmp	.label_875
.label_874:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rax + 0xc], 2
	mov	byte ptr [rbp - 0x15], 1
.label_875:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f120

	.globl reap
	.type reap, @function
reap:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	nop	
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_881
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_879
.label_881:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	jmp	.label_879
.label_879:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 8]
	mov	ecx, 1
	xor	edx, edx
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	cmovne	ecx, edx
	mov	edi, eax
	mov	rbp, rbp
	mov	edx, ecx
	lea	rsi, [rsi]
	call	waitpid
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x24], 0
	jge	.label_877
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.170
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_877:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	jge	.label_883
	mov	rbp, rbp
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	jl	.label_876
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x24]
	call	delete_proc
	test	al, 1
	mov	rsp, rsp
	jne	.label_876
	lea	rdi, [rdi]
	jmp	.label_883
.label_876:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 0x7f
	cmp	eax, 0
	jne	.label_882
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	eax, 0xff00
	sar	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_878
.label_882:
	nop	
	movabs	rdi, OFFSET FLAT:.str.171
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	rsp, rsp
	mov	edi, 2
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_878:
	nop	
	mov	eax,  dword ptr [dword ptr [nprocs]]
	lea	rsi, [rsi]
	add	eax, -1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [nprocs]],  eax
.label_883:
	lea	rdi, [rdi]
	jmp	.label_880
.label_880:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x40
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f2f0

	.globl reap_some
	.type reap_some, @function
reap_some:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	edi, 0xffffffff
	call	reap
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	call	reap_exited
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f320

	.globl reap_exited
	.type reap_exited, @function
reap_exited:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	jmp	.label_884
.label_884:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
	jge	.label_885
	xor	edi, edi
	lea	rsi, [rsi]
	call	reap
	cmp	eax, 0
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], cl
.label_885:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	nop	
	test	al, 1
	jne	.label_887
	mov	rsp, rsp
	jmp	.label_886
.label_887:
	jmp	.label_884
.label_886:
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f390

	.globl proctab_hasher
	.type proctab_hasher, @function
proctab_hasher:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rsi + 8]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f3d0

	.globl proctab_comparator
	.type proctab_comparator, @function
proctab_comparator:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	eax, dword ptr [rsi + 8]
	sete	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f420

	.globl zaptemp
	.type zaptemp, @function
zaptemp:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0xc0
	movabs	rax, OFFSET FLAT:temphead
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 0x18], rax
.label_892:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	add	rax, 0xd
	cmp	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	je	.label_889
	mov	rsp, rsp
	jmp	.label_890
.label_890:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_892
.label_889:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 0xc]
	cmp	ecx, 1
	jne	.label_888
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 8]
	mov	rsp, rsp
	call	wait_proc
.label_888:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	call	cs_enter
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb8]
	call	unlink
	mov	dword ptr [rbp - 0xc0], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	lea	rdi, [rbp - 0xb0]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rax
	call	cs_leave
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc0], 0
	mov	rbp, rbp
	je	.label_891
	movabs	rdi, OFFSET FLAT:.str.174
	nop	
	mov	esi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0xbc], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xbc]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_891:
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_893
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [temptail]],  rax
.label_893:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	add	rsp, 0xc0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f5c0

	.globl create_temp_file
	.type create_temp_file, @function
create_temp_file:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	al, sil
	mov	qword ptr [rbp - 0x10], rdi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rdi,  qword ptr [word ptr [create_temp_file.temp_dir_index]]
	mov	rcx,  qword ptr [word ptr [temp_dirs]]
	mov	rcx, qword ptr [rcx + rdi*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd0]
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	add	rax, 0xc
	add	rax, 0x14
	nop	
	and	rax, 0xfffffffffffffff8
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xd
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	mov	rdi, qword ptr [rbp - 0xc0]
	nop	
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0xc8]
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx,  qword ptr [word ptr [create_temp_file.slashbase]]
	mov	qword ptr [rax + rcx], rdx
	lea	rsi, [rsi]
	mov	r8d,  dword ptr [dword ptr [label_896]]
	mov	dword ptr [rax + rcx + 8], r8d
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [create_temp_file.temp_dir_index]]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [word ptr [create_temp_file.temp_dir_index]],  rax
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [temp_dir_count]]
	jne	.label_897
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [create_temp_file.temp_dir_index]],  0
.label_897:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xa0]
	call	cs_enter
	mov	esi, 0x80000
	nop	
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	call	mkostemp_safer
	xor	esi, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], eax
	lea	rdi, [rdi]
	cmp	esi, dword ptr [rbp - 0xd4]
	jg	.label_899
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [temptail]]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [temptail]],  rax
.label_899:
	call	__errno_location
	lea	rdi, [rbp - 0xa0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xa4], ecx
	call	cs_leave
	nop	
	mov	ecx, dword ptr [rbp - 0xa4]
	mov	dword ptr [rbp - 0xb4], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xb4]
	nop	
	mov	dword ptr [rax], ecx
	cmp	dword ptr [rbp - 0xd4], 0
	jge	.label_895
	test	byte ptr [rbp - 0x11], 1
	je	.label_898
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x18
	mov	rbp, rbp
	je	.label_894
.label_898:
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.177
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd8], esi
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	call	quotearg_style
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xd8]
	nop	
	mov	rdx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
.label_894:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_895:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rcx], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xe0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f840

	.globl sort_buffer_size
	.type sort_buffer_size, @function
sort_buffer_size:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x100
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0xf0], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x100], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], r8
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x48], 0
.label_902:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x100]
	jae	.label_907
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, qword ptr [rbp - 0xf0]
	jae	.label_906
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	fileno
	lea	rsi, [rbp - 0xe0]
	mov	rbp, rbp
	mov	edi, eax
	mov	rbp, rbp
	call	__fstat
	mov	dword ptr [rbp - 0xf4], eax
	jmp	.label_911
.label_906:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.54
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_901
	xor	edi, edi
	lea	rsi, [rbp - 0xe0]
	call	__fstat
	mov	dword ptr [rbp - 4], eax
	jmp	.label_912
.label_901:
	lea	rsi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8]
	call	stat
	mov	dword ptr [rbp - 4], eax
.label_912:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], eax
.label_911:
	mov	eax, dword ptr [rbp - 0xf4]
	cmp	eax, 0
	je	.label_909
	movabs	rdi, OFFSET FLAT:.str.178
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rsi, qword ptr [rcx + rdi*8]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	sort_die
.label_909:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc8]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	nop	
	jne	.label_908
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	jmp	.label_914
.label_908:
	cmp	qword ptr [word ptr [sort_size]],  0
	je	.label_904
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_910
.label_904:
	mov	qword ptr [rbp - 0xe8], 0x20000
.label_914:
	cmp	qword ptr [word ptr [sort_buffer_size.size_bound]],  0
	lea	rsi, [rsi]
	jne	.label_900
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [word ptr [sort_buffer_size.size_bound]],  rax
	mov	rbp, rbp
	cmp	qword ptr [word ptr [sort_buffer_size.size_bound]],  0
	lea	rsi, [rsi]
	jne	.label_905
	nop	
	call	default_sort_size
	mov	qword ptr [word ptr [sort_buffer_size.size_bound]],  rax
.label_905:
	mov	rbp, rbp
	jmp	.label_900
.label_900:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rdi, [rdi]
	xor	edx, edx
	div	qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	cmp	rcx, rax
	lea	rdi, [rdi]
	jne	.label_903
	mov	rax,  qword ptr [word ptr [sort_buffer_size.size_bound]]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_913
.label_903:
	mov	rax,  qword ptr [word ptr [sort_buffer_size.size_bound]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_910
.label_913:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	nop	
	jmp	.label_902
.label_907:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
.label_910:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x100
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40fb10

	.globl queue_init
	.type queue_init, @function
queue_init:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:compare_nodes
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	shl	rsi, 1
	mov	rdi, rax
	mov	rbp, rbp
	call	heap_alloc
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	lea	rsi, [rsi]
	mov	rdi, rax
	call	pthread_mutex_init
	xor	ecx, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0x18]
	add	rdi, 0x30
	mov	dword ptr [rbp - 0x10], eax
	call	pthread_cond_init
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fba0

	.globl merge_tree_init
	.type merge_tree_init, @function
merge_tree_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 8
	mov	rdi, rdx
	lea	rsi, [rsi]
	call	xmalloc
	nop	
	xor	ecx, ecx
	nop	
	mov	esi, ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax + 0x18], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x30], rax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x38], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x50], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x54], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x58
	mov	rdi, rax
	mov	rbp, rbp
	call	pthread_mutex_init
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	add	rdx, 0x80
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	mov	rsi, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x2c], eax
	call	init_node
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40fce0

	.globl sortlines
	.type sortlines, @function
sortlines:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rdx
	mov	qword ptr [rbp - 0x98], rcx
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x88], r9
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x98]
	nop	
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0xa8]
	shr	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	sub	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0xa8], 1
	mov	rsp, rsp
	jbe	.label_915
	mov	eax, 0x20000
	mov	rsp, rsp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x70]
	ja	.label_915
	lea	rdi, [rbp - 0x10]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:sortlines_thread
	mov	rbp, rbp
	lea	rcx, [rbp - 0x58]
	call	pthread_create
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_915
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	nop	
	sub	rcx, qword ptr [rsi + 0x28]
	shl	rcx, 5
	mov	rsp, rsp
	add	rdx, rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rdi
	lea	rsi, [rsi]
	mov	rdi, rdx
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rsp], r10
	lea	rdi, [rdi]
	call	sortlines
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	pthread_join
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	lea	rdi, [rdi]
	jmp	.label_917
.label_915:
	mov	eax, 1
	mov	ecx, eax
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	qword ptr [rbp - 0x60], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rdx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	shl	rdx, 5
	lea	rdi, [rdi]
	add	rsi, rdx
	mov	qword ptr [rbp - 0xb8], rsi
	nop	
	cmp	rcx, qword ptr [rbp - 0xb0]
	jae	.label_918
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rdx
	mov	rbp, rbp
	sub	rdi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	shl	rdi, 5
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0xb8]
	nop	
	mov	r9, qword ptr [rbp - 0x60]
	shr	r9, 1
	sub	rdx, r9
	lea	rsi, [rsi]
	shl	rdx, 5
	add	r8, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rdi
	lea	rdi, [rdi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, r8
	mov	rsp, rsp
	call	sequential_sort
.label_918:
	mov	rbp, rbp
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jae	.label_916
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	call	sequential_sort
.label_916:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	lea	rdi, [rdi]
	sub	rsi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	shl	rsi, 5
	lea	rdi, [rdi]
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 0x98]
	mov	qword ptr [rsi + 8], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
.label_2351:
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	sub	rsi, qword ptr [rbp - 0x60]
	shl	rsi, 5
	mov	rsp, rsp
	add	rdx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	sub	rsi, qword ptr [rbp - 0x60]
	shl	rsi, 5
	add	rdx, rsi
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	shl	rcx, 5
	mov	rsp, rsp
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	nop	
	call	queue_insert
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	call	merge_loop
.label_917:
	add	rsp, 0xd0
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4100b0

	.globl write_unique
	.type write_unique, @function
write_unique:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [unique]],  1
	je	.label_919
	cmp	qword ptr [word ptr [saved_line]],  0
	lea	rdi, [rdi]
	je	.label_920
	movabs	rsi, OFFSET FLAT:saved_line
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	compare
	cmp	eax, 0
	jne	.label_920
	jmp	.label_921
.label_920:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rax]
	nop	
	mov	qword ptr [word ptr [saved_line]],  rcx
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [label_922]],  rcx
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [word ptr [label_923]],  rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_924]],  rax
.label_919:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	call	write_line
.label_921:
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410180

	.globl reap_all
	.type reap_all, @function
reap_all:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	rsp, rsp
	jmp	.label_925
.label_925:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	jge	.label_926
	lea	rsi, [rsi]
	mov	edi, 0xffffffff
	call	reap
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_925
.label_926:
	add	rsp, 0x10
	nop	
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4101d0

	.globl default_sort_size
	.type default_sort_size, @function
default_sort_size:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	mov	edi, 2
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x38]
	mov	qword ptr [rbp - 0x18], -1
	call	getrlimit
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_927
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jae	.label_927
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x18], rax
.label_927:
	mov	edi, 9
	lea	rsi, [rbp - 0x38]
	lea	rsi, [rsi]
	call	getrlimit
	cmp	eax, 0
	jne	.label_937
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_937
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_937:
	lea	rdi, [rdi]
	mov	edi, 5
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	call	getrlimit
	cmp	eax, 0
	jne	.label_930
	mov	rax, qword ptr [rbp - 0x38]
	shr	rax, 4
	mov	rbp, rbp
	imul	rax, rax, 0xf
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_930
	mov	rax, qword ptr [rbp - 0x38]
	shr	rax, 4
	mov	rbp, rbp
	imul	rax, rax, 0xf
	mov	qword ptr [rbp - 0x18], rax
.label_930:
	call	physmem_available
	movsd	qword ptr [rbp - 0x10], xmm0
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [label_928]]
	mov	rbp, rbp
	movsd	qword ptr [rbp - 0x20], xmm0
	mov	rsp, rsp
	movsd	xmm0, qword ptr [rbp - 0x10]
	movsd	xmm2, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	divsd	xmm2, xmm1
	ucomisd	xmm0, xmm2
	nop	
	jbe	.label_929
	movsd	xmm0, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_936
.label_929:
	movsd	xmm0,  qword ptr [word ptr [label_928]]
	movsd	xmm1, qword ptr [rbp - 0x20]
	nop	
	divsd	xmm1, xmm0
	mov	rbp, rbp
	movsd	qword ptr [rbp - 8], xmm1
.label_936:
	movsd	xmm0, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsd	qword ptr [rbp - 0x40], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsd	xmm1,  qword ptr [word ptr [rip + label_932]]
	mulsd	xmm0, xmm1
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_258]]
	movq	xmm2, qword ptr [rbp - 0x18]
	nop	
	punpckldq	xmm2, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_259]]
	subpd	xmm2, xmm1
	mov	rsp, rsp
	pshufd	xmm1, xmm2, 0x4e
	nop	
	addpd	xmm1, xmm2
	mov	rbp, rbp
	ucomisd	xmm1, xmm0
	jbe	.label_933
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	xmm1,  qword ptr [word ptr [rip + label_932]]
	mulsd	xmm0, xmm1
	movsd	xmm1,  qword ptr [word ptr [rip + label_248]]
	mov	rbp, rbp
	movaps	xmm2, xmm0
	mov	rsp, rsp
	subsd	xmm2, xmm1
	lea	rsi, [rsi]
	cvttsd2si	rax, xmm2
	nop	
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	xor	rax, rcx
	nop	
	cvttsd2si	rcx, xmm0
	mov	rbp, rbp
	ucomisd	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_933:
	movsd	xmm0, qword ptr [rbp - 0x40]
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_258]]
	movq	xmm2, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	punpckldq	xmm2, xmm1
	lea	rsi, [rsi]
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_259]]
	mov	rbp, rbp
	subpd	xmm2, xmm1
	nop	
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	ucomisd	xmm1, xmm0
	jbe	.label_931
	movsd	xmm0, qword ptr [rbp - 0x40]
	movsd	xmm1,  qword ptr [word ptr [rip + label_248]]
	movaps	xmm2, xmm0
	subsd	xmm2, xmm1
	mov	rsp, rsp
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	nop	
	cvttsd2si	rcx, xmm0
	ucomisd	xmm1, xmm0
	lea	rsi, [rsi]
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_931:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	lea	rdi, [rdi]
	mov	edx, ecx
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	mov	rbp, rbp
	jbe	.label_935
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_934
.label_935:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	mov	rsp, rsp
	imul	rcx, rcx, 0x22
	mov	qword ptr [rbp - 0x28], rcx
.label_934:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4104a0

	.globl compare_nodes
	.type compare_nodes, @function
compare_nodes:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsi + 0x50]
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	eax, dword ptr [rsi + 0x50]
	mov	rbp, rbp
	jne	.label_938
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rdx + 0x30]
	cmp	rax, rcx
	mov	rbp, rbp
	setb	sil
	mov	rbp, rbp
	and	sil, 1
	nop	
	movzx	edi, sil
	nop	
	mov	dword ptr [rbp - 0xc], edi
	jmp	.label_939
.label_938:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x50]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rax + 0x50]
	nop	
	setb	dl
	lea	rsi, [rsi]
	and	dl, 1
	nop	
	movzx	ecx, dl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], ecx
.label_939:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410560

	.globl init_node
	.type init_node, @function
init_node:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x90
	nop	
	mov	al, r9b
	nop	
	mov	qword ptr [rbp - 0x70], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rsi
	mov	qword ptr [rbp - 0x50], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x51], 1
	je	.label_940
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_944
.label_940:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 8], rax
.label_944:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	shr	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, rdx
	sub	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shl	rsi, 5
	lea	rsi, [rsi]
	add	rax, rsi
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rdx, qword ptr [rbp - 0x78]
	shl	rdx, 5
	mov	rbp, rbp
	add	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x51], 1
	lea	rsi, [rsi]
	je	.label_941
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	jmp	.label_945
.label_941:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	add	rax, 0x18
	mov	qword ptr [rbp - 0x60], rax
.label_945:
	mov	rax, qword ptr [rbp - 0x60]
	xor	ecx, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, rax
	add	rdx, 0x80
	mov	qword ptr [rbp - 0x88], rdx
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x10], rax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x18], rax
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x50]
	lea	rdi, [rdi]
	add	ecx, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x50], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x54], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 0x58
	lea	rsi, [rsi]
	mov	rdi, rax
	call	pthread_mutex_init
	cmp	qword ptr [rbp - 0x30], 1
	mov	dword ptr [rbp - 0x64], eax
	jbe	.label_942
	mov	r9d, 1
	mov	rax, qword ptr [rbp - 0x30]
	shr	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	init_node
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x38]
	call	init_node
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_943
.label_942:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x40], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x48], 0
.label_943:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	add	rsp, 0x90
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410850

	.globl sortlines_thread
	.type sortlines_thread, @function
sortlines_thread:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r8, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r9, qword ptr [rax + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	call	sortlines
	nop	
	xor	r10d, r10d
	lea	rsi, [rsi]
	mov	eax, r10d
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4108e0

	.globl sequential_sort
	.type sequential_sort, @function
sequential_sort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	al, cl
	mov	qword ptr [rbp - 0x48], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x70], rdx
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 2
	mov	rsp, rsp
	jne	.label_950
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	add	rax, -0x20
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, -0x40
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	call	compare
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	cmp	edx, eax
	lea	rsi, [rsi]
	setl	r8b
	mov	rbp, rbp
	and	r8b, 1
	mov	rsp, rsp
	movzx	eax, r8b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x11], 1
	mov	rbp, rbp
	je	.label_946
	mov	eax, 0xffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	movsxd	rdx, eax
	shl	rdx, 5
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rcx - 0x20], rsi
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rcx - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx - 0x10], rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rcx - 8], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 0xfffffffe
	movsxd	rdx, eax
	shl	rdx, 5
	nop	
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rcx - 0x40], rsi
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rcx - 0x38], rsi
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx - 0x30], rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rcx - 0x28], rdx
	jmp	.label_952
.label_946:
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_956
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rax - 0x20], rdx
	nop	
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 8], rcx
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rax - 0x20], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rax - 0x18], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 0x10], rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x28]
	mov	qword ptr [rax - 8], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x40], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x38], rdx
	nop	
	mov	rdx, qword ptr [rcx - 0x10]
	nop	
	mov	qword ptr [rax - 0x30], rdx
	nop	
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 0x28], rcx
.label_956:
	jmp	.label_952
.label_952:
	nop	
	jmp	.label_954
.label_950:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shr	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 5
	mov	rbp, rbp
	add	rdx, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	test	byte ptr [rbp - 0x11], 1
	mov	qword ptr [rbp - 0x60], rdi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	je	.label_955
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_953
.label_955:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x80], rcx
	nop	
	jmp	.label_953
.label_953:
	mov	rax, qword ptr [rbp - 0x80]
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	sub	rdx, rax
	lea	rsi, [rsi]
	shl	rdx, 5
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	add	rax, rdx
	mov	sil, byte ptr [rbp - 0x11]
	and	sil, 1
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rbp - 0x61], sil
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	r8b, byte ptr [rbp - 0x61]
	mov	rbp, rbp
	movzx	ecx, r8b
	call	sequential_sort
	mov	rbp, rbp
	mov	ecx, 1
	nop	
	mov	eax, ecx
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	jae	.label_957
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x11]
	xor	al, 0xff
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	call	sequential_sort
	jmp	.label_947
.label_957:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_949
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 8], rcx
.label_949:
	jmp	.label_947
.label_947:
	test	byte ptr [rbp - 0x11], 1
	lea	rdi, [rdi]
	je	.label_951
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_948
.label_951:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_948:
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	call	mergelines
.label_954:
	mov	rbp, rbp
	add	rsp, 0x80
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410c90

	.globl queue_insert
	.type queue_insert, @function
queue_insert:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	add	rsi, 8
	mov	rsp, rsp
	mov	rdi, rsi
	call	pthread_mutex_lock
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], eax
	call	heap_insert
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	byte ptr [rsi + 0x54], 1
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsi, 0x30
	mov	rdi, rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	call	pthread_cond_signal
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rsi, 8
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	call	pthread_mutex_unlock
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d30

	.globl merge_loop
	.type merge_loop, @function
merge_loop:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
.label_959:
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	queue_pop
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x50], 0
	jne	.label_958
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	unlock_node
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	call	queue_insert
	lea	rdi, [rdi]
	jmp	.label_960
.label_958:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	call	mergelines_node
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	queue_check_insert
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	call	queue_check_insert_parent
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlock_node
	mov	rbp, rbp
	jmp	.label_959
.label_960:
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410e00

	.globl mergelines
	.type mergelines, @function
mergelines:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	shr	rdx, 1
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	sub	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x18]
	nop	
	shl	rcx, 5
	add	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdx
.label_964:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, -0x20
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	add	rcx, -0x20
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	compare
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jg	.label_967
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, rcx
	add	rdx, -0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x20], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 0x18], rdx
	nop	
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	rax, 0
	jne	.label_966
	jmp	.label_961
.label_966:
	jmp	.label_962
.label_967:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, -0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	mov	rdx, qword ptr [rcx - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 0x10], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 8], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_965
	nop	
	jmp	.label_963
.label_963:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, -0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax - 0x20], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	rsp, rsp
	mov	qword ptr [rax - 8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_963
	mov	rsp, rsp
	jmp	.label_961
.label_965:
	jmp	.label_962
.label_962:
	lea	rsi, [rsi]
	jmp	.label_964
.label_961:
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411020

	.globl queue_pop
	.type queue_pop, @function
queue_pop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	add	rdi, 8
	call	pthread_mutex_lock
	mov	dword ptr [rbp - 4], eax
.label_969:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	nop	
	call	heap_remove_top
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	setne	cl
	mov	rbp, rbp
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_970
	lea	rdi, [rdi]
	jmp	.label_968
.label_970:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x30
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 8
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	pthread_cond_wait
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	jmp	.label_969
.label_968:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	rdi, rax
	call	pthread_mutex_unlock
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	call	lock_node
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdi + 0x54], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4110f0

	.globl unlock_node
	.type unlock_node, @function
unlock_node:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x58
	call	pthread_mutex_unlock
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x411120

	.globl mergelines_node
	.type mergelines_node, @function
mergelines_node:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x48], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x50]
	mov	rsp, rsp
	add	eax, 1
	shl	eax, 1
	mov	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	shr	rdx, cl
	mov	rsp, rsp
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	dword ptr [rdx + 0x50], 1
	lea	rsi, [rsi]
	jbe	.label_983
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
.label_995:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	cmp	rdx, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], cl
	mov	rbp, rbp
	je	.label_993
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], cl
	lea	rsi, [rsi]
	je	.label_993
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	lea	rdi, [rdi]
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], dl
.label_993:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_992
	jmp	.label_997
.label_992:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	add	rax, -0x20
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 8]
	add	rcx, -0x20
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	compare
	cmp	eax, 0
	jg	.label_977
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -0x20
	nop	
	mov	qword ptr [rbp - 0x58], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	nop	
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, -0x20
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx - 0x20]
	nop	
	mov	qword ptr [rax - 0x20], rcx
	nop	
	mov	rcx, qword ptr [rdx - 0x18]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rdx - 0x10]
	mov	qword ptr [rax - 0x10], rcx
	mov	rcx, qword ptr [rdx - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax - 8], rcx
	lea	rsi, [rsi]
	jmp	.label_1003
.label_977:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, -0x20
	mov	qword ptr [rcx + 8], rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx - 0x20]
	mov	qword ptr [rax - 0x20], rcx
	nop	
	mov	rcx, qword ptr [rdx - 0x18]
	nop	
	mov	qword ptr [rax - 0x18], rcx
	nop	
	mov	rcx, qword ptr [rdx - 0x10]
	nop	
	mov	qword ptr [rax - 0x10], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx - 8]
	nop	
	mov	qword ptr [rax - 8], rcx
.label_1003:
	jmp	.label_995
.label_997:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	jne	.label_972
	jmp	.label_978
.label_978:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x5b], cl
	je	.label_988
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	nop	
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x5b], dl
.label_988:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x5b]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1005
	jmp	.label_974
.label_1005:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -0x20
	nop	
	mov	qword ptr [rbp - 0x58], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx]
	mov	rsi, rdx
	add	rsi, -0x20
	mov	qword ptr [rcx], rsi
	mov	rcx, qword ptr [rdx - 0x20]
	nop	
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rdx - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 0x18], rcx
	nop	
	mov	rcx, qword ptr [rdx - 0x10]
	mov	qword ptr [rax - 0x10], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx - 8]
	mov	qword ptr [rax - 8], rcx
	lea	rdi, [rdi]
	jmp	.label_978
.label_974:
	jmp	.label_985
.label_972:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	jne	.label_991
	jmp	.label_1000
.label_1000:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x5a], cl
	je	.label_973
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5a], dl
.label_973:
	mov	al, byte ptr [rbp - 0x5a]
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1006
	jmp	.label_998
.label_1006:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x58], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	add	rsi, -0x20
	mov	qword ptr [rcx + 8], rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rax - 0x20], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx - 0x18]
	mov	qword ptr [rax - 0x18], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax - 0x10], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx - 8]
	mov	qword ptr [rax - 8], rcx
	lea	rdi, [rdi]
	jmp	.label_1000
.label_998:
	jmp	.label_991
.label_991:
	lea	rdi, [rdi]
	jmp	.label_985
.label_985:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	qword ptr [rcx], rax
	jmp	.label_994
.label_983:
	mov	rbp, rbp
	jmp	.label_979
.label_979:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x22], cl
	lea	rdi, [rdi]
	je	.label_982
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x22], cl
	je	.label_982
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x22], dl
.label_982:
	mov	al, byte ptr [rbp - 0x22]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1001
	jmp	.label_989
.label_1001:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	add	rax, -0x20
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	add	rcx, -0x20
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	nop	
	call	compare
	nop	
	cmp	eax, 0
	jg	.label_987
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax]
	mov	rsp, rsp
	add	rcx, -0x20
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rcx
	call	write_unique
	nop	
	jmp	.label_999
.label_987:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -0x20
	nop	
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, rcx
	nop	
	call	write_unique
.label_999:
	jmp	.label_979
.label_989:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx]
	nop	
	sub	rax, rcx
	mov	rsp, rsp
	sar	rax, 5
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_980
	nop	
	jmp	.label_1002
.label_1002:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	lea	rsi, [rsi]
	je	.label_1004
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	mov	rsp, rsp
	setne	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], dl
.label_1004:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_990
	jmp	.label_981
.label_990:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax]
	add	rcx, -0x20
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	write_unique
	mov	rsp, rsp
	jmp	.label_1002
.label_981:
	jmp	.label_971
.label_980:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_975
	jmp	.label_984
.label_984:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x59], cl
	lea	rsi, [rsi]
	je	.label_986
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	setne	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x59], dl
.label_986:
	mov	al, byte ptr [rbp - 0x59]
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_996
	jmp	.label_976
.label_996:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -0x20
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	nop	
	call	write_unique
	lea	rsi, [rsi]
	jmp	.label_984
.label_976:
	mov	rbp, rbp
	jmp	.label_975
.label_975:
	mov	rbp, rbp
	jmp	.label_971
.label_971:
	jmp	.label_994
.label_994:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	sub	rax, rcx
	sar	rax, 5
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rsi, [rsi]
	sar	rax, 5
	nop	
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	sub	rdx, rax
	mov	qword ptr [rcx + 0x28], rdx
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x30], rdx
	lea	rdi, [rdi]
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4118d0

	.globl queue_check_insert
	.type queue_check_insert, @function
queue_check_insert:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	test	byte ptr [rsi + 0x54], 1
	mov	rbp, rbp
	jne	.label_1007
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	sub	rax, rcx
	nop	
	sar	rax, 5
	cmp	rax, 0
	setne	dl
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], dl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rdi, [rdi]
	sar	rax, 5
	cmp	rax, 0
	mov	rsp, rsp
	setne	dl
	and	dl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], dl
	nop	
	test	byte ptr [rbp - 0x19], 1
	je	.label_1010
	lea	rdi, [rdi]
	test	byte ptr [rbp - 9], 1
	lea	rsi, [rsi]
	jne	.label_1008
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x30], 0
	nop	
	jne	.label_1009
	nop	
	jmp	.label_1008
.label_1010:
	test	byte ptr [rbp - 9], 1
	je	.label_1009
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_1009
.label_1008:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	queue_insert
.label_1009:
	jmp	.label_1007
.label_1007:
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4119d0

	.globl queue_check_insert_parent
	.type queue_check_insert_parent, @function
queue_check_insert_parent:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	dword ptr [rsi + 0x50], 1
	lea	rsi, [rsi]
	jbe	.label_1011
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	call	lock_node
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rax + 0x38]
	call	queue_check_insert
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x38]
	call	unlock_node
	jmp	.label_1012
.label_1011:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x30]
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1013
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x38]
	call	queue_insert
.label_1013:
	jmp	.label_1012
.label_1012:
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x411a80

	.globl lock_node
	.type lock_node, @function
lock_node:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rdi, 0x58
	call	pthread_mutex_lock
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x411ab0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411ad0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], -1
	mov	byte ptr [rbp - 0x21], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
.label_1023:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1021
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1018
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_1024
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1014
.label_1024:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1019
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1017
.label_1019:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_1025
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x48]
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcmp
	cmp	eax, 0
	je	.label_1015
.label_1025:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_1015:
	lea	rsi, [rsi]
	jmp	.label_1017
.label_1017:
	mov	rbp, rbp
	jmp	.label_1020
.label_1020:
	mov	rsp, rsp
	jmp	.label_1018
.label_1018:
	nop	
	jmp	.label_1022
.label_1022:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_1023
.label_1021:
	test	byte ptr [rbp - 0x21], 1
	je	.label_1016
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_1014
.label_1016:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_1014:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x411c80

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1026
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_1027
.label_1026:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_1027:
	mov	rax, qword ptr [rbp - 0x38]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0xc], edi
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411d60

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x30], 0
	mov	dword ptr [rbp - 8], eax
.label_1030:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_1031
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1032
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1029
.label_1032:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3_0
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1033
.label_1029:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_1033:
	jmp	.label_1028
.label_1028:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1030
.label_1031:
	mov	rbp, rbp
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411f10

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	argmatch
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	jl	.label_1034
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1035
.label_1034:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	argmatch_valid
	mov	rsp, rsp
	call	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], -1
.label_1035:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411fd0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
.label_1038:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_1040
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x10]
	nop	
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	memcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1037
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1036
.label_1037:
	lea	rdi, [rdi]
	jmp	.label_1039
.label_1039:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1038
.label_1040:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_1036:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4120a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4120d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412100

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	close_stream
	cmp	eax, 0
	je	.label_1041
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1043
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_1041
.label_1043:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_4
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1045
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 4], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1042
.label_1045:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_1042:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_1041:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_1044
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1044:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412230

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rdi], 0x67452301
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rdi + 4], 0xefcdab89
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 8], 0x98badcfe
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0xc], 0x10325476
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x14], 0
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rdi + 0x18], 0
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4122a0

	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsi]
	call	set_uint32
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	add	rdi, 4
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 4]
	call	set_uint32
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, rax
	call	set_uint32
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xc
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rdi + 0xc]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	set_uint32
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x412340

	.globl set_uint32
	.type set_uint32, @function
set_uint32:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rdi], esi
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412370

	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	eax, 0x20
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rsi + 0x18]
	mov	dword ptr [rbp - 0x24], edx
	nop	
	cmp	dword ptr [rbp - 0x24], 0x38
	cmovb	eax, ecx
	nop	
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x20], rsi
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x18]
	add	eax, dword ptr [rsi + 0x10]
	mov	dword ptr [rsi + 0x10], eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x10]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x24]
	jae	.label_1046
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x14]
	mov	rsp, rsp
	add	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rax + 0x14], ecx
.label_1046:
	movabs	rsi, OFFSET FLAT:fillbuf_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x10]
	shl	ecx, 3
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 2
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rdx + rax*4 + 0x1c], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x14]
	shl	ecx, 3
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x10]
	nop	
	shr	edi, 0x1d
	mov	rbp, rbp
	or	ecx, edi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rdx + rax*4 + 0x1c], ecx
	mov	ecx, dword ptr [rbp - 0x24]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rdx, 0x1c
	add	rdx, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 2
	shl	rax, 2
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	r8d, ecx
	sub	rax, r8
	nop	
	mov	rdi, rdx
	mov	rdx, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 0x1c
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	shl	rdx, 2
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	md5_process_block
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	call	md5_read_ctx
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4124e0

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x60], rdi
	mov	qword ptr [rbp - 0x90], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xa8], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	shr	rdx, 2
	mov	qword ptr [rbp - 0xa0], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	shl	rsi, 2
	add	rdx, rsi
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	mov	eax, dword ptr [rdx]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 8]
	nop	
	mov	dword ptr [rbp - 0x98], eax
	mov	rdx, qword ptr [rbp - 0x70]
	mov	eax, dword ptr [rdx + 0xc]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	eax, edx
	mov	dword ptr [rbp - 0x64], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	eax, dword ptr [rdx + 0x10]
	mov	dword ptr [rdx + 0x10], eax
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	shr	rdx, 0x1f
	shr	rdx, 1
	mov	rsi, qword ptr [rbp - 0x70]
	mov	eax, dword ptr [rsi + 0x10]
	cmp	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	setb	cl
	mov	rsp, rsp
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	eax, dword ptr [rsi + 0x14]
	lea	rdi, [rdi]
	mov	edi, eax
	add	rdi, rdx
	mov	eax, edi
	mov	dword ptr [rsi + 0x14], eax
.label_1050:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	jae	.label_1071
	mov	rsp, rsp
	lea	rax, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x94], ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0xc], ecx
	mov	ecx, dword ptr [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0x84], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x80], ecx
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rsi
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	mov	rsp, rsp
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xd76aa478
	nop	
	add	eax, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	rsi, qword ptr [rbp - 0xa8]
	add	rsi, 4
	nop	
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x54]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1109
.label_1109:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	and	ecx, edx
	xor	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdi, rsi
	mov	rbp, rbp
	add	rdi, 4
	nop	
	mov	qword ptr [rbp - 0x78], rdi
	mov	rsp, rsp
	mov	dword ptr [rsi], ecx
	mov	rsp, rsp
	add	eax, ecx
	add	eax, 0xe8c7b756
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	rsi, 4
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xc
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x14
	lea	rsi, [rsi]
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	jmp	.label_1077
.label_1077:
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	mov	rdi, rsi
	lea	rsi, [rsi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x242070db
	nop	
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	add	rsi, 4
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shl	eax, 0x11
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1095
.label_1095:
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, dword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	and	ecx, edx
	lea	rsi, [rsi]
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x78], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rsi], ecx
	mov	rsp, rsp
	add	eax, ecx
	nop	
	add	eax, 0xc1bdceee
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	add	rsi, 4
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x16
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xa
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1052
.label_1052:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	nop	
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	and	ecx, edx
	nop	
	xor	eax, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x78], rdi
	mov	dword ptr [rsi], ecx
	mov	rbp, rbp
	add	eax, ecx
	add	eax, 0xf57c0faf
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	add	rsi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x54]
	shl	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x54]
	shr	ecx, 0x19
	mov	rbp, rbp
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1067
.label_1067:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, dword ptr [rbp - 0x88]
	nop	
	xor	edx, dword ptr [rbp - 0x98]
	and	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rdi, [rdi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rsi], ecx
	mov	rbp, rbp
	add	eax, ecx
	add	eax, 0x4787c62a
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	add	rsi, 4
	nop	
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xc
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	jmp	.label_1089
.label_1089:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	xor	edx, dword ptr [rbp - 0x88]
	nop	
	and	ecx, edx
	xor	eax, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	add	rdi, 4
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xa8304613
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	add	rsi, 4
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	shl	eax, 0x11
	nop	
	mov	ecx, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	nop	
	jmp	.label_1097
.label_1097:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x98]
	nop	
	mov	edx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	xor	edx, dword ptr [rbp - 0x54]
	and	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	mov	rdi, rsi
	mov	rbp, rbp
	add	rdi, 4
	mov	qword ptr [rbp - 0x78], rdi
	mov	dword ptr [rsi], ecx
	lea	rdi, [rdi]
	add	eax, ecx
	mov	rbp, rbp
	add	eax, 0xfd469501
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	rsi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shl	eax, 0x16
	nop	
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	add	eax, dword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	jmp	.label_1054
.label_1054:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x98]
	nop	
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	mov	rdi, rsi
	nop	
	add	rdi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdi
	mov	dword ptr [rsi], ecx
	mov	rbp, rbp
	add	eax, ecx
	nop	
	add	eax, 0x698098d8
	add	eax, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	add	rsi, 4
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	shr	ecx, 0x19
	mov	rbp, rbp
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	jmp	.label_1096
.label_1096:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, dword ptr [rbp - 0x88]
	nop	
	xor	edx, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	and	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rsi
	add	rdi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x8b44f7af
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	rsi, 4
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x7c]
	nop	
	shr	ecx, 0x14
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	jmp	.label_1086
.label_1086:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	nop	
	add	eax, 0xffff5bb1
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	add	rsi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shl	eax, 0x11
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0xf
	lea	rdi, [rdi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1105
.label_1105:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x54]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	mov	rdi, rsi
	lea	rsi, [rsi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x895cd7be
	add	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	add	rsi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x16
	nop	
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xa
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x98]
	add	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	jmp	.label_1061
.label_1061:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x78], rdi
	nop	
	mov	dword ptr [rsi], ecx
	lea	rdi, [rdi]
	add	eax, ecx
	add	eax, 0x6b901122
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	rsi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	shl	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	shr	ecx, 0x19
	lea	rdi, [rdi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1079
.label_1079:
	mov	eax, dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x98]
	and	ecx, edx
	xor	eax, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rsi
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	mov	rbp, rbp
	add	eax, 0xfd987193
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa8]
	add	rsi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	shl	eax, 0xc
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x14
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	jmp	.label_1091
.label_1091:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x54]
	xor	edx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rsi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rsi
	lea	rdi, [rdi]
	add	rdi, 4
	mov	qword ptr [rbp - 0x78], rdi
	mov	dword ptr [rsi], ecx
	mov	rsp, rsp
	add	eax, ecx
	add	eax, 0xa679438e
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	nop	
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	add	rsi, 4
	mov	qword ptr [rbp - 0xa8], rsi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	shr	ecx, 0xf
	mov	rsp, rsp
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1102
.label_1102:
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x54]
	and	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdi, rsi
	nop	
	add	rdi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	mov	rbp, rbp
	add	eax, 0x49b40821
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	rsi, 4
	mov	qword ptr [rbp - 0xa8], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x88]
	nop	
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1058
.label_1058:
	mov	eax, dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x7c]
	nop	
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x98]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x4c]
	add	eax, 0xf61e2562
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x54]
	shr	ecx, 0x1b
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jmp	.label_1076
.label_1076:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	xor	edx, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	eax, 0xc040b340
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 9
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x17
	mov	rbp, rbp
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1062
.label_1062:
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	xor	edx, dword ptr [rbp - 0x54]
	nop	
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0x265e5a51
	add	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1107
.label_1107:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	lea	rsi, [rsi]
	xor	eax, ecx
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0xe9b6c7aa
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	nop	
	jmp	.label_1087
.label_1087:
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	and	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	nop	
	add	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	eax, 0xd62f105d
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	add	eax, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1084
.label_1084:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x98]
	nop	
	mov	edx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x28]
	add	eax, 0x2441453
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1069
.label_1069:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, dword ptr [rbp - 0x88]
	nop	
	mov	edx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	xor	edx, dword ptr [rbp - 0x54]
	and	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	nop	
	add	eax, dword ptr [rbp - 0x14]
	add	eax, 0xd8a1e681
	add	eax, dword ptr [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	shl	eax, 0xe
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	add	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1047
.label_1047:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x40]
	add	eax, 0xe7d3fbc8
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xc
	lea	rdi, [rdi]
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	jmp	.label_1099
.label_1099:
	nop	
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	and	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x2c]
	nop	
	add	eax, 0x21e1cde6
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	shl	eax, 5
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	shr	ecx, 0x1b
	mov	rsp, rsp
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1093
.label_1093:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	mov	ecx, dword ptr [rbp - 0x98]
	nop	
	mov	edx, dword ptr [rbp - 0x54]
	xor	edx, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	and	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	eax, 0xc33707d6
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	jmp	.label_1078
.label_1078:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x54]
	and	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	add	eax, 0xf4d50d87
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	nop	
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x12
	nop	
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1064
.label_1064:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	lea	rsi, [rsi]
	xor	eax, ecx
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	eax, 0x455a14ed
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xc
	mov	rsp, rsp
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	jmp	.label_1056
.label_1056:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	nop	
	mov	ecx, dword ptr [rbp - 0x7c]
	nop	
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x98]
	and	ecx, edx
	nop	
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	eax, 0xa9e3e905
	add	eax, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	shl	eax, 5
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	shr	ecx, 0x1b
	mov	rbp, rbp
	or	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1055
.label_1055:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0x54]
	nop	
	xor	edx, dword ptr [rbp - 0x88]
	nop	
	and	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x48]
	add	eax, 0xfcefa3f8
	add	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 9
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1104
.label_1104:
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	nop	
	xor	edx, dword ptr [rbp - 0x54]
	nop	
	and	ecx, edx
	lea	rsi, [rsi]
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	eax, 0x676f02d9
	add	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	shl	eax, 0xe
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	mov	rbp, rbp
	jmp	.label_1085
.label_1085:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	eax, 0x8d2a4c8a
	add	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xc
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x98]
	add	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1075
.label_1075:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rbp - 0x98]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	add	eax, 0xfffa3942
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	shr	ecx, 0x1c
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	add	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	jmp	.label_1108
.label_1108:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	xor	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	eax, 0x8771f681
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	jmp	.label_1048
.label_1048:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rbp - 0x54]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0x6d9d6122
	add	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	nop	
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x10
	nop	
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1092
.label_1092:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	eax, 0xfde5380c
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x17
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	shr	ecx, 9
	nop	
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1074
.label_1074:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	add	eax, 0xa4beea44
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x54]
	shl	eax, 4
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x54]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	mov	rbp, rbp
	jmp	.label_1066
.label_1066:
	mov	eax, dword ptr [rbp - 0x54]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x40]
	add	eax, 0x4bdecfa9
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	shr	ecx, 0x15
	mov	rsp, rsp
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1111
.label_1111:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0xf6bb4b60
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	nop	
	mov	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	shr	ecx, 0x10
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	add	eax, dword ptr [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0x98], eax
	lea	rsi, [rsi]
	jmp	.label_1081
.label_1081:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x28]
	nop	
	add	eax, 0xbebfbc70
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	shl	eax, 0x17
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	nop	
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1070
.label_1070:
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x98]
	xor	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x1c]
	add	eax, 0x289b7ec6
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	shl	eax, 4
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	shr	ecx, 0x1c
	mov	rsp, rsp
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	add	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	nop	
	jmp	.label_1059
.label_1059:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x98]
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0xeaa127fa
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xb
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7c]
	nop	
	shr	ecx, 0x15
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	lea	rdi, [rdi]
	jmp	.label_1103
.label_1103:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x54]
	xor	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x44]
	add	eax, 0xd4ef3085
	nop	
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x98]
	nop	
	shr	ecx, 0x10
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1101
.label_1101:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x98]
	xor	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	eax, 0x4881d05
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	shl	eax, 0x17
	nop	
	mov	ecx, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1065
.label_1065:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x98]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	add	eax, 0xd9d4d039
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	shl	eax, 4
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x54]
	shr	ecx, 0x1c
	lea	rdi, [rdi]
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1057
.label_1057:
	mov	eax, dword ptr [rbp - 0x54]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	eax, 0xe6db99e5
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	jmp	.label_1098
.label_1098:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	xor	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x14]
	add	eax, 0x1fa27cf8
	add	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	shl	eax, 0x10
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x10
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1073
.label_1073:
	mov	eax, dword ptr [rbp - 0x98]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	eax, 0xc4ac5665
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x17
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x88]
	nop	
	shr	ecx, 9
	mov	rsp, rsp
	or	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	jmp	.label_1106
.label_1106:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0xf4292244
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	shr	ecx, 0x1a
	mov	rsp, rsp
	or	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1110
.label_1110:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, 0xffffffff
	or	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0x432aff97
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xa
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x16
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1094
.label_1094:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, 0xffffffff
	lea	rdi, [rdi]
	or	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	eax, 0xab9423a7
	add	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x11
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], eax
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	add	eax, dword ptr [rbp - 0x98]
	nop	
	mov	dword ptr [rbp - 0x98], eax
	lea	rsi, [rsi]
	jmp	.label_1082
.label_1082:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	eax, 0xfc93a039
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xb
	mov	rsp, rsp
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	jmp	.label_1080
.label_1080:
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	eax, 0x655b59c3
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	shl	eax, 6
	nop	
	mov	ecx, dword ptr [rbp - 0x54]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	nop	
	jmp	.label_1068
.label_1068:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, 0xffffffff
	mov	rsp, rsp
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	eax, 0x8f0ccc92
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xa
	nop	
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x16
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1049
.label_1049:
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	xor	edx, 0xffffffff
	mov	rbp, rbp
	or	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x28]
	add	eax, 0xffeff47d
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shl	eax, 0xf
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x11
	mov	rbp, rbp
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1063
.label_1063:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	xor	edx, 0xffffffff
	or	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x4c]
	add	eax, 0x85845dd1
	add	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xb
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	jmp	.label_1088
.label_1088:
	mov	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	eax, 0x6fa87e4f
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jmp	.label_1083
.label_1083:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	mov	rbp, rbp
	or	ecx, edx
	nop	
	xor	eax, ecx
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, 0xfe2ce6e0
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xa
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x16
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1090
.label_1090:
	mov	eax, dword ptr [rbp - 0x54]
	mov	ecx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x38]
	add	eax, 0xa3014314
	add	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x98]
	shr	ecx, 0x11
	or	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	lea	rsi, [rsi]
	jmp	.label_1053
.label_1053:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	xor	edx, 0xffffffff
	lea	rsi, [rsi]
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	eax, 0x4e0811a1
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x15
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	jmp	.label_1051
.label_1051:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	eax, 0xf7537e82
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x54]
	shl	eax, 6
	nop	
	mov	ecx, dword ptr [rbp - 0x54]
	shr	ecx, 0x1a
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1100
.label_1100:
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	edx, dword ptr [rbp - 0x98]
	xor	edx, 0xffffffff
	or	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	nop	
	add	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	add	eax, 0xbd3af235
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1072
.label_1072:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	eax, 0x2ad7d2bb
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1060
.label_1060:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0x54]
	nop	
	xor	edx, 0xffffffff
	mov	rbp, rbp
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	add	eax, 0xeb86d391
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0xb
	lea	rdi, [rdi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x98]
	add	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1050
.label_1071:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	dword ptr [rcx + 4], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	dword ptr [rcx + 8], eax
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0xc], eax
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414380
	.globl md5_stream
	.type md5_stream, @function
md5_stream:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x100
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x100], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x100]
	mov	eax, OFFSET FLAT:.str_5
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	eax, 0x10
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rsi, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	call	afalg_stream
	lea	rsi, [rsi]
	mov	r8d, eax
	sub	eax, -5
	nop	
	mov	dword ptr [rbp - 0xe4], r8d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc4], eax
	lea	rdi, [rdi]
	je	.label_1125
	jmp	.label_1119
.label_1119:
	mov	eax, dword ptr [rbp - 0xe4]
	nop	
	test	eax, eax
	jne	.label_1120
	lea	rsi, [rsi]
	jmp	.label_1123
.label_1123:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 0
	lea	rdi, [rdi]
	jmp	.label_1116
.label_1125:
	mov	dword ptr [rbp - 0xf4], 1
	jmp	.label_1116
.label_1120:
	mov	eax, 0x8048
	mov	edi, eax
	nop	
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1122
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xf4], 1
	jmp	.label_1116
.label_1122:
	lea	rdi, [rbp - 0xb8]
	call	md5_init_ctx
.label_1126:
	mov	qword ptr [rbp - 0xf0], 0
.label_1118:
	nop	
	mov	rdi, qword ptr [rbp - 0x100]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_1124
	nop	
	jmp	.label_1115
.label_1124:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	esi, eax
	mov	eax, 0x8000
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0xf0]
	mov	rdi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, rdx
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xc0]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rax
	cmp	qword ptr [rbp - 0xf0], 0x8000
	jne	.label_1117
	mov	rbp, rbp
	jmp	.label_1113
.label_1117:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	jne	.label_1114
	nop	
	mov	rdi, qword ptr [rbp - 0x100]
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1121
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	free
	mov	dword ptr [rbp - 0xf4], 1
	mov	rsp, rsp
	jmp	.label_1116
.label_1121:
	jmp	.label_1115
.label_1114:
	jmp	.label_1118
.label_1113:
	mov	eax, 0x8000
	mov	esi, eax
	mov	rbp, rbp
	lea	rdx, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	md5_process_block
	jmp	.label_1126
.label_1115:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xf0], 0
	lea	rsi, [rsi]
	jbe	.label_1112
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xb8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0xf0]
	nop	
	call	md5_process_bytes
.label_1112:
	lea	rdi, [rbp - 0xb8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	call	md5_finish_ctx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	call	free
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], 0
.label_1116:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414640

	.globl afalg_stream
	.type afalg_stream, @function
afalg_stream:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	eax, 0xffffff9f
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414670

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, qword ptr [rbp - 0x50]
	cmp	dword ptr [rdx + 0x18], 0
	lea	rsi, [rsi]
	je	.label_1135
	mov	rbp, rbp
	mov	eax, 0x80
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	edx, eax
	mov	qword ptr [rbp - 0x38], rdx
	sub	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jbe	.label_1133
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1129
.label_1133:
	lea	rdi, [rdi]
	mov	eax, 0x80
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rcx
.label_1129:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x1c
	mov	rbp, rbp
	add	rcx, rax
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	r8d, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, r8d
	mov	rsp, rsp
	add	rdx, rax
	nop	
	mov	r8d, edx
	mov	dword ptr [rcx + 0x18], r8d
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	dword ptr [rax + 0x18], 0x40
	mov	rsp, rsp
	jbe	.label_1136
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 0x1c
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	and	edx, 0xffffffc0
	mov	edx, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	md5_process_block
	mov	rax, qword ptr [rbp - 0x50]
	mov	r8d, dword ptr [rax + 0x18]
	and	r8d, 0x3f
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x18], r8d
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 0x1c
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, qword ptr [rbp - 0x40]
	and	rcx, 0xffffffffffffffc0
	mov	rdx, qword ptr [rbp - 0x50]
	add	rdx, 0x1c
	add	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	r8d, dword ptr [rcx + 0x18]
	mov	ecx, r8d
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rdx, rcx
	call	memcpy
.label_1136:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
.label_1135:
	cmp	qword ptr [rbp - 0x18], 0x40
	mov	rsp, rsp
	jb	.label_1130
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 3
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1134
	lea	rsi, [rsi]
	jmp	.label_1132
.label_1132:
	cmp	qword ptr [rbp - 0x18], 0x40
	mov	rbp, rbp
	jbe	.label_1137
	mov	rsp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rdx, 0x1c
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x48], rdx
	nop	
	mov	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	md5_process_block
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_1132
.label_1137:
	jmp	.label_1127
.label_1134:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	and	rax, 0xffffffffffffffc0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	md5_process_block
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	and	rdx, 0xffffffffffffffc0
	add	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	and	rax, 0x3f
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_1127:
	lea	rsi, [rsi]
	jmp	.label_1130
.label_1130:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_1131
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	add	rdx, 0x1c
	add	rdx, rax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rdx, rax
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0x40
	nop	
	jb	.label_1128
	mov	eax, 0x40
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x1c
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdi, rcx
	call	md5_process_block
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rcx, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, 0x1c
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	add	rdx, 0x1c
	add	rdx, 0x40
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	memcpy
.label_1128:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x18], ecx
.label_1131:
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414a20
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rsi, [rsi]
	lea	rax, [rbp - 0xa0]
	nop	
	mov	qword ptr [rbp - 0xb8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rsi
	mov	qword ptr [rbp - 0xa8], rdx
	mov	rdi, rax
	mov	rsp, rsp
	call	md5_init_ctx
	mov	rbp, rbp
	lea	rdx, [rbp - 0xa0]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xb0]
	call	md5_process_bytes
	lea	rdi, [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	call	md5_finish_ctx
	add	rsp, 0xc0
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414aa0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0x14], edi
	nop	
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	dword ptr [rbp - 0x18], ecx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x18]
	call	posix_fadvise
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414ae0

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1138
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 8], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	call	fdadvise
.label_1138:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x414b40

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x60], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x60]
	call	strcmp
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jne	.label_1156
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1142
.label_1156:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	jne	.label_1139
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1142
.label_1139:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	jne	.label_1147
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1142
.label_1147:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:.str_6
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x3c]
	cmp	ecx, eax
	jne	.label_1155
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1142
.label_1155:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x60]
	mov	ecx, OFFSET FLAT:.str_6
	mov	edi, ecx
	mov	dword ptr [rbp - 8], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	ecx, eax
	mov	rbp, rbp
	jne	.label_1144
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1142
.label_1144:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	edi, ecx
	nop	
	mov	dword ptr [rbp - 0x14], eax
	call	strcmp
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x14]
	cmp	ecx, eax
	mov	rsp, rsp
	jne	.label_1152
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1142
.label_1152:
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x60]
	mov	ecx, OFFSET FLAT:.str.1_2
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	dword ptr [rbp - 0x38], eax
	call	strcmp
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x38]
	cmp	ecx, eax
	jne	.label_1140
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1142
.label_1140:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_1146
	mov	rax, qword ptr [rbp - 0x60]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	mov	rbp, rbp
	je	.label_1146
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1142
.label_1146:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2e
	je	.label_1154
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	mov	rbp, rbp
	jne	.label_1154
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_1142
.label_1154:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2e
	mov	rsp, rsp
	jne	.label_1149
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_1149
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
.label_1149:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	call	match_suffix
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x10]
	mov	qword ptr [rbp - 0x70], rax
	call	match_suffix
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1151
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_1145
.label_1151:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x78], rax
.label_1145:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1153
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1157
.label_1153:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
.label_1157:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x70], 0
	mov	rbp, rbp
	jne	.label_1141
	nop	
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1148
.label_1141:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1148
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x30]
	call	strncmp
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	ecx, eax
	mov	rsp, rsp
	jne	.label_1148
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_1148:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	call	verrevcmp
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], 0
	lea	rdi, [rdi]
	jne	.label_1150
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x34], eax
	nop	
	jmp	.label_1143
.label_1150:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x34], eax
.label_1143:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_1142:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x414ef0

	.globl match_suffix
	.type match_suffix, @function
match_suffix:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 0x11], 0
.label_1161:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0
	je	.label_1164
	test	byte ptr [rbp - 0x11], 1
	mov	rsp, rsp
	je	.label_1159
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	c_isalpha
	test	al, 1
	jne	.label_1163
	mov	rsp, rsp
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1163
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
.label_1163:
	lea	rdi, [rdi]
	jmp	.label_1165
.label_1159:
	lea	rsi, [rsi]
	mov	eax, 0x2e
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	mov	rsp, rsp
	jne	.label_1166
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1160
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1160:
	lea	rdi, [rdi]
	jmp	.label_1162
.label_1166:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	c_isalnum
	test	al, 1
	mov	rbp, rbp
	jne	.label_1158
	lea	rsi, [rsi]
	mov	eax, 0x7e
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1158
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
.label_1158:
	nop	
	jmp	.label_1162
.label_1162:
	jmp	.label_1165
.label_1165:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	jmp	.label_1161
.label_1164:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415050

	.globl verrevcmp
	.type verrevcmp, @function
verrevcmp:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rdx
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_1193:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x3d], al
	jb	.label_1181
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x38]
	setb	cl
	mov	byte ptr [rbp - 0x3d], cl
.label_1181:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x3d]
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_1176
	jmp	.label_1182
.label_1176:
	mov	dword ptr [rbp - 0x5c], 0
.label_1170:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1184
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rcx + rax]
	mov	rbp, rbp
	call	c_isdigit
	mov	rbp, rbp
	mov	dl, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], dl
	jne	.label_1184
	jmp	.label_1169
.label_1184:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x3e], cl
	jae	.label_1172
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	movsx	edi, byte ptr [rcx + rax]
	nop	
	call	c_isdigit
	xor	al, 0xff
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3e], al
.label_1172:
	mov	al, byte ptr [rbp - 0x3e]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], al
.label_1169:
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1185
	jmp	.label_1189
.label_1185:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1186
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1194
.label_1186:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x14], eax
.label_1194:
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x60], eax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x38]
	jne	.label_1174
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1177
.label_1174:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 4], eax
.label_1177:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	cmp	eax, dword ptr [rbp - 0x3c]
	je	.label_1187
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	jmp	.label_1168
.label_1187:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1170
.label_1189:
	jmp	.label_1173
.label_1173:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x30
	jne	.label_1175
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1173
.label_1175:
	lea	rsi, [rsi]
	jmp	.label_1188
.label_1188:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x30
	jne	.label_1190
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1188
.label_1190:
	jmp	.label_1171
.label_1171:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	edi, edi
	mov	rsp, rsp
	mov	dl, dil
	test	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x22], dl
	lea	rsi, [rsi]
	jne	.label_1178
	nop	
	jmp	.label_1191
.label_1178:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	byte ptr [rbp - 0x22], al
.label_1191:
	mov	al, byte ptr [rbp - 0x22]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1192
	mov	rbp, rbp
	jmp	.label_1196
.label_1192:
	cmp	dword ptr [rbp - 0x5c], 0
	nop	
	jne	.label_1167
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	movsx	esi, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	sub	edx, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], edx
.label_1167:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1171
.label_1196:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	rsp, rsp
	test	al, 1
	jne	.label_1179
	nop	
	jmp	.label_1195
.label_1179:
	mov	dword ptr [rbp - 0x4c], 1
	jmp	.label_1168
.label_1195:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1197
	nop	
	jmp	.label_1180
.label_1197:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1168
.label_1180:
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rbp, rbp
	je	.label_1183
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	jmp	.label_1168
.label_1183:
	mov	rbp, rbp
	jmp	.label_1193
.label_1182:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
.label_1168:
	mov	eax, dword ptr [rbp - 0x4c]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415410

	.globl order
	.type order, @function
order:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	al, dil
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], al
	movzx	edi, byte ptr [rbp - 5]
	call	c_isdigit
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1201
	jmp	.label_1199
.label_1201:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1200
.label_1199:
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rbp - 5]
	mov	rbp, rbp
	call	c_isalpha
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_1202
	jmp	.label_1198
.label_1202:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1200
.label_1198:
	movzx	eax, byte ptr [rbp - 5]
	mov	rsp, rsp
	cmp	eax, 0x7e
	jne	.label_1203
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1200
.label_1203:
	movzx	eax, byte ptr [rbp - 5]
	add	eax, 0xff
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
.label_1200:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4154c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	dword ptr [rbp - 0xc], edi
	mov	byte ptr [rbp - 0xd], 1
	mov	edi, dword ptr [rbp - 0xc]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1205
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_7
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1206
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1204
.label_1206:
	mov	byte ptr [rbp - 0xd], 0
.label_1204:
	jmp	.label_1205
.label_1205:
	mov	al, byte ptr [rbp - 0xd]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415560

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415580

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4155a0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4155c0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1212:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_1207
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1209
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_1213:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_1208
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1213
.label_1208:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_1210
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1210:
	jmp	.label_1209
.label_1209:
	mov	rbp, rbp
	jmp	.label_1211
.label_1211:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1212
.label_1207:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4156a0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
.label_1214:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1219
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1218
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1215:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_1216
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1215
.label_1216:
	jmp	.label_1218
.label_1218:
	jmp	.label_1221
.label_1221:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_1214
.label_1219:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_1220
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1220
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1217
.label_1220:
	mov	byte ptr [rbp - 0x19], 0
.label_1217:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4157d0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	call	hash_get_n_entries
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_8
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r8b, cl
	mov	rsp, rsp
	mov	al, r8b
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], r8b
	call	fprintf
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	ecx, OFFSET FLAT:.str.1_4
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x29]
	mov	dword ptr [rbp - 0x3c], eax
	mov	al, r8b
	mov	rsp, rsp
	call	fprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movq	xmm0, rdx
	nop	
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_258]]
	punpckldq	xmm0, xmm1
	mov	rbp, rbp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_259]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_251]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	mov	rbp, rbp
	addpd	xmm1, xmm0
	mov	rbp, rbp
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	call	fprintf
	movabs	rsi, OFFSET FLAT:.str.3_1
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 4], eax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x30], eax
	add	rsp, 0x50
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415950
	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1228
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_1227
.label_1228:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_1226:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1223
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	je	.label_1222
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1222
	mov	rsp, rsp
	jmp	.label_1225
.label_1222:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1227
.label_1225:
	nop	
	jmp	.label_1224
.label_1224:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1226
.label_1223:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
.label_1227:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415a40

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_1229
	call	abort
.label_1229:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	shl	rcx, 4
	nop	
	add	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415ad0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1230
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1233
.label_1230:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
.label_1232:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_1231
	lea	rsi, [rsi]
	call	abort
.label_1231:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1236
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1233
.label_1236:
	jmp	.label_1234
.label_1234:
	nop	
	jmp	.label_1235
.label_1235:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1232
.label_1233:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415b90
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	safe_hasher
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1240:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_1238
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_1238
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1242
.label_1238:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_1240
	jmp	.label_1237
.label_1237:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1241
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1239
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1242
.label_1239:
	jmp	.label_1237
.label_1241:
	mov	qword ptr [rbp - 0x28], 0
.label_1242:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415c90
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 8], rdx
.label_1246:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1243
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1245
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_1244:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_1250
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_1247
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1249
.label_1247:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1244
.label_1250:
	lea	rsi, [rsi]
	jmp	.label_1245
.label_1245:
	jmp	.label_1248
.label_1248:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1246
.label_1243:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_1249:
	mov	rax, qword ptr [rbp - 0x38]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415da0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x38], rdx
.label_1255:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1254
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1251
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_1253:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1258
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	call	rax
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1252
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1256
.label_1252:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1253
.label_1258:
	mov	rbp, rbp
	jmp	.label_1251
.label_1251:
	nop	
	jmp	.label_1257
.label_1257:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1255
.label_1254:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
.label_1256:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415eb0
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1259:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	nop	
	je	.label_1260
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1259
.label_1260:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415f20
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [default_tuning]]
	lea	rdi, [rdi]
	mov	qword ptr [rdi], rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [label_1261]]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [label_1262]]
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415f70

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1269
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x30], rax
.label_1269:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1271
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1271:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1268
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1264
.label_1268:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1266
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rax
.label_1266:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_1263
	jmp	.label_1265
.label_1263:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	compute_bucket_size
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1267
	mov	rsp, rsp
	jmp	.label_1265
.label_1267:
	lea	rdi, [rdi]
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_1270
	jmp	.label_1265
.label_1270:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1264
.label_1265:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
.label_1264:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416190

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 3
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4161e0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	sete	al
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x416210

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	nop	
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_1275
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1272
.label_1275:
	movss	xmm0,  dword ptr [dword ptr [label_1273]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1274
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1276]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1274
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_1276]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_1274
	xorps	xmm0, xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	mov	rsp, rsp
	ucomiss	xmm1, xmm0
	jb	.label_1274
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1274
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1276]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1274
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	lea	rsi, [rsi]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm0
	mov	rbp, rbp
	jbe	.label_1274
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1272
.label_1274:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1272:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416380

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	test	byte ptr [rsi + 0x10], 1
	mov	rbp, rbp
	jne	.label_1277
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_1278]]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	nop	
	and	edx, 1
	nop	
	mov	esi, edx
	or	rsi, rcx
	mov	rsp, rsp
	cvtsi2ss	xmm1, rsi
	mov	rsp, rsp
	addss	xmm1, xmm1
	mov	rsp, rsp
	cvtsi2ss	xmm2, rax
	mov	rsp, rsp
	test	rax, rax
	movss	dword ptr [rbp - 0x24], xmm0
	movss	dword ptr [rbp - 0xc], xmm2
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x10], xmm1
	mov	rbp, rbp
	js	.label_1279
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0x10], xmm0
.label_1279:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x14], xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	movss	xmm1, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jb	.label_1283
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1281
.label_1283:
	nop	
	movss	xmm0, dword ptr [rbp - 0x14]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_1282]]
	nop	
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1277:
	mov	rdi, qword ptr [rbp - 8]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	jae	.label_1280
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1281
.label_1280:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_1281:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4164f0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_1290:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1289
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1286
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1284:
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1285
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1291
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1291:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1284
.label_1285:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1288
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_1288:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
.label_1286:
	jmp	.label_1287
.label_1287:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1290
.label_1289:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416660
	.globl hash_free
	.type hash_free, @function
hash_free:

	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1293
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_1293
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1299:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_1302
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_1292
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_1295:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1297
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_1295
.label_1297:
	jmp	.label_1292
.label_1292:
	jmp	.label_1305
.label_1305:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1299
.label_1302:
	jmp	.label_1293
.label_1293:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1301:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1294
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1303:
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_1300
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1303
.label_1300:
	jmp	.label_1304
.label_1304:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1301
.label_1294:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1296:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1298
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1296
.label_1298:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416850

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x60], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rsi
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	jne	.label_1306
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x71], 0
	jmp	.label_1307
.label_1306:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1309
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x71], 1
	mov	rbp, rbp
	jmp	.label_1307
.label_1309:
	nop	
	mov	eax, 0x10
	mov	esi, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	call	calloc
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_1311
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71], 0
	mov	rsp, rsp
	jmp	.label_1307
.label_1311:
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 4
	mov	rbp, rbp
	add	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	call	transfer_entries
	test	al, 1
	mov	rbp, rbp
	jne	.label_1310
	lea	rsi, [rsi]
	jmp	.label_1314
.label_1310:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 0x71], 1
	jmp	.label_1307
.label_1314:
	mov	rsp, rsp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	transfer_entries
	test	al, 1
	jne	.label_1312
	mov	rbp, rbp
	jmp	.label_1313
.label_1312:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_1308
.label_1313:
	call	abort
.label_1308:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 0x71], 0
.label_1307:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416b20

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rsi
.label_1326:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1317
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1324
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_1320:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1316
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1328
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1319
.label_1328:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free_entry
.label_1319:
	mov	rbp, rbp
	jmp	.label_1315
.label_1315:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1320
.label_1316:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	je	.label_1323
	jmp	.label_1325
.label_1323:
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1321
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_1327
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_1318
.label_1327:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jmp	.label_1322
.label_1321:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1322:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], rcx
.label_1324:
	jmp	.label_1325
.label_1325:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_1326
.label_1317:
	mov	byte ptr [rbp - 0x19], 1
.label_1318:
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416db0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x10], rdx
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_1343
	lea	rsi, [rsi]
	call	abort
.label_1343:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	hash_find_entry
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1335
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1340
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_1340:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1330
.label_1335:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	nop	
	mov	rsi, rdx
	shr	rsi, 1
	lea	rdi, [rdi]
	mov	edi, edx
	and	edi, 1
	lea	rdi, [rdi]
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rdx
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x80], rcx
	movss	dword ptr [rbp - 0x88], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1336
	movss	xmm0, dword ptr [rbp - 0x88]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1336:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x80]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	esi, edx
	and	esi, 1
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rsp, rsp
	or	rdi, rcx
	mov	rbp, rbp
	cvtsi2ss	xmm2, rdi
	lea	rdi, [rdi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x60], xmm0
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xbc], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x24], xmm2
	mov	rsp, rsp
	js	.label_1329
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x24], xmm0
.label_1329:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	xmm1, dword ptr [rbp - 0xbc]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x60]
	ucomiss	xmm0, xmm1
	jbe	.label_1331
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rbp, rbp
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, r9
	lea	rdi, [rdi]
	addss	xmm0, xmm0
	lea	rdi, [rdi]
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d], al
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x3c], xmm1
	mov	rbp, rbp
	movss	dword ptr [rbp - 8], xmm0
	js	.label_1346
	movss	xmm0, dword ptr [rbp - 0x3c]
	nop	
	movss	dword ptr [rbp - 8], xmm0
.label_1346:
	movss	xmm0, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	shr	rcx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, edx
	lea	rdi, [rdi]
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x1c], xmm0
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0xa4], xmm1
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x44], xmm3
	movss	dword ptr [rbp - 0x8c], xmm2
	js	.label_1342
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x44]
	movss	dword ptr [rbp - 0x8c], xmm0
.label_1342:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	xmm1, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_1341
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1337
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	lea	rdi, [rdi]
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x40], xmm1
	movss	dword ptr [rbp - 0x84], xmm0
	nop	
	js	.label_1332
	movss	xmm0, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x84], xmm0
.label_1332:
	movss	xmm0, dword ptr [rbp - 0x84]
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
	mov	rbp, rbp
	jmp	.label_1339
.label_1337:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	rbp, rbp
	mov	edx, eax
	lea	rdi, [rdi]
	and	edx, 1
	mov	esi, edx
	mov	rbp, rbp
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	mov	rbp, rbp
	cvtsi2ss	xmm1, rax
	mov	rbp, rbp
	test	rax, rax
	movss	dword ptr [rbp - 0x18], xmm1
	nop	
	movss	dword ptr [rbp - 0x14], xmm0
	lea	rdi, [rdi]
	js	.label_1345
	movss	xmm0, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x14], xmm0
.label_1345:
	movss	xmm0, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
.label_1339:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_1278]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_1334
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1330
.label_1334:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1282]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm0
	nop	
	cmova	rax, rcx
	lea	rsi, [rsi]
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_1344
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1330
.label_1344:
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1338
	call	abort
.label_1338:
	jmp	.label_1341
.label_1341:
	lea	rdi, [rdi]
	jmp	.label_1331
.label_1331:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], 0
	je	.label_1347
	mov	rdi, qword ptr [rbp - 0xa0]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_1333
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1330
.label_1333:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_1330
.label_1347:
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1330:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4173a0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x50], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	safe_hasher
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_1352
	nop	
	mov	qword ptr [rbp - 0x40], 0
	jmp	.label_1350
.label_1352:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx]
	je	.label_1348
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	mov	rsp, rsp
	test	al, 1
	jne	.label_1348
	jmp	.label_1359
.label_1348:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_1351
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1355
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free_entry
	nop	
	jmp	.label_1358
.label_1355:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax], 0
.label_1358:
	jmp	.label_1351
.label_1351:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1350
.label_1359:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rax
.label_1353:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1354
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_1357
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1357
	lea	rsi, [rsi]
	jmp	.label_1360
.label_1357:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1349
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free_entry
.label_1349:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1350
.label_1360:
	mov	rbp, rbp
	jmp	.label_1356
.label_1356:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1353
.label_1354:
	mov	qword ptr [rbp - 0x40], 0
.label_1350:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4175e0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1361
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1362
.label_1361:
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1362:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417660

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], -1
	lea	rdi, [rdi]
	jne	.label_1365
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	jmp	.label_1363
.label_1365:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jne	.label_1366
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1364
.label_1366:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_1364:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1363:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417700

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0xb8]
	nop	
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x90], rsi
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	call	hash_find_entry
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1382
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1374
.label_1382:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	qword ptr [rax], 0
	jne	.label_1376
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	nop	
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	mov	rsp, rsp
	and	edi, 1
	lea	rsi, [rsi]
	mov	r8d, edi
	mov	rbp, rbp
	or	r8, rsi
	mov	rbp, rbp
	cvtsi2ss	xmm0, r8
	mov	rsp, rsp
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x20], rcx
	movss	dword ptr [rbp - 0x2c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	lea	rsi, [rsi]
	js	.label_1367
	movss	xmm0, dword ptr [rbp - 0x2c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1367:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	esi, edx
	lea	rsi, [rsi]
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm2, rdi
	lea	rsi, [rsi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	lea	rsi, [rsi]
	test	rdx, rdx
	movss	dword ptr [rbp - 0x14], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x64], xmm3
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x5c], xmm2
	lea	rsi, [rsi]
	js	.label_1380
	movss	xmm0, dword ptr [rbp - 0x64]
	movss	dword ptr [rbp - 0x5c], xmm0
.label_1380:
	movss	xmm0, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	ucomiss	xmm1, xmm0
	jbe	.label_1377
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	lea	rdi, [rdi]
	and	r8d, 1
	mov	rsp, rsp
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	mov	rsp, rsp
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x15], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x50], rcx
	movss	dword ptr [rbp - 0x84], xmm1
	movss	dword ptr [rbp - 0x24], xmm0
	nop	
	js	.label_1375
	movss	xmm0, dword ptr [rbp - 0x84]
	movss	dword ptr [rbp - 0x24], xmm0
.label_1375:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x28]
	nop	
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm2, rdi
	lea	rdi, [rdi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	nop	
	test	rdx, rdx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xb0], xmm0
	movss	dword ptr [rbp - 0x94], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xa4], xmm3
	movss	dword ptr [rbp - 0x74], xmm2
	js	.label_1371
	movss	xmm0, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x74], xmm0
.label_1371:
	movss	xmm0, dword ptr [rbp - 0x74]
	movss	xmm1, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_1372
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x10], 1
	je	.label_1379
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	lea	rdi, [rdi]
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	mov	rbp, rbp
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xc], xmm1
	nop	
	movss	dword ptr [rbp - 0xac], xmm0
	lea	rsi, [rsi]
	js	.label_1373
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1373:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0x10], xmm0
	jmp	.label_1378
.label_1379:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	mov	rsp, rsp
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	nop	
	mov	esi, edx
	mov	rsp, rsp
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	lea	rsi, [rsi]
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	nop	
	test	rax, rax
	nop	
	movss	dword ptr [rbp - 0x28], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1369
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x28]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1369:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x10], xmm0
.label_1378:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x10]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1282]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	lea	rsi, [rsi]
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	mov	rbp, rbp
	cmovb	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	hash_rehash
	test	al, 1
	jne	.label_1370
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0xc0], rax
.label_1381:
	cmp	qword ptr [rbp - 0xc0], 0
	nop	
	je	.label_1368
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1381
.label_1368:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x48], 0
.label_1370:
	lea	rsi, [rsi]
	jmp	.label_1372
.label_1372:
	jmp	.label_1377
.label_1377:
	nop	
	jmp	.label_1376
.label_1376:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_1374:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417bd0

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0xa
	jae	.label_1383
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0xa
.label_1383:
	mov	rax, qword ptr [rbp - 0x10]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1387:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	je	.label_1385
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
.label_1385:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1386
	jmp	.label_1384
.label_1386:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_1387
.label_1384:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x417c80

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 8], 3
	mov	rdi, qword ptr [rbp - 8]
	imul	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_1389:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x11], cl
	mov	rbp, rbp
	jae	.label_1388
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 8]
	cmp	rdx, 0
	setne	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], sil
.label_1388:
	mov	al, byte ptr [rbp - 0x11]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1391
	jmp	.label_1390
.label_1391:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	shl	rax, 2
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1389
.label_1390:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	mov	rax, rdx
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, esi
	mov	rsp, rsp
	div	qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x18]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	lea	rdi, [rdi]
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417d80

	.globl free_entry
	.type free_entry, @function
free_entry:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rsi + 0x48]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x48], rsi
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x417dd0

	.globl heap_alloc
	.type heap_alloc, @function
heap_alloc:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x20
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jne	.label_1393
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 1
.label_1393:
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	xnmalloc
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_1394
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_1392
.label_1394:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:heap_default_compare
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1392
.label_1392:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417ec0

	.globl heap_default_compare
	.type heap_default_compare, @function
heap_default_compare:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417ee0
	.globl heap_free
	.type heap_free, @function
heap_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417f10

	.globl heap_insert
	.type heap_insert, @function
heap_insert:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	sub	rsi, 1
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 0x10]
	ja	.label_1395
	mov	eax, 8
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 8
	mov	rdi, rcx
	call	x2nrealloc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_1395:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, rdx
	add	rsi, 1
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x10], rsi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx + rdx*8 + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	call	heapify_up
	xor	eax, eax
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417fe0

	.globl heapify_up
	.type heapify_up, @function
heapify_up:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	qword ptr [rbp - 0x10], rdx
.label_1396:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], cl
	je	.label_1399
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	rax
	cmp	eax, 0
	setle	r8b
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], r8b
.label_1399:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1397
	lea	rdi, [rdi]
	jmp	.label_1398
.label_1397:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shr	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_1396
.label_1398:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4180e0

	.globl heap_remove_top
	.type heap_remove_top, @function
heap_remove_top:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rdi + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1400
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1401
.label_1400:
	mov	eax, 1
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rsi
	add	rdi, -1
	nop	
	mov	qword ptr [rcx + 0x10], rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rcx + rsi*8]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rsi + 8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	call	heapify_down
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 8], rax
.label_1401:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4181c0

	.globl heapify_down
	.type heapify_down, @function
heapify_down:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
.label_1405:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	shr	rcx, 1
	cmp	rax, rcx
	ja	.label_1403
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_1402
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rdx + rcx*8 + 8]
	call	rax
	cmp	eax, 0
	jge	.label_1402
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1402:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	call	rax
	cmp	eax, 0
	jg	.label_1404
	mov	rsp, rsp
	jmp	.label_1403
.label_1404:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1405
.label_1403:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x418300

	.globl inttostr
	.type inttostr, @function
inttostr:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 0x24], edi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, 0xb
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi], 0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x24], 0
	lea	rdi, [rdi]
	jge	.label_1406
	jmp	.label_1409
.label_1409:
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, 0xa
	nop	
	mov	edx, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	eax, edx
	nop	
	cdq	
	mov	rsp, rsp
	idiv	ecx
	mov	ecx, dword ptr [rbp - 4]
	sub	ecx, edx
	mov	sil, cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0x10], r8
	mov	byte ptr [rdi - 1], sil
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	nop	
	jne	.label_1409
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax - 1], 0x2d
	mov	rbp, rbp
	jmp	.label_1407
.label_1406:
	jmp	.label_1408
.label_1408:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2c]
	idiv	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0x10]
	mov	r8, rdi
	add	r8, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], r8
	lea	rsi, [rsi]
	mov	byte ptr [rdi - 1], sil
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x14]
	idiv	ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1408
	mov	rsp, rsp
	jmp	.label_1407
.label_1407:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x418450

	.globl uinttostr
	.type uinttostr, @function
uinttostr:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, 0xa
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	byte ptr [rsi], 0
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jae	.label_1410
	mov	rsp, rsp
	jmp	.label_1412
.label_1412:
	mov	eax, 0x30
	mov	rsp, rsp
	mov	ecx, 0xa
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	mov	eax, edx
	xor	edx, edx
	nop	
	div	ecx
	mov	ecx, dword ptr [rbp - 4]
	sub	ecx, edx
	mov	rsp, rsp
	mov	sil, cl
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r8, rdi
	nop	
	add	r8, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], r8
	mov	byte ptr [rdi - 1], sil
	lea	rdi, [rdi]
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	div	ecx
	mov	dword ptr [rbp - 0x1c], eax
	cmp	eax, 0
	jne	.label_1412
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1411
.label_1410:
	jmp	.label_1413
.label_1413:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	div	ecx
	mov	rsp, rsp
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0x28]
	mov	r8, rdi
	nop	
	add	r8, -1
	mov	qword ptr [rbp - 0x28], r8
	mov	byte ptr [rdi - 1], sil
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	div	ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1413
	mov	rsp, rsp
	jmp	.label_1411
.label_1411:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4185b0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x14
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 0x20], 0
	jae	.label_1414
	jmp	.label_1417
.label_1417:
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edx, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	div	rdi
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	nop	
	div	rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1417
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1416
.label_1414:
	jmp	.label_1415
.label_1415:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, -1
	mov	qword ptr [rbp - 8], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x20]
	xor	edx, edx
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	nop	
	jne	.label_1415
	jmp	.label_1416
.label_1416:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4186f0
	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	mbsnwidth
	mov	rbp, rbp
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418740

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], edx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rsi
	mov	rsi, qword ptr [rbp - 0x60]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1448
	jmp	.label_1421
.label_1421:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x40]
	nop	
	jae	.label_1423
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x44], ecx
	mov	rbp, rbp
	ja	.label_1429
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1436]]
	lea	rdi, [rdi]
	jmp	rcx
.label_2352:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x58]
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_1441
.label_1429:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, rcx
	call	memset
.label_1442:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x64]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	lea	rdi, [rdi]
	jne	.label_1419
	mov	eax, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1440
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x58]
	add	ecx, 1
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	jmp	.label_1434
.label_1440:
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_1425
.label_1419:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_1426
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1430
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x58]
	nop	
	add	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], ecx
	jmp	.label_1434
.label_1430:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_1425
.label_1426:
	cmp	qword ptr [rbp - 0x50], 0
	nop	
	jne	.label_1438
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 1
.label_1438:
	mov	edi, dword ptr [rbp - 0x64]
	call	wcwidth
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	cmp	dword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jl	.label_1445
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x68]
	nop	
	sub	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	ecx, eax
	jle	.label_1427
	jmp	.label_1418
.label_1427:
	mov	eax, dword ptr [rbp - 0x68]
	add	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	jmp	.label_1433
.label_1445:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x48]
	nop	
	and	eax, 2
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1437
	mov	edi, dword ptr [rbp - 0x64]
	call	iswcntrl
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1444
	cmp	dword ptr [rbp - 0x58], 0x7fffffff
	lea	rsi, [rsi]
	jne	.label_1446
	jmp	.label_1418
.label_1446:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x58], eax
.label_1444:
	mov	rsp, rsp
	jmp	.label_1432
.label_1437:
	nop	
	mov	dword ptr [rbp - 0x54], 0xffffffff
	nop	
	jmp	.label_1425
.label_1432:
	jmp	.label_1433
.label_1433:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rbp - 0x28]
	mov	rsp, rsp
	call	mbsinit
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1442
.label_1434:
	mov	rsp, rsp
	jmp	.label_1441
.label_1441:
	jmp	.label_1421
.label_1423:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1425
.label_1448:
	jmp	.label_1420
.label_1420:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1422
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 1], dl
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 1]
	nop	
	movsxd	rax, esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	lea	rdi, [rdi]
	cmp	esi, 0
	nop	
	je	.label_1439
	cmp	dword ptr [rbp - 0x58], 0x7fffffff
	jne	.label_1447
	jmp	.label_1418
.label_1447:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
	nop	
	jmp	.label_1431
.label_1439:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	and	eax, 2
	cmp	eax, 0
	jne	.label_1428
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 1]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x30], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 2
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_1435
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 0x7fffffff
	jne	.label_1443
	mov	rsp, rsp
	jmp	.label_1418
.label_1443:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
.label_1435:
	jmp	.label_1424
.label_1428:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], 0xffffffff
	jmp	.label_1425
.label_1424:
	jmp	.label_1431
.label_1431:
	lea	rdi, [rdi]
	jmp	.label_1420
.label_1422:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	jmp	.label_1425
.label_1418:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], 0x7fffffff
.label_1425:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x70
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x418b60

	.globl num_processors
	.type num_processors, @function
num_processors:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x28], -1
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 2
	nop	
	jne	.label_1449
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_9
	nop	
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1_5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1455
	nop	
	mov	qword ptr [rbp - 0x28], -1
.label_1455:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	je	.label_1450
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1453
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1452
.label_1453:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_1452:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1451
.label_1450:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
.label_1449:
	mov	edi, dword ptr [rbp - 4]
	call	num_processors_ignoring_omp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1454
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_1456
.label_1454:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
.label_1456:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_1451:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x418c90

	.globl parse_omp_threads
	.type parse_omp_threads, @function
parse_omp_threads:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	jne	.label_1463
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_1457
.label_1463:
	nop	
	jmp	.label_1469
.label_1469:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x29], cl
	mov	rsp, rsp
	je	.label_1467
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	c_isspace
	mov	byte ptr [rbp - 0x29], al
.label_1467:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1460
	mov	rbp, rbp
	jmp	.label_1468
.label_1460:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1469
.label_1468:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1459
	lea	rdi, [rdi]
	jmp	.label_1461
.label_1459:
	lea	rsi, [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	strtoul
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1466
	mov	rsp, rsp
	jmp	.label_1462
.label_1462:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rdx]
	mov	rbp, rbp
	cmp	eax, 0
	mov	byte ptr [rbp - 0x19], cl
	lea	rsi, [rsi]
	je	.label_1465
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	nop	
	call	c_isspace
	mov	byte ptr [rbp - 0x19], al
.label_1465:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_1458
	jmp	.label_1464
.label_1458:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_1462
.label_1464:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_1471
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1457
.label_1471:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jne	.label_1470
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1457
.label_1470:
	lea	rdi, [rdi]
	jmp	.label_1472
.label_1472:
	jmp	.label_1466
.label_1466:
	jmp	.label_1461
.label_1461:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x10], rax
.label_1457:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x418e70

	.globl num_processors_ignoring_omp
	.type num_processors_ignoring_omp, @function
num_processors_ignoring_omp:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 1
	jne	.label_1478
	mov	rsp, rsp
	call	num_processors_via_affinity_mask
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	jbe	.label_1479
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1473
.label_1479:
	nop	
	mov	edi, 0x54
	mov	rsp, rsp
	call	sysconf
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jle	.label_1477
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_1473
.label_1477:
	nop	
	jmp	.label_1474
.label_1478:
	lea	rdi, [rdi]
	mov	edi, 0x53
	call	sysconf
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 1
	jne	.label_1475
	call	num_processors_via_affinity_mask
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jbe	.label_1480
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_1480:
	jmp	.label_1475
.label_1475:
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_1476
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_1473
.label_1476:
	jmp	.label_1474
.label_1474:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 1
.label_1473:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418f90

	.globl num_processors_via_affinity_mask
	.type num_processors_via_affinity_mask, @function
num_processors_via_affinity_mask:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x90
	xor	edi, edi
	mov	rbp, rbp
	mov	eax, 0x80
	mov	esi, eax
	lea	rdx, [rbp - 0x88]
	lea	rsi, [rsi]
	call	sched_getaffinity
	cmp	eax, 0
	jne	.label_1481
	mov	eax, 0x80
	mov	edi, eax
	mov	rsp, rsp
	lea	rsi, [rbp - 0x88]
	mov	rbp, rbp
	call	__sched_cpucount
	nop	
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rsi
	cmp	qword ptr [rbp - 0x90], 0
	mov	rsp, rsp
	jbe	.label_1483
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_1482
.label_1483:
	lea	rsi, [rsi]
	jmp	.label_1481
.label_1481:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_1482:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419040

	.globl physmem_total
	.type physmem_total, @function
physmem_total:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	edi, 0x55
	call	sysconf
	mov	rsp, rsp
	mov	edi, 0x1e
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rbp - 0x80], xmm0
	nop	
	call	sysconf
	xorps	xmm0, xmm0
	cvtsi2sd	xmm1, rax
	movsd	qword ptr [rbp - 8], xmm1
	movsd	xmm1, qword ptr [rbp - 0x80]
	ucomisd	xmm1, xmm0
	mov	rbp, rbp
	jb	.label_1487
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 8]
	ucomisd	xmm1, xmm0
	nop	
	jb	.label_1487
	movsd	xmm0, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mulsd	xmm0, qword ptr [rbp - 8]
	movsd	qword ptr [rbp - 0x88], xmm0
	jmp	.label_1484
.label_1487:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x78]
	mov	rsp, rsp
	call	sysinfo
	cmp	eax, 0
	nop	
	jne	.label_1486
	nop	
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_258]]
	mov	rbp, rbp
	movq	xmm1, qword ptr [rbp - 0x58]
	nop	
	punpckldq	xmm1, xmm0
	mov	rbp, rbp
	movapd	xmm0,  xmmword ptr [word ptr [rip + label_259]]
	subpd	xmm1, xmm0
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	cvtsi2sd	xmm1, rcx
	mulsd	xmm0, xmm1
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 0x88], xmm0
	jmp	.label_1484
.label_1486:
	mov	rbp, rbp
	movsd	xmm0,  qword ptr [word ptr [label_1485]]
	mov	rsp, rsp
	movsd	qword ptr [rbp - 0x88], xmm0
.label_1484:
	movsd	xmm0, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	add	rsp, 0x90
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x419150

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x90
	mov	edi, 0x56
	call	sysconf
	mov	edi, 0x1e
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rbp - 0x78], xmm0
	call	sysconf
	mov	rbp, rbp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	cvtsi2sd	xmm1, rax
	movsd	qword ptr [rbp - 0x88], xmm1
	movsd	xmm1, qword ptr [rbp - 0x78]
	nop	
	ucomisd	xmm1, xmm0
	jb	.label_1489
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	ucomisd	xmm1, xmm0
	jb	.label_1489
	movsd	xmm0, qword ptr [rbp - 0x78]
	mulsd	xmm0, qword ptr [rbp - 0x88]
	movsd	qword ptr [rbp - 0x80], xmm0
	jmp	.label_1490
.label_1489:
	lea	rdi, [rbp - 0x70]
	mov	rsp, rsp
	call	sysinfo
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1488
	movq	xmm0, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_258]]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_259]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	lea	rsi, [rsi]
	movq	xmm0, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	lea	rsi, [rsi]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm3, xmm1
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	cvtsi2sd	xmm0, rcx
	mov	rsp, rsp
	mulsd	xmm3, xmm0
	movsd	qword ptr [rbp - 0x80], xmm3
	nop	
	jmp	.label_1490
.label_1488:
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [label_1491]]
	nop	
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x80], xmm0
.label_1490:
	mov	rsp, rsp
	movsd	xmm0, qword ptr [rbp - 0x80]
	add	rsp, 0x90
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x419290

	.globl rpl_pipe2
	.type rpl_pipe2, @function
rpl_pipe2:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], esi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rdi]
	mov	dword ptr [rbp - 0x28], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rdi + 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], esi
	cmp	dword ptr [dword ptr [rpl_pipe2.have_pipe2_really]],  0
	mov	rsp, rsp
	jl	.label_1497
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	pipe2
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_1502
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	je	.label_1492
.label_1502:
	nop	
	mov	dword ptr [dword ptr [rpl_pipe2.have_pipe2_really]],  1
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1498
.label_1492:
	mov	dword ptr [dword ptr [rpl_pipe2.have_pipe2_really]],  0xffffffff
.label_1497:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	and	eax, 0xfff7f7ff
	nop	
	cmp	eax, 0
	je	.label_1504
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 8], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1498
.label_1504:
	mov	rdi, qword ptr [rbp - 0x20]
	call	pipe
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_1503
	nop	
	mov	dword ptr [rbp - 8], 0xffffffff
	jmp	.label_1498
.label_1503:
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	and	eax, 0x800
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1495
	mov	esi, 3
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax + 4]
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	rpl_fcntl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0
	jl	.label_1499
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax + 4]
	mov	ecx, dword ptr [rbp - 0x14]
	or	ecx, 0x800
	mov	edx, ecx
	mov	al, 0
	mov	rbp, rbp
	call	rpl_fcntl
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_1499
	mov	rsp, rsp
	mov	esi, 3
	nop	
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, 0
	jl	.label_1499
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax]
	mov	ecx, dword ptr [rbp - 0x14]
	or	ecx, 0x800
	mov	edx, ecx
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_1493
.label_1499:
	jmp	.label_1496
.label_1493:
	jmp	.label_1495
.label_1495:
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	and	eax, 0x80000
	cmp	eax, 0
	je	.label_1500
	mov	esi, 1
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + 4]
	mov	al, 0
	lea	rsi, [rsi]
	call	rpl_fcntl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	cmp	eax, 0
	jl	.label_1494
	mov	rbp, rbp
	mov	esi, 2
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	edi, dword ptr [rax + 4]
	mov	ecx, dword ptr [rbp - 0x10]
	or	ecx, 1
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	al, 0
	call	rpl_fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_1494
	mov	esi, 1
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	cmp	eax, 0
	jl	.label_1494
	lea	rsi, [rsi]
	mov	esi, 2
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	edi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x10]
	or	ecx, 1
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_1501
.label_1494:
	jmp	.label_1496
.label_1501:
	mov	rsp, rsp
	jmp	.label_1500
.label_1500:
	mov	dword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_1498
.label_1496:
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax]
	nop	
	call	close
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rdx + 4]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	call	close
	mov	ecx, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	dword ptr [rdx], ecx
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x24]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rdx + 4], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	dword ptr [rbp - 0x30], ecx
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 8], 0xffffffff
.label_1498:
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4195d0

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	movabs	rdi, OFFSET FLAT:.str_10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0x31069
	mov	rsp, rsp
	call	getenv
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_1508
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1508
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x20]
	call	strtol
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_1505
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_1505:
	nop	
	jmp	.label_1508
.label_1508:
	cmp	qword ptr [rbp - 0x30], -0x80000000
	jge	.label_1506
	mov	rax, -0x80000000
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1510
.label_1506:
	cmp	qword ptr [rbp - 0x30], 0x7fffffff
	mov	rbp, rbp
	jge	.label_1509
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_1507
.label_1509:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	nop	
	jmp	.label_1507
.label_1507:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_1510:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, ecx
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4196e0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1511
	movabs	rdi, OFFSET FLAT:.str_11
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_1511:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1514
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1513
.label_1514:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1513:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_1512
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1512
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_2
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	strncmp
	cmp	eax, 0
	jne	.label_1515
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1515:
	jmp	.label_1512
.label_1512:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419860
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1517
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1516
.label_1517:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1516
.label_1516:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419910
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1518
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1519
.label_1518:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1519
.label_1519:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419970
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	je	.label_1520
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1521
.label_1520:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_1521
.label_1521:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4199d0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_1522
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_1523
.label_1522:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1523
.label_1523:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x30], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x30]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 8]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 4]
	nop	
	mov	ecx, dword ptr [rbp - 0x34]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419ad0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1524
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_1524:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x14], ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x419b30

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_1525
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_1525:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1527
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_1526
.label_1527:
	call	abort
.label_1526:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419bd0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], r8
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1528
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1529
.label_1528:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_1529
.label_1529:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x38]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	r8d, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419cd0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x168
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0xa0], rdi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x150], rdx
	mov	qword ptr [rbp - 0x68], rcx
	mov	dword ptr [rbp - 0x58], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], r9d
	mov	qword ptr [rbp - 0x100], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x140], 0
	mov	qword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], 0
	mov	byte ptr [rbp - 0x89], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb5], bl
	mov	r8d, dword ptr [rbp - 0xa4]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3e], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x42], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa5], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb7], 1
.label_1620:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_1633
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1700]]
	jmp	rcx
.label_2341:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_2340:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1639
	jmp	.label_1644
.label_1644:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1645
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_1645:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1639
.label_1639:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_1548
.label_2342:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_1548
.label_2343:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_1671
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x120], rax
	mov	esi, dword ptr [rbp - 0x58]
	call	gettext_quote
	mov	qword ptr [rbp - 0xc0], rax
.label_1671:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1682
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_1702:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1688
	jmp	.label_1554
.label_1554:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1691
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_1691:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1698
.label_1698:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1702
.label_1688:
	mov	rbp, rbp
	jmp	.label_1682
.label_1682:
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x108]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rbp, rbp
	jmp	.label_1548
.label_2338:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_2337:
	mov	byte ptr [rbp - 0x3e], 1
.label_2339:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1721
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_1721:
	jmp	.label_1724
.label_1724:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_1540
	jmp	.label_1728
.label_1728:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1727
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1727:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1540
.label_1540:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_1548
.label_2336:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_1548
.label_1633:
	call	abort
.label_1548:
	mov	qword ptr [rbp - 0xd8], 0
.label_1564:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1559
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0x7c], edx
	jmp	.label_1561
.label_1559:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_1561:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1578
	mov	rbp, rbp
	jmp	.label_1585
.label_1578:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1587
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_1587
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_1587
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_1602
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_1602
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_1616
.label_1602:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_1616:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_1587
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1587
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_1636
	jmp	.label_1535
.label_1636:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_1587:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3d], dl
	movzx	esi, byte ptr [rbp - 0x3d]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x18], rcx
	ja	.label_1643
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1655]]
	nop	
	jmp	rcx
.label_2395:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_1659
	mov	rsp, rsp
	jmp	.label_1664
.label_1664:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1666
	jmp	.label_1535
.label_1666:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1669
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_1669
	nop	
	jmp	.label_1673
.label_1673:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1676
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1676:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1683
.label_1683:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1686
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_1686:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1692
.label_1692:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1695
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1695:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1669:
	lea	rsi, [rsi]
	jmp	.label_1557
.label_1557:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1706
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_1706:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1711
.label_1711:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_1696
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_1696
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1696
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_1696
	nop	
	jmp	.label_1534
.label_1534:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1536
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_1536:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1609
.label_1609:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1651
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_1651:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1696
.label_1696:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_1565
.label_1659:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1568
	mov	rbp, rbp
	jmp	.label_1542
.label_1568:
	jmp	.label_1565
.label_1565:
	jmp	.label_1562
.label_2406:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_1576
	mov	rbp, rbp
	jmp	.label_1582
.label_1582:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_1584
	jmp	.label_1591
.label_1576:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1594
	jmp	.label_1535
.label_1594:
	jmp	.label_1598
.label_1584:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_1599
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_1599
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_1599
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x144], edx
	mov	dword ptr [rbp - 0xdc], esi
	lea	rdi, [rdi]
	je	.label_1612
	nop	
	jmp	.label_1596
.label_1596:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_1612
	jmp	.label_1626
.label_1626:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_1612
	jmp	.label_1632
.label_1632:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_1612
	jmp	.label_1621
.label_1621:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_1720
	jmp	.label_1612
.label_1612:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1647
	jmp	.label_1535
.label_1647:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3d], dl
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1652
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_1652:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1672
.label_1672:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1674
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1674:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1679
.label_1679:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1685
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1685:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1690
.label_1690:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1678
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_1678:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1537
.label_1720:
	jmp	.label_1537
.label_1537:
	jmp	.label_1599
.label_1599:
	jmp	.label_1598
.label_1591:
	jmp	.label_1598
.label_1598:
	jmp	.label_1562
.label_2396:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_1552
.label_2397:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_1552
.label_2401:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_1552
.label_2399:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_1549
.label_2402:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_1549
.label_2398:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_1549
.label_2400:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_1552
.label_2407:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1723
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1725
	nop	
	jmp	.label_1535
.label_1725:
	lea	rsi, [rsi]
	jmp	.label_1530
.label_1723:
	test	byte ptr [rbp - 0x89], 1
	je	.label_1532
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1532
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_1532
	jmp	.label_1530
.label_1532:
	jmp	.label_1549
.label_1549:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_1550
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1550
	jmp	.label_1535
.label_1550:
	mov	rsp, rsp
	jmp	.label_1552
.label_1552:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1556
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_1560
.label_1556:
	jmp	.label_1562
.label_2408:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1566
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1569
	jmp	.label_1575
.label_1566:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_1569
.label_1575:
	nop	
	jmp	.label_1562
.label_1569:
	jmp	.label_1579
.label_1579:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_1593
	lea	rsi, [rsi]
	jmp	.label_1562
.label_1593:
	nop	
	jmp	.label_1586
.label_1586:
	mov	byte ptr [rbp - 0x91], 1
.label_2403:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1590
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1590
	jmp	.label_1535
.label_1590:
	lea	rsi, [rsi]
	jmp	.label_1562
.label_2405:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1600
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1604
	jmp	.label_1535
.label_1604:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1606
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_1606
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_1606:
	jmp	.label_1617
.label_1617:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1619
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1619:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1623
.label_1623:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_1629
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1629:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1637
.label_1637:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1641
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1641:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1600:
	lea	rsi, [rsi]
	jmp	.label_1562
.label_2404:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_1562
.label_1643:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_1660
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], 1
	movzx	eax, byte ptr [rbp - 0x3d]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x40], sil
	lea	rsi, [rsi]
	jmp	.label_1642
.label_1660:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x118]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x68], -1
	mov	rsp, rsp
	jne	.label_1684
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_1684:
	jmp	.label_1607
.label_1607:
	lea	rdi, [rbp - 0x74]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x118]
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	add	rax, qword ptr [rbp - 0x150]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd8]
	add	rsi, qword ptr [rbp - 0x110]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_1704
	jmp	.label_1541
.label_1704:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_1708
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_1541
.label_1708:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_1713
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1533:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd8]
	add	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x41], cl
	mov	rsp, rsp
	jae	.label_1709
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_1709:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_1729
	jmp	.label_1547
.label_1729:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1533
.label_1547:
	jmp	.label_1541
.label_1713:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1544
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1544
	mov	qword ptr [rbp - 0xe8], 1
.label_1597:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1551
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xe8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x124], esi
	jb	.label_1553
	jmp	.label_1572
.label_1572:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_1553
	jmp	.label_1577
.label_1577:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_1553
	jmp	.label_1583
.label_1583:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_1613
	mov	rsp, rsp
	jmp	.label_1553
.label_1553:
	mov	rsp, rsp
	jmp	.label_1535
.label_1613:
	jmp	.label_1595
.label_1595:
	mov	rsp, rsp
	jmp	.label_1661
.label_1661:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1597
.label_1551:
	mov	rbp, rbp
	jmp	.label_1544
.label_1544:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_1714
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1714:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1730
.label_1730:
	lea	rsi, [rsi]
	jmp	.label_1610
.label_1610:
	jmp	.label_1614
.label_1614:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x118]
	nop	
	call	mbsinit
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1607
.label_1541:
	jmp	.label_1642
.label_1642:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_1622
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1631
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_1631
.label_1622:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1608:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_1646
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_1646
	jmp	.label_1648
.label_1648:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1649
	jmp	.label_1535
.label_1649:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1654
	test	byte ptr [rbp - 0x42], 1
	jne	.label_1654
	lea	rdi, [rdi]
	jmp	.label_1662
.label_1662:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1668
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1668:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1667
.label_1667:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1531
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_1531:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1680
.label_1680:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1605
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1605:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1654:
	jmp	.label_1693
.label_1693:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1694
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1694:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1719
.label_1719:
	jmp	.label_1701
.label_1701:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1703
	nop	
	movzx	eax, byte ptr [rbp - 0x3d]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_1703:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1712
.label_1712:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1717
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x3d]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	byte ptr [rsi + rdx], cl
.label_1717:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x3d], cl
	jmp	.label_1555
.label_1646:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_1715
	lea	rdi, [rdi]
	jmp	.label_1538
.label_1538:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1589
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_1589:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_1715:
	nop	
	jmp	.label_1555
.label_1555:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_1558
	jmp	.label_1563
.label_1558:
	lea	rsi, [rsi]
	jmp	.label_1567
.label_1567:
	test	byte ptr [rbp - 0x42], 1
	je	.label_1570
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_1570
	lea	rsi, [rsi]
	jmp	.label_1573
.label_1573:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1574
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1574:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1581
.label_1581:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1588
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1588:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1570:
	nop	
	jmp	.label_1601
.label_1601:
	mov	rsp, rsp
	jmp	.label_1697
.label_1697:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1603
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_1603:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x3d], dl
	jmp	.label_1608
.label_1563:
	mov	rsp, rsp
	jmp	.label_1530
.label_1631:
	lea	rsi, [rsi]
	jmp	.label_1562
.label_1562:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_1624
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1627
.label_1624:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1630
.label_1627:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_1630
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x100]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	mov	ecx, esi
	and	rcx, 0x1f
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1634
.label_1630:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_1634
	mov	rsp, rsp
	jmp	.label_1530
.label_1634:
	nop	
	jmp	.label_1560
.label_1560:
	jmp	.label_1656
.label_1656:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_1658
	jmp	.label_1535
.label_1658:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1663
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_1663
	lea	rdi, [rdi]
	jmp	.label_1670
.label_1670:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1705
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1705:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1677
.label_1677:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1681
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1681:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1687
.label_1687:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1618
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1618:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1663:
	jmp	.label_1722
.label_1722:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1699
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_1699:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1707
.label_1707:
	nop	
	jmp	.label_1530
.label_1530:
	jmp	.label_1710
.label_1710:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_1539
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_1539
	lea	rdi, [rdi]
	jmp	.label_1716
.label_1716:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1718
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1718:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1689
.label_1689:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1726
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1726:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1539:
	jmp	.label_1543
.label_1543:
	nop	
	jmp	.label_1545
.label_1545:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1546
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_1546:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1650
	mov	byte ptr [rbp - 0xb7], 0
.label_1650:
	mov	rbp, rbp
	jmp	.label_1542
.label_1542:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1564
.label_1585:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_1571
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_1571
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1571
	nop	
	jmp	.label_1535
.label_1571:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1580
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1580
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_1580
	test	byte ptr [rbp - 0xb7], 1
	je	.label_1592
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0xa4]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	jmp	.label_1611
.label_1592:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_1615
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_1615
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_1620
.label_1615:
	jmp	.label_1625
.label_1625:
	mov	rbp, rbp
	jmp	.label_1580
.label_1580:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_1628
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_1628
	mov	rbp, rbp
	jmp	.label_1657
.label_1657:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_1635
	lea	rdi, [rdi]
	jmp	.label_1638
.label_1638:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1640
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_1640:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1653
.label_1653:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1657
.label_1635:
	jmp	.label_1628
.label_1628:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1665
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_1665:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1611
.label_1535:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1675
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1675
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_1675:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	r8, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	mov	r9d, dword ptr [rbp - 0xa4]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x138], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_1611:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41b770
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41b7e0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x48], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_1731
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1732
.label_1731:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1732
.label_1732:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], edi
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x58]
	nop	
	mov	rbx, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r11
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	xcharalloc
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x34]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x64], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x64]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1733
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_1733:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41b9b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1738:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1737
	nop	
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1738
.label_1737:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_1736
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_1734]],  rax
.label_1736:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1735
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1735:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41bac0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 8]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41bb10

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 0x64], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x60], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	cmp	dword ptr [rbp - 0x64], 0
	jge	.label_1745
	call	abort
.label_1745:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_1741
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0xc]
	cmp	edx, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	jge	.label_1742
	call	xalloc_die
.label_1742:
	test	byte ptr [rbp - 0x51], 1
	je	.label_1740
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1746
.label_1740:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1746:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x64]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x51], 1
	lea	rdi, [rdi]
	je	.label_1744
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1734]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1744:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 0x64]
	nop	
	add	edx, 1
	mov	rbp, rbp
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x64]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_1741:
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x20], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x28]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	ja	.label_1743
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x64]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	je	.label_1739
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_1739:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	xcharalloc
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x28]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
.label_1743:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x41be40

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41be80
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41beb0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	quotearg_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41bef0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 4], esi
	nop	
	mov	qword ptr [rbp - 0x48], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x40]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41bf50

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], esi
	mov	qword ptr [rbp - 0x50], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 0x44], 0xa
	jne	.label_1747
	call	abort
.label_1747:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41bff0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], edi
	nop	
	mov	dword ptr [rbp - 0x44], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x44]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x40]
	nop	
	mov	edi, dword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 8]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c060

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c0a0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c0e0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x68]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 4]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c190

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41c1d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	nop	
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x41c200
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	quotearg_char_mem
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c240

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x40]
	mov	dword ptr [rbp - 0x54], edi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x90]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x40]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x94], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x44], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	esi, dword ptr [rbp - 0x94]
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x90]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xb0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c320

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	r8, -1
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x41c370

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 0x3c], edi
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x50], rcx
	mov	qword ptr [rbp - 0x68], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x60], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x38]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c410
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quotearg_n_custom
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c460
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c4c0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x41c500
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quote_n_mem
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c540

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c580

	.globl quote
	.type quote, @function
quote:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quote_n
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c5c0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_1751
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1749
.label_1751:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1750
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1749
.label_1750:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1748
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1749
.label_1748:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_1749:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c700

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	jne	.label_1752
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdi, rcx
	nop	
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1753
.label_1752:
	nop	
	mov	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_1754
	nop	
	movabs	rsi, OFFSET FLAT:.str_12
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	fopen_safer
	nop	
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_1758
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_1753
.label_1758:
	mov	rsp, rsp
	jmp	.label_1754
.label_1754:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1756
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	jae	.label_1755
	lea	rdi, [rdi]
	mov	eax, 0x1000
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	jmp	.label_1757
.label_1755:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
.label_1757:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	rbp, rbp
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1759
.label_1756:
	lea	rdi, [rdi]
	mov	eax, 0x800
	mov	esi, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], 0
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x18
	nop	
	add	rcx, 8
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	get_nonce
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x18
	lea	rsi, [rsi]
	add	rcx, 8
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	isaac_seed
.label_1759:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1753:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c8c0

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	eax, 0x1038
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	xmalloc
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:randread_error
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c940

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0xf0
	movabs	rax, OFFSET FLAT:.str.3_2
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rsi
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], 0
	nop	
	mov	rdi, rax
	nop	
	mov	esi, ecx
	mov	al, 0
	call	open
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	jg	.label_1762
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], edi
	mov	qword ptr [rbp - 0x98], rsi
	nop	
	jae	.label_1769
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1774
.label_1769:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x30], rax
.label_1774:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jge	.label_1764
	mov	qword ptr [rbp - 0x48], 0
.label_1764:
	mov	edi, dword ptr [rbp - 0xb8]
	call	close
	mov	dword ptr [rbp - 0xd4], eax
.label_1762:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	jae	.label_1771
	lea	rdi, [rdi]
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jae	.label_1773
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	jmp	.label_1760
.label_1773:
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_1760:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rbp - 0xd0]
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x68], rax
	call	gettimeofday
	lea	rsi, [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	add	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	nop	
	mov	dword ptr [rbp - 0xa4], eax
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x68]
	add	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdx
.label_1771:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	jae	.label_1777
	nop	
	mov	eax, 4
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rsp, rsp
	jae	.label_1770
	mov	rsp, rsp
	mov	eax, 4
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	jmp	.label_1766
.label_1770:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
.label_1766:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	getpid
	nop	
	lea	rcx, [rbp - 0xdc]
	mov	dword ptr [rbp - 0xdc], eax
	nop	
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xb0], rsi
	nop	
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xb0]
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	add	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
.label_1777:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	jae	.label_1768
	mov	eax, 4
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	sub	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jae	.label_1772
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1765
.label_1772:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
.label_1765:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x20], rax
	call	getppid
	lea	rcx, [rbp - 0x74]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
.label_1768:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_1775
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	sub	rdx, qword ptr [rbp - 0x48]
	cmp	rcx, rdx
	mov	rbp, rbp
	jae	.label_1776
	lea	rdi, [rdi]
	mov	eax, 4
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_1761
.label_1776:
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1761:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rax
	call	getuid
	mov	rsp, rsp
	lea	rcx, [rbp - 0xb4]
	mov	dword ptr [rbp - 0xb4], eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0xe8]
	nop	
	add	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
.label_1775:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_1763
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jae	.label_1767
	mov	rsp, rsp
	mov	eax, 4
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	jmp	.label_1778
.label_1767:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x60], rax
.label_1778:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	call	getgid
	lea	rcx, [rbp - 0xd8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd8], eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rdx
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	add	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rcx
.label_1763:
	add	rsp, 0xf0
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41cdf0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rsi
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41ce20
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], rsi
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41ce40

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	je	.label_1779
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	call	readsource
	jmp	.label_1780
.label_1779:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	call	readisaac
.label_1780:
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41cec0

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_1785:
	nop	
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	call	fread_unlocked
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	call	__errno_location
	mov	rbp, rbp
	mov	r8d, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 4], r8d
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1782
	jmp	.label_1783
.label_1782:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	ferror_unlocked
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	je	.label_1784
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1781
.label_1784:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1781
.label_1781:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	call	rax
	jmp	.label_1785
.label_1783:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41cfd0

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
.label_1788:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_1792
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdx, 0x820
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rcx
	mov	rbp, rbp
	jmp	.label_1791
.label_1792:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x820
	nop	
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	add	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rdx
	mov	rsp, rsp
	mov	rdx, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	and	rcx, 7
	cmp	rcx, 0
	jne	.label_1786
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_1789:
	lea	rdi, [rdi]
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	ja	.label_1790
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	rbp, rbp
	call	isaac_refill
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 0x800
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x800
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1787
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	jmp	.label_1791
.label_1787:
	lea	rdi, [rdi]
	jmp	.label_1789
.label_1790:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_1786:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rcx, 0x820
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	call	isaac_refill
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0x800
	jmp	.label_1788
.label_1791:
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41d1d0

	.globl randread_free
	.type randread_free, @function
randread_free:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x1038
	mov	esi, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	call	free
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1793
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	rpl_fclose
	nop	
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1794
.label_1793:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1794
.label_1794:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41d260

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1795
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 0x24], edi
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1797
	movabs	rdi, OFFSET FLAT:.str.1_7
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_1796
.label_1797:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2_3
	nop	
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
.label_1796:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	call	quote
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_1795:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41d320

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rsi + 0x800]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rsi + 0x808]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x810]
	add	rax, 1
	mov	qword ptr [rdi + 0x810], rax
	add	rsi, rax
	nop	
	mov	qword ptr [rbp - 0xb8], rsi
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x50], rax
.label_1798:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0xb0]
	nop	
	add	rax, qword ptr [rcx + 0x400]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	shr	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	ind
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	rdi, rax
	nop	
	call	just
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	call	just
	shr	rax, 5
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	xor	rcx, rax
	xor	rcx, 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	add	rcx, qword ptr [rax + 0x408]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x40]
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 8
	mov	rsi, rax
	mov	rsp, rsp
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	rcx, 0xc
	xor	rax, rcx
	nop	
	xor	rax, 0
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rcx + 0x410]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x88]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsi, rax
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	call	just
	nop	
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0x48]
	xor	rcx, rax
	mov	rsp, rsp
	xor	rcx, 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	add	rcx, qword ptr [rax + 0x418]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x10]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsi, rax
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	just
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 0x20
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	add	rax, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, 0x400
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_1798
	jmp	.label_1799
.label_1799:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	mov	rbp, rbp
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0xb0]
	nop	
	add	rax, qword ptr [rcx - 0x400]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xb8]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	just
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	call	just
	shr	rax, 5
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	xor	rcx, rax
	lea	rdi, [rdi]
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x3f8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x30]
	call	ind
	nop	
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 8]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	just
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rcx, 0xc
	xor	rax, rcx
	mov	rbp, rbp
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rcx - 0x3f0]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0xa8]
	shr	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	ind
	add	rax, qword ptr [rbp - 0x90]
	mov	rdi, rax
	call	just
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	call	just
	mov	rsp, rsp
	shr	rax, 0x21
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0xb0]
	add	rcx, qword ptr [rax - 0x3e8]
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	shr	rax, 8
	mov	rsi, rax
	lea	rdi, [rdi]
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdi, rax
	call	just
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rcx + 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 0x20
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, 0x800
	cmp	rax, rcx
	jb	.label_1799
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x800], rax
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x808], rax
	lea	rsi, [rsi]
	add	rsp, 0xd0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41da50

	.globl ind
	.type ind, @function
ind:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	and	rdi, 0x7f8
	lea	rdi, [rdi]
	add	rsi, rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41dac0

	.globl just
	.type just, @function
just:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], -1
	nop	
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, qword ptr [rbp - 0x10]
	mov	rax, rdi
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41daf0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	movabs	rax, 0x98f5704f6c44c0ab
	mov	rsp, rsp
	movabs	rcx, 0xae985bf2cbfc89ed
	movabs	rdx, 0x48fe4a0fa5a09315
	nop	
	movabs	rsi, 0x82f053db8355e0ce
	mov	rbp, rbp
	movabs	r8, 0xb29b2e824a595524
	movabs	r9, 0x8c0ea5053d4712a0
	movabs	r10, 0xb9f8b322c73ac862
	movabs	r11, 0x647c4677a2884b7c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x10], r11
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], r10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], r9
	mov	qword ptr [rbp - 0x30], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_1803:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0x100
	mov	rbp, rbp
	jge	.label_1801
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	edx, 1
	movsxd	rax, edx
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 2
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 3
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	add	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 4
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	edx, 5
	mov	rbp, rbp
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	edx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	edx, 6
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	add	edx, 7
	nop	
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	just
	nop	
	shr	rax, 9
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	call	just
	lea	rdi, [rdi]
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	sub	rcx, rax
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	edx, 1
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 2
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	edx, 3
	lea	rsi, [rsi]
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 4
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 5
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	edx, 7
	nop	
	movsxd	rcx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1803
.label_1801:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], 0
.label_1802:
	cmp	dword ptr [rbp - 0x44], 0x100
	mov	rsp, rsp
	jge	.label_1800
	movsxd	rax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	add	edx, 1
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 2
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 3
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	add	edx, 4
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 5
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	add	edx, 6
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	edx, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	just
	lea	rdi, [rdi]
	shr	rax, 9
	nop	
	xor	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	just
	mov	rsp, rsp
	shr	rax, 0x17
	mov	rbp, rbp
	xor	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	just
	lea	rsi, [rsi]
	shr	rax, 0xe
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	shl	rax, 0x14
	mov	rsp, rsp
	xor	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x58]
	call	just
	mov	rbp, rbp
	shr	rax, 0x11
	mov	rsp, rsp
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x44]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	edx, 1
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	add	edx, 3
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	add	edx, 6
	movsxd	rcx, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 7
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rcx*8], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	nop	
	add	eax, 8
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	jmp	.label_1802
.label_1800:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x810], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x808], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rax + 0x800], 0
	add	rsp, 0x60
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41e3b0

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi + 8], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rdi + 0x10], 0
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	add	rdi, 0x18
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	_obstack_begin
	nop	
	xor	r9d, r9d
	mov	ecx, r9d
	movabs	rdx, OFFSET FLAT:malloc
	nop	
	movabs	r8, OFFSET FLAT:free
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, 0x70
	mov	rdi, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x30], rdx
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	dword ptr [rbp - 8], eax
	call	_obstack_begin
	lea	rdi, [rdi]
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	ecx, r9d
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsi, 0xc8
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x14], eax
	call	_obstack_begin
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41e4d0
	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rdi, 0x18
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 8]
	cmp	rdi, rax
	mov	rbp, rbp
	jbe	.label_1808
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1808
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rax
	nop	
	jmp	.label_1806
.label_1808:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	_obstack_free
.label_1806:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rbp, rbp
	jbe	.label_1804
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1804
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_1807
.label_1804:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	call	_obstack_free
.label_1807:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0xc8
	nop	
	mov	qword ptr [rbp - 8], rax
	nop	
	mov	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_1809
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1809
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_1805
.label_1809:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	_obstack_free
.label_1805:
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41e670

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rsi
.label_1818:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	fgetc
	mov	dword ptr [rbp - 0xb4], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xb4], -1
	mov	rsp, rsp
	jne	.label_1814
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	mov	rsp, rsp
	je	.label_1817
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	sub	rax, rcx
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 1
	jae	.label_1816
	mov	eax, 1
	mov	rsp, rsp
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	_obstack_newchunk
.label_1816:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rdx, rcx
	add	rdx, 1
	nop	
	mov	qword ptr [rax + 0x18], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rcx], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	call	save_token
.label_1817:
	mov	rsp, rsp
	jmp	.label_1812
.label_1814:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 0x18
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 1
	jae	.label_1815
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	_obstack_newchunk
.label_1815:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	rdi, rsi
	mov	rbp, rbp
	add	rdi, 1
	mov	qword ptr [rdx + 0x18], rdi
	nop	
	mov	byte ptr [rsi], cl
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xb4], 0
	nop	
	jne	.label_1821
	mov	rdi, qword ptr [rbp - 0x60]
	call	save_token
.label_1821:
	mov	rbp, rbp
	jmp	.label_1818
.label_1812:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 0x70
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 8
	jae	.label_1820
	lea	rsi, [rsi]
	mov	eax, 8
	mov	rbp, rbp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	_obstack_newchunk
.label_1820:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	add	rcx, 8
	nop	
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 0x70
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xa8]
	jne	.label_1813
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x50]
	mov	rbp, rbp
	and	cl, 0xfd
	lea	rdi, [rdi]
	or	cl, 2
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x50], cl
.label_1813:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rdx, rsi
	mov	rsp, rsp
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rdx + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	nop	
	jbe	.label_1819
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + 0x18], rax
.label_1819:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 0xc8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	cmp	rax, qword ptr [rbp - 0xa0]
	jne	.label_1810
	mov	rax, qword ptr [rbp - 0x68]
	mov	cl, byte ptr [rax + 0x50]
	lea	rdi, [rdi]
	and	cl, 0xfd
	or	cl, 2
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x50], cl
.label_1810:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	sub	rdx, 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rdx, rsi
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x18], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	nop	
	sub	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	sub	rdx, rsi
	lea	rsi, [rsi]
	cmp	rcx, rdx
	nop	
	jbe	.label_1811
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x18], rax
.label_1811:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	ferror
	cmp	eax, 0
	lea	rdi, [rdi]
	setne	dl
	nop	
	xor	dl, 0xff
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	rsp, rsp
	add	rsp, 0xc0
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41eb70

	.globl save_token
	.type save_token, @function
save_token:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x90
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rdi, 0x18
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	sub	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	jne	.label_1822
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	lea	rdi, [rdi]
	or	cl, 2
	nop	
	mov	byte ptr [rax + 0x50], cl
.label_1822:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rdx, rsi
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x18], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jbe	.label_1824
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
.label_1824:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, 0x70
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	sub	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 8
	jae	.label_1825
	nop	
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x40]
	call	_obstack_newchunk
.label_1825:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 8
	mov	qword ptr [rax + 0x18], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, 0xc8
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	qword ptr [rbp - 0x68], 8
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_1823
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x68]
	call	_obstack_newchunk
.label_1823:
	mov	rbp, rbp
	lea	rax, [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	add	rsp, 0x90
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x41ee30
	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	mkstemp
	lea	rsi, [rsi]
	mov	edi, eax
	lea	rsi, [rsi]
	call	fd_safer
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41ee70

	.globl mkostemp_safer
	.type mkostemp_safer, @function
mkostemp_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	mkostemp
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	fd_safer_flag
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x41eec0

	.globl strnumcmp
	.type strnumcmp, @function
strnumcmp:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 4], edx
	mov	dword ptr [rbp - 8], ecx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	numcompare_0
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41ef10

	.globl numcompare_0
	.type numcompare_0, @function
numcompare_0:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], edx
	nop	
	mov	dword ptr [rbp - 0x20], ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	al, byte ptr [rsi]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x55], al
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi]
	mov	byte ptr [rbp - 0x21], al
	movzx	ecx, byte ptr [rbp - 0x55]
	mov	rbp, rbp
	cmp	ecx, 0x2d
	mov	rbp, rbp
	jne	.label_1831
	mov	rbp, rbp
	jmp	.label_1829
.label_1829:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax + 1]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x55], dl
	nop	
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x55]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x31], al
	je	.label_1860
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x55]
	cmp	eax, dword ptr [rbp - 0x20]
	nop	
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], cl
.label_1860:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x31]
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1829
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x2d
	mov	rbp, rbp
	je	.label_1881
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x55]
	cmp	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	jne	.label_1834
	jmp	.label_1893
.label_1893:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	mov	dl, byte ptr [rax + 1]
	nop	
	mov	byte ptr [rbp - 0x55], dl
	movzx	eax, byte ptr [rbp - 0x55]
	mov	rbp, rbp
	cmp	eax, 0x30
	je	.label_1893
	mov	rsp, rsp
	jmp	.label_1834
.label_1834:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x55]
	mov	rsp, rsp
	sub	eax, 0x30
	nop	
	cmp	eax, 9
	nop	
	ja	.label_1837
	mov	dword ptr [rbp - 0x48], 0xffffffff
	jmp	.label_1849
.label_1837:
	jmp	.label_1853
.label_1853:
	mov	al, 1
	nop	
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 1], al
	je	.label_1854
	movzx	eax, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sete	cl
	nop	
	mov	byte ptr [rbp - 1], cl
.label_1854:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1863
	mov	rsp, rsp
	jmp	.label_1867
.label_1863:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	lea	rsi, [rsi]
	jmp	.label_1853
.label_1867:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jne	.label_1830
	nop	
	jmp	.label_1879
.label_1879:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	nop	
	je	.label_1879
	mov	rsp, rsp
	jmp	.label_1830
.label_1830:
	xor	eax, eax
	movzx	ecx, byte ptr [rbp - 0x21]
	nop	
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	ecx, dl
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_1849
.label_1881:
	jmp	.label_1836
.label_1836:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], dl
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	cmp	ecx, 0x30
	nop	
	mov	byte ptr [rbp - 0x41], al
	je	.label_1838
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x41], cl
.label_1838:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_1836
	jmp	.label_1839
.label_1839:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	movzx	eax, byte ptr [rbp - 0x55]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbp - 0x21]
	nop	
	cmp	eax, edx
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_1865
	movzx	eax, byte ptr [rbp - 0x55]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	rsp, rsp
	cmp	eax, 9
	setbe	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], cl
.label_1865:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1876
	lea	rdi, [rdi]
	jmp	.label_1880
.label_1876:
	jmp	.label_1884
.label_1884:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x55], dl
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x55]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1884
	jmp	.label_1895
.label_1895:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax + 1]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], dl
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	nop	
	je	.label_1895
	jmp	.label_1839
.label_1880:
	movzx	eax, byte ptr [rbp - 0x55]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	jne	.label_1842
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	mov	rbp, rbp
	cmp	eax, 9
	ja	.label_1851
.label_1842:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x21]
	nop	
	cmp	eax, dword ptr [rbp - 0x18]
	jne	.label_1857
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x55]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_1857
.label_1851:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	call	fraccompare
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_1849
.label_1857:
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	ecx, byte ptr [rbp - 0x55]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
.label_1828:
	movzx	eax, byte ptr [rbp - 0x55]
	nop	
	sub	eax, 0x30
	lea	rsi, [rsi]
	cmp	eax, 9
	ja	.label_1877
	jmp	.label_1875
.label_1875:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x55], dl
	movzx	eax, byte ptr [rbp - 0x55]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1875
	jmp	.label_1833
.label_1833:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1828
.label_1877:
	mov	qword ptr [rbp - 0x40], 0
.label_1882:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1840
	jmp	.label_1855
.label_1855:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x20]
	nop	
	je	.label_1855
	jmp	.label_1862
.label_1862:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_1882
.label_1840:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x40]
	je	.label_1846
	mov	eax, 0xffffffff
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x40]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_1849
.label_1846:
	cmp	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	jne	.label_1858
	mov	dword ptr [rbp - 0x48], 0
	jmp	.label_1849
.label_1858:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x48], eax
	mov	rbp, rbp
	jmp	.label_1849
.label_1831:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	cmp	eax, 0x2d
	nop	
	jne	.label_1892
	mov	rbp, rbp
	jmp	.label_1850
.label_1850:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x22], al
	lea	rdi, [rdi]
	je	.label_1899
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	sete	cl
	mov	byte ptr [rbp - 0x22], cl
.label_1899:
	mov	al, byte ptr [rbp - 0x22]
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1850
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jne	.label_1856
	jmp	.label_1841
.label_1841:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	cmp	eax, 0x30
	je	.label_1841
	mov	rsp, rsp
	jmp	.label_1856
.label_1856:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	cmp	eax, 9
	ja	.label_1866
	nop	
	mov	dword ptr [rbp - 0x48], 1
	jmp	.label_1849
.label_1866:
	lea	rsi, [rsi]
	jmp	.label_1826
.label_1826:
	mov	al, 1
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x55]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x13], al
	je	.label_1883
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x55]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x13], cl
.label_1883:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x13]
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1894
	mov	rbp, rbp
	jmp	.label_1897
.label_1894:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x55], dl
	jmp	.label_1826
.label_1897:
	nop	
	movzx	eax, byte ptr [rbp - 0x55]
	cmp	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jne	.label_1861
	nop	
	jmp	.label_1845
.label_1845:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax + 1]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x55], dl
	movzx	eax, byte ptr [rbp - 0x55]
	cmp	eax, 0x30
	je	.label_1845
	jmp	.label_1861
.label_1861:
	movzx	eax, byte ptr [rbp - 0x55]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rbp, rbp
	cmp	eax, 9
	setbe	cl
	and	cl, 1
	movzx	eax, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	jmp	.label_1849
.label_1892:
	jmp	.label_1870
.label_1870:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x55]
	cmp	ecx, 0x30
	nop	
	mov	byte ptr [rbp - 0x12], al
	je	.label_1872
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x55]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_1872:
	mov	al, byte ptr [rbp - 0x12]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1878
	jmp	.label_1885
.label_1878:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x55], dl
	jmp	.label_1870
.label_1885:
	jmp	.label_1847
.label_1847:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	je	.label_1896
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sete	cl
	mov	byte ptr [rbp - 0x11], cl
.label_1896:
	mov	al, byte ptr [rbp - 0x11]
	test	al, 1
	jne	.label_1886
	jmp	.label_1844
.label_1886:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_1847
.label_1844:
	jmp	.label_1827
.label_1827:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x55]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp - 0x21]
	cmp	eax, edx
	nop	
	mov	byte ptr [rbp - 0x56], cl
	nop	
	jne	.label_1859
	movzx	eax, byte ptr [rbp - 0x55]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x56], cl
.label_1859:
	mov	al, byte ptr [rbp - 0x56]
	mov	rbp, rbp
	test	al, 1
	jne	.label_1868
	jmp	.label_1871
.label_1868:
	lea	rsi, [rsi]
	jmp	.label_1873
.label_1873:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x55], dl
	nop	
	movzx	eax, byte ptr [rbp - 0x55]
	cmp	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	je	.label_1873
	jmp	.label_1887
.label_1887:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	mov	dl, byte ptr [rax + 1]
	nop	
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1887
	jmp	.label_1827
.label_1871:
	movzx	eax, byte ptr [rbp - 0x55]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x18]
	jne	.label_1848
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	mov	rbp, rbp
	ja	.label_1835
.label_1848:
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x18]
	jne	.label_1843
	movzx	eax, byte ptr [rbp - 0x55]
	sub	eax, 0x30
	cmp	eax, 9
	mov	rsp, rsp
	jbe	.label_1843
.label_1835:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18]
	mov	cl, al
	movsx	edx, cl
	mov	rbp, rbp
	call	fraccompare
	nop	
	mov	dword ptr [rbp - 0x48], eax
	nop	
	jmp	.label_1849
.label_1843:
	movzx	eax, byte ptr [rbp - 0x55]
	nop	
	movzx	ecx, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], 0
.label_1890:
	nop	
	movzx	eax, byte ptr [rbp - 0x55]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1869
	mov	rsp, rsp
	jmp	.label_1874
.label_1874:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	lea	rsi, [rsi]
	mov	dl, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x55], dl
	movzx	eax, byte ptr [rbp - 0x55]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1874
	lea	rsi, [rsi]
	jmp	.label_1888
.label_1888:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1890
.label_1869:
	mov	qword ptr [rbp - 0x40], 0
.label_1891:
	nop	
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	mov	rsp, rsp
	ja	.label_1898
	lea	rdi, [rdi]
	jmp	.label_1832
.label_1832:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	mov	dl, byte ptr [rax + 1]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], dl
	nop	
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1832
	jmp	.label_1852
.label_1852:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_1891
.label_1898:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x40]
	je	.label_1864
	mov	eax, 1
	mov	ecx, 0xffffffff
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x40]
	cmovb	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_1849
.label_1864:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	jne	.label_1889
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], 0
	jmp	.label_1849
.label_1889:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x48], eax
.label_1849:
	mov	eax, dword ptr [rbp - 0x48]
	nop	
	add	rsp, 0x60
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41f8e0

	.globl fraccompare
	.type fraccompare, @function
fraccompare:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dl
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rsi]
	movsx	ecx, byte ptr [rbp - 1]
	mov	rbp, rbp
	cmp	edx, ecx
	lea	rdi, [rdi]
	jne	.label_1908
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	cmp	ecx, edx
	jne	.label_1908
	mov	rbp, rbp
	jmp	.label_1911
.label_1911:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	movsx	edx, byte ptr [rax + 1]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	esi, byte ptr [rax + 1]
	mov	rsp, rsp
	cmp	edx, esi
	mov	rbp, rbp
	jne	.label_1900
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rsi, [rsi]
	jbe	.label_1917
	mov	dword ptr [rbp - 0x14], 0
	jmp	.label_1903
.label_1917:
	jmp	.label_1911
.label_1900:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1914
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	sub	ecx, 0x30
	nop	
	cmp	ecx, 9
	ja	.label_1914
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	sub	ecx, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_1903
.label_1914:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	sub	ecx, 0x30
	mov	rbp, rbp
	cmp	ecx, 9
	ja	.label_1916
	lea	rsi, [rsi]
	jmp	.label_1907
.label_1916:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	mov	rbp, rbp
	ja	.label_1910
	jmp	.label_1913
.label_1910:
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jmp	.label_1903
.label_1908:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 1]
	cmp	edx, esi
	jne	.label_1904
	lea	rdi, [rdi]
	jmp	.label_1907
.label_1907:
	lea	rsi, [rsi]
	jmp	.label_1906
.label_1906:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	mov	rbp, rbp
	jne	.label_1915
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_1906
.label_1915:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	nop	
	sub	ecx, 0x30
	cmp	ecx, 9
	mov	rbp, rbp
	setbe	dl
	and	dl, 1
	mov	rbp, rbp
	movzx	ecx, dl
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_1903
.label_1904:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 1]
	mov	rbp, rbp
	cmp	edx, esi
	nop	
	jne	.label_1905
	lea	rsi, [rsi]
	jmp	.label_1913
.label_1913:
	jmp	.label_1901
.label_1901:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_1902
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1901
.label_1902:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	mov	rsp, rsp
	cmp	edx, 9
	setbe	sil
	and	sil, 1
	mov	rbp, rbp
	movzx	edx, sil
	sub	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_1903
.label_1905:
	mov	rbp, rbp
	jmp	.label_1909
.label_1909:
	jmp	.label_1912
.label_1912:
	mov	dword ptr [rbp - 0x14], 0
.label_1903:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41fb80

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	jg	.label_1918
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1918
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], edi
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	mov	edi, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
.label_1918:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41fc10

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0xb8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], r8
	mov	qword ptr [rbp - 0x48], r9
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_1922
	movabs	rsi, OFFSET FLAT:.str_13
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb8]
	nop	
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x6c], eax
	lea	rsi, [rsi]
	jmp	.label_1920
.label_1922:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_1920:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_4
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rdi
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	lea	rsi, [rsi]
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	rbp, rbp
	mov	ecx, 0x7e3
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, r8b
	nop	
	call	fprintf
	nop	
	mov	ecx, OFFSET FLAT:.str.3_3
	mov	rbp, rbp
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0xac], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rdx
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rbp, rbp
	ja	.label_1921
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1923]]
	jmp	rcx
.label_2300:
	jmp	.label_1919
.label_2301:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_1
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x130], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_1919
.label_2302:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_1919
.label_2303:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	jmp	.label_1919
.label_2304:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xd0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1919
.label_2305:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], eax
	nop	
	jmp	.label_1919
.label_2306:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x140], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
.label_2445:
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x68], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x110], eax
	jmp	.label_1919
.label_2307:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0x128], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0x50], eax
	nop	
	jmp	.label_1919
.label_2308:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x120], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	jmp	.label_1919
.label_2309:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_1919
.label_1921:
	movabs	rdi, OFFSET FLAT:.str.13_1
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	nop	
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10c], eax
.label_1919:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420450
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 8], 0
.label_1924:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1925
	mov	rbp, rbp
	jmp	.label_1926
.label_1926:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1924
.label_1925:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 8]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420500

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_1928:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_1931
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_1930
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1929
.label_1930:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_1929:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
.label_1931:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1927
	mov	rsp, rsp
	jmp	.label_1932
.label_1927:
	jmp	.label_1933
.label_1933:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1928
.label_1932:
	nop	
	lea	r8, [rbp - 0x90]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x40]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420660

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1d0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x120], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x1c0], xmm6
	movaps	xmmword ptr [rbp - 0x1a0], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x100], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x160], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x20], xmm1
	movaps	xmmword ptr [rbp - 0xf0], xmm0
	nop	
	mov	qword ptr [rbp - 0x1c8], rdi
	mov	qword ptr [rbp - 0x1a8], r9
	mov	qword ptr [rbp - 0x108], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	je	.label_1934
	movaps	xmm0, xmmword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x90], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x80], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0x70], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x60], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x1c0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_1934:
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0xd8]
	nop	
	mov	r8, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], rsi
	mov	qword ptr [rbp - 0x148], rdx
	lea	rdx, [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x180], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], 0x30
	mov	dword ptr [rbp - 0x190], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	lea	r8, [rbp - 0x190]
	call	version_etc_va
	add	rsp, 0x1d0
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x420820
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4208d0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_1935
	mov	rbp, rbp
	call	xalloc_die
.label_1935:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x420930

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_1936
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1936
	lea	rdi, [rdi]
	call	xalloc_die
.label_1936:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420990
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1937
	mov	rsp, rsp
	call	xalloc_die
.label_1937:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xrealloc
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420a10

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1938
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1938
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1940
.label_1938:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_1939
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1939
	lea	rsi, [rsi]
	call	xalloc_die
.label_1939:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1940:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420ac0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_1941
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1943
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1943:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jae	.label_1945
	call	xalloc_die
.label_1945:
	lea	rsi, [rsi]
	jmp	.label_1944
.label_1941:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_1942
	call	xalloc_die
.label_1942:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1944:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x420bf0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420c20
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420c60
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420cb0

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_1946
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1947
.label_1946:
	lea	rsi, [rsi]
	call	xalloc_die
.label_1947:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420d20

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x420d70
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420dd0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_9
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420e30
	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	memcoll
	mov	dword ptr [rbp - 0x28], eax
	call	__errno_location
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], r8d
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 0
	mov	rsp, rsp
	je	.label_1948
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	collate_error
.label_1948:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420ed0

	.globl collate_error
	.type collate_error, @function
collate_error:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str_14
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], r8
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rdi, rax
	mov	dword ptr [rbp - 0x2c], esi
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.1_10
	mov	rsp, rsp
	call	gettext
	xor	esi, esi
	mov	edi, esi
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	nop	
	movabs	rdi, OFFSET FLAT:.str.2_5
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [exit_failure]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 8
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	call	quotearg_n_style_mem
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 8
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	call	quotearg_n_style_mem
	mov	rsp, rsp
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x420fe0

	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	memcoll0
	mov	dword ptr [rbp - 0x1c], eax
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], r8d
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_1949
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	sub	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, rax
	mov	r8, qword ptr [rbp - 0x18]
	call	collate_error
.label_1949:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x421090

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x10], xmm0
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	dtotimespec
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], rdx
.label_1954:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rbp - 0x20]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	call	rpl_nanosleep
	cmp	eax, 0
	jne	.label_1950
	jmp	.label_1952
.label_1950:
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_1951
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1951
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1953
.label_1951:
	jmp	.label_1954
.label_1952:
	mov	dword ptr [rbp - 4], 0
.label_1953:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x421140

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x100
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0xa4], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rcx
	nop	
	mov	qword ptr [rbp - 0xe0], r8
	mov	dword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0xa4]
	jg	.label_1970
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xa4], 0x24
	mov	rsp, rsp
	jg	.label_1970
	nop	
	jmp	.label_1994
.label_1970:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_15
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_11
	mov	edx, 0x54
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
.label_1994:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2008
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	jmp	.label_2014
.label_2008:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_2014
.label_2014:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x89], cl
.label_1986:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x89]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_1976
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x89], dl
	jmp	.label_1986
.label_1976:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x89]
	nop	
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_1997
	mov	dword ptr [rbp - 0xc8], 4
	nop	
	jmp	.label_1969
.label_1997:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	edx, dword ptr [rbp - 0xa4]
	call	strtoul
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xa0]
	nop	
	jne	.label_2016
	cmp	qword ptr [rbp - 0xe0], 0
	mov	rsp, rsp
	je	.label_1963
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_1963
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rdi]
	call	strchr
	cmp	rax, 0
	je	.label_1963
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], 1
	nop	
	jmp	.label_1977
.label_1963:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], 4
	jmp	.label_1969
.label_1977:
	jmp	.label_1988
.label_2016:
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_1992
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x22
	nop	
	je	.label_1996
	mov	dword ptr [rbp - 0xc8], 4
	jmp	.label_1969
.label_1996:
	mov	dword ptr [rbp - 0x18], 1
.label_1992:
	mov	rbp, rbp
	jmp	.label_1988
.label_1988:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_2007
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0xc8], edx
	nop	
	jmp	.label_1969
.label_2007:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_1955
	mov	dword ptr [rbp - 0x90], 0x400
	nop	
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_2017
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x18]
	nop	
	or	edx, 2
	mov	dword ptr [rbp - 0xc8], edx
	jmp	.label_1969
.label_2017:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	edx, 0x45
	mov	dword ptr [rbp - 0xa8], ecx
	mov	dword ptr [rbp - 0x98], edx
	lea	rdi, [rdi]
	je	.label_1957
	lea	rdi, [rdi]
	jmp	.label_1995
.label_1995:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_1957
	nop	
	jmp	.label_2005
.label_2005:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x74], eax
	nop	
	je	.label_1957
	lea	rsi, [rsi]
	jmp	.label_2013
.label_2013:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_1957
	jmp	.label_2020
.label_2020:
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	sub	eax, 0x50
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_1957
	jmp	.label_1989
.label_1989:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	lea	rdi, [rdi]
	je	.label_1957
	jmp	.label_1971
.label_1971:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	add	eax, -0x59
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x78], eax
	jb	.label_1957
	mov	rsp, rsp
	jmp	.label_2015
.label_2015:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x50], eax
	lea	rsi, [rsi]
	je	.label_1957
	lea	rsi, [rsi]
	jmp	.label_2018
.label_2018:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x6b
	nop	
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_1957
	nop	
	jmp	.label_1998
.label_1998:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	nop	
	sub	eax, 0x6d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	je	.label_1957
	jmp	.label_2006
.label_2006:
	nop	
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 0x74
	nop	
	mov	dword ptr [rbp - 0xb0], eax
	jne	.label_1967
	jmp	.label_1957
.label_1957:
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xe0]
	nop	
	call	strchr
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1956
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], ecx
	nop	
	mov	dword ptr [rbp - 0xf4], edx
	mov	rbp, rbp
	je	.label_1962
	mov	rsp, rsp
	jmp	.label_1984
.label_1984:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	sub	eax, 0x44
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1962
	jmp	.label_1974
.label_1974:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xd0], eax
	jne	.label_1964
	lea	rsi, [rsi]
	jmp	.label_1982
.label_1982:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	mov	rbp, rbp
	jne	.label_1985
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1985:
	jmp	.label_1964
.label_1962:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], 0x3e8
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1964:
	lea	rsi, [rsi]
	jmp	.label_1956
.label_1956:
	nop	
	jmp	.label_1967
.label_1967:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	nop	
	mov	dword ptr [rbp - 0xec], ecx
	mov	dword ptr [rbp - 4], edx
	nop	
	je	.label_2011
	mov	rbp, rbp
	jmp	.label_2019
.label_2019:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x45
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], eax
	mov	rsp, rsp
	je	.label_1959
	lea	rdi, [rdi]
	jmp	.label_2009
.label_2009:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xac], eax
	je	.label_1966
	jmp	.label_1991
.label_1991:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_1972
	lea	rsi, [rsi]
	jmp	.label_1975
.label_1975:
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1978
	mov	rsp, rsp
	jmp	.label_1960
.label_1960:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_1987
	jmp	.label_2001
.label_2001:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0x28], eax
	je	.label_1993
	jmp	.label_2003
.label_2003:
	mov	eax, dword ptr [rbp - 0xec]
	lea	rdi, [rdi]
	sub	eax, 0x59
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
	je	.label_2004
	nop	
	jmp	.label_1961
.label_1961:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xec]
	lea	rsi, [rsi]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	je	.label_2012
	jmp	.label_2010
.label_2010:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x62
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_1979
	jmp	.label_1980
.label_1980:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	mov	rbp, rbp
	je	.label_1983
	nop	
	jmp	.label_1968
.label_1968:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	je	.label_1966
	mov	rbp, rbp
	jmp	.label_1973
.label_1973:
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	je	.label_1972
	lea	rsi, [rsi]
	jmp	.label_2000
.label_2000:
	nop	
	mov	eax, dword ptr [rbp - 0xec]
	nop	
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	je	.label_1978
	nop	
	jmp	.label_1990
.label_1990:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_1993
	mov	rbp, rbp
	jmp	.label_1999
.label_1999:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xec]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_2002
	jmp	.label_1981
.label_1979:
	nop	
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x60], eax
	mov	rsp, rsp
	jmp	.label_1958
.label_2011:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	mov	esi, 0x400
	call	bkm_scale
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	jmp	.label_1958
.label_1983:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], 0
	jmp	.label_1958
.label_1959:
	lea	rdi, [rbp - 0x70]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1958
.label_1966:
	nop	
	lea	rdi, [rbp - 0x70]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	jmp	.label_1958
.label_1972:
	lea	rdi, [rbp - 0x70]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], eax
	mov	rbp, rbp
	jmp	.label_1958
.label_1978:
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	edx, 2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1958
.label_1987:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1958
.label_1993:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1958
.label_2002:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rbp, rbp
	call	bkm_scale
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1958
.label_2004:
	lea	rdi, [rbp - 0x70]
	nop	
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1958
.label_2012:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x70]
	mov	edx, 7
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x90]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1958
.label_1981:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	nop	
	mov	edx, dword ptr [rbp - 0x18]
	or	edx, 2
	nop	
	mov	dword ptr [rbp - 0xc8], edx
	mov	rbp, rbp
	jmp	.label_1969
.label_1958:
	mov	eax, dword ptr [rbp - 0x60]
	nop	
	or	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1965
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	or	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], eax
.label_1965:
	lea	rsi, [rsi]
	jmp	.label_1955
.label_1955:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], edx
.label_1969:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc8]
	mov	rbp, rbp
	add	rsp, 0x100
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x421b10

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	movsxd	rdi, dword ptr [rbp - 4]
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, esi
	div	rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	mov	rbp, rbp
	jae	.label_2021
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 0x14], 1
	lea	rsi, [rsi]
	jmp	.label_2022
.label_2021:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 4]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x14], 0
.label_2022:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x421b90

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_2024:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -1
	mov	dword ptr [rbp - 4], ecx
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2023
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	call	bkm_scale
	lea	rdi, [rdi]
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2024
.label_2023:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x421c00

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	al, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], r8
	nop	
	mov	edi, dword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	nop	
	movsx	edx, al
	nop	
	call	xstrtol_error
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x421c60

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	mov	byte ptr [rbp - 0x29], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x28], r8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], r9d
	mov	qword ptr [word ptr [rbp - 64]], OFFSET FLAT:.str_16
	mov	edx, dword ptr [rbp - 0x50]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	sub	esi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], esi
	lea	rsi, [rsi]
	je	.label_2025
	nop	
	jmp	.label_2029
.label_2029:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, -2
	nop	
	sub	eax, 2
	mov	dword ptr [rbp - 0x48], eax
	jb	.label_2031
	lea	rdi, [rdi]
	jmp	.label_2028
.label_2028:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	je	.label_2030
	lea	rsi, [rsi]
	jmp	.label_2033
.label_2033:
	call	abort
.label_2030:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_12
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_2026
.label_2031:
	movabs	rax, OFFSET FLAT:.str.2_6
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2026
.label_2025:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.3_4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_2026:
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	jge	.label_2032
	lea	rax, [rbp - 2]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	ecx, dword ptr [rbp - 0x1c]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	movsxd	rdi, ecx
	lea	rdi, [rdi]
	sub	rdx, rdi
	mov	rsp, rsp
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	r8b, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	byte ptr [rbp - 2], r8b
	mov	byte ptr [rbp - 1], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2027
.label_2032:
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	shl	rax, 5
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_2027:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], edi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x10]
	nop	
	mov	r9, qword ptr [rbp - 0x28]
	mov	edi, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	nop	
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x421e10

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], edx
	mov	qword ptr [rbp - 0xa8], rcx
	nop	
	mov	qword ptr [rbp - 0xd8], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x54]
	jg	.label_2065
	cmp	dword ptr [rbp - 0x54], 0x24
	lea	rdi, [rdi]
	jg	.label_2065
	jmp	.label_2063
.label_2065:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_15
	movabs	rsi, OFFSET FLAT:.str.1_11
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_2063:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2080
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_2084
.label_2080:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_2084
.label_2084:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x91], cl
.label_2053:
	nop	
	movzx	eax, byte ptr [rbp - 0x91]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x2000
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_2041
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x91], dl
	lea	rsi, [rsi]
	jmp	.label_2053
.label_2041:
	movzx	eax, byte ptr [rbp - 0x91]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_2067
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf4], 4
	lea	rsi, [rsi]
	jmp	.label_2042
.label_2067:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	edx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	call	strtoumax
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jne	.label_2082
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rsp, rsp
	je	.label_2040
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_2040
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_2040
	mov	qword ptr [rbp - 0xc8], 1
	jmp	.label_2045
.label_2040:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_2042
.label_2045:
	lea	rdi, [rdi]
	jmp	.label_2057
.label_2082:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_2061
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_2071
	nop	
	mov	dword ptr [rbp - 0xf4], 4
	jmp	.label_2042
.label_2071:
	mov	dword ptr [rbp - 0x60], 1
.label_2061:
	jmp	.label_2057
.label_2057:
	nop	
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_2077
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0xf4], edx
	lea	rdi, [rdi]
	jmp	.label_2042
.label_2077:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_2048
	mov	dword ptr [rbp - 0x64], 0x400
	mov	dword ptr [rbp - 0xd0], 1
	mov	rdi, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	jne	.label_2037
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edx
	mov	rbp, rbp
	jmp	.label_2042
.label_2037:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x9c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], edx
	nop	
	je	.label_2054
	jmp	.label_2072
.label_2072:
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xdc], eax
	lea	rdi, [rdi]
	je	.label_2054
	nop	
	jmp	.label_2079
.label_2079:
	mov	eax, dword ptr [rbp - 0x9c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_2054
	nop	
	jmp	.label_2086
.label_2086:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	je	.label_2054
	lea	rsi, [rsi]
	jmp	.label_2091
.label_2091:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	je	.label_2054
	jmp	.label_2095
.label_2095:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_2054
	jmp	.label_2036
.label_2036:
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	jb	.label_2054
	mov	rsp, rsp
	jmp	.label_2050
.label_2050:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2054
	jmp	.label_2039
.label_2039:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf8], eax
	lea	rdi, [rdi]
	je	.label_2054
	mov	rsp, rsp
	jmp	.label_2073
.label_2073:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x44], eax
	nop	
	je	.label_2054
	jmp	.label_2093
.label_2093:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_2069
	jmp	.label_2054
.label_2054:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0xd8]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_2064
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], edx
	mov	rsp, rsp
	je	.label_2034
	lea	rsi, [rsi]
	jmp	.label_2099
.label_2099:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0x88], eax
	je	.label_2034
	jmp	.label_2083
.label_2083:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	lea	rdi, [rdi]
	jne	.label_2047
	lea	rsi, [rsi]
	jmp	.label_2055
.label_2055:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_2078
	mov	eax, dword ptr [rbp - 0xd0]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0xd0], eax
.label_2078:
	jmp	.label_2047
.label_2034:
	mov	dword ptr [rbp - 0x64], 0x3e8
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
.label_2047:
	jmp	.label_2064
.label_2064:
	nop	
	jmp	.label_2069
.label_2069:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], ecx
	mov	dword ptr [rbp - 0x68], edx
	mov	rbp, rbp
	je	.label_2081
	jmp	.label_2074
.label_2074:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0x98], eax
	je	.label_2090
	jmp	.label_2092
.label_2092:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	je	.label_2094
	jmp	.label_2097
.label_2097:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_2062
	nop	
	jmp	.label_2068
.label_2068:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_2043
	nop	
	jmp	.label_2051
.label_2051:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_2058
	mov	rsp, rsp
	jmp	.label_2060
.label_2060:
	nop	
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	je	.label_2049
	jmp	.label_2066
.label_2066:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	je	.label_2096
	mov	rbp, rbp
	jmp	.label_2075
.label_2075:
	mov	eax, dword ptr [rbp - 0x6c]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_2076
	jmp	.label_2087
.label_2087:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_2085
	jmp	.label_2070
.label_2070:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0x58], eax
	je	.label_2098
	jmp	.label_2035
.label_2035:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_2094
	jmp	.label_2088
.label_2088:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_2062
	jmp	.label_2052
.label_2052:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xac], eax
	je	.label_2043
	jmp	.label_2089
.label_2089:
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x30], eax
	je	.label_2049
	jmp	.label_2044
.label_2044:
	mov	eax, dword ptr [rbp - 0x6c]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x24], eax
	je	.label_2056
	jmp	.label_2059
.label_2085:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x200
	call	bkm_scale_0
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2081:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2098:
	mov	dword ptr [rbp - 0x84], 0
	jmp	.label_2046
.label_2090:
	nop	
	lea	rdi, [rbp - 0xc8]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2094:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2062:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2043:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2058:
	lea	rdi, [rbp - 0xc8]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	jmp	.label_2046
.label_2049:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	jmp	.label_2046
.label_2056:
	lea	rdi, [rbp - 0xc8]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2096:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc8]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2076:
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc8]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x64]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2046
.label_2059:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf4], edx
	jmp	.label_2042
.label_2046:
	mov	eax, dword ptr [rbp - 0x84]
	or	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x60], eax
	mov	eax, dword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	je	.label_2038
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_2038:
	jmp	.label_2048
.label_2048:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x60]
	nop	
	mov	dword ptr [rbp - 0xf4], edx
.label_2042:
	mov	eax, dword ptr [rbp - 0xf4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4227a0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi]
	jae	.label_2100
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 1
	jmp	.label_2101
.label_2100:
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x10], 0
.label_2101:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x422820

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	mov	dword ptr [rbp - 8], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 0
.label_2102:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_2103
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_2102
.label_2103:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4228a0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, eax
	lea	rsi, [rsi]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4228e0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_2107
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_2105
.label_2107:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2104
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	mov	rbp, rbp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_2106
.label_2104:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2106
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_2106:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2108
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], 0xffffffff
.label_2108:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_2105:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x422a00

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x240
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm7
	movaps	xmmword ptr [rbp - 0x40], xmm6
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xd0], xmm4
	movaps	xmmword ptr [rbp - 0x230], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x1d0], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x1f0], xmm1
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	mov	dword ptr [rbp - 0x20], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x210], r8
	mov	qword ptr [rbp - 0x220], rcx
	mov	qword ptr [rbp - 0xa8], rdx
	nop	
	mov	dword ptr [rbp - 0x60], esi
	nop	
	je	.label_2109
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x170], xmm0
	nop	
	movaps	xmm1, xmmword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x1d0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rsi, [rsi]
	movaps	xmm3, xmmword ptr [rbp - 0x230]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x140], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0xd0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x130], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x70]
	movaps	xmmword ptr [rbp - 0x120], xmm5
	mov	rsp, rsp
	movaps	xmm6, xmmword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x110], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x80]
	movaps	xmmword ptr [rbp - 0x100], xmm7
.label_2109:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x210]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rdx, qword ptr [rbp - 0x220]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x188], rdx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x190], rsi
	mov	edi, dword ptr [rbp - 0x60]
	mov	r8d, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], r8d
	mov	dword ptr [rbp - 0x1a4], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], 0xffffffff
	lea	rsi, [rsi]
	lea	r9, [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x1b0], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x1b8], r9
	mov	dword ptr [rbp - 0x1bc], 0x30
	mov	dword ptr [rbp - 0x1c0], 0x10
	mov	edi, dword ptr [rbp - 0x1a4]
	test	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], edi
	mov	rsp, rsp
	je	.label_2113
	nop	
	jmp	.label_2124
.label_2124:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_2125
	jmp	.label_2134
.label_2113:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_2131
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1f8]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xd8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xe8], rcx
	lea	rsi, [rsi]
	jmp	.label_2139
.label_2131:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_2139:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2117
.label_2125:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	cmp	ecx, 0x28
	nop	
	mov	qword ptr [rbp - 0x88], rax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	ja	.label_2137
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	jmp	.label_2120
.label_2137:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_2120:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x54]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2117
.label_2134:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_2114
	nop	
	jmp	.label_2122
.label_2122:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_2121
	jmp	.label_2129
.label_2129:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_2114
	nop	
	jmp	.label_2135
.label_2135:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_2121
	nop	
	jmp	.label_2112
.label_2112:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_2114
	lea	rsi, [rsi]
	jmp	.label_2119
.label_2119:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_2114
	lea	rsi, [rsi]
	jmp	.label_2127
.label_2127:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_2121
	mov	rsp, rsp
	jmp	.label_2133
.label_2133:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_2114
	jmp	.label_2136
.label_2136:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_2121
	lea	rsi, [rsi]
	jmp	.label_2138
.label_2138:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_2114
	jmp	.label_2126
.label_2126:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_2121
	mov	rsp, rsp
	jmp	.label_2130
.label_2130:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_2114
	lea	rsi, [rsi]
	jmp	.label_2128
.label_2128:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_2114
	nop	
	jmp	.label_2116
.label_2116:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_2118
	lea	rdi, [rdi]
	jmp	.label_2121
.label_2121:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_2110
.label_2114:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_2132
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], rcx
	mov	rbp, rbp
	jmp	.label_2111
.label_2132:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_2111:
	nop	
	mov	rax, qword ptr [rbp - 0x208]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xac], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	nop	
	mov	esi, dword ptr [rbp - 0x1a4]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xac]
	nop	
	mov	al, 0
	call	fcntl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2110
.label_2118:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_2115
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x238]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x90], rcx
	mov	rsp, rsp
	jmp	.label_2123
.label_2115:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_2123:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1d8], rax
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1d8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x5c], eax
.label_2110:
	jmp	.label_2117
.label_2117:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x423060

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	fcntl
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4230b0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_2148
	lea	rsi, [rsi]
	mov	esi, 0x406
	nop	
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	dword ptr [rbp - 0x18], eax
	nop	
	cmp	edx, dword ptr [rbp - 0x18]
	jle	.label_2147
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2140
.label_2147:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2142
.label_2140:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_2145
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2145:
	mov	rbp, rbp
	jmp	.label_2142
.label_2142:
	jmp	.label_2143
.label_2148:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_2143:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_2146
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_2146
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_2144
	mov	esi, 2
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	or	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_2141
.label_2144:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], ecx
	mov	edi, dword ptr [rbp - 0x18]
	call	close
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 4]
	nop	
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x18], 0xffffffff
.label_2141:
	jmp	.label_2146
.label_2146:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x423230

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_2149
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_2150
.label_2149:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_2151
.label_2150:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_2151:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4232a0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_2152
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_2152:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x423300

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0xc], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_2153
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_2153
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_2153
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_2155
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_2154
.label_2155:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jmp	.label_2154
.label_2153:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_2154:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x423410

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x40], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_2156
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_2156:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	ja	.label_2157
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_2157
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2157
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x31], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2158
.label_2157:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2158:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x423500

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	cmp	qword ptr [rsi + 8], 0
	nop	
	jl	.label_2159
	mov	rbp, rbp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_2162
.label_2159:
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x16
	nop	
	mov	dword ptr [rbp - 0x14], 0xffffffff
	mov	rsp, rsp
	jmp	.label_2161
.label_2162:
	mov	qword ptr [rbp - 0x10], 0x1fa400
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_2163:
	mov	eax, 0x1fa400
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jge	.label_2164
	lea	rdi, [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0x1fa400
	mov	rsi, qword ptr [rbp - 0x28]
	call	nanosleep
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rsi, 0x1fa400
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	cmp	dword ptr [rbp - 4], 0
	je	.label_2165
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_2160
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
.label_2160:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_2161
.label_2165:
	nop	
	mov	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	jmp	.label_2163
.label_2164:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rbp - 0x28]
	call	nanosleep
	mov	dword ptr [rbp - 0x14], eax
.label_2161:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x423660

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	add	edi, 0xffffd828
	lea	rsi, [rsi]
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_2166
	jmp	.label_2168
.label_2168:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2167
.label_2166:
	lea	rsi, [rsi]
	jmp	.label_2167
.label_2167:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4236c0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], r8
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x40], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 0x50]
	nop	
	and	al, 0xfe
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x423740

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2169
	nop	
	mov	qword ptr [rbp - 0x18], 0x10
.label_2169:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2170
	lea	rsi, [rsi]
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0x20
	nop	
	sub	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x28], rcx
.label_2170:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	call_chunkfun
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_2171
	mov	rbp, rbp
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2171:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsi, 0x10
	sub	rsi, 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rdi, 1
	lea	rsi, [rsi]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	lea	rsi, [rsi]
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rdx, qword ptr [rsi]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], 0
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8b, byte ptr [rdx + 0x50]
	mov	rbp, rbp
	and	r8b, 0xfd
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x50], r8b
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	r8b, byte ptr [rdx + 0x50]
	lea	rdi, [rdi]
	and	r8b, 0xfb
	mov	byte ptr [rdx + 0x50], r8b
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4238d0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 0x28], r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	or	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x50], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	_obstack_begin_worker
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x423960

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x40], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x30]
	add	rsi, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	shr	rdi, 3
	mov	rsp, rsp
	add	rsi, rdi
	add	rsi, 0x64
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 8]
	jae	.label_2172
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_2172:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	jae	.label_2174
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_2174:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	ja	.label_2173
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	ja	.label_2173
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x28], rax
.label_2173:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2175
	nop	
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2175:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	add	rdx, 0x10
	lea	rdi, [rdi]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcpy
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8b, byte ptr [rcx + 0x50]
	shr	r8b, 1
	and	r8b, 1
	movzx	eax, r8b
	cmp	eax, 0
	nop	
	jne	.label_2176
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsi, 0x10
	mov	rsp, rsp
	sub	rsi, 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	add	rsi, qword ptr [rdi + 0x30]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x30]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rcx, rsi
	cmp	rdx, rcx
	jne	.label_2176
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	call	call_freefun
.label_2176:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 0x50]
	and	dl, 0xfd
	mov	byte ptr [rax + 0x50], dl
	add	rsp, 0x50
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x423bf0

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi + 0x50]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	je	.label_2177
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2178
.label_2177:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_2178:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x423c70

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_2179
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	jmp	.label_2180
.label_2179:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
.label_2180:
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x423ce0

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x28], rsi
.label_2184:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 2], cl
	je	.label_2185
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	jae	.label_2183
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	setb	cl
	nop	
	mov	byte ptr [rbp - 1], cl
.label_2183:
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	byte ptr [rbp - 2], al
.label_2185:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 2]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2181
	jmp	.label_2182
.label_2181:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_2184
.label_2182:
	cmp	qword ptr [rbp - 0x28], 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x423db0

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2193:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0xa], cl
	je	.label_2189
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rbp - 9], al
	jae	.label_2190
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	setb	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
.label_2190:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa], al
.label_2189:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xa]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2187
	mov	rbp, rbp
	jmp	.label_2192
.label_2187:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	call_freefun
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x50]
	lea	rsi, [rsi]
	and	cl, 0xfd
	lea	rsi, [rsi]
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
	jmp	.label_2193
.label_2192:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_2191
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	jmp	.label_2186
.label_2191:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_2188
	mov	rbp, rbp
	call	abort
.label_2188:
	jmp	.label_2186
.label_2186:
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x423f10

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
.label_2194:
	nop	
	cmp	qword ptr [rbp - 8], 0
	je	.label_2195
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_2194
.label_2195:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x423f90

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1_9
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	call	gettext
	movabs	rsi, OFFSET FLAT:.str_1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	nop	
	call	exit
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x423ff0
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, esi
	shl	rdi, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	sub	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x424040
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	ecx, esi
	nop	
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 0x10]
	sub	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x424090
	.globl rotl32
	.type rotl32, @function
rotl32:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 8]
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	shr	edi, cl
	lea	rdi, [rdi]
	or	esi, edi
	mov	rbp, rbp
	mov	eax, esi
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4240e0
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	shr	esi, cl
	mov	edi, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 4]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x424120
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	mov	rbp, rbp
	or	rdi, rdx
	mov	rax, rdi
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x424180

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 4]
	mov	edx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	shr	rdi, cl
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsxd	r8, dword ptr [rbp - 4]
	mov	r9, qword ptr [rbp - 0x10]
	sub	r9, r8
	nop	
	mov	rcx, r9
	shl	rdx, cl
	mov	rsp, rsp
	or	rdi, rdx
	mov	rsp, rsp
	mov	rax, rdi
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4241e0
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	lea	rsi, [rsi]
	mov	edi, 0x10
	mov	rsp, rsp
	mov	word ptr [rbp - 6], ax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	movzx	esi, word ptr [rbp - 6]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	shl	esi, cl
	movzx	edx, word ptr [rbp - 6]
	sub	edi, dword ptr [rbp - 4]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x424230
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	ax, di
	lea	rdi, [rdi]
	mov	edi, 0x10
	mov	rsp, rsp
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	sar	esi, cl
	nop	
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	lea	rdi, [rdi]
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x424280
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	mov	rsp, rsp
	mov	edi, 8
	mov	byte ptr [rbp - 5], al
	nop	
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 5]
	mov	ecx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	esi, cl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp - 5]
	mov	rsp, rsp
	sub	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	nop	
	mov	al, sil
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4242e0
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	al, dil
	mov	rsp, rsp
	mov	edi, 8
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	nop	
	mov	ecx, edi
	shl	edx, cl
	lea	rdi, [rdi]
	or	esi, edx
	lea	rsi, [rsi]
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x424330

	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	eax, edi
	lea	rsi, [rsi]
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x10], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jb	.label_2196
	jmp	.label_2197
.label_2197:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x41
	lea	rdi, [rdi]
	sub	eax, 0x1a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jb	.label_2196
	nop	
	jmp	.label_2200
.label_2200:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, -0x61
	sub	eax, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	ja	.label_2199
	jmp	.label_2196
.label_2196:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x15], 1
	lea	rsi, [rsi]
	jmp	.label_2198
.label_2199:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x15], 0
.label_2198:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4243c0

	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	mov	rsp, rsp
	mov	eax, edi
	lea	rsi, [rsi]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0xc], eax
	jb	.label_2201
	nop	
	jmp	.label_2202
.label_2202:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	add	eax, -0x61
	nop	
	sub	eax, 0x19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	rsp, rsp
	ja	.label_2203
	lea	rdi, [rdi]
	jmp	.label_2201
.label_2201:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_2204
.label_2203:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
.label_2204:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x424440
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 4], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2205
	mov	rsp, rsp
	jmp	.label_2207
.label_2207:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_2206
.label_2205:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0
.label_2206:
	nop	
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x424490
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x20
	nop	
	mov	byte ptr [rbp - 5], al
	lea	rdi, [rdi]
	je	.label_2208
	cmp	dword ptr [rbp - 4], 9
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2208:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4244e0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	eax, edi
	mov	rbp, rbp
	sub	edi, 0x20
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x10], edi
	lea	rsi, [rsi]
	jb	.label_2209
	nop	
	jmp	.label_2210
.label_2210:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0xc], eax
	jne	.label_2211
	lea	rsi, [rsi]
	jmp	.label_2209
.label_2209:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_2212
.label_2211:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0
.label_2212:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x424550

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	add	edi, -0x30
	lea	rdi, [rdi]
	sub	edi, 9
	mov	dword ptr [rbp - 4], edi
	nop	
	ja	.label_2213
	jmp	.label_2214
.label_2214:
	mov	byte ptr [rbp - 5], 1
	lea	rdi, [rdi]
	jmp	.label_2215
.label_2213:
	mov	byte ptr [rbp - 5], 0
.label_2215:
	mov	al, byte ptr [rbp - 5]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4245a0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	nop
	push	rbp
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	ja	.label_2217
	lea	rsi, [rsi]
	jmp	.label_2218
.label_2218:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_2216
.label_2217:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
.label_2216:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4245f0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	ja	.label_2219
	jmp	.label_2220
.label_2220:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_2221
.label_2219:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_2221:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	eax, al
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x424640
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	add	edi, -0x20
	nop	
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2222
	jmp	.label_2224
.label_2224:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 1
	jmp	.label_2223
.label_2222:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_2223:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x424690
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x1c], edi
	mov	rsp, rsp
	mov	eax, edi
	add	eax, -0x21
	mov	rsp, rsp
	sub	eax, 0xf
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2226
	jmp	.label_2227
.label_2227:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x3a
	sub	eax, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jb	.label_2226
	nop	
	jmp	.label_2230
.label_2230:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	eax, -0x5b
	mov	rsp, rsp
	sub	eax, 6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_2226
	jmp	.label_2228
.label_2228:
	mov	eax, dword ptr [rbp - 4]
	add	eax, -0x7b
	mov	rsp, rsp
	sub	eax, 3
	mov	dword ptr [rbp - 0xc], eax
	ja	.label_2225
	mov	rsp, rsp
	jmp	.label_2226
.label_2226:
	mov	byte ptr [rbp - 5], 1
	jmp	.label_2229
.label_2225:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 5], 0
.label_2229:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x424740

	.globl c_isspace
	.type c_isspace, @function
c_isspace:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x14], edi
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rbp, rbp
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2231
	mov	rbp, rbp
	jmp	.label_2232
.label_2232:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jne	.label_2234
	mov	rsp, rsp
	jmp	.label_2231
.label_2231:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_2233
.label_2234:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
.label_2233:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4247b0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	nop
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	add	edi, -0x41
	nop	
	sub	edi, 0x19
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	ja	.label_2235
	jmp	.label_2237
.label_2237:
	mov	byte ptr [rbp - 5], 1
	nop	
	jmp	.label_2236
.label_2235:
	mov	byte ptr [rbp - 5], 0
.label_2236:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x424800
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x14], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2238
	lea	rdi, [rdi]
	jmp	.label_2242
.label_2242:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, -0x41
	mov	rbp, rbp
	sub	eax, 6
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jb	.label_2238
	jmp	.label_2239
.label_2239:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	eax, -0x61
	sub	eax, 5
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2241
	jmp	.label_2238
.label_2238:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_2240
.label_2241:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_2240:
	nop	
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x424890

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	lea	rsi, [rsi]
	add	edi, -0x41
	lea	rdi, [rdi]
	sub	edi, 0x19
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	ja	.label_2243
	jmp	.label_2244
.label_2244:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x41
	nop	
	add	eax, 0x61
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_2245
.label_2243:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_2245:
	nop	
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4248e0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	add	edi, -0x61
	nop	
	sub	edi, 0x19
	mov	dword ptr [rbp - 8], edi
	ja	.label_2246
	mov	rbp, rbp
	jmp	.label_2247
.label_2247:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	rsp, rsp
	add	eax, 0x41
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_2248
.label_2246:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_2248:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x424940

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jne	.label_2249
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2250
.label_2249:
	mov	rbp, rbp
	jmp	.label_2252
.label_2252:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x19], cl
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0
	jne	.label_2251
	jmp	.label_2253
.label_2251:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	movzx	ecx, byte ptr [rbp - 0x1a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_2252
.label_2253:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2250:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424a30

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	__fpending
	cmp	rax, 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x16], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x15], cl
	nop	
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jne	.label_2256
	test	byte ptr [rbp - 0x15], 1
	je	.label_2255
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_2256
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_2255
.label_2256:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_2254
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2254:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_2257
.label_2255:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_2257:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x424b10

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	movsd	xmm1,  qword ptr [word ptr [label_2258]]
	movsd	qword ptr [rbp - 8], xmm0
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	ucomisd	xmm0, xmm1
	mov	rsp, rsp
	ja	.label_2259
	lea	rdi, [rdi]
	movabs	rdi, 0x8000000000000000
	xor	eax, eax
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	jmp	.label_2260
.label_2259:
	movsd	xmm0,  qword ptr [word ptr [label_248]]
	ucomisd	xmm0, qword ptr [rbp - 8]
	ja	.label_2263
	lea	rdi, [rdi]
	movabs	rdi, 0x7fffffffffffffff
	mov	eax, 0x3b9ac9ff
	nop	
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	jmp	.label_2260
.label_2263:
	lea	rsi, [rsi]
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	nop	
	movsd	xmm0,  qword ptr [word ptr [label_2261]]
	cvttsd2si	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	movsd	xmm1, qword ptr [rbp - 8]
	cvtsi2sd	xmm2, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	subsd	xmm1, xmm2
	mulsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x30], xmm0
	lea	rsi, [rsi]
	cvttsd2si	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdx
	cvtsi2sd	xmm0, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsd	xmm1, qword ptr [rbp - 0x30]
	ucomisd	xmm1, xmm0
	nop	
	seta	sil
	lea	rsi, [rsi]
	and	sil, 1
	mov	rsp, rsp
	movzx	eax, sil
	nop	
	movsxd	rdx, eax
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cqo	
	mov	rbp, rbp
	idiv	rcx
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_2262
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x3b9aca00
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_2262:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	make_timespec
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
.label_2260:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424cc0

	.globl fd_safer_flag
	.type fd_safer_flag, @function
fd_safer_flag:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], edi
	mov	dword ptr [rbp - 0x10], esi
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	jg	.label_2264
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 2
	lea	rsi, [rsi]
	jg	.label_2264
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x14]
	mov	esi, dword ptr [rbp - 0x10]
	call	dup_safer_flag
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rdi, [rdi]
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	call	close
	mov	esi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	dword ptr [rbp - 0x18], esi
	call	__errno_location
	mov	esi, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14], esi
.label_2264:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x424d50

	.globl dup_safer_flag
	.type dup_safer_flag, @function
dup_safer_flag:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 0x406
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	nop	
	and	esi, 0x80000
	lea	rsi, [rsi]
	cmp	esi, 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	mov	esi, eax
	mov	al, 0
	call	rpl_fcntl
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x424da0

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	call	fopen
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2266
	mov	rdi, qword ptr [rbp - 0x28]
	call	fileno
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x34]
	jg	.label_2268
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jg	.label_2268
	mov	edi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	call	dup_safer
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	jge	.label_2265
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_2267
.label_2265:
	mov	rdi, qword ptr [rbp - 0x28]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_2269
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	fdopen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_2270
.label_2269:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], ecx
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	dword ptr [rbp - 0x10], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	nop	
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_2267
.label_2270:
	jmp	.label_2268
.label_2268:
	jmp	.label_2266
.label_2266:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
.label_2267:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x424f20

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	edi, 0xe
	lea	rdi, [rdi]
	call	rpl_nl_langinfo
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2272
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_2272:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_2271
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_13
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2271:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x424fa0

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x20]
	jne	.label_2273
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	nop	
	cmp	eax, 0
	jne	.label_2273
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	jmp	.label_2274
.label_2273:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x21], dl
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], dl
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, 1
	mov	rsi, rax
	call	strcoll_loop
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	r8b, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + rcx], r8b
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 9]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rcx], r8b
.label_2274:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4250c0

	.globl strcoll_loop
	.type strcoll_loop, @function
strcoll_loop:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
.label_2281:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	strcoll
	lea	rsi, [rsi]
	mov	cl, 1
	mov	dword ptr [rbp - 0x20], eax
	cmp	eax, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_2275
	mov	rbp, rbp
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0
	setne	cl
	mov	byte ptr [rbp - 0x19], cl
.label_2275:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	xor	al, 0xff
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_2279
	jmp	.label_2276
.label_2279:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	sub	rdi, rax
	mov	qword ptr [rbp - 0x40], rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	sub	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_2280
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_2277
.label_2280:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jne	.label_2278
	mov	dword ptr [rbp - 0x2c], 1
	mov	rbp, rbp
	jmp	.label_2277
.label_2278:
	mov	rsp, rsp
	jmp	.label_2281
.label_2276:
	mov	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
.label_2277:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x425230

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rbp - 0x10]
	nop	
	jne	.label_2282
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	call	memcmp
	cmp	eax, 0
	jne	.label_2282
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	dword ptr [rbp - 0x24], 0
	lea	rdi, [rdi]
	jmp	.label_2283
.label_2282:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	call	strcoll_loop
	mov	dword ptr [rbp - 0x24], eax
.label_2283:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4252d0

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	movups	xmm0, xmmword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x425320
	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rbp - 0x10]
	jge	.label_2284
	nop	
	mov	dword ptr [rbp - 0x14], 0xffffffff
	mov	rsp, rsp
	jmp	.label_2286
.label_2284:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jle	.label_2288
	nop	
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_2286
.label_2288:
	mov	rax, -1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_2287
	cmp	qword ptr [rbp - 0x20], 0x77359400
	jg	.label_2287
	mov	rbp, rbp
	jmp	.label_2287
.label_2287:
	mov	rax, -1
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	jg	.label_2285
	cmp	qword ptr [rbp - 8], 0x77359400
	lea	rsi, [rsi]
	jg	.label_2285
	lea	rdi, [rdi]
	jmp	.label_2285
.label_2285:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
.label_2286:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4253f0
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jge	.label_2289
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_2291
.label_2289:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	jne	.label_2290
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 1], al
.label_2290:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], ecx
.label_2291:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x425460
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [label_2261]]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	cvtsi2sd	xmm1, qword ptr [rbp - 0x10]
	cvtsi2sd	xmm2, qword ptr [rbp - 8]
	divsd	xmm2, xmm0
	addsd	xmm1, xmm2
	mov	rsp, rsp
	movaps	xmm0, xmm1
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4254a0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	mov	edx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x425590

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section .text
	.align	16
	#Procedure 0x4255a0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat