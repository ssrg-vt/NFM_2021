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
	#Procedure 0x4018d0

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
	mov	rbx, rax
	cmp	dword ptr [dword ptr [rip + tcsetattr_options]],  1
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	jmp	.label_9
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
.label_7:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
.label_9:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
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
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402400

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402430

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.112
	nop	
.label_12:
	mov	edi, OFFSET FLAT:.str.95
	call	strcmp
	test	eax, eax
	je	.label_11
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_12
.label_11:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.95
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.120
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
	je	.label_10
	mov	esi, OFFSET FLAT:.str.122
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_10
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.123
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.124
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.95
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.95
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.125
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.126
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
	.align	16
	#Procedure 0x402550

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r15]
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
	mov	qword ptr [rsp + 0x28], rax
	mov	ebp, 1
	mov	al, 1
	mov	dword ptr [rsp + 0x30], eax
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	xor	r13d, r13d
	jmp	.label_23
	nop	dword ptr [rax + rax]
.label_17:
	mov	r14d, r13d
	mov	r15, rbx
	mov	r13d, dword ptr [rsp + 0x1c]
	mov	rbx, qword ptr [rsp + 0x10]
.label_23:
	mov	edi, r14d
	sub	edi, r12d
	movsxd	rax, r12d
	lea	rsi, [r15 + rax*8]
	mov	edx, OFFSET FLAT:.str.99
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x45
	jg	.label_38
	cmp	eax, -1
	je	.label_13
	cmp	eax, 0xffffff7d
	je	.label_15
	cmp	eax, 0xffffff7e
	jne	.label_20
	jmp	.label_24
	nop	word ptr cs:[rax + rax]
.label_38:
	cmp	eax, 0x46
	je	.label_27
	cmp	eax, 0x61
	je	.label_28
	cmp	eax, 0x67
	jne	.label_20
	mov	r13d, 2
	mov	bl, 1
	jmp	.label_21
	nop	dword ptr [rax]
.label_20:
	add	r12d, ebp
	movsxd	rax, r12d
	mov	rbp, qword ptr [r15 + rax*8]
	mov	esi, OFFSET FLAT:.str.103
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_34
	mov	esi, OFFSET FLAT:.str.104
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_34
	mov	dword ptr [rsp + 0x30], 0
.label_34:
	mov	dword ptr [dword ptr [rip + optind]],  0
	mov	ebp, 1
	jmp	.label_21
.label_27:
	cmp	qword ptr [rsp + 0x28], 0
	jne	.label_18
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_21
.label_28:
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	r13d, 1
.label_21:
	cmp	ebp,  dword ptr [dword ptr [rip + optind]]
	jge	.label_23
	mov	qword ptr [rsp + 0x10], rbx
	mov	dword ptr [rsp + 0x1c], r13d
	mov	r13d, r14d
	mov	rbx, r15
	movsxd	r15, ebp
	movsxd	r14,  dword ptr [dword ptr [rip + optind]]
	add	ebp, r12d
	movsxd	rax, ebp
	lea	rdi, [rbx + rax*8]
	lea	rdx, [r15 + 1]
	cmp	rdx, r14
	cmovl	rdx, r14
	sub	rdx, r15
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	rbp, r15
	nop	dword ptr [rax + rax]
.label_16:
	inc	rbp
	cmp	rbp, r14
	jl	.label_16
	jmp	.label_17
.label_13:
	mov	al, bl
	mov	rcx, qword ptr [rsp + 0x20]
	and	al, cl
	test	al, 1
	jne	.label_26
	mov	eax, dword ptr [rsp + 0x30]
	test	al, 1
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_25
	mov	al, cl
	or	al, bl
	and	al, 1
	jne	.label_30
.label_25:
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_32
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	mov	r12, rcx
	call	dcgettext
	mov	rcx, r12
	mov	r12, rax
.label_32:
	mov	eax, dword ptr [rsp + 0x30]
	or	bl, al
	or	bl, cl
	test	bl, 1
	jne	.label_35
	lea	rax, [rsp + 0x37]
	mov	qword ptr [rsp], rax
	lea	r9, [rsp + 0x36]
	mov	edi, 1
	mov	r8d, OFFSET FLAT:main.check_mode
	mov	rsi, r12
	mov	rdx, r15
	mov	ecx, r14d
	call	apply_settings
.label_35:
	test	rbp, rbp
	je	.label_22
	xor	edi, edi
	mov	edx, 0x800
	xor	ecx, ecx
	mov	rsi, r12
	call	fd_reopen
	test	eax, eax
	js	.label_19
	xor	edi, edi
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	cmp	ecx, -1
	je	.label_33
	and	ecx, 0xfffff7ff
	xor	edi, edi
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	test	eax, eax
	js	.label_33
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:main.mode
	call	tcgetattr
	test	eax, eax
	jne	.label_19
	test	bl, 1
	jne	.label_14
	mov	byte ptr [rsp + 0x36], 0
	mov	byte ptr [rsp + 0x37], 0
	lea	rax, [rsp + 0x37]
	mov	qword ptr [rsp], rax
	lea	r9, [rsp + 0x36]
	xor	edi, edi
	mov	r8d, OFFSET FLAT:main.mode
	mov	rsi, r12
	mov	rdx, r15
	mov	ecx, r14d
	call	apply_settings
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_29
	mov	esi,  dword ptr [dword ptr [rip + tcsetattr_options]]
	xor	edi, edi
	mov	edx, OFFSET FLAT:main.mode
	call	tcsetattr
	test	eax, eax
	jne	.label_19
	xor	edi, edi
	mov	esi, OFFSET FLAT:main.new_mode
	call	tcgetattr
	test	eax, eax
	jne	.label_19
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	call	memcmp
	test	eax, eax
	je	.label_29
	and	dword ptr [dword ptr [rip + label_36]],  0xeff0ffff
	cmp	byte ptr [rsp + 0x36], 0
	jne	.label_37
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	call	memcmp
	test	eax, eax
	je	.label_29
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_14:
	call	screen_columns
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	edi, r13d
	mov	rsi, r12
	call	display_settings
.label_29:
	xor	eax, eax
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_15:
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
.label_24:
	xor	edi, edi
	call	usage
.label_19:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_33:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.105
	jmp	.label_31
.label_30:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	jmp	.label_31
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
.label_31:
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
	.align	16
	#Procedure 0x402a00

	.globl apply_settings
	.type apply_settings, @function
apply_settings:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	r14d, ecx
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 8], rsi
	mov	dword ptr [rsp + 0x18], edi
	cmp	r14d, 2
	jl	.label_39
	lea	eax, [r14 - 1]
	mov	dword ptr [rsp + 0x1c], eax
	mov	r15d, 1
	nop	word ptr cs:[rax + rax]
.label_54:
	movsxd	r12, r15d
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + r12*8]
	test	rax, rax
	je	.label_41
	movzx	ebx, byte ptr [rax]
	lea	r13, [rax + 1]
	cmp	ebx, 0x2d
	cmovne	r13, rax
	mov	esi, OFFSET FLAT:.str.104
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	ebp, OFFSET FLAT:mode_info
	mov	esi, OFFSET FLAT:.str.143
	je	.label_50
	nop	
.label_56:
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_55
	mov	rsi, qword ptr [rbp + 0x20]
	add	rbp, 0x20
	test	rsi, rsi
	jne	.label_56
	xor	r14d, r14d
	jmp	.label_58
	nop	
.label_50:
	movzx	eax, bl
	cmp	eax, 0x2d
	setne	al
	movzx	eax, al
	mov	dword ptr [dword ptr [rip + tcsetattr_options]],  eax
	jmp	.label_41
.label_55:
	movzx	eax, bl
	cmp	eax, 0x2d
	sete	al
	movzx	esi, al
	mov	rdi, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	call	set_mode
	mov	r14b, al
	mov	rax, qword ptr [rsp + 0x70]
	mov	byte ptr [rax], 1
.label_58:
	movzx	eax, bl
	cmp	eax, 0x2d
	setne	al
	test	r14b, r14b
	jne	.label_63
	test	al, al
	je	.label_65
