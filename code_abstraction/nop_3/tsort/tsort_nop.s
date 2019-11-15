	.section	.text
	.align	16
	#Procedure 0x401510

	.globl usage
	.type usage, @function
usage:
	nop	
	push	rbp
	nop	
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	mov	ebp, edi
	lea	rsi, [rsi]
	test	ebp, ebp
	jne	.label_7
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	nop	
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, 5
	xor	esi, esi
	mov	rbp, rbp
	call	setlocale
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 3
	mov	rsp, rsp
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_8
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_8:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.5
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401780

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x58
	mov	rbp, rbp
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	ebp, edi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	set_program_name
	mov	edi, 6
	nop	
	mov	esi, OFFSET FLAT:.str_1
	nop	
	call	setlocale
	nop	
	mov	edi, OFFSET FLAT:.str.7
	mov	esi, OFFSET FLAT:.str.8
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.7
	mov	rbp, rbp
	call	textdomain
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:close_stdout
	mov	rbp, rbp
	call	atexit
	mov	rbp, rbp
	mov	r8,  qword ptr [word ptr [rip + Version]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], 0
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.10
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:usage
	mov	edx, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.17
	mov	r9d, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edi, ebp
	mov	rsi, rbx
	call	parse_gnu_standard_options_only
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	ecx, ebp
	mov	rsp, rsp
	sub	ecx, eax
	cmp	ecx, 2
	jge	.label_26
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.12
	cmp	eax, ebp
	mov	rbp, rbp
	je	.label_27
	mov	r15, qword ptr [rbx + rax*8]
.label_27:
	mov	qword ptr [rsp + 0x28], r15
	mov	rsp, rsp
	movzx	eax, byte ptr [r15]
	nop	
	mov	ebx, 0x2d
	lea	rsi, [rsi]
	sub	ebx, eax
	nop	
	jne	.label_35
	movzx	ebx, byte ptr [r15 + 1]
	nop	
	neg	ebx
.label_35:
	mov	dword ptr [rsp + 0x3c], ebx
	mov	rbp, rbp
	mov	edi, 0x38
	lea	rsi, [rsi]
	call	xmalloc
	nop	
	mov	r12, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r12
	test	ebx, ebx
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r12 + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x30], 0
	movups	xmmword ptr [r12 + 0xc], xmm0
	movups	xmmword ptr [r12], xmm0
	lea	rsi, [rsi]
	je	.label_49
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.29
	mov	rdi, r15
	call	freopen_safer
	test	rax, rax
	je	.label_65
.label_49:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	esi, 2
	call	fadvise
	lea	rbp, [rsp + 0x18]
	mov	rbp, rbp
	mov	rdi, rbp
	call	init_tokenbuffer
	nop	
	jmp	.label_16
.label_34:
	lea	rsi, [rsi]
	inc	qword ptr [r13 + 0x20]
	nop	
	mov	edi, 0x10
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x30], rax
.label_16:
	mov	rsp, rsp
	xor	eax, eax
.label_14:
	mov	rbp, rbp
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 3
	mov	rbp, rbp
	mov	rcx, rbp
	nop	
	call	readtoken
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_37
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_40
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_44
	mov	r14, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [r12 + 0x10]
	test	rbp, rbp
	je	.label_47
	mov	qword ptr [rsp + 0x50], rbx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdi, r14
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	je	.label_56
	mov	qword ptr [rsp + 0x48], r14
	mov	r14, rbp
	mov	rsp, rsp
	mov	r13, r12
	nop	word ptr [rax + rax]
.label_23:
	lea	r15, [rbp + 8]
	lea	rsi, [rsi]
	lea	r12, [rbp + 0x10]
	test	eax, eax
	mov	rcx, r12
	mov	rsp, rsp
	cmovs	rcx, r15
	mov	rbp, rbp
	mov	rbx, qword ptr [rcx]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_17
	cmp	dword ptr [rbx + 0x18], 0
	nop	
	cmovne	r13, rbp
	mov	rsp, rsp
	cmovne	r14, rbx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	nop	
	mov	rbp, rbx
	mov	r12, rbx
	jne	.label_23
	mov	rbp, rbp
	jmp	.label_28
.label_47:
	mov	qword ptr [rsp + 0x50], rbx
	mov	edi, 0x38
	lea	rdi, [rdi]
	call	xmalloc
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	mov	eax, 0
	je	.label_32
	mov	rdi, r14
	call	xstrdup
.label_32:
	mov	qword ptr [rbx], rax
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 8], xmm0
	mov	dword ptr [rbx + 0x18], 0
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], 0
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], rbx
	lea	rsi, [rsi]
	mov	r12, rbx
	jmp	.label_28
.label_56:
	mov	rsp, rsp
	mov	r12, rbp
	nop	
	jmp	.label_28
.label_17:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x30], eax
	nop	
	mov	edi, 0x38
	call	xmalloc
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rbp, rbp
	mov	eax, 0
	je	.label_58
	mov	rdi, rbp
	call	xstrdup
.label_58:
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 8], xmm0
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x18], 0
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], 0
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x30], 0
	mov	rsp, rsp
	js	.label_64
	mov	qword ptr [r12], rbx
	nop	
	jmp	.label_19
.label_64:
	mov	qword ptr [r15], rbx
