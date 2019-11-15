	.section	.text
	.align	16
	#Procedure 0x401490
	.globl usage
	.type usage, @function
usage:

	mov	rbp, rbp
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	mov	rsp, rsp
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.17
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.33
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.34
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_7
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.35
	mov	rsp, rsp
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strncmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_7
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_7:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.34
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.19
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.19
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.39
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	nop	
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rbp, rbp
	mov	edi, ebp
	nop	
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018f0

	.globl main
	.type main, @function
main:
	push	r14
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, rsi
	nop	
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	call	set_program_name
	lea	rdi, [rdi]
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.21
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22
	nop	
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.21
	mov	rbp, rbp
	call	textdomain
	mov	dword ptr [dword ptr [rip + exit_failure]],  2
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [word ptr [rip + argv]],  r14
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + argc]],  ebx
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  1
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	cmp	ebx, 2
	nop	
	jl	.label_10
	lea	rdi, [rdi]
	dec	ebx
	mov	rbp, rbp
	mov	edi, ebx
	call	posixtest
	mov	ecx,  dword ptr [dword ptr [rip + pos]]
	cmp	ecx,  dword ptr [dword ptr [rip + argc]]
	nop	
	jne	.label_9
	lea	rdi, [rdi]
	movzx	eax, al
	xor	eax, 1
.label_10:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_9:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.23
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	nop	
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a00

	.globl posixtest
	.type posixtest, @function
posixtest:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	eax, [rdi - 1]
	nop	
	cmp	eax, 3
	ja	.label_11
	jmp	qword ptr [word ptr [+ (rax * 8) + label_14]]
.label_495:
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	lea	ecx, [rax + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	setne	bpl
	mov	rbp, rbp
	jmp	.label_17
.label_497:
	call	three_arguments
	nop	
	mov	bpl, al
	lea	rsi, [rsi]
	jmp	.label_17
.label_11:
	nop	
	test	edi, edi
	jle	.label_27
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	lea	rsi, [rsi]
	jmp	.label_12
.label_496:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdx, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rdx]
	cmp	esi, 0x2d
	mov	rsp, rsp
	je	.label_29
	movzx	esi, sil
	mov	rbp, rbp
	cmp	esi, 0x21
	jne	.label_19
	cmp	byte ptr [rdx + 1], 0
	mov	rbp, rbp
	jne	.label_19
	lea	edx, [rax + 2]
	nop	
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rax, qword ptr [rcx + rax*8 + 8]
	cmp	byte ptr [rax], 0
	sete	bpl
	jmp	.label_17
.label_498:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + rcx*8]
	movzx	edi, byte ptr [rsi]
	cmp	edi, 0x28
	lea	rsi, [rsi]
	je	.label_26
	movzx	ecx, dil
	mov	rsp, rsp
	cmp	ecx, 0x21
	lea	rsi, [rsi]
	jne	.label_12
	mov	rsp, rsp
	cmp	byte ptr [rsi + 1], 0
	nop	
	jne	.label_12
	inc	eax
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + pos]],  eax
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	lea	rdi, [rdi]
	jge	.label_18
	mov	rbp, rbp
	call	three_arguments
	mov	bpl, al
	xor	bpl, 1
	nop	
	jmp	.label_17
.label_29:
	cmp	byte ptr [rdx + 1], 0
	nop	
	je	.label_19
	nop	
	cmp	byte ptr [rdx + 2], 0
	jne	.label_19
	call	unary_operator
	lea	rdi, [rdi]
	mov	bpl, al
	lea	rsi, [rsi]
	jmp	.label_17
.label_26:
	nop	
	cmp	byte ptr [rsi + 1], 0
	lea	rdi, [rdi]
	jne	.label_12
	mov	rsi, qword ptr [rdx + rcx*8 + 0x18]
	lea	rdi, [rdi]
	movzx	edi, byte ptr [rsi]
	cmp	edi, 0x29
	lea	rdi, [rdi]
	jne	.label_12
	cmp	byte ptr [rsi + 1], 0
	mov	rsp, rsp
	je	.label_15
.label_12:
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_20
	xor	ebp, ebp
	jmp	.label_22
	nop	dword ptr [rax]
.label_25:
	mov	rbp, rbp
	inc	eax
	mov	dword ptr [dword ptr [rip + pos]],  eax
.label_22:
	lea	rsi, [rsi]
	call	term
	mov	rbp, rbp
	mov	bl, al
	mov	rsp, rsp
	jmp	.label_28
	nop	dword ptr [rax]
.label_21:
	inc	eax
	mov	dword ptr [dword ptr [rip + pos]],  eax
	mov	rbp, rbp
	call	term
	mov	rbp, rbp
	and	bl, al
.label_28:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	mov	ecx,  dword ptr [dword ptr [rip + argc]]
	cmp	eax, ecx
	jge	.label_13
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rsi,  qword ptr [word ptr [rip + argv]]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	rsp, rsp
	movzx	esi, byte ptr [rdx]
	mov	rsp, rsp
	cmp	esi, 0x2d
	jne	.label_13
	nop	
	movzx	esi, byte ptr [rdx + 1]
	cmp	esi, 0x61
	mov	rbp, rbp
	jne	.label_13
	nop	
	cmp	byte ptr [rdx + 2], 0
	je	.label_21
	nop	dword ptr [rax + rax]
.label_13:
	mov	rbp, rbp
	or	bpl, bl
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_23
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx]
	mov	rbp, rbp
	cmp	edx, 0x2d
	jne	.label_23
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x6f
	jne	.label_23
	mov	rbp, rbp
	cmp	byte ptr [rcx + 2], 0
	lea	rdi, [rdi]
	je	.label_25
.label_23:
	and	bpl, 1
.label_17:
	mov	al, bpl
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	rbp
	ret	
.label_15:
	lea	rax, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  eax
	mov	rsp, rsp
	mov	rax, qword ptr [rdx + rcx*8 + 8]
	movzx	esi, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	esi, 0x2d
	mov	rsp, rsp
	je	.label_16
	movzx	esi, sil
	nop	
	cmp	esi, 0x21
	nop	
	jne	.label_18
	mov	rbp, rbp
	cmp	byte ptr [rax + 1], 0
	jne	.label_18
	mov	rax, rcx
	add	rax, 3
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  eax
	mov	rcx, qword ptr [rdx + rcx*8 + 0x10]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	sete	bpl
	jmp	.label_24
.label_16:
	cmp	byte ptr [rax + 1], 0
	lea	rsi, [rsi]
	je	.label_18
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 2], 0
	lea	rdi, [rdi]
	jne	.label_18
	mov	rsp, rsp
	call	unary_operator
	mov	bpl, al
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + pos]]
.label_24:
	inc	eax
	mov	dword ptr [dword ptr [rip + pos]],  eax
	jmp	.label_17
.label_19:
	call	beyond
.label_20:
	mov	rsp, rsp
	call	beyond
.label_27:
	nop	
	call	abort
.label_18:
	lea	rdi, [rdi]
	call	beyond
	nop	
	.section	.text
	.align	16
	#Procedure 0x401d40

	.globl test_syntax_error
	.type test_syntax_error, @function
test_syntax_error:
	sub	rsp, 0xd8
	mov	rbp, rbp
	mov	r10, rdi
	lea	rsi, [rsi]
	test	al, al
	je	.label_30
	movaps	xmmword ptr [rsp + 0x50], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_30:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rsp, rsp
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp], 8
	mov	rbp, rbp
	lea	rcx, [rsp]
	xor	edi, edi
	xor	esi, esi
	nop	
	mov	rdx, r10
	lea	rdi, [rdi]
	call	verror
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rbp, rbp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e10

	.globl three_arguments
	.type three_arguments, @function
three_arguments:
	push	rbp
	mov	rbp, rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	movsxd	r14,  dword ptr [dword ptr [rip + pos]]
	mov	rbp,  qword ptr [word ptr [rip + argv]]
	mov	rbx, qword ptr [rbp + r14*8 + 8]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	binop
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_41
	nop	
	xor	edi, edi
	mov	rsp, rsp
	call	binary_operator
	mov	bpl, al
	jmp	.label_39
