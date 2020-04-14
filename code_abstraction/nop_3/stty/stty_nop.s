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
	mov	dword ptr [rsp + 0x24], edi
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
	mov	qword ptr [rsp + 0x38], rax
	lea	rdi, [rdi]
	mov	r14d, 1
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	mov	r13d, 0
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rax
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_40
	nop	dword ptr [rax]
.label_49:
	mov	rbp, rbp
	mov	r14d, ebp
.label_40:
	mov	edi, dword ptr [rsp + 0x24]
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
	jg	.label_75
	mov	rbp, rbp
	cmp	eax, -1
	je	.label_73
	cmp	eax, 0xffffff7d
	mov	rsp, rsp
	je	.label_79
	cmp	eax, 0xffffff7e
	mov	rbp, rbp
	jne	.label_80
	jmp	.label_81
	nop	word ptr cs:[rax + rax]
.label_75:
	cmp	eax, 0x46
	mov	rsp, rsp
	je	.label_85
	cmp	eax, 0x61
	je	.label_90
	mov	rbp, rbp
	cmp	eax, 0x67
	mov	rbp, rbp
	jne	.label_80
	mov	dword ptr [rsp + 0x28], 2
	mov	r13b, 1
	mov	rbp, rbp
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
.label_80:
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
	je	.label_93
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.104
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_93
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x1c], 0
.label_93:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + optind]],  0
	mov	r14d, 1
	jmp	.label_92
.label_85:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x38], 0
	mov	rsp, rsp
	jne	.label_113
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x38], rax
	jmp	.label_92
.label_90:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rax
	mov	dword ptr [rsp + 0x28], 1
.label_92:
	movsxd	r12,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	cmp	r14d, r12d
	lea	rsi, [rsi]
	jge	.label_40
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
	je	.label_30
	mov	cl, r12b
	sub	cl, r14b
	movzx	ecx, cl
	mov	rsp, rsp
	and	ecx, 7
	lea	rdi, [rdi]
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_48:
	lea	rsi, [rsi]
	inc	rbp
	inc	rcx
	jne	.label_48
.label_30:
	lea	rsi, [rsi]
	cmp	rax, 7
	nop	
	jb	.label_49
	nop	dword ptr [rax]
.label_31:
	add	rbp, 8
	cmp	rbp, r12
	jl	.label_31
	jmp	.label_49
.label_73:
	mov	r14, rbx
	lea	rdi, [rdi]
	mov	al, r13b
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x40]
	and	al, bl
	mov	rbp, rbp
	test	al, 1
	jne	.label_57
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	test	r12b, 1
	mov	rbp, qword ptr [rsp + 0x38]
	jne	.label_47
	mov	al, bl
	lea	rsi, [rsi]
	or	al, r13b
	and	al, 1
	nop	
	jne	.label_71
.label_47:
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_99
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r15, rax
.label_99:
	mov	rsp, rsp
	or	r13b, r12b
	lea	rsi, [rsi]
	or	r13b, bl
	and	r13b, 1
	mov	rsp, rsp
	mov	rbx, r14
	jne	.label_82
	lea	rax, [rsp + 0x2f]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	lea	r9, [rsp + 0x23]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	r8d, OFFSET FLAT:main.check_mode
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x24]
	nop	
	call	apply_settings
.label_82:
	test	rbp, rbp
	je	.label_98
	xor	edi, edi
	mov	edx, 0x800
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rsi, r15
	nop	
	call	fd_reopen
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_39
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
	je	.label_108
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
	js	.label_108
.label_98:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:main.mode
	call	tcgetattr
	test	eax, eax
	nop	
	jne	.label_39
	test	r13b, r13b
	nop	
	jne	.label_123
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x23], 0
	nop	
	mov	byte ptr [rsp + 0x2f], 0
	lea	rsi, [rsi]
	lea	rax, [rsp + 0x2f]
	mov	qword ptr [rsp], rax
	lea	r9, [rsp + 0x23]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:main.mode
	mov	rsi, r15
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x24]
	call	apply_settings
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_26
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
	jne	.label_39
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:main.new_mode
	call	tcgetattr
	test	eax, eax
	nop	
	jne	.label_39
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:main.mode
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:main.new_mode
	mov	rsp, rsp
	mov	edx, 0x3c
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_26
	mov	rbp, rbp
	and	dword ptr [dword ptr [rip + label_77]],  0xeff0ffff
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x23], 0
	mov	rsp, rsp
	jne	.label_78
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	lea	rdi, [rdi]
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_26
.label_78:
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
.label_123:
	nop	
	lea	rdx, [rsp + 0x30]
	nop	
	mov	edi, 1
	mov	esi, 0x5413
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	ioctl
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_96
	movzx	eax, word ptr [rsp + 0x32]
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_97
.label_96:
	mov	edi, OFFSET FLAT:.str.297
	lea	rdi, [rdi]
	call	getenv
	test	rax, rax
	mov	rbp, rbp
	je	.label_103
	lea	rcx, [rsp + 0x10]
	lea	rdi, [rdi]
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rax
	lea	rdi, [rdi]
	call	xstrtol
	nop	
	test	eax, eax
	jne	.label_103
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	mov	rbp, rbp
	jb	.label_97
.label_103:
	nop	
	mov	qword ptr [rsp + 0x10], 0x50
	mov	eax, 0x50
.label_97:
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + current_col]],  0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	cmp	eax, 2
	je	.label_114
	cmp	eax, 1
	je	.label_121
	test	eax, eax
	jne	.label_26
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:main.mode
	mov	rbp, rbp
	mov	esi, 1
	call	display_speed
	movzx	esi,  byte ptr [byte ptr [rip + label_14]]
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
	jae	.label_20
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0xa
.label_33:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	r14b, 1
	mov	ebp, OFFSET FLAT:label_36
	lea	rdi, [rdi]
	jmp	.label_37
	nop	
.label_59:
	mov	rsp, rsp
	add	rbp, 0x18
.label_37:
	mov	r15, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x6d
	jne	.label_46
	movzx	eax, byte ptr [r15 + 1]
	lea	rdi, [rdi]
	cmp	eax, 0x69
	jne	.label_46
	movzx	eax, byte ptr [r15 + 2]
	cmp	eax, 0x6e
	jne	.label_46
	mov	rsp, rsp
	cmp	byte ptr [r15 + 3], 0
	lea	rdi, [rdi]
	je	.label_53
	nop	
.label_46:
	mov	rax, qword ptr [rbp]
	movzx	ebx,  byte ptr [byte ptr [rax + label_58]]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	ebx, eax
	lea	rsi, [rsi]
	je	.label_59
	nop	
	mov	esi, OFFSET FLAT:.str.248
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_59
	test	bl, bl
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.302
	je	.label_72
	lea	rsi, [rsi]
	movzx	eax, bl
	cmp	eax, 0x20
	nop	
	jb	.label_76
	mov	rbp, rbp
	cmp	eax, 0x7e
	mov	rbp, rbp
	ja	.label_110
	mov	byte ptr [byte ptr [rip + visible.buf]],  bl
	nop	
	mov	eax, OFFSET FLAT:label_23
	jmp	.label_43
.label_76:
	nop	
	mov	byte ptr [byte ptr [rip + visible.buf]],  0x5e
	lea	rsi, [rsi]
	add	bl, 0x40
	mov	byte ptr [byte ptr [rip + label_23]],  bl
	jmp	.label_83
.label_110:
	cmp	eax, 0x7f
	mov	rsp, rsp
	jne	.label_67
	mov	word ptr [word ptr [rip + visible.buf]],  0x3f5e
.label_83:
	mov	eax, OFFSET FLAT:label_41
.label_43:
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	edx, OFFSET FLAT:visible.buf
.label_72:
	nop	
	xor	r14d, r14d
	nop	
	mov	edi, OFFSET FLAT:.str.299
	xor	eax, eax
	mov	rsi, r15
	mov	rbp, rbp
	call	wrapf
	lea	rdi, [rdi]
	jmp	.label_59
.label_67:
	mov	rbp, rbp
	mov	word ptr [word ptr [rip + visible.buf]],  0x2d4d
	lea	rsi, [rsi]
	cmp	eax, 0xa0
	mov	rbp, rbp
	jb	.label_100
	cmp	eax, 0xff
	je	.label_105
	mov	rsp, rsp
	xor	bl, 0x80
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + label_41]],  bl
	mov	eax, OFFSET FLAT:label_64
	lea	rsi, [rsi]
	jmp	.label_43
.label_100:
	mov	byte ptr [byte ptr [rip + label_41]],  0x5e
	mov	rsp, rsp
	add	bl, 0xc0
	nop	
	mov	byte ptr [byte ptr [rip + label_64]],  bl
	mov	eax, OFFSET FLAT:label_42
	nop	
	jmp	.label_43
.label_105:
	mov	word ptr [word ptr [rip + label_41]],  0x3f5e
	mov	eax, OFFSET FLAT:label_42
	lea	rdi, [rdi]
	jmp	.label_43
.label_114:
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rip + main.mode]]
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [rip + label_116]]
	mov	r8d,  dword ptr [dword ptr [rip + label_117]]
	mov	rsp, rsp
	mov	r9d,  dword ptr [dword ptr [rip + label_65]]
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
.label_28:
	movzx	edx,  byte ptr [byte ptr [rbx + label_18]]
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.305
	lea	rdi, [rdi]
	xor	eax, eax
	call	__printf_chk
	inc	rbx
	jne	.label_28
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_94
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0xa
	mov	rsp, rsp
	jmp	.label_26
.label_121:
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	call	display_speed
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x30]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 0x5413
	xor	eax, eax
	nop	
	call	ioctl
	test	eax, eax
	je	.label_95
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	ebx, 0x16
	nop	
	je	.label_56
	nop	
	jmp	.label_62
.label_53:
	test	byte ptr [byte ptr [rip + label_65]],  2
	nop	
	jne	.label_66
	movzx	esi,  byte ptr [byte ptr [rip + label_68]]
	movzx	edx,  byte ptr [byte ptr [rip + label_69]]
	mov	edi, OFFSET FLAT:.str.300
	xor	eax, eax
	lea	rsi, [rsi]
	call	wrapf
	jmp	.label_51
.label_66:
	test	r14b, 1
	jne	.label_51
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_74
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_51:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	r14b, 1
	mov	rbx, -0xb20
	mov	rsp, rsp
	jmp	.label_15
