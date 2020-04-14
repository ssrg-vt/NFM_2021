	.section	.text
	.align	32
	#Procedure 0x401880

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
	jne	.label_8
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.14
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	cmp	dword ptr [dword ptr [rip + tcsetattr_options]],  1
	jne	.label_10
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	lea	rsi, [rsi]
	jmp	.label_7
.label_8:
	nop	
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	mov	rbp, rbp
	mov	edi, ebp
	call	exit
.label_10:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.22
.label_7:
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.24
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.25
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.27
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.34
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.39
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.42
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.47
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.52
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.53
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.54
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.58
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.61
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.64
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.65
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.67
	mov	rsp, rsp
	xor	eax, eax
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.69
	lea	rdi, [rdi]
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
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.77
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.79
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.82
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.83
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.85
	mov	ecx, OFFSET FLAT:.str.86
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.87
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.88
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.89
	xor	eax, eax
	nop	
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.91
	mov	ecx, OFFSET FLAT:.str.92
	mov	r8d, OFFSET FLAT:.str.93
	lea	rdi, [rdi]
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.120
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	mov	rbp, rbp
	test	rax, rax
	je	.label_9
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.122
	nop	
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_9
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.123
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
.label_9:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.124
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.18
	nop	
	mov	ecx, OFFSET FLAT:.str.95
	nop	
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.125
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.95
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.126
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	rsp, rsp
	mov	edi, ebp
	nop	
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027f0

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
	sub	rsp, 0x48
	mov	rbx, rsi
	mov	dword ptr [rsp + 0x44], edi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
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
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	r14d, 1
	mov	al, 1
	mov	dword ptr [rsp + 0x40], eax
	mov	r13d, 0
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x3c], 0
	jmp	.label_35
	nop	dword ptr [rax]
.label_47:
	mov	rbp, rbp
	mov	r14d, ebp
.label_35:
	mov	edi, dword ptr [rsp + 0x44]
	sub	edi, r15d
	movsxd	rax, r15d
	lea	rsi, [rbx + rax*8]
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.99
	nop	
	mov	ecx, OFFSET FLAT:longopts
	mov	rbp, rbp
	xor	r8d, r8d
	mov	rbp, rbp
	call	getopt_long
	cmp	eax, 0x45
	lea	rdi, [rdi]
	jg	.label_63
	mov	rbp, rbp
	cmp	eax, -1
	je	.label_59
	cmp	eax, 0xffffff7d
	mov	rsp, rsp
	je	.label_65
	cmp	eax, 0xffffff7e
	mov	rbp, rbp
	jne	.label_72
	jmp	.label_76
	nop	word ptr cs:[rax + rax]
.label_63:
	cmp	eax, 0x46
	mov	rsp, rsp
	je	.label_82
	cmp	eax, 0x61
	je	.label_84
	mov	rbp, rbp
	cmp	eax, 0x67
	mov	rbp, rbp
	jne	.label_72
	mov	dword ptr [rsp + 0x3c], 2
	mov	r13b, 1
	mov	rbp, rbp
	jmp	.label_88
	nop	word ptr cs:[rax + rax]
.label_72:
	lea	rsi, [rsi]
	add	r15d, r14d
	nop	
	movsxd	rax, r15d
	mov	rbp, qword ptr [rbx + rax*8]
	mov	esi, OFFSET FLAT:.str.103
	mov	rbp, rbp
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	je	.label_89
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.104
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_89
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], 0
.label_89:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + optind]],  0
	mov	r14d, 1
	jmp	.label_88
.label_82:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x30], 0
	mov	rsp, rsp
	jne	.label_111
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_88
.label_84:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	dword ptr [rsp + 0x3c], 1
.label_88:
	movsxd	r12,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	cmp	r14d, r12d
	lea	rsi, [rsi]
	jge	.label_35
	mov	rsp, rsp
	movsxd	rbp, r14d
	mov	rbp, rbp
	lea	eax, [r14 + r15]
	cdqe	
	lea	rdi, [rdi]
	lea	rdi, [rbx + rax*8]
	lea	rdx, [rbp + 1]
	nop	
	cmp	rdx, r12
	cmovl	rdx, r12
	nop	
	sub	rdx, rbp
	mov	rbp, rbp
	shl	rdx, 3
	lea	rdi, [rdi]
	xor	esi, esi
	call	memset
	lea	rsi, [rsi]
	mov	ecx, r12d
	sub	ecx, r14d
	lea	rsi, [rsi]
	lea	rax, [r12 - 1]
	sub	rax, rbp
	test	cl, 7
	je	.label_25
	mov	cl, r12b
	sub	cl, r14b
	movzx	ecx, cl
	mov	rsp, rsp
	and	ecx, 7
	lea	rdi, [rdi]
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_40:
	lea	rsi, [rsi]
	inc	rbp
	inc	rcx
	jne	.label_40
.label_25:
	lea	rsi, [rsi]
	cmp	rax, 7
	nop	
	jb	.label_47
	nop	dword ptr [rax]
.label_44:
	add	rbp, 8
	cmp	rbp, r12
	jl	.label_44
	jmp	.label_47
.label_59:
	mov	r14, rbx
	lea	rdi, [rdi]
	mov	al, r13b
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x28]
	and	al, bl
	mov	rbp, rbp
	test	al, 1
	jne	.label_48
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	test	r12b, 1
	mov	rbp, qword ptr [rsp + 0x30]
	jne	.label_38
	mov	al, bl
	lea	rsi, [rsi]
	or	al, r13b
	and	al, 1
	nop	
	jne	.label_56
.label_38:
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_97
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r15, rax
.label_97:
	mov	rsp, rsp
	or	r13b, r12b
	lea	rsi, [rsi]
	or	r13b, bl
	and	r13b, 1
	mov	rsp, rsp
	mov	rbx, r14
	jne	.label_78
	lea	rax, [rsp + 0x17]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	lea	r9, [rsp + 0x16]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	r8d, OFFSET FLAT:main.check_mode
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x44]
	nop	
	call	apply_settings
.label_78:
	test	rbp, rbp
	je	.label_96
	xor	edi, edi
	mov	edx, 0x800
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rsi, r15
	nop	
	call	fd_reopen
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_34
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, -1
	nop	
	je	.label_107
	mov	rsp, rsp
	and	ecx, 0xfffff7ff
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, ecx
	call	rpl_fcntl
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_107
.label_96:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:main.mode
	call	tcgetattr
	test	eax, eax
	nop	
	jne	.label_34
	test	r13b, r13b
	nop	
	jne	.label_119
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x16], 0
	nop	
	mov	byte ptr [rsp + 0x17], 0
	lea	rsi, [rsi]
	lea	rax, [rsp + 0x17]
	mov	qword ptr [rsp], rax
	lea	r9, [rsp + 0x16]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:main.mode
	mov	rsi, r15
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x44]
	call	apply_settings
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_20
	lea	rsi, [rsi]
	mov	esi,  dword ptr [dword ptr [rip + tcsetattr_options]]
	mov	rsp, rsp
	xor	edi, edi
	mov	edx, OFFSET FLAT:main.mode
	mov	rsp, rsp
	call	tcsetattr
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_34
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:main.new_mode
	call	tcgetattr
	test	eax, eax
	nop	
	jne	.label_34
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:main.mode
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:main.new_mode
	mov	rsp, rsp
	mov	edx, 0x3c
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_20
	mov	rbp, rbp
	and	dword ptr [dword ptr [rip + label_52]],  0xeff0ffff
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x16], 0
	mov	rsp, rsp
	jne	.label_53
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	lea	rdi, [rdi]
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_20
.label_53:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, r15
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	nop	
	call	error
.label_119:
	nop	
	lea	rdx, [rsp + 0x20]
	nop	
	mov	edi, 1
	mov	esi, 0x5413
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	ioctl
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_93
	movzx	eax, word ptr [rsp + 0x22]
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_95
.label_93:
	mov	edi, OFFSET FLAT:.str.297
	lea	rdi, [rdi]
	call	getenv
	test	rax, rax
	mov	rbp, rbp
	je	.label_101
	lea	rcx, [rsp + 0x18]
	lea	rdi, [rdi]
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rax
	lea	rdi, [rdi]
	call	xstrtol
	nop	
	test	eax, eax
	jne	.label_101
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	mov	rbp, rbp
	jb	.label_95
.label_101:
	nop	
	mov	qword ptr [rsp + 0x18], 0x50
	mov	eax, 0x50
.label_95:
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + current_col]],  0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x3c]
	lea	rdi, [rdi]
	cmp	eax, 2
	je	.label_112
	cmp	eax, 1
	je	.label_118
	test	eax, eax
	jne	.label_20
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:main.mode
	mov	rbp, rbp
	mov	esi, 1
	call	display_speed
	movzx	esi,  byte ptr [byte ptr [rip + label_15]]
	mov	edi, OFFSET FLAT:.str.298
	xor	eax, eax
	mov	rsp, rsp
	call	wrapf
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_61
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0xa
.label_16:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	r14b, 1
	mov	ebp, OFFSET FLAT:label_29
	lea	rdi, [rdi]
	jmp	.label_30
	nop	
.label_50:
	mov	rsp, rsp
	add	rbp, 0x18
.label_30:
	mov	r15, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x6d
	jne	.label_37
	movzx	eax, byte ptr [r15 + 1]
	lea	rdi, [rdi]
	cmp	eax, 0x69
	jne	.label_37
	movzx	eax, byte ptr [r15 + 2]
	cmp	eax, 0x6e
	jne	.label_37
	mov	rsp, rsp
	cmp	byte ptr [r15 + 3], 0
	lea	rdi, [rdi]
	je	.label_43
	nop	
.label_37:
	mov	rax, qword ptr [rbp]
	movzx	ebx,  byte ptr [byte ptr [rax + label_49]]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	ebx, eax
	lea	rsi, [rsi]
	je	.label_50
	nop	
	mov	esi, OFFSET FLAT:.str.248
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_50
	test	bl, bl
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.302
	je	.label_58
	lea	rsi, [rsi]
	movzx	eax, bl
	cmp	eax, 0x20
	nop	
	jb	.label_64
	mov	rbp, rbp
	cmp	eax, 0x7e
	mov	rbp, rbp
	ja	.label_70
	mov	byte ptr [byte ptr [rip + visible.buf]],  bl
	nop	
	mov	eax, OFFSET FLAT:label_73
	jmp	.label_21
.label_64:
	nop	
	mov	byte ptr [byte ptr [rip + visible.buf]],  0x5e
	lea	rsi, [rsi]
	add	bl, 0x40
	mov	byte ptr [byte ptr [rip + label_73]],  bl
	jmp	.label_79
.label_70:
	cmp	eax, 0x7f
	mov	rsp, rsp
	jne	.label_85
	mov	word ptr [word ptr [rip + visible.buf]],  0x3f5e
.label_79:
	mov	eax, OFFSET FLAT:label_11
.label_21:
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	edx, OFFSET FLAT:visible.buf
.label_58:
	nop	
	xor	r14d, r14d
	nop	
	mov	edi, OFFSET FLAT:.str.299
	xor	eax, eax
	mov	rsi, r15
	mov	rbp, rbp
	call	wrapf
	lea	rdi, [rdi]
	jmp	.label_50
.label_85:
	mov	rbp, rbp
	mov	word ptr [word ptr [rip + visible.buf]],  0x2d4d
	lea	rsi, [rsi]
	cmp	eax, 0xa0
	mov	rbp, rbp
	jb	.label_99
	cmp	eax, 0xff
	je	.label_103
	mov	rsp, rsp
	xor	bl, 0x80
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + label_11]],  bl
	mov	eax, OFFSET FLAT:label_12
	lea	rsi, [rsi]
	jmp	.label_21
.label_99:
	mov	byte ptr [byte ptr [rip + label_11]],  0x5e
	mov	rsp, rsp
	add	bl, 0xc0
	nop	
	mov	byte ptr [byte ptr [rip + label_12]],  bl
	mov	eax, OFFSET FLAT:label_13
	nop	
	jmp	.label_21