.label_63:
	test	r14b, r14b
	mov	ebp, OFFSET FLAT:control_info
	mov	esi, OFFSET FLAT:.str.234
	je	.label_40
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_41
	nop	word ptr [rax + rax]
.label_40:
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_64
	mov	rsi, qword ptr [rbp + 0x18]
	add	rbp, 0x18
	test	rsi, rsi
	jne	.label_40
	test	r14b, r14b
	je	.label_47
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_41
.label_64:
	cmp	r15d, dword ptr [rsp + 0x1c]
	je	.label_45
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax + r12*8 + 8]
	test	rsi, rsi
	je	.label_45
	inc	r15d
	mov	rdi, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	call	set_control_char
	mov	rax, qword ptr [rsp + 0x70]
	mov	byte ptr [rax], 1
	mov	r14, qword ptr [rsp + 0x28]
.label_41:
	inc	r15d
	cmp	r15d, r14d
	jl	.label_54
	jmp	.label_39
.label_47:
	mov	esi, OFFSET FLAT:.str.134
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_57
	mov	esi, OFFSET FLAT:.str.135
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_59
	mov	esi, OFFSET FLAT:.str.136
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_60
	mov	esi, OFFSET FLAT:.str.137
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_62
	mov	esi, OFFSET FLAT:.str.138
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_62
	mov	esi, OFFSET FLAT:.str.139
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_42
	mov	esi, OFFSET FLAT:.str.140
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_43
	mov	esi, OFFSET FLAT:.str.142
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_46
	mov	rdi, r13
	call	string_to_baud
	cmp	eax, -1
	je	.label_48
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	jne	.label_41
	mov	edi, 2
	mov	rsi, r13
	jmp	.label_51
.label_57:
	cmp	r15d, dword ptr [rsp + 0x1c]
	je	.label_45
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax + r12*8 + 8]
	test	rsi, rsi
	je	.label_45
	inc	r15d
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	mov	r14, qword ptr [rsp + 0x28]
	jne	.label_41
	xor	edi, edi
	jmp	.label_51
.label_59:
	cmp	r15d, dword ptr [rsp + 0x1c]
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_45
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax + r12*8 + 8]
	test	rsi, rsi
	je	.label_45
	inc	r15d
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	jne	.label_41
	mov	edi, 1
.label_51:
	mov	rdx, qword ptr [rsp + 0x20]
	call	set_speed
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 1
.label_52:
	mov	rax, qword ptr [rsp + 0x70]
	mov	byte ptr [rax], 1
	jmp	.label_41
.label_62:
	cmp	r15d, dword ptr [rsp + 0x1c]
	je	.label_45
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax + r12*8 + 8]
	test	rdi, rdi
	je	.label_45
	inc	r15d
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	jne	.label_41
	mov	esi, 0x7fffffff
	call	integer_arg
	mov	edi, 0xffffffff
	mov	esi, eax
	jmp	.label_44
.label_60:
	cmp	r15d, dword ptr [rsp + 0x1c]
	je	.label_45
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax + r12*8 + 8]
	test	rdi, rdi
	je	.label_45
	inc	r15d
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	jne	.label_41
	mov	esi, 0x7fffffff
	call	integer_arg
	mov	esi, 0xffffffff
	mov	edi, eax
.label_44:
	mov	rdx, qword ptr [rsp + 8]
	call	set_window_size
	jmp	.label_41
.label_42:
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	jne	.label_41
	call	screen_columns
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	mov	dword ptr [dword ptr [rip + current_col]],  0
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	call	display_window_size
	jmp	.label_41
.label_43:
	cmp	r15d, dword ptr [rsp + 0x1c]
	je	.label_45
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax + r12*8 + 8]
	test	rdi, rdi
	je	.label_45
	mov	rsi, -1
	call	integer_arg
	mov	rcx, qword ptr [rsp + 0x20]
	mov	byte ptr [rcx + 0x10], al
	movzx	ecx, al
	cmp	rcx, rax
	je	.label_61
	inc	r12
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.141
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax + r12*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_61:
	inc	r15d
	jmp	.label_52
.label_46:
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	jne	.label_41
	call	screen_columns
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	xor	esi, esi
	mov	rdi, qword ptr [rsp + 0x20]
	call	display_speed
	jmp	.label_41
.label_48:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	call	recover_mode
	test	al, al
	jne	.label_52
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.132
	jmp	.label_53
.label_39:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.132
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	dec	r13
	jmp	.label_49
.label_45:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.133
.label_53:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_49:
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ed0

	.globl screen_columns
	.type screen_columns, @function
screen_columns:
	sub	rsp, 0x18
	lea	rsi, [rsp + 0x10]
	mov	edi, 1
	call	get_win_size
	test	eax, eax
	jne	.label_66
	movzx	eax, word ptr [rsp + 0x12]
	test	eax, eax
	jne	.label_68
.label_66:
	mov	edi, OFFSET FLAT:.str.297
	call	getenv
	test	rax, rax
	je	.label_67
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rax
	call	xstrtol
	test	eax, eax
	jne	.label_67
	mov	rax, qword ptr [rsp + 8]
	dec	rax
	cmp	rax, 0x7fffffff
	jb	.label_69
.label_67:
	mov	qword ptr [rsp + 8], 0x50
.label_69:
	mov	eax, dword ptr [rsp + 8]
.label_68:
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f40

	.globl display_settings
	.type display_settings, @function
display_settings:
	cmp	edi, 2
	je	.label_70
	cmp	edi, 1
	je	.label_71
	test	edi, edi
	jne	.label_72
	jmp	display_changed
.label_70:
	jmp	display_recoverable
.label_71:
	mov	rdi, rsi
	jmp	display_all
.label_72:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f70

	.globl set_mode
	.type set_mode, @function
set_mode:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12d, esi
	mov	rbx, rdi
	test	r12b, r12b
	je	.label_88
	test	byte ptr [rbx + 0xc], 4
	jne	.label_88
	xor	eax, eax
	jmp	.label_85
.label_88:
	mov	edi, dword ptr [rbx + 8]
	mov	rsi, r14
	call	mode_type_flag
	test	rax, rax
	je	.label_95
	mov	esi, dword ptr [rax]
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	not	rcx
	and	rcx, rsi
	test	r12b, r12b
	je	.label_96
	not	edx
	and	ecx, edx
	jmp	.label_99
.label_95:
	mov	rbp, qword ptr [rbx]
	mov	esi, OFFSET FLAT:.str.215
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_100
	mov	esi, OFFSET FLAT:.str.216
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_100
	mov	esi, OFFSET FLAT:.str.217
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_103
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x6e
	jne	.label_74
	movzx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x6c
	jne	.label_74
	cmp	byte ptr [rbp + 2], 0
	je	.label_76
.label_74:
	mov	rax, qword ptr [rbx]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x65
	jne	.label_77
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x6b
	jne	.label_77
	cmp	byte ptr [rax + 2], 0
	je	.label_81
.label_77:
	mov	r15, qword ptr [rbx]
	mov	esi, OFFSET FLAT:.str.220
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_84
	mov	esi, OFFSET FLAT:.str.225
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_87
	mov	esi, OFFSET FLAT:.str.223
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_89
	mov	esi, OFFSET FLAT:.str.224
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_91
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x72
	jne	.label_93
	movzx	eax, byte ptr [r15 + 1]
	cmp	eax, 0x61
	jne	.label_93
	movzx	eax, byte ptr [r15 + 2]
	cmp	eax, 0x77
	jne	.label_93
	cmp	byte ptr [r15 + 3], 0
	je	.label_98
.label_93:
	mov	r15, qword ptr [rbx]
	mov	esi, OFFSET FLAT:.str.221
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_98
	mov	esi, OFFSET FLAT:.str.226
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_101
	mov	esi, OFFSET FLAT:.str.227
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_102
	mov	esi, OFFSET FLAT:.str.228
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_75
	mov	esi, OFFSET FLAT:.str.229
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_75
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x63
	jne	.label_80
	movzx	eax, byte ptr [r15 + 1]
	cmp	eax, 0x72
	jne	.label_80
	movzx	eax, byte ptr [r15 + 2]
	cmp	eax, 0x74
	jne	.label_80
	cmp	byte ptr [r15 + 3], 0
	je	.label_83
