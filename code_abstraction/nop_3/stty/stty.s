	.section	.text
	.align	32
	#Procedure 0x401880

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
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
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
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
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
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
	mov	rbx, rax
	cmp	dword ptr [dword ptr [rip + tcsetattr_options]],  1
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	jmp	.label_10
.label_8:
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
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
.label_10:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.67
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.77
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.79
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.85
	mov	ecx, OFFSET FLAT:.str.86
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.88
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.89
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.91
	mov	ecx, OFFSET FLAT:.str.92
	mov	r8d, OFFSET FLAT:.str.93
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.120
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_7
	mov	esi, OFFSET FLAT:.str.122
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.123
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.124
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.95
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.125
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.95
	mov	ecx, OFFSET FLAT:.str.126
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402490

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r13, rsi
	mov	dword ptr [rsp + 0x30], edi
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.97
	mov	esi, OFFSET FLAT:.str.98
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.97
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [dword ptr [rip + opterr]],  0
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	mov	ebp, 1
	mov	al, 1
	mov	dword ptr [rsp + 0x2c], eax
	mov	ebx, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r15d, r15d
	xor	r14d, r14d
	jmp	.label_74
.label_43:
	mov	ebp, r14d
	mov	r14d, dword ptr [rsp + 0x14]
.label_74:
	mov	edi, dword ptr [rsp + 0x30]
	sub	edi, r15d
	movsxd	rax, r15d
	lea	rsi, [r13 + rax*8]
	mov	edx, OFFSET FLAT:.str.99
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x45
	jg	.label_87
	cmp	eax, -1
	je	.label_88
	cmp	eax, 0xffffff7d
	je	.label_89
	cmp	eax, 0xffffff7e
	jne	.label_90
	jmp	.label_94
	nop	
.label_87:
	cmp	eax, 0x46
	je	.label_96
	cmp	eax, 0x61
	je	.label_99
	cmp	eax, 0x67
	jne	.label_90
	mov	r14d, 2
	mov	bl, 1
	jmp	.label_100
	nop	dword ptr [rax]
.label_90:
	add	r15d, ebp
	movsxd	rax, r15d
	mov	rbp, qword ptr [r13 + rax*8]
	mov	esi, OFFSET FLAT:.str.103
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_109
	mov	esi, OFFSET FLAT:.str.104
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_109
	mov	dword ptr [rsp + 0x2c], 0
.label_109:
	mov	dword ptr [dword ptr [rip + optind]],  0
	mov	ebp, 1
	jmp	.label_100
.label_96:
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_115
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_100
.label_99:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	r14d, 1
.label_100:
	movsxd	r12,  dword ptr [dword ptr [rip + optind]]
	cmp	ebp, r12d
	jge	.label_74
	mov	dword ptr [rsp + 0x14], r14d
	movsxd	r14, ebp
	movsxd	rax, r15d
	add	rax, r14
	lea	rdi, [r13 + rax*8]
	lea	rdx, [r14 + 1]
	cmp	rdx, r12
	cmovl	rdx, r12
	sub	rdx, r14
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	ecx, r12d
	sub	ecx, ebp
	lea	rax, [r12 - 1]
	sub	rax, r14
	test	cl, 7
	je	.label_31
	mov	cl, r12b
	sub	cl, bpl
	movzx	ecx, cl
	and	ecx, 7
	neg	rcx
	nop	word ptr [rax + rax]
.label_40:
	inc	r14
	inc	rcx
	jne	.label_40
.label_31:
	cmp	rax, 7
	jb	.label_43
	nop	word ptr cs:[rax + rax]
.label_51:
	add	r14, 8
	cmp	r14, r12
	jl	.label_51
	jmp	.label_43
.label_88:
	mov	al, bl
	mov	r12, qword ptr [rsp + 0x18]
	and	al, r12b
	test	al, 1
	jne	.label_54
	mov	eax, dword ptr [rsp + 0x2c]
	test	al, 1
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_97
	mov	al, r12b
	or	al, bl
	and	al, 1
	jne	.label_60
.label_97:
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_63
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
.label_63:
	mov	eax, dword ptr [rsp + 0x2c]
	or	bl, al
	or	bl, r12b
	and	bl, 1
	jne	.label_68
	lea	rax, [rsp + 0x37]
	mov	qword ptr [rsp], rax
	lea	r9, [rsp + 0x36]
	mov	edi, 1
	mov	r8d, OFFSET FLAT:main.check_mode
	mov	rsi, r15
	mov	rdx, r13
	mov	ecx, dword ptr [rsp + 0x30]
	call	apply_settings
.label_68:
	test	rbp, rbp
	je	.label_78
	xor	edi, edi
	mov	edx, 0x800
	xor	ecx, ecx
	mov	rsi, r15
	call	fd_reopen
	test	eax, eax
	js	.label_80
	xor	edi, edi
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	cmp	ecx, -1
	je	.label_83
	and	ecx, 0xfffff7ff
	xor	edi, edi
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	test	eax, eax
	js	.label_83
.label_78:
	xor	edi, edi
	mov	esi, OFFSET FLAT:main.mode
	call	tcgetattr
	test	eax, eax
	jne	.label_80
	test	bl, bl
	jne	.label_46
	mov	byte ptr [rsp + 0x36], 0
	mov	byte ptr [rsp + 0x37], 0
	lea	rax, [rsp + 0x37]
	mov	qword ptr [rsp], rax
	lea	r9, [rsp + 0x36]
	xor	edi, edi
	mov	r8d, OFFSET FLAT:main.mode
	mov	rsi, r15
	mov	rdx, r13
	mov	ecx, dword ptr [rsp + 0x30]
	call	apply_settings
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_22
	mov	esi,  dword ptr [dword ptr [rip + tcsetattr_options]]
	xor	edi, edi
	mov	edx, OFFSET FLAT:main.mode
	call	tcsetattr
	test	eax, eax
	jne	.label_80
	xor	edi, edi
	mov	esi, OFFSET FLAT:main.new_mode
	call	tcgetattr
	test	eax, eax
	jne	.label_80
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	call	memcmp
	test	eax, eax
	je	.label_22
	and	dword ptr [dword ptr [rip + label_105]],  0xeff0ffff
	cmp	byte ptr [rsp + 0x36], 0
	jne	.label_106
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	call	memcmp
	test	eax, eax
	je	.label_22
.label_106:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_46:
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	jne	.label_49
	movzx	eax, word ptr [rsp + 0x42]
	test	eax, eax
	jne	.label_50
.label_49:
	mov	edi, OFFSET FLAT:.str.297
	call	getenv
	test	rax, rax
	je	.label_55
	lea	rcx, [rsp + 0x38]
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rax
	call	xstrtol
	test	eax, eax
	jne	.label_55
	mov	rax, qword ptr [rsp + 0x38]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_50
.label_55:
	mov	qword ptr [rsp + 0x38], 0x50
	mov	eax, 0x50
.label_50:
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	mov	dword ptr [dword ptr [rip + current_col]],  0
	cmp	r14d, 2
	je	.label_58
	cmp	r14d, 1
	je	.label_73
	test	r14d, r14d
	jne	.label_22
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	call	display_speed
	movzx	esi,  byte ptr [byte ptr [rip + label_76]]
	mov	edi, OFFSET FLAT:.str.298
	xor	eax, eax
	call	wrapf
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_79
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_93:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	r14b, 1
	mov	ebp, OFFSET FLAT:label_81
	jmp	.label_86
	nop	word ptr cs:[rax + rax]
.label_13:
	add	rbp, 0x18
.label_86:
	mov	r15, qword ptr [rbp - 0x10]
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x6d
	jne	.label_35
	movzx	eax, byte ptr [r15 + 1]
	cmp	eax, 0x69
	jne	.label_35
	movzx	eax, byte ptr [r15 + 2]
	cmp	eax, 0x6e
	jne	.label_35
	cmp	byte ptr [r15 + 3], 0
	je	.label_66
.label_35:
	mov	rax, qword ptr [rbp]
	movzx	ebx,  byte ptr [byte ptr [rax + label_41]]
	movzx	eax, byte ptr [rbp - 8]
	cmp	ebx, eax
	je	.label_13
	mov	esi, OFFSET FLAT:.str.248
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_13
	test	bl, bl
	mov	edx, OFFSET FLAT:.str.302
	je	.label_112
	movzx	eax, bl
	cmp	eax, 0x20
	jb	.label_18
	cmp	eax, 0x7e
	ja	.label_57
	mov	byte ptr [byte ptr [rip + visible.buf]],  bl
	mov	eax, OFFSET FLAT:label_111
	jmp	.label_29
.label_18:
	mov	byte ptr [byte ptr [rip + visible.buf]],  0x5e
	add	bl, 0x40
	mov	byte ptr [byte ptr [rip + label_111]],  bl
	jmp	.label_116
.label_57:
	cmp	eax, 0x7f
	jne	.label_118
	mov	word ptr [word ptr [rip + visible.buf]],  0x3f5e
.label_116:
	mov	eax, OFFSET FLAT:label_24
.label_29:
	mov	byte ptr [rax], 0
	mov	edx, OFFSET FLAT:visible.buf
.label_112:
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:.str.299
	xor	eax, eax
	mov	rsi, r15
	call	wrapf
	jmp	.label_13
.label_118:
	mov	word ptr [word ptr [rip + visible.buf]],  0x2d4d
	cmp	eax, 0xa0
	jb	.label_16
	cmp	eax, 0xff
	je	.label_28
	xor	bl, 0x80
	mov	byte ptr [byte ptr [rip + label_24]],  bl
	mov	eax, OFFSET FLAT:label_25
	jmp	.label_29
.label_16:
	mov	byte ptr [byte ptr [rip + label_24]],  0x5e
	add	bl, 0xc0
	mov	byte ptr [byte ptr [rip + label_25]],  bl
	mov	eax, OFFSET FLAT:label_26
	jmp	.label_29
