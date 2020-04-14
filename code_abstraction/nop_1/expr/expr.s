	.section	.text
	.align	16
	#Procedure 0x401e90

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
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
	call	__printf_chk
	mov	edi, 0xa
	call	putchar_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
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
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402060

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.24
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.12
	call	strcmp
	test	eax, eax
	je	.label_9
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.12
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.12
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.38
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
	#Procedure 0x402180

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.14
	mov	esi, OFFSET FLAT:.str.15
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.14
	call	textdomain
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rsp + 0x18], 0
	mov	qword ptr [word ptr [rsp + 16]], OFFSET FLAT:.str.20
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.19
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.18_0
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.17_0
	mov	r9d, OFFSET FLAT:usage
	xor	eax, eax
	mov	edi, ebp
	mov	rsi, rbx
	call	parse_long_options
	cmp	ebp, 2
	jb	.label_11
	mov	rax, qword ptr [rbx + 8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_12
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2d
	jne	.label_12
	cmp	byte ptr [rax + 2], 0
	jne	.label_12
	dec	ebp
	cmp	ebp, 1
	jbe	.label_11
	add	rbx, 8
.label_12:
	add	rbx, 8
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	edi, 1
	call	eval
	mov	rbx, rax
	call	nomoreargs
	test	al, al
	je	.label_13
	mov	rdi, rbx
	call	printv
	mov	rdi, rbx
	call	null
	movzx	eax, al
	add	rsp, 0x28
	pop	rbx
	pop	rbp
	ret	
.label_11:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 2
	call	usage
.label_13:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax]
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4022e0

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  3
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0

	.globl eval
	.type eval, @function
eval:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edi
	movzx	edi, r14b
	call	eval1
	mov	rbx, rax
	jmp	.label_14
	nop	word ptr cs:[rax + rax]
.label_17:
	mov	rdi, rbp
	call	freev
.label_14:
	mov	edi, OFFSET FLAT:.str.39
	call	nextarg
	test	al, al
	je	.label_18
.label_15:
	test	r14b, r14b
	je	.label_19
	mov	rdi, rbx
	call	null
	jmp	.label_21
	nop	word ptr cs:[rax + rax]
.label_19:
	xor	eax, eax
.label_21:
	movzx	edi, al
	call	eval1
	mov	rbp, rax
	mov	rdi, rbx
	call	null
	test	al, al
	je	.label_17
	mov	rdi, rbx
	call	freev
	mov	rdi, rbp
	call	null
	test	al, al
	je	.label_20
	mov	rdi, rbp
	call	freev
	xor	edi, edi
	call	int_value
	mov	rbp, rax
.label_20:
	mov	edi, OFFSET FLAT:.str.39
	call	nextarg
	test	al, al
	mov	rbx, rbp
	jne	.label_15
	jmp	.label_16
.label_18:
	mov	rbp, rbx
.label_16:
	mov	rax, rbp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4023a0

	.globl nomoreargs
	.type nomoreargs, @function
nomoreargs:
	mov	rax,  qword ptr [word ptr [rip + args]]
	cmp	qword ptr [rax], 0
	sete	al
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4023b0

	.globl printv
	.type printv, @function
printv:
	push	rax
	mov	rax, rdi
	mov	ecx, dword ptr [rax]
	cmp	ecx, 1
	je	.label_22
	test	ecx, ecx
	jne	.label_23
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	add	rax, 8
	mov	esi, 0xa
	mov	rdx, rax
	call	__gmpz_out_str
	mov	edi, 0xa
	pop	rax
	jmp	putchar_unlocked
.label_22:
	mov	rdi, qword ptr [rax + 8]
	pop	rax
	jmp	puts
.label_23:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402400

	.globl null
	.type null, @function
null:
	mov	eax, dword ptr [rdi]
	cmp	eax, 1
	je	.label_24
	test	eax, eax
	jne	.label_27
	cmp	dword ptr [rdi + 0xc], 0
	sete	al
	ret	
.label_24:
	mov	rcx, qword ptr [rdi + 8]
	mov	dl, byte ptr [rcx]
	mov	al, 1
	test	dl, dl
	je	.label_26
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	movzx	edx, dl
	lea	rcx, [rdx + rcx + 1]
.label_28:
	movzx	edx, byte ptr [rcx - 1]
	cmp	edx, 0x30
	jne	.label_25
	cmp	byte ptr [rcx], 0
	lea	rcx, [rcx + 1]
	jne	.label_28
.label_26:
	ret	
.label_25:
	xor	eax, eax
	ret	
.label_27:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402450

	.globl eval1
	.type eval1, @function
eval1:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edi
	movzx	edi, r14b
	call	eval2
	jmp	.label_29
	nop	word ptr cs:[rax + rax]
.label_32:
	mov	rdi, rbx
	call	freev
	mov	rdi, rbp
	call	freev
	xor	edi, edi
	call	int_value
.label_29:
	mov	rbx, rax
	jmp	.label_34
	nop	dword ptr [rax]
.label_31:
	mov	rdi, rbp
	call	freev
.label_34:
	mov	edi, OFFSET FLAT:.str.40
	call	nextarg
	test	al, al
	je	.label_30
	test	r14b, r14b
	je	.label_33
	mov	rdi, rbx
	call	null
	xor	al, 1
	jmp	.label_35
	nop	word ptr [rax + rax]
.label_33:
	xor	eax, eax
.label_35:
	movzx	edi, al
	call	eval2
	mov	rbp, rax
	mov	rdi, rbx
	call	null
	test	al, al
	jne	.label_32
	mov	rdi, rbp
	call	null
	test	al, al
	je	.label_31
	jmp	.label_32
.label_30:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4024f0

	.globl nextarg
	.type nextarg, @function
nextarg:
	push	rbx
	mov	rax, rdi
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_36
	mov	rsi, rax
	call	strcmp
	test	eax, eax
	sete	al
	movzx	ecx, al
	lea	rcx, [rbx + rcx*8]
	mov	qword ptr [word ptr [rip + args]],  rcx
	pop	rbx
	ret	
.label_36:
	xor	eax, eax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402530

	.globl freev
	.type freev, @function
freev:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 8]
	cmp	dword ptr [rbx], 1
	jne	.label_37
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_38
.label_37:
	call	__gmpz_clear
.label_38:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402560

	.globl int_value
	.type int_value, @function
int_value:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rdi, [rbx + 8]
	mov	rsi, r14
	call	__gmpz_init_set_ui
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025a0

	.globl eval2
	.type eval2, @function
eval2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	movzx	r14d, dil
	mov	edi, r14d
	call	eval3
	jmp	.label_41
	nop	dword ptr [rax]
.label_39:
	mov	rdi, r15
	call	freev
	mov	rdi, rbp
	call	freev
	mov	rdi, rbx
	call	int_value
.label_41:
	mov	r15, rax
	mov	edi, OFFSET FLAT:.str.41
	call	nextarg
	test	al, al
	mov	r13d, 0
	jne	.label_42
	mov	edi, OFFSET FLAT:.str.42
	call	nextarg
	mov	r13d, 1
	test	al, al
	jne	.label_42
	mov	edi, OFFSET FLAT:.str.43
	call	nextarg
	mov	r13d, 2
	test	al, al
	jne	.label_42
	mov	edi, OFFSET FLAT:.str.44
	call	nextarg
	test	al, al
	jne	.label_42
	mov	edi, OFFSET FLAT:.str.45
	call	nextarg
	mov	r13d, 3
	test	al, al
	jne	.label_42
	mov	edi, OFFSET FLAT:.str.46
	call	nextarg
	mov	r13d, 4
	test	al, al
	jne	.label_42
	mov	edi, OFFSET FLAT:.str.47
	call	nextarg
	mov	r13d, 5
	test	al, al
	je	.label_45
	nop	dword ptr [rax]
.label_42:
	mov	edi, r14d
	call	eval3
	mov	rbp, rax
	test	r14b, r14b
	mov	ebx, 0
	je	.label_39
	mov	rdi, r15
	call	tostring
	mov	rdi, rbp
	call	tostring
	mov	rbx, qword ptr [r15 + 8]
	mov	rdi, rbx
	call	looks_like_integer
	test	al, al
	je	.label_44
	mov	r12, qword ptr [rbp + 8]
	mov	rdi, r12
	call	looks_like_integer
	test	al, al
	je	.label_44
	mov	rdi, rbx
	mov	rsi, r12
	call	strintcmp
	jmp	.label_40
	nop	word ptr cs:[rax + rax]
.label_44:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [r15 + 8]
	mov	rsi, qword ptr [rbp + 8]
	call	strcoll
.label_40:
	mov	ebx, eax
	mov	eax, r13d
	cmp	r13d, 5
	ja	.label_46
	jmp	qword ptr [word ptr [+ (rax * 8) + label_43]]
.label_1800:
	shr	ebx, 0x1f
	jmp	.label_39
.label_1801:
	test	ebx, ebx
	setle	al
	movzx	ebx, al
	jmp	.label_39
.label_1802:
	test	ebx, ebx
	sete	al
	movzx	ebx, al
	jmp	.label_39
.label_1803:
	test	ebx, ebx
	setne	al
	movzx	ebx, al
	jmp	.label_39
.label_1804:
	shr	ebx, 0x1f
	xor	rbx, 1
	jmp	.label_39
.label_1805:
	test	ebx, ebx
	setg	al
	movzx	ebx, al
	jmp	.label_39
.label_45:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_46:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl eval3
	.type eval3, @function
eval3:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	movzx	r13d, dil
	mov	edi, r13d
	call	eval4
	mov	r14, rax
	mov	r15, r14
	add	r15, 8
	mov	r12d, OFFSET FLAT:__gmpz_add
	jmp	.label_51
	nop	dword ptr [rax]
.label_48:
	mov	rdi, rbx
	call	freev
.label_51:
	mov	edi, OFFSET FLAT:.str_1
	call	nextarg
	xor	ebp, ebp
	test	al, al
	jne	.label_47
	mov	edi, OFFSET FLAT:.str.52
	call	nextarg
	mov	ebp, 1
	test	al, al
	je	.label_50
.label_47:
	mov	edi, r13d
	call	eval4
	mov	rbx, rax
	test	r13b, r13b
	je	.label_48
	mov	rdi, r14
	call	toarith
	test	al, al
	je	.label_49
	mov	rdi, rbx
	call	toarith
	test	al, al
	je	.label_49
	test	ebp, ebp
	mov	eax, OFFSET FLAT:__gmpz_sub
	cmove	rax, r12
	mov	rdx, rbx
	add	rdx, 8
	mov	rdi, r15
	mov	rsi, r15
	call	rax
	jmp	.label_48
.label_50:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402840

	.globl tostring
	.type tostring, @function
tostring:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	je	.label_52
	test	eax, eax
	jne	.label_53
	lea	r14, [rbx + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, r14
	call	__gmpz_get_str
	mov	r15, rax
	mov	rdi, r14
	call	__gmpz_clear
	mov	qword ptr [rbx + 8], r15
	mov	dword ptr [rbx], 1
.label_52:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_53:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402890

	.globl looks_like_integer
	.type looks_like_integer, @function
looks_like_integer:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	lea	rcx, [rax + rdi + 1]
	nop	word ptr cs:[rax + rax]
.label_55:
	movsx	eax, byte ptr [rcx - 1]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_54
	mov	al, 1
	cmp	byte ptr [rcx], 0
	lea	rcx, [rcx + 1]
	jne	.label_55
	ret	
.label_54:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028d0

	.globl eval4
	.type eval4, @function
eval4:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	movzx	r13d, dil
	mov	edi, r13d
	call	eval5
	mov	r14, rax
	mov	r15, r14
	add	r15, 8
	mov	r12d, OFFSET FLAT:__gmpz_tdiv_q
	jmp	.label_61
	nop	dword ptr [rax]
.label_56:
	mov	rdi, rbx
	call	freev
.label_61:
	mov	edi, OFFSET FLAT:.str.54
	call	nextarg
	xor	ebp, ebp
	test	al, al
	jne	.label_58
	mov	edi, OFFSET FLAT:.str.55
	call	nextarg
	mov	ebp, 1
	test	al, al
	jne	.label_58
	mov	edi, OFFSET FLAT:.str.56
	call	nextarg
	mov	ebp, 2
	test	al, al
	je	.label_63
.label_58:
	mov	edi, r13d
	call	eval5
	mov	rbx, rax
	test	r13b, r13b
	je	.label_56
	mov	rdi, r14
	call	toarith
	test	al, al
	je	.label_57
	mov	rdi, rbx
	call	toarith
	test	al, al
	je	.label_57
	test	ebp, ebp
	mov	eax, OFFSET FLAT:__gmpz_mul
	je	.label_59
	cmp	dword ptr [rbx + 0xc], 0
	je	.label_62
	cmp	ebp, 1
	mov	eax, OFFSET FLAT:__gmpz_tdiv_r
	cmove	rax, r12
.label_59:
	mov	rdx, rbx
	add	rdx, 8
	mov	rdi, r15
	mov	rsi, r15
	call	rax
	jmp	.label_56
.label_63:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	jmp	.label_60
.label_62:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
.label_60:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029e0

	.globl toarith
	.type toarith, @function
toarith:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	eax, dword ptr [rbx]
	mov	r14b, 1
	test	eax, eax
	je	.label_64
	cmp	eax, 1
	jne	.label_65
	mov	rbp, qword ptr [rbx + 8]
	mov	rdi, rbp
	call	looks_like_integer
	test	al, al
	je	.label_66
	lea	rdi, [rbx + 8]
	mov	edx, 0xa
	mov	rsi, rbp
	call	__gmpz_init_set_str
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], 0
	jmp	.label_64
.label_66:
	xor	r14d, r14d
.label_64:
	mov	al, r14b
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_65:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a40

	.globl eval5
	.type eval5, @function
eval5:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	movzx	r15d, dil
	mov	edi, r15d
	call	eval6
	mov	r14, rax
	jmp	.label_68
	nop	dword ptr [rax + rax]
.label_69:
	mov	rdi, rbx
	call	freev
.label_68:
	mov	edi, OFFSET FLAT:.str.58
	call	nextarg
	test	al, al
	je	.label_67
	mov	edi, r15d
	call	eval6
	mov	rbx, rax
	test	r15b, r15b
	je	.label_69
	mov	rdi, r14
	mov	rsi, rbx
	call	docolon
	mov	rbp, rax
	mov	rdi, r14
	call	freev
	mov	r14, rbp
	jmp	.label_69
.label_67:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402ab0

	.globl eval6
	.type eval6, @function
eval6:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:.str_1
	call	nextarg
	test	al, al
	je	.label_74
	call	require_more_args
	mov	rax,  qword ptr [word ptr [rip + args]]
	lea	rcx, [rax + 8]
	mov	qword ptr [word ptr [rip + args]],  rcx
	mov	rdi, qword ptr [rax]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	str_value
.label_74:
	mov	edi, OFFSET FLAT:.str.59
	call	nextarg
	test	al, al
	je	.label_80
	movzx	edi, bl
	call	eval6
	mov	rbx, rax
	mov	rdi, rbx
	call	tostring
	mov	rdi, qword ptr [rbx + 8]
	call	mbslen
	mov	rdi, rax
	call	int_value
	mov	r14, rax
	jmp	.label_72
.label_80:
	mov	edi, OFFSET FLAT:.str.60
	call	nextarg
	test	al, al
	je	.label_73
	movzx	ebp, bl
	mov	edi, ebp
	call	eval6
	mov	r12, rax
	mov	edi, ebp
	call	eval6
	mov	r14, rax
	test	bl, bl
	je	.label_75
	mov	rdi, r12
	mov	rsi, r14
	call	docolon
	mov	rbx, rax
	mov	rdi, r12
	call	freev
	mov	r12, rbx
.label_75:
	mov	rdi, r14
	jmp	.label_78
.label_73:
	mov	edi, OFFSET FLAT:.str.61
	call	nextarg
	test	al, al
	je	.label_70
	movzx	ebx, bl
	mov	edi, ebx
	call	eval6
	mov	rbp, rax
	mov	edi, ebx
	call	eval6
	mov	rbx, rax
	mov	rdi, rbp
	call	tostring
	mov	rdi, rbx
	call	tostring
	mov	rdi, qword ptr [rbp + 8]
	mov	rsi, qword ptr [rbx + 8]
	call	mbs_logical_cspn
	mov	rdi, rax
	call	int_value
	mov	r14, rax
	mov	rdi, rbp
	call	freev
.label_72:
	mov	rdi, rbx
	call	freev
	mov	rax, r14
	jmp	.label_76
.label_70:
	mov	edi, OFFSET FLAT:.str.62
	call	nextarg
	test	al, al
	je	.label_77
	movzx	ebp, bl
	mov	edi, ebp
	call	eval6
	mov	r14, rax
	mov	edi, ebp
	call	eval6
	mov	rbx, rax
	mov	edi, ebp
	call	eval6
	mov	r15, rax
	mov	rdi, r14
	call	tostring
	mov	rdi, rbx
	call	toarith
	test	al, al
	je	.label_71
	mov	rdi, r15
	call	toarith
	test	al, al
	je	.label_71
	mov	rdi, rbx
	add	rdi, 8
	call	getsize
	mov	rbp, rax
	mov	rdi, r15
	add	rdi, 8
	call	getsize
	mov	rdi, qword ptr [r14 + 8]
	mov	rsi, rbp
	mov	rdx, rax
	call	mbs_logical_substr
	mov	rbp, rax
	mov	rdi, rbp
	call	str_value
	mov	r12, rax
	mov	rdi, rbp
	call	free
	jmp	.label_79
.label_77:
	movzx	edi, bl
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	eval7
.label_71:
	mov	edi, OFFSET FLAT:.str_0
	call	str_value
	mov	r12, rax
.label_79:
	mov	rdi, r14
	call	freev
	mov	rdi, rbx
	call	freev
	mov	rdi, r15
.label_78:
	call	freev
	mov	rax, r12
.label_76:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402cb0

	.globl docolon
	.type docolon, @function
docolon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x160
	mov	rbx, rsi
	mov	r14, rdi
	call	tostring
	mov	rdi, rbx
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
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rsp + 0x120]
	mov	rdi, rbx
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_88
	and	byte ptr [rsp + 0x158], 0x7f
	mov	rbx, qword ptr [r14 + 8]
	mov	rdi, rbx
	call	strlen
	lea	rdi, [rsp + 0x120]
	lea	r8, [rsp]
	xor	ecx, ecx
	mov	rsi, rbx
	mov	rdx, rax
	call	rpl_re_match
	mov	rbx, rax
	test	rbx, rbx
	js	.label_86
	cmp	qword ptr [rsp + 0x150], 0
	je	.label_89
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [r14 + 8]
	mov	rax, qword ptr [rsp + 8]
	add	rdi, qword ptr [rax + 8]
	call	str_value
	jmp	.label_83
.label_86:
	cmp	rbx, -1
	jne	.label_84
	cmp	qword ptr [rsp + 0x150], 0
	je	.label_87
	mov	edi, OFFSET FLAT:.str_0
	call	str_value
	jmp	.label_83
.label_89:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	je	.label_81
	mov	rdi, qword ptr [r14 + 8]
	mov	rsi, rbx
	call	mbs_offset_to_chars
	mov	rbx, rax
.label_81:
	mov	rdi, rbx
	jmp	.label_82
.label_87:
	xor	edi, edi
.label_82:
	call	int_value
.label_83:
	mov	rbx, rax
	cmp	qword ptr [rsp], 0
	je	.label_85
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_85:
	mov	qword ptr [rsp + 0x140], 0
	lea	rdi, [rsp + 0x120]
	call	rpl_regfree
	mov	rax, rbx
	add	rsp, 0x160
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_88:
	mov	edi, 2
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	call	error
.label_84:
	mov	ebp, 0x4b
	cmp	rbx, -2
	jne	.label_90
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_90:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 3
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e80

	.globl require_more_args
	.type require_more_args, @function
require_more_args:
	push	rbx
	call	nomoreargs
	test	al, al
	jne	.label_91
	pop	rbx
	ret	
.label_91:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax - 8]
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ed0

	.globl str_value
	.type str_value, @function
str_value:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	dword ptr [rbx], 1
	mov	rdi, r14
	call	xstrdup
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f10

	.globl mbs_logical_cspn
	.type mbs_logical_cspn, @function
mbs_logical_cspn:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x80
	mov	r14, rsi
	mov	rbx, rdi
	xor	r13d, r13d
	cmp	byte ptr [r14], 0
	je	.label_97
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_104
	mov	qword ptr [rsp + 0x50], rbx
	mov	byte ptr [rsp + 0x40], 0
	mov	qword ptr [rsp + 0x44], 0
	mov	byte ptr [rsp + 0x4c], 0
	lea	rdi, [rsp + 0x40]
	call	mbuiter_multi_next
	xor	r13d, r13d
	cmp	byte ptr [rsp + 0x60], 0
	je	.label_99
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	je	.label_97
.label_99:
	xor	r13d, r13d
	lea	r15, [rsp + 0x40]
	lea	r12, [rsp]
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_100:
	inc	rbx
	cmp	qword ptr [rsp + 0x58], 1
	jne	.label_96
	mov	rax, qword ptr [rsp + 0x50]
	movsx	esi, byte ptr [rax]
	mov	rdi, r14
	call	mbschr
	test	rax, rax
	je	.label_93
	jmp	.label_101
	nop	dword ptr [rax]
.label_96:
	mov	qword ptr [rsp + 0x10], r14
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
.label_98:
	mov	rax, qword ptr [rsp + 0x18]
	add	qword ptr [rsp + 0x10], rax
.label_92:
	mov	byte ptr [rsp + 0xc], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x20], 0
	setne	cl
	mov	eax, dword ptr [rsp + 0x24]
	je	.label_103
	test	eax, eax
	je	.label_93
.label_103:
	cmp	byte ptr [rsp + 0x60], 0
	je	.label_94
	xor	cl, 1
	test	cl, 1
	jne	.label_94
	cmp	eax, dword ptr [rsp + 0x64]
	jne	.label_98
	jmp	.label_102
.label_94:
	mov	rdx, qword ptr [rsp + 0x18]
	cmp	rdx, qword ptr [rsp + 0x58]
	jne	.label_98
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	jne	.label_98
	jmp	.label_102
	nop	word ptr cs:[rax + rax]
.label_93:
	mov	rax, qword ptr [rsp + 0x58]
	add	qword ptr [rsp + 0x50], rax
	mov	byte ptr [rsp + 0x4c], 0
	mov	rdi, r15
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x60], 0
	je	.label_100
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_100
	jmp	.label_97
.label_104:
	mov	rdi, rbx
	mov	rsi, r14
	call	strcspn
	mov	r13, rax
	cmp	byte ptr [rbx + r13], 0
	je	.label_95
	inc	r13
	jmp	.label_97
.label_95:
	xor	r13d, r13d
	jmp	.label_97
.label_102:
	mov	r13, rbx
.label_97:
	mov	rax, r13
	add	rsp, 0x80
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_101:
	mov	r13, rbx
	jmp	.label_97
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030c0

	.globl getsize
	.type getsize, @function
getsize:
	push	rbx
	mov	rbx, rdi
	mov	rax, -1
	cmp	dword ptr [rbx + 4], 0
	js	.label_105
	mov	rdi, rbx
	call	__gmpz_fits_ulong_p
	test	eax, eax
	je	.label_106
	mov	rdi, rbx
	call	__gmpz_get_ui
	cmp	rax, -1
	jne	.label_105
.label_106:
	mov	rax, -2
.label_105:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403100

	.globl mbs_logical_substr
	.type mbs_logical_substr, @function
mbs_logical_substr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r13, rdx
	mov	r14, rsi
	mov	r12, rdi
	call	strlen
	mov	r15, rax
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	mov	rbx, r15
	jb	.label_112
	mov	rdi, r12
	call	mbslen
	mov	rbx, rax
.label_112:
	lea	rax, [r14 - 1]
	cmp	rax, rbx
	jae	.label_113
	lea	rax, [r13 + 1]
	cmp	rax, 1
	ja	.label_107
.label_113:
	mov	edi, OFFSET FLAT:.str_0
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	xstrdup
.label_107:
	sub	rbx, r14
	inc	rbx
	cmp	rbx, r13
	cmova	rbx, r13
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jne	.label_109
	lea	rdi, [rbx + 1]
	call	xmalloc
	mov	r15, rax
	lea	rsi, [r12 + r14 - 1]
	mov	rcx, -1
	mov	rdi, r15
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	r12, rax
	jmp	.label_108
.label_109:
	inc	r15
	mov	rdi, r15
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [rsp + 0x18], r12
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x28], 0
	sete	al
	cmp	dword ptr [rsp + 0x2c], 0
	setne	cl
	test	rbx, rbx
	mov	r12, r15
	je	.label_108
	or	al, cl
	mov	r12, r15
	je	.label_108
	mov	ebp, 1
	lea	r13, [rsp + 8]
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_111:
	cmp	rbp, r14
	jb	.label_110
	dec	rbx
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, -1
	mov	rdi, r12
	call	__mempcpy_chk
	mov	r12, rax
.label_110:
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r13
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x28], 0
	sete	al
	cmp	dword ptr [rsp + 0x2c], 0
	setne	cl
	test	rbx, rbx
	je	.label_108
	inc	rbp
	or	al, cl
	jne	.label_111
.label_108:
	mov	byte ptr [r12], 0
	mov	rax, r15
	add	rsp, 0x48
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
	#Procedure 0x403280

	.globl eval7
	.type eval7, @function
eval7:
	push	rbx
	mov	ebx, edi
	call	require_more_args
	mov	edi, OFFSET FLAT:.str.68
	call	nextarg
	test	al, al
	je	.label_116
	movzx	edi, bl
	call	eval
	mov	rbx, rax
	call	nomoreargs
	test	al, al
	jne	.label_114
	mov	edi, OFFSET FLAT:.str.70
	call	nextarg
	test	al, al
	je	.label_118
	mov	rax, rbx
	pop	rbx
	ret	
.label_116:
	mov	edi, OFFSET FLAT:.str.70
	call	nextarg
	test	al, al
	jne	.label_115
	mov	rax,  qword ptr [word ptr [rip + args]]
	lea	rcx, [rax + 8]
	mov	qword ptr [word ptr [rip + args]],  rcx
	mov	rdi, qword ptr [rax]
	pop	rbx
	jmp	str_value
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax - 8]
	jmp	.label_117
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax]
.label_117:
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_115:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403370

	.globl mbs_offset_to_chars
	.type mbs_offset_to_chars, @function
mbs_offset_to_chars:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r15, rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 0x18], r14
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	xor	ebx, ebx
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_121
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	je	.label_119
.label_121:
	xor	ebx, ebx
	lea	r12, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_120:
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, r14
	cmp	rax, r15
	adc	rbx, 0
	cmp	rax, r15
	jae	.label_119
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r12
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_120
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	jne	.label_120
.label_119:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403410
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403420
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403430

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_122
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_124
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_124
.label_122:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_123
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_124:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_125
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_123:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_125:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
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
	#Procedure 0x4034f0

	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_126
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
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
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_128
	cmp	eax, 0x76
	jne	.label_127
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_128:
	xor	edi, edi
	call	rbx
.label_127:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035f0
	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:

	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xc8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_132
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_132:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:.str_0
	mov	edx, OFFSET FLAT:.str_1
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_130
	mov	rcx, qword ptr [rsp + 0xf0]
	cmp	eax, 0x68
	je	.label_131
	cmp	eax, 0x76
	je	.label_133
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_129
.label_131:
	xor	edi, edi
.label_129:
	call	rcx
.label_130:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_133:
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf8]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp + 0xb0]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403700

	.globl mbschr
	.type mbschr, @function
mbschr:
	push	rbp
	push	rbx
	sub	rsp, 0x48
	mov	ebp, esi
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	mov	ecx, ebp
	and	ecx, 0xf0
	cmp	ecx, 0x30
	jb	.label_136
	cmp	rax, 2
	jb	.label_136
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	xor	eax, eax
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_137
	mov	ecx, dword ptr [rsp + 0x2c]
	test	ecx, ecx
	je	.label_138
.label_137:
	movzx	ebp, bpl
	lea	rbx, [rsp + 8]
	nop	word ptr [rax + rax]
.label_135:
	cmp	qword ptr [rsp + 0x20], 1
	jne	.label_134
	mov	rax, qword ptr [rsp + 0x18]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, ebp
	je	.label_138
.label_134:
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, rbx
	call	mbuiter_multi_next
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_135
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	mov	eax, 0
	jne	.label_135
.label_138:
	add	rsp, 0x48
	pop	rbx
	pop	rbp
	ret	
.label_136:
	mov	rdi, rbx
	mov	esi, ebp
	add	rsp, 0x48
	pop	rbx
	pop	rbp
	jmp	strchr
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037d0

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_142
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	call	mbuiter_multi_next
	xor	ebx, ebx
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_140
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	je	.label_139
.label_140:
	xor	ebx, ebx
	lea	r14, [rsp + 8]
	nop	
.label_141:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x14], 0
	mov	rdi, r14
	call	mbuiter_multi_next
	mov	eax, dword ptr [rsp + 0x2c]
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_141
	test	eax, eax
	jne	.label_141
.label_139:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_142:
	mov	rdi, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	jmp	strlen
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403870

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xc], 0
	jne	.label_149
	cmp	byte ptr [rbx], 0
	jne	.label_146
	mov	rax, qword ptr [rbx + 0x10]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, al
	je	.label_145
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	movsx	eax, byte ptr [rax]
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_144
.label_145:
	lea	rdi, [rbx + 4]
	call	mbsinit
	test	eax, eax
	je	.label_152
	mov	byte ptr [rbx], 1
.label_146:
	lea	r14, [rbx + 0x24]
	mov	r12, qword ptr [rbx + 0x10]
	call	__ctype_get_mb_cur_max
	mov	rdi, r12
	mov	rsi, rax
	call	strnlen1
	lea	r15, [rbx + 4]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rax
	mov	rcx, r15
	call	rpl_mbrtowc
	mov	qword ptr [rbx + 0x18], rax
	cmp	rax, -2
	je	.label_150
	test	rax, rax
	je	.label_143
	cmp	rax, -1
	jne	.label_147
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_144
.label_150:
	mov	rdi, qword ptr [rbx + 0x10]
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_144
.label_143:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_148
	cmp	dword ptr [r14], 0
	jne	.label_151
.label_147:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r15
	call	mbsinit
	test	eax, eax
	je	.label_144
	mov	byte ptr [rbx], 0
.label_144:
	mov	byte ptr [rbx + 0xc], 1
.label_149:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_152:
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_148:
	mov	edi, OFFSET FLAT:.str.2_0
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_151:
	mov	edi, OFFSET FLAT:.str.3_0
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039c0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039d0
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	mov	al, byte ptr [rsi]
	test	al, al
	mov	byte ptr [rdi], al
	je	.label_153
	mov	rax, qword ptr [rsi + 4]
	mov	qword ptr [rdi + 4], rax
	jmp	.label_154
.label_153:
	mov	qword ptr [rdi + 4], 0
.label_154:
	mov	al, byte ptr [rsi + 0xc]
	mov	byte ptr [rdi + 0xc], al
	add	rdi, 0x10
	add	rsi, 0x10
	jmp	mb_copy
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a00

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_155
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_156
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_156
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_157
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_157:
	mov	rbx, r14
.label_156:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_155:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ab0
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
	#Procedure 0x403af0
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
	#Procedure 0x403b00
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
	#Procedure 0x403b10

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
	#Procedure 0x403b50
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
	#Procedure 0x403b70

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_158
	test	rdx, rdx
	je	.label_158
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_158:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ba0
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
	#Procedure 0x403c20

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
.label_197:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_218
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_223]]
.label_1772:
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
.label_1773:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_207
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_207
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_266:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_256
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_256:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_266
.label_207:
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
	jmp	.label_166
.label_1765:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_166
.label_1768:
	mov	al, 1
.label_1766:
	mov	r15b, 1
.label_1769:
	test	r15b, 1
	mov	cl, 1
	je	.label_260
	mov	cl, al
.label_260:
	mov	al, cl
.label_1767:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_177
	test	r10, r10
	je	.label_181
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_182
.label_177:
	xor	ecx, ecx
	jmp	.label_182
.label_1770:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_186
	test	r10, r10
	je	.label_210
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_195
.label_1771:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_166
.label_181:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_182:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_166
.label_186:
	xor	eax, eax
	jmp	.label_195
.label_210:
	mov	eax, 1
.label_195:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_166:
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
	jmp	.label_168
	nop	dword ptr [rax + rax]
.label_201:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_168:
	cmp	rbp, -1
	je	.label_276
	cmp	rsi, rbp
	jne	.label_278
	jmp	.label_159
	nop	dword ptr [rax]
.label_276:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_159
.label_278:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_163
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_167
	cmp	rbp, -1
	jne	.label_167
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
.label_167:
	cmp	rbx, rbp
	jbe	.label_200
.label_163:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_233:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_196
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_198]]
.label_1783:
	test	rsi, rsi
	jne	.label_164
	jmp	.label_206
	nop	word ptr cs:[rax + rax]
.label_200:
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
	jne	.label_229
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_233
	jmp	.label_169
.label_229:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_233
.label_1787:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_250
	test	rsi, rsi
	jne	.label_253
	cmp	rbp, 1
	je	.label_206
	xor	r15d, r15d
	jmp	.label_161
.label_1776:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_237
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_169
	cmp	edi, 2
	jne	.label_262
	mov	al, r11b
	and	al, 1
	jne	.label_265
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_268
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_268:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_208
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_208:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_277
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_277:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_179
.label_1777:
	mov	bl, 0x62
	jmp	.label_171
.label_1778:
	mov	cl, 0x74
	jmp	.label_173
.label_1779:
	mov	bl, 0x76
	jmp	.label_171
.label_1780:
	mov	bl, 0x66
	jmp	.label_171
.label_1781:
	mov	cl, 0x72
	jmp	.label_173
.label_1784:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_180
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_178
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
	jae	.label_189
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_189:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_175
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_175:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_217
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_217:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_227
.label_1785:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_232
	cmp	r14d, 2
	jne	.label_236
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_178
.label_236:
	mov	rdi, r14
	jmp	.label_164
.label_1786:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_243
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_178
	mov	rdi, r14
	jmp	.label_244
.label_196:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_246
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
.label_267:
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
	ja	.label_258
	test	dl, dl
	je	.label_258
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_161
.label_250:
	test	rsi, rsi
	jne	.label_274
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_274
.label_206:
	mov	dl, 1
.label_1782:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_169
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_161
.label_237:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_164
	mov	r14, rdi
	inc	rsi
	jmp	.label_168
.label_180:
	mov	rdi, r14
.label_227:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_161
.label_243:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_173
.label_244:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_235
.label_173:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_169
.label_171:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_161
	jmp	.label_191
.label_246:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_193
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_193:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_209:
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
	je	.label_221
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_228
	cmp	rbp, -2
	je	.label_238
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_241
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_251:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_247
	bt	rsi, rdx
	jb	.label_249
.label_247:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_251
.label_241:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_219
	xor	r15d, r15d
.label_219:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_209
	jmp	.label_267
.label_274:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_161
.label_232:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_164
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_164
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_164
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_279
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_160
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_169
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_172
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_172:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_204
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_204:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_187
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_187:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_234
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_234:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_161
.label_164:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_161:
	test	r12b, r12b
	je	.label_212
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_214
	jmp	.label_203
	nop	word ptr cs:[rax + rax]
.label_212:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_203
.label_214:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_224
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_235
	jmp	.label_191
	nop	word ptr cs:[rax + rax]
.label_203:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_191
	jmp	.label_235
.label_224:
	mov	bl, r13b
	mov	rsi, r14
.label_191:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_169
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_248
	mov	al, r11b
	and	al, 1
	jne	.label_248
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_252
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_252:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_239
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_239:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_263
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_263:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_248:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_271
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_271:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_194
.label_253:
	xor	r15d, r15d
	jmp	.label_161
.label_258:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_280
	nop	word ptr cs:[rax + rax]
.label_162:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_280:
	test	dl, dl
	je	.label_225
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_185
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_254
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_254:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_185
	nop	word ptr [rax + rax]
.label_225:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_178
	cmp	r14d, 2
	jne	.label_199
	mov	al, r11b
	and	al, 1
	jne	.label_199
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_202
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_202:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_211
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_211:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_231
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_231:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_199:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_165
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_165:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_259
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_259:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_245
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_245:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_185:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_235
	test	r11b, 1
	je	.label_255
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_261
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_264
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_264:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_222
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_222:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_261
	nop	word ptr cs:[rax + rax]
.label_255:
	mov	r14, rdi
.label_261:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_162
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_162
.label_235:
	test	r11b, 1
	je	.label_176
	and	al, 1
	jne	.label_176
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_240
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_240:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_184
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_184:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_194
	nop	dword ptr [rax + rax]