.label_80:
	mov	rcx, qword ptr [rbx]
	mov	al, 1
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x64
	jne	.label_85
	movzx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x65
	jne	.label_85
	movzx	edx, byte ptr [rcx + 2]
	cmp	edx, 0x63
	jne	.label_85
	cmp	byte ptr [rcx + 3], 0
	jne	.label_85
	mov	byte ptr [r14 + 0x11], 3
	mov	word ptr [r14 + 0x13], 0x157f
	or	dword ptr [r14 + 0xc], 0xa10
	and	byte ptr [r14 + 1], 0xf7
	jmp	.label_85
.label_96:
	or	ecx, edx
.label_99:
	mov	dword ptr [rax], ecx
	jmp	.label_73
.label_100:
	mov	eax, dword ptr [r14 + 8]
	test	r12b, r12b
	jne	.label_94
	and	eax, 0xfffffccf
	or	eax, 0x120
	mov	dword ptr [r14 + 8], eax
	jmp	.label_73
.label_103:
	mov	eax, dword ptr [r14 + 8]
	test	r12b, r12b
	je	.label_97
.label_94:
	and	eax, 0xfffffecf
	or	eax, 0x30
	mov	dword ptr [r14 + 8], eax
.label_73:
	mov	al, 1
.label_85:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_84:
	mov	rdi, r14
	call	sane_mode
	jmp	.label_73
.label_97:
	and	eax, 0xfffffccf
	or	eax, 0x320
	mov	dword ptr [r14 + 8], eax
	jmp	.label_73
.label_87:
	mov	eax, dword ptr [r14 + 0xc]
	test	r12b, r12b
	je	.label_90
	or	eax, 2
	mov	dword ptr [r14 + 0xc], eax
	jmp	.label_73
.label_89:
	mov	eax, 0xfffffecf
	and	eax, dword ptr [r14 + 8]
	test	r12b, r12b
	je	.label_105
	or	eax, 0x120
	mov	dword ptr [r14 + 8], eax
	or	byte ptr [r14], 0x20
	jmp	.label_73
.label_90:
	and	eax, 0xfffffffd
	mov	dword ptr [r14 + 0xc], eax
	jmp	.label_73
.label_76:
	mov	eax, dword ptr [r14]
	test	r12b, r12b
	je	.label_78
	and	eax, 0xfffffe3f
	or	eax, 0x100
	mov	dword ptr [r14], eax
	mov	eax, dword ptr [r14 + 4]
	and	eax, 0xffffffd3
	or	eax, 4
	mov	dword ptr [r14 + 4], eax
	jmp	.label_73
.label_81:
	mov	word ptr [r14 + 0x13], 0x157f
	jmp	.label_73
.label_91:
	mov	eax, 0xfffffecf
	and	eax, dword ptr [r14 + 8]
	test	r12b, r12b
	je	.label_86
	or	eax, 0x120
	mov	dword ptr [r14 + 8], eax
	or	byte ptr [r14], 0x20
	or	byte ptr [r14 + 4], 1
	jmp	.label_73
.label_105:
	or	eax, 0x30
	mov	dword ptr [r14 + 8], eax
	and	byte ptr [r14], 0xdf
	jmp	.label_73
.label_98:
	mov	rax, qword ptr [rbx]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x72
	setne	cl
	mov	dl, r12b
	xor	dl, 1
	or	dl, cl
	cmp	eax, 0x63
	setne	al
	movzx	ecx, dl
	cmp	ecx, 1
	jne	.label_92
	or	al, r12b
	je	.label_92
	mov	dword ptr [r14], 0
	and	byte ptr [r14 + 4], 0xfe
	and	byte ptr [r14 + 0xc], 0xf8
	mov	word ptr [r14 + 0x16], 0x100
	jmp	.label_73
.label_78:
	and	eax, 0xfffffeff
	mov	dword ptr [r14], eax
	and	byte ptr [r14 + 4], 0xfb
	jmp	.label_73
.label_86:
	or	eax, 0x30
	mov	dword ptr [r14 + 8], eax
	and	byte ptr [r14], 0xdf
	and	byte ptr [r14 + 4], 0xfe
	jmp	.label_73
.label_101:
	mov	eax, dword ptr [r14]
	test	r12b, r12b
	je	.label_104
	or	eax, 0x800
	mov	dword ptr [r14], eax
	jmp	.label_73
.label_92:
	or	dword ptr [r14], 0x526
	or	byte ptr [r14 + 4], 1
	or	byte ptr [r14 + 0xc], 3
	jmp	.label_73
.label_75:
	mov	eax, dword ptr [r14 + 0xc]
	test	r12b, r12b
	je	.label_79
	and	eax, 0xfffffffb
	mov	dword ptr [r14 + 0xc], eax
	and	byte ptr [r14 + 1], 0xfd
	and	byte ptr [r14 + 4], 0xfd
	jmp	.label_73
.label_102:
	mov	eax, dword ptr [r14 + 4]
	test	r12b, r12b
	je	.label_82
	or	eax, 0x1800
	mov	dword ptr [r14 + 4], eax
	jmp	.label_73
.label_104:
	and	eax, 0xfffff7ff
	mov	dword ptr [r14], eax
	jmp	.label_73
.label_79:
	or	eax, 4
	mov	dword ptr [r14 + 0xc], eax
	or	byte ptr [r14 + 1], 2
	or	byte ptr [r14 + 4], 2
	jmp	.label_73
.label_82:
	and	eax, 0xffffe7ff
	mov	dword ptr [r14 + 4], eax
	jmp	.label_73
.label_83:
	or	dword ptr [r14 + 0xc], 0xa10
	jmp	.label_73
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4033a0

	.globl set_control_char
	.type set_control_char, @function
set_control_char:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r15]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x6d
	jne	.label_107
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x69
	jne	.label_107
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x6e
	jne	.label_107
	cmp	byte ptr [rax + 3], 0
	je	.label_108
.label_107:
	mov	rdi, qword ptr [r15]
	mov	esi, OFFSET FLAT:.str.251
	call	strcmp
	test	eax, eax
	je	.label_108
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_109
	mov	cl, byte ptr [rbx + 1]
	test	cl, cl
	je	.label_109
	movzx	eax, al
	cmp	eax, 0x5e
	jne	.label_110
	movzx	eax, cl
	cmp	eax, 0x2d
	jne	.label_110
	xor	eax, eax
	cmp	byte ptr [rbx + 2], 0
	je	.label_106
.label_110:
	mov	esi, OFFSET FLAT:.str.253
	mov	rdi, rbx
	call	strcmp
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	je	.label_106
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x5e
	jne	.label_108
	mov	cl, byte ptr [rbx + 1]
	mov	eax, 0x7f
	test	cl, cl
	je	.label_108
	movzx	edx, cl
	cmp	edx, 0x3f
	je	.label_106
	movsx	edi, cl
	call	to_uchar
	movzx	eax, al
	and	eax, 0x9f
	jmp	.label_106
.label_108:
	mov	esi, 0xff
	mov	rdi, rbx
	call	integer_arg
	jmp	.label_106
.label_109:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
.label_106:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	byte ptr [r14 + rcx + 0x11], al
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403480

	.globl set_speed
	.type set_speed, @function
set_speed:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdx
	mov	ebx, edi
	mov	rdi, rsi
	call	string_to_baud
	mov	ebp, eax
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 2
	jne	.label_111
	mov	rdi, r14
	mov	esi, ebp
	call	cfsetispeed
.label_111:
	dec	ebx
	cmp	ebx, 1
	ja	.label_112
	mov	rdi, r14
	mov	esi, ebp
	pop	rbx
	pop	r14
	pop	rbp
	jmp	cfsetospeed
.label_112:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034d0

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
	lea	rsi, [rsp]
	xor	edi, edi
	call	get_win_size
	test	eax, eax
	je	.label_115
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 0x16
	jne	.label_117
	mov	qword ptr [rsp], 0
.label_115:
	test	ebx, ebx
	js	.label_113
	mov	word ptr [rsp], bx