.label_19:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r13
	mov	r12, rbx
	mov	rsi, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	strcmp
	mov	r13d, eax
	lea	rsi, [rsi]
	test	r13d, r13d
	je	.label_63
	mov	rsp, rsp
	lea	rax, [r14 + 0x10]
	lea	rcx, [r14 + 8]
	lea	rsi, [rsi]
	test	r13d, r13d
	cmovs	rax, rcx
	nop	
	mov	r15, qword ptr [rax]
	cmp	r15, r12
	nop	
	mov	rbx, r15
	lea	rsi, [rsi]
	je	.label_50
	nop	dword ptr [rax + rax]
.label_41:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	je	.label_46
	mov	rbp, rbp
	js	.label_60
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x18], 1
	add	rbx, 0x10
	jmp	.label_51
	nop	
.label_60:
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x18], 0xffffffff
	nop	
	add	rbx, 8
.label_51:
	mov	rbx, qword ptr [rbx]
	mov	rsp, rsp
	cmp	rbx, r12
	jne	.label_41
.label_50:
	sar	r13d, 0x1f
	or	r13d, 1
	mov	rbp, rbp
	mov	eax, dword ptr [r14 + 0x18]
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	je	.label_59
	mov	ecx, r13d
	mov	rsp, rsp
	neg	ecx
	cmp	eax, ecx
	jne	.label_42
.label_59:
	lea	rsi, [rsi]
	add	eax, r13d
	nop	
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_28
.label_42:
	nop	
	cmp	dword ptr [r15 + 0x18], r13d
	jne	.label_68
	lea	rsi, [rsi]
	test	r13d, r13d
	js	.label_10
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r15 + 8], r14
	mov	rbp, rbp
	jmp	.label_12
.label_68:
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	js	.label_20
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rdx
	mov	qword ptr [rax + 0x10], r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x10], rdx
	mov	qword ptr [rax + 8], r14
	jmp	.label_22
.label_10:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14 + 8], rax
	nop	
	mov	qword ptr [r15 + 0x10], r14
.label_12:
	mov	rcx, qword ptr [rsp + 0x30]
	mov	dword ptr [r15 + 0x18], 0
	nop	
	mov	dword ptr [r14 + 0x18], 0
	mov	rsp, rsp
	mov	rax, r15
	jmp	.label_36
.label_20:
	mov	rax, qword ptr [r15 + 0x10]
	nop	
	mov	rdx, qword ptr [rax + 8]
	mov	qword ptr [r15 + 0x10], rdx
	mov	qword ptr [rax + 8], r15
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rdx
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], r14
.label_22:
	nop	
	mov	dword ptr [r14 + 0x18], 0
	mov	dword ptr [r15 + 0x18], 0
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0x18]
	cmp	edx, r13d
	mov	rsp, rsp
	jne	.label_54
	mov	rbp, rbp
	mov	dword ptr [r14 + 0x18], ecx
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	jmp	.label_48
.label_54:
	lea	rdi, [rdi]
	cmp	edx, ecx
	mov	rcx, qword ptr [rsp + 0x30]
	jne	.label_48
	nop	
	mov	dword ptr [r15 + 0x18], r13d
.label_48:
	nop	
	mov	dword ptr [rax + 0x18], 0
.label_36:
	cmp	r14, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	je	.label_55
	mov	qword ptr [rcx + 8], rax
	nop	
	jmp	.label_28
.label_55:
	mov	qword ptr [rcx + 0x10], rax
	nop	dword ptr [rax + rax]
.label_28:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x50]
	test	r14, r14
	nop	
	mov	rax, r12
	mov	r15, qword ptr [rsp + 0x28]
	nop	
	mov	r13, r12
	mov	r12, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	lea	rbx, [rsp + 0x18]
	mov	rbp, rbx
	mov	rsp, rsp
	je	.label_14
	mov	rdi, qword ptr [r14]
	mov	rsi, qword ptr [r13]
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	je	.label_14
	lea	rdi, [rdi]
	jmp	.label_34
.label_37:
	test	rbx, rbx
	jne	.label_39
	mov	r14, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	xor	ebp, ebp
	test	r14, r14
	nop	
	je	.label_21
	mov	esi, OFFSET FLAT:count_items
	mov	rdi, r14
	call	recurse_tree
.label_21:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + n_strings]]
	mov	rsp, rsp
	test	r14, r14
	mov	rsp, rsp
	je	.label_30
	nop	word ptr [rax + rax]
.label_38:
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_45
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:scan_zeros
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	recurse_tree
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + head]]
	lea	rdi, [rdi]
	jmp	.label_62
	nop	word ptr cs:[rax + rax]
.label_18:
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [word ptr [rip + head]],  rax
.label_62:
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_67
	mov	rdi, qword ptr [rax]
	mov	rbx, qword ptr [rax + 0x30]
	call	puts
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + head]]
	mov	qword ptr [rax], 0
	dec	qword ptr [word ptr [rip + n_strings]]
	mov	rbp, rbp
	jmp	.label_13
	nop	dword ptr [rax]
.label_29:
	mov	rbx, qword ptr [rbx + 8]
.label_13:
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_18
	nop	
	mov	rcx, qword ptr [rbx]
	mov	rsp, rsp
	dec	qword ptr [rcx + 0x20]
	mov	rsp, rsp
	jne	.label_29
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + zeros]]
	mov	qword ptr [rdx + 0x28], rcx
	mov	qword ptr [word ptr [rip + zeros]],  rcx
	jmp	.label_29
	nop	word ptr cs:[rax + rax]