.label_176:
	mov	bl, r13b
	mov	r14, rdi
.label_194:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_201
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_201
.label_262:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_179
.label_265:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_179:
	cmp	rcx, r10
	jae	.label_215
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_215:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_220
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_230
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_170
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_183
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_183:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_242
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_242:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_161
.label_220:
	xor	r15d, r15d
	jmp	.label_161
.label_230:
	xor	r15d, r15d
	jmp	.label_161
.label_170:
	xor	r15d, r15d
	jmp	.label_161
.label_221:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_188
.label_228:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_257
.label_238:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_275
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_272:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_270
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_272
	xor	r15d, r15d
	jmp	.label_188
.label_275:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_257:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_188:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_267
.label_270:
	xor	r15d, r15d
	jmp	.label_188
.label_279:
	xor	r15d, r15d
	jmp	.label_161
.label_160:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_161
	nop	dword ptr [rax + rax]
.label_159:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_213
	or	dl, al
	je	.label_178
.label_213:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_190
	or	dl, al
	jne	.label_190
	test	r8b, 1
	jne	.label_192
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_190
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_197
.label_190:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_205
	test	cl, cl
	jne	.label_205
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_205
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_226:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_216
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_216:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_226
.label_205:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_174
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_174
.label_169:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_269:
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
.label_273:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_174:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_249:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_269
.label_178:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_269
.label_192:
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
	jmp	.label_273
.label_218:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e30
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
	#Procedure 0x404e40

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
	je	.label_281
	mov	qword ptr [rax], rbx
.label_281:
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
	#Procedure 0x404f40
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_282
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_285:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_285
.label_282:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_286
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_284]], OFFSET FLAT:slot0
.label_286:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_283
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_283:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ff0

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
	js	.label_287
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_292
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_288
.label_292:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_291
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
	jne	.label_290
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_290:
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
.label_288:
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
	ja	.label_293
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_289
	mov	rdi, rbx
	call	free
.label_289:
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
.label_293:
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
.label_287:
	call	abort
.label_291:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051c0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0
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
	#Procedure 0x4051e0
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
	#Procedure 0x4051f0

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
	#Procedure 0x405230

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
	je	.label_294
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
.label_294:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405290

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
	#Procedure 0x4052d0
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
	#Procedure 0x4052f0
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
	#Procedure 0x405310

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
	mov	rcx,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
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
	#Procedure 0x405380

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
	#Procedure 0x405390

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053b0
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
	#Procedure 0x405400

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405410

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
	mov	rax,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
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
	#Procedure 0x405480
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
	#Procedure 0x4054a0
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
	#Procedure 0x4054c0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054d0
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
	#Procedure 0x4054e0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4054f0
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
	#Procedure 0x405500

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
	jne	.label_299
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
	je	.label_298
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_299
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_299
.label_298:
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
	je	.label_300
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_299
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_299
.label_300:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_299:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055e0

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
	je	.label_302
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_303
	jmp	.label_301
.label_302:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_301
.label_303:
	mov	eax, 1
	test	bpl, bpl
	je	.label_301
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
.label_301:
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
	#Procedure 0x405670

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
	je	.label_306
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_304
	jmp	.label_305
.label_306:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_305
.label_304:
	mov	eax, 1
	test	bpl, bpl
	je	.label_305
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
.label_305:
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
	#Procedure 0x405700

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
	je	.label_308
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_309
	jmp	.label_307
.label_308:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_307
.label_309:
	mov	eax, 1
	test	bpl, bpl
	je	.label_307
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
.label_307:
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
	#Procedure 0x405780

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
	je	.label_312
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_311
	jmp	.label_310
.label_312:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_310
.label_311:
	mov	eax, 1
	test	bpl, bpl
	je	.label_310
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
.label_310:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4057f0

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
	je	.label_315
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_313
	jmp	.label_314
.label_315:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_314
.label_313:
	mov	eax, 1
	test	bpl, bpl
	je	.label_314
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_314:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405860

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
	je	.label_316
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_318
	jmp	.label_317
.label_316:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_317
.label_318:
	mov	eax, 1
	test	bpl, bpl
	je	.label_317
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_317:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4058b0

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
	je	.label_321
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_320
	jmp	.label_319
.label_321:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_319
.label_320:
	mov	eax, 1
	test	bpl, bpl
	je	.label_319
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_319:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405900

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_323
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_324
	jmp	.label_322
.label_323:
	mov	eax, 1
	test	cl, cl
	je	.label_322
.label_324:
	xor	eax, eax
.label_322:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405930

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	xor	esi, esi
	mov	rdx, r14
	call	memchr
	mov	ecx, 1
	sub	rcx, rbx
	add	rcx, rax
	test	rax, rax
	cmove	rcx, r14
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405970

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	jmp	numcompare
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405980

	.globl numcompare
	.type numcompare, @function
numcompare:
	movzx	ecx, byte ptr [rdi]
	mov	dl, byte ptr [rsi]
	cmp	ecx, 0x2d
	jne	.label_325
	nop	
.label_330:
	movzx	r10d, byte ptr [rdi + 1]
	inc	rdi
	cmp	r10d, 0x30
	je	.label_330
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_331
	nop	dword ptr [rax]
.label_337:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_337
	xor	edx, edx
	movzx	r8d, r10b
	movzx	ecx, al
	cmp	ecx, r8d
	jne	.label_340
	lea	ecx, [r10 - 0x30]
	cmp	ecx, 9
	ja	.label_344
	nop	dword ptr [rax + rax]
.label_354:
	mov	r9b, byte ptr [rdi + rdx + 1]
	movzx	eax, byte ptr [rsi + rdx + 1]
	movzx	r10d, r9b
	inc	rdx
	cmp	eax, r10d
	jne	.label_342
	lea	ecx, [r10 - 0x30]
	cmp	ecx, 0xa
	jb	.label_354
.label_342:
	add	rsi, rdx
	add	rdi, rdx
	jmp	.label_356
.label_325:
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_328
	inc	rsi
	nop	dword ptr [rax + rax]
.label_332:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_332
	add	edx, -0x30
	mov	eax, 1
	cmp	edx, 0xa
	jb	.label_336
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_351
	inc	rdi
	nop	word ptr [rax + rax]
.label_338:
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_338
.label_351:
	movzx	eax, cl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_331:
	add	r10d, -0x30
	mov	eax, 0xffffffff
	cmp	r10d, 0xa
	jb	.label_336
	cmp	r8d, 0x30
	jne	.label_353
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_339:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_339
.label_353:
	movzx	eax, dl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	ret	
.label_328:
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_335
	nop	
.label_333:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_333
.label_335:
	cmp	r8d, 0x30
	jne	.label_349
	nop	word ptr cs:[rax + rax]
.label_345:
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	cmp	edx, 0x30
	je	.label_345
.label_349:
	movzx	r8d, cl
	movzx	eax, dl
	cmp	r8d, eax
	jne	.label_346
	nop	dword ptr [rax + rax]
.label_355:
	lea	eax, [r8 - 0x30]
	cmp	eax, 0xa
	jae	.label_346
	mov	cl, byte ptr [rdi + 1]
	inc	rdi
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	movzx	r8d, cl
	cmp	r8d, edx
	je	.label_355
.label_346:
	movzx	eax, dl
	movzx	edx, cl
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_329
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_357:
	movzx	edx, byte ptr [rdi + rcx + 1]
	inc	rcx
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_357
.label_329:
	lea	edi, [rax - 0x30]
	xor	edx, edx
	cmp	edi, 9
	ja	.label_341
	xor	edx, edx
	nop	dword ptr [rax]
.label_348:
	movzx	edi, byte ptr [rsi + rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_348
.label_341:
	cmp	rcx, rdx
	jne	.label_347
	sub	r8d, eax
	xor	eax, eax
	test	rcx, rcx
	jmp	.label_350
.label_347:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
	ret	
.label_340:
	mov	r9b, r10b
	jmp	.label_356
.label_344:
	mov	r9b, r10b
.label_356:
	movzx	r8d, al
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_327
	xor	edx, edx
	nop	dword ptr [rax]
.label_343:
	movzx	eax, byte ptr [rdi + rdx + 1]
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_343
.label_327:
	lea	ecx, [r8 - 0x30]
	xor	eax, eax
	cmp	ecx, 9
	ja	.label_334
	xor	eax, eax
	nop	dword ptr [rax]
.label_326:
	movzx	ecx, byte ptr [rsi + rax + 1]
	inc	rax
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_326
.label_334:
	cmp	rdx, rax
	jne	.label_352
	sub	r8d, r10d
	xor	eax, eax
	test	rdx, rdx
.label_350:
	cmovne	eax, r8d
.label_336:
	ret	
.label_352:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405bf0
	.globl fraccompare
	.type fraccompare, @function
fraccompare:

	movzx	eax, byte ptr [rdi]
	cmp	eax, 0xff
	jne	.label_364
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0xff
	je	.label_366
.label_364:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0xff
	je	.label_360
	xor	eax, eax
	movzx	ecx, byte ptr [rsi]
	cmp	ecx, 0xff
	jne	.label_359
	inc	rsi
	nop	
.label_362:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_362
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	jmp	.label_359
.label_360:
	inc	rdi
	nop	dword ptr [rax + rax]
.label_358:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_358
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_366:
	inc	rdi
	inc	rsi
	nop	dword ptr [rax]
.label_365:
	movzx	r8d, byte ptr [rdi]
	movsx	eax, r8b
	movzx	ecx, byte ptr [rsi]
	lea	edx, [rax - 0x30]
	cmp	r8d, ecx
	jne	.label_363
	inc	rdi
	inc	rsi
	xor	eax, eax
	cmp	edx, 0xa
	jb	.label_365
.label_359:
	ret	
.label_363:
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
	jb	.label_358
	movsx	ecx, byte ptr [rsi]
	add	ecx, -0x30
	xor	eax, eax
	cmp	ecx, 0xa
	jb	.label_362
	jmp	.label_359
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405cc0

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
	je	.label_367
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_376
.label_367:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_376:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_370
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_372]]
.label_1849:
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
.label_370:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_369
.label_1850:
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
.label_1851:
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
.label_1852:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_373
.label_1853:
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
	jmp	.label_368
.label_1854:
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
	jmp	.label_375
.label_1855:
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
.label_375:
	mov	qword ptr [rsp + 0x10], rdi
.label_368:
	mov	qword ptr [rsp + 8], rsi
.label_373:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_371
.label_1857:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_369:
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
	jmp	.label_374
.label_1856:
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
.label_374:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_371:
	call	__fprintf_chk
.label_1848:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fb0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_377:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_377
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fe0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_379:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_378
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_380
	nop	dword ptr [rax]
.label_378:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_380:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_381
	inc	r9
	cmp	r9, 0xa
	jb	.label_379
.label_381:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406040
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xc8
	test	al, al
	je	.label_382
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_382:
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
	#Procedure 0x4060d0
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
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
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
	.align	16
	#Procedure 0x406150
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_383
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_383:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406180

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_384
	test	rax, rax
	je	.label_385
.label_384:
	pop	rbx
	ret	
.label_385:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_386
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_386:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_387
	test	rbx, rbx
	jne	.label_387
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_387:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_389
	test	rax, rax
	je	.label_388
.label_389:
	pop	rbx
	ret	
.label_388:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406200

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_390
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_393
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_391
.label_390:
	test	rcx, rcx
	jne	.label_394
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_394:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_392
.label_391:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_393:
	call	xalloc_die
.label_392:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406280

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406290
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062a0
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
	#Procedure 0x4062d0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_395
	call	rpl_calloc
	test	rax, rax
	je	.label_395
	pop	rcx
	ret	
.label_395:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406300

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
	#Procedure 0x406330

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
	#Procedure 0x406350

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406380

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_396
	test	rsi, rsi
	mov	ecx, 1
	je	.label_397
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_397
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_396:
	mov	ecx, 1
.label_397:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063d0

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
	je	.label_398
	cmp	r15, -2
	jb	.label_398
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_398
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_398:
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
	#Procedure 0x406430

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	and	cl, 0x10
	and	al, 0x6f
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_399
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_399:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406490

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	dword ptr [rsp + 0xa4], 0
	mov	al, byte ptr [rbx + 0x38]
	mov	qword ptr [rbx + 0x18], r15
	mov	qword ptr [rbx + 0x10], 0
	mov	qword ptr [rbx + 0x30], 0
	and	al, 0x90
	mov	byte ptr [rbx + 0x38], al
	mov	r14, qword ptr [rbx]
	cmp	qword ptr [rbx + 8], 0xe7
	jbe	.label_403
.label_404:
	mov	qword ptr [rbx + 0x10], 0xe8
	mov	rdi, r14
	mov	rsi, r12
	call	init_dfa
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	jne	.label_400
	mov	rcx, qword ptr [rbx + 0x28]
	mov	ebp, r15d
	and	ebp, 0x400000
	mov	r8, rbp
	shr	r8, 0x16
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r14
	call	re_string_construct
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	jne	.label_405
	mov	qword ptr [rbx + 0x30], 0
	lea	rdi, [rsp + 8]
	lea	rcx, [rsp + 0xa4]
	mov	rsi, rbx
	mov	rdx, r15
	call	parse
	mov	qword ptr [r14 + 0x68], rax
	test	rax, rax
	je	.label_405
	mov	rdi, rbx
	call	analyze
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	jne	.label_405
	test	rbp, rbp
	jne	.label_401
	mov	al, byte ptr [r14 + 0xb0]
	and	al, 4
	je	.label_401
	cmp	qword ptr [rbx + 0x28], 0
	jne	.label_401
	mov	rdi, r14
	call	optimize_utf8
.label_401:
	mov	rdi, r14
	call	create_initial_state
	mov	dword ptr [rsp + 0xa4], eax
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 8]
	call	re_string_destruct
	cmp	dword ptr [rsp + 0xa4], 0
	je	.label_406
	jmp	.label_400
.label_405:
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 8]
	call	re_string_destruct
.label_400:
	mov	rdi, r14
	call	free_dfa_content
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_406:
	mov	eax, dword ptr [rsp + 0xa4]
.label_402:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_403:
	mov	esi, 0xe8
	mov	rdi, r14
	call	realloc
	mov	r14, rax
	mov	eax, 0xc
	test	r14, r14
	je	.label_402
	mov	qword ptr [rbx + 8], 0xe8
	mov	qword ptr [rbx], r14
	jmp	.label_404
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406630
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406640

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_407
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_407:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_408
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_408:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_409
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_409:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406710

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x158
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rdi]
	mov	qword ptr [rsp + 0x28], rdx
	cmp	dword ptr [rdx + 0xb4], 1
	jne	.label_420
	mov	r14b, byte ptr [rdi + 0x1a]
	mov	qword ptr [rsp + 0x20], rdi
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_423
.label_420:
	mov	qword ptr [rsp + 0x20], rdi
	xor	r14d, r14d
.label_423:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_411
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_410:
	mov	rax, qword ptr [rsi + 0x18]
	mov	r13, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rdx]
	mov	rbx, r13
	shl	rbx, 4
	mov	qword ptr [rsp + 0x30], rbx
	movzx	r12d, byte ptr [rax + rbx + 8]
	add	rax, rbx
	cmp	r12d, 6
	je	.label_417
	mov	qword ptr [rsp + 0x18], rcx
	cmp	r12d, 3
	mov	ebp, 0
	mov	r15d, 0
	je	.label_416
	cmp	r12d, 1
	jne	.label_421
	movzx	edi, byte ptr [rax]
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_425
	mov	rbp, rdx
	call	tolower
	mov	rdx, rbp
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_425:
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0x1a], 0x40
	je	.label_422
	cmp	dword ptr [rdx + 0xb4], 2
	jl	.label_422
	mov	rax, qword ptr [rdx]
	mov	al, byte ptr [rax + rbx]
	mov	byte ptr [rsp + 0x40], al
	inc	r13
	cmp	r13, qword ptr [rdx + 0x10]
	lea	rbp, [rsp + 0x41]
	lea	r15, [rsp + 0x148]
	lea	r12, [rsp + 0x40]
	mov	esi, 0x2000ff
	jae	.label_429
	add	rbx, 0x18
	lea	rbp, [rsp + 0x41]
	nop	word ptr cs:[rax + rax]
.label_418:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + rbx]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_429
	mov	al, byte ptr [rax + rbx - 8]
	mov	byte ptr [rbp], al
	inc	rbp
	inc	r13
	add	rbx, 0x10
	cmp	r13, qword ptr [rdx + 0x10]
	jb	.label_418
.label_429:
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x148], 0
	sub	rbp, r12
	lea	rdi, [rsp + 0x154]
	mov	rsi, r12
	mov	rdx, rbp
	mov	rcx, r15
	call	rpl_mbrtowc
	cmp	rax, rbp
	jne	.label_413
	mov	edi, dword ptr [rsp + 0x154]
	call	towlower
	mov	rdi, r12
	mov	esi, eax
	mov	rdx, r15
	call	wcrtomb
	cmp	rax, -1
	je	.label_413
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
	jmp	.label_413
	nop	
.label_416:
	mov	rax, qword ptr [rdx]
	mov	rax, qword ptr [rax + rbx]
	mov	rbx, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [rsp + 0x38]
	lea	r13, [rax + r15]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_415:
	bt	rbx, r12
	jae	.label_428
	mov	byte ptr [r13 + r12], 1
	test	r14b, r14b
	je	.label_428
	lea	edi, [r15 + r12]
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_428:
	inc	r12
	cmp	r12, 0x40
	jne	.label_415
	inc	rbp
	add	r15, 0x40
	cmp	rbp, 4
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
	jne	.label_416
	jmp	.label_422
	nop	word ptr [rax + rax]
.label_417:
	mov	r15, qword ptr [rax]
	cmp	dword ptr [rdx + 0xb4], 1
	jle	.label_426
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_412
	test	byte ptr [r15 + 0x20], 1
	jne	.label_412
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_426
.label_412:
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rsp + 0x148], 0
	lea	rbp, [rsp + 0x148]
	mov	r15, rbp
	lea	rbp, [rsp + 0x40]
	nop	dword ptr [rax]
.label_427:
	mov	qword ptr [rsp + 0x40], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, r15
	mov	rcx, rbp
	call	rpl_mbrtowc
	cmp	rax, -2
	jne	.label_419
	movzx	eax, byte ptr [rsp + 0x148]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_419:
	inc	byte ptr [rsp + 0x148]
	jne	.label_427
.label_413:
	mov	rdx, rbx
	jmp	.label_422
	nop	word ptr cs:[rax + rax]
.label_421:
	cmp	r12d, 2
	je	.label_430
	mov	eax, r12d
	or	eax, 2
	cmp	eax, 7
	jne	.label_422
	jmp	.label_430
.label_426:
	mov	qword ptr [rsp + 0x18], rcx
	cmp	qword ptr [r15 + 0x28], 0
	jle	.label_422
	xor	ebp, ebp
.label_431:
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x148], 0
	mov	rax, qword ptr [r15]
	mov	esi, dword ptr [rax + rbp*4]
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	lea	r12, [rsp + 0x148]
	mov	rdx, r12
	call	wcrtomb
	cmp	rax, -1
	je	.label_424
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_424
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_424:
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0x1a], 0x40
	mov	rdx, rbx
	je	.label_414
	cmp	dword ptr [rdx + 0xb4], 2
	jl	.label_414
	mov	rax, qword ptr [r15]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rbx, rdx
	call	towlower
	mov	rdi, r13
	mov	esi, eax
	mov	rdx, r12
	call	wcrtomb
	mov	rdx, rbx
	cmp	rax, -1
	je	.label_414
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
	nop	
.label_414:
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x28]
	jl	.label_431
	nop	dword ptr [rax]
.label_422:
	mov	rcx, qword ptr [rsp + 0x18]
	inc	rcx
	mov	rsi, qword ptr [rsp + 0x10]
	cmp	rcx, qword ptr [rsi + 0x10]
	jl	.label_410
.label_411:
	add	rsp, 0x158
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_430:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, qword ptr [rsp + 0x38]
	call	memset
	cmp	r12d, 2
	jne	.label_411
	mov	rax, qword ptr [rsp + 0x20]
	or	byte ptr [rax + 0x38], 1
	jmp	.label_411
	nop	
	.section	.text
	.align	16
	#Procedure 0x406b10
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_433
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_435
	and	byte ptr [r15 + 0x38], 0x7f
	jmp	.label_432
.label_435:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	or	byte ptr [r15 + 0x38], 0x80
.label_432:
	mov	al, byte ptr [r15 + 0x38]
	add	ebp, ebp
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_434
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_433:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_434:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_433
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c00
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_436
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_438
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_439
.label_437:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_438:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_439:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_437
.label_436:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c80

	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_440
	call	free_dfa_content
.label_440:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406cc0

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14], 0
	je	.label_441
	xor	r15d, r15d
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_441
	xor	ebx, ebx
	nop	
.label_443:
	mov	rdi, qword ptr [r14]
	add	rdi, r15
	call	free_token
	inc	rbx
	add	r15, 0x10
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_443
.label_441:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_442
	xor	r15d, r15d
	mov	ebx, 0x10
.label_444:
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_445
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_445:
	mov	rax, qword ptr [r14 + 0x38]
	test	rax, rax
	je	.label_447
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_447:
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	je	.label_450
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_450:
	inc	r15
	add	rbx, 0x18
	cmp	r15, qword ptr [r14 + 0x10]
	jb	.label_444
.label_442:
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, qword ptr [r14 + 0x30]
	call	free
	mov	rdi, qword ptr [r14 + 0x38]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_451
	xor	r15d, r15d
.label_452:
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 + 0x10]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_449
	lea	r13, [rax + rcx*8]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_448:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbx*8]
	call	free_state
	inc	rbx
	cmp	rbx, qword ptr [r13]
	jl	.label_448
.label_449:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_452
.label_451:
	mov	rdi, qword ptr [r14 + 0x40]
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_446
	call	free
.label_446:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e10
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, 2
	cmp	ebp, 7
	ja	.label_453
	test	bpl, 4
	jne	.label_456
	mov	rdi, r14
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_455
.label_456:
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_455:
	test	byte ptr [rbx + 0x38], 0x10
	jne	.label_454
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r15
	jmp	.label_457
.label_454:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
.label_457:
	mov	rdi, rbx
	mov	rsi, r14
	mov	r8, rdx
	mov	r9, rdx
	call	re_search_internal
	test	eax, eax
	setne	al
	movzx	eax, al
.label_453:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406eb0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x188
	mov	r15, rcx
	mov	r14, rdi
	mov	r12, qword ptr [rsp + 0x1c0]
	mov	rbx, qword ptr [r14]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	qword ptr [rsp + 0x118], rbx
	mov	rax, qword ptr [r14 + 0x20]
	xor	r10d, r10d
	test	rax, rax
	je	.label_508
	mov	cl, byte ptr [r14 + 0x38]
	and	cl, 9
	movzx	ecx, cl
	xor	edi, edi
	cmp	ecx, 8
	cmovne	rax, rdi
	cmp	r15, r8
	cmove	rax, rdi
	mov	r10, rax
.label_508:
	mov	rax, qword ptr [r14 + 0x30]
	lea	rdi, [r12 - 1]
	mov	rcx, rdi
	sub	rcx, rax
	xor	ebp, ebp
	cmp	rax, r12
	cmovb	rbp, rcx
	mov	r13d, 1
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_460
	mov	rax, qword ptr [rbx + 0x48]
	test	rax, rax
	je	.label_460
	mov	rcx, qword ptr [rbx + 0x50]
	test	rcx, rcx
	je	.label_460
	mov	r11, qword ptr [rbx + 0x58]
	test	r11, r11
	je	.label_460
	cmp	qword ptr [rbx + 0x60], 0
	je	.label_460
	mov	qword ptr [rsp + 0x58], r9
	mov	r9, qword ptr [r14 + 0x28]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_515
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_480
.label_515:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_523
	mov	qword ptr [rsp + 0x50], r8
.label_480:
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x48], r10
	mov	qword ptr [rsp + 0x18], rdi
	mov	byte ptr [rsp + 0x67], 1
	cmp	rbp, r12
	jne	.label_462
	cmp	qword ptr [rbx + 0x98], 0
	setne	byte ptr [rsp + 0x67]
.label_462:
	mov	rcx, qword ptr [rbx + 0x10]
	inc	rcx
	mov	r8, qword ptr [r14 + 0x28]
	mov	r9d, 0x400000
	and	r9, qword ptr [r14 + 0x18]
	shr	r9, 0x16
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 0x78], rbx
	lea	rdi, [rsp + 0x80]
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0x70], rdx
	call	re_string_allocate
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_469
	mov	esi, dword ptr [rsp + 0x1d0]
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xe0], rax
	mov	al, byte ptr [r14 + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0x10d], al
	mov	rax, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rax + 0x98]
	add	rdx, rdx
	lea	rdi, [rsp + 0x80]
	call	match_ctx_init
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_469
	mov	rax, r12
	sub	rax, rbp
	mov	qword ptr [rsp + 0x40], rax
	cmp	rax, 1
	ja	.label_511
	mov	rax, qword ptr [rsp + 0x78]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_511
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_516
.label_511:
	mov	qword ptr [rsp + 0x10], rbp
	mov	rax, qword ptr [rsp + 0xc0]
	mov	r13d, 0xc
	movabs	rcx, 0x1ffffffffffffffe
	cmp	rax, rcx
	ja	.label_469
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_469
.label_516:
	mov	qword ptr [rsp + 0x180], r15
	mov	eax, dword ptr [rsp + 0x1d0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xf0], eax
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rax, r15
	mov	r11d, 0xffffffff
	mov	ecx, 1
	cmovge	r11d, ecx
	mov	r13, r15
	cmovle	r13, rax
	mov	qword ptr [rsp + 0x28], r13
	mov	rbp, rax
	cmovl	rbp, r15
	mov	qword ptr [rsp + 0x38], rbp
	mov	r8, qword ptr [rsp + 0x78]
	mov	ecx, dword ptr [r8 + 0xb4]
	mov	dword ptr [rsp + 0x58], ecx
	mov	esi, 8
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	mov	rbx, qword ptr [rsp + 0x30]
	je	.label_477
	cmp	dword ptr [rsp + 0x58], 1
	je	.label_507
	mov	edx, 0x400000
	xor	r9d, r9d
	test	rbx, rbx
	jne	.label_495
	and	rdx, qword ptr [r14 + 0x18]
	jne	.label_495
.label_507:
	mov	r9d, 4
.label_495:
	cmp	r15, rax
	setle	dl
	test	rbx, rbx
	setne	cl
	movzx	ecx, cl
	movzx	edx, dl
	lea	esi, [rcx + rdx*2]
	or	esi, r9d
.label_477:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, r13
	mov	rdx, qword ptr [rsp + 0x70]
	mov	r9, qword ptr [rsp + 0x68]
	jl	.label_517
	cmp	rbp, rcx
	jl	.label_458
	xor	r10d, r10d
	cmp	r15, rax
	lea	rcx, [rsp + 0x180]
	cmovg	rcx, r10
	mov	qword ptr [rsp + 0x20], rcx
	movsxd	r15, r11d
	add	esi, -4
	mov	qword ptr [rsp + 0x50], rsi
.label_509:
	cmp	esi, 4
	ja	.label_470
	mov	rax, qword ptr [rsp + 0x50]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_474]]
.label_1875:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, r13
	jl	.label_478
	nop	dword ptr [rax]
.label_490:
	xor	eax, eax
	cmp	rcx, rdx
	jge	.label_481
	movzx	eax, byte ptr [r9 + rcx]
.label_481:
	test	rbx, rbx
	je	.label_484
	movzx	eax, byte ptr [rbx + rax]
.label_484:
	cmp	byte ptr [rdi + rax], 0
	jne	.label_478
	mov	rax, qword ptr [rsp + 0x180]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x180], rcx
	cmp	rax, r13
	jg	.label_490
.label_478:
	cmp	qword ptr [rsp + 0x180], r13
	jge	.label_467
	jmp	.label_476
	nop	word ptr [rax + rax]
.label_491:
	mov	rax, qword ptr [rsp + 0x180]
	add	rax, r15
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	jl	.label_476
	cmp	rax, rbp
	jle	.label_470
	jmp	.label_476
.label_494:
	mov	qword ptr [rsp + 0x30], r15
	mov	qword ptr [rsp + 0x38], rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	r15, r9
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x78], r8
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_469
	mov	rax, qword ptr [rsp + 0x180]
	sub	rax, qword ptr [rsp + 0xa8]
	mov	r8, qword ptr [rsp + 0x78]
	mov	rdx, rbp
	mov	r9, r15
	mov	rdi, qword ptr [rsp + 0x48]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_501
	nop	word ptr cs:[rax + rax]
.label_470:
	mov	rsi, qword ptr [rsp + 0x180]
	mov	rax, rsi
	sub	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0xb8]
	jae	.label_494
.label_501:
	cmp	qword ptr [rsp + 0x180], rdx
	mov	ecx, 0
	jge	.label_486
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ecx, byte ptr [rcx + rax]
.label_486:
	cmp	byte ptr [rdi + rcx], 0
	je	.label_491
	jmp	.label_467
.label_1876:
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_496
	nop	word ptr cs:[rax + rax]
.label_479:
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_496:
	cmp	rax, rbp
	jge	.label_506
	movzx	ecx, byte ptr [r9 + rax]
	cmp	byte ptr [rdi + rcx], 0
	je	.label_479
	jmp	.label_506
.label_1877:
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_510
	nop	word ptr [rax + rax]
.label_514:
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_510:
	cmp	rax, rbp
	jge	.label_506
	movzx	ecx, byte ptr [r9 + rax]
	movzx	ecx, byte ptr [rbx + rcx]
	cmp	byte ptr [rdi + rcx], 0
	je	.label_514
.label_506:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, rbp
	je	.label_520
.label_467:
	mov	rbp, rdi
	mov	rsi, qword ptr [rsp + 0x180]
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	test	eax, eax
	jne	.label_466
	cmp	dword ptr [rsp + 0x58], 1
	je	.label_468
	mov	rcx, qword ptr [rsp + 0xb0]
	test	rcx, rcx
	je	.label_468
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	dword ptr [rcx], -1
	je	.label_488
.label_468:
	mov	dword ptr [rsp + 0x30], eax
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0x140]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	movzx	esi, byte ptr [rsp + 0x67]
	lea	rdi, [rsp + 0x80]
	mov	rdx, qword ptr [rsp + 0x20]
	call	check_matching
	cmp	rax, -1
	je	.label_493
	mov	r13d, 0xc
	cmp	rax, -2
	je	.label_469
	mov	qword ptr [rsp + 0x128], rax
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_500
	mov	cl, byte ptr [r14 + 0x38]
	and	cl, 0x10
	je	.label_505
.label_500:
	mov	rcx, qword ptr [rsp + 0x78]
	cmp	qword ptr [rcx + 0x98], 0
	je	.label_473
.label_505:
	mov	rcx, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rcx + rax*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, rax
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
.label_473:
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_518
	mov	al, byte ptr [r14 + 0x38]
	and	al, 0x10
	jne	.label_518
	mov	rax, qword ptr [rsp + 0x78]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_522
.label_518:
	mov	rax, qword ptr [rsp + 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_459
.label_522:
	lea	rdi, [rsp + 0x80]
	call	prune_impossible_nodes
	mov	r13d, eax
	mov	dword ptr [rsp + 0x30], 0
	test	r13d, r13d
	je	.label_459
	cmp	r13d, 1
	jne	.label_469
.label_493:
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
	mov	r13, qword ptr [rsp + 0x28]
.label_488:
	mov	rax, qword ptr [rsp + 0x180]
	add	rax, r15
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	mov	rdi, rbp
	jl	.label_524
	mov	rbp, qword ptr [rsp + 0x38]
	cmp	rbp, rax
	mov	r8, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
	mov	r9, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x50]
	jge	.label_509
	jmp	.label_497
.label_520:
	xor	eax, eax
	cmp	rcx, rdx
	jge	.label_499
	movzx	eax, byte ptr [r9 + rcx]
.label_499:
	test	rbx, rbx
	je	.label_503
	movzx	eax, byte ptr [rbx + rax]
.label_503:
	cmp	byte ptr [rdi + rax], 0
	jne	.label_467
.label_476:
	mov	qword ptr [rsp + 0x78], r8
	mov	r13d, 1
	jmp	.label_469
.label_517:
	mov	r13d, 1
	jmp	.label_469
.label_458:
	mov	r13d, 1
	jmp	.label_469
.label_459:
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	rdx, r12
	je	.label_504
	cmp	qword ptr [rsp + 0x40], 2
	mov	rsi, qword ptr [rsp + 0x1c8]
	jb	.label_519
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, rdx
	lea	rcx, [rsi + 0x10]
.label_475:
	mov	qword ptr [rcx + 8], -1
	mov	qword ptr [rcx], -1
	add	rcx, 0x10
	dec	rax
	jne	.label_475
.label_519:
	mov	rbx, rdx
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rsi + 8], rax
	mov	rbp, rsi
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_461
	mov	al, byte ptr [r14 + 0x38]
	and	al, 0x10
	jne	.label_461
	mov	dword ptr [rsp + 0x30], 0
	mov	rcx, qword ptr [rsp + 0x78]
	test	byte ptr [rcx + 0xb0], 1
	mov	eax, 0
	je	.label_464
	cmp	qword ptr [rcx + 0x98], 0
	setg	al
.label_464:
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, rbp
	call	set_regs
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_469
.label_461:
	mov	rdx, rbx
	cmp	rdx, r12
	je	.label_498
	mov	al, byte ptr [rsp + 0x10c]
	lea	r8, [rsp + 0xb8]
	mov	r9, qword ptr [rsp + 0x98]
	lea	rsi, [rbp + 8]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_483
.label_523:
	cmp	qword ptr [r11 + 0x10], 0
	je	.label_502
	cmp	byte ptr [r14 + 0x38], 0
	js	.label_512
.label_502:
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	test	r15, r15
	je	.label_513
	test	r8, r8
	mov	r15d, 0
	jne	.label_460
	jmp	.label_480
.label_466:
	mov	r13d, eax
	jmp	.label_469
.label_489:
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	je	.label_465
	lea	rcx, [r9 + rbx*8]
.label_465:
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsi - 8], rcx
	mov	rbx, qword ptr [rsi]
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	je	.label_492
	lea	rcx, [r9 + rbx*8]
.label_492:
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsi], rcx
	jmp	.label_471
.label_483:
	mov	rbx, qword ptr [rsi - 8]
	cmp	rbx, -1
	je	.label_482
	test	al, al
	jne	.label_489
.label_471:
	mov	rcx, qword ptr [rsp + 0x180]
	add	qword ptr [rsi - 8], rcx
	add	qword ptr [rsi], rcx
.label_482:
	add	rsi, 0x10
	dec	rdi
	jne	.label_483
.label_498:
	test	rdx, rdx
	mov	rbx, qword ptr [rsp + 0x18]
	jle	.label_485
	sub	r12, rdx
	shl	r12, 4
	add	r12, rbp
	mov	rax, rdx
	nop	word ptr cs:[rax + rax]
.label_472:
	mov	qword ptr [r12 + 8], -1
	mov	qword ptr [r12], -1
	add	r12, 0x10
	dec	rax
	jne	.label_472
.label_485:
	mov	rdi, qword ptr [rsp + 0x78]
	cmp	qword ptr [rdi + 0xe0], 0
	je	.label_504
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_504
	mov	rax, qword ptr [rdi + 0xe0]
	sub	rbx, rdx
	lea	rcx, [rbp + 0x18]
	xor	edx, edx
.label_521:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_487
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + rbp + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rdi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + rbp + 0x18]
	mov	qword ptr [rcx], rsi
.label_487:
	inc	rdx
	add	rcx, 0x10
	cmp	rbx, rdx
	jne	.label_521
.label_504:
	mov	r13d, dword ptr [rsp + 0x30]
.label_469:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_463
	lea	rdi, [rsp + 0x80]
	call	match_ctx_free
.label_463:
	lea	rdi, [rsp + 0x80]
	call	re_string_destruct
.label_460:
	mov	eax, r13d
	add	rsp, 0x188
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_512:
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_480
.label_513:
	xor	r15d, r15d
	jmp	.label_480
.label_524:
	mov	r13d, 1
	jmp	.label_469
.label_497:
	mov	r13d, 1
	jmp	.label_469
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407870

	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:
	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x407890

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	test	rcx, rcx
	mov	r14, -1
	js	.label_526
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], r9
	cmp	rcx, rdx
	jg	.label_526
	mov	r14, qword ptr [rsp + 0x80]
	xor	r15d, r15d
	add	r8, rcx
	cmovns	r15, r8
	cmp	r8, rdx
	cmovg	r15, rdx
	movzx	r12d, byte ptr [rdi + 0x38]
	cmp	r15, rcx
	jle	.label_525
	test	r12b, 8
	jne	.label_525
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	je	.label_525
	mov	rbp, rdi
	mov	r13, rcx
	mov	rbx, rdx
	call	rpl_re_compile_fastmap
	mov	rdx, rbx
	mov	rdi, rbp
	mov	rcx, r13