.label_103:
	mov	word ptr [word ptr [rip + label_11]],  0x3f5e
	mov	eax, OFFSET FLAT:label_13
	lea	rdi, [rdi]
	jmp	.label_21
.label_112:
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rip + main.mode]]
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + label_114]]
	mov	r8d,  dword ptr [dword ptr [rip + label_115]]
	mov	rsp, rsp
	mov	r9d,  dword ptr [dword ptr [rip + label_90]]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.304
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	lea	rsi, [rsi]
	mov	rbx, -0x20
	nop	dword ptr [rax]
.label_22:
	movzx	edx,  byte ptr [byte ptr [rbx + label_17]]
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.305
	lea	rdi, [rdi]
	xor	eax, eax
	call	__printf_chk
	inc	rbx
	jne	.label_22
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_24
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0xa
	mov	rsp, rsp
	jmp	.label_20
.label_118:
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	call	display_speed
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	mov	rsi, r15
	call	display_window_size
	movzx	esi,  byte ptr [byte ptr [rip + label_15]]
	nop	
	mov	edi, OFFSET FLAT:.str.298
	xor	eax, eax
	call	wrapf
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	nop	
	jae	.label_46
	nop	
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0xa
.label_23:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	ebp, OFFSET FLAT:label_29
	jmp	.label_55
.label_57:
	add	rbp, 0x18
.label_55:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0x10]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x6d
	jne	.label_36
	movzx	eax, byte ptr [rbx + 1]
	nop	
	cmp	eax, 0x69
	jne	.label_36
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 2]
	cmp	eax, 0x6e
	nop	
	jne	.label_36
	cmp	byte ptr [rbx + 3], 0
	je	.label_74
	nop	word ptr cs:[rax + rax]
.label_36:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.248
	mov	rbp, rbp
	mov	rdi, rbx
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	je	.label_57
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
	mov	al,  byte ptr [byte ptr [rax + label_49]]
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.302
	je	.label_87
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	cmp	ecx, 0x20
	mov	rbp, rbp
	jb	.label_94
	cmp	ecx, 0x7e
	ja	.label_19
	mov	byte ptr [byte ptr [rip + visible.buf]],  al
	mov	eax, OFFSET FLAT:label_73
	nop	
	jmp	.label_14
.label_94:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + visible.buf]],  0x5e
	lea	rsi, [rsi]
	add	al, 0x40
	mov	byte ptr [byte ptr [rip + label_73]],  al
	jmp	.label_102
.label_19:
	cmp	ecx, 0x7f
	jne	.label_105
	mov	word ptr [word ptr [rip + visible.buf]],  0x3f5e
	nop	word ptr cs:[rax + rax]
.label_102:
	mov	eax, OFFSET FLAT:label_11
.label_14:
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:visible.buf
.label_87:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.299
	xor	eax, eax
	nop	
	mov	rsi, rbx
	call	wrapf
	nop	
	jmp	.label_57
.label_105:
	mov	rbp, rbp
	mov	word ptr [word ptr [rip + visible.buf]],  0x2d4d
	nop	
	cmp	ecx, 0xa0
	jb	.label_116
	mov	rbp, rbp
	cmp	ecx, 0xff
	lea	rsi, [rsi]
	je	.label_121
	xor	al, 0x80
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + label_11]],  al
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:label_12
	nop	
	jmp	.label_14
.label_116:
	mov	byte ptr [byte ptr [rip + label_11]],  0x5e
	nop	
	add	al, 0xc0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + label_12]],  al
	mov	eax, OFFSET FLAT:label_13
	jmp	.label_14
.label_121:
	mov	word ptr [word ptr [rip + label_11]],  0x3f5e
	nop	
	mov	eax, OFFSET FLAT:label_13
	jmp	.label_14
.label_43:
	test	byte ptr [byte ptr [rip + label_90]],  2
	lea	rsi, [rsi]
	jne	.label_91
	movzx	esi,  byte ptr [byte ptr [rip + label_27]]
	movzx	edx,  byte ptr [byte ptr [rip + label_28]]
	mov	edi, OFFSET FLAT:.str.300
	xor	eax, eax
	call	wrapf
	jmp	.label_33
.label_74:
	lea	rdi, [rdi]
	movzx	esi,  byte ptr [byte ptr [rip + label_27]]
	mov	rbp, rbp
	movzx	edx,  byte ptr [byte ptr [rip + label_28]]
	mov	edi, OFFSET FLAT:.str.303
	xor	eax, eax
	call	wrapf
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + current_col]],  0
	lea	rdi, [rdi]
	je	.label_75
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_45
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0xa
.label_75:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	rbx, -0xb20
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_54
.label_91:
	test	r14b, 1
	jne	.label_33
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_62
	nop	
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_33:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	xor	eax, eax
	mov	r14b, 1
	mov	rbx, -0xb20
	lea	rsi, [rsi]
	jmp	.label_77
.label_100:
	mov	esi, 0xa
	lea	rsi, [rsi]
	call	__overflow
	nop	
	jmp	.label_83
	nop	word ptr cs:[rax + rax]
.label_54:
	mov	r14b,  byte ptr [byte ptr [rbx + label_68]]
	test	r14b, 8
	lea	rdi, [rdi]
	jne	.label_92
	mov	ebp,  dword ptr [dword ptr [rbx + label_41]]
	lea	rsi, [rsi]
	cmp	ebp, r15d
	je	.label_98
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_100
	nop	
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_83:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + current_col]],  0
	lea	rdi, [rdi]
	mov	r15d, ebp
.label_98:
	nop	
	cmp	r15d, 5
	nop	
	jae	.label_109
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rbx + label_66]]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_110
	mov	rax,  qword ptr [word ptr [rbx + label_31]]
.label_110:
	nop	
	cmp	r15d, 4
	lea	rsi, [rsi]
	je	.label_113
	mov	rsp, rsp
	movsxd	rcx, r15d
	mov	rcx,  qword ptr [word ptr [+ (rcx * 8) + label_80]]
	mov	ecx, dword ptr [rcx]
	and	rcx, rax
	cmp	rcx,  qword ptr [word ptr [rbx + label_31]]
	lea	rsi, [rsi]
	jne	.label_117
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rbx + label_18]]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	jmp	.label_120
	nop	word ptr cs:[rax + rax]
.label_117:
	test	r14b, 4
	nop	
	je	.label_92
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rbx + label_18]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.301
.label_120:
	xor	eax, eax
	mov	rsp, rsp
	call	wrapf
.label_92:
	add	rbx, 0x20
	lea	rsi, [rsi]
	jne	.label_54
	lea	rdi, [rdi]
	jmp	.label_26
.label_51:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_32
	nop	word ptr cs:[rax + rax]
.label_77:
	movsx	r15d,  byte ptr [byte ptr [rbx + label_68]]
	mov	rsp, rsp
	test	r15b, 8
	jne	.label_69
	nop	
	mov	ebp,  dword ptr [dword ptr [rbx + label_41]]
	lea	rsi, [rsi]
	cmp	ebp, eax
	lea	rsi, [rsi]
	jne	.label_42
	mov	ebp, eax
	mov	rbp, rbp
	jmp	.label_39
	nop	dword ptr [rax]
.label_69:
	lea	rsi, [rsi]
	mov	ebp, eax
	jmp	.label_71
	nop	word ptr [rax + rax]
.label_42:
	mov	rsp, rsp
	test	r14b, 1
	nop	
	jne	.label_39
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_51
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_32:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	r14b, 1
.label_39:
	lea	rdi, [rdi]
	cmp	ebp, 5
	jae	.label_60
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rbx + label_66]]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_67
	nop	
	mov	rax,  qword ptr [word ptr [rbx + label_31]]
.label_67:
	cmp	ebp, 4
	je	.label_122
	movsxd	rcx, ebp
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rcx * 8) + label_80]]
	nop	
	mov	ecx, dword ptr [rcx]
	lea	rsi, [rsi]
	and	rcx, rax
	cmp	rcx,  qword ptr [word ptr [rbx + label_31]]
	jne	.label_81
	mov	rsp, rsp
	test	r15b, 2
	je	.label_71
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rbx + label_18]]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:.str_1
	nop	
	jmp	.label_86
	nop	word ptr cs:[rax + rax]
.label_81:
	nop	
	and	r15d, 5
	cmp	r15d, 5
	nop	
	jne	.label_71
	mov	rsi,  qword ptr [word ptr [rbx + label_18]]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:.str.301
.label_86:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	call	wrapf
.label_71:
	add	rbx, 0x20
	mov	rsp, rsp
	mov	eax, ebp
	jne	.label_77
	test	r14b, 1
	jne	.label_106
.label_26:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_108
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0xa
.label_106:
	mov	dword ptr [dword ptr [rip + current_col]],  0
.label_20:
	xor	eax, eax
	lea	rdi, [rdi]
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	nop	
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_108:
	mov	rbp, rbp
	mov	esi, 0xa
	call	__overflow
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + current_col]],  0
	jmp	.label_20
.label_61:
	mov	esi, 0xa
	mov	rbp, rbp
	call	__overflow
	jmp	.label_16
.label_24:
	nop	
	mov	esi, 0xa
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_20
.label_46:
	mov	rbp, rbp
	mov	esi, 0xa
	call	__overflow
	jmp	.label_23
.label_45:
	mov	esi, 0xa
	call	__overflow
	mov	rsp, rsp
	jmp	.label_75
.label_62:
	mov	esi, 0xa
	mov	rsp, rsp
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_33
.label_65:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.95
	nop	
	mov	edx, OFFSET FLAT:.str.17_0
	mov	r8d, OFFSET FLAT:.str.102
	xor	r9d, r9d
	nop	
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	nop	
	call	exit
.label_76:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	call	usage
.label_34:
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, r15
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	lea	rsi, [rsi]
	call	error
.label_109:
	call	abort
.label_113:
	nop	
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	lea	rdi, [rdi]
	mov	edx, 0x7f6
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.display_all
	call	__assert_fail
.label_60:
	call	abort
.label_122:
	nop	
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	mov	rsp, rsp
	mov	edx, 0x7a2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.display_changed
	call	__assert_fail
.label_107:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	error
.label_48:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.105
	jmp	.label_104
.label_56:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.106
	lea	rsi, [rsi]
	jmp	.label_104
.label_111:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
.label_104:
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037d0

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
	sub	rsp, 0x88
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], r9
	nop	
	mov	qword ptr [rsp + 0x18], r8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], edi
	cmp	ecx, 2
	lea	rdi, [rdi]
	jl	.label_219
	mov	rbp, rbp
	lea	rax, [r8 + 8]
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	lea	rax, [r8 + 4]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	lea	rax, [r8 + 0xc]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x68], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	lea	eax, [rax - 1]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x4c], eax
	mov	r15d, 1
	jmp	.label_135
.label_212:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rcx]
	lea	rsi, [rsi]
	cmp	ebx, 0x2d
	lea	rsi, [rsi]
	jne	.label_148
.label_150:
	and	eax, 0xfffffecf
	nop	
	or	eax, 0x30
	mov	dword ptr [rcx], eax
	jmp	.label_151
.label_213:
	mov	rsp, rsp
	movzx	eax, byte ptr [r13 + 1]
	nop	
	cmp	eax, 0x6b
	jne	.label_154
	cmp	byte ptr [r13 + 2], 0
	lea	rdi, [rdi]
	je	.label_157