.label_67:
	cmp	qword ptr [word ptr [rip + n_strings]],  0
	mov	eax, 0
	je	.label_38
	mov	rbp, rbp
	jmp	.label_43
	nop	dword ptr [rax + rax]
.label_30:
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_45
	nop	
	mov	rcx,  qword ptr [word ptr [rip + head]]
	mov	rbp, rbp
	test	rcx, rcx
	je	.label_52
	nop	word ptr cs:[rax + rax]
.label_24:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rbx, qword ptr [rcx + 0x30]
	nop	
	call	puts
	mov	rax,  qword ptr [word ptr [rip + head]]
	mov	qword ptr [rax], 0
	dec	qword ptr [word ptr [rip + n_strings]]
	nop	
	jmp	.label_61
	nop	dword ptr [rax + rax]
.label_11:
	mov	rbx, qword ptr [rbx + 8]
.label_61:
	test	rbx, rbx
	je	.label_66
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	dec	qword ptr [rcx + 0x20]
	jne	.label_11
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + zeros]]
	mov	qword ptr [rdx + 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + zeros]],  rcx
	jmp	.label_11
	nop	word ptr cs:[rax + rax]
.label_66:
	mov	rcx, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + head]],  rcx
	test	rcx, rcx
	nop	
	jne	.label_24
	mov	rax,  qword ptr [word ptr [rip + n_strings]]
.label_52:
	test	rax, rax
	mov	eax, 0
	je	.label_30
.label_43:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	test	r14, r14
	je	.label_53
	nop	dword ptr [rax + rax]
.label_57:
	nop	
	mov	esi, OFFSET FLAT:detect_loop
	lea	rsi, [rsi]
	mov	rdi, r14
	call	recurse_tree
	mov	ebp, 1
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + loop]],  0
	lea	rsi, [rsi]
	jne	.label_57
	jmp	.label_21
.label_53:
	mov	rsp, rsp
	mov	ebp, 1
	cmp	qword ptr [word ptr [rip + loop]],  0
	nop	
	je	.label_21
	nop	word ptr cs:[rax + rax]
.label_9:
	jmp	.label_9
.label_45:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	test	eax, eax
	jne	.label_15
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 0x58
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_46:
	mov	edi, OFFSET FLAT:.str.39
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.33
	nop	
	mov	edx, 0xb6
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.search_item
	nop	
	call	__assert_fail
.label_40:
	mov	edi, OFFSET FLAT:.str.32
	mov	esi, OFFSET FLAT:.str.33
	nop	
	mov	edx, 0x1cd
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.tsort
	nop	
	call	__assert_fail
.label_26:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.11
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbp
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_44:
	mov	edi, OFFSET FLAT:.str.37
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 0x84
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.search_item
	lea	rsi, [rsi]
	call	__assert_fail
.label_39:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
.label_15:
	mov	rbp, r15
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x3c], 0
	mov	rsp, rsp
	jne	.label_25
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	jmp	.label_33
.label_65:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r15
	mov	rsp, rsp
	jmp	.label_31
.label_25:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
.label_31:
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
.label_33:
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	nop	
	mov	esi, ebx
	lea	rsi, [rsi]
	call	error
.label_63:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.38
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 0xa8
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.search_item
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x4021d0

	.globl count_items
	.type count_items, @function
count_items:
	mov	rbp, rbp
	inc	qword ptr [word ptr [rip + n_strings]]
	nop	
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4021e0

	.globl scan_zeros
	.type scan_zeros, @function
scan_zeros:
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_70
	nop	
	cmp	qword ptr [rdi], 0
	nop	
	je	.label_70
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + head]],  0
	je	.label_69
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + zeros]]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x28], rdi
	mov	rsp, rsp
	jmp	.label_71
.label_69:
	mov	qword ptr [word ptr [rip + head]],  rdi
.label_71:
	mov	qword ptr [word ptr [rip + zeros]],  rdi
.label_70:
	lea	rsi, [rsi]
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402230

	.globl detect_loop
	.type detect_loop, @function
detect_loop:
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	r14, rdi
	nop	
	cmp	qword ptr [r14 + 0x20], 0
	mov	rbp, rbp
	je	.label_78
	nop	
	mov	r15,  qword ptr [word ptr [rip + loop]]
	nop	
	test	r15, r15
	je	.label_76
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_78
	lea	rbx, [r14 + 0x30]
	nop	word ptr cs:[rax + rax]
.label_77:
	mov	rbp, rbp
	cmp	qword ptr [rax], r15
	mov	rbp, rbp
	je	.label_72
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	add	rbx, 8
	mov	rax, qword ptr [rbx]
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_77
	jmp	.label_78
.label_72:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_74
	nop	word ptr [rax + rax]
.label_80:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r15, qword ptr [r15 + 0x28]
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	lea	rsi, [rsi]
	call	error
	mov	rax,  qword ptr [word ptr [rip + loop]]
	lea	rsi, [rsi]
	cmp	rax, r14
	je	.label_79
	mov	rbp, rbp
	mov	qword ptr [rax + 0x28], 0
	mov	qword ptr [word ptr [rip + loop]],  r15
	test	r15, r15
	lea	rsi, [rsi]
	mov	al, 1
	jne	.label_80
	mov	rsp, rsp
	jmp	.label_73