.label_525:
	xor	esi, esi
	test	r14, r14
	mov	ebx, 1
	je	.label_527
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x40], rcx
	mov	al, byte ptr [rdi + 0x38]
	mov	cl, al
	and	cl, 0x10
	jne	.label_530
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_535
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rdi + 0x30]
	jbe	.label_534
.label_535:
	mov	rbx, qword ptr [rdi + 0x30]
	inc	rbx
.label_529:
	mov	rsi, r14
	jmp	.label_530
.label_527:
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x40], rcx
.label_530:
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbp, rdi
	mov	rdi, rbx
	shl	rdi, 4
	call	malloc
	mov	r13, rax
	mov	r14, -2
	test	r13, r13
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_526
	mov	al, r12b
	shr	al, 5
	and	al, 1
	and	r12d, 0x40
	movzx	eax, al
	shr	r12d, 5
	or	r12d, eax
	mov	dword ptr [rsp + 0x10], r12d
	mov	qword ptr [rsp + 8], r13
	mov	r14, rbx
	mov	qword ptr [rsp], r14
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	mov	r8, r15
	mov	r9, qword ptr [rsp + 0x30]
	call	re_search_internal
	test	eax, eax
	je	.label_533
	cmp	eax, 1
	sete	al
	movzx	r14d, al
	or	r14, 0xfffffffffffffffe
	jmp	.label_528
.label_533:
	mov	rdx, r14
	mov	rdi, qword ptr [rsp + 0x20]
	test	rdi, rdi
	je	.label_531
	mov	al, byte ptr [rbp + 0x38]
	shr	al, 1
	and	al, 3
	movzx	ecx, al
	mov	rsi, r13
	call	re_copy_regs
	mov	cl, byte ptr [rbp + 0x38]
	add	al, al
	and	cl, 0xf9
	mov	dl, al
	and	dl, 6
	or	dl, cl
	and	al, 6
	mov	byte ptr [rbp + 0x38], dl
	mov	r14, -2
	je	.label_528
.label_531:
	mov	al, byte ptr [rsp + 0x88]
	mov	r14, qword ptr [r13]
	test	al, al
	je	.label_528
	cmp	r14, rbx
	jne	.label_532
	mov	r14, qword ptr [r13 + 8]
	sub	r14, rbx
.label_528:
	mov	rdi, r13
	call	free
.label_526:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_534:
	xor	ecx, ecx
	test	rax, rax
	cmovle	r14, rcx
	mov	ebx, 1
	cmovg	rbx, rax
	jmp	.label_529
.label_532:
	mov	edi, OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407a80
	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:

	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407aa0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	sub	rsp, 0x28
	mov	r10, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x18], 1
	mov	qword ptr [rsp], 0
	call	re_search_2_stub
	add	rsp, 0x28
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ae0

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_536
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_539
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_536
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_537
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_541
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_536
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_537
.label_539:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_538
.label_536:
	mov	rax, -2
	jmp	.label_540
.label_538:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_537
.label_541:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_537:
	mov	rax, qword ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x60]
	movzx	ecx, byte ptr [rsp + 0x78]
	mov	dword ptr [rsp + 8], ecx
	mov	qword ptr [rsp], rax
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_540:
	add	rsp, 0x28
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
	#Procedure 0x407c20
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	sub	rsp, 0x28
	mov	r10, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 0x18], 0
	call	re_search_2_stub
	add	rsp, 0x28
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c60
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	test	rdx, rdx
	je	.label_542
	or	al, 2
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 0x10], r8
	ret	
.label_542:
	mov	byte ptr [rdi + 0x38], al
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	mov	qword ptr [rsi + 0x10], 0
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407c90

	.globl free_token
	.type free_token, @function
free_token:
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0x400ff
	cmp	eax, 6
	jne	.label_543
	mov	rdi, qword ptr [rdi]
	jmp	free_charset
.label_543:
	cmp	eax, 3
	jne	.label_544
	mov	rdi, qword ptr [rdi]
	jmp	free
.label_544:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cb0

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_545
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_545:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407d10

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x407d40

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0xd0], xmm0
	movups	xmmword ptr [r15 + 0xc0], xmm0
	movups	xmmword ptr [r15 + 0xb0], xmm0
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
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
	movabs	rax, 0x555555555555554
	cmp	rbp, rax
	ja	.label_546
	lea	rdi, [rbp + 1]
	mov	qword ptr [r15 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r15], rax
	mov	eax, 1
.label_554:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, rbp
	jbe	.label_554
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r15 + 0x40], rax
	dec	rbx
	mov	qword ptr [r15 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r15 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x75
	jne	.label_547
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_547
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x66
	jne	.label_547
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_547
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_547
	or	byte ptr [r15 + 0xb0], 4
.label_547:
	mov	al, byte ptr [r15 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r15 + 0xb0], cl
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_553
	test	al, 4
	jne	.label_550
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r15 + 0x78], rax
	xor	r12d, r12d
	test	rax, rax
	je	.label_546
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_549:
	xor	ebp, ebp
	mov	ebx, r14d
	nop	word ptr cs:[rax + rax]
.label_551:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_552
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rcx, qword ptr [r15 + 0x78]
	or	qword ptr [rcx + r12*8], rdx
.label_552:
	cmp	ebx, 0x7f
	ja	.label_548
	cmp	ebx, eax
	je	.label_548
	or	byte ptr [r15 + 0xb0], 8
.label_548:
	inc	rbp
	inc	ebx
	cmp	rbp, 0x40
	jne	.label_551
	add	r14d, 0x40
	inc	r12
	cmp	r12, 4
	jne	.label_549
	jmp	.label_553
.label_550:
	mov	qword ptr [word ptr [r15 + 120]], OFFSET FLAT:utf8_sb_map
.label_553:
	cmp	qword ptr [r15], 0
	je	.label_555
	xor	r14d, r14d
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_546
.label_555:
	mov	r14d, 0xc
.label_546:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f60

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r13d, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x90], 0
	movzx	r8d, r13b
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	re_string_construct_common
	test	r15, r15
	jle	.label_557
	lea	rsi, [r15 + 1]
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_559
.label_557:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_561
	mov	rbp, qword ptr [rbx + 8]
.label_561:
	mov	qword ptr [rbx + 8], rbp
	mov	eax, dword ptr [r14 + 0xb4]
	test	r13b, r13b
	je	.label_562
	cmp	eax, 2
	jl	.label_563
	nop	
.label_556:
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_559
	xor	eax, eax
	cmp	qword ptr [rbx + 0x38], r15
	jge	.label_559
	mov	rsi, qword ptr [rbx + 0x40]
	movsxd	rcx, dword ptr [r14 + 0xb4]
	add	rcx, qword ptr [rbx + 0x30]
	cmp	rsi, rcx
	jg	.label_559
	add	rsi, rsi
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	je	.label_556
	jmp	.label_559
.label_562:
	cmp	eax, 2
	jl	.label_564
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_558
.label_563:
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_558
.label_564:
	test	r12, r12
	je	.label_560
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_558
.label_560:
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
.label_558:
	xor	eax, eax
.label_559:
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
	#Procedure 0x408080

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	push	r14
	push	rbx
	push	rax
	mov	r14, qword ptr [rdi]
	mov	rdi, qword ptr [r14 + 0x70]
	test	rdi, rdi
	je	.label_565
.label_566:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_566
.label_565:
	mov	qword ptr [r14 + 0x70], 0
	mov	dword ptr [r14 + 0x80], 0xf
	mov	qword ptr [r14 + 0x68], 0
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	qword ptr [r14 + 0x20], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080e0

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_567
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
.label_567:
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408110

	.globl parse
	.type parse, @function
parse:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	r15, qword ptr [r13]
	mov	qword ptr [r15 + 0xd8], rbx
	or	rdx, 0x800000
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	fetch_token
	xor	r12d, r12d
	xor	r8d, r8d
	mov	rdi, rbp
	mov	rsi, r13
	lea	rdx, [rsp + 8]
	mov	rcx, rbx
	mov	r9, r14
	call	parse_reg_exp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_570
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_569
.label_570:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r15
	call	create_tree
	mov	r13, rax
	test	rbx, rbx
	je	.label_572
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r13
	call	create_tree
	mov	r12, rax
	jmp	.label_568
.label_572:
	mov	r12, r13
.label_568:
	test	r13, r13
	je	.label_571
	test	r12, r12
	je	.label_571
.label_569:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_571:
	mov	dword ptr [r14], 0xc
	xor	r12d, r12d
	jmp	.label_569
	.section	.text
	.align	16
	#Procedure 0x4081d0

	.globl analyze
	.type analyze, @function
analyze:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x20], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, 0xc
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_574
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_574
	test	rcx, rcx
	je	.label_574
	mov	rcx, qword ptr [rbx + 0x28]
	test	rcx, rcx
	je	.label_574
	mov	rdi, qword ptr [r14 + 0x30]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	je	.label_578
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_579
	mov	rax, qword ptr [rbx + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_577:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	rcx, qword ptr [r14 + 0x30]
	jb	.label_577
.label_579:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:optimize_subexps
	mov	rdx, rbx
	call	preorder
	xor	eax, eax
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_573
	mov	rcx, qword ptr [rbx + 0xe0]
	xor	eax, eax
.label_575:
	cmp	rax, qword ptr [rcx + rax*8]
	jne	.label_573
	inc	rax
	cmp	rax, qword ptr [r14 + 0x30]
	jb	.label_575
.label_573:
	cmp	rax, qword ptr [r14 + 0x30]
	jne	.label_578
	mov	rdi, qword ptr [rbx + 0xe0]
	call	free
	mov	qword ptr [rbx + 0xe0], 0
.label_578:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:lower_subexps
	mov	rdx, r14
	call	postorder
	test	eax, eax
	jne	.label_574
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_first
	mov	rdx, rbx
	call	postorder
	test	eax, eax
	jne	.label_574
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_next
	mov	rdx, rbx
	call	preorder
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, rbx
	call	preorder
	test	eax, eax
	jne	.label_574
	mov	rdi, rbx
	call	calc_eclosure
	test	eax, eax
	jne	.label_574
	test	byte ptr [r14 + 0x38], 0x10
	jne	.label_576
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_576
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_580
.label_576:
	xor	eax, eax
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_574
.label_580:
	mov	rax, qword ptr [rbx + 0x10]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x38], rax
	test	rax, rax
	mov	eax, 0xc
	je	.label_574
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	calc_inveclosure
.label_574:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4083b0

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_594
	mov	r11, qword ptr [rdi]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	xor	r10d, r10d
	xor	eax, eax
.label_588:
	mov	rsi, rax
	shl	rsi, 4
	movzx	edx, byte ptr [r11 + rsi + 8]
	dec	edx
	cmp	edx, 0xb
	ja	.label_584
	lea	rcx, [r11 + rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_592]]
.label_1878:
	mov	dl, 1
	cmp	byte ptr [rcx], 0
	js	.label_595
	mov	dl, r10b
.label_595:
	mov	r10b, dl
	jmp	.label_589
.label_1879:
	mov	rcx, qword ptr [rdi]
	mov	rsi, qword ptr [rcx + rsi]
	mov	edx, 2
	nop	
.label_585:
	cmp	qword ptr [rsi + rdx*8], 0
	jne	.label_582
	inc	rdx
	cmp	rdx, 3
	jle	.label_585
	jmp	.label_589
.label_1880:
	mov	r9b, 1
	jmp	.label_589
.label_1881:
	mov	edx, dword ptr [rcx]
	lea	ecx, [rdx - 0x10]
	cmp	ecx, 0x30
	ja	.label_593
	bt	r8, rcx
	jb	.label_589
.label_593:
	cmp	edx, 0x80
	jne	.label_582
	nop	word ptr [rax + rax]
.label_589:
	inc	rax
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_588
	jmp	.label_586
.label_594:
	xor	r9d, r9d
	xor	r10d, r10d
.label_586:
	mov	r8b, r9b
	and	r8b, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_590
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_590
	xor	eax, eax
	mov	edx, 8
	nop	word ptr cs:[rax + rax]
.label_581:
	mov	rsi, qword ptr [rdi]
	mov	r9d, dword ptr [rsi + rdx]
	movzx	ecx, r9b
	cmp	ecx, 1
	jne	.label_583
	cmp	byte ptr [rsi + rdx - 8], 0
	js	.label_587
.label_583:
	mov	r9, qword ptr [rdi]
	mov	esi, dword ptr [r9 + rdx]
	movzx	ecx, sil
	cmp	ecx, 5
	jne	.label_591
	and	esi, 0xffffff00
	or	esi, 7
	mov	dword ptr [r9 + rdx], esi
	jmp	.label_591
.label_587:
	and	r9d, 0xffdfffff
	mov	dword ptr [rsi + rdx], r9d
	nop	word ptr cs:[rax + rax]
.label_591:
	inc	rax
	add	rdx, 0x10
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_581
.label_590:
	mov	dword ptr [rdi + 0xb4], 1
	mov	al, byte ptr [rdi + 0xb0]
	cmp	qword ptr [rdi + 0x98], 0
	setg	cl
	or	cl, r8b
	add	cl, cl
	and	al, 0xf9
	or	al, cl
	mov	byte ptr [rdi + 0xb0], al
.label_582:
	ret	
.label_584:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x408520

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r15 + 0x90], rax
	mov	rcx, qword ptr [r15 + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rsp]
	call	re_node_set_init_copy
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_598
	cmp	qword ptr [r15 + 0x98], 0
	jle	.label_601
	cmp	qword ptr [rsp + 8], 0
	jle	.label_601
	xor	r13d, r13d
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_605:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15]
	mov	r10, r8
	shl	r10, 4
	movzx	r9d, byte ptr [rax + r10 + 8]
	cmp	r9d, 4
	jne	.label_597
	cmp	qword ptr [rsp + 8], 0
	mov	esi, 0
	jle	.label_604
	mov	rdi, qword ptr [r15]
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	add	r10, rdi
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_606:
	mov	rbx, qword ptr [rcx + rsi*8]
	shl	rbx, 4
	movzx	edx, byte ptr [rdi + rbx + 8]
	cmp	edx, 9
	jne	.label_602
	mov	rdx, qword ptr [rdi + rbx]
	cmp	rdx, qword ptr [r10]
	je	.label_604
.label_602:
	inc	rsi
	cmp	rsi, rax
	jl	.label_606
.label_604:
	cmp	r9d, 4
	setne	al
	cmp	rsi, qword ptr [rsp + 8]
	je	.label_597
	test	al, al
	jne	.label_597
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r8 + r8*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_597
	mov	rax, qword ptr [r15 + 0x30]
	lea	rcx, [r12 + r12*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	mov	r13d, 0
	jne	.label_598
	nop	word ptr [rax + rax]
.label_597:
	inc	r13
	cmp	r13, qword ptr [rsp + 8]
	jl	.label_605
.label_601:
	lea	rdi, [rsp + 0x1c]
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rsi, r15
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x48], rax
	test	rax, rax
	je	.label_596
	cmp	byte ptr [rax + 0x68], 0
	js	.label_599
	mov	qword ptr [r15 + 0x60], rax
	mov	qword ptr [r15 + 0x58], rax
	mov	qword ptr [r15 + 0x50], rax
	jmp	.label_600
.label_599:
	lea	rbx, [rsp + 0x1c]
	lea	r14, [rsp]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x60], rax
	cmp	qword ptr [r15 + 0x50], 0
	je	.label_603
	test	rax, rax
	je	.label_603
	mov	rax, qword ptr [r15 + 0x58]
	test	rax, rax
	je	.label_603
.label_600:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	xor	eax, eax
.label_598:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_603:
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_598
.label_596:
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_598
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408730

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	mov	qword ptr [rdx], rdi
	mov	qword ptr [rdx + 0x58], rsi
	mov	qword ptr [rdx + 0x50], rsi
	mov	qword ptr [rdx + 0x78], rcx
	mov	byte ptr [rdx + 0x88], r8b
	test	rcx, rcx
	setne	al
	or	al, r8b
	mov	byte ptr [rdx + 0x8b], al
	mov	eax, dword ptr [r9 + 0xb4]
	mov	dword ptr [rdx + 0x90], eax
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 2
	and	al, 1
	mov	byte ptr [rdx + 0x89], al
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 3
	and	al, 1
	mov	byte ptr [rdx + 0x8a], al
	mov	rax, qword ptr [rdx + 0x58]
	mov	qword ptr [rdx + 0x68], rax
	mov	qword ptr [rdx + 0x60], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4087a0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_607
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_608
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_608
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_607
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_608
	mov	qword ptr [rbx + 0x18], rax
.label_607:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_609
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_608
	mov	qword ptr [rbx + 8], rax
.label_609:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_608:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408830

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15, rdi
	mov	r13, qword ptr [r15 + 0x30]
	mov	rbx, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	rbx, rax
	cmovg	rbx, rax
	cmp	byte ptr [r15 + 0x8a], 0
	jne	.label_621
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_621
	cmp	byte ptr [r15 + 0x8c], 0
	je	.label_627
.label_621:
	mov	r12, qword ptr [r15 + 0x38]
	jmp	.label_629
.label_627:
	cmp	rbx, r13
	jle	.label_632
	lea	r14, [r15 + 0x20]
	jmp	.label_611
.label_628:
	mov	r12, rcx
	lea	rax, [rbx + 1]
	cmp	rax, 2
	jb	.label_635
	cmp	rbx, -2
	jne	.label_640
	mov	rax, qword ptr [r15 + 0x40]
	cmp	rax, qword ptr [r15 + 0x58]
	jl	.label_640
.label_635:
	mov	rax, qword ptr [r15 + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r13], al
	mov	rcx, qword ptr [r15 + 0x10]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	rbx, -1
	jne	.label_645
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_645
	nop	dword ptr [rax]
.label_611:
	mov	rax, qword ptr [r15 + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [r15]
	movzx	ebp, byte ptr [rcx + rax]
	test	bpl, bpl
	js	.label_652
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_652
	mov	r12, rbx
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + rbp*4]
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + r13], al
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	movzx	eax, byte ptr [rax + r13]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
.label_645:
	mov	rax, r13
	jmp	.label_618
	nop	word ptr cs:[rax + rax]
.label_652:
	mov	rdx, rbx
	sub	rdx, r13
	mov	rax, qword ptr [r15 + 0x20]
	mov	qword ptr [rsp + 0x70], rax
	mov	rsi, qword ptr [r15]
	add	rsi, qword ptr [r15 + 0x28]
	add	rsi, r13
	lea	rdi, [rsp + 0x2c]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rcx, rbx
	mov	rbx, rax
	lea	rax, [rbx - 1]
	cmp	rax, -4
	lea	rbp, [rsp + 0x30]
	ja	.label_628
	mov	qword ptr [rsp + 0x20], rcx
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 0x2c]
	jne	.label_637
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	mov	rsi, qword ptr [r15]
	add	rsi, qword ptr [r15 + 0x28]
	add	rsi, r13
	jmp	.label_641
.label_637:
	mov	rdi, rbp
	mov	esi, r12d
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	jne	.label_648
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	mov	rsi, rbp
.label_641:
	mov	rdx, rbx
	call	memcpy
	mov	rax, qword ptr [r15 + 0x10]
	mov	dword ptr [rax + r13*4], r12d
	lea	rbp, [rbx + r13]
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	mov	r12, qword ptr [rsp + 0x20]
	jge	.label_618
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rax + r13*4 + 4]
	lea	rdx, [rbx*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbp
.label_618:
	mov	rbx, r12
	cmp	rbx, rax
	mov	r13, rax
	jg	.label_611
	jmp	.label_612
.label_648:
	mov	r12, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_613
.label_640:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_632:
	mov	rax, r13
.label_612:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
	jmp	.label_614
.label_629:
	cmp	r13, rbx
	jge	.label_623
.label_613:
	mov	rdx, rbx
	sub	rdx, r13
	lea	rcx, [r15 + 0x20]
	mov	rax, qword ptr [r15 + 0x20]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_624
	mov	rbp, qword ptr [r15]
	add	rbp, qword ptr [r15 + 0x28]
	add	rbp, r12
.label_617:
	mov	qword ptr [rsp + 0x18], r12
	lea	rdi, [rsp + 0x28]
	mov	rsi, rbp
	mov	qword ptr [rsp + 0x10], rcx
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_633
	mov	qword ptr [rsp + 0x20], rbx
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x28]
	je	.label_642
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	esi, ebx
	call	wcrtomb
	mov	rdx, rax
	sub	rax, r14
	jne	.label_649
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsp + 0x30]
	jmp	.label_650
.label_624:
	lea	rbp, [rsp + 0x30]
	cmp	dword ptr [r15 + 0x90], 0
	jle	.label_617
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_655:
	cmp	rax, rdx
	jge	.label_617
	mov	rdi, qword ptr [r15]
	mov	r8, qword ptr [r15 + 0x78]
	add	rdi, qword ptr [r15 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rax + rdi]
	mov	rsi, rbx
	mov	bl, byte ptr [r8 + rdi]
	mov	byte ptr [rsp + rax + 0x30], bl
	mov	rbx, rsi
	inc	rax
	movsxd	rsi, dword ptr [r15 + 0x90]
	cmp	rax, rsi
	jl	.label_655
	jmp	.label_617
.label_633:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_619
	cmp	r14, -2
	jne	.label_622
	mov	rax, qword ptr [r15 + 0x40]
	cmp	rax, qword ptr [r15 + 0x58]
	jl	.label_622
.label_619:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r12, qword ptr [rsp + 0x18]
	add	rax, r12
	mov	rdx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_646
.label_639:
	movzx	eax, al
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + r13], al
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_630
.label_636:
	inc	r12
	mov	rcx, qword ptr [r15 + 0x10]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	r14, -1
	je	.label_634
	mov	rbp, r13
	jmp	.label_629
.label_649:
	cmp	rdx, -1
	je	.label_642
	lea	rbp, [rdx + r13]
	mov	rdi, qword ptr [r15 + 0x40]
	cmp	rbp, rdi
	jbe	.label_644
.label_622:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_623:
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], r12
.label_614:
	xor	eax, eax
.label_610:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_642:
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	mov	rsi, rbp
.label_650:
	mov	rdx, r14
	call	memcpy
	mov	r12, qword ptr [rsp + 0x18]
	cmp	byte ptr [r15 + 0x8c], 0
	je	.label_654
	lea	rax, [r13*8]
	add	rax, qword ptr [r15 + 0x18]
	mov	rcx, r12
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_615:
	mov	qword ptr [rax], rcx
	inc	rcx
	add	rax, 8
	dec	rdx
	jne	.label_615
.label_654:
	add	r12, r14
	mov	rax, qword ptr [r15 + 0x10]
	mov	dword ptr [rax + r13*4], ebx
	lea	rbp, [r14 + r13]
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	jge	.label_620
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rax + r13*4 + 4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_626
.label_620:
	mov	rbp, rax
.label_626:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r13, rbp
	jmp	.label_629
.label_644:
	cmp	qword ptr [r15 + 0x18], 0
	jne	.label_631
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x20], rdx
	call	malloc
	mov	rdx, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0x18], rax
	test	rax, rax
	mov	rax, qword ptr [rsp + 8]
	je	.label_638
.label_631:
	mov	qword ptr [rsp + 8], rax
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_643
	test	r13, r13
	je	.label_647
	mov	rax, qword ptr [r15 + 0x18]
	xor	ecx, ecx
.label_651:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	r13, rcx
	jne	.label_651
.label_647:
	mov	byte ptr [r15 + 0x8c], 1
.label_643:
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsp + 0x30]
	mov	qword ptr [rsp + 0x20], rdx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r15 + 0x10]
	mov	dword ptr [rax + r13*4], ebx
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + r13*8], rsi
	cmp	rdi, 2
	jb	.label_653
	lea	rax, [r13*4]
	add	rax, qword ptr [r15 + 0x10]
	shl	r13, 3
	add	r13, qword ptr [r15 + 0x18]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_616:
	cmp	rcx, r14
	mov	rdx, r12
	cmovb	rdx, rcx
	add	rdx, rsi
	mov	qword ptr [r13 + rcx*8], rdx
	mov	dword ptr [rax + rcx*4], 0xffffffff
	inc	rcx
	cmp	rdi, rcx
	jne	.label_616
.label_653:
	mov	rax, qword ptr [rsp + 8]
	add	qword ptr [r15 + 0x58], rax
	cmp	qword ptr [r15 + 0x60], rsi
	mov	r12, rsi
	jle	.label_625
	add	qword ptr [r15 + 0x68], rax
.label_625:
	mov	rbx, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	rbx, rax
	cmovg	rbx, rax
	add	r12, r14
	mov	r13, rbp
	jmp	.label_629
.label_646:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_639
.label_630:
	mov	rcx, qword ptr [r15 + 0x18]
	mov	qword ptr [rcx + r13*8], r12
	jmp	.label_636
.label_634:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	rbp, r13
	jmp	.label_629
.label_638:
	mov	eax, 0xc
	jmp	.label_610
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408dc0

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jge	.label_656
	jmp	.label_659
.label_658:
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_657
	nop	word ptr [rax + rax]
.label_659:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_658
.label_657:
	movzx	edi, cl
	call	toupper
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rbx], al
	inc	rbx
	cmp	rbx, r15
	jl	.label_659
	mov	rbx, r15
.label_656:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408e30

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	jle	.label_670
	lea	r14, [rbx + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_664
	nop	dword ptr [rax + rax]
.label_662:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rcx, qword ptr [rbx + 0x78]
	test	rcx, rcx
	jne	.label_668
.label_671:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_665:
	mov	ecx, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rbx + 0x10]
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_669
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_669:
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_664
	jmp	.label_666
.label_667:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	jle	.label_663
	nop	word ptr cs:[rax + rax]
.label_661:
	cmp	rax, rdx
	jge	.label_660
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	cmp	rax, rcx
	jl	.label_661
	lea	rsi, [rsp + 0x10]
	jmp	.label_663
.label_668:
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_671
.label_660:
	lea	rsi, [rsp + 0x10]
	jmp	.label_663
	nop	word ptr cs:[rax + rax]
.label_664:
	mov	rdx, r12
	sub	rdx, r13
	mov	rbp, qword ptr [rbx + 0x20]
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_667
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_663:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_662
	cmp	rax, -2
	jne	.label_665
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_662
	mov	qword ptr [r14], rbp
.label_670:
	mov	rcx, r13
.label_666:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
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
	#Procedure 0x408fd0

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	mov	rax, qword ptr [rdi + 0x30]
	mov	r8, qword ptr [rdi + 0x40]
	mov	rdx, qword ptr [rdi + 0x58]
	cmp	r8, rdx
	cmovg	r8, rdx
	cmp	rax, r8
	jge	.label_672
	nop	dword ptr [rax + rax]
.label_673:
	mov	rdx, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	add	rdx, qword ptr [rdi + 0x28]
	movzx	edx, byte ptr [rax + rdx]
	mov	rcx, qword ptr [rdi + 0x78]
	mov	cl, byte ptr [rcx + rdx]
	mov	byte ptr [rsi + rax], cl
	inc	rax
	cmp	rax, r8
	jl	.label_673
	mov	rax, r8
.label_672:
	mov	qword ptr [rdi + 0x30], rax
	mov	qword ptr [rdi + 0x38], rax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409020

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbx
	mov	rbx, rsi
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409040

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r15, rdi
	mov	rbp, qword ptr [rsi]
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp], rax
	call	parse_branch
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_680
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_674
.label_680:
	mov	r14, qword ptr [rsp + 0x18]
	or	r14, 0x800000
	nop	dword ptr [rax]
.label_677:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	jne	.label_675
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	mov	edx, 0
	je	.label_679
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_676
	cmp	eax, 9
	mov	edx, 0
	je	.label_679
.label_676:
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 0xa8], rax
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, r12
	call	parse_branch
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_678
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_681
.label_678:
	mov	rax, qword ptr [rsp + 0x10]
	or	qword ptr [rbp + 0xa8], rax
	nop	word ptr cs:[rax + rax]
.label_679:
	mov	ecx, 0xa
	mov	rdi, rbp
	mov	rsi, rbx
	call	create_tree
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_677
	mov	dword ptr [r12], 0xc
	xor	r14d, r14d
	jmp	.label_674
.label_675:
	mov	r14, rbx
.label_674:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_681:
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_674
	xor	r14d, r14d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_674
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091a0

	.globl create_tree
	.type create_tree, @function
create_tree:
	sub	rsp, 0x18
	mov	byte ptr [rsp + 0x10], cl
	lea	rcx, [rsp + 8]
	call	create_token_tree
	add	rsp, 0x18
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091c0

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_699
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	mov	byte ptr [r15], r12b
	mov	eax, dword ptr [r15 + 8]
	mov	ecx, eax
	and	ecx, 0xff9fffff
	mov	dword ptr [r15 + 8], ecx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_683
	mov	rcx, qword ptr [rbp + 0x48]
	cmp	rcx, qword ptr [rbp + 0x30]
	je	.label_683
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	dword ptr [rsi + rcx*4], -1
	je	.label_684
.label_683:
	cmp	r12d, 0x5c
	jne	.label_708
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_686
	mov	r12, rdx
	mov	rdi, rbp
	call	re_string_peek_byte_case
	mov	r14b, al
	mov	byte ptr [r15], r14b
	mov	ebx, 0xffffff00
	and	ebx, dword ptr [r15 + 8]
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_691
	mov	rsi, qword ptr [rbp + 0x48]
	inc	rsi
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebp, eax
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_698
.label_699:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_682
.label_708:
	mov	qword ptr [rsp], rdx
	mov	ebx, 0xffffff00
	and	ebx, dword ptr [r15 + 8]
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_705
	mov	rsi, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebx, eax
	mov	edi, ebx
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_712
.label_686:
	mov	byte ptr [r15 + 8], 0x24
	mov	r14d, 1
	jmp	.label_682
.label_705:
	movzx	r14d, byte ptr [r15]
	cmp	r14, 0x5f
	sete	r13b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r14*2]
	movzx	ecx, r13b
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	and	ebx, 0xffbfff01
.label_712:
	or	ebx, eax
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
	cmp	r12d, 0x3e
	jg	.label_688
	lea	eax, [r12 - 0x24]
	cmp	eax, 0xa
	ja	.label_692
	jmp	qword ptr [word ptr [+ (rax * 8) + label_694]]
.label_1882:
	mov	rdx, qword ptr [rsp]
	test	dl, 8
	jne	.label_695
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	je	.label_695
	inc	qword ptr [rbp + 0x48]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_682
.label_695:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x20
	jmp	.label_682
.label_688:
	cmp	r12d, 0x7a
	jg	.label_706
	cmp	r12d, 0x3f
	je	.label_707
	cmp	r12d, 0x5b
	je	.label_709
	cmp	r12d, 0x5e
	jne	.label_682
	mov	rcx, qword ptr [rsp]
	test	ecx, 0x800008
	jne	.label_710
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_710
	test	ch, 8
	je	.label_682
	mov	rcx, qword ptr [rbp + 8]
	movzx	eax, byte ptr [rax + rcx - 1]
	cmp	eax, 0xa
	jne	.label_682
.label_710:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x10
	jmp	.label_682
.label_691:
	movzx	ebp, r14b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	and	ebx, 0xffbfff01
.label_698:
	or	ebx, eax
	mov	dword ptr [r15 + 8], ebx
	movzx	eax, r14b
	mov	r14d, 2
	cmp	eax, 0x5f
	jg	.label_690
	lea	ecx, [rax - 0x27]
	cmp	ecx, 0x2c
	ja	.label_693
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_697]]
.label_1895:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_682
	mov	byte ptr [r15 + 8], 4
	add	eax, -0x31
	cdqe	
	mov	qword ptr [r15], rax
	jmp	.label_682
.label_706:
	cmp	r12d, 0x7b
	je	.label_700
	cmp	r12d, 0x7c
	je	.label_702
	cmp	r12d, 0x7d
	jne	.label_682
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	je	.label_703
	jmp	.label_682
.label_684:
	and	eax, 0xff9fff00
	or	eax, 0x200001
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	jmp	.label_682
.label_690:
	lea	ecx, [rax - 0x73]
	cmp	ecx, 0xa
	ja	.label_711
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_714]]
.label_1902:
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	or	ebx, 0x22
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_692:
	cmp	r12d, 0xa
	jne	.label_682
	mov	rax, qword ptr [rsp]
	test	ah, 8
	jne	.label_685
	jmp	.label_682
.label_1883:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_687
	jmp	.label_682
.label_1884:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_689
	jmp	.label_682
.label_1885:
	and	ebx, 0xffffff00
	or	ebx, 0xb
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_1886:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_682
	jmp	.label_696
.label_1887:
	and	ebx, 0xffffff00
	or	ebx, 5
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_707:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_682
	jmp	.label_701
.label_709:
	and	ebx, 0xffffff00
	or	ebx, 0x14
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_700:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	je	.label_704
	jmp	.label_682
.label_702:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	jne	.label_682
	test	ax, ax
	js	.label_685
	jmp	.label_682
.label_711:
	cmp	eax, 0x60
	je	.label_713
	cmp	eax, 0x62
	jne	.label_682
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x100
	jmp	.label_682
.label_693:
	cmp	eax, 0x57
	jne	.label_682
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	or	ebx, 0x21
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_1903:
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	or	ebx, 0x20
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_1904:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_682
.label_704:
	and	ebx, 0xffffff00
	or	ebx, 0x17
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_1905:
	mov	rax, r12
	test	ah, 4
	jne	.label_682
	test	ax, ax
	js	.label_682
.label_685:
	and	ebx, 0xffffff00
	or	ebx, 0xa
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_1906:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_682
.label_703:
	and	ebx, 0xffffff00
	or	ebx, 0x18
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_713:
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x40
	jmp	.label_682
.label_1891:
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x80
	jmp	.label_682
.label_1892:
	mov	rax, r12
	test	ah, 0x20
	jne	.label_682
.label_687:
	and	ebx, 0xffffff00
	or	ebx, 8
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_1893:
	mov	rax, r12
	test	ah, 0x20
	jne	.label_682
.label_689:
	and	ebx, 0xffffff00
	or	ebx, 9
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_1894:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_682
.label_696:
	and	ebx, 0xffffff00
	or	ebx, 0x12
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_1896:
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 6
	jmp	.label_682
.label_1897:
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 9
	jmp	.label_682
.label_1898:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_682
.label_701:
	and	ebx, 0xffffff00
	or	ebx, 0x13
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_682
.label_1899:
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x200
	jmp	.label_682
.label_1900:
	test	r12d, 0x80000
	jne	.label_682
	and	ebx, 0xffffff00
	or	ebx, 0x23
	mov	dword ptr [r15 + 8], ebx
.label_682:
	mov	eax, r14d
	add	rsp, 0x18
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
	#Procedure 0x409830

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	cmp	byte ptr [rdi + 0x8b], 0
	jne	.label_718
.label_716:
	mov	rax, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	al, byte ptr [rcx + rax + 1]
.label_717:
	movzx	eax, al
	ret	
.label_718:
	cmp	dword ptr [rdi + 0x90], 2
	jl	.label_715
	mov	rax, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x48]
	cmp	dword ptr [rax + rcx*4 + 4], -1
	je	.label_716
	lea	rdx, [rcx + 2]
	cmp	qword ptr [rdi + 0x30], rdx
	je	.label_715
	cmp	dword ptr [rax + rcx*4 + 8], -1
	je	.label_716
.label_715:
	mov	rax, qword ptr [rdi + 0x48]
	cmp	byte ptr [rdi + 0x8c], 0
	je	.label_719
	mov	rcx, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	jmp	.label_720
.label_719:
	inc	rax
.label_720:
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rdi]
	mov	al, byte ptr [rcx + rax]
	test	al, al
	jns	.label_717
	mov	cl, byte ptr [rdi + 0x8c]
	test	cl, cl
	je	.label_717
	jmp	.label_716
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098b0

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	cmp	dword ptr [rdi + 0x90], 1
	jne	.label_721
	mov	rax, qword ptr [rdi + 8]
	movzx	eax, byte ptr [rax + rsi]
	ret	
.label_721:
	mov	rax, qword ptr [rdi + 0x10]
	mov	eax, dword ptr [rax + rsi*4]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098d0

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp], rax
	call	parse_expression
	xor	r15d, r15d
	test	rax, rax
	jne	.label_723
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_723
	jmp	.label_725
	nop	word ptr cs:[rax + rax]
.label_729:
	test	rbx, rbx
	cmovne	r15, rbx
	mov	rax, r15
.label_723:
	mov	rbx, rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	je	.label_727
	test	r12, r12
	je	.label_722
	cmp	eax, 9
	je	.label_724