.label_28:
	mov	word ptr [word ptr [rip + label_24]],  0x3f5e
	mov	eax, OFFSET FLAT:label_26
	jmp	.label_29
.label_58:
	mov	edx,  dword ptr [dword ptr [rip + main.mode]]
	mov	ecx,  dword ptr [dword ptr [rip + label_44]]
	mov	r8d,  dword ptr [dword ptr [rip + label_45]]
	mov	r9d,  dword ptr [dword ptr [rip + label_33]]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.304
	xor	eax, eax
	call	__printf_chk
	mov	rbx, -0x20
	nop	dword ptr [rax + rax]
.label_62:
	movzx	edx,  byte ptr [byte ptr [rbx + label_59]]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.305
	xor	eax, eax
	call	__printf_chk
	inc	rbx
	jne	.label_62
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_64
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_22
.label_73:
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	call	display_speed
	mov	edi, 1
	mov	rsi, r15
	call	display_window_size
	movzx	esi,  byte ptr [byte ptr [rip + label_76]]
	mov	edi, OFFSET FLAT:.str.298
	xor	eax, eax
	call	wrapf
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_14
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_91:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	ebp, OFFSET FLAT:label_81
	jmp	.label_82
	nop	word ptr cs:[rax + rax]
.label_103:
	add	rbp, 0x18
.label_82:
	mov	rbx, qword ptr [rbp - 0x10]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x6d
	jne	.label_23
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x69
	jne	.label_23
	movzx	eax, byte ptr [rbx + 2]
	cmp	eax, 0x6e
	jne	.label_23
	cmp	byte ptr [rbx + 3], 0
	je	.label_98
	nop	dword ptr [rax]
.label_23:
	mov	esi, OFFSET FLAT:.str.248
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_103
	mov	rax, qword ptr [rbp]
	mov	al,  byte ptr [byte ptr [rax + label_41]]
	test	al, al
	mov	edx, OFFSET FLAT:.str.302
	je	.label_104
	movzx	ecx, al
	cmp	ecx, 0x20
	jb	.label_107
	cmp	ecx, 0x7e
	ja	.label_110
	mov	byte ptr [byte ptr [rip + visible.buf]],  al
	mov	eax, OFFSET FLAT:label_111
	jmp	.label_27
.label_107:
	mov	byte ptr [byte ptr [rip + visible.buf]],  0x5e
	add	al, 0x40
	mov	byte ptr [byte ptr [rip + label_111]],  al
	jmp	.label_113
.label_110:
	cmp	ecx, 0x7f
	jne	.label_114
	mov	word ptr [word ptr [rip + visible.buf]],  0x3f5e
	nop	dword ptr [rax]
.label_113:
	mov	eax, OFFSET FLAT:label_24
.label_27:
	mov	byte ptr [rax], 0
	mov	edx, OFFSET FLAT:visible.buf
.label_104:
	mov	edi, OFFSET FLAT:.str.299
	xor	eax, eax
	mov	rsi, rbx
	call	wrapf
	jmp	.label_103
.label_114:
	mov	word ptr [word ptr [rip + visible.buf]],  0x2d4d
	cmp	ecx, 0xa0
	jb	.label_121
	cmp	ecx, 0xff
	je	.label_17
	xor	al, 0x80
	mov	byte ptr [byte ptr [rip + label_24]],  al
	mov	eax, OFFSET FLAT:label_25
	jmp	.label_27
.label_121:
	mov	byte ptr [byte ptr [rip + label_24]],  0x5e
	add	al, 0xc0
	mov	byte ptr [byte ptr [rip + label_25]],  al
	mov	eax, OFFSET FLAT:label_26
	jmp	.label_27
.label_17:
	mov	word ptr [word ptr [rip + label_24]],  0x3f5e
	mov	eax, OFFSET FLAT:label_26
	jmp	.label_27
.label_66:
	test	byte ptr [byte ptr [rip + label_33]],  2
	jne	.label_34
	movzx	esi,  byte ptr [byte ptr [rip + label_36]]
	movzx	edx,  byte ptr [byte ptr [rip + label_37]]
	mov	edi, OFFSET FLAT:.str.300
	xor	eax, eax
	call	wrapf
	jmp	.label_38
.label_98:
	movzx	esi,  byte ptr [byte ptr [rip + label_36]]
	movzx	edx,  byte ptr [byte ptr [rip + label_37]]
	mov	edi, OFFSET FLAT:.str.303
	xor	eax, eax
	call	wrapf
	cmp	dword ptr [dword ptr [rip + current_col]],  0
	je	.label_77
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_56
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_77:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	rbx, -0xb20
	xor	r15d, r15d
	jmp	.label_61
.label_34:
	test	r14b, 1
	jne	.label_38
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_67
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_38:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	xor	eax, eax
	mov	r14b, 1
	mov	rbx, -0xb20
	jmp	.label_72
.label_85:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_32
	nop	word ptr [rax + rax]
.label_61:
	mov	r14b,  byte ptr [byte ptr [rbx + label_47]]
	test	r14b, 8
	jne	.label_48
	mov	ebp,  dword ptr [dword ptr [rbx + label_69]]
	cmp	ebp, r15d
	je	.label_70
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_85
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_32:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	r15d, ebp
.label_70:
	cmp	r15d, 5
	jae	.label_92
	mov	rax,  qword ptr [word ptr [rbx + label_20]]
	test	rax, rax
	jne	.label_95
	mov	rax,  qword ptr [word ptr [rbx + label_11]]
.label_95:
	cmp	r15d, 4
	je	.label_71
	movsxd	rcx, r15d
	mov	rcx,  qword ptr [word ptr [+ (rcx * 8) + label_52]]
	mov	ecx, dword ptr [rcx]
	and	rcx, rax
	cmp	rcx,  qword ptr [word ptr [rbx + label_11]]
	jne	.label_102
	mov	rsi,  qword ptr [word ptr [rbx + label_65]]
	mov	edi, OFFSET FLAT:.str_1
	jmp	.label_108
	nop	word ptr cs:[rax + rax]
.label_102:
	test	r14b, 4
	je	.label_48
	mov	rsi,  qword ptr [word ptr [rbx + label_65]]
	mov	edi, OFFSET FLAT:.str.301
.label_108:
	xor	eax, eax
	call	wrapf
.label_48:
	add	rbx, 0x20
	jne	.label_61
	jmp	.label_117
.label_30:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_119
	nop	word ptr cs:[rax + rax]
.label_72:
	movsx	r15d,  byte ptr [byte ptr [rbx + label_47]]
	test	r15b, 8
	jne	.label_120
	mov	ebp,  dword ptr [dword ptr [rbx + label_69]]
	cmp	ebp, eax
	jne	.label_122
	mov	ebp, eax
	jmp	.label_15
	nop	dword ptr [rax]
.label_120:
	mov	ebp, eax
	jmp	.label_19
	nop	word ptr [rax + rax]
.label_122:
	test	r14b, 1
	jne	.label_15
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_30
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_119:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	r14b, 1
.label_15:
	cmp	ebp, 5
	jae	.label_39
	mov	rax,  qword ptr [word ptr [rbx + label_20]]
	test	rax, rax
	jne	.label_21
	mov	rax,  qword ptr [word ptr [rbx + label_11]]
.label_21:
	cmp	ebp, 4
	je	.label_12
	movsxd	rcx, ebp
	mov	rcx,  qword ptr [word ptr [+ (rcx * 8) + label_52]]
	mov	ecx, dword ptr [rcx]
	and	rcx, rax
	cmp	rcx,  qword ptr [word ptr [rbx + label_11]]
	jne	.label_53
	test	r15b, 2
	je	.label_19
	mov	rsi,  qword ptr [word ptr [rbx + label_65]]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:.str_1
	jmp	.label_101
	nop	word ptr cs:[rax + rax]
.label_53:
	and	r15d, 5
	cmp	r15d, 5
	jne	.label_19
	mov	rsi,  qword ptr [word ptr [rbx + label_65]]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:.str.301
.label_101:
	xor	eax, eax
	call	wrapf
.label_19:
	add	rbx, 0x20
	mov	eax, ebp
	jne	.label_72
	test	r14b, 1
	jne	.label_84
.label_117:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_75
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_84:
	mov	dword ptr [dword ptr [rip + current_col]],  0
.label_22:
	xor	eax, eax
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_75:
	mov	esi, 0xa
	call	__overflow
	mov	dword ptr [dword ptr [rip + current_col]],  0
	jmp	.label_22
.label_79:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_93
.label_64:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_22
.label_14:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_91
.label_56:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_77
.label_67:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_38
.label_89:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.95
	mov	edx, OFFSET FLAT:.str.17_0
	mov	r8d, OFFSET FLAT:.str.102
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_94:
	xor	edi, edi
	call	usage
.label_80:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_92:
	call	abort
.label_71:
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	mov	edx, 0x7f6
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.display_all
	call	__assert_fail
.label_39:
	call	abort
.label_12:
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	mov	edx, 0x7a2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.display_changed
	call	__assert_fail
.label_83:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.105
	jmp	.label_42
.label_60:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	jmp	.label_42
.label_115:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
.label_42:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403090

	.globl apply_settings
	.type apply_settings, @function
apply_settings:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x58], r8
	mov	qword ptr [rsp + 0x68], rcx
	mov	qword ptr [rsp + 0x70], rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	dword ptr [rsp + 0x34], edi
	cmp	ecx, 2
	jl	.label_152
	lea	rax, [r8 + 8]
	mov	qword ptr [rsp + 0x50], rax
	lea	rax, [r8 + 4]
	mov	qword ptr [rsp + 0x38], rax
	lea	rax, [r8 + 0xc]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 0x68]
	lea	eax, [rax - 1]
	mov	dword ptr [rsp + 0x4c], eax
	mov	r15d, 1
	jmp	.label_137
