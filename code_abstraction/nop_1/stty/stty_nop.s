	.section	.text
	.align	16
	#Procedure 0x4018d0

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	ebp, edi
	mov	rbp, rbp
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	r8, rdx
	mov	rsp, rsp
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	cmp	dword ptr [dword ptr [rip + tcsetattr_options]],  1
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	jmp	.label_8
.label_9:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, rbx
	nop	
	call	__fprintf_chk
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
.label_7:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
.label_8:
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.31
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.32
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.38
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.39
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.41
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.43
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.49
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.55
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.61
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.64
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.67
	xor	eax, eax
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rdi, [rdi]
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
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.76
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.77
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.78
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.79
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.85
	nop	
	mov	ecx, OFFSET FLAT:.str.86
	nop	
	xor	eax, eax
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.88
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.89
	nop	
	xor	eax, eax
	mov	rsi, rcx
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.91
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.92
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.93
	xor	eax, eax
	nop	
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402730

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	pop	rax
	jmp	fputs_unlocked
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	nop	
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	nop	
	mov	esi, OFFSET FLAT:.str.112
	nop	word ptr cs:[rax + rax]
.label_11:
	mov	edi, OFFSET FLAT:.str.95
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_12
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	mov	rbp, rbp
	jne	.label_11
.label_12:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.95
	lea	rsi, [rsi]
	cmovne	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.120
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, 5
	xor	esi, esi
	nop	
	call	setlocale
	test	rax, rax
	je	.label_10
	mov	esi, OFFSET FLAT:.str.122
	mov	edx, 3
	mov	rdi, rax
	mov	rbp, rbp
	call	strncmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_10
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.123
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
.label_10:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.124
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.95
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.95
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.125
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	nop	
	cmp	rbx, r14
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.126
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmove	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	jmp	__printf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4028f0

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15, rsi
	mov	r14d, edi
	mov	rbp, rbp
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.97
	nop	
	mov	esi, OFFSET FLAT:.str.98
	mov	rsp, rsp
	call	bindtextdomain
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.97
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	call	atexit
	mov	dword ptr [dword ptr [rip + opterr]],  0
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	mov	ebp, 1
	mov	al, 1
	mov	dword ptr [rsp + 0x30], eax
	xor	ebx, ebx
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_29
	nop	word ptr cs:[rax + rax]
.label_30:
	mov	rbp, rbp
	mov	r14d, r13d
	mov	r15, rbx
	mov	r13d, dword ptr [rsp + 0x1c]
	mov	rbx, qword ptr [rsp + 0x10]
.label_29:
	mov	edi, r14d
	mov	rsp, rsp
	sub	edi, r12d
	nop	
	movsxd	rax, r12d
	mov	rbp, rbp
	lea	rsi, [r15 + rax*8]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.99
	mov	ecx, OFFSET FLAT:longopts
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rbp, rbp
	call	getopt_long
	cmp	eax, 0x45
	jg	.label_32
	mov	rsp, rsp
	cmp	eax, -1
	je	.label_35
	mov	rbp, rbp
	cmp	eax, 0xffffff7d
	je	.label_36
	cmp	eax, 0xffffff7e
	mov	rsp, rsp
	jne	.label_13
	jmp	.label_17
.label_32:
	cmp	eax, 0x46
	mov	rbp, rbp
	je	.label_20
	mov	rbp, rbp
	cmp	eax, 0x61
	je	.label_25
	cmp	eax, 0x67
	mov	rbp, rbp
	jne	.label_13
	lea	rsi, [rsi]
	mov	r13d, 2
	nop	
	mov	bl, 1
	jmp	.label_21
	nop	word ptr cs:[rax + rax]
.label_13:
	add	r12d, ebp
	mov	rbp, rbp
	movsxd	rax, r12d
	mov	rbp, qword ptr [r15 + rax*8]
	mov	esi, OFFSET FLAT:.str.103
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_23
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.104
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_23
	mov	dword ptr [rsp + 0x30], 0
.label_23:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + optind]],  0
	mov	rsp, rsp
	mov	ebp, 1
	mov	rbp, rbp
	jmp	.label_21
.label_20:
	cmp	qword ptr [rsp + 0x28], 0
	jne	.label_26
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_21
.label_25:
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	r13d, 1
.label_21:
	mov	rsp, rsp
	cmp	ebp,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	jge	.label_29
	mov	qword ptr [rsp + 0x10], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], r13d
	mov	r13d, r14d
	nop	
	mov	rbx, r15
	movsxd	r15, ebp
	nop	
	movsxd	r14,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	add	ebp, r12d
	lea	rdi, [rdi]
	movsxd	rax, ebp
	lea	rdi, [rbx + rax*8]
	lea	rsi, [rsi]
	lea	rdx, [r15 + 1]
	cmp	rdx, r14
	lea	rsi, [rsi]
	cmovl	rdx, r14
	sub	rdx, r15
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	rbp, r15
	nop	dword ptr [rax]
.label_31:
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, r14
	lea	rdi, [rdi]
	jl	.label_31
	lea	rsi, [rsi]
	jmp	.label_30
.label_35:
	mov	al, bl
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	and	al, cl
	nop	
	test	al, 1
	jne	.label_34
	mov	eax, dword ptr [rsp + 0x30]
	test	al, 1
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_33
	lea	rdi, [rdi]
	mov	al, cl
	lea	rdi, [rdi]
	or	al, bl
	and	al, 1
	mov	rbp, rbp
	jne	.label_15
.label_33:
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	r12, rbp
	lea	rdi, [rdi]
	jne	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	lea	rsi, [rsi]
	mov	r12, rcx
	call	dcgettext
	nop	
	mov	rcx, r12
	mov	r12, rax
.label_22:
	mov	eax, dword ptr [rsp + 0x30]
	or	bl, al
	or	bl, cl
	mov	rbp, rbp
	test	bl, 1
	jne	.label_28
	lea	rax, [rsp + 0x37]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	lea	r9, [rsp + 0x36]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	r8d, OFFSET FLAT:main.check_mode
	mov	rsp, rsp
	mov	rsi, r12
	mov	rdx, r15
	mov	ecx, r14d
	call	apply_settings
.label_28:
	mov	rsp, rsp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_18
	xor	edi, edi
	mov	edx, 0x800
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rsi, r12
	nop	
	call	fd_reopen
	test	eax, eax
	js	.label_19
	xor	edi, edi
	mov	esi, 3
	xor	eax, eax
	mov	rbp, rbp
	call	rpl_fcntl
	nop	
	mov	ecx, eax
	cmp	ecx, -1
	lea	rdi, [rdi]
	je	.label_27
	and	ecx, 0xfffff7ff
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 4
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	call	rpl_fcntl
	nop	
	test	eax, eax
	mov	rsp, rsp
	js	.label_27
.label_18:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:main.mode
	mov	rsp, rsp
	call	tcgetattr
	mov	rsp, rsp
	test	eax, eax
	jne	.label_19
	lea	rdi, [rdi]
	test	bl, 1
	lea	rdi, [rdi]
	jne	.label_24
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x36], 0
	mov	byte ptr [rsp + 0x37], 0
	lea	rax, [rsp + 0x37]
	mov	qword ptr [rsp], rax
	nop	
	lea	r9, [rsp + 0x36]
	xor	edi, edi
	nop	
	mov	r8d, OFFSET FLAT:main.mode
	mov	rsp, rsp
	mov	rsi, r12
	nop	
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	ecx, r14d
	call	apply_settings
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_14
	lea	rsi, [rsi]
	mov	esi,  dword ptr [dword ptr [rip + tcsetattr_options]]
	xor	edi, edi
	mov	edx, OFFSET FLAT:main.mode
	lea	rdi, [rdi]
	call	tcsetattr
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_19
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:main.new_mode
	mov	rsp, rsp
	call	tcgetattr
	test	eax, eax
	mov	rsp, rsp
	jne	.label_19
	nop	
	mov	edi, OFFSET FLAT:main.mode
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	mov	rbp, rbp
	call	memcmp
	test	eax, eax
	je	.label_14
	nop	
	and	dword ptr [dword ptr [rip + label_37]],  0xeff0ffff
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x36], 0
	mov	rsp, rsp
	jne	.label_38
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	rbp, rbp
	mov	edx, 0x3c
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	je	.label_14
.label_38:
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	error
.label_24:
	lea	rdi, [rdi]
	call	screen_columns
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + current_col]],  0
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rsi, r12
	lea	rsi, [rsi]
	call	display_settings
.label_14:
	nop	
	xor	eax, eax
	nop	
	add	rsp, 0x38
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_36:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.95
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17_0
	mov	r8d, OFFSET FLAT:.str.102
	mov	rbp, rbp
	xor	r9d, r9d
	xor	eax, eax
	lea	rdi, [rdi]
	call	version_etc
	xor	edi, edi
	call	exit
.label_17:
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_19:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rdx, r12
	mov	rbp, rbp
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	lea	rdi, [rdi]
	call	error
.label_27:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_34:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.105
	lea	rdi, [rdi]
	jmp	.label_16
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	lea	rdi, [rdi]
	jmp	.label_16
.label_26:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
.label_16:
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f50

	.globl apply_settings
	.type apply_settings, @function
apply_settings:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r9
	nop	
	mov	qword ptr [rsp + 0x20], r8
	mov	rsp, rsp
	mov	r14d, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	mov	dword ptr [rsp + 0x18], edi
	lea	rdi, [rdi]
	cmp	r14d, 2
	mov	rbp, rbp
	jl	.label_52
	lea	eax, [r14 - 1]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], eax
	mov	rbp, rbp
	mov	r15d, 1
	nop	dword ptr [rax + rax]