.label_154:
	mov	esi, OFFSET FLAT:.str.220
	mov	rdi, r13
	nop	
	call	strcmp
	test	eax, eax
	je	.label_163
	mov	esi, OFFSET FLAT:.str.225
	nop	
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	je	.label_169
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.223
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_174
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.224
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	strcmp
	test	eax, eax
	je	.label_183
	movzx	ebp, bpl
	cmp	ebp, 0x72
	lea	rdi, [rdi]
	jne	.label_185
	movzx	eax, byte ptr [r13 + 1]
	cmp	eax, 0x61
	jne	.label_185
	mov	rbp, rbp
	movzx	eax, byte ptr [r13 + 2]
	lea	rdi, [rdi]
	cmp	eax, 0x77
	jne	.label_185
	cmp	byte ptr [r13 + 3], 0
	lea	rdi, [rdi]
	je	.label_198
.label_185:
	mov	esi, OFFSET FLAT:.str.221
	mov	rdi, r13
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	je	.label_198
	nop	
	mov	esi, OFFSET FLAT:.str.226
	mov	rdi, r13
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_203
	mov	esi, OFFSET FLAT:.str.227
	lea	rsi, [rsi]
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	je	.label_206
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.228
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	call	strcmp
	nop	
	test	eax, eax
	je	.label_171
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.229
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_171
	mov	rbp, rbp
	mov	al, 1
	cmp	ebp, 0x64
	mov	rsp, rsp
	je	.label_222
	mov	rbp, rbp
	cmp	ebp, 0x63
	mov	rsp, rsp
	jne	.label_127
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [r13 + 1]
	cmp	ecx, 0x72
	mov	rbp, rbp
	jne	.label_127
	mov	rsp, rsp
	movzx	ecx, byte ptr [r13 + 2]
	mov	rsp, rsp
	cmp	ecx, 0x74
	mov	rbp, rbp
	jne	.label_127
	cmp	byte ptr [r13 + 3], 0
	jne	.label_127
	nop	
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	or	dword ptr [rcx], 0xa10
	jmp	.label_127
.label_163:
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x18]
	mov	byte ptr [r13 + 0x1c], 0
	lea	rsi, [rsi]
	mov	byte ptr [r13 + 0x21], 0
	nop	
	mov	word ptr [r13 + 0x19], 0x1311
	mov	byte ptr [r13 + 0x1b], 0x1a
	lea	rsi, [rsi]
	mov	byte ptr [r13 + 0x1d], 0x12
	mov	rbp, rbp
	mov	byte ptr [r13 + 0x1f], 0x17
	mov	byte ptr [r13 + 0x20], 0x16
	mov	rbp, rbp
	mov	byte ptr [r13 + 0x1e], 0xf
	movabs	rax, 0x10004157f1c03
	mov	qword ptr [r13 + 0x11], rax
	mov	rsp, rsp
	mov	rcx, -0xb20
	nop	dword ptr [rax]
.label_208:
	lea	rsi, [rsi]
	movsx	eax,  byte ptr [byte ptr [rcx + label_68]]
	test	al, 0x10
	lea	rdi, [rdi]
	jne	.label_192
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_160
	test	al, 2
	lea	rdi, [rdi]
	je	.label_192
	mov	edx,  dword ptr [dword ptr [rcx + label_41]]
	mov	rsp, rsp
	cmp	rdx, 4
	ja	.label_165
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_170]]
.label_686:
	mov	rsp, rsp
	test	r13, r13
	mov	rsp, rsp
	mov	rax, r13
	jne	.label_172
	lea	rdi, [rdi]
	jmp	.label_175
	nop	
.label_160:
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rcx + label_41]]
	cmp	rdx, 4
	lea	rsi, [rsi]
	ja	.label_177
	mov	rax, qword ptr [rsp + 0x20]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_184]]
.label_683:
	test	r13, r13
	lea	rsi, [rsi]
	mov	rax, r13
	jne	.label_187
	jmp	.label_191
.label_684:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_187
.label_685:
	mov	rax, qword ptr [rsp + 0x68]
.label_187:
	mov	edx,  dword ptr [dword ptr [rcx + label_66]]
	mov	esi, 0xffffffff
	mov	rsp, rsp
	xor	edx, esi
	nop	
	and	edx, dword ptr [rax]
	nop	
	or	edx,  dword ptr [dword ptr [rcx + label_31]]
	mov	dword ptr [rax], edx
	mov	rbp, rbp
	jmp	.label_192
.label_687:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jmp	.label_172
.label_688:
	mov	rax, qword ptr [rsp + 0x68]
.label_172:
	mov	rbp, rbp
	mov	edx,  dword ptr [dword ptr [rcx + label_66]]
	mov	ebp, 0xffffffff
	xor	edx, ebp
	mov	rbp, rbp
	and	edx, dword ptr [rax]
	mov	esi,  dword ptr [dword ptr [rcx + label_31]]
	xor	esi, ebp
	and	esi, edx
	mov	dword ptr [rax], esi
	nop	word ptr cs:[rax + rax]
.label_192:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	al, 1
	jne	.label_208
	lea	rsi, [rsi]
	jmp	.label_126
.label_148:
	and	eax, 0xfffffccf
	or	eax, 0x320
	mov	dword ptr [rcx], eax
	nop	
	jmp	.label_151
.label_169:
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rcx]
	lea	rdi, [rdi]
	cmp	ebx, 0x2d
	mov	r13, qword ptr [rsp + 0x18]
	jne	.label_216
	or	eax, 2
	lea	rdi, [rdi]
	jmp	.label_186
.label_174:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	ecx, 0xfffffecf
	nop	
	and	eax, ecx
	cmp	ebx, 0x2d
	lea	rsi, [rsi]
	jne	.label_201
	mov	rsp, rsp
	or	eax, 0x120
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x18]
	mov	dword ptr [r13 + 8], eax
	or	byte ptr [r13], 0x20
	nop	
	mov	al, 1
	jmp	.label_126
.label_216:
	and	eax, 0xfffffffd
.label_186:
	lea	rdi, [rdi]
	mov	dword ptr [rcx], eax
	mov	al, 1
	jmp	.label_126
.label_183:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	mov	ecx, 0xfffffecf
	lea	rdi, [rdi]
	and	eax, ecx
	cmp	ebx, 0x2d
	mov	rsp, rsp
	jne	.label_136
	or	eax, 0x120
	mov	r13, qword ptr [rsp + 0x18]
	mov	dword ptr [r13 + 8], eax
	or	byte ptr [r13], 0x20
	or	byte ptr [r13 + 4], 1
	lea	rdi, [rdi]
	mov	al, 1
	jmp	.label_126
.label_201:
	or	eax, 0x30
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x18]
	mov	dword ptr [r13 + 8], eax
	lea	rsi, [rsi]
	and	byte ptr [r13], 0xdf
	lea	rdi, [rdi]
	mov	al, 1
	jmp	.label_126
.label_157:
	mov	r13, qword ptr [rsp + 0x18]
	mov	word ptr [r13 + 0x13], 0x157f
	mov	al, 1
	jmp	.label_126
.label_198:
	cmp	ebp, 0x72
	setne	cl
	lea	rsi, [rsi]
	cmp	ebx, 0x2d
	mov	rsp, rsp
	sete	al
	setne	dl
	or	dl, cl
	cmp	ebp, 0x63
	setne	cl
	movzx	edx, dl
	cmp	edx, 1
	mov	r13, qword ptr [rsp + 0x18]
	jne	.label_159
	mov	rsp, rsp
	or	al, cl
	lea	rsi, [rsi]
	je	.label_159
	mov	dword ptr [r13], 0
	mov	rbp, rbp
	and	byte ptr [r13 + 4], 0xfe
	mov	rbp, rbp
	and	byte ptr [r13 + 0xc], 0xf8
	lea	rdi, [rdi]
	mov	word ptr [r13 + 0x16], 0x100
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_126
.label_136:
	lea	rsi, [rsi]
	or	eax, 0x30
	nop	
	mov	r13, qword ptr [rsp + 0x18]
	mov	dword ptr [r13 + 8], eax
	lea	rsi, [rsi]
	and	byte ptr [r13], 0xdf
	and	byte ptr [r13 + 4], 0xfe
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_126
.label_124:
	lea	rsi, [rsi]
	and	eax, 0xfffffeff
	mov	dword ptr [r13], eax
	and	byte ptr [r13 + 4], 0xfb
	mov	al, 1
	jmp	.label_126
.label_203:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	eax, dword ptr [r13]
	cmp	ebx, 0x2d
	mov	rbp, rbp
	jne	.label_197
	mov	rbp, rbp
	or	eax, 0x800
	nop	
	jmp	.label_202
.label_159:
	or	dword ptr [r13], 0x526
	mov	rbp, rbp
	or	byte ptr [r13 + 4], 1
	nop	
	or	byte ptr [r13 + 0xc], 3
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	jmp	.label_126
.label_171:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x68]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	cmp	ebx, 0x2d
	lea	rsi, [rsi]
	jne	.label_221
	and	eax, 0xfffffffb
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	dword ptr [r13 + 0xc], eax
	lea	rdi, [rdi]
	and	byte ptr [r13 + 1], 0xfd
	lea	rsi, [rsi]
	and	byte ptr [r13 + 4], 0xfd
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	jmp	.label_126
.label_206:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rcx]
	cmp	ebx, 0x2d
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x18]
	jne	.label_224
	mov	rsp, rsp
	or	eax, 0x1800
	jmp	.label_186
.label_197:
	mov	rbp, rbp
	and	eax, 0xfffff7ff
.label_202:
	mov	dword ptr [r13], eax
	mov	al, 1
	jmp	.label_126
.label_221:
	or	eax, 4
	nop	
	mov	r13, qword ptr [rsp + 0x18]
	mov	dword ptr [r13 + 0xc], eax
	or	byte ptr [r13 + 1], 2
	or	byte ptr [r13 + 4], 2
	lea	rsi, [rsi]
	mov	al, 1
	jmp	.label_126
.label_224:
	and	eax, 0xffffe7ff
	lea	rsi, [rsi]
	jmp	.label_186
.label_222:
	movzx	ecx, byte ptr [r13 + 1]
	cmp	ecx, 0x65
	nop	
	jne	.label_127
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [r13 + 2]
	mov	rbp, rbp
	cmp	ecx, 0x63
	lea	rdi, [rdi]
	jne	.label_127
	cmp	byte ptr [r13 + 3], 0
	mov	rsp, rsp
	jne	.label_127
	mov	r13, qword ptr [rsp + 0x18]
	mov	byte ptr [r13 + 0x11], 3
	mov	rsp, rsp
	mov	byte ptr [r13 + 0x13], 0x7f
	nop	
	mov	byte ptr [r13 + 0x14], 0x15
	or	dword ptr [r13 + 0xc], 0xa10
	and	byte ptr [r13 + 1], 0xf7
	jmp	.label_126
.label_211:
	cmp	r15d, dword ptr [rsp + 0x4c]
	je	.label_123
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	r12, qword ptr [rax + rcx*8 + 8]
	test	r12, r12
	je	.label_123
	mov	rsp, rsp
	inc	r15d
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x5c]
	test	al, al
	mov	ebp, OFFSET FLAT:speeds
	mov	ebx, 0
	jne	.label_129
.label_180:
	mov	rsi, qword ptr [rbp]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_223
	mov	rbp, rbp
	inc	rbx
	add	rbp, 0x18
	mov	esi, 0xffffffff
	mov	rsp, rsp
	cmp	rbx, 0x22
	jne	.label_180
	jmp	.label_168
.label_218:
	mov	rbp, rbp
	cmp	r15d, dword ptr [rsp + 0x4c]
	je	.label_123
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	r12, qword ptr [rax + rcx*8 + 8]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_123
	inc	r15d
	mov	eax, dword ptr [rsp + 0x5c]
	test	al, al
	nop	
	mov	ebp, OFFSET FLAT:speeds
	lea	rsi, [rsi]
	mov	ebx, 0
	mov	rbp, rbp
	jne	.label_129
.label_207:
	mov	rsi, qword ptr [rbp]
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_205
	inc	rbx
	add	rbp, 0x18
	mov	esi, 0xffffffff
	cmp	rbx, 0x22
	mov	rbp, rbp
	jne	.label_207
	jmp	.label_210