.label_113:
	test	ebp, ebp
	js	.label_116
	mov	word ptr [rsp + 2], bp
.label_116:
	lea	rdx, [rsp]
	xor	edi, edi
	mov	esi, 0x5414
	xor	eax, eax
	call	ioctl
	test	eax, eax
	jne	.label_114
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_114:
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
.label_117:
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403590

	.globl integer_arg
	.type integer_arg, @function
integer_arg:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.255
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	mov	esi, 0
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str.254
	mov	rdi, rbx
	mov	rcx, r14
	mov	r9, rax
	call	xnumtoumax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035e0

	.globl display_window_size
	.type display_window_size, @function
display_window_size:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	ebp, edi
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	get_win_size
	test	eax, eax
	je	.label_120
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	jne	.label_118
	test	bpl, bpl
	jne	.label_119
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
.label_120:
	mov	eax, OFFSET FLAT:.str.257
	mov	edi, OFFSET FLAT:.str.258
	test	bpl, bpl
	cmovne	rdi, rax
	movzx	esi, word ptr [rsp + 8]
	movzx	edx, word ptr [rsp + 0xa]
	xor	eax, eax
	call	wrapf
	test	bpl, bpl
	jne	.label_119
	mov	dword ptr [dword ptr [rip + current_col]],  0
.label_119:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_118:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036b0

	.globl display_speed
	.type display_speed, @function
display_speed:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, esi
	mov	rbx, rdi
	call	cfgetispeed
	test	eax, eax
	je	.label_121
	mov	rdi, rbx
	call	cfgetispeed
	mov	ebp, eax
	mov	rdi, rbx
	call	cfgetospeed
	cmp	ebp, eax
	jne	.label_124
.label_121:
	mov	eax, OFFSET FLAT:.str.259
	mov	ebp, OFFSET FLAT:.str.260
	test	r14b, r14b
	cmovne	rbp, rax
	mov	rdi, rbx
	call	cfgetospeed
	mov	edi, eax
	call	baud_to_value
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbp
	mov	rsi, rcx
	call	wrapf
	jmp	.label_122
.label_124:
	mov	eax, OFFSET FLAT:.str.261
	mov	ebp, OFFSET FLAT:.str.262
	test	r14b, r14b
	cmovne	rbp, rax
	mov	rdi, rbx
	call	cfgetispeed
	mov	edi, eax
	call	baud_to_value
	mov	r15, rax
	mov	rdi, rbx
	call	cfgetospeed
	mov	edi, eax
	call	baud_to_value
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rcx
	call	wrapf
.label_122:
	test	r14b, r14b
	jne	.label_123
	mov	dword ptr [dword ptr [rip + current_col]],  0
.label_123:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403770

	.globl string_to_baud
	.type string_to_baud, @function
string_to_baud:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, -0x330
	nop	
.label_126:
	mov	rsi,  qword ptr [word ptr [rbx + label_125]]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_129
	add	rbx, 0x18
	mov	eax, 0xffffffff
	jne	.label_126
	jmp	.label_128
.label_129:
	mov	eax,  dword ptr [dword ptr [rbx + label_127]]
.label_128:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4037b0

	.globl recover_mode
	.type recover_mode, @function
recover_mode:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x28
	mov	r15, rsi
	lea	rbp, [rsp + 0x10]
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	dword ptr [rax]
.label_134:
	mov	rsi, r14
	mov	rdx, rbp
	call	strtoul_tcflag_t
	test	eax, eax
	jne	.label_131
	mov	rdi, qword ptr [rsp + 8]
	inc	rdi
	inc	rbx
	add	rbp, 4
	cmp	rbx, 4
	jb	.label_134
	mov	eax, dword ptr [rsp + 0x10]
	mov	dword ptr [r15], eax
	mov	eax, dword ptr [rsp + 0x14]
	mov	dword ptr [r15 + 4], eax
	mov	eax, dword ptr [rsp + 0x18]
	mov	dword ptr [r15 + 8], eax
	mov	eax, dword ptr [rsp + 0x1c]
	mov	dword ptr [r15 + 0xc], eax
	add	r15, 0x11
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_132:
	xor	ebp, ebp
	cmp	rbx, 0x1f
	mov	al, 0x3a
	jb	.label_130
	xor	eax, eax
.label_130:
	lea	rdx, [r15 + rbx]
	movzx	ecx, al
	mov	rsi, r14
	call	strtoul_cc_t
	test	eax, eax
	jne	.label_133
	mov	rdi, qword ptr [rsp + 8]
	inc	rdi
	inc	rbx
	mov	bpl, 1
	cmp	rbx, 0x20
	jb	.label_132
	jmp	.label_133
.label_131:
	xor	ebp, ebp
.label_133:
	mov	al, bpl
	add	rsp, 0x28
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403870

	.globl mode_type_flag
	.type mode_type_flag, @function
mode_type_flag:
	xor	eax, eax
	mov	ecx, edi
	cmp	edi, 4
	ja	.label_135
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_137]]
.label_587:
	add	rsi, 8
	jmp	.label_136
.label_589:
	add	rsi, 0xc
	jmp	.label_136
.label_588:
	add	rsi, 4
.label_136:
	mov	rax, rsi
.label_590:
	ret	
.label_135:
	push	rax
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038a0

	.globl sane_mode
	.type sane_mode, @function
sane_mode:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rax, -0x1b0
	nop	
.label_149:
	mov	cl,  byte ptr [byte ptr [rax + label_147]]
	mov	rdx,  qword ptr [word ptr [rax + label_148]]
	mov	byte ptr [r14 + rdx + 0x11], cl
	add	rax, 0x18
	jne	.label_149
	mov	rbx, -0xb20
	mov	r15d, 0xffffffff
	nop	word ptr cs:[rax + rax]
.label_142:
	movsx	eax,  byte ptr [byte ptr [rbx + label_145]]
	test	al, 0x10
	jne	.label_141
	test	al, 1
	jne	.label_144
	test	al, 2
	je	.label_141
	mov	edi,  dword ptr [dword ptr [rbx + label_138]]
	mov	rsi, r14
	call	mode_type_flag
	test	rax, rax
	je	.label_143
	mov	ecx,  dword ptr [dword ptr [rbx + label_139]]
	xor	ecx, r15d
	and	ecx, dword ptr [rax]
	mov	edx,  dword ptr [dword ptr [rbx + label_140]]
	xor	edx, r15d
	and	edx, ecx
	mov	dword ptr [rax], edx
	jmp	.label_141
.label_144:
	mov	edi,  dword ptr [dword ptr [rbx + label_138]]
	mov	rsi, r14
	call	mode_type_flag
	test	rax, rax
	je	.label_146
	mov	ecx,  dword ptr [dword ptr [rbx + label_139]]
	xor	ecx, r15d
	and	ecx, dword ptr [rax]
	or	ecx,  dword ptr [dword ptr [rbx + label_140]]
	mov	dword ptr [rax], ecx
.label_141:
	add	rbx, 0x20
	jne	.label_142
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_146:
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	mov	edx, 0x8cb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.sane_mode
	call	__assert_fail
.label_143:
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	mov	edx, 0x8d1
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.sane_mode
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403990

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039a0

	.globl get_win_size
	.type get_win_size, @function
get_win_size:
	mov	rcx, rsi
	mov	esi, 0x5413
	xor	eax, eax
	mov	rdx, rcx
	jmp	ioctl
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039c0

	.globl wrapf
	.type wrapf, @function
wrapf:
	push	rbx
	sub	rsp, 0xe0
	mov	rbx, rdi
	test	al, al
	je	.label_150
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_150:
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
	js	.label_151
	mov	eax,  dword ptr [dword ptr [rip + current_col]]
	test	eax, eax
	jle	.label_152
	mov	ecx,  dword ptr [dword ptr [rip + max_col]]
	sub	ecx, eax
	cmp	ecx, ebx
	jge	.label_153
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [rip + current_col]],  0
	jmp	.label_152
.label_153:
	mov	edi, 0x20
	call	putchar_unlocked
	inc	dword ptr [dword ptr [rip + current_col]]