.label_50:
	lea	rdi, [rdi]
	movsxd	r12, r15d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + r12*8]
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_41
	movzx	ebx, byte ptr [rax]
	lea	r13, [rax + 1]
	mov	rbp, rbp
	cmp	ebx, 0x2d
	lea	rdi, [rdi]
	cmovne	r13, rax
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.104
	lea	rsi, [rsi]
	mov	rdi, r13
	call	strcmp
	nop	
	test	eax, eax
	mov	ebp, OFFSET FLAT:mode_info
	mov	esi, OFFSET FLAT:.str.143
	mov	rsp, rsp
	je	.label_42
	nop	dword ptr [rax]
.label_44:
	nop	
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_43
	mov	rsi, qword ptr [rbp + 0x20]
	add	rbp, 0x20
	nop	
	test	rsi, rsi
	jne	.label_44
	xor	r14d, r14d
	jmp	.label_47
	nop	word ptr cs:[rax + rax]
.label_42:
	nop	
	movzx	eax, bl
	cmp	eax, 0x2d
	setne	al
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + tcsetattr_options]],  eax
	jmp	.label_41
.label_43:
	movzx	eax, bl
	cmp	eax, 0x2d
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	esi, al
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	rdx, qword ptr [rsp + 0x20]
	call	set_mode
	mov	r14b, al
	mov	rax, qword ptr [rsp + 0x70]
	mov	byte ptr [rax], 1
.label_47:
	lea	rdi, [rdi]
	movzx	eax, bl
	cmp	eax, 0x2d
	setne	al
	test	r14b, r14b
	mov	rbp, rbp
	jne	.label_57
	lea	rdi, [rdi]
	test	al, al
	je	.label_61
.label_57:
	test	r14b, r14b
	lea	rdi, [rdi]
	mov	ebp, OFFSET FLAT:control_info
	mov	esi, OFFSET FLAT:.str.234
	je	.label_63
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_41
	nop	word ptr [rax + rax]
.label_63:
	mov	rdi, r13
	nop	
	call	strcmp
	test	eax, eax
	je	.label_65
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp + 0x18]
	add	rbp, 0x18
	test	rsi, rsi
	lea	rsi, [rsi]
	jne	.label_63
	test	r14b, r14b
	je	.label_39
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	jmp	.label_41
.label_65:
	mov	rsp, rsp
	cmp	r15d, dword ptr [rsp + 0x1c]
	mov	rbp, rbp
	je	.label_40
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax + r12*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_40
	lea	rsi, [rsi]
	inc	r15d
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	set_control_char
	mov	rax, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	byte ptr [rax], 1
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x28]
	nop	dword ptr [rax]
.label_41:
	mov	rsp, rsp
	inc	r15d
	lea	rsi, [rsi]
	cmp	r15d, r14d
	jl	.label_50
	mov	rbp, rbp
	jmp	.label_52
.label_39:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.134
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_58
	nop	
	mov	esi, OFFSET FLAT:.str.135
	mov	rbp, rbp
	mov	rdi, r13
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_62
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.136
	nop	
	mov	rdi, r13
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_64
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.137
	mov	rdi, r13
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_55
	mov	esi, OFFSET FLAT:.str.138
	lea	rdi, [rdi]
	mov	rdi, r13
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_55
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.139
	mov	rdi, r13
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_45
	mov	esi, OFFSET FLAT:.str.140
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_49
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.142
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	je	.label_59
	mov	rdi, r13
	lea	rsi, [rsi]
	call	string_to_baud
	cmp	eax, -1
	je	.label_53
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	jne	.label_41
	mov	edi, 2
	mov	rsi, r13
	mov	rsp, rsp
	jmp	.label_56
.label_58:
	nop	
	cmp	r15d, dword ptr [rsp + 0x1c]
	nop	
	je	.label_40
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + r12*8 + 8]
	mov	rsp, rsp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_40
	inc	r15d
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	jne	.label_41
	xor	edi, edi
	jmp	.label_56
.label_62:
	cmp	r15d, dword ptr [rsp + 0x1c]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_40
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax + r12*8 + 8]
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_40
	inc	r15d
	mov	eax, dword ptr [rsp + 0x18]
	nop	
	test	al, al
	jne	.label_41
	lea	rdi, [rdi]
	mov	edi, 1
.label_56:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	call	set_speed
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 1
.label_46:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	byte ptr [rax], 1
	mov	rbp, rbp
	jmp	.label_41
.label_55:
	lea	rdi, [rdi]
	cmp	r15d, dword ptr [rsp + 0x1c]
	nop	
	je	.label_40
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + r12*8 + 8]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_40
	inc	r15d
	mov	eax, dword ptr [rsp + 0x18]
	nop	
	test	al, al
	jne	.label_41
	mov	esi, 0x7fffffff
	lea	rdi, [rdi]
	call	integer_arg
	mov	edi, 0xffffffff
	mov	esi, eax
	lea	rdi, [rdi]
	jmp	.label_60
.label_64:
	lea	rsi, [rsi]
	cmp	r15d, dword ptr [rsp + 0x1c]
	je	.label_40
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax + r12*8 + 8]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_40
	inc	r15d
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	jne	.label_41
	lea	rdi, [rdi]
	mov	esi, 0x7fffffff
	call	integer_arg
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	edi, eax
.label_60:
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	set_window_size
	lea	rdi, [rdi]
	jmp	.label_41
.label_45:
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	jne	.label_41
	call	screen_columns
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	mov	dword ptr [dword ptr [rip + current_col]],  0
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	call	display_window_size
	jmp	.label_41
.label_49:
	cmp	r15d, dword ptr [rsp + 0x1c]
	je	.label_40
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax + r12*8 + 8]
	test	rdi, rdi
	je	.label_40
	mov	rsi, -1
	mov	rsp, rsp
	call	integer_arg
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	byte ptr [rcx + 0x10], al
	mov	rbp, rbp
	movzx	ecx, al
	mov	rbp, rbp
	cmp	rcx, rax
	lea	rdi, [rdi]
	je	.label_51
	mov	rsp, rsp
	inc	r12
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.141
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + r12*8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
.label_51:
	lea	rsi, [rsi]
	inc	r15d
	jmp	.label_46
.label_59:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	test	al, al
	nop	
	jne	.label_41
	call	screen_columns
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	display_speed
	lea	rdi, [rdi]
	jmp	.label_41
.label_53:
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	recover_mode
	test	al, al
	mov	rsp, rsp
	jne	.label_46
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.132
	lea	rsi, [rsi]
	jmp	.label_48
.label_52:
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_61:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.132
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	dec	r13
	nop	
	jmp	.label_54
.label_40:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.133
.label_48:
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
.label_54:
	mov	rdi, r13
	lea	rsi, [rsi]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	mov	edi, 1
	mov	rsp, rsp
	call	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035e0

	.globl screen_columns
	.type screen_columns, @function
screen_columns:
	sub	rsp, 0x18
	mov	rbp, rbp
	lea	rsi, [rsp + 0x10]
	mov	rbp, rbp
	mov	edi, 1
	nop	
	call	get_win_size
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_69
	movzx	eax, word ptr [rsp + 0x12]
	test	eax, eax
	jne	.label_66
.label_69:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.297
	mov	rsp, rsp
	call	getenv
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_68
	lea	rcx, [rsp + 8]
	nop	
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str_0
	mov	rbp, rbp
	mov	rdi, rax
	call	xstrtol
	test	eax, eax
	mov	rbp, rbp
	jne	.label_68
	mov	rax, qword ptr [rsp + 8]
	dec	rax
	cmp	rax, 0x7fffffff
	mov	rsp, rsp
	jb	.label_67
.label_68:
	nop	
	mov	qword ptr [rsp + 8], 0x50
.label_67:
	nop	
	mov	eax, dword ptr [rsp + 8]
.label_66:
	add	rsp, 0x18
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403670

	.globl display_settings
	.type display_settings, @function
display_settings:
	cmp	edi, 2
	je	.label_70
	cmp	edi, 1
	lea	rdi, [rdi]
	je	.label_71
	lea	rdi, [rdi]
	test	edi, edi
	jne	.label_72
	jmp	display_changed
.label_70:
	jmp	display_recoverable
.label_71:
	lea	rdi, [rdi]
	mov	rdi, rsi
	jmp	display_all
.label_72:
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4036a0

	.globl set_mode
	.type set_mode, @function
set_mode:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	push	rbx
	mov	rbp, rbp
	mov	r14, rdx
	mov	r12d, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	r12b, r12b
	je	.label_96
	test	byte ptr [rbx + 0xc], 4
	lea	rdi, [rdi]
	jne	.label_96
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_82
.label_96:
	mov	edi, dword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rsi, r14
	call	mode_type_flag
	test	rax, rax
	je	.label_103
	mov	esi, dword ptr [rax]
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	not	rcx
	nop	
	and	rcx, rsi
	mov	rsp, rsp
	test	r12b, r12b
	je	.label_105
	mov	rbp, rbp
	not	edx
	and	ecx, edx
	jmp	.label_73
.label_103:
	mov	rbp, qword ptr [rbx]
	mov	esi, OFFSET FLAT:.str.215
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_81
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.216
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_81
	nop	
	mov	esi, OFFSET FLAT:.str.217
	mov	rdi, rbp
	mov	rsp, rsp
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_86
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x6e
	jne	.label_87
	movzx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x6c
	lea	rdi, [rdi]
	jne	.label_87
	cmp	byte ptr [rbp + 2], 0
	je	.label_89
.label_87:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx]
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x65
	jne	.label_92
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x6b
	mov	rbp, rbp
	jne	.label_92
	cmp	byte ptr [rax + 2], 0
	je	.label_97
.label_92:
	mov	r15, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.220
	mov	rsp, rsp
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_100
	mov	esi, OFFSET FLAT:.str.225
	mov	rdi, r15
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_83
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.223
	mov	rdi, r15
	nop	
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_76
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.224
	mov	rdi, r15
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_90
	mov	rsp, rsp
	movzx	eax, byte ptr [r15]
	mov	rbp, rbp
	cmp	eax, 0x72
	nop	
	jne	.label_80
	mov	rbp, rbp
	movzx	eax, byte ptr [r15 + 1]
	lea	rdi, [rdi]
	cmp	eax, 0x61
	mov	rbp, rbp
	jne	.label_80
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r15 + 2]
	mov	rsp, rsp
	cmp	eax, 0x77
	jne	.label_80
	mov	rbp, rbp
	cmp	byte ptr [r15 + 3], 0
	lea	rdi, [rdi]
	je	.label_85