.label_74:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x28], r15
.label_76:
	mov	qword ptr [word ptr [rip + loop]],  r14
.label_78:
	xor	eax, eax
.label_73:
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	ret	
.label_79:
	mov	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	dec	qword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbx], rax
	mov	rcx,  qword ptr [word ptr [rip + loop]]
	mov	al, 1
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_73
	nop	dword ptr [rax]
.label_75:
	mov	rdx, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], 0
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + loop]],  rdx
	mov	rbp, rbp
	test	rdx, rdx
	mov	rcx, rdx
	mov	rbp, rbp
	jne	.label_75
	mov	rbp, rbp
	jmp	.label_73
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402380

	.globl recurse_tree
	.type recurse_tree, @function
recurse_tree:
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_81
	mov	rsi, r14
	call	recurse_tree
	mov	rsp, rsp
	mov	bpl, 1
	test	al, al
	jne	.label_82
	jmp	.label_84
.label_81:
	cmp	qword ptr [rbx + 0x10], 0
	je	.label_85
.label_84:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	r14
	nop	
	mov	bpl, 1
	test	al, al
	jne	.label_82
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_83
	mov	rsp, rsp
	mov	rsi, r14
	call	recurse_tree
	lea	rdi, [rdi]
	test	al, al
	jne	.label_82
.label_83:
	xor	ebp, ebp
	nop	
	jmp	.label_82
.label_85:
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	r14
	lea	rsi, [rsi]
	mov	bpl, al
.label_82:
	lea	rsi, [rsi]
	mov	al, bpl
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x402420
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
	#Procedure 0x402430
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402440

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
	je	.label_89
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_86
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_86
.label_89:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_88
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_86:
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
	jne	.label_87
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_0
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
.label_88:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_87:
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
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402540
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402550

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_90
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
.label_90:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402580

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	mov	rbp, rbp
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	nop	
	call	fileno
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_101
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	je	.label_97
	mov	rbp, rbp
	cmp	eax, 2
	je	.label_92
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, 2
	mov	rsp, rsp
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_92:
	lea	rdi, [rdi]
	mov	r15b, r12b
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 1
	mov	rbp, rbp
	call	dup2
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	setne	r12b
	jmp	.label_93
.label_101:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_91
.label_97:
	nop	
	xor	r15d, r15d
.label_93:
	nop	
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_96
	nop	
	mov	edi, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	nop	
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_96
	lea	rsi, [rsi]
	mov	r13b, 1
	lea	rdi, [rdi]
	jmp	.label_94
.label_96:
	nop	
	test	r12b, r12b
	je	.label_95
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_3
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_94
.label_95:
	lea	rdi, [rdi]
	test	r15b, r15b
	lea	rdi, [rdi]
	je	.label_91
	mov	edi, OFFSET FLAT:.str_3
	xor	esi, esi
	xor	eax, eax
	call	open
	nop	
	cmp	eax, 2
	jne	.label_94
.label_91:
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_102
.label_94:
	xor	r14d, r14d
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_102
	mov	edi, eax
	call	close
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_102:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rsi, [rsi]
	test	r15b, r15b
	nop	
	je	.label_99
	nop	
	mov	edi, 2
	call	close
.label_99:
	mov	rbp, rbp
	test	r12b, r12b
	je	.label_103
	mov	edi, 1
	nop	
	call	close
.label_103:
	test	r13b, r13b
	je	.label_100
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	close
.label_100:
	nop	
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_98
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
.label_98:
	mov	rax, r14
	add	rsp, 8
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x402750
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	lea	rdi, [rdi]
	test	al, al
	je	.label_104
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_104:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_106
	mov	edi, 2
	mov	edx, OFFSET FLAT:.str_4
	nop	
	mov	ecx, OFFSET FLAT:long_options
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rbp, rbp
	call	getopt_long
	mov	rsp, rsp
	cmp	eax, 0x68
	je	.label_105
	mov	rbp, rbp
	cmp	eax, 0x76
	mov	rbp, rbp
	jne	.label_106
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0x100]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, r12
	nop	
	mov	rdx, r15
	mov	rsp, rsp
	mov	rcx, r14
	nop	
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_105:
	xor	edi, edi
	call	rbx
.label_106:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402890

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xc8
	lea	rsi, [rsi]
	mov	r14, r8
	nop	
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	rbp, rbp
	test	al, al
	je	.label_108
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_108:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_1
	mov	edx, OFFSET FLAT:.str_4
	test	r9b, r9b
	cmovne	rdx, rax
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_111
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	cmp	eax, 0x68
	je	.label_107
	mov	rsp, rsp
	cmp	eax, 0x76
	nop	
	je	.label_109
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rdi, [rdi]
	jmp	.label_110
.label_107:
	lea	rdi, [rdi]
	xor	edi, edi
.label_110:
	call	rcx
.label_111:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xc8
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_109:
	lea	rdi, [rdi]
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rsi, [rsi]
	lea	rax, [rsp + 0xf8]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	lea	r8, [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	mov	rbp, rbp
	call	version_etc_va
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4029e0

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
	je	.label_112
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
	jl	.label_114
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_114
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
	jne	.label_113
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_113:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_114:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_112:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_5
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
	#Procedure 0x402ad0
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
	#Procedure 0x402b20
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
	#Procedure 0x402b40
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
	#Procedure 0x402b60
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
	#Procedure 0x402bd0
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
	#Procedure 0x402bf0
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
	je	.label_115
	test	rdx, rdx
	nop	
	je	.label_115
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_115:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c30
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
	#Procedure 0x402ce0

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
.label_214:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_231
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_181]]
.label_385:
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
.label_386:
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
	jne	.label_140
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_140
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_169:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_162
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_162:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_169
.label_140:
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
	jmp	.label_178