.label_152:
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rsp + 0xb8]
	call	free
	add	dword ptr [dword ptr [rip + current_col]],  ebx
	add	rsp, 0xe0
	pop	rbx
	ret	
.label_151:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x403ae0

	.globl baud_to_value
	.type baud_to_value, @function
baud_to_value:
	mov	rcx, -0x330
	xor	eax, eax
	nop	dword ptr [rax]
.label_156:
	cmp	dword ptr [dword ptr [rcx + label_127]],  edi
	je	.label_154
	add	rcx, 0x18
	jne	.label_156
	jmp	.label_157
.label_154:
	mov	rax,  qword ptr [word ptr [rcx + label_155]]
.label_157:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b10

	.globl strtoul_tcflag_t
	.type strtoul_tcflag_t, @function
strtoul_tcflag_t:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	edx, 0x10
	mov	rdi, r12
	mov	rsi, r15
	call	strtoul
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	dword ptr [rbx], 0
	jne	.label_158
	mov	edx, ecx
	cmp	rdx, rcx
	jne	.label_158
	mov	rdx, qword ptr [r15]
	cmp	rdx, r12
	je	.label_158
	movzx	edx, byte ptr [rdx]
	cmp	edx, 0x3a
	jne	.label_158
	mov	dword ptr [r14], ecx
	xor	eax, eax
.label_158:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b80

	.globl strtoul_cc_t
	.type strtoul_cc_t, @function
strtoul_cc_t:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	edx, 0x10
	mov	rdi, r12
	mov	rsi, rbp
	call	strtoul
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	dword ptr [rbx], 0
	jne	.label_159
	movzx	edx, cl
	cmp	rdx, rcx
	jne	.label_159
	mov	rdx, qword ptr [rbp]
	cmp	rdx, r12
	je	.label_159
	movzx	esi, r15b
	movzx	edx, byte ptr [rdx]
	cmp	edx, esi
	jne	.label_159
	mov	byte ptr [r14], cl
	xor	eax, eax
.label_159:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403bf0

	.globl display_changed
	.type display_changed, @function
display_changed:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	call	display_speed
	movzx	esi,  byte ptr [byte ptr [rip + label_165]]
	mov	edi, OFFSET FLAT:.str.298
	xor	eax, eax
	call	wrapf
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	ebp, OFFSET FLAT:control_info
	mov	r14b, 1
	jmp	.label_173
	nop	word ptr [rax + rax]
.label_169:
	add	rbp, 0x18
.label_173:
	mov	rax, qword ptr [rbp]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x6d
	jne	.label_163
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x69
	jne	.label_163
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x6e
	jne	.label_163
	cmp	byte ptr [rax + 3], 0
	je	.label_172
	nop	dword ptr [rax + rax]
.label_163:
	mov	rax, qword ptr [rbp + 0x10]
	movzx	ebx,  byte ptr [byte ptr [rax + label_175]]
	movzx	eax, byte ptr [rbp + 8]
	cmp	ebx, eax
	je	.label_169
	mov	r15, qword ptr [rbp]
	mov	esi, OFFSET FLAT:.str.248
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_169
	movzx	edi, bl
	call	visible
	mov	rcx, rax
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:.str.299
	xor	eax, eax
	mov	rsi, r15
	mov	rdx, rcx
	call	wrapf
	jmp	.label_169
.label_172:
	test	byte ptr [byte ptr [rip + label_177]],  2
	jne	.label_178
	movzx	esi,  byte ptr [byte ptr [rip + label_161]]
	movzx	edx,  byte ptr [byte ptr [rip + label_162]]
	mov	edi, OFFSET FLAT:.str.300
	xor	eax, eax
	call	wrapf
	jmp	.label_171
.label_178:
	test	r14b, 1
	jne	.label_171
	mov	edi, 0xa
	call	putchar_unlocked
.label_171:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	xor	ebp, ebp
	mov	r14b, 1
	mov	rbx, -0xb20
	nop	word ptr cs:[rax + rax]
.label_180:
	test	byte ptr [byte ptr [rbx + label_145]],  8
	jne	.label_160
	cmp	dword ptr [dword ptr [rbx + label_138]],  ebp
	je	.label_176
	test	r14b, 1
	jne	.label_164
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	r14b, 1
.label_164:
	mov	ebp,  dword ptr [dword ptr [rbx + label_138]]
.label_176:
	mov	edi,  dword ptr [dword ptr [rbx + label_138]]
	mov	esi, OFFSET FLAT:main.mode
	call	mode_type_flag
	mov	rcx,  qword ptr [word ptr [rbx + label_139]]
	test	rcx, rcx
	jne	.label_170
	mov	rcx,  qword ptr [word ptr [rbx + label_140]]
.label_170:
	test	rax, rax
	je	.label_179
	mov	edx, dword ptr [rax]
	and	rdx, rcx
	movsx	eax,  byte ptr [byte ptr [rbx + label_145]]
	cmp	rdx,  qword ptr [word ptr [rbx + label_140]]
	jne	.label_174
	test	al, 2
	je	.label_160
	mov	rsi,  qword ptr [word ptr [rbx + label_167]]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:.str_1
	jmp	.label_168
	nop	word ptr [rax + rax]
.label_174:
	and	eax, 5
	cmp	eax, 5
	jne	.label_160
	mov	rsi,  qword ptr [word ptr [rbx + label_167]]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:.str.301
.label_168:
	xor	eax, eax
	call	wrapf
.label_160:
	add	rbx, 0x20
	jne	.label_180
	test	r14b, 1
	jne	.label_166
	mov	edi, 0xa
	call	putchar_unlocked
.label_166:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_179:
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	mov	edx, 0x7a2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.display_changed
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e10

	.globl display_all
	.type display_all, @function
display_all:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	call	display_speed
	mov	edi, 1
	mov	rsi, rbx
	call	display_window_size
	movzx	esi,  byte ptr [byte ptr [rip + label_165]]
	mov	edi, OFFSET FLAT:.str.298
	xor	eax, eax
	call	wrapf
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	ebp, OFFSET FLAT:label_183
	jmp	.label_184
.label_182:
	add	rbp, 0x18
.label_184:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x6d
	jne	.label_185
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x69
	jne	.label_185
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x6e
	jne	.label_185
	cmp	byte ptr [rax + 3], 0
	je	.label_181
	nop	dword ptr [rax + rax]
.label_185:
	mov	rbx, qword ptr [rbp - 0x10]
	mov	esi, OFFSET FLAT:.str.248
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_182
	mov	rax, qword ptr [rbp]
	movzx	edi,  byte ptr [byte ptr [rax + label_175]]
	call	visible
	mov	rcx, rax
	mov	edi, OFFSET FLAT:.str.299
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	wrapf
	jmp	.label_182
.label_181:
	movzx	esi,  byte ptr [byte ptr [rip + label_161]]
	movzx	edx,  byte ptr [byte ptr [rip + label_162]]
	mov	edi, OFFSET FLAT:.str.303
	xor	eax, eax
	call	wrapf
	cmp	dword ptr [dword ptr [rip + current_col]],  0
	je	.label_190
	mov	edi, 0xa
	call	putchar_unlocked
.label_190:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	rbx, -0xb20
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_192:
	test	byte ptr [byte ptr [rbx + label_145]],  8
	jne	.label_188
	cmp	dword ptr [dword ptr [rbx + label_138]],  ebp
	je	.label_187
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	ebp,  dword ptr [dword ptr [rbx + label_138]]
.label_187:
	mov	edi,  dword ptr [dword ptr [rbx + label_138]]
	mov	esi, OFFSET FLAT:main.mode
	call	mode_type_flag
	mov	rcx,  qword ptr [word ptr [rbx + label_139]]
	test	rcx, rcx
	jne	.label_186
	mov	rcx,  qword ptr [word ptr [rbx + label_140]]
.label_186:
	test	rax, rax
	je	.label_189
	mov	eax, dword ptr [rax]
	and	rax, rcx
	cmp	rax,  qword ptr [word ptr [rbx + label_140]]
	jne	.label_191
	mov	rsi,  qword ptr [word ptr [rbx + label_167]]
	mov	edi, OFFSET FLAT:.str_1
	jmp	.label_193
	nop	word ptr cs:[rax + rax]