.label_41:
	nop	
	mov	rax, qword ptr [rbp + r14*8]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x28
	nop	
	je	.label_45
	nop	
	movzx	ecx, cl
	mov	rbp, rbp
	cmp	ecx, 0x21
	lea	rsi, [rsi]
	jne	.label_33
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 1], 0
	je	.label_48
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	jne	.label_33
.label_45:
	mov	rbp, rbp
	cmp	byte ptr [rax + 1], 0
	lea	rsi, [rsi]
	jne	.label_33
	mov	rax, qword ptr [rbp + r14*8 + 0x10]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x29
	lea	rdi, [rdi]
	jne	.label_33
	mov	rbp, rbp
	cmp	byte ptr [rax + 1], 0
	mov	rsp, rsp
	je	.label_38
.label_33:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	lea	rdi, [rdi]
	jne	.label_42
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x61
	jne	.label_44
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 2], 0
	je	.label_46
.label_44:
	nop	
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x6f
	nop	
	jne	.label_42
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 2], 0
	jne	.label_42
.label_46:
	cmp	r14d,  dword ptr [dword ptr [rip + argc]]
	lea	rdi, [rdi]
	jge	.label_31
	nop	
	xor	ebp, ebp
	jmp	.label_35
	nop	dword ptr [rax + rax]
.label_43:
	inc	eax
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  eax
.label_35:
	call	term
	mov	bl, al
	nop	
	jmp	.label_40
	nop	word ptr cs:[rax + rax]
.label_34:
	nop	
	inc	eax
	mov	dword ptr [dword ptr [rip + pos]],  eax
	call	term
	and	bl, al
.label_40:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + argc]]
	cmp	eax, ecx
	jge	.label_47
	movsxd	rdx, eax
	mov	rsi,  qword ptr [word ptr [rip + argv]]
	mov	rdx, qword ptr [rsi + rdx*8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rdx]
	cmp	esi, 0x2d
	nop	
	jne	.label_47
	movzx	esi, byte ptr [rdx + 1]
	cmp	esi, 0x61
	jne	.label_47
	nop	
	cmp	byte ptr [rdx + 2], 0
	je	.label_34
	nop	
.label_47:
	lea	rdi, [rdi]
	or	bpl, bl
	cmp	eax, ecx
	mov	rsp, rsp
	jge	.label_36
	movsxd	rcx, eax
	nop	
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx]
	lea	rdi, [rdi]
	cmp	edx, 0x2d
	jne	.label_36
	movzx	edx, byte ptr [rcx + 1]
	mov	rbp, rbp
	cmp	edx, 0x6f
	mov	rsp, rsp
	jne	.label_36
	mov	rbp, rbp
	cmp	byte ptr [rcx + 2], 0
	mov	rbp, rbp
	je	.label_43
.label_36:
	and	bpl, 1
.label_39:
	mov	al, bpl
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	nop	
	pop	rbp
	ret	
.label_48:
	nop	
	lea	rax, [r14 + 1]
	mov	dword ptr [dword ptr [rip + pos]],  eax
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	nop	
	jge	.label_31
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	je	.label_32
	mov	rbp, rbp
	movzx	eax, al
	cmp	eax, 0x21
	jne	.label_37
	cmp	byte ptr [rbx + 1], 0
	jne	.label_37
	mov	eax, r14d
	add	eax, 3
	mov	dword ptr [dword ptr [rip + pos]],  eax
	mov	rax, qword ptr [rbp + r14*8 + 0x10]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	sete	bpl
	xor	bpl, 1
	lea	rsi, [rsi]
	jmp	.label_39
.label_32:
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 1], 0
	je	.label_37
	cmp	byte ptr [rbx + 2], 0
	jne	.label_37
	call	unary_operator
	mov	bpl, al
	xor	bpl, 1
	jmp	.label_39
.label_38:
	cmp	byte ptr [rbx], 0
	setne	bpl
	lea	eax, [r14 + 3]
	nop	
	mov	dword ptr [dword ptr [rip + pos]],  eax
	jmp	.label_39
.label_42:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.48
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 + 8]
	lea	rsi, [rsi]
	call	quote
	nop	
	mov	rcx, rax
	xor	eax, eax
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	test_syntax_error
.label_31:
	nop	
	call	beyond
.label_37:
	call	beyond
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402100

	.globl unary_operator
	.type unary_operator, @function
unary_operator:
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x90
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [rip + pos]]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdx, qword ptr [rax + rcx*8]
	nop	
	movsx	edx, byte ptr [rdx + 1]
	mov	rsp, rsp
	add	edx, -0x47
	mov	rbp, rbp
	cmp	edx, 0x33
	ja	.label_49
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_62]]
.label_419:
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	mov	rbp, rbp
	jge	.label_54
	nop	
	lea	ecx, [rcx + 2]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	edi, 1
	call	__lxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_66
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_50
.label_418:
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rdi, [rdi]
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	nop	
	jge	.label_54
	lea	rsi, [rsi]
	lea	edx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	nop	
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	rbp, rbp
	mov	edi, 1
	call	__xstat
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_70
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_50
.label_420:
	lea	edx, [rcx + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	lea	rdi, [rdi]
	lea	edx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	nop	
	lea	rdx, [rsp]
	mov	rsp, rsp
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_56
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_50
.label_421:
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rdi, [rdi]
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	lea	edx, [rcx + 2]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	nop	
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	nop	
	test	eax, eax
	je	.label_65
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_50
.label_422:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	mov	rsp, rsp
	jge	.label_54
	lea	edx, [rcx + 2]
	nop	
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	mov	rbp, rbp
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_69
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_50
.label_423:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rsi, [rsi]
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	mov	rbp, rbp
	jge	.label_54
	lea	edx, [rcx + 2]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_55
	xor	ebx, ebx
	jmp	.label_50
.label_424:
	lea	edx, [rcx + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	nop	
	lea	edx, [rcx + 2]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	nop	
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_63
	xor	ebx, ebx
	nop	
	jmp	.label_50
.label_425:
	mov	rsp, rsp
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rdi, [rdi]
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	mov	rsp, rsp
	jge	.label_54
	lea	rsi, [rsi]
	lea	edx, [rcx + 2]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rsi, [rsi]
	lea	rdx, [rsp]
	mov	rbp, rbp
	mov	edi, 1
	call	__xstat
	mov	rbp, rbp
	test	eax, eax
	je	.label_68
	xor	ebx, ebx
	jmp	.label_50
.label_426:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	nop	
	lea	edx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	nop	
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rsi, [rsi]
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsp, rsp
	call	__xstat
	lea	rsi, [rsi]
	test	eax, eax
	jmp	.label_52
.label_427:
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rdi, [rdi]
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	lea	edx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	call	__xstat
	test	eax, eax
	je	.label_61
	mov	rbp, rbp
	xor	ebx, ebx
	nop	
	jmp	.label_50
.label_428:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rsi, [rsi]
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	lea	rsi, [rsi]
	lea	ecx, [rcx + 2]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	mov	rbp, rbp
	movsxd	rcx, edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rcx*8]
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	call	__xstat
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_57
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_50
.label_429:
	mov	rsp, rsp
	lea	edx, [rcx + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	mov	rsp, rsp
	jge	.label_54
	lea	ecx, [rcx + 2]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	movsxd	rcx, edx
	mov	rsi, qword ptr [rax + rcx*8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_51
	xor	ebx, ebx
	jmp	.label_50
.label_430:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	nop	
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	mov	rbp, rbp
	lea	ecx, [rcx + 2]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rcx*8]
	cmp	byte ptr [rax], 0
	setne	bl
	jmp	.label_50
.label_431:
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	lea	rsi, [rsi]
	lea	edx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	rbp, rbp
	mov	edi, 1
	call	__xstat
	nop	
	test	eax, eax
	je	.label_67
	xor	ebx, ebx
	jmp	.label_50
.label_432:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rbp, rbp
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	lea	edx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	nop	
	mov	rdi, qword ptr [rax + rcx*8 + 8]
	mov	esi, 4
	jmp	.label_60
.label_433:
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rsi, [rsi]
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	nop	
	lea	edx, [rcx + 2]
	nop	
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	lea	rdx, [rsp]
	mov	edi, 1
	nop	
	call	__xstat
	nop	
	test	eax, eax
	mov	rsp, rsp
	sete	al
	nop	
	cmp	qword ptr [rsp + 0x30], 0
	lea	rsi, [rsi]
	setg	bl
	and	bl, al
	lea	rsi, [rsi]
	jmp	.label_50
.label_434:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	nop	
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	jge	.label_54
	lea	rsi, [rsi]
	lea	ecx, [rcx + 2]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	lea	rdi, [rdi]
	movsxd	rcx, edx
	mov	rdi, qword ptr [rax + rcx*8]
	call	find_int
	mov	r15, rax
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbp, rbp
	mov	dword ptr [r14], 0
	lea	rsi, [rsi]
	xor	ebx, ebx
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, 0xa
	mov	rdi, r15
	lea	rsi, [rsi]
	call	strtol
	cmp	rax, 0x7fffffff
	ja	.label_50
	cmp	dword ptr [r14], 0x22
	je	.label_50
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	isatty
	test	eax, eax
	nop	
	setne	bl
	mov	rsp, rsp
	jmp	.label_50
.label_435:
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rsp, rsp
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	lea	rdi, [rdi]
	jge	.label_54
	add	ecx, 2
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	movsxd	rcx, edx
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rcx*8]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_59
	xor	ebx, ebx
	jmp	.label_50
.label_436:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	mov	rbp, rbp
	jge	.label_54
	lea	rdi, [rdi]
	lea	edx, [rcx + 2]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rdi, qword ptr [rax + rcx*8 + 8]
	lea	rsi, [rsi]
	mov	esi, 2
	lea	rdi, [rdi]
	jmp	.label_60
.label_437:
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	nop	
	mov	dword ptr [dword ptr [rip + pos]],  edx
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	nop	
	jge	.label_54
	lea	rdi, [rdi]
	lea	edx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rdi, qword ptr [rax + rcx*8 + 8]
	mov	esi, 1
.label_60:
	lea	rdi, [rdi]
	call	euidaccess
	mov	rbp, rbp
	test	eax, eax
	jmp	.label_52
.label_438:
	lea	edx, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	rsp, rsp
	cmp	edx,  dword ptr [dword ptr [rip + argc]]
	lea	rdi, [rdi]
	jge	.label_54
	lea	ecx, [rcx + 2]
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	lea	rdi, [rdi]
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rcx*8]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	jmp	.label_52
.label_66:
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0xa000
	jmp	.label_52