.label_95:
	mov	rbp, rbp
	movzx	esi, word ptr [rsp + 0x30]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rsp + 0x32]
	mov	edi, OFFSET FLAT:.str.257
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	call	wrapf
.label_56:
	movzx	esi,  byte ptr [byte ptr [rip + label_14]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.298
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	call	wrapf
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_102
	nop	
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0xa
.label_44:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	ebp, OFFSET FLAT:label_36
	jmp	.label_109
	nop	dword ptr [rax]
.label_52:
	add	rbp, 0x18
.label_109:
	mov	rbx, qword ptr [rbp - 0x10]
	movzx	eax, byte ptr [rbx]
	mov	rsp, rsp
	cmp	eax, 0x6d
	lea	rsi, [rsi]
	jne	.label_112
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x69
	nop	
	jne	.label_112
	movzx	eax, byte ptr [rbx + 2]
	nop	
	cmp	eax, 0x6e
	mov	rbp, rbp
	jne	.label_112
	nop	
	cmp	byte ptr [rbx + 3], 0
	je	.label_120
	nop	dword ptr [rax + rax]
.label_112:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.248
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_52
	nop	
	mov	rax, qword ptr [rbp]
	mov	al,  byte ptr [byte ptr [rax + label_58]]
	nop	
	test	al, al
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.302
	je	.label_125
	movzx	ecx, al
	cmp	ecx, 0x20
	nop	
	jb	.label_19
	cmp	ecx, 0x7e
	ja	.label_21
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + visible.buf]],  al
	mov	eax, OFFSET FLAT:label_23
	jmp	.label_24
.label_19:
	mov	byte ptr [byte ptr [rip + visible.buf]],  0x5e
	add	al, 0x40
	mov	byte ptr [byte ptr [rip + label_23]],  al
	jmp	.label_29
.label_21:
	lea	rdi, [rdi]
	cmp	ecx, 0x7f
	mov	rbp, rbp
	jne	.label_35
	mov	word ptr [word ptr [rip + visible.buf]],  0x3f5e
	nop	dword ptr [rax + rax]
.label_29:
	mov	eax, OFFSET FLAT:label_41
.label_24:
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:visible.buf
.label_125:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.299
	mov	rsp, rsp
	xor	eax, eax
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	wrapf
	mov	rbp, rbp
	jmp	.label_52
.label_35:
	mov	word ptr [word ptr [rip + visible.buf]],  0x2d4d
	mov	rsp, rsp
	cmp	ecx, 0xa0
	nop	
	jb	.label_63
	cmp	ecx, 0xff
	je	.label_61
	xor	al, 0x80
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + label_41]],  al
	mov	eax, OFFSET FLAT:label_64
	jmp	.label_24
.label_63:
	nop	
	mov	byte ptr [byte ptr [rip + label_41]],  0x5e
	add	al, 0xc0
	nop	
	mov	byte ptr [byte ptr [rip + label_64]],  al
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:label_42
	nop	
	jmp	.label_24
.label_61:
	mov	word ptr [word ptr [rip + label_41]],  0x3f5e
	mov	eax, OFFSET FLAT:label_42
	jmp	.label_24
.label_120:
	movzx	esi,  byte ptr [byte ptr [rip + label_68]]
	movzx	edx,  byte ptr [byte ptr [rip + label_69]]
	mov	edi, OFFSET FLAT:.str.303
	lea	rsi, [rsi]
	xor	eax, eax
	call	wrapf
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + current_col]],  0
	nop	
	je	.label_34
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_88
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_34:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	lea	rdi, [rdi]
	mov	rbx, -0xb20
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	jmp	.label_45
.label_111:
	mov	rsp, rsp
	mov	esi, 0xa
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_104
	nop	dword ptr [rax]
.label_45:
	lea	rdi, [rdi]
	mov	r14b,  byte ptr [byte ptr [rbx + label_54]]
	nop	
	test	r14b, 8
	nop	
	jne	.label_32
	mov	rbp, rbp
	mov	ebp,  dword ptr [dword ptr [rbx + label_106]]
	cmp	ebp, r15d
	mov	rsp, rsp
	je	.label_107
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_111
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_104:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	lea	rsi, [rsi]
	mov	r15d, ebp
.label_107:
	lea	rdi, [rdi]
	cmp	r15d, 5
	lea	rdi, [rdi]
	jae	.label_118
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rbx + label_86]]
	test	rax, rax
	nop	
	jne	.label_122
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rbx + label_12]]
.label_122:
	mov	rbp, rbp
	cmp	r15d, 4
	je	.label_124
	mov	rsp, rsp
	movsxd	rcx, r15d
	mov	rcx,  qword ptr [word ptr [+ (rcx * 8) + label_11]]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rcx]
	lea	rdi, [rdi]
	and	rcx, rax
	cmp	rcx,  qword ptr [word ptr [rbx + label_12]]
	jne	.label_13
	mov	rsi,  qword ptr [word ptr [rbx + label_38]]
	mov	edi, OFFSET FLAT:.str_1
	mov	rsp, rsp
	jmp	.label_60
	nop	word ptr cs:[rax + rax]
.label_13:
	test	r14b, 4
	nop	
	je	.label_32
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rbx + label_38]]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.301
.label_60:
	xor	eax, eax
	mov	rbp, rbp
	call	wrapf
.label_32:
	lea	rsi, [rsi]
	add	rbx, 0x20
	jne	.label_45
	mov	rsp, rsp
	jmp	.label_70
.label_89:
	nop	
	mov	esi, 0xa
	call	__overflow
	jmp	.label_50
	nop	word ptr cs:[rax + rax]
.label_15:
	movsx	r15d,  byte ptr [byte ptr [rbx + label_54]]
	test	r15b, 8
	mov	rbp, rbp
	jne	.label_55
	mov	ebp,  dword ptr [dword ptr [rbx + label_106]]
	cmp	ebp, eax
	lea	rdi, [rdi]
	jne	.label_115
	mov	ebp, eax
	lea	rdi, [rdi]
	jmp	.label_17
	nop	word ptr cs:[rax + rax]
.label_55:
	mov	ebp, eax
	lea	rdi, [rdi]
	jmp	.label_16
	nop	word ptr [rax + rax]
.label_115:
	test	r14b, 1
	mov	rsp, rsp
	jne	.label_17
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_89
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0xa
.label_50:
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	r14b, 1
.label_17:
	mov	rsp, rsp
	cmp	ebp, 5
	jae	.label_84
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rbx + label_86]]
	test	rax, rax
	jne	.label_87
	nop	
	mov	rax,  qword ptr [word ptr [rbx + label_12]]
.label_87:
	nop	
	cmp	ebp, 4
	je	.label_91
	nop	
	movsxd	rcx, ebp
	mov	rcx,  qword ptr [word ptr [+ (rcx * 8) + label_11]]
	mov	ecx, dword ptr [rcx]
	and	rcx, rax
	mov	rbp, rbp
	cmp	rcx,  qword ptr [word ptr [rbx + label_12]]
	lea	rsi, [rsi]
	jne	.label_22
	test	r15b, 2
	mov	rsp, rsp
	je	.label_16
	mov	rsi,  qword ptr [word ptr [rbx + label_38]]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:.str_1
	mov	rbp, rbp
	jmp	.label_101
	nop	word ptr cs:[rax + rax]
.label_22:
	mov	rsp, rsp
	and	r15d, 5
	mov	rbp, rbp
	cmp	r15d, 5
	jne	.label_16
	mov	rsi,  qword ptr [word ptr [rbx + label_38]]
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.301
.label_101:
	xor	eax, eax
	call	wrapf
.label_16:
	lea	rdi, [rdi]
	add	rbx, 0x20
	mov	rsp, rsp
	mov	eax, ebp
	nop	
	jne	.label_15
	lea	rdi, [rdi]
	test	r14b, 1
	lea	rdi, [rdi]
	jne	.label_25
.label_70:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_119
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_25:
	mov	dword ptr [dword ptr [rip + current_col]],  0
.label_26:
	mov	rbp, rbp
	xor	eax, eax
	add	rsp, 0x48
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_119:
	mov	esi, 0xa
	mov	rsp, rsp
	call	__overflow
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	rsp, rsp
	jmp	.label_26
.label_20:
	lea	rdi, [rdi]
	mov	esi, 0xa
	mov	rbp, rbp
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_33
.label_94:
	mov	esi, 0xa
	nop	
	call	__overflow
	jmp	.label_26
.label_102:
	mov	esi, 0xa
	nop	
	call	__overflow
	jmp	.label_44
.label_88:
	mov	esi, 0xa
	nop	
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_34
.label_74:
	mov	rbp, rbp
	mov	esi, 0xa
	call	__overflow
	nop	
	jmp	.label_51
.label_79:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.95
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.17_0
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.102
	lea	rdi, [rdi]
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_81:
	xor	edi, edi
	nop	
	call	usage
.label_39:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
.label_62:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	nop	
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_118:
	nop	
	call	abort
.label_124:
	mov	edi, OFFSET FLAT:.str.232
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.233
	nop	
	mov	edx, 0x7f6
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.display_all
	call	__assert_fail
.label_84:
	mov	rbp, rbp
	call	abort
.label_91:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	mov	rsp, rsp
	mov	edx, 0x7a2
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.display_changed
	mov	rsp, rsp
	call	__assert_fail
.label_108:
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.109
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_57:
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.105
	jmp	.label_27
.label_71:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	lea	rdi, [rdi]
	jmp	.label_27
.label_113:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.100
.label_27:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403800

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
	jl	.label_126
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
	jmp	.label_131
.label_170:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rcx]
	lea	rsi, [rsi]
	cmp	ebx, 0x2d
	lea	rsi, [rsi]
	jne	.label_151
.label_227:
	and	eax, 0xfffffecf
	nop	
	or	eax, 0x30
	mov	dword ptr [rcx], eax
	jmp	.label_153
.label_213:
	mov	rsp, rsp
	movzx	eax, byte ptr [r13 + 1]
	nop	
	cmp	eax, 0x6b
	jne	.label_154
	cmp	byte ptr [r13 + 2], 0
	lea	rdi, [rdi]
	je	.label_164
.label_154:
	mov	esi, OFFSET FLAT:.str.220
	mov	rdi, r13
	nop	
	call	strcmp
	test	eax, eax
	je	.label_159
	mov	esi, OFFSET FLAT:.str.225
	nop	
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	je	.label_163
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.223
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_167
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.224
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	strcmp
	test	eax, eax
	je	.label_171
	movzx	ebp, bpl
	cmp	ebp, 0x72
	lea	rdi, [rdi]
	jne	.label_172
	movzx	eax, byte ptr [r13 + 1]
	cmp	eax, 0x61
	jne	.label_172
	mov	rbp, rbp
	movzx	eax, byte ptr [r13 + 2]
	lea	rdi, [rdi]
	cmp	eax, 0x77
	jne	.label_172
	cmp	byte ptr [r13 + 3], 0
	lea	rdi, [rdi]
	je	.label_176
