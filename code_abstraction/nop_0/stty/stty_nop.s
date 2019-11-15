	.section	.text
	.align	32
	#Procedure 0x401880

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x170
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], 0
	je	.label_11
	jmp	.label_9
.label_9:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_10
.label_11:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.4
	nop	
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], eax
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.16
	mov	dword ptr [rbp - 0x50], eax
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.17
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.18
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.19
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.20
	mov	dword ptr [rbp - 0x60], eax
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [tcsetattr_options]],  1
	mov	qword ptr [rbp - 0x68], rax
	jne	.label_7
	nop	
	movabs	rdi, OFFSET FLAT:.str.21
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	jmp	.label_8
.label_7:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	mov	qword ptr [rbp - 0x70], rax
.label_8:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.23
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x78], eax
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.25
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.27
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.28
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.29
	mov	dword ptr [rbp - 0x8c], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.31
	mov	dword ptr [rbp - 0x94], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.32
	nop	
	mov	dword ptr [rbp - 0x98], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.33
	mov	dword ptr [rbp - 0x9c], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.34
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa0], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.35
	nop	
	mov	dword ptr [rbp - 0xa4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.36
	mov	dword ptr [rbp - 0xa8], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.37
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xac], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.38
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb0], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.39
	mov	dword ptr [rbp - 0xb4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.40
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.41
	nop	
	mov	dword ptr [rbp - 0xbc], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.42
	mov	dword ptr [rbp - 0xc0], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.43
	mov	dword ptr [rbp - 0xc4], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.44
	mov	dword ptr [rbp - 0xc8], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.45
	mov	dword ptr [rbp - 0xcc], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.46
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd0], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.47
	nop	
	mov	dword ptr [rbp - 0xd4], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.48
	mov	dword ptr [rbp - 0xd8], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.49
	mov	dword ptr [rbp - 0xdc], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.50
	mov	dword ptr [rbp - 0xe0], eax
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.51
	mov	dword ptr [rbp - 0xe4], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.52
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe8], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.53
	nop	
	mov	dword ptr [rbp - 0xec], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.54
	mov	dword ptr [rbp - 0xf0], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.55
	mov	dword ptr [rbp - 0xf4], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.56
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xf8], eax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.57
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xfc], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.58
	nop	
	mov	dword ptr [rbp - 0x100], eax
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.59
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x104], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.60
	nop	
	mov	dword ptr [rbp - 0x108], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.61
	mov	dword ptr [rbp - 0x10c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x110], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.63
	nop	
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.64
	mov	dword ptr [rbp - 0x118], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.65
	mov	dword ptr [rbp - 0x11c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.66
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x120], eax
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.67
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.68
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x124], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.69
	mov	dword ptr [rbp - 0x128], eax
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.70
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x12c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.71
	mov	dword ptr [rbp - 0x130], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.72
	mov	dword ptr [rbp - 0x134], eax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.73
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x138], eax
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x13c], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.75
	mov	dword ptr [rbp - 0x140], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.76
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x144], eax
	lea	rdi, [rdi]
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.77
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.78
	mov	dword ptr [rbp - 0x148], eax
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.79
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.80
	mov	dword ptr [rbp - 0x14c], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.81
	mov	dword ptr [rbp - 0x150], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.82
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x154], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.83
	nop	
	mov	dword ptr [rbp - 0x158], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.84
	mov	dword ptr [rbp - 0x15c], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.85
	movabs	rdx, OFFSET FLAT:.str.86
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.87
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x160], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.88
	nop	
	mov	dword ptr [rbp - 0x164], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.89
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.90
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x168], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.91
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.92
	movabs	rcx, OFFSET FLAT:.str.93
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.94
	mov	dword ptr [rbp - 0x16c], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.95
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x170], eax
	call	emit_ancillary_info
.label_10:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4027f0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	movabs	rdi, OFFSET FLAT:.str.111
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402830

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_17:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
	je	.label_13
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	sete	cl
	mov	rsp, rsp
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_13:
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_14
	jmp	.label_15
.label_14:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_17
.label_15:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_12
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.120
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rdi, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	mov	rbp, rbp
	mov	edi, 5
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_16
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.122
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	strncmp
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_16
	movabs	rdi, OFFSET FLAT:.str.123
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_16:
	nop	
	movabs	rdi, OFFSET FLAT:.str.124
	mov	rsp, rsp
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.125
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	nop	
	movabs	rdx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.126
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmove	rdx, rsi
	nop	
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	mov	al, 0
	call	printf
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a40

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x20], 1
	mov	byte ptr [rbp - 0x25], 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_0
	nop	
	call	setlocale
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.97
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.98
	mov	qword ptr [rbp - 0x48], rax
	call	bindtextdomain
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.97
	mov	qword ptr [rbp - 0x50], rax
	nop	
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	call	atexit
	mov	dword ptr [rbp - 0x14], 0
	mov	byte ptr [rbp - 0x23], 0
	mov	byte ptr [rbp - 0x24], 0
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [opterr]],  0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
.label_53:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.99
	movabs	rcx, OFFSET FLAT:longopts
	mov	rbp, rbp
	xor	eax, eax
	mov	r8d, eax
	mov	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rbp - 0x1c]
	nop	
	shl	rdi, 3
	mov	rbp, rbp
	add	rsi, rdi
	mov	rbp, rbp
	mov	edi, eax
	call	getopt_long
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	cmp	eax, -1
	je	.label_30
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	mov	dword ptr [rbp - 0x64], ecx
	je	.label_35
	mov	rsp, rsp
	jmp	.label_24
.label_24:
	mov	eax, dword ptr [rbp - 0x60]
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	mov	rbp, rbp
	je	.label_38
	jmp	.label_42
.label_42:
	mov	eax, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	eax, 0x46
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	je	.label_43
	jmp	.label_47
.label_47:
	mov	eax, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x70], eax
	je	.label_48
	mov	rsp, rsp
	jmp	.label_49
.label_49:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	je	.label_50
	mov	rbp, rbp
	jmp	.label_54
.label_48:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x23], 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_18
.label_50:
	mov	byte ptr [rbp - 0x24], 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 2
	mov	rsp, rsp
	jmp	.label_18
.label_43:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_23
	movabs	rdi, OFFSET FLAT:.str.100
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_23:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_18
.label_38:
	lea	rdi, [rdi]
	xor	edi, edi
	call	usage
.label_35:
	nop	
	movabs	rsi, OFFSET FLAT:.str.95
	movabs	rdx, OFFSET FLAT:.str.17_0
	nop	
	movabs	r8, OFFSET FLAT:.str.102
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	lea	rsi, [rsi]
	call	version_etc
	xor	edi, edi
	call	exit
.label_54:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, dword ptr [rbp - 0x20]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.103
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_46
	nop	
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, dword ptr [rbp - 0x20]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:.str.104
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_46
	mov	byte ptr [rbp - 0x25], 0
.label_46:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x1c], eax
	mov	dword ptr [rbp - 0x20], 1
	mov	dword ptr [dword ptr [optind]],  0
.label_18:
	lea	rsi, [rsi]
	jmp	.label_31
.label_31:
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	cmp	eax,  dword ptr [dword ptr [optind]]
	jge	.label_34
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, dword ptr [rbp - 0x20]
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, 1
	mov	dword ptr [rbp - 0x20], edx
	add	eax, ecx
	lea	rsi, [rsi]
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rsi*8], 0
	jmp	.label_31
.label_34:
	mov	rsp, rsp
	jmp	.label_53
.label_30:
	test	byte ptr [rbp - 0x23], 1
	je	.label_32
	test	byte ptr [rbp - 0x24], 1
	mov	rsp, rsp
	je	.label_32
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.105
	call	gettext
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
.label_32:
	test	byte ptr [rbp - 0x25], 1
	jne	.label_20
	test	byte ptr [rbp - 0x23], 1
	jne	.label_55
	mov	rbp, rbp
	test	byte ptr [rbp - 0x24], 1
	nop	
	je	.label_20
.label_55:
	movabs	rdi, OFFSET FLAT:.str.106
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_20:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	je	.label_40
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	jmp	.label_27
.label_40:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.107
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 0x80], rax
.label_27:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	test	byte ptr [rbp - 0x25], 1
	jne	.label_36
	test	byte ptr [rbp - 0x23], 1
	jne	.label_36
	nop	
	test	byte ptr [rbp - 0x24], 1
	jne	.label_36
	nop	
	mov	edi, 1
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:main.check_mode
	nop	
	lea	r9, [rbp - 0x22]
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x21]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	call	apply_settings
.label_36:
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	je	.label_22
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, 0x800
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, eax
	call	fd_reopen
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jge	.label_21
	mov	rsp, rsp
	call	__errno_location
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rbp - 0x84], ecx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_21:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_37
	xor	edi, edi
	mov	esi, 4
	mov	eax, dword ptr [rbp - 0x3c]
	and	eax, 0xfffff7ff
	mov	edx, eax
	lea	rsi, [rsi]
	mov	al, 0
	call	rpl_fcntl
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_44
.label_37:
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.109
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], esi
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x90], rax
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_44:
	jmp	.label_22
.label_22:
	xor	edi, edi
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:main.mode
	call	tcgetattr
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_25
	lea	rdi, [rdi]
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rbp - 0x94], ecx
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
.label_25:
	test	byte ptr [rbp - 0x23], 1
	mov	rsp, rsp
	jne	.label_39
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x24], 1
	lea	rdi, [rdi]
	jne	.label_39
	test	byte ptr [rbp - 0x25], 1
	je	.label_45
.label_39:
	call	screen_columns
	movabs	rsi, OFFSET FLAT:main.mode
	mov	dword ptr [dword ptr [max_col]],  eax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [current_col]],  0
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x38]
	call	display_settings
	mov	dword ptr [rbp - 4], 0
	jmp	.label_52
.label_45:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	movabs	r8, OFFSET FLAT:main.mode
	lea	rdi, [rdi]
	lea	r9, [rbp - 0x22]
	nop	
	lea	rax, [rbp - 0x21]
	mov	byte ptr [rbp - 0x22], 0
	mov	byte ptr [rbp - 0x21], 0
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 8]
	mov	qword ptr [rsp], rax
	call	apply_settings
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_26
	xor	edi, edi
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:main.mode
	mov	esi,  dword ptr [dword ptr [tcsetattr_options]]
	call	tcsetattr
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_33
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x98], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_33:
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	movabs	rsi, OFFSET FLAT:main.new_mode
	nop	
	call	tcgetattr
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_51
	call	__errno_location
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], ecx
	call	quotearg_n_style_colon
	nop	
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	nop	
	mov	esi, dword ptr [rbp - 0x9c]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_51:
	mov	eax, OFFSET FLAT:main.mode
	mov	rsp, rsp
	mov	edi, eax
	mov	eax, OFFSET FLAT:main.new_mode
	mov	esi, eax
	lea	rdi, [rdi]
	mov	eax, 0x3c
	mov	edx, eax
	nop	
	call	memcmp
	nop	
	cmp	eax, 0
	je	.label_19
	mov	eax,  dword ptr [dword ptr [label_28]]
	mov	rbp, rbp
	and	eax, 0xeff0ffff
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [label_28]],  eax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x22], 1
	lea	rsi, [rsi]
	jne	.label_29
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:main.mode
	mov	edi, eax
	mov	eax, OFFSET FLAT:main.new_mode
	mov	rsp, rsp
	mov	esi, eax
	lea	rdi, [rdi]
	mov	eax, 0x3c
	mov	edx, eax
	lea	rsi, [rsi]
	call	memcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_41