.label_70:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	mov	dword ptr [rbx], 0
	mov	rsp, rsp
	call	getegid
	lea	rdi, [rdi]
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_53
	cmp	dword ptr [rbx], 0
	mov	rbp, rbp
	je	.label_53
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_50
.label_56:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], rax
	lea	rdi, [rdi]
	jge	.label_58
	xor	ebx, ebx
	jmp	.label_50
.label_65:
	mov	rsp, rsp
	call	__errno_location
	mov	rbx, rax
	nop	
	mov	dword ptr [rbx], 0
	mov	rbp, rbp
	call	geteuid
	nop	
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_64
	lea	rdi, [rdi]
	cmp	dword ptr [rbx], 0
	lea	rdi, [rdi]
	je	.label_64
	xor	ebx, ebx
	nop	
	jmp	.label_50
.label_69:
	nop	
	mov	eax, 0xf000
	mov	rbp, rbp
	and	eax, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	cmp	eax, 0xc000
	nop	
	jmp	.label_52
.label_55:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	eax, 0x6000
	jmp	.label_52
.label_63:
	mov	rbp, rbp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	cmp	eax, 0x2000
	lea	rdi, [rdi]
	jmp	.label_52
.label_68:
	lea	rsi, [rsi]
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x4000
	nop	
	jmp	.label_52
.label_61:
	mov	rbp, rbp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x8000
	jmp	.label_52
.label_57:
	lea	rdi, [rdi]
	mov	bl, byte ptr [rsp + 0x19]
	and	bl, 4
	mov	rbp, rbp
	shr	bl, 2
	jmp	.label_50
.label_51:
	lea	rsi, [rsi]
	mov	bl, byte ptr [rsp + 0x19]
	lea	rdi, [rdi]
	and	bl, 2
	lea	rsi, [rsi]
	shr	bl, 1
	lea	rdi, [rdi]
	jmp	.label_50
.label_67:
	mov	eax, 0xf000
	mov	rsp, rsp
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x1000
	jmp	.label_52
.label_59:
	mov	bl, byte ptr [rsp + 0x19]
	and	bl, 8
	shr	bl, 3
	jmp	.label_50
.label_53:
	cmp	eax, dword ptr [rsp + 0x20]
	mov	rsp, rsp
	jmp	.label_52
.label_64:
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rsp + 0x1c]
.label_52:
	lea	rsi, [rsi]
	sete	bl
.label_50:
	mov	al, bl
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
.label_58:
	mov	bl, 1
	mov	rbp, rbp
	jg	.label_50
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	sub	ecx, eax
	mov	rsp, rsp
	test	ecx, ecx
	setg	bl
	lea	rsi, [rsi]
	jmp	.label_50
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	nop	
	call	quote
	mov	rcx, rax
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
.label_54:
	nop	
	call	beyond
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4029f0

	.globl beyond
	.type beyond, @function
beyond:
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + argc]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	call	test_syntax_error
	.section	.text
	.align	16
	#Procedure 0x402a40

	.globl find_int
	.type find_int, @function
find_int:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	mov	rsi, r15
	nop	dword ptr [rax]
.label_71:
	mov	rax, rsi
	movzx	edx, byte ptr [rax]
	mov	rsp, rsp
	lea	rsi, [rax + 1]
	test	byte ptr [rcx + rdx*2], 1
	nop	
	jne	.label_71
	mov	rsp, rsp
	movzx	edi, dl
	cmp	edi, 0x2d
	mov	rsp, rsp
	sete	dl
	mov	rsp, rsp
	movzx	edx, dl
	add	rdx, rax
	mov	rbp, rbp
	cmp	edi, 0x2b
	cmove	rdx, rsi
	cmove	rax, rsi
	movsx	esi, byte ptr [rdx]
	add	esi, -0x30
	cmp	esi, 9
	ja	.label_74
	mov	rsp, rsp
	dec	rdx
	nop	dword ptr [rax + rax]
.label_73:
	movsx	esi, byte ptr [rdx + 2]
	mov	rsp, rsp
	movzx	edi, sil
	mov	rsp, rsp
	mov	ebx, esi
	add	ebx, -0x30
	mov	rsp, rsp
	inc	rdx
	cmp	ebx, 0xa
	nop	
	jb	.label_73
	test	byte ptr [rcx + rdi*2], 1
	mov	rbp, rbp
	je	.label_72
	lea	rsi, [rsi]
	add	rdx, 2
	nop	
.label_75:
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rsi*2], 1
	mov	rsp, rsp
	jne	.label_75
.label_72:
	test	sil, sil
	mov	rbp, rbp
	jne	.label_74
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
.label_74:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r14, rax
	mov	rdi, r15
	mov	rbp, rbp
	call	quote
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, rcx
	mov	rsp, rsp
	call	test_syntax_error
	.section	.text
	.align	16
	#Procedure 0x402b40

	.globl binop
	.type binop, @function
binop:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rdi]
	cmp	edx, 0x3d
	nop	
	jne	.label_76
	mov	al, 1
	lea	rsi, [rsi]
	cmp	byte ptr [rdi + 1], 0
	je	.label_78
.label_76:
	cmp	edx, 0x21
	lea	rdi, [rdi]
	jne	.label_85
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x3d
	jne	.label_85
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	byte ptr [rdi + 2], 0
	mov	rsp, rsp
	je	.label_78
.label_85:
	cmp	edx, 0x3d
	jne	.label_77
	movzx	eax, byte ptr [rdi + 1]
	mov	rbp, rbp
	cmp	eax, 0x3d
	jne	.label_77
	nop	
	mov	al, 1
	mov	rsp, rsp
	cmp	byte ptr [rdi + 2], 0
	nop	
	je	.label_78
.label_77:
	mov	rsp, rsp
	mov	ecx, 0x2d
	sub	ecx, edx
	mov	rbp, rbp
	jne	.label_82
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi + 1]
	mov	rbp, rbp
	cmp	eax, 0x6e
	jne	.label_90
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x74
	lea	rdi, [rdi]
	jne	.label_79
	mov	al, 1
	nop	
	cmp	byte ptr [rdi + 3], 0
	je	.label_78
.label_79:
	test	ecx, ecx
	jne	.label_82