.label_378:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_178
.label_381:
	lea	rsi, [rsi]
	mov	al, 1
.label_379:
	lea	rsi, [rsi]
	mov	dl, 1
.label_382:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_199
	mov	rbp, rbp
	mov	cl, al
.label_199:
	mov	al, cl
.label_380:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_204
	test	rbp, rbp
	je	.label_209
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_183
.label_204:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_183
.label_383:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_216
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_220
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_121
.label_384:
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
	jmp	.label_178
.label_209:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_183:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_178
.label_216:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_121
.label_220:
	nop	
	mov	r14d, 1
.label_121:
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
.label_178:
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
	jmp	.label_142
	nop	dword ptr [rax]
.label_136:
	mov	rsp, rsp
	inc	r15
.label_142:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_194
	cmp	r15, r10
	jne	.label_195
	jmp	.label_129
	nop	dword ptr [rax]
.label_194:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_197
.label_195:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_201
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_205
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_205
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
.label_205:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_229
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_147
	nop	dword ptr [rax]
.label_201:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_147
	nop	word ptr cs:[rax + rax]
.label_229:
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
	jne	.label_139
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
	je	.label_147
	jmp	.label_123
.label_139:
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
.label_147:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_175
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_177]]
.label_395:
	test	r15, r15
	jne	.label_141
	jmp	.label_185
.label_399:
	xor	eax, eax
	cmp	r10, -1
	je	.label_188
	test	r15, r15
	jne	.label_134
	nop	
	cmp	r10, 1
	je	.label_185
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_131
.label_388:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_196
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_123
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_206
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_206
	cmp	r14, rbp
	jae	.label_208
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_208:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_170
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_170:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_219
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_219:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_206:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_227
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_227:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_235
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_240
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_242
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_120
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_120:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_154
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_154:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_131
.label_389:
	mov	bl, 0x62
	nop	
	jmp	.label_145
.label_390:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_132
.label_391:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_145
.label_392:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_145
.label_393:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_132
.label_396:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_159
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_165
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
	jae	.label_171
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_171:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_187
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_187:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_241
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_241:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_159:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_131
.label_397:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_203
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_141
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_141
	nop	
	jmp	.label_213
.label_398:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_215
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_218
	jmp	.label_221
.label_175:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_223
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
	jmp	.label_238
.label_188:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_118
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_118
.label_185:
	mov	dl, 1
.label_394:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_127
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_131
.label_196:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_136
	jmp	.label_141
.label_215:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_132
.label_218:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_148
.label_132:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_152
.label_145:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_131
	jmp	.label_158
.label_223:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_164
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_164:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_176
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_117:
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
	je	.label_157
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_153
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_125
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_161
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_232:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_225
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_228
.label_225:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_232
.label_161:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_237
	mov	rbp, rbp
	xor	r13d, r13d
.label_237:
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
	je	.label_117
	jmp	.label_124
	nop	
.label_176:
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
	je	.label_150
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_153
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_157
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_166
	xor	r13d, r13d
.label_166:
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
	je	.label_176
	lea	rsi, [rsi]
	jmp	.label_124
.label_118:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_131
.label_203:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_141
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_141
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_141
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_198
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_202
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_144
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_212
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_212:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_217
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_217:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_143
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_143:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_135
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_135:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_131
.label_141:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_131:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_116
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_119
	nop	
	jmp	.label_126
	nop	dword ptr [rax + rax]
.label_116:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_126
.label_119:
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
	jne	.label_133
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_244
	nop	word ptr cs:[rax + rax]
.label_126:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_244:
	mov	bl, r12b
	je	.label_148
	jmp	.label_158
.label_133:
	mov	bl, r12b
.label_158:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_123
	cmp	r9d, 2
	jne	.label_163
	mov	al, dil
	and	al, 1
	jne	.label_163
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_167
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_167:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_174
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_174:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_179
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_179:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_163:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_184
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_184:
	mov	rbp, rbp
	inc	r14
	jmp	.label_191
.label_134:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_131
.label_235:
	xor	r13d, r13d
	jmp	.label_131
.label_240:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_131
.label_242:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_131
.label_153:
	xor	r13d, r13d
.label_150:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_124
.label_157:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_210
	lea	rax, [r11 + r15]
.label_224:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_211
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_224
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_124
.label_210:
	xor	r13d, r13d
	jmp	.label_124
.label_211:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_124
.label_125:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_124:
	mov	rbp, rbp
	mov	rbx, r10
.label_238:
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
	ja	.label_128
	test	cl, cl
	je	.label_128
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_131
.label_128:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_226
	nop	dword ptr [rax]
.label_130:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_226:
	mov	rsp, rsp
	test	cl, cl
	je	.label_149
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_151
	cmp	r14, rbp
	jae	.label_155
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_155:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_151:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_243
	nop	dword ptr [rax + rax]
.label_149:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_172
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_160
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_160
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_180
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_180:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_168
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_168:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_190
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_190:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_160:
	cmp	r14, rbp
	jae	.label_233
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_233:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_138
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_138:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_173
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_173:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_243:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_148
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_146
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_146
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_234
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_234:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_192
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_192:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_146:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_130
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_130
	nop	word ptr cs:[rax + rax]