.label_172:
	mov	esi, OFFSET FLAT:.str.221
	mov	rdi, r13
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	je	.label_176
	nop	
	mov	esi, OFFSET FLAT:.str.226
	mov	rdi, r13
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_178
	mov	esi, OFFSET FLAT:.str.227
	lea	rsi, [rsi]
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	je	.label_181
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.228
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	call	strcmp
	nop	
	test	eax, eax
	je	.label_185
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.229
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_185
	mov	rbp, rbp
	mov	cl, 1
	cmp	ebp, 0x64
	mov	rsp, rsp
	je	.label_190
	mov	rbp, rbp
	cmp	ebp, 0x63
	mov	rsp, rsp
	jne	.label_192
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13 + 1]
	cmp	eax, 0x72
	mov	rbp, rbp
	jne	.label_192
	mov	rsp, rsp
	movzx	eax, byte ptr [r13 + 2]
	mov	rsp, rsp
	cmp	eax, 0x74
	mov	rbp, rbp
	jne	.label_192
	cmp	byte ptr [r13 + 3], 0
	jne	.label_192
	nop	
	mov	rax, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	or	dword ptr [rax], 0xa10
	jmp	.label_192
.label_159:
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
	mov	rax, -0xb20
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_156
	nop	dword ptr [rax + rax]
.label_231:
	lea	rdi, [rdi]
	movsx	ecx,  byte ptr [byte ptr [rax + label_54]]
	test	cl, 0x10
	lea	rdi, [rdi]
	jne	.label_191
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_182
	test	cl, 2
	mov	rsp, rsp
	je	.label_191
	mov	edx,  dword ptr [dword ptr [rax + label_106]]
	lea	rsi, [rsi]
	cmp	rdx, 4
	ja	.label_133
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_215]]
.label_669:
	mov	rcx, r13
	lea	rdi, [rdi]
	jmp	.label_174
	nop	word ptr [rax + rax]
.label_182:
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rax + label_106]]
	cmp	rdx, 4
	lea	rsi, [rsi]
	ja	.label_177
	mov	rcx, qword ptr [rsp + 0x20]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_218]]
.label_709:
	mov	rcx, r13
	lea	rsi, [rsi]
	jmp	.label_144
.label_710:
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_144
.label_711:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x68]
.label_144:
	mov	edx,  dword ptr [dword ptr [rax + label_86]]
	mov	esi, 0xffffffff
	xor	edx, esi
	and	edx, dword ptr [rcx]
	mov	rsp, rsp
	or	edx,  dword ptr [dword ptr [rax + label_12]]
	nop	
	mov	dword ptr [rcx], edx
	nop	
	jmp	.label_191
.label_670:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	jmp	.label_174
.label_671:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x68]
.label_174:
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rax + label_86]]
	mov	ebp, 0xffffffff
	mov	rbp, rbp
	xor	edx, ebp
	and	edx, dword ptr [rcx]
	mov	esi,  dword ptr [dword ptr [rax + label_12]]
	mov	rbp, rbp
	xor	esi, ebp
	and	esi, edx
	mov	dword ptr [rcx], esi
	nop	dword ptr [rax]
.label_191:
	add	rax, 0x20
	mov	cl, 1
	mov	rsp, rsp
	jne	.label_231
	jmp	.label_157
	nop	word ptr cs:[rax + rax]
.label_156:
	movsx	ecx,  byte ptr [byte ptr [rax + label_54]]
	lea	rsi, [rsi]
	test	cl, 0x10
	jne	.label_129
	test	cl, 1
	jne	.label_128
	nop	
	test	cl, 2
	je	.label_129
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [rax + label_106]]
	lea	rdi, [rdi]
	cmp	rdx, 4
	ja	.label_133
	mov	rcx, qword ptr [rsp + 0x68]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_158]]
.label_675:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	jmp	.label_138
.label_128:
	mov	rbp, rbp
	mov	edx,  dword ptr [dword ptr [rax + label_106]]
	lea	rdi, [rdi]
	cmp	rdx, 4
	nop	
	ja	.label_177
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_147]]
.label_713:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	jmp	.label_149
.label_714:
	mov	rcx, qword ptr [rsp + 0x10]
.label_149:
	mov	edx,  dword ptr [dword ptr [rax + label_86]]
	nop	
	mov	esi, 0xffffffff
	xor	edx, esi
	and	edx, dword ptr [rcx]
	lea	rdi, [rdi]
	or	edx,  dword ptr [dword ptr [rax + label_12]]
	mov	dword ptr [rcx], edx
	jmp	.label_129
.label_676:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x10]
.label_138:
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rax + label_86]]
	mov	ebp, 0xffffffff
	lea	rdi, [rdi]
	xor	edx, ebp
	and	edx, dword ptr [rcx]
	mov	rsp, rsp
	mov	esi,  dword ptr [dword ptr [rax + label_12]]
	xor	esi, ebp
	and	esi, edx
	mov	dword ptr [rcx], esi
	nop	word ptr cs:[rax + rax]
.label_129:
	add	rax, 0x20
	mov	cl, 1
	lea	rdi, [rdi]
	jne	.label_156
	jmp	.label_157
.label_151:
	and	eax, 0xfffffccf
	lea	rsi, [rsi]
	or	eax, 0x320
	mov	dword ptr [rcx], eax
	lea	rsi, [rsi]
	jmp	.label_153
.label_163:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	eax, dword ptr [rcx]
	cmp	ebx, 0x2d
	mov	r13, qword ptr [rsp + 0x18]
	jne	.label_160
	or	eax, 2
	jmp	.label_132
.label_167:
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	mov	ecx, 0xfffffecf
	and	eax, ecx
	cmp	ebx, 0x2d
	jne	.label_166
	or	eax, 0x120
	mov	r13, qword ptr [rsp + 0x18]
	mov	dword ptr [r13 + 8], eax
	or	byte ptr [r13], 0x20
	mov	cl, 1
	mov	rsp, rsp
	jmp	.label_157
.label_160:
	lea	rsi, [rsi]
	and	eax, 0xfffffffd
.label_132:
	mov	dword ptr [rcx], eax
	mov	rbp, rbp
	mov	cl, 1
	mov	rbp, rbp
	jmp	.label_157
.label_171:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	mov	ecx, 0xfffffecf
	lea	rsi, [rsi]
	and	eax, ecx
	nop	
	cmp	ebx, 0x2d
	jne	.label_140
	lea	rsi, [rsi]
	or	eax, 0x120
	mov	r13, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	dword ptr [r13 + 8], eax
	or	byte ptr [r13], 0x20
	lea	rsi, [rsi]
	or	byte ptr [r13 + 4], 1
	mov	cl, 1
	jmp	.label_157
.label_166:
	or	eax, 0x30
	mov	r13, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	dword ptr [r13 + 8], eax
	lea	rsi, [rsi]
	and	byte ptr [r13], 0xdf
	mov	cl, 1
	mov	rbp, rbp
	jmp	.label_157
.label_164:
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x18]
	nop	
	mov	word ptr [r13 + 0x13], 0x157f
	mov	cl, 1
	mov	rbp, rbp
	jmp	.label_157
.label_176:
	nop	
	cmp	ebp, 0x72
	lea	rdi, [rdi]
	setne	cl
	lea	rdi, [rdi]
	cmp	ebx, 0x2d
	lea	rdi, [rdi]
	sete	al
	setne	dl
	mov	rbp, rbp
	or	dl, cl
	lea	rsi, [rsi]
	cmp	ebp, 0x63
	setne	cl
	mov	rsp, rsp
	movzx	edx, dl
	mov	rsp, rsp
	cmp	edx, 1
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	jne	.label_194
	lea	rsi, [rsi]
	or	al, cl
	mov	rbp, rbp
	je	.label_194
	mov	dword ptr [r13], 0
	and	byte ptr [r13 + 4], 0xfe
	and	byte ptr [r13 + 0xc], 0xf8
	mov	rsp, rsp
	mov	word ptr [r13 + 0x16], 0x100
	mov	cl, 1
	mov	rsp, rsp
	jmp	.label_157
.label_140:
	or	eax, 0x30
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x18]
	mov	dword ptr [r13 + 8], eax
	and	byte ptr [r13], 0xdf
	and	byte ptr [r13 + 4], 0xfe
	mov	cl, 1
	nop	
	jmp	.label_157
.label_216:
	and	eax, 0xfffffeff
	mov	dword ptr [r13], eax
	and	byte ptr [r13 + 4], 0xfb
	lea	rsi, [rsi]
	mov	cl, 1
	jmp	.label_157
.label_178:
	mov	r13, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	eax, dword ptr [r13]
	cmp	ebx, 0x2d
	jne	.label_203
	nop	
	or	eax, 0x800
	lea	rsi, [rsi]
	jmp	.label_205
.label_194:
	mov	rbp, rbp
	or	dword ptr [r13], 0x526
	lea	rdi, [rdi]
	or	byte ptr [r13 + 4], 1
	or	byte ptr [r13 + 0xc], 3
	mov	rsp, rsp
	mov	cl, 1
	jmp	.label_157
.label_185:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	nop	
	cmp	ebx, 0x2d
	jne	.label_208
	and	eax, 0xfffffffb
	mov	r13, qword ptr [rsp + 0x18]
	mov	dword ptr [r13 + 0xc], eax
	and	byte ptr [r13 + 1], 0xfd
	and	byte ptr [r13 + 4], 0xfd
	mov	cl, 1
	mov	rsp, rsp
	jmp	.label_157
.label_181:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rcx]
	mov	rsp, rsp
	cmp	ebx, 0x2d
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x18]
	jne	.label_187
	or	eax, 0x1800
	jmp	.label_132
.label_203:
	and	eax, 0xfffff7ff
.label_205:
	mov	dword ptr [r13], eax
	mov	cl, 1
	lea	rsi, [rsi]
	jmp	.label_157
.label_208:
	mov	rsp, rsp
	or	eax, 4
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	dword ptr [r13 + 0xc], eax
	or	byte ptr [r13 + 1], 2
	or	byte ptr [r13 + 4], 2
	mov	rsp, rsp
	mov	cl, 1
	jmp	.label_157
.label_187:
	and	eax, 0xffffe7ff
	mov	rbp, rbp
	jmp	.label_132