.label_29:
	nop	
	movabs	rdi, OFFSET FLAT:.str.110
	call	gettext
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	error
.label_41:
	lea	rsi, [rsi]
	jmp	.label_19
.label_19:
	lea	rsi, [rsi]
	jmp	.label_26
.label_26:
	mov	dword ptr [rbp - 4], 0
.label_52:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403330

	.globl apply_settings
	.type apply_settings, @function
apply_settings:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	al, dil
	mov	r10, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], r10
	mov	dword ptr [rbp - 0x3c], 1
.label_123:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x1c]
	jge	.label_124
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x49], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4a], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4b], 0
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_96
	mov	rbp, rbp
	jmp	.label_66
.label_96:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	jne	.label_117
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4b], 1
.label_117:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.104
	mov	esi, eax
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	jne	.label_63
	nop	
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x4b]
	test	dl, 1
	nop	
	cmovne	eax, ecx
	mov	dword ptr [dword ptr [tcsetattr_options]],  eax
	jmp	.label_66
.label_63:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], 0
.label_88:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x50]
	shl	rcx, 5
	add	rax, rcx
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_71
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:mode_info
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	rcx, dword ptr [rbp - 0x50]
	shl	rcx, 5
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	jne	.label_99
	movabs	rax, OFFSET FLAT:mode_info
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	lea	rdi, [rdi]
	and	edx, 0x10
	cmp	edx, 0
	jne	.label_104
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x50]
	shl	rcx, 5
	nop	
	add	rax, rcx
	mov	dl, byte ptr [rbp - 0x4b]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	and	dl, 1
	mov	rdi, rax
	movzx	esi, dl
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	set_mode
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x49], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	byte ptr [rcx], 1
	mov	rbp, rbp
	jmp	.label_56
.label_104:
	nop	
	mov	byte ptr [rbp - 0x4a], 1
	mov	byte ptr [rbp - 0x49], 1
.label_56:
	mov	rbp, rbp
	jmp	.label_71
.label_99:
	lea	rsi, [rsi]
	jmp	.label_74
.label_74:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	jmp	.label_88
.label_71:
	test	byte ptr [rbp - 0x49], 1
	mov	rsp, rsp
	jne	.label_83
	mov	rbp, rbp
	test	byte ptr [rbp - 0x4b], 1
	mov	rsp, rsp
	je	.label_83
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.132
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rdi, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	usage
.label_83:
	test	byte ptr [rbp - 0x49], 1
	lea	rsi, [rsi]
	jne	.label_76
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], 0
.label_69:
	movabs	rax, OFFSET FLAT:control_info
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x50]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_62
	movabs	rax, OFFSET FLAT:control_info
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	movsxd	rcx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_72
	lea	rsi, [rsi]
	jmp	.label_77
.label_77:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	sub	ecx, 1
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_79
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_85
.label_79:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.133
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_85:
	lea	rsi, [rsi]
	jmp	.label_114
.label_114:
	movabs	rax, OFFSET FLAT:control_info
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x49], 1
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], ecx
	movsxd	rdx, dword ptr [rbp - 0x50]
	imul	rdx, rdx, 0x18
	add	rax, rdx
	movsxd	rdx, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + rdx*8]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	set_control_char
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	nop	
	jmp	.label_62
.label_72:
	jmp	.label_115
.label_115:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_69
.label_62:
	jmp	.label_76
.label_76:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x49], 1
	mov	rsp, rsp
	je	.label_109
	mov	rbp, rbp
	test	byte ptr [rbp - 0x4a], 1
	lea	rdi, [rdi]
	je	.label_82
.label_109:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.134
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_89
	jmp	.label_92
.label_92:
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	lea	rdi, [rdi]
	cmp	eax, ecx
	je	.label_94
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_102
.label_94:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.133
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
	call	quote
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_102:
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	test	byte ptr [rbp - 1], 1
	je	.label_58
	lea	rsi, [rsi]
	jmp	.label_66
.label_58:
	mov	rsp, rsp
	xor	edi, edi
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	set_speed
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	byte ptr [rax], 1
	lea	rsi, [rsi]
	jmp	.label_78
.label_89:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.135
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rdi]
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_87
	lea	rsi, [rsi]
	jmp	.label_91
.label_91:
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	sub	ecx, 1
	cmp	eax, ecx
	mov	rsp, rsp
	je	.label_93
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_103
.label_93:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.133
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	call	quote
	nop	
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_103:
	lea	rsi, [rsi]
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	je	.label_64
	lea	rsi, [rsi]
	jmp	.label_66
.label_64:
	mov	rbp, rbp
	mov	edi, 1
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	call	set_speed
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	byte ptr [rax], 1
	jmp	.label_119
.label_87:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.136
	nop	
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_95
	lea	rsi, [rsi]
	jmp	.label_97
.label_97:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_101
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	eax, 1
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	mov	rsp, rsp
	jne	.label_108
.label_101:
	movabs	rdi, OFFSET FLAT:.str.133
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	edi, 1
	call	usage
.label_108:
	mov	rsp, rsp
	jmp	.label_90
.label_90:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	test	byte ptr [rbp - 1], 1
	je	.label_65
	jmp	.label_66
.label_65:
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rcx*8]
	call	integer_arg
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	r8d, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, r8d
	mov	rbp, rbp
	call	set_window_size
	jmp	.label_75
.label_95:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.137
	mov	esi, eax
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_86
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.138
	nop	
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_107
.label_86:
	lea	rdi, [rdi]
	jmp	.label_84
.label_84:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_113
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_118
.label_113:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.133
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	edi, 1
	call	usage
.label_118:
	mov	rsp, rsp
	jmp	.label_80
.label_80:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	test	byte ptr [rbp - 1], 1
	je	.label_120
	jmp	.label_66
.label_120:
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	esi, eax
	nop	
	movsxd	rcx, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	integer_arg
	mov	edi, 0xffffffff
	lea	rsi, [rsi]
	mov	r8d, eax
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, r8d
	nop	
	call	set_window_size
	jmp	.label_106
.label_107:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.139
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_112
	test	byte ptr [rbp - 1], 1
	je	.label_116
	jmp	.label_66
.label_116:
	nop	
	call	screen_columns
	xor	edi, edi
	nop	
	mov	dword ptr [dword ptr [max_col]],  eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [current_col]],  0
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	display_window_size
	nop	
	jmp	.label_61
.label_112:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.140
	lea	rdi, [rdi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_67
	lea	rsi, [rsi]
	jmp	.label_70
.label_70:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	ecx, dword ptr [rbp - 0x1c]
	nop	
	sub	ecx, 1
	cmp	eax, ecx
	je	.label_73
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	add	eax, 1
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_98
.label_73:
	nop	
	movabs	rdi, OFFSET FLAT:.str.133
	mov	rbp, rbp
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	call	quote
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_98:
	jmp	.label_110
.label_110:
	mov	rsi, -1
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdx + rcx*8]
	nop	
	call	integer_arg
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	r8b, al
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x10], r8b
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movzx	r9d, byte ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	eax, r9d
	cmp	rax, qword ptr [rbp - 0x58]
	je	.label_122
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.141
	call	gettext
	movsxd	rdi, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	call	quote
	lea	rdi, [rdi]
	xor	edx, edx
	mov	edi, edx
	mov	esi, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_122:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	byte ptr [rax], 1
	jmp	.label_111
.label_67:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.142
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_100
	mov	rsp, rsp
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	je	.label_105
	lea	rsi, [rsi]
	jmp	.label_66
.label_105:
	call	screen_columns
	xor	esi, esi
	mov	dword ptr [dword ptr [max_col]],  eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	display_speed
	lea	rsi, [rsi]
	jmp	.label_68
.label_100:
	mov	rdi, qword ptr [rbp - 0x48]
	call	string_to_baud
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_121
	mov	rbp, rbp
	test	byte ptr [rbp - 1], 1
	je	.label_125
	jmp	.label_66
.label_125:
	mov	rbp, rbp
	mov	edi, 2
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	call	set_speed
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx], 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rdx], 1
	mov	rsp, rsp
	jmp	.label_60
.label_121:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x28]
	call	recover_mode
	test	al, 1
	nop	
	jne	.label_81
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.132
	nop	
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0xa0], rax
	call	quote
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, ecx
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_81:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	byte ptr [rax], 1
.label_60:
	mov	rbp, rbp
	jmp	.label_68
.label_68:
	jmp	.label_111
.label_111:
	lea	rdi, [rdi]
	jmp	.label_61
.label_61:
	mov	rbp, rbp
	jmp	.label_106
.label_106:
	lea	rsi, [rsi]
	jmp	.label_75
.label_75:
	jmp	.label_119
.label_119:
	jmp	.label_78
.label_78:
	jmp	.label_82
.label_82:
	lea	rdi, [rdi]
	jmp	.label_66
.label_66:
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_123
.label_124:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f10

	.globl screen_columns
	.type screen_columns, @function
screen_columns:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x10]
	call	get_win_size
	cmp	eax, 0
	jne	.label_126
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	ecx, word ptr [rbp - 0xe]
	mov	rsp, rsp
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_126
	mov	rbp, rbp
	movzx	eax, word ptr [rbp - 0xe]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_128
.label_126:
	movabs	rdi, OFFSET FLAT:.str.297
	call	getenv
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_127
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, eax
	xor	edx, edx
	lea	rcx, [rbp - 0x20]
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:.str_0
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	xstrtol
	cmp	eax, 0
	nop	
	jne	.label_127
	xor	eax, eax
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x20]
	nop	
	jge	.label_127
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0x7fffffff
	jle	.label_129
.label_127:
	mov	qword ptr [rbp - 0x20], 0x50
.label_129:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	nop	
	mov	dword ptr [rbp - 4], ecx
.label_128:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ff0

	.globl display_settings
	.type display_settings, @function
display_settings:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	test	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edi
	je	.label_132
	mov	rbp, rbp
	jmp	.label_135
.label_135:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
	je	.label_131
	lea	rdi, [rdi]
	jmp	.label_133
.label_133:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	sub	eax, 2
	mov	dword ptr [rbp - 0x24], eax
	nop	
	je	.label_134
	mov	rbp, rbp
	jmp	.label_130
.label_132:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	display_changed
	mov	rbp, rbp
	jmp	.label_130
.label_131:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	display_all
	jmp	.label_130
.label_134:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	display_recoverable
.label_130:
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040a0

	.globl set_mode
	.type set_mode, @function
set_mode:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x11], 1
	je	.label_172
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 0xc]
	mov	rsp, rsp
	and	ecx, 4
	nop	
	cmp	ecx, 0
	jne	.label_172
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_189
.label_172:
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x20]
	call	mode_type_flag
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	jne	.label_136
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.215
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_146
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.216
	mov	esi, ecx
	lea	rdi, [rdi]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_151
.label_146:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x11], 1
	je	.label_155
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xfffffeff
	lea	rdi, [rdi]
	and	ecx, 0xffffffcf
	or	ecx, 0x30
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	jmp	.label_157
.label_155:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xfffffdff
	and	ecx, 0xffffffcf
	or	ecx, 0x100
	mov	rbp, rbp
	or	ecx, 0x20
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
.label_157:
	jmp	.label_139