.label_80:
	mov	rbp, rbp
	mov	r15, qword ptr [rbx]
	mov	esi, OFFSET FLAT:.str.221
	mov	rsp, rsp
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_85
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.226
	lea	rsi, [rsi]
	mov	rdi, r15
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_94
	mov	esi, OFFSET FLAT:.str.227
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_99
	mov	esi, OFFSET FLAT:.str.228
	mov	rbp, rbp
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	nop	
	je	.label_104
	mov	esi, OFFSET FLAT:.str.229
	lea	rdi, [rdi]
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	nop	
	je	.label_104
	mov	rsp, rsp
	movzx	eax, byte ptr [r15]
	nop	
	cmp	eax, 0x63
	jne	.label_74
	mov	rbp, rbp
	movzx	eax, byte ptr [r15 + 1]
	nop	
	cmp	eax, 0x72
	jne	.label_74
	mov	rbp, rbp
	movzx	eax, byte ptr [r15 + 2]
	cmp	eax, 0x74
	mov	rsp, rsp
	jne	.label_74
	cmp	byte ptr [r15 + 3], 0
	lea	rdi, [rdi]
	je	.label_79
.label_74:
	mov	rcx, qword ptr [rbx]
	nop	
	mov	al, 1
	nop	
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x64
	jne	.label_82
	movzx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x65
	jne	.label_82
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + 2]
	cmp	edx, 0x63
	jne	.label_82
	cmp	byte ptr [rcx + 3], 0
	nop	
	jne	.label_82
	mov	byte ptr [r14 + 0x11], 3
	lea	rsi, [rsi]
	mov	word ptr [r14 + 0x13], 0x157f
	lea	rsi, [rsi]
	or	dword ptr [r14 + 0xc], 0xa10
	and	byte ptr [r14 + 1], 0xf7
	mov	rbp, rbp
	jmp	.label_82
.label_105:
	or	ecx, edx
.label_73:
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	jmp	.label_75
.label_81:
	mov	eax, dword ptr [r14 + 8]
	test	r12b, r12b
	jne	.label_91
	and	eax, 0xfffffccf
	lea	rsi, [rsi]
	or	eax, 0x120
	mov	dword ptr [r14 + 8], eax
	jmp	.label_75
.label_86:
	mov	eax, dword ptr [r14 + 8]
	mov	rbp, rbp
	test	r12b, r12b
	je	.label_95
.label_91:
	and	eax, 0xfffffecf
	or	eax, 0x30
	mov	dword ptr [r14 + 8], eax
.label_75:
	mov	rbp, rbp
	mov	al, 1
.label_82:
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_100:
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	sane_mode
	lea	rdi, [rdi]
	jmp	.label_75
.label_95:
	mov	rbp, rbp
	and	eax, 0xfffffccf
	lea	rdi, [rdi]
	or	eax, 0x320
	mov	rbp, rbp
	mov	dword ptr [r14 + 8], eax
	lea	rdi, [rdi]
	jmp	.label_75
.label_83:
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14 + 0xc]
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_102
	or	eax, 2
	mov	rsp, rsp
	mov	dword ptr [r14 + 0xc], eax
	jmp	.label_75
.label_76:
	mov	rbp, rbp
	mov	eax, 0xfffffecf
	nop	
	and	eax, dword ptr [r14 + 8]
	test	r12b, r12b
	lea	rdi, [rdi]
	je	.label_78
	or	eax, 0x120
	mov	rsp, rsp
	mov	dword ptr [r14 + 8], eax
	or	byte ptr [r14], 0x20
	lea	rsi, [rsi]
	jmp	.label_75
.label_102:
	and	eax, 0xfffffffd
	mov	dword ptr [r14 + 0xc], eax
	jmp	.label_75
.label_89:
	mov	rbp, rbp
	mov	eax, dword ptr [r14]
	mov	rbp, rbp
	test	r12b, r12b
	je	.label_84
	and	eax, 0xfffffe3f
	or	eax, 0x100
	mov	rsp, rsp
	mov	dword ptr [r14], eax
	nop	
	mov	eax, dword ptr [r14 + 4]
	nop	
	and	eax, 0xffffffd3
	or	eax, 4
	mov	dword ptr [r14 + 4], eax
	jmp	.label_75
.label_97:
	mov	word ptr [r14 + 0x13], 0x157f
	nop	
	jmp	.label_75
.label_90:
	mov	eax, 0xfffffecf
	and	eax, dword ptr [r14 + 8]
	lea	rdi, [rdi]
	test	r12b, r12b
	lea	rdi, [rdi]
	je	.label_93
	or	eax, 0x120
	mov	dword ptr [r14 + 8], eax
	or	byte ptr [r14], 0x20
	lea	rsi, [rsi]
	or	byte ptr [r14 + 4], 1
	lea	rsi, [rsi]
	jmp	.label_75
.label_78:
	nop	
	or	eax, 0x30
	mov	dword ptr [r14 + 8], eax
	and	byte ptr [r14], 0xdf
	jmp	.label_75
.label_85:
	mov	rax, qword ptr [rbx]
	nop	
	movzx	eax, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	eax, 0x72
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	mov	dl, r12b
	nop	
	xor	dl, 1
	or	dl, cl
	cmp	eax, 0x63
	setne	al
	lea	rdi, [rdi]
	movzx	ecx, dl
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_77
	or	al, r12b
	lea	rsi, [rsi]
	je	.label_77
	mov	dword ptr [r14], 0
	mov	rsp, rsp
	and	byte ptr [r14 + 4], 0xfe
	mov	rbp, rbp
	and	byte ptr [r14 + 0xc], 0xf8
	lea	rdi, [rdi]
	mov	word ptr [r14 + 0x16], 0x100
	jmp	.label_75
.label_84:
	lea	rdi, [rdi]
	and	eax, 0xfffffeff
	nop	
	mov	dword ptr [r14], eax
	and	byte ptr [r14 + 4], 0xfb
	mov	rsp, rsp
	jmp	.label_75
.label_93:
	or	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [r14 + 8], eax
	and	byte ptr [r14], 0xdf
	and	byte ptr [r14 + 4], 0xfe
	mov	rbp, rbp
	jmp	.label_75
.label_94:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r14]
	lea	rsi, [rsi]
	test	r12b, r12b
	je	.label_88
	nop	
	or	eax, 0x800
	mov	rbp, rbp
	mov	dword ptr [r14], eax
	nop	
	jmp	.label_75
.label_77:
	nop	
	or	dword ptr [r14], 0x526
	or	byte ptr [r14 + 4], 1
	or	byte ptr [r14 + 0xc], 3
	lea	rdi, [rdi]
	jmp	.label_75
.label_104:
	mov	eax, dword ptr [r14 + 0xc]
	test	r12b, r12b
	je	.label_98
	mov	rbp, rbp
	and	eax, 0xfffffffb
	nop	
	mov	dword ptr [r14 + 0xc], eax
	and	byte ptr [r14 + 1], 0xfd
	nop	
	and	byte ptr [r14 + 4], 0xfd
	lea	rdi, [rdi]
	jmp	.label_75
.label_99:
	mov	rsp, rsp
	mov	eax, dword ptr [r14 + 4]
	lea	rdi, [rdi]
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_101
	or	eax, 0x1800
	mov	rbp, rbp
	mov	dword ptr [r14 + 4], eax
	lea	rsi, [rsi]
	jmp	.label_75
.label_88:
	and	eax, 0xfffff7ff
	mov	rbp, rbp
	mov	dword ptr [r14], eax
	jmp	.label_75
.label_98:
	or	eax, 4
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 0xc], eax
	nop	
	or	byte ptr [r14 + 1], 2
	nop	
	or	byte ptr [r14 + 4], 2
	jmp	.label_75
.label_101:
	mov	rbp, rbp
	and	eax, 0xffffe7ff
	mov	dword ptr [r14 + 4], eax
	jmp	.label_75
.label_79:
	or	dword ptr [r14 + 0xc], 0xa10
	mov	rsp, rsp
	jmp	.label_75
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c50

	.globl set_control_char
	.type set_control_char, @function
set_control_char:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	rax, qword ptr [r15]
	movzx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x6d
	mov	rsp, rsp
	jne	.label_109
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x69
	jne	.label_109
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x6e
	lea	rsi, [rsi]
	jne	.label_109
	nop	
	cmp	byte ptr [rax + 3], 0
	je	.label_108
.label_109:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.251
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_108
	mov	rbp, rbp
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_106
	nop	
	mov	cl, byte ptr [rbx + 1]
	test	cl, cl
	mov	rbp, rbp
	je	.label_106
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0x5e
	lea	rsi, [rsi]
	jne	.label_110
	mov	rsp, rsp
	movzx	eax, cl
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_110
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 2], 0
	lea	rdi, [rdi]
	je	.label_107
.label_110:
	nop	
	mov	esi, OFFSET FLAT:.str.253
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	call	strcmp
	lea	rdi, [rdi]
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	je	.label_107
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x5e
	jne	.label_108
	mov	cl, byte ptr [rbx + 1]
	lea	rsi, [rsi]
	mov	eax, 0x7f
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_108
	nop	
	movzx	edx, cl
	cmp	edx, 0x3f
	je	.label_107
	movsx	edi, cl
	call	to_uchar
	movzx	eax, al
	and	eax, 0x9f
	lea	rsi, [rsi]
	jmp	.label_107
.label_108:
	mov	rbp, rbp
	mov	esi, 0xff
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	call	integer_arg
	lea	rsi, [rsi]
	jmp	.label_107