.label_148:
	test	dil, 1
	je	.label_137
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_137
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_122
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_122:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_156
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_156:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_137:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_191:
	cmp	r14, rbp
	jae	.label_186
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_186:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_136
.label_198:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_131
.label_202:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_131
	nop	word ptr [rax + rax]
.label_129:
	nop	
	mov	rcx, r15
.label_197:
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
	je	.label_182
	mov	rsp, rsp
	or	al, dl
	je	.label_189
.label_182:
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
	je	.label_193
	mov	rsp, rsp
	or	al, dl
	jne	.label_193
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_207
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_193
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
	je	.label_214
.label_193:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_222
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_222
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_222
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_239:
	cmp	r14, rbp
	jae	.label_236
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_236:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_239
.label_222:
	cmp	r14, rbp
	jae	.label_230
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_230
.label_127:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_123
.label_228:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_123
.label_172:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_123
.label_189:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_123
.label_152:
	nop	
	mov	r9d, 2
.label_123:
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
.label_200:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_230:
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
.label_207:
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
	jmp	.label_200
.label_165:
	mov	r9d, 2
	jmp	.label_123
.label_221:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_123
.label_213:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_123
.label_144:
	mov	r9d, 5
	nop	
	jmp	.label_123
.label_231:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404180
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
	#Procedure 0x4042c0
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
	je	.label_245
	mov	qword ptr [rax], rbx
.label_245:
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
	#Procedure 0x404410
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_246
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_248:
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
	jl	.label_248
.label_246:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_249
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_250]], OFFSET FLAT:slot0
.label_249:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_247
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_247:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4044e0

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
	js	.label_251
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_256
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_254
.label_256:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_257
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
	jne	.label_253
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_253:
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
.label_254:
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
	ja	.label_252
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
	je	.label_255
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_255:
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
.label_252:
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
.label_251:
	lea	rdi, [rdi]
	call	abort
.label_257:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x404750
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404760
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
	#Procedure 0x404790
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
	#Procedure 0x4047c0
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
	je	.label_258
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
.label_258:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404850
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
	je	.label_259
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
.label_259:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048f0
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
	je	.label_260
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
.label_260:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404980
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
	je	.label_261
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
.label_261:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4049f0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_262]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
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
	#Procedure 0x404a90
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_262]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
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
	#Procedure 0x404b30

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_262]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
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
	#Procedure 0x404ba0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_262]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
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
	#Procedure 0x404c10

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
	je	.label_265
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
.label_265:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404cf0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_262]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_266
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_266
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
.label_266:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404d80
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_262]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_267
	test	rdx, rdx
	je	.label_267
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
.label_267:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e10
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_262]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_268
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_268
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
.label_268:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404eb0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_262]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_269
	test	rsi, rsi
	je	.label_269
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
.label_269:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f50
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f60
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
	#Procedure 0x404f80
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
	#Procedure 0x404fa0

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
	#Procedure 0x404fd0

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
	jne	.label_272
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_270
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_271
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_271
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_271
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_271
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_271
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_271
	nop	
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_272
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_272
.label_270:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_271
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_271
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_271
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_271
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_271
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_271
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_273
.label_271:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_272:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_273:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_272
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_272
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405140

	.globl init_tokenbuffer
	.type init_tokenbuffer, @function
init_tokenbuffer:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405150

	.globl readtoken
	.type readtoken, @function
readtoken:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r14, rcx
	nop	
	mov	r15, rdi
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_283
	xor	eax, eax
	test	dl, 1
	mov	rbp, rbp
	je	.label_275
	movzx	ecx, byte ptr [rsi]
	lea	rdi, [rdi]
	mov	eax, 1
	mov	edi, 1
	mov	rbp, rbp
	shl	rdi, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rdi
.label_275:
	mov	rsp, rsp
	cmp	rdx, 1
	je	.label_283
	mov	rsp, rsp
	sub	rdx, rax
	lea	rsi, [rsi]
	lea	rax, [rax + rsi + 1]
	nop	dword ptr [rax]
.label_276:
	movzx	ecx, byte ptr [rax - 1]
	lea	rsi, [rsi]
	mov	esi, 1
	shl	rsi, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rsi
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	shl	rsi, cl
	shr	rcx, 6
	or	qword ptr [rsp + rcx*8 + 0x10], rsi
	mov	rbp, rbp
	add	rax, 2
	nop	
	add	rdx, -2
	jne	.label_276
.label_283:
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jae	.label_278
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	mov	rsp, rsp
	movzx	ebx, byte ptr [rax]
.label_288:
	mov	rsp, rsp
	movsxd	rax, ebx
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	bt	rax, rbx
	jae	.label_289
	mov	rsp, rsp
	mov	rbp, -1
	nop	word ptr [rax + rax]
.label_277:
	mov	rax, qword ptr [r15 + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_282
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_280:
	movsxd	rax, ebx
	lea	rdi, [rdi]
	shr	rax, 6
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	lea	rdi, [rdi]
	bt	rax, rbx
	jb	.label_277
	jmp	.label_289
.label_282:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	test	ebx, ebx
	nop	
	jns	.label_280
	lea	rdi, [rdi]
	jmp	.label_274
.label_289:
	test	ebx, ebx
	lea	rdi, [rdi]
	js	.label_286
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r14
	mov	r13, qword ptr [r14]
	mov	rsp, rsp
	mov	rdx, qword ptr [r14 + 8]
	xor	r14d, r14d
	xor	r12d, r12d
	jmp	.label_287
	nop	
.label_292:
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 8], rcx
	mov	rsp, rsp
	movzx	ebx, byte ptr [rax]
	lea	rdi, [rdi]
	xor	r14d, r14d