.label_125:
	cmp	r15d, dword ptr [rsp + 0x4c]
	je	.label_123
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax + rcx*8 + 8]
	nop	
	test	rbp, rbp
	je	.label_123
	inc	r15d
	mov	eax, dword ptr [rsp + 0x5c]
	mov	rbp, rbp
	test	al, al
	nop	
	jne	.label_129
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.255
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0x7fffffff
	mov	r8d, OFFSET FLAT:.str.254
	mov	rsp, rsp
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	lea	rdi, [rdi]
	mov	edi, 0xffffffff
	lea	rsi, [rsi]
	mov	esi, eax
	nop	
	jmp	.label_173
.label_226:
	lea	rdi, [rdi]
	cmp	r15d, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	je	.label_123
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x80]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rax + rcx*8 + 8]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_123
	nop	
	inc	r15d
	mov	eax, dword ptr [rsp + 0x5c]
	test	al, al
	jne	.label_129
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.255
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	nop	
	mov	ecx, 0x7fffffff
	mov	r8d, OFFSET FLAT:.str.254
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	mov	r9, rax
	call	xnumtoumax
	lea	rsi, [rsi]
	mov	esi, 0xffffffff
	nop	
	mov	edi, eax
.label_173:
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	call	set_window_size
	lea	rdi, [rdi]
	jmp	.label_129
.label_223:
	lea	rax, [rbx + rbx*2]
	mov	esi,  dword ptr [dword ptr [+ (rax * 8) + label_176]]
.label_168:
	mov	rdi, r13
	lea	rsi, [rsi]
	call	cfsetispeed
	jmp	.label_215
.label_205:
	lea	rax, [rbx + rbx*2]
	nop	
	mov	esi,  dword ptr [dword ptr [+ (rax * 8) + label_176]]
.label_210:
	mov	rdi, r13
.label_130:
	call	cfsetospeed
.label_215:
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	mov	byte ptr [rax], 1
	jmp	.label_147
.label_140:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x5c]
	test	al, al
	jne	.label_129
	nop	
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 0x5413
	xor	eax, eax
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x38]
	call	ioctl
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_194
	lea	rdi, [rdi]
	movzx	eax, word ptr [rsp + 0x3a]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_153
.label_194:
	mov	edi, OFFSET FLAT:.str.297
	call	getenv
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_200
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rax
	lea	rcx, [rsp + 0x30]
	mov	rsp, rsp
	call	xstrtol
	lea	rdi, [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_200
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	mov	rsp, rsp
	jb	.label_153
.label_200:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], 0x50
	mov	rbp, rbp
	mov	eax, 0x50
.label_153:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + current_col]],  0
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	call	display_window_size
	jmp	.label_129
.label_145:
	cmp	r15d, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	je	.label_123
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	r13, qword ptr [rax + rcx*8 + 8]
	lea	rdi, [rdi]
	test	r13, r13
	je	.label_123
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.255
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rcx, -1
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.254
	mov	rdi, r13
	mov	r9, rax
	lea	rsi, [rsi]
	call	xnumtoumax
	nop	
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x10], al
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	je	.label_146
	mov	rbx, qword ptr [rsp + 0x80]
	inc	rbx
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.141
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rax + rbx*8]
	lea	rsi, [rsi]
	call	quote
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, r14
	call	error
.label_146:
	nop	
	inc	r15d
	mov	rsp, rsp
	jmp	.label_147
.label_182:
	mov	eax, dword ptr [rsp + 0x5c]
	mov	rbp, rbp
	test	al, al
	jne	.label_129
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	lea	rdx, [rsp + 0x38]
	call	ioctl
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_196
	nop	
	movzx	eax, word ptr [rsp + 0x3a]
	test	eax, eax
	nop	
	jne	.label_138
.label_196:
	mov	edi, OFFSET FLAT:.str.297
	call	getenv
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_134
	nop	
	xor	esi, esi
	mov	rsp, rsp
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	lea	rcx, [rsp + 0x30]
	call	xstrtol
	test	eax, eax
	mov	rbp, rbp
	jne	.label_134
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x30]
	lea	rcx, [rax - 1]
	lea	rdi, [rdi]
	cmp	rcx, 0x7fffffff
	mov	rbp, rbp
	jb	.label_138
.label_134:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], 0x50
	mov	eax, 0x50
.label_138:
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x18]
	call	display_speed
	nop	
	jmp	.label_129
.label_156:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x5c]
	lea	rsi, [rsi]
	test	al, al
	mov	ebp, OFFSET FLAT:speeds
	mov	ebx, 0
	jne	.label_129
.label_179:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp]
	mov	rdi, r14
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_166
	inc	rbx
	lea	rdi, [rdi]
	add	rbp, 0x18
	nop	
	mov	r12d, 0xffffffff
	lea	rdi, [rdi]
	cmp	rbx, 0x22
	jne	.label_179
	nop	
	jmp	.label_199
.label_166:
	mov	rsp, rsp
	lea	rax, [rbx + rbx*2]
	mov	r12d,  dword ptr [dword ptr [+ (rax * 8) + label_176]]
.label_199:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	esi, r12d
	lea	rdi, [rdi]
	call	cfsetispeed
	mov	rdi, rbx
	mov	rbp, rbp
	mov	esi, r12d
	jmp	.label_130
	nop	word ptr cs:[rax + rax]
.label_135:
	nop	
	movsxd	rcx, r15d
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_129
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], rcx
	lea	rsi, [rsi]
	movzx	r12d, byte ptr [rax]
	lea	r14, [rax + 1]
	cmp	r12d, 0x2d
	mov	rsp, rsp
	cmovne	r14, rax
	mov	esi, OFFSET FLAT:.str.104
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:mode_info
	mov	rbp, rbp
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_204
	nop	word ptr [rax + rax]
.label_162:
	mov	r13, qword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	call	strcmp
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_137
	inc	rbp
	add	rbx, 0x20
	cmp	rbp, 0x59
	lea	rsi, [rsi]
	jne	.label_162
	mov	rbp, rbp
	xor	eax, eax
	mov	r13, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	jmp	.label_167
	nop	
.label_204:
	mov	rsp, rsp
	movzx	eax, r12b
	cmp	eax, 0x2d
	mov	rsp, rsp
	setne	al
	mov	rsp, rsp
	movzx	eax, al
	mov	dword ptr [dword ptr [rip + tcsetattr_options]],  eax
	jmp	.label_129
.label_137:
	movzx	ebx, r12b
	cmp	ebx, 0x2d
	lea	rsi, [rsi]
	jne	.label_178
	lea	rsi, [rsi]
	mov	rax, rbp
	shl	rax, 5
	test	byte ptr [byte ptr [rax + label_181]],  4
	jne	.label_178
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_127
.label_178:
	shl	rbp, 5
	mov	ecx,  dword ptr [dword ptr [rbp + label_188]]
	lea	rdi, [rdi]
	cmp	rcx, 4
	mov	rbp, rbp
	ja	.label_189
	mov	rax, qword ptr [rsp + 0x20]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_193]]
.label_678:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_139
.label_681:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.215
	mov	rdi, r13
	call	strcmp
	nop	
	test	eax, eax
	je	.label_161
	mov	esi, OFFSET FLAT:.str.216
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_161
	mov	esi, OFFSET FLAT:.str.217
	lea	rdi, [rdi]
	mov	rdi, r13
	call	strcmp
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_212
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [r13]
	lea	rsi, [rsi]
	cmp	ebp, 0x65
	mov	rbp, rbp
	je	.label_213
	nop	
	movzx	eax, bpl
	cmp	eax, 0x6e
	lea	rdi, [rdi]
	jne	.label_154
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13 + 1]
	lea	rdi, [rdi]
	cmp	eax, 0x6c
	jne	.label_154
	lea	rsi, [rsi]
	cmp	byte ptr [r13 + 2], 0
	jne	.label_154
	mov	r13, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [r13]
	cmp	ebx, 0x2d
	jne	.label_124
	mov	rbp, rbp
	and	eax, 0xfffffe3f
	mov	rbp, rbp
	or	eax, 0x100
	nop	
	mov	dword ptr [r13], eax
	nop	
	mov	eax, dword ptr [r13 + 4]
	mov	rbp, rbp
	and	eax, 0xffffffd3
	or	eax, 4
	mov	dword ptr [r13 + 4], eax
	mov	al, 1
	jmp	.label_126
.label_680:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	jmp	.label_139
.label_679:
	mov	rax, qword ptr [rsp + 0x10]
.label_139:
	nop	
	mov	edx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rbp + label_142]]
	not	rcx
	and	rcx, rdx
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rbp + label_143]]
	cmp	ebx, 0x2d
	jne	.label_144
	mov	esi, 0xffffffff
	lea	rdi, [rdi]
	xor	edx, esi
	mov	rsp, rsp
	and	ecx, edx
	jmp	.label_149
.label_144:
	or	ecx, edx
.label_149:
	mov	dword ptr [rax], ecx
.label_151:
	mov	al, 1
.label_127:
	mov	r13, qword ptr [rsp + 0x18]
.label_126:
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	mov	byte ptr [rcx], 1
.label_167:
	movzx	ecx, r12b
	cmp	ecx, 0x2d
	nop	
	setne	cl
	test	al, al
	jne	.label_155
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_158
.label_155:
	nop	
	test	al, al
	jne	.label_129
	mov	esi, OFFSET FLAT:.str.234
	mov	rdi, r14
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	r12d, 0
	nop	
	mov	edi, OFFSET FLAT:.str.234
	lea	rdi, [rdi]
	je	.label_133
	mov	esi, OFFSET FLAT:.str.235
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	strcmp
	nop	
	test	eax, eax
	mov	r12d, 1
	nop	
	mov	edi, OFFSET FLAT:.str.235
	lea	rdi, [rdi]
	je	.label_133
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.236
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	r12d, 2
	nop	
	mov	edi, OFFSET FLAT:.str.236
	nop	
	je	.label_133
	mov	esi, OFFSET FLAT:.str.237
	mov	rdi, r14
	nop	
	call	strcmp
	nop	
	test	eax, eax
	mov	r12d, 3
	mov	edi, OFFSET FLAT:.str.237
	nop	
	je	.label_133
	mov	esi, OFFSET FLAT:.str.238
	mov	rsp, rsp
	mov	rdi, r14
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	r12d, 4
	mov	edi, OFFSET FLAT:.str.238
	je	.label_133
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.239
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	mov	r12d, 5
	mov	edi, OFFSET FLAT:.str.239
	je	.label_133
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.240
	mov	rdi, r14
	mov	rsp, rsp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	mov	r12d, 6
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.240
	je	.label_133
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.241
	mov	rsp, rsp
	mov	rdi, r14
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	r12d, 7
	mov	edi, OFFSET FLAT:.str.241
	mov	rsp, rsp
	je	.label_133
	mov	esi, OFFSET FLAT:.str.242
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r12d, 8
	mov	edi, OFFSET FLAT:.str.242
	je	.label_133
	mov	esi, OFFSET FLAT:.str.243
	nop	
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 9
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.243
	je	.label_133
	mov	esi, OFFSET FLAT:.str.244
	mov	rdi, r14
	nop	
	call	strcmp
	test	eax, eax
	nop	
	mov	r12d, 0xa
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.244
	mov	rsp, rsp
	je	.label_133
	mov	esi, OFFSET FLAT:.str.245
	mov	rdi, r14
	mov	rbp, rbp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	r12d, 0xb
	mov	edi, OFFSET FLAT:.str.245
	je	.label_133
	mov	esi, OFFSET FLAT:.str.246
	mov	rdi, r14
	nop	
	call	strcmp
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	mov	r12d, 0xc
	mov	edi, OFFSET FLAT:.str.246
	je	.label_133
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.247
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	mov	r12d, 0xd
	nop	
	mov	edi, OFFSET FLAT:.str.247
	je	.label_133
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.248
	mov	rdi, r14
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	r12d, 0xe
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.248
	nop	
	je	.label_133
	mov	esi, OFFSET FLAT:.str.249
	mov	rsp, rsp
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 0xf
	mov	edi, OFFSET FLAT:.str.249
	nop	
	je	.label_133
	mov	esi, OFFSET FLAT:.str.250
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	r12d, 0x10
	mov	edi, OFFSET FLAT:.str.250
	nop	
	je	.label_133
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.251
	mov	rsp, rsp
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	r12d, 0x11
	mov	edi, OFFSET FLAT:.str.251
	je	.label_133
	mov	esi, OFFSET FLAT:.str.134
	mov	rsp, rsp
	mov	rdi, r14
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_211
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.135
	lea	rdi, [rdi]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_218
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.136
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	nop	
	je	.label_226
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.137
	mov	rdi, r14
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	je	.label_125
	mov	esi, OFFSET FLAT:.str.138
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	je	.label_125
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.139
	mov	rdi, r14
	mov	rbp, rbp
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	je	.label_140
	mov	esi, OFFSET FLAT:.str.140
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_145
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.142
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strcmp
	mov	rbx, -0x330
	test	eax, eax
	je	.label_182