.label_722:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, r14
	call	parse_expression
	mov	r15, rax
	test	r15, r15
	jne	.label_726
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_728
.label_726:
	test	rbx, rbx
	je	.label_729
	test	r15, r15
	je	.label_729
	mov	ecx, 0x10
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	call	create_tree
	test	rax, rax
	jne	.label_723
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r15
	xor	r15d, r15d
	call	postorder
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	mov	dword ptr [r14], 0xc
	jmp	.label_725
.label_728:
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_725
	xor	r15d, r15d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_725
.label_727:
	mov	r15, rbx
	jmp	.label_725
.label_724:
	mov	r15, rbx
.label_725:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a00

	.globl postorder
	.type postorder, @function
postorder:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	jmp	.label_730
.label_734:
	mov	rdi, qword ptr [rcx + 0x10]
.label_730:
	mov	rcx, rdi
	mov	rdi, qword ptr [rcx + 8]
	test	rdi, rdi
	jne	.label_730
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_731
	mov	rdi, qword ptr [rcx + 8]
	test	rdi, rdi
	jne	.label_730
	jmp	.label_734
.label_731:
	mov	r12, rbx
	nop	word ptr cs:[rax + rax]
.label_733:
	mov	rbx, rcx
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_732
	mov	rcx, qword ptr [rbx]
	xor	eax, eax
	test	rcx, rcx
	je	.label_732
	cmovne	r12, rbx
	mov	rax, rcx
	cmove	rax, rbx
	mov	rdi, qword ptr [rax + 0x10]
	cmp	rdi, r12
	mov	r12, rbx
	je	.label_733
	test	rdi, rdi
	mov	r12, rbx
	je	.label_733
	jmp	.label_730
.label_732:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a90

	.globl free_tree
	.type free_tree, @function
free_tree:
	push	rax
	lea	rdi, [rsi + 0x28]
	call	free_token
	xor	eax, eax
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409aa0

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 8], r9
	mov	qword ptr [rsp], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	r14d, ecx
	and	r14d, 0x1000000
	mov	ebx, ecx
	and	ebx, 0x20
	mov	r15d, ecx
	and	r15d, 0x10
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_751
	nop	word ptr cs:[rax + rax]
.label_740:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
.label_751:
	movzx	eax, byte ptr [r13 + 8]
	dec	eax
	cmp	eax, 0x23
	ja	.label_735
	mov	r12, qword ptr [rbp]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_744]]
.label_1818:
	test	r14, r14
	jne	.label_737
.label_1815:
	test	rbx, rbx
	jne	.label_737
	test	r15, r15
	jne	.label_740
.label_1814:
	mov	rax, qword ptr [rsp + 0x18]
	test	eax, 0x20000
	jne	.label_741
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 9
	jne	.label_741
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x10
	jmp	.label_742
.label_737:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xd
.label_742:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_735:
	mov	rax, qword ptr [rsp + 0x10]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_741:
	mov	byte ptr [r13 + 8], 1
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	jne	.label_738
	jmp	.label_739
.label_1819:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x21
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_5
	mov	ecx, OFFSET FLAT:.str.2_3
	jmp	.label_750
.label_1820:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x23
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_2
	mov	ecx, OFFSET FLAT:.str_0
.label_750:
	mov	rdi, r12
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	build_charclass_op
	jmp	.label_736
.label_1817:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r12
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r8, rbx
	call	parse_bracket_exp
	jmp	.label_736
.label_1810:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	je	.label_739
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_738
	mov	rbx, qword ptr [rsp + 0x20]
.label_753:
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	jle	.label_738
	cmp	rax, qword ptr [rbx + 0x30]
	je	.label_738
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_738
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	test	rbp, rbp
	je	.label_739
	test	r14, r14
	jne	.label_753
	jmp	.label_739
.label_1811:
	mov	cl, byte ptr [r13]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r12 + 0xa8], rax
	je	.label_755
	or	qword ptr [r12 + 0xa0], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	je	.label_739
	inc	qword ptr [r12 + 0x98]
	or	byte ptr [r12 + 0xb0], 2
	jmp	.label_738
.label_1812:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	je	.label_739
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_738
	or	byte ptr [r12 + 0xb0], 2
	jmp	.label_738
.label_1813:
	mov	r8, qword ptr [rsp]
	inc	r8
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	parse_sub_exp
.label_736:
	mov	r14, rax
	test	r14, r14
	jne	.label_738
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, dword ptr [rbx]
	test	eax, eax
	jne	.label_735
.label_738:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdx, rbx
	call	fetch_token
	mov	ebp, ebx
	mov	r15, rbx
	and	ebp, 0x1000000
	mov	rbx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_759:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x17
	ja	.label_756
	mov	ecx, 0x8c0800
	bt	ecx, eax
	jae	.label_754
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, r15
	mov	r9, rbx
	call	parse_dup_op
	test	rax, rax
	jne	.label_757
	mov	ecx, dword ptr [rbx]
	test	ecx, ecx
	jne	.label_758
.label_757:
	test	rbp, rbp
	mov	r14, rax
	je	.label_759
	movzx	ecx, byte ptr [r13 + 8]
	cmp	ecx, 0x17
	je	.label_761
	cmp	ecx, 0xb
	mov	r14, rax
	jne	.label_759
.label_761:
	test	rax, rax
	je	.label_762
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rax
	call	postorder
.label_762:
	mov	dword ptr [rbx], 0xd
	jmp	.label_742
.label_758:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r14, r14
	je	.label_735
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r14
	call	postorder
	jmp	.label_735
.label_756:
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_735
.label_754:
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_735
.label_1816:
	mov	eax, dword ptr [r13]
	test	ax, 0x30f
	je	.label_745
	test	byte ptr [r12 + 0xb0], 0x10
	jne	.label_746
	mov	rdi, r12
	call	init_word_char
.label_746:
	mov	eax, dword ptr [r13]
.label_745:
	cmp	eax, 0x200
	je	.label_747
	cmp	eax, 0x100
	jne	.label_748
.label_747:
	cmp	dword ptr [r13], 0x100
	jne	.label_749
	mov	dword ptr [r13], 6
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 9
	jmp	.label_752
.label_1821:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 5
	jmp	.label_742
.label_739:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_742
.label_748:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	test	rax, rax
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_760
	mov	dword ptr [rcx], 0xc
	jmp	.label_742
.label_749:
	mov	dword ptr [r13], 5
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 0xa
.label_752:
	mov	r14, qword ptr [rsp + 8]
	mov	dword ptr [r13], eax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0xa
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rbp
	call	create_tree
	test	rbx, rbx
	je	.label_743
	test	rbp, rbp
	je	.label_743
	test	rax, rax
	je	.label_743
.label_760:
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	jmp	.label_735
.label_755:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 6
	jmp	.label_742
.label_743:
	mov	dword ptr [r14], 0xc
	jmp	.label_742
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f90

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x80], 0xf
	je	.label_763
.label_765:
	movsxd	rcx, dword ptr [rbx + 0x80]
	lea	eax, [rcx + 1]
	mov	dword ptr [rbx + 0x80], eax
	mov	rdx, qword ptr [rbx + 0x70]
	shl	rcx, 6
	lea	rax, [rdx + rcx + 8]
	mov	qword ptr [rdx + rcx + 8], 0
	mov	qword ptr [rdx + rcx + 0x10], r12
	mov	qword ptr [rdx + rcx + 0x18], r14
	movups	xmm0, xmmword ptr [r15]
	movups	xmmword ptr [rdx + rcx + 0x30], xmm0
	and	byte ptr [rdx + rcx + 0x3a], 0xf3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdx + rcx + 0x20], xmm0
	mov	qword ptr [rdx + rcx + 0x40], -1
	test	r12, r12
	je	.label_766
	mov	qword ptr [r12], rax
.label_766:
	test	r14, r14
	je	.label_764
	mov	qword ptr [r14], rax
.label_764:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_763:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_764
	mov	rax, qword ptr [rbx + 0x70]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbx + 0x70], rcx
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_765
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a050

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r9
	mov	qword ptr [rsp + 8], r8
	mov	rbp, rcx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, qword ptr [r14 + 0x30]
	lea	rax, [r12 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbp
	or	rdx, 0x800000
	mov	rdi, rbx
	mov	rsi, r15
	call	fetch_token
	movzx	eax, byte ptr [rbx + 8]
	xor	r8d, r8d
	cmp	eax, 9
	je	.label_771
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 8]
	mov	r9, r13
	call	parse_reg_exp
	mov	r8, rax
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_767
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 9
	jne	.label_769
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_767
.label_771:
	cmp	r12, 8
	mov	rdi, qword ptr [rsp + 0x10]
	ja	.label_772
	mov	eax, 1
	mov	cl, r12b
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa8], rax
.label_772:
	xor	edx, edx
	mov	ecx, 0x11
	mov	rsi, r8
	call	create_tree
	test	rax, rax
	je	.label_768
	mov	qword ptr [rax + 0x28], r12
.label_767:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_768:
	mov	dword ptr [r13], 0xc
	xor	eax, eax
	jmp	.label_767
.label_769:
	test	r8, r8
	je	.label_770
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r8
	call	postorder
.label_770:
	mov	dword ptr [r13], 8
	xor	eax, eax
	jmp	.label_767
	.section	.text
	.align	16
	#Procedure 0x40a150

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rsp + 0x28], r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	r13, rdi
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	test	r15, r15
	je	.label_803
	test	r14, r14
	je	.label_803
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebp, eax
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x19
	je	.label_805
	cmp	eax, 2
	je	.label_779
	mov	dword ptr [rsp + 0x14], 0
	jmp	.label_807
.label_805:
	or	byte ptr [r14 + 0x20], 1
	test	bh, 1
	je	.label_808
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_set
.label_808:
	movsxd	rax, ebp
	add	qword ptr [r13 + 0x48], rax
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebp, eax
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 2
	je	.label_779
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
.label_807:
	mov	qword ptr [rsp + 0x20], r14
	mov	eax, dword ptr [r12 + 8]
	movzx	ecx, al
	cmp	ecx, 0x15
	jne	.label_785
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r12 + 8], eax
.label_785:
	lea	rax, [rsp + 0x60]
	mov	qword ptr [rsp + 0xa0], rax
	mov	dword ptr [rsp + 0x98], 3
	lea	rdi, [rsp + 0x98]
	mov	r9d, 1
	mov	rsi, r13
	mov	rdx, r12
	mov	ecx, ebp
	mov	rbp, r13
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_793
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_799
	nop	
.label_776:
	cmp	eax, 2
	je	.label_801
	mov	qword ptr [rsp + 0x28], r13
	lea	rax, [rsp + 0x60]
	mov	qword ptr [rsp + 0xa0], rax
	mov	dword ptr [rsp + 0x98], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x98]
	mov	rsi, rbp
	mov	rdx, r12
	mov	ecx, r14d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_799
	jmp	.label_793
.label_797:
	lea	rax, [r13 + r13]
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_774
	lea	rcx, [r13 + r13 + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rbp], rax
	jmp	.label_775
	nop	dword ptr [rax]
.label_799:
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0x98]
	cmp	eax, 2
	je	.label_783
	cmp	eax, 4
	mov	r13, qword ptr [rsp + 0x28]
	je	.label_787
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x16
	je	.label_804
	cmp	eax, 2
	jne	.label_790
	jmp	.label_786
	nop	word ptr cs:[rax + rax]
.label_783:
	mov	r13, qword ptr [rsp + 0x28]
	jmp	.label_787
.label_804:
	movsxd	rax, r14d
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x38]
	cmp	ecx, 0x15
	je	.label_798
	cmp	ecx, 2
	je	.label_800
	lea	rcx, [rsp + 0x40]
	mov	qword ptr [rsp + 0x90], rcx
	mov	dword ptr [rsp + 0x88], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0x88]
	mov	rsi, rbp
	lea	rdx, [rsp + 0x30]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_806
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	mov	rdx, qword ptr [rsp + 0x20]
	jg	.label_809
	xor	edx, edx
.label_809:
	mov	rdi, rbx
	mov	rsi, r15
	lea	rcx, [rsp + 0xb0]
	lea	r8, [rsp + 0x98]
	lea	r9, [rsp + 0x88]
	call	build_range_exp
	jmp	.label_784
.label_798:
	mov	eax, r14d
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	byte ptr [r12 + 8], 1
.label_790:
	mov	eax, dword ptr [rsp + 0x98]
.label_787:
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_789
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_792]]
.label_1911:
	movzx	esi, byte ptr [rsp + 0xa0]
	mov	rdi, r15
	call	bitset_set
	jmp	.label_794
.label_1912:
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rbp + 0x28]
	cmp	qword ptr [rsp + 8], r13
	je	.label_797
.label_775:
	mov	eax, dword ptr [rsp + 0xa0]
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x28], rdx
	mov	rdx, qword ptr [rbp]
	mov	dword ptr [rdx + rcx*4], eax
	mov	r13, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp]
	jmp	.label_794
.label_1913:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	call	build_equiv_class
	jmp	.label_784
.label_1914:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	call	build_collating_symbol
	jmp	.label_784
.label_1915:
	mov	rdi, qword ptr [rbp + 0x78]
	mov	r8, qword ptr [rsp + 0xa0]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rcx, [rsp + 0xa8]
	mov	r9, rbx
	call	build_charclass
.label_784:
	mov	dword ptr [r13], eax
	test	eax, eax
	jne	.label_810
.label_794:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x15
	jne	.label_776
	movsxd	rax, r14d
	add	qword ptr [rbp + 0x48], rax
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_778
	mov	rdi, r15
	call	bitset_not
.label_778:
	mov	qword ptr [rsp + 0x28], r13
	mov	r12, qword ptr [rsp + 0x18]
	cmp	dword ptr [r12 + 0xb4], 2
	mov	r14, qword ptr [rsp + 0x20]
	jl	.label_781
	mov	rsi, qword ptr [r12 + 0x78]
	mov	rdi, r15
	call	bitset_mask
.label_781:
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_780
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_780
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_780
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_780
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_796
	cmp	qword ptr [r14 + 0x48], 0
	jne	.label_780
	test	byte ptr [r14 + 0x20], 1
	jne	.label_780
.label_796:
	mov	rdi, r14
	call	free_charset
	mov	byte ptr [rsp + 0xc0], 3
	mov	qword ptr [rsp + 0xb8], r15
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	jmp	.label_791
.label_780:
	or	byte ptr [r12 + 0xb0], 2
	mov	byte ptr [rsp + 0xc0], 6
	mov	qword ptr [rsp + 0xb8], r14
	xor	ebx, ebx
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_788
	nop	dword ptr [rax]
.label_782:
	cmp	qword ptr [r15 + rbx*8], 0
	jne	.label_773
	inc	rbx
	cmp	rbx, 3
	jle	.label_782
	mov	rdi, r15
	call	free
	jmp	.label_777
.label_773:
	mov	byte ptr [rsp + 0xc0], 3
	mov	qword ptr [rsp + 0xb8], r15
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	test	rax, rax
	je	.label_788
	mov	ecx, 0xa
	mov	rdi, r12
	mov	rsi, rax
	mov	rdx, rbp
	call	create_tree
.label_791:
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_777
	jmp	.label_788
.label_793:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
.label_810:
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_795
.label_779:
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 2
	jmp	.label_795
.label_801:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_795
.label_803:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xc
	jmp	.label_802
.label_786:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_795
.label_800:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_795
.label_806:
	mov	dword ptr [r13], eax
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_795
.label_774:
	mov	r14, rbp
.label_788:
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xc
.label_795:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free_charset
.label_802:
	xor	ebp, ebp
.label_777:
	mov	rax, rbp
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_789:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a730

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	al, byte ptr [r14 + 0xb0]
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r14 + 0xb0], cl
	xor	ebx, ebx
	test	al, 8
	mov	r15d, 0
	jne	.label_815
	movabs	rax, 0x3ff000000000000
	mov	qword ptr [r14 + 0xb8], rax
	movabs	rax, 0x7fffffe87fffffe
	mov	qword ptr [r14 + 0xc0], rax
	mov	r15d, 2
	mov	ebx, 0x80
	test	byte ptr [r14 + 0xb0], 4
	je	.label_815
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0xc8], xmm0
.label_816:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_815:
	call	__ctype_b_loc
	lea	rdx, [rbx + rbx]
	add	rdx, qword ptr [rax]
	nop	dword ptr [rax + rax]
.label_813:
	mov	rax, rdx
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_812:
	lea	esi, [rbx + rcx]
	cmp	esi, 0x5f
	je	.label_811
	movzx	esi, word ptr [rax]
	and	esi, 8
	test	si, si
	je	.label_814
.label_811:
	mov	esi, 1
	shl	rsi, cl
	or	qword ptr [r14 + r15*8 + 0xb8], rsi
.label_814:
	inc	rcx
	add	rax, 2
	cmp	rcx, 0x40
	jne	.label_812
	inc	r15
	add	rbx, 0x40
	add	rdx, 0x80
	cmp	r15d, 4
	jne	.label_813
	jmp	.label_816
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a810

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	dword ptr [rsp + 0xc], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_820
	mov	qword ptr [rsp], r12
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	test	r12, r12
	je	.label_827
	mov	al, byte ptr [r12 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0xc]
	or	al, cl
	mov	byte ptr [r12 + 0x20], al
	lea	rcx, [rsp + 0x20]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_824
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_828
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_821:
	movsx	rsi, al
	mov	rdi, rbx
	call	bitset_set
	mov	al, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_821
.label_828:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_822
	mov	rdi, rbx
	call	bitset_not
.label_822:
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_826
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdi, rbx
	call	bitset_mask
.label_826:
	mov	byte ptr [rsp + 0x18], 3
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_819
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_823
	mov	byte ptr [rsp + 0x18], 6
	mov	qword ptr [rsp + 0x10], r12
	or	byte ptr [r15 + 0xb0], 2
	lea	rcx, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	test	rax, rax
	je	.label_819
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, rax
	call	create_tree
	mov	rbp, rax
	jmp	.label_825
.label_823:
	mov	rdi, r12
	call	free_charset
	jmp	.label_825
.label_819:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	jmp	.label_817
.label_820:
	mov	dword ptr [r12], 0xc
	jmp	.label_818
.label_827:
	mov	rdi, rbx
	call	free
.label_817:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_818
.label_824:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
.label_818:
	xor	ebp, ebp
.label_825:
	mov	rax, rbp
	add	rsp, 0x28
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
	#Procedure 0x40a9d0

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, r9
	mov	rbp, r8
	mov	r15, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	rcx, qword ptr [r14 + 0x48]
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x17
	jne	.label_843
	mov	qword ptr [rsp], rcx
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	qword ptr [rsp + 8], rbp
	call	fetch_number
	mov	rbx, rax
	cmp	rbx, -1
	jne	.label_837
	mov	qword ptr [rsp + 0x10], r13
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 1
	jne	.label_839
	movzx	eax, byte ptr [r15]
	xor	ebx, ebx
	cmp	eax, 0x2c
	je	.label_842
	jmp	.label_839
.label_843:
	mov	qword ptr [rsp + 0x10], r13
	cmp	eax, 0x12
	sete	cl
	movzx	ebx, cl
	cmp	eax, 0x13
	mov	eax, 1
	mov	r13, -1
	cmove	r13, rax
.label_844:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbp
	call	fetch_token
	xor	r14d, r14d
	test	r12, r12
	je	.label_830
	mov	rax, r13
	xor	r14d, r14d
	or	rax, rbx
	je	.label_832
	test	rbx, rbx
	jg	.label_835
	mov	r15, qword ptr [rsp + 0x18]
.label_841:
	movzx	eax, byte ptr [r12 + 0x30]
	cmp	eax, 0x11
	jne	.label_840
	mov	rdx, qword ptr [r12 + 0x28]
	mov	esi, OFFSET FLAT:mark_opt_subexp
	mov	rdi, r12
	call	postorder
.label_840:
	cmp	r13, -1
	sete	al
	movzx	ecx, al
	or	ecx, 0xa
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_836
	lea	rax, [rbx + 2]
	cmp	rax, r13
	jg	.label_849
	inc	rbx
	nop	dword ptr [rax + rax]
.label_847:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, r12
	call	create_tree
	test	r12, r12
	je	.label_836
	test	rax, rax
	je	.label_836
	xor	edx, edx
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rax
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_836
	inc	rbx
	cmp	rbx, r13
	jl	.label_847
.label_849:
	test	r14, r14
	je	.label_845
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	jmp	.label_830
.label_837:
	mov	qword ptr [rsp + 0x10], r13
	cmp	rbx, -2
	je	.label_834
.label_842:
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	mov	r13, rbx
	je	.label_831
	cmp	eax, 1
	jne	.label_834
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2c
	jne	.label_834
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	fetch_number
	mov	r13, rax
	cmp	r13, -2
	je	.label_834
.label_831:
	cmp	r13, -1
	je	.label_829
	cmp	rbx, r13
	jg	.label_839
.label_829:
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	jne	.label_839
	cmp	r13, -1
	mov	rax, r13
	cmove	rax, rbx
	cmp	rax, 0x8000
	mov	rbp, qword ptr [rsp + 8]
	jl	.label_844
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xf
	xor	r14d, r14d
	jmp	.label_830
.label_839:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xa
	xor	r14d, r14d
	jmp	.label_830
.label_834:
	mov	rax, qword ptr [rsp + 8]
	test	eax, 0x200000
	je	.label_833
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14 + 0x48], rax
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [r15], xmm0
	mov	byte ptr [r15 + 8], 1
	mov	r14, r12
	jmp	.label_830
.label_845:
	mov	r14, rbp
	jmp	.label_830
.label_832:
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r12
	call	postorder
	jmp	.label_830
.label_835:
	mov	ebp, 1
	mov	r14, r12
	cmp	rbx, 2
	jge	.label_846
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_848
.label_846:
	mov	r15, qword ptr [rsp + 0x18]
.label_838:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	create_tree
	mov	r14, rax
	test	r12, r12
	je	.label_836
	test	r14, r14
	je	.label_836
	inc	rbp
	cmp	rbp, rbx
	jl	.label_838
.label_848:
	cmp	rbx, r13
	je	.label_830
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	test	r12, r12
	jne	.label_841
.label_836:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xc
	xor	r14d, r14d
.label_830:
	mov	rax, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_833:
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 2
	setne	al
	movzx	eax, al
	add	eax, 9
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	xor	r14d, r14d
	jmp	.label_830
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad10

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_858
	mov	rcx, qword ptr [rsi + 8]
	mov	r8b, byte ptr [rcx + rax]
	mov	byte ptr [rdi], r8b
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_856
	mov	rax, qword ptr [rsi + 0x48]
	cmp	rax, qword ptr [rsi + 0x30]
	je	.label_856
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_855
.label_856:
	movzx	ecx, r8b
	test	dl, 1
	je	.label_850
	cmp	ecx, 0x5c
	jne	.label_850
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_850
	mov	qword ptr [rsi + 0x48], rax
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	jmp	.label_855
.label_858:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_850:
	cmp	ecx, 0x5b
	jne	.label_859
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_861
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	jmp	.label_851
.label_859:
	cmp	ecx, 0x5e
	je	.label_853
	cmp	ecx, 0x5d
	je	.label_854
	cmp	ecx, 0x2d
	jne	.label_855
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_855:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_861:
	xor	eax, eax
.label_851:
	mov	byte ptr [rdi], al
	movzx	eax, al
	cmp	eax, 0x3d
	je	.label_860
	cmp	eax, 0x3a
	je	.label_862
	cmp	eax, 0x2e
	jne	.label_852
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_854:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_862:
	test	dl, 4
	jne	.label_857
.label_852:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], r8b
	mov	eax, 1
	ret	
.label_853:
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_860:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_857:
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ae10

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	eax, 1
	mov	cl, sil
	shl	rax, cl
	mov	rcx, rsi
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rsi
	sar	rcx, 6
	or	qword ptr [rdi + rcx*8], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ae40

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], r8
	mov	ebp, ecx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r13, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	mov	rsi, r13
	call	re_string_char_size_at
	mov	r12d, eax
	cmp	r12d, 2
	jl	.label_865
	mov	dword ptr [r15], 1
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	call	re_string_wchar_at
	mov	dword ptr [r15 + 8], eax
	movsxd	rax, r12d
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_866
.label_865:
	movsxd	rax, ebp
	add	r13, rax
	mov	qword ptr [rbx + 0x48], r13
	movzx	eax, byte ptr [r14 + 8]
	add	eax, -0x16
	cmp	eax, 8
	ja	.label_867
	jmp	qword ptr [word ptr [+ (rax * 8) + label_863]]
.label_1868:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_bracket_symbol
.label_1867:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	jne	.label_867
	lea	rdi, [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 8]
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x20]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_864
.label_867:
	mov	dword ptr [r15], 0
	mov	al, byte ptr [r14]
	mov	byte ptr [r15 + 8], al
.label_866:
	xor	eax, eax
.label_864:
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
	.align	16
	#Procedure 0x40af20

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	rbp, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	ecx, dword ptr [rbp]
	mov	eax, 0xb
	cmp	ecx, 2
	je	.label_871
	cmp	ecx, 4
	je	.label_871
	mov	edx, dword ptr [rbx]
	cmp	edx, 2
	je	.label_871
	cmp	edx, 4
	je	.label_871
	cmp	ecx, 3
	jne	.label_887
	mov	rdi, qword ptr [rbp + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_871
.label_887:
	cmp	dword ptr [rbx], 3
	jne	.label_872
	mov	rdi, qword ptr [rbx + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_871
.label_872:
	mov	eax, dword ptr [rbp]
	cmp	eax, 3
	je	.label_875
	test	eax, eax
	jne	.label_877
	mov	al, byte ptr [rbp + 8]
	jmp	.label_878
.label_875:
	mov	rax, qword ptr [rbp + 8]
	mov	al, byte ptr [rax]
	jmp	.label_878
.label_877:
	xor	eax, eax
.label_878:
	mov	ecx, dword ptr [rbx]
	cmp	ecx, 3
	je	.label_881
	test	ecx, ecx
	jne	.label_882
	mov	dl, byte ptr [rbx + 8]
	jmp	.label_883
.label_881:
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	jmp	.label_883
.label_882:
	xor	edx, edx
.label_883:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 3
	je	.label_885
	test	ecx, ecx
	jne	.label_886
.label_885:
	movzx	edi, al
	mov	rsi, r14
	mov	ebp, edx
	call	parse_byte
	mov	edx, ebp
	mov	ebp, eax
	jmp	.label_889
.label_886:
	mov	ebp, dword ptr [rbp + 8]
.label_889:
	mov	eax, dword ptr [rbx]
	cmp	eax, 3
	je	.label_869
	test	eax, eax
	jne	.label_870
.label_869:
	movzx	edi, dl
	mov	rsi, r14
	call	parse_byte
	mov	ebx, eax
	jmp	.label_874
.label_870:
	mov	ebx, dword ptr [rbx + 8]
.label_874:
	cmp	ebp, -1
	mov	eax, 3
	je	.label_871
	cmp	ebx, -1
	je	.label_871
	test	r12d, 0x10000
	je	.label_876
	cmp	ebp, ebx
	mov	eax, 0xb
	ja	.label_871
.label_876:
	test	r14, r14
	je	.label_879
	mov	r12, qword ptr [r14 + 0x40]
	cmp	qword ptr [r15], r12
	je	.label_880
.label_888:
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	dword ptr [rax + rcx*4], ebp
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 0x40], rcx
	mov	rcx, qword ptr [r14 + 0x10]
	mov	dword ptr [rcx + rax*4], ebx
.label_879:
	mov	r14d, ebx
	mov	ebp, ebp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_873:
	cmp	rbp, rbx
	ja	.label_868
	cmp	rbx, r14
	ja	.label_868
	mov	rdi, r13
	mov	rsi, rbx
	call	bitset_set
.label_868:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_873
.label_871:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_880:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rax*4 + 4]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_884
	test	rax, rax
	je	.label_884
	lea	rcx, [r12 + r12 + 1]
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r15], rcx
	jmp	.label_888
.label_884:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	eax, 0xc
	jmp	.label_871
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b120

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_890
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_890:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b160

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_891
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_891:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b1a0

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_944
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_946
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_944
.label_946:
	mov	r12d, OFFSET FLAT:.str.9_1
.label_944:
	mov	rbp, qword ptr [rbx + 0x48]
	cmp	qword ptr [r13], rbp
	je	.label_952
.label_910:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_903
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_909
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_916
	mov	esi, OFFSET FLAT:.str.3_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_924
	mov	esi, OFFSET FLAT:.str.9_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_926
	mov	esi, OFFSET FLAT:.str.11_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_914
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_922
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_942
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_915
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_948
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_908
	mov	esi, OFFSET FLAT:.str.16_0
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_892
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_899
.label_911:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_906
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_906:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_911
	jmp	.label_892
.label_903:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_921
	nop	word ptr cs:[rax + rax]
.label_932:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_927
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_927:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_932
	jmp	.label_892
	nop	dword ptr [rax + rax]
.label_921:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_938
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_938:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_921
	jmp	.label_892
.label_909:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_904
	nop	dword ptr [rax]
.label_953:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_949
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_949:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_953
	jmp	.label_892
	nop	dword ptr [rax + rax]
.label_904:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_896
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_896:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_904
	jmp	.label_892
.label_916:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_912
	nop	dword ptr [rax]
.label_925:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_917
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_917:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_925
	jmp	.label_892
	nop	dword ptr [rax]
.label_912:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_931
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_931:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_912
	jmp	.label_892
.label_924:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_893
	nop	word ptr [rax + rax]
.label_947:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_943
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_943:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_947
	jmp	.label_892
.label_893:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_951
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_951:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_893
	jmp	.label_892
.label_952:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_892
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_910
.label_926:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_918
	nop	dword ptr [rax]
.label_928:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_923
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_923:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_928
	jmp	.label_892
.label_918:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_933
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_933:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_918
	jmp	.label_892
.label_914:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_897
	nop	word ptr cs:[rax + rax]
.label_950:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_935
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_935:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_950
	jmp	.label_892
.label_897:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_955
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_955:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_897
	jmp	.label_892
.label_922:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_905
	nop	word ptr cs:[rax + rax]
.label_920:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_913
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_913:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_920
	jmp	.label_892
.label_905:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_929
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_929:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_905
	jmp	.label_892
.label_942:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_937
	nop	word ptr cs:[rax + rax]
.label_945:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_902
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_902:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_945
	jmp	.label_892
.label_937:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_898
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_898:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_937
	jmp	.label_892
.label_915:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_894
	nop	word ptr cs:[rax + rax]
.label_954:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_901
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_901:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_954
	jmp	.label_892
.label_894:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_940
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_940:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_894
	jmp	.label_892
.label_948:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_941
.label_936:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_934
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_934:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_936
	jmp	.label_892
.label_941:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_930
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_930:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_941
	jmp	.label_892
.label_899:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_895
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_895:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_899
	jmp	.label_892
.label_908:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_907
.label_900:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_919
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_919:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_900
.label_892:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_907:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_939
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_939:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_907
	jmp	.label_892
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b870

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_956:
	not	qword ptr [rdi + rax*8]
	inc	rax
	cmp	rax, 4
	jne	.label_956
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b890

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_957:
	mov	rcx, qword ptr [rsi + rax*8]
	and	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_957
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b8c0

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	mov	eax, 1
	cmp	dword ptr [rdi + 0x90], 1
	je	.label_958
	lea	rcx, [rsi + 1]
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_958
	lea	rcx, [rsi*4]
	add	rcx, qword ptr [rdi + 0x10]
	mov	eax, 1
	nop	dword ptr [rax]
.label_959:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_958
	lea	rdx, [rsi + rax + 1]
	inc	rax
	cmp	rdx, qword ptr [rdi + 0x30]
	jl	.label_959
.label_958:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b910

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbx + 0x68]
	mov	r14d, 7
	cmp	rax, qword ptr [rbx + 0x48]
	jle	.label_962
	mov	rbp, -1
	movzx	r13d, byte ptr [r12]
.label_965:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x1e
	jne	.label_960
	mov	rdi, rbx
	call	re_string_fetch_byte_case
	jmp	.label_963
	nop	word ptr cs:[rax + rax]
.label_960:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	mov	al, byte ptr [rcx + rax]
.label_963:
	mov	rcx, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rcx
	jle	.label_962
	movzx	edx, al
	cmp	edx, r13d
	jne	.label_967
	mov	rdx, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + rcx]
	cmp	edx, 0x5d
	je	.label_961
.label_967:
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + rbp + 1], al
	inc	rbp
	cmp	rbp, 0x1e
	jle	.label_965
.label_962:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_961:
	inc	rcx
	mov	qword ptr [rbx + 0x48], rcx
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp + 1], 0
	movzx	eax, byte ptr [r12 + 8]
	xor	r14d, r14d
	cmp	eax, 0x1e
	je	.label_966
	cmp	eax, 0x1c
	je	.label_964
	cmp	eax, 0x1a
	jne	.label_962
	mov	dword ptr [r15], 3
	jmp	.label_962
.label_966:
	mov	dword ptr [r15], 4
	jmp	.label_962
.label_964:
	mov	dword ptr [r15], 2
	jmp	.label_962
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ba00

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_968
	mov	rax, qword ptr [rbx + 0x48]
.label_973:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
.label_974:
	mov	bpl, byte ptr [rcx + rax]
.label_969:
	movzx	eax, bpl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_968:
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_971
	mov	rax, qword ptr [rbx + 0x48]
	cmp	rax, qword ptr [rbx + 0x30]
	je	.label_972
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_973
.label_972:
	mov	r14, qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, qword ptr [rcx + r14*8]
	mov	bpl, byte ptr [rax + rdx]
	test	bpl, bpl
	js	.label_970
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_char_size_at
	cdqe	
	add	rax, r14
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_969
.label_971:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	add	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx]
	jmp	.label_974
.label_970:
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x48], rax
	mov	rax, qword ptr [rbx + 8]
	mov	bpl, byte ptr [rax + r14]
	jmp	.label_969
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bab0

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	test	rsi, rsi
	je	.label_975
	jmp	btowc
.label_975:
	mov	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bac0

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, -1
	mov	r13d, 0x8000
	jmp	.label_976
.label_979:
	lea	rcx, [rbx + rbx*4]
	lea	rcx, [rax + rcx*2 - 0x30]
	cmp	rcx, 0x8000
	cmovg	rcx, r13
	nop	word ptr cs:[rax + rax]
.label_976:
	mov	rbx, rcx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r12]
	movzx	edx, byte ptr [r12 + 8]
	cmp	edx, 0x18
	je	.label_977
	cmp	edx, 2
	je	.label_978
	cmp	eax, 0x2c
	je	.label_977
	cmp	eax, 0x30
	mov	rcx, -2
	jb	.label_976
	cmp	edx, 1
	jne	.label_976
	cmp	rbx, -2
	je	.label_976
	movzx	edx, al
	cmp	edx, 0x39
	ja	.label_976
	cmp	rbx, -1
	jne	.label_979
	add	rax, -0x30
	mov	rcx, rax
	jmp	.label_976
.label_978:
	mov	rbx, -2
.label_977:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bb70

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx]
	lea	rcx, [rbx + 0x28]
	xor	r14d, r14d
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_987
	lea	r13, [rsp]
	xor	r14d, r14d
.label_981:
	mov	qword ptr [rax], r12
	mov	rax, qword ptr [r13]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r12, qword ptr [r13]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	je	.label_984
	lea	r13, [r12 + 8]
	jmp	.label_982
	nop	dword ptr [rax]
.label_984:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_986:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_980
	test	rbp, rbp
	jne	.label_985
.label_980:
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [r12]
	test	rbx, rbx
	jne	.label_986
	jmp	.label_983
	nop	word ptr cs:[rax + rax]
.label_985:
	lea	r13, [r12 + 0x10]
.label_982:
	lea	rcx, [rbp + 0x28]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [r13], rax
	test	rax, rax
	mov	rbx, rbp
	jne	.label_981
	jmp	.label_987
.label_983:
	mov	r14, qword ptr [rsp]
.label_987:
	mov	rax, r14
	add	rsp, 8
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
	#Procedure 0x40bc50

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	eax, dword ptr [rsi + 0x30]
	movzx	ecx, al
	cmp	ecx, 0x11
	jne	.label_988
	cmp	qword ptr [rsi + 0x28], rdi
	jne	.label_988
	or	eax, 0x80000
	mov	dword ptr [rsi + 0x30], eax
.label_988:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bc70

	.globl preorder
	.type preorder, @function
preorder:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_990
.label_992:
	mov	r12, qword ptr [rbx + 8]
	test	r12, r12
	mov	ecx, 0
	jne	.label_993
	nop	dword ptr [rax]
.label_989:
	mov	rax, rcx
	mov	rcx, rbx
	mov	r12, qword ptr [rcx + 0x10]
	cmp	r12, rax
	je	.label_991
	test	r12, r12
	jne	.label_993