.label_151:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.217
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_184
	mov	rsp, rsp
	test	byte ptr [rbp - 0x11], 1
	je	.label_187
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xfffffeff
	and	ecx, 0xffffffcf
	lea	rsi, [rsi]
	or	ecx, 0x30
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	mov	rbp, rbp
	jmp	.label_191
.label_187:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffffcf
	mov	rbp, rbp
	or	ecx, 0x20
	mov	rsp, rsp
	or	ecx, 0x200
	or	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
.label_191:
	mov	rsp, rsp
	jmp	.label_138
.label_184:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	nop	
	mov	ecx, OFFSET FLAT:.str.218
	mov	rbp, rbp
	mov	esi, ecx
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_159
	mov	rsp, rsp
	test	byte ptr [rbp - 0x11], 1
	je	.label_160
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	or	ecx, 0x100
	and	ecx, 0xffffffbf
	mov	rsp, rsp
	and	ecx, 0xffffff7f
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 4
	and	ecx, 0xfffffff7
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 4], ecx
	jmp	.label_164
.label_160:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xfffffeff
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	nop	
	and	ecx, 0xfffffffb
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 4], ecx
.label_164:
	jmp	.label_137
.label_159:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rax]
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.219
	nop	
	mov	esi, ecx
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	jne	.label_143
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x13], 0x7f
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x14], 0x15
	jmp	.label_144
.label_143:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	nop	
	mov	ecx, OFFSET FLAT:.str.220
	nop	
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_154
	mov	rdi, qword ptr [rbp - 0x20]
	call	sane_mode
	mov	rsp, rsp
	jmp	.label_158
.label_154:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.225
	nop	
	mov	esi, ecx
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_165
	test	byte ptr [rbp - 0x11], 1
	mov	rbp, rbp
	je	.label_171
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	mov	rsp, rsp
	or	ecx, 2
	mov	dword ptr [rax + 0xc], ecx
	jmp	.label_175
.label_171:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	lea	rsi, [rsi]
	and	ecx, 0xfffffffd
	mov	dword ptr [rax + 0xc], ecx
.label_175:
	jmp	.label_183
.label_165:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.223
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_188
	test	byte ptr [rbp - 0x11], 1
	mov	rbp, rbp
	je	.label_192
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffffcf
	or	ecx, 0x20
	nop	
	or	ecx, 0x100
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	or	ecx, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rax], ecx
	lea	rdi, [rdi]
	jmp	.label_193
.label_192:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xfffffeff
	mov	rsp, rsp
	and	ecx, 0xffffffcf
	or	ecx, 0x30
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
.label_193:
	jmp	.label_161
.label_188:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.224
	mov	esi, ecx
	mov	rbp, rbp
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_170
	test	byte ptr [rbp - 0x11], 1
	je	.label_174
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffffcf
	or	ecx, 0x20
	or	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 8], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	or	ecx, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rax], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rax + 4], ecx
	lea	rsi, [rsi]
	jmp	.label_177
.label_174:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xfffffeff
	and	ecx, 0xffffffcf
	or	ecx, 0x30
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rax + 8], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	nop	
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xfffffffe
	lea	rdi, [rdi]
	mov	dword ptr [rax + 4], ecx
.label_177:
	jmp	.label_148
.label_170:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.222
	mov	esi, ecx
	mov	rsp, rsp
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_152
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	nop	
	mov	ecx, OFFSET FLAT:.str.221
	mov	esi, ecx
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_162
.label_152:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x72
	lea	rsi, [rsi]
	jne	.label_167
	test	byte ptr [rbp - 0x11], 1
	nop	
	jne	.label_176
.label_167:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x63
	jne	.label_178
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x11], 1
	jne	.label_178
.label_176:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	or	ecx, 0x526
	nop	
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rdi, [rdi]
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, 3
	mov	rbp, rbp
	mov	dword ptr [rax + 0xc], ecx
	lea	rsi, [rsi]
	jmp	.label_185
.label_178:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	lea	rdi, [rdi]
	and	ecx, 0xfffffffe
	nop	
	mov	dword ptr [rax + 4], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	mov	rbp, rbp
	and	ecx, 0xfffffff8
	mov	dword ptr [rax + 0xc], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x17], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x16], 0
.label_185:
	mov	rbp, rbp
	jmp	.label_156
.label_162:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.226
	mov	esi, ecx
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	jne	.label_163
	test	byte ptr [rbp - 0x11], 1
	je	.label_166
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	or	ecx, 0x800
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	jmp	.label_169
.label_166:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xfffff7ff
	mov	dword ptr [rax], ecx
.label_169:
	jmp	.label_181
.label_163:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.227
	mov	esi, ecx
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_186
	test	byte ptr [rbp - 0x11], 1
	je	.label_190
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	mov	rsp, rsp
	and	ecx, 0xffffe7ff
	mov	rbp, rbp
	or	ecx, 0x1800
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax + 4], ecx
	jmp	.label_179
.label_190:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xffffe7ff
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 4], ecx
.label_179:
	lea	rdi, [rdi]
	jmp	.label_150
.label_186:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.228
	lea	rsi, [rsi]
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_153
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.229
	mov	esi, ecx
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	nop	
	jne	.label_173
.label_153:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x11], 1
	je	.label_168
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	and	ecx, 0xfffffffb
	mov	dword ptr [rax + 0xc], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xfffffdff
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 4]
	and	ecx, 0xfffffffd
	mov	dword ptr [rax + 4], ecx
	jmp	.label_180
.label_168:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	or	ecx, 4
	nop	
	mov	dword ptr [rax + 0xc], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	or	ecx, 0x200
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 2
	mov	rsp, rsp
	mov	dword ptr [rax + 4], ecx
.label_180:
	lea	rdi, [rdi]
	jmp	.label_182
.label_173:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.230
	mov	rsp, rsp
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_147
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	or	ecx, 0xa10
	mov	rsp, rsp
	mov	dword ptr [rax + 0xc], ecx
	jmp	.label_149
.label_147:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	nop	
	mov	ecx, OFFSET FLAT:.str.231
	lea	rsi, [rsi]
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_140
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x11], 3
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x13], 0x7f
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0x14], 0x15
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0xc]
	mov	rbp, rbp
	or	ecx, 0xa10
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0xc], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	and	ecx, 0xfffff7ff
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
.label_140:
	mov	rsp, rsp
	jmp	.label_149
.label_149:
	nop	
	jmp	.label_182
.label_182:
	mov	rbp, rbp
	jmp	.label_150
.label_150:
	nop	
	jmp	.label_181
.label_181:
	jmp	.label_156
.label_156:
	jmp	.label_148
.label_148:
	mov	rsp, rsp
	jmp	.label_161
.label_161:
	mov	rsp, rsp
	jmp	.label_183
.label_183:
	mov	rbp, rbp
	jmp	.label_158
.label_158:
	jmp	.label_144
.label_144:
	jmp	.label_137
.label_137:
	jmp	.label_138
.label_138:
	jmp	.label_139
.label_139:
	jmp	.label_141
.label_136:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x11], 1
	mov	rsp, rsp
	je	.label_142
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	xor	rdx, 0xffffffffffffffff
	and	rax, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	xor	rdx, 0xffffffffffffffff
	and	rax, rdx
	mov	ecx, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rax], ecx
	jmp	.label_145
.label_142:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	xor	rdx, 0xffffffffffffffff
	mov	rbp, rbp
	and	rax, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	or	rax, qword ptr [rdx + 0x10]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
.label_145:
	mov	rbp, rbp
	jmp	.label_141
.label_141:
	mov	byte ptr [rbp - 1], 1
.label_189:
	nop	
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049d0

	.globl set_control_char
	.type set_control_char, @function
set_control_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx]
	nop	
	mov	eax, OFFSET FLAT:.str.250
	mov	rsp, rsp
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	je	.label_195
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.251
	nop	
	mov	esi, ecx
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_203
.label_195:
	mov	eax, 0xff
	mov	rsp, rsp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	integer_arg
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_197
.label_203:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_199
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	cmp	ecx, 0
	jne	.label_204
.label_199:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	lea	rsi, [rsi]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	nop	
	mov	ecx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	jmp	.label_200
.label_204:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.252
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	nop	
	je	.label_194
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.253
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	nop	
	jne	.label_201
.label_194:
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_198
.label_201:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5e
	jne	.label_196
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_196
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x3f
	jne	.label_202
	mov	qword ptr [rbp - 0x20], 0x7f
	jmp	.label_206
.label_202:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax + 1]
	mov	rbp, rbp
	call	to_uchar
	movzx	edi, al
	and	edi, 0xffffff9f
	lea	rdi, [rdi]
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x20], rcx
.label_206:
	lea	rsi, [rsi]
	jmp	.label_205
.label_196:
	mov	eax, 0xff
	nop	
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	integer_arg
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_205:
	lea	rsi, [rsi]
	jmp	.label_198
.label_198:
	lea	rsi, [rsi]
	jmp	.label_200
.label_200:
	jmp	.label_197
.label_197:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, al
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax + 0x11], cl
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bd0

	.globl set_speed
	.type set_speed, @function
set_speed:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	call	string_to_baud
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	je	.label_210
	cmp	dword ptr [rbp - 4], 2
	jne	.label_208
.label_210:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	call	cfsetispeed
	mov	dword ptr [rbp - 0x20], eax
.label_208:
	cmp	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	je	.label_207
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 2
	lea	rdi, [rdi]
	jne	.label_209
.label_207:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	nop	
	call	cfsetospeed
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
.label_209:
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c60

	.globl set_window_size
	.type set_window_size, @function
set_window_size:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	edi, eax
	mov	rsi, rcx
	call	get_win_size
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_211
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	lea	rsi, [rsi]
	je	.label_213
	mov	rsp, rsp
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_213:
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	eax, 8
	mov	rbp, rbp
	mov	edx, eax
	lea	rcx, [rbp - 0x18]
	mov	rdi, rcx
	call	memset
.label_211:
	cmp	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	jl	.label_215
	mov	eax, dword ptr [rbp - 4]
	nop	
	mov	cx, ax
	lea	rdi, [rdi]
	mov	word ptr [rbp - 0x18], cx
.label_215:
	cmp	dword ptr [rbp - 8], 0
	mov	rsp, rsp
	jl	.label_214
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	mov	cx, ax
	mov	word ptr [rbp - 0x16], cx
.label_214:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	eax, 0x5414
	mov	esi, eax
	lea	rcx, [rbp - 0x18]
	mov	rdx, rcx
	mov	rsp, rsp
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	nop	
	je	.label_212
	call	__errno_location
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x20], ecx
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_212:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404dd0

	.globl integer_arg
	.type integer_arg, @function
integer_arg:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:.str.255
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	call	gettext
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rbp, rbp
	movabs	r8, OFFSET FLAT:.str.254
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r9, rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0
	call	xnumtoumax
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e60

	.globl display_window_size
	.type display_window_size, @function
display_window_size:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dil
	nop	
	xor	edi, edi
	lea	rcx, [rbp - 0x18]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, rcx
	call	get_win_size
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_216
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x16
	je	.label_220
	lea	rsi, [rsi]
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rbp, rbp
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_220:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 1], 1
	jne	.label_219
	movabs	rdi, OFFSET FLAT:.str.256
	lea	rdi, [rdi]
	call	gettext
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
.label_219:
	nop	
	jmp	.label_217