.label_106:
	mov	rbp, rbp
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
.label_107:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	byte ptr [r14 + rcx + 0x11], al
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403da0

	.globl set_speed
	.type set_speed, @function
set_speed:
	push	rbp
	mov	rsp, rsp
	push	r14
	push	rbx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	ebx, edi
	lea	rsi, [rsi]
	mov	rdi, rsi
	call	string_to_baud
	mov	ebp, eax
	mov	eax, ebx
	or	eax, 2
	lea	rdi, [rdi]
	cmp	eax, 2
	jne	.label_112
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	esi, ebp
	call	cfsetispeed
.label_112:
	dec	ebx
	cmp	ebx, 1
	ja	.label_111
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	esi, ebp
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	cfsetospeed
.label_111:
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e00

	.globl set_window_size
	.type set_window_size, @function
set_window_size:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	r14, rdx
	mov	rbp, rbp
	mov	ebp, esi
	lea	rsi, [rsi]
	mov	ebx, edi
	mov	rsp, rsp
	lea	rsi, [rsp]
	xor	edi, edi
	call	get_win_size
	mov	rbp, rbp
	test	eax, eax
	je	.label_115
	mov	rsp, rsp
	call	__errno_location
	mov	r15d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	r15d, 0x16
	mov	rsp, rsp
	jne	.label_117
	mov	qword ptr [rsp], 0
.label_115:
	test	ebx, ebx
	js	.label_116
	mov	word ptr [rsp], bx
.label_116:
	test	ebp, ebp
	js	.label_113
	lea	rsi, [rsi]
	mov	word ptr [rsp + 2], bp
.label_113:
	lea	rdx, [rsp]
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 0x5414
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	ioctl
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_114
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_114:
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, r14
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_117:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r15d
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x403f10

	.globl integer_arg
	.type integer_arg, @function
integer_arg:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.255
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	dword ptr [rsp], 0
	mov	rsp, rsp
	mov	esi, 0
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str.254
	nop	
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rcx, r14
	nop	
	mov	r9, rax
	mov	rsp, rsp
	call	xnumtoumax
	mov	rbp, rbp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f80

	.globl display_window_size
	.type display_window_size, @function
display_window_size:
	lea	rsi, [rsi]
	push	rbp
	nop	
	push	r14
	push	rbx
	sub	rsp, 0x10
	nop	
	mov	r14, rsi
	mov	ebp, edi
	lea	rsi, [rsp + 8]
	xor	edi, edi
	mov	rbp, rbp
	call	get_win_size
	test	eax, eax
	je	.label_118
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	nop	
	cmp	ebx, 0x16
	lea	rsi, [rsi]
	jne	.label_120
	test	bpl, bpl
	lea	rsi, [rsi]
	jne	.label_119
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.256
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, r14
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_118:
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.257
	mov	edi, OFFSET FLAT:.str.258
	test	bpl, bpl
	lea	rdi, [rdi]
	cmovne	rdi, rax
	mov	rbp, rbp
	movzx	esi, word ptr [rsp + 8]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rsp + 0xa]
	xor	eax, eax
	mov	rsp, rsp
	call	wrapf
	lea	rsi, [rsi]
	test	bpl, bpl
	jne	.label_119
	nop	
	mov	dword ptr [dword ptr [rip + current_col]],  0
.label_119:
	add	rsp, 0x10
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	rbp
	ret	
.label_120:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040a0

	.globl display_speed
	.type display_speed, @function
display_speed:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14d, esi
	mov	rbx, rdi
	call	cfgetispeed
	test	eax, eax
	je	.label_121
	mov	rdi, rbx
	call	cfgetispeed
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	cfgetospeed
	cmp	ebp, eax
	lea	rdi, [rdi]
	jne	.label_123
.label_121:
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.259
	mov	ebp, OFFSET FLAT:.str.260
	lea	rsi, [rsi]
	test	r14b, r14b
	cmovne	rbp, rax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	cfgetospeed
	lea	rdi, [rdi]
	mov	edi, eax
	call	baud_to_value
	mov	rsp, rsp
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	wrapf
	jmp	.label_122
.label_123:
	mov	eax, OFFSET FLAT:.str.261
	mov	rsp, rsp
	mov	ebp, OFFSET FLAT:.str.262
	test	r14b, r14b
	cmovne	rbp, rax
	nop	
	mov	rdi, rbx
	call	cfgetispeed
	mov	edi, eax
	lea	rdi, [rdi]
	call	baud_to_value
	mov	r15, rax
	mov	rdi, rbx
	call	cfgetospeed
	mov	edi, eax
	lea	rsi, [rsi]
	call	baud_to_value
	mov	rcx, rax
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbp
	nop	
	mov	rsi, r15
	mov	rdx, rcx
	call	wrapf
.label_122:
	mov	rsp, rsp
	test	r14b, r14b
	jne	.label_124
	mov	dword ptr [dword ptr [rip + current_col]],  0
.label_124:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4041a0

	.globl string_to_baud
	.type string_to_baud, @function
string_to_baud:
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbp, rbp
	mov	rbx, -0x330
	nop	word ptr [rax + rax]
.label_127:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rbx + label_125]]
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_126
	add	rbx, 0x18
	mov	rsp, rsp
	mov	eax, 0xffffffff
	jne	.label_127
	jmp	.label_128
.label_126:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rbx + label_129]]
.label_128:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404200

	.globl recover_mode
	.type recover_mode, @function
recover_mode:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r15, rsi
	nop	
	lea	rbp, [rsp + 0x10]
	xor	ebx, ebx
	lea	rdi, [rdi]
	lea	r14, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_134:
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	strtoul_tcflag_t
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_130
	mov	rdi, qword ptr [rsp + 8]
	inc	rdi
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	add	rbp, 4
	lea	rsi, [rsi]
	cmp	rbx, 4
	jb	.label_134
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x10]
	nop	
	mov	dword ptr [r15], eax
	mov	eax, dword ptr [rsp + 0x14]
	mov	dword ptr [r15 + 4], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x18]
	mov	dword ptr [r15 + 8], eax
	mov	eax, dword ptr [rsp + 0x1c]
	mov	dword ptr [r15 + 0xc], eax
	mov	rbp, rbp
	add	r15, 0x11
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_132:
	xor	ebp, ebp
	mov	rsp, rsp
	cmp	rbx, 0x1f
	mov	al, 0x3a
	jb	.label_133
	lea	rdi, [rdi]
	xor	eax, eax
.label_133:
	nop	
	lea	rdx, [r15 + rbx]
	movzx	ecx, al
	mov	rbp, rbp
	mov	rsi, r14
	call	strtoul_cc_t
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_131
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	inc	rdi
	nop	
	inc	rbx
	mov	rbp, rbp
	mov	bpl, 1
	cmp	rbx, 0x20
	jb	.label_132
	nop	
	jmp	.label_131
.label_130:
	mov	rbp, rbp
	xor	ebp, ebp
.label_131:
	lea	rsi, [rsi]
	mov	al, bpl
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404310

	.globl mode_type_flag
	.type mode_type_flag, @function
mode_type_flag:
	xor	eax, eax
	mov	ecx, edi
	cmp	edi, 4
	ja	.label_135
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_137]]
.label_585:
	mov	rbp, rbp
	add	rsi, 8
	jmp	.label_136
.label_587:
	lea	rdi, [rdi]
	add	rsi, 0xc
	mov	rbp, rbp
	jmp	.label_136
.label_586:
	mov	rsp, rsp
	add	rsi, 4
.label_136:
	mov	rax, rsi
.label_588:
	ret	
.label_135:
	push	rax
	mov	rsp, rsp
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404350

	.globl sane_mode
	.type sane_mode, @function
sane_mode:
	mov	rsp, rsp
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rsp, rsp
	mov	rax, -0x1b0
	nop	word ptr cs:[rax + rax]
.label_142:
	mov	cl,  byte ptr [byte ptr [rax + label_140]]
	mov	rdx,  qword ptr [word ptr [rax + label_141]]
	mov	byte ptr [r14 + rdx + 0x11], cl
	lea	rdi, [rdi]
	add	rax, 0x18
	jne	.label_142
	mov	rbx, -0xb20
	lea	rdi, [rdi]
	mov	r15d, 0xffffffff
	nop	dword ptr [rax + rax]
.label_145:
	lea	rsi, [rsi]
	movsx	eax,  byte ptr [byte ptr [rbx + label_138]]
	test	al, 0x10
	mov	rbp, rbp
	jne	.label_139
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_149
	lea	rdi, [rdi]
	test	al, 2
	je	.label_139
	nop	
	mov	edi,  dword ptr [dword ptr [rbx + label_144]]
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	call	mode_type_flag
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_146
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rbx + label_147]]
	mov	rbp, rbp
	xor	ecx, r15d
	and	ecx, dword ptr [rax]
	mov	edx,  dword ptr [dword ptr [rbx + label_148]]
	xor	edx, r15d
	mov	rbp, rbp
	and	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rax], edx
	nop	
	jmp	.label_139
	nop	
.label_149:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rbx + label_144]]
	mov	rsi, r14
	call	mode_type_flag
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_143
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rbx + label_147]]
	lea	rdi, [rdi]
	xor	ecx, r15d
	and	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	or	ecx,  dword ptr [dword ptr [rbx + label_148]]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
.label_139:
	lea	rdi, [rdi]
	add	rbx, 0x20
	lea	rdi, [rdi]
	jne	.label_145
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	ret	
.label_143:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	mov	rbp, rbp
	mov	edx, 0x8cb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.sane_mode
	nop	
	call	__assert_fail
.label_146:
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	mov	edx, 0x8d1
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.sane_mode
	lea	rdi, [rdi]
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	nop	
	movzx	eax, dil
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0

	.globl get_win_size
	.type get_win_size, @function