.label_191:
	test	byte ptr [byte ptr [rbx + label_145]],  4
	je	.label_188
	mov	rsi,  qword ptr [word ptr [rbx + label_167]]
	mov	edi, OFFSET FLAT:.str.301
.label_193:
	xor	eax, eax
	call	wrapf
.label_188:
	add	rbx, 0x20
	jne	.label_192
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [rip + current_col]],  0
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_189:
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	mov	edx, 0x7f6
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.display_all
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ff0

	.globl display_recoverable
	.type display_recoverable, @function
display_recoverable:
	push	rbx
	mov	edx,  dword ptr [dword ptr [rip + main.mode]]
	mov	ecx,  dword ptr [dword ptr [rip + label_194]]
	mov	r8d,  dword ptr [dword ptr [rip + label_195]]
	mov	r9d,  dword ptr [dword ptr [rip + label_177]]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.304
	xor	eax, eax
	call	__printf_chk
	mov	rbx, -0x20
	nop	word ptr cs:[rax + rax]
.label_197:
	movzx	edx,  byte ptr [byte ptr [rbx + label_196]]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.305
	xor	eax, eax
	call	__printf_chk
	inc	rbx
	jne	.label_197
	mov	edi, 0xa
	pop	rbx
	jmp	putchar_unlocked
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404060

	.globl visible
	.type visible, @function
visible:
	mov	eax, OFFSET FLAT:.str.302
	test	dil, dil
	je	.label_198
	movzx	eax, dil
	cmp	eax, 0x20
	jb	.label_203
	cmp	eax, 0x7e
	ja	.label_207
	mov	byte ptr [byte ptr [rip + visible.buf]],  dil
	mov	eax, OFFSET FLAT:label_200
	jmp	.label_205
.label_203:
	mov	byte ptr [byte ptr [rip + visible.buf]],  0x5e
	add	dil, 0x40
	mov	byte ptr [byte ptr [rip + label_200]],  dil
	jmp	.label_201
.label_207:
	cmp	eax, 0x7f
	jne	.label_209
	mov	word ptr [word ptr [rip + visible.buf]],  0x3f5e
.label_201:
	mov	eax, OFFSET FLAT:label_202
.label_205:
	mov	byte ptr [rax], 0
	mov	eax, OFFSET FLAT:visible.buf
.label_198:
	ret	
.label_209:
	mov	word ptr [word ptr [rip + visible.buf]],  0x2d4d
	cmp	eax, 0xa0
	jb	.label_208
	cmp	eax, 0xff
	je	.label_199
	xor	dil, 0x80
	mov	byte ptr [byte ptr [rip + label_202]],  dil
	mov	eax, OFFSET FLAT:label_204
	jmp	.label_205
.label_208:
	mov	byte ptr [byte ptr [rip + label_202]],  0x5e
	add	dil, 0xc0
	mov	byte ptr [byte ptr [rip + label_204]],  dil
	mov	eax, OFFSET FLAT:label_206
	jmp	.label_205
.label_199:
	mov	word ptr [word ptr [rip + label_202]],  0x3f5e
	mov	eax, OFFSET FLAT:label_206
	jmp	.label_205
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404110
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404120
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404130

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_210
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_212
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_212
.label_210:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_211
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_212:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_213
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_211:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_213:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041f0

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
	je	.label_215
	test	ebx, ebx
	js	.label_215
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
	jmp	.label_214
.label_215:
	mov	eax, ebx
.label_214:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404250

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_217
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_216
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_216
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_218
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_218:
	mov	rbx, r14
.label_216:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_217:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404300
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
	.align	16
	#Procedure 0x404340
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
	.align	16
	#Procedure 0x404350
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
	.align	16
	#Procedure 0x404360

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
	.align	16
	#Procedure 0x4043a0
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
	.align	16
	#Procedure 0x4043c0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_219
	test	rdx, rdx
	je	.label_219
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_219:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043f0
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
	.align	16
	#Procedure 0x404470

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
.label_280:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_294
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_300]]
.label_533:
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
.label_534:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_257
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_257
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_341:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_331
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_331:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_341
.label_257:
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
	jmp	.label_230
.label_526:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_230
.label_529:
	mov	al, 1
.label_527:
	mov	r15b, 1
.label_530:
	test	r15b, 1
	mov	cl, 1
	je	.label_234
	mov	cl, al
.label_234:
	mov	al, cl
.label_528:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_310
	test	r10, r10
	je	.label_318
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_263
.label_310:
	xor	ecx, ecx
	jmp	.label_263
.label_531:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_268
	test	r10, r10
	je	.label_275
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_277
.label_532:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_230
.label_318:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_263:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_230
.label_268:
	xor	eax, eax
	jmp	.label_277
.label_275:
	mov	eax, 1
.label_277:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_230:
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
	jmp	.label_249
	nop	dword ptr [rax + rax]
.label_283:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_249:
	cmp	rbp, -1
	je	.label_236
	cmp	rsi, rbp
	jne	.label_238
	jmp	.label_239
	nop	dword ptr [rax]
.label_236:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_239
.label_238:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_246
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_248
	cmp	rbp, -1
	jne	.label_248
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
.label_248:
	cmp	rbx, rbp
	jbe	.label_258
.label_246:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_296:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_279
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_281]]
.label_580:
	test	rsi, rsi
	jne	.label_225
	jmp	.label_287
	nop	word ptr cs:[rax + rax]
.label_258:
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
	jne	.label_306
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_296
	jmp	.label_241
.label_306:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_296
.label_584:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_325
	test	rsi, rsi
	jne	.label_329
	cmp	rbp, 1
	je	.label_287
	xor	r15d, r15d
	jmp	.label_222
.label_573:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_286
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_241
	cmp	edi, 2
	jne	.label_335
	mov	al, r11b
	and	al, 1
	jne	.label_340
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_221
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_221:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_278
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_278:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_237
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_237:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_288
.label_574:
	mov	bl, 0x62
	jmp	.label_251
.label_575:
	mov	cl, 0x74
	jmp	.label_253
.label_576:
	mov	bl, 0x76
	jmp	.label_251
.label_577:
	mov	bl, 0x66
	jmp	.label_251
.label_578:
	mov	cl, 0x72
	jmp	.label_253
.label_581:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_261
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_259
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
	jae	.label_271
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_271:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_289
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_289:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_295
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_295:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_304
.label_582:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_311
	cmp	r14d, 2
	jne	.label_313
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_259
.label_313:
	mov	rdi, r14
	jmp	.label_225
.label_583:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_316
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_259
	mov	rdi, r14
	jmp	.label_319
.label_279:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_321
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
.label_220:
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
	ja	.label_227
	test	dl, dl
	je	.label_227
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_222
.label_325:
	test	rsi, rsi
	jne	.label_232
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_232
.label_287:
	mov	dl, 1
.label_579:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_241
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_222
.label_286:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_225
	mov	r14, rdi
	inc	rsi
	jmp	.label_249
.label_261:
	mov	rdi, r14
.label_304:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_222
.label_316:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_253
.label_319:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_256
.label_253:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_241
.label_251:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_222
	jmp	.label_266
.label_321:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_308
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_308:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_334:
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
	je	.label_299
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_305
	cmp	rbp, -2
	je	.label_314
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_315
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_327:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_322
	bt	rsi, rdx
	jb	.label_324
.label_322:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_327
.label_315:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_272
	xor	r15d, r15d
.label_272:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_334
	jmp	.label_220
.label_232:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_222
.label_311:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_225
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_225
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_225
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_240
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_245
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_241
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_252
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_252:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_243
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_243:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_269
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_269:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_284
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_284:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_222
.label_225:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_222:
	test	r12b, r12b
	je	.label_247
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_293
	jmp	.label_274
	nop	word ptr cs:[rax + rax]
.label_247:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_274
.label_293:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_302
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_256
	jmp	.label_266
	nop	word ptr cs:[rax + rax]
.label_274:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_266
	jmp	.label_256
.label_302:
	mov	bl, r13b
	mov	rsi, r14