.label_225:
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rbx + label_195]]
	mov	rdi, r14
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	je	.label_156
	add	rbx, 0x18
	lea	rsi, [rsi]
	jne	.label_225
	call	__errno_location
	mov	rbp, rbp
	mov	r13, rax
	mov	rsp, rsp
	mov	dword ptr [r13], 0
	mov	rsp, rsp
	mov	edx, 0x10
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	lea	rsi, [rsp + 0x38]
	call	strtoul
	lea	rdi, [rdi]
	cmp	dword ptr [r13], 0
	jne	.label_132
	mov	rsp, rsp
	mov	rcx, rax
	mov	qword ptr [rsp + 0x80], rcx
	mov	eax, ecx
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rsp, rsp
	jne	.label_132
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rbx, r14
	je	.label_132
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x3a
	jne	.label_132
	mov	rbp, rbp
	inc	rbx
	nop	
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x38]
	lea	rdi, [rdi]
	call	strtoul
	mov	rsp, rsp
	cmp	dword ptr [r13], 0
	lea	rdi, [rdi]
	jne	.label_132
	mov	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rcx
	mov	eax, ecx
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jne	.label_132
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	cmp	rbp, rbx
	lea	rsi, [rsi]
	je	.label_132
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x3a
	nop	
	jne	.label_132
	inc	rbp
	nop	
	mov	dword ptr [r13], 0
	nop	
	mov	edx, 0x10
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsp + 0x38]
	lea	rsi, [rsi]
	call	strtoul
	mov	rbp, rbp
	mov	r12, rax
	cmp	dword ptr [r13], 0
	jne	.label_132
	mov	eax, r12d
	nop	
	cmp	rax, r12
	nop	
	jne	.label_132
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	cmp	rbx, rbp
	mov	rsp, rsp
	je	.label_132
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x3a
	jne	.label_132
	inc	rbx
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	lea	rsi, [rsp + 0x38]
	mov	rbp, rbp
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_132
	mov	ecx, eax
	cmp	rcx, rax
	jne	.label_132
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	cmp	rcx, rbx
	je	.label_132
	movzx	edx, byte ptr [rcx]
	mov	rbp, rbp
	cmp	edx, 0x3a
	jne	.label_132
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x80]
	mov	dword ptr [rdx], esi
	mov	rsi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	mov	dword ptr [rdx + 4], esi
	mov	rbp, rbp
	mov	dword ptr [rdx + 8], r12d
	mov	dword ptr [rdx + 0xc], eax
	lea	rdi, [rdi]
	mov	r12, rdx
	xor	ebx, ebx
.label_164:
	lea	rdi, [rdi]
	mov	rbp, rcx
	mov	rsp, rsp
	inc	rbp
	lea	rdi, [rdi]
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbp
	mov	rsp, rsp
	lea	rsi, [rsp + 0x38]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_132
	cmp	rbx, 0x1f
	mov	dl, 0x3a
	jb	.label_152
	mov	rbp, rbp
	xor	edx, edx
.label_152:
	movzx	ecx, al
	cmp	rcx, rax
	lea	rsi, [rsi]
	jne	.label_132
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rcx, rbp
	je	.label_132
	lea	rdi, [rdi]
	movzx	edx, dl
	mov	rbp, rbp
	movzx	esi, byte ptr [rcx]
	cmp	esi, edx
	mov	rsp, rsp
	jne	.label_132
	mov	byte ptr [r12 + rbx + 0x11], al
	inc	rbx
	cmp	rbx, 0x20
	mov	rbp, rbp
	jb	.label_164
	jmp	.label_147
.label_133:
	mov	rsp, rsp
	cmp	r15d, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	je	.label_123
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax + rcx*8 + 8]
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_123
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x6d
	jne	.label_141
	movzx	eax, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	cmp	eax, 0x69
	jne	.label_141
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x6e
	jne	.label_141
	mov	rbp, rbp
	cmp	byte ptr [rdi + 3], 0
	je	.label_128
.label_141:
	mov	esi, OFFSET FLAT:.str.251
	nop	
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	je	.label_128
	nop	
	movzx	ebx, byte ptr [rbp]
	mov	rsp, rsp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_209
	lea	rdi, [rdi]
	movzx	r14d, byte ptr [rbp + 1]
	test	r14, r14
	je	.label_214
	nop	
	cmp	ebx, 0x5e
	jne	.label_217
	movzx	eax, r14b
	cmp	eax, 0x2d
	jne	.label_217
	lea	rdi, [rdi]
	cmp	byte ptr [rbp + 2], 0
	mov	eax, 0
	lea	rsi, [rsi]
	je	.label_131
.label_217:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.253
	mov	rdi, rbp
	mov	rbp, rbp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	eax, 0
	je	.label_131
	movzx	eax, bl
	cmp	eax, 0x5e
	jne	.label_128
	lea	rdi, [rdi]
	cmp	r14d, 0x3f
	nop	
	mov	eax, 0x7f
	nop	
	je	.label_131
	nop	
	and	r14d, 0x9f
	mov	rax, r14
	jmp	.label_131
.label_128:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.255
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0
	xor	esi, esi
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, 0xff
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.254
	mov	rdi, rbp
	nop	
	mov	r9, rax
	call	xnumtoumax
	jmp	.label_131
.label_209:
	mov	rax, rbx
	jmp	.label_131
.label_161:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	eax, dword ptr [rcx]
	cmp	ebx, 0x2d
	je	.label_150
	mov	rsp, rsp
	and	eax, 0xfffffccf
	or	eax, 0x120
	nop	
	mov	dword ptr [rcx], eax
	mov	rbp, rbp
	jmp	.label_151
.label_214:
	mov	rax, rbx
.label_131:
	inc	r15d
	lea	rsi, [rsi]
	lea	rcx, [r12 + r12*2]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rcx * 8) + label_29]]
	mov	byte ptr [r13 + rcx + 0x11], al
.label_147:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xc0]
	mov	byte ptr [rax], 1
	nop	dword ptr [rax]
.label_129:
	lea	rsi, [rsi]
	inc	r15d
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	cmp	r15d, eax
	jl	.label_135
.label_219:
	add	rsp, 0x88
	mov	rbp, rbp
	pop	rbx
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_158:
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.132
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbx, rax
	dec	r14
	jmp	.label_190
.label_123:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.133
.label_220:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
.label_190:
	mov	rdi, r14
	nop	
	call	quote
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_189:
	lea	rdi, [rdi]
	call	abort
.label_191:
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	nop	
	mov	edx, 0x8cb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.sane_mode
	call	__assert_fail
.label_177:
	call	abort
.label_175:
	nop	
	mov	edi, OFFSET FLAT:.str.232
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.233
	lea	rdi, [rdi]
	mov	edx, 0x8d1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.sane_mode
	mov	rsp, rsp
	call	__assert_fail
.label_165:
	lea	rdi, [rdi]
	call	abort
.label_132:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.132
	lea	rsi, [rsi]
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ff0

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
	lea	rdx, [rsp]
	xor	edi, edi
	mov	esi, 0x5413
	mov	rbp, rbp
	xor	eax, eax
	call	ioctl
	mov	rsp, rsp
	test	eax, eax
	je	.label_227
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	r15d, dword ptr [rax]
	cmp	r15d, 0x16
	jne	.label_229
	mov	qword ptr [rsp], 0
.label_227:
	test	ebx, ebx
	js	.label_230
	mov	word ptr [rsp], bx
.label_230:
	lea	rsi, [rsi]
	test	ebp, ebp
	js	.label_228
	mov	rbp, rbp
	mov	word ptr [rsp + 2], bp
.label_228:
	lea	rsi, [rsi]
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 0x5414
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	call	ioctl
	mov	rbp, rbp
	test	eax, eax
	jne	.label_231
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	nop	
	ret	
.label_231:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	call	error
.label_229:
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, r15d
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405110

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
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_234
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	lea	rsi, [rsi]
	jne	.label_232
	test	bpl, bpl
	jne	.label_233
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.256
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r14
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	error
.label_234:
	mov	eax, OFFSET FLAT:.str.257
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.258
	mov	rbp, rbp
	test	bpl, bpl
	lea	rsi, [rsi]
	cmovne	rdi, rax
	movzx	esi, word ptr [rsp + 8]
	mov	rsp, rsp
	movzx	edx, word ptr [rsp + 0xa]
	lea	rsi, [rsi]
	xor	eax, eax
	call	wrapf
	nop	
	test	bpl, bpl
	jne	.label_233
	nop	
	mov	dword ptr [dword ptr [rip + current_col]],  0
.label_233:
	lea	rdi, [rdi]
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	rbp
	mov	rbp, rbp
	ret	
.label_232:
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rsp, rsp
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405240

	.globl display_speed
	.type display_speed, @function
display_speed:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	r12d, esi
	mov	rbx, rdi
	call	cfgetispeed
	test	eax, eax
	je	.label_243
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
	jne	.label_250
.label_243:
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.259
	mov	ebp, OFFSET FLAT:.str.260
	lea	rsi, [rsi]
	test	r12b, r12b
	cmovne	rbp, rax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	cfgetospeed
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	edx, OFFSET FLAT:label_176
	mov	rsp, rsp
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_238:
	cmp	dword ptr [rdx], eax
	je	.label_235
	lea	rsi, [rsi]
	cmp	dword ptr [rdx + 0x18], eax
	je	.label_236
	add	rcx, 2
	add	rdx, 0x30
	mov	rsp, rsp
	cmp	rcx, 0x23
	jne	.label_238
	jmp	.label_245
.label_250:
	nop	
	mov	eax, OFFSET FLAT:.str.261
	mov	r14d, OFFSET FLAT:.str.262
	test	r12b, r12b
	lea	rdi, [rdi]
	cmovne	r14, rax
	mov	rdi, rbx
	call	cfgetispeed
	mov	ecx, 1
	mov	edx, OFFSET FLAT:label_176
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_247:
	cmp	dword ptr [rdx], eax
	je	.label_239
	mov	rsp, rsp
	cmp	dword ptr [rdx + 0x18], eax
	nop	
	je	.label_251
	add	rcx, 2
	add	rdx, 0x30
	mov	rsp, rsp
	cmp	rcx, 0x23
	jne	.label_247
	jmp	.label_249
.label_235:
	mov	rbp, rbp
	dec	rcx
.label_236:
	lea	rax, [rcx + rcx*2]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [+ (rax * 8) + label_242]]
.label_245:
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbp
	call	wrapf
	jmp	.label_241
.label_239:
	dec	rcx
.label_251:
	lea	rax, [rcx + rcx*2]
	mov	rsp, rsp
	mov	r15,  qword ptr [word ptr [+ (rax * 8) + label_242]]