.label_190:
	movzx	eax, byte ptr [r13 + 1]
	mov	rsp, rsp
	cmp	eax, 0x65
	lea	rsi, [rsi]
	jne	.label_192
	movzx	eax, byte ptr [r13 + 2]
	cmp	eax, 0x63
	lea	rsi, [rsi]
	jne	.label_192
	cmp	byte ptr [r13 + 3], 0
	jne	.label_192
	mov	r13, qword ptr [rsp + 0x18]
	nop	
	mov	byte ptr [r13 + 0x11], 3
	lea	rsi, [rsi]
	mov	byte ptr [r13 + 0x13], 0x7f
	mov	rbp, rbp
	mov	byte ptr [r13 + 0x14], 0x15
	or	dword ptr [r13 + 0xc], 0xa10
	lea	rdi, [rdi]
	and	byte ptr [r13 + 1], 0xf7
	mov	rsp, rsp
	jmp	.label_157
.label_169:
	lea	rdi, [rdi]
	cmp	r15d, dword ptr [rsp + 0x4c]
	je	.label_143
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	r12, qword ptr [rax + rcx*8 + 8]
	test	r12, r12
	mov	rbp, rbp
	je	.label_143
	inc	r15d
	mov	eax, dword ptr [rsp + 0x5c]
	test	al, al
	mov	rbp, rbp
	mov	ebp, OFFSET FLAT:speeds
	mov	ebx, 0
	mov	rbp, rbp
	jne	.label_130
.label_137:
	nop	
	mov	rsi, qword ptr [rbp]
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_135
	nop	
	inc	rbx
	mov	rbp, rbp
	add	rbp, 0x18
	lea	rsi, [rsi]
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	cmp	rbx, 0x22
	jne	.label_137
	jmp	.label_180
.label_189:
	mov	rsp, rsp
	cmp	r15d, dword ptr [rsp + 0x4c]
	je	.label_143
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	r12, qword ptr [rax + rcx*8 + 8]
	test	r12, r12
	je	.label_143
	lea	rdi, [rdi]
	inc	r15d
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x5c]
	nop	
	test	al, al
	lea	rdi, [rdi]
	mov	ebp, OFFSET FLAT:speeds
	lea	rdi, [rdi]
	mov	ebx, 0
	jne	.label_130
.label_146:
	mov	rsi, qword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	je	.label_152
	inc	rbx
	add	rbp, 0x18
	mov	esi, 0xffffffff
	cmp	rbx, 0x22
	jne	.label_146
	jmp	.label_155
.label_217:
	lea	rsi, [rsi]
	cmp	r15d, dword ptr [rsp + 0x4c]
	je	.label_143
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x80]
	nop	
	mov	rbp, qword ptr [rax + rcx*8 + 8]
	test	rbp, rbp
	nop	
	je	.label_143
	mov	rsp, rsp
	inc	r15d
	mov	eax, dword ptr [rsp + 0x5c]
	lea	rsi, [rsi]
	test	al, al
	nop	
	jne	.label_130
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.255
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	lea	rsi, [rsi]
	xor	edx, edx
	mov	ecx, 0x7fffffff
	mov	r8d, OFFSET FLAT:.str.254
	nop	
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	mov	edi, 0xffffffff
	nop	
	mov	esi, eax
	jmp	.label_173
.label_141:
	mov	rbp, rbp
	cmp	r15d, dword ptr [rsp + 0x4c]
	je	.label_143
	mov	rax, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax + rcx*8 + 8]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_143
	inc	r15d
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x5c]
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_130
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.255
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0
	mov	rbp, rbp
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0x7fffffff
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.254
	mov	rdi, rbp
	mov	r9, rax
	mov	rsp, rsp
	call	xnumtoumax
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	edi, eax
.label_173:
	nop	
	mov	rdx, qword ptr [rsp + 0x28]
	nop	
	call	set_window_size
	jmp	.label_130
.label_135:
	mov	rsp, rsp
	lea	rax, [rbx + rbx*2]
	mov	rsp, rsp
	mov	esi,  dword ptr [dword ptr [+ (rax * 8) + label_168]]
.label_180:
	mov	rbp, rbp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	cfsetispeed
	lea	rsi, [rsi]
	jmp	.label_193
.label_152:
	lea	rax, [rbx + rbx*2]
	mov	esi,  dword ptr [dword ptr [+ (rax * 8) + label_168]]
.label_155:
	mov	rsp, rsp
	mov	rdi, r13
.label_230:
	call	cfsetospeed
.label_193:
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 1
	lea	rdi, [rdi]
	jmp	.label_127
.label_219:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x5c]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_130
	mov	edi, 1
	mov	esi, 0x5413
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	lea	rdx, [rsp + 0x38]
	call	ioctl
	test	eax, eax
	jne	.label_200
	nop	
	movzx	eax, word ptr [rsp + 0x3a]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_201
.label_200:
	mov	edi, OFFSET FLAT:.str.297
	call	getenv
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_204
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rcx, [rsp + 0x30]
	call	xstrtol
	test	eax, eax
	mov	rbp, rbp
	jne	.label_204
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_201
.label_204:
	mov	qword ptr [rsp + 0x30], 0x50
	lea	rsi, [rsi]
	mov	eax, 0x50
.label_201:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	mov	dword ptr [dword ptr [rip + current_col]],  0
	xor	edi, edi
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	call	display_window_size
	jmp	.label_130
.label_223:
	nop	
	cmp	r15d, dword ptr [rsp + 0x4c]
	mov	rsp, rsp
	je	.label_143
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x80]
	mov	r13, qword ptr [rax + rcx*8 + 8]
	mov	rsp, rsp
	test	r13, r13
	je	.label_143
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.255
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	xor	esi, esi
	xor	edx, edx
	nop	
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:.str.254
	mov	rdi, r13
	mov	rbp, rbp
	mov	r9, rax
	mov	rbp, rbp
	call	xnumtoumax
	nop	
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x10], al
	movzx	ecx, al
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	je	.label_224
	mov	rbx, qword ptr [rsp + 0x80]
	inc	rbx
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.141
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rax + rbx*8]
	call	quote
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, r14
	lea	rsi, [rsi]
	call	error
.label_224:
	inc	r15d
	jmp	.label_127
.label_226:
	mov	eax, dword ptr [rsp + 0x5c]
	lea	rdi, [rdi]
	test	al, al
	jne	.label_130
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 0x5413
	mov	rsp, rsp
	xor	eax, eax
	lea	rdx, [rsp + 0x38]
	lea	rdi, [rdi]
	call	ioctl
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_139
	movzx	eax, word ptr [rsp + 0x3a]
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_150
.label_139:
	mov	edi, OFFSET FLAT:.str.297
	call	getenv
	mov	rbp, rbp
	test	rax, rax
	je	.label_145
	lea	rdi, [rdi]
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, rax
	nop	
	lea	rcx, [rsp + 0x30]
	mov	rbp, rbp
	call	xstrtol
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_145
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	rcx, [rax - 1]
	lea	rsi, [rsi]
	cmp	rcx, 0x7fffffff
	jb	.label_150
.label_145:
	mov	qword ptr [rsp + 0x30], 0x50
	mov	rsp, rsp
	mov	eax, 0x50
.label_150:
	mov	dword ptr [dword ptr [rip + max_col]],  eax
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x18]
	call	display_speed
	mov	rbp, rbp
	jmp	.label_130
.label_233:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x5c]
	mov	rbp, rbp
	test	al, al
	mov	ebp, OFFSET FLAT:speeds
	mov	rbp, rbp
	mov	ebx, 0
	lea	rsi, [rsi]
	jne	.label_130
.label_162:
	mov	rsi, qword ptr [rbp]
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_161
	inc	rbx
	lea	rsi, [rsi]
	add	rbp, 0x18
	mov	rbp, rbp
	mov	r12d, 0xffffffff
	cmp	rbx, 0x22
	mov	rsp, rsp
	jne	.label_162
	mov	rsp, rsp
	jmp	.label_210
.label_161:
	lea	rax, [rbx + rbx*2]
	mov	rsp, rsp
	mov	r12d,  dword ptr [dword ptr [+ (rax * 8) + label_168]]
.label_210:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	mov	esi, r12d
	call	cfsetispeed
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, r12d
	lea	rsi, [rsi]
	jmp	.label_230
	nop	dword ptr [rax]
.label_131:
	movsxd	rcx, r15d
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_130
	mov	qword ptr [rsp + 0x80], rcx
	movzx	r12d, byte ptr [rax]
	lea	rdi, [rdi]
	lea	r14, [rax + 1]
	mov	rbp, rbp
	cmp	r12d, 0x2d
	cmovne	r14, rax
	mov	esi, OFFSET FLAT:.str.104
	mov	rsp, rsp
	mov	rdi, r14
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:mode_info
	mov	ebp, 0
	je	.label_179
	nop	word ptr [rax + rax]
.label_184:
	nop	
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	lea	rsi, [rsi]
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_183
	lea	rsi, [rsi]
	inc	rbp
	add	rbx, 0x20
	lea	rdi, [rdi]
	cmp	rbp, 0x59
	jne	.label_184
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	jmp	.label_186
	nop	word ptr cs:[rax + rax]
.label_179:
	lea	rsi, [rsi]
	movzx	eax, r12b
	mov	rbp, rbp
	cmp	eax, 0x2d
	nop	
	setne	al
	movzx	eax, al
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + tcsetattr_options]],  eax
	lea	rsi, [rsi]
	jmp	.label_130
.label_183:
	lea	rdi, [rdi]
	movzx	ebx, r12b
	cmp	ebx, 0x2d
	lea	rsi, [rsi]
	jne	.label_195
	mov	rax, rbp
	shl	rax, 5
	test	byte ptr [byte ptr [rax + label_196]],  4
	jne	.label_195
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_192
.label_195:
	mov	rbp, rbp
	shl	rbp, 5
	nop	
	mov	ecx,  dword ptr [dword ptr [rbp + label_197]]
	nop	
	cmp	rcx, 4
	mov	rbp, rbp
	ja	.label_198
	mov	rax, qword ptr [rsp + 0x20]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_199]]
.label_696:
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_142
.label_699:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.215
	mov	rdi, r13
	nop	
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_206
	mov	esi, OFFSET FLAT:.str.216
	lea	rsi, [rsi]
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_206
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.217
	mov	rsp, rsp
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_170
	movzx	ebp, byte ptr [r13]
	cmp	ebp, 0x65
	je	.label_213
	mov	rbp, rbp
	movzx	eax, bpl
	cmp	eax, 0x6e
	jne	.label_154
	nop	
	movzx	eax, byte ptr [r13 + 1]
	cmp	eax, 0x6c
	jne	.label_154
	lea	rdi, [rdi]
	cmp	byte ptr [r13 + 2], 0
	jne	.label_154
	nop	
	mov	r13, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [r13]
	cmp	ebx, 0x2d
	jne	.label_216
	and	eax, 0xfffffe3f
	mov	rbp, rbp
	or	eax, 0x100
	mov	dword ptr [r13], eax
	nop	
	mov	eax, dword ptr [r13 + 4]
	lea	rdi, [rdi]
	and	eax, 0xffffffd3
	or	eax, 4
	nop	
	mov	dword ptr [r13 + 4], eax
	mov	rsp, rsp
	mov	cl, 1
	nop	
	jmp	.label_157