.label_991:
	mov	rbx, qword ptr [rcx]
	xor	eax, eax
	test	rbx, rbx
	jne	.label_989
	jmp	.label_990
.label_993:
	mov	rdi, r14
	mov	rsi, r12
	call	r15
	test	eax, eax
	mov	rbx, r12
	je	.label_992
.label_990:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bce0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_994
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_994
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_994:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x11
	jne	.label_995
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_995
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_995
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_996
	mov	qword ptr [rdx], rsi
.label_996:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_995
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_995:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bd70

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	dword ptr [rsp + 4], 0
	mov	rdx, qword ptr [rbx + 8]
	test	rdx, rdx
	je	.label_997
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_997
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_997
	mov	qword ptr [rax], rbx
.label_997:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_998
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_998
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_998
	mov	qword ptr [rax], rbx
.label_998:
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bdf0

	.globl calc_first
	.type calc_first, @function
calc_first:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	jne	.label_999
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	xor	eax, eax
	jmp	.label_1000
.label_999:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rcx, rax
	mov	qword ptr [rbx + 0x38], rcx
	mov	eax, 0xc
	cmp	rcx, -1
	je	.label_1000
	xor	eax, eax
	movzx	edx, byte ptr [rbx + 0x30]
	cmp	edx, 0xc
	jne	.label_1000
	mov	edx, dword ptr [rbx + 0x28]
	mov	rsi, qword ptr [r14]
	shl	rcx, 4
	shl	edx, 8
	and	edx, 0x3ff00
	mov	edi, 0xfffc00ff
	and	edi, dword ptr [rsi + rcx + 8]
	or	edi, edx
	mov	dword ptr [rsi + rcx + 8], edi
.label_1000:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40be80

	.globl calc_next
	.type calc_next, @function
calc_next:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x10
	je	.label_1001
	cmp	eax, 0xb
	jne	.label_1004
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x20], rsi
	xor	eax, eax
	ret	
.label_1001:
	mov	rax, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rsi + 0x10]
	jmp	.label_1003
.label_1004:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1005
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1005:
	mov	rax, qword ptr [rsi + 0x10]
	test	rax, rax
	je	.label_1002
.label_1003:
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1002:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bee0

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	movzx	eax, byte ptr [rsi + 0x30]
	lea	edx, [rax - 2]
	cmp	edx, 0xe
	ja	.label_1006
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1010]]
.label_1923:
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rcx + 0x38]
.label_1009:
	mov	rdi, rax
	pop	rax
	jmp	re_node_set_init_1
.label_1924:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rdx, [rdx + 0x18]
	cmove	rdx, rsi
	test	rax, rax
	js	.label_1011
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x38]
	test	rdx, rdx
	js	.label_1008
	lea	rcx, [rcx + rcx*2]
	shl	rcx, 3
	add	rcx, qword ptr [rdi + 0x28]
	mov	rdi, rcx
	mov	rsi, rax
	pop	rax
	jmp	re_node_set_init_2
.label_1921:
	cmp	qword ptr [rsi + 0x20], 0
	je	.label_1012
	mov	edi, OFFSET FLAT:.str.17_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1922:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_1012
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	jmp	.label_1009
.label_1006:
	test	al, 8
	jne	.label_1007
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_1012:
	xor	eax, eax
	pop	rcx
	ret	
.label_1011:
	mov	edi, OFFSET FLAT:.str.18_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1008:
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1007:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c030

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdi
	xor	ebx, ebx
	lea	r15, [rsp + 8]
	xor	r12d, r12d
	jmp	.label_1015
	nop	dword ptr [rax]
.label_1013:
	inc	rbx
.label_1015:
	cmp	rbx, qword ptr [r14 + 0x10]
	jne	.label_1016
	xor	ebx, ebx
	test	r12b, 1
	mov	r12d, 0
	je	.label_1017
.label_1016:
	mov	rax, qword ptr [r14 + 0x30]
	lea	r13, [rbx + rbx*2]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1013
	mov	ecx, 1
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_1014
	mov	rax, qword ptr [r14 + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1013
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	r12b, 1
	jmp	.label_1013
.label_1014:
	mov	ebx, eax
.label_1017:
	mov	eax, ebx
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c0c0

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 0x10], 0
	je	.label_1018
	xor	eax, eax
	xorps	xmm0, xmm0
	xor	ecx, ecx
.label_1019:
	mov	rdx, qword ptr [r13 + 0x38]
	movups	xmmword ptr [rdx + rax], xmm0
	mov	qword ptr [rdx + rax + 0x10], 0
	inc	rcx
	mov	rdx, qword ptr [r13 + 0x10]
	add	rax, 0x18
	cmp	rcx, rdx
	jb	.label_1019
	xor	eax, eax
	test	rdx, rdx
	je	.label_1018
	xor	r14d, r14d
.label_1021:
	mov	rax, qword ptr [r13 + 0x30]
	lea	r15, [r14 + r14*2]
	cmp	qword ptr [rax + r15*8 + 8], 0
	jle	.label_1020
	mov	r12, qword ptr [rax + r15*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1022:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r12 + rbx*8]
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r14
	call	re_node_set_insert_last
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1018
	inc	rbx
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rbx, qword ptr [rax + r15*8 + 8]
	jl	.label_1022
.label_1020:
	inc	r14
	xor	eax, eax
	cmp	r14, qword ptr [r13 + 0x10]
	jb	.label_1021
.label_1018:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c180

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r13, qword ptr [rsi]
	mov	rbp, qword ptr [r15 + 8]
	test	rbp, rbp
	je	.label_1023
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1023
	mov	rax, qword ptr [r15 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1025
	mov	rcx, qword ptr [r13 + 0xa0]
	bt	rcx, rax
	jae	.label_1025
.label_1023:
	mov	qword ptr [rsp], rdi
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 8
	mov	rdi, r13
	call	create_tree
	mov	r12, rax
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 9
	mov	rdi, r13
	call	create_tree
	mov	rbx, rax
	test	rbp, rbp
	mov	r14, rbx
	je	.label_1026
	mov	ecx, 0x10
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	mov	r14, rax
.label_1026:
	mov	ecx, 0x10
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	create_tree
	test	rbx, rbx
	je	.label_1024
	test	r12, r12
	je	.label_1024
	test	r14, r14
	je	.label_1024
	test	rax, rax
	je	.label_1024
	mov	rcx, qword ptr [r15 + 0x28]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [r12 + 0x28], rcx
	mov	ecx, 0x80000
	and	ecx, dword ptr [r15 + 0x30]
	mov	edx, 0xfff7ffff
	mov	esi, dword ptr [rbx + 0x30]
	and	esi, edx
	or	esi, ecx
	mov	dword ptr [rbx + 0x30], esi
	and	edx, dword ptr [r12 + 0x30]
	or	edx, ecx
	mov	dword ptr [r12 + 0x30], edx
	jmp	.label_1027
.label_1025:
	mov	rax, qword ptr [r15 + 8]
.label_1027:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1024:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_1027
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c290

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rbx + 0x10], rbp
	jae	.label_1033
.label_1029:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r12
	mov	qword ptr [rax + rcx + 8], r15
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r15b
	cmp	eax, 5
	jne	.label_1032
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1031
.label_1032:
	cmp	eax, 6
	sete	cl
.label_1031:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r14, qword ptr [rbx + 0x10]
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_1030:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1033:
	lea	r13, [rbp + rbp]
	mov	r14, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	r13, rax
	ja	.label_1030
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1030
	mov	qword ptr [rsp], r13
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp + 8]
	call	realloc
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_1028
	test	rbp, rbp
	je	.label_1028
	test	r13, r13
	je	.label_1028
	test	rax, rax
	je	.label_1028
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_1029
.label_1028:
	mov	r15, rax
	call	free
	mov	rdi, rbp
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_1030
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c460

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1037
	cmp	r14, r15
	jne	.label_1034
	mov	qword ptr [rbx + 8], 1
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1035
.label_1034:
	mov	qword ptr [rbx + 8], 2
	mov	rax, qword ptr [rbx + 0x10]
	jge	.label_1036
	mov	qword ptr [rax], r14
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r15
	jmp	.label_1035
.label_1036:
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r14
.label_1035:
	xor	eax, eax
.label_1037:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c4e0

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 1
	mov	qword ptr [rbx + 8], 1
	mov	edi, 8
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1039
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1038:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1039:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	eax, 0xc
	jmp	.label_1038
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c530

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r15, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rbp + 0x28]
	lea	r14, [r15 + r15*2]
	mov	rsi, qword ptr [rax + r14*8 + 8]
	inc	rsi
	lea	rdi, [rsp + 0x30]
	call	re_node_set_alloc
	test	eax, eax
	jne	.label_1044
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rax, qword ptr [rbp]
	mov	rbx, r15
	shl	rbx, 4
	mov	r8d, dword ptr [rax + rbx + 8]
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1047
	mov	rcx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rcx + r14*8 + 8], 0
	je	.label_1047
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	test	byte ptr [rax + rcx + 0xa], 4
	jne	.label_1047
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r15
	mov	rcx, r15
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1044
.label_1047:
	mov	rax, qword ptr [rbp]
	test	byte ptr [rax + rbx + 8], 8
	jne	.label_1045
	mov	rbx, r15
	xor	r15d, r15d
	jmp	.label_1046
.label_1045:
	mov	rbx, r15
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1049
	xor	r15d, r15d
	xor	r13d, r13d
.label_1042:
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rdx, qword ptr [rcx + r13*8]
	lea	r12, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1040
	test	rcx, rcx
	jne	.label_1048
	xor	ecx, ecx
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1051
	jmp	.label_1044
	nop	dword ptr [rax]
.label_1048:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1051:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1044
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_1041
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1040:
	mov	r15b, 1
.label_1041:
	inc	r13
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_1042
	jmp	.label_1046
.label_1049:
	xor	r15d, r15d
.label_1046:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1044
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1050
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1050
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1043
.label_1050:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1043:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1044:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c710

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx], rsi
	mov	qword ptr [rbx + 8], 0
	lea	rdi, [rsi*8]
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	xor	ecx, ecx
	test	rax, rax
	mov	eax, 0xc
	cmovne	eax, ecx
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c740

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	ebx, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
.label_1060:
	mov	dword ptr [rsp + 0x10], ebx
	nop	word ptr cs:[rax + rax]
.label_1056:
	mov	rcx, qword ptr [rbp]
	mov	rax, r14
	shl	rax, 4
	movzx	ecx, byte ptr [rcx + rax + 8]
	cmp	ecx, 4
	jne	.label_1061
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rbx, qword ptr [rax + r14*8]
	mov	r15, rbp
	lea	r12, [r13 + r13*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x10]
	call	duplicate_node
	mov	rbp, rax
	cmp	rbp, -1
	je	.label_1062
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + r13*8], rcx
	mov	rax, qword ptr [r15 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	mov	r14, rbx
	mov	r13, rbp
	mov	rbp, r15
	jne	.label_1056
	jmp	.label_1053
	nop	word ptr cs:[rax + rax]
.label_1061:
	mov	rcx, qword ptr [rbp + 0x28]
	lea	r15, [r14 + r14*2]
	mov	rdx, qword ptr [rcx + r15*8 + 8]
	test	rdx, rdx
	je	.label_1052
	mov	rsi, qword ptr [rcx + r15*8 + 0x10]
	mov	rsi, qword ptr [rsi]
	lea	r12, [r13 + r13*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	cmp	rdx, 1
	je	.label_1055
	mov	rdi, rbp
	mov	rbx, rsi
	mov	r13d, dword ptr [rsp + 0x10]
	mov	edx, r13d
	call	search_duplicated_node
	cmp	rax, -1
	je	.label_1054
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	jne	.label_1063
	jmp	.label_1053
.label_1054:
	mov	rdi, rbp
	mov	rsi, rbx
	mov	edx, r13d
	call	duplicate_node
	mov	r14, rax
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r14, -1
	je	.label_1053
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	mov	rsi, rbx
	je	.label_1053
	mov	rdi, rbp
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1053
.label_1063:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + r15*8 + 0x10]
	mov	r14, qword ptr [rax + 8]
	mov	rdi, rbp
	mov	rsi, r14
	mov	edx, r13d
	call	duplicate_node
	mov	r13, rax
	cmp	r13, -1
	je	.label_1059
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	jne	.label_1056
	jmp	.label_1053
.label_1055:
	cmp	r14, qword ptr [rsp + 8]
	jne	.label_1057
	cmp	r13, r14
	jne	.label_1058
.label_1057:
	mov	rcx, qword ptr [rbp]
	mov	eax, dword ptr [rcx + rax + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	ebx, dword ptr [rsp + 0x10]
	or	ebx, eax
	mov	rdi, rbp
	mov	r14, rsi
	mov	edx, ebx
	call	duplicate_node
	mov	r13, rax
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r13, -1
	je	.label_1053
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	jne	.label_1060
	jmp	.label_1053
.label_1062:
	mov	dword ptr [rsp + 0x14], 0xc
	jmp	.label_1053
.label_1059:
	mov	dword ptr [rsp + 0x14], 0xc
	jmp	.label_1053
.label_1052:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + r13*8], rcx
.label_1064:
	mov	dword ptr [rsp + 0x14], 0
.label_1053:
	mov	eax, dword ptr [rsp + 0x14]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1058:
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	je	.label_1053
	jmp	.label_1064
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c9d0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	xor	eax, eax
	test	r15, r15
	je	.label_1069
	mov	rdx, qword ptr [r15 + 8]
	test	rdx, rdx
	je	.label_1069
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rax, [rcx + rdx*2]
	cmp	rbx, rax
	jge	.label_1075
	add	rbx, rdx
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1069
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
.label_1075:
	mov	rax, qword ptr [r15 + 8]
	test	rcx, rcx
	je	.label_1076
	lea	rbx, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1067
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_1071
.label_1074:
	dec	rax
.label_1077:
	dec	rcx
	jmp	.label_1072
	nop	word ptr [rax + rax]
.label_1071:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1074
	jge	.label_1077
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_1072:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1071
.label_1067:
	test	rax, rax
	js	.label_1068
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1068:
	mov	r11, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	r10, [r11 + rax*2 - 1]
	mov	r15, r10
	sub	r15, rbx
	inc	r15
	mov	eax, 0
	je	.label_1069
	lea	rax, [r15 + r11]
	mov	qword ptr [r14 + 8], rax
	lea	r8, [r11 - 1]
.label_1066:
	lea	r9, [r11 - 1]
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rdx, [r15*8]
	lea	rax, [r15 + r8]
	lea	r12, [rcx + rax*8]
	lea	r13, [rcx + r10*8]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1065:
	mov	rax, qword ptr [r13 + rsi*8]
	mov	rdi, qword ptr [rcx + r11*8 - 8]
	cmp	rax, rdi
	jle	.label_1073
	mov	qword ptr [r12 + rsi*8], rax
	add	rdx, -8
	dec	rsi
	xor	eax, eax
	mov	rdi, r15
	add	rdi, rsi
	jne	.label_1065
	jmp	.label_1069
	nop	word ptr cs:[rax + rax]
.label_1073:
	mov	qword ptr [r12 + rsi*8], rdi
	add	r15, rsi
	dec	r8
	add	r10, rsi
	cmp	r11, 1
	mov	r11, r9
	jg	.label_1066
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	jmp	.label_1070
.label_1076:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
.label_1070:
	call	memcpy
	xor	eax, eax
.label_1069:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb90

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
	je	.label_1085
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1080
	cmp	rsi, rax
	jne	.label_1083
	lea	rax, [rsi + rsi]
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1081
	mov	qword ptr [rbx + 0x10], rax
.label_1083:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	qword ptr [rcx], r14
	jle	.label_1086
	test	rax, rax
	jle	.label_1078
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr [rax + rax]
.label_1084:
	mov	rdx, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx + rax*8], rdx
	cmp	rax, 1
	lea	rax, [rax - 1]
	jg	.label_1084
	jmp	.label_1078
.label_1085:
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_init_1
	test	eax, eax
	sete	al
	jmp	.label_1079
.label_1080:
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1087
.label_1086:
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsi + rax*8 - 8]
	cmp	rcx, r14
	jle	.label_1078
	mov	rdx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1082:
	mov	qword ptr [rsi + rax*8], rcx
	mov	rcx, qword ptr [rdx + rax*8 - 0x10]
	dec	rax
	cmp	rcx, r14
	mov	rsi, rdx
	jg	.label_1082
.label_1078:
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
.label_1087:
	inc	qword ptr [rbx + 8]
	mov	al, 1
.label_1079:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1081:
	xor	eax, eax
	jmp	.label_1079
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cc70

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	r15, r14
	shl	r15, 4
	mov	rsi, qword ptr [rax + r15]
	mov	rdx, qword ptr [rax + r15 + 8]
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1088
	mov	rcx, qword ptr [rbx]
	mov	rdx, rax
	shl	rdx, 4
	shl	ebp, 8
	and	ebp, 0x3ff00
	mov	esi, 0xfffc00ff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, ebp
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	mov	esi, 0x3ff00
	and	esi, dword ptr [rcx + r15 + 8]
	or	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	or	dword ptr [rcx + rdx + 8], 0x40000
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + rax*8], r14
.label_1088:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ccf0

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	mov	r8, qword ptr [rdi + 0x10]
	lea	r10, [r8 - 1]
	mov	rax, -1
	test	r10, r10
	jle	.label_1089
	mov	r9, qword ptr [rdi]
	mov	rcx, r10
	shl	rcx, 4
	mov	r11d, dword ptr [r9 + rcx + 8]
	mov	ecx, r11d
	and	ecx, 0x40000
	je	.label_1089
	mov	r9, qword ptr [rdi + 0x20]
	shl	r8, 4
	add	r8, -0x18
	nop	word ptr [rax + rax]
.label_1092:
	cmp	qword ptr [r9 + r10*8], rsi
	jne	.label_1090
	shr	r11d, 8
	and	r11d, 0x3ff
	cmp	r11d, edx
	je	.label_1091
.label_1090:
	dec	r10
	test	r10, r10
	jle	.label_1089
	mov	rcx, qword ptr [rdi]
	mov	r11d, dword ptr [rcx + r8]
	mov	ecx, r11d
	and	ecx, 0x40000
	add	r8, -0x10
	test	ecx, ecx
	jne	.label_1092
	jmp	.label_1089
.label_1091:
	mov	rax, r10
.label_1089:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cd70

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_1093
	lea	rcx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rbx], rcx
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1094
	mov	qword ptr [rbx + 0x10], rax
.label_1093:
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
	mov	al, 1
.label_1095:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1094:
	xor	eax, eax
	jmp	.label_1095
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cdd0

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rdi
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1096
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1098
	mov	rdx, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_1097
.label_1096:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1097:
	xor	eax, eax
.label_1099:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1098:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	eax, 0xc
	jmp	.label_1099
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce40

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	mov	r9, qword ptr [rdi + 8]
	xor	eax, eax
	test	r9, r9
	jle	.label_1100
	xor	eax, eax
	dec	r9
	je	.label_1102
	mov	r8, qword ptr [rdi + 0x10]
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1101:
	lea	rdx, [r9 + rax]
	shr	rdx, 1
	cmp	qword ptr [r8 + rdx*8], rsi
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmovge	r9, rdx
	cmp	rax, r9
	jb	.label_1101
.label_1102:
	mov	rcx, qword ptr [rdi + 0x10]
	cmp	qword ptr [rcx + rax*8], rsi
	jne	.label_1103
	inc	rax
	ret	
.label_1103:
	xor	eax, eax
.label_1100:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ce90

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13d, ecx
	mov	rbp, rsi
	cmp	qword ptr [rdx + 8], 0
	je	.label_1106
	mov	qword ptr [rsp], rdi
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	mov	esi, r13d
	call	calc_state_hash
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x40]
	mov	rcx, qword ptr [rbp + 0x88]
	mov	qword ptr [rsp + 8], rbp
	and	rcx, rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_1105
	lea	r14, [rax + rcx*8]
	mov	r15, qword ptr [rax + rcx*8 + 0x10]
	xor	r12d, r12d
.label_1108:
	mov	rbp, qword ptr [r15 + r12*8]
	cmp	qword ptr [rbp], rbx
	jne	.label_1104
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1104
	mov	rdi, qword ptr [rbp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_node_set_compare
	test	al, al
	jne	.label_1107
.label_1104:
	inc	r12
	cmp	r12, qword ptr [r14]
	jl	.label_1108
.label_1105:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	edx, r13d
	mov	rcx, rbx
	call	create_cd_newstate
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1107
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_1109
.label_1106:
	mov	dword ptr [rdi], 0
.label_1109:
	xor	ebp, ebp
.label_1107:
	mov	rax, rbp
	add	rsp, 0x18
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
	#Procedure 0x40cf70

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	mov	rcx, qword ptr [rdi + 8]
	mov	eax, esi
	add	rax, rcx
	test	rcx, rcx
	jle	.label_1110
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_1111:
	add	rax, qword ptr [rdx + rsi*8]
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1111
.label_1110:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cfa0

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	xor	eax, eax
	test	rdi, rdi
	je	.label_1112
	test	rsi, rsi
	je	.label_1112
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, qword ptr [rsi + 8]
	jne	.label_1114
	nop	word ptr cs:[rax + rax]
.label_1113:
	mov	al, 1
	test	rcx, rcx
	jle	.label_1112
	mov	rax, qword ptr [rdi + 0x10]
	mov	rax, qword ptr [rax + rcx*8 - 8]
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8 - 8]
	lea	rcx, [rcx - 1]
	je	.label_1113
.label_1114:
	xor	eax, eax
.label_1112:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cff0

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x10], rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_1118
	mov	r12, r15
	add	r12, 8
	mov	rdi, r12
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1130
	mov	al, byte ptr [r15 + 0x68]
	mov	cl, r14b
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [r15 + 0x50], r12
	mov	qword ptr [rsp + 0x20], r12
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1115
	mov	eax, r14d
	and	eax, 1
	mov	dword ptr [rsp + 0x1c], eax
	mov	eax, r14d
	and	eax, 2
	mov	dword ptr [rsp + 0xc], eax
	and	r14d, 4
	mov	dword ptr [rsp + 8], r14d
	xor	r14d, r14d
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1126:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	ecx, sil
	mov	r13d, esi
	shr	r13d, 8
	mov	eax, r13d
	and	eax, 0x3ff
	cmp	ecx, 1
	jne	.label_1119
	test	eax, eax
	je	.label_1125
.label_1119:
	mov	rdi, rbx
	shr	esi, 0x14
	mov	bl, byte ptr [r15 + 0x68]
	mov	dl, bl
	shr	dl, 5
	movzx	edx, dl
	or	edx, esi
	shl	dl, 5
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r15 + 0x68], bl
	cmp	ecx, 4
	je	.label_1120
	cmp	ecx, 2
	jne	.label_1128
	or	bl, 0x10
	jmp	.label_1129
.label_1120:
	or	bl, 0x40
.label_1129:
	mov	byte ptr [r15 + 0x68], bl
.label_1128:
	test	eax, eax
	je	.label_1131
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [r15 + 0x50], rax
	mov	rbx, rdi
	jne	.label_1116
	mov	edi, 0x18
	call	malloc
	mov	qword ptr [r15 + 0x50], rax
	test	rax, rax
	je	.label_1121
	mov	rdi, rax
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	mov	eax, 0
	jne	.label_1118
	or	byte ptr [r15 + 0x68], 0x80
	xor	r12d, r12d
.label_1116:
	cmp	dword ptr [rsp + 0x1c], 0
	jne	.label_1117
	mov	eax, r13d
	and	eax, 1
	jne	.label_1124
.label_1117:
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_1122
	mov	eax, r13d
	and	eax, 2
	jne	.label_1124
.label_1122:
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1127
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_1124
.label_1127:
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1125
	and	r13d, 0x40
	je	.label_1125
	nop	word ptr cs:[rax + rax]
.label_1124:
	mov	rsi, r14
	sub	rsi, r12
	mov	rdi, qword ptr [rsp + 0x20]
	call	re_node_set_remove_at
	inc	r12
	jmp	.label_1125
.label_1131:
	mov	rbx, rdi
	nop	dword ptr [rax + rax]
.label_1125:
	inc	r14
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_1126
.label_1115:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	call	register_state
	test	eax, eax
	mov	rax, r15
	je	.label_1118
.label_1121:
	mov	rdi, r15
	call	free_state
	jmp	.label_1123
.label_1130:
	mov	rdi, r15
	call	free
.label_1123:
	xor	eax, eax
.label_1118:
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
	#Procedure 0x40d200

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	test	rsi, rsi
	js	.label_1132
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, rsi
	jle	.label_1132
	dec	rax
	mov	qword ptr [rdi + 8], rax
	cmp	rax, rsi
	jle	.label_1132
	mov	rax, qword ptr [rdi + 0x10]
	nop	
.label_1133:
	mov	rcx, qword ptr [rax + rsi*8 + 8]
	mov	qword ptr [rax + rsi*8], rcx
	inc	rsi
	cmp	rsi, qword ptr [rdi + 8]
	jl	.label_1133
.label_1132:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d240

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r13, rdi
	mov	qword ptr [rbx], r15
	lea	r12, [rbx + 0x20]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	r14d, 0xc
	test	eax, eax
	jne	.label_1135
	cmp	qword ptr [rbx + 0x10], 0
	jle	.label_1139
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1136:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13]
	mov	rcx, rsi
	shl	rcx, 4
	test	byte ptr [rax + rcx + 8], 8
	jne	.label_1134
	mov	rdi, r12
	call	re_node_set_insert_last
	test	al, al
	je	.label_1135
.label_1134:
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_1136
.label_1139:
	mov	r12, qword ptr [r13 + 0x40]
	and	r15, qword ptr [r13 + 0x88]
	lea	rbp, [r15 + r15*2]
	mov	r15, qword ptr [r12 + rbp*8]
	cmp	qword ptr [r12 + rbp*8 + 8], r15
	jle	.label_1137
.label_1138:
	lea	rax, [r12 + rbp*8]
	mov	rcx, qword ptr [rax]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [r12 + rbp*8 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	xor	r14d, r14d
.label_1135:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1137:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r12 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1135
	lea	rcx, [r12 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r12 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rcx], rdx
	jmp	.label_1138
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d330

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	cmp	ecx, 2
	je	.label_1149
	lea	r13, [r14 + 1]
	cmp	ecx, 1
	je	.label_1144
	test	ecx, ecx
	jne	.label_1147
	lea	r12, [r13*8]
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 8], rax
	xor	ebp, ebp
	test	rax, rax
	je	.label_1142
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	je	.label_1143
	mov	qword ptr [r15], r13
	mov	r12d, 1
	jmp	.label_1141
.label_1149:
	mov	r12d, 2
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
	ja	.label_1140
.label_1141:
	xor	eax, eax
	test	r14, r14
	jle	.label_1145
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	add	rbx, 8
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_1150:
	mov	rsi, qword ptr [rbx - 8]
	mov	qword ptr [rax], rsi
	mov	rsi, qword ptr [rbx]
	mov	qword ptr [rcx], rsi
	add	rax, 8
	add	rcx, 8
	add	rbx, 0x10
	dec	rdx
	jne	.label_1150
	mov	rax, r14
.label_1145:
	cmp	rax, qword ptr [r15]
	jae	.label_1146
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x10]
	nop	
.label_1148:
	mov	qword ptr [rdx + rax*8], -1
	mov	qword ptr [rcx + rax*8], -1
	inc	rax
	cmp	rax, qword ptr [r15]
	jb	.label_1148
.label_1146:
	mov	ebp, r12d
.label_1142:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1140:
	mov	rdi, qword ptr [r15 + 8]
	lea	rsi, [r13*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1142
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1151
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15 + 8], rcx
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15], r13
	jmp	.label_1141
.label_1143:
	mov	rdi, qword ptr [r15 + 8]
	call	free
	jmp	.label_1142
.label_1151:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	jmp	.label_1142
.label_1147:
	mov	edi, OFFSET FLAT:.str.23_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4d0

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	r15, qword ptr [rsp + 0x30]
	movsxd	rax, dword ptr [r15 + 0xb4]
	cmp	rax, rcx
	cmovge	rcx, rax
	lea	rbx, [r14 + 1]
	cmp	rbx, rcx
	cmovg	rbx, rcx
	movzx	eax, r9b
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r13
	mov	rcx, r8
	mov	r8d, eax
	mov	r9, r15
	call	re_string_construct_common
	mov	rdi, r13
	mov	rsi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1152
	lea	rax, [r15 + 0xb8]
	mov	qword ptr [r13 + 0x80], rax
	mov	al, byte ptr [r15 + 0xb0]
	shr	al, 4
	and	al, 1
	mov	byte ptr [r13 + 0x8e], al
	cmp	byte ptr [r13 + 0x8b], 0
	je	.label_1154
	mov	r12, qword ptr [r13 + 8]
.label_1154:
	mov	qword ptr [r13 + 8], r12
	xor	eax, eax
	cmp	byte ptr [r13 + 0x8b], 0
	mov	ecx, 0
	jne	.label_1153
	xor	ecx, ecx
	cmp	dword ptr [r15 + 0xb4], 1
	jg	.label_1153
	mov	rcx, r14
.label_1153:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
.label_1152:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d590

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
	lea	rbp, [r14*8]
	lea	rdi, [rbp + rbp*4]
	call	malloc
	mov	qword ptr [rbx + 0xd8], rax
	mov	rdi, rbp
	call	malloc
	mov	qword ptr [rbx + 0xf8], rax
	test	rax, rax
	je	.label_1156
	mov	rax, qword ptr [rbx + 0xd8]
	test	rax, rax
	je	.label_1156
.label_1155:
	mov	qword ptr [rbx + 0xd0], r14
	mov	dword ptr [rbx + 0xe0], 1
	mov	qword ptr [rbx + 0xf0], r14
	xor	r15d, r15d
.label_1156:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d630

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r14
	jle	.label_1170
	lea	rax, [rbx + 0x28]
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1179
	mov	qword ptr [rbx + 0x20], 0
.label_1179:
	mov	rcx, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rcx
	mov	rcx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	lea	ecx, [r15 + r15]
	and	ecx, 2
	xor	ecx, 6
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbx + 0x70], ecx
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r13, r14
	jne	.label_1184
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	mov	r13, r14
.label_1184:
	test	r13, r13
	je	.label_1161
	cmp	r13, qword ptr [rbx + 0x38]
	jge	.label_1192
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1193
	lea	rsi, [r13 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1199
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r13*4]
	sub	rdx, r13
	shl	rdx, 2
	call	memmove
.label_1199:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1158
.label_1196:
	sub	qword ptr [rbx + 0x30], r13
	sub	qword ptr [rbx + 0x38], r13
.label_1191:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1161
	add	qword ptr [rbx + 8], r13
.label_1161:
	mov	qword ptr [rbx + 0x28], r14
	sub	qword ptr [rbx + 0x58], r13
	sub	qword ptr [rbx + 0x68], r13
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1165
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1172
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1175
	jmp	.label_1164
.label_1165:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1178
	mov	rax, qword ptr [rbx + 0x58]
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1164
.label_1172:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1164:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1175:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1170:
	mov	r13, r14
	sub	r13, rax
	jmp	.label_1184
.label_1192:
	mov	rdx, qword ptr [rbx + 0x30]
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1188
.label_1174:
	mov	qword ptr [rbx + 0x30], 0
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1190
	mov	qword ptr [rsp], rdx
	mov	dword ptr [rsp + 0x24], 0xffffffff
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1177
	mov	rdx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, rdx
	movsxd	rsi, dword ptr [rbx + 0x90]
	mov	rcx, r13
	sub	rcx, rsi
	add	rcx, rax
	cmp	rcx, rdx
	cmovb	rcx, rdx
	lea	r12, [rax + r13]
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_1160:
	dec	rbp
	cmp	rbp, rcx
	jb	.label_1157
	mov	dl, byte ptr [rbp]
	and	dl, 0xc0
	movzx	edx, dl
	cmp	edx, 0x80
	je	.label_1160
	add	rax, qword ptr [rbx + 0x58]
	mov	rdx, rax
	sub	rdx, rbp
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsi, rbp
	jne	.label_1163
.label_1201:
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 0x18]
	call	rpl_mbrtowc
	sub	r12, rbp
	mov	rcx, rax
	sub	rcx, r12
	jb	.label_1157
	cmp	rax, -3
	ja	.label_1157
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, dword ptr [rsp + 0x14]
	mov	dword ptr [rsp + 0x24], eax
.label_1157:
	mov	edi, dword ptr [rsp + 0x24]
	cmp	edi, -1
	jne	.label_1185
.label_1177:
	lea	rdx, [rsp + 0x24]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_skip_chars
	sub	rax, r14
	mov	qword ptr [rbx + 0x30], rax
	mov	edi, dword ptr [rsp + 0x24]
	cmp	edi, -1
	je	.label_1187
.label_1185:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1189
	mov	ecx, dword ptr [rsp + 0x24]
.label_1197:
	xor	eax, eax
	cmp	ecx, 0xa
	jne	.label_1182
	mov	eax, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1182
	xor	eax, eax
	jmp	.label_1182
.label_1193:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rbx + 0x30]
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1159:
	lea	rdi, [rdx + rsi]
	mov	rcx, rdi
	shr	rcx, 0x3f
	add	rcx, rdi
	sar	rcx, 1
	cmp	qword ptr [rax + rcx*8], r13
	mov	rdi, rcx
	jg	.label_1200
	jge	.label_1202
	lea	rdx, [rcx + 1]
	mov	rdi, rsi
.label_1200:
	cmp	rdx, rdi
	mov	rsi, rdi
	jl	.label_1159
.label_1202:
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rcx*8], r13
	setl	al
	movzx	eax, al
	lea	rbp, [rax + rcx]
	lea	rsi, [rax + rcx - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	jle	.label_1169
	cmp	rbp, r13
	jne	.label_1169
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rbp*8], r13
	jne	.label_1169
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r13*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	sub	qword ptr [rbx + 0x38], r13
	test	rax, rax
	jle	.label_1191
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r13*8]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_1194:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r13
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1194
	jmp	.label_1191
.label_1158:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	jmp	.label_1196
.label_1169:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	word ptr cs:[rax + rax]
.label_1195:
	mov	rax, rbp
	test	rax, rax
	jle	.label_1198
	lea	rbp, [rax - 1]
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + rax*8 - 8], r13
	je	.label_1195
.label_1198:
	cmp	rax, qword ptr [rbx + 0x30]
	jge	.label_1162
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1171:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1162
	inc	rax
	cmp	rax, qword ptr [rbx + 0x30]
	jl	.label_1171
.label_1162:
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1173
	mov	qword ptr [rbx + 0x30], 0
	jmp	.label_1183
.label_1178:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1180
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_1164
.label_1190:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	mov	al, byte ptr [rcx + rax - 1]
	movzx	ecx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	je	.label_1186
	mov	al, byte ptr [rdx + rcx]
.label_1186:
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	r15d, al
	mov	rsi, r15
	call	bitset_contain
	mov	ecx, 1
	test	al, al
	jne	.label_1181
	xor	ecx, ecx
	cmp	r15d, 0xa
	jne	.label_1181
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1181
	xor	ecx, ecx
.label_1181:
	mov	dword ptr [rbx + 0x70], ecx
	jmp	.label_1191
.label_1173:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	je	.label_1183
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1168
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1168:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, r15
	call	memset
	jmp	.label_1183
.label_1180:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1164
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_1164
.label_1187:
	mov	rsi, qword ptr [rsp]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
.label_1182:
	mov	dword ptr [rbx + 0x70], eax
	cmp	qword ptr [rbx + 0x30], 0
	jne	.label_1176
.label_1183:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1191
.label_1188:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1174
.label_1176:
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1167
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1167:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1168
	jmp	.label_1183
.label_1189:
	call	iswalnum
	test	eax, eax
	mov	eax, 1
	jne	.label_1182
	mov	ecx, dword ptr [rsp + 0x24]
	cmp	ecx, 0x5f
	jne	.label_1197
	jmp	.label_1182
.label_1163:
	lea	rsi, [rsp + 0xe]
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1201
	lea	rcx, [rbp - 1]
	sub	rcx, rax
	cmp	rcx, -8
	mov	r10, -7
	cmovg	r10, rcx
	xor	r10, 0xffffffffffffffff
	shl	r10, 0x20
	sar	r10, 0x20
	lea	r8, [rsp + r10 + 0xd]
	lea	r9, [r10 + rbp - 1]
	xor	ecx, ecx