.label_249:
	mov	rdi, rbx
	mov	rbp, rbp
	call	cfgetospeed
	mov	ecx, 1
	mov	esi, OFFSET FLAT:label_176
	xor	edx, edx
	nop	dword ptr [rax]
.label_248:
	mov	rsp, rsp
	cmp	dword ptr [rsi], eax
	mov	rsp, rsp
	je	.label_246
	cmp	dword ptr [rsi + 0x18], eax
	lea	rdi, [rdi]
	je	.label_237
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 0x30
	nop	
	cmp	rcx, 0x23
	jne	.label_248
	jmp	.label_244
.label_246:
	lea	rsi, [rsi]
	dec	rcx
.label_237:
	mov	rsp, rsp
	lea	rax, [rcx + rcx*2]
	mov	rdx,  qword ptr [word ptr [+ (rax * 8) + label_242]]
.label_244:
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	call	wrapf
.label_241:
	lea	rsi, [rsi]
	test	r12b, r12b
	mov	rbp, rbp
	jne	.label_240
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + current_col]],  0
.label_240:
	pop	rbx
	nop	
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405400

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
	je	.label_252
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x60], xmm2
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x70], xmm3
	movaps	xmmword ptr [rsp + 0x80], xmm4
	movaps	xmmword ptr [rsp + 0x90], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xb0], xmm7
.label_252:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	lea	rax, [rsp + 0x10]
	mov	qword ptr [rsp + 0xd0], rax
	nop	
	lea	rax, [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rax
	nop	
	mov	dword ptr [rsp + 0xc4], 0x30
	mov	dword ptr [rsp + 0xc0], 8
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
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
	js	.label_256
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + current_col]]
	test	eax, eax
	jle	.label_253
	mov	esi,  dword ptr [dword ptr [rip + max_col]]
	lea	rsi, [rsi]
	sub	esi, eax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	cmp	esi, ebx
	jge	.label_255
	cmp	rcx, rdx
	mov	rbp, rbp
	jae	.label_257
	lea	rdi, [rdi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rax
	lea	rdi, [rdi]
	mov	byte ptr [rcx], 0xa
	nop	
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	rbp, rbp
	jmp	.label_253
.label_255:
	nop	
	cmp	rcx, rdx
	jae	.label_258
	nop	
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
.label_254:
	mov	rsp, rsp
	inc	eax
	mov	dword ptr [dword ptr [rip + current_col]],  eax
.label_253:
	nop	
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	nop	
	call	free
	add	dword ptr [dword ptr [rip + current_col]],  ebx
	add	rsp, 0xe0
	pop	rbx
	lea	rdi, [rdi]
	ret	
.label_257:
	nop	
	mov	esi, 0xa
	call	__overflow
	mov	dword ptr [dword ptr [rip + current_col]],  0
	jmp	.label_253
.label_258:
	mov	esi, 0x20
	nop	
	call	__overflow
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + current_col]]
	lea	rsi, [rsi]
	jmp	.label_254
.label_256:
	call	xalloc_die
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055d0
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
	#Procedure 0x4055e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055f0

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
	je	.label_260
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_259
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_259
.label_260:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_262
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_259:
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
	jne	.label_261
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
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
.label_262:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_261:
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
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4056f0

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
	je	.label_263
	test	ebx, ebx
	nop	
	js	.label_263
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
	jmp	.label_264
.label_263:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_264:
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
	.align	32
	#Procedure 0x405770

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
	je	.label_265
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
	jl	.label_267
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_267
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
	jne	.label_266
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_266:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_267:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_265:
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
	.align	32
	#Procedure 0x405860
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
	#Procedure 0x4058b0
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
	#Procedure 0x4058d0
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
	#Procedure 0x4058f0
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
	#Procedure 0x405960
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
	#Procedure 0x405980
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
	je	.label_268
	test	rdx, rdx
	nop	
	je	.label_268
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_268:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059c0
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
	#Procedure 0x405a70

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
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_302:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_364
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_370]]
.label_643:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_644:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_387
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_387
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_286:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_278
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_278:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_286
.label_387:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_300
.label_636:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_300
.label_639:
	lea	rsi, [rsi]
	mov	al, 1
.label_637:
	mov	rbp, rbp
	mov	r12b, 1
.label_640:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_322
	lea	rsi, [rsi]
	mov	cl, al
.label_322:
	mov	rsp, rsp
	mov	al, cl
.label_638:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_329
	test	r10, r10
	je	.label_337
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_340
.label_329:
	xor	ecx, ecx
	jmp	.label_340
.label_641:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_349
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_354
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_360
.label_642:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_300
.label_337:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_340:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_300
.label_349:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_360
.label_354:
	lea	rdi, [rdi]
	mov	eax, 1
.label_360:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_300:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_274
	nop	word ptr cs:[rax + rax]
.label_271:
	nop	
	inc	rdi
.label_274:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_324
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_327
	jmp	.label_331
	nop	dword ptr [rax + rax]
.label_324:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_336
.label_327:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_345
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_347
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_347
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_347:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_379
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_285
	nop	dword ptr [rax + rax]
.label_345:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_285
	nop	word ptr cs:[rax + rax]
.label_379:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_276
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_285
	jmp	.label_297
.label_276:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_285:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_385
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_312]]
.label_617:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_284
	mov	rbp, rbp
	jmp	.label_319
.label_621:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_321
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_326
	nop	
	cmp	rbp, 1
	je	.label_319
	xor	r13d, r13d
	jmp	.label_275
.label_610:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_341
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_297
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_350
	mov	al, r14b
	and	al, 1
	jne	.label_353
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_359
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_359:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_367
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_367:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_375
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_375:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_374
.label_611:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_369
.label_612:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_277
.label_613:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_369
.label_614:
	mov	bl, 0x66
	jmp	.label_369
.label_615:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_277
.label_618:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_391
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_270
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_301
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_301:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_310
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_310:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_308
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_308:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_391:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_275
.label_619:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_318
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_284
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_284
	mov	rbp, rbp
	jmp	.label_330
.label_620:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_333
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_342
	lea	rdi, [rdi]
	jmp	.label_346
.label_385:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_323
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_269:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_373
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_373
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_275
.label_321:
	test	rdi, rdi
	jne	.label_386
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_386
.label_319:
	mov	dl, 1
.label_616:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_389
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_275
.label_341:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_271
	jmp	.label_284
.label_333:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_277
.label_342:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_280
.label_277:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_282
.label_369:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_275
	lea	rsi, [rsi]
	jmp	.label_294
.label_323:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_296
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_296:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_273:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_334
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_344
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_352
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_358
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_381:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_371
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_393
.label_371:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_381
.label_358:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_335
	xor	r13d, r13d
.label_335:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_273
	mov	rsp, rsp
	jmp	.label_269
.label_386:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_275
.label_318:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_284
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_284
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_284
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_293
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_292
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_306
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_309
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_309:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_315
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_315:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_338
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_338:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_392
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_392:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_275
.label_284:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_275:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_372
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_362
	lea	rsi, [rsi]
	jmp	.label_365
.label_372:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_365
.label_362:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_368
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_376
	nop	word ptr cs:[rax + rax]
.label_365:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_376:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_280
	mov	rsp, rsp
	jmp	.label_294
.label_368:
	mov	bl, r15b
.label_294:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_297
	nop	
	cmp	r9d, 2
	jne	.label_388
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_388
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_384
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_384:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_303
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_303:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_351
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_351:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_388:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_289
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_289:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_298
.label_326:
	xor	r13d, r13d
	nop	
	jmp	.label_275
.label_373:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_304
	nop	dword ptr [rax + rax]
.label_290:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_304:
	test	cl, cl
	je	.label_311
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_313
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_317
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_317:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_313
	nop	dword ptr [rax]
.label_311:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_297
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_343
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_343
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_320
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_320:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_356
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_356:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_339
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_339:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_343:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_377
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_377:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_383
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_383:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_281
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_281:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_313:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_280
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_287
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_287
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_291
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_291:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_332
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_332:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_287:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_290
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_290
	nop	word ptr cs:[rax + rax]
.label_280:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_328
	mov	rsp, rsp
	and	al, 1
	jne	.label_328
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_366
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_366:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_305
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_305:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_328:
	mov	rsp, rsp
	mov	bl, r15b
.label_298:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_382
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_382:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_271
.label_350:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_374
.label_353:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_374:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_378
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_378:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_279
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_325
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_299
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_390
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_390:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_272
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_272:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_275
.label_279:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_275
.label_325:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_275
.label_299:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_275
.label_344:
	xor	r13d, r13d
.label_334:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_269
.label_352:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_307
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_316:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_314
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_316
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_269
.label_307:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_269
.label_314:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_269
.label_293:
	xor	r13d, r13d
	jmp	.label_275
.label_292:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_275
.label_331:
	nop	
	mov	r13, rdi
.label_336:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_348
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_361
.label_348:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_363
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_363
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_380
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_363
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_302
.label_363:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_355
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_355
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_355
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_283:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_295
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_295:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_283
.label_355:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_288
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_288
.label_389:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_297
.label_393:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_297
.label_361:
	nop	
	mov	rbp, r13
	jmp	.label_297
.label_282:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_297:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_357:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_288:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_380:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_357
.label_270:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_297
.label_346:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_297
.label_330:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_297
.label_306:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_297
.label_364:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ff0
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
	#Procedure 0x407130
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
	je	.label_394
	mov	qword ptr [rax], rbx
.label_394:
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
	#Procedure 0x407280
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_395
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_399:
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
	jl	.label_399
.label_395:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_398
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_396]], OFFSET FLAT:slot0
.label_398:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_397
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_397:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407340
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x407350

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
	js	.label_406
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_401
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_402
.label_401:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_403
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
	jne	.label_405
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_405:
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
.label_402:
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
	ja	.label_404
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
	je	.label_400
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_400:
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
.label_404:
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
.label_406:
	lea	rdi, [rdi]
	call	abort
.label_403:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4075c0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4075d0
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
	#Procedure 0x407600
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
	#Procedure 0x407630
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
	je	.label_407
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
.label_407:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4076c0
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
	je	.label_408
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
.label_408:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407760
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
	je	.label_409
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
.label_409:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077f0
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
	je	.label_410
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
.label_410:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407860
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_411]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
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
	#Procedure 0x407900
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_411]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
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
	#Procedure 0x4079a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_411]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
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
	#Procedure 0x407a10
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_411]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
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
	#Procedure 0x407a80

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
	je	.label_414
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
.label_414:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407b60
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_411]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_415
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_415
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
.label_415:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407bf0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_411]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_416
	test	rdx, rdx
	je	.label_416
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
.label_416:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c80
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_411]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_417
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_417
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
.label_417:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d20
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_411]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_412]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_413]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_418
	test	rsi, rsi
	je	.label_418
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
.label_418:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dc0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dd0
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
	#Procedure 0x407df0
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
	#Procedure 0x407e10

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
	#Procedure 0x407e40

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
	jne	.label_420
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_422
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_419
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_419
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_419
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_419
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_419
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_419
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_420
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_420
.label_422:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_419
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_419
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_419
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_419
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_419
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_419
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_421
.label_419:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_420:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_421:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_420
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_420
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407fb0

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
	je	.label_426
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
	jmp	.label_432
.label_426:
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
.label_432:
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
	ja	.label_428
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_424]]
.label_663:
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
.label_428:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_427
.label_664:
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
.label_665:
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
.label_666:
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
	jmp	.label_429
.label_667:
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
	jmp	.label_425
.label_668:
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
	jmp	.label_431
.label_669:
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
.label_431:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_425:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_429:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_423
.label_671:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_427:
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
	jmp	.label_430
.label_670:
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
.label_430:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_423:
	mov	rbp, rbp
	call	__fprintf_chk
.label_662:
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
	#Procedure 0x4083a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_433:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_433
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083d0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_437:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_434
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_436
	nop	word ptr cs:[rax + rax]
