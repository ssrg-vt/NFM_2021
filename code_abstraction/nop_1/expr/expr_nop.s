	.section	.text
	.align	16
	#Procedure 0x401e90

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebp, edi
	lea	rdi, [rdi]
	test	ebp, ebp
	jne	.label_7
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	nop	
	mov	edi, 0xa
	mov	rsp, rsp
	call	putchar_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.10
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	call	emit_ancillary_info
	lea	rdi, [rdi]
	mov	edi, ebp
	call	exit
.label_7:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	nop	
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020e0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.24
	nop	word ptr [rax + rax]
.label_10:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.12
	mov	rsp, rsp
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_9
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.12
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	nop	
	mov	esi, OFFSET FLAT:.str.34
	lea	rdi, [rdi]
	mov	edx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.36
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:.str.12
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.12
	nop	
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	cmp	rbx, r14
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.38
	nop	
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmove	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	
	.section	.text
	.align	16
	#Procedure 0x402260

	.globl main
	.type main, @function
main:
	push	rbp
	nop	
	push	rbx
	nop	
	sub	rsp, 0x28
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	set_program_name
	nop	
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
	mov	edi, OFFSET FLAT:.str.14
	nop	
	mov	esi, OFFSET FLAT:.str.15
	call	bindtextdomain
	nop	
	mov	edi, OFFSET FLAT:.str.14
	call	textdomain
	lea	rdi, [rdi]
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	lea	rdi, [rdi]
	call	atexit
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], 0
	mov	qword ptr [word ptr [rsp + 16]], OFFSET FLAT:.str.20
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.19
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.18_0
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.17_0
	nop	
	mov	r9d, OFFSET FLAT:usage
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rsi, rbx
	call	parse_long_options
	lea	rdi, [rdi]
	cmp	ebp, 2
	mov	rbp, rbp
	jb	.label_11
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_12
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2d
	lea	rsi, [rsi]
	jne	.label_12
	mov	rbp, rbp
	cmp	byte ptr [rax + 2], 0
	jne	.label_12
	dec	ebp
	cmp	ebp, 1
	lea	rdi, [rdi]
	jbe	.label_11
	mov	rsp, rsp
	add	rbx, 8
.label_12:
	add	rbx, 8
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	edi, 1
	call	eval
	mov	rbx, rax
	lea	rsi, [rsi]
	call	nomoreargs
	test	al, al
	je	.label_13
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	printv
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	null
	movzx	eax, al
	add	rsp, 0x28
	pop	rbx
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_11:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 2
	call	usage
.label_13:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + args]]
	nop	
	mov	rdx, qword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rbx
	nop	
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402430

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  3
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402440

	.globl eval
	.type eval, @function
eval:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edi
	movzx	edi, r14b
	call	eval1
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rbp, rbp
	jmp	.label_16
	nop	
.label_20:
	mov	rsp, rsp
	mov	rdi, rbp
	call	freev
.label_16:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.39
	call	nextarg
	test	al, al
	lea	rdi, [rdi]
	je	.label_19
.label_21:
	mov	rbp, rbp
	test	r14b, r14b
	je	.label_14
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	null
	jmp	.label_18
	nop	dword ptr [rax + rax]
.label_14:
	xor	eax, eax
.label_18:
	mov	rbp, rbp
	movzx	edi, al
	call	eval1
	mov	rsp, rsp
	mov	rbp, rax
	mov	rdi, rbx
	call	null
	nop	
	test	al, al
	nop	
	je	.label_20
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	freev
	mov	rbp, rbp
	mov	rdi, rbp
	call	null
	nop	
	test	al, al
	nop	
	je	.label_17
	nop	
	mov	rdi, rbp
	call	freev
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	call	int_value
	mov	rbp, rax
.label_17:
	mov	edi, OFFSET FLAT:.str.39
	call	nextarg
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	rbx, rbp
	nop	
	jne	.label_21
	jmp	.label_15
.label_19:
	mov	rsp, rsp
	mov	rbp, rbx
.label_15:
	mov	rax, rbp
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402530

	.globl nomoreargs
	.type nomoreargs, @function
nomoreargs:
	mov	rax,  qword ptr [word ptr [rip + args]]
	cmp	qword ptr [rax], 0
	sete	al
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402550

	.globl printv
	.type printv, @function
printv:
	lea	rsi, [rsi]
	push	rax
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	ecx, dword ptr [rax]
	cmp	ecx, 1
	je	.label_22
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_23
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	add	rax, 8
	mov	esi, 0xa
	mov	rbp, rbp
	mov	rdx, rax
	call	__gmpz_out_str
	mov	edi, 0xa
	pop	rax
	nop	
	jmp	putchar_unlocked
.label_22:
	nop	
	mov	rdi, qword ptr [rax + 8]
	pop	rax
	lea	rdi, [rdi]
	jmp	puts
.label_23:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025b0

	.globl null
	.type null, @function
null:
	mov	rsp, rsp
	mov	eax, dword ptr [rdi]
	mov	rbp, rbp
	cmp	eax, 1
	je	.label_24
	test	eax, eax
	jne	.label_28
	cmp	dword ptr [rdi + 0xc], 0
	lea	rsi, [rsi]
	sete	al
	ret	
.label_24:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	mov	dl, byte ptr [rcx]
	mov	rsp, rsp
	mov	al, 1
	test	dl, dl
	mov	rsp, rsp
	je	.label_27
	movzx	edx, dl
	cmp	edx, 0x2d
	lea	rdi, [rdi]
	sete	dl
	nop	
	movzx	edx, dl
	lea	rcx, [rdx + rcx + 1]
	nop	word ptr cs:[rax + rax]
.label_26:
	movzx	edx, byte ptr [rcx - 1]
	mov	rsp, rsp
	cmp	edx, 0x30
	jne	.label_25
	mov	rsp, rsp
	cmp	byte ptr [rcx], 0
	mov	rsp, rsp
	lea	rcx, [rcx + 1]
	jne	.label_26
.label_27:
	lea	rsi, [rsi]
	ret	
.label_25:
	xor	eax, eax
	nop	
	ret	
.label_28:
	push	rax
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402630

	.globl eval1
	.type eval1, @function
eval1:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	push	rbx
	nop	
	mov	r14d, edi
	nop	
	movzx	edi, r14b
	call	eval2
	jmp	.label_35
	nop	word ptr [rax + rax]
.label_30:
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	freev
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	freev
	xor	edi, edi
	call	int_value
.label_35:
	mov	rbx, rax
	jmp	.label_31
	nop	word ptr cs:[rax + rax]
.label_33:
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	freev
.label_31:
	nop	
	mov	edi, OFFSET FLAT:.str.40
	call	nextarg
	test	al, al
	lea	rsi, [rsi]
	je	.label_32
	nop	
	test	r14b, r14b
	nop	
	je	.label_34
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	null
	xor	al, 1
	jmp	.label_29
	nop	word ptr cs:[rax + rax]
.label_34:
	lea	rdi, [rdi]
	xor	eax, eax
.label_29:
	lea	rdi, [rdi]
	movzx	edi, al
	mov	rbp, rbp
	call	eval2
	mov	rbp, rax
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	null
	test	al, al
	jne	.label_30
	mov	rdi, rbp
	call	null
	test	al, al
	je	.label_33
	jmp	.label_30
.label_32:
	nop	
	mov	rax, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402710

	.globl nextarg
	.type nextarg, @function
nextarg:
	lea	rdi, [rdi]
	push	rbx
	mov	rax, rdi
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	test	rdi, rdi
	je	.label_36
	mov	rsi, rax
	call	strcmp
	test	eax, eax
	sete	al
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rcx, [rbx + rcx*8]
	mov	qword ptr [word ptr [rip + args]],  rcx
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_36:
	lea	rsi, [rsi]
	xor	eax, eax
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl freev
	.type freev, @function
freev:
	mov	rbp, rbp
	push	rbx
	nop	
	mov	rbx, rdi
	lea	rdi, [rbx + 8]
	cmp	dword ptr [rbx], 1
	jne	.label_37
	mov	rdi, qword ptr [rdi]
	call	free
	lea	rsi, [rsi]
	jmp	.label_38
.label_37:
	call	__gmpz_clear
.label_38:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	
	.section	.text
	.align	16
	#Procedure 0x402790

	.globl int_value
	.type int_value, @function
int_value:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	edi, 0x18
	call	xmalloc
	nop	
	mov	rbx, rax
	nop	
	mov	dword ptr [rbx], 0
	lea	rdi, [rbx + 8]
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	call	__gmpz_init_set_ui
	mov	rbp, rbp
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027e0

	.globl eval2
	.type eval2, @function
eval2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	movzx	r14d, dil
	nop	
	mov	edi, r14d
	call	eval3
	jmp	.label_46
	nop	dword ptr [rax + rax]
.label_40:
	mov	rdi, r15
	call	freev
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	freev
	mov	rdi, rbx
	nop	
	call	int_value
.label_46:
	mov	r15, rax
	nop	
	mov	edi, OFFSET FLAT:.str.41
	nop	
	call	nextarg
	test	al, al
	mov	r13d, 0
	mov	rbp, rbp
	jne	.label_42
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.42
	mov	rsp, rsp
	call	nextarg
	mov	r13d, 1
	test	al, al
	mov	rsp, rsp
	jne	.label_42
	mov	edi, OFFSET FLAT:.str.43
	nop	
	call	nextarg
	lea	rsi, [rsi]
	mov	r13d, 2
	test	al, al
	mov	rbp, rbp
	jne	.label_42
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.44
	lea	rdi, [rdi]
	call	nextarg
	lea	rdi, [rdi]
	test	al, al
	nop	
	jne	.label_42
	mov	edi, OFFSET FLAT:.str.45
	call	nextarg
	lea	rdi, [rdi]
	mov	r13d, 3
	test	al, al
	lea	rsi, [rsi]
	jne	.label_42
	mov	edi, OFFSET FLAT:.str.46
	call	nextarg
	mov	r13d, 4
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	jne	.label_42
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.47
	call	nextarg
	mov	r13d, 5
	lea	rsi, [rsi]
	test	al, al
	je	.label_45
	nop	word ptr cs:[rax + rax]
.label_42:
	mov	rsp, rsp
	mov	edi, r14d
	nop	
	call	eval3
	mov	rbp, rax
	test	r14b, r14b
	lea	rdi, [rdi]
	mov	ebx, 0
	je	.label_40
	mov	rdi, r15
	call	tostring
	mov	rsp, rsp
	mov	rdi, rbp
	call	tostring
	mov	rbx, qword ptr [r15 + 8]
	nop	
	mov	rdi, rbx
	call	looks_like_integer
	test	al, al
	nop	
	je	.label_41
	mov	r12, qword ptr [rbp + 8]
	mov	rdi, r12
	call	looks_like_integer
	mov	rbp, rbp
	test	al, al
	je	.label_41
	nop	
	mov	rdi, rbx
	mov	rsi, r12
	call	strintcmp
	lea	rsi, [rsi]
	jmp	.label_44
	nop	dword ptr [rax]
.label_41:
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp + 8]
	mov	rbp, rbp
	call	strcoll
.label_44:
	mov	rsp, rsp
	mov	ebx, eax
	mov	rbp, rbp
	mov	eax, r13d
	cmp	r13d, 5
	nop	
	ja	.label_39
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_43]]
.label_1913:
	shr	ebx, 0x1f
	nop	
	jmp	.label_40
.label_1914:
	mov	rbp, rbp
	test	ebx, ebx
	setle	al
	movzx	ebx, al
	lea	rsi, [rsi]
	jmp	.label_40
.label_1915:
	lea	rdi, [rdi]
	test	ebx, ebx
	sete	al
	movzx	ebx, al
	jmp	.label_40
.label_1916:
	nop	
	test	ebx, ebx
	lea	rdi, [rdi]
	setne	al
	lea	rsi, [rsi]
	movzx	ebx, al
	jmp	.label_40
.label_1917:
	shr	ebx, 0x1f
	nop	
	xor	rbx, 1
	mov	rsp, rsp
	jmp	.label_40
.label_1918:
	mov	rsp, rsp
	test	ebx, ebx
	setg	al
	mov	rsp, rsp
	movzx	ebx, al
	jmp	.label_40
.label_45:
	mov	rax, r15
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	nop	
	ret	
.label_39:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a30

	.globl eval3
	.type eval3, @function
eval3:
	nop	
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	nop	
	push	rbx
	push	rax
	movzx	r13d, dil
	nop	
	mov	edi, r13d
	mov	rbp, rbp
	call	eval4
	mov	r14, rax
	lea	rdi, [rdi]
	mov	r15, r14
	nop	
	add	r15, 8
	mov	r12d, OFFSET FLAT:__gmpz_add
	lea	rsi, [rsi]
	jmp	.label_47
	nop	dword ptr [rax]
.label_50:
	mov	rbp, rbp
	mov	rdi, rbx
	call	freev
.label_47:
	mov	edi, OFFSET FLAT:.str_1
	mov	rsp, rsp
	call	nextarg
	xor	ebp, ebp
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_48
	mov	edi, OFFSET FLAT:.str.52
	nop	
	call	nextarg
	nop	
	mov	ebp, 1
	test	al, al
	je	.label_51
.label_48:
	mov	rbp, rbp
	mov	edi, r13d
	nop	
	call	eval4
	nop	
	mov	rbx, rax
	test	r13b, r13b
	je	.label_50
	mov	rsp, rsp
	mov	rdi, r14
	call	toarith
	test	al, al
	je	.label_49
	mov	rdi, rbx
	call	toarith
	mov	rsp, rsp
	test	al, al
	je	.label_49
	lea	rsi, [rsi]
	test	ebp, ebp
	mov	eax, OFFSET FLAT:__gmpz_sub
	cmove	rax, r12
	mov	rdx, rbx
	add	rdx, 8
	mov	rdi, r15
	nop	
	mov	rsi, r15
	call	rax
	mov	rsp, rsp
	jmp	.label_50
.label_51:
	mov	rax, r14
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_49:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b60

	.globl tostring
	.type tostring, @function
tostring:
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	nop	
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	mov	eax, dword ptr [rbx]
	nop	
	cmp	eax, 1
	lea	rsi, [rsi]
	je	.label_52
	test	eax, eax
	jne	.label_53
	nop	
	lea	r14, [rbx + 8]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 0xa
	mov	rdx, r14
	lea	rsi, [rsi]
	call	__gmpz_get_str
	mov	rbp, rbp
	mov	r15, rax
	nop	
	mov	rdi, r14
	call	__gmpz_clear
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], r15
	mov	rbp, rbp
	mov	dword ptr [rbx], 1
.label_52:
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
.label_53:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bd0

	.globl looks_like_integer
	.type looks_like_integer, @function
looks_like_integer:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	lea	rcx, [rax + rdi + 1]
	nop	word ptr cs:[rax + rax]
.label_55:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rcx - 1]
	mov	rsp, rsp
	add	eax, -0x30
	lea	rsi, [rsi]
	cmp	eax, 9
	ja	.label_54
	mov	al, 1
	cmp	byte ptr [rcx], 0
	lea	rcx, [rcx + 1]
	jne	.label_55
	mov	rsp, rsp
	ret	
.label_54:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c20

	.globl eval4
	.type eval4, @function
eval4:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	movzx	r13d, dil
	mov	rbp, rbp
	mov	edi, r13d
	call	eval5
	nop	
	mov	r14, rax
	lea	rdi, [rdi]
	mov	r15, r14
	lea	rsi, [rsi]
	add	r15, 8
	mov	r12d, OFFSET FLAT:__gmpz_tdiv_q
	jmp	.label_58
	nop	word ptr cs:[rax + rax]
.label_56:
	nop	
	mov	rdi, rbx
	mov	rbp, rbp
	call	freev
.label_58:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.54
	nop	
	call	nextarg
	xor	ebp, ebp
	test	al, al
	jne	.label_60
	mov	edi, OFFSET FLAT:.str.55
	nop	
	call	nextarg
	mov	ebp, 1
	test	al, al
	jne	.label_60
	mov	edi, OFFSET FLAT:.str.56
	call	nextarg
	lea	rsi, [rsi]
	mov	ebp, 2
	nop	
	test	al, al
	je	.label_63
.label_60:
	mov	edi, r13d
	lea	rsi, [rsi]
	call	eval5
	mov	rsp, rsp
	mov	rbx, rax
	test	r13b, r13b
	lea	rsi, [rsi]
	je	.label_56
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	toarith
	test	al, al
	lea	rsi, [rsi]
	je	.label_61
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	toarith
	test	al, al
	je	.label_61
	test	ebp, ebp
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:__gmpz_mul
	je	.label_62
	cmp	dword ptr [rbx + 0xc], 0
	je	.label_57
	cmp	ebp, 1
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:__gmpz_tdiv_r
	mov	rbp, rbp
	cmove	rax, r12
.label_62:
	mov	rdx, rbx
	add	rdx, 8
	mov	rdi, r15
	mov	rsi, r15
	call	rax
	lea	rdi, [rdi]
	jmp	.label_56
.label_63:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_61:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	nop	
	jmp	.label_59
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
.label_59:
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 2
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402d90

	.globl toarith
	.type toarith, @function
toarith:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx]
	lea	rdi, [rdi]
	mov	r14b, 1
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_64
	cmp	eax, 1
	jne	.label_65
	mov	rbp, qword ptr [rbx + 8]
	mov	rdi, rbp
	call	looks_like_integer
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_66
	lea	rsi, [rsi]
	lea	rdi, [rbx + 8]
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	nop	
	mov	dword ptr [rbx], 0
	mov	rbp, rbp
	jmp	.label_64
.label_66:
	xor	r14d, r14d
.label_64:
	mov	al, r14b
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
.label_65:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e10

	.globl eval5
	.type eval5, @function
eval5:
	push	rbp
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	movzx	r15d, dil
	mov	edi, r15d
	call	eval6
	mov	r14, rax
	lea	rdi, [rdi]
	jmp	.label_69
	nop	
.label_67:
	mov	rdi, rbx
	call	freev
.label_69:
	nop	
	mov	edi, OFFSET FLAT:.str.58
	call	nextarg
	test	al, al
	je	.label_68
	mov	rbp, rbp
	mov	edi, r15d
	call	eval6
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	test	r15b, r15b
	mov	rsp, rsp
	je	.label_67
	mov	rdi, r14
	mov	rsi, rbx
	mov	rbp, rbp
	call	docolon
	mov	rbp, rax
	mov	rdi, r14
	call	freev
	mov	r14, rbp
	jmp	.label_67
.label_68:
	mov	rbp, rbp
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ea0

	.globl eval6
	.type eval6, @function
eval6:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:.str_1
	nop	
	call	nextarg
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	je	.label_74
	mov	rbp, rbp
	call	require_more_args
	nop	
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rbp, rbp
	lea	rcx, [rax + 8]
	mov	qword ptr [word ptr [rip + args]],  rcx
	nop	
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	jmp	str_value
.label_74:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.59
	mov	rsp, rsp
	call	nextarg
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_80
	movzx	edi, bl
	call	eval6
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	call	tostring
	mov	rdi, qword ptr [rbx + 8]
	call	mbslen
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	int_value
	nop	
	mov	r14, rax
	jmp	.label_76
.label_80:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.60
	nop	
	call	nextarg
	test	al, al
	je	.label_79
	mov	rbp, rbp
	movzx	ebp, bl
	nop	
	mov	edi, ebp
	lea	rdi, [rdi]
	call	eval6
	mov	rsp, rsp
	mov	r12, rax
	mov	edi, ebp
	lea	rdi, [rdi]
	call	eval6
	mov	r14, rax
	mov	rbp, rbp
	test	bl, bl
	je	.label_70
	mov	rdi, r12
	mov	rsi, r14
	lea	rdi, [rdi]
	call	docolon
	mov	rbx, rax
	mov	rdi, r12
	call	freev
	mov	rsp, rsp
	mov	r12, rbx
.label_70:
	mov	rdi, r14
	jmp	.label_72
.label_79:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.61
	call	nextarg
	test	al, al
	je	.label_75
	movzx	ebx, bl
	mov	edi, ebx
	call	eval6
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi, ebx
	lea	rdi, [rdi]
	call	eval6
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	tostring
	nop	
	mov	rdi, rbx
	call	tostring
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 8]
	mov	rsi, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	call	mbs_logical_cspn
	lea	rsi, [rsi]
	mov	rdi, rax
	call	int_value
	mov	rbp, rbp
	mov	r14, rax
	mov	rbp, rbp
	mov	rdi, rbp
	call	freev
.label_76:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	freev
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	jmp	.label_73
.label_75:
	nop	
	mov	edi, OFFSET FLAT:.str.62
	call	nextarg
	nop	
	test	al, al
	je	.label_77
	mov	rsp, rsp
	movzx	ebp, bl
	mov	rbp, rbp
	mov	edi, ebp
	call	eval6
	lea	rsi, [rsi]
	mov	r14, rax
	nop	
	mov	edi, ebp
	lea	rdi, [rdi]
	call	eval6
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	mov	edi, ebp
	mov	rsp, rsp
	call	eval6
	mov	r15, rax
	mov	rsp, rsp
	mov	rdi, r14
	call	tostring
	mov	rdi, rbx
	call	toarith
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	je	.label_71
	mov	rdi, r15
	lea	rdi, [rdi]
	call	toarith
	mov	rsp, rsp
	test	al, al
	je	.label_71
	mov	rdi, rbx
	add	rdi, 8
	lea	rdi, [rdi]
	call	getsize
	mov	rbp, rax
	mov	rdi, r15
	add	rdi, 8
	nop	
	call	getsize
	mov	rdi, qword ptr [r14 + 8]
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rdx, rax
	call	mbs_logical_substr
	mov	rbp, rax
	mov	rdi, rbp
	call	str_value
	lea	rsi, [rsi]
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	free
	jmp	.label_78
.label_77:
	lea	rsi, [rsi]
	movzx	edi, bl
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	nop	
	pop	rbp
	lea	rdi, [rdi]
	jmp	eval7
.label_71:
	mov	edi, OFFSET FLAT:.str_0
	nop	
	call	str_value
	mov	r12, rax
.label_78:
	mov	rdi, r14
	call	freev
	mov	rdi, rbx
	mov	rbp, rbp
	call	freev
	mov	rdi, r15
.label_72:
	mov	rsp, rsp
	call	freev
	mov	rax, r12
.label_73:
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403180

	.globl docolon
	.type docolon, @function
docolon:
	push	rbp
	nop	
	push	r14
	push	rbx
	sub	rsp, 0x160
	mov	rbx, rsi
	mov	r14, rdi
	call	tostring
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	tostring
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x10], 0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x140], rax
	mov	qword ptr [rsp + 0x148], 0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	mov	rbx, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rsp + 0x120]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rsp, rsp
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_82
	and	byte ptr [rsp + 0x158], 0x7f
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x120]
	mov	rbp, rbp
	lea	r8, [rsp]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rdx, rax
	mov	rbp, rbp
	call	rpl_re_match
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rsp, rsp
	js	.label_84
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x150], 0
	je	.label_86
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	add	rdi, qword ptr [rax + 8]
	call	str_value
	jmp	.label_81
.label_84:
	lea	rdi, [rdi]
	cmp	rbx, -1
	jne	.label_85
	cmp	qword ptr [rsp + 0x150], 0
	mov	rbp, rbp
	je	.label_87
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	str_value
	jmp	.label_81
.label_86:
	nop	
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	cmp	rax, 1
	je	.label_83
	mov	rbp, rbp
	mov	rdi, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	mbs_offset_to_chars
	mov	rbx, rax
.label_83:
	nop	
	mov	rdi, rbx
	jmp	.label_88
.label_87:
	xor	edi, edi
.label_88:
	mov	rsp, rsp
	call	int_value
.label_81:
	mov	rbx, rax
	cmp	qword ptr [rsp], 0
	mov	rbp, rbp
	je	.label_90
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_90:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x140], 0
	lea	rdi, [rsp + 0x120]
	call	rpl_regfree
	mov	rax, rbx
	mov	rbp, rbp
	add	rsp, 0x160
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_82:
	lea	rsi, [rsi]
	mov	edi, 2
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	nop	
	xor	eax, eax
	mov	rsp, rsp
	call	error
.label_85:
	lea	rdi, [rdi]
	mov	ebp, 0x4b
	lea	rdi, [rdi]
	cmp	rbx, -2
	jne	.label_89
	call	__errno_location
	nop	
	mov	ebp, dword ptr [rax]
.label_89:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 3
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4033c0

	.globl require_more_args
	.type require_more_args, @function
require_more_args:
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	call	nomoreargs
	test	al, al
	lea	rsi, [rsi]
	jne	.label_91
	pop	rbx
	ret	
.label_91:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	nop	
	mov	rdx, qword ptr [rax - 8]
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, 8
	call	quotearg_n_style
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403430

	.globl str_value
	.type str_value, @function
str_value:
	nop	
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14, rdi
	lea	rdi, [rdi]
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	dword ptr [rbx], 1
	mov	rdi, r14
	mov	rbp, rbp
	call	xstrdup
	mov	qword ptr [rbx + 8], rax
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403480

	.globl mbs_logical_cspn
	.type mbs_logical_cspn, @function
mbs_logical_cspn:
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x80
	mov	r14, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	xor	r13d, r13d
	cmp	byte ptr [r14], 0
	je	.label_92
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	cmp	rax, 2
	nop	
	jb	.label_104
	mov	qword ptr [rsp + 0x50], rbx
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x40], 0
	mov	qword ptr [rsp + 0x44], 0
	mov	byte ptr [rsp + 0x4c], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x40]
	call	mbuiter_multi_next
	xor	r13d, r13d
	nop	
	cmp	byte ptr [rsp + 0x60], 0
	je	.label_103
	nop	
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	je	.label_92
.label_103:
	lea	rsi, [rsi]
	xor	r13d, r13d
	lea	r15, [rsp + 0x40]
	mov	rsp, rsp
	lea	r12, [rsp]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_94:
	inc	rbx
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], 1
	lea	rsi, [rsi]
	jne	.label_102
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	movsx	esi, byte ptr [rax]
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	call	mbschr
	test	rax, rax
	je	.label_97
	lea	rsi, [rsi]
	jmp	.label_99
	nop	dword ptr [rax]
.label_102:
	mov	qword ptr [rsp + 0x10], r14
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	jmp	.label_93
	nop	word ptr cs:[rax + rax]
.label_95:
	mov	rax, qword ptr [rsp + 0x18]
	add	qword ptr [rsp + 0x10], rax
.label_93:
	nop	
	mov	byte ptr [rsp + 0xc], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x20], 0
	setne	cl
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	mov	rbp, rbp
	je	.label_100
	mov	rbp, rbp
	test	eax, eax
	je	.label_97
.label_100:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x60], 0
	je	.label_101
	xor	cl, 1
	mov	rbp, rbp
	test	cl, 1
	jne	.label_101
	nop	
	cmp	eax, dword ptr [rsp + 0x64]
	jne	.label_95
	jmp	.label_98
	nop	word ptr cs:[rax + rax]
.label_101:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
	cmp	rdx, qword ptr [rsp + 0x58]
	nop	
	jne	.label_95
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_95
	nop	
	jmp	.label_98
	nop	word ptr cs:[rax + rax]
.label_97:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0x50], rax
	mov	byte ptr [rsp + 0x4c], 0
	mov	rdi, r15
	mov	rsp, rsp
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x60], 0
	mov	rsp, rsp
	je	.label_94
	nop	
	mov	eax, dword ptr [rsp + 0x64]
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_94
	jmp	.label_92
.label_104:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rsp, rsp
	call	strcspn
	lea	rdi, [rdi]
	mov	r13, rax
	cmp	byte ptr [rbx + r13], 0
	nop	
	je	.label_96
	inc	r13
	lea	rsi, [rsi]
	jmp	.label_92
.label_96:
	xor	r13d, r13d
	jmp	.label_92
.label_98:
	mov	r13, rbx
.label_92:
	mov	rax, r13
	add	rsp, 0x80
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	ret	
.label_99:
	mov	r13, rbx
	jmp	.label_92
	.section	.text
	.align	16
	#Procedure 0x4036b0

	.globl getsize
	.type getsize, @function
getsize:
	push	rbx
	mov	rbx, rdi
	mov	rax, -1
	cmp	dword ptr [rbx + 4], 0
	mov	rbp, rbp
	js	.label_105
	mov	rdi, rbx
	call	__gmpz_fits_ulong_p
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_106
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__gmpz_get_ui
	mov	rsp, rsp
	cmp	rax, -1
	jne	.label_105
.label_106:
	lea	rdi, [rdi]
	mov	rax, -2
.label_105:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403700

	.globl mbs_logical_substr
	.type mbs_logical_substr, @function
mbs_logical_substr:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x48
	nop	
	mov	r13, rdx
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	r12, rdi
	mov	rbp, rbp
	call	strlen
	lea	rdi, [rdi]
	mov	r15, rax
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	mov	rsp, rsp
	mov	rbx, r15
	nop	
	jb	.label_113
	mov	rdi, r12
	call	mbslen
	lea	rsi, [rsi]
	mov	rbx, rax
.label_113:
	lea	rax, [r14 - 1]
	cmp	rax, rbx
	mov	rbp, rbp
	jae	.label_108
	lea	rax, [r13 + 1]
	mov	rsp, rsp
	cmp	rax, 1
	mov	rsp, rsp
	ja	.label_110
.label_108:
	nop	
	mov	edi, OFFSET FLAT:.str_0
	nop	
	add	rsp, 0x48
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	xstrdup
.label_110:
	mov	rbp, rbp
	sub	rbx, r14
	inc	rbx
	cmp	rbx, r13
	lea	rsi, [rsi]
	cmova	rbx, r13
	nop	
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	cmp	rax, 1
	jne	.label_111
	lea	rdi, [rbx + 1]
	call	xmalloc
	mov	r15, rax
	lea	rsi, [r12 + r14 - 1]
	mov	rcx, -1
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	__mempcpy_chk
	nop	
	mov	r12, rax
	jmp	.label_107
.label_111:
	lea	rdi, [rdi]
	inc	r15
	mov	rdi, r15
	call	xmalloc
	lea	rdi, [rdi]
	mov	r15, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r12
	nop	
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	nop	
	cmp	byte ptr [rsp + 0x28], 0
	mov	rsp, rsp
	sete	al
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x2c], 0
	nop	
	setne	cl
	mov	rbp, rbp
	test	rbx, rbx
	mov	r12, r15
	je	.label_107
	mov	rbp, rbp
	or	al, cl
	mov	r12, r15
	mov	rsp, rsp
	je	.label_107
	nop	
	mov	ebp, 1
	lea	r13, [rsp + 8]
	nop	
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_109:
	cmp	rbp, r14
	jb	.label_112
	dec	rbx
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rcx, -1
	mov	rdi, r12
	call	__mempcpy_chk
	mov	r12, rax
.label_112:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	add	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r13
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x28], 0
	sete	al
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x2c], 0
	mov	rsp, rsp
	setne	cl
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_107
	inc	rbp
	lea	rsi, [rsi]
	or	al, cl
	jne	.label_109
.label_107:
	mov	byte ptr [r12], 0
	mov	rax, r15
	nop	
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403910

	.globl eval7
	.type eval7, @function
eval7:
	mov	rbp, rbp
	push	rbx
	mov	ebx, edi
	call	require_more_args
	mov	edi, OFFSET FLAT:.str.68
	call	nextarg
	test	al, al
	mov	rsp, rsp
	je	.label_115
	mov	rsp, rsp
	movzx	edi, bl
	call	eval
	mov	rbp, rbp
	mov	rbx, rax
	mov	rbp, rbp
	call	nomoreargs
	lea	rdi, [rdi]
	test	al, al
	jne	.label_118
	mov	edi, OFFSET FLAT:.str.70
	call	nextarg
	nop	
	test	al, al
	je	.label_117
	mov	rbp, rbp
	mov	rax, rbx
	pop	rbx
	ret	
.label_115:
	mov	edi, OFFSET FLAT:.str.70
	call	nextarg
	mov	rbp, rbp
	test	al, al
	nop	
	jne	.label_116
	mov	rax,  qword ptr [word ptr [rip + args]]
	lea	rcx, [rax + 8]
	mov	qword ptr [word ptr [rip + args]],  rcx
	mov	rdi, qword ptr [rax]
	nop	
	pop	rbx
	mov	rsp, rsp
	jmp	str_value
.label_118:
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax - 8]
	jmp	.label_114
.label_117:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.71
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
.label_114:
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, 8
	mov	rbp, rbp
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
.label_116:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	.section	.text
	.align	16
	#Procedure 0x403a40

	.globl mbs_offset_to_chars
	.type mbs_offset_to_chars, @function
mbs_offset_to_chars:
	push	r15
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	qword ptr [rsp + 0x18], r14
	nop	
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	mov	rbp, rbp
	xor	ebx, ebx
	nop	
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_120
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	mov	rsp, rsp
	je	.label_119
.label_120:
	mov	rbp, rbp
	xor	ebx, ebx
	lea	r12, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_121:
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	sub	rax, r14
	mov	rbp, rbp
	cmp	rax, r15
	adc	rbx, 0
	cmp	rax, r15
	mov	rsp, rsp
	jae	.label_119
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rsp, rsp
	mov	rdi, r12
	call	mbuiter_multi_next
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x28], 0
	mov	rbp, rbp
	je	.label_121
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x2c]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_121
.label_119:
	lea	rsi, [rsi]
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rsp, 0x48
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b30
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
	#Procedure 0x403b40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b50

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
	je	.label_123
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_122
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_122
.label_123:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_125
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
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
	jne	.label_124
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_2
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
.label_125:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_124:
	mov	rbp, rbp
	mov	rdi, rbx
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
	#Procedure 0x403c50

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
	je	.label_126
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
.label_126:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_127
	mov	edx, OFFSET FLAT:.str_1
	mov	ecx, OFFSET FLAT:long_options
	nop	
	xor	r8d, r8d
	lea	rsi, [rsi]
	call	getopt_long
	mov	rbp, rbp
	cmp	eax, 0x68
	mov	rsp, rsp
	je	.label_128
	cmp	eax, 0x76
	mov	rbp, rbp
	jne	.label_127
	mov	rbp, rbp
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x30
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, r15
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	call	version_etc_va
	nop	
	xor	edi, edi
	call	exit
.label_128:
	xor	edi, edi
	call	rbx
.label_127:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	lea	rdi, [rdi]
	add	rsp, 0xd0
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d90
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
	je	.label_130
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
.label_130:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_0
	mov	edx, OFFSET FLAT:.str_1
	test	r9b, r9b
	cmovne	rdx, rax
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_133
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	cmp	eax, 0x68
	je	.label_129
	mov	rsp, rsp
	cmp	eax, 0x76
	nop	
	je	.label_131
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rdi, [rdi]
	jmp	.label_132
.label_129:
	lea	rdi, [rdi]
	xor	edi, edi
.label_132:
	call	rcx
.label_133:
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
.label_131:
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
	#Procedure 0x403ee0

	.globl mbschr
	.type mbschr, @function
mbschr:
	push	rbp
	push	rbx
	sub	rsp, 0x48
	mov	ebp, esi
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	mov	ecx, ebp
	and	ecx, 0xf0
	mov	rbp, rbp
	cmp	ecx, 0x30
	jb	.label_136
	lea	rsi, [rsi]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_136
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	byte ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp + 0xc], 0
	nop	
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	mbuiter_multi_next
	xor	eax, eax
	cmp	byte ptr [rsp + 0x28], 0
	lea	rsi, [rsi]
	je	.label_135
	nop	
	mov	ecx, dword ptr [rsp + 0x2c]
	test	ecx, ecx
	je	.label_137
.label_135:
	lea	rsi, [rsi]
	movzx	ebp, bpl
	lea	rbx, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_138:
	cmp	qword ptr [rsp + 0x20], 1
	lea	rdi, [rdi]
	jne	.label_134
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, ebp
	je	.label_137
.label_134:
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, rbx
	call	mbuiter_multi_next
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_138
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	mov	eax, 0
	nop	
	jne	.label_138
.label_137:
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_136:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, ebp
	add	rsp, 0x48
	lea	rdi, [rdi]
	pop	rbx
	pop	rbp
	jmp	strchr
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403ff0

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_142
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	mbuiter_multi_next
	nop	
	xor	ebx, ebx
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_140
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x2c]
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_141
.label_140:
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	lea	r14, [rsp + 8]
	nop	dword ptr [rax]
.label_139:
	mov	rbp, rbp
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rsp, rsp
	mov	rdi, r14
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x2c]
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_139
	nop	
	test	eax, eax
	jne	.label_139
.label_141:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_142:
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	jmp	strlen
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040c0

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	lea	rsi, [rsi]
	jne	.label_143
	cmp	byte ptr [rbx], 0
	jne	.label_150
	mov	rax, qword ptr [rbx + 0x10]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, al
	mov	rbp, rbp
	je	.label_149
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	movsx	eax, byte ptr [rax]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_145
.label_149:
	mov	rbp, rbp
	lea	rdi, [rbx + 4]
	call	mbsinit
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_147
	mov	byte ptr [rbx], 1
.label_150:
	lea	r14, [rbx + 0x24]
	mov	r12, qword ptr [rbx + 0x10]
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rax
	nop	
	call	strnlen1
	nop	
	lea	r15, [rbx + 4]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, r15
	nop	
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	mov	rsp, rsp
	je	.label_144
	nop	
	test	rax, rax
	je	.label_151
	cmp	rax, -1
	jne	.label_152
	nop	
	mov	qword ptr [rbx + 0x18], 1
	nop	
	mov	byte ptr [rbx + 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_145
.label_144:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	nop	
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_145
.label_151:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_148
	cmp	dword ptr [r14], 0
	jne	.label_146
.label_152:
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x20], 1
	lea	rsi, [rsi]
	mov	rdi, r15
	call	mbsinit
	test	eax, eax
	nop	
	je	.label_145
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 0
.label_145:
	nop	
	mov	byte ptr [rbx + 0xc], 1
.label_143:
	mov	rsp, rsp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
.label_147:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 0x96
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_148:
	mov	edi, OFFSET FLAT:.str.2_0
	nop	
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_146:
	nop	
	mov	edi, OFFSET FLAT:.str.3_0
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	lea	rdi, [rdi]
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404260
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404270
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	mov	al, byte ptr [rsi]
	mov	rsp, rsp
	test	al, al
	mov	byte ptr [rdi], al
	nop	
	je	.label_153
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + 4]
	mov	qword ptr [rdi + 4], rax
	lea	rsi, [rsi]
	jmp	.label_154
.label_153:
	mov	qword ptr [rdi + 4], 0
.label_154:
	mov	al, byte ptr [rsi + 0xc]
	lea	rsi, [rsi]
	mov	byte ptr [rdi + 0xc], al
	nop	
	add	rdi, 0x10
	add	rsi, 0x10
	mov	rbp, rbp
	jmp	mb_copy
	nop	
	.section	.text
	.align	16
	#Procedure 0x4042b0

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
	je	.label_155
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
	jl	.label_157
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_157
	mov	esi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_156
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_156:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_157:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_155:
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
	#Procedure 0x4043a0
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
	#Procedure 0x4043f0
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
	#Procedure 0x404410
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
	#Procedure 0x404430

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
	#Procedure 0x4044a0
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
	#Procedure 0x4044c0

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
	je	.label_158
	test	rdx, rdx
	nop	
	je	.label_158
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_158:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404500
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
	#Procedure 0x4045a0

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
.label_224:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_201
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_210]]
.label_1899:
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
.label_1900:
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
	jne	.label_241
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_241
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_269:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_235
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_235:
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
	jne	.label_269
.label_241:
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
	jmp	.label_174
.label_1892:
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
	jmp	.label_174
.label_1895:
	mov	rsp, rsp
	mov	al, 1
.label_1893:
	mov	r15b, 1
.label_1896:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_186
	mov	cl, al
.label_186:
	lea	rdi, [rdi]
	mov	al, cl
.label_1894:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_191
	test	r10, r10
	je	.label_197
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_202
.label_191:
	xor	ecx, ecx
	jmp	.label_202
.label_1897:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_211
	test	r10, r10
	je	.label_190
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_220
.label_1898:
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
	jmp	.label_174
.label_197:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_202:
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
	jmp	.label_174
.label_211:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_220
.label_190:
	mov	rbp, rbp
	mov	eax, 1
.label_220:
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
.label_174:
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
	jmp	.label_247
	nop	word ptr [rax + rax]
.label_179:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_247:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_206
	cmp	rsi, rbp
	jne	.label_180
	jmp	.label_209
	nop	word ptr cs:[rax + rax]
.label_206:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_209
.label_180:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_217
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_223
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_223
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
.label_223:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_250
.label_217:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_159:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_258
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_263]]
.label_1908:
	test	rsi, rsi
	jne	.label_166
	jmp	.label_204
	nop	word ptr [rax + rax]
.label_250:
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
	jne	.label_279
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
	je	.label_159
	mov	rsp, rsp
	jmp	.label_168
.label_279:
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
	jmp	.label_159
.label_1912:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_213
	test	rsi, rsi
	nop	
	jne	.label_200
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_204
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_165
.label_1901:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_275
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_168
	cmp	edi, 2
	nop	
	jne	.label_219
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_222
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_226
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_226:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_237
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_237:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_244
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_244:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_189
.label_1902:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_257
.label_1903:
	mov	cl, 0x74
	jmp	.label_260
.label_1904:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_257
.label_1905:
	mov	bl, 0x66
	jmp	.label_257
.label_1906:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_260
.label_1909:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_264
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_193
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
	jae	.label_208
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_208:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_171
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_171:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_181
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_181:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_192
.label_1910:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_239
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_207
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_193
.label_207:
	mov	rdi, r14
	jmp	.label_166
.label_1911:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_215
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_193
	mov	rdi, r14
	jmp	.label_225
.label_258:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_228
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
.label_163:
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
	ja	.label_249
	test	dl, dl
	mov	rsp, rsp
	je	.label_249
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_165
.label_213:
	test	rsi, rsi
	jne	.label_267
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_267
.label_204:
	mov	rbp, rbp
	mov	dl, 1
.label_1907:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_168
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_165
.label_275:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_166
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_247
.label_264:
	mov	rdi, r14
.label_192:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_165
.label_215:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_260
.label_225:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_164
.label_260:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_168
.label_257:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_165
	lea	rsi, [rsi]
	jmp	.label_183
.label_228:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_185
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
.label_185:
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
.label_274:
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
	je	.label_231
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
	je	.label_234
	cmp	rbp, -2
	nop	
	je	.label_246
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_273
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_265:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_160
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_172
.label_160:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_265
.label_273:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_162
	xor	r15d, r15d
.label_162:
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
	je	.label_274
	jmp	.label_163
.label_267:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_165
.label_239:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_166
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_166
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_166
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_182
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_188
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_168
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_248
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_248:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_261
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_261:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_243
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_243:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_176
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_176:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_165
.label_166:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_165:
	test	r12b, r12b
	je	.label_251
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_253
	jmp	.label_255
	nop	word ptr cs:[rax + rax]
.label_251:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_255
.label_253:
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
	jne	.label_262
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_164
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
.label_255:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_183
	jmp	.label_164
.label_262:
	mov	bl, r13b
	mov	rsi, r14
.label_183:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_168
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_177
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_177
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_198
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_198:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_175
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_175:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_187
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_187:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_177:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_203
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_203:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_161
.label_200:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_165
.label_249:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_221
	nop	word ptr cs:[rax + rax]
.label_229:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_221:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_233
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_236
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_242
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_242:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_236
	nop	dword ptr [rax]
.label_233:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_193
	cmp	r14d, 2
	jne	.label_173
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_173
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_268
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_268:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_272
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_272:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_278
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_278:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_173:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_280
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_280:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_256
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
.label_256:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_194
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
.label_194:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_236:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_164
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_227
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_230
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_232
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_232:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_212
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_212:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_230
	nop	word ptr cs:[rax + rax]
.label_227:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_230:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_229
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_229
	nop	word ptr cs:[rax + rax]
.label_164:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_170
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_170
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_199
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_199:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_277
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_277:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_161
	nop	word ptr cs:[rax + rax]
.label_170:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_161:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_179
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_179
.label_219:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_189
.label_222:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_189:
	cmp	rcx, r10
	jae	.label_195
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_195:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_205
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_270
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_218
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_254
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_254:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_240
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_240:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_165
.label_205:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_165
.label_270:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_165
.label_218:
	xor	r15d, r15d
	jmp	.label_165
.label_231:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_169
.label_234:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_266
.label_246:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_271
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_276:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_167
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_276
	xor	r15d, r15d
	nop	
	jmp	.label_169
.label_271:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_266:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_169:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_163
.label_167:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_169
.label_182:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_165
.label_188:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_165
	nop	word ptr cs:[rax + rax]
.label_209:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_184
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_193
.label_184:
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
	je	.label_214
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_214
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_216
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_214
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
	je	.label_224
.label_214:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_238
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_238
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_238
	inc	rdx
	nop	dword ptr [rax + rax]
.label_252:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_245
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_245:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_252
.label_238:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_259
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_259
.label_168:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_178:
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
.label_196:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_259:
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
.label_172:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_178
.label_193:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_178
.label_216:
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
	jmp	.label_196
.label_201:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cf0
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
	#Procedure 0x405d10

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
	#Procedure 0x405e60
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
.label_286:
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
	jl	.label_286
.label_282:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_285
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_283]], OFFSET FLAT:slot0
.label_285:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_284
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_284:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f20

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405f30

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
	js	.label_293
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_288
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_289
.label_288:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_290
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
	jne	.label_292
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_292:
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
.label_289:
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
	ja	.label_291
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
	je	.label_287
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_287:
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
.label_291:
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
.label_293:
	lea	rdi, [rdi]
	call	abort
.label_290:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4061a0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4061b0
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
	#Procedure 0x4061d0
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
	#Procedure 0x4061f0

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
	#Procedure 0x406250

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
	je	.label_294
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
.label_294:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4062c0

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
	#Procedure 0x406320
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
	#Procedure 0x406340
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
	#Procedure 0x406360

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
	mov	rcx,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
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
	#Procedure 0x406400

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
	#Procedure 0x406420

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
	#Procedure 0x406430
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406440
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
	#Procedure 0x4064b0

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
	#Procedure 0x4064c0

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
	mov	rax,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
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
	#Procedure 0x406550
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
	#Procedure 0x406580
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
	#Procedure 0x4065b0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065c0
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
	#Procedure 0x4065e0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4065f0
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
	#Procedure 0x406600

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
	jne	.label_298
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
	je	.label_299
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_298
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_298
.label_299:
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
	je	.label_300
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_298
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_298
.label_300:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_298:
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
	#Procedure 0x406730

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
	je	.label_302
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_301
	jmp	.label_303
.label_302:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_303
.label_301:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_303
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
.label_303:
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
	#Procedure 0x4067f0

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
	je	.label_306
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_305
	lea	rsi, [rsi]
	jmp	.label_304
.label_306:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_304
.label_305:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_304
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
.label_304:
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
	#Procedure 0x4068e0

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
	je	.label_309
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_308
	jmp	.label_307
.label_309:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_307
.label_308:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_307
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
.label_307:
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
	#Procedure 0x4069b0

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
	je	.label_312
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_311
	jmp	.label_310
.label_312:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_310
.label_311:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_310
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
.label_310:
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
	#Procedure 0x406a50

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
	je	.label_315
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_314
	nop	
	jmp	.label_313
.label_315:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_313
.label_314:
	mov	eax, 1
	test	bpl, bpl
	je	.label_313
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
.label_313:
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
	#Procedure 0x406af0

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
	je	.label_318
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_317
	lea	rsi, [rsi]
	jmp	.label_316
.label_318:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_316
.label_317:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_316
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
.label_316:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b80

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
	je	.label_321
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_320
	jmp	.label_319
.label_321:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_319
.label_320:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_319
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_319:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406bf0

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
	je	.label_322
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_324
	mov	rbp, rbp
	jmp	.label_323
.label_322:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_323
.label_324:
	xor	eax, eax
.label_323:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c40

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, r14
	call	memchr
	lea	rdi, [rdi]
	mov	ecx, 1
	sub	rcx, rbx
	lea	rdi, [rdi]
	add	rcx, rax
	test	rax, rax
	mov	rbp, rbp
	cmove	rcx, r14
	lea	rsi, [rsi]
	mov	rax, rcx
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406c90

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	jmp	numcompare
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ca0

	.globl numcompare
	.type numcompare, @function
numcompare:
	movzx	ecx, byte ptr [rdi]
	mov	dl, byte ptr [rsi]
	cmp	ecx, 0x2d
	jne	.label_337
	nop	
.label_328:
	movzx	r10d, byte ptr [rdi + 1]
	inc	rdi
	cmp	r10d, 0x30
	je	.label_328
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_345
	nop	dword ptr [rax]
.label_332:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_332
	xor	edx, edx
	movzx	r8d, r10b
	movzx	ecx, al
	cmp	ecx, r8d
	jne	.label_344
	lea	ecx, [r10 - 0x30]
	cmp	ecx, 9
	ja	.label_356
	nop	dword ptr [rax + rax]
.label_331:
	mov	r9b, byte ptr [rdi + rdx + 1]
	movzx	eax, byte ptr [rsi + rdx + 1]
	movzx	r10d, r9b
	inc	rdx
	cmp	eax, r10d
	jne	.label_348
	lea	ecx, [r10 - 0x30]
	cmp	ecx, 0xa
	jb	.label_331
.label_348:
	add	rsi, rdx
	add	rdi, rdx
	jmp	.label_336
.label_337:
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_341
	inc	rsi
	nop	dword ptr [rax + rax]
.label_346:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_346
	add	edx, -0x30
	mov	eax, 1
	cmp	edx, 0xa
	jb	.label_327
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_340
	inc	rdi
	nop	word ptr [rax + rax]
.label_330:
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_330
.label_340:
	movzx	eax, cl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_345:
	add	r10d, -0x30
	mov	eax, 0xffffffff
	cmp	r10d, 0xa
	jb	.label_327
	cmp	r8d, 0x30
	jne	.label_335
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_343:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_343
.label_335:
	movzx	eax, dl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	ret	
.label_341:
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_349
	nop	
.label_350:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_350
.label_349:
	cmp	r8d, 0x30
	jne	.label_352
	nop	word ptr cs:[rax + rax]
.label_357:
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	cmp	edx, 0x30
	je	.label_357
.label_352:
	movzx	r8d, cl
	movzx	eax, dl
	cmp	r8d, eax
	jne	.label_329
	nop	dword ptr [rax + rax]
.label_333:
	lea	eax, [r8 - 0x30]
	cmp	eax, 0xa
	jae	.label_329
	mov	cl, byte ptr [rdi + 1]
	inc	rdi
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	movzx	r8d, cl
	cmp	r8d, edx
	je	.label_333
.label_329:
	movzx	eax, dl
	movzx	edx, cl
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_334
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_354:
	movzx	edx, byte ptr [rdi + rcx + 1]
	inc	rcx
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_354
.label_334:
	lea	edi, [rax - 0x30]
	xor	edx, edx
	cmp	edi, 9
	ja	.label_353
	xor	edx, edx
	nop	dword ptr [rax]
.label_338:
	movzx	edi, byte ptr [rsi + rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_338
.label_353:
	cmp	rcx, rdx
	jne	.label_325
	sub	r8d, eax
	xor	eax, eax
	test	rcx, rcx
	jmp	.label_326
.label_325:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
	ret	
.label_344:
	mov	r9b, r10b
	jmp	.label_336
.label_356:
	mov	r9b, r10b
.label_336:
	movzx	r8d, al
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_339
	xor	edx, edx
	nop	dword ptr [rax]
.label_351:
	movzx	eax, byte ptr [rdi + rdx + 1]
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_351
.label_339:
	lea	ecx, [r8 - 0x30]
	xor	eax, eax
	cmp	ecx, 9
	ja	.label_355
	xor	eax, eax
	nop	dword ptr [rax]
.label_347:
	movzx	ecx, byte ptr [rsi + rax + 1]
	inc	rax
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_347
.label_355:
	cmp	rdx, rax
	jne	.label_342
	sub	r8d, r10d
	xor	eax, eax
	test	rdx, rdx
.label_326:
	cmovne	eax, r8d
.label_327:
	ret	
.label_342:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f10
	.globl fraccompare
	.type fraccompare, @function
fraccompare:

	movzx	eax, byte ptr [rdi]
	cmp	eax, 0xff
	jne	.label_363
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0xff
	je	.label_365
.label_363:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0xff
	je	.label_360
	xor	eax, eax
	movzx	ecx, byte ptr [rsi]
	cmp	ecx, 0xff
	jne	.label_359
	inc	rsi
	nop	
.label_366:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_366
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	jmp	.label_359
.label_360:
	inc	rdi
	nop	dword ptr [rax + rax]
.label_362:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_362
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_365:
	inc	rdi
	inc	rsi
	nop	dword ptr [rax]
.label_364:
	movzx	r8d, byte ptr [rdi]
	movsx	eax, r8b
	movzx	ecx, byte ptr [rsi]
	lea	edx, [rax - 0x30]
	cmp	r8d, ecx
	jne	.label_358
	inc	rdi
	inc	rsi
	xor	eax, eax
	cmp	edx, 0xa
	jb	.label_364
.label_359:
	ret	
.label_358:
	cmp	edx, 9
	ja	.label_361
	movsx	ecx, cl
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_361
	sub	eax, ecx
	ret	
.label_361:
	movsx	eax, byte ptr [rdi]
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_362
	movsx	ecx, byte ptr [rsi]
	add	ecx, -0x30
	xor	eax, eax
	cmp	ecx, 0xa
	jb	.label_366
	jmp	.label_359
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406fe0

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
	je	.label_372
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
	jmp	.label_374
.label_372:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_374:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
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
	ja	.label_375
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_367]]
.label_1781:
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
.label_375:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_368
.label_1782:
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
.label_1783:
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
.label_1784:
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
	jmp	.label_371
.label_1785:
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
	jmp	.label_369
.label_1786:
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
	jmp	.label_370
.label_1787:
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
.label_370:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_369:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_371:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_376
.label_1789:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_368:
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
	jmp	.label_373
.label_1788:
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
.label_373:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_376:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1780:
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
	#Procedure 0x4073d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_377:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_377
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407400

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_381:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_378
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_380
	nop	word ptr cs:[rax + rax]
.label_378:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_380:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_379
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_381
.label_379:
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
	#Procedure 0x407490
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_382
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
.label_382:
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
	#Procedure 0x407540
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
	#Procedure 0x4075d0
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
	jb	.label_383
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_383:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407610

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_384
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_385
.label_384:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_385:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407640
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
	jb	.label_386
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_386:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407680

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_387
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_387
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_387:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_388
	test	rax, rax
	nop	
	je	.label_389
.label_388:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_389:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076d0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_390
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_391
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_392
.label_390:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_393
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_393:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_394
.label_392:
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
.label_391:
	call	xalloc_die
.label_394:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407770

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407780
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407790
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
	#Procedure 0x4077d0
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
	jb	.label_395
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_395
	pop	rcx
	ret	
.label_395:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x407800

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
	#Procedure 0x407850

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
	#Procedure 0x407870

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
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
	#Procedure 0x4078c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_396
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_397
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
	je	.label_397
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
.label_396:
	mov	ecx, 1
.label_397:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407930

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
	je	.label_398
	nop	
	cmp	r15, -2
	jb	.label_398
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_398
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_398:
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
	#Procedure 0x4079c0

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	nop	
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	nop	
	and	cl, 0x10
	and	al, 0x6f
	mov	rbp, rbp
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	nop	
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	nop	
	mov	rdi, rdx
	mov	rdx, r8
	lea	rdi, [rdi]
	call	re_compile_internal
	test	eax, eax
	je	.label_399
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	mov	rbp, rbp
	jmp	dcgettext
.label_399:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a30

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xa8
	nop	
	mov	r15, rcx
	nop	
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	nop	
	mov	dword ptr [rsp + 0xa4], 0
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 0x38]
	mov	qword ptr [rbx + 0x18], r15
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	and	al, 0x90
	mov	byte ptr [rbx + 0x38], al
	mov	rsp, rsp
	mov	r14, qword ptr [rbx]
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 8], 0xe7
	mov	rsp, rsp
	jbe	.label_404
.label_406:
	mov	qword ptr [rbx + 0x10], 0xe8
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r12
	call	init_dfa
	mov	dword ptr [rsp + 0xa4], eax
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_402
	nop	
	mov	rcx, qword ptr [rbx + 0x28]
	mov	ebp, r15d
	lea	rsi, [rsi]
	and	ebp, 0x400000
	nop	
	mov	r8, rbp
	shr	r8, 0x16
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r14
	call	re_string_construct
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xa4], eax
	mov	rbp, rbp
	test	eax, eax
	jne	.label_401
	mov	qword ptr [rbx + 0x30], 0
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	lea	rcx, [rsp + 0xa4]
	mov	rsi, rbx
	mov	rdx, r15
	call	parse
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x68], rax
	test	rax, rax
	je	.label_401
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	analyze
	nop	
	mov	dword ptr [rsp + 0xa4], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_401
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_400
	lea	rdi, [rdi]
	mov	al, byte ptr [r14 + 0xb0]
	lea	rdi, [rdi]
	and	al, 4
	nop	
	je	.label_400
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x28], 0
	jne	.label_400
	mov	rdi, r14
	lea	rsi, [rsi]
	call	optimize_utf8
.label_400:
	mov	rdi, r14
	mov	rbp, rbp
	call	create_initial_state
	mov	dword ptr [rsp + 0xa4], eax
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	free_workarea_compile
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	call	re_string_destruct
	cmp	dword ptr [rsp + 0xa4], 0
	mov	rbp, rbp
	je	.label_405
	mov	rbp, rbp
	jmp	.label_402
.label_401:
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free_workarea_compile
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	re_string_destruct
.label_402:
	lea	rsi, [rsi]
	mov	rdi, r14
	call	free_dfa_content
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rbx], xmm0
.label_405:
	mov	eax, dword ptr [rsp + 0xa4]
.label_403:
	add	rsp, 0xa8
	pop	rbx
	nop	
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_404:
	mov	esi, 0xe8
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	realloc
	mov	r14, rax
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_403
	mov	qword ptr [rbx + 8], 0xe8
	mov	rsp, rsp
	mov	qword ptr [rbx], r14
	jmp	.label_406
	nop	
	.section	.text
	.align	16
	#Procedure 0x407c50
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c70

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0xf0], xmm0
	nop	
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x40], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rsi, qword ptr [r15 + 0x50]
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x48], rsi
	lea	rdi, [rdi]
	je	.label_407
	mov	rdi, r14
	nop	
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_407:
	nop	
	mov	rsi, qword ptr [r15 + 0x58]
	nop	
	cmp	qword ptr [r15 + 0x48], rsi
	nop	
	je	.label_409
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	call	re_compile_fastmap_iter
.label_409:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	qword ptr [r15 + 0x48], rsi
	nop	
	je	.label_408
	nop	
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	re_compile_fastmap_iter
.label_408:
	nop	
	or	byte ptr [r14 + 0x38], 8
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d80

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x158
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rdx
	nop	
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdx
	cmp	dword ptr [rdx + 0xb4], 1
	jne	.label_410
	nop	
	mov	r14b, byte ptr [rdi + 0x1a]
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	and	r14b, 0x40
	lea	rdi, [rdi]
	shr	r14b, 6
	lea	rsi, [rsi]
	jmp	.label_423
.label_410:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	nop	
	xor	r14d, r14d
.label_423:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_424
	mov	rsp, rsp
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_422:
	nop	
	mov	rax, qword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdx]
	mov	rbx, r13
	nop	
	shl	rbx, 4
	mov	qword ptr [rsp + 0x30], rbx
	lea	rdi, [rdi]
	movzx	r12d, byte ptr [rax + rbx + 8]
	mov	rsp, rsp
	add	rax, rbx
	cmp	r12d, 6
	mov	rsp, rsp
	je	.label_411
	mov	qword ptr [rsp + 0x18], rcx
	cmp	r12d, 3
	lea	rdi, [rdi]
	mov	ebp, 0
	lea	rdi, [rdi]
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_420
	mov	rbp, rbp
	cmp	r12d, 1
	mov	rsp, rsp
	jne	.label_427
	mov	rsp, rsp
	movzx	edi, byte ptr [rax]
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	lea	rdi, [rdi]
	je	.label_430
	mov	rbp, rdx
	call	tolower
	mov	rbp, rbp
	mov	rdx, rbp
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_430:
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x1a], 0x40
	mov	rbp, rbp
	je	.label_414
	nop	
	cmp	dword ptr [rdx + 0xb4], 2
	jl	.label_414
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx]
	mov	al, byte ptr [rax + rbx]
	mov	byte ptr [rsp + 0x40], al
	mov	rbp, rbp
	inc	r13
	cmp	r13, qword ptr [rdx + 0x10]
	lea	rbp, [rsp + 0x41]
	lea	r15, [rsp + 0x148]
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x40]
	lea	rdi, [rdi]
	mov	esi, 0x2000ff
	jae	.label_415
	mov	rbp, rbp
	add	rbx, 0x18
	lea	rbp, [rsp + 0x41]
	nop	word ptr cs:[rax + rax]
.label_418:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + rbx]
	nop	
	and	ecx, esi
	cmp	ecx, 0x200001
	mov	rbp, rbp
	jne	.label_415
	mov	al, byte ptr [rax + rbx - 8]
	mov	byte ptr [rbp], al
	mov	rbp, rbp
	inc	rbp
	inc	r13
	lea	rsi, [rsi]
	add	rbx, 0x10
	cmp	r13, qword ptr [rdx + 0x10]
	jb	.label_418
.label_415:
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x148], 0
	lea	rsi, [rsi]
	sub	rbp, r12
	lea	rdi, [rsp + 0x154]
	nop	
	mov	rsi, r12
	mov	rdx, rbp
	nop	
	mov	rcx, r15
	call	rpl_mbrtowc
	cmp	rax, rbp
	lea	rsi, [rsi]
	jne	.label_425
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x154]
	lea	rdi, [rdi]
	call	towlower
	mov	rsp, rsp
	mov	rdi, r12
	mov	esi, eax
	mov	rsp, rsp
	mov	rdx, r15
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	nop	
	je	.label_425
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
	mov	rbp, rbp
	jmp	.label_425
	nop	dword ptr [rax]
.label_420:
	mov	rsp, rsp
	mov	rax, qword ptr [rdx]
	nop	
	mov	rax, qword ptr [rax + rbx]
	mov	rbx, qword ptr [rax + rbp*8]
	nop	
	mov	rax, qword ptr [rsp + 0x38]
	lea	r13, [rax + r15]
	mov	rsp, rsp
	xor	r12d, r12d
	nop	
.label_417:
	bt	rbx, r12
	jae	.label_426
	mov	byte ptr [r13 + r12], 1
	mov	rbp, rbp
	test	r14b, r14b
	je	.label_426
	mov	rsp, rsp
	lea	edi, [r15 + r12]
	lea	rdi, [rdi]
	call	tolower
	cdqe	
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_426:
	nop	
	inc	r12
	cmp	r12, 0x40
	jne	.label_417
	lea	rsi, [rsi]
	inc	rbp
	lea	rdi, [rdi]
	add	r15, 0x40
	cmp	rbp, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	jne	.label_420
	jmp	.label_414
	nop	word ptr [rax + rax]
.label_411:
	mov	r15, qword ptr [rax]
	cmp	dword ptr [rdx + 0xb4], 1
	jle	.label_413
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x48], 0
	lea	rdi, [rdi]
	jne	.label_431
	lea	rsi, [rsi]
	test	byte ptr [r15 + 0x20], 1
	mov	rbp, rbp
	jne	.label_431
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x40], 0
	lea	rdi, [rdi]
	je	.label_413
.label_431:
	nop	
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rsp + 0x148], 0
	nop	
	lea	rbp, [rsp + 0x148]
	mov	r15, rbp
	nop	
	lea	rbp, [rsp + 0x40]
	nop	
.label_412:
	mov	qword ptr [rsp + 0x40], 0
	nop	
	xor	edi, edi
	mov	edx, 1
	mov	rsp, rsp
	mov	rsi, r15
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	cmp	rax, -2
	mov	rsp, rsp
	jne	.label_428
	mov	rbp, rbp
	movzx	eax, byte ptr [rsp + 0x148]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 1
.label_428:
	nop	
	inc	byte ptr [rsp + 0x148]
	jne	.label_412
.label_425:
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_414
	nop	word ptr [rax + rax]
.label_427:
	cmp	r12d, 2
	je	.label_416
	lea	rsi, [rsi]
	mov	eax, r12d
	or	eax, 2
	nop	
	cmp	eax, 7
	jne	.label_414
	jmp	.label_416
.label_413:
	mov	qword ptr [rsp + 0x18], rcx
	cmp	qword ptr [r15 + 0x28], 0
	jle	.label_414
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_429:
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	mov	rbp, rbp
	lea	r12, [rsp + 0x148]
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	call	wcrtomb
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_419
	movzx	edi, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rdi], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	lea	rdi, [rdi]
	je	.label_419
	call	tolower
	lea	rdi, [rdi]
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 1
.label_419:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0x1a], 0x40
	lea	rsi, [rsi]
	mov	rdx, rbx
	nop	
	je	.label_421
	mov	rbp, rbp
	cmp	dword ptr [rdx + 0xb4], 2
	nop	
	jl	.label_421
	mov	rbp, rbp
	mov	rax, qword ptr [r15]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rbx, rdx
	nop	
	call	towlower
	mov	rdi, r13
	mov	rbp, rbp
	mov	esi, eax
	mov	rbp, rbp
	mov	rdx, r12
	call	wcrtomb
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	cmp	rax, -1
	je	.label_421
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 1
.label_421:
	mov	rsp, rsp
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, qword ptr [r15 + 0x28]
	lea	rsi, [rsi]
	jl	.label_429
	nop	word ptr cs:[rax + rax]
.label_414:
	nop	
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	inc	rcx
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	jl	.label_422
.label_424:
	mov	rsp, rsp
	add	rsp, 0x158
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_416:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, qword ptr [rsp + 0x38]
	call	memset
	cmp	r12d, 2
	jne	.label_424
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	or	byte ptr [rax + 0x38], 1
	lea	rsi, [rsi]
	jmp	.label_424
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082e0
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	nop	
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	lea	rsi, [rsi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], rax
	lea	rdi, [rdi]
	mov	ebx, 0xc
	test	rax, rax
	mov	rbp, rbp
	je	.label_432
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	mov	rbp, rbp
	cmovne	rcx, rax
	mov	ebx, ebp
	lea	rsi, [rsi]
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_433
	and	byte ptr [r15 + 0x38], 0x7f
	lea	rsi, [rsi]
	jmp	.label_434
.label_433:
	lea	rdi, [rdi]
	and	ebx, 0x143b2be
	or	rbx, 0x100
	or	byte ptr [r15 + 0x38], 0x80
.label_434:
	nop	
	mov	al, byte ptr [r15 + 0x38]
	add	ebp, ebp
	mov	rbp, rbp
	and	bpl, 0x10
	and	al, 0xef
	nop	
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	nop	
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, rbx
	call	re_compile_internal
	mov	rsp, rsp
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	lea	rdi, [rdi]
	jne	.label_435
	mov	rdi, r15
	nop	
	call	rpl_re_compile_fastmap
	nop	
	xor	ebx, ebx
.label_432:
	mov	rsp, rsp
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_435:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_432
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408410
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_436
	lea	rsi, [rsi]
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_438
	lea	rdi, [rdi]
	cmp	rbx, r15
	mov	rsp, rsp
	mov	rdx, rbx
	ja	.label_437
.label_439:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	call	memcpy
.label_438:
	mov	rax, rbx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
.label_437:
	mov	rsp, rsp
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	jmp	.label_439
.label_436:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4084c0

	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:
	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdi
	nop	
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_440
	call	free_dfa_content
.label_440:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408520

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rdi
	cmp	qword ptr [r14], 0
	mov	rbp, rbp
	je	.label_446
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x10], 0
	mov	rbp, rbp
	je	.label_446
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_450:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	add	rdi, r15
	lea	rdi, [rdi]
	call	free_token
	inc	rbx
	add	r15, 0x10
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_450
.label_446:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	lea	rsi, [rsi]
	je	.label_441
	nop	
	xor	r15d, r15d
	mov	ebx, 0x10
	nop	dword ptr [rax]
.label_448:
	nop	
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_451
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx]
	nop	
	call	free
.label_451:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x38]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_452
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_452:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_443
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_443:
	inc	r15
	add	rbx, 0x18
	cmp	r15, qword ptr [r14 + 0x10]
	jb	.label_448
.label_441:
	nop	
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, qword ptr [r14 + 0x30]
	nop	
	call	free
	mov	rdi, qword ptr [r14 + 0x38]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_445
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_442:
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rsi]
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 + 0x10]
	cmp	qword ptr [rax + rcx*8], 0
	lea	rsi, [rsi]
	jle	.label_449
	lea	r13, [rax + rcx*8]
	nop	
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_444:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx*8]
	call	free_state
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, qword ptr [r13]
	lea	rdi, [rdi]
	jl	.label_444
.label_449:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	inc	r15
	mov	rbp, rbp
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_442
.label_445:
	mov	rdi, qword ptr [r14 + 0x40]
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	mov	rbp, rbp
	je	.label_447
	mov	rsp, rsp
	call	free
.label_447:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4086f0
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	eax, 2
	mov	rbp, rbp
	cmp	ebp, 7
	nop	
	ja	.label_453
	test	bpl, 4
	nop	
	jne	.label_457
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_454
.label_457:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_454:
	test	byte ptr [rbx + 0x38], 0x10
	nop	
	jne	.label_455
	mov	dword ptr [rsp + 0x10], ebp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r15
	lea	rsi, [rsi]
	jmp	.label_456
.label_455:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp], 0
.label_456:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r8, rdx
	lea	rdi, [rdi]
	mov	r9, rdx
	call	re_search_internal
	mov	rbp, rbp
	test	eax, eax
	setne	al
	movzx	eax, al
.label_453:
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4087d0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x188
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdi
	mov	r12, qword ptr [rsp + 0x1c0]
	mov	rbx, qword ptr [r14]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x140], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x118], rbx
	mov	rax, qword ptr [r14 + 0x20]
	xor	r10d, r10d
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_513
	mov	cl, byte ptr [r14 + 0x38]
	and	cl, 9
	lea	rdi, [rdi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	cmp	ecx, 8
	nop	
	cmovne	rax, rdi
	mov	rsp, rsp
	cmp	r15, r8
	cmove	rax, rdi
	nop	
	mov	r10, rax
.label_513:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x30]
	lea	rdi, [r12 - 1]
	nop	
	mov	rcx, rdi
	mov	rsp, rsp
	sub	rcx, rax
	xor	ebp, ebp
	mov	rsp, rsp
	cmp	rax, r12
	lea	rsi, [rsi]
	cmovb	rbp, rcx
	mov	r13d, 1
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_463
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x48]
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_463
	mov	rcx, qword ptr [rbx + 0x50]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_463
	lea	rsi, [rsi]
	mov	r11, qword ptr [rbx + 0x58]
	test	r11, r11
	nop	
	je	.label_463
	cmp	qword ptr [rbx + 0x60], 0
	nop	
	je	.label_463
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], r9
	lea	rsi, [rsi]
	mov	r9, qword ptr [r14 + 0x28]
	cmp	qword ptr [rax + 0x10], 0
	nop	
	je	.label_483
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_477
.label_483:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_491
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], r8
.label_477:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x48], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x67], 1
	cmp	rbp, r12
	lea	rdi, [rdi]
	jne	.label_495
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x98], 0
	mov	rbp, rbp
	setne	byte ptr [rsp + 0x67]
.label_495:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x10]
	inc	rcx
	mov	rbp, rbp
	mov	r8, qword ptr [r14 + 0x28]
	mov	r9d, 0x400000
	lea	rdi, [rdi]
	and	r9, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	shr	r9, 0x16
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], rbx
	lea	rdi, [rsp + 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rdx
	mov	rbp, rbp
	call	re_string_allocate
	mov	r13d, eax
	lea	rsi, [rsi]
	test	r13d, r13d
	jne	.label_459
	mov	esi, dword ptr [rsp + 0x1d0]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], rax
	mov	al, byte ptr [r14 + 0x38]
	shr	al, 7
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x10d], al
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 0x98]
	add	rdx, rdx
	lea	rdi, [rsp + 0x80]
	lea	rdi, [rdi]
	call	match_ctx_init
	lea	rsi, [rsi]
	mov	r13d, eax
	test	r13d, r13d
	lea	rsi, [rsi]
	jne	.label_459
	mov	rax, r12
	sub	rax, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	cmp	rax, 1
	ja	.label_496
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	test	byte ptr [rax + 0xb0], 2
	nop	
	jne	.label_496
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x138], 0
	lea	rdi, [rdi]
	jmp	.label_505
.label_496:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rbp
	mov	rax, qword ptr [rsp + 0xc0]
	mov	r13d, 0xc
	nop	
	movabs	rcx, 0x1ffffffffffffffe
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	ja	.label_459
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_459
.label_505:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x180], r15
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x1d0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xf0], eax
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rax, r15
	mov	rbp, rbp
	mov	r11d, 0xffffffff
	lea	rsi, [rsi]
	mov	ecx, 1
	cmovge	r11d, ecx
	mov	r13, r15
	cmovle	r13, rax
	mov	qword ptr [rsp + 0x28], r13
	mov	rbp, rax
	lea	rsi, [rsi]
	cmovl	rbp, r15
	mov	qword ptr [rsp + 0x38], rbp
	mov	r8, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r8 + 0xb4]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x58], ecx
	mov	esi, 8
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	je	.label_469
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x58], 1
	mov	rsp, rsp
	je	.label_507
	lea	rdi, [rdi]
	mov	edx, 0x400000
	xor	r9d, r9d
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_509
	and	rdx, qword ptr [r14 + 0x18]
	jne	.label_509
.label_507:
	mov	r9d, 4
.label_509:
	cmp	r15, rax
	setle	dl
	test	rbx, rbx
	setne	cl
	movzx	ecx, cl
	lea	rsi, [rsi]
	movzx	edx, dl
	nop	
	lea	esi, [rcx + rdx*2]
	mov	rbp, rbp
	or	esi, r9d
.label_469:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, r13
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	jl	.label_523
	lea	rsi, [rsi]
	cmp	rbp, rcx
	nop	
	jl	.label_470
	xor	r10d, r10d
	cmp	r15, rax
	lea	rcx, [rsp + 0x180]
	cmovg	rcx, r10
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	movsxd	r15, r11d
	add	esi, -4
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_494:
	cmp	esi, 4
	ja	.label_466
	mov	rax, qword ptr [rsp + 0x50]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_488]]
.label_1828:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x180]
	mov	rsp, rsp
	cmp	rcx, r13
	mov	rsp, rsp
	jl	.label_489
	nop	
.label_503:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_493
	movzx	eax, byte ptr [r9 + rcx]
.label_493:
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_500
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + rax]
.label_500:
	lea	rdi, [rdi]
	cmp	byte ptr [rdi + rax], 0
	mov	rsp, rsp
	jne	.label_489
	nop	
	mov	rax, qword ptr [rsp + 0x180]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x180], rcx
	lea	rsi, [rsi]
	cmp	rax, r13
	mov	rbp, rbp
	jg	.label_503
.label_489:
	nop	
	cmp	qword ptr [rsp + 0x180], r13
	jge	.label_462
	mov	rbp, rbp
	jmp	.label_471
	nop	word ptr cs:[rax + rax]
.label_522:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	add	rax, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	mov	rbp, rbp
	jl	.label_471
	mov	rbp, rbp
	cmp	rax, rbp
	nop	
	jle	.label_466
	jmp	.label_471
.label_504:
	mov	qword ptr [rsp + 0x30], r15
	mov	qword ptr [rsp + 0x38], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r13
	mov	r15, r9
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x78], r8
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	lea	rsi, [rsi]
	call	re_string_reconstruct
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_459
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x180]
	sub	rax, qword ptr [rsp + 0xa8]
	nop	
	mov	r8, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	r9, r15
	mov	rdi, qword ptr [rsp + 0x48]
	nop	
	mov	r13, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_490
	nop	dword ptr [rax]
.label_466:
	mov	rsi, qword ptr [rsp + 0x180]
	lea	rsi, [rsi]
	mov	rax, rsi
	lea	rdi, [rdi]
	sub	rax, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	jae	.label_504
.label_490:
	cmp	qword ptr [rsp + 0x180], rdx
	mov	rsp, rsp
	mov	ecx, 0
	jge	.label_517
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ecx, byte ptr [rcx + rax]
.label_517:
	lea	rdi, [rdi]
	cmp	byte ptr [rdi + rcx], 0
	mov	rbp, rbp
	je	.label_522
	jmp	.label_462
.label_1829:
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_464
	nop	word ptr [rax + rax]
.label_475:
	nop	
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_464:
	nop	
	cmp	rax, rbp
	jge	.label_461
	mov	rsp, rsp
	movzx	ecx, byte ptr [r9 + rax]
	mov	rbp, rbp
	cmp	byte ptr [rdi + rcx], 0
	mov	rsp, rsp
	je	.label_475
	jmp	.label_461
.label_1830:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_481
	nop	word ptr cs:[rax + rax]
.label_492:
	lea	rsi, [rsi]
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_481:
	cmp	rax, rbp
	jge	.label_461
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r9 + rax]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbx + rcx]
	nop	
	cmp	byte ptr [rdi + rcx], 0
	je	.label_492
.label_461:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, rbp
	mov	rbp, rbp
	je	.label_497
.label_462:
	mov	rbp, rdi
	mov	rsi, qword ptr [rsp + 0x180]
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	test	eax, eax
	nop	
	jne	.label_508
	cmp	dword ptr [rsp + 0x58], 1
	lea	rsi, [rsi]
	je	.label_512
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_512
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	dword ptr [rcx], -1
	mov	rsp, rsp
	je	.label_519
.label_512:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], eax
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0x140]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax], xmm0
	movzx	esi, byte ptr [rsp + 0x67]
	lea	rdi, [rsp + 0x80]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	check_matching
	lea	rdi, [rdi]
	cmp	rax, -1
	nop	
	je	.label_476
	lea	rdi, [rdi]
	mov	r13d, 0xc
	nop	
	cmp	rax, -2
	mov	rbp, rbp
	je	.label_459
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], rax
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_487
	mov	cl, byte ptr [r14 + 0x38]
	lea	rdi, [rdi]
	and	cl, 0x10
	lea	rsi, [rsi]
	je	.label_501
.label_487:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x78]
	cmp	qword ptr [rcx + 0x98], 0
	mov	rbp, rbp
	je	.label_472
.label_501:
	mov	rcx, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	mov	rbp, rbp
	mov	rdx, rax
	call	check_halt_state_context
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x130], rax
.label_472:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x40], 2
	mov	rsp, rsp
	jb	.label_498
	mov	al, byte ptr [r14 + 0x38]
	and	al, 0x10
	mov	rbp, rbp
	jne	.label_498
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	test	byte ptr [rax + 0xb0], 1
	lea	rsi, [rsi]
	jne	.label_515
.label_498:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_467
.label_515:
	mov	rsp, rsp
	lea	rdi, [rsp + 0x80]
	nop	
	call	prune_impossible_nodes
	mov	rbp, rbp
	mov	r13d, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x30], 0
	mov	rbp, rbp
	test	r13d, r13d
	lea	rsi, [rsi]
	je	.label_467
	nop	
	cmp	r13d, 1
	mov	rsp, rsp
	jne	.label_459
.label_476:
	nop	
	lea	rdi, [rsp + 0x80]
	mov	rsp, rsp
	call	match_ctx_clean
	mov	r13, qword ptr [rsp + 0x28]
.label_519:
	mov	rax, qword ptr [rsp + 0x180]
	mov	rbp, rbp
	add	rax, r15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	mov	rdi, rbp
	jl	.label_473
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x38]
	cmp	rbp, rax
	mov	r8, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x70]
	mov	r9, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x50]
	jge	.label_494
	jmp	.label_478
.label_497:
	xor	eax, eax
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_506
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r9 + rcx]
.label_506:
	test	rbx, rbx
	nop	
	je	.label_511
	movzx	eax, byte ptr [rbx + rax]
.label_511:
	nop	
	cmp	byte ptr [rdi + rax], 0
	jne	.label_462
.label_471:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r8
	mov	r13d, 1
	jmp	.label_459
.label_523:
	mov	r13d, 1
	jmp	.label_459
.label_470:
	mov	r13d, 1
	nop	
	jmp	.label_459
.label_467:
	nop	
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	cmp	rdx, r12
	mov	rbp, rbp
	je	.label_460
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x40], 2
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x1c8]
	jb	.label_468
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	sub	rax, rdx
	lea	rcx, [rsi + 0x10]
.label_480:
	mov	qword ptr [rcx + 8], -1
	lea	rsi, [rsi]
	mov	qword ptr [rcx], -1
	lea	rdi, [rdi]
	add	rcx, 0x10
	nop	
	dec	rax
	lea	rdi, [rdi]
	jne	.label_480
.label_468:
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsi], 0
	nop	
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rsi + 8], rax
	nop	
	mov	rbp, rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_485
	mov	al, byte ptr [r14 + 0x38]
	mov	rbp, rbp
	and	al, 0x10
	mov	rbp, rbp
	jne	.label_485
	mov	dword ptr [rsp + 0x30], 0
	mov	rcx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	test	byte ptr [rcx + 0xb0], 1
	lea	rdi, [rdi]
	mov	eax, 0
	mov	rbp, rbp
	je	.label_516
	cmp	qword ptr [rcx + 0x98], 0
	mov	rbp, rbp
	setg	al
.label_516:
	movzx	r8d, al
	mov	rbp, rbp
	lea	rsi, [rsp + 0x80]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, rbp
	mov	rbp, rbp
	call	set_regs
	mov	r13d, eax
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_459
.label_485:
	mov	rdx, rbx
	mov	rsp, rsp
	cmp	rdx, r12
	mov	rsp, rsp
	je	.label_458
	mov	rbp, rbp
	mov	al, byte ptr [rsp + 0x10c]
	lea	r8, [rsp + 0xb8]
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x98]
	lea	rsi, [rbp + 8]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_465
.label_491:
	lea	rsi, [rsi]
	cmp	qword ptr [r11 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_479
	lea	rdi, [rdi]
	cmp	byte ptr [r14 + 0x38], 0
	js	.label_482
.label_479:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	test	r15, r15
	je	.label_486
	test	r8, r8
	mov	r15d, 0
	nop	
	jne	.label_463
	lea	rsi, [rsi]
	jmp	.label_477
.label_508:
	mov	r13d, eax
	mov	rbp, rbp
	jmp	.label_459
.label_518:
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	lea	rsi, [rsi]
	je	.label_499
	lea	rcx, [r9 + rbx*8]
.label_499:
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rsi - 8], rcx
	mov	rbx, qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	lea	rsi, [rsi]
	je	.label_502
	mov	rsp, rsp
	lea	rcx, [r9 + rbx*8]
.label_502:
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsi], rcx
	jmp	.label_521
.label_465:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsi - 8]
	nop	
	cmp	rbx, -1
	je	.label_514
	test	al, al
	jne	.label_518
.label_521:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	add	qword ptr [rsi - 8], rcx
	add	qword ptr [rsi], rcx
.label_514:
	add	rsi, 0x10
	dec	rdi
	jne	.label_465
.label_458:
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jle	.label_484
	lea	rsi, [rsi]
	sub	r12, rdx
	shl	r12, 4
	add	r12, rbp
	mov	rax, rdx
	nop	dword ptr [rax]
.label_474:
	nop	
	mov	qword ptr [r12 + 8], -1
	mov	rsp, rsp
	mov	qword ptr [r12], -1
	add	r12, 0x10
	mov	rbp, rbp
	dec	rax
	mov	rsp, rsp
	jne	.label_474
.label_484:
	mov	rdi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 0xe0], 0
	je	.label_460
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x40], 2
	nop	
	jb	.label_460
	mov	rax, qword ptr [rdi + 0xe0]
	sub	rbx, rdx
	mov	rsp, rsp
	lea	rcx, [rbp + 0x18]
	lea	rsi, [rsi]
	xor	edx, edx
.label_510:
	mov	rsi, qword ptr [rax + rdx*8]
	nop	
	cmp	rdx, rsi
	lea	rsi, [rsi]
	je	.label_524
	lea	rdi, [rdi]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + rbp + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rdi + 0xe0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + rbp + 0x18]
	mov	qword ptr [rcx], rsi
.label_524:
	inc	rdx
	lea	rdi, [rdi]
	add	rcx, 0x10
	lea	rdi, [rdi]
	cmp	rbx, rdx
	jne	.label_510
.label_460:
	mov	r13d, dword ptr [rsp + 0x30]
.label_459:
	mov	rdi, qword ptr [rsp + 0x138]
	mov	rsp, rsp
	call	free
	mov	rax, qword ptr [rsp + 0x78]
	nop	
	cmp	qword ptr [rax + 0x98], 0
	mov	rbp, rbp
	je	.label_520
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x80]
	call	match_ctx_free
.label_520:
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsi]
	call	re_string_destruct
.label_463:
	mov	eax, r13d
	add	rsp, 0x188
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_482:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_477
.label_486:
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_477
.label_473:
	mov	r13d, 1
	lea	rdi, [rdi]
	jmp	.label_459
.label_478:
	mov	rsp, rsp
	mov	r13d, 1
	jmp	.label_459
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409470

	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:
	nop	
	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	mov	rbp, rbp
	call	re_search_stub
	nop	
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094a0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x48
	test	rcx, rcx
	mov	r14, -1
	js	.label_525
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r9
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jg	.label_525
	nop	
	mov	r14, qword ptr [rsp + 0x80]
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	add	r8, rcx
	mov	rbp, rbp
	cmovns	r15, r8
	cmp	r8, rdx
	cmovg	r15, rdx
	movzx	r12d, byte ptr [rdi + 0x38]
	cmp	r15, rcx
	jle	.label_527
	mov	rsp, rsp
	test	r12b, 8
	lea	rdi, [rdi]
	jne	.label_527
	mov	rax, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_527
	mov	rbp, rdi
	mov	r13, rcx
	nop	
	mov	rbx, rdx
	call	rpl_re_compile_fastmap
	mov	rdx, rbx
	mov	rdi, rbp
	mov	rcx, r13
.label_527:
	xor	esi, esi
	mov	rsp, rsp
	test	r14, r14
	mov	ebx, 1
	nop	
	je	.label_531
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x40], rcx
	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	mov	cl, al
	and	cl, 0x10
	mov	rsp, rsp
	jne	.label_528
	lea	rsi, [rsi]
	and	al, 6
	nop	
	movzx	eax, al
	cmp	eax, 4
	nop	
	jne	.label_530
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rdi + 0x30]
	jbe	.label_532
.label_530:
	mov	rbx, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	inc	rbx
.label_534:
	mov	rsi, r14
	jmp	.label_528
.label_531:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rcx
.label_528:
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	nop	
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rbp, rbp
	shl	rdi, 4
	nop	
	call	malloc
	mov	r13, rax
	lea	rsi, [rsi]
	mov	r14, -2
	lea	rsi, [rsi]
	test	r13, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
	nop	
	je	.label_525
	mov	al, r12b
	shr	al, 5
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	and	r12d, 0x40
	movzx	eax, al
	shr	r12d, 5
	or	r12d, eax
	mov	dword ptr [rsp + 0x10], r12d
	mov	qword ptr [rsp + 8], r13
	nop	
	mov	r14, rbx
	mov	rsp, rsp
	mov	qword ptr [rsp], r14
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	mov	rsp, rsp
	mov	r8, r15
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	re_search_internal
	test	eax, eax
	nop	
	je	.label_533
	mov	rsp, rsp
	cmp	eax, 1
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	r14d, al
	lea	rdi, [rdi]
	or	r14, 0xfffffffffffffffe
	mov	rsp, rsp
	jmp	.label_526
.label_533:
	nop	
	mov	rdx, r14
	nop	
	mov	rdi, qword ptr [rsp + 0x20]
	test	rdi, rdi
	je	.label_529
	mov	al, byte ptr [rbp + 0x38]
	mov	rbp, rbp
	shr	al, 1
	lea	rdi, [rdi]
	and	al, 3
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rsp, rsp
	mov	rsi, r13
	call	re_copy_regs
	mov	cl, byte ptr [rbp + 0x38]
	add	al, al
	and	cl, 0xf9
	mov	rsp, rsp
	mov	dl, al
	and	dl, 6
	or	dl, cl
	lea	rsi, [rsi]
	and	al, 6
	mov	byte ptr [rbp + 0x38], dl
	mov	r14, -2
	nop	
	je	.label_526
.label_529:
	mov	al, byte ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	r14, qword ptr [r13]
	test	al, al
	nop	
	je	.label_526
	cmp	r14, rbx
	jne	.label_535
	mov	rsp, rsp
	mov	r14, qword ptr [r13 + 8]
	lea	rdi, [rdi]
	sub	r14, rbx
.label_526:
	mov	rdi, r13
	call	free
.label_525:
	lea	rsi, [rsi]
	mov	rax, r14
	add	rsp, 0x48
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_532:
	xor	ecx, ecx
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	cmovle	r14, rcx
	mov	ebx, 1
	mov	rbp, rbp
	cmovg	rbx, rax
	jmp	.label_534
.label_535:
	mov	edi, OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.22_0
	lea	rdi, [rdi]
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409740
	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:

	mov	rbp, rbp
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	nop	
	mov	r9, rdx
	call	re_search_stub
	mov	rsp, rsp
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409770
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	mov	rbp, rbp
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	call	re_search_2_stub
	nop	
	add	rsp, 0x28
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097c0

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	nop	
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	lea	rsi, [rsi]
	or	rax, r14
	or	rax, rbp
	js	.label_536
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rsp, rsp
	js	.label_541
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_536
	nop	
	lea	rdx, [rbx + r14]
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	rbx, rbx
	jle	.label_537
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	mov	rbp, rbp
	test	r14, r14
	nop	
	jle	.label_539
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	mov	r12, rax
	mov	rsp, rsp
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	je	.label_536
	nop	
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, rbp
	mov	r13, rax
	nop	
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, r12
	add	rdi, r14
	mov	rsp, rsp
	mov	rsi, r15
	mov	rdx, rbx
	nop	
	call	memcpy
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	lea	rdi, [rdi]
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jmp	.label_537
.label_541:
	nop	
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	nop	
	jle	.label_540
.label_536:
	mov	rax, -2
	jmp	.label_538
.label_540:
	mov	rsp, rsp
	add	rbx, r14
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rsp, rsp
	mov	rdx, rbx
	jmp	.label_537
.label_539:
	mov	rbp, rbp
	mov	r13, r15
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
.label_537:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x60]
	movzx	ecx, byte ptr [rsp + 0x78]
	mov	dword ptr [rsp + 8], ecx
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	rsi, r13
	mov	rcx, r9
	lea	rdi, [rdi]
	mov	r9, rbp
	mov	rbp, rbp
	call	re_search_stub
	mov	rbx, rax
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, rbx
.label_538:
	add	rsp, 0x28
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409980
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	sub	rsp, 0x28
	mov	r10, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r11
	mov	rbp, rbp
	mov	qword ptr [rsp], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x18], 0
	call	re_search_2_stub
	add	rsp, 0x28
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099d0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	lea	rdi, [rdi]
	and	al, 0xf9
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_542
	or	al, 2
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x38], al
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 0x10], r8
	ret	
.label_542:
	mov	byte ptr [rdi + 0x38], al
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	nop	
	mov	qword ptr [rsi + 0x10], 0
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a20

	.globl free_token
	.type free_token, @function
free_token:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi + 8]
	mov	rsp, rsp
	and	eax, 0x400ff
	cmp	eax, 6
	jne	.label_543
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	jmp	free_charset
.label_543:
	cmp	eax, 3
	jne	.label_544
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	jmp	free
.label_544:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a60

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_545
	mov	rdi, qword ptr [rax + 0x10]
	mov	rbp, rbp
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	call	free
.label_545:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409ae0

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	pop	rbx
	mov	rbp, rbp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409b20

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	nop	
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rbp, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r15 + 0xd0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r15 + 0xc0], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r15 + 0xb0], xmm0
	nop	
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	nop	
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0xe0], 0
	mov	dword ptr [r15 + 0x80], 0xf
	mov	r14d, 0xc
	nop	
	movabs	rax, 0x555555555555554
	mov	rbp, rbp
	cmp	rbp, rax
	mov	rbp, rbp
	ja	.label_553
	lea	rsi, [rsi]
	lea	rdi, [rbp + 1]
	mov	qword ptr [r15 + 8], rdi
	mov	rsp, rsp
	shl	rdi, 4
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15], rax
	mov	rbp, rbp
	mov	eax, 1
	nop	dword ptr [rax]
.label_546:
	mov	rsp, rsp
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	nop	
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_546
	mov	rbp, rbp
	mov	edi, 0x18
	nop	
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r15 + 0x40], rax
	mov	rbp, rbp
	dec	rbx
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x88], rbx
	lea	rdi, [rdi]
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	mov	dword ptr [r15 + 0xb4], eax
	lea	rsi, [rsi]
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	or	cl, 0x20
	lea	rdi, [rdi]
	movzx	ecx, cl
	cmp	ecx, 0x75
	mov	rsp, rsp
	jne	.label_549
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_549
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	nop	
	movzx	ecx, cl
	nop	
	cmp	ecx, 0x66
	jne	.label_549
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	nop	
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	lea	rdi, [rdi]
	cmp	edx, 0x38
	lea	rsi, [rsi]
	jne	.label_549
	lea	rsi, [rsi]
	cmp	byte ptr [rax + rcx + 4], 0
	nop	
	jne	.label_549
	lea	rdi, [rdi]
	or	byte ptr [r15 + 0xb0], 4
.label_549:
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r15 + 0xb0], cl
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_551
	nop	
	test	al, 4
	nop	
	jne	.label_554
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r15 + 0x78], rax
	mov	rbp, rbp
	xor	r12d, r12d
	mov	rsp, rsp
	test	rax, rax
	je	.label_553
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_552:
	mov	rbp, rbp
	xor	ebp, ebp
	nop	
	mov	ebx, r14d
	nop	dword ptr [rax]
.label_547:
	mov	edi, ebx
	call	btowc
	mov	rbp, rbp
	cmp	eax, -1
	je	.label_550
	lea	rdi, [rdi]
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x78]
	lea	rdi, [rdi]
	or	qword ptr [rcx + r12*8], rdx
.label_550:
	lea	rsi, [rsi]
	cmp	ebx, 0x7f
	ja	.label_548
	mov	rsp, rsp
	cmp	ebx, eax
	je	.label_548
	or	byte ptr [r15 + 0xb0], 8
.label_548:
	inc	rbp
	lea	rdi, [rdi]
	inc	ebx
	cmp	rbp, 0x40
	nop	
	jne	.label_547
	lea	rdi, [rdi]
	add	r14d, 0x40
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, 4
	mov	rbp, rbp
	jne	.label_552
	nop	
	jmp	.label_551
.label_554:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [r15 + 120]], OFFSET FLAT:utf8_sb_map
.label_551:
	cmp	qword ptr [r15], 0
	mov	rbp, rbp
	je	.label_555
	xor	r14d, r14d
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_553
.label_555:
	mov	r14d, 0xc
.label_553:
	mov	eax, r14d
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409df0

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	rsp, rsp
	mov	r13d, r8d
	lea	rdi, [rdi]
	mov	r12, rcx
	mov	r15, rdx
	nop	
	mov	rbp, rsi
	mov	rbx, rdi
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rbx + 0x80], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x70], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x60], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x50], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x20], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], 0
	lea	rsi, [rsi]
	movzx	r8d, r13b
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	mov	rsp, rsp
	call	re_string_construct_common
	test	r15, r15
	mov	rsp, rsp
	jle	.label_556
	lea	rsi, [r15 + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_560
.label_556:
	nop	
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_562
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
.label_562:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rbp
	mov	eax, dword ptr [r14 + 0xb4]
	test	r13b, r13b
	je	.label_564
	cmp	eax, 2
	jl	.label_558
	nop	dword ptr [rax]
.label_561:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_560
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x38], r15
	jge	.label_560
	mov	rsi, qword ptr [rbx + 0x40]
	movsxd	rcx, dword ptr [r14 + 0xb4]
	add	rcx, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	cmp	rsi, rcx
	jg	.label_560
	lea	rdi, [rdi]
	add	rsi, rsi
	mov	rbp, rbp
	mov	rdi, rbx
	call	re_string_realloc_buffers
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_561
	jmp	.label_560
.label_564:
	cmp	eax, 2
	jl	.label_563
	mov	rsp, rsp
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_559
.label_558:
	mov	rdi, rbx
	nop	
	call	build_upper_buffer
	jmp	.label_559
.label_563:
	lea	rsi, [rsi]
	test	r12, r12
	mov	rsp, rsp
	je	.label_557
	mov	rdi, rbx
	nop	
	call	re_string_translate_buffer
	jmp	.label_559
.label_557:
	mov	rax, qword ptr [rbx + 0x40]
	nop	
	mov	qword ptr [rbx + 0x30], rax
	nop	
	mov	qword ptr [rbx + 0x38], rax
.label_559:
	xor	eax, eax
.label_560:
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409f80

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	nop	
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x70]
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	je	.label_565
	nop	dword ptr [rax + rax]
.label_566:
	mov	rbx, qword ptr [rdi]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_566
.label_565:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x70], 0
	mov	dword ptr [r14 + 0x80], 0xf
	nop	
	mov	qword ptr [r14 + 0x68], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x20], 0
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a000

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_567
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	pop	rbx
	jmp	free
.label_567:
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a040

	.globl parse
	.type parse, @function
parse:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	r14, rcx
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rbp
	mov	rbp, rdi
	mov	r15, qword ptr [r13]
	mov	qword ptr [r15 + 0xd8], rbx
	or	rdx, 0x800000
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	rsi, rbp
	call	fetch_token
	xor	r12d, r12d
	nop	
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsi, r13
	lea	rdx, [rsp + 8]
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	r9, r14
	call	parse_reg_exp
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_569
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_572
.label_569:
	xor	esi, esi
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, 2
	mov	rdi, r15
	call	create_tree
	mov	r13, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_571
	mov	rsp, rsp
	mov	ecx, 0x10
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r13
	mov	rsp, rsp
	call	create_tree
	lea	rdi, [rdi]
	mov	r12, rax
	jmp	.label_568
.label_571:
	nop	
	mov	r12, r13
.label_568:
	mov	rbp, rbp
	test	r13, r13
	je	.label_570
	test	r12, r12
	je	.label_570
.label_572:
	mov	rax, r12
	nop	
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_570:
	lea	rdi, [rdi]
	mov	dword ptr [r14], 0xc
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_572
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a160

	.globl analyze
	.type analyze, @function
analyze:
	nop	
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	shl	rdi, 3
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	mov	rbp, rbp
	lea	rdi, [rax + rax*2]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x28], rax
	nop	
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rsi, [rsi]
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, 0xc
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x18], 0
	nop	
	je	.label_573
	cmp	qword ptr [rbx + 0x20], 0
	mov	rbp, rbp
	je	.label_573
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_573
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_573
	nop	
	mov	rdi, qword ptr [r14 + 0x30]
	shl	rdi, 3
	nop	
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	nop	
	je	.label_575
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x30], 0
	lea	rsi, [rsi]
	je	.label_580
	mov	rax, qword ptr [rbx + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_574:
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	nop	
	cmp	rcx, qword ptr [r14 + 0x30]
	jb	.label_574
.label_580:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:optimize_subexps
	mov	rsp, rsp
	mov	rdx, rbx
	call	preorder
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	qword ptr [r14 + 0x30], 0
	lea	rdi, [rdi]
	je	.label_576
	mov	rcx, qword ptr [rbx + 0xe0]
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_579:
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	jne	.label_576
	inc	rax
	cmp	rax, qword ptr [r14 + 0x30]
	mov	rbp, rbp
	jb	.label_579
.label_576:
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r14 + 0x30]
	jne	.label_575
	mov	rdi, qword ptr [rbx + 0xe0]
	lea	rdi, [rdi]
	call	free
	nop	
	mov	qword ptr [rbx + 0xe0], 0
.label_575:
	mov	rdi, qword ptr [rbx + 0x68]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:lower_subexps
	mov	rdx, r14
	call	postorder
	mov	rsp, rsp
	test	eax, eax
	nop	
	jne	.label_573
	mov	rdi, qword ptr [rbx + 0x68]
	nop	
	mov	esi, OFFSET FLAT:calc_first
	mov	rdx, rbx
	call	postorder
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_573
	nop	
	mov	rdi, qword ptr [rbx + 0x68]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:calc_next
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	preorder
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:link_nfa_nodes
	mov	rbp, rbp
	mov	rdx, rbx
	call	preorder
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_573
	nop	
	mov	rdi, rbx
	call	calc_eclosure
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_573
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x38], 0x10
	jne	.label_578
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x30], 0
	lea	rsi, [rsi]
	je	.label_578
	test	byte ptr [rbx + 0xb0], 1
	mov	rsp, rsp
	jne	.label_577
.label_578:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_573
.label_577:
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	shl	rax, 3
	mov	rbp, rbp
	lea	rdi, [rax + rax*2]
	lea	rsi, [rsi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x38], rax
	test	rax, rax
	mov	eax, 0xc
	je	.label_573
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	calc_inveclosure
.label_573:
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a3f0

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	cmp	qword ptr [rdi + 0x10], 0
	mov	rsp, rsp
	je	.label_594
	mov	rsp, rsp
	mov	r11, qword ptr [rdi]
	mov	rsp, rsp
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	lea	rsi, [rsi]
	xor	r10d, r10d
	xor	eax, eax
	nop	dword ptr [rax]
.label_581:
	mov	rsi, rax
	mov	rsp, rsp
	shl	rsi, 4
	nop	
	movzx	edx, byte ptr [r11 + rsi + 8]
	mov	rsp, rsp
	dec	edx
	cmp	edx, 0xb
	ja	.label_591
	lea	rcx, [r11 + rsi]
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_595]]
.label_1833:
	mov	dl, 1
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	js	.label_585
	lea	rdi, [rdi]
	mov	dl, r10b
.label_585:
	mov	rbp, rbp
	mov	r10b, dl
	jmp	.label_584
.label_1834:
	nop	
	mov	rcx, qword ptr [rdi]
	mov	rsi, qword ptr [rcx + rsi]
	mov	edx, 2
.label_582:
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + rdx*8], 0
	lea	rdi, [rdi]
	jne	.label_592
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, 3
	lea	rsi, [rsi]
	jle	.label_582
	mov	rsp, rsp
	jmp	.label_584
.label_1835:
	mov	rbp, rbp
	mov	r9b, 1
	nop	
	jmp	.label_584
.label_1836:
	mov	edx, dword ptr [rcx]
	lea	ecx, [rdx - 0x10]
	cmp	ecx, 0x30
	lea	rdi, [rdi]
	ja	.label_590
	bt	r8, rcx
	jb	.label_584
.label_590:
	cmp	edx, 0x80
	mov	rsp, rsp
	jne	.label_592
.label_584:
	inc	rax
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_581
	jmp	.label_587
.label_594:
	xor	r9d, r9d
	xor	r10d, r10d
.label_587:
	mov	rbp, rbp
	mov	r8b, r9b
	and	r8b, 1
	lea	rsi, [rsi]
	or	r10b, r9b
	test	r10b, 1
	mov	rsp, rsp
	je	.label_589
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 0x10], 0
	nop	
	je	.label_589
	xor	eax, eax
	nop	
	mov	edx, 8
	nop	dword ptr [rax]
.label_588:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdi]
	mov	r9d, dword ptr [rsi + rdx]
	nop	
	movzx	ecx, r9b
	mov	rsp, rsp
	cmp	ecx, 1
	jne	.label_586
	mov	rsp, rsp
	cmp	byte ptr [rsi + rdx - 8], 0
	js	.label_593
.label_586:
	mov	r9, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	esi, dword ptr [r9 + rdx]
	lea	rsi, [rsi]
	movzx	ecx, sil
	cmp	ecx, 5
	nop	
	jne	.label_583
	lea	rdi, [rdi]
	and	esi, 0xffffff00
	or	esi, 7
	lea	rsi, [rsi]
	mov	dword ptr [r9 + rdx], esi
	jmp	.label_583
.label_593:
	mov	rsp, rsp
	and	r9d, 0xffdfffff
	mov	dword ptr [rsi + rdx], r9d
	nop	dword ptr [rax + rax]
.label_583:
	inc	rax
	lea	rsi, [rsi]
	add	rdx, 0x10
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_588
.label_589:
	mov	dword ptr [rdi + 0xb4], 1
	mov	al, byte ptr [rdi + 0xb0]
	nop	
	cmp	qword ptr [rdi + 0x98], 0
	lea	rsi, [rsi]
	setg	cl
	or	cl, r8b
	add	cl, cl
	and	al, 0xf9
	or	al, cl
	mov	byte ptr [rdi + 0xb0], al
.label_592:
	lea	rdi, [rdi]
	ret	
.label_591:
	lea	rsi, [rsi]
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a5c0

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [r15 + 0x90], rax
	mov	rcx, qword ptr [r15 + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rsp]
	nop	
	call	re_node_set_init_copy
	nop	
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_596
	cmp	qword ptr [r15 + 0x98], 0
	mov	rsp, rsp
	jle	.label_601
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 8], 0
	lea	rsi, [rsi]
	jle	.label_601
	xor	r13d, r13d
	mov	rbp, rbp
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_602:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	r8, qword ptr [rax + r13*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	mov	r10, r8
	mov	rbp, rbp
	shl	r10, 4
	movzx	r9d, byte ptr [rax + r10 + 8]
	cmp	r9d, 4
	mov	rbp, rbp
	jne	.label_597
	cmp	qword ptr [rsp + 8], 0
	mov	esi, 0
	mov	rsp, rsp
	jle	.label_598
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x10]
	add	r10, rdi
	lea	rdi, [rdi]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_605:
	mov	rbx, qword ptr [rcx + rsi*8]
	shl	rbx, 4
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rdi + rbx + 8]
	cmp	edx, 9
	jne	.label_606
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi + rbx]
	cmp	rdx, qword ptr [r10]
	nop	
	je	.label_598
.label_606:
	inc	rsi
	cmp	rsi, rax
	mov	rsp, rsp
	jl	.label_605
.label_598:
	nop	
	cmp	r9d, 4
	nop	
	setne	al
	nop	
	cmp	rsi, qword ptr [rsp + 8]
	je	.label_597
	lea	rsi, [rsi]
	test	al, al
	nop	
	jne	.label_597
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r8 + r8*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rsp, rsp
	call	re_node_set_contains
	test	rax, rax
	mov	rbp, rbp
	jne	.label_597
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	lea	rcx, [r12 + r12*2]
	lea	rsi, [rsi]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	re_node_set_merge
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	mov	r13d, 0
	mov	rbp, rbp
	jne	.label_596
	nop	word ptr cs:[rax + rax]
.label_597:
	inc	r13
	cmp	r13, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jl	.label_602
.label_601:
	mov	rsp, rsp
	lea	rdi, [rsp + 0x1c]
	lea	rsi, [rsi]
	lea	rdx, [rsp]
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rbp, rbp
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x48], rax
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_600
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x68], 0
	js	.label_603
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x60], rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x58], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x50], rax
	jmp	.label_604
.label_603:
	mov	rsp, rsp
	lea	rbx, [rsp + 0x1c]
	lea	r14, [rsp]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r14
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	lea	rdi, [rdi]
	call	re_acquire_state_context
	nop	
	mov	qword ptr [r15 + 0x58], rax
	lea	rdi, [rdi]
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x60], rax
	cmp	qword ptr [r15 + 0x50], 0
	je	.label_599
	nop	
	test	rax, rax
	mov	rbp, rbp
	je	.label_599
	mov	rax, qword ptr [r15 + 0x58]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_599
.label_604:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rsp, rsp
	xor	eax, eax
.label_596:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	ret	
.label_599:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_596
.label_600:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rsi, [rsi]
	jmp	.label_596
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a880

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	mov	qword ptr [rdx], rdi
	mov	qword ptr [rdx + 0x58], rsi
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x50], rsi
	mov	qword ptr [rdx + 0x78], rcx
	mov	rbp, rbp
	mov	byte ptr [rdx + 0x88], r8b
	mov	rbp, rbp
	test	rcx, rcx
	mov	rsp, rsp
	setne	al
	or	al, r8b
	lea	rsi, [rsi]
	mov	byte ptr [rdx + 0x8b], al
	mov	rbp, rbp
	mov	eax, dword ptr [r9 + 0xb4]
	mov	dword ptr [rdx + 0x90], eax
	lea	rdi, [rdi]
	mov	al, byte ptr [r9 + 0xb0]
	mov	rsp, rsp
	shr	al, 2
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rdx + 0x89], al
	mov	rsp, rsp
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 3
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x8a], al
	mov	rax, qword ptr [rdx + 0x58]
	mov	qword ptr [rdx + 0x68], rax
	mov	qword ptr [rdx + 0x60], rax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a910

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	cmp	dword ptr [rbx + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_608
	mov	rax, r14
	lea	rdi, [rdi]
	shr	rax, 0x3d
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jne	.label_607
	nop	
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	lea	rsi, [r14*4]
	lea	rsi, [rsi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_607
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_608
	lea	rsi, [r14*8]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_607
	mov	qword ptr [rbx + 0x18], rax
.label_608:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_609
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	mov	rsp, rsp
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_607
	nop	
	mov	qword ptr [rbx + 8], rax
.label_609:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x40], r14
	mov	rsp, rsp
	xor	ebp, ebp
.label_607:
	mov	eax, ebp
	nop	
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a9e0

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x78
	mov	r15, rdi
	mov	rbp, rbp
	mov	r13, qword ptr [r15 + 0x30]
	mov	rbx, qword ptr [r15 + 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x58]
	lea	rsi, [rsi]
	cmp	rbx, rax
	nop	
	cmovg	rbx, rax
	cmp	byte ptr [r15 + 0x8a], 0
	jne	.label_616
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_616
	cmp	byte ptr [r15 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_647
.label_616:
	mov	rbp, rbp
	mov	r12, qword ptr [r15 + 0x38]
	jmp	.label_619
.label_647:
	cmp	rbx, r13
	mov	rsp, rsp
	jle	.label_620
	lea	r14, [r15 + 0x20]
	nop	
	jmp	.label_623
.label_645:
	nop	
	mov	r12, rcx
	lea	rax, [rbx + 1]
	cmp	rax, 2
	jb	.label_627
	lea	rsi, [rsi]
	cmp	rbx, -2
	lea	rdi, [rdi]
	jne	.label_630
	mov	rax, qword ptr [r15 + 0x40]
	nop	
	cmp	rax, qword ptr [r15 + 0x58]
	nop	
	jl	.label_630
.label_627:
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	add	rax, r13
	mov	rbp, rbp
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r15 + 8]
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	byte ptr [rdx + r13], al
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	rbx, -1
	jne	.label_634
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_634
	nop	dword ptr [rax + rax]
.label_623:
	mov	rax, qword ptr [r15 + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [r15]
	nop	
	movzx	ebp, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	test	bpl, bpl
	js	.label_648
	mov	rsp, rsp
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_648
	nop	
	mov	r12, rbx
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax + rbp*4]
	mov	rcx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + r13], al
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + r13]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
.label_634:
	mov	rax, r13
	jmp	.label_611
	nop	dword ptr [rax + rax]
.label_648:
	mov	rdx, rbx
	lea	rsi, [rsi]
	sub	rdx, r13
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rsi, qword ptr [r15]
	lea	rsi, [rsi]
	add	rsi, qword ptr [r15 + 0x28]
	add	rsi, r13
	lea	rdi, [rsp + 0x2c]
	mov	rsp, rsp
	mov	rcx, r14
	call	rpl_mbrtowc
	nop	
	mov	rcx, rbx
	mov	rbx, rax
	lea	rax, [rbx - 1]
	mov	rbp, rbp
	cmp	rax, -4
	lea	rbp, [rsp + 0x30]
	mov	rsp, rsp
	ja	.label_645
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	lea	rdi, [rdi]
	mov	r12d, eax
	mov	rsp, rsp
	cmp	r12d, dword ptr [rsp + 0x2c]
	lea	rdi, [rdi]
	jne	.label_640
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	add	rdi, r13
	mov	rsi, qword ptr [r15]
	lea	rdi, [rdi]
	add	rsi, qword ptr [r15 + 0x28]
	nop	
	add	rsi, r13
	jmp	.label_644
.label_640:
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, r12d
	mov	rsp, rsp
	lea	rdx, [rsp + 0x70]
	nop	
	call	wcrtomb
	mov	rbp, rbp
	cmp	rbx, rax
	jne	.label_651
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	add	rdi, r13
	mov	rsi, rbp
.label_644:
	mov	rdx, rbx
	call	memcpy
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax + r13*4], r12d
	mov	rsp, rsp
	lea	rbp, [rbx + r13]
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	mov	r12, qword ptr [rsp + 0x20]
	nop	
	jge	.label_611
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	lea	rdi, [rax + r13*4 + 4]
	lea	rsi, [rsi]
	lea	rdx, [rbx*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbp
.label_611:
	mov	rsp, rsp
	mov	rbx, r12
	nop	
	cmp	rbx, rax
	mov	rsp, rsp
	mov	r13, rax
	lea	rdi, [rdi]
	jg	.label_623
	mov	rbp, rbp
	jmp	.label_631
.label_651:
	lea	rdi, [rdi]
	mov	r12, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_622
.label_630:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_620:
	mov	rbp, rbp
	mov	rax, r13
.label_631:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
	jmp	.label_635
.label_619:
	mov	rbp, rbp
	cmp	r13, rbx
	mov	rbp, rbp
	jge	.label_636
.label_622:
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	sub	rdx, r13
	lea	rsi, [rsi]
	lea	rcx, [r15 + 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x20]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_641
	mov	rbp, qword ptr [r15]
	lea	rdi, [rdi]
	add	rbp, qword ptr [r15 + 0x28]
	nop	
	add	rbp, r12
.label_632:
	nop	
	mov	qword ptr [rsp + 0x18], r12
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	qword ptr [rsp + 0x10], rcx
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	mov	rbp, rbp
	cmp	r12, -4
	lea	rsi, [rsi]
	ja	.label_655
	nop	
	mov	qword ptr [rsp + 0x20], rbx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	lea	rdi, [rdi]
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x28]
	je	.label_618
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	rbp, rbp
	mov	esi, ebx
	call	wcrtomb
	mov	rdx, rax
	nop	
	sub	rax, r14
	mov	rsp, rsp
	jne	.label_625
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsp + 0x30]
	mov	rsp, rsp
	jmp	.label_629
.label_641:
	nop	
	lea	rbp, [rsp + 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [r15 + 0x90], 0
	lea	rsi, [rsi]
	jle	.label_632
	lea	rsi, [rsi]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_654:
	cmp	rax, rdx
	jge	.label_632
	mov	rbp, rbp
	mov	rdi, qword ptr [r15]
	mov	r8, qword ptr [r15 + 0x78]
	lea	rsi, [rsi]
	add	rdi, qword ptr [r15 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rax + rdi]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	bl, byte ptr [r8 + rdi]
	mov	byte ptr [rsp + rax + 0x30], bl
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	inc	rax
	movsxd	rsi, dword ptr [r15 + 0x90]
	cmp	rax, rsi
	jl	.label_654
	jmp	.label_632
.label_655:
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_652
	cmp	r14, -2
	mov	rbp, rbp
	jne	.label_610
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [r15 + 0x58]
	lea	rdi, [rdi]
	jl	.label_610
.label_652:
	mov	rax, qword ptr [r15 + 0x28]
	nop	
	mov	r12, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	add	rax, r12
	mov	rdx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x78]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_617
.label_614:
	movzx	eax, al
	mov	rcx, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	byte ptr [rcx + r13], al
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_626
.label_638:
	inc	r12
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x10]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	r14, -1
	lea	rdi, [rdi]
	je	.label_633
	lea	rdi, [rdi]
	mov	rbp, r13
	lea	rsi, [rsi]
	jmp	.label_619
.label_625:
	mov	rbp, rbp
	cmp	rdx, -1
	nop	
	je	.label_618
	lea	rsi, [rsi]
	lea	rbp, [rdx + r13]
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x40]
	cmp	rbp, rdi
	nop	
	jbe	.label_639
.label_610:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x18]
.label_636:
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], r12
.label_635:
	xor	eax, eax
.label_624:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_618:
	mov	rdi, qword ptr [r15 + 8]
	nop	
	add	rdi, r13
	mov	rsp, rsp
	mov	rsi, rbp
.label_629:
	mov	rdx, r14
	call	memcpy
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x18]
	cmp	byte ptr [r15 + 0x8c], 0
	je	.label_613
	mov	rbp, rbp
	lea	rax, [r13*8]
	nop	
	add	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rcx, r12
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_621:
	nop	
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	inc	rcx
	lea	rsi, [rsi]
	add	rax, 8
	dec	rdx
	lea	rsi, [rsi]
	jne	.label_621
.label_613:
	nop	
	add	r12, r14
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rax + r13*4], ebx
	mov	rbp, rbp
	lea	rbp, [r14 + r13]
	mov	rbp, rbp
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	jge	.label_628
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rax + r13*4 + 4]
	lea	rdx, [r14*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	call	memset
	jmp	.label_637
.label_628:
	nop	
	mov	rbp, rax
.label_637:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r13, rbp
	nop	
	jmp	.label_619
.label_639:
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_643
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x20], rdx
	call	malloc
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x18], rax
	test	rax, rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	je	.label_650
.label_643:
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_653
	test	r13, r13
	mov	rbp, rbp
	je	.label_612
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x18]
	xor	ecx, ecx
.label_615:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	r13, rcx
	lea	rsi, [rsi]
	jne	.label_615
.label_612:
	mov	byte ptr [r15 + 0x8c], 1
.label_653:
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	nop	
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	nop	
	mov	dword ptr [rax + r13*4], ebx
	nop	
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + r13*8], rsi
	nop	
	cmp	rdi, 2
	nop	
	jb	.label_642
	lea	rax, [r13*4]
	lea	rsi, [rsi]
	add	rax, qword ptr [r15 + 0x10]
	shl	r13, 3
	nop	
	add	r13, qword ptr [r15 + 0x18]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_646:
	mov	rsp, rsp
	cmp	rcx, r14
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	cmovb	rdx, rcx
	add	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [r13 + rcx*8], rdx
	mov	dword ptr [rax + rcx*4], 0xffffffff
	nop	
	inc	rcx
	lea	rsi, [rsi]
	cmp	rdi, rcx
	jne	.label_646
.label_642:
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	add	qword ptr [r15 + 0x58], rax
	cmp	qword ptr [r15 + 0x60], rsi
	mov	r12, rsi
	jle	.label_649
	add	qword ptr [r15 + 0x68], rax
.label_649:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 0x40]
	nop	
	mov	rax, qword ptr [r15 + 0x58]
	nop	
	cmp	rbx, rax
	cmovg	rbx, rax
	lea	rdi, [rdi]
	add	r12, r14
	mov	rbp, rbp
	mov	r13, rbp
	nop	
	jmp	.label_619
.label_617:
	lea	rdi, [rdi]
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_614
.label_626:
	mov	rcx, qword ptr [r15 + 0x18]
	mov	qword ptr [rcx + r13*8], r12
	jmp	.label_638
.label_633:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rbp, r13
	lea	rdi, [rdi]
	jmp	.label_619
.label_650:
	mov	eax, 0xc
	lea	rdi, [rdi]
	jmp	.label_624
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b160

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	nop	
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	lea	rsi, [rsi]
	cmp	r15, rax
	mov	rbp, rbp
	cmovg	r15, rax
	mov	rsp, rsp
	cmp	rbx, r15
	mov	rsp, rsp
	jge	.label_656
	jmp	.label_658
.label_657:
	mov	cl, byte ptr [rax + rdx]
	mov	rbp, rbp
	jmp	.label_659
	nop	dword ptr [rax]
.label_658:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	jne	.label_657
.label_659:
	mov	rsp, rsp
	movzx	edi, cl
	nop	
	call	toupper
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rbx], al
	lea	rsi, [rsi]
	inc	rbx
	lea	rsi, [rsi]
	cmp	rbx, r15
	jl	.label_658
	mov	rsp, rsp
	mov	rbx, r15
.label_656:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b210

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	mov	rbp, rbp
	jle	.label_670
	lea	r14, [rbx + 0x20]
	mov	rbp, rbp
	lea	r15, [rsp + 0xc]
	nop	
	jmp	.label_660
	nop	word ptr [rax + rax]
.label_662:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	nop	
	mov	rcx, qword ptr [rbx + 0x78]
	test	rcx, rcx
	jne	.label_666
.label_669:
	nop	
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_667:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0xc]
	nop	
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rdx + r13*4], ecx
	mov	rbp, rbp
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_661
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	lea	rsi, [rsi]
	mov	esi, 0xff
	mov	rsp, rsp
	call	memset
	nop	
	mov	rcx, rbp
.label_661:
	cmp	r12, rcx
	nop	
	mov	r13, rcx
	jg	.label_660
	jmp	.label_668
.label_663:
	mov	rbp, rbp
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	nop	
	jle	.label_665
	nop	word ptr cs:[rax + rax]
.label_664:
	cmp	rax, rdx
	jge	.label_671
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	mov	cl, byte ptr [rsi + rcx]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_664
	nop	
	lea	rsi, [rsp + 0x10]
	mov	rbp, rbp
	jmp	.label_665
.label_666:
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_669
.label_671:
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	mov	rsp, rsp
	jmp	.label_665
	nop	word ptr cs:[rax + rax]
.label_660:
	nop	
	mov	rdx, r12
	nop	
	sub	rdx, r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx + 0x20]
	nop	
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsp, rsp
	jne	.label_663
	mov	rsi, qword ptr [rbx]
	mov	rsp, rsp
	add	rsi, qword ptr [rbx + 0x28]
	nop	
	add	rsi, r13
.label_665:
	mov	rdi, r15
	mov	rsp, rsp
	mov	rcx, r14
	lea	rsi, [rsi]
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	cmp	rcx, 2
	lea	rsi, [rsi]
	jb	.label_662
	cmp	rax, -2
	jne	.label_667
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_662
	mov	rbp, rbp
	mov	qword ptr [r14], rbp
.label_670:
	mov	rbp, rbp
	mov	rcx, r13
.label_668:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b430

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	mov	rax, qword ptr [rdi + 0x30]
	mov	r8, qword ptr [rdi + 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 0x58]
	mov	rbp, rbp
	cmp	r8, rdx
	mov	rsp, rsp
	cmovg	r8, rdx
	lea	rsi, [rsi]
	cmp	rax, r8
	lea	rdi, [rdi]
	jge	.label_672
	nop	word ptr [rax + rax]
.label_673:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rax + rdx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdi + 0x78]
	mov	rbp, rbp
	mov	cl, byte ptr [rcx + rdx]
	mov	byte ptr [rsi + rax], cl
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r8
	jl	.label_673
	lea	rdi, [rdi]
	mov	rax, r8
.label_672:
	mov	qword ptr [rdi + 0x30], rax
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x38], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b4b0

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbx
	mov	rbx, rsi
	nop	
	call	peek_token
	mov	rsp, rsp
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b4d0

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	nop	
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r12, r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r15, rdi
	mov	rbp, qword ptr [rsi]
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	call	parse_branch
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_681
	mov	rsp, rsp
	mov	eax, dword ptr [r12]
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_675
.label_681:
	nop	
	mov	r14, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	or	r14, 0x800000
	nop	dword ptr [rax]
.label_678:
	movzx	eax, byte ptr [r13 + 8]
	mov	rbp, rbp
	cmp	eax, 0xa
	nop	
	jne	.label_674
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, r14
	mov	rbp, rbp
	call	fetch_token
	nop	
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	nop	
	cmp	ecx, 0xa
	mov	edx, 0
	je	.label_680
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_679
	cmp	eax, 9
	mov	rsp, rsp
	mov	edx, 0
	je	.label_680
.label_679:
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rbp + 0xa8], rax
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r13
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, r12
	call	parse_branch
	nop	
	mov	rdx, rax
	test	rdx, rdx
	mov	rsp, rsp
	jne	.label_676
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12]
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_677
.label_676:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	or	qword ptr [rbp + 0xa8], rax
	nop	word ptr cs:[rax + rax]
.label_680:
	mov	rbp, rbp
	mov	ecx, 0xa
	mov	rdi, rbp
	mov	rsi, rbx
	call	create_tree
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	test	rbx, rbx
	jne	.label_678
	mov	dword ptr [r12], 0xc
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_675
.label_674:
	mov	r14, rbx
.label_675:
	nop	
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	nop	
	pop	rbp
	ret	
.label_677:
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_675
	nop	
	xor	r14d, r14d
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:free_tree
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	postorder
	jmp	.label_675
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b6a0

	.globl create_tree
	.type create_tree, @function
create_tree:
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x10], cl
	lea	rcx, [rsp + 8]
	nop	
	call	create_token_tree
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b6c0

	.globl peek_token
	.type peek_token, @function
peek_token:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_705
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	mov	byte ptr [r15], r12b
	nop	
	mov	eax, dword ptr [r15 + 8]
	mov	rsp, rsp
	mov	ecx, eax
	and	ecx, 0xff9fffff
	nop	
	mov	dword ptr [r15 + 8], ecx
	mov	rsp, rsp
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_688
	mov	rcx, qword ptr [rbp + 0x48]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp + 0x30]
	nop	
	je	.label_688
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	dword ptr [rsi + rcx*4], -1
	mov	rsp, rsp
	je	.label_689
.label_688:
	mov	rbp, rbp
	cmp	r12d, 0x5c
	mov	rbp, rbp
	jne	.label_693
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	lea	rdi, [rdi]
	jge	.label_714
	mov	rsp, rsp
	mov	r12, rdx
	mov	rdi, rbp
	call	re_string_peek_byte_case
	lea	rdi, [rdi]
	mov	r14b, al
	mov	byte ptr [r15], r14b
	lea	rsi, [rsi]
	mov	ebx, 0xffffff00
	mov	rsp, rsp
	and	ebx, dword ptr [r15 + 8]
	mov	rsp, rsp
	or	ebx, 1
	nop	
	mov	dword ptr [r15 + 8], ebx
	nop	
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_697
	mov	rsi, qword ptr [rbp + 0x48]
	inc	rsi
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebp, eax
	mov	edi, ebp
	mov	rsp, rsp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	mov	rbp, rbp
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	nop	
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_707
.label_705:
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 2
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_682
.label_693:
	mov	qword ptr [rsp], rdx
	mov	ebx, 0xffffff00
	mov	rsp, rsp
	and	ebx, dword ptr [r15 + 8]
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_711
	mov	rsi, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	nop	
	call	re_string_wchar_at
	mov	rbp, rbp
	mov	ebx, eax
	nop	
	mov	edi, ebx
	call	iswalnum
	test	eax, eax
	nop	
	setne	al
	mov	rsp, rsp
	cmp	ebx, 0x5f
	sete	cl
	lea	rdi, [rdi]
	or	cl, al
	mov	rbp, rbp
	movzx	eax, cl
	lea	rdi, [rdi]
	shl	eax, 0x16
	lea	rsi, [rsi]
	mov	ebx, 0xffbfffff
	lea	rsi, [rsi]
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_690
.label_714:
	mov	byte ptr [r15 + 8], 0x24
	mov	r14d, 1
	jmp	.label_682
.label_711:
	movzx	r14d, byte ptr [r15]
	mov	rbp, rbp
	cmp	r14, 0x5f
	mov	rbp, rbp
	sete	r13b
	lea	rsi, [rsi]
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	eax, word ptr [rax + r14*2]
	lea	rdi, [rdi]
	movzx	ecx, r13b
	nop	
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	mov	rsp, rsp
	and	ebx, 0xffbfff01
.label_690:
	mov	rbp, rbp
	or	ebx, eax
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
	nop	
	cmp	r12d, 0x3e
	lea	rdi, [rdi]
	jg	.label_704
	nop	
	lea	eax, [r12 - 0x24]
	mov	rbp, rbp
	cmp	eax, 0xa
	lea	rsi, [rsi]
	ja	.label_708
	jmp	qword ptr [word ptr [+ (rax * 8) + label_713]]
.label_1839:
	mov	rdx, qword ptr [rsp]
	test	dl, 8
	lea	rsi, [rsi]
	jne	.label_683
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x48]
	mov	rbp, rbp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp + 0x58]
	mov	rbp, rbp
	je	.label_683
	inc	qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	mov	rsp, rsp
	call	peek_token
	nop	
	dec	qword ptr [rbp + 0x48]
	nop	
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	lea	rsi, [rsi]
	cmp	eax, 1
	mov	rsp, rsp
	ja	.label_682
.label_683:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x20
	mov	rsp, rsp
	jmp	.label_682
.label_704:
	lea	rsi, [rsi]
	cmp	r12d, 0x7a
	jg	.label_695
	cmp	r12d, 0x3f
	lea	rdi, [rdi]
	je	.label_696
	cmp	r12d, 0x5b
	je	.label_699
	mov	rsp, rsp
	cmp	r12d, 0x5e
	jne	.label_682
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp]
	mov	rbp, rbp
	test	ecx, 0x800008
	jne	.label_702
	mov	rax, qword ptr [rbp + 0x48]
	mov	rsp, rsp
	test	rax, rax
	je	.label_702
	test	ch, 8
	lea	rdi, [rdi]
	je	.label_682
	mov	rcx, qword ptr [rbp + 8]
	movzx	eax, byte ptr [rax + rcx - 1]
	cmp	eax, 0xa
	jne	.label_682
.label_702:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x10
	lea	rsi, [rsi]
	jmp	.label_682
.label_697:
	movzx	ebp, r14b
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	mov	rbp, rbp
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	lea	rdi, [rdi]
	and	ebx, 0xffbfff01
.label_707:
	nop	
	or	ebx, eax
	mov	dword ptr [r15 + 8], ebx
	movzx	eax, r14b
	mov	r14d, 2
	mov	rsp, rsp
	cmp	eax, 0x5f
	nop	
	jg	.label_685
	lea	ecx, [rax - 0x27]
	mov	rsp, rsp
	cmp	ecx, 0x2c
	mov	rsp, rsp
	ja	.label_692
	nop	
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_694]]
.label_1849:
	mov	rcx, r12
	test	ch, 0x40
	lea	rdi, [rdi]
	jne	.label_682
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 4
	add	eax, -0x31
	lea	rsi, [rsi]
	cdqe	
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	jmp	.label_682
.label_695:
	nop	
	cmp	r12d, 0x7b
	je	.label_698
	cmp	r12d, 0x7c
	je	.label_700
	mov	rsp, rsp
	cmp	r12d, 0x7d
	lea	rsi, [rsi]
	jne	.label_682
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	lea	rdi, [rdi]
	cmp	rax, 0x1200
	je	.label_703
	lea	rdi, [rdi]
	jmp	.label_682
.label_689:
	and	eax, 0xff9fff00
	or	eax, 0x200001
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	jmp	.label_682
.label_685:
	mov	rbp, rbp
	lea	ecx, [rax - 0x73]
	cmp	ecx, 0xa
	ja	.label_709
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_712]]
.label_1886:
	mov	rbp, rbp
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	or	ebx, 0x22
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_708:
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	jne	.label_682
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	test	ah, 8
	lea	rsi, [rsi]
	jne	.label_684
	jmp	.label_682
.label_1840:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_691
	jmp	.label_682
.label_1841:
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	test	ah, 0x20
	lea	rdi, [rdi]
	jne	.label_687
	jmp	.label_682
.label_1842:
	and	ebx, 0xffffff00
	or	ebx, 0xb
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_1843:
	mov	rax, qword ptr [rsp]
	nop	
	test	ax, 0x402
	mov	rsp, rsp
	jne	.label_682
	lea	rdi, [rdi]
	jmp	.label_701
.label_1844:
	lea	rsi, [rsi]
	and	ebx, 0xffffff00
	lea	rdi, [rdi]
	or	ebx, 5
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	jmp	.label_682
.label_696:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_682
	lea	rdi, [rdi]
	jmp	.label_706
.label_699:
	and	ebx, 0xffffff00
	nop	
	or	ebx, 0x14
	mov	dword ptr [r15 + 8], ebx
	lea	rdi, [rdi]
	jmp	.label_682
.label_698:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	and	eax, 0x1200
	cmp	rax, 0x1200
	je	.label_710
	jmp	.label_682
.label_700:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	nop	
	jne	.label_682
	test	ax, ax
	js	.label_684
	mov	rsp, rsp
	jmp	.label_682
.label_709:
	cmp	eax, 0x60
	je	.label_686
	mov	rsp, rsp
	cmp	eax, 0x62
	lea	rsi, [rsi]
	jne	.label_682
	lea	rdi, [rdi]
	test	r12d, 0x80000
	lea	rdi, [rdi]
	jne	.label_682
	and	ebx, 0xffffff00
	mov	rbp, rbp
	or	ebx, 0xc
	nop	
	mov	dword ptr [r15 + 8], ebx
	nop	
	mov	dword ptr [r15], 0x100
	jmp	.label_682
.label_692:
	cmp	eax, 0x57
	jne	.label_682
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	or	ebx, 0x21
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	jmp	.label_682
.label_1887:
	test	r12d, 0x80000
	nop	
	jne	.label_682
	mov	rbp, rbp
	and	ebx, 0xffffff00
	mov	rbp, rbp
	or	ebx, 0x20
	mov	dword ptr [r15 + 8], ebx
	mov	rsp, rsp
	jmp	.label_682
.label_1888:
	lea	rsi, [rsi]
	and	r12d, 0x1200
	nop	
	cmp	r12, 0x200
	lea	rdi, [rdi]
	jne	.label_682
.label_710:
	and	ebx, 0xffffff00
	mov	rsp, rsp
	or	ebx, 0x17
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], ebx
	lea	rdi, [rdi]
	jmp	.label_682
.label_1889:
	mov	rax, r12
	nop	
	test	ah, 4
	jne	.label_682
	lea	rsi, [rsi]
	test	ax, ax
	js	.label_682
.label_684:
	nop	
	and	ebx, 0xffffff00
	or	ebx, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], ebx
	mov	rbp, rbp
	jmp	.label_682
.label_1890:
	and	r12d, 0x1200
	mov	rsp, rsp
	cmp	r12, 0x200
	lea	rdi, [rdi]
	jne	.label_682
.label_703:
	and	ebx, 0xffffff00
	lea	rsi, [rsi]
	or	ebx, 0x18
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_686:
	lea	rdi, [rdi]
	test	r12d, 0x80000
	nop	
	jne	.label_682
	lea	rsi, [rsi]
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x40
	jmp	.label_682
.label_1845:
	lea	rdi, [rdi]
	test	r12d, 0x80000
	nop	
	jne	.label_682
	lea	rsi, [rsi]
	and	ebx, 0xffffff00
	lea	rdi, [rdi]
	or	ebx, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0x80
	jmp	.label_682
.label_1846:
	mov	rax, r12
	lea	rsi, [rsi]
	test	ah, 0x20
	nop	
	jne	.label_682
.label_691:
	and	ebx, 0xffffff00
	or	ebx, 8
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_1847:
	mov	rax, r12
	nop	
	test	ah, 0x20
	jne	.label_682
.label_687:
	lea	rdi, [rdi]
	and	ebx, 0xffffff00
	or	ebx, 9
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_1848:
	and	r12d, 0x402
	mov	rsp, rsp
	cmp	r12, 2
	nop	
	jne	.label_682
.label_701:
	nop	
	and	ebx, 0xffffff00
	mov	rbp, rbp
	or	ebx, 0x12
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_1850:
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	lea	rdi, [rdi]
	mov	dword ptr [r15], 6
	jmp	.label_682
.label_1851:
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	or	ebx, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	mov	dword ptr [r15], 9
	jmp	.label_682
.label_1852:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_682
.label_706:
	and	ebx, 0xffffff00
	or	ebx, 0x13
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_1853:
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	lea	rdi, [rdi]
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x200
	mov	rbp, rbp
	jmp	.label_682
.label_1854:
	lea	rsi, [rsi]
	test	r12d, 0x80000
	jne	.label_682
	lea	rdi, [rdi]
	and	ebx, 0xffffff00
	or	ebx, 0x23
	mov	dword ptr [r15 + 8], ebx
.label_682:
	lea	rdi, [rdi]
	mov	eax, r14d
	lea	rsi, [rsi]
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bf00

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	nop	
	cmp	byte ptr [rdi + 0x8b], 0
	lea	rdi, [rdi]
	jne	.label_715
.label_719:
	mov	rax, qword ptr [rdi + 8]
	nop	
	mov	rcx, qword ptr [rdi + 0x48]
	lea	rdi, [rdi]
	mov	al, byte ptr [rcx + rax + 1]
.label_720:
	movzx	eax, al
	mov	rsp, rsp
	ret	
.label_715:
	cmp	dword ptr [rdi + 0x90], 2
	jl	.label_716
	mov	rax, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	cmp	dword ptr [rax + rcx*4 + 4], -1
	mov	rsp, rsp
	je	.label_719
	mov	rsp, rsp
	lea	rdx, [rcx + 2]
	cmp	qword ptr [rdi + 0x30], rdx
	mov	rsp, rsp
	je	.label_716
	mov	rsp, rsp
	cmp	dword ptr [rax + rcx*4 + 8], -1
	nop	
	je	.label_719
.label_716:
	mov	rax, qword ptr [rdi + 0x48]
	cmp	byte ptr [rdi + 0x8c], 0
	je	.label_717
	mov	rcx, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	lea	rsi, [rsi]
	jmp	.label_718
.label_717:
	inc	rax
.label_718:
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rdi]
	mov	al, byte ptr [rcx + rax]
	nop	
	test	al, al
	jns	.label_720
	mov	cl, byte ptr [rdi + 0x8c]
	lea	rsi, [rsi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_720
	nop	
	jmp	.label_719
	.section	.text
	.align	16
	#Procedure 0x40bfa0

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	cmp	dword ptr [rdi + 0x90], 1
	mov	rbp, rbp
	jne	.label_721
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 8]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax + rsi]
	ret	
.label_721:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	mov	eax, dword ptr [rax + rsi*4]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bfd0

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	r13, rdx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp], rax
	nop	
	call	parse_expression
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rbp, rbp
	test	rax, rax
	jne	.label_724
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14]
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	je	.label_724
	nop	
	jmp	.label_725
	nop	word ptr cs:[rax + rax]
.label_722:
	test	rbx, rbx
	mov	rsp, rsp
	cmovne	r15, rbx
	mov	rax, r15
.label_724:
	mov	rbx, rax
	mov	rbp, rbp
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	mov	rbp, rbp
	or	ecx, 8
	cmp	ecx, 0xa
	je	.label_723
	test	r12, r12
	mov	rbp, rbp
	je	.label_727
	cmp	eax, 9
	mov	rbp, rbp
	je	.label_728
.label_727:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	lea	rsi, [rsi]
	mov	r9, r14
	lea	rdi, [rdi]
	call	parse_expression
	mov	rbp, rbp
	mov	r15, rax
	test	r15, r15
	lea	rdi, [rdi]
	jne	.label_726
	mov	eax, dword ptr [r14]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_729
.label_726:
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_722
	mov	rbp, rbp
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_722
	mov	ecx, 0x10
	mov	rdi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rsi, rbx
	nop	
	mov	rdx, r15
	call	create_tree
	mov	rsp, rsp
	test	rax, rax
	jne	.label_724
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r15
	nop	
	xor	r15d, r15d
	call	postorder
	mov	esi, OFFSET FLAT:free_tree
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	mov	dword ptr [r14], 0xc
	mov	rbp, rbp
	jmp	.label_725
.label_729:
	mov	rbp, rbp
	xor	r15d, r15d
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_725
	mov	rsp, rsp
	xor	r15d, r15d
	mov	esi, OFFSET FLAT:free_tree
	nop	
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	lea	rsi, [rsi]
	jmp	.label_725
.label_723:
	mov	r15, rbx
	mov	rsp, rsp
	jmp	.label_725
.label_728:
	lea	rdi, [rdi]
	mov	r15, rbx
.label_725:
	mov	rbp, rbp
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c190

	.globl postorder
	.type postorder, @function
postorder:
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r15, rsi
	jmp	.label_733
	nop	word ptr cs:[rax + rax]
.label_734:
	mov	rdi, qword ptr [rcx + 0x10]
.label_733:
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + 8]
	nop	
	test	rdi, rdi
	jne	.label_733
	nop	
	cmp	qword ptr [rcx + 0x10], 0
	lea	rsi, [rsi]
	je	.label_732
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + 8]
	test	rdi, rdi
	jne	.label_733
	lea	rdi, [rdi]
	jmp	.label_734
.label_732:
	mov	r12, rbx
	nop	word ptr cs:[rax + rax]
.label_730:
	mov	rbp, rbp
	mov	rbx, rcx
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	call	r15
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_731
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_731
	lea	rsi, [rsi]
	cmovne	r12, rbx
	mov	rax, rcx
	mov	rsp, rsp
	cmove	rax, rbx
	mov	rdi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rdi, r12
	nop	
	mov	r12, rbx
	je	.label_730
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	mov	r12, rbx
	je	.label_730
	jmp	.label_733
.label_731:
	mov	rsp, rsp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c270

	.globl free_tree
	.type free_tree, @function
free_tree:
	nop
	push	rax
	lea	rdi, [rsi + 0x28]
	lea	rdi, [rdi]
	call	free_token
	xor	eax, eax
	pop	rcx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c290

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x28
	nop	
	mov	qword ptr [rsp + 8], r9
	mov	qword ptr [rsp], r8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	rsp, rsp
	mov	rbp, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsp, rsp
	mov	r14d, ecx
	and	r14d, 0x1000000
	mov	rbp, rbp
	mov	ebx, ecx
	and	ebx, 0x20
	mov	r15d, ecx
	and	r15d, 0x10
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_752
	nop	word ptr cs:[rax + rax]
.label_759:
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	call	fetch_token
.label_752:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13 + 8]
	dec	eax
	nop	
	cmp	eax, 0x23
	nop	
	ja	.label_738
	mov	rbp, rbp
	mov	r12, qword ptr [rbp]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_741]]
.label_1882:
	lea	rsi, [rsi]
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_742
.label_1879:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_742
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_759
.label_1878:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	test	eax, 0x20000
	mov	rsp, rsp
	jne	.label_743
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 9
	mov	rbp, rbp
	jne	.label_743
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x10
	lea	rdi, [rdi]
	jmp	.label_740
.label_742:
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xd
.label_740:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_738:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_743:
	mov	byte ptr [r13 + 8], 1
	xor	esi, esi
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsp, rsp
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	jne	.label_747
	lea	rsi, [rsi]
	jmp	.label_735
.label_1883:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13 + 8]
	nop	
	cmp	eax, 0x21
	sete	al
	movzx	r8d, al
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.1_5
	mov	ecx, OFFSET FLAT:.str.2_3
	jmp	.label_761
.label_1884:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x23
	lea	rdi, [rdi]
	sete	al
	lea	rdi, [rdi]
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_2
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str_0
.label_761:
	nop	
	mov	rdi, r12
	mov	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r9, rbx
	lea	rsi, [rsi]
	call	build_charclass_op
	lea	rsi, [rsi]
	jmp	.label_748
.label_1881:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 8]
	mov	r8, rbx
	mov	rbp, rbp
	call	parse_bracket_exp
	mov	rsp, rsp
	jmp	.label_748
.label_1874:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rcx, r13
	call	create_token_tree
	mov	rsp, rsp
	mov	r14, rax
	nop	
	test	r14, r14
	je	.label_735
	cmp	dword ptr [r12 + 0xb4], 2
	nop	
	jl	.label_747
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x20]
.label_744:
	nop	
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	jle	.label_747
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	je	.label_747
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	lea	rsi, [rsi]
	jne	.label_747
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	xor	esi, esi
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rsp, rsp
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	test	rbp, rbp
	je	.label_735
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_744
	lea	rdi, [rdi]
	jmp	.label_735
.label_1875:
	mov	rbp, rbp
	mov	cl, byte ptr [r13]
	mov	rbp, rbp
	mov	eax, 1
	mov	rbp, rbp
	shl	eax, cl
	lea	rdi, [rdi]
	cdqe	
	test	qword ptr [r12 + 0xa8], rax
	mov	rsp, rsp
	je	.label_750
	mov	rbp, rbp
	or	qword ptr [r12 + 0xa0], rax
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	mov	rcx, r13
	lea	rsi, [rsi]
	call	create_token_tree
	mov	r14, rax
	nop	
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_735
	inc	qword ptr [r12 + 0x98]
	nop	
	or	byte ptr [r12 + 0xb0], 2
	lea	rsi, [rsi]
	jmp	.label_747
.label_1876:
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r12
	mov	rcx, r13
	lea	rdi, [rdi]
	call	create_token_tree
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_735
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_747
	mov	rsp, rsp
	or	byte ptr [r12 + 0xb0], 2
	jmp	.label_747
.label_1877:
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp]
	mov	rbp, rbp
	inc	r8
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	lea	rdi, [rdi]
	call	parse_sub_exp
.label_748:
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_747
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	mov	eax, dword ptr [rbx]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_738
.label_747:
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 0x18]
	nop	
	mov	rdx, rbx
	nop	
	call	fetch_token
	nop	
	mov	ebp, ebx
	lea	rdi, [rdi]
	mov	r15, rbx
	and	ebp, 0x1000000
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_737:
	nop	
	movzx	eax, byte ptr [r13 + 8]
	mov	rsp, rsp
	cmp	eax, 0x17
	lea	rdi, [rdi]
	ja	.label_755
	mov	ecx, 0x8c0800
	bt	ecx, eax
	mov	rsp, rsp
	jae	.label_757
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, r15
	mov	r9, rbx
	call	parse_dup_op
	test	rax, rax
	mov	rbp, rbp
	jne	.label_762
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbx]
	lea	rsi, [rsi]
	test	ecx, ecx
	jne	.label_736
.label_762:
	test	rbp, rbp
	mov	r14, rax
	je	.label_737
	movzx	ecx, byte ptr [r13 + 8]
	nop	
	cmp	ecx, 0x17
	je	.label_749
	cmp	ecx, 0xb
	mov	r14, rax
	jne	.label_737
.label_749:
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_745
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:free_tree
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	postorder
.label_745:
	mov	dword ptr [rbx], 0xd
	lea	rsi, [rsi]
	jmp	.label_740
.label_736:
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_738
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:free_tree
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	call	postorder
	jmp	.label_738
.label_755:
	nop	
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_738
.label_757:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_738
.label_1880:
	mov	eax, dword ptr [r13]
	lea	rsi, [rsi]
	test	ax, 0x30f
	je	.label_754
	lea	rdi, [rdi]
	test	byte ptr [r12 + 0xb0], 0x10
	mov	rsp, rsp
	jne	.label_756
	lea	rdi, [rdi]
	mov	rdi, r12
	call	init_word_char
.label_756:
	mov	eax, dword ptr [r13]
.label_754:
	cmp	eax, 0x200
	nop	
	je	.label_751
	cmp	eax, 0x100
	nop	
	jne	.label_753
.label_751:
	cmp	dword ptr [r13], 0x100
	jne	.label_758
	mov	dword ptr [r13], 6
	mov	rbp, rbp
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	nop	
	mov	rcx, r13
	nop	
	call	create_token_tree
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	eax, 9
	mov	rbp, rbp
	jmp	.label_739
.label_1885:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 5
	nop	
	jmp	.label_740
.label_735:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_740
.label_753:
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	test	rax, rax
	mov	rcx, qword ptr [rsp + 8]
	nop	
	jne	.label_746
	mov	rbp, rbp
	mov	dword ptr [rcx], 0xc
	jmp	.label_740
.label_758:
	mov	dword ptr [r13], 5
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rcx, r13
	mov	rbp, rbp
	call	create_token_tree
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	eax, 0xa
.label_739:
	mov	r14, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	dword ptr [r13], eax
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0xa
	nop	
	mov	rdi, r12
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	create_tree
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_760
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_760
	test	rax, rax
	je	.label_760
.label_746:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	call	fetch_token
	jmp	.label_738
.label_750:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 6
	mov	rbp, rbp
	jmp	.label_740
.label_760:
	mov	dword ptr [r14], 0xc
	jmp	.label_740
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c940

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	r15, rcx
	nop	
	mov	r14, rdx
	mov	r12, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x80], 0xf
	lea	rsi, [rsi]
	je	.label_763
.label_766:
	movsxd	rcx, dword ptr [rbx + 0x80]
	lea	eax, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], eax
	mov	rdx, qword ptr [rbx + 0x70]
	shl	rcx, 6
	lea	rax, [rdx + rcx + 8]
	mov	qword ptr [rdx + rcx + 8], 0
	nop	
	mov	qword ptr [rdx + rcx + 0x10], r12
	mov	qword ptr [rdx + rcx + 0x18], r14
	nop	
	movups	xmm0, xmmword ptr [r15]
	mov	rsp, rsp
	movups	xmmword ptr [rdx + rcx + 0x30], xmm0
	and	byte ptr [rdx + rcx + 0x3a], 0xf3
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdx + rcx + 0x20], xmm0
	mov	qword ptr [rdx + rcx + 0x40], -1
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_765
	lea	rdi, [rdi]
	mov	qword ptr [r12], rax
.label_765:
	test	r14, r14
	je	.label_764
	mov	rsp, rsp
	mov	qword ptr [r14], rax
.label_764:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
.label_763:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	eax, eax
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_764
	mov	rax, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbx + 0x70], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_766
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ca40

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r13, r9
	mov	qword ptr [rsp + 8], r8
	mov	rbp, rbp
	mov	rbp, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	r14, rsi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	r12, qword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	lea	rax, [r12 + 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rbp, rbp
	call	fetch_token
	nop	
	movzx	eax, byte ptr [rbx + 8]
	nop	
	xor	r8d, r8d
	nop	
	cmp	eax, 9
	je	.label_772
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 8]
	nop	
	mov	r9, r13
	call	parse_reg_exp
	mov	r8, rax
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_767
	movzx	eax, byte ptr [rbx + 8]
	mov	rbp, rbp
	cmp	eax, 9
	jne	.label_768
	mov	rbp, rbp
	xor	eax, eax
	cmp	dword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_767
.label_772:
	cmp	r12, 8
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	ja	.label_769
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shl	eax, cl
	mov	rsp, rsp
	cdqe	
	lea	rsi, [rsi]
	or	qword ptr [rdi + 0xa8], rax
.label_769:
	xor	edx, edx
	mov	ecx, 0x11
	nop	
	mov	rsi, r8
	call	create_tree
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_770
	mov	qword ptr [rax + 0x28], r12
.label_767:
	mov	rsp, rsp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_770:
	mov	rbp, rbp
	mov	dword ptr [r13], 0xc
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_767
.label_768:
	test	r8, r8
	je	.label_771
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r8
	mov	rsp, rsp
	call	postorder
.label_771:
	mov	dword ptr [r13], 8
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_767
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cbc0

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0xc8
	nop	
	mov	qword ptr [rsp + 0x28], r8
	mov	rsp, rsp
	mov	rbx, rcx
	mov	r12, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rsi
	lea	rsi, [rsi]
	mov	r13, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	r15, rax
	mov	edi, 0x50
	mov	rsp, rsp
	mov	esi, 1
	nop	
	call	rpl_calloc
	mov	r14, rax
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_782
	test	r14, r14
	nop	
	je	.label_782
	lea	rsi, [rsi]
	mov	rdi, r12
	nop	
	mov	rsi, r13
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	peek_token_bracket
	mov	ebp, eax
	movzx	eax, byte ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	eax, 0x19
	nop	
	je	.label_789
	cmp	eax, 2
	je	.label_793
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	lea	rsi, [rsi]
	jmp	.label_794
.label_789:
	or	byte ptr [r14 + 0x20], 1
	test	bh, 1
	je	.label_795
	mov	rsp, rsp
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_set
.label_795:
	movsxd	rax, ebp
	lea	rdi, [rdi]
	add	qword ptr [r13 + 0x48], rax
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	peek_token_bracket
	mov	rsp, rsp
	mov	ebp, eax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + 8]
	lea	rdi, [rdi]
	cmp	eax, 2
	je	.label_793
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], eax
.label_794:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r14
	mov	eax, dword ptr [r12 + 8]
	movzx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0x15
	jne	.label_809
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r12 + 8], eax
.label_809:
	lea	rax, [rsp + 0x60]
	nop	
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x98], 3
	lea	rdi, [rsp + 0x98]
	lea	rsi, [rsi]
	mov	r9d, 1
	nop	
	mov	rsi, r13
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	ecx, ebp
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	r8, rbx
	lea	rdi, [rdi]
	call	parse_bracket_element
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_779
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_791
	nop	word ptr cs:[rax + rax]
.label_797:
	mov	rsp, rsp
	cmp	eax, 2
	je	.label_773
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r13
	lea	rax, [rsp + 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	dword ptr [rsp + 0x98], 3
	nop	
	xor	r9d, r9d
	lea	rdi, [rsp + 0x98]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rdx, r12
	mov	ecx, r14d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	mov	rbp, rbp
	je	.label_791
	mov	rbp, rbp
	jmp	.label_779
.label_807:
	lea	rax, [r13 + r13]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rsi]
	lea	rsi, [rax*4 + 4]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_810
	lea	rcx, [r13 + r13 + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rbp], rax
	jmp	.label_775
	nop	dword ptr [rax]
.label_791:
	mov	rdi, r12
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0x98]
	cmp	eax, 2
	lea	rsi, [rsi]
	je	.label_781
	nop	
	cmp	eax, 4
	mov	r13, qword ptr [rsp + 0x28]
	je	.label_785
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x16
	je	.label_787
	cmp	eax, 2
	mov	rsp, rsp
	jne	.label_788
	mov	rsp, rsp
	jmp	.label_790
	nop	word ptr cs:[rax + rax]
.label_781:
	mov	r13, qword ptr [rsp + 0x28]
	jmp	.label_785
.label_787:
	lea	rdi, [rdi]
	movsxd	rax, r14d
	lea	rsi, [rsi]
	add	qword ptr [rbp + 0x48], rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	call	peek_token_bracket
	mov	rbp, rbp
	movzx	ecx, byte ptr [rsp + 0x38]
	mov	rsp, rsp
	cmp	ecx, 0x15
	je	.label_799
	cmp	ecx, 2
	je	.label_803
	lea	rcx, [rsp + 0x40]
	mov	qword ptr [rsp + 0x90], rcx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x88], 3
	mov	rsp, rsp
	mov	r9d, 1
	lea	rdi, [rsp + 0x88]
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rdx, [rsp + 0x30]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	r8, rbx
	mov	rbp, rbp
	call	parse_bracket_element
	test	eax, eax
	mov	rsp, rsp
	jne	.label_778
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rbp, rbp
	mov	r14d, eax
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0xb4], 1
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	jg	.label_783
	nop	
	xor	edx, edx
.label_783:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r15
	nop	
	lea	rcx, [rsp + 0xb0]
	mov	rsp, rsp
	lea	r8, [rsp + 0x98]
	lea	r9, [rsp + 0x88]
	mov	rbp, rbp
	call	build_range_exp
	mov	rsp, rsp
	jmp	.label_786
.label_799:
	lea	rdi, [rdi]
	mov	eax, r14d
	nop	
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	nop	
	mov	byte ptr [r12 + 8], 1
.label_788:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x98]
.label_785:
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	cmp	eax, 4
	ja	.label_798
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_800]]
.label_1919:
	nop	
	movzx	esi, byte ptr [rsp + 0xa0]
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	bitset_set
	jmp	.label_774
.label_1920:
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x28], r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp + 0x28]
	cmp	qword ptr [rsp + 8], r13
	je	.label_807
.label_775:
	mov	eax, dword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x28], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp]
	nop	
	mov	dword ptr [rdx + rcx*4], eax
	mov	r13, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_774
.label_1921:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	build_equiv_class
	jmp	.label_786
.label_1922:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	build_collating_symbol
	nop	
	jmp	.label_786
.label_1923:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x78]
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0xa0]
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rcx, [rsp + 0xa8]
	mov	rsp, rsp
	mov	r9, rbx
	lea	rdi, [rdi]
	call	build_charclass
.label_786:
	mov	rsp, rsp
	mov	dword ptr [r13], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_796
.label_774:
	mov	rsp, rsp
	movzx	eax, byte ptr [r12 + 8]
	mov	rsp, rsp
	cmp	eax, 0x15
	nop	
	jne	.label_797
	movsxd	rax, r14d
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	al, al
	je	.label_801
	mov	rbp, rbp
	mov	rdi, r15
	call	bitset_not
.label_801:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r13
	mov	r12, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	dword ptr [r12 + 0xb4], 2
	mov	r14, qword ptr [rsp + 0x20]
	jl	.label_806
	mov	rsi, qword ptr [r12 + 0x78]
	mov	rdi, r15
	call	bitset_mask
.label_806:
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_776
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_776
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_776
	cmp	qword ptr [r14 + 0x40], 0
	lea	rdi, [rdi]
	jne	.label_776
	nop	
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_780
	cmp	qword ptr [r14 + 0x48], 0
	lea	rsi, [rsi]
	jne	.label_776
	test	byte ptr [r14 + 0x20], 1
	jne	.label_776
.label_780:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	free_charset
	mov	byte ptr [rsp + 0xc0], 3
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb8], r15
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	nop	
	jmp	.label_808
.label_776:
	mov	rsp, rsp
	or	byte ptr [r12 + 0xb0], 2
	mov	byte ptr [rsp + 0xc0], 6
	mov	qword ptr [rsp + 0xb8], r14
	xor	ebx, ebx
	mov	rsp, rsp
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r12
	call	create_token_tree
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_784
	nop	
.label_805:
	mov	rbp, rbp
	cmp	qword ptr [r15 + rbx*8], 0
	mov	rbp, rbp
	jne	.label_804
	mov	rbp, rbp
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, 3
	mov	rbp, rbp
	jle	.label_805
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	jmp	.label_777
.label_804:
	mov	byte ptr [rsp + 0xc0], 3
	mov	qword ptr [rsp + 0xb8], r15
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rdi, r12
	call	create_token_tree
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_784
	nop	
	mov	ecx, 0xa
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rax
	mov	rdx, rbp
	call	create_tree
.label_808:
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	jne	.label_777
	lea	rsi, [rsi]
	jmp	.label_784
.label_779:
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rcx], eax
.label_796:
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_792
.label_793:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 2
	mov	rbp, rbp
	jmp	.label_792
.label_773:
	lea	rdi, [rdi]
	mov	dword ptr [r13], 7
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_792
.label_782:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	jmp	.label_802
.label_790:
	mov	dword ptr [r13], 7
	nop	
	mov	r14, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_792
.label_803:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	jmp	.label_792
.label_778:
	lea	rdi, [rdi]
	mov	dword ptr [r13], eax
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_792
.label_810:
	mov	r14, rbp
.label_784:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
.label_792:
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rdi, r14
	nop	
	call	free_charset
.label_802:
	xor	ebp, ebp
.label_777:
	mov	rax, rbp
	nop	
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_798:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	lea	rdi, [rdi]
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d380

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	mov	r14, rdi
	mov	al, byte ptr [r14 + 0xb0]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	or	cl, 0x10
	mov	byte ptr [r14 + 0xb0], cl
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	test	al, 8
	mov	r15d, 0
	mov	rbp, rbp
	jne	.label_811
	movabs	rax, 0x3ff000000000000
	mov	rsp, rsp
	mov	qword ptr [r14 + 0xb8], rax
	movabs	rax, 0x7fffffe87fffffe
	mov	rbp, rbp
	mov	qword ptr [r14 + 0xc0], rax
	nop	
	mov	r15d, 2
	mov	ebx, 0x80
	test	byte ptr [r14 + 0xb0], 4
	je	.label_811
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0xc8], xmm0
.label_813:
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
.label_811:
	call	__ctype_b_loc
	nop	
	lea	rdx, [rbx + rbx]
	add	rdx, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_812:
	mov	rax, rdx
	mov	rsp, rsp
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_815:
	lea	esi, [rbx + rcx]
	cmp	esi, 0x5f
	lea	rdi, [rdi]
	je	.label_814
	nop	
	movzx	esi, word ptr [rax]
	and	esi, 8
	test	si, si
	mov	rbp, rbp
	je	.label_816
.label_814:
	lea	rdi, [rdi]
	mov	esi, 1
	shl	rsi, cl
	mov	rsp, rsp
	or	qword ptr [r14 + r15*8 + 0xb8], rsi
.label_816:
	inc	rcx
	lea	rdi, [rdi]
	add	rax, 2
	lea	rsi, [rsi]
	cmp	rcx, 0x40
	nop	
	jne	.label_815
	mov	rsp, rsp
	inc	r15
	add	rbx, 0x40
	lea	rdi, [rdi]
	add	rdx, 0x80
	lea	rsi, [rsi]
	cmp	r15d, 4
	jne	.label_812
	mov	rsp, rsp
	jmp	.label_813
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d4b0

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	dword ptr [rsp + 0xc], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_828
	mov	qword ptr [rsp], r12
	nop	
	mov	edi, 0x50
	nop	
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	test	r12, r12
	je	.label_823
	lea	rdi, [rdi]
	mov	al, byte ptr [r12 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0xc]
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r12 + 0x20], al
	nop	
	lea	rcx, [rsp + 0x20]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, rbx
	mov	rdx, r12
	mov	r8, r14
	nop	
	call	build_charclass
	mov	rbp, rbp
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jne	.label_824
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_827
	lea	rdi, [rdi]
	inc	rbp
	nop	dword ptr [rax + rax]
.label_819:
	movsx	rsi, al
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	call	bitset_set
	mov	al, byte ptr [rbp]
	inc	rbp
	lea	rdi, [rdi]
	test	al, al
	jne	.label_819
.label_827:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_826
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	bitset_not
.label_826:
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_817
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdi, rbx
	call	bitset_mask
.label_817:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x18], 3
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rsp + 0x10]
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rdi, r15
	call	create_token_tree
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_818
	lea	rdi, [rdi]
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_822
	mov	byte ptr [rsp + 0x18], 6
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r12
	or	byte ptr [r15 + 0xb0], 2
	nop	
	lea	rcx, [rsp + 0x10]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, r15
	mov	rsp, rsp
	call	create_token_tree
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_818
	mov	rsp, rsp
	mov	ecx, 0xa
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, rax
	mov	rsp, rsp
	call	create_tree
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	jmp	.label_821
.label_822:
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	call	free_charset
	jmp	.label_821
.label_818:
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free_charset
	mov	rsp, rsp
	jmp	.label_825
.label_828:
	mov	dword ptr [r12], 0xc
	lea	rsi, [rsi]
	jmp	.label_820
.label_823:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
.label_825:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_820
.label_824:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
.label_820:
	xor	ebp, ebp
.label_821:
	lea	rsi, [rsi]
	mov	rax, rbp
	nop	
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d710

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, r9
	mov	rbp, r8
	lea	rdi, [rdi]
	mov	r15, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x48]
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x17
	mov	rbp, rbp
	jne	.label_835
	mov	qword ptr [rsp], rcx
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	qword ptr [rsp + 8], rbp
	call	fetch_number
	mov	rbx, rax
	cmp	rbx, -1
	jne	.label_849
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r13
	mov	rbp, rbp
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 1
	jne	.label_833
	movzx	eax, byte ptr [r15]
	xor	ebx, ebx
	mov	rsp, rsp
	cmp	eax, 0x2c
	je	.label_839
	jmp	.label_833
.label_835:
	nop	
	mov	qword ptr [rsp + 0x10], r13
	mov	rbp, rbp
	cmp	eax, 0x12
	mov	rbp, rbp
	sete	cl
	lea	rsi, [rsi]
	movzx	ebx, cl
	mov	rsp, rsp
	cmp	eax, 0x13
	mov	eax, 1
	nop	
	mov	r13, -1
	mov	rsp, rsp
	cmove	r13, rax
.label_841:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	fetch_token
	mov	rsp, rsp
	xor	r14d, r14d
	test	r12, r12
	je	.label_830
	mov	rax, r13
	xor	r14d, r14d
	or	rax, rbx
	lea	rdi, [rdi]
	je	.label_836
	lea	rdi, [rdi]
	test	rbx, rbx
	jg	.label_840
	mov	r15, qword ptr [rsp + 0x18]
.label_845:
	movzx	eax, byte ptr [r12 + 0x30]
	nop	
	cmp	eax, 0x11
	nop	
	jne	.label_842
	mov	rdx, qword ptr [r12 + 0x28]
	mov	esi, OFFSET FLAT:mark_opt_subexp
	mov	rdi, r12
	nop	
	call	postorder
.label_842:
	lea	rdi, [rdi]
	cmp	r13, -1
	sete	al
	movzx	ecx, al
	or	ecx, 0xa
	mov	rsp, rsp
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	create_tree
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_838
	lea	rax, [rbx + 2]
	lea	rsi, [rsi]
	cmp	rax, r13
	jg	.label_831
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_832:
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r15
	nop	
	call	duplicate_tree
	mov	r12, rax
	lea	rdi, [rdi]
	mov	ecx, 0x10
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, r12
	call	create_tree
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_838
	mov	rsp, rsp
	test	rax, rax
	je	.label_838
	xor	edx, edx
	mov	ecx, 0xa
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rax
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	nop	
	je	.label_838
	inc	rbx
	cmp	rbx, r13
	jl	.label_832
.label_831:
	test	r14, r14
	je	.label_846
	mov	ecx, 0x10
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	create_tree
	nop	
	mov	r14, rax
	lea	rdi, [rdi]
	jmp	.label_830
.label_849:
	mov	qword ptr [rsp + 0x10], r13
	cmp	rbx, -2
	je	.label_834
.label_839:
	nop	
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	mov	r13, rbx
	lea	rsi, [rsi]
	je	.label_843
	cmp	eax, 1
	jne	.label_834
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2c
	jne	.label_834
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 8]
	call	fetch_number
	lea	rsi, [rsi]
	mov	r13, rax
	cmp	r13, -2
	mov	rbp, rbp
	je	.label_834
.label_843:
	cmp	r13, -1
	je	.label_837
	lea	rsi, [rsi]
	cmp	rbx, r13
	jg	.label_833
.label_837:
	mov	rbp, rbp
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	jne	.label_833
	lea	rsi, [rsi]
	cmp	r13, -1
	lea	rsi, [rsi]
	mov	rax, r13
	cmove	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, 0x8000
	mov	rbp, qword ptr [rsp + 8]
	jl	.label_841
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xf
	nop	
	xor	r14d, r14d
	nop	
	jmp	.label_830
.label_833:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xa
	xor	r14d, r14d
	jmp	.label_830
.label_834:
	mov	rax, qword ptr [rsp + 8]
	test	eax, 0x200000
	mov	rbp, rbp
	je	.label_829
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14 + 0x48], rax
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [r15], xmm0
	mov	byte ptr [r15 + 8], 1
	lea	rdi, [rdi]
	mov	r14, r12
	nop	
	jmp	.label_830
.label_846:
	lea	rdi, [rdi]
	mov	r14, rbp
	jmp	.label_830
.label_836:
	nop	
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r12
	call	postorder
	jmp	.label_830
.label_840:
	mov	ebp, 1
	lea	rdi, [rdi]
	mov	r14, r12
	nop	
	cmp	rbx, 2
	lea	rsi, [rsi]
	jge	.label_844
	mov	r15, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_848
.label_844:
	nop	
	mov	r15, qword ptr [rsp + 0x18]
.label_847:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	nop	
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r12
	mov	rbp, rbp
	call	create_tree
	mov	rsp, rsp
	mov	r14, rax
	lea	rsi, [rsi]
	test	r12, r12
	nop	
	je	.label_838
	nop	
	test	r14, r14
	je	.label_838
	nop	
	inc	rbp
	cmp	rbp, rbx
	lea	rdi, [rdi]
	jl	.label_847
.label_848:
	cmp	rbx, r13
	je	.label_830
	mov	rdi, r12
	mov	rsi, r15
	lea	rdi, [rdi]
	call	duplicate_tree
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	mov	rbp, rbp
	jne	.label_845
.label_838:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	dword ptr [rax], 0xc
	xor	r14d, r14d
.label_830:
	lea	rdi, [rdi]
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_829:
	movzx	eax, byte ptr [r15 + 8]
	mov	rbp, rbp
	cmp	eax, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	add	eax, 9
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	xor	r14d, r14d
	jmp	.label_830
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40db50

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	lea	rsi, [rsi]
	jle	.label_853
	mov	rcx, qword ptr [rsi + 8]
	mov	r8b, byte ptr [rcx + rax]
	mov	byte ptr [rdi], r8b
	cmp	dword ptr [rsi + 0x90], 2
	mov	rsp, rsp
	jl	.label_858
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x30]
	je	.label_858
	mov	rcx, qword ptr [rsi + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	je	.label_850
.label_858:
	movzx	ecx, r8b
	mov	rsp, rsp
	test	dl, 1
	mov	rsp, rsp
	je	.label_856
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	jne	.label_856
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_856
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x48], rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	lea	rsi, [rsi]
	jmp	.label_850
.label_853:
	mov	byte ptr [rdi + 8], 2
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_856:
	mov	rbp, rbp
	cmp	ecx, 0x5b
	jne	.label_862
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_859
	mov	rcx, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	jmp	.label_860
.label_862:
	cmp	ecx, 0x5e
	nop	
	je	.label_852
	lea	rdi, [rdi]
	cmp	ecx, 0x5d
	je	.label_855
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_850
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	lea	rsi, [rsi]
	ret	
.label_850:
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_859:
	mov	rbp, rbp
	xor	eax, eax
.label_860:
	mov	byte ptr [rdi], al
	nop	
	movzx	eax, al
	nop	
	cmp	eax, 0x3d
	je	.label_851
	cmp	eax, 0x3a
	je	.label_854
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_857
	mov	byte ptr [rdi + 8], 0x1a
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_855:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_854:
	mov	rsp, rsp
	test	dl, 4
	mov	rsp, rsp
	jne	.label_861
.label_857:
	nop	
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	byte ptr [rdi], r8b
	mov	eax, 1
	ret	
.label_852:
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 8], 0x19
	mov	rsp, rsp
	mov	eax, 1
	ret	
.label_851:
	mov	byte ptr [rdi + 8], 0x1c
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_861:
	mov	byte ptr [rdi + 8], 0x1e
	lea	rdi, [rdi]
	mov	eax, 2
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dcd0

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	rsp, rsp
	mov	eax, 1
	mov	cl, sil
	shl	rax, cl
	nop	
	mov	rcx, rsi
	sar	rcx, 0x3f
	nop	
	shr	rcx, 0x3a
	nop	
	add	rcx, rsi
	mov	rsp, rsp
	sar	rcx, 6
	mov	rsp, rsp
	or	qword ptr [rdi + rcx*8], rax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40dd00

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], r8
	mov	ebp, ecx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	nop	
	mov	r13, qword ptr [rbx + 0x48]
	nop	
	mov	rdi, rbx
	mov	rsi, r13
	call	re_string_char_size_at
	mov	r12d, eax
	cmp	r12d, 2
	lea	rsi, [rsi]
	jl	.label_866
	mov	dword ptr [r15], 1
	mov	rsi, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	re_string_wchar_at
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	movsxd	rax, r12d
	mov	rbp, rbp
	add	qword ptr [rbx + 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_867
.label_866:
	movsxd	rax, ebp
	nop	
	add	r13, rax
	mov	qword ptr [rbx + 0x48], r13
	movzx	eax, byte ptr [r14 + 8]
	add	eax, -0x16
	cmp	eax, 8
	ja	.label_865
	jmp	qword ptr [word ptr [+ (rax * 8) + label_864]]
.label_1860:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbp, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_bracket_symbol
.label_1859:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_865
	nop	
	lea	rdi, [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x20]
	mov	eax, 0xb
	nop	
	cmp	ecx, 0x15
	jne	.label_863
.label_865:
	mov	dword ptr [r15], 0
	lea	rsi, [rsi]
	mov	al, byte ptr [r14]
	mov	byte ptr [r15 + 8], al
.label_867:
	xor	eax, eax
.label_863:
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40de20

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbx, r9
	mov	rbp, rbp
	mov	rbp, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rsp, rsp
	mov	r12, rdi
	mov	ecx, dword ptr [rbp]
	mov	eax, 0xb
	cmp	ecx, 2
	lea	rdi, [rdi]
	je	.label_870
	cmp	ecx, 4
	je	.label_870
	mov	rsp, rsp
	mov	edx, dword ptr [rbx]
	cmp	edx, 2
	je	.label_870
	nop	
	cmp	edx, 4
	je	.label_870
	mov	rsp, rsp
	cmp	ecx, 3
	lea	rdi, [rdi]
	jne	.label_886
	mov	rdi, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	call	strlen
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 3
	mov	rbp, rbp
	cmp	rcx, 1
	ja	.label_870
.label_886:
	cmp	dword ptr [rbx], 3
	jne	.label_879
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	call	strlen
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 3
	lea	rdi, [rdi]
	cmp	rcx, 1
	mov	rsp, rsp
	ja	.label_870
.label_879:
	mov	eax, dword ptr [rbp]
	cmp	eax, 3
	je	.label_885
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_888
	mov	al, byte ptr [rbp + 8]
	jmp	.label_889
.label_885:
	mov	rax, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax]
	jmp	.label_889
.label_888:
	nop	
	xor	eax, eax
.label_889:
	mov	ecx, dword ptr [rbx]
	cmp	ecx, 3
	mov	rbp, rbp
	je	.label_869
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_872
	nop	
	mov	dl, byte ptr [rbx + 8]
	mov	rsp, rsp
	jmp	.label_874
.label_869:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	mov	rsp, rsp
	jmp	.label_874
.label_872:
	xor	edx, edx
.label_874:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 3
	mov	rsp, rsp
	je	.label_878
	mov	rsp, rsp
	test	ecx, ecx
	jne	.label_880
.label_878:
	movzx	edi, al
	mov	rsi, r14
	mov	ebp, edx
	call	parse_byte
	mov	edx, ebp
	mov	ebp, eax
	jmp	.label_883
.label_880:
	mov	ebp, dword ptr [rbp + 8]
.label_883:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx]
	cmp	eax, 3
	je	.label_884
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_887
.label_884:
	lea	rsi, [rsi]
	movzx	edi, dl
	mov	rsi, r14
	mov	rbp, rbp
	call	parse_byte
	lea	rdi, [rdi]
	mov	ebx, eax
	jmp	.label_868
.label_887:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rbx + 8]
.label_868:
	cmp	ebp, -1
	mov	eax, 3
	mov	rbp, rbp
	je	.label_870
	lea	rsi, [rsi]
	cmp	ebx, -1
	je	.label_870
	lea	rdi, [rdi]
	test	r12d, 0x10000
	je	.label_876
	lea	rdi, [rdi]
	cmp	ebp, ebx
	lea	rdi, [rdi]
	mov	eax, 0xb
	mov	rbp, rbp
	ja	.label_870
.label_876:
	test	r14, r14
	mov	rbp, rbp
	je	.label_881
	mov	rbp, rbp
	mov	r12, qword ptr [r14 + 0x40]
	cmp	qword ptr [r15], r12
	lea	rdi, [rdi]
	je	.label_882
.label_875:
	nop	
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	dword ptr [rax + rcx*4], ebp
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x40], rcx
	mov	rcx, qword ptr [r14 + 0x10]
	nop	
	mov	dword ptr [rcx + rax*4], ebx
.label_881:
	mov	rsp, rsp
	mov	r14d, ebx
	mov	ebp, ebp
	xor	ebx, ebx
	nop	
.label_877:
	mov	rsp, rsp
	cmp	rbp, rbx
	lea	rdi, [rdi]
	ja	.label_871
	cmp	rbx, r14
	mov	rbp, rbp
	ja	.label_871
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, rbx
	call	bitset_set
.label_871:
	mov	rbp, rbp
	inc	rbx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_877
.label_870:
	nop	
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_882:
	mov	rbp, rbp
	lea	rax, [r12 + r12]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	lea	rsi, [rax*4 + 4]
	mov	qword ptr [rsp + 0x10], rsi
	nop	
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	nop	
	mov	rdi, qword ptr [rsp + 8]
	nop	
	test	rdi, rdi
	je	.label_873
	test	rax, rax
	mov	rbp, rbp
	je	.label_873
	nop	
	lea	rcx, [r12 + r12 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r15], rcx
	mov	rsp, rsp
	jmp	.label_875
.label_873:
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	nop	
	mov	eax, 0xc
	mov	rbp, rbp
	jmp	.label_870
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0f0

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	nop	
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_890
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	mov	rsp, rsp
	call	bitset_set
	lea	rdi, [rdi]
	xor	eax, eax
.label_890:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e140

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	mov	rbp, rbp
	call	strlen
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_891
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	nop	
	call	bitset_set
	xor	eax, eax
.label_891:
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e190

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r12, r8
	mov	r13, rcx
	nop	
	mov	rbx, rdx
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rsp, rsp
	test	r9d, 0x400000
	je	.label_902
	nop	
	mov	esi, OFFSET FLAT:.str.7_1
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_947
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_902
.label_947:
	nop	
	mov	r12d, OFFSET FLAT:.str.9_1
.label_902:
	nop	
	mov	rbp, qword ptr [rbx + 0x48]
	nop	
	cmp	qword ptr [r13], rbp
	je	.label_952
.label_912:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	wctype
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_5
	nop	
	mov	rdi, r12
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_917
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strcmp
	test	eax, eax
	nop	
	je	.label_916
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_923
	mov	esi, OFFSET FLAT:.str.3_2
	nop	
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_926
	mov	esi, OFFSET FLAT:.str.9_1
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_936
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11_2
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_945
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_924
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_954
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13_0
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_898
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_950
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_941
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.16_0
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	nop	
	mov	eax, 4
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_897
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	r12, rax
	mov	rbp, rbp
	xor	ebx, ebx
	test	r14, r14
	mov	rsp, rsp
	jne	.label_937
.label_934:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_940
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	bitset_set
.label_940:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_934
	jmp	.label_897
.label_917:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	test	r14, r14
	mov	rsp, rsp
	jne	.label_909
	nop	word ptr cs:[rax + rax]
.label_896:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2], 8
	je	.label_932
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	bitset_set
.label_932:
	inc	rbx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	jne	.label_896
	mov	rsp, rsp
	jmp	.label_897
	nop	word ptr [rax + rax]
.label_909:
	nop	
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_905
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	bitset_set
.label_905:
	inc	rbx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_909
	jmp	.label_897
.label_916:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	mov	rbp, rbp
	jne	.label_918
	nop	dword ptr [rax]
.label_928:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_925
	mov	rdi, r15
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	bitset_set
.label_925:
	inc	rbx
	xor	eax, eax
	mov	rsp, rsp
	cmp	rbx, 0x100
	jne	.label_928
	nop	
	jmp	.label_897
	nop	
.label_918:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_939
	lea	rdi, [rdi]
	movzx	esi, byte ptr [r14 + rbx]
	mov	rsp, rsp
	mov	rdi, r15
	call	bitset_set
.label_939:
	lea	rsi, [rsi]
	inc	rbx
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	jne	.label_918
	jmp	.label_897
.label_923:
	nop	
	call	__ctype_b_loc
	nop	
	mov	r12, rax
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	r14, r14
	jne	.label_935
	nop	word ptr cs:[rax + rax]
.label_903:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	lea	rsi, [rsi]
	je	.label_895
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, rbx
	nop	
	call	bitset_set
.label_895:
	inc	rbx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, 0x100
	nop	
	jne	.label_903
	lea	rsi, [rsi]
	jmp	.label_897
	nop	word ptr [rax + rax]
.label_935:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	nop	
	test	byte ptr [rax + rbx*2 + 1], 2
	nop	
	je	.label_894
	nop	
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rbp, rbp
	call	bitset_set
.label_894:
	mov	rbp, rbp
	inc	rbx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	jne	.label_935
	jmp	.label_897
.label_926:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	nop	
	test	r14, r14
	mov	rsp, rsp
	jne	.label_892
.label_943:
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 0x20
	lea	rdi, [rdi]
	je	.label_931
	mov	rdi, r15
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	bitset_set
.label_931:
	lea	rsi, [rsi]
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, 0x100
	mov	rsp, rsp
	jne	.label_943
	jmp	.label_897
.label_892:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_927
	mov	rbp, rbp
	movzx	esi, byte ptr [r14 + rbx]
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	bitset_set
.label_927:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_892
	jmp	.label_897
.label_952:
	mov	rbp, rbp
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rsp, rsp
	mov	rcx, rax
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	je	.label_897
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [r13], rax
	lea	rdi, [rdi]
	jmp	.label_912
.label_936:
	nop	
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	nop	
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_922
	nop	
.label_929:
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	test	byte ptr [rax + rbx*2 + 1], 4
	nop	
	je	.label_906
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_906:
	nop	
	inc	rbx
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	jne	.label_929
	jmp	.label_897
.label_922:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	test	byte ptr [rax + rbx*2 + 1], 4
	mov	rsp, rsp
	je	.label_938
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_938:
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_922
	lea	rdi, [rdi]
	jmp	.label_897
.label_945:
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_901
	nop	dword ptr [rax + rax]
.label_933:
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_908
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	bitset_set
.label_908:
	mov	rbp, rbp
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_933
	mov	rbp, rbp
	jmp	.label_897
.label_901:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	mov	rbp, rbp
	je	.label_907
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_907:
	nop	
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, 0x100
	mov	rsp, rsp
	jne	.label_901
	jmp	.label_897
.label_924:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	mov	rbp, rbp
	jne	.label_915
	nop	word ptr [rax + rax]
.label_955:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	mov	rsp, rsp
	je	.label_951
	nop	
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_951:
	lea	rdi, [rdi]
	inc	rbx
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_955
	jmp	.label_897
.label_915:
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	test	byte ptr [rax + rbx*2 + 1], 0x40
	mov	rbp, rbp
	je	.label_944
	movzx	esi, byte ptr [r14 + rbx]
	mov	rbp, rbp
	mov	rdi, r15
	call	bitset_set
.label_944:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_915
	nop	
	jmp	.label_897
.label_954:
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	nop	
	jne	.label_893
	nop	word ptr cs:[rax + rax]
.label_921:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_900
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	call	bitset_set
.label_900:
	inc	rbx
	nop	
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	jne	.label_921
	lea	rsi, [rsi]
	jmp	.label_897
.label_893:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	mov	rsp, rsp
	je	.label_914
	mov	rbp, rbp
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rbp, rbp
	call	bitset_set
.label_914:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rbx, 0x100
	nop	
	jne	.label_893
	jmp	.label_897
.label_898:
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_930
	nop	dword ptr [rax + rax]
.label_946:
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	test	byte ptr [rax + rbx*2], 1
	je	.label_948
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	bitset_set
.label_948:
	lea	rdi, [rdi]
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_946
	jmp	.label_897
.label_930:
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_911
	lea	rsi, [rsi]
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rsp, rsp
	call	bitset_set
.label_911:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	lea	rdi, [rdi]
	jne	.label_930
	nop	
	jmp	.label_897
.label_950:
	nop	
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	jne	.label_899
.label_910:
	nop	
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	lea	rsi, [rsi]
	jns	.label_904
	mov	rdi, r15
	mov	rsi, rbx
	mov	rbp, rbp
	call	bitset_set
.label_904:
	lea	rsi, [rsi]
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	nop	
	jne	.label_910
	jmp	.label_897
.label_899:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_913
	nop	
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_913:
	lea	rdi, [rdi]
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_899
	jmp	.label_897
.label_937:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_920
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rbp, rbp
	call	bitset_set
.label_920:
	inc	rbx
	nop	
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	jne	.label_937
	lea	rsi, [rsi]
	jmp	.label_897
.label_941:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	r14, r14
	jne	.label_919
.label_953:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	test	byte ptr [rax + rbx*2], 4
	lea	rsi, [rsi]
	je	.label_949
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	call	bitset_set
.label_949:
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_953
.label_897:
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_919:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2], 4
	lea	rsi, [rsi]
	je	.label_942
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_942:
	inc	rbx
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbx, 0x100
	jne	.label_919
	nop	
	jmp	.label_897
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ea50

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_956:
	mov	rbp, rbp
	not	qword ptr [rdi + rax*8]
	mov	rsp, rsp
	inc	rax
	nop	
	cmp	rax, 4
	jne	.label_956
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ea80

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_957:
	mov	rcx, qword ptr [rsi + rax*8]
	and	qword ptr [rdi + rax*8], rcx
	lea	rsi, [rsi]
	inc	rax
	cmp	rax, 4
	jne	.label_957
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eab0

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	mov	eax, 1
	cmp	dword ptr [rdi + 0x90], 1
	mov	rsp, rsp
	je	.label_958
	mov	rsp, rsp
	lea	rcx, [rsi + 1]
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jge	.label_958
	lea	rdi, [rdi]
	lea	rcx, [rsi*4]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdi + 0x10]
	mov	eax, 1
	nop	dword ptr [rax + rax]
.label_959:
	lea	rsi, [rsi]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_958
	mov	rsp, rsp
	lea	rdx, [rsi + rax + 1]
	inc	rax
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rdi + 0x30]
	jl	.label_959
.label_958:
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eb20

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	nop	
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r12, rdx
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rax, qword ptr [rbx + 0x68]
	mov	r14d, 7
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbx + 0x48]
	jle	.label_960
	mov	rbp, -1
	mov	rbp, rbp
	movzx	r13d, byte ptr [r12]
	nop	word ptr cs:[rax + rax]
.label_966:
	mov	rsp, rsp
	movzx	eax, byte ptr [r12 + 8]
	nop	
	cmp	eax, 0x1e
	lea	rdi, [rdi]
	jne	.label_965
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	re_string_fetch_byte_case
	jmp	.label_963
	nop	
.label_965:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x48], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 8]
	mov	al, byte ptr [rcx + rax]
.label_963:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x48]
	nop	
	cmp	qword ptr [rbx + 0x68], rcx
	jle	.label_960
	mov	rbp, rbp
	movzx	edx, al
	cmp	edx, r13d
	jne	.label_967
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + rcx]
	cmp	edx, 0x5d
	je	.label_961
.label_967:
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + rbp + 1], al
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, 0x1e
	jle	.label_966
.label_960:
	nop	
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_961:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x48], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp + 1], 0
	mov	rsp, rsp
	movzx	eax, byte ptr [r12 + 8]
	nop	
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	eax, 0x1e
	je	.label_962
	cmp	eax, 0x1c
	lea	rsi, [rsi]
	je	.label_964
	cmp	eax, 0x1a
	nop	
	jne	.label_960
	lea	rdi, [rdi]
	mov	dword ptr [r15], 3
	mov	rsp, rsp
	jmp	.label_960
.label_962:
	mov	dword ptr [r15], 4
	jmp	.label_960
.label_964:
	mov	dword ptr [r15], 2
	lea	rsi, [rsi]
	jmp	.label_960
	.section	.text
	.align	16
	#Procedure 0x40ec60

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	push	r14
	push	rbx
	nop	
	mov	rbx, rdi
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_968
	mov	rax, qword ptr [rbx + 0x48]
.label_973:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 8]
.label_970:
	mov	rbp, rbp
	mov	bpl, byte ptr [rcx + rax]
.label_969:
	movzx	eax, bpl
	pop	rbx
	pop	r14
	pop	rbp
	mov	rbp, rbp
	ret	
.label_968:
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_974
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	je	.label_971
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_973
.label_971:
	nop	
	mov	r14, qword ptr [rbx + 0x48]
	nop	
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, qword ptr [rcx + r14*8]
	lea	rdi, [rdi]
	mov	bpl, byte ptr [rax + rdx]
	test	bpl, bpl
	js	.label_972
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_char_size_at
	mov	rsp, rsp
	cdqe	
	nop	
	add	rax, r14
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_969
.label_974:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	add	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rbx + 0x48], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	nop	
	jmp	.label_970
.label_972:
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x48], rax
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	bpl, byte ptr [rax + r14]
	jmp	.label_969
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ed40

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	test	rsi, rsi
	je	.label_975
	lea	rsi, [rsi]
	jmp	btowc
.label_975:
	lea	rdi, [rdi]
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ed60

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdx
	nop	
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rcx, -1
	mov	rbp, rbp
	mov	r13d, 0x8000
	jmp	.label_976
.label_978:
	lea	rcx, [rbx + rbx*4]
	nop	
	lea	rcx, [rax + rcx*2 - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0x8000
	lea	rsi, [rsi]
	cmovg	rcx, r13
	nop	word ptr [rax + rax]
.label_976:
	mov	rbx, rcx
	nop	
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	mov	rsp, rsp
	call	fetch_token
	movzx	eax, byte ptr [r12]
	mov	rsp, rsp
	movzx	edx, byte ptr [r12 + 8]
	cmp	edx, 0x18
	je	.label_977
	cmp	edx, 2
	je	.label_979
	cmp	eax, 0x2c
	lea	rsi, [rsi]
	je	.label_977
	cmp	eax, 0x30
	mov	rsp, rsp
	mov	rcx, -2
	jb	.label_976
	nop	
	cmp	edx, 1
	mov	rsp, rsp
	jne	.label_976
	lea	rdi, [rdi]
	cmp	rbx, -2
	lea	rsi, [rsi]
	je	.label_976
	movzx	edx, al
	cmp	edx, 0x39
	ja	.label_976
	cmp	rbx, -1
	jne	.label_978
	lea	rdi, [rdi]
	add	rax, -0x30
	mov	rcx, rax
	jmp	.label_976
.label_979:
	mov	rbx, -2
.label_977:
	mov	rax, rbx
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ee50

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbx]
	mov	rsp, rsp
	lea	rcx, [rbx + 0x28]
	xor	r14d, r14d
	xor	esi, esi
	xor	edx, edx
	nop	
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_982
	nop	
	lea	r13, [rsp]
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_986:
	mov	rsp, rsp
	mov	qword ptr [rax], r12
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r12, qword ptr [r13]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_980
	lea	r13, [r12 + 8]
	mov	rbp, rbp
	jmp	.label_983
	nop	word ptr cs:[rax + rax]
.label_980:
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_984:
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	nop	
	cmp	rbp, rcx
	je	.label_987
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_981
.label_987:
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [r12]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_984
	lea	rsi, [rsi]
	jmp	.label_985
	nop	
.label_981:
	nop	
	lea	r13, [r12 + 0x10]
.label_983:
	lea	rcx, [rbp + 0x28]
	lea	rdi, [rdi]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	lea	rsi, [rsi]
	call	create_token_tree
	lea	rsi, [rsi]
	mov	qword ptr [r13], rax
	mov	rsp, rsp
	test	rax, rax
	nop	
	mov	rbx, rbp
	jne	.label_986
	jmp	.label_982
.label_985:
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp]
.label_982:
	nop	
	mov	rax, r14
	nop	
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ef80

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	rbp, rbp
	mov	eax, dword ptr [rsi + 0x30]
	mov	rsp, rsp
	movzx	ecx, al
	nop	
	cmp	ecx, 0x11
	jne	.label_988
	lea	rdi, [rdi]
	cmp	qword ptr [rsi + 0x28], rdi
	lea	rsi, [rsi]
	jne	.label_988
	or	eax, 0x80000
	lea	rsi, [rsi]
	mov	dword ptr [rsi + 0x30], eax
.label_988:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40efb0

	.globl preorder
	.type preorder, @function
preorder:
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rbx, rdi
	mov	rdi, r14
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	r15
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_991
.label_992:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbx + 8]
	test	r12, r12
	mov	ecx, 0
	lea	rsi, [rsi]
	jne	.label_989
	nop	word ptr [rax + rax]
.label_993:
	mov	rax, rcx
	mov	rcx, rbx
	mov	r12, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	cmp	r12, rax
	mov	rbp, rbp
	je	.label_990
	lea	rdi, [rdi]
	test	r12, r12
	nop	
	jne	.label_989
.label_990:
	nop	
	mov	rbx, qword ptr [rcx]
	xor	eax, eax
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_993
	lea	rdi, [rdi]
	jmp	.label_991
	nop	word ptr cs:[rax + rax]
.label_989:
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	call	r15
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	mov	rbx, r12
	lea	rsi, [rsi]
	je	.label_992
.label_991:
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f080

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	nop	
	cmp	eax, 4
	mov	rbp, rbp
	jne	.label_994
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_994
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	lea	rdi, [rdi]
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
.label_994:
	nop	
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x11
	lea	rdi, [rdi]
	jne	.label_995
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_995
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_995
	mov	rdx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_996
	nop	
	mov	qword ptr [rdx], rsi
.label_996:
	nop	
	mov	rax, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	cmp	rcx, 0x3f
	mov	rsp, rsp
	jg	.label_995
	mov	rax, -2
	mov	rbp, rbp
	rol	rax, cl
	mov	rbp, rbp
	and	qword ptr [rdi + 0xa0], rax
.label_995:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f150

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_998
	mov	rsp, rsp
	movzx	eax, byte ptr [rdx + 0x30]
	lea	rdi, [rdi]
	cmp	eax, 0x11
	jne	.label_998
	lea	rdi, [rsp + 4]
	mov	rsp, rsp
	mov	rsi, r14
	call	lower_subexp
	nop	
	mov	qword ptr [rbx + 8], rax
	nop	
	test	rax, rax
	je	.label_998
	mov	qword ptr [rax], rbx
.label_998:
	mov	rdx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	test	rdx, rdx
	je	.label_997
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	lea	rsi, [rsi]
	jne	.label_997
	lea	rsi, [rsi]
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_997
	nop	
	mov	qword ptr [rax], rbx
.label_997:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f200

	.globl calc_first
	.type calc_first, @function
calc_first:
	nop
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	nop	
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	nop	
	movzx	eax, byte ptr [rbx + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x10
	jne	.label_1000
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x38], rax
	xor	eax, eax
	jmp	.label_999
.label_1000:
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x18], rbx
	nop	
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	call	re_dfa_add_node
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x38], rcx
	mov	eax, 0xc
	cmp	rcx, -1
	mov	rsp, rsp
	je	.label_999
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbx + 0x30]
	cmp	edx, 0xc
	nop	
	jne	.label_999
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [r14]
	nop	
	shl	rcx, 4
	mov	rbp, rbp
	shl	edx, 8
	mov	rbp, rbp
	and	edx, 0x3ff00
	lea	rdi, [rdi]
	mov	edi, 0xfffc00ff
	mov	rbp, rbp
	and	edi, dword ptr [rsi + rcx + 8]
	lea	rdi, [rdi]
	or	edi, edx
	mov	rsp, rsp
	mov	dword ptr [rsi + rcx + 8], edi
.label_999:
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f2e0

	.globl calc_next
	.type calc_next, @function
calc_next:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x10
	mov	rbp, rbp
	je	.label_1001
	cmp	eax, 0xb
	mov	rsp, rsp
	jne	.label_1004
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_1001:
	mov	rax, qword ptr [rsi + 8]
	nop	
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 0x10]
	jmp	.label_1003
.label_1004:
	mov	rax, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1002
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1002:
	mov	rax, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1005
.label_1003:
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1005:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f350

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + 0x30]
	lea	rdi, [rdi]
	lea	edx, [rax - 2]
	lea	rsi, [rsi]
	cmp	edx, 0xe
	ja	.label_1012
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1011]]
.label_1864:
	mov	rbp, rbp
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x38]
.label_1009:
	mov	rsp, rsp
	mov	rdi, rax
	pop	rax
	jmp	re_node_set_init_1
.label_1865:
	lea	rsi, [rsi]
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	test	rdx, rdx
	lea	rdx, [rdx + 0x18]
	cmove	rdx, rsi
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_1006
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x38]
	test	rdx, rdx
	lea	rsi, [rsi]
	js	.label_1008
	lea	rcx, [rcx + rcx*2]
	shl	rcx, 3
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdi + 0x28]
	mov	rdi, rcx
	mov	rsi, rax
	nop	
	pop	rax
	nop	
	jmp	re_node_set_init_2
.label_1862:
	cmp	qword ptr [rsi + 0x20], 0
	je	.label_1010
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.17_2
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6_1
	lea	rdi, [rdi]
	mov	edx, 0x59f
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_1863:
	mov	rax, qword ptr [rsi + 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_1010
	mov	rbp, rbp
	lea	rax, [rcx + rcx*2]
	mov	rsp, rsp
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + rcx*8]
	jmp	.label_1009
.label_1012:
	test	al, 8
	nop	
	jne	.label_1007
	nop	
	mov	rax, qword ptr [rsi + 0x20]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_1010:
	xor	eax, eax
	pop	rcx
	ret	
.label_1006:
	mov	edi, OFFSET FLAT:.str.18_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rsp, rsp
	mov	edx, 0x5af
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rbp, rbp
	call	__assert_fail
.label_1008:
	nop	
	mov	edi, OFFSET FLAT:.str.19_1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5b0
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1007:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	lea	rdi, [rdi]
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f510

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdi
	xor	ebx, ebx
	lea	r15, [rsp + 8]
	mov	rsp, rsp
	xor	r12d, r12d
	jmp	.label_1016
	nop	word ptr cs:[rax + rax]
.label_1013:
	lea	rsi, [rsi]
	inc	rbx
.label_1016:
	cmp	rbx, qword ptr [r14 + 0x10]
	jne	.label_1014
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	r12b, 1
	lea	rdi, [rdi]
	mov	r12d, 0
	mov	rbp, rbp
	je	.label_1015
.label_1014:
	mov	rax, qword ptr [r14 + 0x30]
	lea	r13, [rbx + rbx*2]
	cmp	qword ptr [rax + r13*8 + 8], 0
	mov	rsp, rsp
	jne	.label_1013
	mov	ecx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	calc_eclosure_iter
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1017
	mov	rax, qword ptr [r14 + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1013
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	r12b, 1
	nop	
	jmp	.label_1013
.label_1017:
	lea	rdi, [rdi]
	mov	ebx, eax
.label_1015:
	mov	rbp, rbp
	mov	eax, ebx
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f5e0

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	mov	r13, rdi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + 0x10], 0
	mov	rbp, rbp
	je	.label_1018
	xor	eax, eax
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1019:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r13 + 0x38]
	movups	xmmword ptr [rdx + rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rax + 0x10], 0
	lea	rsi, [rsi]
	inc	rcx
	mov	rdx, qword ptr [r13 + 0x10]
	nop	
	add	rax, 0x18
	cmp	rcx, rdx
	jb	.label_1019
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_1018
	lea	rdi, [rdi]
	xor	r14d, r14d
.label_1020:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0x30]
	lea	r15, [r14 + r14*2]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + r15*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1022
	lea	rsi, [rsi]
	mov	r12, qword ptr [rax + r15*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_1021:
	mov	rax, qword ptr [r13 + 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + rbx*8]
	nop	
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r14
	nop	
	call	re_node_set_insert_last
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1018
	inc	rbx
	nop	
	mov	rax, qword ptr [r13 + 0x30]
	nop	
	cmp	rbx, qword ptr [rax + r15*8 + 8]
	lea	rsi, [rsi]
	jl	.label_1021
.label_1022:
	lea	rdi, [rdi]
	inc	r14
	nop	
	xor	eax, eax
	mov	rbp, rbp
	cmp	r14, qword ptr [r13 + 0x10]
	jb	.label_1020
.label_1018:
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f6e0

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsi]
	nop	
	mov	rbp, qword ptr [r15 + 8]
	mov	rsp, rsp
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_1023
	mov	rsp, rsp
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1023
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	cmp	rax, 0x3f
	lea	rsi, [rsi]
	jg	.label_1026
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + 0xa0]
	bt	rcx, rax
	jae	.label_1026
.label_1023:
	mov	qword ptr [rsp], rdi
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, 8
	mov	rdi, r13
	lea	rdi, [rdi]
	call	create_tree
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, 9
	mov	rsp, rsp
	mov	rdi, r13
	call	create_tree
	mov	rbx, rax
	test	rbp, rbp
	mov	rbp, rbp
	mov	r14, rbx
	lea	rdi, [rdi]
	je	.label_1027
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	lea	rsi, [rsi]
	mov	r14, rax
.label_1027:
	mov	ecx, 0x10
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	create_tree
	nop	
	test	rbx, rbx
	je	.label_1024
	mov	rbp, rbp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1024
	test	r14, r14
	je	.label_1024
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_1024
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x28]
	nop	
	mov	qword ptr [rbx + 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x28], rcx
	mov	ecx, 0x80000
	nop	
	and	ecx, dword ptr [r15 + 0x30]
	lea	rsi, [rsi]
	mov	edx, 0xfff7ffff
	mov	esi, dword ptr [rbx + 0x30]
	and	esi, edx
	lea	rsi, [rsi]
	or	esi, ecx
	mov	dword ptr [rbx + 0x30], esi
	mov	rbp, rbp
	and	edx, dword ptr [r12 + 0x30]
	or	edx, ecx
	mov	dword ptr [r12 + 0x30], edx
	jmp	.label_1025
.label_1026:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 8]
.label_1025:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_1024:
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1025
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f860

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rbx + 0x10], rbp
	lea	rdi, [rdi]
	jae	.label_1032
.label_1033:
	mov	rax, qword ptr [rbx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	nop	
	mov	qword ptr [rax + rcx], r12
	mov	qword ptr [rax + rcx + 8], r15
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r15b
	cmp	eax, 5
	mov	rsp, rsp
	jne	.label_1031
	lea	rdi, [rdi]
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	lea	rsi, [rsi]
	jg	.label_1028
.label_1031:
	lea	rdi, [rdi]
	cmp	eax, 6
	lea	rdi, [rdi]
	sete	cl
.label_1028:
	nop	
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	mov	rbp, rbp
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x28]
	nop	
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x30]
	nop	
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r14, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	lea	rax, [r14 + 1]
	nop	
	mov	qword ptr [rbx + 0x10], rax
.label_1029:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1032:
	lea	r13, [rbp + rbp]
	mov	r14, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	r13, rax
	lea	rdi, [rdi]
	ja	.label_1029
	nop	
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, rbp
	lea	rdi, [rdi]
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1029
	mov	qword ptr [rsp], r13
	nop	
	mov	qword ptr [rbx], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	shl	rbp, 4
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rbp, [rbp + rbp*2]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 8]
	mov	rsp, rsp
	call	realloc
	mov	rdi, qword ptr [rsp + 0x10]
	nop	
	test	rdi, rdi
	je	.label_1030
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_1030
	mov	rsp, rsp
	test	r13, r13
	je	.label_1030
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1030
	mov	qword ptr [rbx + 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rbx + 0x28], r13
	nop	
	mov	qword ptr [rbx + 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_1033
.label_1030:
	mov	r15, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, r13
	call	free
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	jmp	.label_1029
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40fae0

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rsp, rsp
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 2
	mov	rbp, rbp
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1037
	lea	rsi, [rsi]
	cmp	r14, r15
	nop	
	jne	.label_1034
	mov	qword ptr [rbx + 8], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	qword ptr [rax], r14
	mov	rbp, rbp
	jmp	.label_1036
.label_1034:
	mov	qword ptr [rbx + 8], 2
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	jge	.label_1035
	nop	
	mov	qword ptr [rax], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r15
	jmp	.label_1036
.label_1035:
	lea	rdi, [rdi]
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], r14
.label_1036:
	xor	eax, eax
.label_1037:
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fb90

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	mov	rbp, rbp
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	mov	qword ptr [rbx], 1
	mov	rsp, rsp
	mov	qword ptr [rbx + 8], 1
	mov	rbp, rbp
	mov	edi, 8
	nop	
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	nop	
	test	rax, rax
	je	.label_1038
	mov	rbp, rbp
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1039:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
.label_1038:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	mov	eax, 0xc
	jmp	.label_1039
	.section	.text
	.align	16
	#Procedure 0x40fbf0

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r15, rdx
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	r14, [r15 + r15*2]
	mov	rsi, qword ptr [rax + r14*8 + 8]
	lea	rdi, [rdi]
	inc	rsi
	lea	rdi, [rsp + 0x30]
	call	re_node_set_alloc
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1044
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	qword ptr [rax + r14*8 + 8], -1
	nop	
	mov	rax, qword ptr [rbp]
	mov	rbx, r15
	shl	rbx, 4
	mov	r8d, dword ptr [rax + rbx + 8]
	shr	r8d, 8
	nop	
	and	r8d, 0x3ff
	nop	
	je	.label_1040
	mov	rcx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rcx + r14*8 + 8], 0
	je	.label_1040
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	test	byte ptr [rax + rcx + 0xa], 4
	lea	rsi, [rsi]
	jne	.label_1040
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r15
	lea	rdi, [rdi]
	mov	rcx, r15
	call	duplicate_node_closure
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1044
.label_1040:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp]
	mov	rsp, rsp
	test	byte ptr [rax + rbx + 8], 8
	lea	rsi, [rsi]
	jne	.label_1041
	mov	rbx, r15
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_1042
.label_1041:
	nop	
	mov	rbx, r15
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1050
	lea	rdi, [rdi]
	xor	r15d, r15d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1051:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + r13*8]
	nop	
	lea	r12, [rdx + rdx*2]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	nop	
	cmp	rcx, -1
	lea	rsi, [rsi]
	je	.label_1046
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_1043
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1049
	lea	rsi, [rsi]
	jmp	.label_1044
	nop	dword ptr [rax]
.label_1043:
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1049:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1044
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_1047
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1046:
	mov	rsp, rsp
	mov	r15b, 1
.label_1047:
	nop	
	inc	r13
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_1051
	mov	rbp, rbp
	jmp	.label_1042
.label_1050:
	xor	r15d, r15d
.label_1042:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x30]
	mov	rsp, rsp
	mov	rsi, rbx
	call	re_node_set_insert
	mov	rbp, rbp
	mov	cl, al
	mov	eax, 0xc
	mov	rbp, rbp
	test	cl, cl
	je	.label_1044
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1045
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	lea	rsi, [rsi]
	jne	.label_1045
	lea	rdi, [rdi]
	mov	qword ptr [rax + r14*8 + 8], 0
	nop	
	jmp	.label_1048
.label_1045:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	nop	
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1048:
	nop	
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x10], rax
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x30]
	mov	rsp, rsp
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1044:
	mov	rsp, rsp
	add	rsp, 0x48
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fe80

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rsi
	mov	qword ptr [rbx + 8], 0
	lea	rdi, [rsi*8]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], rax
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	mov	eax, 0xc
	lea	rdi, [rdi]
	cmovne	eax, ecx
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fed0

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	ebx, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	r13, rdx
	mov	r14, rsi
	nop	
	mov	rbp, rdi
.label_1062:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x10], ebx
	nop	dword ptr [rax]
.label_1055:
	mov	rcx, qword ptr [rbp]
	mov	rax, r14
	shl	rax, 4
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rcx + rax + 8]
	lea	rsi, [rsi]
	cmp	ecx, 4
	lea	rdi, [rdi]
	jne	.label_1056
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rbx, qword ptr [rax + r14*8]
	mov	r15, rbp
	lea	r12, [r13 + r13*2]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r12*8 + 8], 0
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	duplicate_node
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	cmp	rbp, -1
	je	.label_1060
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	rsp, rsp
	mov	qword ptr [rax + r13*8], rcx
	nop	
	mov	rax, qword ptr [r15 + 0x28]
	lea	rsi, [rsi]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbp
	nop	
	call	re_node_set_insert
	mov	rbp, rbp
	test	al, al
	mov	r14, rbx
	mov	rbp, rbp
	mov	r13, rbp
	mov	rbp, r15
	mov	rbp, rbp
	jne	.label_1055
	nop	
	jmp	.label_1052
	nop	dword ptr [rax]
.label_1056:
	mov	rcx, qword ptr [rbp + 0x28]
	nop	
	lea	r15, [r14 + r14*2]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + r15*8 + 8]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1058
	mov	rsi, qword ptr [rcx + r15*8 + 0x10]
	mov	rsi, qword ptr [rsi]
	lea	r12, [r13 + r13*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
.label_1826:
	lea	rdi, [rdi]
	cmp	rdx, 1
	je	.label_1061
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r13d, dword ptr [rsp + 0x10]
	mov	edx, r13d
	mov	rbp, rbp
	call	search_duplicated_node
	cmp	rax, -1
	je	.label_1054
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	nop	
	jne	.label_1053
	jmp	.label_1052
.label_1054:
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	mov	edx, r13d
	mov	rbp, rbp
	call	duplicate_node
	mov	r14, rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r14, -1
	nop	
	je	.label_1052
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	nop	
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	mov	rsi, rbx
	lea	rsi, [rsi]
	je	.label_1052
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rdx, r14
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r8d, r13d
	mov	rsp, rsp
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1052
.label_1053:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + r15*8 + 0x10]
	mov	rsp, rsp
	mov	r14, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	mov	edx, r13d
	lea	rsi, [rsi]
	call	duplicate_node
	mov	r13, rax
	cmp	r13, -1
	je	.label_1063
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	lea	rdi, [rax + r12*8]
	mov	rsp, rsp
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	mov	rbp, rbp
	jne	.label_1055
	jmp	.label_1052
.label_1061:
	cmp	r14, qword ptr [rsp + 8]
	jne	.label_1064
	cmp	r13, r14
	jne	.label_1059
.label_1064:
	mov	rcx, qword ptr [rbp]
	nop	
	mov	eax, dword ptr [rcx + rax + 8]
	lea	rdi, [rdi]
	shr	eax, 8
	mov	rbp, rbp
	and	eax, 0x3ff
	nop	
	mov	ebx, dword ptr [rsp + 0x10]
	mov	rsp, rsp
	or	ebx, eax
	nop	
	mov	rdi, rbp
	mov	r14, rsi
	nop	
	mov	edx, ebx
	mov	rsp, rsp
	call	duplicate_node
	mov	rsp, rsp
	mov	r13, rax
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r13, -1
	lea	rdi, [rdi]
	je	.label_1052
	mov	rax, qword ptr [rbp + 0x28]
	nop	
	lea	rdi, [rax + r12*8]
	nop	
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1062
	jmp	.label_1052
.label_1060:
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rsi, [rsi]
	jmp	.label_1052
.label_1063:
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rsi, [rsi]
	jmp	.label_1052
.label_1058:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r13*8], rcx
.label_1057:
	nop	
	mov	dword ptr [rsp + 0x14], 0
.label_1052:
	mov	eax, dword ptr [rsp + 0x14]
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1059:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	je	.label_1052
	jmp	.label_1057
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410220

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_1066
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 8]
	test	rdx, rdx
	je	.label_1066
	nop	
	mov	rbx, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	lea	rax, [rcx + rdx*2]
	lea	rsi, [rsi]
	cmp	rbx, rax
	jge	.label_1070
	mov	rsp, rsp
	add	rbx, rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	lea	rdi, [rdi]
	shl	rsi, 4
	nop	
	call	realloc
	mov	rcx, rax
	nop	
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1066
	lea	rsi, [rsi]
	add	rbx, rbx
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
.label_1070:
	nop	
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_1076
	lea	rsi, [rsi]
	lea	rbx, [rcx + rax*2]
	lea	rdi, [rdi]
	dec	rax
	nop	
	dec	rcx
	mov	rbp, rbp
	mov	rdx, rax
	or	rdx, rcx
	nop	
	js	.label_1067
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_1071
.label_1065:
	mov	rbp, rbp
	dec	rax
.label_1068:
	mov	rbp, rbp
	dec	rcx
	jmp	.label_1075
	nop	dword ptr [rax]
.label_1071:
	mov	rdi, qword ptr [rsi + rax*8]
	nop	
	cmp	qword ptr [rdx + rcx*8], rdi
	mov	rsp, rsp
	je	.label_1065
	lea	rsi, [rsi]
	jge	.label_1068
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_1075:
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	or	rdi, rcx
	mov	rbp, rbp
	jns	.label_1071
.label_1067:
	test	rax, rax
	mov	rbp, rbp
	js	.label_1073
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	sub	rbx, rcx
	mov	rsp, rsp
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1073:
	mov	r11, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	lea	r10, [r11 + rax*2 - 1]
	lea	rsi, [rsi]
	mov	r15, r10
	lea	rdi, [rdi]
	sub	r15, rbx
	inc	r15
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_1066
	lea	rax, [r15 + r11]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rax
	mov	rbp, rbp
	lea	r8, [r11 - 1]
.label_1072:
	lea	r9, [r11 - 1]
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	lea	rdx, [r15*8]
	nop	
	lea	rax, [r15 + r8]
	nop	
	lea	r12, [rcx + rax*8]
	lea	r13, [rcx + r10*8]
	xor	esi, esi
	nop	dword ptr [rax]
.label_1077:
	nop	
	mov	rax, qword ptr [r13 + rsi*8]
	mov	rdi, qword ptr [rcx + r11*8 - 8]
	cmp	rax, rdi
	jle	.label_1069
	mov	rbp, rbp
	mov	qword ptr [r12 + rsi*8], rax
	nop	
	add	rdx, -8
	dec	rsi
	xor	eax, eax
	mov	rdi, r15
	mov	rbp, rbp
	add	rdi, rsi
	jne	.label_1077
	lea	rdi, [rdi]
	jmp	.label_1066
	nop	word ptr cs:[rax + rax]
.label_1069:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rsi*8], rdi
	nop	
	add	r15, rsi
	dec	r8
	lea	rsi, [rsi]
	add	r10, rsi
	cmp	r11, 1
	mov	r11, r9
	jg	.label_1072
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	lea	rsi, [rdi + rbx*8]
	jmp	.label_1074
.label_1076:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
.label_1074:
	nop	
	call	memcpy
	lea	rsi, [rsi]
	xor	eax, eax
.label_1066:
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410480

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx]
	test	rsi, rsi
	je	.label_1078
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1085
	cmp	rsi, rax
	lea	rdi, [rdi]
	jne	.label_1081
	lea	rax, [rsi + rsi]
	nop	
	mov	qword ptr [rbx], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1084
	mov	qword ptr [rbx + 0x10], rax
.label_1081:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx], r14
	jle	.label_1087
	test	rax, rax
	jle	.label_1082
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr [rax + rax]
.label_1080:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + rax*8 - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rax*8], rdx
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rax, [rax - 1]
	mov	rsp, rsp
	jg	.label_1080
	jmp	.label_1082
.label_1078:
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	re_node_set_init_1
	mov	rsp, rsp
	test	eax, eax
	sete	al
	lea	rdi, [rdi]
	jmp	.label_1083
.label_1085:
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax], r14
	jmp	.label_1079
.label_1087:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsi + rax*8 - 8]
	lea	rdi, [rdi]
	cmp	rcx, r14
	mov	rbp, rbp
	jle	.label_1082
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_1086:
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rax*8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rax*8 - 0x10]
	dec	rax
	cmp	rcx, r14
	mov	rsp, rsp
	mov	rsi, rdx
	mov	rbp, rbp
	jg	.label_1086
.label_1082:
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
.label_1079:
	lea	rdi, [rdi]
	inc	qword ptr [rbx + 8]
	mov	al, 1
.label_1083:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
.label_1084:
	xor	eax, eax
	jmp	.label_1083
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4105c0

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	ebp, edx
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	r15, r14
	nop	
	shl	r15, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + r15]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + r15 + 8]
	mov	rbp, rbp
	call	re_dfa_add_node
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_1088
	mov	rcx, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	shl	rdx, 4
	shl	ebp, 8
	lea	rsi, [rsi]
	and	ebp, 0x3ff00
	lea	rsi, [rsi]
	mov	esi, 0xfffc00ff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, ebp
	mov	rsp, rsp
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	esi, dword ptr [rcx + r15 + 8]
	mov	rsp, rsp
	or	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	or	dword ptr [rcx + rdx + 8], 0x40000
	nop	
	mov	rcx, qword ptr [rbx + 0x20]
	nop	
	mov	qword ptr [rcx + rax*8], r14
.label_1088:
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410680

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	mov	r8, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	lea	r10, [r8 - 1]
	mov	rax, -1
	test	r10, r10
	jle	.label_1089
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, r10
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	r11d, dword ptr [r9 + rcx + 8]
	lea	rdi, [rdi]
	mov	ecx, r11d
	mov	rbp, rbp
	and	ecx, 0x40000
	je	.label_1089
	mov	r9, qword ptr [rdi + 0x20]
	shl	r8, 4
	add	r8, -0x18
.label_1091:
	lea	rsi, [rsi]
	cmp	qword ptr [r9 + r10*8], rsi
	jne	.label_1090
	shr	r11d, 8
	and	r11d, 0x3ff
	cmp	r11d, edx
	mov	rbp, rbp
	je	.label_1092
.label_1090:
	lea	rdi, [rdi]
	dec	r10
	test	r10, r10
	jle	.label_1089
	mov	rcx, qword ptr [rdi]
	mov	r11d, dword ptr [rcx + r8]
	nop	
	mov	ecx, r11d
	and	ecx, 0x40000
	lea	rdi, [rdi]
	add	r8, -0x10
	mov	rbp, rbp
	test	ecx, ecx
	jne	.label_1091
	mov	rsp, rsp
	jmp	.label_1089
.label_1092:
	mov	rax, r10
.label_1089:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x410720

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_1093
	lea	rcx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	rbp, rbp
	mov	qword ptr [rbx], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	lea	rsi, [rax*8 + 0x10]
	mov	rsp, rsp
	call	realloc
	test	rax, rax
	je	.label_1094
	mov	qword ptr [rbx + 0x10], rax
.label_1093:
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r14
	mov	al, 1
.label_1095:
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	ret	
.label_1094:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1095
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4107a0

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	lea	rdi, [rdi]
	push	r14
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	rbx, rsi
	mov	r14, rdi
	nop	
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0
	mov	rsp, rsp
	jle	.label_1096
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	nop	
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1097
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	nop	
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_1098
.label_1096:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1098:
	xor	eax, eax
.label_1099:
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_1097:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r14], xmm0
	mov	eax, 0xc
	jmp	.label_1099
	nop	
	.section	.text
	.align	16
	#Procedure 0x410830

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	lea	rdi, [rdi]
	mov	r9, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	test	r9, r9
	jle	.label_1100
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	dec	r9
	mov	rbp, rbp
	je	.label_1101
	mov	r8, qword ptr [rdi + 0x10]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1103:
	mov	rbp, rbp
	lea	rdx, [r9 + rax]
	shr	rdx, 1
	cmp	qword ptr [r8 + rdx*8], rsi
	lea	rcx, [rdx + 1]
	nop	
	cmovl	rax, rcx
	cmovge	r9, rdx
	cmp	rax, r9
	mov	rbp, rbp
	jb	.label_1103
.label_1101:
	nop	
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rcx + rax*8], rsi
	jne	.label_1102
	lea	rsi, [rsi]
	inc	rax
	ret	
.label_1102:
	mov	rbp, rbp
	xor	eax, eax
.label_1100:
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4108b0

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r13d, ecx
	mov	rbp, rsi
	mov	rsp, rsp
	cmp	qword ptr [rdx + 8], 0
	lea	rdi, [rdi]
	je	.label_1107
	nop	
	mov	qword ptr [rsp], rdi
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdi]
	mov	esi, r13d
	mov	rsp, rsp
	call	calc_state_hash
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x40]
	mov	rcx, qword ptr [rbp + 0x88]
	mov	qword ptr [rsp + 8], rbp
	lea	rsi, [rsi]
	and	rcx, rbx
	lea	rcx, [rcx + rcx*2]
	nop	
	cmp	qword ptr [rax + rcx*8], 0
	nop	
	jle	.label_1109
	nop	
	lea	r14, [rax + rcx*8]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + rcx*8 + 0x10]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1108:
	nop	
	mov	rbp, qword ptr [r15 + r12*8]
	cmp	qword ptr [rbp], rbx
	jne	.label_1104
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp + 0x68]
	mov	rsp, rsp
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1104
	mov	rdi, qword ptr [rbp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	re_node_set_compare
	nop	
	test	al, al
	nop	
	jne	.label_1106
.label_1104:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r14]
	jl	.label_1108
.label_1109:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	edx, r13d
	mov	rcx, rbx
	call	create_cd_newstate
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rsp, rsp
	jne	.label_1106
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	jmp	.label_1105
.label_1107:
	mov	dword ptr [rdi], 0
.label_1105:
	xor	ebp, ebp
.label_1106:
	lea	rsi, [rsi]
	mov	rax, rbp
	mov	rsp, rsp
	add	rsp, 0x18
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4109e0

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	eax, esi
	lea	rdi, [rdi]
	add	rax, rcx
	test	rcx, rcx
	jle	.label_1110
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdx, qword ptr [rdi + 0x10]
	xor	esi, esi
	nop	
.label_1111:
	add	rax, qword ptr [rdx + rsi*8]
	mov	rsp, rsp
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1111
.label_1110:
	ret	
	.section	.text
	.align	16
	#Procedure 0x410a10

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	xor	eax, eax
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1112
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1112
	nop	
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_1113
.label_1114:
	nop	
	mov	al, 1
	nop	
	test	rcx, rcx
	mov	rsp, rsp
	jle	.label_1112
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rcx*8 - 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdx + rcx*8 - 8]
	lea	rcx, [rcx - 1]
	je	.label_1114
.label_1113:
	xor	eax, eax
.label_1112:
	ret	
	.section	.text
	.align	16
	#Procedure 0x410a60

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x10], rcx
	mov	r14d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	edi, 0x70
	lea	rdi, [rdi]
	mov	esi, 1
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	r15, rax
	xor	eax, eax
	mov	rbp, rbp
	test	r15, r15
	je	.label_1118
	mov	r12, r15
	nop	
	add	r12, 8
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rbp
	mov	rsp, rsp
	call	re_node_set_init_copy
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1115
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 0x68]
	mov	cl, r14b
	mov	rsp, rsp
	and	cl, 0xf
	mov	rbp, rbp
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [r15 + 0x50], r12
	nop	
	mov	qword ptr [rsp + 0x20], r12
	nop	
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1121
	mov	eax, r14d
	and	eax, 1
	mov	dword ptr [rsp + 0x1c], eax
	lea	rsi, [rsi]
	mov	eax, r14d
	and	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], eax
	and	r14d, 4
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 8], r14d
	xor	r14d, r14d
	mov	rsp, rsp
	xor	r12d, r12d
.label_1129:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbp + 0x10]
	nop	
	mov	rcx, qword ptr [rcx + r14*8]
	mov	rbp, rbp
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	lea	rsi, [rsi]
	movzx	ecx, sil
	mov	r13d, esi
	lea	rsi, [rsi]
	shr	r13d, 8
	mov	rbp, rbp
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 0x3ff
	cmp	ecx, 1
	lea	rdi, [rdi]
	jne	.label_1123
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1122
.label_1123:
	mov	rdi, rbx
	shr	esi, 0x14
	mov	rbp, rbp
	mov	bl, byte ptr [r15 + 0x68]
	mov	dl, bl
	shr	dl, 5
	movzx	edx, dl
	or	edx, esi
	shl	dl, 5
	mov	rsp, rsp
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r15 + 0x68], bl
	cmp	ecx, 4
	je	.label_1131
	cmp	ecx, 2
	lea	rdi, [rdi]
	jne	.label_1125
	mov	rsp, rsp
	or	bl, 0x10
	mov	rsp, rsp
	jmp	.label_1128
.label_1131:
	or	bl, 0x40
.label_1128:
	mov	byte ptr [r15 + 0x68], bl
.label_1125:
	mov	rbp, rbp
	test	eax, eax
	je	.label_1117
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [r15 + 0x50], rax
	lea	rdi, [rdi]
	mov	rbx, rdi
	jne	.label_1119
	mov	edi, 0x18
	mov	rsp, rsp
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x50], rax
	nop	
	test	rax, rax
	nop	
	je	.label_1127
	mov	rdi, rax
	mov	rsi, rbp
	mov	rsp, rsp
	call	re_node_set_init_copy
	mov	rbp, rbp
	test	eax, eax
	mov	eax, 0
	lea	rsi, [rsi]
	jne	.label_1118
	or	byte ptr [r15 + 0x68], 0x80
	xor	r12d, r12d
.label_1119:
	cmp	dword ptr [rsp + 0x1c], 0
	lea	rsi, [rsi]
	jne	.label_1124
	nop	
	mov	eax, r13d
	and	eax, 1
	jne	.label_1120
.label_1124:
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_1130
	mov	eax, r13d
	nop	
	and	eax, 2
	jne	.label_1120
.label_1130:
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1116
	mov	eax, r13d
	mov	rsp, rsp
	and	eax, 0x10
	lea	rsi, [rsi]
	jne	.label_1120
.label_1116:
	mov	rsp, rsp
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1122
	lea	rdi, [rdi]
	and	r13d, 0x40
	je	.label_1122
	nop	word ptr cs:[rax + rax]
.label_1120:
	nop	
	mov	rsi, r14
	nop	
	sub	rsi, r12
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	re_node_set_remove_at
	mov	rsp, rsp
	inc	r12
	nop	
	jmp	.label_1122
.label_1117:
	mov	rbx, rdi
	nop	word ptr cs:[rax + rax]
.label_1122:
	inc	r14
	nop	
	cmp	r14, qword ptr [rbp + 8]
	mov	rbp, rbp
	jl	.label_1129
.label_1121:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	nop	
	call	register_state
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r15
	nop	
	je	.label_1118
.label_1127:
	nop	
	mov	rdi, r15
	call	free_state
	mov	rsp, rsp
	jmp	.label_1126
.label_1115:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
.label_1126:
	mov	rbp, rbp
	xor	eax, eax
.label_1118:
	lea	rdi, [rdi]
	add	rsp, 0x28
	nop	
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410d20

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	js	.label_1132
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, rsi
	jle	.label_1132
	mov	rsp, rsp
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [rdi + 8], rax
	nop	
	cmp	rax, rsi
	jle	.label_1132
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	nop	dword ptr [rax]
.label_1133:
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + rsi*8 + 8]
	nop	
	mov	qword ptr [rax + rsi*8], rcx
	lea	rsi, [rsi]
	inc	rsi
	cmp	rsi, qword ptr [rdi + 8]
	mov	rsp, rsp
	jl	.label_1133
.label_1132:
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d70

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r13, rdi
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	lea	r12, [rbx + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdi, r12
	mov	rsp, rsp
	call	re_node_set_alloc
	lea	rsi, [rsi]
	mov	r14d, 0xc
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1138
	cmp	qword ptr [rbx + 0x10], 0
	mov	rsp, rsp
	jle	.label_1134
	mov	rbp, rbp
	xor	ebp, ebp
.label_1135:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	mov	rax, qword ptr [r13]
	mov	rbp, rbp
	mov	rcx, rsi
	shl	rcx, 4
	test	byte ptr [rax + rcx + 8], 8
	lea	rsi, [rsi]
	jne	.label_1139
	mov	rdi, r12
	call	re_node_set_insert_last
	test	al, al
	mov	rbp, rbp
	je	.label_1138
.label_1139:
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_1135
.label_1134:
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x40]
	lea	rsi, [rsi]
	and	r15, qword ptr [r13 + 0x88]
	lea	rbp, [r15 + r15*2]
	mov	r15, qword ptr [r12 + rbp*8]
	cmp	qword ptr [r12 + rbp*8 + 8], r15
	jle	.label_1137
.label_1136:
	lea	rax, [r12 + rbp*8]
	mov	rcx, qword ptr [rax]
	nop	
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [r12 + rbp*8 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	xor	r14d, r14d
.label_1138:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1137:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15]
	nop	
	mov	rdi, qword ptr [r12 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1138
	lea	rcx, [r12 + rbp*8 + 8]
	nop	
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r12 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	rsp, rsp
	mov	qword ptr [rcx], rdx
	jmp	.label_1136
	nop	
	.section	.text
	.align	16
	#Procedure 0x410ea0

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	mov	rbp, rbp
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r15, rdi
	mov	rsp, rsp
	cmp	ecx, 2
	je	.label_1148
	lea	r13, [r14 + 1]
	nop	
	cmp	ecx, 1
	je	.label_1144
	nop	
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_1146
	mov	rbp, rbp
	lea	r12, [r13*8]
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rax
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	rax, rax
	je	.label_1145
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1149
	lea	rsi, [rsi]
	mov	qword ptr [r15], r13
	lea	rsi, [rsi]
	mov	r12d, 1
	jmp	.label_1141
.label_1148:
	mov	rsp, rsp
	mov	r12d, 2
	lea	rdi, [rdi]
	cmp	qword ptr [r15], r14
	jae	.label_1141
	mov	edi, OFFSET FLAT:.str.24_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1144:
	mov	r12d, 1
	cmp	r13, qword ptr [r15]
	mov	rbp, rbp
	ja	.label_1150
.label_1141:
	lea	rsi, [rsi]
	xor	eax, eax
	test	r14, r14
	mov	rsp, rsp
	jle	.label_1151
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	nop	
	add	rbx, 8
	mov	rsp, rsp
	mov	rdx, r14
	nop	
.label_1140:
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx - 8]
	mov	rsp, rsp
	mov	qword ptr [rax], rsi
	mov	rsi, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rsi
	add	rax, 8
	add	rcx, 8
	add	rbx, 0x10
	dec	rdx
	jne	.label_1140
	mov	rax, r14
.label_1151:
	mov	rsp, rsp
	cmp	rax, qword ptr [r15]
	nop	
	jae	.label_1143
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 8]
	nop	
	mov	rdx, qword ptr [r15 + 0x10]
	nop	
.label_1142:
	mov	qword ptr [rdx + rax*8], -1
	mov	qword ptr [rcx + rax*8], -1
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r15]
	lea	rsi, [rsi]
	jb	.label_1142
.label_1143:
	lea	rsi, [rsi]
	mov	ebp, r12d
.label_1145:
	nop	
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 0x18
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_1150:
	nop	
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	lea	rsi, [r13*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1145
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x10]
	nop	
	call	realloc
	test	rax, rax
	je	.label_1147
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15 + 8], rcx
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15], r13
	lea	rsi, [rsi]
	jmp	.label_1141
.label_1149:
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	jmp	.label_1145
.label_1147:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	lea	rsi, [rsi]
	jmp	.label_1145
.label_1146:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.23_0
	nop	
	mov	esi, OFFSET FLAT:.str.22_0
	mov	rbp, rbp
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x4110c0

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	nop	
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [r15 + 0xb4]
	cmp	rax, rcx
	cmovge	rcx, rax
	lea	rbx, [r14 + 1]
	cmp	rbx, rcx
	lea	rdi, [rdi]
	cmovg	rbx, rcx
	movzx	eax, r9b
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r13
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	rsp, rsp
	mov	r8d, eax
	mov	r9, r15
	call	re_string_construct_common
	mov	rdi, r13
	mov	rsi, rbx
	nop	
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1152
	lea	rdi, [rdi]
	lea	rax, [r15 + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x80], rax
	mov	al, byte ptr [r15 + 0xb0]
	mov	rbp, rbp
	shr	al, 4
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [r13 + 0x8e], al
	cmp	byte ptr [r13 + 0x8b], 0
	je	.label_1154
	lea	rsi, [rsi]
	mov	r12, qword ptr [r13 + 8]
.label_1154:
	mov	qword ptr [r13 + 8], r12
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	byte ptr [r13 + 0x8b], 0
	mov	ecx, 0
	jne	.label_1153
	xor	ecx, ecx
	nop	
	cmp	dword ptr [r15 + 0xb4], 1
	jg	.label_1153
	lea	rsi, [rsi]
	mov	rcx, r14
.label_1153:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
.label_1152:
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4111d0

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	dword ptr [rbx + 0xa0], esi
	mov	qword ptr [rbx + 0xa8], -1
	test	r14, r14
	jle	.label_1155
	mov	r15d, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_1156
	mov	rbp, rbp
	lea	rbp, [r14*8]
	lea	rdi, [rbp + rbp*4]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbx + 0xd8], rax
	mov	rdi, rbp
	nop	
	call	malloc
	mov	qword ptr [rbx + 0xf8], rax
	test	rax, rax
	je	.label_1156
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xd8]
	test	rax, rax
	nop	
	je	.label_1156
.label_1155:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0xd0], r14
	mov	dword ptr [rbx + 0xe0], 1
	mov	qword ptr [rbx + 0xf0], r14
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_1156:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411290

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x28
	mov	r15d, edx
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	cmp	rax, r14
	jle	.label_1190
	lea	rax, [rbx + 0x28]
	cmp	dword ptr [rbx + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_1198
	mov	qword ptr [rbx + 0x20], 0
.label_1198:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x58], rcx
	mov	rcx, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	mov	rsp, rsp
	lea	ecx, [r15 + r15]
	and	ecx, 2
	xor	ecx, 6
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbx + 0x70], ecx
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r13, r14
	lea	rsi, [rsi]
	jne	.label_1178
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	mov	r13, r14
.label_1178:
	nop	
	test	r13, r13
	mov	rsp, rsp
	je	.label_1179
	mov	rbp, rbp
	cmp	r13, qword ptr [rbx + 0x38]
	jge	.label_1174
	cmp	byte ptr [rbx + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1177
	lea	rdi, [rdi]
	lea	rsi, [r13 - 1]
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	mov	edx, r15d
	mov	rbp, rbp
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_1186
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	lea	rsi, [rdi + r13*4]
	mov	rbp, rbp
	sub	rdx, r13
	shl	rdx, 2
	call	memmove
.label_1186:
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	jne	.label_1195
.label_1180:
	sub	qword ptr [rbx + 0x30], r13
	nop	
	sub	qword ptr [rbx + 0x38], r13
.label_1171:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8b], 0
	nop	
	jne	.label_1179
	add	qword ptr [rbx + 8], r13
.label_1179:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x28], r14
	lea	rsi, [rsi]
	sub	qword ptr [rbx + 0x58], r13
	lea	rsi, [rsi]
	sub	qword ptr [rbx + 0x68], r13
	mov	rbp, rbp
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_1199
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1202
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1182
	jmp	.label_1162
.label_1199:
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	jne	.label_1163
	mov	rax, qword ptr [rbx + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1162
.label_1202:
	mov	rdi, rbx
	nop	
	call	build_wcs_buffer
.label_1162:
	mov	qword ptr [rbx + 0x48], 0
	lea	rdi, [rdi]
	xor	eax, eax
.label_1182:
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_1190:
	lea	rsi, [rsi]
	mov	r13, r14
	sub	r13, rax
	lea	rdi, [rdi]
	jmp	.label_1178
.label_1174:
	nop	
	mov	rdx, qword ptr [rbx + 0x30]
	cmp	byte ptr [rbx + 0x8c], 0
	lea	rsi, [rsi]
	jne	.label_1183
.label_1181:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1189
	mov	rbp, rbp
	mov	qword ptr [rsp], rdx
	mov	dword ptr [rsp + 0x24], 0xffffffff
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1200
	mov	rdx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	add	rax, rdx
	movsxd	rsi, dword ptr [rbx + 0x90]
	mov	rsp, rsp
	mov	rcx, r13
	sub	rcx, rsi
	add	rcx, rax
	nop	
	cmp	rcx, rdx
	cmovb	rcx, rdx
	mov	rbp, rbp
	lea	r12, [rax + r13]
	mov	rbp, r12
	nop	word ptr [rax + rax]
.label_1160:
	dec	rbp
	cmp	rbp, rcx
	jb	.label_1158
	mov	rsp, rsp
	mov	dl, byte ptr [rbp]
	and	dl, 0xc0
	movzx	edx, dl
	mov	rsp, rsp
	cmp	edx, 0x80
	lea	rdi, [rdi]
	je	.label_1160
	add	rax, qword ptr [rbx + 0x58]
	mov	rdx, rax
	mov	rbp, rbp
	sub	rdx, rbp
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsi, rbp
	jne	.label_1168
.label_1166:
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 0x18]
	mov	rsp, rsp
	call	rpl_mbrtowc
	sub	r12, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	sub	rcx, r12
	nop	
	jb	.label_1158
	cmp	rax, -3
	ja	.label_1158
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x14]
	mov	dword ptr [rsp + 0x24], eax
.label_1158:
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	cmp	edi, -1
	jne	.label_1187
.label_1200:
	lea	rdx, [rsp + 0x24]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	call	re_string_skip_chars
	mov	rsp, rsp
	sub	rax, r14
	mov	qword ptr [rbx + 0x30], rax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x24]
	cmp	edi, -1
	mov	rbp, rbp
	je	.label_1194
.label_1187:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1197
	mov	ecx, dword ptr [rsp + 0x24]
.label_1161:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, 0xa
	mov	rsp, rsp
	jne	.label_1164
	mov	eax, 2
	cmp	byte ptr [rbx + 0x8d], 0
	nop	
	jne	.label_1164
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_1164
.label_1177:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1175:
	nop	
	lea	rdi, [rdx + rsi]
	mov	rbp, rbp
	mov	rcx, rdi
	shr	rcx, 0x3f
	mov	rbp, rbp
	add	rcx, rdi
	sar	rcx, 1
	nop	
	cmp	qword ptr [rax + rcx*8], r13
	lea	rdi, [rdi]
	mov	rdi, rcx
	jg	.label_1167
	jge	.label_1173
	lea	rdx, [rcx + 1]
	mov	rdi, rsi
.label_1167:
	lea	rsi, [rsi]
	cmp	rdx, rdi
	mov	rsi, rdi
	jl	.label_1175
.label_1173:
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rcx*8], r13
	setl	al
	movzx	eax, al
	lea	rdi, [rdi]
	lea	rbp, [rax + rcx]
	mov	rbp, rbp
	lea	rsi, [rax + rcx - 1]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	jle	.label_1188
	cmp	rbp, r13
	jne	.label_1188
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + rbp*8], r13
	jne	.label_1188
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r13*4]
	lea	rsi, [rsi]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	nop	
	lea	rsi, [rdi + r13]
	call	memmove
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, r13
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	sub	qword ptr [rbx + 0x38], r13
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	jle	.label_1171
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	lea	rcx, [rax + r13*8]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1185:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r13
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1185
	jmp	.label_1171
.label_1195:
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rsi]
	lea	rsi, [rdi + r13]
	call	memmove
	jmp	.label_1180
.label_1188:
	mov	rax, r13
	sub	rax, r14
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	add	rcx, rax
	nop	
	mov	qword ptr [rbx + 0x58], rcx
	mov	rsp, rsp
	add	rax, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	dword ptr [rax + rax]
.label_1192:
	mov	rsp, rsp
	mov	rax, rbp
	mov	rsp, rsp
	test	rax, rax
	jle	.label_1193
	lea	rdi, [rdi]
	lea	rbp, [rax - 1]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + rax*8 - 8], r13
	je	.label_1192
.label_1193:
	mov	rbp, rbp
	cmp	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	jge	.label_1196
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1165:
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	jne	.label_1196
	inc	rax
	cmp	rax, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	jl	.label_1165
.label_1196:
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1201
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	jmp	.label_1159
.label_1163:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x88], 0
	lea	rdi, [rdi]
	je	.label_1157
	mov	rdi, rbx
	call	build_upper_buffer
	lea	rdi, [rdi]
	jmp	.label_1162
.label_1189:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	mov	al, byte ptr [rcx + rax - 1]
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1169
	mov	rbp, rbp
	mov	al, byte ptr [rdx + rcx]
.label_1169:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	r15d, al
	lea	rdi, [rdi]
	mov	rsi, r15
	call	bitset_contain
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_1172
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	lea	rdi, [rdi]
	jne	.label_1172
	mov	rbp, rbp
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_1172
	xor	ecx, ecx
.label_1172:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rsp, rsp
	jmp	.label_1171
.label_1201:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, r13
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	je	.label_1159
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1170
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	mov	rsp, rsp
	shl	rdx, 2
	nop	
	mov	esi, 0xff
	lea	rdi, [rdi]
	call	memset
.label_1170:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memset
	jmp	.label_1159
.label_1157:
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1162
	mov	rdi, rbx
	call	re_string_translate_buffer
	lea	rsi, [rsi]
	jmp	.label_1162
.label_1194:
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	dec	rsi
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	edx, r15d
	mov	rsp, rsp
	call	re_string_context_at
.label_1164:
	mov	dword ptr [rbx + 0x70], eax
	cmp	qword ptr [rbx + 0x30], 0
	lea	rsi, [rsi]
	jne	.label_1176
.label_1159:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_1171
.label_1183:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	mov	rsp, rsp
	add	rax, qword ptr [rbx + 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	
	jmp	.label_1181
.label_1176:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	jle	.label_1191
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	rbp, rbp
	mov	esi, 0xff
	mov	rsp, rsp
	call	memset
.label_1191:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1170
	lea	rsi, [rsi]
	jmp	.label_1159
.label_1197:
	lea	rdi, [rdi]
	call	iswalnum
	mov	rbp, rbp
	test	eax, eax
	mov	eax, 1
	mov	rbp, rbp
	jne	.label_1164
	mov	ecx, dword ptr [rsp + 0x24]
	cmp	ecx, 0x5f
	lea	rdi, [rdi]
	jne	.label_1161
	jmp	.label_1164
.label_1168:
	lea	rsi, [rsp + 0xe]
	mov	rbp, rbp
	cmp	rdx, 6
	mov	ecx, 6
	nop	
	cmovl	ecx, edx
	test	ecx, ecx
	mov	rsp, rsp
	jle	.label_1166
	lea	rcx, [rbp - 1]
	nop	
	sub	rcx, rax
	cmp	rcx, -8
	mov	rbp, rbp
	mov	r10, -7
	lea	rsi, [rsi]
	cmovg	r10, rcx
	xor	r10, 0xffffffffffffffff
	shl	r10, 0x20
	lea	rdi, [rdi]
	sar	r10, 0x20
	lea	rdi, [rdi]
	lea	r8, [rsp + r10 + 0xd]
	lea	r9, [r10 + rbp - 1]
	mov	rbp, rbp
	xor	ecx, ecx
.label_1184:
	lea	rdi, [rdi]
	movzx	edi, byte ptr [r9 + rcx]
	mov	rax, qword ptr [rbx + 0x78]
	mov	rsp, rsp
	mov	al, byte ptr [rax + rdi]
	lea	rsi, [rsi]
	mov	byte ptr [r8 + rcx], al
	lea	rax, [r10 + rcx - 1]
	dec	rcx
	mov	rbp, rbp
	inc	rax
	cmp	rax, 1
	jg	.label_1184
	jmp	.label_1166
	nop	
	.section	.text
	.align	16
	#Procedure 0x411ab0

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x28
	mov	r13, rdx
	nop	
	mov	dword ptr [rsp + 0x1c], esi
	lea	rsi, [rsi]
	mov	rbp, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x98]
	mov	r12, qword ptr [rbp + 0x48]
	test	r13, r13
	lea	rsi, [rsi]
	setne	al
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x20], eax
	mov	dword ptr [rsp + 0x24], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rbp + 0x98]
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	jns	.label_1206
	lea	rdi, [rdi]
	lea	rsi, [r12 - 1]
	nop	
	mov	edx, dword ptr [rbp + 0xa0]
	nop	
	mov	rdi, rbp
	call	re_string_context_at
	mov	rsp, rsp
	test	al, 1
	jne	.label_1216
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1206
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	nop	
	je	.label_1221
	lea	rdi, [rdi]
	test	sil, sil
	jne	.label_1221
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_1206
.label_1216:
	mov	rbx, qword ptr [r15 + 0x50]
.label_1206:
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1226
	nop	
	mov	rax, qword ptr [rbp + 0xb8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1231
	mov	rsp, rsp
	mov	qword ptr [rax + r12*8], rbx
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x98], 0
	lea	rsi, [rsi]
	jne	.label_1205
.label_1231:
	nop	
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	al, 0x10
	mov	rsp, rsp
	jne	.label_1214
.label_1217:
	nop	
	mov	qword ptr [rsp], rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r13
	mov	qword ptr [rsp + 0x10], r12
	lea	r13, [rsp + 0x24]
.label_1211:
	mov	rsi, qword ptr [rbp + 0x48]
	nop	
	cmp	qword ptr [rbp + 0x68], rsi
	jle	.label_1207
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rdi, [rdi]
	sete	r12b
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rsi, [rsi]
	or	r12b, al
	mov	r15, rbx
	nop	dword ptr [rax + rax]
.label_1232:
	lea	r14, [rsi + 1]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x40]
	cmp	r14, rax
	jge	.label_1203
.label_1212:
	mov	rax, qword ptr [rbp + 0x30]
	cmp	r14, rax
	jge	.label_1233
.label_1213:
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, r15
	call	transit_state
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	cmp	qword ptr [rbp + 0xb8], 0
	je	.label_1225
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	merge_state_with_log
	lea	rsi, [rsi]
	mov	rbx, rax
.label_1225:
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_1219
	mov	rax, -2
	nop	
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_1204
	cmp	qword ptr [rbp + 0xb8], 0
	mov	rsp, rsp
	setne	al
	nop	
	and	al, r12b
	movzx	eax, al
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_1207
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	find_recover_state
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_1207
.label_1219:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_1222
.label_1215:
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 0x68]
	lea	rsi, [rsi]
	test	al, 0x10
	je	.label_1210
	lea	rdi, [rdi]
	test	al, al
	nop	
	jns	.label_1208
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_1208
.label_1210:
	nop	
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	mov	r15, rbx
	jg	.label_1232
	jmp	.label_1207
.label_1203:
	cmp	rax, qword ptr [rbp + 0x58]
	jl	.label_1209
	jmp	.label_1212
.label_1233:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1213
.label_1209:
	mov	rsp, rsp
	add	esi, 2
	mov	rsp, rsp
	mov	rdi, rbp
	call	extend_buffers
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	dword ptr [rsp + 0x24], ecx
	test	ecx, ecx
	jne	.label_1220
	lea	rsi, [rsi]
	jmp	.label_1213
.label_1222:
	lea	rdi, [rdi]
	cmp	r15, rbx
	je	.label_1227
	mov	dword ptr [rsp + 0x20], 0
.label_1227:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	cmove	rax, r14
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1215
	nop	
.label_1208:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rsp], rdx
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	ecx, 1
	mov	rbp, rbp
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, rdx
	jne	.label_1211
	jmp	.label_1204
.label_1207:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1230
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	add	qword ptr [rcx], rax
.label_1230:
	mov	rax, qword ptr [rsp]
	jmp	.label_1204
.label_1220:
	mov	rax, -2
	mov	rsp, rsp
	cmp	ecx, 0xc
	nop	
	je	.label_1204
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rbp, rbp
	call	__assert_fail
.label_1226:
	mov	rbp, rbp
	mov	rax, -2
	cmp	dword ptr [rsp + 0x24], 0xc
	lea	rsi, [rsi]
	je	.label_1204
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.25
	nop	
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rsp, rsp
	call	__assert_fail
.label_1221:
	test	edx, edx
	nop	
	jne	.label_1229
	test	ecx, ecx
	mov	rsp, rsp
	je	.label_1206
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x24]
	nop	
	mov	rsi, r15
	mov	ecx, eax
	mov	rbp, rbp
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rsp, rsp
	jmp	.label_1206
.label_1214:
	test	al, al
	js	.label_1218
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	rdx, r12
	mov	rbp, rbp
	jne	.label_1217
	mov	rbp, rbp
	mov	rax, r12
	mov	rbp, rbp
	jmp	.label_1204
.label_1205:
	lea	r15, [rbx + 8]
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r15
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], eax
	mov	rsp, rsp
	test	eax, eax
	nop	
	jne	.label_1223
	mov	rsp, rsp
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_1228
	mov	rdi, rbp
	mov	rsi, r15
	call	transit_state_bkref
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1224
.label_1228:
	nop	
	mov	dword ptr [rsp + 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_1231
.label_1229:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_1206
.label_1218:
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rsp, rsp
	call	check_halt_state_context
	lea	rdi, [rdi]
	cmp	rax, 1
	sbb	rdx, rdx
	or	rdx, r12
	test	rax, rax
	setne	al
	movzx	ecx, al
	lea	rsi, [rsi]
	je	.label_1217
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_1217
	mov	rax, r12
.label_1204:
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1223:
	mov	rbp, rbp
	cdqe	
	jmp	.label_1204
.label_1224:
	lea	rdi, [rdi]
	cdqe	
	lea	rdi, [rdi]
	jmp	.label_1204
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411f90

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	rbp, rbp
	mov	edx, eax
	call	re_string_context_at
	mov	rbp, rbp
	mov	r15d, eax
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_1235
	mov	r12, qword ptr [rbx + 0x98]
	lea	rdi, [rdi]
	mov	r13, qword ptr [r14 + 0x18]
	xor	ebx, ebx
.label_1234:
	mov	rsp, rsp
	mov	rbp, qword ptr [r13 + rbx*8]
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	edx, r15d
	call	check_halt_node_context
	test	al, al
	jne	.label_1235
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	mov	ebp, 0
	mov	rsp, rsp
	jl	.label_1234
.label_1235:
	mov	rax, rbp
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412030

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r12, rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r12 + 0xa8]
	mov	r13d, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbx, rax
	mov	rsp, rsp
	ja	.label_1246
	mov	r14, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r12 + 0xb0]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	lea	rbp, [rbx*8 + 8]
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	mov	r15, rax
	nop	
	mov	r13d, 0xc
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1243
	cmp	qword ptr [r14 + 0x98], 0
	nop	
	je	.label_1247
	mov	qword ptr [rsp + 8], r14
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1240
	mov	qword ptr [rsp + 0x10], r12
	lea	rbp, [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r14, r15
	mov	rsp, rsp
	mov	r15, rax
	jmp	.label_1242
.label_1247:
	lea	r14, [rsp + 0x20]
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rbp, r15
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, r12
	mov	rsi, r14
	lea	rsi, [rsi]
	call	sift_states_backward
	nop	
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1236
	lea	rdi, [rdi]
	xor	r15d, r15d
	cmp	qword ptr [rbp], 0
	lea	rdi, [rdi]
	jne	.label_1244
	mov	r13d, 1
	jmp	.label_1238
.label_1248:
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	check_halt_state_context
	mov	r12, rax
.label_1242:
	lea	rdx, [rbx*8 + 8]
	nop	
	xor	esi, esi
	mov	rdi, r15
	call	memset
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rsp, rsp
	mov	rcx, r12
	mov	rbp, rbp
	mov	r8, rbx
	call	sift_ctx_init
	nop	
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	sift_states_backward
	mov	r13d, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rbp, rbp
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1239
	cmp	qword ptr [r14], 0
	jne	.label_1237
	mov	rsp, rsp
	cmp	qword ptr [r15], 0
	mov	rbp, rbp
	jne	.label_1237
	mov	r13d, 1
	test	rbx, rbx
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_1245
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rsp, rsp
	dec	rbx
	nop	
.label_1249:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbx*8]
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1241
	test	byte ptr [rsi + 0x68], 0x10
	nop	
	jne	.label_1248
.label_1241:
	lea	rcx, [rbx - 1]
	inc	rbx
	cmp	rbx, 2
	mov	rbx, rcx
	lea	rsi, [rsi]
	jge	.label_1249
	mov	rbp, rbp
	mov	rbp, r14
	lea	rsi, [rsi]
	jmp	.label_1238
.label_1243:
	mov	rbp, r15
	xor	r15d, r15d
	jmp	.label_1238
.label_1239:
	mov	rsp, rsp
	mov	rbp, r14
	lea	rdi, [rdi]
	jmp	.label_1238
.label_1237:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r12
	lea	rcx, [rbx + 1]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, r14
	mov	rsi, rbp
	mov	rdx, r15
	call	merge_state_array
	mov	rbp, rbp
	mov	r13d, eax
	mov	rdi, r15
	nop	
	call	free
	lea	rsi, [rsi]
	xor	r15d, r15d
	test	r13d, r13d
	mov	r12, qword ptr [rsp + 0x10]
	jne	.label_1238
.label_1244:
	mov	rdi, qword ptr [r12 + 0xb8]
	lea	rdi, [rdi]
	call	free
	mov	qword ptr [r12 + 0xb8], rbp
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 0xb0], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0xa8], rbx
	xor	r13d, r13d
	xor	ebp, ebp
.label_1236:
	xor	r15d, r15d
.label_1238:
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	free
.label_1246:
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x58
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1240:
	mov	rbp, r15
	mov	r15, rax
	jmp	.label_1238
.label_1245:
	mov	rsp, rsp
	mov	rbp, r14
	mov	rsp, rsp
	jmp	.label_1238
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412330

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdi
	nop	
	cmp	qword ptr [r14 + 0xe8], 0
	mov	rbp, rbp
	jle	.label_1254
	nop	
	xor	r12d, r12d
	nop	
.label_1252:
	mov	rax, qword ptr [r14 + 0xf8]
	nop	
	mov	r15, qword ptr [rax + r12*8]
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	mov	ebx, 0
	lea	rsi, [rsi]
	jle	.label_1250
	nop	word ptr cs:[rax + rax]
.label_1251:
	nop	
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	call	free
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1251
.label_1250:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1253
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
.label_1253:
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	free
	mov	rbp, rbp
	inc	r12
	mov	rsp, rsp
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1252
.label_1254:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x412440

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x68
	lea	rdi, [rdi]
	mov	r12, rcx
	nop	
	mov	rbx, rdx
	mov	qword ptr [rbp - 0x78], rsi
	mov	r15, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1268]]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1269]]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	r8b, r8b
	je	.label_1270
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 4
	lea	rdi, [rdi]
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	mov	r14d, 0xc
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1261
	lea	rsi, [rsi]
	lea	r14, [rbp - 0x70]
.label_1270:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], r15
	nop	
	mov	r15, qword ptr [r15 + 0x90]
	nop	
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rbp - 0x50], xmm0
	nop	
	mov	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	r13, rbx
	shl	r13, 4
	cmp	r13, 0xfbf
	lea	rsi, [rsi]
	ja	.label_1271
	mov	rdi, rsp
	lea	rsi, [rsi]
	lea	rax, [r13 + 0xf]
	lea	rdi, [rdi]
	and	rax, 0xfffffffffffffff0
	mov	rsp, rsp
	sub	rdi, rax
	mov	rsp, rsp
	mov	rsp, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8c], 0
	jmp	.label_1255
.label_1271:
	mov	rsp, rsp
	mov	rdi, r13
	nop	
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, rax
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1263
	lea	rdi, [rdi]
	mov	al, 1
	mov	dword ptr [rbp - 0x8c], eax
.label_1255:
	mov	qword ptr [rbp - 0x80], rdi
	nop	
	mov	rsi, r12
	mov	rdx, r13
	call	memcpy
	mov	r8, qword ptr [r12]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r8
	nop	
	cmp	r8, qword ptr [r12 + 8]
	jg	.label_1272
	mov	rsp, rsp
	lea	r13, [r12 + 8]
	jmp	.label_1266
.label_1264:
	cmp	r15, -2
	je	.label_1257
	mov	rbp, rbp
	test	r14, r14
	je	.label_1260
	mov	rbp, rbp
	mov	rdi, r14
	nop	
	lea	rsi, [rbp - 0x30]
	mov	rdx, rbx
	mov	rsp, rsp
	mov	rcx, r12
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	mov	r15, rax
	mov	rbp, rbp
	jmp	.label_1267
	nop	word ptr cs:[rax + rax]
.label_1266:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, r15
	mov	r9, rbx
	call	update_regs
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r12 + 8]
	jne	.label_1256
	mov	rax, qword ptr [rbp - 0x78]
	cmp	r15, qword ptr [rax + 0xb0]
	jne	.label_1256
	lea	rdi, [rdi]
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1259
	mov	rsp, rsp
	test	rbx, rbx
	mov	rcx, r13
	mov	eax, 0
	je	.label_1262
	nop	dword ptr [rax]
.label_1274:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1265
	nop	
	cmp	qword ptr [rcx], -1
	je	.label_1262
.label_1265:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	nop	
	jb	.label_1274
.label_1262:
	nop	
	cmp	rax, rbx
	je	.label_1272
	mov	rdi, r14
	lea	rsi, [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rcx, r12
	mov	rbp, rbp
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	nop	
	mov	r15, rax
.label_1256:
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r14
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r8, r15
	lea	r9, [rbp - 0x50]
	mov	rbp, rbp
	call	proceed_next_node
	add	rsp, 0x10
	lea	rdi, [rdi]
	mov	r15, rax
	test	r15, r15
	js	.label_1264
.label_1267:
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	cmp	r8, qword ptr [r12 + 8]
	jle	.label_1266
.label_1272:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	lea	rdi, [rdi]
	je	.label_1273
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1273:
	lea	rdi, [rdi]
	mov	rdi, r14
	call	free_fail_stack_return
	lea	rdi, [rdi]
	xor	r14d, r14d
	jmp	.label_1261
.label_1259:
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	xor	r14d, r14d
	jmp	.label_1258
.label_1257:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	lea	rsi, [rsi]
	je	.label_1263
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1263:
	lea	rdi, [rdi]
	mov	rdi, r14
	call	free_fail_stack_return
	lea	rdi, [rdi]
	mov	r14d, 0xc
.label_1261:
	mov	rsp, rsp
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1260:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	nop	
	mov	r14d, 1
.label_1258:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_1261
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
	mov	rsp, rsp
	jmp	.label_1261
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4127a0

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	match_ctx_clean
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0xf8]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0xd8]
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4127e0

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	nop	
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_1279
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1282
	nop	
	cmp	dword ptr [rbx + 0x90], 2
	nop	
	jl	.label_1275
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	inc	rsi
	nop	dword ptr [rax]
.label_1280:
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	lea	rdi, [rdi]
	cmp	ebp, -1
	jne	.label_1277
	nop	
	dec	rsi
	mov	rbp, rbp
	test	rsi, rsi
	jg	.label_1280
	nop	
	mov	edx, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_1276
.label_1275:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	ebp, byte ptr [rax + rsi]
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	bitset_contain
	mov	edx, 1
	mov	rbp, rbp
	test	al, al
	jne	.label_1276
	mov	rsp, rsp
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1276
	nop	
	jmp	.label_1281
.label_1277:
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8e], 0
	mov	rsp, rsp
	jne	.label_1283
.label_1278:
	xor	edx, edx
	cmp	ebp, 0xa
	nop	
	jne	.label_1276
.label_1281:
	mov	edx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1276
	xor	edx, edx
	mov	rbp, rbp
	jmp	.label_1276
.label_1279:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1276
.label_1282:
	lea	rdi, [rdi]
	and	edx, 2
	xor	edx, 0xa
.label_1276:
	mov	rbp, rbp
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1283:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1276
	test	eax, eax
	jne	.label_1276
	jmp	.label_1278
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4128e0

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	r15, rsi
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x38]
	nop	
	add	rbx, qword ptr [r12 + 0x28]
	mov	ecx, 0xffffffff
	lea	rdi, [rdi]
	cmp	rbx, r15
	jge	.label_1284
	mov	qword ptr [rsp + 8], rdx
	lea	r13, [r12 + 0x20]
	jmp	.label_1289
.label_1285:
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	rbp, rbx
	mov	rsp, rsp
	je	.label_1287
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1287
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + rbx]
.label_1287:
	mov	qword ptr [r13], r14
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	jmp	.label_1288
	nop	
.label_1289:
	mov	r14, qword ptr [r12 + 0x20]
	mov	rbp, qword ptr [r12 + 0x50]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12]
	nop	
	add	rsi, rbx
	lea	rdi, [rsp + 0x14]
	mov	rcx, r13
	call	rpl_mbrtowc
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1285
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	or	rcx, 1
	cmp	rcx, -1
	je	.label_1285
	mov	ecx, dword ptr [rsp + 0x14]
.label_1288:
	add	rbx, rax
	cmp	rbx, r15
	jl	.label_1289
	jmp	.label_1286
.label_1284:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdx
.label_1286:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4129e0

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	mov	rbp, rbp
	mov	rax, rsi
	lea	rdi, [rdi]
	sar	rax, 0x3f
	lea	rdi, [rdi]
	shr	rax, 0x3a
	nop	
	add	rax, rsi
	sar	rax, 6
	mov	rax, qword ptr [rdi + rax*8]
	bt	rax, rsi
	setb	al
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412a10

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1290
	lea	rdi, [rdi]
	mov	r12, qword ptr [r15 + 0x98]
	mov	rbp, rbp
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1291:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, 8
	lea	rdi, [rdi]
	jne	.label_1292
	mov	rax, qword ptr [rax + rcx]
	cmp	rax, 0x3f
	lea	rsi, [rsi]
	jg	.label_1292
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_1292
	mov	rbp, rbp
	mov	rdi, r15
	mov	rdx, r14
	lea	rsi, [rsi]
	call	match_ctx_add_subtop
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1290
	nop	dword ptr [rax]
.label_1292:
	mov	rsp, rsp
	inc	rbx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_1291
.label_1290:
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412ae0

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x68
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r13, rdi
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1304
	nop	
	mov	r8, qword ptr [r13 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x10], r8
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0x48]
	mov	qword ptr [rsp + 0x40], rax
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1306:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r8]
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rsp, rsp
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	movzx	eax, bl
	lea	rsi, [rsi]
	cmp	eax, 4
	lea	rdi, [rdi]
	jne	.label_1302
	nop	
	mov	ebp, ebx
	lea	rsi, [rsi]
	shr	ebp, 8
	mov	rsp, rsp
	test	bp, 0x3ff
	je	.label_1309
	mov	r14, rsi
	mov	edx, dword ptr [r13 + 0xa0]
	lea	rsi, [rsi]
	mov	rdi, r13
	nop	
	mov	r12, r8
	mov	rsi, qword ptr [rsp + 0x40]
	call	re_string_context_at
	mov	rsi, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1299
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_1302
.label_1299:
	test	bh, 8
	nop	
	je	.label_1305
	test	ecx, ecx
	jne	.label_1302
.label_1305:
	mov	rsp, rsp
	test	bh, 0x20
	nop	
	je	.label_1307
	mov	ecx, eax
	and	ecx, 2
	je	.label_1302
.label_1307:
	test	bpl, bpl
	jns	.label_1309
	mov	rbp, rbp
	and	eax, 8
	je	.label_1302
	nop	dword ptr [rax]
.label_1309:
	mov	qword ptr [rsp + 8], rsi
	mov	r12, qword ptr [r13 + 0xc8]
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rbx, r8
	mov	rbp, rbp
	mov	rbp, rsi
	mov	rdx, qword ptr [rsp + 0x40]
	call	get_subexp
	mov	rdx, rbp
	mov	r8, rbx
	mov	dword ptr [rsp + 0x64], eax
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1297
	cmp	r12, qword ptr [r13 + 0xc8]
	jge	.label_1302
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1301:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xd8]
	cmp	qword ptr [rax + rbp - 0x18], rdx
	nop	
	jne	.label_1296
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rbp - 0x10], rcx
	jne	.label_1296
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rdi, qword ptr [r8 + 0x30]
	mov	rbp, rbp
	cmp	rsi, rcx
	jne	.label_1294
	mov	qword ptr [rsp + 0x28], rdi
	nop	
	mov	qword ptr [rsp + 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rcx
	mov	rcx, qword ptr [r8 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	lea	rsi, [rsi]
	jmp	.label_1298
.label_1294:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rdx*8]
	lea	rdi, [rdi]
	add	rcx, qword ptr [r8 + 0x18]
.label_1298:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	lea	rcx, [rcx + rcx*2]
	mov	qword ptr [rsp + 0x30], rcx
	mov	rsp, rsp
	mov	r14, qword ptr [rax + rbp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	add	r14, rbx
	mov	rbp, rbp
	sub	r14, qword ptr [rax + rbp - 8]
	mov	rbp, rbp
	lea	rsi, [r14 - 1]
	lea	rdi, [rdi]
	mov	edx, dword ptr [r13 + 0xa0]
	nop	
	mov	rdi, r13
	call	re_string_context_at
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	r8, qword ptr [rcx + r14*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	mov	esi, 0
	mov	rsp, rsp
	je	.label_1303
	mov	rsi, qword ptr [rcx + 0x10]
.label_1303:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	lea	rdx, [rcx + rdx*8]
	test	r8, r8
	lea	rbx, [rsp + 0x48]
	mov	rdi, rbx
	je	.label_1308
	mov	ebx, eax
	nop	
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	mov	rsi, qword ptr [r8 + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rdx
	nop	
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1300
	lea	rdi, [rsp + 0x64]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	nop	
	lea	rdx, [rsp + 0x48]
	nop	
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r14*8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + r14*8], 0
	mov	rbp, rbp
	jne	.label_1293
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_1297
.label_1293:
	mov	r14, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_1295
.label_1308:
	mov	qword ptr [rsp + 0x30], rsi
	mov	rbp, rbp
	lea	rdi, [rsp + 0x64]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	nop	
	mov	qword ptr [rsp + 0x28], rdx
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	r8, rbx
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	nop	
	mov	r14, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 8]
	mov	rsp, rsp
	jne	.label_1295
	mov	eax, dword ptr [rsp + 0x64]
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1297
	nop	dword ptr [rax]
.label_1295:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1296
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x40]
	nop	
	mov	rax, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1296
	mov	rdi, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	r14, r8
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	check_subexp_matching_top
	mov	rdx, rbx
	mov	rcx, r14
	mov	dword ptr [rsp + 0x64], eax
	nop	
	test	eax, eax
	jne	.label_1297
	mov	rdi, r13
	mov	r14, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	mov	rsp, rsp
	call	transit_state_bkref
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1297
	nop	dword ptr [rax]
.label_1296:
	inc	r12
	add	rbp, 0x28
	nop	
	cmp	r12, qword ptr [r13 + 0xc8]
	lea	rdi, [rdi]
	jl	.label_1301
	nop	dword ptr [rax + rax]
.label_1302:
	mov	rsp, rsp
	inc	r15
	cmp	r15, qword ptr [r14 + 8]
	nop	
	jl	.label_1306
.label_1304:
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_1297
.label_1300:
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	free
.label_1297:
	mov	eax, dword ptr [rsp + 0x64]
	add	rsp, 0x68
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412fa0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	rbx
	lea	rdi, [rdi]
	mov	ecx, esi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1310
	movsxd	rax, ecx
	mov	rcx, qword ptr [rbx + 0x58]
	lea	rsi, [rsi]
	add	rsi, rsi
	mov	rbp, rbp
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1310
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0xb8]
	test	rdi, rdi
	je	.label_1314
	mov	rax, qword ptr [rbx + 0x40]
	lea	rdi, [rdi]
	lea	rsi, [rax*8 + 8]
	call	realloc
	lea	rsi, [rsi]
	mov	rcx, rax
	test	rcx, rcx
	nop	
	mov	eax, 0xc
	mov	rbp, rbp
	je	.label_1310
	mov	rbp, rbp
	mov	qword ptr [rbx + 0xb8], rcx
.label_1314:
	cmp	byte ptr [rbx + 0x88], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx + 0x90]
	je	.label_1315
	mov	rdi, rbx
	nop	
	cmp	eax, 2
	jl	.label_1313
	call	build_wcs_upper_buffer
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1311
	jmp	.label_1310
.label_1315:
	cmp	eax, 2
	jl	.label_1312
	mov	rdi, rbx
	call	build_wcs_buffer
	mov	rsp, rsp
	jmp	.label_1311
.label_1313:
	call	build_upper_buffer
	jmp	.label_1311
.label_1312:
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x78], 0
	nop	
	je	.label_1311
	mov	rdi, rbx
	nop	
	call	re_string_translate_buffer
.label_1311:
	xor	eax, eax
.label_1310:
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4130a0

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rsp, rsp
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_1316
.label_1320:
	nop	
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 8]
	movzx	r12d, byte ptr [rcx + rax]
.label_1321:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_1317
	lea	rdi, [rdi]
	mov	r13, qword ptr [r14 + 0x60]
	mov	rsp, rsp
	test	r13, r13
	mov	rbp, rbp
	jne	.label_1319
	nop	
	mov	rdi, qword ptr [rbx + 0x98]
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	call	build_trtable
	lea	rdi, [rdi]
	test	al, al
	jne	.label_1321
	mov	dword ptr [r15], 0xc
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1318
.label_1317:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r12*8]
.label_1318:
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	ret	
.label_1316:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rsp, rsp
	call	transit_state_mb
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	test	ecx, ecx
	je	.label_1320
	jmp	.label_1318
.label_1319:
	mov	rsi, qword ptr [rbx + 0x48]
	nop	
	dec	rsi
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbx + 0xa0]
	mov	rbp, rbp
	mov	rdi, rbx
	call	re_string_context_at
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	shl	rax, 8
	mov	rbp, rbp
	or	rax, r12
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + rax*8]
	lea	rsi, [rsi]
	jmp	.label_1318
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4131b0

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r13 + 0x48]
	lea	rdi, [rdi]
	mov	r12, qword ptr [r13 + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1329
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1326
.label_1329:
	cmp	qword ptr [rax + r14*8], 0
	lea	rsi, [rsi]
	je	.label_1324
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r14*8]
	mov	rdx, qword ptr [rax + 0x50]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1328
	mov	rbp, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbp
	mov	rsp, rsp
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	je	.label_1322
	xor	eax, eax
	jmp	.label_1323
.label_1324:
	nop	
	mov	qword ptr [rax + r14*8], rbx
	mov	rbp, rbp
	jmp	.label_1326
.label_1328:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	xor	ebp, ebp
.label_1322:
	mov	rsi, qword ptr [r13 + 0x48]
	dec	rsi
	nop	
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	lea	rdi, [rdi]
	call	re_string_context_at
	lea	rdi, [rdi]
	lea	rdx, [rsp]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r14*8], rbx
	test	rbp, rbp
	je	.label_1326
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	call	free
.label_1326:
	test	rbx, rbx
	je	.label_1325
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1327
	lea	rbp, [rbx + 8]
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rdx, r14
	call	check_subexp_matching_top
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	jne	.label_1323
	mov	rbp, rbp
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1323
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsi, rbp
	mov	rsp, rsp
	call	transit_state_bkref
	mov	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [r15], ecx
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_1323
	mov	rax, qword ptr [r13 + 0xb8]
	nop	
	mov	rax, qword ptr [rax + r14*8]
	lea	rdi, [rdi]
	jmp	.label_1323
.label_1325:
	mov	rsp, rsp
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_1323
.label_1327:
	nop	
	mov	rax, rbx
.label_1323:
	add	rsp, 0x18
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x413370

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	r14
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rsi
	nop	
	mov	r14, rdi
.label_1332:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0xc0]
	nop	
.label_1331:
	lea	rsi, [rsi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	mov	eax, 0
	jge	.label_1330
	mov	rbp, rbp
	inc	qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rcx, [rcx + 1]
	nop	
	je	.label_1331
	mov	rsp, rsp
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	merge_state_with_log
	test	rax, rax
	jne	.label_1330
	mov	ecx, dword ptr [r14]
	nop	
	test	ecx, ecx
	je	.label_1332
.label_1330:
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4133f0

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	mov	rsp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	nop	
	mov	r14, rdx
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	mov	r12, qword ptr [rbx + 0xf0]
	cmp	qword ptr [rbx + 0xe8], r12
	nop	
	je	.label_1333
.label_1334:
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 0x30
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rcx, qword ptr [rbx + 0xe8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0xf8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rcx + rax*8]
	nop	
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1335
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0xe8], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rax], r14
	nop	
	xor	eax, eax
.label_1335:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
.label_1333:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0xf8]
	mov	rsp, rsp
	mov	rsi, r12
	mov	rbp, rbp
	shl	rsi, 4
	mov	rsp, rsp
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1335
	nop	
	add	r12, r12
	mov	qword ptr [rbx + 0xf8], rcx
	nop	
	mov	qword ptr [rbx + 0xf0], r12
	jmp	.label_1334
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413500

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x40], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rbx + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, rdx
	lea	rsi, [rsi]
	call	search_cur_bkref_entry
	mov	rbp, rbx
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_1351
	lea	rcx, [rax + rax*4]
	shl	rcx, 3
	add	rcx, qword ptr [rbp + 0xd8]
	nop	dword ptr [rax]
.label_1339:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	cmp	qword ptr [rcx], rdx
	je	.label_1338
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + 0x20], 0
	mov	rsp, rsp
	lea	rcx, [rcx + 0x28]
	lea	rdi, [rdi]
	jne	.label_1339
.label_1351:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + 0xe8], 0
	nop	
	jle	.label_1338
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x50]
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	jmp	.label_1342
.label_1345:
	mov	rbp, rbp
	mov	r13, r15
	nop	
	jmp	.label_1350
	nop	dword ptr [rax + rax]
.label_1342:
	mov	rax, qword ptr [rbp + 0xf8]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	cmp	qword ptr [rcx + rax], rdx
	mov	rbp, rbp
	jne	.label_1336
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbx]
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x20], 0
	jle	.label_1343
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	xor	r14d, r14d
	mov	rbp, rbp
	jmp	.label_1348
.label_1343:
	mov	r8, qword ptr [rsp + 0x40]
	mov	r13, r15
	xor	r14d, r14d
	jmp	.label_1350
.label_1352:
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rbp + 0x58]
	lea	rdi, [rdi]
	jg	.label_1345
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r8
	nop	
	mov	rdi, rbp
	nop	
	call	clean_state_log_if_needed
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1338
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r13
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1341
	nop	
.label_1348:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rax + r14*8]
	mov	rbp, rbp
	mov	r13, qword ptr [rdx + 8]
	mov	r12, r13
	mov	rbp, rbp
	sub	r12, r15
	nop	
	jle	.label_1346
	lea	rsi, [rsi]
	lea	rsi, [r12 + r8]
	cmp	rsi, qword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	jg	.label_1352
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x30], r13
.label_1341:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rax + r8]
	nop	
	lea	rsi, [rax + r15]
	mov	r13, r8
	nop	
	mov	rdx, r12
	call	memcmp
	nop	
	mov	r8, r13
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x30]
	nop	
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	jne	.label_1340
.label_1346:
	mov	rsp, rsp
	mov	r15, r8
	mov	rdi, rbp
	nop	
	mov	rsi, rbx
	nop	
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r8, qword ptr [rsp + 0x40]
	nop	
	call	get_subexp_sub
	cmp	eax, 1
	lea	rdi, [rdi]
	ja	.label_1338
	lea	rsi, [rsi]
	mov	r8, r15
	add	r8, r12
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 8]
	nop	
	mov	qword ptr [rsp + 0x48], rax
	inc	r14
	cmp	r14, qword ptr [rbx + 0x20]
	mov	r15, r13
	jl	.label_1348
	lea	rdi, [rdi]
	jmp	.label_1350
.label_1340:
	mov	r13, r15
	nop	
.label_1350:
	mov	rsp, rsp
	mov	rcx, r13
	lea	rsi, [rsi]
	cmp	r14, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	jl	.label_1336
	test	r14, r14
	mov	rsp, rsp
	setg	al
	lea	rdi, [rdi]
	movzx	r13d, al
	lea	rdi, [rdi]
	add	r13, rcx
	cmp	r13, qword ptr [rsp + 0x40]
	jg	.label_1336
	mov	rsp, rsp
	jmp	.label_1347
.label_1337:
	cmp	r8, qword ptr [rbp + 0x58]
	mov	rsp, rsp
	jge	.label_1336
	lea	esi, [r8 + 1]
	lea	rsi, [rsi]
	mov	r14, r8
	mov	rbp, rbp
	mov	rdi, rbp
	call	extend_buffers
	test	eax, eax
	nop	
	jne	.label_1338
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rsp, rsp
	mov	r8, r14
	jmp	.label_1353
	nop	dword ptr [rax + rax]
.label_1347:
	cmp	r13, qword ptr [rbx]
	jle	.label_1349
	cmp	r8, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	jge	.label_1337
.label_1353:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + r13 - 1]
	movzx	ecx, byte ptr [rcx + r8]
	cmp	ecx, eax
	jne	.label_1336
	inc	r8
.label_1349:
	lea	rdi, [rdi]
	mov	r14, rbx
	nop	
	mov	rax, qword ptr [rbp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + r13*8]
	test	rsi, rsi
	je	.label_1344
	mov	r15, r8
	mov	rsp, rsp
	add	rsi, 8
	nop	
	mov	ecx, 9
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	find_subexp_node
	mov	rbp, rbp
	mov	rbx, rax
	cmp	rbx, -1
	mov	rsp, rsp
	je	.label_1354
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x10], 0
	lea	rsi, [rsi]
	mov	rdi, rbp
	jne	.label_1355
	mov	rbp, rbp
	mov	rsi, r13
	nop	
	sub	rsi, qword ptr [r14]
	inc	rsi
	mov	rbp, rdi
	mov	edi, 0x18
	lea	rsi, [rsi]
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	rsp, rsp
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_1338
.label_1355:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14 + 8]
	mov	dword ptr [rsp], 9
	mov	rbp, rdi
	mov	r8, rbx
	mov	r9, r13
	call	check_arrival
	cmp	eax, 1
	mov	r8, r15
	lea	rsi, [rsi]
	je	.label_1344
	mov	r15, r8
	test	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	jne	.label_1338
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r13
	mov	rbx, rdi
	mov	rsp, rsp
	call	match_ctx_add_sublast
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1338
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	call	get_subexp_sub
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rbp, rbp
	cmp	eax, 1
	lea	rsi, [rsi]
	ja	.label_1338
	mov	r14, rcx
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, rbx
.label_1354:
	nop	
	mov	r8, r15
.label_1344:
	nop	
	cmp	r13, qword ptr [rsp + 0x40]
	lea	r13, [r13 + 1]
	mov	rbx, r14
	nop	
	jl	.label_1347
	nop	word ptr cs:[rax + rax]
.label_1336:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x28], rcx
	xor	eax, eax
	nop	
	cmp	rcx, qword ptr [rbp + 0xe8]
	mov	rsp, rsp
	jl	.label_1342
.label_1338:
	add	rsp, 0x58
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413a00

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r15, rdx
	mov	rbp, rbp
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1356
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 8]
	mov	rsp, rsp
	test	r15, r15
	je	.label_1357
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_1357
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1362
	lea	rsi, [rsi]
	add	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [r14], rdi
	mov	rsp, rsp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1368
	lea	rsi, [rsi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 8], 0
	mov	rbp, rbp
	mov	ebx, 0
	mov	ebp, 0
	jle	.label_1359
	xor	edx, edx
	xor	esi, esi
	xor	r13d, r13d
.label_1360:
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rsi
	nop	dword ptr [rax]
.label_1365:
	cmp	rbp, qword ptr [r15 + 8]
	jge	.label_1359
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbp*8]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jle	.label_1366
	mov	rsp, rsp
	inc	rbp
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rbx*8], rax
	lea	rdi, [rdi]
	inc	rbx
	cmp	r13, qword ptr [r12 + 8]
	mov	rsp, rsp
	jl	.label_1365
	jmp	.label_1359
.label_1366:
	sete	sil
	inc	r13
	mov	rdx, qword ptr [r14 + 0x10]
	mov	qword ptr [rdx + rbx*8], rcx
	lea	rdx, [rbx + 1]
	mov	rsp, rsp
	movzx	esi, sil
	add	rsi, rbp
	lea	rdi, [rdi]
	cmp	r13, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	jl	.label_1360
	cmp	rcx, rax
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	inc	rbx
	movzx	eax, al
	add	rbp, rax
.label_1359:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 8]
	mov	rsp, rsp
	sub	rdx, r13
	jle	.label_1361
	lea	rdi, [rdi]
	lea	rdi, [rbx*8]
	lea	rsi, [rsi]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [r13*8]
	mov	rbp, rbp
	add	rsi, qword ptr [r12 + 0x10]
	shl	rdx, 3
	lea	rdi, [rdi]
	call	memcpy
	sub	rbx, r13
	add	rbx, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_1363
.label_1362:
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 8]
.label_1357:
	test	rax, rax
	jle	.label_1356
	mov	rdi, r14
	mov	rsi, r12
	lea	rdi, [rdi]
	jmp	.label_1367
.label_1356:
	nop	
	test	r15, r15
	mov	rbp, rbp
	je	.label_1358
	cmp	qword ptr [r15 + 8], 0
	jle	.label_1358
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
.label_1367:
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_1358:
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	nop	
	mov	qword ptr [r14 + 0x10], 0
	jmp	.label_1364
.label_1361:
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 8]
	nop	
	sub	rdx, rbp
	jle	.label_1363
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r15 + 0x10]
	nop	
	shl	rdx, 3
	call	memcpy
	lea	rsi, [rsi]
	sub	rbx, rbp
	add	rbx, qword ptr [r15 + 8]
.label_1363:
	mov	qword ptr [r14 + 8], rbx
.label_1364:
	xor	eax, eax
.label_1368:
	nop	
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413c70

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	nop	
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	mov	rbp, rbp
	test	r8, r8
	mov	rbp, rbp
	jle	.label_1369
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr cs:[rax + rax]
.label_1371:
	lea	rdi, [rdi]
	lea	r10, [rax + r11]
	lea	rdi, [rdi]
	mov	rdx, r10
	mov	rbp, rbp
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	add	rdx, r10
	sar	rdx, 1
	mov	rbp, rbp
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	nop	
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	lea	rdi, [rdi]
	cmp	rax, r11
	lea	rdi, [rdi]
	jl	.label_1371
.label_1369:
	mov	rbp, rbp
	cmp	rax, r8
	lea	rdi, [rdi]
	jge	.label_1370
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
	lea	rdx, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_1372
.label_1370:
	mov	rax, -1
.label_1372:
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413d10

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	nop	
	mov	rax, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r15, qword ptr [rbx + 0xc0]
	cmp	rax, r14
	jg	.label_1373
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rbp, rbp
	jl	.label_1374
.label_1373:
	nop	
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, r14
	jg	.label_1375
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	jge	.label_1375
.label_1374:
	lea	esi, [r14 + 1]
	nop	
	mov	rdi, rbx
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_1376
.label_1375:
	mov	rsp, rsp
	xor	ebp, ebp
	cmp	r15, r14
	lea	rsi, [rsi]
	jge	.label_1376
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	mov	rdx, r14
	nop	
	sub	rdx, r15
	lea	rsi, [rsi]
	shl	rdx, 3
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0xc0], r14
.label_1376:
	mov	eax, ebp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413dd0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, r8
	mov	rbp, rbp
	mov	r13, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r15, rsi
	mov	r14, rdi
	lea	rsi, [rbx + 0x10]
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 8
	mov	r8, r13
	mov	rsp, rsp
	mov	r9, r12
	call	check_arrival
	test	eax, eax
	jne	.label_1377
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, r12
	call	match_ctx_add_entry
	test	eax, eax
	jne	.label_1377
	add	r12, qword ptr [rbx + 8]
	sub	r12, qword ptr [r15]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	jmp	clean_state_log_if_needed
.label_1377:
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413e90

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 8], 0
	lea	rsi, [rsi]
	jle	.label_1378
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsi + 0x10]
	mov	r9, qword ptr [rdi]
	lea	rsi, [rsi]
	xor	r11d, r11d
	nop	dword ptr [rax]
.label_1380:
	mov	rsp, rsp
	mov	rax, qword ptr [r8 + r11*8]
	lea	rdi, [rdi]
	mov	r10, rax
	lea	rsi, [rsi]
	shl	r10, 4
	mov	rbp, rbp
	movzx	edi, byte ptr [r9 + r10 + 8]
	mov	rsp, rsp
	cmp	edi, ecx
	jne	.label_1379
	cmp	qword ptr [r9 + r10], rdx
	je	.label_1381
.label_1379:
	mov	rsp, rsp
	inc	r11
	lea	rdi, [rdi]
	cmp	r11, qword ptr [rsi + 8]
	nop	
	jl	.label_1380
.label_1378:
	mov	rsp, rsp
	mov	rax, -1
.label_1381:
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413f00

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	nop	
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x38], r9
	mov	qword ptr [rsp + 8], r8
	mov	r13, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	rax, qword ptr [rdi + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, r12
	mov	rsp, rsp
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsi + 8]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	mov	rbp, rbp
	cmp	rbp, rcx
	nop	
	jle	.label_1382
.label_1389:
	mov	qword ptr [rsp + 0x20], rsi
	mov	r15d, dword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 0x10]
	nop	
	test	r14, r14
	cmove	r14, r13
	mov	rcx, qword ptr [rdi + 0x48]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rdi
	call	re_string_context_at
	lea	rsi, [rsi]
	cmp	r14, r13
	jne	.label_1397
	mov	rbp, rbp
	mov	r13d, eax
	mov	ebp, r15d
	lea	rdi, [rsp + 0x50]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	re_node_set_init_1
	nop	
	mov	r15d, eax
	mov	dword ptr [rsp + 0x74], r15d
	lea	rdi, [rdi]
	test	r15d, r15d
	jne	.label_1386
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x50]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r15d, ebp
	nop	
	mov	ecx, r15d
	lea	rdi, [rdi]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rbp, rbp
	je	.label_1391
	lea	rsi, [rsi]
	jmp	.label_1383
.label_1397:
	mov	rcx, qword ptr [rbx + 0xb8]
	nop	
	mov	rbp, qword ptr [rcx + r14*8]
	nop	
	test	rbp, rbp
	mov	rcx, rbx
	mov	rsp, rsp
	je	.label_1395
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	r12d, r15d
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_1399
	lea	rsi, [rsi]
	mov	r13d, eax
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], 0
	nop	
	jmp	.label_1401
.label_1395:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x60], 0
	xor	ebp, ebp
	jmp	.label_1388
.label_1399:
	mov	r13d, eax
	mov	rsp, rsp
	lea	rsi, [rbp + 8]
	lea	rdi, [rsp + 0x50]
	nop	
	call	re_node_set_init_copy
	mov	r15d, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x74], r15d
	test	r15d, r15d
	jne	.label_1386
.label_1401:
	lea	rsi, [rsi]
	test	byte ptr [rbp + 0x68], 0x40
	mov	r15d, r12d
	mov	rcx, rbx
	lea	rdi, [rdi]
	je	.label_1388
.label_1391:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_1400
	lea	rsi, [rsp + 0x50]
	mov	rbx, rcx
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8d, r15d
	call	expand_bkref_cache
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x74], eax
	nop	
	test	eax, eax
	jne	.label_1383
.label_1400:
	mov	rbp, rbp
	mov	rbx, rcx
	lea	rdi, [rsp + 0x74]
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	ecx, r13d
	nop	
	call	re_acquire_state_context
	nop	
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_1396
	mov	eax, dword ptr [rsp + 0x74]
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1383
.label_1396:
	mov	rsp, rsp
	mov	rcx, rbx
	nop	
	mov	rax, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r14*8], rbp
.label_1388:
	cmp	r14, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	jge	.label_1385
	inc	r14
	mov	rbp, rbp
	lea	rbx, [rsp + 0x50]
	lea	rsi, [rsi]
	mov	r12, r14
	xor	r13d, r13d
.label_1390:
	mov	rsp, rsp
	lea	r14, [r12 - 1]
	movsxd	rax, dword ptr [rcx + 0xe0]
	cmp	r13, rax
	jg	.label_1385
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rcx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + r12*8]
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_1392
	add	rsi, 8
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	re_node_set_merge
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1383
.label_1392:
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1387
	add	rbp, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbp
	nop	
	mov	rcx, rbx
	mov	rsp, rsp
	call	check_arrival_add_next_nodes
	mov	dword ptr [rsp + 0x74], eax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1383
.label_1387:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r14
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	mov	r14, rbx
	je	.label_1394
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rsi, r14
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rdx, rbp
	mov	ebx, dword ptr [rsp + 0xb0]
	nop	
	mov	ecx, ebx
	lea	rdi, [rdi]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], eax
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1383
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	r8d, ebx
	call	expand_bkref_cache
	nop	
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1383
.label_1394:
	mov	r15, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_string_context_at
	lea	rdi, [rsp + 0x74]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	ecx, eax
	mov	rbp, rbp
	call	re_acquire_state_context
	nop	
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1393
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x74]
	test	eax, eax
	jne	.label_1383
.label_1393:
	mov	rbx, r14
	nop	
	inc	r13
	test	rbp, rbp
	mov	rbp, rbp
	mov	rcx, r15
	nop	
	mov	rax, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r12*8], rbp
	lea	rdi, [rdi]
	mov	eax, 0
	cmovne	r13, rax
	lea	rdi, [rdi]
	cmp	r12, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	lea	r12, [r12 + 1]
	nop	
	jl	.label_1390
	mov	rbx, rcx
	dec	r12
	mov	r14, r12
	jmp	.label_1398
.label_1385:
	mov	rbx, rcx
.label_1398:
	mov	r15, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], r14
	mov	qword ptr [rbx + 0xb8], rbp
	mov	qword ptr [rbx + 0x48], r15
	je	.label_1384
	add	rdi, 8
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_contains
	xor	r15d, r15d
	test	rax, rax
	jne	.label_1386
.label_1384:
	mov	rbp, rbp
	mov	r15d, 1
	lea	rsi, [rsi]
	jmp	.label_1386
.label_1383:
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	r15d, dword ptr [rsp + 0x74]
.label_1386:
	mov	rsp, rsp
	mov	eax, r15d
	lea	rdi, [rdi]
	add	rsp, 0x78
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1382:
	movabs	rdx, 0x7fffffffffffffff
	nop	
	sub	rdx, rbp
	mov	r15d, 0xc
	lea	rdi, [rdi]
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jle	.label_1386
	mov	rcx, qword ptr [rsp + 0x38]
	lea	r14, [rax + rcx + 1]
	lea	rbx, [r14 + rbp]
	mov	rax, rbx
	shr	rax, 0x3d
	jne	.label_1386
	nop	
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x20], rsi
	mov	rsp, rsp
	lea	rsi, [rbx*8]
	mov	rbp, rbp
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	je	.label_1386
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0x10], rax
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 8], rbx
	lea	rdi, [rax + rbp*8]
	shl	r14, 3
	xor	esi, esi
	mov	rdx, r14
	mov	rsp, rsp
	call	memset
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_1389
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4144b0

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	r15
	push	r14
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	mov	r12, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x20], r12
	je	.label_1402
.label_1404:
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 0x28
	lea	rsi, [rsi]
	call	rpl_calloc
	test	rax, rax
	je	.label_1403
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rdx, qword ptr [rbx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	qword ptr [rax], r15
	nop	
	mov	qword ptr [rax + 8], r14
	inc	qword ptr [rbx + 0x20]
.label_1403:
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_1402:
	lea	rax, [r12 + r12]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rsi, [rax*8 + 8]
	call	realloc
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	test	rcx, rcx
	je	.label_1403
	mov	rbp, rbp
	lea	rax, [r12 + r12 + 1]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [rbx + 0x18], rax
	jmp	.label_1404
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414570

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0xd0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_1408
	mov	rdi, qword ptr [rbx + 0xd8]
	lea	rsi, [rsi]
	shl	rcx, 4
	mov	rbp, rbp
	lea	rsi, [rcx + rcx*4]
	call	realloc
	test	rax, rax
	je	.label_1407
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0xd8], rax
	mov	rcx, qword ptr [rbx + 0xc8]
	mov	rbp, qword ptr [rbx + 0xd0]
	lea	rcx, [rcx + rcx*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	nop	
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	add	rbp, rbp
	mov	qword ptr [rbx + 0xd0], rbp
	mov	rax, qword ptr [rbx + 0xc8]
.label_1408:
	test	rax, rax
	jle	.label_1405
	lea	rdi, [rdi]
	dec	rax
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rax*8 + 8], r12
	nop	
	jne	.label_1405
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax*8 + 0x20], 1
.label_1405:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r13
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 8], r12
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rdi, [rdi]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x10], r15
	mov	rax, qword ptr [rbx + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0xd8]
	mov	rsp, rsp
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x18], r14
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	sub	r14, r15
	lea	rdi, [rdi]
	mov	cx, 0xffff
	mov	rbp, rbp
	cmovne	cx, ax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0xc8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0xd8]
	mov	rsp, rsp
	lea	rdx, [rdx + rdx*4]
	mov	rbp, rbp
	mov	word ptr [rsi + rdx*8 + 0x22], cx
	nop	
	mov	rcx, qword ptr [rbx + 0xc8]
	lea	rdx, [rcx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0xc8], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0xd8]
	lea	rcx, [rcx + rcx*4]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rcx*8 + 0x20], 0
	movsxd	rcx, dword ptr [rbx + 0xe0]
	cmp	rcx, r14
	nop	
	jge	.label_1406
	mov	rsp, rsp
	mov	dword ptr [rbx + 0xe0], r14d
.label_1406:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1407:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0xd8]
	lea	rsi, [rsi]
	call	free
	mov	eax, 0xc
	jmp	.label_1406
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414770

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r14d, ecx
	mov	r13, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rbp
	mov	rbx, rdi
	mov	rsi, qword ptr [rbp + 8]
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsi]
	call	re_node_set_alloc
	mov	r12d, eax
	nop	
	test	r12d, r12d
	jne	.label_1410
	mov	r15d, r14d
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1409
	mov	rbp, rbp
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1412:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x10]
	mov	r12, qword ptr [rax + r14*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x30]
	lea	rcx, [r12 + r12*2]
	nop	
	lea	rbp, [rax + rcx*8]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rsp, rsp
	mov	ecx, r15d
	lea	rdi, [rdi]
	call	find_subexp_node
	cmp	rax, -1
	je	.label_1413
	mov	rdi, rbx
	nop	
	lea	rsi, [rsp + 0x10]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8d, r15d
	mov	rsp, rsp
	call	check_arrival_expand_ecl_sub
	lea	rsi, [rsi]
	jmp	.label_1411
	nop	dword ptr [rax]
.label_1413:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_merge
.label_1411:
	lea	rdi, [rdi]
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_1414
	inc	r14
	mov	rbp, qword ptr [rsp + 8]
	cmp	r14, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	jl	.label_1412
.label_1409:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbp], xmm0
	mov	rsp, rsp
	xor	r12d, r12d
	jmp	.label_1410
.label_1414:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1410:
	mov	eax, r12d
	add	rsp, 0x28
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4148d0

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x68
	mov	dword ptr [rsp + 0x18], r8d
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x40], rdx
	nop	
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x38], rdi
	nop	
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], r14
	mov	rsi, rdx
	call	search_cur_bkref_entry
	lea	rdi, [rdi]
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_1420
	nop	
	lea	rcx, [rax + rax*4]
	nop	
	mov	qword ptr [rsp + 8], rcx
	lea	r12, [rsp + 0x48]
.label_1421:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x34], eax
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rsi, [rsi]
	lea	r15, [rax + rcx*8 + 0x20]
	nop	word ptr cs:[rax + rax]
.label_1419:
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 - 0x20]
	mov	rdi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_1417
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r15 - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	add	rbp, rax
	mov	rsp, rsp
	sub	rbp, qword ptr [r15 - 0x10]
	mov	rsp, rsp
	cmp	rbp, rax
	jne	.label_1429
	mov	rbp, rbp
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8 + 0x10]
	mov	rbx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, rbx
	mov	rsp, rsp
	call	re_node_set_contains
	mov	ecx, 4
	mov	rbp, rbp
	test	rax, rax
	je	.label_1416
	lea	rsi, [rsi]
	mov	rbx, r14
	lea	rsi, [rsi]
	jmp	.label_1423
	nop	
.label_1429:
	mov	rbp, rbp
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xb8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1415
	add	rbx, 8
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	call	re_node_set_contains
	nop	
	mov	ecx, 4
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1424
	mov	r14, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jmp	.label_1418
.label_1416:
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_init_1
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	r14d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x64], r14d
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	call	check_arrival_expand_ecl
	nop	
	mov	dword ptr [rsp + 0x1c], eax
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	call	re_node_set_merge
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	lea	rdi, [rdi]
	mov	edx, r14d
	mov	r14d, dword ptr [rsp + 0x1c]
	mov	eax, ebp
	mov	rbp, rbp
	or	eax, r14d
	mov	rsp, rsp
	mov	ecx, 2
	mov	rsp, rsp
	or	eax, edx
	jne	.label_1428
.label_1426:
	mov	r14, rbx
	lea	rdi, [rdi]
	jmp	.label_1423
.label_1415:
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r14
	call	re_node_set_init_1
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	je	.label_1427
	mov	rbp, rbp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x34], eax
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1418
.label_1424:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsi, rbx
	mov	rbp, rbp
	call	re_node_set_init_copy
	mov	ebx, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x64], ebx
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r14
	nop	
	call	re_node_set_insert
	test	ebx, ebx
	mov	rbp, rbp
	jne	.label_1422
	xor	al, 1
	mov	rsp, rsp
	jne	.label_1422
.label_1427:
	lea	rdi, [rsp + 0x64]
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r12
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	nop	
	cmp	qword ptr [rax + rbp*8], 0
	sete	al
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x64]
	test	edx, edx
	setne	cl
	and	cl, al
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x34]
	lea	rsi, [rsi]
	cmovne	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x34], eax
.label_1418:
	mov	r13, qword ptr [rsp + 0x28]
.label_1423:
	test	ecx, ecx
	je	.label_1417
	cmp	ecx, 4
	nop	
	jne	.label_1430
.label_1417:
	lea	rdi, [rdi]
	cmp	byte ptr [r15], 0
	lea	rdi, [rdi]
	lea	r15, [r15 + 0x28]
	lea	rsi, [rsi]
	jne	.label_1419
	jmp	.label_1420
.label_1428:
	test	r14d, r14d
	cmovne	ebp, r14d
	lea	rsi, [rsi]
	test	edx, edx
	lea	rdi, [rdi]
	cmovne	ebp, edx
	mov	dword ptr [rsp + 0x64], ebp
	mov	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x34], ebp
	lea	rdi, [rdi]
	jmp	.label_1426
.label_1422:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x64]
	test	ecx, ecx
	mov	rsp, rsp
	mov	eax, 0xc
	cmove	ecx, eax
	mov	dword ptr [rsp + 0x34], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x64], ecx
	mov	rsp, rsp
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1418
	nop	dword ptr [rax + rax]
.label_1430:
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 8]
	mov	eax, dword ptr [rsp + 0x34]
	je	.label_1421
	jmp	.label_1425
.label_1420:
	mov	rsp, rsp
	xor	eax, eax
.label_1425:
	add	rsp, 0x68
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x414c90

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x28], rcx
	nop	
	mov	rbp, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rbp
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], r12
	mov	r14, qword ptr [r12 + 0x98]
	mov	dword ptr [rsp + 0x54], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0x40], 0
	nop	
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1435
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1436:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x10]
	nop	
	mov	r13, qword ptr [rax + r15*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	rbx, r13
	lea	rdi, [rdi]
	shl	rbx, 4
	test	byte ptr [rax + rbx + 0xa], 0x10
	mov	rbp, rbp
	je	.label_1431
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rbp, rbp
	mov	rbp, rcx
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1432
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + r13*8]
	movsxd	rbx, eax
	nop	
	add	rbx, rbp
	nop	
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], 0
	test	rsi, rsi
	lea	rsi, [rsi]
	lea	rbp, [rsp + 0x30]
	je	.label_1440
	add	rsi, 8
	mov	rdi, rbp
	mov	r12, rcx
	lea	rsi, [rsi]
	call	re_node_set_merge
	nop	
	mov	rcx, r12
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x54], eax
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1437
.label_1440:
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	call	re_node_set_insert
	test	al, al
	nop	
	je	.label_1434
	mov	rbp, rbp
	lea	rdi, [rsp + 0x54]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	re_acquire_state
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbp, rbp
	cmp	qword ptr [rax + rbx*8], 0
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_1438
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x54]
	test	eax, eax
	mov	rsp, rsp
	je	.label_1438
	jmp	.label_1437
	nop	
.label_1432:
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jne	.label_1438
	nop	word ptr cs:[rax + rax]
.label_1431:
	add	rbx, qword ptr [r14]
	mov	rdi, r12
	nop	
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rbx, rcx
	mov	rsp, rsp
	call	check_node_accept
	lea	rdi, [rdi]
	mov	rcx, rbx
	test	al, al
	je	.label_1439
.label_1438:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r13*8]
	nop	
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_1434
.label_1439:
	inc	r15
	mov	rsp, rsp
	cmp	r15, qword ptr [rbp + 8]
	jl	.label_1436
.label_1435:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	xor	eax, eax
	jmp	.label_1433
.label_1434:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	lea	rsi, [rsi]
	mov	eax, 0xc
	jmp	.label_1433
.label_1437:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x54]
.label_1433:
	add	rsp, 0x58
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414f00

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r15d, r8d
	lea	rdi, [rdi]
	mov	r14, rcx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	rbp, rdi
	nop	
	jmp	.label_1441
	nop	
.label_1443:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	nop	
	mov	rbx, qword ptr [rax]
.label_1441:
	mov	rdi, r12
	mov	rsi, rbx
	mov	rsp, rsp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1444
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
	mov	rcx, rbx
	mov	rbp, rbp
	shl	rcx, 4
	mov	rsp, rsp
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	mov	rbp, rbp
	jne	.label_1446
	nop	
	cmp	qword ptr [rax + rcx], r14
	lea	rdi, [rdi]
	je	.label_1447
.label_1446:
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	mov	rbp, rbp
	test	cl, cl
	je	.label_1442
	mov	rax, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	lea	rbx, [rbx + rbx*2]
	mov	rcx, qword ptr [rax + rbx*8 + 8]
	lea	rdi, [rdi]
	cmp	rcx, 2
	lea	rdi, [rdi]
	je	.label_1445
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_1443
	jmp	.label_1444
	nop	dword ptr [rax]
.label_1445:
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r12
	mov	rcx, r14
	mov	r8d, r15d
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl_sub
	nop	
	test	eax, eax
	je	.label_1443
	jmp	.label_1442
.label_1447:
	cmp	r15d, 9
	mov	rsp, rsp
	jne	.label_1444
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	call	re_node_set_insert
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0xc
	mov	rsp, rsp
	test	cl, cl
	mov	rsp, rsp
	je	.label_1442
.label_1444:
	lea	rsi, [rsi]
	xor	eax, eax
.label_1442:
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415050

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	rbx, rsi
	nop	
	cmp	qword ptr [r12 + 8], 0
	lea	rdi, [rdi]
	je	.label_1453
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, r12
	call	calc_state_hash
	mov	r13, rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	rcx, r13
	and	rcx, qword ptr [rbx + 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	nop	
	jle	.label_1451
	lea	rbp, [rax + rcx*8]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1450:
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + r15*8]
	cmp	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	jne	.label_1448
	lea	rdi, [rdi]
	lea	rdi, [rbx + 8]
	nop	
	mov	rsi, r12
	nop	
	call	re_node_set_compare
	nop	
	test	al, al
	nop	
	jne	.label_1452
.label_1448:
	nop	
	inc	r15
	cmp	r15, qword ptr [rbp]
	jl	.label_1450
.label_1451:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	nop	
	mov	rdx, r13
	lea	rdi, [rdi]
	call	create_ci_newstate
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	test	rbx, rbx
	je	.label_1449
.label_1452:
	mov	rbp, rbp
	mov	rax, rbx
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1453:
	mov	rbp, rbp
	mov	dword ptr [rdi], 0
	jmp	.label_1454
.label_1449:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1454:
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_1452
	nop	
	.section	.text
	.align	16
	#Procedure 0x415150

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	nop	
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	edi, 0x70
	mov	esi, 1
	nop	
	call	rpl_calloc
	mov	r12, rax
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	test	r12, r12
	je	.label_1457
	lea	rsi, [rsi]
	mov	r13, r12
	add	r13, 8
	mov	rdi, r13
	mov	rsi, r14
	lea	rdi, [rdi]
	call	re_node_set_init_copy
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1459
	mov	rdx, rbx
	mov	qword ptr [r12 + 0x50], r13
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 8], 0
	lea	rdi, [rdi]
	jle	.label_1461
	xor	eax, eax
	nop	
.label_1460:
	mov	rbp, rbp
	mov	r8, qword ptr [r15]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, qword ptr [rcx + rax*8]
	shl	rbp, 4
	mov	edi, dword ptr [r8 + rbp + 8]
	mov	esi, edi
	and	esi, 0x3ffff
	cmp	esi, 1
	je	.label_1455
	mov	rbp, rbp
	movzx	esi, dil
	shr	edi, 0x14
	mov	rbp, rbp
	mov	cl, byte ptr [r12 + 0x68]
	mov	bl, cl
	shr	bl, 5
	movzx	ebx, bl
	nop	
	or	ebx, edi
	shl	bl, 5
	and	bl, 0x20
	mov	rsp, rsp
	and	cl, 0xdf
	lea	rsi, [rsi]
	or	cl, bl
	mov	rbp, rbp
	mov	byte ptr [r12 + 0x68], cl
	lea	rdi, [rdi]
	cmp	esi, 0xc
	je	.label_1463
	cmp	esi, 4
	je	.label_1462
	lea	rsi, [rsi]
	cmp	esi, 2
	nop	
	jne	.label_1464
	or	cl, 0x10
	lea	rsi, [rsi]
	mov	byte ptr [r12 + 0x68], cl
	nop	
	jmp	.label_1455
.label_1462:
	or	cl, 0x40
	nop	
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1455
.label_1464:
	lea	rcx, [r8 + rbp + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1455
.label_1463:
	lea	rsi, [rsi]
	or	byte ptr [r12 + 0x68], 0x80
.label_1455:
	lea	rdi, [rdi]
	inc	rax
	nop	
	cmp	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jl	.label_1460
.label_1461:
	mov	rdi, r15
	mov	rsi, r12
	mov	rbp, rbp
	call	register_state
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r12
	mov	rsp, rsp
	jne	.label_1458
.label_1457:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_1459:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	jmp	.label_1456
.label_1458:
	mov	rsp, rsp
	mov	rdi, r12
	call	free_state
.label_1456:
	xor	eax, eax
	jmp	.label_1457
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4152e0

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r12, rcx
	lea	rdi, [rdi]
	mov	r13, rdx
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rsi, [rsi]
	shl	rbp, 4
	lea	rdi, [rdi]
	movzx	r15d, byte ptr [r14 + rbp + 8]
	cmp	r15d, 7
	nop	
	je	.label_1487
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r12
	call	re_string_char_size_at
	mov	rbp, rbp
	mov	esi, eax
	cmp	r15d, 5
	jne	.label_1479
	xor	eax, eax
	mov	rbp, rbp
	cmp	esi, 2
	jl	.label_1467
	test	byte ptr [rbx + 0xd8], 0x40
	lea	rdi, [rdi]
	jne	.label_1486
	mov	rcx, qword ptr [r13 + 8]
	movzx	ecx, byte ptr [rcx + r12]
	cmp	ecx, 0xa
	je	.label_1467
.label_1486:
	cmp	byte ptr [rbx + 0xd8], 0
	lea	rsi, [rsi]
	js	.label_1490
	mov	eax, esi
	jmp	.label_1467
.label_1479:
	mov	rsp, rsp
	cmp	esi, 1
	setg	cl
	nop	
	xor	eax, eax
	nop	
	cmp	r15d, 6
	jne	.label_1467
	test	cl, cl
	je	.label_1467
	mov	rbp, qword ptr [r14 + rbp]
	mov	rsp, rsp
	cmp	qword ptr [rbp + 0x40], 0
	jne	.label_1476
	mov	rbp, rbp
	cmp	qword ptr [rbp + 0x48], 0
	jne	.label_1476
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + 0x28], 0
	lea	rdi, [rdi]
	je	.label_1481
.label_1476:
	mov	rdi, r13
	mov	ebx, esi
	nop	
	mov	rsi, r12
	lea	rdi, [rdi]
	call	re_string_wchar_at
	mov	esi, ebx
	mov	rbp, rbp
	mov	r14d, eax
.label_1481:
	cmp	qword ptr [rbp + 0x28], 0
	jle	.label_1488
	mov	rax, qword ptr [rbp]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1470:
	cmp	r14d, dword ptr [rax + rcx*4]
	je	.label_1465
	inc	rcx
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp + 0x28]
	nop	
	jl	.label_1470
.label_1488:
	mov	r15d, esi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + 0x48], 0
	jle	.label_1473
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1485:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rax + rbx*8]
	nop	
	mov	edi, r14d
	nop	
	call	iswctype
	test	eax, eax
	jne	.label_1471
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, qword ptr [rbp + 0x48]
	nop	
	jl	.label_1485
.label_1473:
	xor	ecx, ecx
	cmp	qword ptr [rbp + 0x40], 0
	mov	rbp, rbp
	mov	esi, r15d
	lea	rdi, [rdi]
	jle	.label_1482
	mov	rax, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1474:
	nop	
	cmp	dword ptr [rax + rdx*4], r14d
	jg	.label_1477
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	r14d, dword ptr [rcx + rdx*4]
	lea	rdi, [rdi]
	jle	.label_1478
.label_1477:
	nop	
	inc	rdx
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp + 0x40]
	mov	rbp, rbp
	jl	.label_1474
	lea	rsi, [rsi]
	jmp	.label_1482
.label_1490:
	mov	rcx, qword ptr [r13 + 8]
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + r12], 0
	lea	rdi, [rdi]
	je	.label_1467
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	jmp	.label_1467
.label_1487:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r13 + 8]
	mov	rbp, rbp
	movzx	edx, byte ptr [rsi + r12]
	xor	eax, eax
	cmp	edx, 0xc2
	jb	.label_1467
	lea	rsi, [rsi]
	lea	rcx, [r12 + 2]
	cmp	rcx, qword ptr [r13 + 0x58]
	jle	.label_1484
	xor	eax, eax
	jmp	.label_1467
.label_1471:
	mov	esi, r15d
.label_1465:
	mov	rbp, rbp
	mov	ecx, esi
.label_1482:
	test	byte ptr [rbp + 0x20], 1
	jne	.label_1493
	mov	rsp, rsp
	mov	eax, ecx
	jmp	.label_1467
.label_1493:
	mov	rbp, rbp
	test	ecx, ecx
	mov	rbp, rbp
	mov	eax, 0
	jg	.label_1467
	mov	rbp, rbp
	test	esi, esi
	nop	
	mov	eax, 1
	cmovg	eax, esi
.label_1467:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1478:
	mov	ecx, esi
	lea	rdi, [rdi]
	jmp	.label_1482
.label_1484:
	mov	rsp, rsp
	mov	cl, byte ptr [r12 + rsi + 1]
	nop	
	movzx	edx, dl
	cmp	edx, 0xdf
	nop	
	ja	.label_1483
	mov	rbp, rbp
	movzx	eax, cl
	cmp	eax, 0xc0
	sbb	edx, edx
	and	edx, 2
	lea	rsi, [rsi]
	test	cl, cl
	mov	rsp, rsp
	mov	eax, 0
	mov	rsp, rsp
	cmovs	eax, edx
	lea	rsi, [rsi]
	jmp	.label_1467
.label_1483:
	lea	rdi, [rdi]
	cmp	edx, 0xef
	ja	.label_1466
	mov	rbp, rbp
	mov	eax, 3
	cmp	edx, 0xe0
	jne	.label_1468
	movzx	ecx, cl
	cmp	ecx, 0xa0
	jae	.label_1468
	nop	
	xor	eax, eax
	jmp	.label_1467
.label_1466:
	lea	rdi, [rdi]
	cmp	edx, 0xf7
	ja	.label_1480
	lea	rsi, [rsi]
	mov	eax, 4
	cmp	edx, 0xf0
	mov	rsp, rsp
	jne	.label_1468
	movzx	ecx, cl
	cmp	ecx, 0x90
	nop	
	jae	.label_1468
	xor	eax, eax
	jmp	.label_1467
.label_1480:
	cmp	edx, 0xfb
	mov	rsp, rsp
	ja	.label_1489
	mov	rsp, rsp
	mov	eax, 5
	lea	rdi, [rdi]
	cmp	edx, 0xf8
	jne	.label_1468
	mov	rsp, rsp
	movzx	ecx, cl
	cmp	ecx, 0x88
	nop	
	jae	.label_1468
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_1467
.label_1489:
	cmp	edx, 0xfd
	ja	.label_1475
	lea	rdi, [rdi]
	mov	eax, 6
	mov	rsp, rsp
	cmp	edx, 0xfc
	jne	.label_1468
	movzx	ecx, cl
	cmp	ecx, 0x84
	jae	.label_1468
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1467
.label_1468:
	mov	ecx, eax
	mov	rbp, rbp
	lea	rdx, [rcx + r12]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r13 + 0x58]
	mov	rbp, rbp
	jle	.label_1492
	xor	eax, eax
	nop	
	jmp	.label_1467
.label_1492:
	nop	
	add	r12, qword ptr [r13 + 8]
	mov	rbp, rbp
	mov	edx, 1
.label_1472:
	nop	
	mov	bl, byte ptr [r12 + rdx]
	mov	rsp, rsp
	test	bl, bl
	lea	rsi, [rsi]
	jns	.label_1491
	movzx	esi, bl
	cmp	esi, 0xbf
	ja	.label_1469
	mov	rsp, rsp
	inc	rdx
	cmp	rdx, rcx
	mov	rsp, rsp
	jl	.label_1472
	jmp	.label_1467
.label_1475:
	xor	eax, eax
	jmp	.label_1467
.label_1491:
	xor	eax, eax
	jmp	.label_1467
.label_1469:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1467
	nop	
	.section	.text
	.align	16
	#Procedure 0x4156c0

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r15, rdi
	nop	
	mov	rax, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rax + r14]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx + 8]
	lea	rdi, [rdi]
	xor	eax, eax
	dec	ecx
	cmp	ecx, 6
	ja	.label_1494
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1495]]
.label_1868:
	movzx	eax, byte ptr [rbx]
	cmp	eax, esi
	nop	
	je	.label_1497
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1494
.label_1869:
	mov	rdi, qword ptr [rbx]
	call	bitset_contain
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_1497
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1494
.label_1871:
	test	sil, sil
	js	.label_1499
.label_1870:
	lea	rsi, [rsi]
	test	sil, sil
	je	.label_1498
	nop	
	movzx	eax, sil
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_1497
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	mov	rsp, rsp
	jne	.label_1497
	xor	eax, eax
	jmp	.label_1494
.label_1498:
	mov	rax, qword ptr [r15 + 0x98]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_1496
.label_1497:
	mov	rsp, rsp
	mov	ecx, dword ptr [rbx + 8]
	mov	ebx, ecx
	lea	rsi, [rsi]
	shr	ebx, 8
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	bx, 0x3ff
	mov	rbp, rbp
	je	.label_1494
	mov	ebp, ecx
	mov	rsp, rsp
	mov	edx, dword ptr [r15 + 0xa0]
	nop	
	mov	rdi, r15
	mov	rsi, r14
	lea	rsi, [rsi]
	call	re_string_context_at
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	and	ecx, 1
	test	bl, 4
	je	.label_1500
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	jne	.label_1500
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	jmp	.label_1494
.label_1500:
	lea	rdi, [rdi]
	mov	edx, ebp
	mov	rsp, rsp
	test	dh, 8
	je	.label_1502
	test	ecx, ecx
	nop	
	je	.label_1502
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1494
.label_1499:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1494
.label_1502:
	lea	rdi, [rdi]
	test	dh, 0x20
	mov	rbp, rbp
	je	.label_1501
	mov	ecx, eax
	and	ecx, 2
	lea	rsi, [rsi]
	jne	.label_1501
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	jmp	.label_1494
.label_1496:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1494
.label_1501:
	mov	rbp, rbp
	and	eax, 8
	lea	rdi, [rdi]
	test	bl, bl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_1494:
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415870
	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:

	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415880

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x10], 0
	lea	rsi, [rsi]
	jle	.label_1503
	mov	rax, qword ptr [r15 + 0x98]
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	nop	
.label_1508:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	lea	rdi, [rdi]
	je	.label_1504
	mov	ebp, ebx
	mov	rbp, rbp
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1507
	mov	rsi, qword ptr [r15 + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	re_string_context_at
	lea	rdi, [rdi]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	lea	rdi, [rdi]
	je	.label_1512
	test	ecx, ecx
	nop	
	je	.label_1504
.label_1512:
	test	bh, 8
	je	.label_1511
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_1504
.label_1511:
	lea	rdi, [rdi]
	test	bh, 0x20
	je	.label_1505
	mov	ecx, eax
	and	ecx, 2
	mov	rsp, rsp
	je	.label_1504
.label_1505:
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rsp, rsp
	jns	.label_1507
	and	eax, 8
	je	.label_1504
	nop	word ptr cs:[rax + rax]
.label_1507:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	call	check_node_accept_bytes
	test	eax, eax
	mov	rsp, rsp
	je	.label_1504
	mov	rbp, r12
	lea	rdi, [rdi]
	movsxd	r12, eax
	add	r12, qword ptr [r15 + 0x48]
	nop	
	mov	ecx, dword ptr [r15 + 0xe0]
	lea	rsi, [rsi]
	cmp	ecx, eax
	mov	rbp, rbp
	cmovl	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0xe0], ecx
	mov	rdi, r15
	nop	
	mov	rsi, r12
	call	clean_state_log_if_needed
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x34], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1503
	mov	rcx, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + r14*8]
	mov	rbp, rbp
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_1509
	nop	
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsi]
	call	re_node_set_init_union
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x34], eax
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_1510
	mov	rbp, rbp
	jmp	.label_1503
.label_1509:
	mov	rax, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1510:
	lea	rdi, [rdi]
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	lea	rdi, [rsp + 0x34]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x10]
	nop	
	mov	ecx, eax
	call	re_acquire_state_context
	test	rbx, rbx
	nop	
	mov	rcx, qword ptr [r15 + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rcx + r12*8], rax
	mov	rbp, rbp
	je	.label_1506
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x20]
	nop	
	call	free
.label_1506:
	mov	rax, qword ptr [r15 + 0xb8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + r12*8], 0
	mov	r12, rbp
	mov	rsp, rsp
	jne	.label_1504
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	jne	.label_1503
	nop	word ptr cs:[rax + rax]
.label_1504:
	inc	r13
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	r13, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	jl	.label_1508
.label_1503:
	mov	rbp, rbp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415b20

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r15, rax
	mov	qword ptr [rbp - 0x80], r15
	test	r15, r15
	mov	rbp, rbp
	je	.label_1531
	lea	rsi, [rsi]
	lea	rcx, [r15 + 0x1800]
	mov	qword ptr [rbp - 0x90], rcx
	lea	r13, [rbx + 0x58]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x58], xmm0
	mov	rsp, rsp
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbx
	nop	
	mov	qword ptr [rbp - 0xb8], rbx
	lea	rsi, [rsi]
	mov	rdx, r15
	call	group_nodes_into_DFAstates
	mov	r12, rax
	test	r12, r12
	jle	.label_1543
	lea	rsi, [r12 + 1]
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	call	re_node_set_alloc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r12, rcx
	ja	.label_1520
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1520
	nop	
	lea	rax, [r12*8]
	mov	rbp, rbp
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	mov	rsp, rsp
	cmp	rax, 0xfbf
	mov	rsp, rsp
	ja	.label_1552
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], r13
	mov	rax, rsp
	mov	rbp, rbp
	add	rdi, 0xf
	mov	rbp, rbp
	and	rdi, 0xfffffffffffffff0
	lea	rdi, [rdi]
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_1516
.label_1552:
	call	malloc
	test	rax, rax
	je	.label_1520
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], r13
	nop	
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
.label_1516:
	mov	qword ptr [rbp - 0x88], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0x98], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x70]
	nop	
	call	bitset_empty
	xor	r13d, r13d
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
.label_1542:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], r13
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	lea	rax, [r13 + r13*2]
	cmp	qword ptr [r15 + rax*8 + 8], 0
	nop	
	mov	rbx, r14
	jle	.label_1540
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	lea	r14, [rcx + rax*8 + 8]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rcx + rax*8 + 0x10]
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1523:
	mov	rax, qword ptr [r13 + r15*8]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	cmp	rax, -1
	nop	
	je	.label_1551
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rsi]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1517
.label_1551:
	lea	rdi, [rdi]
	inc	r15
	cmp	r15, qword ptr [r14]
	lea	rsi, [rsi]
	jl	.label_1523
.label_1540:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x2c]
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	test	rax, rax
	jne	.label_1526
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_1517
.label_1526:
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 0x68], 0
	mov	rsp, rsp
	js	.label_1545
	nop	
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rcx + rdx*8], rax
	nop	
	mov	r13, rdx
	jmp	.label_1533
	nop	dword ptr [rax]
.label_1545:
	lea	rsi, [rsi]
	mov	ecx, 1
	lea	rdi, [rbp - 0x2c]
	mov	rbp, rbp
	lea	rdx, [rbp - 0x48]
	mov	rbp, rbp
	mov	rbx, rsi
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rbp, rbp
	test	rax, rax
	jne	.label_1550
	nop	
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1517
.label_1550:
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + rbx*8], rax
	mov	rbp, rbp
	je	.label_1514
	mov	rsp, rsp
	mov	al, 1
	nop	
	cmp	dword ptr [rsi + 0xb4], 1
	jg	.label_1539
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
.label_1539:
	mov	qword ptr [rbp - 0xb0], rax
.label_1514:
	lea	rdi, [rdi]
	mov	ecx, 2
	lea	rdi, [rbp - 0x2c]
	mov	r14, rsi
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + rbx*8], rax
	lea	rdi, [rdi]
	mov	r13, rbx
	mov	rsp, rsp
	test	rax, rax
	nop	
	jne	.label_1529
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	test	eax, eax
	lea	rsi, [rsi]
	mov	rsi, r14
	je	.label_1533
	jmp	.label_1517
.label_1529:
	mov	rsi, r14
.label_1533:
	mov	r14, rsi
	mov	rsi, r13
	shl	rsi, 5
	mov	rbx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rsi, rbx
	lea	rdi, [rbp - 0x70]
	nop	
	call	bitset_merge
	lea	rdi, [rdi]
	inc	r13
	cmp	r13, r12
	mov	r15, qword ptr [rbp - 0x80]
	jl	.label_1542
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	jne	.label_1548
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	nop	
	mov	esi, 0x100
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rax], r15
	mov	rbp, rbp
	test	r15, r15
	mov	r11, r14
	mov	rsp, rsp
	je	.label_1517
	nop	
	mov	r13, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	lea	r10, [r13 - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rbx, [rax + 0x1800]
	xor	r8d, r8d
	nop	
	xor	r9d, r9d
	nop	
.label_1547:
	mov	rdi, qword ptr [rbp + r9*8 - 0x70]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1524
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	rsp, rsp
	mov	esi, 1
	jmp	.label_1537
.label_1530:
	mov	rsp, rsp
	add	rax, 8
	test	qword ptr [rcx], rsi
	nop	
	lea	rcx, [rcx + 0x20]
	lea	rdi, [rdi]
	je	.label_1530
	test	qword ptr [r11 + r9*8 + 0xb8], rsi
	mov	rsp, rsp
	je	.label_1532
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + r12*8]
	nop	
	jmp	.label_1544
.label_1532:
	mov	rax, qword ptr [rax]
.label_1544:
	mov	qword ptr [r15 + rdx*8], rax
	jmp	.label_1553
	nop	word ptr cs:[rax + rax]
.label_1537:
	test	dil, 1
	mov	rcx, rbx
	mov	rax, r10
	jne	.label_1530
.label_1553:
	add	rsi, rsi
	nop	
	shr	rdi, 1
	inc	rdx
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	jne	.label_1537
.label_1524:
	inc	r9
	mov	rbp, rbp
	add	r8, 0x40
	lea	rdi, [rdi]
	add	rbx, 8
	mov	rsp, rsp
	cmp	r9, 4
	lea	rdi, [rdi]
	jne	.label_1547
.label_1518:
	mov	rsp, rsp
	mov	r14, r15
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	mov	esi, 0xa
	nop	
	call	bitset_contain
	nop	
	test	al, al
	je	.label_1515
	test	r12, r12
	jle	.label_1515
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	lea	r15, [rax + 0x1800]
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1521:
	mov	esi, 0xa
	mov	rdi, r15
	nop	
	call	bitset_contain
	test	al, al
	jne	.label_1519
	nop	
	inc	rbx
	add	r15, 0x20
	cmp	rbx, r12
	jl	.label_1521
	nop	
	jmp	.label_1515
.label_1531:
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_1522
.label_1543:
	mov	rdi, r15
	lea	rsi, [rsi]
	call	free
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_1527
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_1522
.label_1527:
	mov	edi, 8
	lea	rsi, [rsi]
	mov	esi, 0x100
	mov	rbp, rbp
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	setne	al
	jmp	.label_1522
.label_1519:
	lea	rdi, [rdi]
	mov	rax, r12
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	test	cl, cl
	mov	rcx, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x50], rcx
	mov	rbp, rbp
	je	.label_1515
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x850], rax
.label_1515:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_1549
	mov	rdi, r13
	call	free
.label_1549:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	free
	nop	
	test	r12, r12
	lea	rdi, [rdi]
	jle	.label_1535
	mov	rbx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1525:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	call	free
	lea	rdi, [rdi]
	add	rbx, 0x18
	dec	r12
	jne	.label_1525
.label_1535:
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	free
	mov	al, 1
	jmp	.label_1522
.label_1548:
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	mov	esi, 0x200
	call	rpl_calloc
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x60], r15
	nop	
	test	r15, r15
	mov	rbp, rbp
	je	.label_1517
	mov	r13, qword ptr [rbp - 0x88]
	lea	r10, [r13 - 8]
	mov	rsp, rsp
	xor	r8d, r8d
	xor	r9d, r9d
.label_1513:
	mov	rsi, qword ptr [rbp + r9*8 - 0x70]
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	rdi, r8
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rbp, rbp
	jne	.label_1536
	mov	rsp, rsp
	jmp	.label_1538
	nop	word ptr cs:[rax + rax]
.label_1541:
	add	rax, 8
	test	qword ptr [rdx], rcx
	nop	
	lea	rdx, [rdx + 0x20]
	je	.label_1541
	nop	
	mov	rdx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + rdi*8], rdx
	mov	rax, qword ptr [rax + r12*8]
	mov	qword ptr [r15 + rdi*8 + 0x800], rax
	nop	
	jmp	.label_1546
	nop	dword ptr [rax + rax]
.label_1536:
	lea	rdi, [rdi]
	test	sil, 1
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	rax, r10
	lea	rsi, [rsi]
	jne	.label_1541
.label_1546:
	lea	rsi, [rsi]
	add	rcx, rcx
	mov	rbp, rbp
	shr	rsi, 1
	inc	rdi
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_1536
.label_1538:
	inc	r9
	lea	rsi, [rsi]
	add	r8, 0x40
	add	rbx, 8
	cmp	r9, 4
	jne	.label_1513
	mov	rsp, rsp
	jmp	.label_1518
.label_1517:
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	test	al, al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	r15, qword ptr [rbp - 0x80]
	nop	
	je	.label_1520
	call	free
.label_1520:
	mov	r14, r15
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	test	r12, r12
	lea	rdi, [rdi]
	jle	.label_1528
	mov	rbp, rbp
	mov	rbx, r14
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_1534:
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	free
	add	rbx, 0x18
	mov	rbp, rbp
	dec	r12
	nop	
	jne	.label_1534
.label_1528:
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	xor	eax, eax
.label_1522:
	lea	rdi, [rdi]
	lea	rsp, [rbp - 0x28]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4162b0

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0xa8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rcx
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x20], rbx
	nop	
	mov	rbp, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rbp
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsi]
	call	bitset_empty
	mov	r8, rbp
	xor	r15d, r15d
	cmp	qword ptr [rbx + 0x10], 0
	mov	rbp, rbp
	jle	.label_1556
	lea	rdi, [rdi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1581:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbx, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	mov	r12, qword ptr [r8]
	shl	rbx, 4
	lea	rax, [r12 + rbx]
	mov	r13d, dword ptr [r12 + rbx + 8]
	lea	rdi, [rdi]
	movzx	ebp, r13b
	mov	dword ptr [rsp + 0x3c], ebp
	cmp	ebp, 1
	jne	.label_1562
	nop	
	movzx	esi, byte ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	nop	
	call	bitset_set
	jmp	.label_1561
	nop	word ptr cs:[rax + rax]
.label_1562:
	cmp	ebp, 7
	je	.label_1576
	nop	
	cmp	ebp, 5
	je	.label_1577
	cmp	ebp, 3
	lea	rsi, [rsi]
	jne	.label_1567
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	nop	
	call	bitset_merge
	jmp	.label_1561
.label_1576:
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x88], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], -1
	test	byte ptr [r8 + 0xd8], 0x40
	jne	.label_1582
	mov	rbp, rbp
	mov	esi, 0xa
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	nop	
	mov	rbp, r8
	lea	rsi, [rsi]
	call	bitset_clear
	mov	r8, rbp
	mov	rsp, rsp
	mov	ebp, dword ptr [rsp + 0x3c]
.label_1582:
	mov	rsp, rsp
	cmp	byte ptr [r8 + 0xd8], 0
	mov	qword ptr [rsp + 0x10], r8
	jns	.label_1561
	mov	rbp, rbp
	jmp	.label_1563
.label_1577:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	cmp	dword ptr [r8 + 0xb4], 2
	jl	.label_1579
	mov	rsi, qword ptr [r8 + 0x78]
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_merge
	jmp	.label_1572
.label_1579:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_set_all
.label_1572:
	test	byte ptr [rbp + 0xd8], 0x40
	mov	rax, rbp
	jne	.label_1575
	mov	esi, 0xa
	lea	rdi, [rsp + 0x80]
	mov	rbp, rax
	lea	rsi, [rsi]
	call	bitset_clear
	mov	rsp, rsp
	mov	rax, rbp
.label_1575:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	cmp	byte ptr [rax + 0xd8], 0
	mov	ebp, dword ptr [rsp + 0x3c]
	mov	rbp, rbp
	jns	.label_1561
.label_1563:
	xor	esi, esi
	lea	rdi, [rsp + 0x80]
	lea	rdi, [rdi]
	call	bitset_clear
	nop	word ptr cs:[rax + rax]
.label_1561:
	shr	r13d, 8
	nop	
	mov	eax, r13d
	and	eax, 0x3ff
	je	.label_1569
	test	r13b, 0x20
	mov	rbp, rbp
	je	.label_1588
	nop	
	mov	dword ptr [rsp + 0x3c], ebp
	mov	esi, 0xa
	mov	rbp, rbp
	lea	rbp, [rsp + 0x80]
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	call	bitset_contain
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 8], al
	mov	rdi, rbp
	call	bitset_empty
	cmp	byte ptr [rsp + 8], 0
	je	.label_1559
	mov	rbp, rbp
	mov	esi, 0xa
	mov	rdi, rbp
	mov	rbp, rbp
	call	bitset_set
	mov	ebp, dword ptr [rsp + 0x3c]
.label_1588:
	test	r13b, r13b
	js	.label_1568
	lea	rax, [r12 + rbx + 8]
	test	r13b, 4
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x10]
	nop	
	je	.label_1570
	cmp	ebp, 1
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsi]
	jne	.label_1573
	test	byte ptr [rax + 2], 0x40
	jne	.label_1573
	mov	rbp, rbp
	mov	rbp, r8
	call	bitset_empty
	lea	rsi, [rsi]
	mov	r8, rbp
	jmp	.label_1567
.label_1573:
	cmp	dword ptr [r8 + 0xb4], 2
	lea	rsi, [rsi]
	mov	ecx, 0
	mov	rbp, rbp
	mov	edx, 0
	jl	.label_1558
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r8 + 0x78]
	lea	rsi, [rsi]
	xor	ecx, ecx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1583:
	mov	rdi, qword ptr [rdx + rsi*8]
	not	rdi
	or	rdi, qword ptr [r8 + rsi*8 + 0xb8]
	and	rdi, qword ptr [rsp + rsi*8 + 0x80]
	mov	qword ptr [rsp + rsi*8 + 0x80], rdi
	or	rcx, rdi
	nop	
	inc	rsi
	lea	rsi, [rsi]
	cmp	rsi, 4
	mov	rbp, rbp
	jne	.label_1583
	mov	rbp, rbp
	jmp	.label_1557
	nop	word ptr [rax + rax]
.label_1558:
	nop	
	mov	rsi, qword ptr [rsp + rdx*8 + 0x80]
	lea	rsi, [rsi]
	and	rsi, qword ptr [r8 + rdx*8 + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	lea	rdi, [rdi]
	or	rcx, rsi
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, 4
	lea	rdi, [rdi]
	jne	.label_1558
.label_1557:
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_1567
.label_1570:
	mov	rsp, rsp
	test	r13b, 8
	nop	
	je	.label_1569
	lea	rsi, [rsi]
	cmp	ebp, 1
	jne	.label_1578
	test	byte ptr [rax + 2], 0x40
	jne	.label_1568
.label_1578:
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rdi + 0xb4], 2
	mov	eax, 0
	mov	ecx, 0
	jl	.label_1566
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x78]
	mov	rsp, rsp
	xor	eax, eax
	xor	edx, edx
	nop	dword ptr [rax]
.label_1580:
	mov	rsi, qword ptr [rcx + rdx*8]
	and	rsi, qword ptr [rdi + rdx*8 + 0xb8]
	nop	
	not	rsi
	mov	rsp, rsp
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	nop	
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	lea	rdi, [rdi]
	or	rax, rsi
	inc	rdx
	nop	
	cmp	rdx, 4
	jne	.label_1580
	jmp	.label_1584
	nop	word ptr cs:[rax + rax]
.label_1566:
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + rcx*8 + 0xb8]
	not	rdx
	lea	rsi, [rsi]
	and	rdx, qword ptr [rsp + rcx*8 + 0x80]
	mov	qword ptr [rsp + rcx*8 + 0x80], rdx
	lea	rsi, [rsi]
	or	rax, rdx
	inc	rcx
	cmp	rcx, 4
	jne	.label_1566
.label_1584:
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1559
	nop	dword ptr [rax]
.label_1569:
	test	r15, r15
	jle	.label_1560
	mov	rbx, qword ptr [rsp + 0x30]
	nop	
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1586:
	cmp	ebp, 1
	mov	rcx, rbx
	nop	
	mov	eax, 0
	mov	edx, 0
	mov	rbp, rbp
	jne	.label_1565
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	movzx	esi, byte ptr [rax]
	mov	rbp, rbp
	call	bitset_contain
	nop	
	test	al, al
	mov	rcx, rbx
	lea	rdi, [rdi]
	mov	eax, 0
	mov	edx, 0
	lea	rdi, [rdi]
	je	.label_1574
	nop	word ptr cs:[rax + rax]
.label_1565:
	mov	rsi, qword ptr [rcx]
	mov	rbp, rbp
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	mov	qword ptr [rsp + rdx*8 + 0x60], rsi
	or	rax, rsi
	inc	rdx
	add	rcx, 8
	cmp	rdx, 4
	lea	rsi, [rsi]
	jne	.label_1565
	test	rax, rax
	mov	rbp, rbp
	mov	ebp, 0
	mov	rsp, rsp
	mov	eax, 0
	mov	ecx, 0
	je	.label_1574
	nop	word ptr cs:[rax + rax]
.label_1587:
	mov	rdx, qword ptr [rsp + rcx*8 + 0x80]
	nop	
	not	rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + rcx*8]
	lea	rdi, [rdi]
	and	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + rcx*8 + 0x40], rdx
	mov	rbp, rbp
	or	rax, rdx
	not	rsi
	and	rsi, qword ptr [rsp + rcx*8 + 0x80]
	mov	rbp, rbp
	mov	qword ptr [rsp + rcx*8 + 0x80], rsi
	mov	rbp, rbp
	or	rbp, rsi
	nop	
	inc	rcx
	nop	
	cmp	rcx, 4
	jne	.label_1587
	mov	rbp, rbp
	test	rax, rax
	je	.label_1564
	nop	
	mov	rdi, r15
	shl	rdi, 5
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x30]
	add	rdi, r13
	lea	rsi, [rsp + 0x40]
	call	bitset_copy
	lea	rdi, [rdi]
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, r13
	lea	rsi, [rsp + 0x60]
	mov	rbp, rbp
	call	bitset_copy
	mov	rbp, rbp
	lea	rax, [r15 + r15*2]
	lea	rsi, [rsi]
	lea	rdi, [r14 + rax*8]
	lea	rax, [r12 + r12*2]
	mov	rbp, rbp
	lea	rsi, [r14 + rax*8]
	call	re_node_set_init_copy
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1571
	inc	r15
.label_1564:
	lea	rax, [r12 + r12*2]
	nop	
	lea	rdi, [r14 + rax*8]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	call	re_node_set_insert
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	je	.label_1571
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_1554
.label_1574:
	inc	r12
	add	rbx, 0x20
	cmp	r12, r15
	mov	ebp, dword ptr [rsp + 0x3c]
	lea	rdi, [rdi]
	jl	.label_1586
	jmp	.label_1554
.label_1567:
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x28]
	jmp	.label_1555
.label_1568:
	nop	
	lea	rdi, [rsp + 0x80]
	call	bitset_empty
	lea	rdi, [rdi]
	jmp	.label_1559
.label_1560:
	xor	r12d, r12d
.label_1554:
	lea	rsi, [rsi]
	cmp	r12, r15
	nop	
	jne	.label_1559
	mov	rdi, r15
	mov	rbp, rbp
	shl	rdi, 5
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	add	rdi, rax
	lea	rsi, [rsi]
	lea	r12, [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rsp, rsp
	call	bitset_copy
	lea	rdi, [rdi]
	lea	rax, [r15 + r15*2]
	lea	rdi, [rdi]
	lea	rdi, [r14 + rax*8]
	nop	
	mov	rbx, qword ptr [rsp + 0x20]
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	call	re_node_set_init_1
	test	eax, eax
	jne	.label_1571
	inc	r15
	nop	
	mov	rdi, r12
	mov	rsp, rsp
	call	bitset_empty
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1555
	nop	word ptr [rax + rax]
.label_1559:
	mov	rbx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x28]
.label_1555:
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	jl	.label_1581
	jmp	.label_1556
.label_1571:
	mov	rbp, rbp
	test	r15, r15
	jle	.label_1585
	add	r14, 0x10
	nop	word ptr cs:[rax + rax]
.label_1589:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	call	free
	nop	
	add	r14, 0x18
	mov	rbp, rbp
	dec	r15
	nop	
	jne	.label_1589
.label_1585:
	mov	r15, -1
.label_1556:
	mov	rax, r15
	mov	rbp, rbp
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x416a30

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rdi + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x416a40

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1590:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsi + rax*8]
	lea	rsi, [rsi]
	or	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	mov	rsp, rsp
	jne	.label_1590
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x416a70

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x18], -1
	mov	qword ptr [rdi + 0x10], -1
	mov	qword ptr [rdi + 8], -1
	lea	rsi, [rsi]
	mov	qword ptr [rdi], -1
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416aa0

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	lea	rdi, [rdi]
	mov	rax, -2
	mov	cl, sil
	lea	rsi, [rsi]
	rol	rax, cl
	nop	
	mov	rcx, rsi
	lea	rdi, [rdi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rsi
	mov	rbp, rbp
	sar	rcx, 6
	and	qword ptr [rdi + rcx*8], rax
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416ae0

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	movups	xmm0, xmmword ptr [rsi]
	movups	xmm1, xmmword ptr [rsi + 0x10]
	movups	xmmword ptr [rdi + 0x10], xmm1
	nop	
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x416af0

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi]
	shl	rsi, 4
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + rsi + 8]
	movzx	eax, cl
	cmp	eax, 2
	jne	.label_1594
	mov	rsp, rsp
	shr	ecx, 8
	mov	al, 1
	test	cx, 0x3ff
	nop	
	je	.label_1593
	mov	eax, edx
	nop	
	and	eax, 1
	jne	.label_1591
	mov	rsp, rsp
	mov	esi, ecx
	and	esi, 4
	je	.label_1591
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
.label_1594:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
.label_1591:
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1592
	lea	rdi, [rdi]
	mov	eax, ecx
	and	eax, 8
	je	.label_1592
	xor	eax, eax
	ret	
.label_1592:
	nop	
	test	dl, 2
	mov	rsp, rsp
	jne	.label_1595
	mov	eax, ecx
	mov	rbp, rbp
	and	eax, 0x20
	lea	rdi, [rdi]
	je	.label_1595
	xor	eax, eax
	mov	rbp, rbp
	ret	
.label_1595:
	nop	
	and	edx, 8
	mov	rsp, rsp
	test	cl, cl
	setns	al
	lea	rdi, [rdi]
	shr	edx, 3
	or	dl, al
	mov	al, dl
.label_1593:
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416b90

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	mov	rsp, rsp
	mov	qword ptr [rdi], rsi
	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x18], r8
	nop	
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rdi + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x30], 0
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416bd0

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x18
	nop	
	mov	r14, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdi, [rsp]
	nop	
	call	re_node_set_init_1
	mov	ebp, eax
	nop	
	test	ebp, ebp
	jne	.label_1596
	mov	rbp, rbp
	lea	rcx, [rsp]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	update_cur_sifted_state
	lea	rsi, [rsi]
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1599
	lea	r12, [rsp]
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_1601:
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_1597
	nop	
	mov	rdi, qword ptr [r14]
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + rbx*8], 0
	lea	rdi, [rdi]
	je	.label_1600
	mov	rbp, rbp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_1602
	nop	dword ptr [rax + rax]
.label_1600:
	inc	r13d
.label_1602:
	lea	rdi, [rdi]
	cmp	r13d, dword ptr [r15 + 0xe0]
	jg	.label_1598
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + rbx*8 - 8], 0
	lea	rdi, [rdi]
	lea	rbx, [rbx - 1]
	lea	rsi, [rsi]
	je	.label_1603
	mov	rdi, r15
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rcx, r12
	lea	rsi, [rsi]
	call	build_sifted_states
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_1599
.label_1603:
	mov	rdi, r15
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rcx, r12
	call	update_cur_sifted_state
	mov	rsp, rsp
	mov	ebp, eax
	mov	rbp, rbp
	test	ebp, ebp
	mov	rsp, rsp
	je	.label_1601
	mov	rbp, rbp
	jmp	.label_1599
.label_1597:
	mov	rbp, rbp
	xor	ebp, ebp
	jmp	.label_1599
.label_1598:
	nop	
	shl	rbx, 3
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, rbx
	call	memset
.label_1599:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	call	free
.label_1596:
	mov	eax, ebp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416d40

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x28
	nop	
	mov	r14, rcx
	lea	rsi, [rsi]
	mov	r15, rdx
	nop	
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	mov	rsp, rsp
	test	r14, r14
	lea	rdi, [rdi]
	jle	.label_1604
	xor	ebp, ebp
	lea	r13, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_1606:
	nop	
	mov	rax, qword ptr [r15 + rbp*8]
	cmp	qword ptr [rbx + rbp*8], 0
	nop	
	je	.label_1605
	test	rax, rax
	je	.label_1607
	mov	rsi, qword ptr [rbx + rbp*8]
	lea	rdi, [rdi]
	add	rsi, 8
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r15 + rbp*8]
	lea	rdi, [rdi]
	add	rdx, 8
	mov	rsp, rsp
	mov	rdi, r13
	call	re_node_set_init_union
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x24], eax
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1604
	lea	rdi, [rsp + 0x24]
	mov	rsp, rsp
	mov	rsi, r12
	mov	rdx, r13
	nop	
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	je	.label_1607
	jmp	.label_1604
	nop	word ptr cs:[rax + rax]
.label_1605:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + rbp*8], rax
.label_1607:
	mov	rsp, rsp
	inc	rbp
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbp, r14
	nop	
	jl	.label_1606
.label_1604:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416e50

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rcx
	nop	
	mov	r15, rdx
	mov	rbp, rbp
	mov	rbx, rdi
	nop	
	mov	rdx, qword ptr [rbx + 0x98]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r14, qword ptr [rax + r15*8]
	lea	r12, [r14 + 8]
	test	r14, r14
	lea	rdi, [rdi]
	cmove	r12, r14
	cmp	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	je	.label_1611
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1609
	mov	rdi, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbp, rbp
	mov	rdx, r12
	lea	rsi, [rsi]
	call	add_epsilon_src_nodes
	lea	rdi, [rdi]
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1608
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x28], 0
	je	.label_1609
	nop	
	lea	rcx, [rsi + 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbx + 0xd8]
	lea	rdi, [rdi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rbp, rdx
	mov	rsp, rsp
	mov	rdx, r12
	mov	r9, r15
	lea	rdi, [rdi]
	call	check_subexp_limits
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1608
.label_1609:
	lea	rdi, [rsp + 0x14]
	mov	rbp, rsi
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r13
	call	re_acquire_state
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rcx + r15*8], rax
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1612
	lea	rsi, [rsi]
	jmp	.label_1608
.label_1611:
	mov	rax, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rax + r15*8], 0
.label_1612:
	test	r14, r14
	je	.label_1610
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r15*8]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_1610
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rcx, r12
	call	sift_states_bkref
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1608
.label_1610:
	xor	eax, eax
.label_1608:
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416fe0

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	rbx, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	nop	
	mov	r14, qword ptr [rax + rbx*8]
	nop	
	xor	eax, eax
	cmp	qword ptr [r14 + 0x28], 0
	jle	.label_1613
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	lea	rax, [rax + 0x20]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1617:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + r15*8]
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	nop	
	mov	r13, rbp
	shl	r13, 4
	lea	rdi, [rdi]
	test	byte ptr [rax + r13 + 0xa], 0x10
	lea	rdi, [rdi]
	je	.label_1614
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rsp, rsp
	mov	rcx, rbx
	call	sift_states_iter_mb
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1615
.label_1614:
	mov	rbp, rbp
	add	r13, qword ptr [r12]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rsi, r13
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	check_node_accept
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_1618
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx*8 + 8]
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1618
	add	rdi, 8
	mov	rax, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	call	re_node_set_contains
	mov	rcx, rax
	mov	rbp, rbp
	mov	eax, 1
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1618
.label_1615:
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x28], 0
	lea	rdi, [rdi]
	je	.label_1616
	movsxd	rcx, eax
	add	rcx, rbx
	nop	
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r8, rbp
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	jne	.label_1618
.label_1616:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	nop	
	test	cl, cl
	je	.label_1613
.label_1618:
	inc	r15
	mov	rbp, rbp
	xor	eax, eax
	cmp	r15, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	jl	.label_1617
.label_1613:
	add	rsp, 0x28
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4171c0

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], 0
	nop	
	lea	rdi, [rsp + 4]
	nop	
	mov	rsi, r15
	nop	
	mov	rdx, rbx
	call	re_acquire_state
	mov	r12, rax
	mov	r13d, dword ptr [rsp + 4]
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1620
	mov	rax, r12
	lea	rsi, [rsi]
	add	r12, 0x38
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_1622
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, r12
	mov	rbp, rbp
	call	re_node_set_alloc
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], eax
	mov	r13d, 0xc
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1620
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1622
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1621:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rdi, [rdi]
	lea	rcx, [rcx + rcx*2]
	mov	rbp, rbp
	lea	rsi, [rax + rcx*8]
	mov	rdi, r12
	call	re_node_set_merge
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1619
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_1621
	mov	dword ptr [rsp + 4], eax
.label_1622:
	mov	rdi, rbx
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r12
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	mov	rbp, rbp
	mov	r13d, eax
.label_1620:
	mov	rsp, rsp
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_1619:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], eax
	jmp	.label_1620
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4172e0

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	mov	rbp, rbp
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r14, r9
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r8
	mov	r9, rcx
	mov	qword ptr [rsp + 0x28], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdx
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	qword ptr [rsp + 0x30], rdx
	mov	rsp, rsp
	mov	r11, rdi
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	qword ptr [r9 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1625
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1637:
	mov	rax, qword ptr [r9 + 0x10]
	mov	rax, qword ptr [rax + r15*8]
	lea	rdi, [rdi]
	lea	rax, [rax + rax*4]
	mov	rbp, rbp
	cmp	qword ptr [r8 + rax*8 + 0x10], r14
	lea	rdi, [rdi]
	jge	.label_1627
	mov	rbp, rbp
	cmp	qword ptr [r8 + rax*8 + 8], r14
	jl	.label_1627
	mov	rcx, qword ptr [r8 + rax*8]
	mov	rsi, qword ptr [r11]
	shl	rcx, 4
	mov	r13, qword ptr [rsi + rcx]
	mov	qword ptr [rsp], r13
	mov	rbp, rbp
	cmp	qword ptr [r8 + rax*8 + 0x18], r14
	lea	rdi, [rdi]
	jne	.label_1638
	nop	
	cmp	qword ptr [rdx + 8], 0
	jle	.label_1627
	lea	rdi, [rdi]
	mov	r12, r8
	mov	rsp, rsp
	mov	r9, r14
	mov	rbp, rbp
	mov	r8, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	r10, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [r11]
	mov	r14, -1
	xor	edi, edi
	mov	rsp, rsp
	mov	rsi, -1
	nop	
.label_1636:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r10 + rdi*8]
	lea	rsi, [rsi]
	mov	rbp, rbx
	shl	rbp, 4
	nop	
	movzx	eax, byte ptr [rcx + rbp + 8]
	cmp	eax, 9
	je	.label_1623
	mov	rsp, rsp
	cmp	eax, 8
	mov	rsp, rsp
	jne	.label_1632
	cmp	r13, qword ptr [rcx + rbp]
	mov	rbp, rbp
	je	.label_1626
	mov	rsp, rsp
	mov	rbx, rsi
.label_1626:
	mov	rsi, rbx
	lea	rsi, [rsi]
	jmp	.label_1632
	nop	
.label_1623:
	mov	rax, qword ptr [r11]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [rax + rbp]
	lea	rsi, [rsi]
	je	.label_1634
	mov	rbx, r14
.label_1634:
	lea	rdi, [rdi]
	mov	r14, rbx
.label_1632:
	inc	rdi
	nop	
	cmp	rdi, r8
	jl	.label_1636
	mov	rbp, rbp
	mov	r13, r14
	test	rsi, rsi
	nop	
	mov	r14, r9
	lea	rdi, [rdi]
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x28]
	nop	
	js	.label_1635
	mov	rsp, rsp
	mov	rdi, r11
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rsp, rsp
	mov	rbx, r11
	mov	r12, r8
	mov	rbp, rbp
	mov	rbp, r9
	mov	rbp, rbp
	call	sub_epsilon_src_nodes
	mov	r9, rbp
	nop	
	mov	r8, r12
	lea	rsi, [rsi]
	mov	r11, rbx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1625
.label_1635:
	mov	rbp, rbp
	test	r13, r13
	mov	rsp, rsp
	js	.label_1627
	cmp	qword ptr [rdx + 8], 0
	mov	rbp, rbp
	mov	ebp, 0
	jg	.label_1631
	mov	rsp, rsp
	jmp	.label_1627
.label_1638:
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + 8], 0
	mov	ebp, 0
	mov	rbp, rbp
	jle	.label_1627
	nop	word ptr cs:[rax + rax]
.label_1624:
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11]
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rbp, rbp
	shl	rcx, 4
	mov	edi, dword ptr [rax + rcx + 8]
	nop	
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	mov	rbp, rbp
	jne	.label_1633
	cmp	r13, qword ptr [rax + rcx]
	mov	rbp, rbp
	jne	.label_1633
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	mov	r13, rdx
	mov	rbx, r11
	lea	rsi, [rsi]
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], r15
	lea	rdi, [rdi]
	mov	r15, r14
	mov	rbp, rbp
	mov	r14, r9
	call	sub_epsilon_src_nodes
	mov	r9, r14
	lea	rsi, [rsi]
	mov	r14, r15
	mov	r15, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	r8, r12
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	rdx, r13
	mov	r13, qword ptr [rsp]
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1625
.label_1633:
	inc	rbp
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_1624
	mov	rbp, rbp
	jmp	.label_1627
.label_1629:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	nop	
	mov	rcx, qword ptr [rsp + 8]
	nop	
	call	sub_epsilon_src_nodes
	mov	rdx, rbx
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r11, r12
	jne	.label_1625
	dec	rbp
	mov	rsp, rsp
	jmp	.label_1630
	nop	
.label_1631:
	mov	rsp, rsp
	mov	rax, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11 + 0x38]
	lea	rbx, [r14 + r14*2]
	lea	rdi, [rax + rbx*8]
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	r12, r11
	call	re_node_set_contains
	mov	rsp, rsp
	test	rax, rax
	nop	
	jne	.label_1628
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r13
	call	re_node_set_contains
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1629
.label_1628:
	nop	
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r11, r12
.label_1630:
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_1631
	nop	
.label_1627:
	inc	r15
	xor	eax, eax
	mov	rsp, rsp
	cmp	r15, qword ptr [r9 + 8]
	jl	.label_1637
.label_1625:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417690

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	qword ptr [rsp + 0x28], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rdx
	nop	
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rbp
	lea	rdi, [rdi]
	mov	rsi, rdx
	lea	rdi, [rdi]
	call	search_cur_bkref_entry
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	lea	rdi, [rdi]
	cmp	rax, -1
	je	.label_1640
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], 0
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1640
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rdx
	lea	rax, [rdx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rax
	nop	
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	lea	rax, [rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax*8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	nop	dword ptr [rax + rax]
.label_1647:
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	r15, qword ptr [rax + rcx*8]
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi]
	mov	rcx, r15
	shl	rcx, 4
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	r15, qword ptr [rdx + 0x10]
	jne	.label_1650
	lea	rsi, [rsi]
	cmp	eax, 4
	jne	.label_1642
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rdx + 0x18], rax
	jne	.label_1649
	mov	rbp, rbp
	jmp	.label_1642
	nop	word ptr cs:[rax + rax]
.label_1650:
	nop	
	cmp	eax, 4
	jne	.label_1642
.label_1649:
	mov	r14, qword ptr [rsp + 0x20]
	lea	rbp, [r14 + r14*4]
	nop	
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	add	rbp, qword ptr [rax + 0xd8]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x18]
	nop	
.label_1646:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp], r15
	jne	.label_1639
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rbx, rcx
	mov	rbp, rbp
	sub	rbx, rax
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0x58]
	cmp	rcx, rax
	jne	.label_1641
	mov	rax, qword ptr [rsi + 0x28]
	lea	rsi, [rsi]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	nop	
	jmp	.label_1648
	nop	
.label_1641:
	lea	rax, [r15*8]
	add	rax, qword ptr [rsi + 0x18]
.label_1648:
	cmp	rbx, qword ptr [rdx + 0x18]
	jg	.label_1639
	mov	rcx, qword ptr [rdx]
	mov	rdi, qword ptr [rcx + rbx*8]
	test	rdi, rdi
	je	.label_1639
	nop	
	mov	r12, qword ptr [rax]
	mov	rsp, rsp
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	je	.label_1651
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r8, r12
	nop	
	mov	r9, rbx
	mov	rbp, rbp
	call	check_dst_limits
	nop	
	test	al, al
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x50]
	jne	.label_1639
	cmp	qword ptr [rsp + 0x60], 0
	jne	.label_1645
	mov	rsp, rsp
	mov	rax, qword ptr [rdx + 0x30]
	nop	
	mov	qword ptr [rsp + 0x90], rax
	movups	xmm0, xmmword ptr [rdx]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rdx + 0x10]
	movups	xmm2, xmmword ptr [rdx + 0x20]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x70], xmm1
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	lea	rdi, [rsp + 0x80]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	call	re_node_set_init_copy
	mov	rsp, rsp
	mov	rdx, rbx
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	lea	rsi, [rsi]
	jne	.label_1643
.label_1645:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x80]
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rsp, rsp
	mov	r12d, 0xc
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_1643
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rax + rcx*8]
	nop	
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x60]
	nop	
	mov	rbp, rdx
	call	sift_states_backward
	mov	rdx, rbp
	mov	rsp, rsp
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1643
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 8]
	mov	rbp, rbp
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1644
	lea	rdi, [rdi]
	mov	rbp, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	merge_state_array
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_1643
.label_1644:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8], rbx
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x80]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_contains
	mov	rsp, rsp
	lea	rsi, [rax - 1]
	mov	rdi, rbp
	call	re_node_set_remove_at
	mov	rdx, rbx
	nop	
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, r13
	nop	
	jmp	.label_1652
.label_1651:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
.label_1652:
	mov	rsi, qword ptr [rsp + 0x50]
	nop	dword ptr [rax + rax]
.label_1639:
	inc	r14
	add	r13, 0x28
	lea	rdi, [rdi]
	cmp	byte ptr [rbp + 0x20], 0
	mov	rbp, rbp
	lea	rbp, [rbp + 0x28]
	jne	.label_1646
.label_1642:
	mov	rsp, rsp
	mov	rbp, rsi
	mov	rax, qword ptr [rsp + 0x40]
	inc	rax
	mov	qword ptr [rsp + 0x40], rax
	xor	r12d, r12d
	nop	
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	rax, qword ptr [rbx + 8]
	jl	.label_1647
.label_1643:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x60], 0
	nop	
	je	.label_1640
	mov	rdi, qword ptr [rsp + 0x90]
	nop	
	call	free
.label_1640:
	lea	rdi, [rdi]
	mov	eax, r12d
	lea	rsi, [rsi]
	add	rsp, 0x98
	pop	rbx
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417ae0

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rdx, qword ptr [r12 + 8]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1659
	mov	rcx, qword ptr [r14 + 8]
	nop	
	test	rcx, rcx
	je	.label_1659
	add	rcx, rdx
	mov	rax, qword ptr [r15 + 8]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	cmp	rax, rbx
	mov	rsp, rsp
	jle	.label_1663
	add	rbx, rcx
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_1659
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
.label_1663:
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r12 + 8]
	lea	r8, [rdx + rcx]
	mov	r9, qword ptr [r14 + 8]
	mov	rsp, rsp
	add	r8, r9
	lea	rsi, [rsi]
	dec	rcx
.label_1665:
	dec	rdx
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, r9
.label_1654:
	lea	rsi, [rsi]
	lea	r9, [rdi - 1]
	nop	
	mov	rsi, qword ptr [rbx + rdi*8 - 8]
	nop	word ptr cs:[rax + rax]
.label_1669:
	nop	
	cmp	qword ptr [rax + rdx*8], rsi
	lea	rdi, [rdi]
	je	.label_1667
	jl	.label_1668
	nop	
	test	rdx, rdx
	lea	rsi, [rsi]
	lea	rdx, [rdx - 1]
	nop	
	jg	.label_1669
	lea	rsi, [rsi]
	jmp	.label_1661
	nop	word ptr cs:[rax + rax]
.label_1668:
	mov	rsp, rsp
	cmp	rdi, 2
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	jge	.label_1654
	nop	
	jmp	.label_1661
	nop	word ptr cs:[rax + rax]
.label_1667:
	nop	
	test	rcx, rcx
	js	.label_1653
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rsi + rdx*8]
	nop	word ptr cs:[rax + rax]
.label_1666:
	lea	rsi, [rsi]
	cmp	qword ptr [rax + rcx*8], rsi
	lea	rdi, [rdi]
	jle	.label_1664
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1666
	mov	rsp, rsp
	jmp	.label_1653
.label_1664:
	nop	
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_1653
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rsi, qword ptr [r12 + 0x10]
	cmp	rax, qword ptr [rsi + rdx*8]
	mov	rbp, rbp
	je	.label_1656
	nop	dword ptr [rax]
.label_1653:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsi + r8*8 - 8], rax
	lea	rdi, [rdi]
	dec	r8
.label_1656:
	test	rdx, rdx
	jle	.label_1661
	cmp	rdi, 2
	jge	.label_1665
.label_1661:
	mov	rcx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r12 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rdx, [rcx + r10]
	lea	r11, [rax + rdx - 1]
	lea	rsi, [rsi]
	mov	rdx, r11
	lea	rdi, [rdi]
	sub	rdx, r8
	lea	r9, [rdx + 1]
	nop	
	lea	rsi, [rdx + rcx + 1]
	mov	qword ptr [r15 + 8], rsi
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rbp, rbp
	jle	.label_1657
	test	rdx, rdx
	js	.label_1657
	add	r10, rax
	mov	rsp, rsp
	add	r10, rcx
	dec	rcx
	sub	r10, r8
	nop	
	xor	edx, edx
.label_1655:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	lea	rax, [rdi + r10*8]
	nop	word ptr [rax + rax]
.label_1660:
	mov	rsi, qword ptr [rdi + r11*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	lea	rdi, [rdi]
	jg	.label_1658
	mov	qword ptr [rax + rcx*8], rbx
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	lea	rcx, [rcx - 1]
	jg	.label_1660
	jmp	.label_1657
.label_1658:
	dec	r11
	nop	
	dec	r10
	mov	rbp, rbp
	dec	r9
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rsi
	jne	.label_1655
	jmp	.label_1662
.label_1657:
	lea	rsi, [rsi]
	mov	rdx, r9
.label_1662:
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	lea	rsi, [rdi + r8*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_1659:
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417d60

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdi, [rdi]
	lea	rcx, [rsi + rsi*2]
	nop	
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	nop	
	mov	qword ptr [rsp + 0x40], 0
	mov	rsp, rsp
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1676
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	lea	r13, [rax + rcx*8 + 8]
	lea	r15, [rax + rcx*8 + 0x10]
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1672:
	mov	rsp, rsp
	mov	rax, qword ptr [r15]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + r12*8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	je	.label_1671
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx]
	mov	rdx, rax
	mov	rsp, rsp
	shl	rdx, 4
	lea	rsi, [rsi]
	test	byte ptr [rcx + rdx + 8], 8
	je	.label_1671
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rsi, [rsi]
	lea	rbx, [rax + rax*2]
	nop	
	mov	rax, qword ptr [rcx + rbx*8 + 0x10]
	mov	rbp, rbp
	mov	r14, qword ptr [rax]
	mov	rbp, -1
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rbx*8 + 8], 2
	mov	rsp, rsp
	jl	.label_1677
	mov	rbp, qword ptr [rax + 8]
.label_1677:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r14
	call	re_node_set_contains
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1678
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rdi, [rdi]
	call	re_node_set_contains
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1674
.label_1678:
	nop	
	test	rbp, rbp
	mov	rsp, rsp
	jle	.label_1671
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	call	re_node_set_contains
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_1671
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, rbp
	nop	
	call	re_node_set_contains
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1671
.label_1674:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdx, [rax + rbx*8]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x30]
	nop	
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_add_intersect
	lea	rdi, [rdi]
	mov	ebp, eax
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_1679
	nop	dword ptr [rax]
.label_1671:
	mov	rbp, rbp
	inc	r12
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13]
	nop	
	cmp	r12, rax
	jl	.label_1672
	lea	rdi, [rdi]
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x10]
	jle	.label_1676
	xor	ebx, ebx
	mov	rsp, rsp
	lea	r14, [rsp + 0x30]
	nop	
.label_1670:
	mov	rax, qword ptr [r15]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1675
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, rbp
	call	re_node_set_contains
	mov	rbp, rbp
	lea	rsi, [rax - 1]
	lea	rdi, [rdi]
	mov	rdi, r12
	call	re_node_set_remove_at
.label_1675:
	lea	rdi, [rdi]
	inc	rbx
	cmp	rbx, qword ptr [r13]
	lea	rdi, [rdi]
	jl	.label_1670
.label_1676:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	free
	xor	ebp, ebp
.label_1673:
	mov	rbp, rbp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 0x48
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1679:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rbp, rbp
	jmp	.label_1673
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417fd0

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	r14, r9
	mov	qword ptr [rsp + 0x30], r14
	nop	
	mov	qword ptr [rsp + 0x28], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rsi, rcx
	mov	rbp, rbp
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1681
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1682:
	nop	
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x20]
	nop	
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	nop	
	mov	rdi, rbp
	mov	rdx, r15
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	rbp, rbp
	mov	al, 1
	jne	.label_1680
	nop	
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	mov	rsp, rsp
	jl	.label_1682
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1680
.label_1681:
	lea	rdi, [rdi]
	xor	eax, eax
.label_1680:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x418110

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	rsp, rsp
	mov	r10, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	lea	rsi, [rsi + rsi*4]
	mov	rbp, rbp
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rsp, rsp
	cmp	r11, r8
	jg	.label_1683
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	rbp, rbp
	mov	eax, 1
	cmp	r10, r8
	mov	rbp, rbp
	jl	.label_1683
	cmp	r11, r8
	sete	al
	movzx	r11d, al
	cmp	r10, r8
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	esi, al
	add	esi, esi
	xor	eax, eax
	or	esi, r11d
	lea	rdi, [rdi]
	je	.label_1683
	lea	rsi, [rsi]
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_1683:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x418180

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp + 0x38], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1684
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	eax, 1
	mov	cl, bl
	nop	
	shl	rax, cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	nop	
	mov	byte ptr [rsp + 0xf], cl
	mov	eax, r13d
	nop	
	and	eax, 1
	mov	dword ptr [rsp + 4], eax
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1692:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rax + r15*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdx, r12
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	nop	
	cmp	eax, 9
	lea	rsi, [rsi]
	je	.label_1685
	cmp	eax, 8
	mov	rsp, rsp
	je	.label_1697
	mov	rsp, rsp
	cmp	eax, 4
	jne	.label_1688
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_1688
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
	nop	
.label_1690:
	mov	rbp, rbp
	cmp	qword ptr [r14], r12
	jne	.label_1691
	lea	rsi, [rsi]
	cmp	rbx, 0x3f
	jg	.label_1689
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_1691
.label_1689:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	je	.label_1694
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_1687
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	nop	
	cmp	ecx, -1
	mov	rsp, rsp
	je	.label_1693
	lea	rdi, [rdi]
	cmp	rbx, 0x3f
	mov	rsp, rsp
	jg	.label_1691
	lea	rdi, [rdi]
	jmp	.label_1686
.label_1687:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xf], 0
	mov	rsp, rsp
	je	.label_1686
	xor	eax, eax
	cmp	dword ptr [rsp + 8], 0
	nop	
	je	.label_1691
	mov	rbp, rbp
	jmp	.label_1693
.label_1686:
	mov	rsp, rsp
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	word ptr cs:[rax + rax]
.label_1691:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x20], 0
	mov	rsp, rsp
	lea	r14, [r14 + 0x28]
	jne	.label_1690
	jmp	.label_1688
	nop	word ptr [rax + rax]
.label_1685:
	cmp	dword ptr [rsp + 8], 0
	je	.label_1688
	xor	eax, eax
	jmp	.label_1696
	nop	dword ptr [rax + rax]
.label_1697:
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 4], 0
	nop	
	je	.label_1688
	mov	eax, 0xffffffff
.label_1696:
	nop	
	cmp	qword ptr [rcx], rbx
	je	.label_1693
.label_1688:
	inc	r15
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_1692
.label_1684:
	lea	rsi, [rsi]
	shr	r13d, 1
	nop	
	and	r13d, 1
	lea	rdi, [rdi]
	jmp	.label_1695
.label_1694:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_1695:
	lea	rdi, [rdi]
	mov	eax, r13d
.label_1693:
	add	rsp, 0x48
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418430

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r13, r8
	mov	rbp, rbp
	mov	rbp, rcx
	mov	rbp, rbp
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rax + 0x98]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rax
	call	check_node_accept_bytes
	lea	rsi, [rsi]
	mov	ebx, eax
	mov	rsp, rsp
	test	ebx, ebx
	jle	.label_1698
	lea	rsi, [rsi]
	movsxd	rax, ebx
	add	rax, rbp
	mov	rbp, rbp
	cmp	rax, r13
	jg	.label_1698
	mov	rbp, rbp
	mov	rcx, qword ptr [r12]
	mov	rdi, qword ptr [rcx + rax*8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1699
	add	rdi, 8
	nop	
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1698
.label_1699:
	mov	rbp, rbp
	xor	ebx, ebx
.label_1698:
	mov	eax, ebx
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4184f0

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	nop	
	mov	r14, rdi
	test	r14, r14
	je	.label_1700
	nop	
	xor	ebx, ebx
	cmp	qword ptr [r14], 0
	jle	.label_1701
	lea	rdi, [rdi]
	xor	r15d, r15d
.label_1702:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	mov	rbp, rbp
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r14]
	jl	.label_1702
.label_1701:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	jmp	free
.label_1700:
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418570

	.globl update_regs
	.type update_regs, @function
update_regs:
	nop	
	mov	rdi, qword ptr [rdi]
	mov	rsp, rsp
	shl	rcx, 4
	mov	rbp, rbp
	lea	rax, [rdi + rcx]
	mov	ecx, dword ptr [rdi + rcx + 8]
	lea	rsi, [rsi]
	movzx	edi, cl
	cmp	edi, 9
	nop	
	je	.label_1705
	cmp	edi, 8
	lea	rsi, [rsi]
	jne	.label_1704
	nop	
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_1704
	lea	rsi, [rsi]
	shl	rax, 4
	mov	qword ptr [rsi + rax], r8
	mov	qword ptr [rsi + rax + 8], -1
	ret	
.label_1705:
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r9
	mov	rbp, rbp
	jge	.label_1704
	shl	rax, 4
	cmp	qword ptr [rsi + rax], r8
	jge	.label_1706
	nop	
	mov	qword ptr [rsi + rax + 8], r8
	lea	rsi, [rsi]
	shl	r9, 4
	mov	rdi, rdx
	nop	
	mov	rdx, r9
	mov	rbp, rbp
	jmp	memcpy
.label_1706:
	test	ecx, 0x80000
	je	.label_1703
	cmp	qword ptr [rdx + rax], -1
	mov	rbp, rbp
	je	.label_1703
	lea	rsi, [rsi]
	shl	r9, 4
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rdx
	nop	
	mov	rdx, r9
	nop	
	jmp	memcpy
.label_1703:
	mov	qword ptr [rsi + rax + 8], r8
.label_1704:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418640

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	r14, r8
	nop	
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	lea	rax, [rdi - 1]
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	jle	.label_1707
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rax, 4
	mov	rbp, rbp
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rdi + rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rsi], rax
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbx + 0x10]
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rcx
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movups	xmmword ptr [r14], xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	nop	
	mov	rax, qword ptr [rax + rbx + 8]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	ret	
.label_1707:
	mov	edi, OFFSET FLAT:.str.26
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x555
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x418720

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r13, r8
	mov	rsp, rsp
	mov	rbx, rcx
	nop	
	mov	rbp, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rbp + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [r15]
	mov	r14, r13
	mov	rsp, rsp
	shl	r14, 4
	mov	ecx, dword ptr [rax + r14 + 8]
	mov	rsp, rsp
	test	cl, 8
	jne	.label_1713
	test	ecx, 0x100000
	nop	
	jne	.label_1716
	mov	qword ptr [rsp + 0x20], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	movzx	ecx, cl
	lea	rdi, [rdi]
	cmp	ecx, 4
	mov	rbp, rbp
	jne	.label_1718
	mov	rsp, rsp
	mov	rax, qword ptr [rax + r14]
	shl	rax, 4
	mov	rdi, qword ptr [rax + rdx + 0x10]
	mov	rax, qword ptr [rax + rdx + 0x18]
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	sub	rbx, rdi
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1712
	cmp	rax, -1
	mov	r12, -1
	lea	rdi, [rdi]
	je	.label_1711
	cmp	rdi, -1
	mov	rbp, rbp
	je	.label_1711
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rsp, rsp
	je	.label_1712
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	rcx, qword ptr [rsp + 0x20]
	nop	
	mov	rsi, qword ptr [rcx]
	sub	rax, rsi
	lea	rsi, [rsi]
	cmp	rax, rbx
	jl	.label_1711
	mov	rax, qword ptr [rbp + 8]
	add	rsi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rax + rcx]
	mov	rdx, rbx
	call	memcmp
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	jne	.label_1711
.label_1712:
	mov	rsp, rsp
	cmp	rax, rdi
	mov	rsp, rsp
	jne	.label_1708
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	nop	
	mov	rsi, r13
	mov	rbp, rbp
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_1711
	mov	rax, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	nop	
	mov	r12, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp + 0xb8]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	add	rdi, 8
	lea	rdi, [rdi]
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_1711
	jmp	.label_1708
.label_1713:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, qword ptr [rbp + 0xb8]
	nop	
	mov	r14, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, r9
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	mov	rsi, r13
	lea	rsi, [rsi]
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_1711
	lea	rax, [r13 + r13*2]
	mov	r12, -1
	cmp	qword ptr [rbx + rax*8 + 8], 0
	jle	.label_1711
	add	r14, 8
	mov	rbp, rbp
	lea	r15, [rbx + rax*8 + 8]
	mov	rsp, rsp
	mov	r13, qword ptr [rbx + rax*8 + 0x10]
	mov	rsp, rsp
	mov	r12, -1
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1709:
	mov	rsp, rsp
	mov	rbx, qword ptr [r13 + rbp*8]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_1717
	cmp	r12, -1
	lea	rdi, [rdi]
	jne	.label_1719
	mov	r12, rbx
.label_1717:
	lea	rsi, [rsi]
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [r15]
	jl	.label_1709
	mov	rbp, rbp
	jmp	.label_1711
.label_1716:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbp
	call	check_node_accept_bytes
	nop	
	movsxd	rbx, eax
.label_1708:
	mov	rbp, rbp
	test	rbx, rbx
	jne	.label_1715
.label_1718:
	mov	rbp, rbp
	add	r14, qword ptr [r15]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r14
	call	check_node_accept
	mov	r12, -1
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rdi, [rdi]
	test	al, al
	nop	
	je	.label_1711
.label_1715:
	mov	rax, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	add	rbx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1710
	mov	rsp, rsp
	mov	r12, -1
	nop	
	cmp	rbx, qword ptr [rbp + 0xa8]
	jg	.label_1711
	nop	
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rax + rbx*8]
	nop	
	test	rdi, rdi
	nop	
	je	.label_1711
	mov	rsp, rsp
	add	rdi, 8
	mov	rsi, r14
	nop	
	call	re_node_set_contains
	nop	
	test	rax, rax
	je	.label_1711
.label_1710:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	r12, r14
	lea	rdi, [rdi]
	jmp	.label_1711
.label_1719:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1714
	lea	rdi, [rdi]
	mov	r9, rbp
	nop	
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_1711
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	nop	
	call	push_fail_stack
	mov	rbp, rbp
	mov	rbx, -2
	test	eax, eax
	je	.label_1711
.label_1714:
	mov	r12, rbx
.label_1711:
	nop	
	mov	rax, r12
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x418b20

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x18
	nop	
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], r8
	lea	rdi, [rdi]
	mov	r15, rcx
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	mov	r14, qword ptr [rbx]
	mov	rsp, rsp
	lea	rcx, [r14 + 1]
	mov	qword ptr [rbx], rcx
	mov	rax, qword ptr [rbx + 8]
	nop	
	cmp	rcx, rax
	mov	rsp, rsp
	jne	.label_1720
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	shl	rax, 5
	mov	rsp, rsp
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1721
	shl	qword ptr [rbx + 8], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], rax
.label_1720:
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	shl	rcx, 4
	nop	
	lea	r12, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r12], rbp
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	qword ptr [rax + r12 + 8], r13
	mov	rsp, rsp
	shl	r15, 4
	mov	rdi, r15
	call	malloc
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + r12 + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + r12 + 0x10]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_1721
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	nop	
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	lea	rcx, [r14 + r14*2]
	shl	rcx, 4
	lea	rdi, [rdi]
	lea	rdi, [rax + rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	re_node_set_init_copy
.label_1721:
	mov	eax, 0xc
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418c70
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1722
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_1722
.label_1723:
	ret	
.label_1722:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1723
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418ca0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1724
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1724:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x418cc0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418cd0
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
	#Procedure 0x418ce0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1725
.label_1726:
	ret	
.label_1725:
	cmp	edi, 0x7f
	je	.label_1726
	xor	eax, eax
	jmp	.label_1726
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418d00
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
	#Procedure 0x418d10
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
	#Procedure 0x418d20
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
	#Procedure 0x418d30
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
	#Procedure 0x418d40
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_1727
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_1727
.label_1728:
	ret	
.label_1727:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_1728
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418d70
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1729
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_1729:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x418d90

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
	#Procedure 0x418da0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1730
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1730:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x418dc0
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
	#Procedure 0x418dd0
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
	#Procedure 0x418de0

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
	je	.label_1732
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1731
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_1731
.label_1732:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_1731
	test	cl, cl
	jne	.label_1731
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_1731:
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
	#Procedure 0x418e80

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
	je	.label_1734
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1733
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_1735
.label_1733:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1734
.label_1735:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1734:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x418ed0

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
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1736
	nop	
	mov	rax, rcx
.label_1736:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418f10
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	mov	rbp, rbp
	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_1737
	lea	rdi, [rdi]
	mov	edi, ebx
	call	iswcntrl
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
.label_1737:
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x418f40

	.globl mb_copy
	.type mb_copy, @function
mb_copy:
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rax, qword ptr [rbx]
	lea	rsi, [rbx + 0x18]
	mov	rbp, rbp
	cmp	rax, rsi
	mov	rsp, rsp
	je	.label_1738
	mov	rbp, rbp
	mov	qword ptr [r14], rax
	mov	rbp, rbp
	jmp	.label_1739
.label_1738:
	lea	rdi, [rdi]
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rbp, rbp
	mov	qword ptr [r14], r15
.label_1739:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	al, byte ptr [rbx + 0x10]
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	mov	byte ptr [r14 + 0x10], al
	je	.label_1740
	mov	eax, dword ptr [rbx + 0x14]
	mov	dword ptr [r14 + 0x14], eax
.label_1740:
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x418fc0

	.globl is_basic
	.type is_basic, @function
is_basic:
	mov	rsp, rsp
	mov	eax, edi
	mov	rbp, rbp
	shr	eax, 3
	mov	rsp, rsp
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	nop	
	bt	eax, edi
	mov	rsp, rsp
	setb	al
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x418ff0

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
	js	.label_1741
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_1743
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
	je	.label_1741
.label_1743:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1741
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_1742
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_1742:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1741:
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
	#Procedure 0x4190b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1744
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_1744
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_1744:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x4190e0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_1745
	mov	rbp, rbp
	ret	
.label_1745:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	16
	#Procedure 0x419100

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
	jne	.label_1748
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1748
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1746
.label_1748:
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
.label_1746:
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
	je	.label_1747
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1747:
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
	#Procedure 0x4191b0

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