.label_183:
	mov	rcx, qword ptr [rsp + 0x50]
	mov	eax, dword ptr [rcx]
	cmp	ebx, 0x2d
	jne	.label_177
.label_201:
	and	eax, 0xfffffecf
	or	eax, 0x30
	mov	dword ptr [rcx], eax
	jmp	.label_181
.label_187:
	movzx	eax, byte ptr [r13 + 1]
	cmp	eax, 0x6b
	jne	.label_188
	cmp	byte ptr [r13 + 2], 0
	je	.label_192
.label_188:
	mov	esi, OFFSET FLAT:.str.220
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_206
	mov	esi, OFFSET FLAT:.str.225
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_204
	mov	esi, OFFSET FLAT:.str.223
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_207
	mov	esi, OFFSET FLAT:.str.224
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_208
	movzx	ebp, bpl
	cmp	ebp, 0x72
	jne	.label_210
	movzx	eax, byte ptr [r13 + 1]
	cmp	eax, 0x61
	jne	.label_210
	movzx	eax, byte ptr [r13 + 2]
	cmp	eax, 0x77
	jne	.label_210
	cmp	byte ptr [r13 + 3], 0
	je	.label_216
.label_210:
	mov	esi, OFFSET FLAT:.str.221
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_216
	mov	esi, OFFSET FLAT:.str.226
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_220
	mov	esi, OFFSET FLAT:.str.227
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_224
	mov	esi, OFFSET FLAT:.str.228
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_125
	mov	esi, OFFSET FLAT:.str.229
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_125
	mov	al, 1
	cmp	ebp, 0x64
	je	.label_128
	cmp	ebp, 0x63
	jne	.label_132
	movzx	ecx, byte ptr [r13 + 1]
	cmp	ecx, 0x72
	jne	.label_132
	movzx	ecx, byte ptr [r13 + 2]
	cmp	ecx, 0x74
	jne	.label_132
	cmp	byte ptr [r13 + 3], 0
	jne	.label_132
	mov	rcx, qword ptr [rsp + 0x40]
	or	dword ptr [rcx], 0xa10
	jmp	.label_132
.label_206:
	mov	r13, qword ptr [rsp + 0x58]
	mov	byte ptr [r13 + 0x1c], 0
	mov	byte ptr [r13 + 0x21], 0
	mov	word ptr [r13 + 0x19], 0x1311
	mov	byte ptr [r13 + 0x1b], 0x1a
	mov	byte ptr [r13 + 0x1d], 0x12
	mov	byte ptr [r13 + 0x1f], 0x17
	mov	byte ptr [r13 + 0x20], 0x16
	mov	byte ptr [r13 + 0x1e], 0xf
	movabs	rax, 0x10004157f1c03
	mov	qword ptr [r13 + 0x11], rax
	mov	rcx, -0xb20
	nop	word ptr cs:[rax + rax]
.label_209:
	movsx	eax,  byte ptr [byte ptr [rcx + label_47]]
	test	al, 0x10
	jne	.label_155
	test	al, 1
	jne	.label_163
	test	al, 2
	je	.label_155
	mov	edx,  dword ptr [dword ptr [rcx + label_69]]
	cmp	rdx, 4
	ja	.label_165
	mov	rax, qword ptr [rsp + 0x50]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_171]]
.label_644:
	test	r13, r13
	mov	rax, r13
	jne	.label_175
	jmp	.label_176
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	edx,  dword ptr [dword ptr [rcx + label_69]]
	cmp	rdx, 4
	ja	.label_214
	mov	rax, qword ptr [rsp + 0x50]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_185]]
.label_673:
	test	r13, r13
	mov	rax, r13
	jne	.label_190
	jmp	.label_193
.label_674:
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_190
.label_675:
	mov	rax, qword ptr [rsp + 0x40]
.label_190:
	mov	edx,  dword ptr [dword ptr [rcx + label_20]]
	mov	esi, 0xffffffff
	xor	edx, esi
	and	edx, dword ptr [rax]
	or	edx,  dword ptr [dword ptr [rcx + label_11]]
	mov	dword ptr [rax], edx
	jmp	.label_155
.label_645:
	mov	rax, qword ptr [rsp + 0x38]
	jmp	.label_175
.label_646:
	mov	rax, qword ptr [rsp + 0x40]
.label_175:
	mov	edx,  dword ptr [dword ptr [rcx + label_20]]
	mov	ebp, 0xffffffff
	xor	edx, ebp
	and	edx, dword ptr [rax]
	mov	esi,  dword ptr [dword ptr [rcx + label_11]]
	xor	esi, ebp
	and	esi, edx
	mov	dword ptr [rax], esi
	nop	word ptr cs:[rax + rax]
.label_155:
	add	rcx, 0x20
	mov	al, 1
	jne	.label_209
	jmp	.label_124
.label_177:
	and	eax, 0xfffffccf
	or	eax, 0x320
	mov	dword ptr [rcx], eax
	jmp	.label_181
.label_204:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rcx]
	cmp	ebx, 0x2d
	mov	r13, qword ptr [rsp + 0x58]
	jne	.label_221
	or	eax, 2
	jmp	.label_196
.label_207:
	mov	rax, qword ptr [rsp + 0x50]
	mov	eax, dword ptr [rax]
	mov	ecx, 0xfffffecf
	and	eax, ecx
	cmp	ebx, 0x2d
	jne	.label_195
	or	eax, 0x120
	mov	r13, qword ptr [rsp + 0x58]
	mov	dword ptr [r13 + 8], eax
	or	byte ptr [r13], 0x20
	mov	al, 1
	jmp	.label_124
.label_221:
	and	eax, 0xfffffffd
.label_196:
	mov	dword ptr [rcx], eax
	mov	al, 1
	jmp	.label_124
.label_208:
	mov	rax, qword ptr [rsp + 0x50]
	mov	eax, dword ptr [rax]
	mov	ecx, 0xfffffecf
	and	eax, ecx
	cmp	ebx, 0x2d
	jne	.label_226
	or	eax, 0x120
	mov	r13, qword ptr [rsp + 0x58]
	mov	dword ptr [r13 + 8], eax
	or	byte ptr [r13], 0x20
	or	byte ptr [r13 + 4], 1
	mov	al, 1
	jmp	.label_124
.label_195:
	or	eax, 0x30
	mov	r13, qword ptr [rsp + 0x58]
	mov	dword ptr [r13 + 8], eax
	and	byte ptr [r13], 0xdf
	mov	al, 1
	jmp	.label_124
.label_192:
	mov	r13, qword ptr [rsp + 0x58]
	mov	word ptr [r13 + 0x13], 0x157f
	mov	al, 1
	jmp	.label_124
.label_216:
	cmp	ebp, 0x72
	setne	cl
	cmp	ebx, 0x2d
	sete	al
	setne	dl
	or	dl, cl
	cmp	ebp, 0x63
	setne	cl
	movzx	edx, dl
	cmp	edx, 1
	mov	r13, qword ptr [rsp + 0x58]
	jne	.label_148
	or	al, cl
	je	.label_148
	mov	dword ptr [r13], 0
	and	byte ptr [r13 + 4], 0xfe
	and	byte ptr [r13 + 0xc], 0xf8
	mov	word ptr [r13 + 0x16], 0x100
	mov	al, 1
	jmp	.label_124
.label_226:
	or	eax, 0x30
	mov	r13, qword ptr [rsp + 0x58]
	mov	dword ptr [r13 + 8], eax
	and	byte ptr [r13], 0xdf
	and	byte ptr [r13 + 4], 0xfe
	mov	al, 1
	jmp	.label_124
.label_203:
	and	eax, 0xfffffeff
	mov	dword ptr [r13], eax
	and	byte ptr [r13 + 4], 0xfb
	mov	al, 1
	jmp	.label_124
.label_220:
	mov	r13, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [r13]
	cmp	ebx, 0x2d
	jne	.label_166
	or	eax, 0x800
	jmp	.label_170
.label_148:
	or	dword ptr [r13], 0x526
	or	byte ptr [r13 + 4], 1
	or	byte ptr [r13 + 0xc], 3
	mov	al, 1
	jmp	.label_124
.label_125:
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax]
	cmp	ebx, 0x2d
	jne	.label_178
	and	eax, 0xfffffffb
	mov	r13, qword ptr [rsp + 0x58]
	mov	dword ptr [r13 + 0xc], eax
	and	byte ptr [r13 + 1], 0xfd
	and	byte ptr [r13 + 4], 0xfd
	mov	al, 1
	jmp	.label_124
.label_224:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rcx]
	cmp	ebx, 0x2d
	mov	r13, qword ptr [rsp + 0x58]
	jne	.label_168
	or	eax, 0x1800
	jmp	.label_196
.label_166:
	and	eax, 0xfffff7ff
.label_170:
	mov	dword ptr [r13], eax
	mov	al, 1
	jmp	.label_124
.label_178:
	or	eax, 4
	mov	r13, qword ptr [rsp + 0x58]
	mov	dword ptr [r13 + 0xc], eax
	or	byte ptr [r13 + 1], 2
	or	byte ptr [r13 + 4], 2
	mov	al, 1
	jmp	.label_124
.label_168:
	and	eax, 0xffffe7ff
	jmp	.label_196
.label_128:
	movzx	ecx, byte ptr [r13 + 1]
	cmp	ecx, 0x65
	jne	.label_132
	movzx	ecx, byte ptr [r13 + 2]
	cmp	ecx, 0x63
	jne	.label_132
	cmp	byte ptr [r13 + 3], 0
	jne	.label_132
	mov	r13, qword ptr [rsp + 0x58]
	mov	byte ptr [r13 + 0x11], 3
	mov	byte ptr [r13 + 0x13], 0x7f
	mov	byte ptr [r13 + 0x14], 0x15
	or	dword ptr [r13 + 0xc], 0xa10
	and	byte ptr [r13 + 1], 0xf7
	jmp	.label_124