.label_90:
	movzx	eax, byte ptr [rdi + 1]
	mov	rbp, rbp
	cmp	eax, 0x6f
	jne	.label_88
	mov	rsp, rsp
	movzx	eax, byte ptr [rdi + 2]
	mov	rbp, rbp
	cmp	eax, 0x74
	jne	.label_89
	mov	al, 1
	nop	
	cmp	byte ptr [rdi + 3], 0
	je	.label_78
.label_89:
	nop	
	test	ecx, ecx
	jne	.label_82
.label_88:
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x65
	mov	rsp, rsp
	jne	.label_84
	movzx	eax, byte ptr [rdi + 2]
	mov	rsp, rsp
	cmp	eax, 0x66
	jne	.label_84
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_78
.label_84:
	nop	
	movzx	eax, byte ptr [rdi + 1]
	mov	rsp, rsp
	cmp	eax, 0x65
	lea	rsi, [rsi]
	jne	.label_81
	nop	
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x71
	mov	rbp, rbp
	jne	.label_81
	mov	al, 1
	mov	rbp, rbp
	cmp	byte ptr [rdi + 3], 0
	je	.label_78
.label_81:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x6e
	mov	rbp, rbp
	jne	.label_82
	nop	
	movzx	eax, byte ptr [rdi + 2]
	mov	rbp, rbp
	cmp	eax, 0x65
	lea	rsi, [rsi]
	jne	.label_82
	nop	
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	mov	rbp, rbp
	je	.label_78
.label_82:
	mov	rbp, rbp
	cmp	edx, 0x2d
	jne	.label_83
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x6c
	mov	rbp, rbp
	jne	.label_86
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x74
	mov	rsp, rsp
	jne	.label_86
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	mov	rsp, rsp
	je	.label_78
.label_86:
	mov	rsp, rsp
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x6c
	jne	.label_87
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi + 2]
	lea	rsi, [rsi]
	cmp	eax, 0x65
	lea	rdi, [rdi]
	jne	.label_87
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_78
.label_87:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi + 1]
	lea	rsi, [rsi]
	cmp	eax, 0x67
	jne	.label_83
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x74
	jne	.label_83
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	lea	rsi, [rsi]
	je	.label_78
.label_83:
	test	ecx, ecx
	jne	.label_80
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + 1]
	nop	
	mov	ecx, 0x67
	lea	rdi, [rdi]
	sub	ecx, eax
	nop	
	jne	.label_80
	movzx	eax, byte ptr [rdi + 2]
	mov	ecx, 0x65
	sub	ecx, eax
	lea	rdi, [rdi]
	jne	.label_80
	movzx	ecx, byte ptr [rdi + 3]
	nop	
	neg	ecx
.label_80:
	test	ecx, ecx
	sete	al
.label_78:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402d40

	.globl binary_operator
	.type binary_operator, @function
binary_operator:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x1d0
	mov	ecx,  dword ptr [dword ptr [rip + pos]]
	lea	rdi, [rdi]
	test	dil, dil
	je	.label_120
	inc	ecx
	mov	dword ptr [dword ptr [rip + pos]],  ecx
.label_120:
	lea	edx, [rcx + 1]
	mov	eax,  dword ptr [dword ptr [rip + argc]]
	nop	
	add	eax, -2
	mov	rsp, rsp
	cmp	edx, eax
	jge	.label_104
	movsxd	rsi, ecx
	nop	
	mov	rax,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rsi, qword ptr [rax + rsi*8 + 0x10]
	movzx	ebp, byte ptr [rsi]
	lea	rsi, [rsi]
	cmp	ebp, 0x2d
	lea	rdi, [rdi]
	jne	.label_93
	mov	rbp, rbp
	movzx	ebp, byte ptr [rsi + 1]
	lea	rsi, [rsi]
	cmp	ebp, 0x6c
	jne	.label_93
	cmp	byte ptr [rsi + 2], 0
	mov	rsp, rsp
	jne	.label_93
	mov	dword ptr [dword ptr [rip + pos]],  edx
	lea	rdi, [rdi]
	mov	r15b, 1
	lea	rdi, [rdi]
	mov	ebp, edx
	jmp	.label_114
.label_104:
	mov	rax,  qword ptr [word ptr [rip + argv]]
.label_93:
	xor	r15d, r15d
	mov	ebp, ecx
.label_114:
	lea	rdi, [rdi]
	movsxd	r12, edx
	mov	rdx, qword ptr [rax + r12*8]
	mov	rbp, rbp
	movzx	esi, byte ptr [rdx]
	nop	
	cmp	esi, 0x21
	je	.label_117
	nop	
	movzx	esi, sil
	cmp	esi, 0x3d
	je	.label_118
	cmp	esi, 0x2d
	jne	.label_102
	movsx	esi, byte ptr [rdx + 1]
	mov	rsp, rsp
	mov	bl, sil
	mov	rbp, rbp
	add	bl, 0x9b
	lea	rdi, [rdi]
	movzx	ebx, bl
	mov	rbp, rbp
	cmp	ebx, 9
	ja	.label_91
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_97]]
.label_478:
	nop	
	movzx	ebx, byte ptr [rdx + 2]
	cmp	ebx, 0x65
	je	.label_94
	movzx	ebx, bl
	cmp	ebx, 0x74
	je	.label_94
	mov	rsp, rsp
	jmp	.label_91
.label_117:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rdx + 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x3d
	jne	.label_102
	cmp	byte ptr [rdx + 2], 0
	jne	.label_102
	movsxd	rbp, ebp
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	mov	rsp, rsp
	call	strcmp
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	setne	bl
	add	ebp, 3
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  ebp
	mov	rbp, rbp
	jmp	.label_92
.label_118:
	mov	cl, byte ptr [rdx + 1]
	test	cl, cl
	je	.label_112
	movzx	ecx, cl
	cmp	ecx, 0x3d
	mov	rbp, rbp
	jne	.label_102
	cmp	byte ptr [rdx + 2], 0
	mov	rbp, rbp
	jne	.label_102
.label_112:
	movsxd	rcx, ebp
	mov	rdi, qword ptr [rax + rcx*8]
	mov	rsi, qword ptr [rax + rcx*8 + 0x10]
	mov	rbp, rbp
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	sete	bl
	lea	rsi, [rsi]
	add	ebp, 3
	mov	dword ptr [dword ptr [rip + pos]],  ebp
.label_92:
	mov	rbp, rbp
	mov	al, bl
	nop	
	add	rsp, 0x1d0
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_477:
	movzx	ebx, byte ptr [rdx + 2]
	lea	rsi, [rsi]
	cmp	ebx, 0x71
	lea	rsi, [rsi]
	je	.label_94
	jmp	.label_91
.label_479:
	mov	rbp, rbp
	movzx	ebx, byte ptr [rdx + 2]
	cmp	ebx, 0x65
	lea	rsi, [rsi]
	jne	.label_91
.label_94:
	mov	rsp, rsp
	cmp	byte ptr [rdx + 3], 0
	mov	rsp, rsp
	je	.label_98
.label_91:
	lea	rsi, [rsi]
	cmp	esi, 0x65
	je	.label_100
	lea	rdi, [rdi]
	cmp	esi, 0x6f
	nop	
	je	.label_110
	cmp	esi, 0x6e
	lea	rsi, [rsi]
	jne	.label_101
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rdx + 2]
	cmp	esi, 0x74
	lea	rsi, [rsi]
	jne	.label_101
	lea	rsi, [rsi]
	cmp	byte ptr [rdx + 3], 0
	jne	.label_101
	add	ebp, 3
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  ebp
	or	r15b, dil
	movzx	edx, r15b
	mov	rsp, rsp
	cmp	edx, 1
	lea	rdi, [rdi]
	je	.label_108
	movsxd	rbp, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	lea	rdx, [rsp]
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	call	__xstat
	nop	
	mov	r12d, eax
	test	r12d, r12d
	sete	bl
	mov	r15, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x60]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	lea	rdx, [rsp]
	mov	edi, 1
	call	__xstat
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_92
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	test	r12d, r12d
	mov	rbp, rbp
	setne	cl
	xor	ebx, ebx
	mov	rsp, rsp
	cmp	r15, rax
	jl	.label_92
	test	cl, cl
	jne	.label_92
	lea	rdi, [rdi]
	mov	bl, 1
	cmp	r15, rax
	jg	.label_92
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	sub	r14d, eax
	lea	rsi, [rsi]
	test	r14d, r14d
	mov	rbp, rbp
	setg	bl
	jmp	.label_92