.label_1166:
	movzx	edi, byte ptr [r9 + rcx]
	mov	rax, qword ptr [rbx + 0x78]
	mov	al, byte ptr [rax + rdi]
	mov	byte ptr [r8 + rcx], al
	lea	rax, [r10 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_1166
	jmp	.label_1201
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dc60

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rdx
	mov	dword ptr [rsp + 0x1c], esi
	mov	rbp, rdi
	mov	r14, qword ptr [rbp + 0x98]
	mov	r12, qword ptr [rbp + 0x48]
	test	r13, r13
	setne	al
	mov	dword ptr [rsp + 0x20], eax
	mov	dword ptr [rsp + 0x24], 0
	mov	r15, qword ptr [rbp + 0x98]
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	jns	.label_1214
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [rbp + 0xa0]
	mov	rdi, rbp
	call	re_string_context_at
	test	al, 1
	jne	.label_1228
	test	eax, eax
	je	.label_1214
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	je	.label_1225
	test	sil, sil
	jne	.label_1225
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_1214
.label_1228:
	mov	rbx, qword ptr [r15 + 0x50]
.label_1214:
	test	rbx, rbx
	je	.label_1229
	mov	rax, qword ptr [rbp + 0xb8]
	test	rax, rax
	je	.label_1208
	mov	qword ptr [rax + r12*8], rbx
	cmp	qword ptr [r14 + 0x98], 0
	jne	.label_1210
.label_1208:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	xor	ecx, ecx
	test	al, 0x10
	jne	.label_1207
.label_1223:
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rsp + 8], r13
	mov	qword ptr [rsp + 0x10], r12
	lea	r13, [rsp + 0x24]
.label_1203:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	jle	.label_1209
	test	rcx, rcx
	sete	r12b
	mov	eax, dword ptr [rsp + 0x1c]
	or	r12b, al
	mov	r15, rbx
	nop	word ptr cs:[rax + rax]
.label_1226:
	lea	r14, [rsi + 1]
	mov	rax, qword ptr [rbp + 0x40]
	cmp	r14, rax
	jge	.label_1221
.label_1222:
	mov	rax, qword ptr [rbp + 0x30]
	cmp	r14, rax
	jge	.label_1216
.label_1224:
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r15
	call	transit_state
	mov	rbx, rax
	cmp	qword ptr [rbp + 0xb8], 0
	je	.label_1206
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_1206:
	test	rbx, rbx
	jne	.label_1218
	mov	rax, -2
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_1213
	cmp	qword ptr [rbp + 0xb8], 0
	setne	al
	and	al, r12b
	movzx	eax, al
	cmp	eax, 1
	jne	.label_1209
	mov	rdi, r13
	mov	rsi, rbp
	call	find_recover_state
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1209
.label_1218:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_1231
.label_1217:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	je	.label_1233
	test	al, al
	jns	.label_1211
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	mov	rsi, rbx
	call	check_halt_state_context
	test	rax, rax
	jne	.label_1211
.label_1233:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	mov	r15, rbx
	jg	.label_1226
	jmp	.label_1209
.label_1221:
	cmp	rax, qword ptr [rbp + 0x58]
	jl	.label_1220
	jmp	.label_1222
.label_1216:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1224
.label_1220:
	add	esi, 2
	mov	rdi, rbp
	call	extend_buffers
	mov	ecx, eax
	mov	dword ptr [rsp + 0x24], ecx
	test	ecx, ecx
	jne	.label_1227
	jmp	.label_1224
.label_1231:
	cmp	r15, rbx
	je	.label_1215
	mov	dword ptr [rsp + 0x20], 0
.label_1215:
	mov	rax, qword ptr [rsp + 0x10]
	cmove	rax, r14
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1217
	nop	dword ptr [rax + rax]
.label_1211:
	mov	rdx, qword ptr [rbp + 0x48]
	mov	qword ptr [rsp], rdx
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	ecx, 1
	mov	eax, 0
	mov	qword ptr [rsp + 8], rax
	mov	rax, rdx
	jne	.label_1203
	jmp	.label_1213
.label_1209:
	mov	rcx, qword ptr [rsp + 8]
	test	rcx, rcx
	je	.label_1219
	mov	rax, qword ptr [rsp + 0x10]
	add	qword ptr [rcx], rax
.label_1219:
	mov	rax, qword ptr [rsp]
	jmp	.label_1213
.label_1227:
	mov	rax, -2
	cmp	ecx, 0xc
	je	.label_1213
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_1229:
	mov	rax, -2
	cmp	dword ptr [rsp + 0x24], 0xc
	je	.label_1213
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_1225:
	test	edx, edx
	jne	.label_1212
	test	ecx, ecx
	je	.label_1214
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x24]
	mov	rsi, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_1214
.label_1207:
	test	al, al
	js	.label_1204
	mov	ecx, 1
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	rdx, r12
	jne	.label_1223
	mov	rax, r12
	jmp	.label_1213
.label_1210:
	lea	r15, [rbx + 8]
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, r15
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1230
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_1232
	mov	rdi, rbp
	mov	rsi, r15
	call	transit_state_bkref
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1205
.label_1232:
	mov	dword ptr [rsp + 0x20], 0
	jmp	.label_1208
.label_1212:
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_1214
.label_1204:
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r12
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	or	rdx, r12
	test	rax, rax
	setne	al
	movzx	ecx, al
	je	.label_1223
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_1223
	mov	rax, r12
.label_1213:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1230:
	cdqe	
	jmp	.label_1213
.label_1205:
	cdqe	
	jmp	.label_1213
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e000

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	r15d, eax
	xor	ebp, ebp
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_1234
	mov	r12, qword ptr [rbx + 0x98]
	mov	r13, qword ptr [r14 + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1235:
	mov	rbp, qword ptr [r13 + rbx*8]
	mov	rdi, r12
	mov	rsi, rbp
	mov	edx, r15d
	call	check_halt_node_context
	test	al, al
	jne	.label_1234
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	mov	ebp, 0
	jl	.label_1235
.label_1234:
	mov	rax, rbp
	add	rsp, 8
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
	#Procedure 0x40e080

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r12, rdi
	mov	rbx, qword ptr [r12 + 0xa8]
	mov	r13d, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbx, rax
	ja	.label_1236
	mov	r14, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r12 + 0xb0]
	mov	qword ptr [rsp + 0x18], rax
	lea	rbp, [rbx*8 + 8]
	mov	rdi, rbp
	call	malloc
	mov	r15, rax
	mov	r13d, 0xc
	test	r15, r15
	je	.label_1244
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_1249
	mov	qword ptr [rsp + 8], r14
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	je	.label_1237
	mov	qword ptr [rsp + 0x10], r12
	lea	rbp, [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x18]
	mov	r14, r15
	mov	r15, rax
	jmp	.label_1240
.label_1249:
	lea	r14, [rsp + 0x20]
	xor	edx, edx
	mov	rdi, r14
	mov	rbp, r15
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, r12
	mov	rsi, r14
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_1243
	xor	r15d, r15d
	cmp	qword ptr [rbp], 0
	jne	.label_1246
	mov	r13d, 1
	jmp	.label_1239
	nop	word ptr [rax + rax]
.label_1247:
	mov	rdx, rbx
	call	check_halt_state_context
	mov	r12, rax
.label_1240:
	lea	rdx, [rbx*8 + 8]
	xor	esi, esi
	mov	rdi, r15
	call	memset
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_1238
	cmp	qword ptr [r14], 0
	jne	.label_1241
	cmp	qword ptr [r15], 0
	jne	.label_1241
	mov	r13d, 1
	test	rbx, rbx
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_1245
	mov	rax, qword ptr [rdi + 0xb8]
	dec	rbx
	nop	word ptr [rax + rax]
.label_1242:
	mov	rsi, qword ptr [rax + rbx*8]
	test	rsi, rsi
	je	.label_1248
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_1247
.label_1248:
	lea	rcx, [rbx - 1]
	inc	rbx
	cmp	rbx, 2
	mov	rbx, rcx
	jge	.label_1242
	mov	rbp, r14
	jmp	.label_1239
.label_1244:
	mov	rbp, r15
	xor	r15d, r15d
	jmp	.label_1239
.label_1238:
	mov	rbp, r14
	jmp	.label_1239
.label_1241:
	mov	qword ptr [rsp + 0x18], r12
	lea	rcx, [rbx + 1]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, r14
	mov	rsi, rbp
	mov	rdx, r15
	call	merge_state_array
	mov	r13d, eax
	mov	rdi, r15
	call	free
	xor	r15d, r15d
	test	r13d, r13d
	mov	r12, qword ptr [rsp + 0x10]
	jne	.label_1239
.label_1246:
	mov	rdi, qword ptr [r12 + 0xb8]
	call	free
	mov	qword ptr [r12 + 0xb8], rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 0xb0], rax
	mov	qword ptr [r12 + 0xa8], rbx
	xor	r13d, r13d
	xor	ebp, ebp
.label_1243:
	xor	r15d, r15d
.label_1239:
	mov	rdi, rbp
	call	free
	mov	rdi, r15
	call	free
.label_1236:
	mov	eax, r13d
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1237:
	mov	rbp, r15
	mov	r15, rax
	jmp	.label_1239
.label_1245:
	mov	rbp, r14
	jmp	.label_1239
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e2d0

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_1252
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1253:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	mov	ebx, 0
	jle	.label_1250
	nop	word ptr [rax + rax]
.label_1251:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1251
.label_1250:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1254
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1254:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1253
.label_1252:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e390

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r12, rcx
	mov	rbx, rdx
	mov	qword ptr [rbp - 0x78], rsi
	mov	r15, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1268]]
	mov	qword ptr [rbp - 0x60], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1269]]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	xor	r14d, r14d
	test	r8b, r8b
	je	.label_1270
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 4
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_1256
	lea	r14, [rbp - 0x70]
.label_1270:
	mov	qword ptr [rbp - 0x88], r15
	mov	r15, qword ptr [r15 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x50], xmm0
	mov	qword ptr [rbp - 0x40], 0
	mov	r13, rbx
	shl	r13, 4
	cmp	r13, 0xfbf
	ja	.label_1272
	mov	rdi, rsp
	lea	rax, [r13 + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x8c], 0
	jmp	.label_1262
.label_1272:
	mov	rdi, r13
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1266
	mov	al, 1
	mov	dword ptr [rbp - 0x8c], eax
.label_1262:
	mov	qword ptr [rbp - 0x80], rdi
	mov	rsi, r12
	mov	rdx, r13
	call	memcpy
	mov	r8, qword ptr [r12]
	mov	qword ptr [rbp - 0x30], r8
	cmp	r8, qword ptr [r12 + 8]
	jg	.label_1263
	lea	r13, [r12 + 8]
	jmp	.label_1273
.label_1274:
	cmp	r15, -2
	je	.label_1255
	test	r14, r14
	je	.label_1257
	mov	rdi, r14
	lea	rsi, [rbp - 0x30]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	mov	r15, rax
	jmp	.label_1264
	nop	word ptr cs:[rax + rax]
.label_1273:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, r15
	mov	r9, rbx
	call	update_regs
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [r12 + 8]
	jne	.label_1267
	mov	rax, qword ptr [rbp - 0x78]
	cmp	r15, qword ptr [rax + 0xb0]
	jne	.label_1267
	test	r14, r14
	je	.label_1271
	test	rbx, rbx
	mov	rcx, r13
	mov	eax, 0
	je	.label_1260
	nop	word ptr [rax + rax]
.label_1261:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1258
	cmp	qword ptr [rcx], -1
	je	.label_1260
.label_1258:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_1261
.label_1260:
	cmp	rax, rbx
	je	.label_1263
	mov	rdi, r14
	lea	rsi, [rbp - 0x30]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	mov	r15, rax
.label_1267:
	sub	rsp, 0x10
	mov	qword ptr [rsp], r14
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rcx, [rbp - 0x30]
	mov	r8, r15
	lea	r9, [rbp - 0x50]
	call	proceed_next_node
	add	rsp, 0x10
	mov	r15, rax
	test	r15, r15
	js	.label_1274
.label_1264:
	mov	r8, qword ptr [rbp - 0x30]
	cmp	r8, qword ptr [r12 + 8]
	jle	.label_1273
.label_1263:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_1259
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1259:
	mov	rdi, r14
	call	free_fail_stack_return
	xor	r14d, r14d
	jmp	.label_1256
.label_1271:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	xor	r14d, r14d
	jmp	.label_1265
.label_1255:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_1266
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1266:
	mov	rdi, r14
	call	free_fail_stack_return
	mov	r14d, 0xc
.label_1256:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1257:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	r14d, 1
.label_1265:
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_1256
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
	jmp	.label_1256
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e620

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	push	rbx
	mov	rbx, rdi
	call	match_ctx_clean
	mov	rdi, qword ptr [rbx + 0xf8]
	call	free
	mov	rdi, qword ptr [rbx + 0xd8]
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e650

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_1279
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1280
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1281
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_1277:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_1275
	dec	rsi
	test	rsi, rsi
	jg	.label_1277
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1276
.label_1281:
	mov	rax, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	ebp, byte ptr [rax + rsi]
	mov	rsi, rbp
	call	bitset_contain
	mov	edx, 1
	test	al, al
	jne	.label_1276
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1276
	jmp	.label_1282
.label_1275:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1283
.label_1278:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1276
.label_1282:
	mov	edx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1276
	xor	edx, edx
	jmp	.label_1276
.label_1279:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1276
.label_1280:
	and	edx, 2
	xor	edx, 0xa
.label_1276:
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e710

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r12 + 0x38]
	add	rbx, qword ptr [r12 + 0x28]
	mov	ecx, 0xffffffff
	cmp	rbx, r15
	jge	.label_1286
	mov	qword ptr [rsp + 8], rdx
	lea	r13, [r12 + 0x20]
	jmp	.label_1285
.label_1289:
	xor	ecx, ecx
	cmp	rbp, rbx
	je	.label_1284
	test	rax, rax
	je	.label_1284
	mov	rax, qword ptr [r12]
	movzx	ecx, byte ptr [rax + rbx]
.label_1284:
	mov	qword ptr [r13], r14
	mov	eax, 1
	jmp	.label_1287
	nop	word ptr cs:[rax + rax]
.label_1285:
	mov	r14, qword ptr [r12 + 0x20]
	mov	rbp, qword ptr [r12 + 0x50]
	mov	rdx, rbp
	sub	rdx, rbx
	mov	rsi, qword ptr [r12]
	add	rsi, rbx
	lea	rdi, [rsp + 0x14]
	mov	rcx, r13
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_1289
	mov	rcx, rax
	or	rcx, 1
	cmp	rcx, -1
	je	.label_1289
	mov	ecx, dword ptr [rsp + 0x14]
.label_1287:
	add	rbx, rax
	cmp	rbx, r15
	jl	.label_1285
	jmp	.label_1288
.label_1286:
	mov	qword ptr [rsp + 8], rdx
.label_1288:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x18
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
	#Procedure 0x40e7e0

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	mov	rax, rsi
	sar	rax, 0x3f
	shr	rax, 0x3a
	add	rax, rsi
	sar	rax, 6
	mov	rax, qword ptr [rdi + rax*8]
	bt	rax, rsi
	setb	al
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e800

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 8], 0
	jle	.label_1290
	mov	r12, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1292:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r12]
	mov	rcx, rsi
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, 8
	jne	.label_1291
	mov	rax, qword ptr [rax + rcx]
	cmp	rax, 0x3f
	jg	.label_1291
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_1291
	mov	rdi, r15
	mov	rdx, r14
	call	match_ctx_add_subtop
	test	eax, eax
	jne	.label_1290
	nop	word ptr cs:[rax + rax]
.label_1291:
	inc	rbx
	xor	eax, eax
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_1292
.label_1290:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e8a0

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r14, rsi
	mov	qword ptr [rsp + 0x38], r14
	mov	r13, rdi
	cmp	qword ptr [r14 + 8], 0
	jle	.label_1300
	mov	r8, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x10], r8
	mov	rax, qword ptr [r13 + 0x48]
	mov	qword ptr [rsp + 0x40], rax
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1297:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	movzx	eax, bl
	cmp	eax, 4
	jne	.label_1302
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1293
	mov	r14, rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	r12, r8
	mov	rsi, qword ptr [rsp + 0x40]
	call	re_string_context_at
	mov	rsi, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1303
	test	ecx, ecx
	je	.label_1302
.label_1303:
	test	bh, 8
	je	.label_1304
	test	ecx, ecx
	jne	.label_1302
.label_1304:
	test	bh, 0x20
	je	.label_1306
	mov	ecx, eax
	and	ecx, 2
	je	.label_1302
.label_1306:
	test	bpl, bpl
	jns	.label_1293
	and	eax, 8
	je	.label_1302
	nop	word ptr cs:[rax + rax]
.label_1293:
	mov	qword ptr [rsp + 8], rsi
	mov	r12, qword ptr [r13 + 0xc8]
	mov	rdi, r13
	mov	rbx, r8
	mov	rbp, rsi
	mov	rdx, qword ptr [rsp + 0x40]
	call	get_subexp
	mov	rdx, rbp
	mov	r8, rbx
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1299
	cmp	r12, qword ptr [r13 + 0xc8]
	jge	.label_1302
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	word ptr [rax + rax]
.label_1301:
	mov	rax, qword ptr [r13 + 0xd8]
	cmp	qword ptr [rax + rbp - 0x18], rdx
	jne	.label_1305
	mov	rcx, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax + rbp - 0x10], rcx
	jne	.label_1305
	mov	rcx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rdi, qword ptr [r8 + 0x30]
	cmp	rsi, rcx
	jne	.label_1309
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rcx
	mov	rcx, qword ptr [r8 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	jmp	.label_1294
.label_1309:
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rdx*8]
	add	rcx, qword ptr [r8 + 0x18]
.label_1294:
	mov	rcx, qword ptr [rcx]
	lea	rcx, [rcx + rcx*2]
	mov	qword ptr [rsp + 0x30], rcx
	mov	r14, qword ptr [rax + rbp]
	mov	rbx, qword ptr [rsp + 0x40]
	add	r14, rbx
	sub	r14, qword ptr [rax + rbp - 8]
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	r8, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rcx + rbx*8]
	test	rcx, rcx
	mov	esi, 0
	je	.label_1308
	mov	rsi, qword ptr [rcx + 0x10]
.label_1308:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdx, [rcx + rdx*8]
	test	r8, r8
	lea	rbx, [rsp + 0x48]
	mov	rdi, rbx
	je	.label_1295
	mov	ebx, eax
	mov	qword ptr [rsp + 0x30], rsi
	mov	rsi, qword ptr [r8 + 0x50]
	mov	qword ptr [rsp + 0x28], rdx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1307
	lea	rdi, [rsp + 0x64]
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rdx, [rsp + 0x48]
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1298
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_1299
.label_1298:
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_1296
.label_1295:
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rsp + 0x64]
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r8, rbx
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 8]
	jne	.label_1296
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_1299
	nop	dword ptr [rax]
.label_1296:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1305
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1305
	mov	rdi, r13
	mov	qword ptr [rsp + 0x38], r14
	mov	r14, r8
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x40]
	call	check_subexp_matching_top
	mov	rdx, rbx
	mov	rcx, r14
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1299
	mov	rdi, r13
	mov	r14, rcx
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	call	transit_state_bkref
	mov	rdx, rbx
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1299
	nop	dword ptr [rax + rax]
.label_1305:
	inc	r12
	add	rbp, 0x28
	cmp	r12, qword ptr [r13 + 0xc8]
	jl	.label_1301
	nop	word ptr cs:[rax + rax]
.label_1302:
	inc	r15
	cmp	r15, qword ptr [r14 + 8]
	jl	.label_1297
.label_1300:
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_1299
.label_1307:
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
.label_1299:
	mov	eax, dword ptr [rsp + 0x64]
	add	rsp, 0x68
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
	#Procedure 0x40ec50

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbx
	mov	ecx, esi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1314
	movsxd	rax, ecx
	mov	rcx, qword ptr [rbx + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1314
	mov	rdi, qword ptr [rbx + 0xb8]
	test	rdi, rdi
	je	.label_1311
	mov	rax, qword ptr [rbx + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1314
	mov	qword ptr [rbx + 0xb8], rcx
.label_1311:
	cmp	byte ptr [rbx + 0x88], 0
	mov	eax, dword ptr [rbx + 0x90]
	je	.label_1312
	mov	rdi, rbx
	cmp	eax, 2
	jl	.label_1315
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1310
	jmp	.label_1314
.label_1312:
	cmp	eax, 2
	jl	.label_1313
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_1310
.label_1315:
	call	build_upper_buffer
	jmp	.label_1310
.label_1313:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1310
	mov	rdi, rbx
	call	re_string_translate_buffer
.label_1310:
	xor	eax, eax
.label_1314:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ed20

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_1316
.label_1321:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	movzx	r12d, byte ptr [rcx + rax]
.label_1320:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_1319
	mov	r13, qword ptr [r14 + 0x60]
	test	r13, r13
	jne	.label_1318
	mov	rdi, qword ptr [rbx + 0x98]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	jne	.label_1320
	mov	dword ptr [r15], 0xc
	xor	eax, eax
	jmp	.label_1317
.label_1319:
	mov	rax, qword ptr [rax + r12*8]
.label_1317:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_1316:
	mov	rdi, rbx
	mov	rsi, r14
	call	transit_state_mb
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	je	.label_1321
	jmp	.label_1317
.label_1318:
	mov	rsi, qword ptr [rbx + 0x48]
	dec	rsi
	mov	edx, dword ptr [rbx + 0xa0]
	mov	rdi, rbx
	call	re_string_context_at
	and	eax, 1
	shl	rax, 8
	or	rax, r12
	mov	rax, qword ptr [r13 + rax*8]
	jmp	.label_1317
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40edd0

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1324
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1323
.label_1324:
	cmp	qword ptr [rax + r14*8], 0
	je	.label_1325
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	mov	rdx, qword ptr [rax + 0x50]
	test	rbx, rbx
	je	.label_1326
	mov	rbp, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	je	.label_1329
	xor	eax, eax
	jmp	.label_1322
.label_1325:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1323
.label_1326:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	xor	ebp, ebp
.label_1329:
	mov	rsi, qword ptr [r13 + 0x48]
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	rbp, rbp
	je	.label_1323
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1323:
	test	rbx, rbx
	je	.label_1327
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1328
	lea	rbp, [rbx + 8]
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1322
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1322
	mov	rdi, r13
	mov	rsi, rbp
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1322
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1322
.label_1327:
	mov	rax, rbx
	jmp	.label_1322
.label_1328:
	mov	rax, rbx
.label_1322:
	add	rsp, 0x18
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
	#Procedure 0x40ef20

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
.label_1331:
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rdx, qword ptr [rbx + 0xc0]
	nop	word ptr cs:[rax + rax]
.label_1332:
	cmp	rcx, rdx
	mov	eax, 0
	jge	.label_1330
	inc	qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rcx, [rcx + 1]
	je	.label_1332
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	merge_state_with_log
	test	rax, rax
	jne	.label_1330
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_1331
.label_1330:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ef90

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0xf0]
	cmp	qword ptr [rbx + 0xe8], r12
	je	.label_1333
.label_1335:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [rbx + 0xe8]
	mov	rdx, qword ptr [rbx + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbx + 0xe8]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rcx + rax*8]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1334
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0xe8], rcx
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1334:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1333:
	mov	rdi, qword ptr [rbx + 0xf8]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1334
	add	r12, r12
	mov	qword ptr [rbx + 0xf8], rcx
	mov	qword ptr [rbx + 0xf0], r12
	jmp	.label_1335
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f060

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x50], rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rbx + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, rdx
	call	search_cur_bkref_entry
	mov	rbp, rbx
	cmp	rax, -1
	je	.label_1342
	lea	rcx, [rax + rax*4]
	shl	rcx, 3
	add	rcx, qword ptr [rbp + 0xd8]
.label_1350:
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x50]
	cmp	qword ptr [rcx], rdx
	je	.label_1336
	cmp	byte ptr [rcx + 0x20], 0
	lea	rcx, [rcx + 0x28]
	jne	.label_1350
.label_1342:
	xor	eax, eax
	cmp	qword ptr [rbp + 0xe8], 0
	jle	.label_1336
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x50]
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_1352
.label_1354:
	mov	r13, r15
	jmp	.label_1346
	nop	word ptr cs:[rax + rax]
.label_1352:
	mov	rax, qword ptr [rbp + 0xf8]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	rdx, qword ptr [rsp + 0x18]
	cmp	qword ptr [rcx + rax], rdx
	jne	.label_1337
	mov	r15, qword ptr [rbx]
	cmp	qword ptr [rbx + 0x20], 0
	jle	.label_1349
	mov	r8, qword ptr [rsp + 0x40]
	xor	r14d, r14d
	jmp	.label_1341
.label_1349:
	mov	r8, qword ptr [rsp + 0x40]
	mov	r13, r15
	xor	r14d, r14d
	jmp	.label_1346
.label_1347:
	cmp	rsi, qword ptr [rbp + 0x58]
	jg	.label_1354
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], r8
	mov	rdi, rbp
	call	clean_state_log_if_needed
	test	eax, eax
	jne	.label_1336
	mov	qword ptr [rsp + 0x30], r13
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1338
	nop	dword ptr [rax + rax]
.label_1341:
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rax + r14*8]
	mov	r13, qword ptr [rdx + 8]
	mov	r12, r13
	sub	r12, r15
	jle	.label_1353
	lea	rsi, [r12 + r8]
	cmp	rsi, qword ptr [rbp + 0x30]
	jg	.label_1347
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x30], r13
.label_1338:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rax + r8]
	lea	rsi, [rax + r15]
	mov	r13, r8
	mov	rdx, r12
	call	memcmp
	mov	r8, r13
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	jne	.label_1351
.label_1353:
	mov	r15, r8
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r8, qword ptr [rsp + 0x40]
	call	get_subexp_sub
	cmp	eax, 1
	ja	.label_1336
	mov	r8, r15
	add	r8, r12
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	inc	r14
	cmp	r14, qword ptr [rbx + 0x20]
	mov	r15, r13
	jl	.label_1341
	jmp	.label_1346
.label_1351:
	mov	r13, r15
	nop	word ptr cs:[rax + rax]
.label_1346:
	mov	rcx, r13
	cmp	r14, qword ptr [rbx + 0x20]
	jl	.label_1337
	test	r14, r14
	setg	al
	movzx	r13d, al
	add	r13, rcx
	cmp	r13, qword ptr [rsp + 0x40]
	jg	.label_1337
	jmp	.label_1348
.label_1344:
	cmp	r8, qword ptr [rbp + 0x58]
	jge	.label_1337
	lea	esi, [r8 + 1]
	mov	r14, r8
	mov	rdi, rbp
	call	extend_buffers
	test	eax, eax
	jne	.label_1336
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	r8, r14
	jmp	.label_1340
	nop	word ptr cs:[rax + rax]
.label_1348:
	cmp	r13, qword ptr [rbx]
	jle	.label_1343
	cmp	r8, qword ptr [rbp + 0x30]
	jge	.label_1344
.label_1340:
	mov	rcx, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + r13 - 1]
	movzx	ecx, byte ptr [rcx + r8]
	cmp	ecx, eax
	jne	.label_1337
	inc	r8
.label_1343:
	mov	r14, rbx
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rsi, qword ptr [rax + r13*8]
	test	rsi, rsi
	je	.label_1345
	mov	r15, r8
	add	rsi, 8
	mov	ecx, 9
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	find_subexp_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1355
	cmp	qword ptr [r14 + 0x10], 0
	mov	rdi, rbp
	jne	.label_1339
	mov	rsi, r13
	sub	rsi, qword ptr [r14]
	inc	rsi
	mov	rbp, rdi
	mov	edi, 0x18
	call	rpl_calloc
	mov	rdi, rbp
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1336
.label_1339:
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [r14 + 8]
	mov	dword ptr [rsp], 9
	mov	rbp, rdi
	mov	r8, rbx
	mov	r9, r13
	call	check_arrival
	cmp	eax, 1
	mov	r8, r15
	je	.label_1345
	mov	r15, r8
	test	eax, eax
	mov	rdi, r14
	jne	.label_1336
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rdi
	call	match_ctx_add_sublast
	mov	rsi, rbx
	mov	rdx, rbp
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1336
	mov	rbx, rdx
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rbp, rsi
	mov	r8, qword ptr [rsp + 0x40]
	call	get_subexp_sub
	mov	rcx, rbp
	cmp	eax, 1
	ja	.label_1336
	mov	r14, rcx
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, rbx
.label_1355:
	mov	r8, r15
.label_1345:
	cmp	r13, qword ptr [rsp + 0x40]
	lea	r13, [r13 + 1]
	mov	rbx, r14
	jl	.label_1348
	nop	dword ptr [rax + rax]
.label_1337:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rsp + 0x28], rcx
	xor	eax, eax
	cmp	rcx, qword ptr [rbp + 0xe8]
	jl	.label_1352
.label_1336:
	add	rsp, 0x58
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
	#Procedure 0x40f410

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_1362
	mov	rax, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_1365
	test	rax, rax
	jle	.label_1365
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1358
	add	rdi, rax
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1361
	xor	r13d, r13d
	cmp	qword ptr [r12 + 8], 0
	mov	ebx, 0
	mov	ebp, 0
	jle	.label_1364
	xor	edx, edx
	xor	esi, esi
	xor	r13d, r13d
.label_1367:
	mov	rbx, rdx
	mov	rbp, rsi
	nop	word ptr [rax + rax]
.label_1368:
	cmp	rbp, qword ptr [r15 + 8]
	jge	.label_1364
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbp*8]
	cmp	rcx, rax
	jle	.label_1363
	inc	rbp
	mov	rcx, qword ptr [r14 + 0x10]
	mov	qword ptr [rcx + rbx*8], rax
	inc	rbx
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_1368
	jmp	.label_1364
.label_1363:
	sete	sil
	inc	r13
	mov	rdx, qword ptr [r14 + 0x10]
	mov	qword ptr [rdx + rbx*8], rcx
	lea	rdx, [rbx + 1]
	movzx	esi, sil
	add	rsi, rbp
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_1367
	cmp	rcx, rax
	sete	al
	inc	rbx
	movzx	eax, al
	add	rbp, rax
.label_1364:
	mov	rdx, qword ptr [r12 + 8]
	sub	rdx, r13
	jle	.label_1360
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [r13*8]
	add	rsi, qword ptr [r12 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, r13
	add	rbx, qword ptr [r12 + 8]
	jmp	.label_1356
.label_1358:
	mov	rax, qword ptr [r12 + 8]
.label_1365:
	test	rax, rax
	jle	.label_1362
	mov	rdi, r14
	mov	rsi, r12
	jmp	.label_1357
.label_1362:
	test	r15, r15
	je	.label_1359
	cmp	qword ptr [r15 + 8], 0
	jle	.label_1359
	mov	rdi, r14
	mov	rsi, r15
.label_1357:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_1359:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	jmp	.label_1366
.label_1360:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbp
	jle	.label_1356
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, rbp
	add	rbx, qword ptr [r15 + 8]
.label_1356:
	mov	qword ptr [r14 + 8], rbx
.label_1366:
	xor	eax, eax
.label_1361:
	add	rsp, 8
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
	#Procedure 0x40f5d0

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_1369
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_1370:
	lea	r10, [rax + r11]
	mov	rdx, r10
	shr	rdx, 0x3f
	add	rdx, r10
	sar	rdx, 1
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmp	rax, r11
	jl	.label_1370
.label_1369:
	cmp	rax, r8
	jge	.label_1372
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_1371
.label_1372:
	mov	rax, -1
.label_1371:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f640

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x40]
	mov	r15, qword ptr [rbx + 0xc0]
	cmp	rax, r14
	jg	.label_1373
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_1376
.label_1373:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, r14
	jg	.label_1374
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_1374
.label_1376:
	lea	esi, [r14 + 1]
	mov	rdi, rbx
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1375
.label_1374:
	xor	ebp, ebp
	cmp	r15, r14
	jge	.label_1375
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	mov	rdx, r14
	sub	rdx, r15
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [rbx + 0xc0], r14
.label_1375:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f6c0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	lea	rsi, [rbx + 0x10]
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	mov	dword ptr [rsp], 8
	mov	r8, r13
	mov	r9, r12
	call	check_arrival
	test	eax, eax
	jne	.label_1377
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [rbx + 8]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	call	match_ctx_add_entry
	test	eax, eax
	jne	.label_1377
	add	r12, qword ptr [rbx + 8]
	sub	r12, qword ptr [r15]
	mov	rdi, r14
	mov	rsi, r12
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	clean_state_log_if_needed
.label_1377:
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
	#Procedure 0x40f750

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1378
	mov	r8, qword ptr [rsi + 0x10]
	mov	r9, qword ptr [rdi]
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_1380:
	mov	rax, qword ptr [r8 + r11*8]
	mov	r10, rax
	shl	r10, 4
	movzx	edi, byte ptr [r9 + r10 + 8]
	cmp	edi, ecx
	jne	.label_1379
	cmp	qword ptr [r9 + r10], rdx
	je	.label_1381
.label_1379:
	inc	r11
	cmp	r11, qword ptr [rsi + 8]
	jl	.label_1380
.label_1378:
	mov	rax, -1
.label_1381:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f7a0

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x38], r9
	mov	qword ptr [rsp + 8], r8
	mov	r13, rcx
	mov	r12, rdx
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x40], rax
	mov	dword ptr [rsp + 0x74], 0
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, qword ptr [rsi + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	cmp	rbp, rcx
	jle	.label_1391
.label_1389:
	mov	qword ptr [rsp + 0x20], rsi
	mov	r15d, dword ptr [rsp + 0xb0]
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 0x10]
	test	r14, r14
	cmove	r14, r13
	mov	rcx, qword ptr [rdi + 0x48]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rdi
	call	re_string_context_at
	cmp	r14, r13
	jne	.label_1399
	mov	r13d, eax
	mov	ebp, r15d
	lea	rdi, [rsp + 0x50]
	mov	rsi, r12
	call	re_node_set_init_1
	mov	r15d, eax
	mov	dword ptr [rsp + 0x74], r15d
	test	r15d, r15d
	jne	.label_1382
	lea	rsi, [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r15d, ebp
	mov	ecx, r15d
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	mov	rcx, rbx
	je	.label_1385
	jmp	.label_1388
.label_1399:
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	rbp, qword ptr [rcx + r14*8]
	test	rbp, rbp
	mov	rcx, rbx
	je	.label_1392
	mov	rbx, rcx
	mov	r12d, r15d
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_1394
	mov	r13d, eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x60], 0
	jmp	.label_1398
.label_1392:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x60], 0
	xor	ebp, ebp
	jmp	.label_1386
.label_1394:
	mov	r13d, eax
	lea	rsi, [rbp + 8]
	lea	rdi, [rsp + 0x50]
	call	re_node_set_init_copy
	mov	r15d, eax
	mov	dword ptr [rsp + 0x74], r15d
	test	r15d, r15d
	jne	.label_1382
.label_1398:
	test	byte ptr [rbp + 0x68], 0x40
	mov	r15d, r12d
	mov	rcx, rbx
	je	.label_1386
.label_1385:
	cmp	qword ptr [rsp + 0x58], 0
	je	.label_1393
	lea	rsi, [rsp + 0x50]
	mov	rbx, rcx
	mov	rdi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8d, r15d
	call	expand_bkref_cache
	mov	rcx, rbx
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1388
.label_1393:
	mov	rbx, rcx
	lea	rdi, [rsp + 0x74]
	lea	rdx, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	ecx, r13d
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1401
	mov	eax, dword ptr [rsp + 0x74]
	test	eax, eax
	jne	.label_1388
.label_1401:
	mov	rcx, rbx
	mov	rax, qword ptr [rcx + 0xb8]
	mov	qword ptr [rax + r14*8], rbp
.label_1386:
	cmp	r14, qword ptr [rsp + 0x38]
	jge	.label_1384
	inc	r14
	lea	rbx, [rsp + 0x50]
	mov	r12, r14
	xor	r13d, r13d
.label_1395:
	lea	r14, [r12 - 1]
	movsxd	rax, dword ptr [rcx + 0xe0]
	cmp	r13, rax
	jg	.label_1384
	mov	qword ptr [rsp + 0x58], 0
	mov	rax, qword ptr [rcx + 0xb8]
	mov	qword ptr [rsp + 0x48], rcx
	mov	rsi, qword ptr [rax + r12*8]
	test	rsi, rsi
	je	.label_1396
	add	rsi, 8
	mov	rdi, rbx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1388
.label_1396:
	test	rbp, rbp
	je	.label_1397
	add	rbp, 0x20
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, rbx
	call	check_arrival_add_next_nodes
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1388
.label_1397:
	mov	qword ptr [rsp + 0x30], r14
	cmp	qword ptr [rsp + 0x58], 0
	mov	r14, rbx
	je	.label_1387
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r14
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, rbp
	mov	ebx, dword ptr [rsp + 0xb0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1388
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1388
.label_1387:
	mov	r15, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_string_context_at
	lea	rdi, [rsp + 0x74]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, r14
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1390
	mov	eax, dword ptr [rsp + 0x74]
	test	eax, eax
	jne	.label_1388
.label_1390:
	mov	rbx, r14
	inc	r13
	test	rbp, rbp
	mov	rcx, r15
	mov	rax, qword ptr [rcx + 0xb8]
	mov	qword ptr [rax + r12*8], rbp
	mov	eax, 0
	cmovne	r13, rax
	cmp	r12, qword ptr [rsp + 0x38]
	lea	r12, [r12 + 1]
	jl	.label_1395
	mov	rbx, rcx
	dec	r12
	mov	r14, r12
	jmp	.label_1400
.label_1384:
	mov	rbx, rcx
.label_1400:
	mov	r15, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + rcx*8]
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], r14
	mov	qword ptr [rbx + 0xb8], rbp
	mov	qword ptr [rbx + 0x48], r15
	je	.label_1383
	add	rdi, 8
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_contains
	xor	r15d, r15d
	test	rax, rax
	jne	.label_1382