.label_434:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_436:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_435
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_437
.label_435:
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
	#Procedure 0x408460

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_438
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
.label_438:
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
.label_440:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_439
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_441
	nop	dword ptr [rax + rax]
.label_439:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_441:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_442
	inc	r9
	cmp	r9, 0xa
	jb	.label_440
.label_442:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085a0
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
	.align	32
	#Procedure 0x408630
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
	jb	.label_443
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_444
	test	rax, rax
	je	.label_443
.label_444:
	nop	
	pop	rbx
	ret	
.label_443:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408680

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_445
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_446
.label_445:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_446:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086b0
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
	jb	.label_448
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_447
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_447
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_447:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_449
	test	rax, rax
	je	.label_448
.label_449:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_448:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408730

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_450
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_450
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_450:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_451
	test	rax, rax
	nop	
	je	.label_452
.label_451:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_452:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408780
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_453
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_457
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_456
.label_453:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_459
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_459:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_454
.label_456:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_455
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_455
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_455:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_458
	test	rax, rax
	mov	rbp, rbp
	je	.label_457
.label_458:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_457:
	call	xalloc_die
.label_454:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408860
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_460
	test	rax, rax
	mov	rbp, rbp
	je	.label_461
.label_460:
	pop	rbx
	ret	
.label_461:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408880
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_462
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_465
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_466
	call	free
	xor	eax, eax
	jmp	.label_463
.label_462:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_464
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_466:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_463
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_464
.label_463:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_464:
	mov	rbp, rbp
	call	xalloc_die
.label_465:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408910
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
	je	.label_467
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_468
.label_467:
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
.label_468:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408970
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
	jb	.label_469
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_469
	pop	rcx
	ret	
.label_469:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4089a0

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
	je	.label_471
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_470
.label_471:
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
.label_470:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a00
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
	je	.label_472
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_473
.label_472:
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
.label_473:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x408a60

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
	.align	32
	#Procedure 0x408ab0

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
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	nop	
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_475
	cmp	eax, 1
	je	.label_477
	mov	rbp, rbp
	cmp	eax, 3
	nop	
	jne	.label_478
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_474
.label_477:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_474
.label_475:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_480
	lea	rdi, [rdi]
	cmp	rbx, r15
	jbe	.label_476
.label_480:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	cmp	rbx, 0x40000000
	jb	.label_479
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_474
.label_478:
	call	__errno_location
	nop	
	jmp	.label_474
.label_479:
	mov	dword ptr [rax], 0x22
.label_474:
	mov	ecx, dword ptr [rsp + 0x40]
	nop	
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	nop	
	mov	r8, rax
	mov	edx, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	esi, ebp
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	call	error
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp]
.label_476:
	mov	rax, rbx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bd0
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
	.align	32
	#Procedure 0x408c10

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
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r14, r8
	mov	qword ptr [rsp + 8], rcx
	mov	ebp, edx
	mov	rbp, rbp
	mov	r13, rdi
	nop	
	cmp	ebp, 0x25
	jae	.label_487
	test	rsi, rsi
	lea	rsi, [rsi]
	lea	r15, [rsp + 0x10]
	nop	
	cmovne	r15, rsi
	mov	rsp, rsp
	call	__errno_location
	mov	rbx, rax
	mov	rsp, rsp
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	mov	rsi, r15
	mov	edx, ebp
	call	strtol
	nop	
	mov	r12, rax
	mov	rcx, qword ptr [r15]
	cmp	rcx, r13
	nop	
	je	.label_511
	mov	eax, dword ptr [rbx]
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_514
	lea	rdi, [rdi]
	mov	ebp, 4
	lea	rdi, [rdi]
	cmp	eax, 0x22
	mov	rsp, rsp
	jne	.label_486
	lea	rdi, [rdi]
	mov	ebp, 1
.label_514:
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_525
	mov	rbp, rbp
	mov	edx, ebp
	jmp	.label_512
.label_511:
	nop	
	mov	ebp, 4
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_486
	mov	rbx, rcx
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_486
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strchr
	lea	rsi, [rsi]
	xor	edx, edx
	mov	r12d, 1
	mov	rsp, rsp
	test	rax, rax
	mov	rcx, rbx
	je	.label_486
.label_512:
	lea	rsi, [rsi]
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_485
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], edx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r13d
	call	strchr
	mov	rbp, rbp
	test	rax, rax
	je	.label_482
	mov	r8d, 1
	mov	r11d, 0x400
	nop	
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	ja	.label_483
	movabs	rcx, 0x814400308945
	lea	rdi, [rdi]
	bt	rcx, rax
	jae	.label_483
	mov	rbp, rbp
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	strchr
	mov	r8d, 1
	lea	rsi, [rsi]
	mov	r11d, 0x400
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_483
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rax + 1]
	mov	r8d, 1
	mov	r11d, 0x400
	lea	rdi, [rdi]
	cmp	eax, 0x42
	je	.label_524
	cmp	eax, 0x44
	lea	rdi, [rdi]
	je	.label_524
	cmp	eax, 0x69
	mov	rbp, rbp
	jne	.label_483
	mov	rax, qword ptr [rsp + 0x18]
	movzx	eax, byte ptr [rax + 2]
	mov	r8d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	lea	rdi, [rdi]
	je	.label_533
	lea	rdi, [rdi]
	mov	r8d, 1
.label_533:
	mov	r11d, 0x400
	nop	
	jmp	.label_483
.label_525:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rax], r12
	jmp	.label_486
.label_485:
	nop	
	mov	r13, r12
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_491
.label_524:
	lea	rsi, [rsi]
	mov	r8d, 2
	lea	rsi, [rsi]
	mov	r11d, 0x3e8
.label_483:
	mov	rbp, rbp
	movabs	r10, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_499
	lea	rdi, [rdi]
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_503
	jmp	qword ptr [word ptr [+ (rax * 8) + label_506]]
.label_692:
	movabs	rax, 0xffe0000000000000
	mov	rbp, rbp
	cmp	r12, rax
	lea	rsi, [rsi]
	jl	.label_508
	mov	r13, r12
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	nop	
	jmp	.label_515
.label_499:
	cmp	r13d, 0x73
	jg	.label_519
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	lea	rsi, [rsi]
	ja	.label_521
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, r12
	jmp	qword ptr [word ptr [+ (rax * 8) + label_526]]
.label_700:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	mov	rsp, rsp
	jl	.label_508
	lea	rdi, [rdi]
	mov	r13, r12
	lea	rsi, [rsi]
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_515
.label_503:
	cmp	r13d, 0x54
	je	.label_492
	lea	rdi, [rdi]
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_482
	nop	
	lea	r13, [r10 + 1]
	mov	rax, r13
	lea	rdi, [rdi]
	cqo	
	idiv	r11
	mov	rbp, rbp
	mov	r9, rax
	lea	rdi, [rdi]
	cmp	r12, r9
	nop	
	mov	ecx, 1
	mov	rsp, rsp
	mov	rbx, r13
	mov	edi, 1
	lea	rdi, [rdi]
	jl	.label_488
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	mov	rbx, r12
	lea	rsi, [rsi]
	imul	rbx, r11
	lea	rsi, [rsi]
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	cmovl	rbx, r10
	mov	rbp, rbp
	movzx	edi, al
.label_488:
	cmp	rbx, r9
	mov	rbp, rbp
	mov	rsi, r13
	jl	.label_510
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	div	r11
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	imul	rsi, r11
	nop	
	cmp	rax, rbx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r10
	mov	rsp, rsp
	movzx	ecx, al
.label_510:
	or	ecx, edi
	mov	rbp, rbp
	cmp	rsi, r9
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	jl	.label_522
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	lea	rsi, [rsi]
	imul	rbp, r11
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_522:
	or	edi, ecx
	cmp	rbp, r9
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_538
	xor	edx, edx
	nop	
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	lea	rdi, [rdi]
	cmp	rax, rbp
	setl	al
	nop	
	cmovl	rsi, r10
	movzx	ebx, al
.label_538:
	mov	rsp, rsp
	or	ebx, edi
	lea	rdi, [rdi]
	cmp	rsi, r9
	mov	edi, 1
	mov	rbp, rbp
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rsi, [rsi]
	jl	.label_494
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r10
	nop	
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	lea	rdi, [rdi]
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	lea	rdi, [rdi]
	movzx	ecx, al
.label_494:
	or	ecx, ebx
	cmp	rbp, r9
	lea	rdi, [rdi]
	mov	rsi, r13
	jl	.label_509
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rbp
	mov	rsi, rbp
	imul	rsi, r11
	nop	
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	mov	rsp, rsp
	movzx	edi, al
.label_509:
	mov	rsp, rsp
	or	edi, ecx
	mov	rsp, rsp
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rsp, rsp
	jl	.label_520
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsp, rsp
	mov	rbp, rsi
	imul	rbp, r11
	mov	rbp, rbp
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_520:
	or	ecx, edi
	cmp	rbp, r9
	mov	rbp, rbp
	jl	.label_535
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rbp
	mov	rsp, rsp
	cmp	rax, rbp
	lea	rsi, [rsi]
	setl	al
	mov	rbp, rbp
	cmovl	r11, r10
	mov	rbp, rbp
	movzx	ebx, al
	mov	r13, r11
.label_535:
	nop	
	or	ebx, ecx
	jmp	.label_489
.label_519:
	mov	rbp, rbp
	cmp	r13d, 0x74
	je	.label_492
	cmp	r13d, 0x77
	jne	.label_482
	nop	
	movabs	rax, 0xc000000000000000
	nop	
	cmp	r12, rax
	nop	
	jge	.label_496
.label_508:
	lea	rsi, [rsi]
	inc	r10
	lea	rdi, [rdi]
	mov	ebx, 1
	mov	r13, r10
	lea	rsi, [rsi]
	jmp	.label_489
.label_694:
	lea	r13, [r10 + 1]
	mov	rax, r13
	lea	rsi, [rsi]
	cqo	
	mov	rbp, rbp
	idiv	r11
	mov	rdi, rax
	cmp	r12, rdi
	lea	rsi, [rsi]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rbp, r13
	mov	rsp, rsp
	mov	ebx, 1
	mov	rsp, rsp
	jl	.label_507
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	lea	rdi, [rdi]
	mov	rbp, r12
	imul	rbp, r11
	mov	rbp, rbp
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	lea	rdi, [rdi]
	cmovl	rbp, r10
	mov	rbp, rbp
	movzx	ebx, al
.label_507:
	cmp	rbp, rdi
	lea	rdi, [rdi]
	mov	rsi, r13
	jl	.label_530
	xor	edx, edx
	mov	rax, r10
	div	r11
	lea	rsi, [rsi]
	mov	rsi, rbp
	lea	rdi, [rdi]
	imul	rsi, r11
	mov	rbp, rbp
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_530:
	mov	rsp, rsp
	or	ecx, ebx
	cmp	rsi, rdi
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_539
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_539:
	or	ebx, ecx
	jmp	.label_489