.label_100:
	movzx	esi, byte ptr [rdx + 2]
	nop	
	cmp	esi, 0x66
	mov	rsp, rsp
	jne	.label_101
	lea	rsi, [rsi]
	cmp	byte ptr [rdx + 3], 0
	lea	rsi, [rsi]
	jne	.label_101
	mov	rsp, rsp
	add	ebp, 3
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  ebp
	mov	rsp, rsp
	or	r15b, dil
	nop	
	movzx	edx, r15b
	nop	
	cmp	edx, 1
	je	.label_106
	mov	rbp, rbp
	movsxd	rbx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x140]
	mov	edi, 1
	mov	rbp, rbp
	call	__xstat
	test	eax, eax
	nop	
	je	.label_115
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_92
.label_110:
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rdx + 2]
	cmp	esi, 0x74
	jne	.label_101
	cmp	byte ptr [rdx + 3], 0
	lea	rsi, [rsi]
	jne	.label_101
	add	ebp, 3
	mov	dword ptr [dword ptr [rip + pos]],  ebp
	lea	rdi, [rdi]
	or	r15b, dil
	lea	rsi, [rsi]
	movzx	edx, r15b
	mov	rsp, rsp
	cmp	edx, 1
	mov	rbp, rbp
	je	.label_119
	mov	rsp, rsp
	movsxd	rbp, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	call	__xstat
	mov	rbp, rbp
	mov	ebx, eax
	mov	r15, qword ptr [rsp + 0x58]
	mov	r14, qword ptr [rsp + 0x60]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, rbp
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	__xstat
	test	eax, eax
	nop	
	je	.label_105
	nop	
	xor	ebx, ebx
	nop	
	jmp	.label_92
.label_98:
	movsxd	rbp, ecx
	mov	rax, qword ptr [rax + rbp*8]
	test	dil, dil
	je	.label_107
	mov	rdi, rax
	call	strlen
	lea	rsi, [rsp]
	mov	rdi, rax
	call	umaxtostr
	lea	rsi, [rsi]
	jmp	.label_111
.label_115:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rbx*8 + 0x10]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0xb0]
	mov	rbp, rbp
	mov	edi, 1
	call	__xstat
	test	eax, eax
	je	.label_116
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_92
.label_105:
	test	ebx, ebx
	mov	bl, 1
	mov	rsp, rsp
	jne	.label_92
	mov	rax, qword ptr [rsp + 0x58]
	cmp	r15, rax
	jl	.label_92
	mov	rbp, rbp
	cmp	r15, rax
	jle	.label_121
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_92
.label_107:
	mov	rdi, rax
	call	find_int
.label_111:
	mov	r14, rax
	test	r15b, r15b
	je	.label_96
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x18]
	nop	
	call	strlen
	mov	rsp, rsp
	lea	rsi, [rsp + 0x90]
	mov	rdi, rax
	call	umaxtostr
	jmp	.label_99
.label_96:
	nop	
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, rbp
	call	find_int
.label_99:
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rax
	call	strintcmp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + r12*8]
	mov	cl, byte ptr [rdx + 2]
	add	dword ptr [dword ptr [rip + pos]],  3
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rdx + 1]
	nop	
	cmp	edx, 0x67
	nop	
	je	.label_103
	mov	rsp, rsp
	movzx	edx, dl
	lea	rsi, [rsi]
	movzx	ecx, cl
	lea	rdi, [rdi]
	cmp	edx, 0x6c
	mov	rsp, rsp
	jne	.label_109
	cmp	ecx, 0x65
	lea	rsi, [rsi]
	sete	cl
	mov	rsp, rsp
	movzx	ecx, cl
	mov	rsp, rsp
	cmp	eax, ecx
	setl	bl
	lea	rsi, [rsi]
	jmp	.label_92
.label_103:
	movzx	ecx, cl
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	cmp	ecx, 0x65
	nop	
	mov	ecx, 0xffffffff
	nop	
	cmovne	ecx, edx
	mov	rsp, rsp
	cmp	eax, ecx
	mov	rsp, rsp
	setg	bl
	jmp	.label_92
.label_109:
	lea	rdi, [rdi]
	cmp	ecx, 0x65
	sete	cl
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	setne	bl
	xor	bl, cl
	nop	
	xor	bl, 1
	nop	
	jmp	.label_92
.label_116:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	jne	.label_95
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	mov	rsp, rsp
	cmp	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	sete	bl
	jmp	.label_92
.label_121:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	sub	r14d, eax
	shr	r14d, 0x1f
	mov	bl, r14b
	nop	
	jmp	.label_92
.label_95:
	xor	ebx, ebx
	jmp	.label_92
.label_102:
	call	abort
.label_101:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.65
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + r12*8]
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	xor	eax, eax
	nop	
	mov	rdi, rbp
	mov	rsi, rcx
	call	test_syntax_error
.label_108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	nop	
	jmp	.label_113
.label_106:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.63
	lea	rdi, [rdi]
	jmp	.label_113
.label_119:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
.label_113:
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, rcx
	call	test_syntax_error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4033f0

	.globl term
	.type term, @function
term:
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	push	rax
	mov	r14d,  dword ptr [dword ptr [rip + pos]]
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + argc]]
	cmp	r14d, eax
	lea	rsi, [rsi]
	jge	.label_141
	movsxd	rcx, r14d
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	mov	rsi, qword ptr [rdx + rcx*8]
	movzx	edi, byte ptr [rsi]
	mov	rsp, rsp
	xor	ebx, ebx
	cmp	edi, 0x21
	nop	
	jne	.label_129
	nop	word ptr cs:[rax + rax]
.label_130:
	cmp	byte ptr [rsi + 1], 0
	jne	.label_135
	lea	esi, [rcx + 1]
	mov	dword ptr [dword ptr [rip + pos]],  esi
	mov	rbp, rbp
	cmp	esi, eax
	jge	.label_122
	xor	bl, 1
	mov	rsi, qword ptr [rdx + rcx*8 + 8]
	movzx	edi, byte ptr [rsi]
	mov	rsp, rsp
	inc	rcx
	cmp	edi, 0x21
	je	.label_130
.label_135:
	mov	r14d, ecx
	nop	
	jmp	.label_129
.label_141:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_129:
	mov	ecx, eax
	lea	rsi, [rsi]
	sub	ecx, r14d
	mov	rbp, rbp
	jle	.label_122
	movsxd	rbp, r14d
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + argv]]
	mov	r12, qword ptr [r15 + rbp*8]
	movzx	r13d, byte ptr [r12]
	mov	rbp, rbp
	cmp	r13d, 0x28
	mov	rsp, rsp
	jne	.label_125
	cmp	byte ptr [r12 + 1], 0
	je	.label_132
.label_125:
	cmp	ecx, 4
	jl	.label_139
	lea	rdi, [rdi]
	movzx	eax, r13b
	cmp	eax, 0x2d
	jne	.label_134
	movzx	eax, byte ptr [r12 + 1]
	cmp	eax, 0x6c
	nop	
	jne	.label_134
	cmp	byte ptr [r12 + 2], 0
	jne	.label_134
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + rbp*8 + 0x10]
	nop	
	call	binop
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	je	.label_134
	mov	edi, 1
	jmp	.label_142
.label_139:
	lea	rsi, [rsi]
	cmp	ecx, 3
	jl	.label_127
.label_134:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + rbp*8 + 8]
	mov	rbp, rbp
	call	binop
	test	al, al
	je	.label_127
	xor	edi, edi
.label_142:
	call	binary_operator
	lea	rdi, [rdi]
	movzx	eax, al
	jmp	.label_124
.label_127:
	movzx	eax, r13b
	mov	rbp, rbp
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_131
	nop	
	cmp	byte ptr [r12 + 1], 0
	mov	rsp, rsp
	je	.label_131
	mov	rbp, rbp
	cmp	byte ptr [r12 + 2], 0
	mov	rbp, rbp
	je	.label_136
.label_131:
	lea	rdi, [rdi]
	test	r13b, r13b
	setne	al
	lea	rsi, [rsi]
	movzx	eax, al
	lea	rdi, [rdi]
	inc	r14d
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + pos]],  r14d
	mov	rsp, rsp
	jmp	.label_124