.label_287:
	mov	rbp, r12
	cmp	rbp, r13
	jne	.label_291
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_290
	movabs	rax, 0x5555555555555554
	cmp	rbp, rax
	jae	.label_281
	nop	
	mov	r13, rbp
	shr	r13, 1
	mov	rbp, rbp
	inc	r13
	mov	rbp, rbp
	add	r13, rbp
	jmp	.label_285
.label_290:
	lea	rdi, [rdi]
	test	rbp, rbp
	nop	
	mov	r13, rbp
	mov	eax, 0x80
	lea	rsi, [rsi]
	cmove	r13, rax
	lea	rdi, [rdi]
	test	r13, r13
	nop	
	js	.label_284
.label_285:
	mov	rdi, rdx
	mov	rsi, r13
	lea	rsi, [rsi]
	call	xrealloc
	mov	rdx, rax
.label_291:
	test	r14b, 1
	jne	.label_279
	lea	rsi, [rsi]
	movsxd	rax, ebx
	mov	rsp, rsp
	shr	rax, 6
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + rax*8 + 0x10]
	mov	rbp, rbp
	bt	rax, rbx
	jb	.label_279
	mov	rbp, rbp
	lea	r12, [rbp + 1]
	mov	rbp, rbp
	mov	byte ptr [rdx + rbp], bl
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	jb	.label_292
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	mov	rbx, rdx
	call	__uflow
	mov	rbp, rbp
	mov	rdx, rbx
	mov	ebx, eax
	mov	r14d, ebx
	shr	r14d, 0x1f
	test	ebx, ebx
	jns	.label_287
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_287
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	jmp	.label_274
.label_279:
	mov	byte ptr [rdx + rbp], 0
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 8], rdx
	mov	qword ptr [rax], r13
	nop	
	jmp	.label_274
.label_286:
	mov	rbp, -1
.label_274:
	lea	rdi, [rdi]
	mov	rax, rbp
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
.label_278:
	lea	rsi, [rsi]
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	mov	rbp, rbp
	mov	rbp, -1
	lea	rdi, [rdi]
	test	ebx, ebx
	jns	.label_288
	lea	rdi, [rdi]
	jmp	.label_274
.label_281:
	call	xalloc_die
.label_284:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405460
	.globl readtokens
	.type readtokens, @function
readtokens:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x20], r9
	mov	qword ptr [rsp + 0x38], r8
	nop	
	mov	r13, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	rsp, rsp
	test	rsi, rsi
	lea	rax, [rsi + 1]
	nop	
	mov	r15d, 0x40
	lea	rsi, [rsi]
	cmovne	r15, rax
	mov	rax, r15
	lea	rsi, [rsi]
	shr	rax, 0x3c
	mov	rbp, rbp
	jne	.label_294
	lea	rsi, [rsi]
	lea	rbx, [r15*8]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rbp
	mov	rbp, rax
	mov	rdi, rbx
	call	xmalloc
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	xor	r14d, r14d
	nop	
	jmp	.label_299
	nop	dword ptr [rax]
.label_298:
	mov	rsp, rsp
	mov	rdi, rbx
	call	xmalloc
	nop	
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rax + r14*8], r12
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, rbp
	mov	rdx, rbx
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	qword ptr [rax + r14*8], rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	inc	r14
.label_299:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, r13
	lea	rcx, [rsp]
	mov	rsp, rsp
	call	readtoken
	mov	r12, rax
	cmp	r14, r15
	jae	.label_293
	mov	qword ptr [rsp + 0x28], rbp
	jmp	.label_301
	nop	word ptr cs:[rax + rax]
.label_293:
	mov	rbx, r13
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_302
	movabs	rax, 0xaaaaaaaaaaaaaaa
	lea	rsi, [rsi]
	cmp	r15, rax
	jae	.label_294
	mov	rax, r15
	mov	rbp, rbp
	shr	rax, 1
	lea	rsi, [rsi]
	lea	rcx, [r15 + rax]
	lea	r15, [r15 + rax + 1]
	lea	rsi, [rsi]
	lea	r13, [rcx*8 + 8]
	mov	rdi, rbp
	mov	rsi, r13
	nop	
	call	xrealloc
	mov	rcx, rax
	movabs	rax, 0xfffffffffffffff
	cmp	r15, rax
	jbe	.label_295
	lea	rsi, [rsi]
	jmp	.label_294
.label_302:
	lea	rsi, [rsi]
	test	r15, r15
	mov	eax, 0x10
	lea	rsi, [rsi]
	cmove	r15, rax
	lea	rsi, [rsi]
	movabs	rax, 0xfffffffffffffff
	cmp	r15, rax
	ja	.label_300
	lea	rsi, [rsi]
	lea	r13, [r15*8]
	mov	rdi, rbp
	mov	rsi, r13
	mov	rbp, rbp
	call	xrealloc
	lea	rsi, [rsi]
	mov	rcx, rax