get_win_size:
	lea	rsi, [rsi]
	mov	rcx, rsi
	mov	rsp, rsp
	mov	esi, 0x5413
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	jmp	ioctl
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044e0

	.globl wrapf
	.type wrapf, @function
wrapf:
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0xe0
	mov	rbx, rdi
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_150
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x90], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_150:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xd0], rax
	nop	
	lea	rax, [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rax
	nop	
	mov	dword ptr [rsp + 0xc4], 0x30
	mov	dword ptr [rsp + 0xc0], 8
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xb8]
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0xc0]
	mov	rsp, rsp
	mov	esi, 1
	nop	
	mov	rdx, rbx
	call	__vasprintf_chk
	lea	rdi, [rdi]
	mov	ebx, eax
	test	ebx, ebx
	js	.label_152
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + current_col]]
	test	eax, eax
	jle	.label_151
	mov	ecx,  dword ptr [dword ptr [rip + max_col]]
	lea	rsi, [rsi]
	sub	ecx, eax
	cmp	ecx, ebx
	mov	rsp, rsp
	jge	.label_153
	lea	rsi, [rsi]
	mov	edi, 0xa
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	dword ptr [dword ptr [rip + current_col]],  0
	jmp	.label_151
.label_153:
	mov	rbp, rbp
	mov	edi, 0x20
	lea	rdi, [rdi]
	call	putchar_unlocked
	inc	dword ptr [dword ptr [rip + current_col]]
.label_151:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb8]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	mov	rdi, qword ptr [rsp + 0xb8]
	call	free
	nop	
	add	dword ptr [dword ptr [rip + current_col]],  ebx
	add	rsp, 0xe0
	pop	rbx
	mov	rsp, rsp
	ret	
.label_152:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404660

	.globl baud_to_value
	.type baud_to_value, @function
baud_to_value:
	mov	rcx, -0x330
	xor	eax, eax
	nop	dword ptr [rax]
.label_156:
	cmp	dword ptr [dword ptr [rcx + label_129]],  edi
	mov	rsp, rsp
	je	.label_154
	lea	rsi, [rsi]
	add	rcx, 0x18
	lea	rdi, [rdi]
	jne	.label_156
	mov	rbp, rbp
	jmp	.label_155
.label_154:
	mov	rax,  qword ptr [word ptr [rcx + label_157]]
.label_155:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046a0

	.globl strtoul_tcflag_t
	.type strtoul_tcflag_t, @function
strtoul_tcflag_t:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	call	__errno_location
	mov	rbx, rax
	mov	rbp, rbp
	mov	dword ptr [rbx], 0
	lea	rsi, [rsi]
	mov	edx, 0x10
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	mov	rbp, rbp
	call	strtoul
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	dword ptr [rbx], 0
	nop	
	jne	.label_158
	mov	rbp, rbp
	mov	edx, ecx
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jne	.label_158
	mov	rdx, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	rdx, r12
	je	.label_158
	movzx	edx, byte ptr [rdx]
	nop	
	cmp	edx, 0x3a
	jne	.label_158
	mov	rsp, rsp
	mov	dword ptr [r14], ecx
	mov	rbp, rbp
	xor	eax, eax
.label_158:
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404730

	.globl strtoul_cc_t
	.type strtoul_cc_t, @function
strtoul_cc_t:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	lea	rsi, [rsi]
	mov	r14, rdx
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	edx, 0x10
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	strtoul
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	mov	rsp, rsp
	cmp	dword ptr [rbx], 0
	lea	rdi, [rdi]
	jne	.label_159
	movzx	edx, cl
	lea	rdi, [rdi]
	cmp	rdx, rcx
	jne	.label_159
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp]
	nop	
	cmp	rdx, r12
	je	.label_159
	nop	
	movzx	esi, r15b
	movzx	edx, byte ptr [rdx]
	cmp	edx, esi
	mov	rsp, rsp
	jne	.label_159
	mov	rbp, rbp
	mov	byte ptr [r14], cl
	mov	rbp, rbp
	xor	eax, eax
.label_159:
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4047d0

	.globl display_changed
	.type display_changed, @function
display_changed:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	nop	
	mov	edi, OFFSET FLAT:main.mode
	lea	rdi, [rdi]
	mov	esi, 1
	nop	
	call	display_speed
	lea	rdi, [rdi]
	movzx	esi,  byte ptr [byte ptr [rip + label_179]]
	nop	
	mov	edi, OFFSET FLAT:.str.298
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	call	wrapf
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [rip + current_col]],  0
	nop	
	mov	ebp, OFFSET FLAT:control_info
	mov	r14b, 1
	jmp	.label_178
	nop	word ptr cs:[rax + rax]
.label_165:
	nop	
	add	rbp, 0x18
.label_178:
	mov	rax, qword ptr [rbp]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x6d
	jne	.label_172
	movzx	ecx, byte ptr [rax + 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x69
	jne	.label_172
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x6e
	jne	.label_172
	cmp	byte ptr [rax + 3], 0
	je	.label_175
	nop	
.label_172:
	mov	rax, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	movzx	ebx,  byte ptr [byte ptr [rax + label_173]]
	movzx	eax, byte ptr [rbp + 8]
	lea	rsi, [rsi]
	cmp	ebx, eax
	je	.label_165
	mov	r15, qword ptr [rbp]
	mov	esi, OFFSET FLAT:.str.248
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_165
	movzx	edi, bl
	mov	rbp, rbp
	call	visible
	nop	
	mov	rcx, rax
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:.str.299
	xor	eax, eax
	nop	
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, rcx
	nop	
	call	wrapf
	jmp	.label_165
.label_175:
	test	byte ptr [byte ptr [rip + label_167]],  2
	jne	.label_168
	mov	rsp, rsp
	movzx	esi,  byte ptr [byte ptr [rip + label_170]]
	movzx	edx,  byte ptr [byte ptr [rip + label_171]]
	nop	
	mov	edi, OFFSET FLAT:.str.300
	xor	eax, eax
	call	wrapf
	jmp	.label_180
.label_168:
	mov	rbp, rbp
	test	r14b, 1
	jne	.label_180
	mov	edi, 0xa
	lea	rsi, [rsi]
	call	putchar_unlocked
.label_180:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	
	mov	r14b, 1
	mov	rbx, -0xb20
	nop	dword ptr [rax]
.label_169:
	mov	rsp, rsp
	test	byte ptr [byte ptr [rbx + label_138]],  8
	nop	
	jne	.label_164
	cmp	dword ptr [dword ptr [rbx + label_144]],  ebp
	mov	rbp, rbp
	je	.label_160
	test	r14b, 1
	mov	rbp, rbp
	jne	.label_163
	mov	rbp, rbp
	mov	edi, 0xa
	lea	rdi, [rdi]
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	r14b, 1
.label_163:
	mov	ebp,  dword ptr [dword ptr [rbx + label_144]]
.label_160:
	mov	edi,  dword ptr [dword ptr [rbx + label_144]]
	nop	
	mov	esi, OFFSET FLAT:main.mode
	call	mode_type_flag
	nop	
	mov	rcx,  qword ptr [word ptr [rbx + label_147]]
	test	rcx, rcx
	jne	.label_162
	mov	rcx,  qword ptr [word ptr [rbx + label_148]]
.label_162:
	test	rax, rax
	nop	
	je	.label_177
	mov	rbp, rbp
	mov	edx, dword ptr [rax]
	nop	
	and	rdx, rcx
	mov	rsp, rsp
	movsx	eax,  byte ptr [byte ptr [rbx + label_138]]
	cmp	rdx,  qword ptr [word ptr [rbx + label_148]]
	mov	rsp, rsp
	jne	.label_176
	test	al, 2
	lea	rsi, [rsi]
	je	.label_164
	mov	rsi,  qword ptr [word ptr [rbx + label_161]]
	xor	r14d, r14d
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str_1
	nop	
	jmp	.label_166
	nop	word ptr cs:[rax + rax]
.label_176:
	mov	rsp, rsp
	and	eax, 5
	cmp	eax, 5
	jne	.label_164
	mov	rsi,  qword ptr [word ptr [rbx + label_161]]
	nop	
	xor	r14d, r14d
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.301
.label_166:
	xor	eax, eax
	nop	
	call	wrapf
.label_164:
	mov	rbp, rbp
	add	rbx, 0x20
	jne	.label_169
	test	r14b, 1
	jne	.label_174
	lea	rdi, [rdi]
	mov	edi, 0xa
	call	putchar_unlocked
.label_174:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	rbp, rbp
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_177:
	mov	edi, OFFSET FLAT:.str.232
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.233
	lea	rsi, [rsi]
	mov	edx, 0x7a2
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.display_changed
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a80

	.globl display_all
	.type display_all, @function
display_all:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	mov	rbp, rbp
	call	display_speed
	nop	
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	display_window_size
	mov	rsp, rsp
	movzx	esi,  byte ptr [byte ptr [rip + label_179]]
	mov	edi, OFFSET FLAT:.str.298
	xor	eax, eax
	nop	
	call	wrapf
	mov	edi, 0xa
	mov	rsp, rsp
	call	putchar_unlocked
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	ebp, OFFSET FLAT:label_184
	jmp	.label_185
	nop	word ptr cs:[rax + rax]
.label_183:
	mov	rbp, rbp
	add	rbp, 0x18
.label_185:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x6d
	lea	rsi, [rsi]
	jne	.label_182
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x69
	lea	rdi, [rdi]
	jne	.label_182
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x6e
	lea	rdi, [rdi]
	jne	.label_182
	cmp	byte ptr [rax + 3], 0
	mov	rbp, rbp
	je	.label_189
	nop	word ptr cs:[rax + rax]
.label_182:
	mov	rbx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.248
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_183
	mov	rbp, rbp
	mov	rax, qword ptr [rbp]
	lea	rdi, [rdi]
	movzx	edi,  byte ptr [byte ptr [rax + label_173]]
	mov	rsp, rsp
	call	visible
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, OFFSET FLAT:.str.299
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	wrapf
	mov	rsp, rsp
	jmp	.label_183
.label_189:
	movzx	esi,  byte ptr [byte ptr [rip + label_170]]
	movzx	edx,  byte ptr [byte ptr [rip + label_171]]
	mov	edi, OFFSET FLAT:.str.303
	xor	eax, eax
	call	wrapf
	nop	
	cmp	dword ptr [dword ptr [rip + current_col]],  0
	je	.label_190
	lea	rdi, [rdi]
	mov	edi, 0xa
	mov	rbp, rbp
	call	putchar_unlocked
.label_190:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	rbx, -0xb20
	nop	
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_191:
	test	byte ptr [byte ptr [rbx + label_138]],  8
	jne	.label_188
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rbx + label_144]],  ebp
	mov	rsp, rsp
	je	.label_192
	lea	rdi, [rdi]
	mov	edi, 0xa
	call	putchar_unlocked
	nop	
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	ebp,  dword ptr [dword ptr [rbx + label_144]]
.label_192:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rbx + label_144]]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:main.mode
	mov	rsp, rsp
	call	mode_type_flag
	mov	rcx,  qword ptr [word ptr [rbx + label_147]]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_181
	nop	
	mov	rcx,  qword ptr [word ptr [rbx + label_148]]