.label_169:
	cmp	r15d, dword ptr [rsp + 0x4c]
	je	.label_134
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r12, qword ptr [rax + rcx*8 + 8]
	test	r12, r12
	je	.label_134
	inc	r15d
	mov	eax, dword ptr [rsp + 0x34]
	test	al, al
	mov	ebp, OFFSET FLAT:speeds
	mov	ebx, 0
	jne	.label_138
.label_223:
	mov	rsi, qword ptr [rbp]
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_139
	inc	rbx
	add	rbp, 0x18
	mov	esi, 0xffffffff
	cmp	rbx, 0x22
	jne	.label_223
	jmp	.label_131
.label_140:
	cmp	r15d, dword ptr [rsp + 0x4c]
	je	.label_134
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r12, qword ptr [rax + rcx*8 + 8]
	test	r12, r12
	je	.label_134
	inc	r15d
	mov	eax, dword ptr [rsp + 0x34]
	test	al, al
	mov	ebp, OFFSET FLAT:speeds
	mov	ebx, 0
	jne	.label_138
.label_149:
	mov	rsi, qword ptr [rbp]
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_147
	inc	rbx
	add	rbp, 0x18
	mov	esi, 0xffffffff
	cmp	rbx, 0x22
	jne	.label_149
	jmp	.label_151
.label_146:
	cmp	r15d, dword ptr [rsp + 0x4c]
	je	.label_134
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rax + rcx*8 + 8]
	test	rbp, rbp
	je	.label_134
	inc	r15d
	mov	eax, dword ptr [rsp + 0x34]
	test	al, al
	jne	.label_138
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.255
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0x7fffffff
	mov	r8d, OFFSET FLAT:.str.254
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	mov	edi, 0xffffffff
	mov	esi, eax
	jmp	.label_217
.label_143:
	cmp	r15d, dword ptr [rsp + 0x4c]
	je	.label_134
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rax + rcx*8 + 8]
	test	rbp, rbp
	je	.label_134
	inc	r15d
	mov	eax, dword ptr [rsp + 0x34]
	test	al, al
	jne	.label_138
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.255
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0x7fffffff
	mov	r8d, OFFSET FLAT:.str.254
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	mov	esi, 0xffffffff
	mov	edi, eax
.label_217:
	mov	rdx, qword ptr [rsp + 0x20]
	call	set_window_size
	jmp	.label_138
.label_139:
	lea	rax, [rbx + rbx*2]
	mov	esi,  dword ptr [dword ptr [+ (rax * 8) + label_135]]
.label_131:
	mov	rdi, r13
	call	cfsetispeed
	jmp	.label_199
.label_147:
	lea	rax, [rbx + rbx*2]
	mov	esi,  dword ptr [dword ptr [+ (rax * 8) + label_135]]
.label_151:
	mov	rdi, r13
.label_225:
	call	cfsetospeed
.label_199:
	mov	rax, qword ptr [rsp + 0x28]
	mov	byte ptr [rax], 1
	jmp	.label_150
.label_156:
	mov	eax, dword ptr [rsp + 0x34]
	test	al, al
	jne	.label_138
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	lea	rdx, [rsp + 0x80]
	call	ioctl
	test	eax, eax
	jne	.label_205
	movzx	eax, word ptr [rsp + 0x82]
	test	eax, eax
	jne	.label_126
.label_205:
	mov	edi, OFFSET FLAT:.str.297
	call	getenv
	test	rax, rax
	je	.label_157
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rax
	lea	rcx, [rsp + 0x78]
	call	xstrtol
	test	eax, eax
	jne	.label_157
	mov	rax, qword ptr [rsp + 0x78]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_126
.label_157:
	mov	qword ptr [rsp + 0x78], 0x50
	mov	eax, 0x50
.label_126:
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	mov	dword ptr [dword ptr [rip + current_col]],  0
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	call	display_window_size
	jmp	.label_138
.label_161:
	cmp	r15d, dword ptr [rsp + 0x4c]
	je	.label_134
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rax + rcx*8 + 8]
	test	r13, r13
	je	.label_134
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.255
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:.str.254
	mov	rdi, r13
	mov	r9, rax
	call	xnumtoumax
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + 0x10], al
	movzx	ecx, al
	cmp	rcx, rax
	je	.label_174
	mov	rbx, qword ptr [rsp + 0x60]
	inc	rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.141
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rax + rbx*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_174:
	inc	r15d
	jmp	.label_150
.label_186:
	mov	eax, dword ptr [rsp + 0x34]
	test	al, al
	jne	.label_138
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	lea	rdx, [rsp + 0x80]
	call	ioctl
	test	eax, eax
	jne	.label_189
	movzx	eax, word ptr [rsp + 0x82]
	test	eax, eax
	jne	.label_191
.label_189:
	mov	edi, OFFSET FLAT:.str.297
	call	getenv
	test	rax, rax
	je	.label_200
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rax
	lea	rcx, [rsp + 0x78]
	call	xstrtol
	test	eax, eax
	jne	.label_200
	mov	rax, qword ptr [rsp + 0x78]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_191
.label_200:
	mov	qword ptr [rsp + 0x78], 0x50
	mov	eax, 0x50
.label_191:
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	xor	esi, esi
	mov	rdi, qword ptr [rsp + 0x58]
	call	display_speed
	jmp	.label_138
.label_198:
	mov	eax, dword ptr [rsp + 0x34]
	test	al, al
	mov	ebp, OFFSET FLAT:speeds
	mov	ebx, 0
	jne	.label_138
.label_136:
	mov	rsi, qword ptr [rbp]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_129
	inc	rbx
	add	rbp, 0x18
	mov	r12d, 0xffffffff
	cmp	rbx, 0x22
	jne	.label_136
	jmp	.label_219
.label_129:
	lea	rax, [rbx + rbx*2]
	mov	r12d,  dword ptr [dword ptr [+ (rax * 8) + label_135]]
.label_219:
	mov	rbx, qword ptr [rsp + 0x58]
	mov	rdi, rbx
	mov	esi, r12d
	call	cfsetispeed
	mov	rdi, rbx
	mov	esi, r12d
	jmp	.label_225
	nop	
.label_137:
	movsxd	rcx, r15d
	mov	rax, qword ptr [rsp + 0x70]
	mov	rax, qword ptr [rax + rcx*8]
	test	rax, rax
	je	.label_138
	mov	qword ptr [rsp + 0x60], rcx
	movzx	r12d, byte ptr [rax]
	lea	r14, [rax + 1]
	cmp	r12d, 0x2d
	cmovne	r14, rax
	mov	esi, OFFSET FLAT:.str.104
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	ebx, OFFSET FLAT:mode_info
	mov	ebp, 0
	je	.label_133
	nop	word ptr cs:[rax + rax]
.label_142:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	strcmp
	test	eax, eax
	je	.label_141
	inc	rbp
	add	rbx, 0x20
	cmp	rbp, 0x59
	jne	.label_142
	xor	eax, eax
	mov	r13, qword ptr [rsp + 0x58]
	jmp	.label_144
	nop	dword ptr [rax + rax]
.label_133:
	movzx	eax, r12b
	cmp	eax, 0x2d
	setne	al
	movzx	eax, al
	mov	dword ptr [dword ptr [rip + tcsetattr_options]],  eax
	jmp	.label_138
.label_141:
	movzx	ebx, r12b
	cmp	ebx, 0x2d
	jne	.label_154
	mov	rax, rbp
	shl	rax, 5
	test	byte ptr [byte ptr [rax + label_153]],  4
	jne	.label_154
	xor	eax, eax
	jmp	.label_132
.label_154:
	shl	rbp, 5
	mov	ecx,  dword ptr [dword ptr [rbp + label_159]]
	cmp	rcx, 4
	ja	.label_160
	mov	rax, qword ptr [rsp + 0x50]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_162]]
.label_668:
	mov	rax, qword ptr [rsp + 0x58]
	test	rax, rax
	jne	.label_164
.label_671:
	mov	esi, OFFSET FLAT:.str.215
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_172
	mov	esi, OFFSET FLAT:.str.216
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_172
	mov	esi, OFFSET FLAT:.str.217
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_183
	movzx	ebp, byte ptr [r13]
	cmp	ebp, 0x65
	je	.label_187
	movzx	eax, bpl
	cmp	eax, 0x6e
	jne	.label_188
	movzx	eax, byte ptr [r13 + 1]
	cmp	eax, 0x6c
	jne	.label_188
	cmp	byte ptr [r13 + 2], 0
	jne	.label_188
	mov	r13, qword ptr [rsp + 0x58]
	mov	eax, dword ptr [r13]
	cmp	ebx, 0x2d
	jne	.label_203
	and	eax, 0xfffffe3f
	or	eax, 0x100
	mov	dword ptr [r13], eax
	mov	eax, dword ptr [r13 + 4]
	and	eax, 0xffffffd3
	or	eax, 4
	mov	dword ptr [r13 + 4], eax
	mov	al, 1
	jmp	.label_124
.label_670:
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_164
.label_669:
	mov	rax, qword ptr [rsp + 0x38]
.label_164:
	mov	edx, dword ptr [rax]
	mov	rcx,  qword ptr [word ptr [rbp + label_211]]
	not	rcx
	and	rcx, rdx
	mov	rdx,  qword ptr [word ptr [rbp + label_212]]
	cmp	ebx, 0x2d
	jne	.label_213
	mov	esi, 0xffffffff
	xor	edx, esi
	and	ecx, edx
	jmp	.label_215
.label_213:
	or	ecx, edx
.label_215:
	mov	dword ptr [rax], ecx
.label_181:
	mov	al, 1
.label_132:
	mov	r13, qword ptr [rsp + 0x58]