.label_698:
	mov	rax, qword ptr [rsp + 0x68]
	nop	
	jmp	.label_142
.label_697:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
.label_142:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rbp + label_220]]
	mov	rsp, rsp
	not	rcx
	and	rcx, rdx
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rbp + label_221]]
	nop	
	cmp	ebx, 0x2d
	nop	
	jne	.label_222
	mov	esi, 0xffffffff
	xor	edx, esi
	nop	
	and	ecx, edx
	nop	
	jmp	.label_225
.label_222:
	or	ecx, edx
.label_225:
	mov	dword ptr [rax], ecx
.label_153:
	nop	
	mov	cl, 1
.label_192:
	mov	r13, qword ptr [rsp + 0x18]
.label_157:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xc0]
	mov	byte ptr [rax], 1
.label_186:
	lea	rdi, [rdi]
	movzx	eax, r12b
	cmp	eax, 0x2d
	setne	al
	test	cl, cl
	mov	rbp, rbp
	jne	.label_228
	test	al, al
	lea	rdi, [rdi]
	je	.label_232
.label_228:
	test	cl, cl
	jne	.label_130
	mov	esi, OFFSET FLAT:.str.234
	mov	rdi, r14
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	mov	r12d, 0
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.234
	lea	rdi, [rdi]
	je	.label_136
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.235
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	r12d, 1
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.235
	mov	rsp, rsp
	je	.label_136
	mov	esi, OFFSET FLAT:.str.236
	mov	rsp, rsp
	mov	rdi, r14
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	nop	
	mov	r12d, 2
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.236
	mov	rsp, rsp
	je	.label_136
	mov	esi, OFFSET FLAT:.str.237
	mov	rdi, r14
	call	strcmp
	nop	
	test	eax, eax
	mov	r12d, 3
	mov	edi, OFFSET FLAT:.str.237
	je	.label_136
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.238
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	nop	
	mov	r12d, 4
	mov	edi, OFFSET FLAT:.str.238
	nop	
	je	.label_136
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.239
	mov	rsp, rsp
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	mov	r12d, 5
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.239
	je	.label_136
	mov	esi, OFFSET FLAT:.str.240
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	nop	
	mov	r12d, 6
	nop	
	mov	edi, OFFSET FLAT:.str.240
	lea	rdi, [rdi]
	je	.label_136
	mov	esi, OFFSET FLAT:.str.241
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	mov	r12d, 7
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.241
	mov	rbp, rbp
	je	.label_136
	nop	
	mov	esi, OFFSET FLAT:.str.242
	mov	rdi, r14
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	mov	r12d, 8
	mov	edi, OFFSET FLAT:.str.242
	mov	rbp, rbp
	je	.label_136
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.243
	nop	
	mov	rdi, r14
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	r12d, 9
	mov	edi, OFFSET FLAT:.str.243
	je	.label_136
	mov	esi, OFFSET FLAT:.str.244
	nop	
	mov	rdi, r14
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	mov	r12d, 0xa
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.244
	je	.label_136
	mov	esi, OFFSET FLAT:.str.245
	nop	
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	r12d, 0xb
	mov	edi, OFFSET FLAT:.str.245
	je	.label_136
	mov	esi, OFFSET FLAT:.str.246
	mov	rdi, r14
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	r12d, 0xc
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.246
	mov	rsp, rsp
	je	.label_136
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.247
	lea	rdi, [rdi]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	mov	r12d, 0xd
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.247
	je	.label_136
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.248
	mov	rdi, r14
	nop	
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	r12d, 0xe
	mov	edi, OFFSET FLAT:.str.248
	mov	rsp, rsp
	je	.label_136
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.249
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	r12d, 0xf
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.249
	lea	rsi, [rsi]
	je	.label_136
	mov	esi, OFFSET FLAT:.str.250
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	r12d, 0x10
	mov	edi, OFFSET FLAT:.str.250
	je	.label_136
	mov	esi, OFFSET FLAT:.str.251
	mov	rdi, r14
	mov	rsp, rsp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	r12d, 0x11
	mov	edi, OFFSET FLAT:.str.251
	je	.label_136
	mov	esi, OFFSET FLAT:.str.134
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_169
	mov	esi, OFFSET FLAT:.str.135
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_189
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.136
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	strcmp
	nop	
	test	eax, eax
	je	.label_141
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.137
	mov	rdi, r14
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	je	.label_217
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.138
	mov	rsp, rsp
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_217
	mov	esi, OFFSET FLAT:.str.139
	mov	rdi, r14
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_219
	mov	esi, OFFSET FLAT:.str.140
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_223
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.142
	mov	rdi, r14
	mov	rsp, rsp
	call	strcmp
	mov	rbx, -0x330
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_226
.label_234:
	mov	rsi,  qword ptr [word ptr [rbx + label_229]]
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_233
	nop	
	add	rbx, 0x18
	jne	.label_234
	nop	
	call	__errno_location
	nop	
	mov	r13, rax
	mov	rbp, rbp
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rbp, rbp
	lea	rsi, [rsp + 0x38]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_134
	nop	
	mov	rcx, rax
	nop	
	mov	qword ptr [rsp + 0x80], rcx
	lea	rsi, [rsi]
	mov	eax, ecx
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rsp, rsp
	jne	.label_134
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rbx, r14
	je	.label_134
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x3a
	jne	.label_134
	lea	rsi, [rsi]
	inc	rbx
	nop	
	mov	dword ptr [r13], 0
	mov	rbp, rbp
	mov	edx, 0x10
	mov	rdi, rbx
	lea	rsi, [rsp + 0x38]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_134
	mov	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rcx
	mov	eax, ecx
	cmp	rax, rcx
	mov	rbp, rbp
	jne	.label_134
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	cmp	rbp, rbx
	mov	rsp, rsp
	je	.label_134
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x3a
	lea	rsi, [rsi]
	jne	.label_134
	mov	rbp, rbp
	inc	rbp
	mov	dword ptr [r13], 0
	lea	rdi, [rdi]
	mov	edx, 0x10
	mov	rdi, rbp
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x38]
	mov	rsp, rsp
	call	strtoul
	lea	rdi, [rdi]
	mov	r12, rax
	cmp	dword ptr [r13], 0
	jne	.label_134
	mov	rsp, rsp
	mov	eax, r12d
	cmp	rax, r12
	jne	.label_134
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rbx, rbp
	je	.label_134
	movzx	eax, byte ptr [rbx]
	mov	rbp, rbp
	cmp	eax, 0x3a
	jne	.label_134
	inc	rbx
	lea	rsi, [rsi]
	mov	dword ptr [r13], 0
	mov	rbp, rbp
	mov	edx, 0x10
	mov	rdi, rbx
	lea	rsi, [rsp + 0x38]
	lea	rdi, [rdi]
	call	strtoul
	mov	rbp, rbp
	cmp	dword ptr [r13], 0
	jne	.label_134
	mov	rsp, rsp
	mov	ecx, eax
	cmp	rcx, rax
	jne	.label_134
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	cmp	rcx, rbx
	je	.label_134
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx]
	lea	rdi, [rdi]
	cmp	edx, 0x3a
	mov	rsp, rsp
	jne	.label_134
	nop	
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	mov	dword ptr [rdx], esi
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 4], esi
	mov	dword ptr [rdx + 8], r12d
	mov	dword ptr [rdx + 0xc], eax
	mov	r12, rdx
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_175:
	mov	rbp, rcx
	lea	rdi, [rdi]
	inc	rbp
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsp + 0x38]
	call	strtoul
	nop	
	cmp	dword ptr [r13], 0
	jne	.label_134
	mov	rsp, rsp
	cmp	rbx, 0x1f
	nop	
	mov	dl, 0x3a
	mov	rsp, rsp
	jb	.label_188
	lea	rdi, [rdi]
	xor	edx, edx
.label_188:
	lea	rdi, [rdi]
	movzx	ecx, al
	cmp	rcx, rax
	jne	.label_134
	nop	
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rcx, rbp
	je	.label_134
	movzx	edx, dl
	movzx	esi, byte ptr [rcx]
	lea	rdi, [rdi]
	cmp	esi, edx
	jne	.label_134
	lea	rsi, [rsi]
	mov	byte ptr [r12 + rbx + 0x11], al
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, 0x20
	mov	rbp, rbp
	jb	.label_175
	lea	rsi, [rsi]
	jmp	.label_127