.label_181:
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_187
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	and	rax, rcx
	cmp	rax,  qword ptr [word ptr [rbx + label_148]]
	lea	rdi, [rdi]
	jne	.label_186
	mov	rsi,  qword ptr [word ptr [rbx + label_161]]
	nop	
	mov	edi, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	jmp	.label_193
	nop	word ptr cs:[rax + rax]
.label_186:
	mov	rbp, rbp
	test	byte ptr [byte ptr [rbx + label_138]],  4
	je	.label_188
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rbx + label_161]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.301
.label_193:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	call	wrapf
.label_188:
	mov	rsp, rsp
	add	rbx, 0x20
	lea	rdi, [rdi]
	jne	.label_191
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_187:
	mov	edi, OFFSET FLAT:.str.232
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.233
	mov	edx, 0x7f6
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.display_all
	mov	rbp, rbp
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d20

	.globl display_recoverable
	.type display_recoverable, @function
display_recoverable:
	push	rbx
	mov	rbp, rbp
	mov	edx,  dword ptr [dword ptr [rip + main.mode]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + label_194]]
	mov	r8d,  dword ptr [dword ptr [rip + label_195]]
	lea	rsi, [rsi]
	mov	r9d,  dword ptr [dword ptr [rip + label_167]]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.304
	lea	rdi, [rdi]
	xor	eax, eax
	call	__printf_chk
	mov	rbx, -0x20
	nop	word ptr cs:[rax + rax]
.label_197:
	mov	rsp, rsp
	movzx	edx,  byte ptr [byte ptr [rbx + label_196]]
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.305
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	rsp, rsp
	inc	rbx
	jne	.label_197
	mov	rbp, rbp
	mov	edi, 0xa
	lea	rdi, [rdi]
	pop	rbx
	jmp	putchar_unlocked
	.section	.text
	.align	16
	#Procedure 0x404db0

	.globl visible
	.type visible, @function
visible:
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.302
	test	dil, dil
	lea	rdi, [rdi]
	je	.label_208
	mov	rbp, rbp
	movzx	eax, dil
	mov	rbp, rbp
	cmp	eax, 0x20
	mov	rbp, rbp
	jb	.label_198
	nop	
	cmp	eax, 0x7e
	ja	.label_209
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + visible.buf]],  dil
	mov	eax, OFFSET FLAT:label_205
	jmp	.label_203
.label_198:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + visible.buf]],  0x5e
	mov	rbp, rbp
	add	dil, 0x40
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + label_205]],  dil
	jmp	.label_206
.label_209:
	mov	rsp, rsp
	cmp	eax, 0x7f
	mov	rsp, rsp
	jne	.label_204
	mov	word ptr [word ptr [rip + visible.buf]],  0x3f5e
.label_206:
	mov	eax, OFFSET FLAT:label_200
.label_203:
	mov	byte ptr [rax], 0
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:visible.buf
.label_208:
	ret	
.label_204:
	mov	rsp, rsp
	mov	word ptr [word ptr [rip + visible.buf]],  0x2d4d
	mov	rbp, rbp
	cmp	eax, 0xa0
	lea	rdi, [rdi]
	jb	.label_207
	nop	
	cmp	eax, 0xff
	je	.label_199
	lea	rdi, [rdi]
	xor	dil, 0x80
	mov	byte ptr [byte ptr [rip + label_200]],  dil
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:label_201
	nop	
	jmp	.label_203
.label_207:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + label_200]],  0x5e
	add	dil, 0xc0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + label_201]],  dil
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:label_202
	nop	
	jmp	.label_203
.label_199:
	mov	word ptr [word ptr [rip + label_200]],  0x3f5e
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:label_202
	lea	rdi, [rdi]
	jmp	.label_203
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ea0
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
	#Procedure 0x404eb0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ec0

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
	je	.label_213
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_210
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_210
.label_213:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_212
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_210:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
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
	jne	.label_211
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
.label_212:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_211:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
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
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404fc0

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	nop	
	xor	eax, eax
	nop	
	mov	rdi, rsi
	nop	
	mov	esi, edx
	nop	
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_214
	test	ebx, ebx
	nop	
	js	.label_214
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	nop	
	mov	r14d, eax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_215
.label_214:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_215:
	mov	rsp, rsp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405040

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
	je	.label_216
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
	jl	.label_218
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_218
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
	jne	.label_217
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_217:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_218:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_216:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
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
	#Procedure 0x405130
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
	#Procedure 0x405180
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
	#Procedure 0x4051a0
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
	#Procedure 0x4051c0

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
	#Procedure 0x405230
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
	#Procedure 0x405250

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
	je	.label_219
	test	rdx, rdx
	nop	
	je	.label_219
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_219:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405290
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
	.align	16
	#Procedure 0x405330

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
.label_255:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_228
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_239]]
.label_546:
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
.label_547:
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
	jne	.label_277
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_277
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_313:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_305
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_305:
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
	jne	.label_313
.label_277:
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
	jmp	.label_259
.label_539:
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
	jmp	.label_259
.label_542:
	mov	rsp, rsp
	mov	al, 1
.label_540:
	mov	r15b, 1
.label_543:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_338
	mov	cl, al
.label_338:
	lea	rdi, [rdi]
	mov	al, cl
.label_541:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_340
	test	r10, r10
	je	.label_226
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_230
.label_340:
	xor	ecx, ecx
	jmp	.label_230
.label_544:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_240
	test	r10, r10
	je	.label_330
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_251
.label_545:
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
	jmp	.label_259
.label_226:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_230:
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
	jmp	.label_259
.label_240:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_251
.label_330:
	mov	rbp, rbp
	mov	eax, 1
.label_251:
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
.label_259:
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
	jmp	.label_308
	nop	word ptr [rax + rax]
.label_256:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_308:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_234
	cmp	rsi, rbp
	jne	.label_237
	jmp	.label_238
	nop	word ptr cs:[rax + rax]
.label_234:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_238
.label_237:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_246
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_253
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_253
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
.label_253:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_291
.label_246:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_324:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_301
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_306]]
.label_579:
	test	rsi, rsi
	jne	.label_276
	jmp	.label_232
	nop	word ptr [rax + rax]
.label_291:
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
	jne	.label_325
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
	je	.label_324
	mov	rsp, rsp
	jmp	.label_222
.label_325:
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
	jmp	.label_324
.label_583:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_221
	test	rsi, rsi
	nop	
	jne	.label_298
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_232
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_229
.label_572:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_314
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_222
	cmp	edi, 2
	nop	
	jne	.label_250
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_252
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_268
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_268:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_247
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_247:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_280
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_280:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_290
.label_573:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_300
.label_574:
	mov	cl, 0x74
	jmp	.label_304
.label_575:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_300
.label_576:
	mov	bl, 0x66
	jmp	.label_300
.label_577:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_304
.label_580:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_310
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_220
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
	jae	.label_295
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_295:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_331
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_331:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_334
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_334:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_341
.label_581:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_227
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_236
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_220
.label_236:
	mov	rdi, r14
	jmp	.label_276
.label_582:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_244
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_220
	mov	rdi, r14
	jmp	.label_258
.label_301:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_261
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
.label_328:
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
	ja	.label_288
	test	dl, dl
	mov	rsp, rsp
	je	.label_288
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_229
.label_221:
	test	rsi, rsi
	jne	.label_311
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_311
.label_232:
	mov	rbp, rbp
	mov	dl, 1
.label_578:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_222
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_229
.label_314:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_276
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_308
.label_310:
	mov	rdi, r14
.label_341:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_229
.label_244:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_304
.label_258:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_270
.label_304:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_222
.label_300:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_229
	lea	rsi, [rsi]
	jmp	.label_248
.label_261:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_321
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
.label_321:
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
.label_319:
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
	je	.label_262
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
	je	.label_267
	cmp	rbp, -2
	nop	
	je	.label_284
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_289
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_309:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_303
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_307
.label_303:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_309
.label_289:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_320
	xor	r15d, r15d
.label_320:
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
	je	.label_319
	jmp	.label_328
.label_311:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_229
.label_227:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_276
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_276
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_276
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_335
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_329
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_222
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_272
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_272:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_285
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_285:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_263
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_263:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_282
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_282:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_229
.label_276:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_229:
	test	r12b, r12b
	je	.label_292
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_318
	jmp	.label_297
	nop	word ptr cs:[rax + rax]
.label_292:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_297
.label_318:
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
	jne	.label_254
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_270
	jmp	.label_248
	nop	word ptr cs:[rax + rax]
.label_297:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_248
	jmp	.label_270
.label_254:
	mov	bl, r13b
	mov	rsi, r14