.label_216:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.258
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str.257
	mov	dl, byte ptr [rbp - 1]
	test	dl, 1
	mov	rbp, rbp
	cmovne	rax, rcx
	movzx	esi, word ptr [rbp - 0x18]
	movzx	edx, word ptr [rbp - 0x16]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	wrapf
	mov	rsp, rsp
	test	byte ptr [rbp - 1], 1
	jne	.label_218
	mov	dword ptr [dword ptr [current_col]],  0
.label_218:
	lea	rdi, [rdi]
	jmp	.label_217
.label_217:
	mov	rsp, rsp
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fc0

	.globl display_speed
	.type display_speed, @function
display_speed:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	call	cfgetispeed
	cmp	eax, 0
	je	.label_221
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	cfgetispeed
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
	call	cfgetospeed
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	ecx, eax
	jne	.label_222
.label_221:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.260
	movabs	rcx, OFFSET FLAT:.str.259
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	test	dl, 1
	lea	rdi, [rdi]
	cmovne	rax, rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	call	cfgetospeed
	mov	edi, eax
	lea	rsi, [rsi]
	call	baud_to_value
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	wrapf
	jmp	.label_223
.label_222:
	movabs	rax, OFFSET FLAT:.str.262
	nop	
	movabs	rcx, OFFSET FLAT:.str.261
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	lea	rdi, [rdi]
	cmovne	rax, rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	cfgetispeed
	mov	edi, eax
	lea	rsi, [rsi]
	call	baud_to_value
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	call	cfgetospeed
	nop	
	mov	edi, eax
	call	baud_to_value
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, rax
	mov	al, 0
	mov	rbp, rbp
	call	wrapf
.label_223:
	test	byte ptr [rbp - 9], 1
	mov	rbp, rbp
	jne	.label_224
	mov	dword ptr [dword ptr [current_col]],  0
.label_224:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405100

	.globl string_to_baud
	.type string_to_baud, @function
string_to_baud:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_227:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:speeds
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	je	.label_228
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:speeds
	mov	rdi, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_229
	movabs	rax, OFFSET FLAT:speeds
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	jmp	.label_226
.label_229:
	mov	rbp, rbp
	jmp	.label_225
.label_225:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_227
.label_228:
	mov	dword ptr [rbp - 4], 0xffffffff
.label_226:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051e0

	.globl recover_mode
	.type recover_mode, @function
recover_mode:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x40], 0
.label_233:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 4
	lea	rsi, [rsi]
	jae	.label_232
	lea	rsi, [rsi]
	mov	esi, 0x10
	lea	rdx, [rbp - 0x48]
	lea	rsi, [rsi]
	mov	r8d, 0x3a
	nop	
	lea	rax, [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	shl	rcx, 2
	mov	rsp, rsp
	add	rax, rcx
	lea	rsi, [rsi]
	mov	rcx, rax
	call	strtoul_tcflag_t
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	je	.label_236
	mov	byte ptr [rbp - 1], 0
	jmp	.label_230
.label_236:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_233
.label_232:
	mov	eax, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rcx + 4], eax
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 8], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	dword ptr [rcx + 0xc], eax
	mov	qword ptr [rbp - 0x40], 0
.label_231:
	nop	
	cmp	qword ptr [rbp - 0x40], 0x20
	mov	rbp, rbp
	jae	.label_235
	mov	esi, 0x10
	lea	rdx, [rbp - 0x50]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 0x3a
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0x1f
	cmovb	eax, ecx
	mov	dil, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], dil
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x18]
	add	r8, 0x11
	lea	rdi, [rdi]
	add	r8, qword ptr [rbp - 0x40]
	mov	rcx, r8
	lea	rdi, [rdi]
	movsx	r8d, byte ptr [rbp - 0x51]
	mov	rsp, rsp
	call	strtoul_cc_t
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_234
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_230
.label_234:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_231
.label_235:
	mov	byte ptr [rbp - 1], 1
.label_230:
	nop	
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405390

	.globl mode_type_flag
	.type mode_type_flag, @function
mode_type_flag:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xc]
	mov	esi, edi
	lea	rdi, [rdi]
	mov	rax, rsi
	mov	rbp, rbp
	sub	rax, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rax
	ja	.label_237
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_239]]
	lea	rsi, [rsi]
	jmp	rcx
.label_928:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 8
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_238
.label_929:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_238
.label_930:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_238
.label_931:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 0xc
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_238
.label_932:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_238
.label_237:
	mov	rsp, rsp
	call	abort
.label_238:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405460

	.globl sane_mode
	.type sane_mode, @function
sane_mode:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0
.label_247:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_252
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:control_info
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	mov	rbp, rbp
	mov	rdx, rax
	lea	rsi, [rsi]
	add	rdx, rcx
	mov	sil, byte ptr [rdx + 8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	nop	
	add	rax, rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax + 0x11], sil
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_247
.label_252:
	mov	dword ptr [rbp - 0xc], 0
.label_244:
	movabs	rax, OFFSET FLAT:mode_info
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	shl	rcx, 5
	nop	
	add	rax, rcx
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	je	.label_241
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	shl	rcx, 5
	mov	rbp, rbp
	add	rax, rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 0x10
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_251
	lea	rdi, [rdi]
	jmp	.label_240
.label_251:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:mode_info
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	shl	rcx, 5
	lea	rsi, [rsi]
	add	rax, rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + 0xc]
	mov	rbp, rbp
	and	edx, 1
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_250
	movabs	rax, OFFSET FLAT:mode_info
	nop	
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	edi, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	mode_type_flag
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_243
	jmp	.label_248
.label_243:
	movabs	rdi, OFFSET FLAT:.str.232
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.233
	mov	rbp, rbp
	mov	edx, 0x8cb
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.sane_mode
	call	__assert_fail
.label_248:
	movabs	rax, OFFSET FLAT:mode_info
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx]
	mov	ecx, edx
	movsxd	rsi, dword ptr [rbp - 0xc]
	nop	
	shl	rsi, 5
	mov	rdi, rax
	mov	rbp, rbp
	add	rdi, rsi
	mov	rsi, qword ptr [rdi + 0x18]
	nop	
	xor	rsi, 0xffffffffffffffff
	and	rcx, rsi
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0xc]
	shl	rsi, 5
	add	rax, rsi
	or	rcx, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], edx
	lea	rsi, [rsi]
	jmp	.label_245
.label_250:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:mode_info
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	mov	rsp, rsp
	add	rax, rcx
	mov	rsp, rsp
	movsx	edx, byte ptr [rax + 0xc]
	mov	rsp, rsp
	and	edx, 2
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	je	.label_249
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	mov	rbp, rbp
	add	rax, rcx
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	call	mode_type_flag
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_242
	jmp	.label_246
.label_242:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.232
	movabs	rsi, OFFSET FLAT:.str.233
	lea	rsi, [rsi]
	mov	edx, 0x8d1
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.sane_mode
	mov	rbp, rbp
	call	__assert_fail
.label_246:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:mode_info
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx]
	mov	ecx, edx
	movsxd	rsi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	shl	rsi, 5
	mov	rdi, rax
	add	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdi + 0x18]
	mov	rbp, rbp
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rcx, rsi
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	shl	rsi, 5
	add	rax, rsi
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	xor	rax, 0xffffffffffffffff
	nop	
	and	rcx, rax
	mov	edx, ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rax], edx
.label_249:
	mov	rbp, rbp
	jmp	.label_245
.label_245:
	mov	rsp, rsp
	jmp	.label_240
.label_240:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_244
.label_241:
	mov	rbp, rbp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057b0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	al, dil
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057d0

	.globl get_win_size
	.type get_win_size, @function
get_win_size:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	eax, 0x5413
	mov	ecx, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	ioctl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405830

	.globl wrapf
	.type wrapf, @function
wrapf:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	nop	
	test	al, al
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x168], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x170], r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	qword ptr [rbp - 0x190], rsi
	mov	rbp, rbp
	je	.label_256
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	nop	
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	lea	rsi, [rsi]
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	nop	
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	lea	rdi, [rdi]
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm3
	nop	
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_256:
	mov	rax, qword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rcx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	r8, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x28]
	nop	
	lea	r9, [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], r8
	nop	
	mov	r8, r9
	lea	r10, [rbp - 0xe0]
	nop	
	mov	qword ptr [r8 + 0x10], r10
	lea	r10, [rbp + 0x10]
	mov	qword ptr [r8 + 8], r10
	mov	rsp, rsp
	mov	dword ptr [r8 + 4], 0x30
	mov	dword ptr [r8], 8
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, r9
	lea	rdi, [rdi]
	call	vasprintf
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x20]
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x198], rcx
	jge	.label_253
	lea	rdi, [rdi]
	call	xalloc_die
.label_253:
	nop	
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [current_col]]
	jge	.label_254
	mov	eax,  dword ptr [dword ptr [max_col]]
	sub	eax,  dword ptr [dword ptr [current_col]]
	nop	
	cmp	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	jge	.label_255
	lea	rsi, [rsi]
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rsp, rsp
	mov	dword ptr [dword ptr [current_col]],  0
	mov	dword ptr [rbp - 0x19c], eax
	jmp	.label_257
.label_255:
	mov	edi, 0x20
	mov	rsp, rsp
	call	putchar_unlocked
	nop	
	mov	edi,  dword ptr [dword ptr [current_col]]
	lea	rsi, [rsi]
	add	edi, 1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [current_col]],  edi
	mov	dword ptr [rbp - 0x1a0], eax
.label_257:
	lea	rsi, [rsi]
	jmp	.label_254
.label_254:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x1a4], eax
	mov	rbp, rbp
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	mov	ecx,  dword ptr [dword ptr [rip + current_col]]
	add	ecx, eax
	mov	dword ptr [dword ptr [rip + current_col]],  ecx
	mov	rsp, rsp
	add	rsp, 0x1b0
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ad0

	.globl baud_to_value
	.type baud_to_value, @function
baud_to_value:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], 0
.label_259:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:speeds
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rcx, rcx, 0x18
	add	rax, rcx
	cmp	qword ptr [rax], 0
	je	.label_258
	movabs	rax, OFFSET FLAT:speeds
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rdx, rdx, 0x18
	add	rax, rdx
	cmp	ecx, dword ptr [rax + 8]
	jne	.label_260
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:speeds
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	imul	rcx, rcx, 0x18
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_262
.label_260:
	lea	rsi, [rsi]
	jmp	.label_261
.label_261:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_259
.label_258:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
.label_262:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ba0

	.globl strtoul_tcflag_t
	.type strtoul_tcflag_t, @function
strtoul_tcflag_t:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rbp - 0x29], al
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	call	strtoul
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	cmp	dword ptr [rax], 0
	nop	
	jne	.label_263
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x29]
	lea	rdi, [rdi]
	cmp	ecx, edx
	jne	.label_263
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	je	.label_263
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	ecx, eax
	mov	ecx, ecx
	mov	eax, ecx
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_264
.label_263:
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_265
.label_264:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0
.label_265:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c90

	.globl strtoul_cc_t
	.type strtoul_cc_t, @function
strtoul_cc_t:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], al
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	call	strtoul
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_266
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x29]
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_266
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_266
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	movzx	edx, cl
	lea	rsi, [rsi]
	mov	eax, edx
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	je	.label_268
.label_266:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rsi, [rsi]
	jmp	.label_267
.label_268:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	cl, al
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], cl
	nop	
	mov	dword ptr [rbp - 4], 0
.label_267:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d80

	.globl display_changed
	.type display_changed, @function