.label_695:
	mov	rsp, rsp
	lea	r13, [r10 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	idiv	r11
	cmp	r12, rax
	lea	rdi, [rdi]
	mov	ebx, 1
	jl	.label_489
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, r10
	div	r11
	mov	rsp, rsp
	imul	r11, r12
	lea	rdi, [rdi]
	cmp	rax, r12
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	r11, r10
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r11
	jmp	.label_489
.label_696:
	mov	rsp, rsp
	lea	r13, [r10 + 1]
	mov	rsp, rsp
	mov	rax, r13
	nop	
	cqo	
	idiv	r11
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	cmp	r12, rdi
	lea	rdi, [rdi]
	mov	ebx, 1
	nop	
	mov	rsi, r13
	mov	rsp, rsp
	mov	ecx, 1
	jl	.label_516
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	nop	
	div	r11
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbp, rbp
	imul	rsi, r11
	cmp	rax, r12
	lea	rsi, [rsi]
	setl	al
	cmovl	rsi, r10
	mov	rbp, rbp
	movzx	ecx, al
.label_516:
	lea	rdi, [rdi]
	cmp	rsi, rdi
	jl	.label_537
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	r11, r10
	movzx	ebx, al
	lea	rsi, [rsi]
	mov	r13, r11
.label_537:
	or	ebx, ecx
	mov	rsp, rsp
	jmp	.label_489
.label_492:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	lea	rdi, [rdi]
	mov	r9, rax
	nop	
	cmp	r12, r9
	lea	rsi, [rsi]
	mov	ecx, 1
	nop	
	mov	rbx, r13
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	jl	.label_495
	xor	edx, edx
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	lea	rdi, [rdi]
	mov	rbx, r12
	nop	
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	nop	
	cmovl	rbx, r10
	nop	
	movzx	edi, al
.label_495:
	mov	rbp, rbp
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_513
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	mov	rsi, rbx
	mov	rsp, rsp
	imul	rsi, r11
	cmp	rax, rbx
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r10
	lea	rsi, [rsi]
	movzx	ecx, al
.label_513:
	mov	rsp, rsp
	or	ecx, edi
	lea	rdi, [rdi]
	cmp	rsi, r9
	mov	ebx, 1
	lea	rsi, [rsi]
	mov	rbp, r13
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_527
	xor	edx, edx
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	mov	rbp, rsi
	lea	rdi, [rdi]
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	nop	
	movzx	edi, al
.label_527:
	lea	rdi, [rdi]
	or	edi, ecx
	mov	rbp, rbp
	cmp	rbp, r9
	mov	rbp, rbp
	jl	.label_481
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	div	r11
	imul	r11, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	setl	al
	cmovl	r11, r10
	lea	rsi, [rsi]
	movzx	ebx, al
	mov	rsp, rsp
	mov	r13, r11
.label_481:
	or	ebx, edi
	jmp	.label_489
.label_521:
	nop	
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_482
	mov	rbp, rbp
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	lea	rsi, [rsi]
	mov	r9, rax
	lea	rdi, [rdi]
	cmp	r12, r9
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	rbx, r13
	mov	edi, 1
	jl	.label_501
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	div	r11
	lea	rsi, [rsi]
	mov	rbx, r12
	lea	rsi, [rsi]
	imul	rbx, r11
	mov	rsp, rsp
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rbx, r10
	lea	rsi, [rsi]
	movzx	edi, al
.label_501:
	cmp	rbx, r9
	mov	rsi, r13
	lea	rsi, [rsi]
	jl	.label_523
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	lea	rdi, [rdi]
	cmp	rax, rbx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r10
	mov	rsp, rsp
	movzx	ecx, al
.label_523:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_534
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	nop	
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_534:
	or	edi, ecx
	mov	rbp, rbp
	cmp	rbp, r9
	nop	
	mov	rsi, r13
	jl	.label_493
	xor	edx, edx
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	mov	rsp, rsp
	mov	rsi, rbp
	imul	rsi, r11
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rdi, [rdi]
	setl	al
	nop	
	cmovl	rsi, r10
	lea	rsi, [rsi]
	movzx	ebx, al
.label_493:
	lea	rsi, [rsi]
	or	ebx, edi
	mov	rbp, rbp
	cmp	rsi, r9
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, r13
	mov	rbp, rbp
	mov	ecx, 1
	jl	.label_504
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r10
	mov	rbp, rbp
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	nop	
	setl	al
	mov	rsp, rsp
	cmovl	rbp, r10
	lea	rsi, [rsi]
	movzx	ecx, al
.label_504:
	mov	rsp, rsp
	or	ecx, ebx
	lea	rdi, [rdi]
	cmp	rbp, r9
	nop	
	mov	rsi, r13
	nop	
	jl	.label_484
	xor	edx, edx
	nop	
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	lea	rsi, [rsi]
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	edi, al
.label_484:
	or	edi, ecx
	mov	rbp, rbp
	cmp	rsi, r9
	mov	ebx, 1
	jl	.label_532
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	nop	
	mov	r13, r11
.label_532:
	mov	rbp, rbp
	or	ebx, edi
	jmp	.label_489
.label_482:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x24]
	nop	
	or	eax, 2
	mov	rbp, rbp
	mov	ebp, eax
	lea	rdi, [rdi]
	jmp	.label_486
.label_693:
	lea	rsi, [rsi]
	lea	r13, [r10 + 1]
	mov	rsp, rsp
	mov	rax, r13
	nop	
	cqo	
	lea	rdi, [rdi]
	idiv	r11
	mov	r9, rax
	nop	
	cmp	r12, r9
	mov	ebx, 1
	mov	rbp, rbp
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_497
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	div	r11
	mov	rsi, r12
	imul	rsi, r11
	cmp	rax, r12
	mov	rbp, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_497:
	mov	rsp, rsp
	cmp	rsi, r9
	mov	rdi, r13
	mov	rbp, rbp
	jl	.label_502
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	lea	rdi, [rdi]
	movzx	ebx, al
.label_502:
	or	ebx, ecx
	lea	rdi, [rdi]
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	r14d, 1
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rbp, rbp
	mov	ecx, 1
	jl	.label_528
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	mov	rbp, rbp
	mov	rsi, rdi
	lea	rsi, [rsi]
	imul	rsi, r11
	lea	rsi, [rsi]
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_528:
	or	ecx, ebx
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_505
	xor	edx, edx
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	imul	rdi, r11
	mov	rsp, rsp
	cmp	rax, rsi
	mov	rbp, rbp
	setl	al
	cmovl	rdi, r10
	movzx	r14d, al
.label_505:
	or	r14d, ecx
	lea	rsi, [rsi]
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_536
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	lea	rdi, [rdi]
	mov	rsi, rdi
	mov	rsp, rsp
	imul	rsi, r11
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_536:
	lea	rsi, [rsi]
	or	ecx, r14d
	mov	rsp, rsp
	cmp	rsi, r9
	jl	.label_517
	xor	edx, edx
	mov	rax, r10
	nop	
	div	r11
	nop	
	imul	r11, rsi
	mov	rsp, rsp
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r11
.label_517:
	or	ebx, ecx
	lea	rsi, [rsi]
	jmp	.label_489
.label_697:
	nop	
	lea	r13, [r10 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	nop	
	idiv	r11
	mov	r9, rax
	lea	rsi, [rsi]
	cmp	r12, r9
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_529
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r10
	div	r11
	lea	rsi, [rsi]
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	cmovl	rbx, r10
	nop	
	movzx	edi, al
.label_529:
	cmp	rbx, r9
	nop	
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_490
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	mov	rbp, rbp
	div	r11
	mov	rsi, rbx
	nop	
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_490:
	lea	rdi, [rdi]
	or	ecx, edi
	lea	rdi, [rdi]
	cmp	rsi, r9
	nop	
	mov	r14d, 1
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_500
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	mov	rbp, rbp
	movzx	ebx, al
.label_500:
	or	ebx, ecx
	mov	rbp, rbp
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	rbp, rbp
	jl	.label_518
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	rsp, rsp
	imul	rcx, r11
	lea	rdi, [rdi]
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rcx, r10
	movzx	r14d, al
.label_518:
	nop	
	or	r14d, ebx
	mov	rsp, rsp
	cmp	rcx, r9
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_531
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	mov	rbp, rbp
	div	r11
	imul	r11, rcx
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	nop	
	cmovl	r11, r10
	nop	
	movzx	ebx, al
	mov	r13, r11
.label_531:
	nop	
	or	ebx, r14d
	mov	rsp, rsp
	jmp	.label_489
.label_496:
	lea	r13, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_515:
	cmp	r12, rax
	lea	rsi, [rsi]
	setg	al
	lea	rdi, [rdi]
	cmovg	r13, r10
	lea	rdi, [rdi]
	movzx	ebx, al
.label_489:
	or	ebx, dword ptr [rsp + 0x24]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rax, [rcx + r8]
	mov	qword ptr [r15], rax
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + r8], 0
	je	.label_498
	or	ebx, 2
.label_498:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, ebx
.label_491:
	mov	rsp, rsp
	mov	qword ptr [rax], r13
	mov	ebp, edx
.label_486:
	nop	
	mov	eax, ebp
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_487:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	lea	rsi, [rsi]
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4099b0

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
	jae	.label_553
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
.label_546:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_546
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
	je	.label_542
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
	je	.label_564
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_562
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_542
	mov	dword ptr [rsp + 4], 1
.label_562:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_550
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_542
.label_564:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_542
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_542
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
	je	.label_542
.label_550:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_540
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
	je	.label_548
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_554
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_554
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
	je	.label_554
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_549
	cmp	eax, 0x44
	nop	
	je	.label_549
	cmp	eax, 0x69
	jne	.label_554
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_555
	lea	rdi, [rdi]
	mov	ecx, 1
.label_555:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_554
.label_540:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_563
.label_549:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_554:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_566
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_543
	jmp	qword ptr [word ptr [+ (rax * 8) + label_547]]
.label_702:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_551
.label_566:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_552
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_556
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_559]]
.label_709:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_551:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_561
.label_543:
	cmp	r13d, 0x54
	nop	
	je	.label_544
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_548
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
	jmp	.label_557
.label_552:
	cmp	r13d, 0x74
	je	.label_544
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_548
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
	jmp	.label_561
.label_704:
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
	jmp	.label_558
.label_705:
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
	jmp	.label_560
.label_706:
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
	jmp	.label_541
.label_544:
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
	jmp	.label_565
.label_556:
	cmp	r13d, 0x5a
	jne	.label_548
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
.label_557:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_560
.label_548:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_542
.label_703:
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
	jmp	.label_541
.label_707:
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
.label_565:
	or	dl, r10b
.label_558:
	lea	rsi, [rsi]
	or	dl, bl
.label_541:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_560:
	mov	rsp, rsp
	mov	rbp, rsi
.label_561:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_545
	or	eax, 2
.label_545:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_563:
	mov	qword ptr [rax], rbp
.label_542:
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
.label_553:
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a270

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_567
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_568
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
	je	.label_568
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
.label_567:
	mov	ecx, 1
.label_568:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a2e0

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
	je	.label_587
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
.label_587:
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
	ja	.label_580
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_574
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_570
	mov	rsp, rsp
	test	esi, esi
	jne	.label_580
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_581
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_586
.label_580:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_575
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_570
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_582
.label_574:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_578
.label_570:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_579
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_583
.label_579:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_583:
	mov	edx, dword ptr [rax]
.label_576:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_578:
	mov	ebp, eax
.label_572:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_582:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_575
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_577
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_571
.label_575:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_585
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_588
.label_581:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_586:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_576
.label_577:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_571:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_573
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
	jns	.label_569
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_569
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
	js	.label_572
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_589
.label_569:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_572
.label_585:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_588:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_578
.label_573:
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
.label_589:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_572
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_572
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_584
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
	jne	.label_572
.label_584:
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
	jmp	.label_572
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a6b0

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
	je	.label_590
	nop	
	cmp	r15, -2
	jb	.label_590
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_590
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_590:
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
	#Procedure 0x40a740

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
	jne	.label_591
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_592
	test	cl, cl
	mov	rsp, rsp
	jne	.label_592
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_592
.label_591:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_592
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_592:
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
	#Procedure 0x40a7d0

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
	je	.label_594
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_593
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_595
.label_593:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_594
.label_595:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_594:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a820

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
	je	.label_596
	nop	
	mov	rax, rcx
.label_596:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a860

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
	js	.label_597
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_599
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
	je	.label_597
.label_599:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_597
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_598
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_598:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_597:
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
	#Procedure 0x40a910

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_600
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_600
	test	byte ptr [rbx + 1], 1
	je	.label_600
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_600:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a950

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
	jne	.label_601
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_601
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_602
.label_601:
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
.label_602:
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
	je	.label_603
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_603:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x40aa00

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