.label_1383:
	mov	r15d, 1
	jmp	.label_1382
.label_1388:
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	r15d, dword ptr [rsp + 0x74]
.label_1382:
	mov	eax, r15d
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1391:
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, rbp
	mov	r15d, 0xc
	cmp	rdx, rcx
	jle	.label_1382
	mov	rcx, qword ptr [rsp + 0x38]
	lea	r14, [rax + rcx + 1]
	lea	rbx, [r14 + rbp]
	mov	rax, rbx
	shr	rax, 0x3d
	jne	.label_1382
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x20], rsi
	lea	rsi, [rbx*8]
	call	realloc
	test	rax, rax
	je	.label_1382
	mov	r15, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15 + 8], rbx
	lea	rdi, [rax + rbp*8]
	shl	r14, 3
	xor	esi, esi
	mov	rdx, r14
	call	memset
	mov	rsi, r15
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_1389
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fbf0

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0x18]
	cmp	qword ptr [rbx + 0x20], r12
	je	.label_1402
.label_1403:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	test	rax, rax
	je	.label_1404
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rdx, qword ptr [rbx + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r15
	mov	qword ptr [rax + 8], r14
	inc	qword ptr [rbx + 0x20]
.label_1404:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1402:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1404
	lea	rax, [r12 + r12 + 1]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [rbx + 0x18], rax
	jmp	.label_1403
	.section	.text
	.align	16
	#Procedure 0x40fc70

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd0]
	cmp	rax, rcx
	jl	.label_1407
	mov	rdi, qword ptr [rbx + 0xd8]
	shl	rcx, 4
	lea	rsi, [rcx + rcx*4]
	call	realloc
	test	rax, rax
	je	.label_1408
	mov	qword ptr [rbx + 0xd8], rax
	mov	rcx, qword ptr [rbx + 0xc8]
	mov	rbp, qword ptr [rbx + 0xd0]
	lea	rcx, [rcx + rcx*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [rbx + 0xd0], rbp
	mov	rax, qword ptr [rbx + 0xc8]
.label_1407:
	test	rax, rax
	jle	.label_1405
	dec	rax
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r12
	jne	.label_1405
	mov	byte ptr [rcx + rax*8 + 0x20], 1
.label_1405:
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8], r13
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 8], r12
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x10], r15
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x18], r14
	xor	eax, eax
	sub	r14, r15
	mov	cx, 0xffff
	cmovne	cx, ax
	mov	rdx, qword ptr [rbx + 0xc8]
	mov	rsi, qword ptr [rbx + 0xd8]
	lea	rdx, [rdx + rdx*4]
	mov	word ptr [rsi + rdx*8 + 0x22], cx
	mov	rcx, qword ptr [rbx + 0xc8]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0xc8], rdx
	mov	rdx, qword ptr [rbx + 0xd8]
	lea	rcx, [rcx + rcx*4]
	mov	byte ptr [rdx + rcx*8 + 0x20], 0
	movsxd	rcx, dword ptr [rbx + 0xe0]
	cmp	rcx, r14
	jge	.label_1406
	mov	dword ptr [rbx + 0xe0], r14d
.label_1406:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1408:
	mov	rdi, qword ptr [rbx + 0xd8]
	call	free
	mov	eax, 0xc
	jmp	.label_1406
	.section	.text
	.align	16
	#Procedure 0x40fdf0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14d, ecx
	mov	r13, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rbp
	mov	rbx, rdi
	mov	rsi, qword ptr [rbp + 8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_alloc
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1413
	mov	r15d, r14d
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1412
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1414:
	mov	rax, qword ptr [rbp + 0x10]
	mov	r12, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rbx + 0x30]
	lea	rcx, [r12 + r12*2]
	lea	rbp, [rax + rcx*8]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r13
	mov	ecx, r15d
	call	find_subexp_node
	cmp	rax, -1
	je	.label_1410
	mov	rdi, rbx
	lea	rsi, [rsp + 0x10]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_1411
	nop	word ptr cs:[rax + rax]
.label_1410:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_merge
.label_1411:
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1409
	inc	r14
	mov	rbp, qword ptr [rsp + 8]
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_1414
.label_1412:
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rbp + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbp], xmm0
	xor	r12d, r12d
	jmp	.label_1413
.label_1409:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1413:
	mov	eax, r12d
	add	rsp, 0x28
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
	#Procedure 0x40fef0

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	dword ptr [rsp + 0x18], r8d
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x38], rdi
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], r14
	mov	rsi, rdx
	call	search_cur_bkref_entry
	cmp	rax, -1
	je	.label_1425
	lea	rcx, [rax + rax*4]
	mov	qword ptr [rsp + 8], rcx
	lea	r12, [rsp + 0x48]
.label_1417:
	mov	dword ptr [rsp + 0x34], eax
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xd8]
	lea	r15, [rax + rcx*8 + 0x20]
	nop	dword ptr [rax + rax]
.label_1423:
	mov	rsi, qword ptr [r15 - 0x20]
	mov	rdi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_1419
	mov	rbp, qword ptr [r15 - 8]
	mov	rax, qword ptr [rsp + 0x40]
	add	rbp, rax
	sub	rbp, qword ptr [r15 - 0x10]
	cmp	rbp, rax
	jne	.label_1428
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rax, [rax + rax*2]
	mov	rax, qword ptr [rcx + rax*8 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	je	.label_1422
	mov	rbx, r14
	jmp	.label_1424
	nop	dword ptr [rax + rax]
.label_1428:
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rbx, qword ptr [rax + rbp*8]
	test	rbx, rbx
	je	.label_1415
	add	rbx, 8
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	je	.label_1427
.label_1858:
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1416
.label_1422:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_init_1
	mov	rdi, r14
	mov	r14d, eax
	mov	dword ptr [rsp + 0x64], r14d
	mov	rbx, rdi
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rsp + 0x18]
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x1c], eax
	mov	rdi, r13
	mov	rsi, r12
	call	re_node_set_merge
	mov	ebp, eax
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	edx, r14d
	mov	r14d, dword ptr [rsp + 0x1c]
	mov	eax, ebp
	or	eax, r14d
	mov	ecx, 2
	or	eax, edx
	jne	.label_1421
.label_1429:
	mov	r14, rbx
	jmp	.label_1424
.label_1415:
	mov	rdi, r12
	mov	rsi, r14
	call	re_node_set_init_1
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	je	.label_1430
	mov	ecx, 1
	mov	dword ptr [rsp + 0x34], eax
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1416
.label_1427:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_init_copy
	mov	ebx, eax
	mov	dword ptr [rsp + 0x64], ebx
	mov	rdi, r12
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_1426
	xor	al, 1
	jne	.label_1426
.label_1430:
	lea	rdi, [rsp + 0x64]
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r12
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	sete	al
	mov	edx, dword ptr [rsp + 0x64]
	test	edx, edx
	setne	cl
	and	cl, al
	movzx	ecx, cl
	mov	eax, dword ptr [rsp + 0x34]
	cmovne	eax, edx
	mov	dword ptr [rsp + 0x34], eax
.label_1416:
	mov	r13, qword ptr [rsp + 0x28]
.label_1424:
	test	ecx, ecx
	je	.label_1419
	cmp	ecx, 4
	jne	.label_1418
.label_1419:
	cmp	byte ptr [r15], 0
	lea	r15, [r15 + 0x28]
	jne	.label_1423
	jmp	.label_1425
.label_1421:
	test	r14d, r14d
	cmovne	ebp, r14d
	test	edx, edx
	cmovne	ebp, edx
	mov	dword ptr [rsp + 0x64], ebp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x34], ebp
	jmp	.label_1429
.label_1426:
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	ecx, dword ptr [rsp + 0x64]
	test	ecx, ecx
	mov	eax, 0xc
	cmove	ecx, eax
	mov	dword ptr [rsp + 0x34], ecx
	mov	dword ptr [rsp + 0x64], ecx
	mov	ecx, 1
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1416
	nop	word ptr cs:[rax + rax]
.label_1418:
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 8]
	mov	eax, dword ptr [rsp + 0x34]
	je	.label_1417
	jmp	.label_1420
.label_1425:
	xor	eax, eax
.label_1420:
	add	rsp, 0x68
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
	#Procedure 0x4101c0

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x28], rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x20], rbp
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], r12
	mov	r14, qword ptr [r12 + 0x98]
	mov	dword ptr [rsp + 0x54], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0x40], 0
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1431
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1433:
	mov	rax, qword ptr [rbp + 0x10]
	mov	r13, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r14]
	mov	rbx, r13
	shl	rbx, 4
	test	byte ptr [rax + rbx + 0xa], 0x10
	je	.label_1437
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rbp, rcx
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1434
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rcx + r13*8]
	movsxd	rbx, eax
	add	rbx, rbp
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x38], 0
	test	rsi, rsi
	lea	rbp, [rsp + 0x30]
	je	.label_1436
	add	rsi, 8
	mov	rdi, rbp
	mov	r12, rcx
	call	re_node_set_merge
	mov	rcx, r12
	mov	dword ptr [rsp + 0x54], eax
	test	eax, eax
	jne	.label_1435
.label_1436:
	mov	rdi, rbp
	mov	rsi, rcx
	call	re_node_set_insert
	test	al, al
	je	.label_1438
	lea	rdi, [rsp + 0x54]
	mov	rsi, r14
	mov	rdx, rbp
	call	re_acquire_state
	mov	r12, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rax, qword ptr [r12 + 0xb8]
	cmp	qword ptr [rax + rbx*8], 0
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_1432
	mov	eax, dword ptr [rsp + 0x54]
	test	eax, eax
	je	.label_1432
	jmp	.label_1435
	nop	dword ptr [rax]
.label_1434:
	test	eax, eax
	mov	rcx, rbp
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_1432
	nop	dword ptr [rax]
.label_1437:
	add	rbx, qword ptr [r14]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rbx, rcx
	call	check_node_accept
	mov	rcx, rbx
	test	al, al
	je	.label_1439
.label_1432:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r13*8]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	call	re_node_set_insert
	mov	rcx, rbx
	test	al, al
	je	.label_1438
.label_1439:
	inc	r15
	cmp	r15, qword ptr [rbp + 8]
	jl	.label_1433
.label_1431:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	xor	eax, eax
	jmp	.label_1440
.label_1438:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	eax, 0xc
	jmp	.label_1440
.label_1435:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	eax, dword ptr [rsp + 0x54]
.label_1440:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410390

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	jmp	.label_1445
	nop	dword ptr [rax]
.label_1447:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rbx, qword ptr [rax]
.label_1445:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1442
	mov	rax, qword ptr [rbp]
	mov	rcx, rbx
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_1441
	cmp	qword ptr [rax + rcx], r14
	je	.label_1443
.label_1441:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1444
	mov	rax, qword ptr [rbp + 0x28]
	lea	rbx, [rbx + rbx*2]
	mov	rcx, qword ptr [rax + rbx*8 + 8]
	cmp	rcx, 2
	je	.label_1446
	test	rcx, rcx
	jne	.label_1447
	jmp	.label_1442
	nop	dword ptr [rax + rax]
.label_1446:
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, rbp
	mov	rsi, r12
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	je	.label_1447
	jmp	.label_1444
.label_1443:
	cmp	r15d, 9
	jne	.label_1442
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1444
.label_1442:
	xor	eax, eax
.label_1444:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410470

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	rbx, rsi
	cmp	qword ptr [r12 + 8], 0
	je	.label_1452
	mov	qword ptr [rsp + 8], rdi
	xor	esi, esi
	mov	rdi, r12
	call	calc_state_hash
	mov	r13, rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	rcx, r13
	and	rcx, qword ptr [rbx + 0x88]
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_1454
	lea	rbp, [rax + rcx*8]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1450:
	mov	rbx, qword ptr [r14 + r15*8]
	cmp	r13, qword ptr [rbx]
	jne	.label_1451
	lea	rdi, [rbx + 8]
	mov	rsi, r12
	call	re_node_set_compare
	test	al, al
	jne	.label_1449
.label_1451:
	inc	r15
	cmp	r15, qword ptr [rbp]
	jl	.label_1450
.label_1454:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rdx, r13
	call	create_ci_newstate
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1448
.label_1449:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1452:
	mov	dword ptr [rdi], 0
	jmp	.label_1453
.label_1448:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1453:
	xor	ebx, ebx
	jmp	.label_1449
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410540

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	xor	eax, eax
	test	r12, r12
	je	.label_1460
	mov	r13, r12
	add	r13, 8
	mov	rdi, r13
	mov	rsi, r14
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1458
	mov	rdx, rbx
	mov	qword ptr [r12 + 0x50], r13
	cmp	qword ptr [r14 + 8], 0
	jle	.label_1456
	xor	eax, eax
.label_1459:
	mov	r8, qword ptr [r15]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, qword ptr [rcx + rax*8]
	shl	rbp, 4
	mov	edi, dword ptr [r8 + rbp + 8]
	mov	esi, edi
	and	esi, 0x3ffff
	cmp	esi, 1
	je	.label_1457
	movzx	esi, dil
	shr	edi, 0x14
	mov	cl, byte ptr [r12 + 0x68]
	mov	bl, cl
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, edi
	shl	bl, 5
	and	bl, 0x20
	and	cl, 0xdf
	or	cl, bl
	mov	byte ptr [r12 + 0x68], cl
	cmp	esi, 0xc
	je	.label_1455
	cmp	esi, 4
	je	.label_1461
	cmp	esi, 2
	jne	.label_1462
	or	cl, 0x10
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1457
.label_1461:
	or	cl, 0x40
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1457
.label_1462:
	lea	rcx, [r8 + rbp + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1457
.label_1455:
	or	byte ptr [r12 + 0x68], 0x80
.label_1457:
	inc	rax
	cmp	rax, qword ptr [r14 + 8]
	jl	.label_1459
.label_1456:
	mov	rdi, r15
	mov	rsi, r12
	call	register_state
	test	eax, eax
	mov	rax, r12
	jne	.label_1464
.label_1460:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1458:
	mov	rdi, r12
	call	free
	jmp	.label_1463
.label_1464:
	mov	rdi, r12
	call	free_state
.label_1463:
	xor	eax, eax
	jmp	.label_1460
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410670

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	shl	rbp, 4
	movzx	r15d, byte ptr [r14 + rbp + 8]
	cmp	r15d, 7
	je	.label_1490
	mov	rdi, r13
	mov	rsi, r12
	call	re_string_char_size_at
	mov	esi, eax
	cmp	r15d, 5
	jne	.label_1477
	xor	eax, eax
	cmp	esi, 2
	jl	.label_1466
	test	byte ptr [rbx + 0xd8], 0x40
	jne	.label_1481
	mov	rcx, qword ptr [r13 + 8]
	movzx	ecx, byte ptr [rcx + r12]
	cmp	ecx, 0xa
	je	.label_1466
.label_1481:
	cmp	byte ptr [rbx + 0xd8], 0
	js	.label_1485
	mov	eax, esi
	jmp	.label_1466
.label_1477:
	cmp	esi, 1
	setg	cl
	xor	eax, eax
	cmp	r15d, 6
	jne	.label_1466
	test	cl, cl
	je	.label_1466
	mov	rbp, qword ptr [r14 + rbp]
	cmp	qword ptr [rbp + 0x40], 0
	jne	.label_1467
	cmp	qword ptr [rbp + 0x48], 0
	jne	.label_1467
	xor	r14d, r14d
	cmp	qword ptr [rbp + 0x28], 0
	je	.label_1474
.label_1467:
	mov	rdi, r13
	mov	ebx, esi
	mov	rsi, r12
	call	re_string_wchar_at
	mov	esi, ebx
	mov	r14d, eax
.label_1474:
	cmp	qword ptr [rbp + 0x28], 0
	jle	.label_1479
	mov	rax, qword ptr [rbp]
	xor	ecx, ecx
.label_1482:
	cmp	r14d, dword ptr [rax + rcx*4]
	je	.label_1480
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x28]
	jl	.label_1482
.label_1479:
	mov	r15d, esi
	cmp	qword ptr [rbp + 0x48], 0
	jle	.label_1484
	xor	ebx, ebx
	nop	
.label_1491:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	edi, r14d
	call	iswctype
	test	eax, eax
	jne	.label_1476
	inc	rbx
	cmp	rbx, qword ptr [rbp + 0x48]
	jl	.label_1491
.label_1484:
	xor	ecx, ecx
	cmp	qword ptr [rbp + 0x40], 0
	mov	esi, r15d
	jle	.label_1471
	mov	rax, qword ptr [rbp + 8]
	xor	edx, edx
	nop	
.label_1465:
	cmp	dword ptr [rax + rdx*4], r14d
	jg	.label_1475
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	r14d, dword ptr [rcx + rdx*4]
	jle	.label_1473
.label_1475:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, qword ptr [rbp + 0x40]
	jl	.label_1465
	jmp	.label_1471
.label_1485:
	mov	rcx, qword ptr [r13 + 8]
	cmp	byte ptr [rcx + r12], 0
	je	.label_1466
	mov	eax, esi
	jmp	.label_1466
.label_1490:
	mov	rsi, qword ptr [r13 + 8]
	movzx	edx, byte ptr [rsi + r12]
	xor	eax, eax
	cmp	edx, 0xc2
	jb	.label_1466
	lea	rcx, [r12 + 2]
	cmp	rcx, qword ptr [r13 + 0x58]
	jle	.label_1483
	xor	eax, eax
	jmp	.label_1466
.label_1476:
	mov	esi, r15d
.label_1480:
	mov	ecx, esi
.label_1471:
	test	byte ptr [rbp + 0x20], 1
	jne	.label_1487
	mov	eax, ecx
	jmp	.label_1466
.label_1487:
	test	ecx, ecx
	mov	eax, 0
	jg	.label_1466
	test	esi, esi
	mov	eax, 1
	cmovg	eax, esi
.label_1466:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1473:
	mov	ecx, esi
	jmp	.label_1471
.label_1483:
	mov	cl, byte ptr [r12 + rsi + 1]
	movzx	edx, dl
	cmp	edx, 0xdf
	ja	.label_1472
	movzx	eax, cl
	cmp	eax, 0xc0
	sbb	edx, edx
	and	edx, 2
	test	cl, cl
	mov	eax, 0
	cmovs	eax, edx
	jmp	.label_1466
.label_1472:
	cmp	edx, 0xef
	ja	.label_1488
	mov	eax, 3
	cmp	edx, 0xe0
	jne	.label_1469
	movzx	ecx, cl
	cmp	ecx, 0xa0
	jae	.label_1469
	xor	eax, eax
	jmp	.label_1466
.label_1488:
	cmp	edx, 0xf7
	ja	.label_1486
	mov	eax, 4
	cmp	edx, 0xf0
	jne	.label_1469
	movzx	ecx, cl
	cmp	ecx, 0x90
	jae	.label_1469
	xor	eax, eax
	jmp	.label_1466
.label_1486:
	cmp	edx, 0xfb
	ja	.label_1470
	mov	eax, 5
	cmp	edx, 0xf8
	jne	.label_1469
	movzx	ecx, cl
	cmp	ecx, 0x88
	jae	.label_1469
	xor	eax, eax
	jmp	.label_1466
.label_1470:
	cmp	edx, 0xfd
	ja	.label_1478
	mov	eax, 6
	cmp	edx, 0xfc
	jne	.label_1469
	movzx	ecx, cl
	cmp	ecx, 0x84
	jae	.label_1469
	xor	eax, eax
	jmp	.label_1466
.label_1469:
	mov	ecx, eax
	lea	rdx, [rcx + r12]
	cmp	rdx, qword ptr [r13 + 0x58]
	jle	.label_1493
	xor	eax, eax
	jmp	.label_1466
.label_1493:
	add	r12, qword ptr [r13 + 8]
	mov	edx, 1
.label_1468:
	mov	bl, byte ptr [r12 + rdx]
	test	bl, bl
	jns	.label_1492
	movzx	esi, bl
	cmp	esi, 0xbf
	ja	.label_1489
	inc	rdx
	cmp	rdx, rcx
	jl	.label_1468
	jmp	.label_1466
.label_1478:
	xor	eax, eax
	jmp	.label_1466
.label_1492:
	xor	eax, eax
	jmp	.label_1466
.label_1489:
	xor	eax, eax
	jmp	.label_1466
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410930

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rax + r14]
	movzx	ecx, byte ptr [rbx + 8]
	xor	eax, eax
	dec	ecx
	cmp	ecx, 6
	ja	.label_1499
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1500]]
.label_1753:
	movzx	eax, byte ptr [rbx]
	cmp	eax, esi
	je	.label_1498
	xor	eax, eax
	jmp	.label_1499
.label_1754:
	mov	rdi, qword ptr [rbx]
	call	bitset_contain
	test	al, al
	jne	.label_1498
	xor	eax, eax
	jmp	.label_1499
.label_1756:
	test	sil, sil
	js	.label_1494
.label_1755:
	test	sil, sil
	je	.label_1496
	movzx	eax, sil
	cmp	eax, 0xa
	jne	.label_1498
	mov	rax, qword ptr [r15 + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_1498
	xor	eax, eax
	jmp	.label_1499
.label_1496:
	mov	rax, qword ptr [r15 + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_1502
.label_1498:
	mov	ecx, dword ptr [rbx + 8]
	mov	ebx, ecx
	shr	ebx, 8
	mov	al, 1
	test	bx, 0x3ff
	je	.label_1499
	mov	ebp, ecx
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	mov	rsi, r14
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bl, 4
	je	.label_1501
	test	ecx, ecx
	jne	.label_1501
	xor	eax, eax
	jmp	.label_1499
.label_1501:
	mov	edx, ebp
	test	dh, 8
	je	.label_1497
	test	ecx, ecx
	je	.label_1497
	xor	eax, eax
	jmp	.label_1499
.label_1494:
	xor	eax, eax
	jmp	.label_1499
.label_1497:
	test	dh, 0x20
	je	.label_1495
	mov	ecx, eax
	and	ecx, 2
	jne	.label_1495
	xor	eax, eax
	jmp	.label_1499
.label_1502:
	xor	eax, eax
	jmp	.label_1499
.label_1495:
	and	eax, 8
	test	bl, bl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_1499:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x410a30
	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410a40

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r12 + 0x10], 0
	jle	.label_1503
	mov	rax, qword ptr [r15 + 0x98]
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1509:
	mov	rax, qword ptr [r12 + 0x18]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_1504
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1512
	mov	rsi, qword ptr [r15 + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1506
	test	ecx, ecx
	je	.label_1504
.label_1506:
	test	bh, 8
	je	.label_1508
	test	ecx, ecx
	jne	.label_1504
.label_1508:
	test	bh, 0x20
	je	.label_1511
	mov	ecx, eax
	and	ecx, 2
	je	.label_1504
.label_1511:
	test	bpl, bpl
	jns	.label_1512
	and	eax, 8
	je	.label_1504
	nop	word ptr cs:[rax + rax]
.label_1512:
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r14
	mov	rdx, r15
	call	check_node_accept_bytes
	test	eax, eax
	je	.label_1504
	mov	rbp, r12
	movsxd	r12, eax
	add	r12, qword ptr [r15 + 0x48]
	mov	ecx, dword ptr [r15 + 0xe0]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [r15 + 0xe0], ecx
	mov	rdi, r15
	mov	rsi, r12
	call	clean_state_log_if_needed
	mov	dword ptr [rsp + 0x34], eax
	test	eax, eax
	jne	.label_1503
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + r14*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [r15 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_1510
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x34], eax
	test	eax, eax
	je	.label_1507
	jmp	.label_1503
.label_1510:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1507:
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	lea	rdi, [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x10]
	mov	ecx, eax
	call	re_acquire_state_context
	test	rbx, rbx
	mov	rcx, qword ptr [r15 + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	je	.label_1505
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1505:
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	mov	r12, rbp
	jne	.label_1504
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	jne	.label_1503
	nop	word ptr cs:[rax + rax]
.label_1504:
	inc	r13
	xor	eax, eax
	cmp	r13, qword ptr [r12 + 0x10]
	jl	.label_1509
.label_1503:
	add	rsp, 0x38
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
	#Procedure 0x410c40

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	mov	r14, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r15, rax
	mov	qword ptr [rbp - 0x80], r15
	test	r15, r15
	je	.label_1528
	lea	rcx, [r15 + 0x1800]
	mov	qword ptr [rbp - 0x90], rcx
	lea	r13, [rbx + 0x58]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x58], xmm0
	mov	rdi, r14
	mov	rsi, rbx
	mov	qword ptr [rbp - 0xb8], rbx
	mov	rdx, r15
	call	group_nodes_into_DFAstates
	mov	r12, rax
	test	r12, r12
	jle	.label_1539
	lea	rsi, [r12 + 1]
	lea	rdi, [rbp - 0x48]
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x2c], eax
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r12, rcx
	ja	.label_1520
	test	eax, eax
	jne	.label_1520
	lea	rax, [r12*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_1548
	mov	qword ptr [rbp - 0xc0], r13
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_1552
.label_1548:
	call	malloc
	test	rax, rax
	je	.label_1520
	mov	qword ptr [rbp - 0xc0], r13
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
.label_1552:
	mov	qword ptr [rbp - 0x88], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0x98], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rbp - 0x70]
	call	bitset_empty
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rbp - 0xb0], rax
.label_1516:
	mov	qword ptr [rbp - 0x78], r13
	mov	qword ptr [rbp - 0x40], 0
	lea	rax, [r13 + r13*2]
	cmp	qword ptr [r15 + rax*8 + 8], 0
	mov	rbx, r14
	jle	.label_1530
	mov	rcx, qword ptr [rbp - 0x80]
	lea	r14, [rcx + rax*8 + 8]
	mov	r13, qword ptr [rcx + rax*8 + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1547:
	mov	rax, qword ptr [r13 + r15*8]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, -1
	je	.label_1538
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rbp - 0x48]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	test	eax, eax
	jne	.label_1513
.label_1538:
	inc	r15
	cmp	r15, qword ptr [r14]
	jl	.label_1547
.label_1530:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	test	rax, rax
	jne	.label_1551
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1513
.label_1551:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1517
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + rdx*8], rax
	mov	r13, rdx
	jmp	.label_1518
	nop	word ptr cs:[rax + rax]
.label_1517:
	mov	ecx, 1
	lea	rdi, [rbp - 0x2c]
	lea	rdx, [rbp - 0x48]
	mov	rbx, rsi
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	test	rax, rax
	jne	.label_1529
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1513
.label_1529:
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + rbx*8], rax
	je	.label_1535
	mov	al, 1
	cmp	dword ptr [rsi + 0xb4], 1
	jg	.label_1537
	mov	rax, qword ptr [rbp - 0xb0]
.label_1537:
	mov	qword ptr [rbp - 0xb0], rax
.label_1535:
	mov	ecx, 2
	lea	rdi, [rbp - 0x2c]
	mov	r14, rsi
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + rbx*8], rax
	mov	r13, rbx
	test	rax, rax
	jne	.label_1545
	mov	eax, dword ptr [rbp - 0x2c]
	test	eax, eax
	mov	rsi, r14
	je	.label_1518
	jmp	.label_1513
.label_1545:
	mov	rsi, r14
	nop	dword ptr [rax + rax]
.label_1518:
	mov	r14, rsi
	mov	rsi, r13
	shl	rsi, 5
	mov	rbx, qword ptr [rbp - 0x90]
	add	rsi, rbx
	lea	rdi, [rbp - 0x70]
	call	bitset_merge
	inc	r13
	cmp	r13, r12
	mov	r15, qword ptr [rbp - 0x80]
	jl	.label_1516
	mov	rax, qword ptr [rbp - 0xb0]
	and	al, 1
	jne	.label_1519
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rax], r15
	test	r15, r15
	mov	r11, r14
	je	.label_1513
	mov	r13, qword ptr [rbp - 0x88]
	lea	r10, [r13 - 8]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rbx, [rax + 0x1800]
	xor	r8d, r8d
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_1550:
	mov	rdi, qword ptr [rbp + r9*8 - 0x70]
	test	rdi, rdi
	je	.label_1533
	mov	rdx, r8
	mov	esi, 1
	jmp	.label_1536
	nop	word ptr cs:[rax + rax]
.label_1544:
	add	rax, 8
	test	qword ptr [rcx], rsi
	lea	rcx, [rcx + 0x20]
	je	.label_1544
	test	qword ptr [r11 + r9*8 + 0xb8], rsi
	je	.label_1540
	mov	rax, qword ptr [rax + r12*8]
	jmp	.label_1542
.label_1540:
	mov	rax, qword ptr [rax]
.label_1542:
	mov	qword ptr [r15 + rdx*8], rax
	jmp	.label_1534
	nop	word ptr cs:[rax + rax]
.label_1536:
	test	dil, 1
	mov	rcx, rbx
	mov	rax, r10
	jne	.label_1544
.label_1534:
	add	rsi, rsi
	shr	rdi, 1
	inc	rdx
	test	rdi, rdi
	jne	.label_1536
.label_1533:
	inc	r9
	add	r8, 0x40
	add	rbx, 8
	cmp	r9, 4
	jne	.label_1550
.label_1543:
	mov	r14, r15
	lea	rdi, [rbp - 0x70]
	mov	esi, 0xa
	call	bitset_contain
	test	al, al
	je	.label_1515
	test	r12, r12
	jle	.label_1515
	mov	rax, qword ptr [rbp - 0x80]
	lea	r15, [rax + 0x1800]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1523:
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_contain
	test	al, al
	jne	.label_1521
	inc	rbx
	add	r15, 0x20
	cmp	rbx, r12
	jl	.label_1523
	jmp	.label_1515
.label_1528:
	xor	eax, eax
	jmp	.label_1524
.label_1539:
	mov	rdi, r15
	call	free
	test	r12, r12
	je	.label_1526
	xor	eax, eax
	jmp	.label_1524
.label_1526:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	setne	al
	jmp	.label_1524
.label_1521:
	mov	rax, r12
	shl	rax, 4
	add	rax, r13
	mov	rcx, qword ptr [rbp - 0xb0]
	test	cl, cl
	mov	rcx, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x50], rcx
	je	.label_1515
	mov	rax, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x850], rax
.label_1515:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1541
	mov	rdi, r13
	call	free
.label_1541:
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	test	r12, r12
	jle	.label_1546
	mov	rbx, qword ptr [rbp - 0x80]
	add	rbx, 0x10
	nop	dword ptr [rax + rax]
.label_1532:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_1532
.label_1546:
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
	mov	al, 1
	jmp	.label_1524
.label_1519:
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	mov	esi, 0x200
	call	rpl_calloc
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rax + 0x60], r15
	test	r15, r15
	je	.label_1513
	mov	r13, qword ptr [rbp - 0x88]
	lea	r10, [r13 - 8]
	xor	r8d, r8d
	xor	r9d, r9d
.label_1553:
	mov	rsi, qword ptr [rbp + r9*8 - 0x70]
	test	rsi, rsi
	mov	rdi, r8
	mov	ecx, 1
	jne	.label_1522
	jmp	.label_1525
	nop	word ptr cs:[rax + rax]
.label_1527:
	add	rax, 8
	test	qword ptr [rdx], rcx
	lea	rdx, [rdx + 0x20]
	je	.label_1527
	mov	rdx, qword ptr [rax]
	mov	qword ptr [r15 + rdi*8], rdx
	mov	rax, qword ptr [rax + r12*8]
	mov	qword ptr [r15 + rdi*8 + 0x800], rax
	jmp	.label_1531
	nop	word ptr cs:[rax + rax]
.label_1522:
	test	sil, 1
	mov	rdx, rbx
	mov	rax, r10
	jne	.label_1527
.label_1531:
	add	rcx, rcx
	shr	rsi, 1
	inc	rdi
	test	rsi, rsi
	jne	.label_1522
.label_1525:
	inc	r9
	add	r8, 0x40
	add	rbx, 8
	cmp	r9, 4
	jne	.label_1553
	jmp	.label_1543
.label_1513:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	mov	rdi, qword ptr [rbp - 0x88]
	mov	r15, qword ptr [rbp - 0x80]
	je	.label_1520
	call	free
.label_1520:
	mov	r14, r15
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	test	r12, r12
	jle	.label_1549
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1514:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_1514
.label_1549:
	mov	rdi, r14
	call	free
	xor	eax, eax
.label_1524:
	lea	rsp, [rbp - 0x28]
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
	#Procedure 0x411230

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x30], rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x10], rbp
	lea	rdi, [rsp + 0x80]
	call	bitset_empty
	mov	r8, rbp
	xor	r15d, r15d
	cmp	qword ptr [rbx + 0x10], 0
	jle	.label_1569
	xor	ebp, ebp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1576:
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbx, qword ptr [rax + rbp*8]
	mov	r12, qword ptr [r8]
	shl	rbx, 4
	lea	rax, [r12 + rbx]
	mov	r13d, dword ptr [r12 + rbx + 8]
	movzx	ebp, r13b
	mov	dword ptr [rsp + 0x3c], ebp
	cmp	ebp, 1
	jne	.label_1574
	movzx	esi, byte ptr [rax]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rsp + 0x80]
	call	bitset_set
	jmp	.label_1561
	nop	word ptr cs:[rax + rax]
.label_1574:
	cmp	ebp, 7
	je	.label_1584
	cmp	ebp, 5
	je	.label_1583
	cmp	ebp, 3
	jne	.label_1568
	mov	rsi, qword ptr [rax]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rsp + 0x80]
	call	bitset_merge
	jmp	.label_1561
.label_1584:
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x88], -1
	mov	qword ptr [rsp + 0x80], -1
	test	byte ptr [r8 + 0xd8], 0x40
	jne	.label_1589
	mov	esi, 0xa
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_clear
	mov	r8, rbp
	mov	ebp, dword ptr [rsp + 0x3c]
.label_1589:
	cmp	byte ptr [r8 + 0xd8], 0
	mov	qword ptr [rsp + 0x10], r8
	jns	.label_1561
	jmp	.label_1564
.label_1583:
	mov	qword ptr [rsp + 0x18], rax
	cmp	dword ptr [r8 + 0xb4], 2
	jl	.label_1565
	mov	rsi, qword ptr [r8 + 0x78]
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_merge
	jmp	.label_1573
.label_1565:
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_set_all
.label_1573:
	test	byte ptr [rbp + 0xd8], 0x40
	mov	rax, rbp
	jne	.label_1575
	mov	esi, 0xa
	lea	rdi, [rsp + 0x80]
	mov	rbp, rax
	call	bitset_clear
	mov	rax, rbp
.label_1575:
	mov	qword ptr [rsp + 0x10], rax
	cmp	byte ptr [rax + 0xd8], 0
	mov	ebp, dword ptr [rsp + 0x3c]
	jns	.label_1561
.label_1564:
	xor	esi, esi
	lea	rdi, [rsp + 0x80]
	call	bitset_clear
	nop	
.label_1561:
	shr	r13d, 8
	mov	eax, r13d
	and	eax, 0x3ff
	je	.label_1582
	test	r13b, 0x20
	je	.label_1585
	mov	dword ptr [rsp + 0x3c], ebp
	mov	esi, 0xa
	lea	rbp, [rsp + 0x80]
	mov	rdi, rbp
	call	bitset_contain
	mov	byte ptr [rsp + 8], al
	mov	rdi, rbp
	call	bitset_empty
	cmp	byte ptr [rsp + 8], 0
	je	.label_1555
	mov	esi, 0xa
	mov	rdi, rbp
	call	bitset_set
	mov	ebp, dword ptr [rsp + 0x3c]
.label_1585:
	test	r13b, r13b
	js	.label_1559
	lea	rax, [r12 + rbx + 8]
	test	r13b, 4
	mov	r8, qword ptr [rsp + 0x10]
	je	.label_1560
	cmp	ebp, 1
	lea	rdi, [rsp + 0x80]
	jne	.label_1562
	test	byte ptr [rax + 2], 0x40
	jne	.label_1562
	mov	rbp, r8
	call	bitset_empty
	mov	r8, rbp
	jmp	.label_1568