display_changed:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	esi, 1
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0x24], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	display_speed
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.298
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + 0x10]
	mov	rbp, rbp
	mov	al, 0
	call	wrapf
	mov	edi, 0xa
	call	putchar_unlocked
	nop	
	mov	dword ptr [dword ptr [current_col]],  0
	mov	byte ptr [rbp - 0xd], 1
	mov	dword ptr [rbp - 0xc], 0
	nop	
	mov	dword ptr [rbp - 0x28], eax
.label_280:
	movabs	rax, OFFSET FLAT:control_info
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.250
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	sete	r8b
	xor	r8b, 0xff
	test	r8b, 1
	jne	.label_274
	lea	rdi, [rdi]
	jmp	.label_277
.label_274:
	movabs	rax, OFFSET FLAT:control_info
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	mov	rdx, rax
	add	rdx, rcx
	nop	
	mov	rcx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	movzx	esi, byte ptr [rdx + rcx + 0x11]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	mov	rbp, rbp
	add	rax, rcx
	nop	
	movzx	edi, byte ptr [rax + 8]
	cmp	esi, edi
	jne	.label_281
	jmp	.label_270
.label_281:
	nop	
	movabs	rax, OFFSET FLAT:control_info
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0xc]
	nop	
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	rdi, qword ptr [rax]
	mov	edx, OFFSET FLAT:.str.248
	mov	rsp, rsp
	mov	esi, edx
	call	strcmp
	nop	
	cmp	eax, 0
	jne	.label_278
	jmp	.label_270
.label_278:
	movabs	rax, OFFSET FLAT:control_info
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd], 0
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	lea	rsi, [rsi]
	mov	rdx, rax
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx]
	nop	
	movsxd	rcx, dword ptr [rbp - 0xc]
	imul	rcx, rcx, 0x18
	mov	rsp, rsp
	add	rax, rcx
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	movzx	edi, byte ptr [rcx + rax + 0x11]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rbp, rbp
	call	visible
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.299
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	call	wrapf
.label_270:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_280
.label_277:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xc]
	and	ecx, 2
	cmp	ecx, 0
	nop	
	jne	.label_282
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.300
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + 0x17]
	mov	esi, ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, byte ptr [rax + 0x16]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	al, 0
	call	wrapf
	mov	rsp, rsp
	jmp	.label_272
.label_282:
	nop	
	test	byte ptr [rbp - 0xd], 1
	mov	rsp, rsp
	jne	.label_273
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x34], eax
.label_273:
	nop	
	jmp	.label_272
.label_272:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [current_col]],  0
	mov	byte ptr [rbp - 0xd], 1
	nop	
	mov	dword ptr [rbp - 0xc], 0
.label_283:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	je	.label_285
	movabs	rax, OFFSET FLAT:mode_info
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	shl	rcx, 5
	lea	rsi, [rsi]
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	nop	
	and	edx, 8
	cmp	edx, 0
	je	.label_292
	lea	rdi, [rdi]
	jmp	.label_271
.label_292:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:mode_info
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	nop	
	add	rax, rcx
	mov	edx, dword ptr [rax + 8]
	cmp	edx, dword ptr [rbp - 0x24]
	je	.label_279
	mov	rbp, rbp
	test	byte ptr [rbp - 0xd], 1
	lea	rsi, [rsi]
	jne	.label_287
	mov	rsp, rsp
	mov	edi, 0xa
	mov	rsp, rsp
	call	putchar_unlocked
	mov	dword ptr [dword ptr [current_col]],  0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd], 1
	mov	dword ptr [rbp - 0x38], eax
.label_287:
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	mov	edx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x24], edx
.label_279:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:mode_info
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	shl	rcx, 5
	add	rax, rcx
	nop	
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 8]
	call	mode_type_flag
	nop	
	movabs	rcx, OFFSET FLAT:mode_info
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 5
	add	rcx, rax
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x18], 0
	lea	rsi, [rsi]
	je	.label_284
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	shl	rcx, 5
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_269
.label_284:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	shl	rcx, 5
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x40], rax
.label_269:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_286
	lea	rsi, [rsi]
	jmp	.label_291
.label_286:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.232
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.233
	lea	rsi, [rsi]
	mov	edx, 0x7a2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.display_changed
	lea	rdi, [rdi]
	call	__assert_fail
.label_291:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:mode_info
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx]
	mov	rsp, rsp
	mov	ecx, edx
	nop	
	and	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0xc]
	shl	rsi, 5
	lea	rsi, [rsi]
	add	rax, rsi
	cmp	rcx, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	jne	.label_276
	movabs	rax, OFFSET FLAT:mode_info
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	shl	rcx, 5
	mov	rbp, rbp
	add	rax, rcx
	nop	
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 2
	lea	rdi, [rdi]
	cmp	edx, 0
	je	.label_290
	nop	
	movabs	rdi, OFFSET FLAT:.str_1
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	shl	rcx, 5
	lea	rdi, [rdi]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	al, 0
	mov	rbp, rbp
	call	wrapf
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd], 0
.label_290:
	jmp	.label_275
.label_276:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 5
	mov	rbp, rbp
	cmp	edx, 5
	mov	rbp, rbp
	jne	.label_288
	movabs	rdi, OFFSET FLAT:.str.301
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0xc]
	nop	
	shl	rcx, 5
	lea	rsi, [rsi]
	add	rax, rcx
	nop	
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	wrapf
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd], 0
.label_288:
	lea	rsi, [rsi]
	jmp	.label_275
.label_275:
	jmp	.label_271
.label_271:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_283
.label_285:
	nop	
	test	byte ptr [rbp - 0xd], 1
	mov	rsp, rsp
	jne	.label_289
	mov	edi, 0xa
	nop	
	call	putchar_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
.label_289:
	nop	
	mov	dword ptr [dword ptr [current_col]],  0
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406320

	.globl display_all
	.type display_all, @function
display_all:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	eax, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, eax
	lea	rsi, [rsi]
	call	display_speed
	mov	rsp, rsp
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	display_window_size
	nop	
	movabs	rdi, OFFSET FLAT:.str.298
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	movzx	esi, byte ptr [rsi + 0x10]
	mov	al, 0
	call	wrapf
	mov	edi, 0xa
	mov	rbp, rbp
	call	putchar_unlocked
	nop	
	mov	dword ptr [dword ptr [current_col]],  0
	mov	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
.label_302:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:control_info
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	edx, OFFSET FLAT:.str.250
	lea	rdi, [rdi]
	mov	esi, edx
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	sete	r8b
	mov	rbp, rbp
	xor	r8b, 0xff
	mov	rbp, rbp
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_305
	jmp	.label_308
.label_305:
	movabs	rax, OFFSET FLAT:control_info
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x18
	mov	rsp, rsp
	add	rax, rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	mov	edx, OFFSET FLAT:.str.248
	lea	rsi, [rsi]
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_310
	mov	rsp, rsp
	jmp	.label_309
.label_310:
	movabs	rax, OFFSET FLAT:control_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	imul	rcx, rcx, 0x18
	mov	rdx, rax
	add	rdx, rcx
	nop	
	mov	rsi, qword ptr [rdx]
	movsxd	rcx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x18
	mov	rbp, rbp
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	movzx	edi, byte ptr [rcx + rax + 0x11]
	mov	qword ptr [rbp - 0x38], rsi
	call	visible
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.299
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	nop	
	call	wrapf
.label_309:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_302
.label_308:
	movabs	rdi, OFFSET FLAT:.str.303
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 0x17]
	nop	
	mov	esi, ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 0x16]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	al, 0
	call	wrapf
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [current_col]],  0
	je	.label_307
	nop	
	mov	edi, 0xa
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
.label_307:
	mov	dword ptr [dword ptr [current_col]],  0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_306:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:mode_info
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	shl	rcx, 5
	mov	rsp, rsp
	add	rax, rcx
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	je	.label_304
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	shl	rcx, 5
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 8
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_293
	jmp	.label_294
.label_293:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:mode_info
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	lea	rdi, [rdi]
	add	rax, rcx
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	cmp	edx, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	je	.label_299
	mov	edi, 0xa
	call	putchar_unlocked
	movabs	rcx, OFFSET FLAT:mode_info
	mov	dword ptr [dword ptr [current_col]],  0
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x14]
	shl	rdx, 5
	add	rcx, rdx
	mov	edi, dword ptr [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], edi
	mov	dword ptr [rbp - 0x40], eax
.label_299:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	shl	rcx, 5
	add	rax, rcx
	mov	edi, dword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 8]
	call	mode_type_flag
	movabs	rcx, OFFSET FLAT:mode_info
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x14]
	shl	rax, 5
	add	rcx, rax
	mov	rbp, rbp
	cmp	qword ptr [rcx + 0x18], 0
	je	.label_303
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:mode_info
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_300
.label_303:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	shl	rcx, 5
	mov	rbp, rbp
	add	rax, rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x48], rax
.label_300:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_295
	jmp	.label_301
.label_295:
	movabs	rdi, OFFSET FLAT:.str.232
	movabs	rsi, OFFSET FLAT:.str.233
	mov	rbp, rbp
	mov	edx, 0x7f6
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.display_all
	mov	rbp, rbp
	call	__assert_fail
.label_301:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:mode_info
	mov	rcx, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rcx]
	nop	
	mov	ecx, edx
	and	rcx, qword ptr [rbp - 0x28]
	movsxd	rsi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	shl	rsi, 5
	add	rax, rsi
	cmp	rcx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	jne	.label_297
	nop	
	movabs	rdi, OFFSET FLAT:.str_1
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:mode_info
	movsxd	rcx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	shl	rcx, 5
	nop	
	add	rax, rcx
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	wrapf
	jmp	.label_298
.label_297:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:mode_info
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	shl	rcx, 5
	nop	
	add	rax, rcx
	movsx	edx, byte ptr [rax + 0xc]
	and	edx, 4
	cmp	edx, 0
	je	.label_296
	movabs	rdi, OFFSET FLAT:.str.301
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:mode_info
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	shl	rcx, 5
	nop	
	add	rax, rcx
	nop	
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	wrapf
.label_296:
	jmp	.label_298
.label_298:
	jmp	.label_294
.label_294:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_306
.label_304:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [dword ptr [current_col]],  0
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406800

	.globl display_recoverable
	.type display_recoverable, @function
display_recoverable:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:.str.304
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi]
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 4]
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	r8d, dword ptr [rdi + 0xc]
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	mov	dword ptr [rbp - 0x14], eax
.label_312:
	nop	
	cmp	qword ptr [rbp - 0x10], 0x20
	jae	.label_311
	nop	
	movabs	rdi, OFFSET FLAT:.str.305
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax + 0x11]
	mov	rsp, rsp
	mov	esi, edx
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	nop	
	mov	dword ptr [rbp - 0x18], eax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_312
.label_311:
	mov	edi, 0xa
	call	putchar_unlocked
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068f0

	.globl visible
	.type visible, @function
visible:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	al, dil
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:visible.buf
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], al
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	movzx	edi, byte ptr [rbp - 9]
	cmp	edi, 0
	lea	rdi, [rdi]
	jne	.label_320
	movabs	rax, OFFSET FLAT:.str.302
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_315
.label_320:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	cmp	eax, 0x20
	jl	.label_324
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 9]
	mov	rsp, rsp
	cmp	eax, 0x7f
	jge	.label_321
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, rcx
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx], al
	lea	rdi, [rdi]
	jmp	.label_314