.label_248:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_222
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_327
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_327
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_257
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_257:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_332
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_332:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_339
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_339:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_327:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_231
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_231:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_242
.label_298:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_229
.label_288:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_326
	nop	word ptr cs:[rax + rax]
.label_241:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_326:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_266
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_269
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_278
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_278:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_269
	nop	dword ptr [rax]
.label_266:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_220
	cmp	r14d, 2
	jne	.label_281
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_281
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_312
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_312:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_317
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_317:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_286
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_286:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_281:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_265
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_265:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_296
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
.label_296:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_223
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
.label_223:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_269:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_270
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_260
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_287
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_264
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_264:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_279
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_279:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_287
	nop	word ptr cs:[rax + rax]
.label_260:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_287:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_241
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_241
	nop	word ptr cs:[rax + rax]
.label_270:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_316
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_316
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_337
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_337:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_323
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_323:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_242
	nop	word ptr cs:[rax + rax]
.label_316:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_242:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_256
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_256
.label_250:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_290
.label_252:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_290:
	cmp	rcx, r10
	jae	.label_224
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_224:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_233
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_299
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_249
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_275
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_275:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_273
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_273:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_229
.label_233:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_229
.label_299:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_229
.label_249:
	xor	r15d, r15d
	jmp	.label_229
.label_262:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_235
.label_267:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_294
.label_284:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_315
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_322:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_274
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_322
	xor	r15d, r15d
	nop	
	jmp	.label_235
.label_315:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_294:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_235:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_328
.label_274:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_235
.label_335:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_229
.label_329:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_229
	nop	word ptr cs:[rax + rax]
.label_238:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_336
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_220
.label_336:
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
	je	.label_243
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_243
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_245
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_243
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
	je	.label_255
.label_243:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_271
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_271
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_271
	inc	rdx
	nop	dword ptr [rax + rax]
.label_293:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_283
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_283:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_293
.label_271:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_302
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_302
.label_222:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_333:
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
.label_225:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_302:
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
.label_307:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_333
.label_220:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_333
.label_245:
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
	jmp	.label_225
.label_228:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a80
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
	.align	16
	#Procedure 0x406aa0

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
	je	.label_342
	mov	qword ptr [rax], rbx
.label_342:
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
	#Procedure 0x406bf0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_343
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_346:
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
	jl	.label_346
.label_343:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_345
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_347]], OFFSET FLAT:slot0
.label_345:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_344
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_344:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406cb0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x406cc0

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
	js	.label_348
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_353
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_351
.label_353:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_354
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
	jne	.label_350
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_350:
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
.label_351:
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
	ja	.label_349
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
	je	.label_352
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_352:
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
.label_349:
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
.label_348:
	lea	rdi, [rdi]
	call	abort
.label_354:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406f30

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f40
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
	.align	16
	#Procedure 0x406f60
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
	.align	16
	#Procedure 0x406f80

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
	.align	16
	#Procedure 0x406fe0

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
	je	.label_355
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
.label_355:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407050

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
	.align	16
	#Procedure 0x4070b0
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
	.align	16
	#Procedure 0x4070d0
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
	.align	16
	#Procedure 0x4070f0

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
	mov	rcx,  qword ptr [word ptr [rip + label_356]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_358]]
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
	.align	16
	#Procedure 0x407190

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
	.align	16
	#Procedure 0x4071b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071d0

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
	.align	16
	#Procedure 0x407240

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407250

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
	mov	rax,  qword ptr [word ptr [rip + label_356]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_358]]
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
	.align	16
	#Procedure 0x4072e0
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
	.align	16
	#Procedure 0x407310
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
	.align	16
	#Procedure 0x407340

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407350
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
	.align	16
	#Procedure 0x407370

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407380

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
	.align	16
	#Procedure 0x407390

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
	jne	.label_359
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
	je	.label_360
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_359
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_359
.label_360:
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
	je	.label_361
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_359
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_359
.label_361:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_359:
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
	.align	16
	#Procedure 0x4074c0

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
	je	.label_363
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_362
	jmp	.label_364
.label_363:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_364
.label_362:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_364
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
.label_364:
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
	.align	16
	#Procedure 0x407580

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
	je	.label_367
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_366
	lea	rsi, [rsi]
	jmp	.label_365
.label_367:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_365
.label_366:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_365
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
.label_365:
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
	.align	16
	#Procedure 0x407670

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
	je	.label_370
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_369
	jmp	.label_368
.label_370:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_368
.label_369:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_368
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
.label_368:
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
	.align	16
	#Procedure 0x407740

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
	je	.label_373
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_372
	jmp	.label_371
.label_373:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_371
.label_372:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_371
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
.label_371:
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
	.align	16
	#Procedure 0x4077e0

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
	je	.label_376
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_375
	nop	
	jmp	.label_374
.label_376:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_374
.label_375:
	mov	eax, 1
	test	bpl, bpl
	je	.label_374
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
.label_374:
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
	.align	16
	#Procedure 0x407880

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
	je	.label_379
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_378
	lea	rsi, [rsi]
	jmp	.label_377
.label_379:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_377
.label_378:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_377
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
.label_377:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407910

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
	je	.label_382
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_381
	jmp	.label_380
.label_382:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_380
.label_381:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_380
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_380:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407980

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
	je	.label_383
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_385
	mov	rbp, rbp
	jmp	.label_384
.label_383:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_384
.label_385:
	xor	eax, eax
.label_384:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079d0

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
	je	.label_389
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_391
.label_389:
	mov	edx, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_391:
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
	ja	.label_393
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_394]]
.label_529:
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
.label_393:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_387
.label_530:
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
.label_531:
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
.label_532:
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
	jmp	.label_388
.label_533:
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
	jmp	.label_386
.label_534:
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
	jmp	.label_395
.label_535:
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
.label_395:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_386:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_388:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_392
.label_537:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_387:
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
	jmp	.label_390
.label_536:
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
.label_390:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_392:
	mov	rbp, rbp
	call	__fprintf_chk
.label_528:
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
	#Procedure 0x407dc0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_396:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_396
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407df0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_400:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_397
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_399
	nop	word ptr cs:[rax + rax]
.label_397:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_399:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_398
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_400
.label_398:
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
	#Procedure 0x407e80

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_401
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
.label_401:
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
	.align	16
	#Procedure 0x407f30
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
	.align	16
	#Procedure 0x407fc0
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
	jb	.label_402
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_402:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408000

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_403
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_404
.label_403:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_404:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408030
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
	jb	.label_405
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_405:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408070

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_406
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_406
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_406:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_407
	test	rax, rax
	nop	
	je	.label_408
.label_407:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_408:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080c0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_409
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_410
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_411
.label_409:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_412
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_412:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_413
.label_411:
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
.label_410:
	call	xalloc_die
.label_413:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408160

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408170
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408180
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
	.align	16
	#Procedure 0x4081c0
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
	jb	.label_414
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_414
	pop	rcx
	ret	
.label_414:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4081f0

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
	.align	16
	#Procedure 0x408240
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
	.align	16
	#Procedure 0x408260

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_2
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
	.align	16
	#Procedure 0x4082b0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, r9
	mov	rbp, rbp
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	nop	
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_417
	cmp	eax, 1
	je	.label_418
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_415
	mov	rbx, qword ptr [rsp]
	mov	rbp, rbp
	cmp	rbx, r12
	lea	rsi, [rsi]
	jb	.label_419
	cmp	rbx, r15
	jbe	.label_420
.label_419:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	rbx, 0x40000000
	jb	.label_416
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_415
.label_417:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_415
.label_418:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_415
.label_416:
	mov	dword ptr [rax], 0x22
.label_415:
	nop	
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	nop	
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	nop	
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rcx, r14
	nop	
	call	error
.label_420:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083d0
	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:

	push	rax
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	rsp, rsp
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rsp, rsp
	mov	r9, r10
	mov	rsp, rsp
	call	xnumtoumax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408410

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	r15, r8
	mov	r14, rcx
	mov	ebp, edx
	mov	rbp, rbp
	mov	r12, rdi
	nop	
	cmp	ebp, 0x25
	jae	.label_426
	test	rsi, rsi
	lea	rsi, [rsi]
	lea	r13, [rsp + 0x10]
	nop	
	cmovne	r13, rsi
	mov	rsp, rsp
	call	__errno_location
	mov	rbx, rax
	mov	rsp, rsp
	mov	dword ptr [rbx], 0
	mov	rdi, r12
	mov	rsi, r13
	mov	edx, ebp
	call	strtol
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [r13]
	cmp	rax, r12
	nop	
	je	.label_439
	mov	eax, dword ptr [rbx]
	mov	rbp, rbp
	xor	r12d, r12d
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_422
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rdi, [rdi]
	cmp	eax, 0x22
	mov	rsp, rsp
	jne	.label_429
	lea	rdi, [rdi]
	mov	r12d, 1
.label_422:
	test	r15, r15
	lea	rsi, [rsi]
	jne	.label_434
	mov	rbp, rbp
	jmp	.label_424
.label_439:
	mov	r12d, 4
	nop	
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_429
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_429
	mov	rdi, r15
	call	strchr
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_429
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_434:
	mov	rsp, rsp
	mov	rax, qword ptr [r13]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	lea	rsi, [rsi]
	je	.label_424
	mov	rdi, r15
	mov	rsp, rsp
	mov	esi, ebx
	mov	rbp, rbp
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	je	.label_430
	mov	rsp, rsp
	mov	esi, 0x400
	mov	ebp, 1
	mov	rbp, rbp
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_436
	movabs	rax, 0x814400308945
	nop	
	bt	rax, rbx
	jae	.label_436
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strchr
	mov	ebp, 1
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_441
	nop	
	mov	rax, qword ptr [r13]
	movsx	ecx, byte ptr [rax + 1]
	lea	rsi, [rsi]
	mov	ebp, 1
	mov	rsp, rsp
	cmp	ecx, 0x42
	mov	rsp, rsp
	je	.label_425
	lea	rdi, [rdi]
	cmp	ecx, 0x44
	lea	rsi, [rsi]
	je	.label_425
	cmp	ecx, 0x69
	jne	.label_433
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + 2]
	mov	ebp, 3
	cmp	eax, 0x42
	lea	rdi, [rdi]
	mov	esi, 0x400
	je	.label_436
	mov	rbp, rbp
	mov	ebp, 1
	jmp	.label_436