.label_136:
	cmp	r15d, dword ptr [rsp + 0x4c]
	je	.label_143
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rbp, qword ptr [rax + rcx*8 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	nop	
	je	.label_143
	nop	
	movzx	eax, byte ptr [rdi]
	nop	
	cmp	eax, 0x6d
	jne	.label_202
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x69
	jne	.label_202
	movzx	eax, byte ptr [rdi + 2]
	mov	rbp, rbp
	cmp	eax, 0x6e
	lea	rdi, [rdi]
	jne	.label_202
	cmp	byte ptr [rdi + 3], 0
	mov	rsp, rsp
	je	.label_207
.label_202:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.251
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	nop	
	je	.label_207
	movzx	ebx, byte ptr [rbp]
	test	rbx, rbx
	je	.label_209
	movzx	r14d, byte ptr [rbp + 1]
	test	r14, r14
	mov	rbp, rbp
	je	.label_211
	cmp	ebx, 0x5e
	jne	.label_214
	mov	rsp, rsp
	movzx	eax, r14b
	cmp	eax, 0x2d
	nop	
	jne	.label_214
	mov	rbp, rbp
	cmp	byte ptr [rbp + 2], 0
	mov	eax, 0
	je	.label_212
.label_214:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.253
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	eax, 0
	lea	rsi, [rsi]
	je	.label_212
	nop	
	movzx	eax, bl
	cmp	eax, 0x5e
	jne	.label_207
	cmp	r14d, 0x3f
	mov	rbp, rbp
	mov	eax, 0x7f
	je	.label_212
	nop	
	and	r14d, 0x9f
	nop	
	mov	rax, r14
	jmp	.label_212
.label_207:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.255
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	mov	rbp, rbp
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	ecx, 0xff
	mov	r8d, OFFSET FLAT:.str.254
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	r9, rax
	mov	rbp, rbp
	call	xnumtoumax
	jmp	.label_212
.label_209:
	lea	rsi, [rsi]
	mov	rax, rbx
	jmp	.label_212
.label_206:
	nop	
	mov	rcx, qword ptr [rsp + 0x20]
	nop	
	mov	eax, dword ptr [rcx]
	cmp	ebx, 0x2d
	je	.label_227
	and	eax, 0xfffffccf
	or	eax, 0x120
	lea	rdi, [rdi]
	mov	dword ptr [rcx], eax
	lea	rsi, [rsi]
	jmp	.label_153
.label_211:
	mov	rax, rbx
.label_212:
	lea	rdi, [rdi]
	inc	r15d
	lea	rcx, [r12 + r12*2]
	mov	rcx,  qword ptr [word ptr [+ (rcx * 8) + label_36]]
	nop	
	mov	byte ptr [r13 + rcx + 0x11], al
.label_127:
	mov	rax, qword ptr [rsp + 0xc0]
	mov	byte ptr [rax], 1
	nop	word ptr cs:[rax + rax]
.label_130:
	inc	r15d
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	cmp	r15d, eax
	lea	rdi, [rdi]
	jl	.label_131
.label_126:
	mov	rbp, rbp
	add	rsp, 0x88
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
.label_232:
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.132
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	dec	r14
	jmp	.label_148
.label_143:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.133
.label_165:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
.label_148:
	mov	rdi, r14
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	mov	edi, 1
	nop	
	call	usage
.label_198:
	call	abort
.label_712:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.232
	mov	esi, OFFSET FLAT:.str.233
	mov	edx, 0x8cb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.sane_mode
	mov	rbp, rbp
	call	__assert_fail
.label_177:
	lea	rdi, [rdi]
	call	abort
.label_672:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.232
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.233
	mov	edx, 0x8d1
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.sane_mode
	call	__assert_fail
.label_133:
	call	abort
.label_134:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.132
	jmp	.label_165
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405130

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
	je	.label_236
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	r15d, dword ptr [rax]
	cmp	r15d, 0x16
	jne	.label_239
	mov	qword ptr [rsp], 0
.label_236:
	test	ebx, ebx
	js	.label_238
	mov	word ptr [rsp], bx
.label_238:
	lea	rsi, [rsi]
	test	ebp, ebp
	js	.label_237
	mov	rbp, rbp
	mov	word ptr [rsp + 2], bp
.label_237:
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
	jne	.label_235
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	nop	
	ret	
.label_235:
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
.label_239:
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
	#Procedure 0x405250

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
	je	.label_242
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	lea	rsi, [rsi]
	jne	.label_240
	test	bpl, bpl
	jne	.label_241
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
.label_242:
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
	jne	.label_241
	nop	
	mov	dword ptr [dword ptr [rip + current_col]],  0
.label_241:
	lea	rdi, [rdi]
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	rbp
	mov	rbp, rbp
	ret	
.label_240:
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
	#Procedure 0x405380

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
	je	.label_254
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
	jne	.label_259
.label_254:
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
	mov	edx, OFFSET FLAT:label_168
	mov	rsp, rsp
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_247:
	cmp	dword ptr [rdx], eax
	je	.label_243
	lea	rsi, [rsi]
	cmp	dword ptr [rdx + 0x18], eax
	je	.label_244
	add	rcx, 2
	add	rdx, 0x30
	mov	rsp, rsp
	cmp	rcx, 0x23
	jne	.label_247
	jmp	.label_255
.label_259:
	nop	
	mov	eax, OFFSET FLAT:.str.261
	mov	r14d, OFFSET FLAT:.str.262
	test	r12b, r12b
	lea	rdi, [rdi]
	cmovne	r14, rax
	mov	rdi, rbx
	call	cfgetispeed
	mov	ecx, 1
	mov	edx, OFFSET FLAT:label_168
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_248:
	cmp	dword ptr [rdx], eax
	je	.label_250
	mov	rsp, rsp
	cmp	dword ptr [rdx + 0x18], eax
	nop	
	je	.label_253
	add	rcx, 2
	add	rdx, 0x30
	mov	rsp, rsp
	cmp	rcx, 0x23
	jne	.label_248
	jmp	.label_258
.label_243:
	mov	rbp, rbp
	dec	rcx
.label_244:
	lea	rax, [rcx + rcx*2]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [+ (rax * 8) + label_245]]
.label_255:
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbp
	call	wrapf
	jmp	.label_252
.label_250:
	dec	rcx
.label_253:
	lea	rax, [rcx + rcx*2]
	mov	rsp, rsp
	mov	r15,  qword ptr [word ptr [+ (rax * 8) + label_245]]
.label_258:
	mov	rdi, rbx
	mov	rbp, rbp
	call	cfgetospeed
	mov	ecx, 1
	mov	esi, OFFSET FLAT:label_168
	xor	edx, edx
	nop	dword ptr [rax]
.label_257:
	mov	rsp, rsp
	cmp	dword ptr [rsi], eax
	mov	rsp, rsp
	je	.label_256
	cmp	dword ptr [rsi + 0x18], eax
	lea	rdi, [rdi]
	je	.label_246
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 0x30
	nop	
	cmp	rcx, 0x23
	jne	.label_257
	jmp	.label_249
.label_256:
	lea	rsi, [rsi]
	dec	rcx
.label_246:
	mov	rsp, rsp
	lea	rax, [rcx + rcx*2]
	mov	rdx,  qword ptr [word ptr [+ (rax * 8) + label_245]]
.label_249:
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	call	wrapf
.label_252:
	lea	rsi, [rsi]
	test	r12b, r12b
	mov	rbp, rbp
	jne	.label_251
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + current_col]],  0
.label_251:
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
	#Procedure 0x405540

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
	je	.label_260
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
.label_260:
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
	js	.label_264
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + current_col]]
	test	eax, eax
	jle	.label_261
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
	jge	.label_262
	cmp	rcx, rdx
	mov	rbp, rbp
	jae	.label_265
	lea	rdi, [rdi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rax
	lea	rdi, [rdi]
	mov	byte ptr [rcx], 0xa
	nop	
	mov	dword ptr [dword ptr [rip + current_col]],  0
	mov	rbp, rbp
	jmp	.label_261
.label_262:
	nop	
	cmp	rcx, rdx
	jae	.label_266
	nop	
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
.label_263:
	mov	rsp, rsp
	inc	eax
	mov	dword ptr [dword ptr [rip + current_col]],  eax
.label_261:
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
.label_265:
	nop	
	mov	esi, 0xa
	call	__overflow
	mov	dword ptr [dword ptr [rip + current_col]],  0
	jmp	.label_261
.label_266:
	mov	esi, 0x20
	nop	
	call	__overflow
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + current_col]]
	lea	rsi, [rsi]
	jmp	.label_263
.label_264:
	call	xalloc_die
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405710
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
	#Procedure 0x405720
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405730

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
	je	.label_268
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_267
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_267
.label_268:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_270
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_267:
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
	jne	.label_269
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
.label_270:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_269:
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
	#Procedure 0x405830

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
	je	.label_271
	test	ebx, ebx
	nop	
	js	.label_271
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
	jmp	.label_272
.label_271:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_272:
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
	#Procedure 0x4058b0

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
	je	.label_273
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
	jl	.label_275
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_275
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
	jne	.label_274
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_274:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_275:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_273:
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
	#Procedure 0x4059a0
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
	#Procedure 0x4059f0
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
	#Procedure 0x405a10
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
	#Procedure 0x405a30
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
	#Procedure 0x405aa0
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
	#Procedure 0x405ac0
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
	je	.label_276
	test	rdx, rdx
	nop	
	je	.label_276
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_276:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b00
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
	#Procedure 0x405bb0

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
.label_307:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_330
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_338]]
.label_707:
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
.label_708:
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
	jne	.label_361
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_361
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_382:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_374
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_374:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_382
.label_361:
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
	jmp	.label_323
.label_700:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_323
.label_703:
	lea	rsi, [rsi]
	mov	al, 1
.label_701:
	lea	rsi, [rsi]
	mov	dl, 1
.label_704:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_280
	mov	rbp, rbp
	mov	cl, al
.label_280:
	mov	al, cl
.label_702:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_290
	test	rbp, rbp
	je	.label_299
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_300
.label_290:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_300
.label_705:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_312
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_316
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_322
.label_706:
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
	jmp	.label_323
.label_299:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_300:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_323
.label_312:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_322
.label_316:
	nop	
	mov	r14d, 1
.label_322:
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
.label_323:
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
	jmp	.label_362
	nop	dword ptr [rax]
.label_358:
	mov	rsp, rsp
	inc	r15
.label_362:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_405
	cmp	r15, r10
	jne	.label_403
	jmp	.label_404
	nop	dword ptr [rax]
.label_405:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_277
.label_403:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_287
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_293
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_293
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
.label_293:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_326
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_329
	nop	dword ptr [rax]
.label_287:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_329
	nop	word ptr cs:[rax + rax]
.label_326:
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
	jne	.label_360
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
	je	.label_329
	jmp	.label_281
.label_360:
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
.label_329:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_387
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_389]]
.label_658:
	test	r15, r15
	jne	.label_295
	jmp	.label_393
.label_662:
	xor	eax, eax
	cmp	r10, -1
	je	.label_395
	test	r15, r15
	jne	.label_396
	nop	
	cmp	r10, 1
	je	.label_393
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_279
.label_651:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_303
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_281
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_294
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_294
	cmp	r14, rbp
	jae	.label_298
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_298:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_386
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_386:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_315
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_315:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_294:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_324
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_324:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_334
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_340
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_327
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_348
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_348:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_310
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_310:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_279
.label_652:
	mov	bl, 0x62
	nop	
	jmp	.label_363
.label_653:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_357
.label_654:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_363
.label_655:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_363
.label_656:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_357
.label_659:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_373
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_378
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
	jae	.label_383
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_383:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_394
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_394:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_400
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_400:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_373:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_279
.label_660:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_289
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_295
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_295
	nop	
	jmp	.label_306
.label_661:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_309
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_314
	jmp	.label_317
.label_387:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_319
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
	jmp	.label_354
.label_395:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_346
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_346
.label_393:
	mov	dl, 1
.label_657:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_351
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_279
.label_303:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_358
	jmp	.label_295
.label_309:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_357
.label_314:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_342
.label_357:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_368
.label_363:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_279
	jmp	.label_372
.label_319:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_376
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_376:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_388
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_344:
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
	je	.label_371
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_285
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_353
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_304
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_331:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_336
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_332
.label_336:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_331
.label_304:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_337
	mov	rbp, rbp
	xor	r13d, r13d
.label_337:
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
	je	.label_344
	jmp	.label_286
	nop	
.label_388:
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
	je	.label_366
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_285
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_371
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_379
	xor	r13d, r13d