.label_321:
	nop	
	movzx	eax, byte ptr [rbp - 9]
	cmp	eax, 0x7f
	lea	rdi, [rdi]
	jne	.label_316
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5e
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x3f
	lea	rdi, [rdi]
	jmp	.label_319
.label_316:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x4d
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x2d
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 9]
	cmp	edx, 0xa0
	jl	.label_322
	movzx	eax, byte ptr [rbp - 9]
	mov	rbp, rbp
	cmp	eax, 0xff
	nop	
	jge	.label_323
	nop	
	movzx	eax, byte ptr [rbp - 9]
	sub	eax, 0x80
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	add	rsi, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rdx], cl
	mov	rsp, rsp
	jmp	.label_318
.label_323:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x5e
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	byte ptr [rax], 0x3f
.label_318:
	jmp	.label_313
.label_322:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5e
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	sub	edx, 0x80
	mov	rbp, rbp
	add	edx, 0x40
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], sil
.label_313:
	lea	rsi, [rsi]
	jmp	.label_319
.label_319:
	nop	
	jmp	.label_314
.label_314:
	mov	rsp, rsp
	jmp	.label_317
.label_324:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax], 0x5e
	movzx	edx, byte ptr [rbp - 9]
	add	edx, 0x40
	mov	sil, dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], sil
.label_317:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:visible.buf
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx], 0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_315:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b60
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
	.section	.text
	.align	32
	#Procedure 0x406b90
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
	.section	.text
	.align	32
	#Procedure 0x406bc0

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
	je	.label_325
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_326
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_325
.label_326:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_328
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_329
.label_328:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_329:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_325:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_327
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_327:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406cf0

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	nop	
	mov	dword ptr [rbp - 0x18], ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x14]
	nop	
	mov	edx, dword ptr [rbp - 0x18]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 8]
	nop	
	je	.label_332
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_331
.label_332:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_330
.label_331:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 8]
	call	dup2
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	call	close
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	mov	dword ptr [rbp - 0x2c], esi
	call	__errno_location
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
.label_330:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406db0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_335
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_335:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_333
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_337
.label_333:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_337:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_336
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_336
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_334
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_334:
	jmp	.label_336
.label_336:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f30
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_338
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_339
.label_338:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_339
.label_339:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fe0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_340
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_341
.label_340:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_341
.label_341:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407040
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], esi
	je	.label_342
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_343
.label_342:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4070a0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_344
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_345
.label_344:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_345
.label_345:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4071a0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_346
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_346:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x407200

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_347
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_347:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_349
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_348
.label_349:
	call	abort
.label_348:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072a0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], r8
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_350
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_351
.label_350:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_351
.label_351:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4073a0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7b], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7d], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7e], 1
.label_519:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_377
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_382]]
	jmp	rcx
.label_944:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_943:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_389
	jmp	.label_392
.label_392:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_395
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_395:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_389
.label_389:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_404
.label_945:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_404
.label_946:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_415
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_415:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_430
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_452:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_436
	jmp	.label_439
.label_439:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_441
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_441:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_414
.label_414:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_452
.label_436:
	mov	rbp, rbp
	jmp	.label_430
.label_430:
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_404
.label_941:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_940:
	mov	byte ptr [rbp - 0x7b], 1
.label_942:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_467
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_467:
	jmp	.label_470
.label_470:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_472
	jmp	.label_476
.label_476:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_537
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_537:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_472
.label_472:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_404
.label_939:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_404
.label_377:
	call	abort
.label_404:
	mov	qword ptr [rbp - 0x58], 0
.label_469:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_499
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_418
.label_499:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_418:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_515
	mov	rbp, rbp
	jmp	.label_523
.label_515:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_365
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_365
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_365
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_386
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_386
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_547
.label_386:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_547:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_365
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_365
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_368
	jmp	.label_364
.label_368:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_365:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_372
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_383]]
	nop	
	jmp	rcx
.label_949:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_387
	mov	rsp, rsp
	jmp	.label_391
.label_391:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_458
	jmp	.label_364
.label_458:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_397
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_397
	nop	
	jmp	.label_445
.label_445:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_405
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_405:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_413
.label_413:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_419
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_419:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_426
.label_426:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_434
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_434:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_397:
	lea	rsi, [rsi]
	jmp	.label_456
.label_456:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_444
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_444:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_450
.label_450:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_378
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_378
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_378
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_378
	nop	
	jmp	.label_438
.label_438:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_471
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_471:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_477
.label_477:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_482
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_482:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_378
.label_378:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_493
.label_387:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_495
	mov	rbp, rbp
	jmp	.label_427
.label_495:
	jmp	.label_493
.label_493:
	jmp	.label_356
.label_960:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_501
	mov	rbp, rbp
	jmp	.label_507
.label_507:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_509
	jmp	.label_516
.label_501:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_518
	jmp	.label_364
.label_518:
	jmp	.label_380
.label_509:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_428
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_428
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_428
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	lea	rdi, [rdi]
	je	.label_353
	nop	
	jmp	.label_544
.label_544:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_353
	jmp	.label_549
.label_549:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_353
	jmp	.label_352
.label_352:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_353
	jmp	.label_399
.label_399:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_362
	jmp	.label_353
.label_353:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_447
	jmp	.label_364
.label_447:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_375
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_375:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_552
.label_552:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_394
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_394:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_401
.label_401:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_403
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_403:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_412
.label_412:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_504
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_504:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_421
.label_362:
	jmp	.label_421
.label_421:
	jmp	.label_428
.label_428:
	jmp	.label_380
.label_516:
	jmp	.label_380
.label_380:
	jmp	.label_356
.label_950:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_435
.label_951:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_435
.label_955:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_435
.label_953:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_442
.label_956:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_442
.label_952:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_442
.label_954:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_435
.label_961:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_449
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_451
	nop	
	jmp	.label_364
.label_451:
	lea	rsi, [rsi]
	jmp	.label_354
.label_449:
	test	byte ptr [rbp - 0x79], 1
	je	.label_460
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_460
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_460
	jmp	.label_354
.label_460:
	jmp	.label_442
.label_442:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_466
	test	byte ptr [rbp - 0x7b], 1
	je	.label_466
	jmp	.label_364
.label_466:
	mov	rsp, rsp
	jmp	.label_435
.label_435:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_474
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_381
.label_474:
	jmp	.label_356
.label_962:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_479
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_483
	jmp	.label_487
.label_479:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_483
.label_487:
	nop	
	jmp	.label_356
.label_483:
	jmp	.label_492
.label_492:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_369
	lea	rsi, [rsi]
	jmp	.label_356
.label_369:
	nop	
	jmp	.label_498
.label_498:
	mov	byte ptr [rbp - 0x83], 1
.label_957:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_500
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_500
	jmp	.label_364
.label_500:
	lea	rsi, [rsi]
	jmp	.label_356
.label_959:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_506
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_513
	jmp	.label_364
.label_513:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_520
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_520
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_520:
	jmp	.label_526
.label_526:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_529
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_529:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_536
.label_536:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_446
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_446:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_546
.label_546:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_548
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_548:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_506:
	lea	rsi, [rsi]
	jmp	.label_356
.label_958:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_356
.label_372:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_363
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x91], sil
	lea	rsi, [rsi]
	jmp	.label_465
.label_363:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	mov	rsp, rsp
	jne	.label_390
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_390:
	jmp	.label_384
.label_384:
	lea	rdi, [rbp - 0xa4]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xa0]
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rbp, rbp
	jne	.label_416
	jmp	.label_366
.label_416:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_423
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_366
.label_423:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_431
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_454:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	mov	rsp, rsp
	jae	.label_411
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_411:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_502
	jmp	.label_453
.label_502:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_454
.label_453:
	jmp	.label_366
.label_431:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_461
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_461
	mov	qword ptr [rbp - 0xb8], 1
.label_505:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_402
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x130], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_468
	jmp	.label_484
.label_484:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_468
	jmp	.label_490
.label_490:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_468
	jmp	.label_496
.label_496:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_497
	mov	rsp, rsp
	jmp	.label_468
.label_468:
	mov	rsp, rsp
	jmp	.label_364
.label_497:
	jmp	.label_503
.label_503:
	mov	rsp, rsp
	jmp	.label_448
.label_448:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_505
.label_402:
	mov	rbp, rbp
	jmp	.label_461
.label_461:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_517
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_517:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_521
.label_521:
	lea	rsi, [rsi]
	jmp	.label_528
.label_528:
	jmp	.label_530
.label_530:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xa0]
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
	jne	.label_384
.label_366:
	jmp	.label_465
.label_465:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_541
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_514
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_514
.label_541:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_522:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_355
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_355
	jmp	.label_359
.label_359:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_361
	jmp	.label_364
.label_361:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_367
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_367
	lea	rdi, [rdi]
	jmp	.label_373
.label_373:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_376
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_376:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_534
.label_534:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_385
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_385:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_396
.label_396:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_531
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_531:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_367:
	jmp	.label_407
.label_407:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_409
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_409:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_417
.label_417:
	jmp	.label_420
.label_420:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_543
	nop	
	movzx	eax, byte ptr [rbp - 0x7f]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_543:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_400
.label_400:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_437
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_437:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_443
.label_355:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_459
	lea	rdi, [rdi]
	jmp	.label_462
.label_462:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_463
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_463:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_459:
	nop	
	jmp	.label_443
.label_443:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_473
	jmp	.label_478
.label_473:
	lea	rsi, [rsi]
	jmp	.label_489
.label_489:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_481
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_481
	lea	rsi, [rsi]
	jmp	.label_486
.label_486:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_488
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_488:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_494
.label_494:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_406
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_406:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_481:
	nop	
	jmp	.label_508
.label_508:
	mov	rsp, rsp
	jmp	.label_510
.label_510:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_429
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_429:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_522
.label_478:
	mov	rsp, rsp
	jmp	.label_354
.label_514:
	lea	rsi, [rsi]
	jmp	.label_356
.label_356:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_425
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_540
.label_425:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_542
.label_540:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_542
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x7f]
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
	jne	.label_480
.label_542:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_480
	mov	rsp, rsp
	jmp	.label_354
.label_480:
	nop	
	jmp	.label_381
.label_381:
	jmp	.label_388
.label_388:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_358
	jmp	.label_364
.label_358:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_370
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_370
	lea	rdi, [rdi]
	jmp	.label_371
.label_371:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_374
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_374:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_379
.label_379:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_539
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_539:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_393
.label_393:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_398
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_398:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_370:
	jmp	.label_408
.label_408:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_410
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_410:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_512
.label_512:
	nop	
	jmp	.label_354
.label_354:
	jmp	.label_422
.label_422:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_424
	test	byte ptr [rbp - 0x82], 1
	jne	.label_424
	lea	rdi, [rdi]
	jmp	.label_432
.label_432:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_433
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_433:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_440
.label_440:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_464
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_464:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_424:
	jmp	.label_527
.label_527:
	nop	
	jmp	.label_455
.label_455:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_457
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_457:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_550
	mov	byte ptr [rbp - 0x7e], 0
.label_550:
	mov	rbp, rbp
	jmp	.label_427
.label_427:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_469
.label_523:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_475
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_475
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_475
	nop	
	jmp	.label_364
.label_475:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_485
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_485
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_485
	test	byte ptr [rbp - 0x7e], 1
	je	.label_491
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_357
.label_491:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_511
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_511
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_519
.label_511:
	jmp	.label_524
.label_524:
	mov	rbp, rbp
	jmp	.label_485