.label_124:
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	byte ptr [rcx], 1
.label_144:
	movzx	ecx, r12b
	cmp	ecx, 0x2d
	setne	cl
	test	al, al
	jne	.label_218
	test	cl, cl
	je	.label_222
.label_218:
	test	al, al
	jne	.label_138
	mov	esi, OFFSET FLAT:.str.234
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 0
	mov	edi, OFFSET FLAT:.str.234
	je	.label_127
	mov	esi, OFFSET FLAT:.str.235
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 1
	mov	edi, OFFSET FLAT:.str.235
	je	.label_127
	mov	esi, OFFSET FLAT:.str.236
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 2
	mov	edi, OFFSET FLAT:.str.236
	je	.label_127
	mov	esi, OFFSET FLAT:.str.237
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 3
	mov	edi, OFFSET FLAT:.str.237
	je	.label_127
	mov	esi, OFFSET FLAT:.str.238
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 4
	mov	edi, OFFSET FLAT:.str.238
	je	.label_127
	mov	esi, OFFSET FLAT:.str.239
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 5
	mov	edi, OFFSET FLAT:.str.239
	je	.label_127
	mov	esi, OFFSET FLAT:.str.240
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 6
	mov	edi, OFFSET FLAT:.str.240
	je	.label_127
	mov	esi, OFFSET FLAT:.str.241
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 7
	mov	edi, OFFSET FLAT:.str.241
	je	.label_127
	mov	esi, OFFSET FLAT:.str.242
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 8
	mov	edi, OFFSET FLAT:.str.242
	je	.label_127
	mov	esi, OFFSET FLAT:.str.243
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 9
	mov	edi, OFFSET FLAT:.str.243
	je	.label_127
	mov	esi, OFFSET FLAT:.str.244
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 0xa
	mov	edi, OFFSET FLAT:.str.244
	je	.label_127
	mov	esi, OFFSET FLAT:.str.245
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 0xb
	mov	edi, OFFSET FLAT:.str.245
	je	.label_127
	mov	esi, OFFSET FLAT:.str.246
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 0xc
	mov	edi, OFFSET FLAT:.str.246
	je	.label_127
	mov	esi, OFFSET FLAT:.str.247
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 0xd
	mov	edi, OFFSET FLAT:.str.247
	je	.label_127
	mov	esi, OFFSET FLAT:.str.248
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 0xe
	mov	edi, OFFSET FLAT:.str.248
	je	.label_127
	mov	esi, OFFSET FLAT:.str.249
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 0xf
	mov	edi, OFFSET FLAT:.str.249
	je	.label_127
	mov	esi, OFFSET FLAT:.str.250
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 0x10
	mov	edi, OFFSET FLAT:.str.250
	je	.label_127
	mov	esi, OFFSET FLAT:.str.251
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 0x11
	mov	edi, OFFSET FLAT:.str.251
	je	.label_127
	mov	esi, OFFSET FLAT:.str.134
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_169
	mov	esi, OFFSET FLAT:.str.135
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_140
	mov	esi, OFFSET FLAT:.str.136
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_143
	mov	esi, OFFSET FLAT:.str.137
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_146
	mov	esi, OFFSET FLAT:.str.138
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_146
	mov	esi, OFFSET FLAT:.str.139
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_156
	mov	esi, OFFSET FLAT:.str.140
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_161
	mov	esi, OFFSET FLAT:.str.142
	mov	rdi, r14
	call	strcmp
	mov	rbx, -0x330
	test	eax, eax
	je	.label_186
.label_184:
	mov	rsi,  qword ptr [word ptr [rbx + label_167]]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_198
	add	rbx, 0x18
	jne	.label_184
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, r14
	lea	rsi, [rsp + 0x80]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_123
	mov	rcx, rax
	mov	qword ptr [rsp + 0x60], rcx
	mov	eax, ecx
	cmp	rax, rcx
	jne	.label_123
	mov	rbx, qword ptr [rsp + 0x80]
	cmp	rbx, r14
	je	.label_123
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x3a
	jne	.label_123
	inc	rbx
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbx
	lea	rsi, [rsp + 0x80]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_123
	mov	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	eax, ecx
	cmp	rax, rcx
	jne	.label_123
	mov	rbp, qword ptr [rsp + 0x80]
	cmp	rbp, rbx
	je	.label_123
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x3a
	jne	.label_123
	inc	rbp
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbp
	lea	rsi, [rsp + 0x80]
	call	strtoul
	mov	r12, rax
	cmp	dword ptr [r13], 0
	jne	.label_123
	mov	eax, r12d
	cmp	rax, r12
	jne	.label_123
	mov	rbx, qword ptr [rsp + 0x80]
	cmp	rbx, rbp
	je	.label_123
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x3a
	jne	.label_123
	inc	rbx
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbx
	lea	rsi, [rsp + 0x80]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_123
	mov	ecx, eax
	cmp	rcx, rax
	jne	.label_123
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	rcx, rbx
	je	.label_123
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x3a
	jne	.label_123
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rsp + 0x60]
	mov	dword ptr [rdx], esi
	mov	rsi, qword ptr [rsp + 0x18]
	mov	dword ptr [rdx + 4], esi
	mov	dword ptr [rdx + 8], r12d
	mov	dword ptr [rdx + 0xc], eax
	mov	r12, rdx
	xor	ebx, ebx
.label_180:
	mov	rbp, rcx
	inc	rbp
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbp
	lea	rsi, [rsp + 0x80]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_123
	cmp	rbx, 0x1f
	mov	dl, 0x3a
	jb	.label_158
	xor	edx, edx
.label_158:
	movzx	ecx, al
	cmp	rcx, rax
	jne	.label_123
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	rcx, rbp
	je	.label_123
	movzx	edx, dl
	movzx	esi, byte ptr [rcx]
	cmp	esi, edx
	jne	.label_123
	mov	byte ptr [r12 + rbx + 0x11], al
	inc	rbx
	cmp	rbx, 0x20
	jb	.label_180
	jmp	.label_150
.label_127:
	cmp	r15d, dword ptr [rsp + 0x4c]
	je	.label_134
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rax + rcx*8 + 8]
	test	rbp, rbp
	je	.label_134
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x6d
	jne	.label_182
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x69
	jne	.label_182
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x6e
	jne	.label_182
	cmp	byte ptr [rdi + 3], 0
	je	.label_194
.label_182:
	mov	esi, OFFSET FLAT:.str.251
	call	strcmp
	test	eax, eax
	je	.label_194
	movzx	ebx, byte ptr [rbp]
	test	rbx, rbx
	je	.label_197
	movzx	r14d, byte ptr [rbp + 1]
	test	r14, r14
	je	.label_202
	cmp	ebx, 0x5e
	jne	.label_130
	movzx	eax, r14b
	cmp	eax, 0x2d
	jne	.label_130
	cmp	byte ptr [rbp + 2], 0
	mov	eax, 0
	je	.label_179
.label_130:
	mov	esi, OFFSET FLAT:.str.253
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	eax, 0
	je	.label_179
	movzx	eax, bl
	cmp	eax, 0x5e
	jne	.label_194
	cmp	r14d, 0x3f
	mov	eax, 0x7f
	je	.label_179
	and	r14d, 0x9f
	mov	rax, r14
	jmp	.label_179
.label_194:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.255
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0xff
	mov	r8d, OFFSET FLAT:.str.254
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	jmp	.label_179
.label_197:
	mov	rax, rbx
	jmp	.label_179
.label_172:
	mov	rcx, qword ptr [rsp + 0x50]
	mov	eax, dword ptr [rcx]
	cmp	ebx, 0x2d
	je	.label_201
	and	eax, 0xfffffccf
	or	eax, 0x120
	mov	dword ptr [rcx], eax
	jmp	.label_181
.label_202:
	mov	rax, rbx
.label_179:
	inc	r15d
	lea	rcx, [r12 + r12*2]
	mov	rcx,  qword ptr [word ptr [+ (rcx * 8) + label_81]]
	mov	byte ptr [r13 + rcx + 0x11], al
.label_150:
	mov	rax, qword ptr [rsp + 0xc0]
	mov	byte ptr [rax], 1
	nop	word ptr cs:[rax + rax]
.label_138:
	inc	r15d
	mov	rax, qword ptr [rsp + 0x68]
	cmp	r15d, eax
	jl	.label_137
.label_152:
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_222:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.132
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	dec	r14
	jmp	.label_145
.label_134:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.133
.label_173:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_145:
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_160:
	call	abort
.label_193:
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	mov	edx, 0x8cb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.sane_mode
	call	__assert_fail
.label_214:
	call	abort
.label_176:
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	mov	edx, 0x8d1
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.sane_mode
	call	__assert_fail
.label_165:
	call	abort
.label_123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.132
	jmp	.label_173
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4042f0

	.globl set_window_size
	.type set_window_size, @function
set_window_size:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	ebp, esi
	mov	ebx, edi
	lea	rdx, [rsp]
	xor	edi, edi
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	je	.label_227
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 0x16
	jne	.label_231
	mov	qword ptr [rsp], 0
.label_227:
	test	ebx, ebx
	js	.label_228
	mov	word ptr [rsp], bx
.label_228:
	test	ebp, ebp
	js	.label_230
	mov	word ptr [rsp + 2], bp
.label_230:
	lea	rdx, [rsp]
	xor	edi, edi
	mov	esi, 0x5414
	xor	eax, eax
	call	ioctl
	test	eax, eax
	jne	.label_229
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_229:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_231:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, r15d
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x4043b0

	.globl display_window_size
	.type display_window_size, @function
display_window_size:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	ebp, edi
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	je	.label_233
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	jne	.label_234
	test	bpl, bpl
	jne	.label_232
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.256
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_233:
	mov	eax, OFFSET FLAT:.str.257
	mov	edi, OFFSET FLAT:.str.258
	test	bpl, bpl
	cmovne	rdi, rax
	movzx	esi, word ptr [rsp + 8]
	movzx	edx, word ptr [rsp + 0xa]
	xor	eax, eax
	call	wrapf
	test	bpl, bpl
	jne	.label_232
	mov	dword ptr [dword ptr [rip + current_col]],  0