.label_379:
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
	je	.label_388
	lea	rsi, [rsi]
	jmp	.label_286
.label_346:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_279
.label_289:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_295
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_295
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_295
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_278
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_288
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_365
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_305
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_305:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_313
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_313:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_369
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_369:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_283
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_283:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_279
.label_295:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_279:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_343
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_347
	nop	
	jmp	.label_350
	nop	dword ptr [rax + rax]
.label_343:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_350
.label_347:
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
	jne	.label_355
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_345
	nop	word ptr cs:[rax + rax]
.label_350:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_345:
	mov	bl, r12b
	je	.label_342
	jmp	.label_372
.label_355:
	mov	bl, r12b
.label_372:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_281
	cmp	r9d, 2
	jne	.label_325
	mov	al, dil
	and	al, 1
	jne	.label_325
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_381
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_381:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_385
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_385:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_401
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_401:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_325:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_392
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_392:
	mov	rbp, rbp
	inc	r14
	jmp	.label_398
.label_396:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_279
.label_334:
	xor	r13d, r13d
	jmp	.label_279
.label_340:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_279
.label_327:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_279
.label_285:
	xor	r13d, r13d
.label_366:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_286
.label_371:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_301
	lea	rax, [r11 + r15]
.label_320:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_311
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_320
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_286
.label_301:
	xor	r13d, r13d
	jmp	.label_286
.label_311:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_286
.label_353:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_286:
	mov	rbp, rbp
	mov	rbx, r10
.label_354:
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
	ja	.label_352
	test	cl, cl
	je	.label_352
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_279
.label_352:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_356
	nop	dword ptr [rax]
.label_349:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_356:
	mov	rsp, rsp
	test	cl, cl
	je	.label_364
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_367
	cmp	r14, rbp
	jae	.label_370
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_370:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_367:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_377
	nop	dword ptr [rax + rax]
.label_364:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_384
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_375
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_375
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_390
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_390:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_321
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_321:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_397
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_397:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_375:
	cmp	r14, rbp
	jae	.label_284
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_284:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_328
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_328:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_380
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_380:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_377:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_342
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_297
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_297
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_399
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_399:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_282
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_282:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_297:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_349
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_349
	nop	word ptr cs:[rax + rax]
.label_342:
	test	dil, 1
	je	.label_359
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_359
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_341
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_341:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_291
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_291:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_359:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_398:
	cmp	r14, rbp
	jae	.label_308
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_308:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_358
.label_278:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_279
.label_288:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_279
	nop	word ptr [rax + rax]
.label_404:
	nop	
	mov	rcx, r15
.label_277:
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
	je	.label_391
	mov	rsp, rsp
	or	al, dl
	je	.label_402
.label_391:
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
	je	.label_302
	mov	rsp, rsp
	or	al, dl
	jne	.label_302
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_296
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_302
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
	je	.label_307
.label_302:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_318
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_318
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_318
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_339:
	cmp	r14, rbp
	jae	.label_335
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_335:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_339
.label_318:
	cmp	r14, rbp
	jae	.label_333
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_333
.label_351:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_281
.label_332:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_281
.label_384:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_281
.label_402:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_281
.label_368:
	nop	
	mov	r9d, 2
.label_281:
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
.label_292:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_333:
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
.label_296:
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
	jmp	.label_292
.label_378:
	mov	r9d, 2
	jmp	.label_281
.label_317:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_281
.label_306:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_281
.label_365:
	mov	r9d, 5
	nop	
	jmp	.label_281
.label_330:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407050
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
	#Procedure 0x407190
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
	je	.label_406
	mov	qword ptr [rax], rbx
.label_406:
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
	#Procedure 0x4072e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_407
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_411:
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
	jl	.label_411
.label_407:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_410
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_408]], OFFSET FLAT:slot0
.label_410:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_409
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_409:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4073b0

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
	js	.label_418
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_413
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_416
.label_413:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_414
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
	jne	.label_417
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_417:
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
.label_416:
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
	ja	.label_415
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
	je	.label_412
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_412:
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
.label_415:
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
.label_418:
	lea	rdi, [rdi]
	call	abort
.label_414:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407620
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407630
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
	#Procedure 0x407660
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
	#Procedure 0x407690
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
	je	.label_419
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
.label_419:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407720
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
	je	.label_420
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
.label_420:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077c0
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
	je	.label_421
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
.label_421:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407850
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
	je	.label_422
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
.label_422:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4078c0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_423]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_424]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_425]]
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
	#Procedure 0x407960
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_423]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_424]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_425]]
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
	#Procedure 0x407a00

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_423]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_424]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_425]]
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
	#Procedure 0x407a70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_423]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_424]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_425]]
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
	#Procedure 0x407ae0

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
	je	.label_426
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
.label_426:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407bc0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_423]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_424]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_425]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_427
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_427
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
.label_427:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407c50
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_423]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_424]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_425]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_428
	test	rdx, rdx
	je	.label_428
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
.label_428:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ce0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_423]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_424]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_425]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_429
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_429
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
.label_429:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d80
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_423]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_424]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_425]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_430
	test	rsi, rsi
	je	.label_430
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
.label_430:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e20
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e30
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
	#Procedure 0x407e50
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
	#Procedure 0x407e70

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
	#Procedure 0x407ea0

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
	jne	.label_432
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_434
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_433
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_433
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_433
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_433
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_433
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_433
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_432
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_432
.label_434:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_433
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_433
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_433
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_433
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_433
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_433
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_431
.label_433:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_432:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_431:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_432
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_432
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408010

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
	je	.label_437
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
	jmp	.label_439
.label_437:
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
.label_439:
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
	ja	.label_441
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_443]]
.label_683:
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
.label_441:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_442
.label_684:
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
.label_685:
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
.label_686:
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
	jmp	.label_436
.label_687:
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
	jmp	.label_435
.label_688:
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
	jmp	.label_444
.label_689:
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
.label_444:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_435:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_436:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_440
.label_691:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_442:
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
	jmp	.label_438
.label_690:
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
.label_438:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_440:
	mov	rbp, rbp
	call	__fprintf_chk
.label_682:
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
	#Procedure 0x408400
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_445:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_445
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408430
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_449:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_446
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_447
	nop	word ptr cs:[rax + rax]
.label_446:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_447:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_448
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_449
.label_448:
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
	#Procedure 0x4084c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_450
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
.label_450:
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
.label_452:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_451
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_453
	nop	dword ptr [rax + rax]
.label_451:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_453:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_454
	inc	r9
	cmp	r9, 0xa
	jb	.label_452
.label_454:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408600
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
	#Procedure 0x408690
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
	jb	.label_455
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_456
	test	rax, rax
	je	.label_455
.label_456:
	nop	
	pop	rbx
	ret	
.label_455:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4086e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_457
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_458
.label_457:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_458:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408710
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
	jb	.label_460
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_459
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_459
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_459:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_461
	test	rax, rax
	je	.label_460
.label_461:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_460:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408790

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_462
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_462
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_462:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_463
	test	rax, rax
	nop	
	je	.label_464
.label_463:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_464:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087e0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_465
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_469
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_468
.label_465:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_471
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_471:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_466
.label_468:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_467
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_467
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_467:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_470
	test	rax, rax
	mov	rbp, rbp
	je	.label_469
.label_470:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_469:
	call	xalloc_die
.label_466:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088c0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_473
	test	rax, rax
	mov	rbp, rbp
	je	.label_472
.label_473:
	pop	rbx
	ret	
.label_472:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4088e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_474
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_477
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_478
	call	free
	xor	eax, eax
	jmp	.label_475
.label_474:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_476
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_478:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_475
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_476
.label_475:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_476:
	mov	rbp, rbp
	call	xalloc_die
.label_477:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408970
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
	je	.label_479
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_480
.label_479:
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
.label_480:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089d0
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
	jb	.label_481
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_481
	pop	rcx
	ret	
.label_481:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x408a00

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
	je	.label_483
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_482
.label_483:
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
.label_482:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a60
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
	je	.label_484
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_485
.label_484:
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
.label_485:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x408ac0

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
	#Procedure 0x408b10

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
	je	.label_487
	cmp	eax, 1
	je	.label_490
	mov	rbp, rbp
	cmp	eax, 3
	nop	
	jne	.label_489
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_486
.label_490:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_486
.label_487:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_492
	lea	rdi, [rdi]
	cmp	rbx, r15
	jbe	.label_488
.label_492:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	cmp	rbx, 0x40000000
	jb	.label_491
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_486
.label_489:
	call	__errno_location
	nop	
	jmp	.label_486
.label_491:
	mov	dword ptr [rax], 0x22
.label_486:
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
.label_488:
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
	#Procedure 0x408c30
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
	#Procedure 0x408c70

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
	jae	.label_523
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
	je	.label_543
	mov	eax, dword ptr [rbx]
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_546
	lea	rdi, [rdi]
	mov	ebp, 4
	lea	rdi, [rdi]
	cmp	eax, 0x22
	mov	rsp, rsp
	jne	.label_506
	lea	rdi, [rdi]
	mov	ebp, 1
.label_546:
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_498
	mov	rbp, rbp
	mov	edx, ebp
	jmp	.label_502
.label_543:
	nop	
	mov	ebp, 4
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_506
	mov	rbx, rcx
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_506
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strchr
	lea	rsi, [rsi]
	xor	edx, edx
	mov	r12d, 1
	mov	rsp, rsp
	test	rax, rax
	mov	rcx, rbx
	je	.label_506
.label_502:
	lea	rsi, [rsi]
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_522
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
	je	.label_521
	mov	r8d, 1
	mov	r11d, 0x400
	nop	
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	ja	.label_510
	movabs	rcx, 0x814400308945
	lea	rdi, [rdi]
	bt	rcx, rax
	jae	.label_510
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
	je	.label_510
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rax + 1]
	mov	r8d, 1
	mov	r11d, 0x400
	lea	rdi, [rdi]
	cmp	eax, 0x42
	je	.label_497
	cmp	eax, 0x44
	lea	rdi, [rdi]
	je	.label_497
	cmp	eax, 0x69
	mov	rbp, rbp
	jne	.label_510
	mov	rax, qword ptr [rsp + 0x18]
	movzx	eax, byte ptr [rax + 2]
	mov	r8d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	lea	rdi, [rdi]
	je	.label_512
	lea	rdi, [rdi]
	mov	r8d, 1
.label_512:
	mov	r11d, 0x400
	nop	
	jmp	.label_510
.label_498:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rax], r12
	jmp	.label_506
.label_522:
	nop	
	mov	r13, r12
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_526
.label_497:
	lea	rsi, [rsi]
	mov	r8d, 2
	lea	rsi, [rsi]
	mov	r11d, 0x3e8