.label_1562:
	cmp	dword ptr [r8 + 0xb4], 2
	mov	ecx, 0
	mov	edx, 0
	jl	.label_1572
	mov	rdx, qword ptr [r8 + 0x78]
	xor	ecx, ecx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1588:
	mov	rdi, qword ptr [rdx + rsi*8]
	not	rdi
	or	rdi, qword ptr [r8 + rsi*8 + 0xb8]
	and	rdi, qword ptr [rsp + rsi*8 + 0x80]
	mov	qword ptr [rsp + rsi*8 + 0x80], rdi
	or	rcx, rdi
	inc	rsi
	cmp	rsi, 4
	jne	.label_1588
	jmp	.label_1581
	nop	dword ptr [rax]
.label_1572:
	mov	rsi, qword ptr [rsp + rdx*8 + 0x80]
	and	rsi, qword ptr [r8 + rdx*8 + 0xb8]
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	or	rcx, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_1572
.label_1581:
	test	rcx, rcx
	je	.label_1568
.label_1560:
	test	r13b, 8
	je	.label_1582
	cmp	ebp, 1
	jne	.label_1587
	test	byte ptr [rax + 2], 0x40
	jne	.label_1559
.label_1587:
	mov	rdi, qword ptr [rsp + 0x10]
	cmp	dword ptr [rdi + 0xb4], 2
	mov	eax, 0
	mov	ecx, 0
	jl	.label_1554
	mov	rcx, qword ptr [rdi + 0x78]
	xor	eax, eax
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1558:
	mov	rsi, qword ptr [rcx + rdx*8]
	and	rsi, qword ptr [rdi + rdx*8 + 0xb8]
	not	rsi
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	or	rax, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_1558
	jmp	.label_1567
	nop	dword ptr [rax]
.label_1554:
	mov	rdx, qword ptr [rdi + rcx*8 + 0xb8]
	not	rdx
	and	rdx, qword ptr [rsp + rcx*8 + 0x80]
	mov	qword ptr [rsp + rcx*8 + 0x80], rdx
	or	rax, rdx
	inc	rcx
	cmp	rcx, 4
	jne	.label_1554
.label_1567:
	test	rax, rax
	je	.label_1555
.label_1582:
	test	r15, r15
	jle	.label_1577
	mov	rbx, qword ptr [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1586:
	cmp	ebp, 1
	mov	rcx, rbx
	mov	eax, 0
	mov	edx, 0
	jne	.label_1579
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x18]
	movzx	esi, byte ptr [rax]
	call	bitset_contain
	test	al, al
	mov	rcx, rbx
	mov	eax, 0
	mov	edx, 0
	je	.label_1556
.label_1579:
	mov	rsi, qword ptr [rcx]
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	mov	qword ptr [rsp + rdx*8 + 0x60], rsi
	or	rax, rsi
	inc	rdx
	add	rcx, 8
	cmp	rdx, 4
	jne	.label_1579
	test	rax, rax
	mov	ebp, 0
	mov	eax, 0
	mov	ecx, 0
	je	.label_1556
	nop	dword ptr [rax + rax]
.label_1566:
	mov	rdx, qword ptr [rsp + rcx*8 + 0x80]
	not	rdx
	mov	rsi, qword ptr [rbx + rcx*8]
	and	rdx, rsi
	mov	qword ptr [rsp + rcx*8 + 0x40], rdx
	or	rax, rdx
	not	rsi
	and	rsi, qword ptr [rsp + rcx*8 + 0x80]
	mov	qword ptr [rsp + rcx*8 + 0x80], rsi
	or	rbp, rsi
	inc	rcx
	cmp	rcx, 4
	jne	.label_1566
	test	rax, rax
	je	.label_1570
	mov	rdi, r15
	shl	rdi, 5
	mov	r13, qword ptr [rsp + 0x30]
	add	rdi, r13
	lea	rsi, [rsp + 0x40]
	call	bitset_copy
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, r13
	lea	rsi, [rsp + 0x60]
	call	bitset_copy
	lea	rax, [r15 + r15*2]
	lea	rdi, [r14 + rax*8]
	lea	rax, [r12 + r12*2]
	lea	rsi, [r14 + rax*8]
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1557
	inc	r15
.label_1570:
	lea	rax, [r12 + r12*2]
	lea	rdi, [r14 + rax*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rcx*8]
	call	re_node_set_insert
	test	al, al
	je	.label_1557
	test	rbp, rbp
	je	.label_1563
.label_1556:
	inc	r12
	add	rbx, 0x20
	cmp	r12, r15
	mov	ebp, dword ptr [rsp + 0x3c]
	jl	.label_1586
	jmp	.label_1563
.label_1568:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x28]
	jmp	.label_1571
.label_1559:
	lea	rdi, [rsp + 0x80]
	call	bitset_empty
	jmp	.label_1555
.label_1577:
	xor	r12d, r12d
.label_1563:
	cmp	r12, r15
	jne	.label_1555
	mov	rdi, r15
	shl	rdi, 5
	mov	rax, qword ptr [rsp + 0x30]
	add	rdi, rax
	lea	r12, [rsp + 0x80]
	mov	rsi, r12
	call	bitset_copy
	lea	rax, [r15 + r15*2]
	lea	rdi, [r14 + rax*8]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rbp*8]
	call	re_node_set_init_1
	test	eax, eax
	jne	.label_1557
	inc	r15
	mov	rdi, r12
	call	bitset_empty
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1571
	nop	word ptr [rax + rax]
.label_1555:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x28]
.label_1571:
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_1576
	jmp	.label_1569
.label_1557:
	test	r15, r15
	jle	.label_1578
	add	r14, 0x10
	nop	word ptr [rax + rax]
.label_1580:
	mov	rdi, qword ptr [r14]
	call	free
	add	r14, 0x18
	dec	r15
	jne	.label_1580
.label_1578:
	mov	r15, -1
.label_1569:
	mov	rax, r15
	add	rsp, 0xa8
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
	#Procedure 0x4117e0

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x10], xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4117f0

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1590:
	mov	rcx, qword ptr [rsi + rax*8]
	or	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_1590
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411820

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	mov	qword ptr [rdi + 0x18], -1
	mov	qword ptr [rdi + 0x10], -1
	mov	qword ptr [rdi + 8], -1
	mov	qword ptr [rdi], -1
	ret	
	.section	.text
	.align	16
	#Procedure 0x411840

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	mov	rax, -2
	mov	cl, sil
	rol	rax, cl
	mov	rcx, rsi
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rsi
	sar	rcx, 6
	and	qword ptr [rdi + rcx*8], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411870

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	movups	xmm0, xmmword ptr [rsi]
	movups	xmm1, xmmword ptr [rsi + 0x10]
	movups	xmmword ptr [rdi + 0x10], xmm1
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x411880

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	mov	rax, qword ptr [rdi]
	shl	rsi, 4
	mov	ecx, dword ptr [rax + rsi + 8]
	movzx	eax, cl
	cmp	eax, 2
	jne	.label_1591
	shr	ecx, 8
	mov	al, 1
	test	cx, 0x3ff
	je	.label_1595
	mov	eax, edx
	and	eax, 1
	jne	.label_1594
	mov	esi, ecx
	and	esi, 4
	je	.label_1594
	xor	eax, eax
	ret	
.label_1591:
	xor	eax, eax
	ret	
.label_1594:
	test	eax, eax
	je	.label_1593
	mov	eax, ecx
	and	eax, 8
	je	.label_1593
	xor	eax, eax
	ret	
.label_1593:
	test	dl, 2
	jne	.label_1592
	mov	eax, ecx
	and	eax, 0x20
	je	.label_1592
	xor	eax, eax
	ret	
.label_1592:
	and	edx, 8
	test	cl, cl
	setns	al
	shr	edx, 3
	or	dl, al
	mov	al, dl
.label_1595:
	ret	
	.section	.text
	.align	16
	#Procedure 0x4118e0

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	mov	qword ptr [rdi], rsi
	mov	qword ptr [rdi + 8], rdx
	mov	qword ptr [rdi + 0x10], rcx
	mov	qword ptr [rdi + 0x18], r8
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x20], xmm0
	mov	qword ptr [rdi + 0x30], 0
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x411900

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdi, [rsp]
	call	re_node_set_init_1
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1598
	lea	rcx, [rsp]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1596
	lea	r12, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1601:
	test	rbx, rbx
	jle	.label_1602
	mov	rdi, qword ptr [r14]
	cmp	qword ptr [rdi + rbx*8], 0
	je	.label_1603
	xor	r13d, r13d
	jmp	.label_1600
	nop	word ptr cs:[rax + rax]
.label_1603:
	inc	r13d
.label_1600:
	cmp	r13d, dword ptr [r15 + 0xe0]
	jg	.label_1597
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + rbx*8 - 8], 0
	lea	rbx, [rbx - 1]
	je	.label_1599
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	build_sifted_states
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1596
.label_1599:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_1601
	jmp	.label_1596
.label_1602:
	xor	ebp, ebp
	jmp	.label_1596
.label_1597:
	shl	rbx, 3
	xor	ebp, ebp
	xor	esi, esi
	mov	rdx, rbx
	call	memset
.label_1596:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1598:
	mov	eax, ebp
	add	rsp, 0x18
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
	#Procedure 0x411a10

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r14, r14
	jle	.label_1606
	xor	ebp, ebp
	lea	r13, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_1605:
	mov	rax, qword ptr [r15 + rbp*8]
	cmp	qword ptr [rbx + rbp*8], 0
	je	.label_1604
	test	rax, rax
	je	.label_1607
	mov	rsi, qword ptr [rbx + rbp*8]
	add	rsi, 8
	mov	rdx, qword ptr [r15 + rbp*8]
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1606
	lea	rdi, [rsp + 0x24]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	je	.label_1607
	jmp	.label_1606
	nop	dword ptr [rax + rax]
.label_1604:
	mov	qword ptr [rbx + rbp*8], rax
.label_1607:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r14
	jl	.label_1605
.label_1606:
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
	.align	16
	#Procedure 0x411ac0

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rcx
	mov	r15, rdx
	mov	rbx, rdi
	mov	rdx, qword ptr [rbx + 0x98]
	mov	dword ptr [rsp + 0x14], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r14, qword ptr [rax + r15*8]
	lea	r12, [r14 + 8]
	test	r14, r14
	cmove	r12, r14
	cmp	qword ptr [r13 + 8], 0
	je	.label_1608
	test	r14, r14
	je	.label_1611
	mov	rdi, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rsi, r13
	mov	rbp, rdx
	mov	rdx, r12
	call	add_epsilon_src_nodes
	mov	rdx, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1609
	cmp	qword ptr [rsi + 0x28], 0
	je	.label_1611
	lea	rcx, [rsi + 0x20]
	mov	r8, qword ptr [rbx + 0xd8]
	mov	rdi, rdx
	mov	rsi, r13
	mov	rbp, rdx
	mov	rdx, r12
	mov	r9, r15
	call	check_subexp_limits
	mov	rdx, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1609
.label_1611:
	lea	rdi, [rsp + 0x14]
	mov	rbp, rsi
	mov	rsi, rdx
	mov	rdx, r13
	call	re_acquire_state
	mov	rsi, rbp
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rcx + r15*8], rax
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	je	.label_1612
	jmp	.label_1609
.label_1608:
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rax + r15*8], 0
.label_1612:
	test	r14, r14
	je	.label_1610
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r15*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_1610
	mov	rdi, rbx
	mov	rdx, r15
	mov	rcx, r12
	call	sift_states_bkref
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1609
.label_1610:
	xor	eax, eax
.label_1609:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411be0

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r14, qword ptr [rax + rbx*8]
	xor	eax, eax
	cmp	qword ptr [r14 + 0x28], 0
	jle	.label_1613
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rax, [rax + 0x20]
	mov	qword ptr [rsp + 8], rax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1617:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r12]
	mov	r13, rbp
	shl	r13, 4
	test	byte ptr [rax + r13 + 0xa], 0x10
	je	.label_1614
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rdx, rbp
	mov	rcx, rbx
	call	sift_states_iter_mb
	test	eax, eax
	jne	.label_1618
.label_1614:
	add	r13, qword ptr [r12]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r13
	mov	rdx, rbx
	call	check_node_accept
	test	al, al
	je	.label_1616
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rax + rbx*8 + 8]
	test	rdi, rdi
	je	.label_1616
	add	rdi, 8
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	call	re_node_set_contains
	mov	rcx, rax
	mov	eax, 1
	test	rcx, rcx
	je	.label_1616
.label_1618:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	qword ptr [rcx + 0x28], 0
	je	.label_1615
	movsxd	rcx, eax
	add	rcx, rbx
	mov	rax, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [rax + rbp*8]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	jne	.label_1616
.label_1615:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1613
.label_1616:
	inc	r15
	xor	eax, eax
	cmp	r15, qword ptr [r14 + 0x28]
	jl	.label_1617
.label_1613:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411d30

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	lea	rdi, [rsp + 4]
	mov	rsi, r15
	mov	rdx, rbx
	call	re_acquire_state
	mov	r12, rax
	mov	r13d, dword ptr [rsp + 4]
	test	r13d, r13d
	jne	.label_1619
	mov	rax, r12
	add	r12, 0x38
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_1620
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	dword ptr [rsp + 4], eax
	mov	r13d, 0xc
	test	eax, eax
	jne	.label_1619
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1620
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1622:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r12
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1621
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_1622
	mov	dword ptr [rsp + 4], eax
.label_1620:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r12
	call	re_node_set_add_intersect
	mov	r13d, eax
.label_1619:
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1621:
	mov	dword ptr [rsp + 4], eax
	jmp	.label_1619
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411e00

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r9
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp + 0x20], r8
	mov	r9, rcx
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 8], rdx
	mov	rdx, rsi
	mov	qword ptr [rsp + 0x30], rdx
	mov	r11, rdi
	xor	eax, eax
	cmp	qword ptr [r9 + 8], 0
	jle	.label_1623
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1629:
	mov	rax, qword ptr [r9 + 0x10]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [r8 + rax*8 + 0x10], r14
	jge	.label_1627
	cmp	qword ptr [r8 + rax*8 + 8], r14
	jl	.label_1627
	mov	rcx, qword ptr [r8 + rax*8]
	mov	rsi, qword ptr [r11]
	shl	rcx, 4
	mov	r13, qword ptr [rsi + rcx]
	mov	qword ptr [rsp], r13
	cmp	qword ptr [r8 + rax*8 + 0x18], r14
	jne	.label_1635
	cmp	qword ptr [rdx + 8], 0
	jle	.label_1627
	mov	r12, r8
	mov	r9, r14
	mov	r8, qword ptr [rdx + 8]
	mov	r10, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [r11]
	mov	r14, -1
	xor	edi, edi
	mov	rsi, -1
	nop	dword ptr [rax]
.label_1638:
	mov	rbx, qword ptr [r10 + rdi*8]
	mov	rbp, rbx
	shl	rbp, 4
	movzx	eax, byte ptr [rcx + rbp + 8]
	cmp	eax, 9
	je	.label_1637
	cmp	eax, 8
	jne	.label_1631
	cmp	r13, qword ptr [rcx + rbp]
	je	.label_1632
	mov	rbx, rsi
.label_1632:
	mov	rsi, rbx
	jmp	.label_1631
	nop	dword ptr [rax + rax]
.label_1637:
	mov	rax, qword ptr [r11]
	cmp	r13, qword ptr [rax + rbp]
	je	.label_1634
	mov	rbx, r14
.label_1634:
	mov	r14, rbx
.label_1631:
	inc	rdi
	cmp	rdi, r8
	jl	.label_1638
	mov	r13, r14
	test	rsi, rsi
	mov	r14, r9
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x28]
	js	.label_1626
	mov	rdi, r11
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbx, r11
	mov	r12, r8
	mov	rbp, r9
	call	sub_epsilon_src_nodes
	mov	r9, rbp
	mov	r8, r12
	mov	r11, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	test	eax, eax
	jne	.label_1623
.label_1626:
	test	r13, r13
	js	.label_1627
	cmp	qword ptr [rdx + 8], 0
	mov	ebp, 0
	jg	.label_1630
	jmp	.label_1627
.label_1635:
	cmp	qword ptr [rdx + 8], 0
	mov	ebp, 0
	jle	.label_1627
	nop	dword ptr [rax]
.label_1633:
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11]
	mov	rcx, rsi
	shl	rcx, 4
	mov	edi, dword ptr [rax + rcx + 8]
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_1624
	cmp	r13, qword ptr [rax + rcx]
	jne	.label_1624
	mov	rdi, r11
	mov	rcx, qword ptr [rsp + 8]
	mov	r13, rdx
	mov	rbx, r11
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], r15
	mov	r15, r14
	mov	r14, r9
	call	sub_epsilon_src_nodes
	mov	r9, r14
	mov	r14, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r11, rbx
	mov	rdx, r13
	mov	r13, qword ptr [rsp]
	test	eax, eax
	jne	.label_1623
.label_1624:
	inc	rbp
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_1633
	jmp	.label_1627
.label_1636:
	mov	rdi, r12
	mov	rsi, r14
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	call	sub_epsilon_src_nodes
	mov	rdx, rbx
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r11, r12
	jne	.label_1623
	dec	rbp
	jmp	.label_1625
.label_1630:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r14, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11 + 0x38]
	lea	rbx, [r14 + r14*2]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r13
	mov	r12, r11
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1628
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_1636
.label_1628:
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r11, r12
.label_1625:
	inc	rbp
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_1630
	nop	word ptr [rax + rax]
.label_1627:
	inc	r15
	xor	eax, eax
	cmp	r15, qword ptr [r9 + 8]
	jl	.label_1629
.label_1623:
	add	rsp, 0x38
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
	#Procedure 0x4120b0

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x58], rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x50], rbp
	mov	rsi, rdx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	cmp	rax, -1
	je	.label_1646
	mov	qword ptr [rsp + 0x60], 0
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1646
	mov	rdx, r14
	mov	qword ptr [rsp + 0x38], rdx
	lea	rax, [rdx + 0x20]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax*8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	nop	dword ptr [rax]
.label_1642:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r15, qword ptr [rax + rcx*8]
	mov	rsi, rbp
	mov	rax, qword ptr [rsi]
	mov	rcx, r15
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	r15, qword ptr [rdx + 0x10]
	jne	.label_1650
	cmp	eax, 4
	jne	.label_1643
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rdx + 0x18], rax
	jne	.label_1651
	jmp	.label_1643
	nop	
.label_1650:
	cmp	eax, 4
	jne	.label_1643
.label_1651:
	mov	r14, qword ptr [rsp + 0x20]
	lea	rbp, [r14 + r14*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x48]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r13, qword ptr [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_1648:
	cmp	qword ptr [rbp], r15
	jne	.label_1639
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rbx, rcx
	sub	rbx, rax
	add	rbx, qword ptr [rsp + 0x58]
	cmp	rcx, rax
	jne	.label_1644
	mov	rax, qword ptr [rsi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1645
	nop	word ptr cs:[rax + rax]
.label_1644:
	lea	rax, [r15*8]
	add	rax, qword ptr [rsi + 0x18]
.label_1645:
	cmp	rbx, qword ptr [rdx + 0x18]
	jg	.label_1639
	mov	rcx, qword ptr [rdx]
	mov	rdi, qword ptr [rcx + rbx*8]
	test	rdi, rdi
	je	.label_1639
	mov	r12, qword ptr [rax]
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	je	.label_1652
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r8, r12
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x50]
	jne	.label_1639
	cmp	qword ptr [rsp + 0x60], 0
	jne	.label_1647
	mov	rax, qword ptr [rdx + 0x30]
	mov	qword ptr [rsp + 0x90], rax
	movups	xmm0, xmmword ptr [rdx]
	movups	xmm1, xmmword ptr [rdx + 0x10]
	movups	xmm2, xmmword ptr [rdx + 0x20]
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x70], xmm1
	movaps	xmmword ptr [rsp + 0x60], xmm0
	lea	rdi, [rsp + 0x80]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, rdx
	call	re_node_set_init_copy
	mov	rdx, rbx
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1641
.label_1647:
	mov	qword ptr [rsp + 0x70], r15
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rsp + 0x80]
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_insert
	mov	rdx, rbx
	mov	r12d, 0xc
	test	al, al
	je	.label_1641
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x60]
	mov	rbp, rdx
	call	sift_states_backward
	mov	rdx, rbp
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1641
	mov	rsi, qword ptr [rdx + 8]
	test	rsi, rsi
	je	.label_1649
	mov	rbp, rdx
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x10]
	call	merge_state_array
	mov	rdx, rbp
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1641
.label_1649:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	qword ptr [rax + rcx*8], rbx
	lea	rbp, [rsp + 0x80]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, rbp
	call	re_node_set_remove_at
	mov	rdx, rbx
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, r13
	jmp	.label_1640
.label_1652:
	mov	rdx, qword ptr [rsp + 0x38]
.label_1640:
	mov	rsi, qword ptr [rsp + 0x50]
	nop	word ptr cs:[rax + rax]
.label_1639:
	inc	r14
	add	r13, 0x28
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_1648
.label_1643:
	mov	rbp, rsi
	mov	rax, qword ptr [rsp + 0x40]
	inc	rax
	mov	qword ptr [rsp + 0x40], rax
	xor	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	rax, qword ptr [rbx + 8]
	jl	.label_1642
.label_1641:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1646
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
.label_1646:
	mov	eax, r12d
	add	rsp, 0x98
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
	#Procedure 0x412420

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rdx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rdx, rdx
	je	.label_1654
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1654
	add	rcx, rdx
	mov	rax, qword ptr [r15 + 8]
	add	rax, rcx
	mov	rbx, qword ptr [r15]
	cmp	rax, rbx
	jle	.label_1659
	add	rbx, rcx
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1654
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
.label_1659:
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r12 + 8]
	lea	r8, [rdx + rcx]
	mov	r9, qword ptr [r14 + 8]
	add	r8, r9
	dec	rcx
.label_1663:
	dec	rdx
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, r9
.label_1668:
	lea	r9, [rdi - 1]
	mov	rsi, qword ptr [rbx + rdi*8 - 8]
	nop	dword ptr [rax + rax]
.label_1656:
	cmp	qword ptr [rax + rdx*8], rsi
	je	.label_1653
	jl	.label_1655
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_1656
	jmp	.label_1661
	nop	word ptr cs:[rax + rax]
.label_1655:
	cmp	rdi, 2
	mov	rdi, r9
	jge	.label_1668
	jmp	.label_1661
	nop	dword ptr [rax + rax]
.label_1653:
	test	rcx, rcx
	js	.label_1665
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rsi + rdx*8]
	nop	word ptr cs:[rax + rax]
.label_1662:
	cmp	qword ptr [rax + rcx*8], rsi
	jle	.label_1660
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1662
	jmp	.label_1665
.label_1660:
	test	rcx, rcx
	js	.label_1665
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rsi, qword ptr [r12 + 0x10]
	cmp	rax, qword ptr [rsi + rdx*8]
	je	.label_1666
	nop	dword ptr [rax]
.label_1665:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsi + r8*8 - 8], rax
	dec	r8
.label_1666:
	test	rdx, rdx
	jle	.label_1661
	cmp	rdi, 2
	jge	.label_1663
.label_1661:
	mov	rcx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r12 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rdx, [rcx + r10]
	lea	r11, [rax + rdx - 1]
	mov	rdx, r11
	sub	rdx, r8
	lea	r9, [rdx + 1]
	lea	rsi, [rdx + rcx + 1]
	mov	qword ptr [r15 + 8], rsi
	test	rcx, rcx
	jle	.label_1658
	test	rdx, rdx
	js	.label_1658
	add	r10, rax
	add	r10, rcx
	dec	rcx
	sub	r10, r8
	xor	edx, edx
.label_1657:
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rax, [rdi + r10*8]
	nop	dword ptr [rax]
.label_1669:
	mov	rsi, qword ptr [rdi + r11*8]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	jg	.label_1667
	mov	qword ptr [rax + rcx*8], rbx
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1669
	jmp	.label_1658
.label_1667:
	dec	r11
	dec	r10
	dec	r9
	mov	qword ptr [rax + rcx*8], rsi
	jne	.label_1657
	jmp	.label_1664
.label_1658:
	mov	rdx, r9
.label_1664:
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rdi + r8*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_1654:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rcx, [rsi + rsi*2]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0x40], 0
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1670
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdx, [rax + rcx*8]
	mov	qword ptr [rsp + 0x18], rdx
	lea	r13, [rax + rcx*8 + 8]
	lea	r15, [rax + rcx*8 + 0x10]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1677:
	mov	rax, qword ptr [r15]
	mov	rax, qword ptr [rax + r12*8]
	cmp	rax, qword ptr [rsp + 0x28]
	je	.label_1675
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx]
	mov	rdx, rax
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	je	.label_1675
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx*8 + 0x10]
	mov	r14, qword ptr [rax]
	mov	rbp, -1
	cmp	qword ptr [rcx + rbx*8 + 8], 2
	jl	.label_1672
	mov	rbp, qword ptr [rax + 8]
.label_1672:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r14
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1671
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1674
.label_1671:
	test	rbp, rbp
	jle	.label_1675
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1675
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	je	.label_1675
.label_1674:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdx, [rax + rbx*8]
	lea	rdi, [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1676
	nop	word ptr [rax + rax]
.label_1675:
	inc	r12
	mov	rax, qword ptr [r13]
	cmp	r12, rax
	jl	.label_1677
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x10]
	jle	.label_1670
	xor	ebx, ebx
	lea	r14, [rsp + 0x30]
	nop	word ptr cs:[rax + rax]
.label_1673:
	mov	rax, qword ptr [r15]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rdi, r14
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1678
	mov	rdi, r12
	mov	rsi, rbp
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, r12
	call	re_node_set_remove_at
.label_1678:
	inc	rbx
	cmp	rbx, qword ptr [r13]
	jl	.label_1673
.label_1670:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	xor	ebp, ebp
.label_1679:
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1676:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	jmp	.label_1679
	.section	.text
	.align	16
	#Procedure 0x4127c0

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r9
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rsi, rcx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1681
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1682:
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	al, 1
	jne	.label_1680
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_1682
	xor	eax, eax
	jmp	.label_1680
.label_1681:
	xor	eax, eax
.label_1680:
	add	rsp, 0x38
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
	#Procedure 0x4128b0

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_1683
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_1683
	cmp	r11, r8
	sete	al
	movzx	r11d, al
	cmp	r10, r8
	sete	al
	movzx	esi, al
	add	esi, esi
	xor	eax, eax
	or	esi, r11d
	je	.label_1683
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_1683:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412900

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1684
	lea	rdx, [rax + rcx*8 + 8]
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 8], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	mov	byte ptr [rsp + 0xf], cl
	mov	eax, r13d
	and	eax, 1
	mov	dword ptr [rsp + 4], eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1691:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r12
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	cmp	eax, 9
	je	.label_1694
	cmp	eax, 8
	je	.label_1697
	cmp	eax, 4
	jne	.label_1692
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_1692
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
.label_1690:
	cmp	qword ptr [r14], r12
	jne	.label_1685
	cmp	rbx, 0x3f
	jg	.label_1688
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_1685
.label_1688:
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	je	.label_1693
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	test	ecx, ecx
	je	.label_1687
	mov	eax, 0xffffffff
	cmp	ecx, -1
	je	.label_1686
	cmp	rbx, 0x3f
	jg	.label_1685
	jmp	.label_1696
.label_1687:
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_1696
	xor	eax, eax
	cmp	dword ptr [rsp + 8], 0
	je	.label_1685
	jmp	.label_1686
.label_1696:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x10]
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	dword ptr [rax]
.label_1685:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_1690
	jmp	.label_1692
	nop	word ptr cs:[rax + rax]
.label_1694:
	cmp	dword ptr [rsp + 8], 0
	je	.label_1692
	xor	eax, eax
	jmp	.label_1689
	nop	dword ptr [rax + rax]
.label_1697:
	cmp	dword ptr [rsp + 4], 0
	je	.label_1692
	mov	eax, 0xffffffff
.label_1689:
	cmp	qword ptr [rcx], rbx
	je	.label_1686
.label_1692:
	inc	r15
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_1691
.label_1684:
	shr	r13d, 1
	and	r13d, 1
	jmp	.label_1695
.label_1693:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_1695:
	mov	eax, r13d
.label_1686:
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
	#Procedure 0x412b10

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, r8
	mov	rbp, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	rax, rdi
	mov	r15, qword ptr [rax + 0x98]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	check_node_accept_bytes
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1699
	movsxd	rax, ebx
	add	rax, rbp
	cmp	rax, r13
	jg	.label_1699
	mov	rcx, qword ptr [r12]
	mov	rdi, qword ptr [rcx + rax*8]
	test	rdi, rdi
	je	.label_1698
	add	rdi, 8
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1699
.label_1698:
	xor	ebx, ebx
.label_1699:
	mov	eax, ebx
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
	#Procedure 0x412b90

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	r14, r14
	je	.label_1700
	xor	ebx, ebx
	cmp	qword ptr [r14], 0
	jle	.label_1702
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1701:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r14]
	jl	.label_1701
.label_1702:
	mov	rdi, qword ptr [r14 + 0x10]
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
.label_1700:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412bf0

	.globl update_regs
	.type update_regs, @function
update_regs:
	mov	rdi, qword ptr [rdi]
	shl	rcx, 4
	lea	rax, [rdi + rcx]
	mov	ecx, dword ptr [rdi + rcx + 8]
	movzx	edi, cl
	cmp	edi, 9
	je	.label_1704
	cmp	edi, 8
	jne	.label_1703
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_1703
	shl	rax, 4
	mov	qword ptr [rsi + rax], r8
	mov	qword ptr [rsi + rax + 8], -1
	ret	
.label_1704:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_1703
	shl	rax, 4
	cmp	qword ptr [rsi + rax], r8
	jge	.label_1706
	mov	qword ptr [rsi + rax + 8], r8
	shl	r9, 4
	mov	rdi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_1706:
	test	ecx, 0x80000
	je	.label_1705
	cmp	qword ptr [rdx + rax], -1
	je	.label_1705
	shl	r9, 4
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_1705:
	mov	qword ptr [rsi + rax + 8], r8
.label_1703:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412c80

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	r15
	push	r14
	push	rbx
	mov	r14, r8
	mov	r15, rdi
	mov	rdi, qword ptr [r15]
	lea	rax, [rdi - 1]
	mov	qword ptr [r15], rax
	test	rdi, rdi
	jle	.label_1707
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rax + rbx + 0x10]
	shl	rdx, 4
	mov	rdi, rcx
	call	memcpy
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [r14 + 0x10], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbx + 8]
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1707:
	mov	edi, OFFSET FLAT:.str.26
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412d20

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, r8
	mov	rbx, rcx
	mov	rbp, rdi
	mov	r15, qword ptr [rbp + 0x98]
	mov	rax, qword ptr [r15]
	mov	r14, r13
	shl	r14, 4
	mov	ecx, dword ptr [rax + r14 + 8]
	test	cl, 8
	jne	.label_1711
	test	ecx, 0x100000
	jne	.label_1716
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x18], r9
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_1717
	mov	rax, qword ptr [rax + r14]
	shl	rax, 4
	mov	rdi, qword ptr [rax + rdx + 0x10]
	mov	rax, qword ptr [rax + rdx + 0x18]
	mov	rbx, rax
	sub	rbx, rdi
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1713
	cmp	rax, -1
	mov	r12, -1
	je	.label_1709
	cmp	rdi, -1
	je	.label_1709
	cmp	rax, rdi
	je	.label_1713
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rcx]
	sub	rax, rsi
	cmp	rax, rbx
	jl	.label_1709
	mov	rax, qword ptr [rbp + 8]
	add	rsi, rax
	mov	qword ptr [rsp + 8], rdi
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rax + rcx]
	mov	rdx, rbx
	call	memcmp
	mov	rdi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rax, qword ptr [rsp + 0x10]
	jne	.label_1709
.label_1713:
	cmp	rax, rdi
	jne	.label_1710
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_1709
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rcx + rax*8]
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1709
	jmp	.label_1710
.label_1711:
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rdx
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, r9
	mov	qword ptr [rsp + 0x18], r9
	mov	rsi, r13
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_1709
	lea	rax, [r13 + r13*2]
	mov	r12, -1
	cmp	qword ptr [rbx + rax*8 + 8], 0
	jle	.label_1709
	add	r14, 8
	lea	r15, [rbx + rax*8 + 8]
	mov	r13, qword ptr [rbx + rax*8 + 0x10]
	mov	r12, -1
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1708:
	mov	rbx, qword ptr [r13 + rbp*8]
	mov	rdi, r14
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_1718
	cmp	r12, -1
	jne	.label_1719
	mov	r12, rbx
.label_1718:
	inc	rbp
	cmp	rbp, qword ptr [r15]
	jl	.label_1708
	jmp	.label_1709
.label_1716:
	mov	qword ptr [rsp + 0x18], r9
	mov	rcx, qword ptr [rbx]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbp
	call	check_node_accept_bytes
	movsxd	rbx, eax
.label_1710:
	test	rbx, rbx
	jne	.label_1712
.label_1717:
	add	r14, qword ptr [r15]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rax]
	mov	rdi, rbp
	mov	rsi, r14
	call	check_node_accept
	mov	r12, -1
	mov	ebx, 1
	test	al, al
	je	.label_1709
.label_1712:
	mov	rax, qword ptr [r15 + 0x18]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 0x20]
	add	rbx, qword ptr [rax]
	mov	qword ptr [rax], rbx
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1714
	mov	r12, -1
	cmp	rbx, qword ptr [rbp + 0xa8]
	jg	.label_1709
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rax + rbx*8]
	test	rdi, rdi
	je	.label_1709
	add	rdi, 8
	mov	rsi, r14
	call	re_node_set_contains
	test	rax, rax
	je	.label_1709
.label_1714:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 8], 0
	mov	r12, r14
	jmp	.label_1709
.label_1719:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, rbp
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1715
	mov	r9, rbp
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_1709
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	call	push_fail_stack
	mov	rbx, -2
	test	eax, eax
	je	.label_1709
.label_1715:
	mov	r12, rbx
.label_1709:
	mov	rax, r12
	add	rsp, 0x28
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
	#Procedure 0x413020

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], r8
	mov	r15, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rcx, [r14 + 1]
	mov	qword ptr [rbx], rcx
	mov	rax, qword ptr [rbx + 8]
	cmp	rcx, rax
	jne	.label_1720
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	test	rax, rax
	je	.label_1721
	shl	qword ptr [rbx + 8], 1
	mov	qword ptr [rbx + 0x10], rax
.label_1720:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, r14
	shl	rcx, 4
	lea	r12, [rcx + rcx*2]
	mov	qword ptr [rax + r12], rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + r12 + 8], r13
	shl	r15, 4
	mov	rdi, r15
	call	malloc
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + r12 + 0x10], rax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r12 + 0x10]
	test	rdi, rdi
	je	.label_1721
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	lea	rcx, [r14 + r14*2]
	shl	rcx, 4
	lea	rdi, [rax + rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_1721:
	mov	eax, 0xc
	add	rsp, 0x18
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
	#Procedure 0x413100
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
	#Procedure 0x413130
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
	#Procedure 0x413150
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413160
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
	#Procedure 0x413170
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
	#Procedure 0x413190
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
	#Procedure 0x4131a0
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
	#Procedure 0x4131b0
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
	#Procedure 0x4131c0
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
	#Procedure 0x4131d0
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
	#Procedure 0x413200
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
	#Procedure 0x413220

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
	#Procedure 0x413230
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
	#Procedure 0x413250
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
	#Procedure 0x413260
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
	#Procedure 0x413270

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
	je	.label_1732
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1731
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_1731
.label_1732:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1731
	test	cl, cl
	jne	.label_1731
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_1731:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4132e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1734
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1735
	cmp	byte ptr [rax + 1], 0
	je	.label_1733
.label_1735:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1734
.label_1733:
	xor	ebx, ebx
.label_1734:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x413320

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	je	.label_1736
	mov	rax, rcx
.label_1736:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413350
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_1737
	mov	edi, ebx
	call	iswcntrl
	test	eax, eax
	sete	al
	movzx	eax, al
.label_1737:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413370

	.globl mb_copy
	.type mb_copy, @function
mb_copy:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rax, qword ptr [rbx]
	lea	rsi, [rbx + 0x18]
	cmp	rax, rsi
	je	.label_1738
	mov	qword ptr [r14], rax
	jmp	.label_1739
.label_1738:
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	qword ptr [r14], r15
.label_1739:
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	al, byte ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_1740
	mov	eax, dword ptr [rbx + 0x14]
	mov	dword ptr [r14 + 0x14], eax
.label_1740:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4133c0

	.globl is_basic
	.type is_basic, @function
is_basic:
	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4133e0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1741
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1743
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1741
.label_1743:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1741
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1742
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1742:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1741:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413460

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1744
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1744
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_1744:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413490

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_1745
	ret	
.label_1745:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4134b0

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
	jne	.label_1746
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1746
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1747
.label_1746:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1747:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1748
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1748:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x413520

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