.label_132:
	lea	edx, [r14 + 1]
	mov	dword ptr [dword ptr [rip + pos]],  edx
	mov	ecx, eax
	sub	ecx, edx
	jle	.label_122
	lea	rdi, [rdi]
	add	r14d, 2
	mov	edi, 1
	lea	rdi, [rdi]
	cmp	r14d, eax
	jge	.label_126
	nop	
	movsxd	rdx, r14d
	lea	rdx, [r15 + rdx*8]
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_140:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdx + rdi*8]
	movzx	ebp, byte ptr [rsi]
	cmp	ebp, 0x29
	nop	
	jne	.label_123
	mov	rsp, rsp
	cmp	byte ptr [rsi + 1], 0
	nop	
	je	.label_137
.label_123:
	cmp	edi, 3
	lea	rsi, [rsi]
	je	.label_138
	mov	rbp, rbp
	inc	rdi
	mov	rsp, rsp
	lea	esi, [r14 + rdi]
	lea	rsi, [rsi]
	cmp	esi, eax
	lea	rdi, [rdi]
	jl	.label_140
.label_137:
	inc	edi
	jmp	.label_126
.label_136:
	call	unary_operator
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	jmp	.label_124
.label_138:
	lea	rdi, [rdi]
	mov	edi, ecx
.label_126:
	call	posixtest
	mov	rbp, rbp
	movsxd	rcx,  dword ptr [dword ptr [rip + pos]]
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + rcx*8]
	nop	
	test	rdx, rdx
	je	.label_128
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rdx]
	cmp	esi, 0x29
	jne	.label_133
	cmp	byte ptr [rdx + 1], 0
	mov	rsp, rsp
	jne	.label_133
	mov	rsp, rsp
	movzx	eax, al
	inc	ecx
	mov	dword ptr [dword ptr [rip + pos]],  ecx
.label_124:
	nop	
	and	bl, 1
	movzx	ecx, bl
	cmp	ecx, eax
	lea	rsi, [rsi]
	setne	al
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_122:
	call	beyond
.label_133:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	r14, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	call	quote_n
	mov	rbx, rax
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rsi, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	edi, 1
	call	quote_n
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, rcx
	nop	
	call	test_syntax_error
.label_128:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.42
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	test_syntax_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403740
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
	#Procedure 0x403750
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403760

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
	je	.label_146
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_143
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_143
.label_146:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_144
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_143:
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
	jne	.label_145
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
.label_144:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_145:
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
	#Procedure 0x403860

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_147:
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
	ja	.label_147
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038c0

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
	je	.label_148
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
	jl	.label_150
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_150
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
	jne	.label_149
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_149:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_150:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_148:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_3
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
	#Procedure 0x4039b0
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
	#Procedure 0x403a00
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
	#Procedure 0x403a20
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
	#Procedure 0x403a40
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
	#Procedure 0x403ab0
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
	#Procedure 0x403ad0
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
	je	.label_151
	test	rdx, rdx
	nop	
	je	.label_151
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_151:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b10
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
	#Procedure 0x403bc0

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
.label_182:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_207
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_183]]
.label_459:
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
.label_460:
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
	jne	.label_238
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_238
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_258:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_250
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_250:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_258
.label_238:
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
	jmp	.label_203
.label_452:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_203
.label_455:
	lea	rsi, [rsi]
	mov	al, 1
.label_453:
	lea	rsi, [rsi]
	mov	dl, 1
.label_456:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_161
	mov	rbp, rbp
	mov	cl, al
.label_161:
	mov	al, cl
.label_454:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_168
	test	rbp, rbp
	je	.label_174
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_166
.label_168:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_166
.label_457:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_185
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_190
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_177
.label_458:
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
	jmp	.label_203
.label_174:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_166:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_203
.label_185:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_177
.label_190:
	nop	
	mov	r14d, 1
.label_177:
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
.label_203:
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
	jmp	.label_239
	nop	dword ptr [rax]
.label_234:
	mov	rsp, rsp
	inc	r15
.label_239:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_271
	cmp	r15, r10
	jne	.label_153
	jmp	.label_155
	nop	dword ptr [rax]
.label_271:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_159
.label_153:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_165
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_169
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_169
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
.label_169:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_206
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_201
	nop	dword ptr [rax]
.label_165:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_201
	nop	word ptr cs:[rax + rax]
.label_206:
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
	jne	.label_237
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
	je	.label_201
	jmp	.label_162
.label_237:
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
.label_201:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_263
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_266]]
.label_471:
	test	r15, r15
	jne	.label_154
	jmp	.label_274
.label_475:
	xor	eax, eax
	cmp	r10, -1
	je	.label_276
	test	r15, r15
	jne	.label_277
	nop	
	cmp	r10, 1
	je	.label_274
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_156
.label_464:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_222
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_162
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_170
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_170
	cmp	r14, rbp
	jae	.label_173
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_173:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_279
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_279:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_189
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_189:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_170:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_204
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_204:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_211
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_219
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_220
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_226
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_226:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_231
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_231:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_156
.label_465:
	mov	bl, 0x62
	nop	
	jmp	.label_242
.label_466:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_240
.label_467:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_242
.label_468:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_242
.label_469:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_240
.label_472:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_188
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_255
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
	jae	.label_259
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_259:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_275
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_275:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_280
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_280:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_188:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_156
.label_473:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_167
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_154
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_154
	nop	
	jmp	.label_181
.label_474:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_184
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_187
	jmp	.label_191
.label_263:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_193
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
	jmp	.label_215
.label_276:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_224
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_224
.label_274:
	mov	dl, 1
.label_470:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_229
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_156
.label_222:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_234
	jmp	.label_154
.label_184:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_240
.label_187:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_172
.label_240:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_246
.label_242:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_156
	jmp	.label_249
.label_193:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_253
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_253:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_199
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_248:
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
	je	.label_158
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_164
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_200
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_179
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_208:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_196
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_205
.label_196:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_208
.label_179:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_265
	mov	rbp, rbp
	xor	r13d, r13d
.label_265:
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
	je	.label_248
	jmp	.label_157
	nop	
.label_199:
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
	je	.label_244
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_164
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_158
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_256
	xor	r13d, r13d
.label_256:
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
	je	.label_199
	lea	rsi, [rsi]
	jmp	.label_157
.label_224:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_156
.label_167:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_154
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_154
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_154
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_160
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_228
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_216
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_180
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_180:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_186
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_186:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_163
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_163:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_212
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_212:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_156
.label_154:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_156:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_202
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_225
	nop	
	jmp	.label_152
	nop	dword ptr [rax + rax]
.label_202:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_152
.label_225:
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
	jne	.label_232
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_241
	nop	word ptr cs:[rax + rax]
.label_152:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_241:
	mov	bl, r12b
	je	.label_172
	jmp	.label_249
.label_232:
	mov	bl, r12b
.label_249:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_162
	cmp	r9d, 2
	jne	.label_252
	mov	al, dil
	and	al, 1
	jne	.label_252
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_257
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_257:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_262
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_262:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_267
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_267:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_252:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_273
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_273:
	mov	rbp, rbp
	inc	r14
	jmp	.label_260
.label_277:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_156
.label_211:
	xor	r13d, r13d
	jmp	.label_156
.label_219:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_156
.label_220:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_156
.label_164:
	xor	r13d, r13d
.label_244:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_157
.label_158:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_176
	lea	rax, [r11 + r15]
.label_194:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_210
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_194
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_157
.label_176:
	xor	r13d, r13d
	jmp	.label_157
.label_210:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_157
.label_200:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_157:
	mov	rbp, rbp
	mov	rbx, r10
.label_215:
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
	ja	.label_217
	test	cl, cl
	je	.label_217
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_156
.label_217:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_233
	nop	dword ptr [rax]
.label_227:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_233:
	mov	rsp, rsp
	test	cl, cl
	je	.label_243
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_245
	cmp	r14, rbp
	jae	.label_247
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_247:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_245:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_254
	nop	dword ptr [rax + rax]
.label_243:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_261
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_264
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_264
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_269
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_269:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_230
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_230:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_278
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_278:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_264:
	cmp	r14, rbp
	jae	.label_198
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_198:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_223
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_223:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_272
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_272:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_254:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_172
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_209
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_209
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_175
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_175:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_221
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_221:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_209:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_227
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_227
	nop	word ptr cs:[rax + rax]