.label_510:
	mov	rbp, rbp
	movabs	r10, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_544
	lea	rdi, [rdi]
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_536
	jmp	qword ptr [word ptr [+ (rax * 8) + label_539]]
.label_720:
	movabs	rax, 0xffe0000000000000
	mov	rbp, rbp
	cmp	r12, rax
	lea	rsi, [rsi]
	jl	.label_507
	mov	r13, r12
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	nop	
	jmp	.label_511
.label_544:
	cmp	r13d, 0x73
	jg	.label_551
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	lea	rsi, [rsi]
	ja	.label_494
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, r12
	jmp	qword ptr [word ptr [+ (rax * 8) + label_499]]
.label_732:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	mov	rsp, rsp
	jl	.label_507
	lea	rdi, [rdi]
	mov	r13, r12
	lea	rsi, [rsi]
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_511
.label_536:
	cmp	r13d, 0x54
	je	.label_518
	lea	rdi, [rdi]
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_521
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
	jl	.label_524
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
.label_524:
	cmp	rbx, r9
	mov	rbp, rbp
	mov	rsi, r13
	jl	.label_542
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
.label_542:
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
	jl	.label_495
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
.label_495:
	or	edi, ecx
	cmp	rbp, r9
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_517
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
.label_517:
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
	jl	.label_528
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
.label_528:
	or	ecx, ebx
	cmp	rbp, r9
	lea	rdi, [rdi]
	mov	rsi, r13
	jl	.label_541
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
.label_541:
	mov	rsp, rsp
	or	edi, ecx
	mov	rsp, rsp
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rsp, rsp
	jl	.label_493
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
.label_493:
	or	ecx, edi
	cmp	rbp, r9
	mov	rbp, rbp
	jl	.label_514
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
.label_514:
	nop	
	or	ebx, ecx
	jmp	.label_504
.label_551:
	mov	rbp, rbp
	cmp	r13d, 0x74
	je	.label_518
	cmp	r13d, 0x77
	jne	.label_521
	nop	
	movabs	rax, 0xc000000000000000
	nop	
	cmp	r12, rax
	nop	
	jge	.label_530
.label_507:
	lea	rsi, [rsi]
	inc	r10
	lea	rdi, [rdi]
	mov	ebx, 1
	mov	r13, r10
	lea	rsi, [rsi]
	jmp	.label_504
.label_722:
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
	jl	.label_540
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
.label_540:
	cmp	rbp, rdi
	lea	rdi, [rdi]
	mov	rsi, r13
	jl	.label_537
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
.label_537:
	mov	rsp, rsp
	or	ecx, ebx
	cmp	rsi, rdi
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_519
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
.label_519:
	or	ebx, ecx
	jmp	.label_504
.label_723:
	mov	rsp, rsp
	lea	r13, [r10 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	idiv	r11
	cmp	r12, rax
	lea	rdi, [rdi]
	mov	ebx, 1
	jl	.label_504
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
	jmp	.label_504
.label_724:
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
	jl	.label_547
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
.label_547:
	lea	rdi, [rdi]
	cmp	rsi, rdi
	jl	.label_515
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
.label_515:
	or	ebx, ecx
	mov	rsp, rsp
	jmp	.label_504
.label_518:
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
	jl	.label_529
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
.label_529:
	mov	rbp, rbp
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_545
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
.label_545:
	mov	rsp, rsp
	or	ecx, edi
	lea	rdi, [rdi]
	cmp	rsi, r9
	mov	ebx, 1
	lea	rsi, [rsi]
	mov	rbp, r13
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_501
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
.label_501:
	lea	rdi, [rdi]
	or	edi, ecx
	mov	rbp, rbp
	cmp	rbp, r9
	mov	rbp, rbp
	jl	.label_520
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
.label_520:
	or	ebx, edi
	jmp	.label_504
.label_494:
	nop	
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_521
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
	jl	.label_535
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
.label_535:
	cmp	rbx, r9
	mov	rsi, r13
	lea	rsi, [rsi]
	jl	.label_496
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
.label_496:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_513
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
.label_513:
	or	edi, ecx
	mov	rbp, rbp
	cmp	rbp, r9
	nop	
	mov	rsi, r13
	jl	.label_527
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
.label_527:
	lea	rsi, [rsi]
	or	ebx, edi
	mov	rbp, rbp
	cmp	rsi, r9
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, r13
	mov	rbp, rbp
	mov	ecx, 1
	jl	.label_538
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
.label_538:
	mov	rsp, rsp
	or	ecx, ebx
	lea	rdi, [rdi]
	cmp	rbp, r9
	nop	
	mov	rsi, r13
	nop	
	jl	.label_500
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
.label_500:
	or	edi, ecx
	mov	rbp, rbp
	cmp	rsi, r9
	mov	ebx, 1
	jl	.label_516
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
.label_516:
	mov	rbp, rbp
	or	ebx, edi
	jmp	.label_504
.label_521:
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
	jmp	.label_506
.label_721:
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
	jl	.label_531
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
.label_531:
	mov	rsp, rsp
	cmp	rsi, r9
	mov	rdi, r13
	mov	rbp, rbp
	jl	.label_549
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
.label_549:
	or	ebx, ecx
	lea	rdi, [rdi]
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	r14d, 1
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rbp, rbp
	mov	ecx, 1
	jl	.label_503
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
.label_503:
	or	ecx, ebx
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_533
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
.label_533:
	or	r14d, ecx
	lea	rsi, [rsi]
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_505
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
.label_505:
	lea	rsi, [rsi]
	or	ecx, r14d
	mov	rsp, rsp
	cmp	rsi, r9
	jl	.label_548
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
.label_548:
	or	ebx, ecx
	lea	rsi, [rsi]
	jmp	.label_504
.label_725:
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
	jl	.label_508
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
.label_508:
	cmp	rbx, r9
	nop	
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_525
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
.label_525:
	lea	rdi, [rdi]
	or	ecx, edi
	lea	rdi, [rdi]
	cmp	rsi, r9
	nop	
	mov	r14d, 1
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_534
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
.label_534:
	or	ebx, ecx
	mov	rbp, rbp
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	rbp, rbp
	jl	.label_550
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
.label_550:
	nop	
	or	r14d, ebx
	mov	rsp, rsp
	cmp	rcx, r9
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_509
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
.label_509:
	nop	
	or	ebx, r14d
	mov	rsp, rsp
	jmp	.label_504
.label_530:
	lea	r13, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_511:
	cmp	r12, rax
	lea	rsi, [rsi]
	setg	al
	lea	rdi, [rdi]
	cmovg	r13, r10
	lea	rdi, [rdi]
	movzx	ebx, al
.label_504:
	or	ebx, dword ptr [rsp + 0x24]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rax, [rcx + r8]
	mov	qword ptr [r15], rax
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + r8], 0
	je	.label_532
	or	ebx, 2
.label_532:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, ebx
.label_526:
	mov	rsp, rsp
	mov	qword ptr [rax], r13
	mov	ebp, edx
.label_506:
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
.label_523:
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
	#Procedure 0x409a10

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
	jae	.label_555
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
.label_559:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_559
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
	je	.label_552
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
	je	.label_565
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_569
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_552
	mov	dword ptr [rsp + 4], 1
.label_569:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_577
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_552
.label_565:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_552
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_552
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
	je	.label_552
.label_577:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_572
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
	je	.label_554
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_557
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_557
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
	je	.label_557
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_573
	cmp	eax, 0x44
	nop	
	je	.label_573
	cmp	eax, 0x69
	jne	.label_557
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_558
	lea	rdi, [rdi]
	mov	ecx, 1
.label_558:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_557
.label_572:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_564
.label_573:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_557:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_570
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_574
	jmp	qword ptr [word ptr [+ (rax * 8) + label_563]]
.label_638:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_578
.label_570:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_553
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_560
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_561]]
.label_734:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_578:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_567
.label_574:
	cmp	r13d, 0x54
	nop	
	je	.label_575
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_554
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
	jmp	.label_566
.label_553:
	cmp	r13d, 0x74
	je	.label_575
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_554
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
	jmp	.label_567
.label_640:
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
	jmp	.label_576
.label_641:
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
	jmp	.label_562
.label_642:
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
	jmp	.label_556
.label_575:
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
	jmp	.label_568
.label_560:
	cmp	r13d, 0x5a
	jne	.label_554
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
.label_566:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_562
.label_554:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_552
.label_639:
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
	jmp	.label_556
.label_643:
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
.label_568:
	or	dl, r10b
.label_576:
	lea	rsi, [rsi]
	or	dl, bl
.label_556:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_562:
	mov	rsp, rsp
	mov	rbp, rsi
.label_567:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_571
	or	eax, 2
.label_571:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_564:
	mov	qword ptr [rax], rbp
.label_552:
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
.label_555:
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
	#Procedure 0x40a2d0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_579
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_580
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
	je	.label_580
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
.label_579:
	mov	ecx, 1
.label_580:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a340

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
	je	.label_595
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
.label_595:
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
	ja	.label_588
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_601
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_585
	mov	rsp, rsp
	test	esi, esi
	jne	.label_588
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_599
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_594
.label_588:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_600
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_585
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_581
.label_601:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_586
.label_585:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_587
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_591
.label_587:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_591:
	mov	edx, dword ptr [rax]
.label_597:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_586:
	mov	ebp, eax
.label_582:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_581:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_600
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_583
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_589
.label_600:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_593
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_596
.label_599:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_594:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_597
.label_583:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_589:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_590
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
	jns	.label_598
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_598
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
	js	.label_582
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_584
.label_598:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_582
.label_593:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_596:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_586
.label_590:
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
.label_584:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_582
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_582
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_592
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
	jne	.label_582
.label_592:
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
	jmp	.label_582
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a710

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
	je	.label_602
	nop	
	cmp	r15, -2
	jb	.label_602
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_602
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_602:
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
	#Procedure 0x40a7a0

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
	jne	.label_603
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_604
	test	cl, cl
	mov	rsp, rsp
	jne	.label_604
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_604
.label_603:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_604
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_604:
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
	#Procedure 0x40a830

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
	je	.label_606
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_605
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_607
.label_605:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_606
.label_607:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_606:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a880

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
	je	.label_608
	nop	
	mov	rax, rcx
.label_608:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8c0

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
	js	.label_609
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_610
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
	je	.label_609
.label_610:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_609
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_611
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_611:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_609:
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
	#Procedure 0x40a970

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_612
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_612
	test	byte ptr [rbx + 1], 1
	je	.label_612
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_612:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a9b0

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
	jne	.label_613
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_613
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_614
.label_613:
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
.label_614:
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
	je	.label_615
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_615:
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
	#Procedure 0x40aa60

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