.label_266:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_241
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_323
	mov	al, r11b
	and	al, 1
	jne	.label_323
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_328
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_328:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_317
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_317:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_336
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_336:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_323:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_226
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_226:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_235
.label_329:
	xor	r15d, r15d
	jmp	.label_222
.label_227:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_244
	nop	word ptr cs:[rax + rax]
.label_242:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_244:
	test	dl, dl
	je	.label_276
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_267
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_297
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_297:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_267
	nop	word ptr [rax + rax]
.label_276:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_259
	cmp	r14d, 2
	jne	.label_282
	mov	al, r11b
	and	al, 1
	jne	.label_282
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_285
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_285:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_292
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_292:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_309
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_309:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_282:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_326
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_326:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_255
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_255:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_320
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_320:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_267:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_256
	test	r11b, 1
	je	.label_333
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_301
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_339
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_339:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_260
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_260:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_301
	nop	word ptr cs:[rax + rax]
.label_333:
	mov	r14, rdi
.label_301:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_242
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_242
.label_256:
	test	r11b, 1
	je	.label_254
	and	al, 1
	jne	.label_254
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_337
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_337:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_265
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_265:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_235
	nop	dword ptr [rax + rax]
.label_254:
	mov	bl, r13b
	mov	r14, rdi
.label_235:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_283
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_283
.label_335:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_288
.label_340:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_288:
	cmp	rcx, r10
	jae	.label_270
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_270:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_298
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_307
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_330
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_233
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_233:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_291
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_291:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_222
.label_298:
	xor	r15d, r15d
	jmp	.label_222
.label_307:
	xor	r15d, r15d
	jmp	.label_222
.label_330:
	xor	r15d, r15d
	jmp	.label_222
.label_299:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_231
.label_305:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_332
.label_314:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_338
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_228:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_224
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_228
	xor	r15d, r15d
	jmp	.label_231
.label_338:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_332:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_231:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_220
.label_224:
	xor	r15d, r15d
	jmp	.label_231
.label_240:
	xor	r15d, r15d
	jmp	.label_222
.label_245:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_222
	nop	dword ptr [rax + rax]
.label_239:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_264
	or	dl, al
	je	.label_259
.label_264:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_262
	or	dl, al
	jne	.label_262
	test	r8b, 1
	jne	.label_273
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_262
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_280
.label_262:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_290
	test	cl, cl
	jne	.label_290
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_290
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_303:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_250
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_250:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_303
.label_290:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_312
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_312
.label_241:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_223:
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
.label_229:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_312:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_324:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_223
.label_259:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_223
.label_273:
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
	jmp	.label_229
.label_294:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405680
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405690

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
	je	.label_342
	mov	qword ptr [rax], rbx
.label_342:
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
	.align	16
	#Procedure 0x405790
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_343
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_345:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_345
.label_343:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_347
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_346]], OFFSET FLAT:slot0
.label_347:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_344
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_344:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405830

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405840

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
	js	.label_348
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_351
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_354
.label_351:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_350
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
	jne	.label_349
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_349:
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
.label_354:
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
	ja	.label_352
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_353
	mov	rdi, rbx
	call	free
.label_353:
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
.label_352:
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
.label_348:
	call	abort
.label_350:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a10

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a20
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405a30
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
	.align	16
	#Procedure 0x405a40

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
	.align	16
	#Procedure 0x405a80

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
	je	.label_355
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
.label_355:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ae0

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
	.align	16
	#Procedure 0x405b20
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
	.align	16
	#Procedure 0x405b40
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
	.align	16
	#Procedure 0x405b60

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
	mov	rcx,  qword ptr [word ptr [rip + label_356]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_358]]
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
	.align	16
	#Procedure 0x405bd0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405be0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bf0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c00

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
	.align	16
	#Procedure 0x405c50

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405c60

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
	mov	rax,  qword ptr [word ptr [rip + label_356]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_358]]
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
	.align	16
	#Procedure 0x405cd0
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
	.align	16
	#Procedure 0x405cf0
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
	.align	16
	#Procedure 0x405d10

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d20
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
	.align	16
	#Procedure 0x405d30

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405d40

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d50

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
	jne	.label_360
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
	je	.label_359
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_360
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_360
.label_359:
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
	je	.label_361
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_360
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_360
.label_361:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_360:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e30

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
	je	.label_363
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_364
	jmp	.label_362
.label_363:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_362
.label_364:
	mov	eax, 1
	test	bpl, bpl
	je	.label_362
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
.label_362:
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
	.align	16
	#Procedure 0x405ec0

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
	je	.label_367
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_365
	jmp	.label_366
.label_367:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_366
.label_365:
	mov	eax, 1
	test	bpl, bpl
	je	.label_366
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
.label_366:
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
	.align	16
	#Procedure 0x405f50

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
	je	.label_368
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_370
	jmp	.label_369
.label_368:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_369
.label_370:
	mov	eax, 1
	test	bpl, bpl
	je	.label_369
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
.label_369:
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
	.align	16
	#Procedure 0x405fd0

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
	je	.label_373
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_372
	jmp	.label_371
.label_373:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_371
.label_372:
	mov	eax, 1
	test	bpl, bpl
	je	.label_371
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
.label_371:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406040

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
	je	.label_376
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_374
	jmp	.label_375
.label_376:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_375
.label_374:
	mov	eax, 1
	test	bpl, bpl
	je	.label_375
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_375:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060b0

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
	je	.label_377
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_379
	jmp	.label_378
.label_377:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_378
.label_379:
	mov	eax, 1
	test	bpl, bpl
	je	.label_378
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_378:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406100

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
	je	.label_382
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_381
	jmp	.label_380
.label_382:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_380
.label_381:
	mov	eax, 1
	test	bpl, bpl
	je	.label_380
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_380:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406150

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_385
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_384
	jmp	.label_383
.label_385:
	mov	eax, 1
	test	cl, cl
	je	.label_383
.label_384:
	xor	eax, eax
.label_383:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406180

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
	je	.label_386
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_395
.label_386:
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_395:
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
	ja	.label_390
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_392]]
.label_557:
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
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_389
.label_558:
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
.label_559:
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
.label_560:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_387
.label_561:
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
	jmp	.label_388
.label_562:
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
	jmp	.label_394
.label_563:
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
.label_394:
	mov	qword ptr [rsp + 0x10], rdi
.label_388:
	mov	qword ptr [rsp + 8], rsi
.label_387:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_391
.label_565:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_389:
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
	jmp	.label_393
.label_564:
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
.label_393:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_391:
	call	__fprintf_chk
.label_556:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406470
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_396:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_396
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064a0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_399:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_397
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_398
	nop	dword ptr [rax]
.label_397:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_398:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_400
	inc	r9
	cmp	r9, 0xa
	jb	.label_399
.label_400:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406500

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_401
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_401:
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
	.align	16
	#Procedure 0x406590
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
	.align	16
	#Procedure 0x406610
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_402
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_402:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406640

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_403
	test	rax, rax
	je	.label_404
.label_403:
	pop	rbx
	ret	
.label_404:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406660
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_405
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_405:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406690

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_406
	test	rbx, rbx
	jne	.label_406
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_406:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_408
	test	rax, rax
	je	.label_407
.label_408:
	pop	rbx
	ret	
.label_407:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4066c0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_409
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_412
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_410
.label_409:
	test	rcx, rcx
	jne	.label_413
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_413:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_411
.label_410:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_412:
	call	xalloc_die
.label_411:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406740

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406750
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406760
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
	.align	16
	#Procedure 0x406790
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_414
	call	rpl_calloc
	test	rax, rax
	je	.label_414
	pop	rcx
	ret	
.label_414:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067c0

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
	.align	16
	#Procedure 0x4067f0
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
	.align	16
	#Procedure 0x406810

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
	.align	16
	#Procedure 0x406840

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
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_416
	cmp	eax, 1
	je	.label_418
	test	eax, eax
	jne	.label_415
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_420
	cmp	rbx, r15
	jbe	.label_419
.label_420:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_417
	mov	dword ptr [rax], 0x4b
	jmp	.label_415
.label_416:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_415
.label_418:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_415
.label_417:
	mov	dword ptr [rax], 0x22