.label_232:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_234:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404480

	.globl display_speed
	.type display_speed, @function
display_speed:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r12d, esi
	mov	rbx, rdi
	call	cfgetispeed
	test	eax, eax
	je	.label_247
	mov	rdi, rbx
	call	cfgetispeed
	mov	ebp, eax
	mov	rdi, rbx
	call	cfgetospeed
	cmp	ebp, eax
	jne	.label_244
.label_247:
	mov	eax, OFFSET FLAT:.str.259
	mov	ebp, OFFSET FLAT:.str.260
	test	r12b, r12b
	cmovne	rbp, rax
	mov	rdi, rbx
	call	cfgetospeed
	mov	ecx, 1
	mov	edx, OFFSET FLAT:label_135
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_250:
	cmp	dword ptr [rdx], eax
	je	.label_240
	cmp	dword ptr [rdx + 0x18], eax
	je	.label_242
	add	rcx, 2
	add	rdx, 0x30
	cmp	rcx, 0x23
	jne	.label_250
	jmp	.label_249
.label_244:
	mov	eax, OFFSET FLAT:.str.261
	mov	r14d, OFFSET FLAT:.str.262
	test	r12b, r12b
	cmovne	r14, rax
	mov	rdi, rbx
	call	cfgetispeed
	mov	ecx, 1
	mov	edx, OFFSET FLAT:label_135
	xor	r15d, r15d
.label_251:
	cmp	dword ptr [rdx], eax
	je	.label_235
	cmp	dword ptr [rdx + 0x18], eax
	je	.label_239
	add	rcx, 2
	add	rdx, 0x30
	cmp	rcx, 0x23
	jne	.label_251
	jmp	.label_241
.label_240:
	dec	rcx
.label_242:
	lea	rax, [rcx + rcx*2]
	mov	rsi,  qword ptr [word ptr [+ (rax * 8) + label_238]]
.label_249:
	xor	eax, eax
	mov	rdi, rbp
	call	wrapf
	jmp	.label_237
.label_235:
	dec	rcx
.label_239:
	lea	rax, [rcx + rcx*2]
	mov	r15,  qword ptr [word ptr [+ (rax * 8) + label_238]]
.label_241:
	mov	rdi, rbx
	call	cfgetospeed
	mov	ecx, 1
	mov	esi, OFFSET FLAT:label_135
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_236:
	cmp	dword ptr [rsi], eax
	je	.label_246
	cmp	dword ptr [rsi + 0x18], eax
	je	.label_245
	add	rcx, 2
	add	rsi, 0x30
	cmp	rcx, 0x23
	jne	.label_236
	jmp	.label_243
.label_246:
	dec	rcx
.label_245:
	lea	rax, [rcx + rcx*2]
	mov	rdx,  qword ptr [word ptr [+ (rax * 8) + label_238]]
.label_243:
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, r15
	call	wrapf
.label_237:
	test	r12b, r12b
	jne	.label_248
	mov	dword ptr [dword ptr [rip + current_col]],  0
.label_248:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4045d0

	.globl wrapf
	.type wrapf, @function
wrapf:
	push	rbx
	sub	rsp, 0xe0
	mov	rbx, rdi
	test	al, al
	je	.label_256
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_256:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xd0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xc8], rax
	mov	dword ptr [rsp + 0xc4], 0x30
	mov	dword ptr [rsp + 0xc0], 8
	lea	rdi, [rsp + 0xb8]
	lea	rcx, [rsp + 0xc0]
	mov	esi, 1
	mov	rdx, rbx
	call	__vasprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	js	.label_258
	mov	eax,  dword ptr [dword ptr [rip + current_col]]
	test	eax, eax
	jle	.label_252
	mov	esi,  dword ptr [dword ptr [rip + max_col]]
	sub	esi, eax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	mov	rdx, qword ptr [rdi + 0x30]
	cmp	esi, ebx
	jge	.label_255
	cmp	rcx, rdx
	jae	.label_254
	lea	rax, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rax
	mov	byte ptr [rcx], 0xa
	mov	dword ptr [dword ptr [rip + current_col]],  0
	jmp	.label_252
.label_255:
	cmp	rcx, rdx
	jae	.label_253
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
.label_257:
	inc	eax
	mov	dword ptr [dword ptr [rip + current_col]],  eax
.label_252:
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rsp + 0xb8]
	call	free
	add	dword ptr [dword ptr [rip + current_col]],  ebx
	add	rsp, 0xe0
	pop	rbx
	ret	
.label_254:
	mov	esi, 0xa
	call	__overflow
	mov	dword ptr [dword ptr [rip + current_col]],  0
	jmp	.label_252
.label_253:
	mov	esi, 0x20
	call	__overflow
	mov	eax,  dword ptr [dword ptr [rip + current_col]]
	jmp	.label_257
.label_258:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404740
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404750
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404760

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_262
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_259
	cmp	dword ptr [rbp], 0x20
	jne	.label_259
.label_262:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_261
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_259:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_260
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_261:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_260:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
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
	#Procedure 0x404820

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_264
	test	ebx, ebx
	js	.label_264
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_263
.label_264:
	mov	eax, ebx
.label_263:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404880

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_265
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_266
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_266
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_267
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_267:
	mov	rbx, r14
.label_266:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_265:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404930
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
	#Procedure 0x404970
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
	#Procedure 0x404980
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
	#Procedure 0x404990
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
	#Procedure 0x4049d0
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
	#Procedure 0x4049f0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_268
	test	rdx, rdx
	je	.label_268
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_268:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a20
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
	#Procedure 0x404aa0

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
.label_305:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_361
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_364]]
.label_615:
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
.label_616:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_383
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_383
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_289:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_276
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_276:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_289
.label_383:
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
	jmp	.label_303
.label_608:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_303
.label_611:
	mov	al, 1
.label_609:
	mov	r12b, 1
.label_612:
	test	r12b, 1
	mov	cl, 1
	je	.label_321
	mov	cl, al
.label_321:
	mov	al, cl
.label_610:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_327
	test	r10, r10
	je	.label_331
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_332
.label_327:
	xor	ecx, ecx
	jmp	.label_332
.label_613:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_279
	test	r10, r10
	je	.label_343
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_346
.label_614:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_303
.label_331:
	mov	ecx, 1
.label_332:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_303
.label_279:
	xor	eax, eax
	jmp	.label_346
.label_343:
	mov	eax, 1
.label_346:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_303:
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
	jmp	.label_339
.label_294:
	inc	rdi
.label_339:
	cmp	rbp, -1
	je	.label_295
	cmp	rdi, rbp
	jne	.label_298
	jmp	.label_300
	nop	word ptr cs:[rax + rax]
.label_295:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_304
.label_298:
	test	r12b, r12b
	je	.label_307
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_310
	cmp	rbp, -1
	jne	.label_310
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
.label_310:
	cmp	rbx, rbp
	jbe	.label_336
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_351
	nop	word ptr [rax + rax]
.label_307:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_351
.label_336:
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
	jne	.label_357
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_351
	jmp	.label_272
.label_357:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_351:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_382
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_377]]
.label_663:
	test	rdi, rdi
	jne	.label_271
	jmp	.label_385
.label_667:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_386
	test	rdi, rdi
	jne	.label_388
	cmp	rbp, 1
	je	.label_385
	xor	r13d, r13d
	jmp	.label_269
.label_656:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_392
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_272
	cmp	r9d, 2
	jne	.label_278
	mov	al, r14b
	and	al, 1
	jne	.label_282
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_287
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_287:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_374
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_374:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_299
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_299:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_313
.label_657:
	mov	bl, 0x62
	jmp	.label_318
.label_658:
	mov	cl, 0x74
	jmp	.label_320
.label_659:
	mov	bl, 0x76
	jmp	.label_318
.label_660:
	mov	bl, 0x66
	jmp	.label_318
.label_661:
	mov	cl, 0x72
	jmp	.label_320
.label_664:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_329
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_333
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
	jae	.label_337
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_337:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_354
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_354:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_359
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_359:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_329:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_269
.label_665:
	cmp	r9d, 5
	je	.label_326
	cmp	r9d, 2
	jne	.label_271
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_271
	jmp	.label_369
.label_666:
	cmp	r9d, 2
	jne	.label_371
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_373
	jmp	.label_378
.label_382:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_380
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
.label_341:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_286
	test	cl, cl
	je	.label_286
	xor	eax, eax
	jmp	.label_269
.label_386:
	test	rdi, rdi
	jne	.label_292
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_292
.label_385:
	mov	dl, 1
.label_662:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_297
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_269
.label_392:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_294
	jmp	.label_271
.label_371:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_320
.label_373:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_311
.label_320:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_314
.label_318:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_269
	jmp	.label_322
.label_380:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_324
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_324:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_384:
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
	je	.label_353
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_356
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_360
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_275
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_370:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_366
	bt	rsi, rdx
	jb	.label_367
.label_366:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_370
.label_275:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_393
	xor	r13d, r13d
.label_393:
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
	je	.label_384
	jmp	.label_341
.label_292:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_269
.label_326:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_271
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_271
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_271
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_283
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_290
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_368
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_301
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_301:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_306
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_306:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_316
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_316:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_390
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_390:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_269
.label_271:
	xor	eax, eax
	xor	r13d, r13d
.label_269:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_344
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_342
	jmp	.label_270
	nop	word ptr [rax + rax]
.label_344:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_270
.label_342:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_350
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_355
	nop	word ptr cs:[rax + rax]
.label_270:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_355:
	mov	bl, r15b
	je	.label_311
	jmp	.label_322
.label_350:
	mov	bl, r15b