.label_172:
	test	dil, 1
	je	.label_235
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_235
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_236
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_236:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_268
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_268:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_235:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_260:
	cmp	r14, rbp
	jae	.label_195
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_195:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_234
.label_160:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_156
.label_228:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_156
	nop	word ptr [rax + rax]
.label_155:
	nop	
	mov	rcx, r15
.label_159:
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
	je	.label_270
	mov	rsp, rsp
	or	al, dl
	je	.label_251
.label_270:
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
	je	.label_178
	mov	rsp, rsp
	or	al, dl
	jne	.label_178
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_171
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_178
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
	je	.label_182
.label_178:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_192
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_192
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_192
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_218:
	cmp	r14, rbp
	jae	.label_213
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_213:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_218
.label_192:
	cmp	r14, rbp
	jae	.label_214
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_214
.label_229:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_162
.label_205:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_162
.label_261:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_162
.label_251:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_162
.label_246:
	nop	
	mov	r9d, 2
.label_162:
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
.label_197:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_214:
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
.label_171:
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
	jmp	.label_197
.label_255:
	mov	r9d, 2
	jmp	.label_162
.label_191:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_162
.label_181:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_162
.label_216:
	mov	r9d, 5
	nop	
	jmp	.label_162
.label_207:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405060
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
	#Procedure 0x4051a0
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
	je	.label_281
	mov	qword ptr [rax], rbx
.label_281:
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
	#Procedure 0x4052f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_282
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_285:
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
	jl	.label_285
.label_282:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_284
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_286]], OFFSET FLAT:slot0
.label_284:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_283
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_283:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053b0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4053c0

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
	js	.label_290
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_292
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_288
.label_292:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_293
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
	jne	.label_289
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_289:
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
.label_288:
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
	ja	.label_287
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
	je	.label_291
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_291:
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
.label_287:
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
.label_290:
	lea	rdi, [rdi]
	call	abort
.label_293:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405630
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405640
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
	#Procedure 0x405670
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
	#Procedure 0x4056a0
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
	je	.label_294
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
.label_294:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405730
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
	je	.label_295
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
.label_295:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057d0
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
	je	.label_296
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
.label_296:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405860
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
	je	.label_297
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
.label_297:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4058d0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_298]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
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
	#Procedure 0x405970
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_298]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
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
	#Procedure 0x405a10

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_298]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
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
	#Procedure 0x405a80
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_298]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
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
	#Procedure 0x405af0
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
	je	.label_301
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
.label_301:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405bd0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_298]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_302
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_302
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
.label_302:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405c60
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_298]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_303
	test	rdx, rdx
	je	.label_303
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
.label_303:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cf0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_298]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_304
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_304
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
.label_304:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d90
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_298]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_299]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_300]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_305
	test	rsi, rsi
	je	.label_305
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
.label_305:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e30
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e40
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
	#Procedure 0x405e60

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
	#Procedure 0x405e80

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
	#Procedure 0x405eb0

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
	jne	.label_307
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_309
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_306
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_306
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_306
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_306
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_306
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_306
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_307
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_307
.label_309:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_306
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_306
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_306
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_306
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_306
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_306
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_308
.label_306:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_307:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_308:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_307
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_307
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406020

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rdi]
	mov	dl, byte ptr [rsi]
	cmp	ecx, 0x2d
	nop	
	jne	.label_327
	nop	word ptr cs:[rax + rax]
.label_324:
	nop	
	movzx	ecx, byte ptr [rdi + 1]
	mov	rbp, rbp
	inc	rdi
	cmp	ecx, 0x30
	je	.label_324
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_334
	nop	
.label_332:
	movzx	eax, byte ptr [rsi + 1]
	lea	rsi, [rsi]
	inc	rsi
	cmp	eax, 0x30
	lea	rdi, [rdi]
	je	.label_332
	nop	
	lea	edx, [rcx - 0x30]
	lea	rsi, [rsi]
	cmp	edx, 9
	ja	.label_339
	movzx	r8d, cl
	movzx	edx, al
	mov	rbp, rbp
	cmp	edx, r8d
	lea	rsi, [rsi]
	jne	.label_314
	nop	dword ptr [rax + rax]
.label_330:
	mov	r9b, byte ptr [rdi + 1]
	inc	rdi
	mov	rbp, rbp
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	mov	rsp, rsp
	movzx	ecx, r9b
	cmp	eax, ecx
	jne	.label_326
	lea	edx, [rcx - 0x30]
	mov	rbp, rbp
	cmp	edx, 0xa
	jb	.label_330
	jmp	.label_326
.label_327:
	movzx	r8d, dl
	cmp	r8d, 0x2d
	lea	rsi, [rsi]
	jne	.label_336
	nop	
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_337:
	movzx	edx, byte ptr [rsi]
	mov	rsp, rsp
	inc	rsi
	cmp	edx, 0x30
	mov	rsp, rsp
	je	.label_337
	add	edx, -0x30
	nop	
	mov	eax, 1
	cmp	edx, 0xa
	lea	rdi, [rdi]
	jb	.label_311
	movzx	eax, cl
	nop	
	cmp	eax, 0x30
	mov	rsp, rsp
	jne	.label_316
	nop	
	inc	rdi
	nop	word ptr cs:[rax + rax]
.label_320:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	ecx, 0x30
	nop	
	je	.label_320
.label_316:
	movzx	eax, cl
	add	eax, -0x30
	cmp	eax, 0xa
	nop	
	sbb	eax, eax
	and	eax, 1
	ret	
.label_334:
	nop	
	add	ecx, -0x30
	mov	rbp, rbp
	mov	eax, 0xffffffff
	nop	
	cmp	ecx, 0xa
	mov	rsp, rsp
	jb	.label_311
	cmp	r8d, 0x30
	jne	.label_338
	lea	rsi, [rsi]
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_310:
	movzx	edx, byte ptr [rsi]
	lea	rdi, [rdi]
	inc	rsi
	lea	rdi, [rdi]
	cmp	edx, 0x30
	mov	rbp, rbp
	je	.label_310
.label_338:
	mov	rsp, rsp
	movzx	eax, dl
	lea	rdi, [rdi]
	add	eax, -0x30
	mov	rsp, rsp
	cmp	eax, 0xa
	sbb	eax, eax
	lea	rsi, [rsi]
	ret	
.label_336:
	movzx	eax, cl
	mov	rbp, rbp
	cmp	eax, 0x30
	mov	rbp, rbp
	jne	.label_319
	nop	word ptr [rax + rax]
.label_315:
	movzx	ecx, byte ptr [rdi + 1]
	mov	rsp, rsp
	inc	rdi
	cmp	ecx, 0x30
	nop	
	je	.label_315
.label_319:
	cmp	r8d, 0x30
	jne	.label_329
	nop	word ptr cs:[rax + rax]
.label_325:
	mov	rsp, rsp
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	cmp	edx, 0x30
	je	.label_325
.label_329:
	lea	rsi, [rsi]
	movzx	r8d, cl
	lea	eax, [r8 - 0x30]
	lea	rsi, [rsi]
	cmp	eax, 9
	ja	.label_312
	lea	rsi, [rsi]
	movzx	r9d, dl
	movzx	eax, cl
	cmp	eax, r9d
	jne	.label_312
	nop	word ptr cs:[rax + rax]
.label_323:
	mov	cl, byte ptr [rdi + 1]
	inc	rdi
	movzx	edx, byte ptr [rsi + 1]
	mov	rsp, rsp
	inc	rsi
	movzx	r8d, cl
	cmp	r8d, edx
	mov	rbp, rbp
	jne	.label_312
	lea	eax, [r8 - 0x30]
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jb	.label_323
.label_312:
	nop	
	movzx	eax, dl
	lea	rsi, [rsi]
	movzx	edx, cl
	lea	rsi, [rsi]
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_328
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_318:
	movzx	edx, byte ptr [rdi + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	add	edx, -0x30
	lea	rsi, [rsi]
	cmp	edx, 0xa
	mov	rbp, rbp
	jb	.label_318
.label_328:
	mov	rsp, rsp
	lea	edi, [rax - 0x30]
	xor	edx, edx
	mov	rbp, rbp
	cmp	edi, 9
	ja	.label_313
	xor	edx, edx
	nop	
.label_331:
	mov	rsp, rsp
	movzx	edi, byte ptr [rsi + rdx + 1]
	lea	rdi, [rdi]
	inc	rdx
	add	edi, -0x30
	mov	rsp, rsp
	cmp	edi, 0xa
	mov	rsp, rsp
	jb	.label_331
.label_313:
	cmp	rcx, rdx
	jne	.label_335
	mov	rsp, rsp
	sub	r8d, eax
	nop	
	xor	eax, eax
	test	rcx, rcx
	nop	
	jmp	.label_322
.label_335:
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	cmovb	eax, ecx
	lea	rdi, [rdi]
	ret	
.label_339:
	lea	rsi, [rsi]
	mov	r9b, cl
	nop	
	jmp	.label_326
.label_314:
	lea	rdi, [rdi]
	mov	r9b, cl
.label_326:
	movzx	r8d, al
	movzx	eax, r9b
	lea	rsi, [rsi]
	add	eax, -0x30
	nop	
	xor	edx, edx
	mov	rsp, rsp
	cmp	eax, 9
	mov	rbp, rbp
	ja	.label_341
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_340:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi + rdx + 1]
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	lea	rsi, [rsi]
	jb	.label_340