.label_485:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_525
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_525
	mov	rbp, rbp
	jmp	.label_532
.label_532:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_533
	lea	rdi, [rdi]
	jmp	.label_535
.label_535:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_538
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_538:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_545
.label_545:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_532
.label_533:
	jmp	.label_525
.label_525:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_551
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_551:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_357
.label_364:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_360
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_360
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_360:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_357:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x408cc0
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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
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
	.section	.text
	.align	32
	#Procedure 0x408d30

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_553
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_554
.label_553:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_554
.label_554:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
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
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
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
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_555
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_555:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f00
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
.label_560:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_559
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
	jmp	.label_560
.label_559:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_558
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_556]],  rax
.label_558:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_557
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_557:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409010

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
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409060

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_562
	call	abort
.label_562:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_565
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	jge	.label_566
	call	xalloc_die
.label_566:
	test	byte ptr [rbp - 0x31], 1
	je	.label_567
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_563
.label_567:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_563:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	lea	rdi, [rdi]
	je	.label_561
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_556]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_561:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
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
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_565:
	movsxd	rax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	movsxd	rax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x20]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	ja	.label_568
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	je	.label_564
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_564:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_568:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409390

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
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4093d0
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
	.section	.text
	.align	32
	#Procedure 0x409400
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quotearg_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409440

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094a0

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
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_569
	call	abort
.label_569:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409540

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	nop	
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095b0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095f0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409630

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0x64], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4096e0

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
	.section	.text
	.align	32
	#Procedure 0x409720

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
	.section	.text
	.align	32
	#Procedure 0x409750
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
	.section	.text
	.align	32
	#Procedure 0x409790

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x48]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409880

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
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4098d0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x409970
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
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quotearg_n_custom
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099c0
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
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a20

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a60
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
	.section	.text
	.align	32
	#Procedure 0x409aa0

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
	.section	.text
	.align	32
	#Procedure 0x409ae0

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
	.section	.text
	.align	32
	#Procedure 0x409b20

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_573
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_571
.label_573:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_572
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_571
.label_572:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_570
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_571
.label_570:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_571:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c60

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_578
	movabs	rsi, OFFSET FLAT:.str_5
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	jmp	.label_576
.label_578:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_576:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdi
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
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, r8b
	nop	
	call	fprintf
	nop	
	mov	ecx, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	mov	rbp, rbp
	ja	.label_577
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_575]]
	jmp	rcx
.label_885:
	jmp	.label_574
.label_886:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_574
.label_887:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	jmp	.label_574
.label_888:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x94], eax
	lea	rsi, [rsi]
	jmp	.label_574
.label_889:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_574
.label_890:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_574
.label_891:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_574
.label_892:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	jmp	.label_574
.label_893:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_574
.label_894:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
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
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_574
.label_577:
	movabs	rdi, OFFSET FLAT:.str.13_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
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
	mov	dword ptr [rbp - 0x15c], eax
.label_574:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a3d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_579:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_580
	mov	rbp, rbp
	jmp	.label_581
.label_581:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_579
.label_580:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a480

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
.label_588:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_587
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_583
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_584
.label_583:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_584:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], dl
.label_587:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_586
	mov	rsp, rsp
	jmp	.label_582
.label_586:
	jmp	.label_585
.label_585:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_588
.label_582:
	nop	
	lea	r8, [rbp - 0x80]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x30]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a5e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1a0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x130], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	nop	
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	lea	rsi, [rsi]
	je	.label_589
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_589:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	nop	
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a790
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
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a840
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
	jae	.label_590
	mov	rbp, rbp
	call	xalloc_die
.label_590:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a8a0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_591
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_591
	lea	rdi, [rdi]
	call	xalloc_die
.label_591:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a900
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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_592
	mov	rsp, rsp
	call	xalloc_die
.label_592:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xrealloc
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a980

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_593
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_593
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_595
.label_593:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_594
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_594
	lea	rsi, [rsi]
	call	xalloc_die
.label_594:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_595:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa30

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_596
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_598
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_598:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_600
	call	xalloc_die
.label_600:
	lea	rsi, [rsi]
	jmp	.label_599
.label_596:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_597
	call	xalloc_die
.label_597:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_599:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab60

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
	.section	.text
	.align	32
	#Procedure 0x40ab90
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
	.section	.text
	.align	32
	#Procedure 0x40abd0
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
	.section	.text
	.align	32
	#Procedure 0x40ac20
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_601
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_602
.label_601:
	lea	rsi, [rsi]
	call	xalloc_die
.label_602:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac90

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ace0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad40

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40ada0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	xor	r10d, r10d
	mov	rbp, rbp
	mov	r11d, r10d
	lea	rbx, [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	nop	
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	mov	rbp, rbp
	call	xstrtoumax
	nop	
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	jne	.label_614
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_606
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_609
.label_606:
	mov	dword ptr [rbp - 0x40], 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_611
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	jmp	.label_607
.label_611:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x22
.label_607:
	jmp	.label_609
.label_609:
	nop	
	jmp	.label_610
.label_614:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_613
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_604
.label_613:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_608
	call	__errno_location
	mov	dword ptr [rax], 0
.label_608:
	jmp	.label_604
.label_604:
	jmp	.label_610
.label_610:
	nop	
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_612
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_615
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	jmp	.label_605
.label_615:
	mov	rbp, rbp
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_605
.label_605:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_616
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_603
.label_616:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], ecx
.label_603:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_3
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	call	error
.label_612:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40af90
	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	eax, 0xa
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	esi, eax
	nop	
	mov	dword ptr [rsp], r10d
	lea	rsi, [rsi]
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b000

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xf0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x1c]
	nop	
	jg	.label_617
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_617
	lea	rsi, [rsi]
	jmp	.label_641
.label_617:
	nop	
	movabs	rdi, OFFSET FLAT:.str_6
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
.label_641:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_654
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_658
.label_654:
	lea	rax, [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_658
.label_658:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtol
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jne	.label_675
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_618
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_618
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_618
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 1
	mov	rbp, rbp
	jmp	.label_631
.label_618:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 4
	jmp	.label_619
.label_631:
	mov	rsp, rsp
	jmp	.label_648
.label_675:
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0
	je	.label_649
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	nop	
	je	.label_655
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_619
.label_655:
	mov	dword ptr [rbp - 0x4c], 1
.label_649:
	lea	rdi, [rdi]
	jmp	.label_648
.label_648:
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jne	.label_628
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	mov	rsp, rsp
	jmp	.label_619
.label_628:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_638
	mov	dword ptr [rbp - 0x50], 0x400
	mov	dword ptr [rbp - 0x54], 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_630
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	jmp	.label_619
.label_630:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	edx, 0x45
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], ecx
	mov	dword ptr [rbp - 0x68], edx
	je	.label_620
	lea	rdi, [rdi]
	jmp	.label_651
.label_651:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_620
	mov	rbp, rbp
	jmp	.label_659
.label_659:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x70], eax
	je	.label_620
	nop	
	jmp	.label_664
.label_664:
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x74], eax
	je	.label_620
	lea	rsi, [rsi]
	jmp	.label_669
.label_669:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x78], eax
	je	.label_620
	jmp	.label_674
.label_674:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_620
	jmp	.label_679
.label_679:
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, -0x59
	lea	rdi, [rdi]
	sub	eax, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	nop	
	jb	.label_620
	jmp	.label_625
.label_625:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x67
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_620
	nop	
	jmp	.label_644
.label_644:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	je	.label_620
	jmp	.label_629
.label_629:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	sub	eax, 0x6d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], eax
	lea	rsi, [rsi]
	je	.label_620
	mov	rsp, rsp
	jmp	.label_676
.label_676:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x90], eax
	mov	rbp, rbp
	jne	.label_622
	jmp	.label_620
.label_620:
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_646
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], edx
	lea	rdi, [rdi]
	je	.label_668
	lea	rsi, [rsi]
	jmp	.label_677
.label_677:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x44
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_668
	jmp	.label_623
.label_623:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	sub	eax, 0x69
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	jne	.label_626
	jmp	.label_634
.label_634:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	ecx, 0x42
	jne	.label_636
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	eax, 2
	mov	dword ptr [rbp - 0x54], eax
.label_636:
	jmp	.label_626
.label_668:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], 0x3e8
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x54], eax
.label_626:
	mov	rsp, rsp
	jmp	.label_646
.label_646:
	lea	rdi, [rdi]
	jmp	.label_622
.label_622:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	sub	edx, 0x42
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], ecx
	nop	
	mov	dword ptr [rbp - 0xa8], edx
	je	.label_657
	jmp	.label_666
.label_666:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x45
	mov	dword ptr [rbp - 0xac], eax
	lea	rdi, [rdi]
	je	.label_640
	jmp	.label_672
.label_672:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_632
	jmp	.label_678
.label_678:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xb4], eax
	nop	
	je	.label_671
	jmp	.label_624
.label_624:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	sub	eax, 0x4d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb8], eax
	mov	rsp, rsp
	je	.label_627
	jmp	.label_635
.label_635:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	sub	eax, 0x50
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
	mov	rsp, rsp
	je	.label_637
	jmp	.label_633
.label_633:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	sub	eax, 0x54
	mov	dword ptr [rbp - 0xc0], eax
	mov	rbp, rbp
	je	.label_642
	jmp	.label_650
.label_650:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x59
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_653
	mov	rbp, rbp
	jmp	.label_660
.label_660:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_661
	mov	rsp, rsp
	jmp	.label_665
.label_665:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_667
	nop	
	jmp	.label_673
.label_673:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_643
	jmp	.label_670
.label_670:
	nop	
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	sub	eax, 0x67
	nop	
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	je	.label_632
	lea	rdi, [rdi]
	jmp	.label_662
.label_662:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_671
	lea	rsi, [rsi]
	jmp	.label_647
.label_647:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xdc], eax
	lea	rsi, [rsi]
	je	.label_627
	lea	rsi, [rsi]
	jmp	.label_645
.label_645:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_642
	lea	rdi, [rdi]
	jmp	.label_652
.label_652:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x77
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], eax
	mov	rsp, rsp
	je	.label_656
	lea	rdi, [rdi]
	jmp	.label_663
.label_667:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	lea	rdi, [rdi]
	call	bkm_scale
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_621
.label_657:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	lea	rsi, [rsi]
	call	bkm_scale
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	jmp	.label_621
.label_643:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_621
.label_640:
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_621
.label_632:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_621
.label_671:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	jmp	.label_621
.label_627:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	jmp	.label_621
.label_637:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	lea	rdi, [rdi]
	jmp	.label_621
.label_642:
	lea	rdi, [rbp - 0x48]
	mov	rbp, rbp
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], eax
	nop	
	jmp	.label_621
.label_656:
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, 2
	lea	rsi, [rsi]
	call	bkm_scale
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	nop	
	jmp	.label_621
.label_653:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	bkm_scale_by_power
	nop	
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	jmp	.label_621
.label_661:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x50]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	lea	rdi, [rdi]
	jmp	.label_621
.label_663:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	mov	rsp, rsp
	jmp	.label_619
.label_621:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x58]
	or	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx], 0
	nop	
	je	.label_639
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_639:
	jmp	.label_638
.label_638:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_619:
	nop	
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0xf0
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b8d0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	movsxd	rcx, dword ptr [rbp - 0x14]
	cqo	
	idiv	rcx
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	jge	.label_680
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 1
	jmp	.label_681