.label_322:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_272
	cmp	r9d, 2
	jne	.label_363
	mov	al, r14b
	and	al, 1
	jne	.label_363
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_323
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_323:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_362
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_362:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_376
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_376:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_363:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_387
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_387:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_379
.label_388:
	xor	r13d, r13d
	jmp	.label_269
.label_286:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_274
	nop	word ptr [rax + rax]
.label_389:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_274:
	test	cl, cl
	je	.label_291
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_293
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_296
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_296:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_293
	nop	word ptr [rax + rax]
.label_291:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_272
	cmp	r9d, 2
	jne	.label_317
	mov	al, r14b
	and	al, 1
	jne	.label_317
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_319
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_319:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_302
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_302:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_349
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_349:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_317:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_348
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_348:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_352
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_352:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_309
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_309:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_293:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_311
	test	r14b, 1
	je	.label_312
	mov	bl, al
	and	bl, 1
	jne	.label_312
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_281
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_281:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_381
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_381:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_312:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_389
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_389
	nop	dword ptr [rax]
.label_311:
	test	r14b, 1
	je	.label_284
	and	al, 1
	jne	.label_284
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_347
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_347:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_358
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_358:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_284:
	mov	bl, r15b
.label_379:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_308
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_308:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_294
.label_278:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_313
.label_282:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_313:
	cmp	rcx, r10
	jae	.label_330
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_330:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_335
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_340
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_345
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_325
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_325:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_288
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_288:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_269
.label_335:
	xor	r13d, r13d
	jmp	.label_269
.label_340:
	xor	r13d, r13d
	jmp	.label_269
.label_345:
	xor	r13d, r13d
	jmp	.label_269
.label_356:
	xor	r13d, r13d
.label_353:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_341
.label_360:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_365
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_273:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_372
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_273
	xor	r13d, r13d
	jmp	.label_341
.label_365:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_341
.label_372:
	xor	r13d, r13d
	jmp	.label_341
.label_283:
	xor	r13d, r13d
	jmp	.label_269
.label_290:
	xor	r13d, r13d
	jmp	.label_269
	nop	dword ptr [rax]
.label_300:
	mov	r13, rdi
.label_304:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_391
	or	al, dl
	je	.label_328
.label_391:
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
	je	.label_280
	or	al, dl
	jne	.label_280
	test	r8b, 1
	jne	.label_277
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_280
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_305
.label_280:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_315
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_315
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_315
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_334:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_285
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_285:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_334
.label_315:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_338
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_338
.label_297:
	mov	r9d, 2
	jmp	.label_272
.label_367:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_272
.label_328:
	mov	rbp, r13
	jmp	.label_272
.label_314:
	mov	r9d, 2
.label_272:
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
.label_375:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_338:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_277:
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
	jmp	.label_375
.label_333:
	mov	r9d, 2
	jmp	.label_272
.label_378:
	mov	r9d, 2
	jmp	.label_272
.label_369:
	mov	r9d, 2
	jmp	.label_272
.label_368:
	mov	r9d, 5
	jmp	.label_272
.label_361:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c30
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
	#Procedure 0x405d00
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
	je	.label_394
	mov	qword ptr [rax], rbx
.label_394:
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
	#Procedure 0x405e00
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_395
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_397:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_397
.label_395:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_398
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_399]], OFFSET FLAT:slot0
.label_398:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_396
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_396:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ea0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x405eb0

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
	js	.label_400
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_404
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_401
.label_404:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_403
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
	jne	.label_402
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_402:
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
.label_401:
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
	ja	.label_406
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_405
	mov	rdi, rbx
	call	free
.label_405:
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
.label_406:
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
.label_400:
	call	abort
.label_403:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406080
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406090
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
	#Procedure 0x4060b0
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
	#Procedure 0x4060d0
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
	je	.label_407
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
.label_407:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x406140
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
	je	.label_408
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
.label_408:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061b0
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
	je	.label_409
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
.label_409:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406220
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
	je	.label_410
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
.label_410:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406290
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_411]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
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
	#Procedure 0x406300
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_411]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
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
	#Procedure 0x406370

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_411]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
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
	#Procedure 0x4063d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_411]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
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
	#Procedure 0x406430

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
	je	.label_414
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
.label_414:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4064e0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_411]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_415
	test	rdx, rdx
	je	.label_415
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_415:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x406550
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_411]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_416
	test	rdx, rdx
	je	.label_416
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_416:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065c0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_411]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_417
	test	rsi, rsi
	je	.label_417
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_417:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406630
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_411]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_418
	test	rsi, rsi
	je	.label_418
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
.label_418:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4066a0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066b0
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
	#Procedure 0x4066d0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066f0

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
	#Procedure 0x406710

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
	jne	.label_421
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_422
	cmp	ecx, 0x55
	jne	.label_419
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_419
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_419
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_419
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_419
	cmp	byte ptr [rax + 5], 0
	jne	.label_419
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_421
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_421
.label_422:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_419
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_419
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_419
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_419
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_419
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_419
	cmp	byte ptr [rax + 7], 0
	je	.label_420
.label_419:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_421:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_420:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_421
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_421
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406800

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
	je	.label_423
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_432
.label_423:
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_432:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_427
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_429]]
.label_697:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
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
.label_427:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_426
.label_698:
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
.label_699:
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
.label_700:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_424
.label_701:
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
	jmp	.label_425
.label_702:
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
	jmp	.label_431
.label_703:
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
.label_431:
	mov	qword ptr [rsp + 0x10], rdi
.label_425:
	mov	qword ptr [rsp + 8], rsi
.label_424:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_428
.label_705:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_426:
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
	jmp	.label_430
.label_704:
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
.label_430:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_428:
	call	__fprintf_chk
.label_696:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406af0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_433:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_433
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b20
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_436:
	cmp	r10d, 0x28
	ja	.label_434
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_435
	nop	word ptr cs:[rax + rax]
.label_434:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_435:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_437
	inc	r9
	cmp	r9, 0xa
	jb	.label_436
.label_437:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406b80

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_438
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_438:
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
.label_442:
	cmp	r8d, 0x28
	ja	.label_439
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_441
	nop	
.label_439:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_441:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_440
	inc	r9
	cmp	r9, 0xa
	jb	.label_442
.label_440:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c80
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
	#Procedure 0x406d00
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_443
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_444
	test	rax, rax
	je	.label_443
.label_444:
	pop	rbx
	ret	
.label_443:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d40

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_445
	test	rax, rax
	je	.label_446
.label_445:
	pop	rbx
	ret	
.label_446:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d60
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_447
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_448
	test	rbx, rbx
	jne	.label_448
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_448:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_449
	test	rax, rax
	je	.label_447
.label_449:
	pop	rbx
	ret	
.label_447:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406db0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_450
	test	rbx, rbx
	jne	.label_450
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_450:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_452
	test	rax, rax
	je	.label_451
.label_452:
	pop	rbx
	ret	
.label_451:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406de0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_453
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_455
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_454
.label_453:
	test	rcx, rcx
	jne	.label_458
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_458:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_456
.label_454:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_457
	test	rbx, rbx
	jne	.label_457
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_457:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_459
	test	rax, rax
	je	.label_455
.label_459:
	pop	rbx
	ret	
.label_455:
	call	xalloc_die
.label_456:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e80
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_460
	test	rax, rax
	je	.label_461
.label_460:
	pop	rbx
	ret	
.label_461:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ea0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_462
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_465
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_466
	call	free
	xor	eax, eax
	jmp	.label_463
.label_462:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_464
	mov	qword ptr [rsi], rbx
.label_466:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_463
	test	rax, rax
	je	.label_464
.label_463:
	pop	rbx
	ret	
.label_464:
	call	xalloc_die
.label_465:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f10
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
	je	.label_468
	test	r14, r14
	je	.label_467
.label_468:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_467:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f50
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_469
	call	rpl_calloc
	test	rax, rax
	je	.label_469
	pop	rcx
	ret	
.label_469:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f80

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
	je	.label_470
	test	r15, r15
	je	.label_471
.label_470:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_471:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406fc0
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
	je	.label_473
	test	r15, r15
	je	.label_472
.label_473:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_472:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407010

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
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
	#Procedure 0x407040

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_475
	cmp	eax, 1
	je	.label_477
	cmp	eax, 3
	jne	.label_479
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_474
.label_477:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_474
.label_475:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_478
	cmp	rbx, r15
	jbe	.label_480
.label_478:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_476
	mov	dword ptr [rax], 0x4b
	jmp	.label_474
.label_479:
	call	__errno_location
	jmp	.label_474
.label_476:
	mov	dword ptr [rax], 0x22
.label_474:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_480:
	mov	rax, rbx
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
	#Procedure 0x407110
	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:

	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407140

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	mov	r13, rdi
	cmp	ebp, 0x25
	jae	.label_496
	test	rsi, rsi
	lea	r15, [rsp + 0x20]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	mov	rsi, r15
	mov	edx, ebp
	call	strtol
	mov	r12, rax
	mov	rcx, qword ptr [r15]
	cmp	rcx, r13
	je	.label_514
	mov	eax, dword ptr [rbx]
	xor	ebp, ebp
	test	eax, eax
	je	.label_518
	mov	ebp, 4
	cmp	eax, 0x22
	jne	.label_499
	mov	ebp, 1
.label_518:
	test	r14, r14
	je	.label_521
	mov	edx, ebp
	jmp	.label_523
.label_514:
	mov	ebp, 4
	test	r14, r14
	je	.label_499
	mov	rbx, rcx
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_499
	mov	rdi, r14
	call	strchr
	xor	edx, edx
	mov	r12d, 1
	test	rax, rax
	mov	rcx, rbx
	je	.label_499