.label_341:
	lea	rsi, [rsi]
	lea	edi, [r8 - 0x30]
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	edi, 9
	lea	rdi, [rdi]
	ja	.label_321
	xor	eax, eax
	nop	dword ptr [rax]
.label_317:
	lea	rdi, [rdi]
	movzx	edi, byte ptr [rsi + rax + 1]
	inc	rax
	mov	rsp, rsp
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_317
.label_321:
	mov	rbp, rbp
	cmp	rdx, rax
	lea	rsi, [rsi]
	jne	.label_333
	sub	r8d, ecx
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
.label_322:
	cmovne	eax, r8d
.label_311:
	ret	
.label_333:
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rsp, rsp
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4063a0

	.globl verror
	.type verror, @function
verror:
	mov	rbp, rbp
	push	rbp
	push	r14
	push	rbx
	mov	rsp, rsp
	mov	r14d, esi
	mov	rbp, rbp
	mov	ebp, edi
	mov	rdi, rdx
	mov	rsi, rcx
	mov	rbp, rbp
	call	xvasprintf
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_342
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	nop	
	mov	edi, ebp
	mov	esi, r14d
	mov	rcx, rbx
	call	error
	mov	rdi, rbx
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	free
.label_342:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406440
	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	nop	
	mov	r15d, ecx
	mov	rsp, rsp
	mov	rbp, rdx
	mov	r14d, esi
	mov	r12d, edi
	mov	rdi, r8
	mov	rsi, r9
	call	xvasprintf
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_344
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_343
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, r12d
	lea	rsi, [rsi]
	mov	esi, r14d
	mov	rdx, rbp
	mov	rsp, rsp
	mov	ecx, r15d
	mov	r9, rbx
	call	error_at_line
	jmp	.label_345
.label_343:
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, r12d
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	error
.label_345:
	mov	rdi, rbx
	nop	
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	free
.label_344:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406520
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
	jb	.label_346
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_347
	test	rax, rax
	je	.label_346
.label_347:
	nop	
	pop	rbx
	ret	
.label_346:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406570

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_348
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_349
.label_348:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_349:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065a0
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
	jb	.label_351
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_350
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_350
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_350:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_352
	test	rax, rax
	je	.label_351
.label_352:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_351:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406620

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_353
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_353
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_353:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_354
	test	rax, rax
	nop	
	je	.label_355
.label_354:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_355:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406670
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_360
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_356
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_362
.label_360:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_359
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_359:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_361
.label_362:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_358
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_358
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_358:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_357
	test	rax, rax
	mov	rbp, rbp
	je	.label_356
.label_357:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_356:
	call	xalloc_die
.label_361:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406750
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_364
	test	rax, rax
	mov	rbp, rbp
	je	.label_363
.label_364:
	pop	rbx
	ret	
.label_363:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406770
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_368
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_369
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_367
	call	free
	xor	eax, eax
	jmp	.label_365
.label_368:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_366
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_367:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_365
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_366
.label_365:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_366:
	mov	rbp, rbp
	call	xalloc_die
.label_369:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406800
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
	je	.label_370
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_371
.label_370:
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
.label_371:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406860
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
	jb	.label_372
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_372
	pop	rcx
	ret	
.label_372:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406890

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
	je	.label_374
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_373
.label_374:
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
.label_373:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4068f0
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
	je	.label_375
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_376
.label_375:
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
.label_376:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406950

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
	#Procedure 0x4069a0

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rsi
	mov	rbp, rbp
	mov	rax, rdi
	xor	ebp, ebp
	jmp	.label_383
	nop	word ptr cs:[rax + rax]
.label_384:
	lea	rdi, [rdi]
	inc	rbp
.label_383:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + rbp*2]
	cmp	ecx, 0x25
	jne	.label_382
	movzx	ecx, byte ptr [rax + rbp*2 + 1]
	nop	
	cmp	ecx, 0x73
	je	.label_384
	jmp	.label_387
.label_382:
	mov	rbp, rbp
	test	cl, cl
	lea	rdi, [rdi]
	jne	.label_387
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_377
	mov	r14d, dword ptr [rsp]
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12, rbp
	nop	dword ptr [rax]
.label_386:
	mov	rsp, rsp
	cmp	r14d, 0x28
	lea	rsi, [rsi]
	ja	.label_388
	movsxd	rax, r14d
	add	rax, qword ptr [rsp + 0x10]
	add	r14d, 8
	mov	dword ptr [rsp], r14d
	jmp	.label_390
	nop	
.label_388:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
.label_390:
	mov	rdi, qword ptr [rax]
	call	strlen
	add	rax, rbx
	lea	rdi, [rdi]
	cmp	rax, rbx
	mov	rbx, -1
	cmovae	rbx, rax
	lea	rdi, [rdi]
	dec	r12
	mov	rbp, rbp
	jne	.label_386
	lea	rdi, [rdi]
	test	rbx, -0x80000000
	je	.label_379
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x4b
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	jmp	.label_378
.label_387:
	lea	rdi, [rsp + 0x20]
	mov	esi, 1
	mov	rdx, rax
	mov	rcx, r15
	call	__vasprintf_chk
	test	eax, eax
	js	.label_380
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_378
.label_380:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0xc
	jne	.label_378
	lea	rdi, [rdi]
	call	xalloc_die
.label_377:
	nop	
	mov	edi, 1
	nop	
	call	xmalloc
	mov	rsp, rsp
	mov	r14, rax
	nop	
	mov	rbx, r14
	mov	rbp, rbp
	mov	byte ptr [rbx], 0
	jmp	.label_378
.label_379:
	lea	rsi, [rsi]
	inc	rax
	mov	rdi, rax
	call	xmalloc
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_385:
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [r15]
	lea	rsi, [rsi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_389
	nop	
	mov	rax, rcx
	add	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r15], ecx
	jmp	.label_381
	nop	word ptr cs:[rax + rax]
.label_389:
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [r15 + 8], rcx
.label_381:
	mov	r12, qword ptr [rax]
	mov	rdi, r12
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	r13, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r13
	mov	rbp, rbp
	call	memcpy
	add	rbx, r13
	mov	rsp, rsp
	dec	rbp
	nop	
	jne	.label_385
	mov	byte ptr [rbx], 0
.label_378:
	mov	rax, r14
	add	rsp, 0x28
	nop	
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406be0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_391
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_392
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
	je	.label_392
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
.label_391:
	mov	ecx, 1
.label_392:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c50

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
	je	.label_393
	nop	
	cmp	r15, -2
	jb	.label_393
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_393
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_393:
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
	#Procedure 0x406ce0

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
	jne	.label_394
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_395
	test	cl, cl
	mov	rsp, rsp
	jne	.label_395
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_395
.label_394:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_395
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_395:
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
	#Procedure 0x406d70

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
	je	.label_397
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_396
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_398
.label_396:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_397
.label_398:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_397:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406dc0

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
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_399
	nop	
	mov	rax, rcx
.label_399:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e00

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
	js	.label_400
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_402
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
	je	.label_400
.label_402:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_400
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_401
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_401:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_400:
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
	#Procedure 0x406eb0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_403
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_403
	test	byte ptr [rbx + 1], 1
	je	.label_403
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_403:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406ef0

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
	jne	.label_404
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_404
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_405
.label_404:
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
.label_405:
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
	je	.label_406
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_406:
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
	#Procedure 0x406fa0

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