.label_415:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_419:
	mov	rax, qword ptr [rsp]
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
	.align	16
	#Procedure 0x406910
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
	.align	16
	#Procedure 0x406940

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r8
	mov	r14, rcx
	mov	ebp, edx
	mov	r12, rdi
	cmp	ebp, 0x25
	jae	.label_435
	test	rsi, rsi
	lea	r13, [rsp + 0x10]
	cmovne	r13, rsi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r12
	mov	rsi, r13
	mov	edx, ebp
	call	strtol
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r13]
	cmp	rax, r12
	je	.label_424
	mov	eax, dword ptr [rbx]
	xor	r12d, r12d
	test	eax, eax
	je	.label_428
	mov	r12d, 4
	cmp	eax, 0x22
	jne	.label_423
	mov	r12d, 1
.label_428:
	test	r15, r15
	jne	.label_433
	jmp	.label_434
.label_424:
	mov	r12d, 4
	test	r15, r15
	je	.label_423
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_423
	mov	rdi, r15
	call	strchr
	test	rax, rax
	je	.label_423
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_433:
	mov	rax, qword ptr [r13]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_434
	mov	rdi, r15
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_427
	mov	esi, 0x400
	mov	ebp, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_421
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_421
	mov	esi, 0x30
	mov	rdi, r15
	call	strchr
	mov	ebp, 1
	test	rax, rax
	je	.label_437
	mov	rax, qword ptr [r13]
	movsx	ecx, byte ptr [rax + 1]
	mov	ebp, 1
	cmp	ecx, 0x42
	je	.label_439
	cmp	ecx, 0x44
	je	.label_439
	cmp	ecx, 0x69
	jne	.label_441
	movzx	eax, byte ptr [rax + 2]
	mov	ebp, 3
	cmp	eax, 0x42
	mov	esi, 0x400
	je	.label_421
	mov	ebp, 1
	jmp	.label_421
.label_437:
	mov	esi, 0x400
	jmp	.label_421
.label_439:
	mov	esi, 0x3e8
	mov	ebp, 2
	jmp	.label_421
.label_441:
	mov	esi, 0x400
.label_421:
	mov	rax, qword ptr [r13]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_429
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_430
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_431]]
.label_594:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_440
.label_429:
	cmp	eax, 0x73
	jg	.label_436
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_438
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_425]]
.label_602:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_440
.label_430:
	cmp	eax, 0x54
	je	.label_426
	cmp	eax, 0x59
	jne	.label_427
	lea	rdi, [rsp + 8]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_422
.label_436:
	cmp	eax, 0x74
	je	.label_426
	cmp	eax, 0x77
	jne	.label_427
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_440:
	call	bkm_scale
	jmp	.label_422
.label_596:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	jmp	.label_422
.label_597:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	call	bkm_scale_by_power
	jmp	.label_422
.label_598:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	call	bkm_scale_by_power
	jmp	.label_422
.label_426:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	call	bkm_scale_by_power
	jmp	.label_422
.label_438:
	cmp	eax, 0x5a
	jne	.label_427
	lea	rdi, [rsp + 8]
	mov	edx, 7
	call	bkm_scale_by_power
	jmp	.label_422
.label_427:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
	or	r12d, 2
	jmp	.label_423
.label_595:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	call	bkm_scale_by_power
	jmp	.label_422
.label_599:
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
.label_422:
	or	eax, r12d
	mov	rcx, qword ptr [r13]
	lea	rdx, [rcx + rbp]
	mov	qword ptr [r13], rdx
	cmp	byte ptr [rcx + rbp], 0
	je	.label_432
	or	eax, 2
.label_432:
	mov	r12d, eax
.label_434:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_423:
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_435:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c10

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_442
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_442:
	mov	rax, r8
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_443
	mov	qword ptr [rdi], r8
	mov	eax, 1
	ret	
.label_443:
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c60

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
	je	.label_444
	nop	word ptr cs:[rax + rax]
.label_445:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebx, eax
	dec	ebp
	jne	.label_445
.label_444:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406ca0

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
	jae	.label_455
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_467:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_467
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_450
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoumax
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_457
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_458
	cmp	eax, 0x22
	jne	.label_450
	mov	r12d, 1
.label_458:
	test	rbp, rbp
	jne	.label_462
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_464
.label_457:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_450
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_450
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_450
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_462:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_456
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_454
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_459
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_465
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_446
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_451
	cmp	ecx, 0x44
	je	.label_451
	cmp	ecx, 0x69
	jne	.label_446
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_446
	mov	r14d, 1
	jmp	.label_446
.label_451:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_446:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_460
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_463
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_452]]
.label_605:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_448
.label_460:
	cmp	eax, 0x73
	jg	.label_469
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_470
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_461]]
.label_612:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_448
.label_463:
	cmp	eax, 0x54
	je	.label_453
	cmp	eax, 0x59
	jne	.label_454
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_447
.label_469:
	cmp	eax, 0x74
	je	.label_453
	cmp	eax, 0x77
	jne	.label_454
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_448:
	call	bkm_scale_0
	jmp	.label_468
.label_607:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_447
.label_608:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_447
.label_609:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_447
.label_453:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_447
.label_470:
	cmp	eax, 0x5a
	jne	.label_454
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_447
.label_454:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_449
.label_606:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_447
.label_610:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_447:
	mov	esi, r15d
	call	bkm_scale_by_power_0
.label_468:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_466
	or	eax, 2
.label_466:
	mov	r12d, eax
.label_456:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_464:
	mov	qword ptr [rcx], rax
.label_449:
	mov	r15d, r12d
.label_450:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_459:
	mov	rbx, r13
	jmp	.label_446
.label_465:
	mov	rbx, r13
	jmp	.label_446
.label_455:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406fb0

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
	.align	16
	#Procedure 0x406fe0

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
	je	.label_471
	nop	word ptr cs:[rax + rax]
.label_472:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale_0
	or	ebx, eax
	dec	ebp
	jne	.label_472
.label_471:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407020

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_473
	test	rsi, rsi
	mov	ecx, 1
	je	.label_474
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_474
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_473:
	mov	ecx, 1
.label_474:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407070

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_484
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_484:
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
	ja	.label_477
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_488
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_475
	test	esi, esi
	jne	.label_477
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_478
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_476
.label_477:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_485
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_475
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_479
.label_488:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_475:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_482
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_481
.label_482:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_481:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_479:
	cmp	eax, 6
	jne	.label_485
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_486
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_487
.label_485:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_480
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_483
.label_478:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_476:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_486:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_487:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_480:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_483:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407280

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
	.align	16
	#Procedure 0x407290

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_490
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_492
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_492
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_489
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_493
.label_492:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_493
.label_490:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_493:
	test	ebx, ebx
	js	.label_489
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_489
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_491
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_489
.label_491:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_489:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407360

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
	je	.label_494
	cmp	r15, -2
	jb	.label_494
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_494
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_494:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073c0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_495
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_495
.label_496:
	ret	
.label_495:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_496
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073f0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_497
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_497:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407410
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407420
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
	.align	16
	#Procedure 0x407430
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_498
.label_499:
	ret	
.label_498:
	cmp	edi, 0x7f
	je	.label_499
	xor	eax, eax
	jmp	.label_499
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407450
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407460
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407470
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407480
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407490
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_500
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_500
.label_501:
	ret	
.label_500:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_501
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074c0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_502
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_502:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4074e0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074f0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_503
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_503:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407510
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
	.align	16
	#Procedure 0x407520
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
	.align	16
	#Procedure 0x407530

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
	je	.label_505
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_504
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_504
.label_505:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_504
	test	cl, cl
	jne	.label_504
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_504:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075a0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_507
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_508
	cmp	byte ptr [rax + 1], 0
	je	.label_506
.label_508:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_507
.label_506:
	xor	ebx, ebx
.label_507:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4075e0

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
	je	.label_509
	mov	rax, rcx
.label_509:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407610

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_510
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_512
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_510
.label_512:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_510
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_511
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_511:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_510:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407690

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_513
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_513
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_513:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076c0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_514
	ret	
.label_514:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4076e0

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
	jne	.label_515
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_515
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_516
.label_515:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_516:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_517
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_517:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x407750

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