.label_441:
	mov	esi, 0x400
	jmp	.label_436
.label_425:
	lea	rdi, [rdi]
	mov	esi, 0x3e8
	lea	rdi, [rdi]
	mov	ebp, 2
	lea	rdi, [rdi]
	jmp	.label_436
.label_433:
	mov	esi, 0x400
.label_436:
	nop	
	mov	rax, qword ptr [r13]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rax]
	mov	rbp, rbp
	cmp	eax, 0x59
	jg	.label_440
	nop	
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	lea	rsi, [rsi]
	ja	.label_427
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_432]]
.label_605:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	esi, 0x400
	jmp	.label_431
.label_440:
	cmp	eax, 0x73
	lea	rdi, [rdi]
	jg	.label_435
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_437
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_438]]
.label_592:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_431
.label_427:
	cmp	eax, 0x54
	nop	
	je	.label_428
	cmp	eax, 0x59
	jne	.label_430
	lea	rdi, [rsp + 8]
	mov	edx, 8
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	jmp	.label_423
.label_435:
	mov	rsp, rsp
	cmp	eax, 0x74
	je	.label_428
	cmp	eax, 0x77
	jne	.label_430
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	esi, 2
.label_431:
	lea	rsi, [rsi]
	call	bkm_scale
	jmp	.label_423
.label_593:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	jmp	.label_423
.label_594:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	nop	
	mov	edx, 1
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	jmp	.label_423
.label_595:
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 2
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	nop	
	jmp	.label_423
.label_428:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	edx, 4
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	jmp	.label_423
.label_437:
	cmp	eax, 0x5a
	lea	rdi, [rdi]
	jne	.label_430
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 7
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	rsp, rsp
	jmp	.label_423
.label_430:
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [r14], rax
	or	r12d, 2
	mov	rbp, rbp
	jmp	.label_429
.label_606:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	mov	rbp, rbp
	call	bkm_scale_by_power
	jmp	.label_423
.label_607:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	bkm_scale_by_power
.label_423:
	or	eax, r12d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r13]
	mov	rsp, rsp
	lea	rdx, [rcx + rbp]
	mov	qword ptr [r13], rdx
	mov	rbp, rbp
	cmp	byte ptr [rcx + rbp], 0
	lea	rsi, [rsi]
	je	.label_421
	lea	rdi, [rdi]
	or	eax, 2
.label_421:
	lea	rsi, [rsi]
	mov	r12d, eax
.label_424:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_429:
	lea	rdi, [rdi]
	mov	eax, r12d
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_426:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_3
	mov	rbp, rbp
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	nop	
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408800

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	lea	rsi, [rsi]
	movabs	r8, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi]
	mov	rbp, rbp
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	mov	rax, rsi
	cqo	
	idiv	r9
	cmp	rcx, rax
	jge	.label_442
	mov	qword ptr [rdi], rsi
	mov	rsp, rsp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_442:
	mov	rax, r8
	nop	
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_443
	lea	rdi, [rdi]
	mov	qword ptr [rdi], r8
	mov	eax, 1
	mov	rsp, rsp
	ret	
.label_443:
	lea	rsi, [rsi]
	imul	rcx, r9
	nop	
	mov	qword ptr [rdi], rcx
	lea	rsi, [rsi]
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408870

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	ebp, edx
	lea	rdi, [rdi]
	mov	r14d, esi
	mov	r15, rdi
	mov	rsp, rsp
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_444
	nop	word ptr [rax + rax]
.label_445:
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	nop	
	or	ebx, eax
	dec	ebp
	lea	rsi, [rsi]
	jne	.label_445
.label_444:
	mov	eax, ebx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4088d0

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
	jae	.label_464
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
.label_457:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_457
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
	je	.label_448
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
	je	.label_470
	nop	
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rsp, rsp
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_450
	cmp	eax, 0x22
	jne	.label_448
	lea	rsi, [rsi]
	mov	r12d, 1
.label_450:
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_462
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_463
.label_470:
	mov	rbp, r13
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_448
	lea	rsi, [rsi]
	mov	rbx, rcx
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	nop	
	test	esi, esi
	mov	rsp, rsp
	je	.label_448
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_448
	mov	qword ptr [rsp + 8], 1
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_462:
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	lea	rdi, [rdi]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_454
	mov	rbp, rbp
	mov	r13, rcx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, ebx
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_452
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	nop	
	cmp	ebx, 0x2f
	ja	.label_467
	movabs	rax, 0x814400308945
	lea	rdi, [rdi]
	bt	rax, rbx
	jae	.label_469
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
	je	.label_456
	nop	
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	nop	
	je	.label_460
	cmp	ecx, 0x44
	je	.label_460
	cmp	ecx, 0x69
	mov	rbp, rbp
	jne	.label_456
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	mov	rsp, rsp
	je	.label_456
	mov	r14d, 1
	jmp	.label_456
.label_460:
	mov	rsp, rsp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_456:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jg	.label_447
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	nop	
	cmp	ecx, 0xe
	nop	
	ja	.label_468
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_453]]
.label_598:
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_455
.label_447:
	cmp	eax, 0x73
	jg	.label_459
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	mov	rsp, rsp
	cmp	ecx, 0xb
	mov	rbp, rbp
	ja	.label_461
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_466]]
.label_604:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_455
.label_468:
	cmp	eax, 0x54
	lea	rsi, [rsi]
	je	.label_449
	nop	
	cmp	eax, 0x59
	jne	.label_452
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 8
	jmp	.label_446
.label_459:
	lea	rdi, [rdi]
	cmp	eax, 0x74
	nop	
	je	.label_449
	cmp	eax, 0x77
	nop	
	jne	.label_452
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 2
.label_455:
	nop	
	call	bkm_scale_0
	jmp	.label_458
.label_600:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	mov	rbp, rbp
	jmp	.label_446
.label_601:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 1
	jmp	.label_446
.label_602:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 2
	jmp	.label_446
.label_449:
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 4
	jmp	.label_446
.label_461:
	cmp	eax, 0x5a
	jne	.label_452
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 7
	mov	rbp, rbp
	jmp	.label_446
.label_452:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	or	r12d, 2
	jmp	.label_451
.label_599:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_446
.label_603:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 5
.label_446:
	mov	esi, r15d
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
.label_458:
	mov	rsp, rsp
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_465
	lea	rdi, [rdi]
	or	eax, 2
.label_465:
	mov	r12d, eax
.label_454:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_463:
	mov	qword ptr [rcx], rax
.label_451:
	mov	r15d, r12d
.label_448:
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
.label_467:
	lea	rsi, [rsi]
	mov	rbx, r13
	lea	rdi, [rdi]
	jmp	.label_456
.label_469:
	mov	rsp, rsp
	mov	rbx, r13
	lea	rsi, [rsi]
	jmp	.label_456
.label_464:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x408ce0

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
	.align	16
	#Procedure 0x408d20

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
	je	.label_471
	nop	word ptr [rax + rax]
.label_472:
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
	jne	.label_472
.label_471:
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
	.align	16
	#Procedure 0x408d90

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_473
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_474
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
	je	.label_474
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
.label_473:
	mov	ecx, 1
.label_474:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e00

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_475
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
.label_475:
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
	ja	.label_478
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_476
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_484
	mov	rbp, rbp
	test	esi, esi
	jne	.label_478
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_481
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_487
.label_478:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_479
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_484
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_488
.label_476:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_484:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_480
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_483
.label_480:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_483:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_488:
	nop	
	cmp	eax, 6
	jne	.label_479
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_486
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_477
.label_479:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_482
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_485
.label_481:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_487:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_486:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_477:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_482:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_485:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090a0

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
	.align	16
	#Procedure 0x4090c0

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
	js	.label_489
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
	jns	.label_490
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_490
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_491
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_492
.label_490:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_492
.label_489:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_492:
	test	ebx, ebx
	js	.label_491
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_491
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_493
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
	jne	.label_491
.label_493:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_491:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091d0

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
	je	.label_494
	nop	
	cmp	r15, -2
	jb	.label_494
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_494
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_494:
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
	#Procedure 0x409260
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
	#Procedure 0x409290
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
	#Procedure 0x4092b0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4092c0
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
	#Procedure 0x4092d0
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
	#Procedure 0x4092f0
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
	#Procedure 0x409300
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
	#Procedure 0x409310
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
	#Procedure 0x409320
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
	#Procedure 0x409330
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
	#Procedure 0x409360
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
	#Procedure 0x409380

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
	#Procedure 0x409390
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
	#Procedure 0x4093b0
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
	#Procedure 0x4093c0
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
	#Procedure 0x4093d0

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
	je	.label_505
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_504
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_504
.label_505:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_504
	test	cl, cl
	jne	.label_504
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_504:
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
	.align	16
	#Procedure 0x409470

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
	je	.label_507
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_506
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_508
.label_506:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_507
.label_508:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_507:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4094c0

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
	je	.label_509
	nop	
	mov	rax, rcx
.label_509:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409500

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
	js	.label_510
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_511
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
	je	.label_510
.label_511:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_510
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_512
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_512:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_510:
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
	.align	16
	#Procedure 0x4095c0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_513
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_513
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_513:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x4095f0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_514
	mov	rbp, rbp
	ret	
.label_514:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	16
	#Procedure 0x409610

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
	jne	.label_515
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_515
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_516
.label_515:
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
.label_516:
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
	je	.label_517
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_517:
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
	#Procedure 0x4096c0

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