.label_523:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_537
	mov	dword ptr [rsp + 0xc], edx
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_482
	mov	r8d, 1
	mov	r11d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_495
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_495
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r8d, 1
	mov	r11d, 0x400
	test	rax, rax
	je	.label_495
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	r8d, 1
	mov	r11d, 0x400
	cmp	eax, 0x42
	je	.label_506
	cmp	eax, 0x44
	je	.label_506
	cmp	eax, 0x69
	jne	.label_495
	mov	rax, qword ptr [rsp + 0x10]
	movzx	eax, byte ptr [rax + 2]
	cmp	eax, 0x42
	mov	r8d, 3
	je	.label_517
	mov	r8d, 1
.label_517:
	mov	r11d, 0x400
	jmp	.label_495
.label_521:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r12
	jmp	.label_499
.label_537:
	mov	r13, r12
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_525
.label_506:
	mov	r8d, 2
	mov	r11d, 0x3e8
.label_495:
	movabs	r10, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_487
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_534
	jmp	qword ptr [word ptr [+ (rax * 8) + label_536]]
.label_678:
	movabs	rax, 0xffe0000000000000
	cmp	r12, rax
	jl	.label_497
	mov	r13, r12
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_483
.label_487:
	cmp	r13d, 0x73
	jg	.label_489
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_492
	xor	ebx, ebx
	mov	r13, r12
	jmp	qword ptr [word ptr [+ (rax * 8) + label_494]]
.label_685:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	jl	.label_497
	mov	r13, r12
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_483
.label_534:
	cmp	r13d, 0x54
	je	.label_507
	cmp	r13d, 0x59
	jne	.label_482
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_513
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_513:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_524
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_524:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	edi, 1
	jl	.label_532
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_532:
	or	edi, ecx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_485
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ebx, al
.label_485:
	or	ebx, edi
	cmp	rsi, r9
	mov	edi, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_501
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_501:
	or	ecx, ebx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_505
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	edi, al
.label_505:
	or	edi, ecx
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_502
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_502:
	or	ecx, edi
	cmp	rbp, r9
	jl	.label_509
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_509:
	or	ebx, ecx
	jmp	.label_481
.label_489:
	cmp	r13d, 0x74
	je	.label_507
	cmp	r13d, 0x77
	jne	.label_482
	movabs	rax, 0xc000000000000000
	cmp	r12, rax
	jge	.label_539
.label_497:
	inc	r10
	mov	ebx, 1
	mov	r13, r10
	jmp	.label_481
.label_680:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	rdi, rax
	cmp	r12, rdi
	mov	ecx, 1
	mov	rbp, r13
	mov	ebx, 1
	jl	.label_488
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, r12
	imul	rbp, r11
	cmp	rax, r12
	setl	al
	cmovl	rbp, r10
	movzx	ebx, al
.label_488:
	cmp	rbp, rdi
	mov	rsi, r13
	jl	.label_503
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_503:
	or	ecx, ebx
	cmp	rsi, rdi
	mov	ebx, 1
	jl	.label_512
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_512:
	or	ebx, ecx
	jmp	.label_481
.label_681:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	cmp	r12, rax
	mov	ebx, 1
	jl	.label_481
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, r12
	cmp	rax, r12
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
	jmp	.label_481
.label_682:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	rdi, rax
	cmp	r12, rdi
	mov	ebx, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_535
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, r12
	imul	rsi, r11
	cmp	rax, r12
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_535:
	cmp	rsi, rdi
	jl	.label_491
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_491:
	or	ebx, ecx
	jmp	.label_481
.label_507:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_498
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_498:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_515
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_515:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	edi, 1
	jl	.label_490
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_490:
	or	edi, ecx
	cmp	rbp, r9
	jl	.label_531
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_531:
	or	ebx, edi
	jmp	.label_481
.label_492:
	cmp	r13d, 0x5a
	jne	.label_482
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_486
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_486:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_500
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_500:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	edi, 1
	jl	.label_508
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_508:
	or	edi, ecx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_520
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ebx, al
.label_520:
	or	ebx, edi
	cmp	rsi, r9
	mov	edi, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_528
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_528:
	or	ecx, ebx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_538
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	edi, al
.label_538:
	or	edi, ecx
	cmp	rsi, r9
	mov	ebx, 1
	jl	.label_526
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_526:
	or	ebx, edi
	jmp	.label_481
.label_482:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r12
	mov	eax, dword ptr [rsp + 0xc]
	or	eax, 2
	mov	ebp, eax
	jmp	.label_499
.label_679:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ebx, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_504
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, r12
	imul	rsi, r11
	cmp	rax, r12
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_504:
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_519
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	ebx, al
.label_519:
	or	ebx, ecx
	cmp	rdi, r9
	mov	r14d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_527
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rdi
	imul	rsi, r11
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_527:
	or	ecx, ebx
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_529
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	r14d, al
.label_529:
	or	r14d, ecx
	cmp	rdi, r9
	mov	ebx, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_516
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rdi
	imul	rsi, r11
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_516:
	or	ecx, r14d
	cmp	rsi, r9
	jl	.label_533
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_533:
	or	ebx, ecx
	jmp	.label_481
.label_683:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_510
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_510:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_522
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_522:
	or	ecx, edi
	cmp	rsi, r9
	mov	r14d, 1
	mov	rdi, r13
	mov	ebx, 1
	jl	.label_530
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	ebx, al
.label_530:
	or	ebx, ecx
	cmp	rdi, r9
	mov	rcx, r13
	jl	.label_484
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rcx, rdi
	imul	rcx, r11
	cmp	rax, rdi
	setl	al
	cmovl	rcx, r10
	movzx	r14d, al
.label_484:
	or	r14d, ebx
	cmp	rcx, r9
	mov	ebx, 1
	jl	.label_493
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_493:
	or	ebx, r14d
	jmp	.label_481
.label_539:
	lea	r13, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_483:
	cmp	r12, rax
	setg	al
	cmovg	r13, r10
	movzx	ebx, al
.label_481:
	or	ebx, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rax, [rcx + r8]
	mov	qword ptr [r15], rax
	cmp	byte ptr [rcx + r8], 0
	je	.label_511
	or	ebx, 2
.label_511:
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, ebx
.label_525:
	mov	qword ptr [rax], r13
	mov	ebp, edx
.label_499:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_496:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x407ad0

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
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_557
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_554:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_554
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_543
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rbp, rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_562
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_564
	cmp	eax, 0x22
	jne	.label_543
	mov	dword ptr [rsp + 4], 1
.label_564:
	test	r14, r14
	jne	.label_541
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_543
.label_562:
	test	r14, r14
	je	.label_543
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_543
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_543
.label_541:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_559
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_540
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_548
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_548
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_548
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_553
	cmp	eax, 0x44
	je	.label_553
	cmp	eax, 0x69
	jne	.label_548
	movzx	eax, byte ptr [r12 + 2]
	cmp	eax, 0x42
	mov	ecx, 3
	je	.label_561
	mov	ecx, 1
.label_561:
	mov	esi, 0x400
	jmp	.label_548
.label_559:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_566
.label_553:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_548:
	cmp	r13d, 0x59
	jg	.label_546
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_547
	jmp	qword ptr [word ptr [+ (rax * 8) + label_549]]
.label_687:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_550
.label_546:
	cmp	r13d, 0x73
	jg	.label_552
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_555
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_558]]
.label_693:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_550:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_551
.label_547:
	cmp	r13d, 0x54
	je	.label_560
	cmp	r13d, 0x59
	jne	.label_540
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_544
.label_552:
	cmp	r13d, 0x74
	je	.label_560
	cmp	r13d, 0x77
	jne	.label_540
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_551
.label_689:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_545
.label_690:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_563
.label_691:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_542
.label_560:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_556
.label_555:
	cmp	r13d, 0x5a
	jne	.label_540
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_544:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_563
.label_540:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_543
.label_688:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_542
.label_692:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_556:
	or	dl, r10b
.label_545:
	or	dl, bl
.label_542:
	and	dl, 1
	movzx	eax, dl
.label_563:
	mov	rbp, rsi
.label_551:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_565
	or	eax, 2
.label_565:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_566:
	mov	qword ptr [rax], rbp
.label_543:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_557:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408180

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_567
	test	rsi, rsi
	mov	ecx, 1
	je	.label_568
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_568
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_567:
	mov	ecx, 1
.label_568:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081d0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_583
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_583:
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
	ja	.label_572
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_577
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_578
	test	esi, esi
	jne	.label_572
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_589
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_570
.label_572:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_573
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_578
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_579
.label_577:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_576
.label_578:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_584
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_585
.label_584:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_585:
	mov	edx, dword ptr [rax]
.label_571:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_576:
	mov	ebp, eax
.label_569:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_579:
	cmp	eax, 6
	jne	.label_573
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_574
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_580
.label_573:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_582
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_586
.label_589:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_570:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_571
.label_574:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_580:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_575
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_581
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_581
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_569
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_588
.label_581:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_569
.label_582:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_586:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_576
.label_575:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_588:
	test	al, al
	je	.label_569
	test	ebp, ebp
	js	.label_569
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_587
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_569
.label_587:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_569
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084b0

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
	je	.label_590
	cmp	r15, -2
	jb	.label_590
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_590
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_590:
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
	#Procedure 0x408510

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
	jne	.label_592
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_591
	test	cl, cl
	jne	.label_591
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_591
.label_592:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_591
	call	__errno_location
	mov	dword ptr [rax], 0
.label_591:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408570

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_594
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_595
	cmp	byte ptr [rax + 1], 0
	je	.label_593
.label_595:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_594
.label_593:
	xor	ebx, ebx
.label_594:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4085b0

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
	je	.label_596
	mov	rax, rcx
.label_596:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4085e0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_597
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_599
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_597
.label_599:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_597
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_598
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_598:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_597:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408660

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_600
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_600
	test	byte ptr [rbx + 1], 1
	je	.label_600
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_600:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4086a0

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
	jne	.label_601
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_601
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_602
.label_601:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_602:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_603
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_603:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x408710

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]