.label_295:
	mov	qword ptr [rsp + 0x28], rcx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r13
	call	xrealloc
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsi]
	mov	r13, rbx
.label_301:
	cmp	r12, -1
	lea	rdi, [rdi]
	je	.label_296
	lea	rsi, [rsi]
	mov	rbx, r12
	mov	rbp, rbp
	inc	rbx
	lea	rdi, [rdi]
	jns	.label_298
.label_294:
	mov	rbp, rbp
	call	xalloc_die
.label_296:
	mov	rbp, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp + r14*8], 0
	mov	rbx, qword ptr [rsp + 0x30]
	mov	qword ptr [rbx + r14*8], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	je	.label_303
	mov	qword ptr [rax], rbx
	lea	rsi, [rsi]
	jmp	.label_297
.label_303:
	nop	
	mov	rdi, rbx
	call	free
.label_297:
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 0x48
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	nop	
	ret	
.label_300:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4056f0

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
	je	.label_311
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_6
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_313
.label_311:
	mov	edx, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_313:
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
	ja	.label_309
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_306]]
.label_410:
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
.label_309:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_305
.label_411:
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
.label_412:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6
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
.label_413:
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
	jmp	.label_310
.label_414:
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
	jmp	.label_308
.label_415:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
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
	jmp	.label_307
.label_416:
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
.label_307:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_308:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_310:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_304
.label_418:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_305:
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
	jmp	.label_312
.label_417:
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
.label_312:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_304:
	mov	rbp, rbp
	call	__fprintf_chk
.label_409:
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
	#Procedure 0x405ae0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_314:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_314
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b10

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_318:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_315
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_316
	nop	word ptr cs:[rax + rax]
.label_315:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_316:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_317
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_318
.label_317:
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
	#Procedure 0x405ba0
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_319
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
.label_319:
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
.label_321:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_320
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_322
	nop	dword ptr [rax + rax]
.label_320:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_322:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_323
	inc	r9
	cmp	r9, 0xa
	jb	.label_321
.label_323:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ce0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_0
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
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
	#Procedure 0x405d70
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
	jb	.label_324
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_325
	test	rax, rax
	je	.label_324
.label_325:
	nop	
	pop	rbx
	ret	
.label_324:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405dc0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_326
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_327
.label_326:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_327:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405df0
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
	jb	.label_329
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_328
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_328
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_328:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_330
	test	rax, rax
	je	.label_329
.label_330:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_329:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e70

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_331
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_331
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_331:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_332
	test	rax, rax
	nop	
	je	.label_333
.label_332:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_333:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ec0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_334
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_338
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_337
.label_334:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_340
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_340:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_335
.label_337:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_336
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_336
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_336:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_339
	test	rax, rax
	mov	rbp, rbp
	je	.label_338
.label_339:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_338:
	call	xalloc_die
.label_335:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fa0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_342
	test	rax, rax
	mov	rbp, rbp
	je	.label_341
.label_342:
	pop	rbx
	ret	
.label_341:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405fc0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_343
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_346
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_347
	call	free
	xor	eax, eax
	jmp	.label_344
.label_343:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_345
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_347:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_344
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_345
.label_344:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_345:
	mov	rbp, rbp
	call	xalloc_die
.label_346:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406050
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
	je	.label_348
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_349
.label_348:
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
.label_349:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060b0
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
	jb	.label_350
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_350
	pop	rcx
	ret	
.label_350:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4060e0

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
	je	.label_352
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_351
.label_352:
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
.label_351:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406140

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
	je	.label_353
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_354
.label_353:
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
.label_354:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4061a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4061f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_355
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_356
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
	je	.label_356
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
.label_355:
	mov	ecx, 1
.label_356:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406260

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
	js	.label_357
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_359
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
	je	.label_357
.label_359:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_357
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_358
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_358:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_357:
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
	#Procedure 0x406310

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_360
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_360
	test	byte ptr [rbx + 1], 1
	je	.label_360
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_360:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406350

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	call	freopen
	lea	rsi, [rsi]
	mov	rbx, rax
	test	r15, r15
	mov	rsp, rsp
	je	.label_361
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_361
	mov	rdi, rbx
	mov	rsp, rsp
	call	fileno
	mov	ebp, eax
	mov	rbp, rbp
	mov	edi, ebp
	lea	rdi, [rdi]
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_361
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 9
	jne	.label_361
	nop	
	mov	edi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	mov	rsp, rsp
	je	.label_362
	mov	edi, r12d
	nop	
	mov	esi, ebp
	call	dup2
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	mov	edi, r12d
	call	close
	nop	
	test	ebp, ebp
	js	.label_361
.label_362:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	freopen
.label_361:
	mov	rbp, rbp
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406430

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
	jne	.label_363
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_363
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_364
.label_363:
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
.label_364:
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
	je	.label_365
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_365:
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
	#Procedure 0x4064e0

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
	je	.label_366
	nop	
	cmp	r15, -2
	jb	.label_366
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_366
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_366:
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
	#Procedure 0x406570

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
	jne	.label_367
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_368
	test	cl, cl
	mov	rsp, rsp
	jne	.label_368
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_368
.label_367:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_368
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_368:
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
	#Procedure 0x406600

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
	je	.label_370
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_369
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_371
.label_369:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_370
.label_371:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_370:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406650

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
	mov	ecx, OFFSET FLAT:.str_1
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_372
	nop	
	mov	rax, rcx
.label_372:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x406690

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