.label_680:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	cqo	
	lea	rsi, [rsi]
	idiv	rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	jge	.label_682
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_681
.label_682:
	movsxd	rax, dword ptr [rbp - 0x14]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_681:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b9b0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0
.label_684:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_683
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	lea	rsi, [rsi]
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_684
.label_683:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ba20

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_695
	cmp	dword ptr [rbp - 0x1c], 0x24
	lea	rdi, [rdi]
	jg	.label_695
	jmp	.label_717
.label_695:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_6
	movabs	rsi, OFFSET FLAT:.str.1_4
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_717:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_734
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_733
.label_734:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_733
.label_733:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_702:
	nop	
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x2000
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_690
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	lea	rsi, [rsi]
	jmp	.label_702
.label_690:
	movzx	eax, byte ptr [rbp - 0x59]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_707
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_687
.label_707:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jne	.label_724
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_736
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_736
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_736
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_749
.label_736:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 4
	jmp	.label_687
.label_749:
	lea	rdi, [rdi]
	jmp	.label_689
.label_724:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_697
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_704
	nop	
	mov	dword ptr [rbp - 4], 4
	jmp	.label_687
.label_704:
	mov	dword ptr [rbp - 0x4c], 1
.label_697:
	jmp	.label_689
.label_689:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_700
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_687
.label_700:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_723
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	jne	.label_740
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	jmp	.label_687
.label_740:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], edx
	nop	
	je	.label_686
	jmp	.label_694
.label_694:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_686
	nop	
	jmp	.label_705
.label_705:
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	je	.label_686
	nop	
	jmp	.label_708
.label_708:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_686
	lea	rsi, [rsi]
	jmp	.label_718
.label_718:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rsi, [rsi]
	je	.label_686
	jmp	.label_728
.label_728:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_686
	jmp	.label_720
.label_720:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	jb	.label_686
	mov	rsp, rsp
	jmp	.label_742
.label_742:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_686
	jmp	.label_748
.label_748:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	je	.label_686
	mov	rsp, rsp
	jmp	.label_692
.label_692:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	nop	
	je	.label_686
	jmp	.label_696
.label_696:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_699
	jmp	.label_686
.label_686:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_715
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb0], edx
	mov	rsp, rsp
	je	.label_725
	lea	rsi, [rsi]
	jmp	.label_732
.label_732:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_725
	jmp	.label_716
.label_716:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	jne	.label_709
	lea	rsi, [rsi]
	jmp	.label_746
.label_746:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_747
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_747:
	jmp	.label_709
.label_725:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_709:
	jmp	.label_715
.label_715:
	nop	
	jmp	.label_699
.label_699:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	mov	rbp, rbp
	je	.label_701
	jmp	.label_710
.label_710:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_712
	jmp	.label_719
.label_719:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_730
	jmp	.label_726
.label_726:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	je	.label_729
	nop	
	jmp	.label_737
.label_737:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_738
	nop	
	jmp	.label_745
.label_745:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_706
	mov	rsp, rsp
	jmp	.label_750
.label_750:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	je	.label_685
	jmp	.label_703
.label_703:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_739
	mov	rbp, rbp
	jmp	.label_698
.label_698:
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_722
	jmp	.label_711
.label_711:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_713
	jmp	.label_743
.label_743:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_721
	jmp	.label_727
.label_727:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	je	.label_730
	jmp	.label_735
.label_735:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_729
	jmp	.label_691
.label_691:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_738
	jmp	.label_714
.label_714:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_685
	jmp	.label_688
.label_688:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_741
	jmp	.label_744
.label_713:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	nop	
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_693
.label_701:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_693
.label_721:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_693
.label_712:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_693
.label_730:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_693
.label_729:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_693
.label_738:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_693
.label_706:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_693
.label_685:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_693
.label_741:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_693
.label_739:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_693
.label_722:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_693
.label_744:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	jmp	.label_687
.label_693:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	je	.label_731
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x4c], eax
.label_731:
	jmp	.label_723
.label_723:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_687:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c310

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi]
	jae	.label_751
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_752
.label_751:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_752:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c390

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0
.label_753:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_754
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_753
.label_754:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c410

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
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	nop	
	mov	dword ptr [rbp - 0x19c], esi
	nop	
	je	.label_760
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	nop	
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	lea	rsi, [rsi]
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x90], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x80], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rsp, rsp
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_760:
	mov	rax, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rdx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	rsi, [rsi]
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1a0], edi
	mov	rsp, rsp
	je	.label_766
	nop	
	jmp	.label_774
.label_774:
	nop	
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_778
	jmp	.label_781
.label_766:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_783
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	lea	rsi, [rsi]
	jmp	.label_775
.label_783:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_775:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_762
.label_778:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	ecx, 0x28
	nop	
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	mov	rsp, rsp
	ja	.label_755
	mov	eax, dword ptr [rbp - 0x1cc]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	mov	rsp, rsp
	jmp	.label_767
.label_755:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_767:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_762
.label_781:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x1dc], eax
	lea	rdi, [rdi]
	je	.label_759
	nop	
	jmp	.label_769
.label_769:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e0], eax
	mov	rsp, rsp
	je	.label_761
	jmp	.label_779
.label_779:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e4], eax
	mov	rsp, rsp
	je	.label_759
	nop	
	jmp	.label_785
.label_785:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x1e8], eax
	lea	rdi, [rdi]
	je	.label_761
	nop	
	jmp	.label_764
.label_764:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1ec], eax
	nop	
	je	.label_759
	lea	rsi, [rsi]
	jmp	.label_771
.label_771:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	mov	rsp, rsp
	je	.label_759
	lea	rsi, [rsi]
	jmp	.label_780
.label_780:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_761
	mov	rsp, rsp
	jmp	.label_756
.label_756:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_759
	jmp	.label_765
.label_765:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x1fc], eax
	nop	
	je	.label_761
	lea	rsi, [rsi]
	jmp	.label_770
.label_770:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x200], eax
	lea	rdi, [rdi]
	je	.label_759
	jmp	.label_782
.label_782:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_761
	mov	rsp, rsp
	jmp	.label_757
.label_757:
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x208], eax
	mov	rsp, rsp
	je	.label_759
	lea	rsi, [rsi]
	jmp	.label_758
.label_758:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_759
	nop	
	jmp	.label_776
.label_776:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	lea	rdi, [rdi]
	jne	.label_777
	lea	rdi, [rdi]
	jmp	.label_761
.label_761:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_768
.label_759:
	nop	
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x21c], ecx
	lea	rsi, [rsi]
	ja	.label_763
	mov	eax, dword ptr [rbp - 0x21c]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x228], rcx
	mov	rbp, rbp
	jmp	.label_772
.label_763:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x228], rdx
.label_772:
	nop	
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x30], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x30]
	nop	
	mov	al, 0
	call	fcntl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_768
.label_777:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x230], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], ecx
	lea	rdi, [rdi]
	ja	.label_773
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x234]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	mov	rsp, rsp
	jmp	.label_784
.label_773:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x240], rdx
.label_784:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_768:
	jmp	.label_762
.label_762:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ca90

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
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cae0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_791
	lea	rsi, [rsi]
	mov	esi, 0x406
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	dword ptr [rbp - 0xc], eax
	nop	
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_793
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_792
.label_793:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_786
.label_792:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rbp, rbp
	jl	.label_790
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_790:
	mov	rbp, rbp
	jmp	.label_786
.label_786:
	jmp	.label_787
.label_791:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_787:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_789
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_789
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_788
	mov	esi, 2
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	or	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_794
.label_788:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_794:
	jmp	.label_789
.label_789:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cc60

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
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_795
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_795:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_796
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_796
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_796
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_797
.label_796:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_797:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cd50

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jne	.label_798
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_800
.label_798:
	mov	rbp, rbp
	jmp	.label_799
.label_799:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_801
	jmp	.label_802
.label_801:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_799
.label_802:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_800:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ce40

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
	mov	byte ptr [rbp - 0x11], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	nop	
	test	byte ptr [rbp - 0x12], 1
	lea	rsi, [rsi]
	jne	.label_805
	test	byte ptr [rbp - 0x13], 1
	je	.label_804
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_805
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_804
.label_805:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_803
	call	__errno_location
	mov	dword ptr [rax], 0
.label_803:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_806
.label_804:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_806:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cf20

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
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_808
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_7
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_809
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_807
.label_809:
	mov	byte ptr [rbp - 5], 0
.label_807:
	jmp	.label_808
.label_808:
	mov	al, byte ptr [rbp - 5]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cfc0

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
	jne	.label_811
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_811:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_810
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_810:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d040

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_815
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_813
.label_815:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_812
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
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
	je	.label_814
.label_812:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_814
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_814:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_816
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_816:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_813:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d160

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_817
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_818
.label_817:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_819
.label_818:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_819:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d1d0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_820
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_820:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d230

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_821
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_821
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_821
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_822
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_823
.label_822:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_823
.label_821:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_823:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d340

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
	ja	.label_824
	jmp	.label_826
.label_826:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_825
.label_824:
	lea	rsi, [rsi]
	jmp	.label_825
.label_825:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d3a0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_827
	jmp	.label_830
.label_830:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_827
	jmp	.label_828
.label_828:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_829
	jmp	.label_827
.label_827:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_831
.label_829:
	mov	byte ptr [rbp - 1], 0
.label_831:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d410
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_832
	jmp	.label_835
.label_835:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_833
	jmp	.label_832
.label_832:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_834
.label_833:
	mov	byte ptr [rbp - 1], 0
.label_834:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d460
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_836
	jmp	.label_838
.label_838:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_837
.label_836:
	mov	byte ptr [rbp - 1], 0
.label_837:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d490
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_839
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_839:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d4c0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_840
	jmp	.label_842
.label_842:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_843
	jmp	.label_840
.label_840:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_841
.label_843:
	mov	byte ptr [rbp - 1], 0
.label_841:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d510
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_844
	jmp	.label_846
.label_846:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_845
.label_844:
	mov	byte ptr [rbp - 1], 0
.label_845:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d550
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_847
	jmp	.label_849
.label_849:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_848
.label_847:
	mov	byte ptr [rbp - 1], 0
.label_848:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d590
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_850
	jmp	.label_852
.label_852:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_851
.label_850:
	mov	byte ptr [rbp - 1], 0
.label_851:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d5d0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_853
	jmp	.label_855
.label_855:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_854
.label_853:
	mov	byte ptr [rbp - 1], 0
.label_854:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d610
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x21
	sub	eax, 0xf
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_856
	jmp	.label_859
.label_859:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_856
	jmp	.label_860
.label_860:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_856
	jmp	.label_858
.label_858:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_861
	jmp	.label_856
.label_856:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_857
.label_861:
	mov	byte ptr [rbp - 1], 0
.label_857:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d690
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_862
	jmp	.label_864
.label_864:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_865
	jmp	.label_862
.label_862:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_863
.label_865:
	mov	byte ptr [rbp - 1], 0
.label_863:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d6e0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_866
	jmp	.label_868
.label_868:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_867
.label_866:
	mov	byte ptr [rbp - 1], 0
.label_867:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d720
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_869
	jmp	.label_872
.label_872:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_869
	jmp	.label_870
.label_870:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_871
	jmp	.label_869
.label_869:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_873
.label_871:
	mov	byte ptr [rbp - 1], 0
.label_873:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d790

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_874
	jmp	.label_876
.label_876:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_875
.label_874:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_875:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d7d0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_877
	jmp	.label_879
.label_879:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_878
.label_877:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_878:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
