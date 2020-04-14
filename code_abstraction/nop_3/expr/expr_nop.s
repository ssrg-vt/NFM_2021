	.section	.text
	.align	16
	#Procedure 0x401d50

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
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_9
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_10
.label_7:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	nop	
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rbp, rbp
	mov	edi, ebp
	call	exit
.label_9:
	mov	esi, 0xa
	lea	rdi, [rdi]
	call	__overflow
.label_10:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
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
	mov	esi, OFFSET FLAT:.str.3
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
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
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
	mov	esi, OFFSET FLAT:.str.7
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.18
	mov	rbp, rbp
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	mov	rbp, rbp
	xor	esi, esi
	nop	
	call	setlocale
	test	rax, rax
	je	.label_8
	nop	
	mov	esi, OFFSET FLAT:.str.34
	nop	
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.12
	xor	eax, eax
	nop	
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:.str.38
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020b0

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
	mov	dword ptr [dword ptr [rip + exit_failure]],  3
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
	jb	.label_17
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
	jbe	.label_17
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
	mov	rax,  qword ptr [word ptr [rip + args]]
	cmp	qword ptr [rax], 0
	jne	.label_13
	mov	rsp, rsp
	mov	eax, dword ptr [rbx]
	lea	rdi, [rdi]
	cmp	eax, 1
	nop	
	je	.label_18
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_20
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rdx, rbx
	add	rdx, 8
	lea	rsi, [rsi]
	mov	esi, 0xa
	call	__gmpz_out_str
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_15
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_14
.label_18:
	mov	rdi, qword ptr [rbx + 8]
	call	puts
.label_14:
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	je	.label_21
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_19
	cmp	dword ptr [rbx + 0xc], 0
	lea	rdi, [rdi]
	sete	al
	nop	
	jmp	.label_11
.label_21:
	nop	
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	mov	al, 1
	test	dl, dl
	je	.label_11
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 0x2d
	sete	dl
	nop	
	movzx	esi, dl
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
.label_16:
	movzx	edx, dl
	cmp	edx, 0x30
	jne	.label_22
	mov	rbp, rbp
	mov	dl, byte ptr [rcx]
	inc	rcx
	nop	
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_16
	jmp	.label_11
.label_22:
	xor	eax, eax
.label_11:
	movzx	eax, al
	nop	
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	pop	rbp
	mov	rbp, rbp
	ret	
.label_15:
	lea	rsi, [rsi]
	mov	esi, 0xa
	mov	rbp, rbp
	call	__overflow
	mov	rbp, rbp
	jmp	.label_14
.label_17:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 2
	call	usage
.label_13:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + args]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 8
	mov	rbp, rbp
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	call	error
.label_20:
	call	abort
.label_19:
	mov	rsp, rsp
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402370

	.globl eval
	.type eval, @function
eval:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, edi
	lea	rdi, [rdi]
	movzx	edi, r14b
	mov	rbp, rbp
	call	eval1
	mov	rsp, rsp
	mov	r12, rax
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_27
	lea	rdi, [rdi]
	jmp	.label_47
.label_23:
	mov	rbp, rbp
	mov	rdi, r15
	call	__gmpz_clear
	lea	rsi, [rsi]
	jmp	.label_40
.label_27:
	mov	rsp, rsp
	lea	r15, [r12 + 8]
	test	r14b, r14b
	je	.label_42
.label_50:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.39
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	sete	al
	movzx	eax, al
	nop	
	lea	rax, [rbx + rax*8]
	nop	
	mov	qword ptr [word ptr [rip + args]],  rax
	lea	rsi, [rsi]
	jne	.label_47
	mov	eax, dword ptr [r12]
	mov	rbp, rbp
	test	eax, eax
	je	.label_53
	nop	
	cmp	eax, 1
	nop	
	jne	.label_26
	nop	
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	test	dl, dl
	je	.label_34
	movzx	edx, dl
	cmp	edx, 0x2d
	mov	rbp, rbp
	sete	dl
	mov	rsp, rsp
	movzx	esi, dl
	nop	
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
.label_45:
	mov	rsp, rsp
	movzx	edx, dl
	cmp	edx, 0x30
	lea	rsi, [rsi]
	jne	.label_36
	mov	rbp, rbp
	mov	dl, byte ptr [rcx]
	lea	rsi, [rsi]
	inc	rcx
	nop	
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_45
	mov	rbp, rbp
	jmp	.label_34
	nop	word ptr cs:[rax + rax]
.label_53:
	lea	rdi, [rdi]
	cmp	dword ptr [r12 + 0xc], 0
	sete	al
	lea	rdi, [rdi]
	jmp	.label_34
.label_36:
	nop	
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_34:
	movzx	edi, al
	nop	
	call	eval1
	mov	rbp, rax
	nop	
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_32
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_35
	mov	rax, qword ptr [r15]
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	test	cl, cl
	je	.label_39
	movzx	ecx, cl
	cmp	ecx, 0x2d
	sete	cl
	movzx	edx, cl
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + rdx]
	lea	rdi, [rdi]
	lea	rax, [rax + rdx + 1]
	nop	
.label_51:
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x30
	jne	.label_52
	mov	cl, byte ptr [rax]
	nop	
	inc	rax
	nop	
	test	cl, cl
	jne	.label_51
	jmp	.label_39
	nop	dword ptr [rax + rax]
.label_32:
	mov	rsp, rsp
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_23
.label_52:
	mov	rdi, rbp
	add	rdi, 8
	cmp	dword ptr [rbp], 1
	jne	.label_28
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	lea	rdi, [rdi]
	call	free
	nop	
	jmp	.label_37
	nop	dword ptr [rax]
.label_28:
	call	__gmpz_clear
.label_37:
	mov	rsp, rsp
	mov	rdi, rbp
	call	free
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_50
	jmp	.label_47
	nop	
.label_42:
	mov	esi, OFFSET FLAT:.str.39
	call	strcmp
	test	eax, eax
	nop	
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + args]],  rax
	nop	
	jne	.label_47
	xor	edi, edi
	mov	rsp, rsp
	call	eval1
	mov	rbp, rax
	mov	ecx, dword ptr [r12]
	test	ecx, ecx
	je	.label_30
	lea	rsi, [rsi]
	cmp	ecx, 1
	jne	.label_35
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_39
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	lea	rdi, [rdi]
	movzx	esi, dl
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	word ptr cs:[rax + rax]
.label_25:
	mov	rsp, rsp
	movzx	edx, dl
	lea	rsi, [rsi]
	cmp	edx, 0x30
	jne	.label_43
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_25
	jmp	.label_39
	nop	dword ptr [rax]
.label_30:
	nop	
	cmp	dword ptr [r12 + 0xc], 0
	lea	rsi, [rsi]
	je	.label_23
.label_43:
	add	rax, 8
	cmp	dword ptr [rbp], 1
	lea	rsi, [rsi]
	jne	.label_49
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	jmp	.label_38
.label_49:
	mov	rsp, rsp
	mov	rdi, rax
	call	__gmpz_clear
.label_38:
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	free
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	jne	.label_42
	lea	rdi, [rdi]
	jmp	.label_47
	nop	word ptr cs:[rax + rax]
.label_39:
	mov	rdi, qword ptr [r15]
	call	free
.label_40:
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free
	mov	eax, dword ptr [rbp]
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_24
	cmp	eax, 1
	jne	.label_29
	mov	rcx, qword ptr [rbp + 8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx]
	mov	rsp, rsp
	test	dl, dl
	je	.label_33
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	nop	
	movzx	esi, dl
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + rsi]
	nop	
	lea	rcx, [rcx + rsi + 1]
	nop	word ptr cs:[rax + rax]
.label_48:
	movzx	edx, dl
	cmp	edx, 0x30
	lea	rsi, [rsi]
	jne	.label_41
	mov	dl, byte ptr [rcx]
	inc	rcx
	mov	rbp, rbp
	test	dl, dl
	jne	.label_48
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_31
.label_33:
	mov	rdi, qword ptr [rbp + 8]
	call	free
	lea	rdi, [rdi]
	jmp	.label_44
	nop	dword ptr [rax]
.label_24:
	cmp	dword ptr [rbp + 0xc], 0
	mov	rbp, rbp
	jne	.label_41
.label_31:
	lea	rdi, [rbp + 8]
	call	__gmpz_clear
.label_44:
	nop	
	mov	rdi, rbp
	call	free
	mov	edi, 0x18
	call	xmalloc
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rbp, rbp
	lea	rdi, [rbp + 8]
	mov	rbp, rbp
	xor	esi, esi
	nop	
	call	__gmpz_init_set_ui
.label_41:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rbp, rbp
	mov	r12, rbp
	jne	.label_27
	mov	rsp, rsp
	jmp	.label_46
.label_47:
	mov	rsp, rsp
	mov	rbp, r12
.label_46:
	mov	rsp, rsp
	mov	rax, rbp
	pop	rbx
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_35:
	call	abort
.label_26:
	mov	rsp, rsp
	call	abort
.label_29:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027a0

	.globl eval1
	.type eval1, @function
eval1:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	nop	
	push	r12
	nop	
	push	rbx
	mov	r14d, edi
	movzx	edi, r14b
	lea	rdi, [rdi]
	call	eval2
	mov	r12, rax
	nop	
	jmp	.label_72
	nop	word ptr cs:[rax + rax]
.label_64:
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	free
	mov	edi, 0x18
	call	xmalloc
	mov	r12, rax
	nop	
	mov	dword ptr [r12], 0
	lea	rsi, [rsi]
	lea	rdi, [r12 + 8]
	nop	
	xor	esi, esi
	call	__gmpz_init_set_ui
.label_72:
	mov	rbp,  qword ptr [word ptr [rip + args]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp]
	nop	
	test	rdi, rdi
	nop	
	je	.label_54
	lea	rdi, [rdi]
	lea	r15, [r12 + 8]
	test	r14b, r14b
	je	.label_62
.label_63:
	mov	esi, OFFSET FLAT:.str.40
	lea	rdi, [rdi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	sete	al
	movzx	eax, al
	lea	rax, [rbp + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + args]],  rax
	jne	.label_54
	mov	eax, dword ptr [r12]
	test	eax, eax
	je	.label_76
	cmp	eax, 1
	jne	.label_80
	mov	rcx, qword ptr [r15]
	nop	
	mov	dl, byte ptr [rcx]
	mov	al, 1
	lea	rdi, [rdi]
	test	dl, dl
	lea	rdi, [rdi]
	je	.label_71
	movzx	edx, dl
	cmp	edx, 0x2d
	lea	rsi, [rsi]
	sete	dl
	nop	
	movzx	esi, dl
	mov	dl, byte ptr [rcx + rsi]
	lea	rcx, [rcx + rsi + 1]
	nop	word ptr cs:[rax + rax]
.label_69:
	movzx	edx, dl
	nop	
	cmp	edx, 0x30
	jne	.label_65
	mov	dl, byte ptr [rcx]
	lea	rsi, [rsi]
	inc	rcx
	lea	rdi, [rdi]
	test	dl, dl
	mov	rbp, rbp
	jne	.label_69
	nop	
	jmp	.label_71
	nop	
.label_76:
	cmp	dword ptr [r12 + 0xc], 0
	mov	rbp, rbp
	sete	al
	jmp	.label_71
.label_65:
	xor	eax, eax
.label_71:
	xor	al, 1
	movzx	edi, al
	lea	rsi, [rsi]
	call	eval2
	mov	rbp, rax
	mov	eax, dword ptr [r12]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_78
	cmp	eax, 1
	jne	.label_55
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	mov	rbp, rbp
	test	dl, dl
	je	.label_59
	movzx	edx, dl
	cmp	edx, 0x2d
	mov	rbp, rbp
	sete	dl
	movzx	esi, dl
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + rsi]
	mov	rbp, rbp
	lea	rcx, [rcx + rsi + 1]
	nop	word ptr cs:[rax + rax]
.label_68:
	movzx	edx, dl
	cmp	edx, 0x30
	lea	rdi, [rdi]
	jne	.label_83
	mov	dl, byte ptr [rcx]
	mov	rsp, rsp
	inc	rcx
	test	dl, dl
	jne	.label_68
	jmp	.label_59
	nop	dword ptr [rax]
.label_78:
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_66
.label_83:
	mov	ecx, dword ptr [rbp]
	lea	rdi, [rdi]
	test	ecx, ecx
	je	.label_77
	mov	rsp, rsp
	cmp	ecx, 1
	lea	rdi, [rdi]
	jne	.label_56
	mov	rdx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rdx]
	test	bl, bl
	je	.label_58
	movzx	esi, bl
	lea	rsi, [rsi]
	cmp	esi, 0x2d
	sete	bl
	movzx	esi, bl
	mov	bl, byte ptr [rdx + rsi]
	mov	rsp, rsp
	lea	rdx, [rdx + rsi + 1]
	nop	dword ptr [rax]
.label_57:
	lea	rdi, [rdi]
	movzx	esi, bl
	cmp	esi, 0x30
	jne	.label_82
	nop	
	mov	bl, byte ptr [rdx]
	lea	rsi, [rsi]
	inc	rdx
	lea	rdi, [rdi]
	test	bl, bl
	nop	
	jne	.label_57
	lea	rdi, [rdi]
	jmp	.label_58
	nop	word ptr cs:[rax + rax]
.label_77:
	mov	rbp, rbp
	cmp	dword ptr [rbp + 0xc], 0
	mov	rbp, rbp
	jne	.label_70
	mov	rsp, rsp
	jmp	.label_58
.label_82:
	lea	rsi, [rsi]
	cmp	ecx, 1
	jne	.label_70
	nop	
	mov	rdi, qword ptr [rbp + 8]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	jmp	.label_75
	nop	
.label_70:
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	add	rdi, 8
	call	__gmpz_clear
.label_75:
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	call	free
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	mov	rsp, rsp
	jne	.label_63
	jmp	.label_54
	nop	word ptr [rax + rax]
.label_62:
	mov	esi, OFFSET FLAT:.str.40
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	sete	al
	movzx	eax, al
	lea	rax, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	mov	rbp, rbp
	jne	.label_54
	xor	edi, edi
	call	eval2
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [r12]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_85
	mov	rsp, rsp
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_55
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	dl, byte ptr [rcx]
	lea	rsi, [rsi]
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_59
	movzx	edx, dl
	cmp	edx, 0x2d
	sete	dl
	movzx	esi, dl
	mov	rsp, rsp
	mov	dl, byte ptr [rcx + rsi]
	lea	rdi, [rdi]
	lea	rcx, [rcx + rsi + 1]
	nop	word ptr cs:[rax + rax]
.label_79:
	movzx	edx, dl
	lea	rsi, [rsi]
	cmp	edx, 0x30
	lea	rdi, [rdi]
	jne	.label_73
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_79
	jmp	.label_59
	nop	dword ptr [rax]
.label_85:
	cmp	dword ptr [r12 + 0xc], 0
	je	.label_66
.label_73:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp]
	test	ecx, ecx
	je	.label_86
	cmp	ecx, 1
	lea	rdi, [rdi]
	jne	.label_56
	nop	
	mov	rdx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rdx]
	mov	rsp, rsp
	test	bl, bl
	je	.label_58
	lea	rdi, [rdi]
	movzx	esi, bl
	nop	
	cmp	esi, 0x2d
	sete	bl
	movzx	esi, bl
	lea	rdi, [rdi]
	mov	bl, byte ptr [rdx + rsi]
	nop	
	lea	rdx, [rdx + rsi + 1]
.label_74:
	lea	rsi, [rsi]
	movzx	esi, bl
	lea	rdi, [rdi]
	cmp	esi, 0x30
	mov	rbp, rbp
	jne	.label_61
	mov	bl, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	lea	rsi, [rsi]
	test	bl, bl
	mov	rbp, rbp
	jne	.label_74
	lea	rsi, [rsi]
	jmp	.label_58
	nop	dword ptr [rax + rax]
.label_86:
	mov	rbp, rbp
	cmp	dword ptr [rbp + 0xc], 0
	jne	.label_81
	nop	
	jmp	.label_58
.label_61:
	mov	rsp, rsp
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_81
	mov	rdi, qword ptr [rbp + 8]
	mov	rsp, rsp
	call	free
	jmp	.label_84
	nop	word ptr cs:[rax + rax]
.label_81:
	mov	rsp, rsp
	mov	rdi, rbp
	add	rdi, 8
	call	__gmpz_clear
.label_84:
	mov	rdi, rbp
	call	free
	lea	rsi, [rsi]
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	jne	.label_62
	jmp	.label_54
	nop	word ptr cs:[rax + rax]
.label_58:
	cmp	eax, 1
	jne	.label_66
.label_59:
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	call	free
	jmp	.label_67
	nop	word ptr cs:[rax + rax]
.label_66:
	mov	rdi, r15
	mov	rsp, rsp
	call	__gmpz_clear
.label_67:
	mov	rdi, r12
	mov	rsp, rsp
	call	free
	lea	rdi, [rbp + 8]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp], 1
	lea	rsi, [rsi]
	jne	.label_60
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_64
	nop	word ptr cs:[rax + rax]
.label_60:
	call	__gmpz_clear
	lea	rsi, [rsi]
	jmp	.label_64
.label_54:
	mov	rax, r12
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_55:
	call	abort
.label_56:
	call	abort
.label_80:
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c80

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
	mov	rbx, rax
	jmp	.label_91
	nop	
.label_93:
	mov	rdi, r15
	lea	rsi, [rsi]
	call	free
	mov	edi, 0x18
	call	xmalloc
	nop	
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	nop	
	lea	rdi, [rbx + 8]
	nop	
	mov	rsi, rbp
	call	__gmpz_init_set_ui
.label_91:
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_90
	mov	esi, OFFSET FLAT:.str.41
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	sete	al
	nop	
	movzx	eax, al
	lea	rsi, [rsi]
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	mov	rbp, rbp
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_89
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp]
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	je	.label_90
	mov	esi, OFFSET FLAT:.str.42
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	mov	r13d, 1
	mov	rbp, rbp
	je	.label_89
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_90
	mov	esi, OFFSET FLAT:.str.43
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	sete	al
	nop	
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	lea	rdi, [rdi]
	mov	r13d, 2
	je	.label_89
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_90
	mov	esi, OFFSET FLAT:.str.44
	call	strcmp
	nop	
	test	eax, eax
	sete	al
	movzx	eax, al
	nop	
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	je	.label_89
	mov	rdi, qword ptr [rbp]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_90
	nop	
	mov	esi, OFFSET FLAT:.str.45
	call	strcmp
	test	eax, eax
	lea	rsi, [rsi]
	sete	al
	nop	
	movzx	eax, al
	mov	rsp, rsp
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	mov	rbp, rbp
	mov	r13d, 3
	mov	rbp, rbp
	je	.label_89
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_90
	nop	
	mov	esi, OFFSET FLAT:.str.46
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	nop	
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	lea	rsi, [rsi]
	mov	r13d, 4
	lea	rdi, [rdi]
	je	.label_89
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_90
	nop	
	mov	esi, OFFSET FLAT:.str.47
	lea	rdi, [rdi]
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	movzx	eax, al
	nop	
	lea	rax, [rbp + rax*8]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + args]],  rax
	mov	rsp, rsp
	mov	r13d, 5
	jne	.label_90
	nop	dword ptr [rax]
.label_89:
	mov	rsp, rsp
	mov	edi, r14d
	call	eval3
	mov	r15, rax
	test	r14b, r14b
	mov	rsp, rsp
	je	.label_100
	mov	eax, dword ptr [rbx]
	cmp	eax, 1
	lea	rsi, [rsi]
	je	.label_102
	test	eax, eax
	nop	
	jne	.label_97
	nop	
	lea	rbp, [rbx + 8]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbp
	mov	rsp, rsp
	call	__gmpz_get_str
	mov	rbp, rbp
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, rbp
	call	__gmpz_clear
	mov	qword ptr [rbx + 8], r12
	lea	rsi, [rsi]
	mov	dword ptr [rbx], 1
.label_102:
	mov	eax, dword ptr [r15]
	cmp	eax, 1
	je	.label_95
	mov	rsp, rsp
	test	eax, eax
	jne	.label_97
	lea	rbp, [r15 + 8]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 0xa
	mov	rdx, rbp
	nop	
	call	__gmpz_get_str
	lea	rsi, [rsi]
	mov	r12, rax
	mov	rdi, rbp
	call	__gmpz_clear
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 8], r12
	lea	rsi, [rsi]
	mov	dword ptr [r15], 1
.label_95:
	lea	rax, [rbx + 8]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	sete	al
	mov	rsp, rsp
	movzx	eax, al
	mov	cl, byte ptr [rbp + rax]
	lea	rsi, [rsi]
	lea	rax, [rbp + rax + 1]
	nop	
.label_98:
	movsx	ecx, cl
	add	ecx, -0x30
	lea	rdi, [rdi]
	cmp	ecx, 9
	ja	.label_94
	mov	rbp, rbp
	mov	cl, byte ptr [rax]
	inc	rax
	lea	rdi, [rdi]
	test	cl, cl
	jne	.label_98
	mov	rbp, rbp
	mov	r12d, r14d
	lea	r14, [r15 + 8]
	mov	rsi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rsi + rax]
	mov	rbp, rbp
	lea	rax, [rsi + rax + 1]
	nop	dword ptr [rax]
.label_106:
	lea	rsi, [rsi]
	movsx	ecx, cl
	mov	rbp, rbp
	add	ecx, -0x30
	cmp	ecx, 9
	lea	rsi, [rsi]
	ja	.label_99
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	inc	rax
	test	cl, cl
	nop	
	jne	.label_106
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strintcmp
	lea	rdi, [rdi]
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
.label_100:
	lea	rax, [rbx + 8]
	xor	ebp, ebp
	jmp	.label_96
	nop	dword ptr [rax + rax]
.label_94:
	mov	r12d, r14d
	lea	r14, [r15 + 8]
.label_99:
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsi, qword ptr [r14]
	mov	rsp, rsp
	mov	rdi, rbp
	call	strcoll
.label_92:
	mov	ebp, eax
	lea	rsi, [rsi]
	mov	r14d, r12d
	nop	
	mov	eax, r13d
	cmp	r13d, 5
	mov	rbp, rbp
	ja	.label_103
	jmp	qword ptr [word ptr [+ (rax * 8) + label_105]]
.label_2578:
	lea	rdi, [rdi]
	shr	ebp, 0x1f
	jmp	.label_88
.label_2579:
	mov	rbp, rbp
	test	ebp, ebp
	setle	al
	mov	rbp, rbp
	movzx	ebp, al
	nop	
	jmp	.label_88
.label_2580:
	test	ebp, ebp
	sete	al
	movzx	ebp, al
	jmp	.label_88
.label_2581:
	test	ebp, ebp
	mov	rbp, rbp
	setne	al
	nop	
	movzx	ebp, al
	jmp	.label_88
.label_2582:
	mov	rbp, rbp
	shr	ebp, 0x1f
	xor	rbp, 1
	nop	
	jmp	.label_88
.label_2583:
	lea	rdi, [rdi]
	test	ebp, ebp
	setg	al
	nop	
	movzx	ebp, al
	nop	dword ptr [rax]
.label_88:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
.label_96:
	cmp	dword ptr [rbx], 1
	jne	.label_101
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	call	free
	jmp	.label_104
	nop	dword ptr [rax]
.label_101:
	mov	rbp, rbp
	lea	rdi, [rbx + 8]
	call	__gmpz_clear
.label_104:
	mov	rdi, rbx
	call	free
	nop	
	mov	rdi, r15
	nop	
	add	rdi, 8
	cmp	dword ptr [r15], 1
	jne	.label_87
	mov	rdi, qword ptr [rdi]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	jmp	.label_93
	nop	word ptr cs:[rax + rax]
.label_87:
	call	__gmpz_clear
	lea	rdi, [rdi]
	jmp	.label_93
.label_90:
	lea	rsi, [rsi]
	mov	rax, rbx
	mov	rbp, rbp
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_97:
	call	abort
.label_103:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403170

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
	movzx	ebp, dil
	nop	
	mov	edi, ebp
	mov	rbp, rbp
	call	eval4
	mov	r14, rax
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + args]]
	nop	
	mov	rdi, qword ptr [rbx]
	test	bpl, bpl
	lea	rsi, [rsi]
	je	.label_108
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_110
	mov	r15, r14
	mov	rsp, rsp
	add	r15, 8
	nop	word ptr cs:[rax + rax]
.label_120:
	mov	esi, OFFSET FLAT:.str_1
	mov	rbp, rbp
	call	strcmp
	lea	rsi, [rsi]
	xor	ebp, ebp
	test	eax, eax
	nop	
	sete	al
	nop	
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	rbp, rbp
	je	.label_121
	nop	
	mov	rdi, qword ptr [rbx]
	nop	
	test	rdi, rdi
	je	.label_110
	mov	esi, OFFSET FLAT:.str.52
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	mov	rsp, rsp
	mov	ebp, 1
	jne	.label_110
.label_121:
	lea	rsi, [rsi]
	mov	edi, 1
	call	eval4
	mov	r13, rax
	mov	eax, dword ptr [r14]
	test	eax, eax
	je	.label_117
	nop	
	cmp	eax, 1
	jne	.label_119
	mov	rsp, rsp
	mov	rbx, qword ptr [r15]
	movzx	eax, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
	nop	dword ptr [rax]
.label_109:
	movsx	ecx, cl
	lea	rsi, [rsi]
	add	ecx, -0x30
	cmp	ecx, 9
	nop	
	ja	.label_107
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	inc	rax
	lea	rdi, [rdi]
	test	cl, cl
	jne	.label_109
	mov	edx, 0xa
	mov	rdi, r15
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	__gmpz_init_set_str
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	free
	mov	dword ptr [r14], 0
.label_117:
	mov	eax, dword ptr [r13]
	cmp	eax, 1
	je	.label_118
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_119
	lea	rdi, [rdi]
	lea	r12, [r13 + 8]
	jmp	.label_122
	nop	dword ptr [rax + rax]
.label_118:
	mov	rsp, rsp
	lea	r12, [r13 + 8]
	mov	rbx, qword ptr [r13 + 8]
	nop	
	movzx	eax, byte ptr [rbx]
	mov	rbp, rbp
	cmp	eax, 0x2d
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_114:
	lea	rdi, [rdi]
	movsx	ecx, cl
	add	ecx, -0x30
	nop	
	cmp	ecx, 9
	lea	rsi, [rsi]
	ja	.label_107
	mov	cl, byte ptr [rax]
	inc	rax
	mov	rsp, rsp
	test	cl, cl
	mov	rbp, rbp
	jne	.label_114
	nop	
	mov	edx, 0xa
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsi, rbx
	call	__gmpz_init_set_str
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	dword ptr [r13], 0
.label_122:
	lea	rsi, [rsi]
	test	ebp, ebp
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:__gmpz_sub
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__gmpz_add
	cmove	rax, rcx
	mov	rbx, r13
	nop	
	add	rbx, 8
	mov	rdi, r15
	mov	rsi, r15
	mov	rdx, rbx
	call	rax
	cmp	dword ptr [r13], 1
	mov	rsp, rsp
	jne	.label_111
	mov	rbp, rbp
	mov	rdi, qword ptr [r12]
	call	free
	jmp	.label_113
	nop	word ptr cs:[rax + rax]
.label_111:
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__gmpz_clear
.label_113:
	mov	rdi, r13
	call	free
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + args]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	nop	
	jne	.label_120
	jmp	.label_110
	nop	word ptr cs:[rax + rax]
.label_116:
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
.label_108:
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_110
	mov	esi, OFFSET FLAT:.str_1
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	lea	rsi, [rsi]
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	rsp, rsp
	je	.label_115
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_110
	mov	esi, OFFSET FLAT:.str.52
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	lea	rax, [rbx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + args]],  rax
	mov	rbp, rbp
	jne	.label_110
.label_115:
	mov	rbp, rbp
	xor	edi, edi
	call	eval4
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	cmp	dword ptr [rbx], 1
	mov	rbp, rbp
	lea	rdi, [rbx + 8]
	mov	rsp, rsp
	jne	.label_112
	mov	rdi, qword ptr [rdi]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	jmp	.label_116
	nop	dword ptr [rax]
.label_112:
	call	__gmpz_clear
	jmp	.label_116
.label_110:
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_107:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 2
	nop	
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
.label_119:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403540

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
	sub	rsp, 0x28
	nop	
	mov	r14d, edi
	mov	rbp, rbp
	movzx	edi, r14b
	mov	dword ptr [rsp + 0xc], edi
	nop	
	call	eval6
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	nop	
	je	.label_145
	mov	rbp, rbp
	test	r14b, r14b
	mov	rsp, rsp
	je	.label_144
	nop	
	mov	r15d, r14d
	nop	word ptr cs:[rax + rax]
.label_137:
	mov	esi, OFFSET FLAT:.str.58
	call	strcmp
	test	eax, eax
	sete	al
	nop	
	movzx	eax, al
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	jne	.label_148
	mov	edi, 1
	call	eval6
	lea	rsi, [rsi]
	mov	rbp, rax
	nop	
	mov	r14, rbp
	mov	rdi, rbx
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	docolon
	mov	rsp, rsp
	mov	r12, rax
	lea	rdi, [rbx + 8]
	lea	rsi, [rsi]
	cmp	dword ptr [rbx], 1
	lea	rsi, [rsi]
	jne	.label_159
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	call	free
	lea	rsi, [rsi]
	jmp	.label_126
	nop	dword ptr [rax]
.label_159:
	mov	rbp, rbp
	call	__gmpz_clear
.label_126:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	add	rbp, 8
	cmp	dword ptr [r14], 1
	mov	rbp, rbp
	jne	.label_131
	mov	rdi, qword ptr [rbp]
	call	free
	jmp	.label_134
	nop	dword ptr [rax + rax]
.label_131:
	mov	rdi, rbp
	mov	rsp, rsp
	call	__gmpz_clear
.label_134:
	mov	rbp, rbp
	mov	rdi, r14
	call	free
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	mov	rbx, r12
	lea	rdi, [rdi]
	jne	.label_137
	jmp	.label_124
	nop	word ptr cs:[rax + rax]
.label_144:
	mov	esi, OFFSET FLAT:.str.58
	call	strcmp
	test	eax, eax
	sete	al
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	lea	rbp, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbp
	mov	rbp, rbp
	jne	.label_145
	xor	edi, edi
	call	eval6
	nop	
	mov	rbp, rax
	cmp	dword ptr [rbp], 1
	lea	rdi, [rbp + 8]
	lea	rdi, [rdi]
	jne	.label_149
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rsp, rsp
	jmp	.label_155
	nop	
.label_149:
	call	__gmpz_clear
.label_155:
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	free
	mov	rbp,  qword ptr [word ptr [rip + args]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_144
.label_145:
	mov	rsp, rsp
	mov	r15d, r14d
	mov	r12, rbx
	jmp	.label_124
.label_148:
	mov	r12, rbx
.label_124:
	mov	qword ptr [rsp + 0x20], r12
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], r15d
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	mov	rsp, rsp
	mov	r14d, r15d
	je	.label_142
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr cs:[rax + rax]
.label_150:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.54
	lea	rdi, [rdi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rsi, [rsi]
	lea	rbx, [rbp + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	lea	rsi, [rsi]
	mov	r12d, 0
	je	.label_136
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_142
	mov	esi, OFFSET FLAT:.str.55
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	nop	
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	rsp, rsp
	mov	r12d, 1
	nop	
	je	.label_136
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_142
	mov	esi, OFFSET FLAT:.str.56
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	mov	r12d, 2
	lea	rsi, [rsi]
	jne	.label_142
.label_136:
	mov	edi, dword ptr [rsp + 0xc]
	nop	
	call	eval6
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	nop	
	test	rdi, rdi
	je	.label_127
	test	r14b, r14b
	mov	rsp, rsp
	je	.label_133
	nop	word ptr cs:[rax + rax]
.label_156:
	mov	esi, OFFSET FLAT:.str.58
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	sete	al
	nop	
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rax
	jne	.label_127
	lea	rdi, [rdi]
	mov	edi, 1
	call	eval6
	mov	r15, rax
	mov	r14, r15
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r15
	nop	
	call	docolon
	mov	r13, rax
	lea	rdi, [rbp + 8]
	cmp	dword ptr [rbp], 1
	lea	rsi, [rsi]
	jne	.label_146
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_147
	nop	dword ptr [rax]
.label_146:
	lea	rsi, [rsi]
	call	__gmpz_clear
.label_147:
	mov	rdi, rbp
	call	free
	mov	rsp, rsp
	add	r15, 8
	lea	rsi, [rsi]
	cmp	dword ptr [r14], 1
	jne	.label_152
	mov	rbp, rbp
	mov	rdi, qword ptr [r15]
	call	free
	mov	rbp, rbp
	jmp	.label_158
.label_152:
	mov	rdi, r15
	mov	rbp, rbp
	call	__gmpz_clear
.label_158:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	mov	rsp, rsp
	mov	rbp, r13
	jne	.label_156
	lea	rsi, [rsi]
	jmp	.label_129
	nop	dword ptr [rax]
.label_133:
	mov	esi, OFFSET FLAT:.str.58
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	nop	
	lea	rax, [rbx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + args]],  rax
	nop	
	jne	.label_127
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	call	eval6
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	cmp	dword ptr [rbx], 1
	lea	rsi, [rsi]
	lea	rdi, [rbx + 8]
	jne	.label_138
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_143
	nop	
.label_138:
	lea	rsi, [rsi]
	call	__gmpz_clear
.label_143:
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	mov	rbx,  qword ptr [word ptr [rip + args]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	test	rdi, rdi
	jne	.label_133
	nop	
.label_127:
	mov	r13, rbp
.label_129:
	mov	r14d, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_151
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_153
	cmp	eax, 1
	jne	.label_157
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rax]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	nop	
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_132:
	movsx	ecx, cl
	lea	rdi, [rdi]
	add	ecx, -0x30
	cmp	ecx, 9
	lea	rsi, [rsi]
	ja	.label_128
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	inc	rax
	test	cl, cl
	nop	
	jne	.label_132
	nop	
	mov	edx, 0xa
	nop	
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	__gmpz_init_set_str
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
.label_153:
	mov	rsp, rsp
	mov	eax, dword ptr [r13]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	je	.label_140
	cmp	eax, 1
	jne	.label_141
	mov	rbp, rbp
	lea	rdi, [r13 + 8]
	mov	rbp, qword ptr [r13 + 8]
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp + rax]
	lea	rax, [rbp + rax + 1]
	nop	word ptr [rax + rax]
.label_154:
	movsx	ecx, cl
	lea	rdi, [rdi]
	add	ecx, -0x30
	mov	rsp, rsp
	cmp	ecx, 9
	mov	rsp, rsp
	ja	.label_128
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	mov	rsp, rsp
	inc	rax
	test	cl, cl
	jne	.label_154
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	__gmpz_init_set_str
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	dword ptr [r13], 0
.label_140:
	test	r12d, r12d
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:__gmpz_mul
	lea	rdi, [rdi]
	je	.label_125
	cmp	dword ptr [r13 + 0xc], 0
	mov	rsp, rsp
	je	.label_130
	nop	
	cmp	r12d, 1
	mov	eax, OFFSET FLAT:__gmpz_tdiv_r
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__gmpz_tdiv_q
	cmove	rax, rcx
.label_125:
	lea	rdx, [r13 + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rsi, rdi
	nop	
	call	rax
.label_151:
	lea	rdi, [r13 + 8]
	cmp	dword ptr [r13], 1
	lea	rsi, [rsi]
	jne	.label_135
	mov	rdi, qword ptr [rdi]
	mov	rsp, rsp
	call	free
	jmp	.label_139
	nop	word ptr cs:[rax + rax]
.label_135:
	call	__gmpz_clear
.label_139:
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp]
	mov	rbp, rbp
	test	rdi, rdi
	jne	.label_150
.label_142:
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_128:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.53
.label_123:
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
.label_157:
	lea	rdi, [rdi]
	call	abort
.label_141:
	call	abort
.label_130:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.57
	lea	rsi, [rsi]
	jmp	.label_123
	.section	.text
	.align	16
	#Procedure 0x403c10

	.globl eval6
	.type eval6, @function
eval6:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0xa8
	nop	
	mov	r15d, edi
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + args]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp]
	mov	rbp, rbp
	test	rdi, rdi
	nop	
	je	.label_164
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_1
	call	strcmp
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	sete	al
	mov	rsp, rsp
	movzx	eax, al
	lea	rbx, [rbp + rax*8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + args]],  rbx
	nop	
	mov	rbp, qword ptr [rbp + rax*8]
	mov	rbp, rbp
	je	.label_178
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_164
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.59
	mov	rbp, rbp
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_193
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	je	.label_164
	mov	esi, OFFSET FLAT:.str.60
	mov	rbp, rbp
	call	strcmp
	nop	
	test	eax, eax
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	lea	rbx, [rbx + rax*8]
	nop	
	mov	qword ptr [word ptr [rip + args]],  rbx
	lea	rdi, [rdi]
	je	.label_203
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_164
	mov	esi, OFFSET FLAT:.str.61
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rdi, [rdi]
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_212
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_164
	mov	esi, OFFSET FLAT:.str.62
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_218
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_164
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.68
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	nop	
	sete	al
	movzx	eax, al
	lea	rsi, [rsi]
	lea	rbx, [rbx + rax*8]
	mov	qword ptr [word ptr [rip + args]],  rbx
	lea	rsi, [rsi]
	je	.label_222
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_229
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.70
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	lea	rbx, [rbx + rax*8]
	nop	
	mov	qword ptr [word ptr [rip + args]],  rbx
	je	.label_232
.label_229:
	nop	
	lea	rax, [rbx + 8]
	mov	qword ptr [word ptr [rip + args]],  rax
	mov	rsp, rsp
	mov	rbx, qword ptr [rbx]
	mov	rbp, rbp
	mov	edi, 0x18
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	dword ptr [r13], 1
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_166
.label_178:
	nop	
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_164
	add	rbx, 8
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + args]],  rbx
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	rsp, rsp
	mov	dword ptr [r13], 1
	mov	rbp, rbp
	mov	rdi, rbp
.label_166:
	call	xstrdup
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 8], rax
	mov	rsp, rsp
	jmp	.label_180
.label_193:
	movzx	edi, r15b
	call	eval6
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_209
	cmp	eax, 1
	nop	
	jne	.label_190
	lea	r14, [rbp + 8]
	mov	rbx, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	jmp	.label_191
.label_203:
	movzx	ebx, r15b
	mov	edi, ebx
	call	eval6
	mov	r13, rax
	lea	rsi, [rsi]
	mov	edi, ebx
	mov	rsp, rsp
	call	eval6
	mov	rbp, rbp
	mov	rbp, rax
	mov	r14, rbp
	lea	rsi, [rsi]
	test	r15b, r15b
	je	.label_196
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r14
	mov	rsp, rsp
	call	docolon
	nop	
	mov	r15, rax
	lea	rdi, [rdi]
	mov	rdi, r13
	add	rdi, 8
	nop	
	cmp	dword ptr [r13], 1
	jne	.label_207
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_211
.label_209:
	mov	rbp, rbp
	lea	r14, [rbp + 8]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 0xa
	mov	rdx, r14
	call	__gmpz_get_str
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsp, rsp
	call	__gmpz_clear
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 8], rbx
	mov	dword ptr [rbp], 1
.label_191:
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbslen
	mov	rbx, rax
	nop	
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 0
	lea	rdi, [r13 + 8]
	mov	rsi, rbx
	call	__gmpz_init_set_ui
	lea	rsi, [rsi]
	cmp	dword ptr [rbp], 1
	jne	.label_224
	mov	rdi, qword ptr [r14]
	call	free
	jmp	.label_225
.label_224:
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	add	rdi, 8
	mov	rsp, rsp
	jmp	.label_165
.label_212:
	mov	rsp, rsp
	movzx	ebx, r15b
	mov	edi, ebx
	lea	rsi, [rsi]
	call	eval6
	mov	r12, rax
	mov	rbp, rbp
	mov	r14, r12
	mov	qword ptr [rsp + 8], r14
	mov	edi, ebx
	call	eval6
	nop	
	mov	r15, rax
	mov	eax, dword ptr [r12]
	cmp	eax, 1
	je	.label_233
	mov	rsp, rsp
	test	eax, eax
	jne	.label_188
	lea	rbx, [r12 + 8]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 0xa
	mov	rdx, rbx
	call	__gmpz_get_str
	mov	rbp, rbp
	mov	rbp, rax
	mov	rdi, rbx
	call	__gmpz_clear
	mov	qword ptr [r14 + 8], rbp
	mov	dword ptr [r14], 1
.label_233:
	mov	eax, dword ptr [r15]
	mov	rbp, rbp
	test	eax, eax
	je	.label_167
	nop	
	cmp	eax, 1
	jne	.label_171
	lea	rbp, [r15 + 8]
	mov	rbp, rbp
	mov	r13, qword ptr [r15 + 8]
	mov	rsp, rsp
	jmp	.label_173
.label_218:
	mov	rbp, rbp
	movzx	ebx, r15b
	mov	rbp, rbp
	mov	edi, ebx
	lea	rdi, [rdi]
	call	eval6
	mov	rsp, rsp
	mov	r12, rax
	mov	edi, ebx
	mov	rsp, rsp
	call	eval6
	mov	r15, rax
	mov	edi, ebx
	mov	rbp, rbp
	call	eval6
	mov	rbp, rax
	nop	
	mov	eax, dword ptr [r12]
	cmp	eax, 1
	mov	rsp, rsp
	je	.label_185
	mov	r14, rbp
	test	eax, eax
	jne	.label_188
	nop	
	lea	rbx, [r12 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbx
	nop	
	call	__gmpz_get_str
	mov	rsp, rsp
	mov	rbp, rax
	mov	rdi, rbx
	nop	
	call	__gmpz_clear
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 8], rbp
	mov	rsp, rsp
	mov	dword ptr [r12], 1
	mov	rbp, r14
.label_185:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_201
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_188
	lea	rdi, [r15 + 8]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 8]
	movzx	eax, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	mov	cl, byte ptr [rbx + rax]
	lea	rax, [rbx + rax + 1]
	nop	dword ptr [rax]
.label_213:
	movsx	ecx, cl
	lea	rdi, [rdi]
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_210
	nop	
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	mov	rbp, rbp
	jne	.label_213
	mov	edx, 0xa
	mov	rsi, rbx
	call	__gmpz_init_set_str
	mov	rdi, rbx
	call	free
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0
.label_201:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_215
	lea	rsi, [rsi]
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_219
	mov	rsp, rsp
	lea	rdi, [rbp + 8]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp + 8]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	lea	rdi, [rdi]
	sete	al
	movzx	eax, al
	mov	cl, byte ptr [rbx + rax]
	mov	rsp, rsp
	lea	rax, [rbx + rax + 1]
	nop	word ptr cs:[rax + rax]
.label_230:
	movsx	ecx, cl
	lea	rsi, [rsi]
	add	ecx, -0x30
	lea	rsi, [rsi]
	cmp	ecx, 9
	mov	rsp, rsp
	ja	.label_210
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	inc	rax
	mov	rsp, rsp
	test	cl, cl
	mov	rsp, rsp
	jne	.label_230
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	__gmpz_init_set_str
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	lea	rsi, [rsi]
	mov	dword ptr [rbp], 0
.label_215:
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15 + 0xc]
	mov	qword ptr [rsp + 0xa0], r15
	lea	rdi, [rdi]
	mov	r14, -1
	test	eax, eax
	lea	rdi, [rdi]
	mov	r15, -1
	js	.label_170
	mov	rsp, rsp
	cmp	eax, 1
	mov	rsp, rsp
	ja	.label_168
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	xor	r15d, r15d
	test	eax, eax
	mov	rsp, rsp
	cmovne	r15, qword ptr [rcx]
	cmp	r15, -1
	jne	.label_170
.label_168:
	mov	r15, -2
.label_170:
	mov	eax, dword ptr [rbp + 0xc]
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_177
	lea	rsi, [rsi]
	cmp	eax, 1
	ja	.label_179
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp + 0x10]
	xor	r14d, r14d
	test	eax, eax
	cmovne	r14, qword ptr [rcx]
	cmp	r14, -1
	mov	rbp, rbp
	jne	.label_177
.label_179:
	mov	r14, -2
.label_177:
	mov	qword ptr [rsp + 8], rbp
	mov	r13, qword ptr [r12 + 8]
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	mov	rbx, rbp
	jb	.label_192
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	mbslen
	mov	rbx, rax
.label_192:
	lea	rax, [r15 - 1]
	cmp	rax, rbx
	lea	rdi, [rdi]
	jae	.label_198
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, 1
	ja	.label_200
.label_198:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	xstrdup
	mov	r14, rax
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0xa0]
	jmp	.label_205
.label_167:
	lea	rbp, [r15 + 8]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 0xa
	nop	
	mov	rdx, rbp
	call	__gmpz_get_str
	lea	rsi, [rsi]
	mov	r13, rax
	mov	rdi, rbp
	call	__gmpz_clear
	mov	qword ptr [r15 + 8], r13
	mov	dword ptr [r15], 1
.label_173:
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	byte ptr [r13], 0
	nop	
	je	.label_208
	mov	qword ptr [rsp + 0x18], rbp
	nop	
	mov	rbp, qword ptr [r14 + 8]
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 2
	mov	rbp, rbp
	jb	.label_217
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rbp
	mov	byte ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x24], 0
	mov	byte ptr [rsp + 0x2c], 0
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	mov	rsp, rsp
	call	mbuiter_multi_next
	nop	
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	mov	rcx, rax
	mov	rbp, rbp
	shr	rcx, 0x20
	lea	rdi, [rdi]
	jne	.label_226
	test	al, al
	lea	rsi, [rsi]
	jne	.label_227
.label_226:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	lea	rbx, [rsp + 0x60]
	xor	ecx, ecx
.label_197:
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rcx
	cmp	qword ptr [rsp + 0x38], 1
	jne	.label_231
	mov	rbp, qword ptr [rsp + 0x30]
	movsx	esi, byte ptr [rbp]
	mov	rdi, r13
	call	mbschr
	nop	
	test	rax, rax
	mov	rbp, rbp
	mov	eax, 1
	je	.label_234
	jmp	.label_160
.label_231:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], r13
	mov	byte ptr [rsp + 0x60], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x64], 0
	lea	rdi, [rdi]
	jmp	.label_163
	nop	dword ptr [rax]
.label_195:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0x70], r14
.label_163:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x6c], 0
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rax, rcx
	lea	rdi, [rdi]
	shr	rax, 0x20
	test	cl, cl
	mov	rbp, rbp
	setne	cl
	je	.label_176
	test	eax, eax
	je	.label_182
.label_176:
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	test	dl, dl
	nop	
	je	.label_183
	nop	
	xor	cl, 1
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_183
	lea	rsi, [rsi]
	shr	rdx, 0x20
	mov	rbp, rbp
	cmp	eax, edx
	nop	
	je	.label_189
	mov	r14, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	add	qword ptr [rsp + 0x70], r14
	jmp	.label_163
	nop	dword ptr [rax]
.label_183:
	mov	r14, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	cmp	r14, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	jne	.label_195
	nop	
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	jne	.label_195
	jmp	.label_189
.label_182:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 8]
.label_234:
	mov	rbp, rbp
	add	rbp, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbp
	mov	byte ptr [rsp + 0x2c], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x20]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	nop	
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	shr	rcx, 0x20
	mov	rcx, qword ptr [rsp + 0xa0]
	nop	
	jne	.label_197
	lea	rdi, [rdi]
	test	al, al
	je	.label_197
	jmp	.label_227
.label_207:
	mov	rbp, rbp
	call	__gmpz_clear
.label_211:
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	mov	r13, r15
.label_196:
	lea	rdi, [rdi]
	add	rbp, 8
	cmp	dword ptr [r14], 1
	jne	.label_220
	nop	
	mov	rdi, qword ptr [rbp]
	mov	rsp, rsp
	call	free
	jmp	.label_223
.label_220:
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	__gmpz_clear
.label_223:
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	jmp	.label_180
.label_222:
	lea	rdi, [rdi]
	movzx	edi, r15b
	nop	
	call	eval
	mov	r13, rax
	mov	rbx,  qword ptr [word ptr [rip + args]]
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_228
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.70
	mov	rbp, rbp
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	rax, [rbx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + args]],  rax
	lea	rsi, [rsi]
	je	.label_180
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.71
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rdx, qword ptr [rax]
	mov	rsp, rsp
	jmp	.label_162
.label_217:
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, r13
	call	strcspn
	cmp	byte ptr [rbp + rax], 0
	je	.label_172
	inc	rax
	nop	
	mov	rbx, rax
	jmp	.label_174
.label_210:
	lea	rdi, [rdi]
	mov	edi, 0x18
	mov	rbp, rbp
	call	xmalloc
	mov	r13, rax
	lea	rdi, [rdi]
	mov	dword ptr [r13], 1
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_0
	nop	
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	lea	rbx, [r12 + 8]
	mov	rbp, rbp
	jmp	.label_181
.label_172:
	mov	rbp, rbp
	xor	ebx, ebx
.label_174:
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_208
.label_189:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 8]
.label_227:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x10]
.label_208:
	add	r12, 8
	mov	edi, 0x18
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 0
	nop	
	lea	rdi, [r13 + 8]
	mov	rsi, rbx
	call	__gmpz_init_set_ui
	lea	rdi, [rdi]
	cmp	dword ptr [r14], 1
	jne	.label_202
	mov	rdi, qword ptr [r12]
	nop	
	call	free
	jmp	.label_204
.label_202:
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	__gmpz_clear
.label_204:
	mov	rbp, rbp
	mov	rdi, r14
	call	free
	cmp	dword ptr [r15], 1
	mov	rsp, rsp
	jne	.label_161
	mov	rdi, qword ptr [rbp]
	call	free
	nop	
	jmp	.label_184
.label_161:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rdi, [rdi]
	add	rdi, 8
	lea	rdi, [rdi]
	call	__gmpz_clear
.label_184:
	nop	
	mov	rdi, r15
	call	free
	jmp	.label_180
.label_200:
	lea	rdi, [rdi]
	sub	rbx, r15
	inc	rbx
	cmp	rbx, r14
	mov	rsp, rsp
	cmova	rbx, r14
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	cmp	rax, 1
	jne	.label_216
	lea	rsi, [rsi]
	lea	rdi, [rbx + 1]
	mov	rsp, rsp
	call	xmalloc
	mov	rbp, rbp
	mov	r14, rax
	lea	rsi, [r13 + r15 - 1]
	lea	rsi, [rsi]
	mov	rcx, -1
	mov	rdi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	__mempcpy_chk
	lea	rsi, [rsi]
	mov	r13, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0xa0]
	mov	rbp, rbp
	jmp	.label_194
.label_216:
	mov	rsp, rsp
	mov	r14, r15
	inc	rbp
	mov	rsp, rsp
	mov	rdi, rbp
	nop	
	call	xmalloc
	mov	rbp, rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r13
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x24], 0
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x2c], 0
	lea	rdi, [rsp + 0x20]
	nop	
	call	mbuiter_multi_next
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	test	cl, cl
	sete	al
	lea	rdi, [rdi]
	shr	rcx, 0x20
	setne	cl
	test	rbx, rbx
	mov	rsp, rsp
	mov	r13, rbp
	lea	rdi, [rdi]
	je	.label_169
	or	cl, al
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	je	.label_169
	nop	
	mov	ebp, 1
	lea	r15, [rsp + 0x20]
	nop	
	mov	r13, qword ptr [rsp + 0x18]
.label_206:
	mov	rsp, rsp
	cmp	rbp, r14
	jb	.label_175
	dec	rbx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, -1
	mov	rdi, r13
	mov	rsp, rsp
	call	__mempcpy_chk
	mov	rsp, rsp
	mov	r13, rax
.label_175:
	mov	rax, qword ptr [rsp + 0x38]
	add	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x2c], 0
	lea	rsi, [rsi]
	mov	rdi, r15
	call	mbuiter_multi_next
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	test	cl, cl
	sete	al
	lea	rdi, [rdi]
	shr	rcx, 0x20
	nop	
	setne	cl
	test	rbx, rbx
	je	.label_169
	inc	rbp
	nop	
	or	cl, al
	mov	rbp, rbp
	jne	.label_206
.label_169:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0xa0]
	nop	
	mov	r14, qword ptr [rsp + 0x18]
.label_194:
	mov	byte ptr [r13], 0
.label_205:
	lea	rbx, [r12 + 8]
	lea	rdi, [rdi]
	mov	edi, 0x18
	lea	rdi, [rdi]
	call	xmalloc
	mov	r13, rax
	mov	dword ptr [r13], 1
	mov	rsp, rsp
	mov	rdi, r14
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	call	free
.label_181:
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 1
	jne	.label_186
	mov	rdi, qword ptr [rbx]
	call	free
	lea	rsi, [rsi]
	jmp	.label_199
.label_186:
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	add	rdi, 8
	call	__gmpz_clear
.label_199:
	nop	
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r15
	add	rdi, 8
	mov	rbp, rbp
	cmp	dword ptr [r15], 1
	mov	rsp, rsp
	jne	.label_214
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_221
.label_214:
	mov	rbp, rbp
	call	__gmpz_clear
.label_221:
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	mov	rdi, rbp
	lea	rdi, [rdi]
	add	rdi, 8
	cmp	dword ptr [rbp], 1
	jne	.label_165
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	call	free
	jmp	.label_225
.label_165:
	call	__gmpz_clear
.label_225:
	mov	rdi, rbp
	mov	rsp, rsp
	call	free
.label_180:
	mov	rbp, rbp
	mov	rax, r13
	add	rsp, 0xa8
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_160:
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_227
.label_164:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.63
.label_187:
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + args]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax - 8]
.label_162:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 8
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
	nop	
	call	error
.label_190:
	call	abort
.label_188:
	call	abort
.label_171:
	mov	rbp, rbp
	call	abort
.label_219:
	call	abort
.label_232:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.72
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
.label_228:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.69
	mov	rsp, rsp
	jmp	.label_187
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404aa0

	.globl docolon
	.type docolon, @function
docolon:
	push	r15
	nop	
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x198
	mov	r15, rsi
	mov	r14, rdi
	mov	rsp, rsp
	mov	eax, dword ptr [r14]
	lea	rdi, [rdi]
	cmp	eax, 1
	je	.label_242
	test	eax, eax
	jne	.label_246
	lea	rbx, [r14 + 8]
	xor	edi, edi
	mov	esi, 0xa
	mov	rdx, rbx
	call	__gmpz_get_str
	mov	r12, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__gmpz_clear
	mov	qword ptr [r14 + 8], r12
	mov	dword ptr [r14], 1
.label_242:
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_250
	cmp	eax, 1
	jne	.label_235
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_237
.label_250:
	lea	rsi, [rsi]
	lea	r12, [r15 + 8]
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 0xa
	mov	rbp, rbp
	mov	rdx, r12
	call	__gmpz_get_str
	mov	rsp, rsp
	mov	rbx, rax
	mov	rdi, r12
	mov	rbp, rbp
	call	__gmpz_clear
	nop	
	mov	qword ptr [r15 + 8], rbx
	lea	rdi, [rdi]
	mov	dword ptr [r15], 1
.label_237:
	mov	rsp, rsp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x180], xmm0
	mov	qword ptr [rsp + 0x190], 0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	lea	rax, [rsp + 0x40]
	mov	qword ptr [rsp + 0x160], rax
	mov	qword ptr [rsp + 0x168], 0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	mov	rbp, rbp
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rsp + 0x140]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rcx, rax
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_249
	mov	rsp, rsp
	and	byte ptr [rsp + 0x178], 0x7f
	mov	rbx, qword ptr [r14 + 8]
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	call	strlen
	lea	rdi, [rsp + 0x140]
	mov	rbp, rbp
	lea	r8, [rsp + 0x180]
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, rax
	nop	
	call	rpl_re_match
	mov	r15, rax
	test	r15, r15
	mov	rsp, rsp
	js	.label_238
	cmp	qword ptr [rsp + 0x170], 0
	je	.label_241
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x190]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	mov	rbx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x188]
	add	rbx, qword ptr [rax + 8]
	mov	edi, 0x18
	call	xmalloc
	mov	rbp, rbp
	mov	r14, rax
	mov	dword ptr [r14], 1
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_247
.label_238:
	cmp	r15, -1
	lea	rsi, [rsi]
	jne	.label_252
	mov	rbx, qword ptr [rsp + 0x170]
	mov	edi, 0x18
	nop	
	call	xmalloc
	mov	rsp, rsp
	mov	r14, rax
	lea	rdi, [rdi]
	cmp	rbx, 0
	lea	rdi, [rdi]
	je	.label_240
	mov	dword ptr [r14], 1
	mov	edi, OFFSET FLAT:.str_0
.label_247:
	nop	
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 8], rax
	jmp	.label_245
.label_241:
	nop	
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	cmp	rax, 1
	mov	rbx, r15
	je	.label_244
	lea	rsi, [rsi]
	mov	r12, qword ptr [r14 + 8]
	nop	
	mov	qword ptr [rsp + 0x10], r12
	lea	rdi, [rdi]
	mov	byte ptr [rsp], 0
	mov	qword ptr [rsp + 4], 0
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xc], 0
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	xor	ebx, ebx
	mov	rcx, rax
	shr	rcx, 0x20
	mov	rsp, rsp
	jne	.label_239
	test	al, al
	jne	.label_244
.label_239:
	xor	ebx, ebx
	lea	rdi, [rdi]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_236:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, rax
	lea	rdi, [rdi]
	sub	rcx, r12
	cmp	rcx, r15
	adc	rbx, 0
	nop	
	cmp	rcx, r15
	lea	rdi, [rdi]
	jae	.label_244
	add	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	byte ptr [rsp + 0xc], 0
	mov	rdi, r14
	mov	rsp, rsp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, rax
	shr	rcx, 0x20
	mov	rsp, rsp
	jne	.label_236
	test	al, al
	mov	rbp, rbp
	je	.label_236
.label_244:
	lea	rdi, [rdi]
	mov	edi, 0x18
	lea	rdi, [rdi]
	call	xmalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	dword ptr [r14], 0
	lea	rdi, [rdi]
	lea	rdi, [r14 + 8]
	mov	rsi, rbx
	jmp	.label_243
.label_240:
	mov	rsp, rsp
	mov	dword ptr [r14], 0
	mov	rdi, r14
	nop	
	add	rdi, 8
	xor	esi, esi
.label_243:
	call	__gmpz_init_set_ui
.label_245:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x180], 0
	lea	rdi, [rdi]
	je	.label_251
	mov	rdi, qword ptr [rsp + 0x188]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [rsp + 0x190]
	lea	rdi, [rdi]
	call	free
.label_251:
	mov	qword ptr [rsp + 0x160], 0
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x140]
	lea	rsi, [rsi]
	call	rpl_regfree
	mov	rax, r14
	add	rsp, 0x198
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	ret	
.label_246:
	lea	rsi, [rsi]
	call	abort
.label_235:
	call	abort
.label_249:
	mov	edi, 2
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	xor	eax, eax
	call	error
.label_252:
	mov	ebx, 0x4b
	lea	rdi, [rdi]
	cmp	r15, -2
	nop	
	jne	.label_248
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_248:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.74
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 3
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	.section	.text
	.align	16
	#Procedure 0x404eb0
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
	#Procedure 0x404ec0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ed0

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
	je	.label_254
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_253
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_253
.label_254:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_256
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_253:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_255
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
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
.label_256:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_255:
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
	#Procedure 0x404fd0

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
	je	.label_257
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
.label_257:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_259
	mov	edi, 2
	mov	edx, OFFSET FLAT:.str_1
	nop	
	mov	ecx, OFFSET FLAT:long_options
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rbp, rbp
	call	getopt_long
	mov	rsp, rsp
	cmp	eax, 0x68
	je	.label_258
	mov	rbp, rbp
	cmp	eax, 0x76
	mov	rbp, rbp
	jne	.label_259
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
.label_258:
	xor	edi, edi
	call	rbx
.label_259:
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
	#Procedure 0x405110
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
	je	.label_261
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
.label_261:
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
	je	.label_264
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	cmp	eax, 0x68
	je	.label_260
	mov	rsp, rsp
	cmp	eax, 0x76
	nop	
	je	.label_262
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rdi, [rdi]
	jmp	.label_263
.label_260:
	lea	rdi, [rdi]
	xor	edi, edi
.label_263:
	call	rcx
.label_264:
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
.label_262:
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
	#Procedure 0x405260

	.globl mbschr
	.type mbschr, @function
mbschr:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	ebp, esi
	mov	rbx, rdi
	lea	rdi, [rdi]
	call	__ctype_get_mb_cur_max
	mov	ecx, ebp
	mov	rbp, rbp
	and	ecx, 0xf0
	cmp	ecx, 0x30
	lea	rsi, [rsi]
	jb	.label_269
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_269
	nop	
	mov	qword ptr [rsp + 0x10], rbx
	nop	
	mov	byte ptr [rsp], 0
	nop	
	mov	qword ptr [rsp + 4], 0
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xc], 0
	mov	rsp, rsp
	lea	rdi, [rsp]
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	xor	r14d, r14d
	nop	
	test	al, al
	je	.label_265
	shr	rax, 0x20
	lea	rsi, [rsi]
	je	.label_266
.label_265:
	movzx	ebx, bpl
	lea	rbp, [rsp]
	lea	rdi, [rdi]
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_268:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	cmp	rcx, 1
	jne	.label_270
	movzx	edx, byte ptr [rax]
	cmp	edx, ebx
	lea	rdi, [rdi]
	je	.label_267
.label_270:
	add	rax, rcx
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc], 0
	mov	rdi, rbp
	call	mbuiter_multi_next
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	nop	
	je	.label_268
	shr	rax, 0x20
	mov	rsp, rsp
	jne	.label_268
	lea	rsi, [rsi]
	jmp	.label_266
.label_269:
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	esi, ebp
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	jmp	strchr
.label_267:
	mov	r14, rax
.label_266:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405380

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
	jb	.label_274
	mov	qword ptr [rsp + 0x18], rbx
	mov	byte ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp + 0xc], 0
	mov	byte ptr [rsp + 0x14], 0
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	mbuiter_multi_next
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	xor	ebx, ebx
	test	al, al
	lea	rsi, [rsi]
	je	.label_272
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	rbp, rbp
	je	.label_273
.label_272:
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	lea	r14, [rsp + 8]
	nop	dword ptr [rax]
.label_271:
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
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	test	al, al
	je	.label_271
	nop	
	shr	rax, 0x20
	jne	.label_271
.label_273:
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	ret	
.label_274:
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
	#Procedure 0x405450

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
	jne	.label_282
	cmp	byte ptr [rbx], 0
	mov	r15, qword ptr [rbx + 0x10]
	je	.label_283
	lea	r14, [rbx + 4]
	jmp	.label_284
.label_283:
	movzx	eax, byte ptr [r15]
	mov	rbp, rbp
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	mov	rbp, rbp
	bt	ecx, eax
	jae	.label_285
	mov	qword ptr [rbx + 0x18], 1
	movsx	eax, byte ptr [r15]
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x24], eax
	mov	byte ptr [rbx + 0x20], 1
	jmp	.label_280
.label_285:
	lea	rsi, [rsi]
	lea	r14, [rbx + 4]
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_275
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 1
.label_284:
	lea	r12, [rbx + 0x24]
	nop	
	call	__ctype_get_mb_cur_max
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rax
	call	strnlen1
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, rax
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x18], rax
	nop	
	cmp	rax, -2
	je	.label_276
	test	rax, rax
	je	.label_277
	nop	
	cmp	rax, -1
	nop	
	jne	.label_281
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_280
.label_276:
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	call	strlen
	mov	qword ptr [rbx + 0x18], rax
	mov	byte ptr [rbx + 0x20], 0
	jmp	.label_280
.label_277:
	mov	qword ptr [rbx + 0x18], 1
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_278
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	lea	rsi, [rsi]
	jne	.label_279
.label_281:
	mov	byte ptr [rbx + 0x20], 1
	mov	rdi, r14
	nop	
	call	mbsinit
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	je	.label_280
	mov	rsp, rsp
	mov	byte ptr [rbx], 0
.label_280:
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0xc], 1
.label_282:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_278:
	mov	edi, OFFSET FLAT:.str.2_0
	nop	
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 0xb2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	nop	
	call	__assert_fail
.label_279:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.3_0
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 0xb3
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_275:
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, OFFSET FLAT:.str.1_1
	lea	rdi, [rdi]
	mov	edx, 0x96
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	lea	rdi, [rdi]
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x4055f0
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	add	qword ptr [rdi + 0x10], rsi
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405600
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14, rdi
	mov	al, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	mov	byte ptr [r14], al
	je	.label_286
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 4]
	nop	
	mov	qword ptr [r14 + 4], rax
	jmp	.label_289
.label_286:
	mov	rbp, rbp
	mov	qword ptr [r14 + 4], 0
.label_289:
	mov	al, byte ptr [rbx + 0xc]
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0xc], al
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rax, [rbx + 0x28]
	mov	rsp, rsp
	cmp	rsi, rax
	jne	.label_287
	lea	rdi, [rdi]
	lea	r15, [r14 + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rsi, r15
.label_287:
	mov	qword ptr [r14 + 0x10], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x18], rax
	mov	rax, qword ptr [rbx + 0x20]
	test	al, al
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0x20], al
	mov	rbp, rbp
	je	.label_288
	lea	rdi, [rdi]
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x24], eax
.label_288:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056b0

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
	je	.label_290
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
	jl	.label_292
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_292
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
	jne	.label_291
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_291:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_292:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_290:
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
	#Procedure 0x4057a0
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
	#Procedure 0x4057f0
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
	#Procedure 0x405810
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
	#Procedure 0x405830
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
	#Procedure 0x4058a0
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
	#Procedure 0x4058c0
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
	je	.label_293
	test	rdx, rdx
	nop	
	je	.label_293
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_293:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405900
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
	#Procedure 0x4059b0

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
.label_319:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_342
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_420]]
.label_2686:
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
.label_2687:
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
	jne	.label_375
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_375
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_394:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_388
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_388:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_394
.label_375:
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
	jmp	.label_335
.label_2679:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_335
.label_2682:
	lea	rsi, [rsi]
	mov	al, 1
.label_2680:
	lea	rsi, [rsi]
	mov	dl, 1
.label_2683:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_297
	mov	rbp, rbp
	mov	cl, al
.label_297:
	mov	al, cl
.label_2681:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_306
	test	rbp, rbp
	je	.label_313
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_314
.label_306:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_314
.label_2684:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_324
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_328
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_334
.label_2685:
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
	jmp	.label_335
.label_313:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_314:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_335
.label_324:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_334
.label_328:
	nop	
	mov	r14d, 1
.label_334:
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
.label_335:
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
	jmp	.label_376
	nop	dword ptr [rax]
.label_372:
	mov	rsp, rsp
	inc	r15
.label_376:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_416
	cmp	r15, r10
	jne	.label_418
	jmp	.label_410
	nop	dword ptr [rax]
.label_416:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_294
.label_418:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_302
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_307
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_307
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
.label_307:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_338
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_341
	nop	dword ptr [rax]
.label_302:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_341
	nop	word ptr cs:[rax + rax]
.label_338:
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
	jne	.label_374
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
	je	.label_341
	jmp	.label_298
.label_374:
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
.label_341:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_400
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_402]]
.label_2701:
	test	r15, r15
	jne	.label_310
	jmp	.label_409
.label_2705:
	xor	eax, eax
	cmp	r10, -1
	je	.label_411
	test	r15, r15
	jne	.label_412
	nop	
	cmp	r10, 1
	je	.label_409
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_296
.label_2694:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_303
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_298
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_309
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_309
	cmp	r14, rbp
	jae	.label_312
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_312:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_399
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_399:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_327
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_327:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_309:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_336
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_336:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_346
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_308
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_339
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_361
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_361:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_367
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_367:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_296
.label_2695:
	mov	bl, 0x62
	nop	
	jmp	.label_377
.label_2696:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_371
.label_2697:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_377
.label_2698:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_377
.label_2699:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_371
.label_2702:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_387
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_392
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
	jae	.label_395
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_395:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_355
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_355:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_415
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_415:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_387:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_296
.label_2703:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_305
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_310
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_310
	nop	
	jmp	.label_318
.label_2704:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_321
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_326
	jmp	.label_329
.label_400:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_331
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
	jmp	.label_350
.label_411:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_357
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_357
.label_409:
	mov	dl, 1
.label_2700:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_364
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_296
.label_303:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_372
	jmp	.label_310
.label_321:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_371
.label_326:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_356
.label_371:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_383
.label_377:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_296
	jmp	.label_386
.label_331:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_390
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_390:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_359
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_369:
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
	je	.label_385
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_300
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_366
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_317
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_343:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_333
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_323
.label_333:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_343
.label_317:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_349
	mov	rbp, rbp
	xor	r13d, r13d
.label_349:
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
	je	.label_369
	jmp	.label_301
	nop	
.label_359:
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
	je	.label_381
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_300
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_385
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_417
	xor	r13d, r13d
.label_417:
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
	je	.label_359
	lea	rsi, [rsi]
	jmp	.label_301
.label_357:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_296
.label_305:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_310
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_310
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_310
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_295
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_304
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_380
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_397
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_397:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_325
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_325:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_378
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_378:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_422
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_422:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_296
.label_310:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_296:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_401
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_360
	nop	
	jmp	.label_363
	nop	dword ptr [rax + rax]
.label_401:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_363
.label_360:
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
	jne	.label_368
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_358
	nop	word ptr cs:[rax + rax]
.label_363:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_358:
	mov	bl, r12b
	je	.label_356
	jmp	.label_386
.label_368:
	mov	bl, r12b
.label_386:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_298
	cmp	r9d, 2
	jne	.label_337
	mov	al, dil
	and	al, 1
	jne	.label_337
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_351
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_351:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_398
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_398:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_403
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_403:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_337:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_408
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_408:
	mov	rbp, rbp
	inc	r14
	jmp	.label_413
.label_412:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_296
.label_346:
	xor	r13d, r13d
	jmp	.label_296
.label_308:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_296
.label_339:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_296
.label_300:
	xor	r13d, r13d
.label_381:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_301
.label_385:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_315
	lea	rax, [r11 + r15]
.label_332:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_322
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_332
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_301
.label_315:
	xor	r13d, r13d
	jmp	.label_301
.label_322:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_301
.label_366:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_301:
	mov	rbp, rbp
	mov	rbx, r10
.label_350:
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
	ja	.label_365
	test	cl, cl
	je	.label_365
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_296
.label_365:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_370
	nop	dword ptr [rax]
.label_362:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_370:
	mov	rsp, rsp
	test	cl, cl
	je	.label_379
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_382
	cmp	r14, rbp
	jae	.label_384
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_384:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_382:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_391
	nop	dword ptr [rax + rax]
.label_379:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_396
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_389
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_389
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_405
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_405:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_347
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_347:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_404
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_404:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_389:
	cmp	r14, rbp
	jae	.label_419
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_419:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_340
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_340:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_393
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_393:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_391:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_356
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_345
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_345
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_414
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_414:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_421
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_421:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_345:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_362
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_362
	nop	word ptr cs:[rax + rax]
.label_356:
	test	dil, 1
	je	.label_373
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_373
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_354
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_354:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_299
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_299:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_373:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_413:
	cmp	r14, rbp
	jae	.label_320
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_320:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_372
.label_295:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_296
.label_304:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_296
	nop	word ptr [rax + rax]
.label_410:
	nop	
	mov	rcx, r15
.label_294:
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
	je	.label_407
	mov	rsp, rsp
	or	al, dl
	je	.label_353
.label_407:
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
	je	.label_316
	mov	rsp, rsp
	or	al, dl
	jne	.label_316
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_311
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_316
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
	je	.label_319
.label_316:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_330
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_330
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_330
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_352:
	cmp	r14, rbp
	jae	.label_348
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_348:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_352
.label_330:
	cmp	r14, rbp
	jae	.label_344
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_344
.label_364:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_298
.label_323:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_298
.label_396:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_298
.label_353:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_298
.label_383:
	nop	
	mov	r9d, 2
.label_298:
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
.label_406:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_344:
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
.label_311:
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
	jmp	.label_406
.label_392:
	mov	r9d, 2
	jmp	.label_298
.label_329:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_298
.label_318:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_298
.label_380:
	mov	r9d, 5
	nop	
	jmp	.label_298
.label_342:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e50
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
	#Procedure 0x406f90
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
	je	.label_423
	mov	qword ptr [rax], rbx
.label_423:
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
	#Procedure 0x4070e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_424
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_428:
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
	jl	.label_428
.label_424:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_427
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_425]], OFFSET FLAT:slot0
.label_427:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_426
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_426:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4071b0

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
	js	.label_435
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_431
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_433
.label_431:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_429
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
	jne	.label_434
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_434:
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
.label_433:
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
	ja	.label_432
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
	je	.label_430
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_430:
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
.label_432:
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
.label_435:
	lea	rdi, [rdi]
	call	abort
.label_429:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x407420
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407430
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
	#Procedure 0x407460
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
	#Procedure 0x407490

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
	je	.label_436
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
.label_436:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407520
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
	je	.label_437
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
.label_437:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075c0
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
	je	.label_438
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
.label_438:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407650
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
	je	.label_439
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
.label_439:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4076c0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_440]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
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
	#Procedure 0x407760
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_440]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
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
	#Procedure 0x407800

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_440]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
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
	#Procedure 0x407870
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_440]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
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
	#Procedure 0x4078e0
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
	je	.label_443
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
.label_443:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4079c0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_440]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_444
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_444
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
.label_444:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407a50
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_440]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_445
	test	rdx, rdx
	je	.label_445
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
.label_445:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ae0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_440]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_446
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_446
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
.label_446:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b80
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_440]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_441]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_442]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_447
	test	rsi, rsi
	je	.label_447
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
.label_447:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c20
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c30
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
	#Procedure 0x407c50
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
	#Procedure 0x407c70
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
	#Procedure 0x407ca0

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
	jne	.label_449
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_451
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_450
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_450
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_450
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_450
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_450
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_450
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_449
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_449
.label_451:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_450
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_450
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_450
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_450
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_450
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_450
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_448
.label_450:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_449:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_448:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_449
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_449
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407e10

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
	#Procedure 0x407e60

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rdi]
	mov	dl, byte ptr [rsi]
	cmp	ecx, 0x2d
	nop	
	jne	.label_466
	nop	word ptr cs:[rax + rax]
.label_453:
	nop	
	movzx	ecx, byte ptr [rdi + 1]
	mov	rbp, rbp
	inc	rdi
	cmp	ecx, 0x30
	je	.label_453
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_475
	nop	
.label_459:
	movzx	eax, byte ptr [rsi + 1]
	lea	rsi, [rsi]
	inc	rsi
	cmp	eax, 0x30
	lea	rdi, [rdi]
	je	.label_459
	nop	
	lea	edx, [rcx - 0x30]
	lea	rsi, [rsi]
	cmp	edx, 9
	ja	.label_465
	movzx	r8d, cl
	movzx	edx, al
	mov	rbp, rbp
	cmp	edx, r8d
	lea	rsi, [rsi]
	jne	.label_456
	nop	dword ptr [rax + rax]
.label_483:
	mov	r9b, byte ptr [rdi + 1]
	inc	rdi
	mov	rbp, rbp
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	mov	rsp, rsp
	movzx	ecx, r9b
	cmp	eax, ecx
	jne	.label_455
	lea	edx, [rcx - 0x30]
	mov	rbp, rbp
	cmp	edx, 0xa
	jb	.label_483
	jmp	.label_455
.label_466:
	movzx	r8d, dl
	cmp	r8d, 0x2d
	lea	rsi, [rsi]
	jne	.label_477
	nop	
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_467:
	movzx	edx, byte ptr [rsi]
	mov	rsp, rsp
	inc	rsi
	cmp	edx, 0x30
	mov	rsp, rsp
	je	.label_467
	add	edx, -0x30
	nop	
	mov	eax, 1
	cmp	edx, 0xa
	lea	rdi, [rdi]
	jb	.label_457
	movzx	eax, cl
	nop	
	cmp	eax, 0x30
	mov	rsp, rsp
	jne	.label_473
	nop	
	inc	rdi
	nop	word ptr cs:[rax + rax]
.label_480:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	ecx, 0x30
	nop	
	je	.label_480
.label_473:
	movzx	eax, cl
	add	eax, -0x30
	cmp	eax, 0xa
	nop	
	sbb	eax, eax
	and	eax, 1
	ret	
.label_475:
	nop	
	add	ecx, -0x30
	mov	rbp, rbp
	mov	eax, 0xffffffff
	nop	
	cmp	ecx, 0xa
	mov	rsp, rsp
	jb	.label_457
	cmp	r8d, 0x30
	jne	.label_461
	lea	rsi, [rsi]
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_468:
	movzx	edx, byte ptr [rsi]
	lea	rdi, [rdi]
	inc	rsi
	lea	rdi, [rdi]
	cmp	edx, 0x30
	mov	rbp, rbp
	je	.label_468
.label_461:
	mov	rsp, rsp
	movzx	eax, dl
	lea	rdi, [rdi]
	add	eax, -0x30
	mov	rsp, rsp
	cmp	eax, 0xa
	sbb	eax, eax
	lea	rsi, [rsi]
	ret	
.label_477:
	movzx	eax, cl
	mov	rbp, rbp
	cmp	eax, 0x30
	mov	rbp, rbp
	jne	.label_479
	nop	word ptr [rax + rax]
.label_452:
	movzx	ecx, byte ptr [rdi + 1]
	mov	rsp, rsp
	inc	rdi
	cmp	ecx, 0x30
	nop	
	je	.label_452
.label_479:
	cmp	r8d, 0x30
	jne	.label_458
	nop	word ptr cs:[rax + rax]
.label_469:
	mov	rsp, rsp
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	cmp	edx, 0x30
	je	.label_469
.label_458:
	lea	rsi, [rsi]
	movzx	r8d, cl
	lea	eax, [r8 - 0x30]
	lea	rsi, [rsi]
	cmp	eax, 9
	ja	.label_463
	lea	rsi, [rsi]
	movzx	r9d, dl
	movzx	eax, cl
	cmp	eax, r9d
	jne	.label_463
	nop	word ptr cs:[rax + rax]
.label_482:
	mov	cl, byte ptr [rdi + 1]
	inc	rdi
	movzx	edx, byte ptr [rsi + 1]
	mov	rsp, rsp
	inc	rsi
	movzx	r8d, cl
	cmp	r8d, edx
	mov	rbp, rbp
	jne	.label_463
	lea	eax, [r8 - 0x30]
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jb	.label_482
.label_463:
	nop	
	movzx	eax, dl
	lea	rsi, [rsi]
	movzx	edx, cl
	lea	rsi, [rsi]
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_454
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_464:
	movzx	edx, byte ptr [rdi + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	add	edx, -0x30
	lea	rsi, [rsi]
	cmp	edx, 0xa
	mov	rbp, rbp
	jb	.label_464
.label_454:
	mov	rsp, rsp
	lea	edi, [rax - 0x30]
	xor	edx, edx
	mov	rbp, rbp
	cmp	edi, 9
	ja	.label_470
	xor	edx, edx
	nop	
.label_471:
	mov	rsp, rsp
	movzx	edi, byte ptr [rsi + rdx + 1]
	lea	rdi, [rdi]
	inc	rdx
	add	edi, -0x30
	mov	rsp, rsp
	cmp	edi, 0xa
	mov	rsp, rsp
	jb	.label_471
.label_470:
	cmp	rcx, rdx
	jne	.label_478
	mov	rsp, rsp
	sub	r8d, eax
	nop	
	xor	eax, eax
	test	rcx, rcx
	nop	
	jmp	.label_462
.label_478:
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	cmovb	eax, ecx
	lea	rdi, [rdi]
	ret	
.label_465:
	lea	rsi, [rsi]
	mov	r9b, cl
	nop	
	jmp	.label_455
.label_456:
	lea	rdi, [rdi]
	mov	r9b, cl
.label_455:
	movzx	r8d, al
	movzx	eax, r9b
	lea	rsi, [rsi]
	add	eax, -0x30
	nop	
	xor	edx, edx
	mov	rsp, rsp
	cmp	eax, 9
	mov	rbp, rbp
	ja	.label_474
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_472:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi + rdx + 1]
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	lea	rsi, [rsi]
	jb	.label_472
.label_474:
	lea	rsi, [rsi]
	lea	edi, [r8 - 0x30]
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	edi, 9
	lea	rdi, [rdi]
	ja	.label_481
	xor	eax, eax
	nop	dword ptr [rax]
.label_476:
	lea	rdi, [rdi]
	movzx	edi, byte ptr [rsi + rax + 1]
	inc	rax
	mov	rsp, rsp
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_476
.label_481:
	mov	rbp, rbp
	cmp	rdx, rax
	lea	rsi, [rsi]
	jne	.label_460
	sub	r8d, ecx
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
.label_462:
	cmovne	eax, r8d
.label_457:
	ret	
.label_460:
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
	#Procedure 0x4081e0

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
	je	.label_489
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
	jmp	.label_491
.label_489:
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
.label_491:
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
	ja	.label_493
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_484]]
.label_2620:
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
.label_493:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_487
.label_2621:
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
.label_2622:
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
.label_2623:
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
	jmp	.label_488
.label_2624:
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
	jmp	.label_486
.label_2625:
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
	jmp	.label_485
.label_2626:
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
.label_485:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_486:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_488:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_492
.label_2628:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_487:
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
	jmp	.label_490
.label_2627:
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
.label_490:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_492:
	mov	rbp, rbp
	call	__fprintf_chk
.label_2619:
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
	#Procedure 0x4085d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_494:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_494
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408600

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_498:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_495
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_496
	nop	word ptr cs:[rax + rax]
.label_495:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_496:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_497
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_498
.label_497:
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
	#Procedure 0x408690
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_499
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
.label_499:
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
.label_501:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_500
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_502
	nop	dword ptr [rax + rax]
.label_500:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_502:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_503
	inc	r9
	cmp	r9, 0xa
	jb	.label_501
.label_503:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4087d0
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
	#Procedure 0x408860
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
	jb	.label_504
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_505
	test	rax, rax
	je	.label_504
.label_505:
	nop	
	pop	rbx
	ret	
.label_504:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4088b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_506
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_507
.label_506:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_507:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088e0
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
	jb	.label_509
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_508
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_508
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_508:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_510
	test	rax, rax
	je	.label_509
.label_510:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_509:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408960

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_511
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_511
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_511:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_512
	test	rax, rax
	nop	
	je	.label_513
.label_512:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_513:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089b0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_518
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_514
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_520
.label_518:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_517
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_517:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_519
.label_520:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_516
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_516
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_516:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_515
	test	rax, rax
	mov	rbp, rbp
	je	.label_514
.label_515:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_514:
	call	xalloc_die
.label_519:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a90
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_522
	test	rax, rax
	mov	rbp, rbp
	je	.label_521
.label_522:
	pop	rbx
	ret	
.label_521:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408ab0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_526
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_527
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_525
	call	free
	xor	eax, eax
	jmp	.label_523
.label_526:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_524
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_525:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_523
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_524
.label_523:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_524:
	mov	rbp, rbp
	call	xalloc_die
.label_527:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408b40
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
	je	.label_528
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_529
.label_528:
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
.label_529:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ba0
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
	jb	.label_530
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_530
	pop	rcx
	ret	
.label_530:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x408bd0

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
	je	.label_532
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_531
.label_532:
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
.label_531:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408c30

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
	je	.label_533
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_534
.label_533:
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
.label_534:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x408c90

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
	#Procedure 0x408ce0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_535
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_536
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
	je	.label_536
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
.label_535:
	mov	ecx, 1
.label_536:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d50

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
	je	.label_537
	nop	
	cmp	r15, -2
	jb	.label_537
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_537
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_537:
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
	#Procedure 0x408de0

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
	je	.label_538
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	mov	rbp, rbp
	jmp	dcgettext
.label_538:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e50

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
	sub	rsp, 0xf8
	nop	
	mov	qword ptr [rsp + 0xc8], rcx
	nop	
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	nop	
	mov	dword ptr [rsp + 0x14], 0
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [r15 + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	rsp, rsp
	mov	r12, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 8], 0xe7
	mov	rsp, rsp
	jbe	.label_643
.label_704:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	nop	
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	nop	
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0xf
	mov	rbp, rbp
	movabs	rax, 0x555555555555554
	cmp	r14, rax
	ja	.label_574
	lea	rdi, [r14 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [r12 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	dword ptr [rax + rax]
.label_680:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	lea	rdi, [rdi]
	cmp	rbx, r14
	nop	
	jbe	.label_680
	lea	rsi, [rsi]
	mov	edi, 0x18
	mov	rsi, rbx
	mov	rbp, rbp
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	lea	rdi, [rdi]
	dec	rbx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x88], rbx
	nop	
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	mov	rbp, rbp
	movzx	ecx, cl
	cmp	ecx, 0x75
	mov	rsp, rsp
	jne	.label_541
	nop	
	mov	cl, byte ptr [rax + 1]
	lea	rdi, [rdi]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	mov	rbp, rbp
	jne	.label_541
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 2]
	lea	rsi, [rsi]
	or	cl, 0x20
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x66
	mov	rsp, rsp
	jne	.label_541
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	sete	cl
	nop	
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_541
	nop	
	cmp	byte ptr [rax + rcx + 4], 0
	lea	rsi, [rsi]
	jne	.label_541
	or	byte ptr [r12 + 0xb0], 4
.label_541:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_558
	lea	rsi, [rsi]
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_567
	mov	edi, 0x20
	mov	rsp, rsp
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	nop	
	xor	ebx, ebx
	test	rax, rax
	mov	rsp, rsp
	je	.label_574
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	
.label_585:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_579
	mov	edx, 1
	nop	
	mov	cl, bl
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_579:
	mov	rsp, rsp
	cmp	ebx, 0x7f
	lea	rsi, [rsi]
	ja	.label_582
	nop	
	cmp	ebx, eax
	mov	rsp, rsp
	je	.label_582
	or	byte ptr [r12 + 0xb0], 8
.label_582:
	inc	rbx
	mov	rbp, rbp
	cmp	rbx, 0x40
	lea	rdi, [rdi]
	jne	.label_585
	nop	
	mov	qword ptr [rsp + 0xd0], r15
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_605:
	mov	rsp, rsp
	lea	r15, [rbp + 0x40]
	mov	edi, r15d
	mov	rsp, rsp
	call	btowc
	cmp	eax, -1
	je	.label_597
	lea	rdi, [rdi]
	mov	edx, 1
	mov	cl, bpl
	mov	rsp, rsp
	shl	rdx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rbp, rbp
	or	qword ptr [rcx + 8], rdx
.label_597:
	lea	rsi, [rsi]
	cmp	r15d, eax
	mov	rbp, rbp
	je	.label_601
	or	byte ptr [r12 + 0xb0], 8
.label_601:
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, 0x40
	jne	.label_605
	xor	ebp, ebp
	mov	r15, qword ptr [rsp + 0xd0]
	nop	word ptr cs:[rax + rax]
.label_618:
	mov	rsp, rsp
	lea	edi, [rbx + 0x80]
	call	btowc
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_649
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, bl
	mov	rsp, rsp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	mov	rsp, rsp
	or	qword ptr [rcx + 0x10], rax
.label_649:
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, 0x40
	jne	.label_618
	nop	word ptr cs:[rax + rax]
.label_636:
	lea	rdi, [rdi]
	lea	edi, [rbp + 0xc0]
	mov	rsp, rsp
	call	btowc
	lea	rsi, [rsi]
	cmp	eax, -1
	je	.label_627
	mov	eax, 1
	mov	cl, bpl
	nop	
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_627:
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, 0x40
	jne	.label_636
	jmp	.label_558
.label_567:
	mov	qword ptr [word ptr [r12 + 120]], OFFSET FLAT:utf8_sb_map
.label_558:
	cmp	qword ptr [r12], 0
	je	.label_574
	cmp	qword ptr [r12 + 0x40], 0
	nop	
	je	.label_574
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0xc8]
	and	ecx, 0x400000
	nop	
	mov	qword ptr [rsp + 0xc0], rcx
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xa0], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rsp + 0x90], xmm0
	movdqa	xmmword ptr [rsp + 0x80], xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rsp + 0x70], xmm0
	movdqa	xmmword ptr [rsp + 0x60], xmm0
	movdqa	xmmword ptr [rsp + 0x50], xmm0
	movdqa	xmmword ptr [rsp + 0x40], xmm0
	movdqa	xmmword ptr [rsp + 0x30], xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0x20], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r14
	mov	qword ptr [rsp + 0x70], r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], rbx
	mov	rax, rcx
	nop	
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xa8], al
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rbp, rbp
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xab]
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], edx
	lea	rsi, [rsi]
	mov	al, byte ptr [r12 + 0xb0]
	shr	al, 2
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xa9], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0xb0]
	lea	rsi, [rsi]
	mov	al, cl
	mov	rbp, rbp
	shr	al, 3
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rsp + 0xaa], al
	mov	qword ptr [rsp + 0x88], r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x80], r14
	mov	rsp, rsp
	xor	eax, eax
	test	r14, r14
	jle	.label_646
	mov	rsp, rsp
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_699
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	r15d, 0xc
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	movabs	rcx, 0x1fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	ja	.label_548
	lea	rsi, [rax*4]
	xor	edi, edi
	nop	
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_548
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xd0]
.label_699:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	test	bpl, bpl
	mov	rbp, rbp
	mov	edx, 0
	mov	rbp, rbp
	je	.label_542
	mov	qword ptr [rsp + 0xd0], r15
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	rsi, qword ptr [rsp + 0x18]
	call	realloc
	nop	
	mov	r15d, 0xc
	test	rax, rax
	je	.label_548
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	dl, bpl
	mov	r15, qword ptr [rsp + 0xd0]
.label_542:
	mov	rcx, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 0x60], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	lea	rdi, [rdi]
	mov	bpl, dl
	mov	rsp, rsp
	jmp	.label_630
.label_574:
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rsp, rsp
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	rsp, rsp
	mov	eax, 0xc
	mov	rbp, rbp
	jmp	.label_560
.label_646:
	mov	rsp, rsp
	shr	rcx, 0x20
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rdx
.label_630:
	test	bpl, bpl
	lea	rdi, [rdi]
	cmove	rax, r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	cmp	qword ptr [rsp + 0xc0], 0
	je	.label_571
	mov	rbp, rbp
	cmp	ecx, 2
	mov	rbp, rbp
	jl	.label_629
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsi]
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_548
	lea	r13, [rsp + 0x20]
.label_625:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r14
	jge	.label_583
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x50]
	cmp	rbp, rax
	lea	rdi, [rdi]
	jg	.label_583
	nop	
	lea	rbx, [rbp + rbp]
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0xb0], 2
	jl	.label_556
	mov	r15d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	rbx, rax
	ja	.label_548
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	lea	rsi, [rbp*8]
	nop	
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_548
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_556
	lea	rdi, [rdi]
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_548
	mov	qword ptr [rsp + 0x38], rax
.label_556:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xab], 0
	je	.label_613
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, rbx
	call	realloc
	mov	r15d, 0xc
	test	rax, rax
	je	.label_548
	nop	
	mov	qword ptr [rsp + 0x28], rax
.label_613:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rbx
	mov	rsp, rsp
	mov	rdi, r13
	call	build_wcs_upper_buffer
	mov	r15d, eax
	test	r15d, r15d
	mov	rbp, rbp
	je	.label_625
.label_548:
	mov	dword ptr [rsp + 0x14], r15d
	lea	rsi, [rsi]
	jmp	.label_553
.label_571:
	nop	
	cmp	ecx, 2
	lea	rsi, [rsi]
	jl	.label_632
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	lea	rdi, [rsp + 0x20]
	nop	
	call	build_wcs_buffer
	jmp	.label_583
.label_629:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	rax, r14
	cmovg	rax, r14
	nop	
	mov	r14, rax
	mov	rbp, rbp
	xor	eax, eax
	test	r14, r14
	mov	rsp, rsp
	jle	.label_617
	xor	eax, eax
	mov	ebp, 1
	mov	rbp, rbp
	jmp	.label_650
	nop	word ptr cs:[rax + rax]
.label_672:
	mov	r13, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x98]
	inc	rbp
.label_650:
	mov	rsp, rsp
	add	r13, rax
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp + r13 - 1]
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_657
.label_676:
	movzx	ebx, al
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	mov	rbp, rbp
	ja	.label_665
	call	__ctype_toupper_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_665:
	mov	rax, qword ptr [rsp + 0x28]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r14
	mov	rbp, rbp
	jl	.label_672
	jmp	.label_674
.label_657:
	mov	al, byte ptr [rbx + rcx]
	jmp	.label_676
.label_632:
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_677
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r14
	cmovg	rcx, r14
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	test	rdi, rdi
	jle	.label_678
	movzx	ecx, byte ptr [r13]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbx + rcx]
	nop	
	mov	byte ptr [rax], cl
	mov	ecx, 1
	lea	rsi, [rsi]
	cmp	rdi, 2
	jl	.label_678
	nop	dword ptr [rax]
.label_708:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x28]
	add	rax, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	al, byte ptr [rsi + rax]
	nop	
	mov	byte ptr [rdx + rcx], al
	lea	rsi, [rsi]
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_708
	mov	rcx, rdi
.label_678:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], r15
	mov	qword ptr [rsp + 0x50], rcx
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_583
.label_643:
	mov	esi, 0xe8
	mov	rdi, r12
	lea	rdi, [rdi]
	call	realloc
	mov	rbp, rbp
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_560
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_704
.label_674:
	mov	rbp, rbp
	mov	rax, r14
.label_617:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], r15
	nop	
	jmp	.label_682
.label_677:
	mov	qword ptr [rsp + 0xd0], r15
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
.label_682:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_583:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], 0
	nop	
	mov	r15, qword ptr [rsp + 0xd0]
	nop	
	mov	qword ptr [r15 + 0x30], 0
	mov	rbp, rbp
	mov	rbx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rsp, rsp
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rsp, rsp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0xe0]
	lea	r13, [rsp + 0x20]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0x68], rax
	lea	r9, [rsp + 0x14]
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, r15
	nop	
	mov	rdx, r14
	mov	rcx, rbp
	lea	rsi, [rsi]
	call	parse_reg_exp
	lea	rsi, [rsi]
	mov	r14, rax
	test	r14, r14
	jne	.label_563
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_565
.label_563:
	mov	rsp, rsp
	mov	ebp, dword ptr [rbx + 0x80]
	nop	
	cmp	ebp, 0xf
	je	.label_570
	mov	rax, qword ptr [rbx + 0x70]
.label_562:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	mov	rbp, rbp
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
.label_559:
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	je	.label_584
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbx + 0x80]
	lea	rsi, [rsi]
	cmp	ecx, 0xf
	je	.label_588
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x70]
.label_589:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	mov	rbp, rbp
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x10], r14
	lea	rsi, [rsi]
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_586
	mov	qword ptr [rbp], rcx
.label_584:
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_586
	nop	
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_586
	mov	qword ptr [r12 + 0x68], rcx
	mov	rsp, rsp
	mov	r15, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x18], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 8]
	nop	
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x28], rax
	mov	rax, qword ptr [r15 + 8]
	nop	
	shl	rax, 3
	lea	rdi, [rdi]
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [r15 + 0x30], rax
	nop	
	cmp	qword ptr [r15 + 0x18], 0
	lea	rsi, [rsi]
	je	.label_634
	nop	
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_640
	mov	rbp, rbp
	test	rax, rax
	je	.label_551
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	test	rax, rax
	je	.label_644
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rax + 0x30]
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [r15 + 0xe0], rax
	test	rax, rax
	je	.label_655
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_656
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rcx, qword ptr [rcx + 0x30]
	nop	
	cmp	rcx, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	cmova	rdx, rcx
	mov	rsp, rsp
	xor	edi, edi
	cmp	rdx, 4
	lea	rsi, [rsi]
	jb	.label_670
	xor	edi, edi
	mov	rsi, rdx
	lea	rsi, [rsi]
	and	rsi, 0xfffffffffffffffc
	je	.label_670
	lea	rsi, [rsi]
	cmp	rcx, 1
	mov	ebp, 1
	nop	
	cmova	rbp, rcx
	mov	rbp, rbp
	add	rbp, -4
	mov	rbx, rbp
	nop	
	shr	rbx, 2
	lea	rsi, [rsi]
	xor	edi, edi
	bt	rbp, 2
	jb	.label_604
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	movq	xmm0, rdi
	nop	
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_679]]
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + 0x10], xmm0
	mov	rsp, rsp
	mov	edi, 4
.label_604:
	test	rbx, rbx
	je	.label_688
	lea	rsi, [rsi]
	mov	ebp, 1
	movq	xmm0, rbp
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_679]]
.label_564:
	movq	xmm2, rdi
	mov	rsp, rsp
	pshufd	xmm2, xmm2, 0x44
	lea	rdi, [rdi]
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	paddq	xmm2, xmm1
	nop	
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	nop	
	lea	rbp, [rdi + 4]
	movq	xmm2, rbp
	mov	rbp, rbp
	pshufd	xmm2, xmm2, 0x44
	lea	rdi, [rdi]
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdi*8 + 0x20], xmm3
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdi*8 + 0x30], xmm2
	mov	rbp, rbp
	add	rdi, 8
	cmp	rdi, rsi
	mov	rsp, rsp
	jne	.label_564
.label_688:
	cmp	rdx, rsi
	mov	rdi, rsi
	je	.label_656
	nop	word ptr cs:[rax + rax]
.label_670:
	mov	qword ptr [rax + rdi*8], rdi
	inc	rdi
	mov	rsp, rsp
	cmp	rdi, rcx
	nop	
	jb	.label_670
.label_656:
	mov	rdx, qword ptr [r15 + 0x68]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rdx + 0x30]
	nop	
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	je	.label_539
	cmp	ecx, 4
	jne	.label_545
	movsxd	rcx, dword ptr [rdx + 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rdx + 0x28], rcx
	mov	esi, 1
	lea	rdi, [rdi]
	shl	esi, cl
	movsxd	rcx, esi
	or	qword ptr [r15 + 0xa0], rcx
	jmp	.label_545
.label_634:
	mov	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_553
.label_640:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_553
.label_655:
	mov	rsp, rsp
	lea	r14, [r15 + 0x68]
	jmp	.label_648
.label_570:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	xor	ebp, ebp
	test	rax, rax
	je	.label_559
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_562
.label_539:
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_545
	movzx	esi, byte ptr [rcx + 0x30]
	cmp	esi, 0x11
	jne	.label_545
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rdx + 8], rsi
	test	rsi, rsi
	je	.label_568
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rdx
.label_568:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rsi*8]
	nop	
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	jg	.label_545
	mov	rbp, rbp
	mov	rsi, -2
	lea	rsi, [rsi]
	rol	rsi, cl
	and	qword ptr [r15 + 0xa0], rsi
.label_545:
	lea	r14, [r15 + 0x68]
	mov	rbp, rbp
	jmp	.label_647
.label_588:
	mov	edi, 0x3c8
	nop	
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_586
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_589
.label_586:
	mov	dword ptr [rsp + 0x14], 0xc
.label_565:
	mov	qword ptr [r12 + 0x68], 0
	lea	rsi, [rsi]
	jmp	.label_598
.label_551:
	mov	rsp, rsp
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_553
.label_644:
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_553
.label_690:
	mov	rsi, -2
	mov	rsp, rsp
	rol	rsi, cl
	and	qword ptr [r15 + 0xa0], rsi
.label_647:
	mov	rsi, rax
.label_631:
	test	rsi, rsi
	nop	
	jne	.label_668
.label_626:
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	nop	
	mov	ecx, 0
	jne	.label_612
	nop	
.label_621:
	nop	
	mov	rdi, rcx
	nop	
	mov	rcx, rsi
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	cmp	rdx, rdi
	mov	rsp, rsp
	je	.label_614
	test	rdx, rdx
	jne	.label_612
.label_614:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	mov	rsp, rsp
	jne	.label_621
	lea	rsi, [rsi]
	jmp	.label_622
.label_612:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx + 0x30]
	cmp	ecx, 0x11
	nop	
	je	.label_624
	lea	rdi, [rdi]
	cmp	ecx, 4
	lea	rsi, [rsi]
	mov	esi, 0
	mov	rsp, rsp
	jne	.label_626
	mov	rbp, rbp
	jmp	.label_631
.label_624:
	nop	
	mov	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_626
	movzx	esi, byte ptr [rcx + 0x30]
	cmp	esi, 0x11
	lea	rdi, [rdi]
	jne	.label_626
	lea	rsi, [rdx + 8]
	lea	rdi, [rdx + 0x28]
	jmp	.label_641
.label_669:
	nop	
	movsxd	rcx, dword ptr [rdi]
	nop	
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rdi], rcx
	mov	edi, 1
	shl	edi, cl
	lea	rdi, [rdi]
	movsxd	rcx, edi
	or	qword ptr [r15 + 0xa0], rcx
.label_668:
	mov	rdi, rdx
	mov	rdx, qword ptr [rdi + 8]
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	ecx, 0
	jne	.label_651
	nop	dword ptr [rax]
.label_659:
	lea	rsi, [rsi]
	mov	rbp, rcx
	nop	
	mov	rcx, rdi
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	cmp	rdx, rbp
	lea	rdi, [rdi]
	je	.label_600
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_651
.label_600:
	mov	rdi, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rsp, rsp
	jne	.label_659
	nop	
	jmp	.label_622
.label_651:
	lea	rdi, [rdx + 0x28]
	movzx	ecx, byte ptr [rdx + 0x30]
	cmp	ecx, 0x11
	je	.label_664
	cmp	ecx, 4
	jne	.label_668
	jmp	.label_669
.label_664:
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	test	rcx, rcx
	je	.label_668
	mov	rsp, rsp
	movzx	ebp, byte ptr [rcx + 0x30]
	cmp	ebp, 0x11
	jne	.label_668
	lea	rdi, [rdi]
	lea	rsi, [rdx + 8]
.label_641:
	mov	rbp, rbp
	mov	rbp, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rsi], rbp
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_675
	mov	rbp, rbp
	mov	qword ptr [rbp], rdx
.label_675:
	mov	rsi, qword ptr [rdi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rsi*8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	mov	rsi, rax
	jg	.label_631
	jmp	.label_690
.label_622:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xd0]
	nop	
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_686
	mov	rax, qword ptr [r15 + 0xe0]
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_695:
	cmp	rdx, qword ptr [rax + rdx*8]
	lea	rsi, [rsi]
	jne	.label_686
	lea	rdi, [rdi]
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, rcx
	nop	
	jb	.label_695
.label_686:
	mov	rbp, rbp
	cmp	rdx, rcx
	nop	
	jne	.label_648
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	qword ptr [r15 + 0xe0], 0
.label_648:
	mov	rax, qword ptr [r14]
	lea	rbx, [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_573:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	nop	
	jne	.label_573
	mov	rax, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, 0
	jne	.label_573
	jmp	.label_707
.label_569:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	rbp, rdx
.label_707:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xe0], 0
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_540
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rcx + 0x30]
	nop	
	cmp	eax, 0x11
	jne	.label_540
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x38]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	lower_subexp
	mov	qword ptr [rbp + 8], rax
	test	rax, rax
	je	.label_540
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax + rax]
.label_540:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_549
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x11
	jne	.label_549
	nop	
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x38]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	lower_subexp
	mov	qword ptr [rbp + 0x10], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_549
	mov	rbp, rbp
	mov	qword ptr [rax], rbp
	nop	dword ptr [rax]
.label_549:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0xe0]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_544
	mov	rdx, qword ptr [rbp]
	test	rdx, rdx
	je	.label_566
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbp
	je	.label_569
	test	rax, rax
	je	.label_569
	jmp	.label_573
.label_566:
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	ebx, 0xfffc00ff
.label_575:
	mov	rbp, rbp
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_575
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_575
	nop	dword ptr [rax + rax]
.label_608:
	movzx	eax, byte ptr [rbp + 0x30]
	lea	rsi, [rsi]
	cmp	eax, 0x10
	lea	rsi, [rsi]
	jne	.label_623
	mov	rax, qword ptr [rbp + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_581
.label_623:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	re_dfa_add_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x38], rax
	mov	rsp, rsp
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_594
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp + 0x30]
	cmp	ecx, 0xc
	jne	.label_581
	mov	ecx, dword ptr [rbp + 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	nop	
	and	esi, ebx
	nop	
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_581:
	mov	rcx, qword ptr [rbp]
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_606
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	lea	rsi, [rsi]
	mov	rbp, rcx
	je	.label_608
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	mov	rbp, rcx
	mov	rbp, rbp
	je	.label_608
	mov	rbp, rbp
	jmp	.label_575
.label_606:
	nop	
	mov	rbx, qword ptr [r14]
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	mov	rsp, rsp
	je	.label_615
	mov	rbp, rbp
	cmp	eax, 0xb
	jne	.label_619
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rax + 0x20], rbx
	mov	rsp, rsp
	jmp	.label_603
.label_594:
	lea	rdi, [rdi]
	mov	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_553
.label_615:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_697
.label_619:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_633
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_633:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	nop	
	je	.label_603
.label_697:
	nop	
	mov	rdx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_603:
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_638
.label_662:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdx + 0x18]
	nop	
	mov	qword ptr [rax + 0x20], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	nop	
	mov	rdx, rcx
.label_638:
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	test	rax, rax
	mov	rcx, rax
	nop	
	jne	.label_653
.label_658:
	mov	rax, rsi
	lea	rsi, [rsi]
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	rcx, rax
	je	.label_691
	mov	rbp, rbp
	test	rcx, rcx
	nop	
	jne	.label_653
.label_691:
	mov	rdx, qword ptr [rsi]
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_658
	nop	
	jmp	.label_661
.label_653:
	movzx	eax, byte ptr [rcx + 0x30]
	cmp	eax, 0x10
	lea	rdi, [rdi]
	je	.label_662
	lea	rsi, [rsi]
	cmp	eax, 0xb
	jne	.label_666
	mov	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], rcx
	lea	rsi, [rsi]
	mov	rdx, rcx
	jmp	.label_638
.label_666:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_671
	mov	rdx, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], rdx
.label_671:
	mov	rsi, qword ptr [rcx + 0x10]
	nop	
	test	rsi, rsi
	mov	rdx, rcx
	nop	
	je	.label_638
	mov	rdx, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_638
.label_661:
	mov	rdi, r15
	nop	
	mov	rsi, rbx
	nop	
	call	link_nfa_nodes
	test	eax, eax
	jne	.label_544
.label_660:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	mov	eax, 0
	lea	rsi, [rsi]
	jne	.label_683
	nop	word ptr cs:[rax + rax]
.label_692:
	mov	rsp, rsp
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	lea	rdi, [rdi]
	je	.label_689
	test	rbp, rbp
	mov	rbp, rbp
	jne	.label_683
.label_689:
	mov	rbx, qword ptr [rax]
	test	rbx, rbx
	jne	.label_692
	jmp	.label_694
.label_683:
	mov	rdi, r15
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	link_nfa_nodes
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	mov	rbx, rbp
	lea	rdi, [rdi]
	je	.label_660
	mov	rsp, rsp
	jmp	.label_544
.label_694:
	xor	eax, eax
	lea	r14, [rsp + 0xe0]
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_698
	nop	
.label_547:
	inc	rbp
	nop	
	mov	rax, rbp
.label_698:
	nop	
	cmp	rax, qword ptr [r15 + 0x10]
	jne	.label_702
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r13b, 1
	mov	rsp, rsp
	mov	r13d, 0
	mov	rbp, rbp
	jne	.label_703
	nop	
	jmp	.label_706
.label_702:
	lea	rdi, [rdi]
	mov	rbp, rax
.label_703:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	lea	rbx, [rbp + rbp*2]
	mov	rsp, rsp
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_547
	mov	ecx, 1
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_544
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsp, rsp
	jne	.label_547
	mov	rdi, qword ptr [rsp + 0xf0]
	call	free
	mov	r13b, 1
	jmp	.label_547
.label_544:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
.label_553:
	mov	r15, qword ptr [rsp + 0xd0]
.label_598:
	mov	rbx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_550
	nop	dword ptr [rax]
.label_557:
	mov	rbp, qword ptr [rdi]
	call	free
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	mov	rdi, rbp
	nop	
	jne	.label_557
.label_550:
	nop	
	mov	qword ptr [rbx + 0x70], 0
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], 0
	nop	
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	call	free
	cmp	byte ptr [rsp + 0xab], 0
	je	.label_572
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	call	free
.label_572:
	mov	rdi, r12
	call	free_dfa_content
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
.label_709:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x14]
.label_560:
	mov	rbp, rbp
	add	rsp, 0xf8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_706:
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	test	byte ptr [rcx + 0x38], 0x10
	jne	.label_587
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x30], 0
	je	.label_587
	mov	rbp, rbp
	test	byte ptr [r15 + 0xb0], 1
	jne	.label_591
.label_587:
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_593
.label_591:
	mov	rsp, rsp
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x38], rax
	test	rax, rax
	je	.label_599
	cmp	qword ptr [r15 + 0x10], 0
	nop	
	je	.label_593
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	ecx, 1
	mov	rbp, rbp
	mov	edx, 0x18
	cmp	rax, 1
	jbe	.label_602
.label_610:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	add	rdx, 0x18
	cmp	rcx, rax
	lea	rsi, [rsi]
	jb	.label_610
.label_602:
	mov	rbp, rbp
	test	rax, rax
	je	.label_593
	mov	r8, qword ptr [r15 + 0x30]
	xor	r10d, r10d
.label_595:
	mov	qword ptr [rsp + 0xc8], r10
	lea	r9, [r10 + r10*2]
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	cmp	qword ptr [r8 + r9*8 + 8], 0
	jle	.label_620
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rdi
	xor	ebx, ebx
.label_663:
	mov	rbp, rbp
	mov	r13, qword ptr [r15 + 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + rbx*8]
	lea	rbp, [rax + rax*2]
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + rbp*8]
	nop	
	lea	r14, [r13 + rbp*8 + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r13 + rbp*8 + 8]
	nop	
	cmp	rax, rdx
	jne	.label_576
	lea	rcx, [r13 + rbp*8]
	lea	rsi, [rsi]
	lea	rdx, [rax + rax + 2]
	mov	rbp, rbp
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_652
	nop	
	lea	rcx, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14]
	nop	
	mov	r8, qword ptr [r15 + 0x30]
	mov	r10, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_654
.label_576:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_654:
	lea	rdi, [rdi]
	lea	rsi, [rdx + 1]
	mov	qword ptr [r14], rsi
	mov	qword ptr [rax + rdx*8], r10
	inc	rbx
	nop	
	cmp	rbx, qword ptr [r8 + r9*8 + 8]
	jl	.label_663
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x10]
.label_620:
	inc	r10
	lea	rsi, [rsi]
	cmp	r10, rax
	jb	.label_595
.label_593:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], 0
	cmp	qword ptr [rsp + 0xc0], 0
	jne	.label_673
	mov	al, byte ptr [r12 + 0xb0]
	mov	cl, al
	and	cl, 4
	nop	
	je	.label_673
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xd0]
	cmp	qword ptr [rcx + 0x28], 0
	mov	rbp, rbp
	jne	.label_673
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 0x10]
	test	rdx, rdx
	je	.label_684
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12]
	xor	r9d, r9d
	mov	rbp, rbp
	movabs	r8, 0x1000000010001
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rsi, [rsi]
	xor	r10d, r10d
	lea	rsi, [rsi]
	xor	ebp, ebp
.label_710:
	movzx	esi, byte ptr [rcx + 8]
	dec	esi
	mov	rsp, rsp
	cmp	esi, 0xb
	lea	rsi, [rsi]
	ja	.label_693
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_696]]
.label_2715:
	lea	rsi, [rsi]
	mov	sil, 1
	cmp	byte ptr [rcx], 0
	lea	rdi, [rdi]
	js	.label_596
	lea	rdi, [rdi]
	mov	sil, r10b
.label_596:
	lea	rsi, [rsi]
	mov	r10b, sil
	jmp	.label_700
.label_2716:
	mov	rsi, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_673
	nop	
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_700
	jmp	.label_673
.label_2717:
	mov	rsp, rsp
	mov	r9b, 1
	mov	rsp, rsp
	jmp	.label_700
.label_2718:
	mov	esi, dword ptr [rcx]
	mov	rsp, rsp
	lea	edi, [rsi - 0x10]
	cmp	edi, 0x30
	lea	rsi, [rsi]
	ja	.label_705
	lea	rsi, [rsi]
	bt	r8, rdi
	mov	rsp, rsp
	jb	.label_700
.label_705:
	cmp	esi, 0x80
	lea	rdi, [rdi]
	jne	.label_673
.label_700:
	inc	rbp
	nop	
	add	rcx, 0x10
	cmp	rbp, rdx
	mov	rsp, rsp
	jb	.label_710
	lea	rdi, [rdi]
	mov	cl, r9b
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	or	r10b, r9b
	lea	rsi, [rsi]
	xor	edx, edx
	mov	esi, 8
	lea	rdi, [rdi]
	test	r10b, 1
	je	.label_543
	jmp	.label_637
.label_701:
	mov	rbp, rbp
	add	rsi, 0x10
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12]
.label_637:
	nop	
	mov	eax, dword ptr [rbx + rsi]
	movzx	edi, al
	cmp	edi, 5
	je	.label_609
	cmp	edi, 1
	lea	rdi, [rdi]
	jne	.label_552
	nop	
	cmp	byte ptr [rbx + rsi - 8], 0
	jns	.label_552
	nop	
	and	eax, 0xffdfffff
	lea	rdi, [rdi]
	jmp	.label_555
.label_609:
	and	eax, 0xffffff00
	mov	rsp, rsp
	or	eax, 7
.label_555:
	mov	dword ptr [rbx + rsi], eax
.label_552:
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r12 + 0x10]
	jb	.label_701
	mov	rbp, rbp
	mov	al, byte ptr [r12 + 0xb0]
	lea	rsi, [rsi]
	jmp	.label_543
.label_652:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_553
.label_684:
	xor	ecx, ecx
.label_543:
	mov	dword ptr [r12 + 0xb4], 1
	cmp	qword ptr [r12 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	mov	rsp, rsp
	and	al, 0xf9
	or	al, dl
	mov	rbp, rbp
	mov	byte ptr [r12 + 0xb0], al
.label_673:
	nop	
	mov	rax, qword ptr [r12 + 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x90], rax
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x30]
	lea	r13, [rax + rax*2]
	mov	r15, qword ptr [rbx + r13*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe8], r15
	mov	rsp, rsp
	mov	r14, qword ptr [rbx + r13*8 + 8]
	test	r14, r14
	jle	.label_577
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], r15
	mov	rsp, rsp
	lea	rdi, [r15*8]
	call	malloc
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	qword ptr [rsp + 0xf0], rbp
	nop	
	test	rbp, rbp
	je	.label_592
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + r13*8 + 0x10]
	lea	rsi, [rsi]
	shl	r14, 3
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0xdc], 0
	test	r15, r15
	lea	rsi, [rsi]
	jle	.label_590
	mov	rax, qword ptr [r12 + 0x98]
	lea	rdi, [rdi]
	test	rax, rax
	jle	.label_590
	lea	rsi, [rsi]
	xor	eax, eax
	lea	r14, [rsp + 0xe0]
	jmp	.label_607
.label_667:
	mov	rbp, qword ptr [rsp + 0xf0]
.label_607:
	mov	r8, qword ptr [rbp + rax*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12]
	mov	rsp, rsp
	mov	rsi, r8
	shl	rsi, 4
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx + rsi + 8]
	cmp	ecx, 4
	mov	rbp, rbp
	jne	.label_611
	test	r15, r15
	nop	
	mov	edi, 0
	nop	
	jle	.label_616
	add	rsi, rdx
	xor	edi, edi
.label_628:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	mov	rsp, rsp
	movzx	ebx, byte ptr [rdx + rcx + 8]
	cmp	ebx, 9
	mov	rbp, rbp
	jne	.label_578
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + rcx]
	nop	
	cmp	rcx, qword ptr [rsi]
	mov	rbp, rbp
	je	.label_616
.label_578:
	inc	rdi
	mov	rsp, rsp
	cmp	rdi, r15
	jl	.label_628
.label_616:
	cmp	rdi, r15
	nop	
	je	.label_611
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	test	r15, r15
	jle	.label_635
	mov	rsp, rsp
	mov	rsi, r15
	dec	rsi
	mov	edx, 0
	nop	
	je	.label_642
.label_645:
	lea	rdi, [rdx + rsi]
	mov	rbp, rbp
	shr	rdi, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	mov	rbp, rbp
	cmovl	rdx, rbx
	lea	rsi, [rsi]
	cmovge	rsi, rdi
	cmp	rdx, rsi
	jb	.label_645
.label_642:
	cmp	rdx, -1
	mov	rbp, rbp
	je	.label_635
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + rdx*8], rcx
	nop	
	je	.label_611
.label_635:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rsi]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	re_node_set_merge
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_580
	nop	
	mov	r15, qword ptr [rsp + 0xe8]
	xor	eax, eax
.label_611:
	inc	rax
	cmp	rax, r15
	jl	.label_667
	mov	rsp, rsp
	jmp	.label_590
.label_577:
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	mov	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xdc], 0
.label_590:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xdc]
	lea	rdx, [rsp + 0xe0]
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	nop	
	test	rax, rax
	je	.label_681
	cmp	byte ptr [rax + 0x68], 0
	lea	rsi, [rsi]
	js	.label_685
	nop	
	mov	qword ptr [r12 + 0x60], rax
	nop	
	mov	qword ptr [r12 + 0x58], rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_687
.label_685:
	lea	rbx, [rsp + 0xdc]
	lea	rbp, [rsp + 0xe0]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	nop	
	mov	rdi, rbx
	mov	rsi, r12
	nop	
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x58], rax
	mov	rsp, rsp
	mov	ecx, 6
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbp
	nop	
	call	re_acquire_state_context
	nop	
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	lea	rdi, [rdi]
	je	.label_639
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_639
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	mov	rsp, rsp
	je	.label_639
.label_687:
	mov	rdi, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
.label_580:
	mov	dword ptr [rsp + 0x14], eax
	mov	r14, qword ptr [rsp + 0xd0]
	mov	rbx, qword ptr [r14]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_554
.label_546:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	jne	.label_546
.label_554:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	nop	
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x30]
	nop	
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xab], 0
	lea	rdi, [rdi]
	je	.label_561
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	call	free
.label_561:
	mov	rbp, rbp
	xor	eax, eax
	cmp	dword ptr [rsp + 0x14], 0
	nop	
	je	.label_560
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free_dfa_content
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	lea	rdi, [rdi]
	jmp	.label_709
.label_639:
	mov	eax, dword ptr [rsp + 0xdc]
	jmp	.label_580
.label_599:
	mov	eax, 0xc
	mov	dword ptr [rsp + 0x14], eax
	jmp	.label_553
.label_681:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xdc]
	mov	rbp, rbp
	jmp	.label_580
.label_592:
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0xe0], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xdc], 0xc
	mov	eax, 0xc
	jmp	.label_580
.label_693:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad40
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
	#Procedure 0x40ad60
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
	mov	rax, qword ptr [r15 + 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x50]
	lea	rdi, [rdi]
	cmp	rax, rsi
	je	.label_711
	nop	
	mov	rdi, r14
	mov	rdx, rbx
	nop	
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_711:
	nop	
	mov	rsi, qword ptr [r15 + 0x58]
	nop	
	cmp	rax, rsi
	mov	rbp, rbp
	je	.label_712
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	nop	
	mov	rax, qword ptr [r15 + 0x48]
.label_712:
	nop	
	mov	rsi, qword ptr [r15 + 0x60]
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rsi, [rsi]
	je	.label_713
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	call	re_compile_fastmap_iter
.label_713:
	or	byte ptr [r14 + 0x38], 8
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ae70

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
	sub	rsp, 0x138
	lea	rdi, [rdi]
	mov	r15, rdx
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	mov	r13, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	rax, qword ptr [r13]
	cmp	dword ptr [rax + 0xb4], 1
	nop	
	jne	.label_722
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	al, byte ptr [r13 + 0x1a]
	lea	rdi, [rdi]
	and	al, 0x40
	lea	rsi, [rsi]
	shr	al, 6
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x130], eax
	nop	
	jmp	.label_757
.label_722:
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x130], 0
.label_757:
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x10], 0
	nop	
	jle	.label_728
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsp, rsp
	lea	r14, [rsp + 0x30]
	nop	word ptr cs:[rax + rax]
.label_752:
	mov	rax, qword ptr [rsi + 0x18]
	nop	
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	r12, rbp
	shl	r12, 4
	mov	rsp, rsp
	lea	rcx, [rax + r12]
	movzx	ebx, byte ptr [rax + r12 + 8]
	cmp	ebx, 1
	lea	rdi, [rdi]
	je	.label_718
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rdx
	mov	rsp, rsp
	cmp	ebx, 6
	mov	rbp, rbp
	je	.label_730
	mov	rsp, rsp
	cmp	ebx, 3
	mov	rsp, rsp
	jne	.label_734
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax]
	mov	eax, dword ptr [rsp + 0x130]
	lea	rdi, [rdi]
	test	al, al
	mov	ebx, 0
	mov	eax, 0
	mov	rbp, rbp
	je	.label_739
	nop	word ptr cs:[rax + rax]
.label_761:
	bt	rbp, rbx
	jae	.label_751
	mov	byte ptr [r15 + rbx], 1
	lea	eax, [rbx + 0x80]
	lea	rsi, [rsi]
	cmp	eax, 0x180
	mov	rbp, rbp
	jae	.label_755
	nop	
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_749
	nop	
.label_755:
	mov	eax, ebx
.label_749:
	mov	rbp, rbp
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_751:
	inc	rbx
	cmp	rbx, 0x40
	lea	rdi, [rdi]
	jne	.label_761
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 8]
	xor	ebp, ebp
.label_731:
	bt	rbx, rbp
	nop	
	jae	.label_714
	mov	byte ptr [r15 + rbp + 0x40], 1
	mov	rbp, rbp
	lea	eax, [rbp + 0xc0]
	cmp	eax, 0x180
	jae	.label_723
	mov	rbp, rbp
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbp*4 + 0x100]
	jmp	.label_721
	nop	word ptr cs:[rax + rax]
.label_723:
	lea	rax, [rbp + 0x40]
.label_721:
	lea	rdi, [rdi]
	cdqe	
	lea	rdi, [rdi]
	mov	byte ptr [r15 + rax], 1
.label_714:
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, 0x40
	nop	
	jne	.label_731
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_760:
	lea	rdi, [rdi]
	bt	rbx, rbp
	lea	rdi, [rdi]
	jae	.label_715
	mov	rsp, rsp
	mov	byte ptr [r15 + rbp + 0x80], 1
	lea	eax, [rbp + 0x100]
	mov	rsp, rsp
	cmp	eax, 0x180
	jae	.label_748
	lea	rsi, [rsi]
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x200]
	jmp	.label_756
	nop	dword ptr [rax]
.label_748:
	lea	rax, [rbp + 0x80]
.label_756:
	mov	rbp, rbp
	cdqe	
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_715:
	nop	
	inc	rbp
	cmp	rbp, 0x40
	nop	
	jne	.label_760
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbx, qword ptr [rax + 0x18]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_737:
	mov	rbp, rbp
	bt	rbx, rbp
	jae	.label_764
	mov	rsp, rsp
	mov	byte ptr [r15 + rbp + 0xc0], 1
	lea	rdi, [rdi]
	lea	eax, [rbp + 0x140]
	cmp	eax, 0x180
	lea	rdi, [rdi]
	jae	.label_727
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x300]
	jmp	.label_724
	nop	word ptr [rax + rax]
.label_727:
	lea	rsi, [rsi]
	lea	rax, [rbp + 0xc0]
.label_724:
	lea	rdi, [rdi]
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_764:
	lea	rdi, [rdi]
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, 0x40
	mov	rsp, rsp
	jne	.label_737
	jmp	.label_717
	nop	dword ptr [rax + rax]
.label_739:
	bt	rbp, rax
	jae	.label_740
	mov	byte ptr [r15 + rax], 1
.label_740:
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	bt	rbp, rcx
	lea	rsi, [rsi]
	jae	.label_743
	mov	rbp, rbp
	mov	byte ptr [r15 + rax + 1], 1
.label_743:
	mov	rbp, rbp
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, 0x40
	nop	
	mov	rax, rcx
	jne	.label_739
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	nop	
	mov	rax, qword ptr [rax + 8]
	xor	ecx, ecx
	nop	
.label_762:
	nop	
	bt	rax, rcx
	jae	.label_759
	mov	rsp, rsp
	mov	byte ptr [r15 + rcx + 0x40], 1
.label_759:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	mov	rsp, rsp
	jae	.label_765
	mov	rsp, rsp
	mov	byte ptr [r15 + rcx + 0x41], 1
.label_765:
	mov	rbp, rbp
	add	rcx, 2
	cmp	rcx, 0x40
	mov	rsp, rsp
	jne	.label_762
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_726:
	bt	rax, rcx
	lea	rsi, [rsi]
	jae	.label_763
	mov	byte ptr [r15 + rcx + 0x80], 1
.label_763:
	nop	
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_720
	mov	byte ptr [r15 + rcx + 0x81], 1
.label_720:
	add	rcx, 2
	cmp	rcx, 0x40
	mov	rsp, rsp
	jne	.label_726
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r12]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_750:
	bt	rax, rcx
	mov	rbp, rbp
	jae	.label_758
	mov	rbp, rbp
	mov	byte ptr [r15 + rcx + 0xc0], 1
.label_758:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	bt	rax, rdx
	mov	rsp, rsp
	jae	.label_747
	mov	byte ptr [r15 + rcx + 0xc1], 1
.label_747:
	lea	rsi, [rsi]
	add	rcx, 2
	lea	rdi, [rdi]
	cmp	rcx, 0x40
	lea	rdi, [rdi]
	jne	.label_750
	lea	rdi, [rdi]
	jmp	.label_717
	nop	dword ptr [rax + rax]
.label_730:
	mov	r12, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rsi, [rsi]
	jle	.label_746
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_736
	lea	rsi, [rsi]
	test	byte ptr [r12 + 0x20], 1
	nop	
	jne	.label_736
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x40], 0
	nop	
	je	.label_746
.label_736:
	mov	rbp, rbp
	mov	byte ptr [rsp + 8], 0
	lea	rdi, [rdi]
	lea	rbp, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_732:
	mov	qword ptr [rsp + 0x30], 0
	nop	
	xor	edi, edi
	mov	edx, 1
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rsp + 8]
	lea	rdi, [rdi]
	cmp	rax, -2
	jne	.label_729
	mov	byte ptr [r15 + rcx], 1
.label_729:
	mov	rbp, rbp
	inc	cl
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 8], cl
	mov	rsp, rsp
	jne	.label_732
	mov	rbp, rbp
	jmp	.label_717
	nop	word ptr cs:[rax + rax]
.label_718:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	nop	
	movzx	ebx, byte ptr [rcx]
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, dword ptr [rsp + 0x130]
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_745
	mov	rsp, rsp
	lea	eax, [rbx + 0x80]
	nop	
	cmp	eax, 0x17f
	ja	.label_754
	lea	rdi, [rdi]
	call	__ctype_tolower_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax + rbx*4]
.label_754:
	nop	
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_745:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_717
	mov	rax, qword ptr [rsp + 0x10]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_717
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rcx]
	nop	
	mov	al, byte ptr [rax + r12]
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x30], al
	mov	rdx, rcx
	mov	rbp, rbp
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	mov	rbp, rbp
	jae	.label_725
	mov	rsp, rsp
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	dword ptr [rax]
.label_766:
	mov	rax, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + r12]
	mov	rbp, rbp
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_725
	mov	rbp, rbp
	mov	al, byte ptr [rax + r12 - 8]
	lea	rdi, [rdi]
	mov	byte ptr [r13], al
	lea	rdi, [rdi]
	inc	r13
	nop	
	inc	rbp
	nop	
	add	r12, 0x10
	mov	rsp, rsp
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_766
.label_725:
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], 0
	mov	rsp, rsp
	sub	r13, r14
	lea	rdi, [rsp + 0x134]
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rdx, r13
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_753
	mov	edi, dword ptr [rsp + 0x134]
	call	towlower
	mov	rdi, r14
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_753
	nop	
	movzx	eax, byte ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rax], 1
.label_753:
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x28]
	nop	
	jmp	.label_717
	nop	dword ptr [rax]
.label_734:
	cmp	ebx, 2
	je	.label_716
	mov	eax, ebx
	or	eax, 2
	cmp	eax, 7
	jne	.label_717
	mov	rbp, rbp
	jmp	.label_716
.label_746:
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 0x28], 0
	mov	rbp, rbp
	jle	.label_717
	mov	eax, dword ptr [rsp + 0x130]
	test	al, al
	lea	rsi, [rsi]
	mov	ebp, 0
	lea	rdi, [rdi]
	mov	ebx, 0
	mov	rsp, rsp
	je	.label_719
	nop	word ptr cs:[rax + rax]
.label_735:
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	mov	rbp, rbp
	mov	rdi, r14
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_741
	mov	rsp, rsp
	movzx	ebx, byte ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rbx], 1
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	ja	.label_742
	mov	rsp, rsp
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ebx, dword ptr [rax + rbx*4]
.label_742:
	lea	rdi, [rdi]
	movsxd	rax, ebx
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
.label_741:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_738
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_738
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rbp, rbp
	call	towlower
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	esi, eax
	lea	rdx, [rsp + 8]
	mov	rsp, rsp
	call	wcrtomb
	mov	rsp, rsp
	cmp	rax, -1
	je	.label_738
	nop	
	movzx	eax, byte ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_738:
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	jl	.label_735
	mov	rbp, rbp
	jmp	.label_717
	nop	dword ptr [rax]
.label_719:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbx*4]
	mov	rdi, r14
	lea	rdi, [rdi]
	lea	rbp, [rsp + 8]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	wcrtomb
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_733
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_733:
	mov	rbp, rbp
	test	byte ptr [r13 + 0x1a], 0x40
	lea	rsi, [rsi]
	je	.label_744
	mov	rax, qword ptr [rsp + 0x10]
	cmp	dword ptr [rax + 0xb4], 2
	mov	rsp, rsp
	jl	.label_744
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + rbx*4]
	lea	rsi, [rsi]
	call	towlower
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rbp, rbp
	call	wcrtomb
	cmp	rax, -1
	je	.label_744
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax + rax]
.label_744:
	inc	rbx
	mov	rsp, rsp
	cmp	rbx, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	jl	.label_719
	nop	word ptr cs:[rax + rax]
.label_717:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_752
.label_728:
	nop	
	add	rsp, 0x138
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_716:
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, 0x100
	mov	rdi, r15
	call	memset
	lea	rsi, [rsi]
	cmp	ebx, 2
	mov	rbp, rbp
	jne	.label_728
	lea	rsi, [rsi]
	or	byte ptr [r13 + 0x38], 1
	lea	rsi, [rsi]
	jmp	.label_728
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b760
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
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
	je	.label_770
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
	jne	.label_767
	lea	r12, [r15 + 0x38]
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 0x38]
	lea	rdi, [rdi]
	and	al, 0x7f
	jmp	.label_773
.label_767:
	and	ebx, 0x143b2be
	nop	
	or	rbx, 0x100
	lea	r12, [r15 + 0x38]
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_773:
	nop	
	mov	byte ptr [r15 + 0x38], al
	add	ebp, ebp
	nop	
	and	bpl, 0x10
	and	al, 0xef
	lea	rdi, [rdi]
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x28], 0
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	lea	rdi, [rdi]
	cmp	eax, 0x10
	mov	ebx, 8
	nop	
	cmovne	ebx, eax
	nop	
	test	ebx, ebx
	mov	rsp, rsp
	jne	.label_768
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 0x20]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbp + 0xf0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0x80], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbp + 0x70], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbp + 0x60], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbp + 0x50], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x50]
	nop	
	cmp	rax, rsi
	lea	rsi, [rsi]
	je	.label_769
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_769:
	nop	
	mov	rsi, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	cmp	rax, rsi
	mov	rsp, rsp
	je	.label_771
	mov	rdi, r15
	mov	rdx, rbp
	nop	
	call	re_compile_fastmap_iter
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x48]
.label_771:
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	je	.label_772
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_772:
	or	byte ptr [r12], 8
	xor	ebx, ebx
.label_770:
	lea	rdi, [rdi]
	mov	eax, ebx
	mov	rsp, rsp
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_768:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_770
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b990
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
	jae	.label_774
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
	je	.label_776
	lea	rdi, [rdi]
	cmp	rbx, r15
	mov	rsp, rsp
	mov	rdx, rbx
	ja	.label_775
.label_777:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	call	memcpy
.label_776:
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
.label_775:
	mov	rsp, rsp
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	jmp	.label_777
.label_774:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ba40

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
	je	.label_778
	call	free_dfa_content
.label_778:
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
	#Procedure 0x40baa0

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_787
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r12d, 8
	cmp	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_787
	mov	ebp, 0x400ff
	jmp	.label_794
	nop	word ptr cs:[rax + rax]
.label_795:
	mov	rbp, rbp
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_794:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	lea	rsi, [rsi]
	je	.label_779
	nop	
	cmp	ecx, 6
	jne	.label_780
	nop	
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	call	free
	mov	rdi, r15
	mov	rsp, rsp
	jmp	.label_790
	nop	dword ptr [rax]
.label_779:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_790:
	lea	rsi, [rsi]
	call	free
.label_780:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_795
.label_787:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	nop	
	je	.label_796
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	nop	
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	dword ptr [rax + rax]
.label_793:
	mov	rax, qword ptr [r12]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_781
	mov	rdi, qword ptr [rax + rbx]
	mov	rsp, rsp
	call	free
.label_781:
	mov	rax, qword ptr [r15]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_783
	mov	rdi, qword ptr [rax + rbx]
	lea	rsi, [rsi]
	call	free
.label_783:
	mov	rax, qword ptr [r13]
	nop	
	test	rax, rax
	je	.label_789
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_789:
	mov	rsp, rsp
	inc	rbp
	add	rbx, 0x18
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	jb	.label_793
	lea	rdi, [rdi]
	jmp	.label_784
.label_796:
	mov	rsp, rsp
	lea	r13, [r14 + 0x28]
	mov	rbp, rbp
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_784:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_786
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_788
	nop	word ptr cs:[rax + rax]
.label_785:
	mov	rdi, qword ptr [r14 + 0x40]
.label_788:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*2]
	nop	
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	mov	rsp, rsp
	jle	.label_792
	lea	rbx, [rdi + rax*8]
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_782:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	nop	
	cmp	rbp, qword ptr [rbx]
	nop	
	jl	.label_782
.label_792:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_785
	mov	rdi, qword ptr [r14 + 0x40]
.label_786:
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	lea	rsi, [rsi]
	cmp	rdi, rax
	nop	
	je	.label_791
	call	free
.label_791:
	nop	
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bd20
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
	ja	.label_797
	test	bpl, 4
	nop	
	jne	.label_801
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_798
.label_801:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_798:
	test	byte ptr [rbx + 0x38], 0x10
	nop	
	jne	.label_799
	mov	dword ptr [rsp + 0x10], ebp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r15
	lea	rsi, [rsi]
	jmp	.label_800
.label_799:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp], 0
.label_800:
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
.label_797:
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
	#Procedure 0x40be00

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
	sub	rsp, 0x268
	mov	r15, rcx
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x2a0]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x230], xmm0
	movaps	xmmword ptr [rsp + 0x220], xmm0
	movaps	xmmword ptr [rsp + 0x210], xmm0
	movaps	xmmword ptr [rsp + 0x200], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x1f0], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x1e0], xmm0
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
	movaps	xmmword ptr [rsp + 0x1c0], xmm0
	movaps	xmmword ptr [rsp + 0x1b0], xmm0
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x190], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x180], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x140], xmm0
	mov	qword ptr [rsp + 0x1d8], r11
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x20]
	xor	ebp, ebp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_923
	lea	rsi, [rsi]
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	movzx	ecx, cl
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	ecx, 8
	nop	
	cmovne	rax, rbx
	nop	
	cmp	r15, r8
	mov	rsp, rsp
	cmove	rax, rbx
	mov	rbp, rax
.label_923:
	nop	
	mov	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	lea	r14, [r13 - 1]
	mov	rcx, r14
	nop	
	sub	rcx, rax
	mov	rsp, rsp
	xor	ebx, ebx
	cmp	rax, r13
	mov	rsp, rsp
	cmovb	rbx, rcx
	lea	rsi, [rsi]
	mov	r12d, 1
	cmp	qword ptr [rdi + 0x10], 0
	mov	rsp, rsp
	je	.label_847
	mov	rax, qword ptr [r11 + 0x48]
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_847
	mov	rsp, rsp
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_847
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], rbp
	lea	rsi, [rsi]
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	nop	
	je	.label_847
	cmp	qword ptr [r11 + 0x60], 0
	nop	
	je	.label_847
	mov	rbp, rbp
	mov	rbp, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x108], rbp
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_990
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	jne	.label_990
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_995
	lea	rsi, [rsi]
	cmp	byte ptr [rdi + 0x38], 0
	mov	rsp, rsp
	js	.label_990
.label_995:
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	test	r15, r15
	mov	r10, rsi
	lea	rdi, [rdi]
	je	.label_996
	lea	rdi, [rdi]
	test	r8, r8
	mov	rbp, rbp
	mov	r15d, 0
	lea	rdi, [rdi]
	jne	.label_847
	jmp	.label_872
.label_990:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r8
	mov	r10, rsi
.label_872:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], r14
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x3f], 1
	mov	rsp, rsp
	cmp	rbx, r13
	mov	qword ptr [rsp + 0x98], rbx
	lea	rdi, [rdi]
	jne	.label_1002
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + 0x98], 0
	mov	rbp, rbp
	setne	byte ptr [rsp + 0x3f]
.label_1002:
	mov	r13, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	inc	r13
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	mov	rsp, rsp
	cmp	rax, r13
	lea	rdi, [rdi]
	cmovge	r13, rax
	mov	rsp, rsp
	lea	rsi, [rdx + 1]
	cmp	rsi, r13
	cmovle	r13, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x140], r10
	mov	qword ptr [rsp + 0x198], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x190], rdx
	mov	qword ptr [rsp + 0x108], rbp
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rdi, [rdi]
	shr	rcx, 0x16
	lea	rsi, [rsi]
	and	cl, 1
	mov	byte ptr [rsp + 0x1c8], cl
	lea	rsi, [rsi]
	test	rbp, rbp
	setne	bl
	or	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x1cb], bl
	mov	dword ptr [rsp + 0x1d0], eax
	mov	cl, byte ptr [r11 + 0xb0]
	lea	rdi, [rdi]
	shr	cl, 2
	mov	rbp, rbp
	and	cl, 1
	nop	
	mov	byte ptr [rsp + 0x1c9], cl
	mov	rbp, rbp
	mov	cl, byte ptr [r11 + 0xb0]
	shr	cl, 3
	lea	rdi, [rdi]
	and	cl, 1
	lea	rdi, [rdi]
	cmp	rax, 2
	mov	byte ptr [rsp + 0x1ca], cl
	mov	qword ptr [rsp + 0x1a8], rdx
	nop	
	mov	qword ptr [rsp + 0x1a0], rdx
	nop	
	jl	.label_818
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x260], r11
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	rsp, rsp
	mov	r12d, 0xc
	cmp	r13, rax
	lea	rsi, [rsi]
	ja	.label_803
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x118], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x130], rdx
	mov	r14, rdi
	lea	rsi, [r13*4]
	xor	edi, edi
	mov	rbp, rbp
	call	realloc
	nop	
	test	rax, rax
	je	.label_803
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x150], rax
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x260]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x130]
	mov	r10, qword ptr [rsp + 0x118]
.label_818:
	mov	qword ptr [rsp + 0x130], rdx
	mov	al, 1
	lea	rsi, [rsi]
	test	bl, bl
	je	.label_907
	mov	r14, r10
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x260], r11
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, r13
	lea	rsi, [rsi]
	call	realloc
	mov	rsp, rsp
	mov	r12d, 0xc
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_803
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x260]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	r10, r14
.label_907:
	mov	qword ptr [rsp + 0x180], r13
	lea	rcx, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x1c0], rcx
	mov	rcx, qword ptr [r11 + 0xb0]
	mov	dl, cl
	shr	dl, 4
	and	dl, 1
	mov	byte ptr [rsp + 0x1ce], dl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_929
	shr	rcx, 0x20
	mov	qword ptr [rsp + 0x148], r10
	xor	edx, edx
	mov	rsp, rsp
	cmp	ecx, 1
	mov	rbp, rbp
	cmovle	rdx, qword ptr [rsp + 0x130]
.label_929:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x118], r10
	nop	
	mov	qword ptr [rsp + 0x170], rdx
	mov	qword ptr [rsp + 0x178], rdx
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x1a8], rax
	mov	qword ptr [rsp + 0x1a0], rax
	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	mov	qword ptr [rsp + 0xe8], rdi
	shr	al, 7
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x1cd], al
	mov	rbx, qword ptr [r11 + 0x98]
	mov	qword ptr [rsp + 0x260], r11
	lea	r14, [rbx + rbx]
	mov	eax, dword ptr [rsp + 0x2b0]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1e0], eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], -1
	mov	rsp, rsp
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_946
	mov	r12d, 0xc
	mov	rbp, rbp
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_803
	lea	rsi, [rsi]
	shl	rbx, 4
	lea	rdi, [rdi]
	lea	rdi, [rbx + rbx*4]
	lea	rdi, [rdi]
	call	malloc
	mov	rsp, rsp
	mov	rbp, rax
	nop	
	mov	qword ptr [rsp + 0x218], rbp
	mov	rdi, rbx
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x238], rax
	mov	rbp, rbp
	test	rbp, rbp
	nop	
	je	.label_803
	test	rax, rax
	mov	rbp, rbp
	je	.label_803
.label_946:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x2a0]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x248], rax
	mov	qword ptr [rsp + 0x210], r14
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x220], 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x230], r14
	nop	
	cmp	rax, 1
	mov	rax, qword ptr [rsp + 0x260]
	ja	.label_987
	mov	rbx, qword ptr [rax + 0xb0]
	lea	rsi, [rsi]
	test	bl, 2
	jne	.label_987
	shr	rbx, 0x20
	mov	qword ptr [rsp + 0x1f8], 0
	lea	rdi, [rdi]
	jmp	.label_997
.label_987:
	mov	r12d, 0xc
	lea	rsi, [rsi]
	movabs	rax, 0x1ffffffffffffffe
	cmp	r13, rax
	ja	.label_803
	lea	rdi, [r13*8 + 8]
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rsp + 0x1f8], rax
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_803
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x260]
	mov	ebx, dword ptr [rax + 0xb4]
.label_997:
	nop	
	mov	qword ptr [rsp + 0x250], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x260], rax
	mov	qword ptr [rsp + 0xa8], r15
	mov	eax, dword ptr [rsp + 0x2b0]
	lea	eax, [rax + rax]
	lea	rsi, [rsi]
	and	eax, 2
	lea	rdi, [rdi]
	xor	eax, 6
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1b0], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x28]
	cmp	rsi, r15
	mov	rsp, rsp
	mov	r13, r15
	cmovle	r13, rsi
	mov	rbp, rsi
	cmovl	rbp, r15
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x138], rbp
	mov	rbp, rbp
	mov	ecx, 8
	mov	r14, qword ptr [rsp + 0x128]
	test	r14, r14
	mov	rdi, qword ptr [rsp + 0x108]
	nop	
	je	.label_871
	cmp	ebx, 1
	nop	
	je	.label_851
	mov	ecx, 0x400000
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	jne	.label_855
	mov	rdx, qword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_855
.label_851:
	lea	rsi, [rsi]
	mov	r8d, 4
.label_855:
	test	rdi, rdi
	setne	cl
	cmp	r15, rsi
	lea	rdi, [rdi]
	setle	dl
	lea	rdi, [rdi]
	movzx	ecx, cl
	nop	
	movzx	edx, dl
	lea	ecx, [rcx + rdx*2]
	lea	rdi, [rdi]
	or	ecx, r8d
.label_871:
	mov	qword ptr [rsp + 0x250], rbx
	mov	rbp, rbp
	mov	rbx, rdi
	xor	eax, eax
	cmp	r15, rsi
	setle	byte ptr [rsp + 0x247]
	lea	rdx, [rsp + 0xa8]
	cmovg	rdx, rax
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x110], rax
	lea	rsi, [rsi]
	cmp	rsi, r15
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	rdx, -1
	cmovge	rdx, rax
	mov	qword ptr [rsp + 0x40], rdx
	add	ecx, -4
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa0], rcx
	mov	rsp, rsp
	jmp	.label_813
.label_802:
	mov	rax, qword ptr [rsp + 0x250]
	cmp	eax, 1
	je	.label_868
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x170]
	test	rax, rax
	je	.label_868
	mov	rax, qword ptr [rsp + 0x150]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], -1
	lea	rdi, [rdi]
	je	.label_901
.label_868:
	nop	
	mov	dword ptr [rsp + 0x220], 0
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x200]
	nop	
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x1d8]
	mov	rdi, qword ptr [rsp + 0x188]
	mov	dword ptr [rsp + 0xf4], 0
	mov	r15, qword ptr [r12 + 0x48]
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x68], 0
	lea	rsi, [rsi]
	js	.label_908
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x250]
	jmp	.label_919
.label_908:
	mov	rbp, rbp
	test	rdi, rdi
	jle	.label_926
	lea	rax, [rdi - 1]
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x198], rax
	mov	rbp, rbp
	je	.label_840
	cmp	dword ptr [rsp + 0x1d0], 2
	lea	rsi, [rsi]
	jl	.label_933
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x150]
	mov	rsp, rsp
	mov	rcx, rdi
	nop	dword ptr [rax + rax]
.label_943:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	mov	rbp, rbp
	jne	.label_939
	mov	rsp, rsp
	dec	rcx
	mov	rsp, rsp
	jg	.label_943
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1b0]
	mov	rsp, rsp
	jmp	.label_944
.label_933:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x1c0]
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
	nop	
	mov	cl, al
	mov	rbp, rbp
	shr	cl, 6
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	bt	rcx, rax
	nop	
	jb	.label_949
	mov	rsp, rsp
	movzx	eax, al
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	je	.label_959
	mov	rbx, qword ptr [rsp + 0x250]
	jmp	.label_919
.label_939:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x1ce], 0
	lea	rsi, [rsi]
	jne	.label_964
.label_957:
	cmp	ebx, 0xa
	jne	.label_966
.label_959:
	mov	ecx, 2
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x1cd], 0
	jne	.label_944
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_944
.label_966:
	mov	rbx, qword ptr [rsp + 0x250]
	lea	rsi, [rsi]
	jmp	.label_919
.label_926:
	mov	ecx, dword ptr [rsp + 0x1b0]
	jmp	.label_944
.label_840:
	mov	ecx, dword ptr [rsp + 0x1e0]
	mov	rbp, rbp
	and	ecx, 2
	mov	rsp, rsp
	xor	ecx, 0xa
.label_944:
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_949
	nop	
	test	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x250]
	nop	
	je	.label_919
	mov	rsi, rbx
	mov	rbp, rbp
	mov	eax, ecx
	and	eax, 4
	sete	bl
	mov	edx, ecx
	and	edx, 2
	je	.label_982
	nop	
	test	bl, bl
	nop	
	jne	.label_982
	mov	rbp, rbp
	mov	r15, qword ptr [r12 + 0x60]
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rbp, rbp
	jmp	.label_919
.label_982:
	mov	rbp, rbp
	test	edx, edx
	jne	.label_989
	mov	qword ptr [rsp + 0x128], rdi
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 0x48]
	test	eax, eax
	mov	rbx, rsi
	lea	rsi, [rsi]
	je	.label_878
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x50]
	nop	
	lea	rdi, [rsp + 0xf4]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbp, rbp
	call	re_acquire_state_context
	lea	rdi, [rdi]
	mov	r15, rax
.label_878:
	nop	
	mov	rdi, qword ptr [rsp + 0x128]
	jmp	.label_919
.label_989:
	nop	
	mov	r15, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	mov	rbx, rsi
	jmp	.label_919
.label_964:
	mov	qword ptr [rsp + 0x128], rdi
	mov	rbp, rbp
	mov	edi, ebx
	mov	rbp, rbp
	call	iswalnum
	mov	rdi, qword ptr [rsp + 0x128]
	cmp	ebx, 0x5f
	lea	rdi, [rdi]
	je	.label_949
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_957
.label_949:
	mov	r15, qword ptr [r12 + 0x50]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x250]
.label_919:
	test	r15, r15
	mov	rbp, rbp
	je	.label_811
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	test	rax, rax
	mov	cl, byte ptr [rsp + 0x247]
	mov	rbp, rbp
	mov	dl, cl
	mov	dword ptr [rsp + 0xf8], edx
	je	.label_814
	mov	rbp, rbp
	mov	qword ptr [rax + rdi*8], r15
	cmp	qword ptr [r12 + 0x98], 0
	mov	rsp, rsp
	mov	al, cl
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xf8], eax
	mov	rbp, rbp
	jne	.label_826
.label_814:
	mov	byte ptr [rsp + 0x247], cl
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x68]
	mov	rbx, -1
	test	al, 0x10
	mov	ecx, 0
	lea	rsi, [rsi]
	jne	.label_838
.label_822:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x188]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
.label_986:
	mov	qword ptr [rsp + 0x30], rdx
	cmp	qword ptr [rsp + 0x1a8], rax
	lea	rsi, [rsi]
	jle	.label_853
	test	rcx, rcx
	sete	cl
	or	cl, byte ptr [rsp + 0x3f]
	mov	byte ptr [rsp + 0x97], cl
	nop	
	jmp	.label_858
.label_874:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe0], rbx
	mov	qword ptr [rsp + 0x258], r13
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x10], 0
	jle	.label_863
	mov	rdi, qword ptr [rsp + 0x1d8]
	lea	rsi, [rsi]
	xor	r12d, r12d
	jmp	.label_808
.label_892:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x188]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_873
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r15
	lea	rdx, [rax - 1]
	lea	rsi, [rsi]
	mov	ecx, 0xa
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x198], rdx
	je	.label_839
	cmp	dword ptr [rsp + 0x1d0], 2
	jl	.label_887
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x150]
.label_893:
	nop	
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_891
	dec	rax
	lea	rsi, [rsi]
	jg	.label_893
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x1b0]
	jmp	.label_839
.label_969:
	cmp	qword ptr [rsp + 0x28], r15
	mov	rdi, qword ptr [rsp + 0x128]
	je	.label_899
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xf8], 0
.label_899:
	mov	rsp, rsp
	cmove	rdi, r12
	mov	rbp, rbp
	jmp	.label_906
.label_887:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x148]
	mov	rcx, qword ptr [rsp + 0x1c0]
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	nop	
	shr	dl, 6
	mov	rsp, rsp
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	bt	rdx, rax
	jb	.label_839
	lea	rdi, [rdi]
	xor	ecx, ecx
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0xa
	nop	
	jne	.label_839
	jmp	.label_921
.label_891:
	cmp	byte ptr [rsp + 0x1ce], 0
	mov	rsp, rsp
	jne	.label_922
.label_845:
	lea	rsi, [rsi]
	xor	ecx, ecx
	cmp	ebx, 0xa
	nop	
	jne	.label_839
.label_921:
	lea	rsi, [rsi]
	mov	ecx, 2
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x1cd], 0
	jne	.label_839
	xor	ecx, ecx
	jmp	.label_839
.label_873:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	mov	ecx, dword ptr [rsp + 0x1b0]
.label_839:
	mov	rsp, rsp
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + rcx*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0xe0]
	jmp	.label_828
.label_978:
	mov	r15, rdi
	mov	edi, ebx
	mov	rsp, rsp
	call	iswalnum
	cmp	ebx, 0x5f
	nop	
	mov	ecx, 1
	mov	rbp, rbp
	je	.label_947
	lea	rsi, [rsi]
	test	eax, eax
	mov	rdi, r15
	mov	r15, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	je	.label_951
	jmp	.label_823
.label_947:
	mov	rdi, r15
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x28]
	jmp	.label_823
.label_808:
	mov	rax, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rdi]
	mov	rbp, rsi
	shl	rbp, 4
	mov	rbp, rbp
	mov	r13d, dword ptr [rax + rbp + 8]
	test	r13d, 0x100000
	mov	rsp, rsp
	je	.label_832
	shr	r13d, 8
	test	r13w, 0x3ff
	lea	rdi, [rdi]
	je	.label_844
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x188]
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_900
	cmp	qword ptr [rsp + 0x198], rax
	mov	rbp, rbp
	je	.label_971
	cmp	dword ptr [rsp + 0x1d0], 2
	mov	rsp, rsp
	jl	.label_975
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x150]
	inc	rax
.label_980:
	mov	rbp, rbp
	mov	ebx, dword ptr [rcx + rax*4 - 4]
	cmp	ebx, -1
	jne	.label_979
	mov	rsp, rsp
	dec	rax
	lea	rsi, [rsi]
	test	rax, rax
	jg	.label_980
	mov	ecx, dword ptr [rsp + 0x1b0]
	lea	rdi, [rdi]
	jmp	.label_866
.label_975:
	nop	
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x1c0]
	nop	
	movzx	eax, byte ptr [rcx + rax]
	nop	
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	xor	ecx, ecx
	bt	rdx, rax
	jae	.label_985
	mov	ecx, 1
	lea	rdi, [rdi]
	xor	edx, edx
	jmp	.label_820
.label_979:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x1ce], 0
	lea	rsi, [rsi]
	jne	.label_992
.label_812:
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	ebx, 0xa
	je	.label_914
	jmp	.label_866
.label_985:
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	nop	
	jne	.label_866
.label_914:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x1cd], 0
	jne	.label_866
	xor	ecx, ecx
	jmp	.label_866
.label_900:
	mov	ecx, dword ptr [rsp + 0x1b0]
	jmp	.label_866
.label_971:
	mov	ecx, dword ptr [rsp + 0x1e0]
	lea	rdi, [rdi]
	and	ecx, 2
	xor	ecx, 0xa
.label_866:
	nop	
	mov	eax, ecx
	nop	
	and	eax, 1
	sete	dl
	test	r13b, 4
	lea	rdi, [rdi]
	je	.label_820
	test	eax, eax
	je	.label_832
	lea	rdi, [rdi]
	jmp	.label_820
.label_992:
	mov	qword ptr [rsp + 0x48], rsi
	mov	qword ptr [rsp + 8], rdi
	mov	edi, ebx
	nop	
	call	iswalnum
	xor	edx, edx
	cmp	ebx, 0x5f
	mov	ecx, 1
	lea	rsi, [rsi]
	je	.label_810
	test	eax, eax
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	je	.label_812
	lea	rdi, [rdi]
	jmp	.label_820
.label_810:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x48]
.label_820:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax + rbp + 8]
	mov	rbp, rbp
	test	dl, dl
	jne	.label_827
	mov	edx, eax
	mov	rsp, rsp
	and	edx, 0x800
	jne	.label_832
.label_827:
	mov	rsp, rsp
	test	cl, 2
	jne	.label_837
	nop	
	mov	edx, eax
	and	edx, 0x2000
	lea	rdi, [rdi]
	jne	.label_832
.label_837:
	nop	
	test	cl, 8
	jne	.label_844
	nop	
	shr	eax, 8
	mov	rsp, rsp
	test	al, al
	js	.label_832
.label_844:
	mov	rcx, qword ptr [rsp + 0x188]
	mov	rsp, rsp
	mov	rbx, rdi
	nop	
	lea	rdx, [rsp + 0x140]
	mov	rbp, rsi
	call	check_node_accept_bytes
	mov	rcx, rbp
	mov	rdi, rbx
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_832
	mov	qword ptr [rsp + 0x48], rcx
	lea	rdi, [rdi]
	mov	rbp, rdi
	mov	rbp, rbp
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rsi, qword ptr [rsp + 0x188]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x220]
	lea	rdi, [rdi]
	cmp	ecx, eax
	cmovl	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x220], ecx
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x200]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x180]
	nop	
	mov	rax, qword ptr [rsp + 0x198]
	nop	
	cmp	rcx, rsi
	jg	.label_861
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_880
.label_861:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x170]
	cmp	rcx, rsi
	lea	rdi, [rdi]
	jg	.label_882
	cmp	rcx, rax
	jge	.label_882
.label_880:
	mov	rbp, rbp
	mov	r13, rsi
	lea	esi, [r13 + 1]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x140]
	mov	rsp, rsp
	call	extend_buffers
	mov	rsp, rsp
	mov	rsi, r13
	test	eax, eax
	nop	
	jne	.label_895
.label_882:
	mov	rdx, rsi
	nop	
	sub	rdx, rbx
	mov	rbp, rbp
	jle	.label_898
	mov	rax, qword ptr [rsp + 0x1f8]
	lea	rdi, [rax + rbx*8 + 8]
	shl	rdx, 3
	mov	rbx, rsi
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	call	memset
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x200], rsi
.label_898:
	mov	dword ptr [rsp + 0xc8], 0
	lea	rdi, [rdi]
	mov	r13, rbp
	nop	
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	mov	rsp, rsp
	add	rdx, qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax + rsi*8]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_911
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp + 0x50]
	lea	rdi, [rsp + 0x50]
	mov	rbp, rbp
	call	re_node_set_init_union
	mov	rbp, rbp
	mov	rsi, rbx
	mov	dword ptr [rsp + 0xc8], eax
	test	eax, eax
	je	.label_931
	jmp	.label_889
.label_911:
	nop	
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	nop	
	movups	xmm0, xmmword ptr [rdx]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x50], xmm0
.label_931:
	nop	
	test	rsi, rsi
	mov	rsp, rsp
	jle	.label_998
	mov	rsp, rsp
	lea	rax, [rsi - 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x198], rax
	lea	rdi, [rsp + 0xc8]
	je	.label_890
	cmp	dword ptr [rsp + 0x1d0], 2
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x28]
	jl	.label_876
	nop	
	mov	rax, qword ptr [rsp + 0x150]
	mov	rsp, rsp
	mov	rcx, rsi
.label_958:
	nop	
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	mov	rbp, rbp
	cmp	ebx, -1
	mov	rsp, rsp
	jne	.label_955
	dec	rcx
	lea	rdi, [rdi]
	jg	.label_958
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rsi
	mov	ecx, dword ptr [rsp + 0x1b0]
	lea	rdi, [rdi]
	jmp	.label_823
.label_876:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rsi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x1c0]
	movzx	eax, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_823
	xor	ecx, ecx
	mov	rbp, rbp
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_823
	jmp	.label_977
.label_955:
	mov	qword ptr [rsp + 0x48], rsi
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x1ce], 0
	jne	.label_978
.label_951:
	nop	
	xor	ecx, ecx
	nop	
	cmp	ebx, 0xa
	nop	
	jne	.label_823
.label_977:
	mov	ecx, 2
	cmp	byte ptr [rsp + 0x1cd], 0
	mov	rsp, rsp
	jne	.label_823
	xor	ecx, ecx
	jmp	.label_823
.label_998:
	nop	
	mov	qword ptr [rsp + 0x48], rsi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x1b0]
	lea	rdi, [rsp + 0xc8]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x28]
	nop	
	jmp	.label_823
.label_890:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rsi
	mov	ecx, dword ptr [rsp + 0x1e0]
	mov	rsp, rsp
	and	ecx, 2
	lea	rsi, [rsi]
	xor	ecx, 0xa
	mov	r15, qword ptr [rsp + 0x28]
.label_823:
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rbp, rbp
	lea	rdx, [rsp + 0x50]
	lea	rdi, [rdi]
	call	re_acquire_state_context
	test	rbp, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x1f8]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	qword ptr [rcx + rdx*8], rax
	je	.label_864
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rbx, rdx
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rdx, rbx
.label_864:
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	rbp, rbp
	cmp	qword ptr [rax + rdx*8], 0
	mov	rdi, r13
	mov	rbp, rbp
	jne	.label_832
	nop	
	mov	eax, dword ptr [rsp + 0xc8]
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1001
.label_832:
	lea	rsi, [rsi]
	inc	r12
	mov	rbp, rbp
	cmp	r12, qword ptr [r15 + 0x10]
	jl	.label_808
.label_863:
	mov	dword ptr [rsp + 0xf4], 0
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_807
.label_1001:
	mov	qword ptr [rsp + 0x28], r15
	lea	rdi, [rdi]
	jmp	.label_889
.label_895:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r15
	mov	dword ptr [rsp + 0xc8], eax
.label_889:
	mov	dword ptr [rsp + 0xf4], eax
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbx, qword ptr [rsp + 0xe0]
	jmp	.label_828
.label_922:
	mov	edi, ebx
	call	iswalnum
	mov	rbp, rbp
	cmp	ebx, 0x5f
	mov	rsp, rsp
	mov	ecx, 1
	lea	rsi, [rsi]
	je	.label_839
	test	eax, eax
	je	.label_845
	mov	rsp, rsp
	jmp	.label_839
.label_858:
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x128], rdi
	lea	rdi, [rdi]
	lea	rbp, [rax + 1]
	nop	
	mov	rdx, qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x198]
	cmp	rbp, rdx
	lea	rdi, [rdi]
	jl	.label_849
	cmp	rdx, rcx
	mov	rsp, rsp
	jl	.label_860
.label_849:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x170]
	cmp	rbp, rdx
	jl	.label_862
	cmp	rdx, rcx
	jge	.label_862
.label_860:
	add	eax, 2
	lea	rdi, [rsp + 0x140]
	mov	esi, eax
	call	extend_buffers
	mov	dword ptr [rsp + 0xf4], eax
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_867
.label_862:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rbp
	lea	rsi, [rsi]
	test	byte ptr [r15 + 0x68], 0x20
	nop	
	jne	.label_874
.label_807:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x188]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x188], rcx
	mov	rcx, qword ptr [rsp + 0x148]
	lea	rsi, [rsi]
	movzx	ebp, byte ptr [rcx + rax]
.label_902:
	nop	
	mov	rax, qword ptr [r15 + 0x58]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_888
	mov	qword ptr [rsp + 0xe0], rbx
	mov	r12, qword ptr [r15 + 0x60]
	mov	rbp, rbp
	test	r12, r12
	nop	
	jne	.label_892
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x1d8]
	mov	rsi, r15
	call	build_trtable
	test	al, al
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0xe0]
	jne	.label_902
	nop	
	mov	qword ptr [rsp + 0x28], r15
	mov	dword ptr [rsp + 0xf4], 0xc
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_828
.label_888:
	mov	qword ptr [rsp + 0x28], r15
	mov	r15, qword ptr [rax + rbp*8]
.label_828:
	cmp	qword ptr [rsp + 0x1f8], 0
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	je	.label_912
	nop	
	lea	rdi, [rsp + 0xf4]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x140]
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rsi, [rsi]
	call	merge_state_with_log
	mov	r15, rax
.label_912:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x138]
	mov	rbp, rbp
	test	r15, r15
	jne	.label_924
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0xf4], 0
	jne	.label_859
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	test	rax, rax
	lea	rsi, [rsi]
	setne	cl
	nop	
	and	cl, byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 1
	je	.label_932
	jmp	.label_940
.label_962:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	mov	rdi, rbp
.label_932:
	mov	rdx, qword ptr [rsp + 0x188]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x200]
	nop	word ptr [rax + rax]
.label_952:
	nop	
	cmp	rdx, rcx
	jge	.label_950
	mov	rsp, rsp
	lea	rsi, [rdx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x188], rsi
	nop	
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	nop	
	je	.label_952
	mov	rbp, rdi
	xor	edx, edx
	lea	rdi, [rsp + 0xf4]
	lea	rsi, [rsp + 0x140]
	call	merge_state_with_log
	mov	r15, rax
	nop	
	test	r15, r15
	jne	.label_961
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xf4]
	nop	
	test	eax, eax
	je	.label_962
.label_961:
	mov	rsp, rsp
	test	r15, r15
	mov	rbp, rbp
	je	.label_965
.label_924:
	mov	eax, dword ptr [rsp + 0xf8]
	mov	rbp, rbp
	test	al, 1
	jne	.label_969
	mov	rdi, qword ptr [rsp + 0x128]
.label_906:
	mov	al, byte ptr [r15 + 0x68]
	test	al, 0x10
	je	.label_973
	mov	rbp, rbp
	test	al, al
	nop	
	jns	.label_974
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x188]
	mov	rsp, rsp
	mov	rbp, rdi
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	call	check_halt_state_context
	lea	rsi, [rsi]
	mov	rdi, rbp
	test	rax, rax
	mov	rbp, rbp
	jne	.label_974
.label_973:
	mov	rax, qword ptr [rsp + 0x188]
	cmp	qword ptr [rsp + 0x1a8], rax
	jg	.label_858
	jmp	.label_853
.label_974:
	mov	rax, qword ptr [rsp + 0x188]
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x3f], 0
	mov	rsp, rsp
	mov	rbx, rax
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	edx, 0
	mov	rbp, qword ptr [rsp + 0x138]
	nop	
	jne	.label_986
	jmp	.label_831
.label_950:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x128]
.label_853:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_994
	mov	rbp, rbp
	add	qword ptr [rax], rdi
	lea	rdi, [rdi]
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_865
.label_994:
	nop	
	mov	rax, rbx
.label_865:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x138]
.label_831:
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x108]
	je	.label_852
	mov	rbp, rbp
	mov	r12d, 0xc
	cmp	rax, -2
	lea	rdi, [rdi]
	je	.label_803
.label_1000:
	mov	qword ptr [rsp + 0x138], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x258], r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x108], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1e8], rax
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0xe8]
	mov	rsp, rsp
	mov	cl, byte ptr [rbx + 0x38]
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x248], 2
	mov	rbp, qword ptr [rsp + 0x260]
	jb	.label_976
	mov	dl, cl
	and	dl, 0x10
	lea	rdi, [rdi]
	je	.label_824
.label_976:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_829
.label_824:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x1f8]
	mov	rsi, qword ptr [rcx + rax*8]
	nop	
	lea	rdi, [rsp + 0x140]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	check_halt_state_context
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1f0], rax
	nop	
	mov	cl, byte ptr [rbx + 0x38]
.label_829:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x248], 2
	mov	r9, qword ptr [rsp + 0x98]
	jb	.label_846
	and	cl, 0x10
	nop	
	jne	.label_846
	mov	rbp, rbp
	test	byte ptr [rbp + 0xb0], 1
	jne	.label_854
.label_846:
	mov	rsp, rsp
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_842
.label_854:
	mov	rbp, qword ptr [rsp + 0x1e8]
	mov	rsp, rsp
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_859
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rbx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x1d8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x28], rax
	lea	rbx, [rbp*8 + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	mov	r12, rax
	mov	rsp, rsp
	test	r12, r12
	mov	r15d, 0
	nop	
	je	.label_877
	cmp	qword ptr [r13 + 0x98], 0
	lea	rdi, [rdi]
	je	.label_883
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf8], r13
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	r15, r15
	mov	rbp, rbp
	je	.label_825
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	rdx, rbx
	call	memset
	nop	
	mov	qword ptr [rsp + 0x50], r12
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], r15
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rbp
	mov	rbp, rbp
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	lea	rdi, [rsp + 0x140]
	lea	rsi, [rsp + 0x50]
	mov	rsp, rsp
	call	sift_states_backward
	mov	rbx, r12
	mov	qword ptr [rsp + 0x128], rbx
	mov	r12d, eax
	test	r12d, r12d
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x250]
	mov	r13, qword ptr [rsp + 0x258]
	jne	.label_915
.label_920:
	mov	rsi, qword ptr [rbx]
	test	rsi, rsi
	mov	rax, rbx
	jne	.label_817
	lea	rsi, [rsi]
	cmp	qword ptr [r15], 0
	mov	esi, 0
	jne	.label_817
	test	rbp, rbp
	jle	.label_836
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x1f8]
	nop	
	dec	rbp
	nop	word ptr cs:[rax + rax]
.label_942:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_937
	nop	
	test	byte ptr [rsi + 0x68], 0x10
	nop	
	jne	.label_916
.label_937:
	lea	rcx, [rbp - 1]
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, 2
	mov	rsp, rsp
	mov	rbp, rcx
	mov	rsp, rsp
	jge	.label_942
	lea	rsi, [rsi]
	jmp	.label_836
.label_916:
	mov	rsp, rsp
	lea	r12, [rsp + 0x140]
	mov	rdi, r12
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	check_halt_state_context
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r15
	call	memset
	mov	rbx, qword ptr [rsp + 0x128]
	mov	qword ptr [rsp + 0x50], rbx
	nop	
	mov	qword ptr [rsp + 0x58], r15
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rbp
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsp + 0x50]
	lea	rsi, [rsi]
	call	sift_states_backward
	mov	rdx, qword ptr [rsp + 0x250]
	lea	rdi, [rdi]
	mov	r12d, eax
	test	r12d, r12d
	mov	rbp, rbp
	je	.label_920
	jmp	.label_915
.label_883:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], r12
	mov	qword ptr [rsp + 0x128], r12
	mov	qword ptr [rsp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rbp
	lea	rax, [rsp + 0x70]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x140]
	lea	rsi, [rsp + 0x50]
	mov	rsp, rsp
	call	sift_states_backward
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	mov	rbp, rbp
	mov	r15d, 0
	mov	rdx, qword ptr [rsp + 0x250]
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, rbp
	jne	.label_915
	mov	rax, qword ptr [rsp + 0x128]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	r15d, 0
	nop	
	jne	.label_816
.label_836:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x250], rdx
	mov	rdi, qword ptr [rsp + 0x128]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rbx, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x138]
.label_852:
	lea	rdi, [rsp + 0x140]
	call	match_ctx_clean
.label_901:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0xa8]
	add	r15, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0xa8], r15
	cmp	r15, r13
	mov	r12d, 1
	jl	.label_803
	nop	
	cmp	rbp, r15
	jge	.label_813
	lea	rsi, [rsi]
	jmp	.label_803
.label_838:
	test	al, al
	mov	rsp, rsp
	js	.label_819
	cmp	byte ptr [rsp + 0x3f], 0
	mov	rbp, rbp
	mov	rbx, rdi
	mov	ecx, 1
	jne	.label_822
	mov	rsp, rsp
	mov	rax, rdi
	nop	
	jmp	.label_831
.label_826:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x138], rbp
	mov	qword ptr [rsp + 0x250], rbx
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	jle	.label_833
	nop	
	mov	rbp, qword ptr [rsp + 0x1d8]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_843
.label_819:
	lea	rsi, [rsi]
	mov	r12, rdi
	mov	rbp, rbp
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	nop	
	mov	rdx, r12
	call	check_halt_state_context
	mov	rbp, rbp
	cmp	rax, 1
	sbb	rdx, rdx
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	setne	cl
	movzx	ecx, cl
	lea	rsi, [rsi]
	or	al, byte ptr [rsp + 0x3f]
	mov	rbp, rbp
	je	.label_857
	mov	rsp, rsp
	or	rdx, r12
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rbx, rdx
	jmp	.label_822
.label_857:
	lea	rdi, [rdi]
	mov	rax, r12
	nop	
	jmp	.label_831
.label_940:
	mov	qword ptr [rsp + 0x138], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x128]
	lea	rsi, [rsi]
	jmp	.label_853
.label_817:
	test	rbp, rbp
	js	.label_960
	nop	
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_897
.label_805:
	mov	rax, qword ptr [rsp + 0x128]
	mov	rsi, qword ptr [rax + rbx*8 + 8]
	inc	rbx
.label_897:
	nop	
	mov	rdx, qword ptr [r15 + rbx*8]
	nop	
	test	rsi, rsi
	je	.label_884
	nop	
	mov	qword ptr [rsp + 0x128], rax
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_927
	mov	rsp, rsp
	add	rsi, 8
	mov	rbp, rbp
	add	rdx, 8
	lea	rdi, [rdi]
	lea	r13, [rsp + 0xc8]
	mov	rdi, r13
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0xf4], r12d
	nop	
	test	r12d, r12d
	jne	.label_835
	lea	rdi, [rsp + 0xf4]
	mov	rsi, qword ptr [rsp + 0xf8]
	lea	rdi, [rdi]
	mov	rdx, r13
	nop	
	call	re_acquire_state
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x128]
	mov	rbp, rbp
	mov	qword ptr [rcx + rbx*8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xd8]
	call	free
	mov	r12d, dword ptr [rsp + 0xf4]
	test	r12d, r12d
	je	.label_927
	jmp	.label_835
.label_884:
	mov	rbp, rbp
	mov	qword ptr [rax + rbx*8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], rax
.label_927:
	mov	rsp, rsp
	cmp	rbx, rbp
	jl	.label_805
	lea	rsi, [rsi]
	jmp	.label_925
.label_954:
	nop	
	mov	rdi, qword ptr [rsp + 0x238]
	mov	rsp, rsp
	mov	rsi, r13
	shl	rsi, 4
	lea	rsi, [rsi]
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_881
	lea	rsi, [rsi]
	add	r13, r13
	mov	qword ptr [rsp + 0x238], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x230], r13
	jmp	.label_935
.label_843:
	mov	rcx, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rcx + rbx*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp]
	mov	rbp, rbp
	mov	rdx, r12
	shl	rdx, 4
	movzx	esi, byte ptr [rcx + rdx + 8]
	cmp	esi, 8
	jne	.label_941
	mov	rcx, qword ptr [rcx + rdx]
	nop	
	cmp	rcx, 0x3f
	jg	.label_941
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 0xa0]
	bt	rdx, rcx
	jae	.label_941
	mov	qword ptr [rsp + 0x128], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x258], r13
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x228]
	nop	
	cmp	r13, qword ptr [rsp + 0x230]
	je	.label_954
.label_935:
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 0x30
	lea	rdi, [rdi]
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x228]
	mov	rdx, qword ptr [rsp + 0x238]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x238]
	mov	rax, qword ptr [rax + rcx*8]
	nop	
	test	rax, rax
	je	.label_881
	mov	rbp, rbp
	mov	qword ptr [rax + 8], r12
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x228], rcx
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [r15 + 0x10]
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x128]
.label_941:
	lea	rsi, [rsi]
	inc	rbx
	cmp	rbx, rax
	jl	.label_843
.label_833:
	lea	rsi, [rsi]
	mov	rbp, r13
	mov	dword ptr [rsp + 0xf4], 0
	test	byte ptr [r15 + 0x68], 0x40
	jne	.label_984
	nop	
	mov	dword ptr [rsp + 0xf8], 0
	nop	
	mov	r13, rbp
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x138]
	mov	cl, byte ptr [rsp + 0x247]
	jmp	.label_814
.label_984:
	mov	rbp, rbp
	mov	r12, rdi
	nop	
	lea	rsi, [r15 + 8]
	nop	
	lea	rdi, [rsp + 0x140]
	call	transit_state_bkref
	mov	dword ptr [rsp + 0xf4], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_885
	mov	dword ptr [rsp + 0xf8], 0
	mov	rsp, rsp
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x138]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rsp + 0x247]
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	jmp	.label_814
.label_881:
	mov	eax, 0xc
	mov	rbx, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x138]
	lea	rdi, [rdi]
	jmp	.label_1000
.label_960:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x128], rax
.label_925:
	xor	r12d, r12d
.label_835:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	test	r12d, r12d
	mov	rbp, rbp
	mov	r15d, 0
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x250]
	nop	
	mov	r13, qword ptr [rsp + 0x258]
	je	.label_816
.label_915:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x258], r13
	mov	r13, rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x128]
	call	free
	mov	rbp, rbp
	mov	rdi, r15
	call	free
	test	r12d, r12d
	mov	rbp, qword ptr [rsp + 0x260]
	mov	r9, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	je	.label_842
	cmp	r12d, 1
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x250], r13
	nop	
	mov	r13, qword ptr [rsp + 0x258]
	mov	rbp, qword ptr [rsp + 0x138]
	lea	rdi, [rdi]
	je	.label_852
	mov	rbp, rbp
	jmp	.label_803
.label_885:
	cdqe	
	mov	rbp, rbp
	mov	r13, rbp
	mov	rsp, rsp
	jmp	.label_865
.label_965:
	mov	rdi, qword ptr [rsp + 0x128]
	jmp	.label_853
.label_813:
	mov	rax, qword ptr [rsp + 0xa0]
	cmp	eax, 4
	ja	.label_869
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_875]]
.label_2708:
	cmp	r15, r13
	lea	rdi, [rdi]
	jge	.label_870
	mov	rax, r15
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rdx, qword ptr [rsp + 0x118]
	nop	
	jmp	.label_879
.label_2710:
	nop	
	cmp	r15, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x118]
	lea	rsi, [rsi]
	jge	.label_886
.label_896:
	movzx	eax, byte ptr [rcx + r15]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + rax]
	mov	rbp, rbp
	cmp	byte ptr [r14 + rax], 0
	mov	rsp, rsp
	jne	.label_886
	nop	
	inc	r15
	nop	
	mov	qword ptr [rsp + 0xa8], r15
	cmp	r15, rbp
	nop	
	jl	.label_896
	mov	rbp, rbp
	jmp	.label_886
.label_869:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x168]
	nop	
	jmp	.label_904
	nop	dword ptr [rax]
.label_945:
	lea	rsi, [rsi]
	add	r15, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0xa8], r15
	mov	rbp, rbp
	cmp	r15, r13
	lea	rdi, [rdi]
	mov	r12d, 1
	lea	rsi, [rsi]
	jl	.label_803
	cmp	r15, rbp
	lea	rdi, [rdi]
	jle	.label_904
	lea	rdi, [rdi]
	jmp	.label_803
.label_934:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x2b0]
	call	re_string_reconstruct
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_803
	mov	r15, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x168]
	mov	rcx, r15
	sub	rcx, rax
	jmp	.label_928
	nop	
.label_904:
	lea	rdi, [rdi]
	mov	rcx, r15
	sub	rcx, rax
	nop	
	cmp	rcx, qword ptr [rsp + 0x178]
	mov	rbp, rbp
	jae	.label_934
.label_928:
	mov	rdx, qword ptr [rsp + 0x130]
	nop	
	cmp	r15, rdx
	lea	rsi, [rsi]
	mov	edx, 0
	jge	.label_938
	mov	rdx, qword ptr [rsp + 0x148]
	mov	rsp, rsp
	movzx	edx, byte ptr [rdx + rcx]
.label_938:
	nop	
	cmp	byte ptr [r14 + rdx], 0
	je	.label_945
	jmp	.label_948
.label_2709:
	cmp	r15, rbp
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x118]
	jge	.label_886
	nop	dword ptr [rax]
.label_956:
	movzx	eax, byte ptr [rcx + r15]
	cmp	byte ptr [r14 + rax], 0
	mov	rbp, rbp
	jne	.label_886
	inc	r15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa8], r15
	nop	
	cmp	r15, rbp
	mov	rsp, rsp
	jl	.label_956
.label_886:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x118], rcx
	mov	rbp, rbp
	cmp	r15, rbp
	nop	
	jne	.label_948
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x130]
	cmp	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x118]
	jge	.label_963
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rbp]
.label_963:
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_970
	nop	
	movzx	eax, byte ptr [rbx + rax]
.label_970:
	mov	rsp, rsp
	mov	r12d, 1
	mov	rsp, rsp
	cmp	byte ptr [r14 + rax], 0
	mov	rsp, rsp
	mov	r15, rbp
	jne	.label_948
	jmp	.label_803
.label_870:
	mov	rbp, rbp
	test	rbx, rbx
	nop	
	mov	rcx, qword ptr [rsp + 0x130]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x118]
	je	.label_841
	nop	word ptr [rax + rax]
.label_830:
	mov	rbp, rbp
	cmp	r15, rcx
	lea	rdi, [rdi]
	mov	eax, 0
	jge	.label_981
	nop	
	movzx	eax, byte ptr [rdx + r15]
.label_981:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + rax]
	cmp	byte ptr [r14 + rax], 0
	jne	.label_804
	nop	
	lea	rax, [r15 - 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r15, r13
	mov	r15, rax
	lea	rsi, [rsi]
	jg	.label_830
	nop	
	jmp	.label_879
.label_841:
	mov	rsp, rsp
	cmp	r15, rcx
	mov	eax, 0
	nop	
	jge	.label_991
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdx + r15]
.label_991:
	nop	
	cmp	byte ptr [r14 + rax], 0
	jne	.label_993
	lea	rax, [r15 - 1]
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	cmp	r15, r13
	mov	r15, rax
	jg	.label_841
	jmp	.label_879
.label_804:
	lea	rdi, [rdi]
	mov	rax, r15
	jmp	.label_879
.label_993:
	lea	rsi, [rsi]
	mov	rax, r15
.label_879:
	mov	qword ptr [rsp + 0x118], rdx
	mov	qword ptr [rsp + 0x130], rcx
	lea	rdi, [rdi]
	mov	r12d, 1
	cmp	rax, r13
	mov	r15, rax
	jl	.label_803
.label_948:
	nop	
	lea	rdi, [rsp + 0x140]
	mov	rsi, r15
	mov	edx, dword ptr [rsp + 0x2b0]
	mov	rsp, rsp
	call	re_string_reconstruct
	nop	
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	je	.label_802
	jmp	.label_803
.label_867:
	cmp	eax, 0xc
	jne	.label_806
.label_859:
	mov	r12d, 0xc
.label_803:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x1f8]
	call	free
	mov	rax, qword ptr [rsp + 0x260]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_815
	nop	
	lea	rdi, [rsp + 0x140]
	call	match_ctx_clean
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x238]
	call	free
	mov	rdi, qword ptr [rsp + 0x218]
	nop	
	call	free
.label_815:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsp, rsp
	call	free
	cmp	byte ptr [rsp + 0x1cb], 0
	mov	rbp, rbp
	je	.label_847
	mov	rdi, qword ptr [rsp + 0x148]
	call	free
.label_847:
	lea	rsi, [rsi]
	mov	eax, r12d
	mov	rsp, rsp
	add	rsp, 0x268
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_811:
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0xf4], 0xc
	mov	rbp, rbp
	je	.label_859
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.25
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22_0
	mov	rsp, rsp
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_996:
	lea	rsi, [rsi]
	xor	r15d, r15d
	jmp	.label_872
.label_816:
	mov	rdi, qword ptr [rsp + 0x1f8]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rsp + 0x1f8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x1f0], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1e8], rbp
	mov	rbp, qword ptr [rsp + 0x260]
	mov	r9, qword ptr [rsp + 0x98]
	mov	rbx, qword ptr [rsp + 0xe8]
.label_842:
	mov	rsp, rsp
	cmp	r9, qword ptr [rsp + 0x2a0]
	lea	r13, [rsp + 0x178]
	jne	.label_894
	mov	qword ptr [rsp + 0x260], rbp
	nop	
	xor	r12d, r12d
	jmp	.label_803
.label_894:
	mov	r8, rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x260], rbp
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x248], 2
	nop	
	jb	.label_903
	mov	rsi, qword ptr [rsp + 0x2a0]
	nop	
	lea	edx, [rsi + 7]
	sub	edx, r9d
	lea	rax, [rsi - 2]
	sub	rax, r9
	mov	ecx, 1
	test	dl, 7
	je	.label_910
	mov	rcx, qword ptr [rsp + 0x2a8]
	lea	rdx, [rcx + 0x10]
	lea	esi, [rsi + 7]
	sub	esi, r9d
	mov	rbp, rbp
	and	esi, 7
	lea	rdi, [rdi]
	xor	edi, edi
.label_913:
	mov	rcx, rdi
	mov	qword ptr [rdx + 8], -1
	nop	
	mov	qword ptr [rdx], -1
	nop	
	lea	rdi, [rcx + 1]
	add	rdx, 0x10
	nop	
	cmp	rsi, rdi
	jne	.label_913
	add	rcx, 2
.label_910:
	cmp	rax, 7
	lea	rdi, [rdi]
	jb	.label_903
	mov	rax, qword ptr [rsp + 0x2a0]
	sub	rax, r9
	sub	rax, rcx
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x2a8]
	mov	rsp, rsp
	lea	rcx, [rcx + rdx + 0x70]
.label_917:
	mov	qword ptr [rcx - 0x68], -1
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 0x70], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x58], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x60], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x48], -1
	lea	rsi, [rsi]
	mov	qword ptr [rcx - 0x50], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x38], -1
	mov	rbp, rbp
	mov	qword ptr [rcx - 0x40], -1
	nop	
	mov	qword ptr [rcx - 0x28], -1
	mov	qword ptr [rcx - 0x30], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 0x18], -1
	nop	
	mov	qword ptr [rcx - 0x20], -1
	mov	rsp, rsp
	mov	qword ptr [rcx - 8], -1
	mov	qword ptr [rcx - 0x10], -1
	mov	qword ptr [rcx + 8], -1
	mov	rbp, rbp
	mov	qword ptr [rcx], -1
	nop	
	add	rcx, 0x80
	lea	rdi, [rdi]
	add	rax, -8
	jne	.label_917
.label_903:
	mov	rbp, r9
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x2a8]
	nop	
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x1e8]
	mov	qword ptr [rcx + 8], rax
	mov	r14, rcx
	cmp	qword ptr [rsp + 0x248], 2
	mov	rsp, rsp
	jb	.label_972
	lea	rsi, [rsi]
	mov	al, byte ptr [r8 + 0x38]
	mov	rsp, rsp
	and	al, 0x10
	nop	
	jne	.label_972
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x260]
	test	byte ptr [rax + 0xb0], 1
	lea	rsi, [rsi]
	jne	.label_983
	xor	eax, eax
	jmp	.label_988
.label_825:
	mov	rax, r12
	mov	qword ptr [rsp + 0x110], rax
.label_877:
	mov	rdi, qword ptr [rsp + 0x110]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r15
	call	free
	lea	rsi, [rsi]
	jmp	.label_859
.label_983:
	cmp	qword ptr [rax + 0x98], 0
	nop	
	setg	al
.label_988:
	mov	rdi, qword ptr [r8]
	mov	rbp, rbp
	movzx	r8d, al
	lea	rsi, [rsp + 0x140]
	mov	rdx, qword ptr [rsp + 0x248]
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	call	set_regs
	lea	rsi, [rsi]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_803
.label_972:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x1cc], 0
	jne	.label_999
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x2a0]
	mov	rbx, rbp
	mov	rsp, rsp
	sub	ecx, ebx
	lea	rdi, [rdi]
	xor	edx, edx
	test	cl, 1
	mov	r8, qword ptr [rsp + 0x260]
	nop	
	je	.label_809
	mov	rcx, qword ptr [r14]
	mov	rbp, rbp
	mov	edx, 1
	mov	rsp, rsp
	cmp	rcx, -1
	je	.label_809
	add	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [r14], rcx
	lea	rsi, [rsi]
	add	qword ptr [r14 + 8], rax
	mov	edx, 1
.label_809:
	cmp	qword ptr [rsp + 0xc0], rbx
	je	.label_821
	mov	rcx, qword ptr [rsp + 0x2a0]
	lea	rdi, [rdi]
	sub	rcx, rbx
	sub	rcx, rdx
	shl	rdx, 4
	lea	rdx, [rdx + r14 + 0x18]
.label_848:
	mov	rsi, qword ptr [rdx - 0x18]
	cmp	rsi, -1
	je	.label_834
	add	rsi, rax
	mov	qword ptr [rdx - 0x18], rsi
	add	qword ptr [rdx - 0x10], rax
.label_834:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdx - 8]
	mov	rsp, rsp
	cmp	rsi, -1
	je	.label_967
	mov	rsp, rsp
	add	rsi, rax
	mov	qword ptr [rdx - 8], rsi
	add	qword ptr [rdx], rax
.label_967:
	lea	rsi, [rsi]
	add	rdx, 0x20
	nop	
	add	rcx, -2
	mov	rsp, rsp
	jne	.label_848
.label_821:
	lea	rsi, [rsi]
	test	rbx, rbx
	jle	.label_850
	lea	rsi, [rsi]
	lea	rcx, [rbx - 1]
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	test	bl, 3
	mov	rsp, rsp
	je	.label_856
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x2a0]
	sub	rdx, rbx
	lea	rdi, [rdi]
	shl	rdx, 4
	add	rdx, r14
	mov	esi, ebx
	mov	rsp, rsp
	and	esi, 3
	nop	
	xor	eax, eax
.label_905:
	inc	rax
	mov	qword ptr [rdx + 8], -1
	mov	qword ptr [rdx], -1
	mov	rsp, rsp
	add	rdx, 0x10
	lea	rsi, [rsi]
	cmp	rsi, rax
	jne	.label_905
.label_856:
	lea	rdi, [rdi]
	cmp	rcx, 3
	mov	rbp, rbp
	jb	.label_850
	lea	rdi, [rdi]
	mov	rcx, rbx
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x2a0]
	sub	rdx, rbx
	shl	rdx, 4
	add	rdx, r14
	shl	rax, 4
	add	rax, rdx
	mov	rbp, rbp
	xor	edx, edx
.label_930:
	nop	
	mov	qword ptr [rax + rdx + 8], -1
	nop	
	mov	qword ptr [rax + rdx], -1
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x18], -1
	nop	
	mov	qword ptr [rax + rdx + 0x10], -1
	mov	qword ptr [rax + rdx + 0x28], -1
	mov	qword ptr [rax + rdx + 0x20], -1
	mov	rbp, rbp
	mov	qword ptr [rax + rdx + 0x38], -1
	mov	qword ptr [rax + rdx + 0x30], -1
	add	rdx, 0x40
	lea	rdi, [rdi]
	add	rcx, -4
	lea	rsi, [rsi]
	jne	.label_930
.label_850:
	mov	rbp, rbp
	mov	rax, qword ptr [r8 + 0xe0]
	mov	qword ptr [rsp + 0x260], r8
	test	rax, rax
	je	.label_909
	cmp	qword ptr [rsp + 0x248], 2
	mov	r12d, 0
	nop	
	jb	.label_803
	sub	qword ptr [rsp + 0xc0], rbx
	mov	rbp, rbp
	lea	rcx, [r14 + 0x18]
	mov	rsp, rsp
	xor	edx, edx
	xor	r12d, r12d
.label_936:
	mov	rsi, qword ptr [rax + rdx*8]
	mov	rsp, rsp
	cmp	rdx, rsi
	je	.label_918
	mov	rsp, rsp
	shl	rsi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + r14 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx - 8], rsi
	nop	
	mov	rsi, qword ptr [rsp + 0x260]
	nop	
	mov	rsi, qword ptr [rsi + 0xe0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + r14 + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx], rsi
.label_918:
	inc	rdx
	mov	rsp, rsp
	add	rcx, 0x10
	nop	
	cmp	qword ptr [rsp + 0xc0], rdx
	mov	rbp, rbp
	jne	.label_936
	mov	rbp, rbp
	jmp	.label_803
.label_909:
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_803
.label_999:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x158]
	lea	rdi, [rdi]
	lea	rcx, [r14 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x248]
	nop	
	mov	r8, qword ptr [rsp + 0x260]
	mov	rbx, rbp
.label_968:
	mov	rsi, qword ptr [rcx - 8]
	cmp	rsi, -1
	lea	rsi, [rsi]
	je	.label_953
	nop	
	mov	rdi, qword ptr [rsp + 0x170]
	cmp	rsi, rdi
	lea	rsi, [rax + rsi*8]
	cmove	rsi, r13
	mov	rsi, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [rcx - 8], rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rcx]
	cmp	rbp, rdi
	mov	rbp, rbp
	lea	rdi, [rax + rbp*8]
	cmove	rdi, r13
	mov	rbp, qword ptr [rsp + 0xa8]
	add	rsi, rbp
	mov	rsp, rsp
	add	rbp, qword ptr [rdi]
	mov	qword ptr [rcx - 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rcx], rbp
.label_953:
	lea	rsi, [rsi]
	add	rcx, 0x10
	dec	rdx
	mov	rsp, rsp
	jne	.label_968
	jmp	.label_821
.label_806:
	mov	edi, OFFSET FLAT:.str.25
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.22_0
	nop	
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e720

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
	#Procedure 0x40e750

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
	mov	r15, rcx
	mov	rbx, rdi
	test	r15, r15
	mov	rsp, rsp
	mov	rbp, -1
	mov	rsp, rsp
	js	.label_1026
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rsi
	mov	qword ptr [rsp + 0x40], r9
	nop	
	cmp	r15, rdx
	nop	
	jg	.label_1026
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	xor	r12d, r12d
	add	r8, r15
	cmovns	r12, r8
	cmp	r8, rdx
	cmovg	r12, rdx
	mov	qword ptr [rsp + 0x38], rdx
	mov	rsp, rsp
	movzx	r13d, byte ptr [rbx + 0x38]
	lea	rdi, [rdi]
	cmp	r12, r15
	mov	al, r13b
	mov	rbp, rbp
	jle	.label_1010
	lea	rdi, [rdi]
	test	r13b, 8
	mov	al, r13b
	jne	.label_1010
	nop	
	mov	rbp, qword ptr [rbx + 0x20]
	test	rbp, rbp
	mov	al, r13b
	je	.label_1010
	mov	r14, qword ptr [rbx]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	nop	
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbp + 0x70], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0x60], xmm0
	nop	
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	nop	
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [r14 + 0x48]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14 + 0x50]
	nop	
	cmp	rax, rsi
	nop	
	je	.label_1032
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rdx, rbp
	nop	
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r14 + 0x48]
.label_1032:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14 + 0x58]
	lea	rsi, [rsi]
	cmp	rax, rsi
	mov	rsp, rsp
	je	.label_1012
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r14 + 0x48]
.label_1012:
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x60]
	lea	rdi, [rdi]
	cmp	rax, rsi
	je	.label_1022
	mov	rdi, rbx
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_1022:
	mov	al, byte ptr [rbx + 0x38]
	nop	
	or	al, 8
	mov	rsp, rsp
	mov	byte ptr [rbx + 0x38], al
	mov	rsi, qword ptr [rsp + 0x80]
.label_1010:
	xor	edx, edx
	test	rsi, rsi
	mov	rsp, rsp
	mov	r14d, 1
	lea	rdi, [rdi]
	je	.label_1004
	lea	rsi, [rsi]
	mov	cl, al
	and	cl, 0x10
	nop	
	jne	.label_1004
	mov	rsp, rsp
	and	al, 6
	mov	rbp, rbp
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 4
	lea	rdi, [rdi]
	jne	.label_1007
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	mov	r14, qword ptr [rbx + 0x30]
	nop	
	cmp	rax, r14
	ja	.label_1016
	xor	ecx, ecx
	test	rax, rax
	mov	rbp, rbp
	cmovle	rsi, rcx
	lea	rdi, [rdi]
	mov	r14d, 1
	lea	rdi, [rdi]
	cmovg	r14, rax
	mov	rsp, rsp
	jmp	.label_1019
.label_1007:
	mov	r14, qword ptr [rbx + 0x30]
.label_1016:
	inc	r14
.label_1019:
	mov	rdx, rsi
.label_1004:
	mov	qword ptr [rsp + 0x28], rdx
	mov	rsp, rsp
	mov	rdi, r14
	shl	rdi, 4
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, -2
	test	rax, rax
	nop	
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_1026
	lea	rsi, [rsi]
	mov	cl, r13b
	shr	cl, 5
	nop	
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	mov	rsp, rsp
	shr	r13d, 5
	lea	rdi, [rdi]
	or	r13d, ecx
	mov	dword ptr [rsp + 0x10], r13d
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	r13, rax
	mov	qword ptr [rsp], r14
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	rcx, r15
	mov	r8, r12
	lea	rdi, [rdi]
	mov	rbp, rdi
	mov	r9, qword ptr [rsp + 0x40]
	call	re_search_internal
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_1028
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	mov	rbp, rbp
	or	rbp, 0xfffffffffffffffe
	jmp	.label_1009
.label_1028:
	mov	qword ptr [rsp + 0x38], r15
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_1006
	mov	r8, rbp
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	mov	rsp, rsp
	and	al, 3
	mov	rsp, rsp
	movzx	eax, al
	nop	
	cmp	eax, 2
	je	.label_1013
	lea	r15, [r14 + 1]
	cmp	eax, 1
	mov	rsp, rsp
	je	.label_1020
	mov	qword ptr [rsp + 0x30], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], r8
	test	eax, eax
	jne	.label_1025
	lea	r13, [r15*8]
	mov	rdi, r13
	call	malloc
	mov	r12, rax
	mov	qword ptr [rbx + 8], r12
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_1031
	mov	rdi, r13
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1008
	mov	qword ptr [rbx], r15
	lea	rdi, [rdi]
	mov	r12d, 1
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	jmp	.label_1018
.label_1013:
	mov	r15, qword ptr [rbx]
	mov	r12d, 2
	cmp	r15, r14
	mov	rbp, rbp
	jae	.label_1018
	mov	edi, OFFSET FLAT:.str.24
	nop	
	mov	esi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	lea	rdi, [rdi]
	call	__assert_fail
.label_1020:
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	r12d, 1
	lea	rdi, [rdi]
	cmp	r15, rax
	ja	.label_1030
	mov	rbp, rbp
	mov	r15, rax
.label_1018:
	mov	rsp, rsp
	test	r14, r14
	jle	.label_1017
	mov	rdx, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x10]
	xor	esi, esi
	test	r14b, 1
	mov	rbp, rbp
	je	.label_1011
	mov	rax, qword ptr [r13]
	mov	rsp, rsp
	mov	qword ptr [rdx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	esi, 1
.label_1011:
	mov	rsp, rsp
	cmp	r14, 1
	je	.label_1023
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	sub	rax, rsi
	nop	
	lea	rcx, [rcx + rsi*8 + 8]
	lea	rdx, [rdx + rsi*8 + 8]
	lea	rsi, [rsi]
	shl	rsi, 4
	lea	rsi, [rsi + r13 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1003:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsi - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx - 8], rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsi - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx - 8], rbp
	mov	rbp, qword ptr [rsi - 8]
	mov	rbp, rbp
	mov	qword ptr [rdx], rbp
	mov	rsp, rsp
	mov	rbp, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rcx], rbp
	add	rcx, 0x10
	add	rsi, 0x20
	add	rdx, 0x10
	lea	rsi, [rsi]
	add	rax, -2
	jne	.label_1003
.label_1023:
	nop	
	mov	r15, qword ptr [rbx]
	lea	rdi, [rdi]
	jmp	.label_1024
.label_1017:
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_1024:
	cmp	r14, r15
	mov	rbp, rbp
	jae	.label_1027
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_1015:
	mov	rbp, rbp
	mov	qword ptr [rcx + r14*8], -1
	mov	rbp, rbp
	mov	qword ptr [rax + r14*8], -1
	nop	
	inc	r14
	cmp	r14, qword ptr [rbx]
	jb	.label_1015
.label_1027:
	mov	ebp, r12d
.label_1014:
	mov	al, byte ptr [r8 + 0x38]
	mov	rsp, rsp
	add	bpl, bpl
	lea	rsi, [rsi]
	and	al, 0xf9
	lea	rsi, [rsi]
	mov	cl, bpl
	lea	rsi, [rsi]
	and	cl, 6
	lea	rdi, [rdi]
	or	cl, al
	and	bpl, 6
	mov	rbp, rbp
	mov	byte ptr [r8 + 0x38], cl
	nop	
	mov	rbp, -2
	mov	rsp, rsp
	je	.label_1009
.label_1006:
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rbp, qword ptr [r13]
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	je	.label_1009
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rbp, rax
	jne	.label_1021
	mov	rbp, qword ptr [r13 + 8]
	mov	rbp, rbp
	sub	rbp, rax
.label_1009:
	mov	rdi, r13
	mov	rsp, rsp
	call	free
.label_1026:
	mov	rax, rbp
	add	rsp, 0x48
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_1030:
	mov	qword ptr [rsp + 0x40], r8
	nop	
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [r15*8]
	mov	qword ptr [rsp + 0x30], rsi
	call	realloc
	xor	ebp, ebp
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1005
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1029
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_1018
.label_1008:
	lea	rsi, [rsi]
	mov	rdi, r12
	nop	
	call	free
.label_1031:
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x30]
	jmp	.label_1014
.label_1005:
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_1014
.label_1029:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jmp	.label_1014
.label_1025:
	mov	edi, OFFSET FLAT:.str.23_0
	mov	esi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	lea	rdi, [rdi]
	call	__assert_fail
.label_1021:
	nop	
	mov	edi, OFFSET FLAT:.str.21
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	nop	
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40edb0
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
	#Procedure 0x40ede0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbx, r8
	nop	
	mov	r15, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_1033
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	nop	
	js	.label_1036
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_1033
	lea	rsi, [rsi]
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_1037
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	mov	rbp, rbp
	jle	.label_1034
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	call	malloc
	lea	rsi, [rsi]
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	je	.label_1033
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	r13, rax
	nop	
	call	memcpy
	mov	rdi, r12
	mov	rsp, rsp
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x68]
	nop	
	mov	r9, r13
	nop	
	mov	r13, r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_1037
.label_1036:
	mov	rbp, rbp
	inc	rax
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, r14
	jle	.label_1038
.label_1033:
	mov	rsp, rsp
	mov	rax, -2
	jmp	.label_1035
.label_1038:
	nop	
	add	rbx, r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	mov	rdx, rbx
	jmp	.label_1037
.label_1034:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x10]
.label_1037:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], 1
	nop	
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rsi, r13
	nop	
	mov	rcx, r9
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	nop	
	call	free
	mov	rbp, rbp
	mov	rax, rbx
.label_1035:
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ef90
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	rbp, rbp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rax, rbx
	or	rax, r14
	lea	rdi, [rdi]
	or	rax, rbp
	js	.label_1039
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	lea	rsi, [rsi]
	js	.label_1044
	mov	rbp, rbp
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, r14
	jl	.label_1039
	nop	
	lea	rdx, [rbx + r14]
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	rbx, rbx
	nop	
	jle	.label_1040
	nop	
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	xor	r12d, r12d
	test	r14, r14
	lea	rdi, [rdi]
	jle	.label_1042
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1039
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r14
	mov	r13, rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, r12
	lea	rdi, [rdi]
	add	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_1040
.label_1044:
	inc	rax
	lea	rdi, [rdi]
	sub	rax, rbx
	cmp	rax, r14
	mov	rbp, rbp
	jle	.label_1041
.label_1039:
	mov	rbp, rbp
	mov	rax, -2
	jmp	.label_1043
.label_1041:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	mov	rsp, rsp
	jmp	.label_1040
.label_1042:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
.label_1040:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp], rax
	mov	dword ptr [rsp + 8], 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, r12
	call	free
	nop	
	mov	rax, rbx
.label_1043:
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f130
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	lea	rdi, [rdi]
	and	al, 0xf9
	mov	r9b, al
	mov	rbp, rbp
	or	r9b, 2
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_1045
	lea	rsi, [rsi]
	mov	al, r9b
.label_1045:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f170

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
	je	.label_1046
	mov	rdi, qword ptr [rax + 0x10]
	mov	rbp, rbp
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	call	free
.label_1046:
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
	#Procedure 0x40f1f0

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
	mov	r12, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	cmp	r13, rax
	nop	
	cmovg	r13, rax
	cmp	byte ptr [r12 + 0x8a], 0
	jne	.label_1061
	cmp	qword ptr [r12 + 0x78], 0
	jne	.label_1061
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_1063
.label_1061:
	mov	rbp, rbp
	mov	rbx, qword ptr [r12 + 0x38]
	jmp	.label_1050
.label_1063:
	cmp	r13, r15
	mov	rsp, rsp
	jle	.label_1069
	lea	rax, [r12 + 0x78]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	nop	
	lea	r14, [r12 + 0x20]
	jmp	.label_1071
.label_1095:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_1078
	lea	rdi, [rdi]
	cmp	rbp, -2
	jne	.label_1082
	nop	
	mov	rax, qword ptr [r12 + 0x40]
	nop	
	cmp	rax, qword ptr [r12 + 0x58]
	mov	rbp, rbp
	jl	.label_1082
.label_1078:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	add	rax, r15
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rbp, rbp
	mov	rdx, qword ptr [r12 + 8]
	mov	rsp, rsp
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	mov	rsp, rsp
	je	.label_1090
.label_1105:
	mov	rax, r15
	jmp	.label_1064
.label_1090:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_1105
	nop	word ptr cs:[rax + rax]
.label_1071:
	nop	
	mov	qword ptr [rsp + 0x50], r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12]
	mov	rbx, qword ptr [r12 + 0x28]
	mov	rsp, rsp
	lea	rax, [rbx + r15]
	movzx	r13d, byte ptr [rbp + rax]
	test	r13b, r13b
	js	.label_1047
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1047
	call	__ctype_toupper_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r13*4]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	lea	rsi, [rsi]
	mov	rax, r15
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	jmp	.label_1064
	nop	word ptr cs:[rax + rax]
.label_1047:
	mov	r13, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], rax
	add	rbp, rbx
	nop	
	add	rbp, r15
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbp, rax
	lea	rax, [rbp - 1]
	mov	rsp, rsp
	cmp	rax, -4
	ja	.label_1095
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rsi, [rsi]
	cmp	ebx, dword ptr [rsp + 0xc]
	nop	
	jne	.label_1104
	mov	rdi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	add	rdi, r15
	nop	
	mov	rsi, qword ptr [r12]
	add	rsi, qword ptr [r12 + 0x28]
	nop	
	add	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rsp, rsp
	call	memcpy
	nop	
	jmp	.label_1056
.label_1104:
	mov	rbp, rbp
	mov	esi, ebx
	mov	dword ptr [rsp + 0x68], esi
	mov	rbx, rbp
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x10]
	mov	rdi, rbp
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	lea	rdi, [rdi]
	jne	.label_1066
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	add	rdi, r15
	mov	rsi, rbp
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x68]
.label_1056:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	mov	rsp, rsp
	cmp	rax, rbx
	nop	
	jge	.label_1064
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rdi]
	lea	rdi, [rax + r15*4 + 4]
	mov	rbp, rbp
	lea	rdx, [rbp*4 - 4]
	lea	rdi, [rdi]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_1064:
	lea	rdi, [rdi]
	cmp	r13, rax
	mov	r15, rax
	mov	rbp, rbp
	jg	.label_1071
	jmp	.label_1098
.label_1066:
	mov	rbx, r15
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	jmp	.label_1102
.label_1082:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [r14], rax
.label_1069:
	lea	rsi, [rsi]
	mov	rax, r15
.label_1098:
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x30], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rax
	jmp	.label_1091
.label_1050:
	cmp	r15, r13
	jge	.label_1049
	lea	r14, [r12 + 0x20]
	lea	rdi, [rdi]
	lea	rcx, [r12 + 0x78]
.label_1102:
	nop	
	mov	rdx, r13
	nop	
	sub	rdx, r15
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rcx]
	test	rax, rax
	jne	.label_1055
	mov	rbp, qword ptr [r12]
	mov	rbp, rbp
	add	rbp, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rbp, rbx
.label_1070:
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r14
	call	rpl_mbrtowc
	mov	r14, rax
	mov	rsp, rsp
	lea	rax, [r14 - 1]
	cmp	rax, -4
	mov	rbp, rbp
	ja	.label_1074
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x50], r13
	nop	
	mov	edi, dword ptr [rsp + 8]
	mov	rsp, rsp
	call	towupper
	lea	rdi, [rdi]
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 8]
	je	.label_1052
	mov	rsp, rsp
	lea	rdi, [rsp + 0x10]
	nop	
	lea	rdx, [rsp + 0x70]
	lea	rdi, [rdi]
	mov	esi, r13d
	lea	rsi, [rsi]
	call	wcrtomb
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rcx, r8
	sub	rcx, r14
	mov	rbp, rbp
	jne	.label_1097
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	jmp	.label_1100
.label_1055:
	mov	rsp, rsp
	lea	rbp, [rsp + 0x10]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [r12 + 0x90]
	test	rcx, rcx
	nop	
	jle	.label_1070
	lea	rsi, [rsi]
	mov	r8, rbx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1060:
	cmp	rsi, rdx
	jge	.label_1057
	mov	rdi, qword ptr [r12]
	add	rdi, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	add	rdi, r8
	movzx	edi, byte ptr [rsi + rdi]
	mov	bl, byte ptr [rax + rdi]
	mov	rbp, rbp
	mov	byte ptr [rsp + rsi + 0x10], bl
	lea	rsi, [rsi]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jl	.label_1060
	mov	rbx, r8
	nop	
	jmp	.label_1070
.label_1074:
	lea	rsi, [rsi]
	lea	rax, [r14 + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_1072
	lea	rsi, [rsi]
	cmp	r14, -2
	jne	.label_1076
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [r12 + 0x58]
	jl	.label_1076
.label_1072:
	mov	rax, qword ptr [r12 + 0x28]
	mov	rbp, rbp
	add	rax, rbx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x78]
	mov	al, byte ptr [rdx + rax]
	mov	rbp, rbp
	movzx	edx, al
	test	rcx, rcx
	jne	.label_1086
.label_1077:
	movzx	eax, al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r15], al
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1093
.label_1080:
	nop	
	inc	rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	nop	
	cmp	r14, -1
	lea	rsi, [rsi]
	je	.label_1103
.label_1085:
	mov	rbp, r15
	nop	
	jmp	.label_1050
.label_1097:
	lea	rsi, [rsi]
	cmp	r8, -1
	je	.label_1052
	lea	rbp, [r8 + r15]
	mov	rdi, qword ptr [r12 + 0x40]
	cmp	rbp, rdi
	jbe	.label_1054
.label_1076:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_1049:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x30], r15
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x38], rbx
.label_1091:
	xor	eax, eax
.label_1092:
	add	rsp, 0x78
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_1052:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + 8]
	nop	
	add	rdi, r15
	nop	
	mov	rsi, rbp
.label_1100:
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	
	call	memcpy
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_1081
	mov	rax, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	cmp	r14, 4
	mov	rbp, rbp
	jb	.label_1087
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	mov	rcx, r14
	mov	rbp, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_1087
	movq	xmm0, rbx
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [r14 - 4]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 2
	xor	edx, edx
	bt	rdi, 2
	nop	
	jb	.label_1096
	lea	rdi, [rdi]
	mov	edx, 1
	movq	xmm1, rdx
	nop	
	pslldq	xmm1, 8
	mov	rsp, rsp
	paddq	xmm1, xmm0
	lea	rdi, [rdi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_679]]
	paddq	xmm2, xmm0
	movdqu	xmmword ptr [rax + r15*8], xmm1
	movdqu	xmmword ptr [rax + r15*8 + 0x10], xmm2
	mov	edx, 4
.label_1096:
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1058
	lea	rsi, [rax + r15*8 + 0x30]
	lea	rdi, [rdi]
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	lea	rsi, [rsi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_679]]
	nop	
.label_1059:
	movq	xmm3, rdx
	pshufd	xmm3, xmm3, 0x44
	mov	rbp, rbp
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	movdqa	xmm4, xmm3
	paddq	xmm4, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rsi + rdx*8 - 0x30], xmm4
	movdqu	xmmword ptr [rsi + rdx*8 - 0x20], xmm3
	lea	rsi, [rsi]
	lea	rdi, [rdx + 4]
	movq	xmm3, rdi
	pshufd	xmm3, xmm3, 0x44
	paddq	xmm3, xmm0
	lea	rsi, [rsi]
	movdqa	xmm4, xmm3
	lea	rsi, [rsi]
	paddq	xmm4, xmm1
	nop	
	paddq	xmm3, xmm2
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rsi + rdx*8 - 0x10], xmm4
	mov	rsp, rsp
	movdqu	xmmword ptr [rsi + rdx*8], xmm3
	nop	
	add	rdx, 8
	nop	
	cmp	rdx, rcx
	mov	rsp, rsp
	jne	.label_1059
.label_1058:
	mov	rsp, rsp
	cmp	r14, rcx
	nop	
	mov	rsi, rcx
	nop	
	je	.label_1081
.label_1087:
	mov	rcx, r14
	lea	rsi, [rsi]
	sub	rcx, rsi
	lea	rdx, [rsi + rbx]
	nop	
	add	rsi, r15
	lea	rax, [rax + rsi*8]
	nop	word ptr cs:[rax + rax]
.label_1089:
	mov	rsp, rsp
	mov	qword ptr [rax], rdx
	mov	rbp, rbp
	inc	rdx
	lea	rdi, [rdi]
	add	rax, 8
	dec	rcx
	mov	rsp, rsp
	jne	.label_1089
.label_1081:
	add	rbx, r14
	nop	
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r14 + r15]
	inc	r15
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_1051
	mov	rax, qword ptr [r12 + 0x10]
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	nop	
	call	memset
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, rbp
	lea	rdi, [rdi]
	jmp	.label_1050
.label_1051:
	mov	rbp, rbp
	mov	rbp, r15
	nop	
	mov	r13, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	jmp	.label_1050
.label_1057:
	mov	rbx, r8
	jmp	.label_1070
.label_1054:
	mov	rax, qword ptr [r12 + 0x18]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1079
	nop	
	shl	rdi, 3
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r8
	lea	rdi, [rdi]
	call	malloc
	mov	r8, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], rax
	test	rax, rax
	je	.label_1088
.label_1079:
	mov	qword ptr [rsp + 0x58], rcx
	cmp	byte ptr [r12 + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1094
	nop	
	test	r15, r15
	je	.label_1099
	mov	rbp, rbp
	xor	edx, edx
	cmp	r15, 4
	nop	
	jb	.label_1101
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_1101
	lea	rdi, [rdi]
	lea	rdi, [r15 - 4]
	mov	rsp, rsp
	mov	rsi, rdi
	lea	rdi, [rdi]
	shr	rsi, 2
	lea	rdi, [rdi]
	xor	edx, edx
	bt	rdi, 2
	lea	rsi, [rsi]
	jb	.label_1048
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	nop	
	movdqu	xmmword ptr [rax], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_679]]
	movdqu	xmmword ptr [rax + 0x10], xmm0
	nop	
	mov	edx, 4
.label_1048:
	lea	rsi, [rsi]
	test	rsi, rsi
	nop	
	je	.label_1068
	mov	rsp, rsp
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_679]]
.label_1075:
	movq	xmm2, rdx
	nop	
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	lea	rdi, [rdi]
	paddq	xmm2, xmm1
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rdx*8], xmm3
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm2
	nop	
	lea	rsi, [rdx + 4]
	movq	xmm2, rsi
	mov	rsp, rsp
	pshufd	xmm2, xmm2, 0x44
	nop	
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	mov	rbp, rbp
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rax + rdx*8 + 0x20], xmm3
	movdqu	xmmword ptr [rax + rdx*8 + 0x30], xmm2
	add	rdx, 8
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jne	.label_1075
.label_1068:
	cmp	r15, rcx
	lea	rdi, [rdi]
	mov	rdx, rcx
	je	.label_1099
.label_1101:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_1101
.label_1099:
	mov	byte ptr [r12 + 0x8c], 1
.label_1094:
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, rbp
	add	rdi, r15
	lea	rsi, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	qword ptr [rsp + 0x50], r8
	lea	rsi, [rsi]
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [r12 + 0x10]
	nop	
	mov	dword ptr [rax + r15*4], r13d
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x18]
	mov	qword ptr [rax + r15*8], rbx
	cmp	rdi, 2
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x60]
	jb	.label_1053
	mov	r9, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r12 + 0x18]
	lea	r10, [rdi - 1]
	mov	eax, 1
	lea	rsi, [rsi]
	cmp	r10, 4
	mov	rsp, rsp
	jb	.label_1067
	mov	rbp, rbp
	mov	rcx, r10
	and	rcx, 0xfffffffffffffffc
	lea	rsi, [rsi]
	mov	r13, r10
	and	r13, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_1067
	lea	rsi, [rsi]
	mov	rax, rcx
	or	rax, 1
	mov	rsp, rsp
	movq	xmm0, r14
	pshufd	xmm3, xmm0, 0x44
	movq	xmm1, r11
	nop	
	mov	rdi, r11
	pshufd	xmm11, xmm1, 0x44
	mov	rbp, rbp
	movq	xmm2, rbx
	nop	
	mov	r11, rbx
	lea	rdi, [rdi]
	pshufd	xmm12, xmm2, 0x44
	lea	rcx, [r8 + r15*8 + 0x18]
	lea	rdx, [r9 + r15*4 + 0xc]
	xor	esi, esi
	mov	ebx, 1
	lea	rdi, [rdi]
	movq	xmm10, rbx
	pslldq	xmm10, 8
	movdqa	xmm8,  xmmword ptr [word ptr [rip + label_679]]
	movdqa	xmm9,  xmmword ptr [word ptr [rip + label_1083]]
	mov	rsp, rsp
	pxor	xmm3, xmm9
	pshufd	xmm6,  xmmword ptr [word ptr [rip + label_1084]],  0xe8
.label_1065:
	lea	rbx, [rsi + 1]
	movq	xmm4, rbx
	pshufd	xmm7, xmm4, 0x44
	movdqa	xmm5, xmm7
	lea	rdi, [rdi]
	paddq	xmm5, xmm10
	paddq	xmm7, xmm8
	nop	
	movdqa	xmm4, xmm5
	lea	rdi, [rdi]
	pxor	xmm4, xmm9
	movdqa	xmm0, xmm3
	mov	rbp, rbp
	pcmpgtd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0xa0
	pcmpeqd	xmm4, xmm3
	lea	rsi, [rsi]
	pshufd	xmm4, xmm4, 0xf5
	pand	xmm4, xmm1
	pshufd	xmm0, xmm0, 0xf5
	por	xmm0, xmm4
	movdqa	xmm1, xmm7
	pxor	xmm1, xmm9
	nop	
	movdqa	xmm4, xmm3
	lea	rdi, [rdi]
	pcmpgtd	xmm4, xmm1
	lea	rsi, [rsi]
	pshufd	xmm2, xmm4, 0xa0
	lea	rdi, [rdi]
	pcmpeqd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm1, xmm1, 0xf5
	pand	xmm1, xmm2
	mov	rsp, rsp
	pshufd	xmm2, xmm4, 0xf5
	por	xmm2, xmm1
	pand	xmm5, xmm0
	nop	
	pandn	xmm0, xmm11
	nop	
	por	xmm0, xmm5
	mov	rbp, rbp
	pand	xmm7, xmm2
	nop	
	pandn	xmm2, xmm11
	nop	
	por	xmm2, xmm7
	paddq	xmm0, xmm12
	paddq	xmm2, xmm12
	movdqu	xmmword ptr [rcx + rsi*8 - 0x10], xmm0
	movdqu	xmmword ptr [rcx + rsi*8], xmm2
	movq	qword ptr [rdx + rsi*4 - 8], xmm6
	lea	rdi, [rdi]
	movq	qword ptr [rdx + rsi*4], xmm6
	lea	rdi, [rdi]
	add	rsi, 4
	nop	
	cmp	r13, rsi
	jne	.label_1065
	mov	rbp, rbp
	cmp	r10, r13
	lea	rdi, [rdi]
	mov	rbx, r11
	mov	r11, rdi
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	je	.label_1053
.label_1067:
	lea	rsi, [rsi]
	lea	rcx, [r9 + r15*4]
	lea	rdx, [r8 + r15*8]
.label_1073:
	cmp	rax, r14
	nop	
	mov	rsi, r11
	cmovb	rsi, rax
	nop	
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rbp, rbp
	inc	rax
	cmp	rdi, rax
	jne	.label_1073
.label_1053:
	mov	rax, qword ptr [r12 + 0x58]
	mov	rcx, qword ptr [rsp + 0x58]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x58], rax
	nop	
	cmp	qword ptr [r12 + 0x60], rbx
	jle	.label_1062
	add	qword ptr [r12 + 0x68], rcx
.label_1062:
	nop	
	mov	r13, qword ptr [r12 + 0x40]
	cmp	r13, rax
	cmovg	r13, rax
	add	rbx, r14
	lea	rsi, [rsi]
	mov	r15, rbp
	jmp	.label_1050
.label_1086:
	mov	al, byte ptr [rcx + rdx]
	nop	
	jmp	.label_1077
.label_1093:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rcx + r15*8], rbx
	mov	rbp, rbp
	jmp	.label_1080
.label_1103:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	jmp	.label_1085
.label_1088:
	mov	rbp, rbp
	mov	eax, 0xc
	lea	rdi, [rdi]
	jmp	.label_1092
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fdc0

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
	jle	.label_1106
	lea	r14, [rbx + 0x20]
	mov	rbp, rbp
	lea	r15, [rsp + 0xc]
	nop	
	jmp	.label_1111
	nop	word ptr [rax + rax]
.label_1114:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	nop	
	mov	rax, qword ptr [rbx + 0x78]
	test	rax, rax
	jne	.label_1116
.label_1112:
	nop	
	mov	qword ptr [r14], rbp
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_1117
.label_1110:
	nop	
	mov	ecx, dword ptr [rsp + 0xc]
	nop	word ptr cs:[rax + rax]
.label_1117:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	nop	
	jge	.label_1113
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rsi, [rsi]
	lea	rdx, [rax*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	nop	
	call	memset
	mov	rcx, rbp
.label_1113:
	nop	
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_1111
	mov	rbp, rbp
	jmp	.label_1115
.label_1107:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	nop	
	lea	rsi, [rsp + 0x10]
	jle	.label_1109
	nop	
.label_1108:
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_1118
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x78]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbx + 0x90]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jl	.label_1108
	mov	rbp, rbp
	lea	rsi, [rsp + 0x10]
	jmp	.label_1109
.label_1116:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rsp, rsp
	jmp	.label_1112
.label_1118:
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	nop	
	jmp	.label_1109
	nop	word ptr cs:[rax + rax]
.label_1111:
	nop	
	mov	rdx, r12
	lea	rsi, [rsi]
	sub	rdx, r13
	nop	
	mov	rbp, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_1107
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_1109:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	cmp	rcx, 2
	jb	.label_1114
	cmp	rax, -2
	jne	.label_1110
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rbp, rbp
	jge	.label_1114
	mov	rbp, rbp
	mov	qword ptr [r14], rbp
.label_1106:
	mov	rcx, r13
.label_1115:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ffe0

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
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	r12, rdx
	mov	qword ptr [rsp], rsi
	mov	r14, rdi
	mov	r15, qword ptr [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	call	parse_branch
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	r13d, r13d
	test	rbx, rbx
	jne	.label_1132
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_1122
.label_1132:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_1136
	nop	
	mov	rax, qword ptr [rsp + 0x10]
	or	rax, 0x800000
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rsp + 0x28], 0
	mov	rbp, rbp
	jne	.label_1121
	nop	
	jmp	.label_1120
.label_1136:
	mov	r13, rbx
	jmp	.label_1122
.label_1123:
	nop	
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1129
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1131
	nop	word ptr cs:[rax + rax]
.label_1121:
	nop	
	mov	rdi, r12
	nop	
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	peek_token
	mov	rsp, rsp
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [r14 + 0x48], rax
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	ja	.label_1139
	nop	
	mov	ecx, 0x604
	bt	ecx, eax
	mov	rsp, rsp
	mov	ebp, 0
	lea	rsi, [rsi]
	jb	.label_1143
.label_1139:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [r15 + 0xa8], rax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x28]
	nop	
	mov	r13, qword ptr [rsp + 0x30]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rbp
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1138
	nop	
	mov	eax, dword ptr [r13]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1140
.label_1138:
	mov	rax, qword ptr [rsp + 8]
	or	qword ptr [r15 + 0xa8], rax
.label_1143:
	mov	ecx, dword ptr [r15 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	nop	
	je	.label_1123
	mov	rax, qword ptr [r15 + 0x70]
.label_1131:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	r13, [rax + rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1130
	mov	qword ptr [rbx], r13
.label_1130:
	test	rbp, rbp
	je	.label_1142
	mov	rsp, rsp
	mov	qword ptr [rbp], r13
.label_1142:
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbx, r13
	mov	rbp, rbp
	je	.label_1121
	jmp	.label_1122
.label_1128:
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_1129
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1134
	nop	word ptr cs:[rax + rax]
.label_1120:
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x20]
	call	peek_token
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [r14 + 0x48], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [r12 + 8]
	lea	rsi, [rsi]
	or	eax, 8
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	ebp, 0
	je	.label_1125
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0xa8], rax
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp + 0x30]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_1141
	mov	eax, dword ptr [r13]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1140
.label_1141:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	or	qword ptr [r15 + 0xa8], rax
.label_1125:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_1128
	mov	rax, qword ptr [r15 + 0x70]
.label_1134:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_1133
	mov	rsp, rsp
	mov	qword ptr [rbx], r13
.label_1133:
	test	rbp, rbp
	nop	
	je	.label_1124
	mov	qword ptr [rbp], r13
.label_1124:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0xa
	nop	
	mov	rbx, r13
	nop	
	je	.label_1120
	mov	rsp, rsp
	jmp	.label_1122
.label_1140:
	xor	r13d, r13d
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1122
	mov	rbp, rbp
	mov	r14d, 0x400ff
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1135:
	nop	
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_1135
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1135
	nop	dword ptr [rax]
.label_1127:
	mov	eax, dword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	and	eax, r14d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_1119
	cmp	eax, 6
	mov	rbp, rbp
	jne	.label_1126
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1137
	nop	word ptr cs:[rax + rax]
.label_1119:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp + 0x28]
.label_1137:
	mov	rbp, rbp
	call	free
.label_1126:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1122
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	cmp	rbx, rbp
	mov	rbp, rax
	mov	rsp, rsp
	je	.label_1127
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rax
	mov	rbp, rbp
	je	.label_1127
	lea	rdi, [rdi]
	jmp	.label_1135
.label_1129:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
.label_1122:
	mov	rax, r13
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4104e0

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
	jle	.label_1177
	mov	r13, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [r15], r12b
	mov	rsp, rsp
	mov	ebx, dword ptr [r15 + 8]
	mov	eax, ebx
	nop	
	and	eax, 0xff9fffff
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	mov	rbp, rbp
	jl	.label_1147
	nop	
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1147
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rcx + rax*4], -1
	mov	rbp, rbp
	je	.label_1155
.label_1147:
	cmp	r12d, 0x5c
	jne	.label_1159
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1161
	cmp	byte ptr [rbp + 0x8b], 0
	lea	rdi, [rdi]
	jne	.label_1166
.label_1160:
	mov	rcx, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	mov	r14b, byte ptr [rcx + rax]
.label_1175:
	mov	rsp, rsp
	mov	byte ptr [r15], r14b
	mov	rsp, rsp
	and	ebx, 0xff9fff00
	nop	
	or	ebx, 1
	nop	
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1145
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	mov	rsp, rsp
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	mov	rbp, rbp
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	nop	
	or	eax, ecx
	jmp	.label_1180
.label_1177:
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 2
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_1144
.label_1159:
	and	ebx, 0xff9fff00
	or	ebx, 1
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1150
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebx, dword ptr [rax + rcx*4]
	mov	edi, ebx
	nop	
	call	iswalnum
	mov	rbp, rbp
	test	eax, eax
	nop	
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	nop	
	or	cl, al
	mov	rsp, rsp
	movzx	ecx, cl
	shl	ecx, 0x16
	lea	rdi, [rdi]
	mov	eax, 0xffbfffff
	mov	rbp, rbp
	and	eax, dword ptr [r15 + 8]
	lea	rdi, [rdi]
	or	eax, ecx
	lea	rsi, [rsi]
	jmp	.label_1153
.label_1161:
	lea	rsi, [rsi]
	and	ebx, 0xff9fff00
	or	ebx, 0x24
	jmp	.label_1163
.label_1150:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	mov	rbp, rbp
	cmp	r12d, 0x5f
	mov	rbp, rbp
	sete	cl
	lea	rsi, [rsi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	shr	eax, 3
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	or	eax, ecx
	nop	
	shl	eax, 0x16
	or	eax, ebx
.label_1153:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	mov	rsp, rsp
	cmp	r12d, 0x3e
	mov	rbp, rbp
	jg	.label_1173
	mov	rsp, rsp
	lea	ecx, [r12 - 0x24]
	cmp	ecx, 0xa
	nop	
	ja	.label_1179
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1182]]
.label_2724:
	nop	
	mov	rdx, r13
	mov	rbp, rbp
	test	dl, 8
	lea	rsi, [rsi]
	jne	.label_1178
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	lea	rsi, [rsi]
	je	.label_1178
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x48], rcx
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rbp, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	ja	.label_1144
	nop	
	mov	eax, dword ptr [r15 + 8]
.label_1178:
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xc
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_1144
.label_1173:
	mov	rsp, rsp
	cmp	r12d, 0x7a
	lea	rsi, [rsi]
	jg	.label_1162
	cmp	r12d, 0x3f
	je	.label_1165
	lea	rdi, [rdi]
	cmp	r12d, 0x5b
	mov	rdx, r13
	je	.label_1167
	mov	rsp, rsp
	cmp	r12d, 0x5e
	jne	.label_1144
	mov	rbp, rbp
	test	edx, 0x800008
	mov	rbp, rbp
	jne	.label_1172
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_1172
	test	dh, 8
	je	.label_1144
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 8]
	movzx	ecx, byte ptr [rcx + rdx - 1]
	cmp	ecx, 0xa
	jne	.label_1144
.label_1172:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0x10
	jmp	.label_1144
.label_1145:
	movzx	ebp, r14b
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	mov	rbp, rbp
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	lea	rdi, [rdi]
	shl	eax, 0x16
	nop	
	or	eax, ebx
.label_1180:
	mov	dword ptr [r15 + 8], eax
	movzx	ecx, r14b
	mov	r14d, 2
	mov	rsp, rsp
	cmp	ecx, 0x5f
	nop	
	jg	.label_1152
	lea	edx, [rcx - 0x27]
	mov	rsp, rsp
	cmp	edx, 0x2c
	mov	rsp, rsp
	ja	.label_1154
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1156]]
.label_2571:
	mov	rdx, r13
	test	dh, 0x40
	lea	rdi, [rdi]
	jne	.label_1144
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	add	ecx, -0x31
	lea	rsi, [rsi]
	movsxd	rax, ecx
	nop	
	mov	qword ptr [r15], rax
	jmp	.label_1144
.label_1162:
	cmp	r12d, 0x7b
	je	.label_1168
	mov	rsp, rsp
	cmp	r12d, 0x7c
	lea	rsi, [rsi]
	mov	rcx, r13
	lea	rdi, [rdi]
	je	.label_1169
	cmp	r12d, 0x7d
	lea	rdi, [rdi]
	jne	.label_1144
	and	ecx, 0x1200
	lea	rdi, [rdi]
	cmp	rcx, 0x1200
	je	.label_1174
	jmp	.label_1144
.label_1155:
	mov	rbp, rbp
	and	ebx, 0xff9fff00
	or	ebx, 0x200001
.label_1163:
	mov	dword ptr [r15 + 8], ebx
	mov	rbp, rbp
	mov	r14d, 1
.label_1144:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_1152:
	lea	edx, [rcx - 0x73]
	lea	rdi, [rdi]
	cmp	edx, 0xa
	ja	.label_1146
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1149]]
.label_2661:
	lea	rsi, [rsi]
	test	r13d, 0x80000
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_1179:
	cmp	r12d, 0xa
	mov	rsp, rsp
	jne	.label_1144
	lea	rdi, [rdi]
	mov	rcx, r13
	test	ch, 8
	jne	.label_1148
	jmp	.label_1144
.label_2725:
	mov	rbp, rbp
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1164
	nop	
	jmp	.label_1144
.label_2726:
	mov	rsp, rsp
	mov	rcx, r13
	lea	rdi, [rdi]
	test	ch, 0x20
	lea	rsi, [rsi]
	jne	.label_1157
	lea	rdi, [rdi]
	jmp	.label_1144
.label_2727:
	mov	rbp, rbp
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2728:
	test	r13w, 0x402
	lea	rdi, [rdi]
	jne	.label_1144
	jmp	.label_1171
.label_2729:
	nop	
	and	eax, 0xffffff00
	or	eax, 5
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_1144
.label_1165:
	lea	rsi, [rsi]
	test	r13w, 0x402
	jne	.label_1144
	jmp	.label_1176
.label_1167:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_1144
.label_1168:
	and	r13d, 0x1200
	cmp	r13, 0x1200
	mov	rsp, rsp
	je	.label_1181
	jmp	.label_1144
.label_1169:
	test	ch, 4
	mov	rsp, rsp
	jne	.label_1144
	lea	rsi, [rsi]
	test	cx, cx
	lea	rdi, [rdi]
	js	.label_1148
	lea	rdi, [rdi]
	jmp	.label_1144
.label_1146:
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_1151
	nop	
	cmp	ecx, 0x62
	nop	
	jne	.label_1144
	test	r13d, 0x80000
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_1144
.label_1166:
	cmp	edx, 2
	lea	rsi, [rsi]
	jl	.label_1158
	mov	rdx, qword ptr [rbp + 0x10]
	nop	
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	mov	rbp, rbp
	je	.label_1160
	mov	rbp, rbp
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	mov	rsp, rsp
	je	.label_1158
	lea	rsi, [rsi]
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	nop	
	je	.label_1160
.label_1158:
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	je	.label_1170
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1170:
	nop	
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp]
	mov	r14b, byte ptr [rcx + rsi]
	nop	
	je	.label_1175
	test	r14b, r14b
	lea	rdi, [rdi]
	js	.label_1160
	mov	rbp, rbp
	jmp	.label_1175
.label_1154:
	cmp	ecx, 0x57
	mov	rsp, rsp
	jne	.label_1144
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_1144
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	lea	rdi, [rdi]
	jmp	.label_1144
.label_2662:
	nop	
	test	r13d, 0x80000
	lea	rsi, [rsi]
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2663:
	lea	rdi, [rdi]
	and	r13d, 0x1200
	nop	
	cmp	r13, 0x200
	lea	rsi, [rsi]
	jne	.label_1144
.label_1181:
	lea	rdi, [rdi]
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 0x17
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2664:
	mov	rcx, r13
	lea	rsi, [rsi]
	test	ch, 4
	nop	
	jne	.label_1144
	test	cx, cx
	js	.label_1144
.label_1148:
	mov	rsp, rsp
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	nop	
	jmp	.label_1144
.label_2665:
	and	r13d, 0x1200
	lea	rdi, [rdi]
	cmp	r13, 0x200
	jne	.label_1144
.label_1174:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	jmp	.label_1144
.label_1151:
	nop	
	test	r13d, 0x80000
	nop	
	jne	.label_1144
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_1144
.label_2567:
	test	r13d, 0x80000
	jne	.label_1144
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_1144
.label_2568:
	mov	rcx, r13
	test	ch, 0x20
	lea	rdi, [rdi]
	jne	.label_1144
.label_1164:
	lea	rsi, [rsi]
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2569:
	mov	rcx, r13
	test	ch, 0x20
	jne	.label_1144
.label_1157:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2570:
	and	r13d, 0x402
	lea	rdi, [rdi]
	cmp	r13, 2
	jne	.label_1144
.label_1171:
	and	eax, 0xffffff00
	mov	rbp, rbp
	or	eax, 0x12
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2572:
	lea	rdi, [rdi]
	test	r13d, 0x80000
	jne	.label_1144
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	rbp, rbp
	mov	dword ptr [r15], 6
	lea	rdi, [rdi]
	jmp	.label_1144
.label_2573:
	test	r13d, 0x80000
	jne	.label_1144
	mov	rbp, rbp
	and	eax, 0xffffff00
	or	eax, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_1144
.label_2574:
	nop	
	and	r13d, 0x402
	lea	rsi, [rsi]
	cmp	r13, 2
	jne	.label_1144
.label_1176:
	and	eax, 0xffffff00
	or	eax, 0x13
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
.label_2575:
	mov	rbp, rbp
	test	r13d, 0x80000
	lea	rdi, [rdi]
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_1144
.label_2576:
	mov	rsp, rsp
	test	r13d, 0x80000
	nop	
	jne	.label_1144
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_1144
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410d70

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
	mov	r15, r8
	mov	qword ptr [rsp + 8], rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsi]
	call	parse_expression
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rbp, rbp
	test	rbx, rbx
	jne	.label_1206
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14]
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1186
.label_1206:
	nop	
	mov	r13, r14
	test	r15, r15
	mov	rsp, rsp
	jne	.label_1202
	jmp	.label_1208
.label_1196:
	test	rbx, rbx
	mov	rbp, rbp
	cmove	rbx, r14
.label_1202:
	movzx	eax, byte ptr [r12 + 8]
	mov	rbp, rbp
	cmp	eax, 0xa
	ja	.label_1215
	mov	ecx, 0x604
	bt	ecx, eax
	mov	rbp, rbp
	jb	.label_1212
.label_1215:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, r15
	mov	rsp, rsp
	mov	r9, r13
	call	parse_expression
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	setne	al
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_1191
	mov	ecx, dword ptr [r13]
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_1203
.label_1191:
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1196
	mov	rbp, rbp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1196
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_1200
	nop	
	mov	rax, qword ptr [rbp + 0x70]
.label_1216:
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	nop	
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	rbp, rbp
	mov	qword ptr [r14], rdx
	mov	rbp, rbp
	mov	rbx, rdx
	jmp	.label_1202
.label_1200:
	lea	rdi, [rdi]
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	nop	
	je	.label_1189
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_1216
	nop	word ptr cs:[rax + rax]
.label_1204:
	mov	rbp, rbp
	test	rbx, rbx
	cmove	rbx, r14
.label_1208:
	mov	eax, dword ptr [r12 + 8]
	lea	rdi, [rdi]
	or	eax, 8
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 0xa
	je	.label_1194
	lea	rsi, [rsi]
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r9, r13
	nop	
	call	parse_expression
	mov	r14, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	setne	al
	nop	
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_1199
	mov	ecx, dword ptr [r13]
	test	ecx, ecx
	jne	.label_1203
.label_1199:
	mov	rsp, rsp
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1204
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_1204
	mov	ecx, dword ptr [rbp + 0x80]
	mov	rsp, rsp
	cmp	ecx, 0xf
	nop	
	je	.label_1205
	mov	rax, qword ptr [rbp + 0x70]
.label_1197:
	lea	edx, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbp + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	lea	rsi, [rsi]
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_1208
.label_1205:
	mov	rbp, rbp
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1189
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	lea	rdi, [rdi]
	xor	ecx, ecx
	jmp	.label_1197
.label_1203:
	xor	r13d, r13d
	test	al, al
	je	.label_1186
	nop	
	mov	r15d, 0x400ff
	mov	rsp, rsp
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_1195:
	lea	rdi, [rdi]
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_1195
	mov	rbx, qword ptr [rbp + 0x10]
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1195
	nop	word ptr cs:[rax + rax]
.label_1190:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r15d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rsp, rsp
	je	.label_1207
	mov	rbp, rbp
	cmp	eax, 6
	jne	.label_1211
	nop	
	mov	rbx, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbx + 8]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	nop	
	call	free
	mov	rdi, rbx
	jmp	.label_1184
	nop	word ptr [rax + rax]
.label_1207:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x28]
.label_1184:
	call	free
.label_1211:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1186
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	cmp	rbx, rbp
	mov	rbp, rax
	nop	
	je	.label_1190
	test	rbx, rbx
	mov	rbp, rax
	mov	rbp, rbp
	je	.label_1190
	jmp	.label_1195
.label_1212:
	mov	r13, rbx
	jmp	.label_1186
.label_1194:
	mov	r13, rbx
.label_1186:
	mov	rbp, rbp
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1189:
	nop	
	mov	r15d, 0x400ff
.label_1187:
	mov	rsp, rsp
	mov	rbp, r14
	mov	r14, qword ptr [rbp + 8]
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_1187
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp + 0x10]
	nop	
	test	r14, r14
	jne	.label_1187
	nop	word ptr cs:[rax + rax]
.label_1193:
	mov	eax, dword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	and	eax, r15d
	mov	rsp, rsp
	cmp	eax, 3
	je	.label_1192
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_1210
	lea	rdi, [rdi]
	mov	r14, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14]
	nop	
	call	free
	mov	rdi, qword ptr [r14 + 8]
	mov	rsp, rsp
	call	free
	nop	
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_1183
.label_1192:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x28]
.label_1183:
	nop	
	call	free
.label_1210:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1188
	mov	r14, qword ptr [rax + 0x10]
	nop	
	cmp	r14, rbp
	mov	rbp, rax
	je	.label_1193
	lea	rdi, [rdi]
	test	r14, r14
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_1193
	lea	rsi, [rsi]
	jmp	.label_1187
.label_1188:
	mov	r14d, 0x400ff
.label_1185:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1185
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1185
	nop	
.label_1214:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp + 0x30]
	mov	rsp, rsp
	and	eax, r14d
	cmp	eax, 3
	je	.label_1198
	cmp	eax, 6
	nop	
	jne	.label_1201
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	mov	rsp, rsp
	jmp	.label_1209
.label_1198:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x28]
.label_1209:
	nop	
	call	free
.label_1201:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1213
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	cmp	rbx, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_1214
	test	rbx, rbx
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	je	.label_1214
	mov	rbp, rbp
	jmp	.label_1185
.label_1213:
	mov	dword ptr [r13], 0xc
	xor	r13d, r13d
	jmp	.label_1186
	nop	
	.section	.text
	.align	16
	#Procedure 0x411320

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
	sub	rsp, 0xe8
	nop	
	mov	r12, r9
	mov	qword ptr [rsp + 0x98], r12
	mov	rsp, rsp
	mov	r13, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp], rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rdi
	mov	eax, dword ptr [rdx + 8]
	mov	rbp, rbp
	movzx	ecx, al
	xor	r15d, r15d
	lea	edx, [rcx - 1]
	cmp	edx, 0x23
	mov	rsp, rsp
	ja	.label_1240
	mov	r9, qword ptr [rbx]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1287]]
.label_2647:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	cmp	ecx, 0x21
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_5
	nop	
	mov	ecx, OFFSET FLAT:.str.2_3
	nop	
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbx, r9
	mov	r9, r12
	lea	rsi, [rsi]
	call	build_charclass_op
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_1451
	mov	r9, rbx
	mov	rbp, rbp
	jmp	.label_1233
.label_2648:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	cmp	ecx, 0x23
	sete	al
	mov	rbp, rbp
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_2
	mov	ecx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rbp, rbp
	jne	.label_1228
.label_1451:
	nop	
	mov	eax, dword ptr [r12]
	nop	
	test	eax, eax
	mov	rsp, rsp
	mov	r9, rbx
	je	.label_1233
	nop	
	jmp	.label_1240
.label_2638:
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1349
	mov	rax, qword ptr [r9 + 0x70]
.label_1365:
	mov	rsp, rsp
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp]
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rdx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 2
	jl	.label_1249
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x68], rax
	jg	.label_1274
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rdi]
	jmp	.label_1233
.label_1406:
	mov	rbp, r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1285
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	call	peek_token
	cdqe	
	mov	rbp, rbp
	add	qword ptr [rbx + 0x48], rax
	mov	r9, rbp
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1422
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
.label_1377:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp]
	nop	
	movdqu	xmm0, xmmword ptr [rdx]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1369:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	je	.label_1324
	mov	rax, qword ptr [r9 + 0x70]
.label_1396:
	lea	rsi, [rsi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r15
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r15], rdx
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1278
	mov	qword ptr [rbp], rdx
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	mov	r15, rdx
	mov	rbp, rdx
	lea	rsi, [rsi]
	jg	.label_1274
	lea	rdi, [rdi]
	jmp	.label_1233
.label_1422:
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	mov	rbp, r9
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	r9, rbp
	test	rax, rax
	mov	rsp, rsp
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_1369
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_1377
.label_1324:
	nop	
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	mov	r13, r9
	call	malloc
	nop	
	mov	r9, r13
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_1278
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1396
.label_1274:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1406
	mov	rsp, rsp
	mov	rbp, r15
	jmp	.label_1233
.label_2639:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp]
	mov	rbp, rbp
	mov	cl, byte ptr [rbx]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	eax, cl
	mov	rbp, rbp
	cdqe	
	lea	rsi, [rsi]
	test	qword ptr [r9 + 0xa8], rax
	je	.label_1413
	or	qword ptr [r9 + 0xa0], rax
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	mov	rsp, rsp
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1427
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1412:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	movdqu	xmm1, xmmword ptr [rbx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	inc	qword ptr [r9 + 0x98]
	nop	
	or	byte ptr [r9 + 0xb0], 2
	mov	rsp, rsp
	jmp	.label_1233
.label_2640:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1456
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x70]
	mov	rsi, qword ptr [rsp]
.label_1389:
	mov	qword ptr [rsp], rsi
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rsi]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r9 + 0xb4], 1
	nop	
	jle	.label_1233
	or	byte ptr [r9 + 0xb0], 2
	jmp	.label_1233
.label_2641:
	mov	qword ptr [rsp + 0x18], r9
	mov	r15, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	lea	rax, [r15 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	or	rdx, 0x800000
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	peek_token
	mov	rsp, rsp
	cdqe	
	lea	rdi, [rdi]
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r14 + 8]
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	cmp	eax, 9
	mov	rbp, rbp
	je	.label_1263
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rsi, [rsi]
	inc	r13
	nop	
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	lea	rsi, [rsi]
	mov	rsi, rax
	xor	r15d, r15d
	lea	rdi, [rdi]
	cmp	dword ptr [r12], 0
	mov	rsp, rsp
	jne	.label_1240
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 9
	jne	.label_1288
	mov	r15, rbp
.label_1263:
	nop	
	cmp	r15, 8
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	mov	rbx, r15
	ja	.label_1290
	mov	eax, 1
	mov	cl, bl
	mov	rbp, rbp
	shl	eax, cl
	cdqe	
	or	qword ptr [r9 + 0xa8], rax
.label_1290:
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rdi, [rdi]
	je	.label_1299
	mov	rax, qword ptr [r9 + 0x70]
.label_1431:
	mov	rbp, rbp
	mov	qword ptr [rsp], r14
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rsi
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rsi, rsi
	nop	
	je	.label_1306
	mov	rbp, rbp
	mov	qword ptr [rsi], rbp
.label_1306:
	mov	qword ptr [rax + rcx + 0x30], rbx
	jmp	.label_1233
.label_2642:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	ecx, 0x20000
	lea	rdi, [rdi]
	jne	.label_1329
	mov	rsp, rsp
	mov	dword ptr [r12], 0x10
	mov	rbp, rbp
	jmp	.label_1335
.label_2644:
	mov	r15, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15]
	test	ax, 0x30f
	mov	rbp, rbp
	je	.label_1340
	mov	al, byte ptr [r9 + 0xb0]
	nop	
	test	al, 0x10
	jne	.label_1266
	lea	rsi, [rsi]
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r9 + 0xb0], cl
	xor	ebx, ebx
	nop	
	test	al, 8
	mov	ebp, 0
	mov	rbp, rbp
	jne	.label_1350
	lea	rdi, [rdi]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1358]]
	movdqu	xmmword ptr [r9 + 0xb8], xmm0
	lea	rsi, [rsi]
	mov	ebp, 2
	lea	rsi, [rsi]
	mov	ebx, 0x80
	test	al, 4
	je	.label_1350
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r9 + 0xc8], xmm0
.label_1266:
	mov	eax, dword ptr [r15]
.label_1340:
	cmp	eax, 0x200
	je	.label_1373
	lea	rsi, [rsi]
	cmp	eax, 0x100
	jne	.label_1415
	mov	dword ptr [r15], 6
	mov	r13, r15
	mov	rbp, rbp
	lea	r15, [r9 + 0x80]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	lea	rdi, [rdi]
	je	.label_1382
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_1341:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	mov	rbp, rbp
	movsxd	rcx, ebp
	shl	rcx, 6
	nop	
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rsp, rsp
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	lea	rdi, [rdi]
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	mov	rbp, rbp
	jmp	.label_1393
.label_2646:
	mov	rcx, qword ptr [rsp + 0x30]
	test	ecx, 0x1000000
	jne	.label_1309
.label_2643:
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	cl, 0x20
	jne	.label_1309
	test	cl, 0x10
	lea	rdi, [rdi]
	jne	.label_1426
.label_1329:
	nop	
	and	eax, 0xffffff00
	mov	rsp, rsp
	or	eax, 1
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 8], eax
	mov	rbp, rbp
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1429
	nop	
	mov	rax, qword ptr [r9 + 0x70]
.label_1327:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	mov	rbp, rbp
	lea	rbp, [rax + rcx + 8]
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [rbx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_1322:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_1233
.label_2649:
	mov	dword ptr [r12], 5
	jmp	.label_1335
.label_2645:
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x90], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	lea	rdi, [rdi]
	mov	edi, 0x50
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_1225
	mov	rbp, rbp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1225
	mov	qword ptr [rsp + 8], rbx
	mov	rbp, qword ptr [rsp]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	mov	rsp, rsp
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0x19
	nop	
	je	.label_1246
	mov	rsp, rsp
	cmp	edx, 2
	je	.label_1252
	mov	dword ptr [rsp + 0xe0], 0
	nop	
	jmp	.label_1255
.label_1228:
	mov	r9, rbx
	nop	
	jmp	.label_1233
.label_1426:
	mov	r15, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x58]
	nop	
	mov	rsi, rbp
	mov	r14, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rdx, r14
	mov	rsp, rsp
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, r13
	mov	rbp, rbp
	mov	r9, r12
	lea	rsi, [rsi]
	add	rsp, 0xe8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	parse_expression
.label_1249:
	mov	rbp, r15
	mov	rsp, rsp
	jmp	.label_1233
.label_1246:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	or	byte ptr [rcx + 0x20], 1
	nop	
	test	bh, 1
	lea	rdi, [rdi]
	je	.label_1289
	or	byte ptr [r13 + 1], 4
.label_1289:
	cdqe	
	nop	
	mov	rsi, qword ptr [rsp + 0x58]
	add	qword ptr [rsi + 0x48], rax
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp + 8]
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 2
	lea	rsi, [rsi]
	je	.label_1252
	mov	dl, 1
	mov	dword ptr [rsp + 0xe0], edx
.label_1255:
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	movzx	edx, cl
	nop	
	cmp	edx, 0x15
	mov	rsp, rsp
	jne	.label_1310
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp + 8], ecx
.label_1310:
	lea	rcx, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x20], 3
	lea	rdi, [rsp + 0x20]
	mov	r9d, 1
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	r8, rbx
	call	parse_bracket_element
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1330
	mov	rbp, rbp
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0xd0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_1334
.label_1241:
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_1244
	nop	
	mov	qword ptr [rsp + 8], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	lea	rax, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	
	mov	rbp, qword ptr [rsp]
	mov	rdx, rbp
	mov	ecx, ebx
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	parse_bracket_element
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_1334
	lea	rdi, [rdi]
	jmp	.label_1330
.label_2612:
	nop	
	mov	cl, byte ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	or	qword ptr [r13 + rcx*8], rax
	jmp	.label_1378
.label_2613:
	mov	r15, qword ptr [rsp + 8]
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	cmp	rbp, rcx
	mov	rbp, rbp
	je	.label_1390
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15]
.label_1270:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	edx, dword ptr [rsp + 0x28]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	nop	
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_1260
.label_1314:
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	al, byte ptr [rax]
	jmp	.label_1405
.label_1342:
	nop	
	xor	eax, eax
.label_1405:
	cmp	ebx, 3
	je	.label_1407
	lea	rsi, [rsi]
	test	ebx, ebx
	jne	.label_1410
	nop	
	mov	bpl, byte ptr [rsp + 0xa8]
	jmp	.label_1275
.label_1407:
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	bpl, byte ptr [rcx]
	lea	rdi, [rdi]
	jmp	.label_1275
.label_1410:
	mov	rbp, rbp
	xor	ebp, ebp
.label_1275:
	lea	rsi, [rsi]
	cmp	r15d, 3
	je	.label_1432
	test	r15d, r15d
	mov	rsp, rsp
	jne	.label_1425
.label_1432:
	test	r12, r12
	movzx	edx, al
	je	.label_1428
	mov	edi, edx
	call	btowc
	mov	rbp, rbp
	mov	edx, eax
	jmp	.label_1428
.label_1425:
	mov	edx, dword ptr [rsp + 0x28]
.label_1428:
	cmp	ebx, 3
	je	.label_1226
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_1361
.label_1226:
	test	r12, r12
	movzx	ebp, bpl
	je	.label_1304
	mov	edi, ebp
	nop	
	mov	ebx, edx
	nop	
	call	btowc
	mov	edx, ebx
	lea	rdi, [rdi]
	mov	ebp, eax
	jmp	.label_1304
.label_1361:
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rsp + 0xa8]
.label_1304:
	mov	rsp, rsp
	cmp	edx, -1
	mov	ecx, 3
	je	.label_1298
	cmp	ebp, -1
	je	.label_1298
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xd0], 0
	lea	rsi, [rsi]
	je	.label_1445
	cmp	edx, ebp
	lea	rsi, [rsi]
	mov	ecx, 0xb
	ja	.label_1298
.label_1445:
	test	r12, r12
	je	.label_1449
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x50], rax
	je	.label_1453
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x10]
	mov	r9, r13
	nop	
	mov	r15, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rsp + 0x14]
.label_1302:
	mov	dword ptr [rdi + rax*4], edx
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [r14 + rax*4], ebp
	mov	r12, qword ptr [rsp + 0x98]
	jmp	.label_1269
.label_1449:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r9, r13
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x14]
.label_1269:
	lea	rdi, [rdi]
	mov	eax, ebp
	mov	edx, edx
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
.label_1256:
	mov	rbp, rbp
	cmp	rdx, rcx
	mov	rbp, rbp
	ja	.label_1242
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_1242
	lea	rdi, [rdi]
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	lea	rdi, [rdi]
	shr	rdi, 0x3a
	mov	rsp, rsp
	add	rdi, rcx
	mov	rbp, rbp
	sar	rdi, 6
	or	qword ptr [r13 + rdi*8], rsi
.label_1242:
	lea	rsi, [rsi]
	inc	rcx
	cmp	rcx, 0x100
	lea	rdi, [rdi]
	jne	.label_1256
	mov	dword ptr [r12], 0
	jmp	.label_1260
.label_1390:
	lea	rsi, [rsi]
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1229
	lea	rbp, [rbp + rbp + 1]
	mov	qword ptr [rsp + 0x38], rbp
	nop	
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	jmp	.label_1270
.label_1453:
	mov	dword ptr [rsp + 0xdc], edx
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [rax + rax]
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	lea	rbx, [rax*4 + 4]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	realloc
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbx
	nop	
	call	realloc
	mov	rdi, r14
	mov	r14, rax
	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	r15, qword ptr [rsp + 8]
	je	.label_1296
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1296
	mov	rax, qword ptr [rsp + 0x50]
	nop	
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], r14
	mov	rax, qword ptr [r12 + 0x40]
	mov	r9, r13
	mov	ebx, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0xdc]
	jmp	.label_1302
.label_1334:
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	peek_token_bracket
	mov	rbp, rbp
	mov	ebx, eax
	mov	r15d, dword ptr [rsp + 0x20]
	nop	
	cmp	r15d, 2
	je	.label_1321
	cmp	r15d, 4
	jne	.label_1326
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, r13
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	mov	rdx, r15
	lea	rcx, [rsp + 0x90]
	mov	r9, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	build_charclass
	lea	rsi, [rsi]
	mov	dword ptr [r12], eax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_1260
	nop	
	jmp	.label_1404
.label_1326:
	movzx	eax, byte ptr [rbp + 8]
	cmp	eax, 0x16
	mov	r9, qword ptr [rsp + 0x18]
	nop	
	je	.label_1348
	cmp	eax, 2
	jne	.label_1308
	mov	rbp, rbp
	jmp	.label_1355
.label_1348:
	mov	r13, r9
	nop	
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	add	qword ptr [rbp + 0x48], rax
	nop	
	lea	rdi, [rsp + 0x40]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x48]
	mov	rbp, rbp
	cmp	ecx, 0x15
	je	.label_1366
	lea	rsi, [rsi]
	cmp	ecx, 2
	mov	rsp, rsp
	je	.label_1371
	mov	rsp, rsp
	lea	rcx, [rsp + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	mov	dword ptr [rsp + 0xa0], 3
	mov	r9d, 1
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xa0]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rbp, rbp
	lea	rdx, [rsp + 0x40]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	lea	rsi, [rsi]
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1398
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	mov	rdi, qword ptr [rsp]
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	peek_token_bracket
	mov	rbp, rbp
	cmp	dword ptr [r13 + 0xb4], 1
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jg	.label_1344
	xor	r12d, r12d
.label_1344:
	nop	
	mov	ecx, 0xb
	mov	ebx, dword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	cmp	ebx, 2
	je	.label_1298
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], eax
	lea	rsi, [rsi]
	cmp	ebx, 4
	lea	rdi, [rdi]
	je	.label_1298
	cmp	r15d, 3
	lea	rsi, [rsi]
	jne	.label_1447
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	nop	
	call	strlen
	mov	ecx, 3
	mov	rbp, rbp
	cmp	rax, 1
	ja	.label_1298
.label_1447:
	cmp	ebx, 3
	mov	rbp, rbp
	jne	.label_1435
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xa8]
	call	strlen
	nop	
	mov	ecx, 3
	cmp	rax, 1
	nop	
	ja	.label_1298
.label_1435:
	mov	rbp, rbp
	cmp	r15d, 3
	nop	
	je	.label_1314
	test	r15d, r15d
	mov	rbp, rbp
	jne	.label_1342
	mov	al, byte ptr [rsp + 0x28]
	jmp	.label_1405
.label_1366:
	nop	
	mov	eax, ebx
	neg	eax
	cdqe	
	mov	rbp, rbp
	add	qword ptr [rbp + 0x48], rax
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 8], 1
	mov	r9, r13
.label_1308:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	rsp, rsp
	mov	eax, r15d
	cmp	r15d, 3
	mov	rbp, rbp
	ja	.label_1457
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1464]]
.label_1321:
	mov	rbp, qword ptr [rsp + 0x28]
	nop	
	mov	rdi, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rdi, [rdi]
	jne	.label_1220
	mov	cl, byte ptr [rbp]
	mov	rbp, rbp
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	r13, qword ptr [rsp + 0x60]
	or	qword ptr [r13 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_1378:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
.label_1260:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	nop	
	movzx	eax, byte ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	eax, 0x15
	jne	.label_1241
	mov	rbp, rbp
	movsxd	rax, ebx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0xe0]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_1370
	movdqu	xmm0, xmmword ptr [r13]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [r13], xmm0
	movdqu	xmm0, xmmword ptr [r13 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r13 + 0x10], xmm0
.label_1370:
	mov	eax, dword ptr [r9 + 0xb4]
	mov	rsp, rsp
	cmp	eax, 2
	nop	
	jl	.label_1265
	mov	rcx, qword ptr [r9 + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx]
	mov	rbp, rbp
	and	qword ptr [r13], rdx
	nop	
	mov	rdx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	qword ptr [r13 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	and	qword ptr [r13 + 0x10], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r13 + 0x18], rcx
.label_1265:
	cmp	qword ptr [r15 + 0x28], 0
	mov	rsp, rsp
	jne	.label_1281
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x30], 0
	mov	rbp, rbp
	jne	.label_1281
	cmp	qword ptr [r15 + 0x38], 0
	mov	rsp, rsp
	jne	.label_1281
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x40], 0
	lea	rsi, [rsi]
	jne	.label_1281
	mov	rsp, rsp
	cmp	eax, 2
	jl	.label_1293
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1281
	test	byte ptr [r15 + 0x20], 1
	nop	
	jne	.label_1281
.label_1293:
	mov	rdi, qword ptr [r15]
	mov	rbp, r9
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x10]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1316
	mov	rax, qword ptr [r9 + 0x70]
.label_1462:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r13
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_1322
.label_1281:
	nop	
	or	byte ptr [r9 + 0xb0], 2
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1336
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1279:
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdi, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x30], r15
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 6
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r13], 0
	nop	
	jne	.label_1346
	nop	
	cmp	qword ptr [r13 + 8], 0
	jne	.label_1346
	nop	
	cmp	qword ptr [r13 + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1346
	cmp	qword ptr [r13 + 0x18], 0
	je	.label_1391
.label_1346:
	nop	
	mov	qword ptr [rsp + 0x60], r13
	mov	rsp, rsp
	mov	eax, dword ptr [r9 + 0x80]
	mov	rbp, rbp
	cmp	eax, 0xf
	mov	rsp, rsp
	je	.label_1291
	mov	rbp, qword ptr [r9 + 0x70]
.label_1414:
	mov	rbp, rbp
	lea	ecx, [rax + 1]
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	mov	rbp, rbp
	shl	rbx, 6
	nop	
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	nop	
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp + rbx + 0x30], rax
	mov	dword ptr [rbp + rbx + 0x38], 3
	mov	rsp, rsp
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + rbx + 0x40], -1
	nop	
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1218
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + 0x70]
.label_1311:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rdi], rbp
	jmp	.label_1233
.label_1373:
	lea	rsi, [rsi]
	mov	dword ptr [r15], 5
	mov	rbp, rbp
	mov	r13, r15
	lea	r15, [r9 + 0x80]
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r9 + 0x80]
	cmp	ebp, 0xf
	je	.label_1439
	mov	rax, qword ptr [r9 + 0x70]
.label_1362:
	lea	ecx, [rbp + 1]
	nop	
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	mov	rbp, rbp
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	mov	rsp, rsp
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	ecx, 0xa
.label_1393:
	mov	dword ptr [r13], ecx
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r15]
	lea	rdi, [rdi]
	cmp	ebx, 0xf
	lea	rsi, [rsi]
	je	.label_1238
	mov	rax, qword ptr [r9 + 0x70]
.label_1446:
	lea	ecx, [rbx + 1]
	nop	
	mov	dword ptr [r15], ecx
	nop	
	movsxd	rcx, ebx
	shl	rcx, 6
	mov	rbp, rbp
	lea	rbx, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r13]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1319:
	mov	rbp, rbp
	mov	ecx, dword ptr [r15]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_1253
	mov	rax, qword ptr [r9 + 0x70]
.label_1460:
	lea	edx, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [r15], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	nop	
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbp
	mov	qword ptr [rax + rcx + 0x18], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1258
	mov	qword ptr [rbp], r15
.label_1258:
	test	rbx, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	je	.label_1278
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	nop	
	test	rbp, rbp
	jne	.label_1282
	jmp	.label_1278
.label_1415:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1286
	mov	rsp, rsp
	mov	r13, r15
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x70]
.label_1374:
	lea	rdi, [rdi]
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], edx
	lea	rsi, [rsi]
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	shl	rcx, 6
	nop	
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [r13]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	lea	rdi, [rdi]
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x30]
.label_1282:
	nop	
	mov	rdi, r13
	mov	rbx, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	call	peek_token
	lea	rdi, [rdi]
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_1240
.label_1429:
	mov	rbp, r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_1278
	lea	rdi, [rdi]
	mov	r9, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_1327
.label_1330:
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	dword ptr [r12], eax
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1221
.label_1252:
	mov	dword ptr [r12], 2
	jmp	.label_1345
.label_1244:
	mov	dword ptr [r12], 7
.label_1404:
	mov	qword ptr [rsp + 0x18], r9
	jmp	.label_1230
.label_1285:
	mov	r9, rbp
	mov	rbp, r15
	jmp	.label_1233
.label_1349:
	mov	rbp, rbp
	mov	rbx, r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_1278
	nop	
	mov	r9, rbx
	nop	
	mov	rcx, qword ptr [r9 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_1365
.label_1413:
	mov	dword ptr [r12], 6
	jmp	.label_1335
.label_1456:
	nop	
	mov	rbx, r9
	mov	rsp, rsp
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_1278
	lea	rsi, [rsi]
	mov	r9, rbx
	nop	
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	nop	
	jmp	.label_1389
.label_1225:
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, rbx
	call	free
	lea	rdi, [rdi]
	jmp	.label_1278
.label_1427:
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1278
	mov	rsp, rsp
	mov	r9, rbp
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1412
.label_1299:
	nop	
	mov	r15, rsi
	mov	rsp, rsp
	mov	rbp, r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	je	.label_1278
	lea	rdi, [rdi]
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rsi, r15
	jmp	.label_1431
.label_1238:
	mov	edi, 0x3c8
	mov	rbx, r9
	call	malloc
	mov	r9, rbx
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1319
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1446
.label_1253:
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1278
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_1460
.label_1220:
	mov	dword ptr [r12], 3
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1221
.label_1350:
	nop	
	mov	r13, r9
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	r9, r13
	mov	rdx, qword ptr [rax]
	inc	rbx
.label_1262:
	lea	rdi, [rdi]
	mov	rsi, rbx
	xor	eax, eax
	nop	dword ptr [rax]
.label_1434:
	test	byte ptr [rdx + rsi*2 - 2], 8
	je	.label_1234
	lea	rsi, [rsi]
	mov	edi, 1
	mov	cl, al
	mov	rsp, rsp
	shl	rdi, cl
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1234:
	cmp	esi, 0x5f
	mov	rbp, rbp
	je	.label_1245
	mov	rsp, rsp
	movzx	ecx, word ptr [rdx + rsi*2]
	lea	rsi, [rsi]
	and	ecx, 8
	lea	rdi, [rdi]
	test	cx, cx
	nop	
	je	.label_1247
.label_1245:
	lea	ecx, [rax + 1]
	mov	edi, 1
	shl	rdi, cl
	lea	rsi, [rsi]
	or	qword ptr [r9 + rbp*8 + 0xb8], rdi
.label_1247:
	mov	rsp, rsp
	add	rax, 2
	add	rsi, 2
	nop	
	cmp	rax, 0x40
	mov	rbp, rbp
	jne	.label_1434
	inc	rbp
	mov	rsp, rsp
	add	rbx, 0x40
	cmp	ebp, 4
	lea	rdi, [rdi]
	jne	.label_1262
	jmp	.label_1266
.label_1336:
	mov	qword ptr [rsp + 0x60], r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1229
	mov	r9, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [r9 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1279
.label_1291:
	nop	
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x18], r9
	nop	
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1229
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	lea	rdi, [rdi]
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_1414
.label_1218:
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_1229
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	nop	
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	jmp	.label_1311
.label_1355:
	mov	dword ptr [r12], 7
	mov	rsp, rsp
	jmp	.label_1221
.label_1382:
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 9
	mov	rsp, rsp
	xor	ebp, ebp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1333
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1341
.label_1439:
	nop	
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	mov	ecx, 0xa
	xor	ebp, ebp
	test	rax, rax
	je	.label_1356
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	jmp	.label_1362
.label_1286:
	mov	rbx, r9
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1278
	mov	r13, r15
	mov	r9, rbx
	mov	rbp, rbp
	mov	rcx, qword ptr [r9 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	nop	
	mov	dword ptr [r9 + 0x80], 0
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_1374
.label_1278:
	lea	rdi, [rdi]
	mov	dword ptr [r12], 0xc
	lea	rsi, [rsi]
	jmp	.label_1335
.label_1371:
	mov	dword ptr [r12], 7
	jmp	.label_1394
.label_1391:
	mov	rbp, rdi
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rbx, r9
	lea	rdi, [rdi]
	call	free
	mov	r9, rbx
	lea	rdi, [rdi]
	jmp	.label_1233
.label_1288:
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_1402
	mov	rsp, rsp
	mov	r14d, 0x400ff
.label_1409:
	nop	
	mov	rbp, rsi
	mov	rsi, qword ptr [rbp + 8]
	test	rsi, rsi
	jne	.label_1409
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	test	rsi, rsi
	jne	.label_1409
.label_1436:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	mov	rsp, rsp
	je	.label_1419
	nop	
	cmp	eax, 6
	jne	.label_1420
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1441
.label_1419:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1441:
	nop	
	call	free
.label_1420:
	mov	rax, qword ptr [rbp]
	nop	
	test	rax, rax
	je	.label_1402
	mov	rsi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rsi, rbp
	mov	rsp, rsp
	mov	rbp, rax
	je	.label_1436
	test	rsi, rsi
	mov	rbp, rax
	je	.label_1436
	jmp	.label_1409
.label_1402:
	lea	rsi, [rsi]
	mov	dword ptr [r12], 8
	jmp	.label_1335
.label_1333:
	mov	r9, qword ptr [rsp + 0x18]
	jmp	.label_1393
.label_1356:
	mov	r9, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jmp	.label_1393
.label_1398:
	mov	dword ptr [r12], eax
	mov	rbp, rbp
	jmp	.label_1394
.label_1316:
	mov	qword ptr [rsp + 0x60], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r9
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1229
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x60]
	jmp	.label_1462
.label_1229:
	mov	dword ptr [r12], 0xc
	mov	r13, qword ptr [rsp + 0x60]
.label_1345:
	nop	
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jmp	.label_1230
.label_1296:
	call	free
	mov	rbp, rbp
	mov	rdi, r14
	call	free
	nop	
	mov	ecx, 0xc
.label_1298:
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], ecx
.label_1394:
	mov	rsp, rsp
	mov	r9, r13
.label_1221:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
.label_1230:
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	nop	
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	mov	r9, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	ebp, 0
	jne	.label_1240
.label_1233:
	mov	qword ptr [rsp + 0x18], r9
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	mov	rdi, rbx
	mov	r13, qword ptr [rsp + 0x58]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x30]
	mov	rdx, r14
	mov	rbp, rbp
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	nop	
	mov	eax, r14d
	nop	
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0xd0], rax
	and	r14d, 0x200000
	mov	qword ptr [rsp + 0x50], r14
	nop	dword ptr [rax]
.label_1424:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 8]
	nop	
	cmp	eax, 0x17
	ja	.label_1292
	mov	rsp, rsp
	mov	ecx, 0x8c0800
	mov	rbp, rbp
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_1295
	mov	r14, qword ptr [r13 + 0x48]
	nop	
	movdqu	xmm0, xmmword ptr [rbx]
	nop	
	movdqa	xmmword ptr [rsp + 0xb0], xmm0
	mov	rdx, -1
	nop	
	cmp	eax, 0x17
	mov	rbp, rbp
	je	.label_1280
	mov	r14, rbp
	lea	rsi, [rsi]
	cmp	eax, 0x12
	nop	
	sete	cl
	movzx	r15d, cl
	cmp	eax, 0x13
	lea	rsi, [rsi]
	mov	rcx, -1
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rbp, rbp
	cmove	rcx, rax
	jmp	.label_1277
.label_1359:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15*4]
	nop	
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	edx, 0x8000
	mov	rsp, rsp
	cmovle	rdx, rax
	nop	dword ptr [rax]
.label_1280:
	mov	rsp, rsp
	mov	r15, rdx
	mov	rdi, rbx
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	dl, byte ptr [rbx]
	lea	rdi, [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rbx + 8]
	nop	
	mov	esi, 0x18
	cmp	eax, 0x18
	je	.label_1337
	nop	
	cmp	eax, 2
	je	.label_1343
	lea	rsi, [rsi]
	mov	dl, 0x2c
	cmp	ecx, 0x2c
	je	.label_1347
	nop	
	cmp	ecx, 0x30
	mov	rdx, -2
	nop	
	jb	.label_1280
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_1280
	cmp	r15, -2
	je	.label_1280
	cmp	ecx, 0x39
	nop	
	ja	.label_1280
	nop	
	cmp	r15, -1
	mov	rbp, rbp
	jne	.label_1359
	lea	rdx, [rcx - 0x30]
	nop	
	jmp	.label_1280
.label_1347:
	lea	rdi, [rdi]
	mov	esi, eax
	nop	dword ptr [rax]
.label_1337:
	cmp	r15, -1
	lea	rdi, [rdi]
	jne	.label_1360
	movzx	eax, dl
	cmp	eax, 0x2c
	lea	rdi, [rdi]
	jne	.label_1368
	cmp	esi, 1
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_1372
.label_1368:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], rbp
	mov	rbp, rbp
	jmp	.label_1376
	nop	word ptr cs:[rax + rax]
.label_1360:
	cmp	r15, -2
	je	.label_1343
	lea	rdi, [rdi]
	cmp	esi, 0x18
	mov	rsp, rsp
	je	.label_1387
	cmp	esi, 1
	lea	rsi, [rsi]
	jne	.label_1343
	movzx	ecx, dl
	cmp	ecx, 0x2c
	jne	.label_1343
.label_1372:
	mov	qword ptr [rsp + 0x60], r14
	nop	
	mov	r14, rbp
	mov	rbp, r12
	lea	rsi, [rsi]
	mov	rdx, -1
	jmp	.label_1271
.label_1387:
	mov	rbp, rbp
	mov	r14, rbp
	mov	rcx, r15
	mov	rbp, rbp
	jmp	.label_1401
.label_1301:
	lea	rax, [r12 + r12*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	nop	
	cmovg	rdx, rax
.label_1271:
	mov	r12, rdx
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	call	peek_token
	cdqe	
	lea	rsi, [rsi]
	add	qword ptr [r13 + 0x48], rax
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 8]
	mov	rsp, rsp
	cmp	eax, 0x18
	lea	rsi, [rsi]
	je	.label_1423
	cmp	eax, 2
	je	.label_1430
	lea	rsi, [rsi]
	cmp	ecx, 0x2c
	je	.label_1423
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	mov	rdx, -2
	jb	.label_1271
	mov	rbp, rbp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_1271
	cmp	r12, -2
	je	.label_1271
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rsp, rsp
	cmp	eax, 0x39
	nop	
	ja	.label_1271
	lea	rdi, [rdi]
	cmp	r12, -1
	mov	rsp, rsp
	jne	.label_1301
	nop	
	add	rcx, -0x30
	mov	rdx, rcx
	nop	
	jmp	.label_1271
.label_1423:
	mov	rcx, r12
	lea	rsi, [rsi]
	cmp	rcx, -2
	lea	rsi, [rsi]
	je	.label_1430
	cmp	rcx, -1
	mov	r12, rbp
	lea	rsi, [rsi]
	je	.label_1401
	cmp	r15, rcx
	mov	rsp, rsp
	jg	.label_1450
.label_1401:
	cmp	eax, 0x18
	nop	
	jne	.label_1450
	mov	rsp, rsp
	cmp	rcx, -1
	mov	rax, rcx
	cmove	rax, r15
	cmp	rax, 0x8000
	lea	rdi, [rdi]
	jge	.label_1458
	nop	dword ptr [rax]
.label_1277:
	lea	rdi, [rdi]
	mov	rbp, rcx
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	mov	rsp, rsp
	add	qword ptr [r13 + 0x48], rax
	test	r14, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe0], r14
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_1227
	lea	rsi, [rsi]
	mov	r9, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r9
	mov	rax, r9
	lea	rsi, [rsi]
	or	rax, r15
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rax, rdi
	lea	rsi, [rsi]
	je	.label_1236
	test	r15, r15
	lea	rdi, [rdi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rax
	nop	
	mov	r12, rdi
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	jg	.label_1251
.label_1317:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x11
	jne	.label_1259
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	word ptr cs:[rax + rax]
.label_1267:
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_1267
	mov	rdx, qword ptr [rcx + 0x10]
	nop	
	test	rdx, rdx
	lea	rsi, [rsi]
	jne	.label_1267
	nop	
.label_1235:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	movzx	esi, dl
	lea	rsi, [rsi]
	cmp	esi, 0x11
	mov	rsp, rsp
	jne	.label_1276
	cmp	qword ptr [rcx + 0x28], rax
	nop	
	jne	.label_1276
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1276:
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1259
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rsi
	je	.label_1235
	lea	rsi, [rsi]
	test	rdx, rdx
	nop	
	mov	rcx, rsi
	mov	rbp, rbp
	je	.label_1235
	jmp	.label_1267
	nop	dword ptr [rax + rax]
.label_1259:
	nop	
	mov	qword ptr [rsp + 0xe0], rdi
	nop	
	cmp	r9, -1
	sete	bl
	nop	
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1437
	mov	rsp, rsp
	mov	rax, qword ptr [r8 + 0x70]
.label_1459:
	lea	rdi, [rdi]
	movzx	edx, bl
	or	edx, 0xa
	lea	esi, [rcx + 1]
	nop	
	mov	dword ptr [r8 + 0x80], esi
	mov	rbp, rbp
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	nop	
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], edx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rsp, rsp
	test	r12, r12
	je	.label_1307
	mov	rsp, rsp
	mov	qword ptr [r12], r13
.label_1307:
	lea	rsi, [rsi]
	add	r15, 2
	cmp	r15, r9
	jg	.label_1328
	nop	
	jmp	.label_1331
	nop	word ptr cs:[rax + rax]
.label_1236:
	mov	rbx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1236
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1236
	nop	
.label_1386:
	nop	
	mov	eax, dword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	ecx, 0x400ff
	and	eax, ecx
	nop	
	cmp	eax, 3
	lea	rsi, [rsi]
	je	.label_1443
	mov	rbp, rbp
	cmp	eax, 6
	jne	.label_1353
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	nop	
	mov	rdi, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, rbp
	jmp	.label_1367
	nop	dword ptr [rax]
.label_1443:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1367:
	mov	rsp, rsp
	call	free
.label_1353:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_1227
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsp, rsp
	je	.label_1386
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, rdx
	je	.label_1386
	jmp	.label_1236
.label_1461:
	mov	qword ptr [rsp + 8], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r15
	lea	rdi, [rdi]
	mov	r15, r8
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1399
	mov	r8, r15
	mov	rcx, qword ptr [r8 + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r8 + 0x80], 0
	nop	
	xor	ecx, ecx
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1243
.label_1418:
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	r12, rbx
	lea	rdi, [rdi]
	jmp	.label_1385
.label_1313:
	mov	edi, 0x3c8
	mov	rsp, rsp
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	mov	r8, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1338
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1222
.label_1399:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1354
.label_1397:
	mov	qword ptr [r14], 0
.label_1354:
	xor	r12d, r12d
.label_1385:
	mov	edi, 0x3c8
	lea	rsi, [rsi]
	call	malloc
	test	rax, rax
	mov	r8, r15
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	mov	rsp, rsp
	je	.label_1338
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r8 + 0x70]
	nop	
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1375
	nop	word ptr cs:[rax + rax]
.label_1331:
	mov	rsp, rsp
	mov	rbp, qword ptr [r12]
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1461
	mov	rax, qword ptr [r8 + 0x70]
.label_1243:
	lea	rdx, [r12 + 0x28]
	nop	
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rcx, ecx
	nop	
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rsp, rsp
	lea	r14, [rsp + 0x70]
	jmp	.label_1223
	nop	dword ptr [rax + rax]
.label_1232:
	lea	rdx, [r12 + 0x28]
	mov	rbp, rbp
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	shl	rsi, 6
	nop	
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	mov	rsp, rsp
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	nop	
	lea	rcx, [rax + rsi + 8]
	nop	
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	nop	
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r14], rcx
.label_1223:
	mov	qword ptr [rcx], rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + 0x30], 0x40000
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_1272
	mov	rsp, rsp
	lea	r14, [rbp + 8]
	mov	r12, rax
	jmp	.label_1284
	nop	word ptr [rax + rax]
.label_1272:
	mov	rbp, rbp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1442:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r12, rcx
	je	.label_1440
	test	r12, r12
	jne	.label_1323
.label_1440:
	mov	r12, qword ptr [rax]
	nop	
	mov	rbp, qword ptr [rbp]
	test	r12, r12
	jne	.label_1442
	nop	
	jmp	.label_1297
.label_1323:
	lea	r14, [rbp + 0x10]
.label_1284:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	nop	
	je	.label_1332
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1232
.label_1332:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r15
	mov	r15, r8
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1397
	mov	r8, r15
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	nop	
	mov	r15, qword ptr [rsp + 0x60]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1232
	nop	word ptr cs:[rax + rax]
.label_1297:
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	nop	
	je	.label_1418
	mov	rax, qword ptr [r8 + 0x70]
	nop	
	mov	r12, rbx
.label_1375:
	nop	
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	lea	rdi, [rdi]
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	nop	
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbx
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_1338
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1313
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1222:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	nop	
	movsxd	rcx, ecx
	shl	rcx, 6
	nop	
	lea	r13, [rax + rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 8], 0
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x10], rbx
	nop	
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r13
	cmp	r15, r9
	nop	
	lea	r15, [r15 + 1]
	lea	rdi, [rdi]
	jl	.label_1331
.label_1328:
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	je	.label_1392
	mov	rbx, rax
	mov	rsp, rsp
	mov	ecx, dword ptr [r8 + 0x80]
	nop	
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x98]
	je	.label_1395
	lea	rsi, [rsi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1315:
	lea	edx, [rcx + 1]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	nop	
	lea	rdx, [rax + rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r13], rdx
	mov	r13, rdx
	nop	
	jmp	.label_1403
.label_1392:
	mov	r12, qword ptr [rsp + 0x98]
.label_1403:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, r13
	nop	
	jmp	.label_1219
.label_1450:
	mov	qword ptr [rsp + 0xe0], r14
.label_1376:
	nop	
	mov	dword ptr [r12], 0xa
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_1227
.label_1251:
	mov	rbp, rbp
	cmp	r15, 2
	mov	r13, rdi
	mov	rbp, rbp
	mov	rbp, rdi
	jl	.label_1438
	mov	rax, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rax]
	mov	r13, rax
	mov	rbp, rbp
	mov	ebx, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	jmp	.label_1444
.label_1437:
	mov	edi, 0x3c8
	mov	rbp, r8
	mov	r14, r9
	call	malloc
	mov	r9, r14
	lea	rdi, [rdi]
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r8, rbp
	test	rax, rax
	je	.label_1338
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	rsp, rsp
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	jmp	.label_1459
.label_1430:
	mov	r12, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x60]
.label_1343:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x50], 0
	nop	
	je	.label_1224
	mov	qword ptr [r13 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xb0]
	nop	
	movdqu	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 8], 1
	nop	
	mov	rcx, rbp
	mov	qword ptr [rsp + 0xe0], rbp
	jmp	.label_1227
.label_1294:
	nop	
	mov	qword ptr [rsp + 0x60], rdi
	mov	qword ptr [rsp + 8], r9
	mov	edi, 0x3c8
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1248
	mov	rbp, rbp
	mov	r14, rbp
	mov	r8, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1384
.label_1417:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	rsp, rsp
	mov	r13, rbp
	jmp	.label_1463
.label_1248:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], 0
	lea	rdi, [rdi]
	jmp	.label_1268
.label_1400:
	lea	rsi, [rsi]
	mov	qword ptr [r12], 0
.label_1268:
	nop	
	xor	r13d, r13d
.label_1463:
	lea	rdi, [rdi]
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x18]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 8]
	nop	
	je	.label_1338
	mov	rbp, rbp
	mov	rcx, qword ptr [r8 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	jmp	.label_1364
	nop	
.label_1444:
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	mov	rbp, rbp
	je	.label_1294
	mov	rsp, rsp
	mov	r14, rbp
	mov	rax, qword ptr [r8 + 0x70]
.label_1384:
	lea	rsi, [rsi]
	lea	rdx, [r13 + 0x28]
	mov	rbp, rbp
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	lea	rdi, [rdi]
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	nop	
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	nop	
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	mov	rbp, rbp
	lea	rbp, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbp
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	r12, [rsp + 0x70]
	jmp	.label_1303
	nop	word ptr cs:[rax + rax]
.label_1250:
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rsi, [rsi]
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r12], rcx
.label_1303:
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	lea	rsi, [rsi]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rdx, qword ptr [r12]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1352
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	r12, [r14 + 8]
	mov	r13, rax
	jmp	.label_1363
	nop	dword ptr [rax]
.label_1352:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1380:
	mov	rcx, rax
	mov	rax, r13
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_1452
	test	r13, r13
	lea	rdi, [rdi]
	jne	.label_1411
.label_1452:
	nop	
	mov	r13, qword ptr [rax]
	mov	rdx, qword ptr [rdx]
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_1380
	jmp	.label_1383
.label_1411:
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	rsi, [rsi]
	lea	r12, [r14 + 0x10]
.label_1363:
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1388
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1250
.label_1388:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	mov	edi, 0x3c8
	lea	rdi, [rdi]
	call	malloc
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_1400
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x60]
	jmp	.label_1250
	nop	word ptr cs:[rax + rax]
.label_1383:
	mov	ecx, dword ptr [r8 + 0x80]
	mov	rbp, rbp
	cmp	ecx, 0xf
	lea	rsi, [rsi]
	je	.label_1417
	nop	
	mov	rax, qword ptr [r8 + 0x70]
	mov	r13, rbp
.label_1364:
	mov	rbp, rbp
	lea	edx, [rcx + 1]
	lea	rsi, [rsi]
	mov	dword ptr [r8 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], r13
	mov	dword ptr [rax + rcx + 0x38], 0x10
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	nop	
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1454
	mov	qword ptr [rdi], rdx
.label_1454:
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_1338
	lea	rdi, [rdi]
	mov	rbp, rdx
	nop	
	mov	qword ptr [r13], rbp
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	mov	rdi, rbp
	nop	
	jl	.label_1444
.label_1438:
	cmp	r15, r9
	mov	rsp, rsp
	jne	.label_1455
	mov	qword ptr [rsp + 0x18], r8
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	jmp	.label_1227
.label_1395:
	mov	qword ptr [rsp + 0x18], r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	nop	
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_1227
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r8 + 0x70], rax
	mov	rbp, rbp
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	pxor	xmm1, xmm1
	jmp	.label_1315
.label_1455:
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	mov	ecx, dword ptr [r8 + 0x80]
	cmp	ecx, 0xf
	je	.label_1239
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r8 + 0x70]
.label_1381:
	nop	
	lea	rdx, [r13 + 0x28]
	lea	rdi, [rdi]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	mov	rsp, rsp
	movsxd	rcx, ecx
	mov	rsp, rsp
	shl	rcx, 6
	mov	rsp, rsp
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	mov	rbp, rbp
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	mov	rsp, rsp
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], r12
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rbp, [rsp + 0x70]
	jmp	.label_1421
	nop	word ptr cs:[rax + rax]
.label_1339:
	nop	
	lea	rdx, [r13 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [r8 + 0x80], esi
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	mov	rbp, rbp
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	rbp, rbp
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	rbp, rbp
	mov	qword ptr [rbp], rcx
.label_1421:
	mov	rsp, rsp
	mov	qword ptr [rcx], rbx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	mov	rax, qword ptr [r13 + 8]
	test	rax, rax
	je	.label_1300
	lea	rbp, [rbx + 8]
	mov	r13, rax
	jmp	.label_1264
.label_1300:
	lea	rsi, [rsi]
	xor	eax, eax
.label_1320:
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	rax, r13
	nop	
	mov	r13, qword ptr [rax + 0x10]
	mov	rsp, rsp
	cmp	r13, rcx
	je	.label_1312
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_1318
.label_1312:
	mov	rsp, rsp
	mov	r13, qword ptr [rax]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbx]
	lea	rsi, [rsi]
	test	r13, r13
	nop	
	jne	.label_1320
	jmp	.label_1325
.label_1318:
	lea	rbp, [rbx + 0x10]
.label_1264:
	mov	ecx, dword ptr [r8 + 0x80]
	lea	rdi, [rdi]
	cmp	ecx, 0xf
	je	.label_1357
	mov	rax, qword ptr [r8 + 0x70]
	jmp	.label_1339
.label_1357:
	mov	qword ptr [rsp + 8], r9
	mov	r14, r8
	mov	edi, 0x3c8
	nop	
	call	malloc
	test	rax, rax
	je	.label_1433
	mov	r8, r14
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x70], rax
	mov	dword ptr [r8 + 0x80], 0
	xor	ecx, ecx
	mov	rsp, rsp
	pxor	xmm1, xmm1
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_1339
.label_1224:
	mov	qword ptr [rsp + 0xe0], rbp
	cmp	eax, 2
	setne	al
	nop	
	movzx	eax, al
	mov	rbp, rbp
	add	eax, 9
	lea	rsi, [rsi]
	mov	dword ptr [r12], eax
	xor	ecx, ecx
	jmp	.label_1227
.label_1325:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xe0]
	jmp	.label_1317
.label_1458:
	mov	qword ptr [rsp + 0xe0], r14
	mov	rsp, rsp
	mov	dword ptr [r12], 0xf
	nop	
	xor	ecx, ecx
	jmp	.label_1227
.label_1239:
	lea	rsi, [rsi]
	mov	r14, r9
	nop	
	mov	r12, r8
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_1379
	nop	
	mov	qword ptr [rsp + 0x38], rbp
	lea	rdi, [rdi]
	mov	r8, r12
	mov	rsp, rsp
	mov	rcx, qword ptr [r8 + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x70], rax
	nop	
	mov	dword ptr [r8 + 0x80], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
	mov	rsp, rsp
	mov	r9, r14
	lea	rdi, [rdi]
	jmp	.label_1381
.label_1379:
	mov	qword ptr [rsp + 0x70], 0
	nop	
	jmp	.label_1338
.label_1433:
	lea	rsi, [rsi]
	mov	qword ptr [rbp], 0
.label_1338:
	nop	
	mov	r12, qword ptr [rsp + 0x98]
	mov	dword ptr [r12], 0xc
	xor	ecx, ecx
.label_1227:
	test	rcx, rcx
	nop	
	sete	al
	jne	.label_1219
	lea	rsi, [rsi]
	mov	edx, dword ptr [r12]
	lea	rdi, [rdi]
	test	edx, edx
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	je	.label_1408
	lea	rsi, [rsi]
	jmp	.label_1416
	nop	word ptr cs:[rax + rax]
.label_1219:
	mov	rbx, qword ptr [rsp]
.label_1408:
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rbp, rcx
	nop	
	mov	r13, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	je	.label_1424
	nop	
	movzx	edx, byte ptr [rbx + 8]
	mov	rbp, rbp
	cmp	edx, 0x17
	mov	rbp, rbp
	je	.label_1305
	nop	
	cmp	edx, 0xb
	nop	
	mov	rbp, rcx
	mov	rbp, rbp
	jne	.label_1424
.label_1305:
	mov	rbp, rbp
	test	al, al
	jne	.label_1309
	mov	r14d, 0x400ff
	nop	word ptr cs:[rax + rax]
.label_1237:
	nop	
	mov	rbp, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	jne	.label_1237
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_1237
	nop	
.label_1231:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	and	eax, r14d
	lea	rdi, [rdi]
	cmp	eax, 3
	mov	rbp, rbp
	je	.label_1351
	lea	rsi, [rsi]
	cmp	eax, 6
	nop	
	jne	.label_1448
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	nop	
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	nop	
	mov	rdi, rbx
	jmp	.label_1217
	nop	dword ptr [rax + rax]
.label_1351:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1217:
	lea	rsi, [rsi]
	call	free
.label_1448:
	nop	
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1309
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1231
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1231
	jmp	.label_1237
.label_1416:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rcx, qword ptr [rsp + 0xe0]
	test	rcx, rcx
	nop	
	je	.label_1240
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1254:
	mov	rbp, rcx
	nop	
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	lea	rsi, [rsi]
	jne	.label_1254
	nop	
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_1254
	nop	dword ptr [rax]
.label_1283:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1257
	cmp	eax, 6
	jne	.label_1261
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	call	free
	mov	rdi, rbx
	jmp	.label_1273
	nop	
.label_1257:
	nop	
	mov	rdi, qword ptr [rbp + 0x28]
.label_1273:
	lea	rsi, [rsi]
	call	free
.label_1261:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1240
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1283
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_1283
	mov	rsp, rsp
	jmp	.label_1254
.label_1309:
	mov	dword ptr [r12], 0xd
.label_1335:
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_1240
.label_1292:
	lea	rdi, [rdi]
	mov	r15, rbp
	mov	rsp, rsp
	jmp	.label_1240
.label_1295:
	mov	r15, rbp
.label_1240:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_1457:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	lea	rdi, [rdi]
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414580

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
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 0x14], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1478
	mov	qword ptr [rsp], r15
	nop	
	mov	edi, 0x50
	nop	
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1474
	lea	rdi, [rdi]
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0x14]
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 0x20], al
	nop	
	lea	rcx, [rsp + 8]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	nop	
	call	build_charclass
	mov	rbp, rbp
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jne	.label_1471
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1475
	lea	rdi, [rdi]
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1473:
	movsx	rcx, al
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	lea	rdi, [rdi]
	shr	rdx, 0x3a
	add	rdx, rcx
	lea	rsi, [rsi]
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	mov	al, byte ptr [rbp]
	mov	rbp, rbp
	inc	rbp
	lea	rdi, [rdi]
	test	al, al
	jne	.label_1473
.label_1475:
	mov	eax, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	al, al
	je	.label_1467
	movdqu	xmm0, xmmword ptr [rbx]
	lea	rdi, [rdi]
	pcmpeqd	xmm1, xmm1
	lea	rsi, [rsi]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	mov	rsp, rsp
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	mov	rbp, rbp
	pxor	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1467:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1479
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	nop	
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	and	qword ptr [rbx + 0x18], rax
.label_1479:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	mov	rsp, rsp
	je	.label_1466
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x70]
.label_1482:
	lea	edx, [rcx + 1]
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], edx
	mov	rsp, rsp
	movsxd	rcx, ecx
	mov	rsp, rsp
	shl	rcx, 6
	mov	rsp, rsp
	lea	r14, [rax + rcx + 8]
	mov	rsp, rsp
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0xb4], 2
	lea	rsi, [rsi]
	jl	.label_1470
	lea	rsi, [rsi]
	or	byte ptr [r12 + 0xb0], 2
	mov	rsp, rsp
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	lea	rsi, [rsi]
	je	.label_1468
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 0x70]
.label_1472:
	lea	rdi, [rdi]
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	lea	rdi, [rdi]
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12 + 0x80]
	nop	
	cmp	eax, 0xf
	je	.label_1477
	mov	rcx, qword ptr [r12 + 0x70]
.label_1480:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	nop	
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	lea	rsi, [rsi]
	shl	rsi, 6
	nop	
	lea	rax, [rcx + rsi + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + rsi + 8], 0
	nop	
	mov	qword ptr [rcx + rsi + 0x10], r14
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_1465
.label_1470:
	mov	rdi, qword ptr [r15]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	nop	
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_1465
.label_1478:
	mov	rsp, rsp
	mov	dword ptr [r15], 0xc
	nop	
	jmp	.label_1476
.label_1474:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jmp	.label_1481
.label_1471:
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
	jmp	.label_1476
.label_1466:
	lea	rsi, [rsi]
	mov	edi, 0x3c8
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1469
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_1482
.label_1468:
	mov	edi, 0x3c8
	call	malloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1469
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x70], rbp
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x80], 0
	nop	
	xor	eax, eax
	jmp	.label_1472
.label_1469:
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 8]
	nop	
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rsp, rsp
	mov	rdi, r15
.label_1481:
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_1476:
	xor	eax, eax
.label_1465:
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_1477:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	test	rcx, rcx
	nop	
	je	.label_1465
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x80], 0
	mov	rsp, rsp
	jmp	.label_1480
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414a90

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	lea	rsi, [rsi]
	jle	.label_1486
	mov	rcx, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	mov	rsp, rsp
	jl	.label_1490
	mov	rsp, rsp
	mov	r8, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_1490
	mov	rcx, qword ptr [rsi + 0x10]
	nop	
	cmp	dword ptr [rcx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_1483
.label_1490:
	test	dl, 1
	mov	rsp, rsp
	je	.label_1489
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	jne	.label_1489
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_1489
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x48], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	lea	rsi, [rsi]
	jmp	.label_1483
.label_1486:
	mov	byte ptr [rdi + 8], 2
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_1489:
	mov	rbp, rbp
	cmp	eax, 0x5b
	jne	.label_1491
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_1492
	mov	rcx, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	jmp	.label_1493
.label_1491:
	cmp	eax, 0x5e
	nop	
	je	.label_1485
	lea	rdi, [rdi]
	cmp	eax, 0x5d
	je	.label_1488
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_1483
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	lea	rsi, [rsi]
	ret	
.label_1483:
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_1492:
	mov	rbp, rbp
	xor	eax, eax
.label_1493:
	mov	byte ptr [rdi], al
	nop	
	movzx	eax, al
	nop	
	cmp	eax, 0x3d
	je	.label_1484
	cmp	eax, 0x3a
	je	.label_1487
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_1494
	mov	byte ptr [rdi + 8], 0x1a
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_1488:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_1487:
	mov	rsp, rsp
	test	dl, 4
	mov	rsp, rsp
	jne	.label_1495
.label_1494:
	nop	
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_1485:
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 8], 0x19
	mov	rsp, rsp
	mov	eax, 1
	ret	
.label_1484:
	mov	byte ptr [rdi + 8], 0x1c
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_1495:
	mov	byte ptr [rdi + 8], 0x1e
	lea	rdi, [rdi]
	mov	eax, 2
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414c10

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x18
	mov	r15, rdx
	nop	
	mov	r14, rdi
	mov	rdx, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1500
	lea	rax, [rdx + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	nop	
	jge	.label_1500
	nop	
	mov	r10, qword ptr [rsi + 0x10]
	lea	r11, [r10 + rdx*4]
	mov	edi, 1
	nop	
.label_1514:
	cmp	dword ptr [r11 + rdi*4], -1
	jne	.label_1511
	lea	rsi, [rsi]
	lea	rax, [rdx + rdi + 1]
	inc	rdi
	cmp	rax, rbx
	lea	rdi, [rdi]
	jl	.label_1514
.label_1511:
	cmp	edi, 2
	lea	rsi, [rsi]
	jl	.label_1500
	mov	dword ptr [r14], 1
	mov	rbp, rbp
	mov	eax, dword ptr [r10 + rdx*4]
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	nop	
	add	rax, rdx
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_1505
.label_1500:
	movsxd	rax, ecx
	add	rdx, rax
	mov	qword ptr [rsi + 0x48], rdx
	movzx	edi, byte ptr [r15 + 8]
	mov	rbp, rbp
	lea	eax, [rdi - 0x16]
	cmp	eax, 8
	ja	.label_1503
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1507]]
.label_2658:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], rdx
	mov	rsp, rsp
	jle	.label_1498
	mov	rbp, rbp
	mov	r11b, byte ptr [r15]
	xor	r12d, r12d
	jmp	.label_1512
	nop	dword ptr [rax]
.label_1516:
	inc	r12
	mov	rbp, rbp
	movzx	edi, byte ptr [r15 + 8]
.label_1512:
	lea	rsi, [rsi]
	movzx	edi, dil
	mov	rsp, rsp
	cmp	edi, 0x1e
	nop	
	jne	.label_1515
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1517
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	nop	
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1497
	nop	word ptr cs:[rax + rax]
.label_1515:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 8]
.label_1499:
	mov	bl, byte ptr [rbx + rdx]
.label_1497:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_1498
	nop	
	movzx	edx, r11b
	movzx	ecx, bl
	nop	
	cmp	ecx, edx
	jne	.label_1513
	mov	rcx, qword ptr [rsi + 8]
	movzx	ecx, byte ptr [rcx + rdi]
	cmp	ecx, 0x5d
	je	.label_1509
.label_1513:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	byte ptr [rcx + r12], bl
	lea	rdi, [rdi]
	cmp	r12, 0x1e
	lea	rdi, [rdi]
	jle	.label_1516
	jmp	.label_1498
.label_1517:
	mov	rbp, rbp
	cmp	byte ptr [rsi + 0x8c], 0
	lea	rdi, [rdi]
	je	.label_1501
	nop	
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	nop	
	cmp	r8, r9
	lea	rsi, [rsi]
	je	.label_1504
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	lea	rdi, [rdi]
	je	.label_1508
.label_1504:
	mov	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1508
	nop	
	mov	edi, 1
	nop	
	cmp	dword ptr [rsi + 0x90], 1
	mov	rsp, rsp
	je	.label_1496
	lea	rdx, [r8 + 1]
	nop	
	cmp	rdx, r9
	jge	.label_1496
	lea	r10, [r8*4]
	lea	rdi, [rdi]
	add	r10, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	mov	edi, 1
.label_1506:
	lea	rdi, [rdi]
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1496
	lea	rdx, [r8 + rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	mov	rbp, rbp
	cmp	rdx, r9
	jl	.label_1506
.label_1496:
	movsxd	rdi, edi
	mov	rsp, rsp
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	jmp	.label_1497
.label_1501:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	mov	rbx, qword ptr [rsi]
	jmp	.label_1499
.label_1508:
	lea	rdi, [r8 + 1]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x48], rdi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1497
.label_1509:
	mov	rsp, rsp
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbp, rbp
	movsxd	rax, r12d
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	movzx	ecx, byte ptr [r15 + 8]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, 0x1e
	je	.label_1502
	cmp	ecx, 0x1c
	je	.label_1510
	cmp	ecx, 0x1a
	mov	rbp, rbp
	jne	.label_1498
	mov	dword ptr [r14], 3
	nop	
	jmp	.label_1498
.label_1502:
	mov	dword ptr [r14], 4
	lea	rdi, [rdi]
	jmp	.label_1498
.label_1510:
	mov	dword ptr [r14], 2
	lea	rdi, [rdi]
	jmp	.label_1498
.label_2657:
	test	r9b, r9b
	lea	rsi, [rsi]
	jne	.label_1503
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rdx, r8
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_1498
.label_1503:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_1505:
	xor	eax, eax
.label_1498:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414f40

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
	je	.label_1533
	nop	
	mov	esi, OFFSET FLAT:.str.7_1
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_1554
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_1533
.label_1554:
	nop	
	mov	r12d, OFFSET FLAT:.str.9_1
.label_1533:
	nop	
	mov	rbp, qword ptr [r13]
	nop	
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_1563
.label_1556:
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
	je	.label_1579
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strcmp
	test	eax, eax
	nop	
	je	.label_1522
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1531
	mov	esi, OFFSET FLAT:.str.3_2
	nop	
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1537
	mov	esi, OFFSET FLAT:.str.9_1
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_1544
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11_2
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_1550
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1559
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1566
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13_0
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1571
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1578
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_1557
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
	jne	.label_1519
	lea	rdi, [rdi]
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1526
.label_1553:
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_1574
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1574:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	jne	.label_1553
	mov	rsp, rsp
	jmp	.label_1519
.label_1579:
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1530
	nop	
.label_1576:
	lea	rdi, [rdi]
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1568
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	shl	rax, cl
	mov	rsp, rsp
	mov	rcx, rdx
	nop	
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1568:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	jne	.label_1576
	jmp	.label_1519
	nop	dword ptr [rax]
.label_1530:
	test	byte ptr [rsi + rdx*2], 8
	je	.label_1518
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rsi, [rsi]
	shl	rax, cl
	mov	rbp, rbp
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1518:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_1530
	jmp	.label_1519
.label_1522:
	call	__ctype_b_loc
	mov	rsp, rsp
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_1538
	nop	word ptr cs:[rax + rax]
.label_1560:
	test	byte ptr [rsi + rdx*2], 2
	je	.label_1545
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	nop	
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	nop	
	or	qword ptr [r15 + rcx*8], rax
.label_1545:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_1560
	jmp	.label_1519
	nop	
.label_1538:
	test	byte ptr [rsi + rdx*2], 2
	lea	rsi, [rsi]
	je	.label_1552
	lea	rsi, [rsi]
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_1552:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	cmp	rdx, 0x100
	nop	
	jne	.label_1538
	nop	
	jmp	.label_1519
.label_1531:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_1562
	nop	dword ptr [rax + rax]
.label_1573:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 2
	je	.label_1523
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	lea	rsi, [rsi]
	mov	rcx, rdx
	nop	
	sar	rcx, 0x3f
	mov	rsp, rsp
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 6
	lea	rdi, [rdi]
	or	qword ptr [r15 + rcx*8], rax
.label_1523:
	inc	rdx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	lea	rsi, [rsi]
	jne	.label_1573
	mov	rsp, rsp
	jmp	.label_1519
	nop	word ptr cs:[rax + rax]
.label_1562:
	lea	rsi, [rsi]
	test	byte ptr [rsi + rdx*2 + 1], 2
	mov	rsp, rsp
	je	.label_1547
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1547:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1562
	mov	rbp, rbp
	jmp	.label_1519
.label_1537:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	jne	.label_1551
	nop	
.label_1520:
	mov	rsp, rsp
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1572
	nop	
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	mov	rcx, rdx
	mov	rbp, rbp
	sar	rcx, 0x3f
	lea	rdi, [rdi]
	shr	rcx, 0x3a
	nop	
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1572:
	nop	
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1520
	nop	
	jmp	.label_1519
.label_1551:
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	je	.label_1528
	mov	cl, byte ptr [r14 + rdx]
	nop	
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1528:
	lea	rsi, [rsi]
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	rdx, 0x100
	jne	.label_1551
	jmp	.label_1519
.label_1563:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1519
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	mov	rsp, rsp
	jmp	.label_1556
.label_1544:
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	jne	.label_1534
	nop	word ptr cs:[rax + rax]
.label_1580:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 4
	lea	rdi, [rdi]
	je	.label_1570
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	mov	rbp, rbp
	shl	rax, cl
	mov	rbp, rbp
	mov	rcx, rdx
	sar	rcx, 0x3f
	mov	rbp, rbp
	shr	rcx, 0x3a
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1570:
	nop	
	inc	rdx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1580
	jmp	.label_1519
.label_1534:
	test	byte ptr [rsi + rdx*2 + 1], 4
	je	.label_1525
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	mov	rbp, rbp
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1525:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1534
	jmp	.label_1519
.label_1550:
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	mov	rsi, qword ptr [rax]
	mov	rsp, rsp
	jne	.label_1542
	nop	dword ptr [rax]
.label_1564:
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 8
	je	.label_1546
	mov	rbp, rbp
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	lea	rdi, [rdi]
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	nop	
	add	rcx, rdx
	lea	rdi, [rdi]
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1546:
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	jne	.label_1564
	mov	rbp, rbp
	jmp	.label_1519
.label_1542:
	test	byte ptr [rsi + rdx*2 + 1], 8
	nop	
	je	.label_1569
	mov	rbp, rbp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	nop	
	shr	cl, 6
	nop	
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1569:
	lea	rsi, [rsi]
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1542
	mov	rbp, rbp
	jmp	.label_1519
.label_1559:
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	jne	.label_1527
	nop	dword ptr [rax + rax]
.label_1541:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1549
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rdx
	sar	rcx, 6
	nop	
	or	qword ptr [r15 + rcx*8], rax
.label_1549:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rdx, 0x100
	jne	.label_1541
	jmp	.label_1519
.label_1527:
	test	byte ptr [rsi + rdx*2 + 1], 0x40
	je	.label_1555
	mov	rsp, rsp
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	lea	rsi, [rsi]
	shr	cl, 6
	movzx	ecx, cl
	mov	rsp, rsp
	or	qword ptr [r15 + rcx*8], rax
.label_1555:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	lea	rdi, [rdi]
	jne	.label_1527
	nop	
	jmp	.label_1519
.label_1566:
	nop	
	call	__ctype_b_loc
	xor	edx, edx
	test	r14, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	jne	.label_1532
	nop	
.label_1567:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 1
	je	.label_1535
	lea	rsi, [rsi]
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rbp, rbp
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	nop	
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1535:
	inc	rdx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rdx, 0x100
	nop	
	jne	.label_1567
	jmp	.label_1519
.label_1532:
	test	byte ptr [rsi + rdx*2 + 1], 1
	lea	rdi, [rdi]
	je	.label_1521
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1521:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1532
	jmp	.label_1519
.label_1571:
	nop	
	call	__ctype_b_loc
	mov	rbp, rbp
	xor	edx, edx
	test	r14, r14
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax]
	jne	.label_1529
	nop	word ptr cs:[rax + rax]
.label_1561:
	test	byte ptr [rsi + rdx*2], 1
	lea	rdi, [rdi]
	je	.label_1539
	mov	eax, 1
	mov	cl, dl
	lea	rdi, [rdi]
	shl	rax, cl
	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rbp, rbp
	add	rcx, rdx
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1539:
	mov	rsp, rsp
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1561
	jmp	.label_1519
.label_1529:
	test	byte ptr [rsi + rdx*2], 1
	lea	rsi, [rsi]
	je	.label_1565
	mov	cl, byte ptr [r14 + rdx]
	lea	rsi, [rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	mov	rbp, rbp
	or	qword ptr [r15 + rcx*8], rax
.label_1565:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1529
	jmp	.label_1519
.label_1578:
	nop	
	call	__ctype_b_loc
	lea	rdi, [rdi]
	xor	edx, edx
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_1548
.label_1575:
	mov	rbp, rbp
	cmp	word ptr [rsi + rdx*2], 0
	nop	
	jns	.label_1581
	mov	eax, 1
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	lea	rsi, [rsi]
	shr	rcx, 0x3a
	add	rcx, rdx
	lea	rsi, [rsi]
	sar	rcx, 6
	lea	rsi, [rsi]
	or	qword ptr [r15 + rcx*8], rax
.label_1581:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	rdx, 0x100
	jne	.label_1575
	nop	
	jmp	.label_1519
.label_1548:
	cmp	word ptr [rsi + rdx*2], 0
	mov	rbp, rbp
	jns	.label_1540
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1540:
	lea	rsi, [rsi]
	inc	rdx
	xor	eax, eax
	nop	
	cmp	rdx, 0x100
	mov	rsp, rsp
	jne	.label_1548
	jmp	.label_1519
.label_1526:
	nop	
	test	byte ptr [rsi + rdx*2 + 1], 0x10
	mov	rbp, rbp
	je	.label_1524
	mov	cl, byte ptr [r14 + rdx]
	mov	rbp, rbp
	mov	eax, 1
	nop	
	shl	rax, cl
	mov	rsp, rsp
	shr	cl, 6
	lea	rsi, [rsi]
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1524:
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1526
	mov	rsp, rsp
	jmp	.label_1519
.label_1557:
	call	__ctype_b_loc
	xor	edx, edx
	lea	rsi, [rsi]
	test	r14, r14
	nop	
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	jne	.label_1543
.label_1558:
	test	byte ptr [rsi + rdx*2], 4
	nop	
	je	.label_1577
	mov	eax, 1
	mov	rbp, rbp
	mov	cl, dl
	shl	rax, cl
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rdx
	lea	rdi, [rdi]
	sar	rcx, 6
	or	qword ptr [r15 + rcx*8], rax
.label_1577:
	nop	
	inc	rdx
	xor	eax, eax
	cmp	rdx, 0x100
	mov	rbp, rbp
	jne	.label_1558
.label_1519:
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1543:
	test	byte ptr [rsi + rdx*2], 4
	je	.label_1536
	mov	cl, byte ptr [r14 + rdx]
	mov	eax, 1
	nop	
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_1536:
	mov	rsp, rsp
	inc	rdx
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rdx, 0x100
	nop	
	jne	.label_1543
	jmp	.label_1519
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415980

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsi + 0x30]
	mov	rbp, rbp
	lea	ebx, [rdx - 2]
	cmp	ebx, 0xe
	ja	.label_1582
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_1592]]
.label_2673:
	mov	rsp, rsp
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1589]]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	lea	rsi, [rsi]
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1591
	mov	qword ptr [rax], r15
	mov	rsp, rsp
	jmp	.label_1590
.label_2674:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rsi, [rsi]
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	nop	
	js	.label_1586
	nop	
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	lea	rsi, [rsi]
	js	.label_1587
	lea	rdi, [rdi]
	mov	r12, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	rbx, [rcx + rcx*2]
	mov	rbp, rbp
	mov	qword ptr [r12 + rbx*8], 2
	mov	rsp, rsp
	mov	edi, 0x10
	call	malloc
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1584
	lea	rax, [r12 + rbx*8 + 8]
	mov	rbp, rbp
	cmp	r14, r15
	mov	rsp, rsp
	jne	.label_1585
	mov	qword ptr [rax], 1
	mov	rsp, rsp
	mov	qword ptr [rcx], r14
	lea	rsi, [rsi]
	jmp	.label_1590
.label_2671:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	nop	
	je	.label_1584
	nop	
	mov	edi, OFFSET FLAT:.str.17_2
	nop	
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_2672:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	lea	rsi, [rsi]
	cmp	eax, 4
	mov	rbp, rbp
	jne	.label_1590
	nop	
	mov	r14, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1589]]
	mov	rsp, rsp
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_1594
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	jmp	.label_1590
.label_1582:
	mov	rbp, rbp
	test	dl, 8
	jne	.label_1588
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_1590
.label_1585:
	mov	qword ptr [rax], 2
	jge	.label_1593
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	lea	rdi, [rdi]
	jmp	.label_1590
.label_1593:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_1590:
	xor	eax, eax
.label_1584:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
.label_1591:
	lea	rax, [r14 + rbx*8]
.label_1583:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_1584
.label_1594:
	mov	rbp, rbp
	lea	rax, [r14 + r15*8]
	jmp	.label_1583
.label_1586:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.18_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1587:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 0x5b0
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_1588:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rbp, rbp
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415c30

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
	mov	r14, rcx
	lea	rsi, [rsi]
	mov	rbx, rsi
	nop	
	mov	r12, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	dl, 0x10
	mov	rsp, rsp
	je	.label_1602
	mov	rsp, rsp
	test	r12, r12
	je	.label_1602
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	cmp	rax, 0x3f
	mov	rsp, rsp
	jg	.label_1606
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0xa0]
	mov	rsp, rsp
	bt	rcx, rax
	jae	.label_1606
.label_1602:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1598
	nop	
	mov	qword ptr [rsp], rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x70]
.label_1605:
	lea	ecx, [r13 + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], ecx
	lea	rdi, [rdi]
	movsxd	rcx, r13d
	mov	rsp, rsp
	shl	rcx, 6
	mov	rbp, rbp
	lea	r13, [rax + rcx + 8]
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	mov	rbp, rbp
	je	.label_1600
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x70]
.label_1603:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	lea	rsi, [rsi]
	movsxd	rcx, r15d
	shl	rcx, 6
	mov	rsp, rsp
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	nop	
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1597:
	lea	rsi, [rsi]
	test	r12, r12
	mov	rbp, r15
	je	.label_1596
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rbx + 0x80]
	nop	
	cmp	ebp, 0xf
	mov	rbp, rbp
	je	.label_1608
	nop	
	mov	rax, qword ptr [rbx + 0x70]
.label_1607:
	mov	rbp, rbp
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	nop	
	movsxd	rcx, ebp
	lea	rsi, [rsi]
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	rbp, rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	mov	qword ptr [r12], rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1596
	lea	rdi, [rdi]
	mov	qword ptr [r15], rbp
.label_1596:
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	nop	
	je	.label_1609
	mov	rax, qword ptr [rbx + 0x70]
.label_1601:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	lea	rdi, [rdi]
	movsxd	rcx, r12d
	lea	rsi, [rsi]
	shl	rcx, 6
	mov	rbp, rbp
	lea	r12, [rax + rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	nop	
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	lea	rdi, [rdi]
	test	r13, r13
	je	.label_1595
	nop	
	mov	qword ptr [r13], r12
.label_1595:
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_1604
	mov	rbp, rbp
	mov	qword ptr [rbp], r12
.label_1604:
	test	r15, r15
	nop	
	je	.label_1599
	test	r13, r13
	je	.label_1599
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_1599
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_1599
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x28], rax
	mov	eax, 0x80000
	lea	rsi, [rsi]
	and	eax, dword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	ecx, 0xfff7ffff
	mov	rbp, rbp
	mov	edx, dword ptr [r15 + 0x30]
	lea	rsi, [rsi]
	and	edx, ecx
	mov	rsp, rsp
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	mov	rbp, rbp
	and	ecx, dword ptr [r13 + 0x30]
	or	ecx, eax
	mov	dword ptr [r13 + 0x30], ecx
.label_1606:
	mov	rax, r12
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_1598:
	mov	rsp, rsp
	mov	qword ptr [rsp], rdi
	mov	edi, 0x3c8
	call	malloc
	lea	rdi, [rdi]
	xor	r13d, r13d
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1600
	nop	
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1605
.label_1600:
	nop	
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rbp
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1597
	mov	rcx, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rax], rcx
	nop	
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1603
.label_1609:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1604
	nop	
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1601
.label_1599:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_1606
.label_1608:
	mov	rbp, rbp
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1596
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1607
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416010

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
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	cmp	rax, r13
	jae	.label_1614
.label_1615:
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx]
	mov	rsp, rsp
	shl	rax, 4
	nop	
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	mov	rsp, rsp
	jne	.label_1613
	lea	rdi, [rdi]
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	lea	rsi, [rsi]
	jg	.label_1611
.label_1613:
	lea	rdi, [rdi]
	cmp	eax, 6
	lea	rdi, [rdi]
	sete	cl
.label_1611:
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
	mov	r15, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	lea	rax, [r15 + 1]
	nop	
	mov	qword ptr [rbx + 0x10], rax
.label_1612:
	mov	rax, r15
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
.label_1614:
	lea	rbp, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rbp, rax
	lea	rdi, [rdi]
	ja	.label_1612
	nop	
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, r13
	lea	rdi, [rdi]
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1612
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	qword ptr [rbx], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rbp, [r13 + r13*2]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	call	realloc
	mov	rsp, rsp
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1610
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_1610
	test	r13, r13
	mov	rbp, rbp
	je	.label_1610
	nop	
	test	rbp, rbp
	je	.label_1610
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	nop	
	mov	qword ptr [rbx + 0x28], r13
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	jmp	.label_1615
.label_1610:
	lea	rsi, [rsi]
	mov	rbx, rax
	call	free
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_1612
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4162a0

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
	mov	dword ptr [rsp + 0xc], ecx
	mov	r12, rdx
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], 0
	lea	rdi, [rdi]
	lea	rdi, [rax*8 + 8]
	mov	rbp, rbp
	call	malloc
	mov	rcx, rax
	nop	
	mov	qword ptr [rsp + 0x40], rcx
	nop	
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1616
	mov	qword ptr [rsp + 0x28], rbx
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	qword ptr [rax + r14*8 + 8], -1
	nop	
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	rsp, rsp
	mov	r8d, eax
	mov	rbp, rbp
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1618
	lea	rsi, [rsi]
	lea	rdx, [r15 + r14*8 + 8]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	je	.label_1618
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	mov	rsp, rsp
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_1618
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_1616
	mov	rax, qword ptr [rbp]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbx + 8]
.label_1618:
	mov	rbx, r12
	lea	rdi, [rdi]
	test	al, 8
	jne	.label_1621
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_1625
.label_1621:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + r14*8 + 8], 0
	nop	
	jle	.label_1617
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1620:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	lea	r12, [rdx + rdx*2]
	nop	
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_1626
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_1622
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	lea	rdi, [rsp + 0x10]
	mov	rsp, rsp
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1627
	jmp	.label_1616
.label_1622:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1627:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1616
	nop	
	mov	rax, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + r12*8 + 8], 0
	mov	rsp, rsp
	jne	.label_1623
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	free
.label_1626:
	mov	r15b, 1
.label_1623:
	mov	rbp, rbp
	inc	r13
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	mov	rbp, rbp
	jl	.label_1620
	jmp	.label_1625
.label_1617:
	mov	rbp, rbp
	xor	r15d, r15d
.label_1625:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	lea	rsi, [rsi]
	mov	eax, 0xc
	je	.label_1616
	lea	rsi, [rsi]
	test	r15b, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	je	.label_1619
	mov	ecx, dword ptr [rsp + 0xc]
	test	cl, cl
	jne	.label_1619
	nop	
	mov	qword ptr [rax + r14*8 + 8], 0
	nop	
	jmp	.label_1624
.label_1619:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x30]
	mov	rsp, rsp
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1624:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	lea	rsi, [rsi]
	xor	eax, eax
.label_1616:
	add	rsp, 0x48
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416550

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
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13d, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	rbx, rdx
	mov	r12, rsi
	nop	
	mov	r14, rdi
.label_1630:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24], r13d
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20], eax
	lea	rsi, [rsi]
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_1632:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14]
	mov	rbp, rbp
	mov	rdx, r15
	shl	rdx, 4
	movzx	ecx, byte ptr [rax + rdx + 8]
	cmp	ecx, 4
	jne	.label_1638
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rdx, qword ptr [r14 + 0x28]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r12, [rbx + rbx*2]
	mov	rsp, rsp
	mov	qword ptr [rdx + r12*8 + 8], 0
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rbp + 8]
	mov	rbp, rbp
	mov	rdi, r14
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	call	re_dfa_add_node
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	cmp	rbx, -1
	je	.label_1636
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [r14]
	mov	rcx, rbx
	mov	rbp, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	mov	esi, 0xfffc00ff
	nop	
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	nop	
	mov	dword ptr [rax + rcx + 8], edx
	mov	rsp, rsp
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	mov	rbp, rbp
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r14]
	or	dword ptr [rax + rcx + 8], 0x40000
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rdx*8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x24]
	jne	.label_1632
	jmp	.label_1628
	nop	dword ptr [rax]
.label_1638:
	nop	
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rbp, [r15 + r15*2]
	mov	rsi, qword ptr [rcx + rbp*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1641
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rbp*8 + 0x10]
	mov	r12, qword ptr [rdi]
	lea	rdi, [rdi]
	lea	rdi, [rbx + rbx*2]
	mov	qword ptr [rcx + rdi*8 + 8], 0
	nop	
	cmp	rsi, 1
	je	.label_1644
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	r15, rdi
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	lea	rsi, [rsi]
	jle	.label_1634
	lea	rdi, [rdi]
	mov	rdx, rsi
	shl	rdx, 4
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rdx + 8]
	lea	rdi, [rdi]
	mov	edx, ebp
	mov	rsp, rsp
	and	edx, 0x40000
	je	.label_1634
	mov	rdx, qword ptr [r14 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	
.label_1631:
	cmp	qword ptr [rdx + rsi*8], r12
	mov	rsp, rsp
	jne	.label_1640
	mov	rbp, rbp
	shr	ebp, 8
	nop	
	and	ebp, 0x3ff
	cmp	ebp, r13d
	lea	rsi, [rsi]
	je	.label_1643
.label_1640:
	dec	rsi
	test	rsi, rsi
	jle	.label_1634
	mov	rbp, rbp
	mov	ebp, dword ptr [rdi]
	mov	rbp, rbp
	mov	ebx, ebp
	mov	rsp, rsp
	and	ebx, 0x40000
	mov	rsp, rsp
	add	rdi, -0x10
	test	ebx, ebx
	jne	.label_1631
	mov	rbp, rbp
	jmp	.label_1634
.label_1643:
	cmp	rsi, -1
	je	.label_1634
	mov	rbp, r15
	lea	rdi, [rcx + rbp*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	jne	.label_1639
	mov	rbp, rbp
	jmp	.label_1628
	nop	word ptr [rax + rax]
.label_1634:
	nop	
	mov	rbp, r12
	mov	rsp, rsp
	shl	rbp, 4
	nop	
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1629
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	mov	rax, qword ptr [r14]
	nop	
	mov	rcx, rbx
	nop	
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	mov	rsp, rsp
	and	edx, esi
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rax + rcx + 8], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	edx, dword ptr [rax + rbp + 8]
	lea	rsi, [rsi]
	mov	esi, 0x3ff00
	and	edx, esi
	mov	rsp, rsp
	or	dword ptr [rax + rcx + 8], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	nop	
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rax + rbx*8], r12
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rax + rbp*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	je	.label_1628
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x1c], eax
	nop	
	test	eax, eax
	nop	
	jne	.label_1628
.label_1639:
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	mov	rsp, rsp
	shl	rbx, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r14
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1633
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rbp, rbp
	mov	edx, dword ptr [rdi + rcx + 8]
	mov	esi, 0xfffc00ff
	nop	
	and	edx, esi
	mov	rbp, rbp
	or	edx, dword ptr [rsp + 0x20]
	mov	dword ptr [rdi + rcx + 8], edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	edx, esi
	mov	rsp, rsp
	or	dword ptr [rdi + rcx + 8], edx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14]
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r15
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x28]
	nop	
	lea	rdi, [rcx + rbp*8]
	mov	rsi, rax
	mov	rbx, rax
	lea	rsi, [rsi]
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1632
	mov	rsp, rsp
	jmp	.label_1628
.label_1644:
	cmp	r15, qword ptr [rsp + 8]
	jne	.label_1635
	mov	rsp, rsp
	cmp	rbx, r15
	jne	.label_1637
.label_1635:
	nop	
	mov	r15, rdi
	lea	rsi, [rsi]
	lea	rcx, [rax + rdx + 8]
	mov	rbp, rbp
	mov	ebp, dword ptr [rcx]
	mov	rbx, r12
	shl	rbx, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rsp, rsp
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x1c], 0xc
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1628
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	nop	
	mov	rbp, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	rsp, rsp
	mov	esi, dword ptr [rbp + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	rbp, rbp
	mov	dword ptr [rbp + rcx + 8], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	edx, dword ptr [rdi + rbx + 8]
	nop	
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	edx, esi
	or	dword ptr [rdi + rcx + 8], edx
	mov	rsp, rsp
	mov	rdx, qword ptr [r14]
	mov	rsp, rsp
	or	dword ptr [rdx + rcx + 8], 0x40000
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	qword ptr [rcx + rax*8], r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	lea	rdi, [rcx + r15*8]
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1630
	jmp	.label_1628
.label_1636:
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_1628
.label_1629:
	mov	dword ptr [rsp + 0x1c], 0xc
	jmp	.label_1628
.label_1633:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0xc
	lea	rsi, [rsi]
	jmp	.label_1628
.label_1641:
	mov	rax, qword ptr [r14 + 0x18]
	nop	
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1642:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0
.label_1628:
	mov	eax, dword ptr [rsp + 0x1c]
	mov	rsp, rsp
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1637:
	lea	rdi, [rcx + rdi*8]
	mov	rsi, r12
	nop	
	call	re_node_set_insert
	nop	
	mov	dword ptr [rsp + 0x1c], 0xc
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_1628
	nop	
	jmp	.label_1642
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416b20

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_1648
	nop	
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1648
	mov	rsp, rsp
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	nop	
	cmp	rbx, rdx
	lea	rsi, [rsi]
	jge	.label_1650
	add	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	mov	rsp, rsp
	shl	rsi, 4
	lea	rdi, [rdi]
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	je	.label_1646
	nop	
	add	rbx, rbx
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rcx
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
.label_1650:
	test	rcx, rcx
	je	.label_1656
	nop	
	lea	rbx, [rcx + rax*2]
	lea	rdi, [rdi]
	dec	rax
	dec	rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	or	rdx, rcx
	nop	
	js	.label_1658
	mov	rbp, rbp
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	jmp	.label_1652
.label_1645:
	dec	rax
.label_1651:
	dec	rcx
	jmp	.label_1649
	nop	word ptr cs:[rax + rax]
.label_1652:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi + rax*8]
	mov	rbp, rbp
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1645
	jge	.label_1651
	nop	
	dec	rax
	mov	rsp, rsp
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	lea	rsi, [rsi]
	dec	rbx
.label_1649:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1652
.label_1658:
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	js	.label_1653
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	mov	rbp, rbp
	lea	rdi, [rbx*8]
	lea	rdi, [rdi]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1653:
	mov	r10, qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r10 + rax*2 - 1]
	mov	rdx, rcx
	sub	rdx, rbx
	lea	rdi, [rdi]
	inc	rdx
	lea	rsi, [rsi]
	je	.label_1648
	lea	rdi, [rdi]
	lea	rax, [rdx + r10]
	mov	qword ptr [r14 + 8], rax
	lea	r9, [r10 - 1]
.label_1654:
	lea	rdi, [rdi]
	lea	r8, [r10 - 1]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	lea	r11, [rdi + r9*8]
.label_1647:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rsi, qword ptr [rdi + r10*8 - 8]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jle	.label_1655
	nop	
	dec	rcx
	nop	
	mov	qword ptr [r11 + rdx*8], rax
	dec	rdx
	jne	.label_1647
	nop	
	jmp	.label_1648
	nop	word ptr cs:[rax + rax]
.label_1655:
	lea	rax, [rdx + r8]
	mov	qword ptr [rdi + rax*8], rsi
	dec	r9
	mov	rbp, rbp
	cmp	r10, 1
	nop	
	mov	r10, r8
	jg	.label_1654
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	mov	rbp, rbp
	jmp	.label_1657
.label_1656:
	mov	qword ptr [r14 + 8], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 8]
	nop	
	mov	rsi, qword ptr [r15 + 0x10]
.label_1657:
	shl	rdx, 3
	lea	rsi, [rsi]
	call	memcpy
.label_1648:
	xor	eax, eax
.label_1646:
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416d40

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_1659
	mov	rcx, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_1666
	cmp	rsi, rcx
	lea	rdi, [rdi]
	jne	.label_1669
	lea	rax, [rsi + rsi]
	nop	
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1662
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1664
.label_1659:
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1589]]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	nop	
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1672
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	jmp	.label_1663
.label_1666:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	mov	rbp, rbp
	jmp	.label_1665
.label_1669:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x10]
.label_1664:
	lea	rsi, [rsi]
	cmp	qword ptr [rax], rbx
	mov	rsp, rsp
	jle	.label_1670
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_1667
	nop	word ptr [rax + rax]
.label_1660:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rdi, [rdi]
	lea	rcx, [rcx - 1]
	jg	.label_1660
	lea	rdi, [rdi]
	jmp	.label_1667
.label_1670:
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	rsp, rsp
	jmp	.label_1668
	nop	dword ptr [rax + rax]
.label_1661:
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1668:
	cmp	rdx, rbx
	mov	rsp, rsp
	jg	.label_1661
.label_1667:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
.label_1665:
	inc	qword ptr [r14 + 8]
.label_1663:
	lea	rdi, [rdi]
	mov	al, 1
.label_1671:
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	ret	
.label_1672:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1671
.label_1662:
	xor	eax, eax
	jmp	.label_1671
	nop	
	.section	.text
	.align	16
	#Procedure 0x416e80

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
	sub	rsp, 0x28
	mov	r13d, ecx
	mov	r14, rsi
	mov	rsp, rsp
	mov	r8, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	test	r8, r8
	nop	
	je	.label_1721
	mov	r15d, r13d
	add	r15, r8
	lea	rdi, [rdi]
	test	r8, r8
	mov	rsp, rsp
	jle	.label_1682
	mov	rcx, qword ptr [rdx + 0x10]
	xor	ebx, ebx
	cmp	r8, 4
	jae	.label_1712
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdi
	jmp	.label_1714
.label_1721:
	nop	
	mov	dword ptr [rdi], 0
	nop	
	jmp	.label_1716
.label_1682:
	nop	
	mov	qword ptr [rsp], rdi
	lea	rsi, [rsi]
	jmp	.label_1674
.label_1712:
	mov	qword ptr [rsp], rdi
	nop	
	mov	rbx, r8
	and	rbx, 0xfffffffffffffffc
	je	.label_1684
	mov	rsp, rsp
	movq	xmm0, r15
	mov	rsp, rsp
	lea	rsi, [r8 - 4]
	mov	eax, esi
	shr	eax, 2
	inc	eax
	xor	edi, edi
	mov	rsp, rsp
	test	al, 3
	nop	
	je	.label_1722
	nop	
	lea	ebp, [r8 - 4]
	lea	rdi, [rdi]
	shr	ebp, 2
	inc	ebp
	and	ebp, 3
	lea	rsi, [rsi]
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	
.label_1730:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm0, xmm2
	lea	rsi, [rsi]
	paddq	xmm1, xmm3
	mov	rsp, rsp
	add	rdi, 4
	inc	rbp
	mov	rsp, rsp
	jne	.label_1730
	jmp	.label_1736
.label_1684:
	xor	ebx, ebx
	jmp	.label_1714
.label_1722:
	lea	rsi, [rsi]
	pxor	xmm1, xmm1
.label_1736:
	mov	rsp, rsp
	cmp	rsi, 0xc
	nop	
	jb	.label_1739
	mov	rsp, rsp
	mov	rsi, r8
	mov	rsp, rsp
	and	rsi, 0xfffffffffffffffc
	sub	rsi, rdi
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	dword ptr [rax + rax]
.label_1744:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	mov	rsp, rsp
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	mov	rsp, rsp
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	mov	rsp, rsp
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	paddq	xmm4, xmm2
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	paddq	xmm0, xmm4
	lea	rdi, [rdi]
	paddq	xmm1, xmm5
	lea	rsi, [rsi]
	add	rdi, 0x80
	mov	rbp, rbp
	add	rsi, -0x10
	jne	.label_1744
.label_1739:
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rbx
	je	.label_1674
.label_1714:
	nop	
	mov	rsi, r8
	lea	rdi, [rdi]
	sub	rsi, rbx
	lea	rcx, [rcx + rbx*8]
	nop	dword ptr [rax + rax]
.label_1683:
	lea	rsi, [rsi]
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rsi
	jne	.label_1683
.label_1674:
	mov	rsi, qword ptr [r14 + 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x88]
	lea	rsi, [rsi]
	and	rax, r15
	mov	rsp, rsp
	lea	rax, [rax + rax*2]
	nop	
	mov	r9, qword ptr [rsi + rax*8]
	test	r9, r9
	lea	rdi, [rdi]
	jle	.label_1687
	xor	ebx, ebx
	nop	
	test	rdx, rdx
	nop	
	je	.label_1708
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsi + rax*8 + 0x10]
.label_1745:
	mov	rsi, qword ptr [r10 + rbx*8]
	cmp	qword ptr [rsi], r15
	jne	.label_1700
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x68]
	and	eax, 0xf
	nop	
	cmp	eax, r13d
	mov	rsp, rsp
	jne	.label_1700
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi + 0x50]
	test	rdi, rdi
	je	.label_1700
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 8], r8
	nop	
	jne	.label_1700
	mov	rax, r8
	nop	word ptr cs:[rax + rax]
.label_1713:
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_1699
	mov	rbp, qword ptr [rdi + 0x10]
	nop	
	mov	rbp, qword ptr [rbp + rax*8 - 8]
	nop	
	mov	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	cmp	rbp, qword ptr [rcx + rax*8 - 8]
	mov	rsp, rsp
	lea	rax, [rax - 1]
	je	.label_1713
	nop	dword ptr [rax]
.label_1700:
	lea	rdi, [rdi]
	inc	rbx
	cmp	rbx, r9
	jl	.label_1745
	mov	rsp, rsp
	jmp	.label_1687
.label_1708:
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r9, 0x10
	mov	rbp, rbp
	jb	.label_1677
	nop	
	xor	ecx, ecx
	mov	rax, r9
	lea	rsi, [rsi]
	and	rax, 0xfffffffffffffff0
	je	.label_1677
	nop	
	lea	rcx, [r9 - 0x10]
	lea	rsi, [rsi]
	mov	edi, ecx
	shr	edi, 4
	inc	edi
	xor	esi, esi
	test	dil, 7
	lea	rdi, [rdi]
	je	.label_1728
	lea	edi, [r9 - 0x10]
	lea	rsi, [rsi]
	shr	edi, 4
	inc	edi
	and	edi, 7
	mov	rsp, rsp
	neg	rdi
	xor	esi, esi
	nop	dword ptr [rax]
.label_1733:
	mov	rsp, rsp
	add	rsi, 0x10
	lea	rdi, [rdi]
	inc	rdi
	mov	rbp, rbp
	jne	.label_1733
.label_1728:
	cmp	rcx, 0x70
	jb	.label_1738
	nop	
	mov	rcx, r9
	lea	rsi, [rsi]
	and	rcx, 0xfffffffffffffff0
	sub	rcx, rsi
	nop	word ptr cs:[rax + rax]
.label_1734:
	add	rcx, -0x80
	mov	rbp, rbp
	jne	.label_1734
.label_1738:
	mov	rbp, rbp
	cmp	r9, rax
	mov	rcx, rax
	je	.label_1687
	nop	word ptr cs:[rax + rax]
.label_1677:
	inc	rcx
	cmp	rcx, r9
	lea	rdi, [rdi]
	jl	.label_1677
.label_1687:
	mov	rsp, rsp
	mov	r12, rdx
	mov	rsp, rsp
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	r11, rax
	mov	rsp, rsp
	test	r11, r11
	mov	rbp, rbp
	je	.label_1702
	mov	rbx, r14
	mov	rax, r11
	mov	rsp, rsp
	add	rax, 8
	lea	rdi, [rdi]
	mov	r10, r12
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r10 + 8]
	mov	qword ptr [r11 + 0x10], rdi
	mov	r14, qword ptr [r10 + 8]
	lea	rdi, [rdi]
	test	r14, r14
	lea	rsi, [rsi]
	jle	.label_1752
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	r12, r10
	lea	rsi, [rsi]
	mov	qword ptr [r11 + 8], rdi
	lea	rsi, [rsi]
	shl	rdi, 3
	mov	rbp, r11
	call	malloc
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rax
	test	rax, rax
	je	.label_1685
	mov	rsi, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	shl	r14, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rdx, r14
	mov	rbp, rbp
	mov	rbp, rcx
	nop	
	call	memcpy
	mov	r11, rbp
	mov	r10, r12
	mov	rdi, rbx
	mov	rbp, rbp
	mov	r9d, r13d
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	jmp	.label_1697
.label_1752:
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rax], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, rbx
	mov	r9d, r13d
	mov	r14, rax
.label_1697:
	mov	al, byte ptr [r11 + 0x68]
	mov	rbp, rbp
	mov	cl, r9b
	lea	rsi, [rsi]
	and	cl, 0xf
	and	al, 0xf0
	mov	rbp, rbp
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r11 + 0x68], al
	lea	rsi, [rsi]
	mov	qword ptr [r11 + 0x50], r14
	nop	
	cmp	qword ptr [r10 + 8], 0
	jle	.label_1678
	mov	cl, r9b
	mov	eax, r9d
	mov	rsp, rsp
	and	eax, 2
	lea	rsi, [rsi]
	and	r9d, 4
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1718
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	r8d, r8d
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1719
	nop	dword ptr [rax + rax]
.label_1731:
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	edx, sil
	mov	rbp, rbp
	mov	r12d, esi
	shr	r12d, 8
	mov	rsp, rsp
	mov	ecx, r12d
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 1
	nop	
	jne	.label_1724
	test	ecx, ecx
	je	.label_1709
.label_1724:
	shr	esi, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	lea	rsi, [rsi]
	mov	al, bl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	eax, al
	lea	rdi, [rdi]
	or	eax, esi
	mov	rbp, rbp
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	lea	rsi, [rsi]
	or	bl, al
	mov	rsp, rsp
	mov	byte ptr [r11 + 0x68], bl
	cmp	edx, 2
	mov	rsp, rsp
	je	.label_1732
	lea	rsi, [rsi]
	cmp	edx, 4
	mov	rsp, rsp
	jne	.label_1741
	mov	rbp, rbp
	or	bl, 0x40
	mov	rbp, rbp
	jmp	.label_1743
.label_1732:
	nop	
	or	bl, 0x10
.label_1743:
	lea	rdi, [rdi]
	mov	byte ptr [r11 + 0x68], bl
.label_1741:
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_1709
	nop	
	mov	r13, r10
	mov	rsp, rsp
	cmp	qword ptr [r11 + 0x50], r14
	nop	
	jne	.label_1748
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r14
	mov	dword ptr [rsp + 0x14], r9d
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdi
	nop	
	mov	edi, 0x18
	mov	rbx, r11
	lea	rdi, [rdi]
	call	malloc
	mov	r11, rbx
	mov	r14, rax
	lea	rdi, [rdi]
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1689
	mov	rbx, qword ptr [r13 + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	nop	
	jle	.label_1676
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r11
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1686
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	memcpy
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	r11, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_1696
.label_1676:
	nop	
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [r14], xmm0
	nop	
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
.label_1696:
	mov	r14, qword ptr [rsp + 0x18]
	or	byte ptr [r11 + 0x68], 0x80
	mov	rbp, rbp
	xor	r8d, r8d
.label_1748:
	mov	rsp, rsp
	test	r12b, 0x11
	mov	rsp, rsp
	mov	r10, r13
	jne	.label_1705
	mov	rsp, rsp
	test	r9d, r9d
	mov	rsp, rsp
	jne	.label_1709
	mov	rsp, rsp
	and	r12d, 0x40
	mov	rsp, rsp
	je	.label_1709
.label_1705:
	mov	rax, rbp
	mov	rsp, rsp
	sub	rax, r8
	lea	rsi, [rsi]
	js	.label_1715
	mov	rcx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jle	.label_1715
	mov	rsp, rsp
	dec	rcx
	mov	rbp, rbp
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1715
	nop	
	lea	rax, [rbp*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [r11 + 0x18]
	lea	rdi, [rdi]
	mov	rcx, r8
	neg	rcx
	nop	dword ptr [rax]
.label_1727:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r11 + 0x10]
	jl	.label_1727
	nop	word ptr [rax + rax]
.label_1715:
	inc	r8
.label_1709:
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, qword ptr [r10 + 8]
	jl	.label_1731
	jmp	.label_1678
	nop	dword ptr [rax + rax]
.label_1719:
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + rbp*8]
	mov	rbp, rbp
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	movzx	edx, sil
	mov	r12d, esi
	shr	r12d, 8
	mov	ecx, r12d
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	edx, 1
	lea	rsi, [rsi]
	jne	.label_1688
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_1673
.label_1688:
	shr	esi, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	lea	rdi, [rdi]
	shl	al, 5
	and	al, 0x20
	lea	rsi, [rsi]
	and	bl, 0xdf
	or	bl, al
	mov	rsp, rsp
	mov	byte ptr [r11 + 0x68], bl
	mov	rbp, rbp
	cmp	edx, 2
	je	.label_1747
	cmp	edx, 4
	lea	rdi, [rdi]
	jne	.label_1751
	lea	rdi, [rdi]
	or	bl, 0x40
	mov	rbp, rbp
	jmp	.label_1753
.label_1747:
	lea	rdi, [rdi]
	or	bl, 0x10
.label_1753:
	nop	
	mov	byte ptr [r11 + 0x68], bl
.label_1751:
	mov	rbp, rbp
	test	ecx, ecx
	je	.label_1673
	lea	rsi, [rsi]
	mov	r13, r10
	mov	rbp, rbp
	cmp	qword ptr [r11 + 0x50], r14
	lea	rsi, [rsi]
	jne	.label_1675
	nop	
	mov	qword ptr [rsp + 0x18], r14
	mov	dword ptr [rsp + 0x14], r9d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	edi, 0x18
	lea	rdi, [rdi]
	mov	rbx, r11
	call	malloc
	lea	rsi, [rsi]
	mov	r11, rbx
	nop	
	mov	r14, rax
	nop	
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	je	.label_1689
	mov	rsp, rsp
	mov	rbx, qword ptr [r13 + 8]
	nop	
	mov	qword ptr [r14 + 8], rbx
	mov	rbp, rbp
	test	rbx, rbx
	nop	
	jle	.label_1694
	mov	qword ptr [rsp + 0x20], r11
	lea	rsi, [rsi]
	mov	qword ptr [r14], rbx
	mov	rsp, rsp
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rax
	nop	
	test	rax, rax
	je	.label_1686
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	rdi, qword ptr [rsp + 8]
	nop	
	mov	r9d, dword ptr [rsp + 0x14]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	jmp	.label_1706
.label_1694:
	mov	rsp, rsp
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	r9d, dword ptr [rsp + 0x14]
.label_1706:
	mov	r14, qword ptr [rsp + 0x18]
	or	byte ptr [r11 + 0x68], 0x80
	xor	r8d, r8d
.label_1675:
	test	r12b, 1
	mov	r10, r13
	mov	rsp, rsp
	jne	.label_1720
	test	r9d, r9d
	jne	.label_1673
	mov	rbp, rbp
	and	r12d, 0x40
	je	.label_1673
.label_1720:
	mov	rbp, rbp
	mov	rax, rbp
	sub	rax, r8
	mov	rsp, rsp
	js	.label_1726
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r11 + 0x10]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jle	.label_1726
	nop	
	dec	rcx
	mov	rsp, rsp
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1726
	lea	rsi, [rsi]
	lea	rax, [rbp*8]
	add	rax, qword ptr [r11 + 0x18]
	mov	rsp, rsp
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1737:
	nop	
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	mov	rbp, rbp
	inc	rcx
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [r11 + 0x10]
	mov	rbp, rbp
	jl	.label_1737
	nop	word ptr cs:[rax + rax]
.label_1726:
	inc	r8
.label_1673:
	inc	rbp
	cmp	rbp, qword ptr [r10 + 8]
	jl	.label_1719
	mov	rbp, rbp
	jmp	.label_1678
.label_1718:
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	esi, esi
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1691
	nop	
.label_1681:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax + rcx + 8]
	mov	rsp, rsp
	movzx	edx, bpl
	mov	r13d, ebp
	mov	rbp, rbp
	shr	r13d, 8
	lea	rdi, [rdi]
	mov	ecx, r13d
	mov	rbp, rbp
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 1
	nop	
	jne	.label_1750
	test	ecx, ecx
	je	.label_1679
.label_1750:
	shr	ebp, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	rbp, rbp
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	or	eax, ebp
	nop	
	shl	al, 5
	nop	
	and	al, 0x20
	and	bl, 0xdf
	mov	rsp, rsp
	or	bl, al
	mov	byte ptr [r11 + 0x68], bl
	nop	
	cmp	edx, 2
	je	.label_1680
	cmp	edx, 4
	jne	.label_1690
	or	bl, 0x40
	jmp	.label_1692
.label_1680:
	or	bl, 0x10
.label_1692:
	mov	rbp, rbp
	mov	byte ptr [r11 + 0x68], bl
.label_1690:
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_1679
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	cmp	qword ptr [r11 + 0x50], r14
	lea	rsi, [rsi]
	jne	.label_1698
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r14
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], rdi
	lea	rdi, [rdi]
	mov	edi, 0x18
	nop	
	mov	rbx, r11
	call	malloc
	mov	rsp, rsp
	mov	r11, rbx
	mov	rbp, rbp
	mov	r14, rax
	mov	qword ptr [r11 + 0x50], r14
	test	r14, r14
	mov	rsp, rsp
	je	.label_1689
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	mov	rbp, rbp
	jle	.label_1711
	mov	qword ptr [rsp + 0x20], r11
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	lea	rdi, [rdi]
	shl	rbx, 3
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rax
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1686
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jmp	.label_1725
.label_1711:
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
.label_1725:
	mov	r14, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	or	byte ptr [r11 + 0x68], 0x80
	nop	
	xor	esi, esi
.label_1698:
	mov	rsp, rsp
	test	r13b, 0x12
	mov	rbp, rbp
	mov	r10, rbp
	mov	rsp, rsp
	jne	.label_1735
	test	r9d, r9d
	mov	rsp, rsp
	jne	.label_1679
	and	r13d, 0x40
	je	.label_1679
.label_1735:
	mov	rsp, rsp
	mov	rax, r12
	lea	rsi, [rsi]
	sub	rax, rsi
	js	.label_1740
	mov	rcx, qword ptr [r11 + 0x10]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jle	.label_1740
	nop	
	dec	rcx
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	lea	rsi, [rsi]
	jle	.label_1740
	lea	rax, [r12*8]
	add	rax, qword ptr [r11 + 0x18]
	mov	rcx, rsi
	lea	rsi, [rsi]
	neg	rcx
	nop	dword ptr [rax + rax]
.label_1717:
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdi, [rdi]
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	mov	rsp, rsp
	cmp	rdx, qword ptr [r11 + 0x10]
	jl	.label_1717
	nop	word ptr cs:[rax + rax]
.label_1740:
	lea	rdi, [rdi]
	inc	rsi
.label_1679:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r10 + 8]
	jl	.label_1681
	jmp	.label_1678
	nop	dword ptr [rax + rax]
.label_1691:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	ebp, dword ptr [rax + rcx + 8]
	lea	rdi, [rdi]
	movzx	edx, bpl
	mov	r13d, ebp
	shr	r13d, 8
	mov	ecx, r13d
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	edx, 1
	lea	rdi, [rdi]
	jne	.label_1742
	test	ecx, ecx
	je	.label_1693
.label_1742:
	shr	ebp, 0x14
	mov	bl, byte ptr [r11 + 0x68]
	mov	rsp, rsp
	mov	al, bl
	shr	al, 5
	movzx	eax, al
	or	eax, ebp
	lea	rsi, [rsi]
	shl	al, 5
	mov	rbp, rbp
	and	al, 0x20
	mov	rsp, rsp
	and	bl, 0xdf
	nop	
	or	bl, al
	nop	
	mov	byte ptr [r11 + 0x68], bl
	nop	
	cmp	edx, 4
	nop	
	je	.label_1695
	lea	rsi, [rsi]
	cmp	edx, 2
	mov	rsp, rsp
	jne	.label_1703
	mov	rbp, rbp
	or	bl, 0x10
	jmp	.label_1704
.label_1695:
	or	bl, 0x40
.label_1704:
	mov	byte ptr [r11 + 0x68], bl
.label_1703:
	nop	
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_1693
	mov	rbp, r10
	cmp	qword ptr [r11 + 0x50], r14
	nop	
	jne	.label_1707
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	edi, 0x18
	lea	rdi, [rdi]
	mov	rbx, r11
	mov	rsp, rsp
	call	malloc
	mov	r11, rbx
	mov	r14, rax
	mov	rbp, rbp
	mov	qword ptr [r11 + 0x50], r14
	mov	rsp, rsp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1689
	mov	rbx, qword ptr [rbp + 8]
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_1723
	mov	qword ptr [rsp + 0x20], r11
	mov	rbp, rbp
	mov	qword ptr [r14], rbx
	nop	
	shl	rbx, 3
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1686
	nop	
	mov	rsi, qword ptr [rbp + 0x10]
	nop	
	mov	rdi, rax
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	r11, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_1729
.label_1723:
	nop	
	pxor	xmm0, xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r14], xmm0
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x10], 0
	mov	rdi, qword ptr [rsp + 8]
	mov	r9d, dword ptr [rsp + 0x14]
.label_1729:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x18]
	or	byte ptr [r11 + 0x68], 0x80
	xor	esi, esi
.label_1707:
	test	r13b, 2
	mov	r10, rbp
	lea	rdi, [rdi]
	jne	.label_1746
	test	r9d, r9d
	lea	rdi, [rdi]
	jne	.label_1693
	and	r13d, 0x40
	mov	rsp, rsp
	je	.label_1693
.label_1746:
	mov	rbp, rbp
	mov	rax, r12
	sub	rax, rsi
	lea	rdi, [rdi]
	js	.label_1749
	mov	rcx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	nop	
	jle	.label_1749
	mov	rbp, rbp
	dec	rcx
	mov	qword ptr [r11 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_1749
	lea	rsi, [rsi]
	lea	rax, [r12*8]
	add	rax, qword ptr [r11 + 0x18]
	lea	rsi, [rsi]
	mov	rcx, rsi
	lea	rdi, [rdi]
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_1710:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rdx
	nop	
	lea	rdx, [r12 + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [r11 + 0x10]
	mov	rsp, rsp
	jl	.label_1710
	nop	word ptr cs:[rax + rax]
.label_1749:
	inc	rsi
.label_1693:
	inc	r12
	cmp	r12, qword ptr [r10 + 8]
	mov	rsp, rsp
	jl	.label_1691
.label_1678:
	mov	rsi, r11
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rbx, r11
	mov	rbp, rbp
	call	register_state
	nop	
	mov	rsi, rbx
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1699
	mov	rdi, rsi
	nop	
	jmp	.label_1701
.label_1689:
	mov	rdi, r11
.label_1701:
	call	free_state
	mov	rsp, rsp
	jmp	.label_1702
.label_1686:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	lea	rdi, [rdi]
	jmp	.label_1702
.label_1685:
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	rsp, rsp
	call	free
.label_1702:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
.label_1716:
	lea	rsi, [rsi]
	xor	esi, esi
.label_1699:
	nop	
	mov	rax, rsi
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x417cf0

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
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	lea	rdi, [r13*8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	rsp, rsp
	mov	ecx, 0xc
	test	rax, rax
	mov	rsp, rsp
	je	.label_1756
	mov	rbp, rbp
	test	r13, r13
	jle	.label_1759
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1755:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1758
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jne	.label_1757
	lea	rcx, [rdx + rdx + 2]
	mov	rsp, rsp
	lea	rdx, [rdx + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1761
	mov	qword ptr [rbx + 0x30], rax
	nop	
	mov	rcx, qword ptr [rbx + 0x28]
.label_1757:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1758:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1755
.label_1759:
	lea	rdi, [rdi]
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rsi, [rsi]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	lea	rsi, [rsi]
	jle	.label_1760
	nop	
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1754:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
	jmp	.label_1756
.label_1761:
	nop	
	mov	ecx, 0xc
.label_1756:
	mov	eax, ecx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_1760:
	mov	rbp, rbp
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	mov	rsp, rsp
	lea	rsi, [rax*8 + 0x10]
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	ecx, 0xc
	mov	rsp, rsp
	je	.label_1756
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r13 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	rbp, rbp
	mov	qword ptr [rcx], rdx
	lea	rsi, [rsi]
	mov	r15, qword ptr [r14]
	lea	rdi, [rdi]
	jmp	.label_1754
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417eb0

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
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r10, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	r13, [rbx + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r10
	jle	.label_1800
	cmp	dword ptr [rbx + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_1815
	mov	qword ptr [rbx + 0x20], 0
.label_1815:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	mov	rsp, rsp
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	mov	r14, r10
	jne	.label_1803
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	r14, r10
.label_1803:
	mov	rbp, rbp
	test	r14, r14
	je	.label_1790
	mov	r12, qword ptr [rbx + 0x38]
	mov	rbp, rbp
	cmp	r14, r12
	lea	rdi, [rdi]
	jge	.label_1836
	mov	rsp, rsp
	mov	ecx, dword ptr [rbx + 0x8c]
	mov	rbp, rbp
	mov	r9d, ecx
	mov	rbp, rbp
	shr	r9d, 0x10
	test	cl, cl
	lea	rsi, [rsi]
	jne	.label_1838
	mov	rsp, rsp
	test	r14, r14
	jle	.label_1842
	lea	rcx, [r14 - 1]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], rcx
	mov	rbp, rbp
	je	.label_1844
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1845
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	dword ptr [rax + rax]
.label_1853:
	mov	ebp, dword ptr [rcx + rdx*4 - 4]
	nop	
	cmp	ebp, -1
	mov	rbp, rbp
	jne	.label_1849
	nop	
	dec	rdx
	jg	.label_1853
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rbx + 0x70]
	lea	rsi, [rsi]
	jmp	.label_1763
.label_1845:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x80]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	r15d, 1
	bt	rcx, rax
	jb	.label_1763
	xor	r15d, r15d
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jne	.label_1763
	movzx	eax, word ptr [rbx + 0x8c]
	movzx	eax, ax
	nop	
	mov	r15d, 2
	cmp	eax, 0xff
	lea	rdi, [rdi]
	ja	.label_1763
	lea	rdi, [rdi]
	jmp	.label_1797
.label_1849:
	test	r9b, r9b
	lea	rdi, [rdi]
	jne	.label_1793
.label_1855:
	xor	r15d, r15d
	mov	rbp, rbp
	cmp	ebp, 0xa
	lea	rsi, [rsi]
	jne	.label_1763
	nop	
	mov	r15d, 2
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_1763
.label_1797:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_1763
.label_1800:
	nop	
	mov	r14, r10
	sub	r14, rax
	lea	rsi, [rsi]
	jmp	.label_1803
.label_1836:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbx + 0x30]
	mov	cx, word ptr [rbx + 0x8c]
	test	cl, cl
	mov	rbp, rbp
	jne	.label_1806
.label_1799:
	mov	qword ptr [rbx + 0x30], 0
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbx + 0x90]
	cmp	rsi, 2
	jl	.label_1812
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x89], 0
	lea	rsi, [rsi]
	je	.label_1820
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	lea	r8, [rdi + rax]
	mov	rdx, r14
	sub	rdx, rsi
	nop	
	add	rdx, r8
	cmp	rdx, rdi
	mov	rbp, rbp
	cmovb	rdx, rdi
	lea	r9, [r8 + r14]
	lea	rsi, [r14 + rax]
	lea	rsi, [rdi + rsi - 1]
	nop	dword ptr [rax + rax]
.label_1828:
	mov	rbp, rsi
	mov	rsp, rsp
	cmp	rbp, rdx
	jb	.label_1820
	mov	cl, byte ptr [rbp]
	mov	rsp, rsp
	and	cl, 0xc0
	lea	rdi, [rdi]
	movzx	ecx, cl
	lea	rsi, [rbp - 1]
	cmp	ecx, 0x80
	mov	rbp, rbp
	je	.label_1828
	mov	qword ptr [rsp + 8], r9
	add	r8, qword ptr [rbx + 0x58]
	mov	rdx, r8
	sub	rdx, rbp
	mov	r9, qword ptr [rbx + 0x78]
	test	r9, r9
	mov	rsp, rsp
	jne	.label_1834
	mov	r12, r11
	mov	qword ptr [rsp + 0x20], r10
	lea	rdi, [rdi]
	mov	rsi, rbp
.label_1802:
	nop	
	mov	qword ptr [rsp], 0
	lea	rdi, [rsp + 0x34]
	lea	rcx, [rsp]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	mov	rsp, rsp
	sub	rcx, rdx
	jb	.label_1772
	cmp	rax, -3
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r11, r12
	ja	.label_1846
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x34]
	jmp	.label_1846
.label_1838:
	mov	rbp, rbp
	mov	r8, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rbx + 0x30]
	xor	ebp, ebp
.label_1843:
	lea	rsi, [rbp + rax]
	mov	rsp, rsp
	mov	rdx, rsi
	lea	rsi, [rsi]
	shr	rdx, 0x3f
	mov	rsp, rsp
	add	rdx, rsi
	sar	rdx, 1
	mov	rsi, qword ptr [r8 + rdx*8]
	nop	
	cmp	rsi, r14
	lea	rdi, [rdi]
	mov	rdi, rdx
	jg	.label_1766
	jge	.label_1780
	lea	rbp, [rdx + 1]
	mov	rbp, rbp
	mov	rdi, rax
.label_1766:
	nop	
	cmp	rbp, rdi
	mov	rbp, rbp
	mov	rax, rdi
	jl	.label_1843
.label_1780:
	mov	rbp, rbp
	cmp	rsi, r14
	setl	al
	nop	
	movzx	eax, al
	lea	rdi, [rdi]
	lea	r12, [rax + rdx]
	test	r12, r12
	jle	.label_1785
	lea	rdi, [rax + rdx - 1]
	cmp	qword ptr [rbx + 0x58], rdi
	lea	rsi, [rsi]
	je	.label_1789
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1830
	cmp	rsi, r14
	setl	al
	mov	rcx, qword ptr [rbx + 0x10]
	movzx	eax, al
	lea	rdi, [rdi]
	add	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1807:
	mov	rbp, rbp
	mov	ebp, dword ptr [rcx + rdx*4 - 4]
	lea	rsi, [rsi]
	cmp	ebp, -1
	mov	rbp, rbp
	jne	.label_1771
	dec	rdx
	jg	.label_1807
	mov	rsp, rsp
	mov	r15d, dword ptr [rbx + 0x70]
	jmp	.label_1778
.label_1842:
	mov	r15d, dword ptr [rbx + 0x70]
	jmp	.label_1763
.label_1844:
	and	r15d, 2
	nop	
	xor	r15d, 0xa
.label_1763:
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x70], r15d
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1832
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	lea	rsi, [rsi]
	shl	rdx, 2
	mov	rbp, r10
	nop	
	call	memmove
	mov	r10, rbp
.label_1832:
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1821
.label_1856:
	lea	rdi, [rdi]
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1779:
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rbp, rbp
	jne	.label_1790
	nop	
	add	qword ptr [rbx + 8], r14
.label_1790:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x28], r10
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_1827
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1833
	mov	rdi, rbx
	mov	rbp, rbp
	call	build_wcs_upper_buffer
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1837
	jmp	.label_1764
.label_1827:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1839
	mov	qword ptr [rbx + 0x30], rdx
	mov	rbp, rbp
	jmp	.label_1764
.label_1833:
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	build_wcs_buffer
.label_1764:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x48], 0
	lea	rdi, [rdi]
	xor	eax, eax
.label_1837:
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_1821:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	sub	rdx, r14
	nop	
	lea	rsi, [rdi + r14]
	lea	rdi, [rdi]
	mov	rbp, r10
	call	memmove
	mov	r10, rbp
	mov	rsp, rsp
	jmp	.label_1856
.label_1839:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1762
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	cmp	r14, rdx
	lea	rdi, [rdi]
	cmovg	r14, rdx
	cmp	r15, r14
	jge	.label_1765
	lea	rdi, [rdi]
	jmp	.label_1773
	nop	word ptr cs:[rax + rax]
.label_1795:
	lea	rdi, [rdi]
	mov	r10, qword ptr [r13]
.label_1773:
	mov	rsp, rsp
	inc	r15
	lea	rsi, [rsi]
	add	r10, qword ptr [rbx]
	mov	al, byte ptr [r15 + r10 - 1]
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1783
.label_1801:
	mov	rbp, rbp
	movzx	ebp, al
	mov	rbp, rbp
	lea	eax, [rbp + 0x80]
	mov	rsp, rsp
	cmp	eax, 0x17f
	ja	.label_1787
	lea	rdi, [rdi]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rbp*4]
.label_1787:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r15 - 1], bpl
	nop	
	cmp	r15, r14
	lea	rdi, [rdi]
	jl	.label_1795
	lea	rdi, [rdi]
	jmp	.label_1798
.label_1783:
	mov	rbp, rbp
	mov	al, byte ptr [rdx + rcx]
	jmp	.label_1801
.label_1812:
	lea	rsi, [rsi]
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	al, byte ptr [rdx + rax - 1]
	mov	rsp, rsp
	movzx	edx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1804
	lea	rsi, [rsi]
	mov	al, byte ptr [rsi + rdx]
.label_1804:
	mov	rsi, qword ptr [rbx + 0x80]
	movzx	edx, al
	shr	al, 6
	movzx	eax, al
	mov	rsi, qword ptr [rsi + rax*8]
	mov	eax, 1
	bt	rsi, rdx
	jb	.label_1814
	mov	rsp, rsp
	xor	eax, eax
	nop	
	cmp	edx, 0xa
	lea	rdi, [rdi]
	jne	.label_1814
	movzx	eax, cx
	cmp	eax, 0xff
	seta	al
	lea	rsi, [rsi]
	movzx	eax, al
	add	eax, eax
.label_1814:
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x70], eax
	jmp	.label_1779
.label_1830:
	mov	rax, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x80]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rax + rdi]
	mov	dl, al
	lea	rdi, [rdi]
	shr	dl, 6
	lea	rsi, [rsi]
	movzx	edx, dl
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	rsp, rsp
	mov	r15d, 1
	bt	rdx, rax
	jb	.label_1778
	lea	rsi, [rsi]
	xor	r15d, r15d
	movzx	eax, al
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jne	.label_1778
	test	ch, 0xff
	setne	al
	movzx	r15d, al
	mov	rbp, rbp
	add	r15d, r15d
	jmp	.label_1778
.label_1771:
	mov	rsp, rsp
	test	r9b, r9b
	mov	rbp, rbp
	jne	.label_1840
.label_1819:
	xor	r15d, r15d
	nop	
	cmp	ebp, 0xa
	lea	rsi, [rsi]
	jne	.label_1778
	lea	rdi, [rdi]
	mov	r15d, 2
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rsp, rsp
	jne	.label_1778
	xor	r15d, r15d
	jmp	.label_1778
.label_1793:
	mov	r12, r10
	mov	edi, ebp
	call	iswalnum
	mov	rbp, rbp
	cmp	ebp, 0x5f
	mov	rsp, rsp
	mov	r15d, 1
	je	.label_1848
	test	eax, eax
	lea	rsi, [rsi]
	mov	r10, r12
	lea	rdi, [rdi]
	je	.label_1855
	mov	rbp, rbp
	jmp	.label_1763
.label_1762:
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1764
	mov	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_1769
	nop	
	add	r10, rax
	mov	rdx, qword ptr [rbx]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r10]
	nop	
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_1777
.label_1791:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rax + rsi]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rdx + rsi]
.label_1777:
	mov	byte ptr [rdi + rax], dl
	mov	rbp, rbp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_1791
	mov	rsp, rsp
	mov	rax, rcx
.label_1769:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1764
.label_1798:
	mov	rbp, rbp
	mov	r15, r14
.label_1765:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1764
.label_1806:
	lea	rsi, [rsi]
	mov	rdx, r14
	sub	rdx, r10
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x50]
	mov	rsp, rsp
	add	rsi, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x58], rsi
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1799
.label_1785:
	mov	r15d, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_1778
.label_1789:
	and	r15d, 2
	xor	r15d, 0xa
.label_1778:
	mov	dword ptr [rbx + 0x70], r15d
	mov	rax, qword ptr [rbx + 0x30]
	cmp	r12, r14
	mov	rsp, rsp
	jne	.label_1818
	mov	rbp, rbp
	mov	rdx, rax
	sub	rdx, r14
	jle	.label_1818
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + r14*8], r14
	lea	rdi, [rdi]
	jne	.label_1818
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	nop	
	shl	rdx, 2
	mov	rbp, r10
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	sub	rdx, r14
	nop	
	lea	rsi, [rdi + r14]
	lea	rdi, [rdi]
	call	memmove
	mov	r10, rbp
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	mov	rbp, rbp
	movq	xmm1, r14
	nop	
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	nop	
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	jle	.label_1779
	mov	rax, qword ptr [rbx + 0x18]
	lea	rsi, [rsi]
	lea	rcx, [rax + r14*8]
	lea	rdi, [rdi]
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1841:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	nop	
	mov	qword ptr [rax + rdx*8], rsi
	lea	rsi, [rsi]
	inc	rdx
	nop	
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1841
	mov	rbp, rbp
	jmp	.label_1779
.label_1818:
	mov	rcx, r14
	sub	rcx, r10
	mov	rdx, qword ptr [rbx + 0x50]
	add	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x58], rdx
	mov	rbp, rbp
	add	rcx, qword ptr [rbx + 0x60]
	nop	
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	nop	dword ptr [rax + rax]
.label_1857:
	mov	rbp, rbp
	mov	rcx, r12
	test	rcx, rcx
	mov	rbp, rbp
	jle	.label_1852
	lea	r12, [rcx - 1]
	mov	rdx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rdx + rcx*8 - 8], r14
	lea	rdi, [rdi]
	je	.label_1857
.label_1852:
	cmp	rcx, rax
	jge	.label_1770
	mov	rdx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_1809:
	nop	
	cmp	dword ptr [rdx + rcx*4], -1
	jne	.label_1770
	inc	rcx
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1809
.label_1770:
	mov	rsp, rsp
	cmp	rcx, rax
	jne	.label_1774
	mov	qword ptr [rbx + 0x30], 0
	xor	ebp, ebp
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x38], rbp
	lea	rsi, [rsi]
	jmp	.label_1779
.label_1774:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, qword ptr [rax + rcx*8]
	sub	rbp, r14
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rbp
	lea	rdi, [rdi]
	je	.label_1854
	mov	rbp, rbp
	mov	r15, r10
	test	rbp, rbp
	jle	.label_1788
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	edx, 1
	cmovg	rdx, rbp
	shl	rdx, 2
	mov	esi, 0xff
	mov	rsp, rsp
	call	memset
.label_1788:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	memset
	mov	rbp, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	r10, r15
.label_1854:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x38], rbp
	mov	rsp, rsp
	jmp	.label_1779
.label_1848:
	nop	
	mov	r10, r12
	jmp	.label_1763
.label_1772:
	mov	r10, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	r11, r12
.label_1846:
	mov	rsp, rsp
	cmp	esi, -1
	jne	.label_1811
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x28]
	mov	r12, qword ptr [rbx + 0x38]
.label_1820:
	mov	rsp, rsp
	add	r12, rax
	nop	
	mov	rax, r12
	nop	
	sub	rax, r10
	mov	rsp, rsp
	jge	.label_1817
	mov	qword ptr [rsp + 0x10], r11
	nop	
	mov	qword ptr [rsp + 0x18], r13
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	jmp	.label_1816
.label_1805:
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	cmp	r13, r12
	je	.label_1823
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	mov	r10, rbp
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 8]
	je	.label_1824
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rax + r12]
	jmp	.label_1824
.label_1823:
	lea	rsi, [rsi]
	mov	r10, rbp
	nop	
	mov	rcx, qword ptr [rsp + 8]
.label_1824:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	nop	
	jmp	.label_1831
	nop	
.label_1816:
	mov	rbp, r10
	nop	
	mov	rax, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	r13, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	rdx, r13
	sub	rdx, r12
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx]
	add	rsi, r12
	lea	rdi, [rsp]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	rpl_mbrtowc
	nop	
	test	rax, rax
	je	.label_1805
	mov	rcx, rax
	lea	rdi, [rdi]
	or	rcx, 1
	lea	rdi, [rdi]
	cmp	rcx, -1
	je	.label_1805
	mov	esi, dword ptr [rsp]
	mov	rsp, rsp
	mov	r10, rbp
.label_1831:
	add	r12, rax
	lea	rdi, [rdi]
	mov	rax, r12
	nop	
	sub	rax, r10
	jl	.label_1816
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	cmp	esi, -1
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	je	.label_1850
.label_1811:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1767
.label_1851:
	xor	ecx, ecx
	cmp	esi, 0xa
	mov	rbp, rbp
	jne	.label_1792
	lea	rsi, [rsi]
	mov	ecx, 2
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1792
	mov	rsp, rsp
	xor	ecx, ecx
.label_1792:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rsp, rsp
	jmp	.label_1776
.label_1817:
	mov	qword ptr [rbx + 0x30], rax
.label_1850:
	test	r11, r11
	mov	rbp, rbp
	jle	.label_1782
	lea	rax, [r11 - 1]
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], rax
	mov	rsp, rsp
	je	.label_1784
	mov	rbp, rbp
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_1786
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
.label_1825:
	mov	ebp, dword ptr [rax + r11*4 - 4]
	nop	
	cmp	ebp, -1
	mov	rbp, rbp
	jne	.label_1794
	lea	rsi, [rsi]
	dec	r11
	mov	rbp, rbp
	jg	.label_1825
	mov	r15d, dword ptr [rbx + 0x70]
	mov	dword ptr [rbx + 0x70], r15d
	nop	
	jmp	.label_1776
.label_1786:
	mov	rcx, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x80]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	r15d, 1
	lea	rsi, [rsi]
	bt	rcx, rax
	mov	rbp, rbp
	jb	.label_1775
	mov	rbp, rbp
	xor	r15d, r15d
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1775
	jmp	.label_1813
.label_1794:
	cmp	byte ptr [rbx + 0x8e], 0
	lea	rsi, [rsi]
	jne	.label_1829
.label_1810:
	lea	rsi, [rsi]
	xor	r15d, r15d
	cmp	ebp, 0xa
	jne	.label_1775
.label_1813:
	mov	r15d, 2
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rbp, rbp
	jne	.label_1775
	xor	r15d, r15d
.label_1775:
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x70], r15d
.label_1776:
	mov	rbp, rbp
	mov	rbp, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	test	rbp, rbp
	jne	.label_1822
.label_1835:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	mov	rbp, rbp
	jmp	.label_1779
.label_1822:
	jle	.label_1826
	mov	rdi, qword ptr [rbx + 0x10]
	test	rbp, rbp
	mov	edx, 1
	nop	
	cmovg	rdx, rbp
	lea	rdi, [rdi]
	shl	rdx, 2
	mov	esi, 0xff
	lea	rdi, [rdi]
	mov	r15, r10
	lea	rsi, [rsi]
	call	memset
	mov	r10, r15
.label_1826:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1835
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	esi, 0xff
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	rbp, r10
	nop	
	call	memset
	lea	rsi, [rsi]
	mov	r10, rbp
	lea	rdi, [rdi]
	jmp	.label_1835
.label_1782:
	mov	r15d, dword ptr [rbx + 0x70]
	mov	dword ptr [rbx + 0x70], r15d
	jmp	.label_1776
.label_1784:
	mov	rsp, rsp
	and	r15d, 2
	mov	rsp, rsp
	xor	r15d, 0xa
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x70], r15d
	mov	rsp, rsp
	jmp	.label_1776
.label_1767:
	mov	rsp, rsp
	mov	r15, r10
	mov	ebp, esi
	mov	edi, ebp
	nop	
	call	iswalnum
	mov	esi, ebp
	nop	
	cmp	esi, 0x5f
	nop	
	mov	ecx, 1
	je	.label_1847
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	mov	r10, r15
	je	.label_1851
	lea	rdi, [rdi]
	jmp	.label_1792
.label_1840:
	nop	
	mov	qword ptr [rsp + 0x20], r10
	nop	
	mov	edi, ebp
	call	iswalnum
	nop	
	cmp	ebp, 0x5f
	mov	rsp, rsp
	mov	r15d, 1
	je	.label_1768
	test	eax, eax
	nop	
	mov	r10, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	je	.label_1819
	nop	
	jmp	.label_1778
.label_1834:
	lea	rsi, [rsp + 0x2e]
	mov	rsp, rsp
	cmp	rdx, 6
	lea	rsi, [rsi]
	mov	ecx, 6
	cmovl	ecx, edx
	nop	
	test	ecx, ecx
	jle	.label_1781
	mov	qword ptr [rsp + 0x20], r10
	lea	rdi, [rbp - 1]
	sub	rdi, r8
	mov	rsp, rsp
	cmp	rdi, -8
	nop	
	mov	rcx, -7
	mov	rbp, rbp
	cmovg	rcx, rdi
	xor	rcx, 0xffffffffffffffff
	mov	rbp, rbp
	shl	rcx, 0x20
	lea	rdi, [rdi]
	sar	rcx, 0x20
	inc	rcx
.label_1796:
	nop	
	movzx	edi, byte ptr [rbp + rcx - 2]
	mov	rbp, rbp
	mov	al, byte ptr [r9 + rdi]
	mov	byte ptr [rsp + rcx + 0x2c], al
	lea	rdi, [rdi]
	dec	rcx
	cmp	rcx, 1
	mov	rsp, rsp
	jg	.label_1796
	mov	r12, r11
	jmp	.label_1802
.label_1829:
	lea	rsi, [rsi]
	mov	r12, r10
	lea	rdi, [rdi]
	mov	edi, ebp
	call	iswalnum
	lea	rdi, [rdi]
	cmp	ebp, 0x5f
	nop	
	mov	r15d, 1
	je	.label_1808
	test	eax, eax
	mov	rsp, rsp
	mov	r10, r12
	lea	rdi, [rdi]
	je	.label_1810
	jmp	.label_1775
.label_1781:
	mov	r12, r11
	mov	qword ptr [rsp + 0x20], r10
	jmp	.label_1802
.label_1847:
	nop	
	mov	r10, r15
	jmp	.label_1792
.label_1768:
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_1778
.label_1808:
	mov	rsp, rsp
	mov	r10, r12
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x70], r15d
	jmp	.label_1776
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418d30

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r14
	push	rbx
	nop	
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	js	.label_1867
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x58], rdx
	je	.label_1870
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1873
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	inc	rdx
	nop	word ptr [rax + rax]
.label_1860:
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	mov	rbp, rbp
	cmp	ebp, -1
	mov	rsp, rsp
	jne	.label_1864
	dec	rdx
	test	rdx, rdx
	lea	rdi, [rdi]
	jg	.label_1860
	mov	edi, dword ptr [rbx + 0x70]
	mov	rsp, rsp
	jmp	.label_1862
.label_1873:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x80]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rdx]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edi, 1
	bt	rcx, rax
	mov	rsp, rsp
	jb	.label_1862
	xor	edi, edi
	movzx	eax, al
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_1862
	jmp	.label_1874
.label_1864:
	cmp	byte ptr [rbx + 0x8e], 0
	lea	rdi, [rdi]
	jne	.label_1875
.label_1861:
	lea	rsi, [rsi]
	xor	edi, edi
	cmp	ebp, 0xa
	mov	rbp, rbp
	jne	.label_1862
.label_1874:
	mov	rbp, rbp
	mov	edi, 2
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_1862
	lea	rdi, [rdi]
	xor	edi, edi
	jmp	.label_1862
.label_1867:
	mov	rbp, rbp
	mov	edi, dword ptr [rbx + 0x70]
	jmp	.label_1862
.label_1870:
	mov	edi, dword ptr [rbx + 0xa0]
	nop	
	and	edi, 2
	xor	edi, 0xa
.label_1862:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	xor	eax, eax
	test	rcx, rcx
	mov	rsp, rsp
	jle	.label_1863
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x98]
	nop	
	mov	rdx, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax]
	mov	eax, edi
	and	eax, 2
	mov	rsp, rsp
	mov	r8d, edi
	and	r8d, 8
	xor	ebp, ebp
	test	dil, 1
	lea	rsi, [rsi]
	jne	.label_1869
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_1871
	nop	dword ptr [rax + rax]
.label_1876:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	mov	rsp, rsp
	shl	rdi, 4
	mov	edi, dword ptr [rsi + rdi + 8]
	lea	rsi, [rsi]
	movzx	ebx, dil
	nop	
	cmp	ebx, 2
	mov	rsp, rsp
	jne	.label_1859
	shr	edi, 8
	test	di, 0x3ff
	lea	rsi, [rsi]
	je	.label_1863
	test	dil, 0x24
	lea	rsi, [rsi]
	jne	.label_1859
	lea	rsi, [rsi]
	test	r8d, r8d
	jne	.label_1863
	mov	rbp, rbp
	test	dil, dil
	lea	rsi, [rsi]
	jns	.label_1863
	nop	word ptr [rax + rax]
.label_1859:
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, rcx
	mov	rbp, rbp
	mov	eax, 0
	jl	.label_1876
	lea	rdi, [rdi]
	jmp	.label_1863
	nop	dword ptr [rax + rax]
.label_1871:
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	shl	rdi, 4
	mov	rsp, rsp
	mov	edi, dword ptr [rsi + rdi + 8]
	movzx	ebx, dil
	cmp	ebx, 2
	lea	rsi, [rsi]
	jne	.label_1858
	shr	edi, 8
	nop	
	test	di, 0x3ff
	je	.label_1863
	test	dil, 4
	jne	.label_1858
	lea	rsi, [rsi]
	test	r8d, r8d
	jne	.label_1863
	lea	rsi, [rsi]
	test	dil, dil
	mov	rsp, rsp
	jns	.label_1863
.label_1858:
	mov	rbp, rbp
	inc	rbp
	cmp	rbp, rcx
	mov	eax, 0
	jl	.label_1871
	nop	
	jmp	.label_1863
.label_1869:
	test	eax, eax
	jne	.label_1868
	nop	dword ptr [rax]
.label_1872:
	mov	rax, qword ptr [rdx + rbp*8]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	shl	rdi, 4
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + rdi + 8]
	lea	rsi, [rsi]
	movzx	ebx, dil
	cmp	ebx, 2
	lea	rdi, [rdi]
	jne	.label_1866
	shr	edi, 8
	lea	rdi, [rdi]
	test	di, 0x3ff
	lea	rsi, [rsi]
	je	.label_1863
	test	dil, 0x28
	lea	rdi, [rdi]
	jne	.label_1866
	lea	rdi, [rdi]
	test	r8d, r8d
	nop	
	jne	.label_1863
	mov	rbp, rbp
	test	dil, dil
	lea	rsi, [rsi]
	jns	.label_1863
	nop	
.label_1866:
	inc	rbp
	cmp	rbp, rcx
	lea	rdi, [rdi]
	mov	eax, 0
	mov	rsp, rsp
	jl	.label_1872
	mov	rsp, rsp
	jmp	.label_1863
	nop	dword ptr [rax + rax]
.label_1868:
	mov	rax, qword ptr [rdx + rbp*8]
	mov	rdi, rax
	nop	
	shl	rdi, 4
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsi + rdi + 8]
	lea	rdi, [rdi]
	movzx	ebx, dil
	cmp	ebx, 2
	nop	
	jne	.label_1865
	nop	
	shr	edi, 8
	mov	rsp, rsp
	test	di, 0x3ff
	lea	rsi, [rsi]
	je	.label_1863
	test	dil, 8
	lea	rsi, [rsi]
	jne	.label_1865
	test	r8d, r8d
	lea	rdi, [rdi]
	jne	.label_1863
	lea	rdi, [rdi]
	test	dil, dil
	nop	
	jns	.label_1863
.label_1865:
	mov	rsp, rsp
	inc	rbp
	lea	rdi, [rdi]
	cmp	rbp, rcx
	mov	rbp, rbp
	mov	eax, 0
	mov	rbp, rbp
	jl	.label_1868
.label_1863:
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1875:
	mov	edi, ebp
	call	iswalnum
	nop	
	cmp	ebp, 0x5f
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	je	.label_1862
	nop	
	test	eax, eax
	jne	.label_1862
	lea	rsi, [rsi]
	jmp	.label_1861
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x419090

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
	jle	.label_1880
	nop	
	xor	r12d, r12d
	nop	
.label_1881:
	mov	rax, qword ptr [r14 + 0xf8]
	nop	
	mov	r15, qword ptr [rax + r12*8]
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	mov	ebx, 0
	lea	rsi, [rsi]
	jle	.label_1877
	nop	word ptr cs:[rax + rax]
.label_1879:
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
	jl	.label_1879
.label_1877:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1878
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
.label_1878:
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	free
	mov	rbp, rbp
	inc	r12
	mov	rsp, rsp
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1881
.label_1880:
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
	#Procedure 0x4191a0

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
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	r14, rcx
	nop	
	mov	qword ptr [rbp - 0x98], r14
	mov	rbx, rdx
	mov	qword ptr [rbp - 0x58], rbx
	mov	r13, rsi
	mov	qword ptr [rbp - 0x88], r13
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + label_1921]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1922]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	xor	r12d, r12d
	test	r8b, r8b
	je	.label_1923
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdi
	mov	r15, r14
	mov	edi, 0x60
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	r14d, 0xc
	lea	rsi, [rsi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1887
	nop	
	lea	r12, [rbp - 0x50]
	nop	
	mov	r14, r15
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
.label_1923:
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rdi + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rdi, [rdi]
	cmp	rdx, 0xfbf
	mov	rsp, rsp
	ja	.label_1893
	mov	rsp, rsp
	mov	rax, rsp
	lea	rdi, [rdi]
	lea	rcx, [rdx + 0xf]
	and	rcx, 0xfffffffffffffff0
	mov	rsp, rsp
	sub	rax, rcx
	nop	
	mov	rsp, rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], 0
	jmp	.label_1903
.label_1893:
	lea	rdi, [rdi]
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdx
	call	malloc
	test	rax, rax
	nop	
	je	.label_1910
	mov	cl, 1
	mov	dword ptr [rbp - 0x9c], ecx
	mov	rdx, qword ptr [rbp - 0x78]
.label_1903:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rdx
	nop	
	mov	qword ptr [rbp - 0xb0], rax
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, r14
	call	memcpy
	mov	rsi, qword ptr [r14]
	xor	edi, edi
	mov	rbp, rbp
	cmp	rsi, qword ptr [r14 + 8]
	jg	.label_1917
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], r12
	nop	
	lea	rax, [r14 + 8]
	mov	qword ptr [rbp - 0x90], rax
	nop	word ptr cs:[rax + rax]
.label_1936:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax]
	mov	rdx, r15
	shl	rdx, 4
	mov	rbp, rbp
	lea	rax, [rcx + rdx]
	mov	rbp, rbp
	mov	ecx, dword ptr [rcx + rdx + 8]
	lea	rsi, [rsi]
	movzx	edx, cl
	cmp	edx, 9
	je	.label_1898
	cmp	edx, 8
	mov	r12, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	jne	.label_1884
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1884
	shl	rax, 4
	lea	rdi, [rdi]
	mov	qword ptr [r14 + rax], rsi
	lea	rdi, [rdi]
	mov	qword ptr [r14 + rax + 8], -1
	mov	rsp, rsp
	jmp	.label_1884
	nop	
.label_1898:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	mov	r12, qword ptr [rbp - 0xa8]
	jge	.label_1884
	nop	
	shl	rax, 4
	cmp	qword ptr [r14 + rax], rsi
	jge	.label_1938
	mov	qword ptr [r14 + rax + 8], rsi
	mov	rdi, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rbp - 0xb8], rsi
	nop	
	mov	rsi, r14
	jmp	.label_1940
.label_1938:
	test	ecx, 0x80000
	je	.label_1944
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	cmp	qword ptr [rcx + rax], -1
	mov	rbp, rbp
	je	.label_1944
	mov	rdi, r14
	nop	
	mov	qword ptr [rbp - 0xb8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xb0]
.label_1940:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rsi, qword ptr [rbp - 0xb8]
	jmp	.label_1884
.label_1944:
	lea	rsi, [rsi]
	mov	qword ptr [r14 + rax + 8], rsi
	nop	word ptr cs:[rax + rax]
.label_1884:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rsi
	cmp	rsi, qword ptr [r14 + 8]
	mov	rbp, rbp
	jne	.label_1891
	cmp	r15, qword ptr [r13 + 0xb0]
	lea	rdi, [rdi]
	jne	.label_1891
	test	r12, r12
	je	.label_1894
	mov	rsp, rsp
	test	rbx, rbx
	mov	rcx, qword ptr [rbp - 0x90]
	mov	eax, 0
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	je	.label_1895
	nop	dword ptr [rax]
.label_1904:
	mov	rsp, rsp
	cmp	qword ptr [rcx - 8], 0
	js	.label_1901
	lea	rdi, [rdi]
	cmp	qword ptr [rcx], -1
	je	.label_1895
.label_1901:
	inc	rax
	lea	rdi, [rdi]
	add	rcx, 0x10
	cmp	rax, rbx
	lea	rdi, [rdi]
	jb	.label_1904
.label_1895:
	cmp	rax, rbx
	je	.label_1934
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rsp, rsp
	lea	rax, [rcx - 1]
	mov	qword ptr [r12], rax
	nop	
	test	rcx, rcx
	mov	rbp, rbp
	jle	.label_1907
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0x10]
	shl	rax, 4
	lea	rsi, [rsi]
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r15, qword ptr [rax + rbx + 8]
.label_1891:
	nop	
	mov	rbx, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx]
	mov	r14, r15
	shl	r14, 4
	mov	eax, dword ptr [rsi + r14 + 8]
	test	al, 8
	mov	rsp, rsp
	jne	.label_1924
	nop	
	mov	qword ptr [rbp - 0xa8], r12
	test	eax, 0x100000
	jne	.label_1928
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 4
	lea	rsi, [rsi]
	jne	.label_1929
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi + r14]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + rcx + 0x10]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rax + rcx + 0x18]
	lea	rsi, [rsi]
	mov	r12, r13
	sub	r12, rdx
	cmp	qword ptr [rbp - 0xa8], 0
	lea	rdi, [rdi]
	je	.label_1915
	cmp	r13, -1
	je	.label_1906
	cmp	rdx, -1
	mov	rsp, rsp
	je	.label_1906
	cmp	r13, rdx
	lea	rdi, [rdi]
	je	.label_1915
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, r12
	lea	rdi, [rdi]
	jl	.label_1906
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rax + 8]
	lea	rdi, [rsi + rdx]
	add	rsi, qword ptr [rbp - 0xb8]
	nop	
	mov	qword ptr [rbp - 0x80], rdx
	lea	rsi, [rsi]
	mov	rdx, r12
	call	memcmp
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1906
.label_1915:
	cmp	r13, rdx
	lea	rdi, [rdi]
	jne	.label_1896
	lea	rdi, [rbp - 0x70]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	je	.label_1908
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xb8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rcx*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1896
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x28]
	nop	
	lea	rsi, [r15 + r15*2]
	mov	rdx, qword ptr [rdx + rsi*8 + 0x10]
	mov	r13, qword ptr [rdx]
	lea	rdi, [rdi]
	dec	rax
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, 0
	nop	
	je	.label_1913
	nop	word ptr cs:[rax + rax]
.label_1912:
	lea	rsi, [rdx + rax]
	lea	rsi, [rsi]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r13
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	lea	rsi, [rsi]
	cmovge	rax, rsi
	cmp	rdx, rax
	lea	rsi, [rsi]
	jb	.label_1912
.label_1913:
	cmp	rdx, -1
	nop	
	je	.label_1896
	cmp	qword ptr [rcx + rdx*8], r13
	je	.label_1918
	lea	rsi, [rsi]
	jmp	.label_1896
	nop	word ptr cs:[rax + rax]
.label_1924:
	nop	
	mov	qword ptr [rbp - 0xa8], r12
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	r14, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbx + 0x28]
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	je	.label_1908
	nop	
	lea	rax, [r15 + r15*2]
	mov	r10, qword ptr [rbx + rax*8 + 8]
	mov	rsp, rsp
	test	r10, r10
	lea	rdi, [rdi]
	jle	.label_1900
	mov	r9, qword ptr [r14 + 0x10]
	test	r9, r9
	jle	.label_1900
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	dec	r9
	mov	rsi, qword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	mov	r11, -1
	mov	rbp, rbp
	mov	r14d, 0
	mov	rbp, rbp
	je	.label_1932
	nop	dword ptr [rax]
.label_1883:
	mov	rbx, qword ptr [r8 + r14*8]
	mov	rbp, rbp
	mov	rdx, r9
	xor	eax, eax
	nop	dword ptr [rax]
.label_1941:
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rcx, [rdi + rdx]
	shr	rcx, 1
	mov	rbp, rbp
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rax, [rcx + 1]
	nop	
	cmovge	rax, rdi
	cmovge	rdx, rcx
	lea	rdi, [rdi]
	cmp	rax, rdx
	jb	.label_1941
	lea	rdi, [rdi]
	cmp	rax, -1
	je	.label_1945
	nop	
	cmp	qword ptr [rsi + rax*8], rbx
	jne	.label_1945
	mov	rsp, rsp
	cmp	r11, -1
	mov	rbp, rbp
	mov	r13, r11
	mov	r11, rbx
	lea	rdi, [rdi]
	jne	.label_1935
.label_1945:
	nop	
	inc	r14
	cmp	r14, r10
	jl	.label_1883
	mov	r12, qword ptr [rbp - 0xb8]
	mov	r13, r11
	jmp	.label_1886
	nop	word ptr [rax + rax]
.label_1928:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb8]
	call	check_node_accept_bytes
	movsxd	r12, eax
.label_1896:
	test	r12, r12
	nop	
	jne	.label_1892
	mov	rsi, qword ptr [rbx]
	nop	
	mov	r13, qword ptr [rbp - 0x88]
.label_1929:
	add	rsi, r14
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rdx, qword ptr [rbp - 0xb8]
	call	check_node_accept
	test	al, al
	lea	rdi, [rdi]
	mov	r12d, 1
	je	.label_1900
.label_1892:
	add	r12, qword ptr [rbp - 0xb8]
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rax, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rax + r15*8]
	mov	rsp, rsp
	je	.label_1902
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	cmp	r12, qword ptr [rax + 0xa8]
	jg	.label_1906
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + r12*8]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1906
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1906
	dec	rax
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	edx, 0
	mov	rsp, rsp
	je	.label_1916
	nop	word ptr cs:[rax + rax]
.label_1920:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	lea	rdi, [rdi]
	shr	rsi, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rsi*8], r13
	nop	
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	mov	rbp, rbp
	jb	.label_1920
.label_1916:
	lea	rsi, [rsi]
	cmp	rdx, -1
	lea	rsi, [rsi]
	je	.label_1900
	mov	rsp, rsp
	cmp	qword ptr [rcx + rdx*8], r13
	jne	.label_1900
.label_1902:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	jmp	.label_1886
.label_1932:
	nop	
	mov	rbx, qword ptr [rsi]
	nop	
	mov	r13, -1
	nop	
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1937:
	cmp	rbx, qword ptr [r8 + rcx*8]
	jne	.label_1931
	cmp	r13, -1
	mov	rax, rbx
	mov	rbp, rbp
	je	.label_1933
	jmp	.label_1935
	nop	word ptr cs:[rax + rax]
.label_1931:
	mov	rax, r13
.label_1933:
	inc	rcx
	lea	rsi, [rsi]
	cmp	rcx, r10
	nop	
	mov	r13, rax
	mov	rsp, rsp
	jl	.label_1937
	jmp	.label_1882
.label_1935:
	mov	r14, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	test	r14, r14
	jle	.label_1939
	lea	rdi, [rdi]
	mov	rcx, r14
	dec	rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	je	.label_1897
	nop	word ptr cs:[rax + rax]
.label_1947:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r13
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	nop	
	jb	.label_1947
.label_1897:
	cmp	rdx, -1
	setne	cl
	mov	rbp, rbp
	cmp	qword ptr [rax + rdx*8], r13
	nop	
	sete	dl
	and	dl, cl
	mov	rbp, rbp
	mov	rax, r13
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_1882
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb8]
	nop	
	jne	.label_1889
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	jmp	.label_1886
.label_1882:
	mov	r12, qword ptr [rbp - 0xb8]
	mov	r13, rax
	lea	rdi, [rdi]
	jmp	.label_1886
.label_1939:
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xb8]
	nop	
	je	.label_1899
.label_1889:
	mov	r12, qword ptr [rcx]
	mov	rbp, rbp
	lea	rax, [r12 + 1]
	mov	qword ptr [rcx], rax
	nop	
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jne	.label_1919
	mov	rdi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0xa8], rcx
	nop	
	shl	rax, 5
	nop	
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r15, rax
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_1908
	mov	rax, qword ptr [rbp - 0xa8]
	shl	qword ptr [rax + 8], 1
	nop	
	mov	qword ptr [rax + 0x10], r15
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0xb8]
	jmp	.label_1911
.label_1919:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rcx
	mov	rdi, qword ptr [rbp - 0x78]
.label_1911:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rdi
	lea	r12, [r12 + r12*2]
	lea	rdi, [rdi]
	shl	r12, 4
	lea	rdi, [rdi]
	mov	qword ptr [r15 + r12], rdx
	mov	rsp, rsp
	mov	qword ptr [r15 + r12 + 8], rbx
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [r15 + r12 + 0x10], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1908
	mov	rdi, rax
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	lea	rbx, [r15 + r12 + 0x18]
	mov	qword ptr [r15 + r12 + 0x20], r14
	nop	
	test	r14, r14
	jle	.label_1926
	nop	
	mov	qword ptr [rbx], r14
	shl	r14, 3
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15 + r12 + 0x28], rax
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1930
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	jmp	.label_1918
.label_1926:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_1918:
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xb8]
	jmp	.label_1886
.label_1899:
	mov	rbp, rbp
	mov	r12, rdx
.label_1886:
	test	r13, r13
	nop	
	mov	r14, qword ptr [rbp - 0x98]
	jns	.label_1943
	mov	rsp, rsp
	cmp	r13, -2
	lea	rsi, [rsi]
	je	.label_1908
	nop	word ptr cs:[rax + rax]
.label_1900:
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_1948
.label_1906:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbx]
	lea	rax, [rcx - 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rax
	mov	rbp, rbp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_1907
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rax, 4
	lea	r14, [rax + rax*2]
	mov	r12, qword ptr [rcx + r14]
	mov	rsi, qword ptr [rcx + r14 + 0x10]
	mov	r15, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r14 + 0x10]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rax + r14 + 0x28]
	nop	
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + r14 + 0x18]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm0
	nop	
	mov	r13, qword ptr [rax + r14 + 8]
	mov	r14, r15
.label_1943:
	cmp	r12, qword ptr [r14 + 8]
	mov	r15, r13
	mov	rsi, r12
	mov	rbx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	r13, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	jle	.label_1936
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp - 0xa8]
.label_1917:
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	mov	rsp, rsp
	je	.label_1914
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb0]
	call	free
.label_1914:
	xor	r14d, r14d
	test	r12, r12
	je	.label_1887
	xor	r14d, r14d
	nop	
	cmp	qword ptr [r12], 0
	jle	.label_1890
	nop	
	xor	ebx, ebx
	nop	
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1927:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	lea	rsi, [rsi]
	inc	r15
	add	rbx, 0x30
	mov	rsp, rsp
	cmp	r15, qword ptr [r12]
	mov	rbp, rbp
	jl	.label_1927
	jmp	.label_1890
.label_1910:
	lea	rdi, [rdi]
	mov	r14d, 0xc
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_1887
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [r12], 0
	mov	rbp, rbp
	jle	.label_1890
	nop	
	xor	r15d, r15d
	nop	
.label_1942:
	mov	rax, qword ptr [r12 + 0x10]
	nop	
	mov	rdi, qword ptr [rax + rbx + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	inc	r15
	add	rbx, 0x30
	lea	rdi, [rdi]
	cmp	r15, qword ptr [r12]
	jl	.label_1942
	lea	rsi, [rsi]
	jmp	.label_1890
.label_1948:
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	r14d, 1
	jmp	.label_1946
.label_1894:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	xor	r14d, r14d
.label_1946:
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	je	.label_1887
	mov	rdi, qword ptr [rbp - 0xb0]
	jmp	.label_1885
.label_1934:
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_1888
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	free
.label_1888:
	xor	r14d, r14d
	cmp	qword ptr [r12], 0
	jle	.label_1890
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1905:
	nop	
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	nop	
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	mov	rsp, rsp
	jl	.label_1905
	nop	
	jmp	.label_1890
.label_1930:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_1908:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	free
	mov	eax, dword ptr [rbp - 0x9c]
	test	al, al
	mov	rsp, rsp
	je	.label_1909
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	call	free
.label_1909:
	mov	rbp, rbp
	mov	r14d, 0xc
	nop	
	mov	r12, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_1887
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [r12], 0
	mov	rsp, rsp
	jle	.label_1890
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1925:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	mov	rbp, rbp
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1925
.label_1890:
	mov	rdi, qword ptr [r12 + 0x10]
.label_1885:
	nop	
	call	free
.label_1887:
	mov	rbp, rbp
	mov	eax, r14d
	lea	rsi, [rsi]
	lea	rsp, [rbp - 0x28]
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1907:
	mov	edi, OFFSET FLAT:.str.26
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22_0
	nop	
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419f90

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	test	rcx, rcx
	jle	.label_1952
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_1950
.label_1953:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0xf8]
	nop	
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rdi]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1952
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	rbp, rbp
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_1951
	nop	dword ptr [rax]
.label_1950:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rsp, rsp
	mov	rdx, rbp
	shl	rdx, 4
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rdx + 8]
	cmp	esi, 8
	lea	rdi, [rdi]
	jne	.label_1949
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx]
	lea	rdi, [rdi]
	cmp	rax, 0x3f
	nop	
	jg	.label_1949
	mov	rdx, qword ptr [r13 + 0xa0]
	mov	rbp, rbp
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_1949
	lea	rdi, [rdi]
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	lea	rdi, [rdi]
	je	.label_1953
.label_1951:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 0x30
	mov	rsp, rsp
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	nop	
	test	rdx, rdx
	je	.label_1952
	mov	qword ptr [rdx + 8], rbp
	lea	rdi, [rdi]
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	nop	
	mov	rcx, qword ptr [r12 + 8]
	nop	dword ptr [rax + rax]
.label_1949:
	lea	rdi, [rdi]
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, rcx
	mov	rbp, rbp
	jl	.label_1950
.label_1952:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a130

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
	sub	rsp, 0xa8
	mov	r10, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], r10
	mov	r9, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], r9
	lea	rsi, [rsi]
	cmp	qword ptr [r10 + 8], 0
	nop	
	jle	.label_2006
	nop	
	mov	rax, qword ptr [r9 + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x90], rax
	mov	r8, qword ptr [r9 + 0x48]
	mov	qword ptr [rsp + 0x38], r8
	lea	rax, [r8 + 1]
	mov	qword ptr [rsp + 0x78], rax
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_1989:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], r11
	mov	rsp, rsp
	mov	rax, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + r11*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax]
	nop	
	shl	r15, 4
	lea	rsi, [rsi]
	mov	ebp, dword ptr [r14 + r15 + 8]
	mov	rsp, rsp
	movzx	eax, bpl
	cmp	eax, 4
	jne	.label_1962
	shr	ebp, 8
	lea	rsi, [rsi]
	test	bp, 0x3ff
	nop	
	je	.label_2028
	test	r8, r8
	js	.label_1958
	cmp	qword ptr [r9 + 0x58], r8
	je	.label_1961
	cmp	dword ptr [r9 + 0x90], 2
	jl	.label_1964
	mov	rax, qword ptr [r9 + 0x10]
	mov	rcx, qword ptr [rsp + 0x78]
	nop	word ptr [rax + rax]
.label_1972:
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	lea	rsi, [rsi]
	cmp	ebx, -1
	jne	.label_1968
	dec	rcx
	nop	
	test	rcx, rcx
	jg	.label_1972
	mov	ecx, dword ptr [r9 + 0x70]
	mov	rsp, rsp
	jmp	.label_1974
.label_1964:
	nop	
	mov	rax, qword ptr [r9 + 8]
	mov	rcx, qword ptr [r9 + 0x80]
	movzx	eax, byte ptr [rax + r8]
	mov	dl, al
	shr	dl, 6
	movzx	edx, dl
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + rdx*8]
	xor	ecx, ecx
	bt	rdx, rax
	jae	.label_1970
	mov	rbp, rbp
	mov	ecx, 1
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	jmp	.label_1980
.label_1968:
	cmp	byte ptr [r9 + 0x8e], 0
	jne	.label_1986
.label_2011:
	xor	ecx, ecx
	cmp	ebx, 0xa
	je	.label_1988
	lea	rdi, [rdi]
	jmp	.label_1974
.label_1970:
	movzx	eax, al
	cmp	eax, 0xa
	jne	.label_1974
.label_1988:
	mov	ecx, 2
	cmp	byte ptr [r9 + 0x8d], 0
	mov	rsp, rsp
	jne	.label_1974
	xor	ecx, ecx
	nop	
	jmp	.label_1974
.label_1958:
	mov	rsp, rsp
	mov	ecx, dword ptr [r9 + 0x70]
	lea	rdi, [rdi]
	jmp	.label_1974
.label_1961:
	mov	ecx, dword ptr [r9 + 0xa0]
	lea	rsi, [rsi]
	and	ecx, 2
	xor	ecx, 0xa
	nop	
.label_1974:
	mov	eax, ecx
	mov	rbp, rbp
	and	eax, 1
	sete	dl
	test	bpl, 4
	nop	
	je	.label_1980
	mov	rsp, rsp
	test	eax, eax
	je	.label_1962
	jmp	.label_1980
.label_1986:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r8
	lea	rdi, [rdi]
	mov	r13, r9
	lea	rdi, [rdi]
	mov	r12, r10
	mov	rbp, rbp
	mov	edi, ebx
	call	iswalnum
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	cmp	ebx, 0x5f
	lea	rdi, [rdi]
	mov	ecx, 1
	je	.label_2008
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r10, r12
	lea	rdi, [rdi]
	mov	r9, r13
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	je	.label_2011
	nop	
	jmp	.label_1980
.label_2008:
	mov	r10, r12
	mov	r9, r13
	mov	r8, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x88]
	nop	word ptr [rax + rax]
.label_1980:
	mov	rbp, rbp
	lea	rax, [r14 + r15 + 8]
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	test	dl, dl
	jne	.label_2019
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	and	edx, 0x800
	nop	
	jne	.label_1962
.label_2019:
	test	cl, 2
	jne	.label_2026
	mov	edx, eax
	and	edx, 0x2000
	jne	.label_1962
.label_2026:
	nop	
	test	cl, 8
	nop	
	jne	.label_2028
	mov	rsp, rsp
	shr	eax, 8
	nop	
	test	al, al
	js	.label_1962
	nop	word ptr cs:[rax + rax]
.label_2028:
	mov	rbp, qword ptr [r9 + 0xc8]
	mov	qword ptr [rsp + 0x40], rbp
	mov	rax, qword ptr [r9 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rax
	nop	
	mov	rax, qword ptr [r9 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x68], rax
	test	rbp, rbp
	mov	rsp, rsp
	mov	eax, 0
	lea	rsi, [rsi]
	jle	.label_1954
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 0xd8]
	xor	eax, eax
	mov	rdx, rbp
	nop	word ptr cs:[rax + rax]
.label_1973:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	mov	rdi, rsi
	lea	rdi, [rdi]
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rsi*8 + 8], r8
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	rax, rsi
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rbp, rbp
	jl	.label_1973
.label_1954:
	cmp	rax, rbp
	nop	
	jge	.label_1981
	lea	rdi, [rdi]
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_1981
	mov	rcx, qword ptr [r9 + 0xd8]
	mov	rsp, rsp
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r8
	jne	.label_1981
	lea	rax, [rcx + rax*8]
	nop	dword ptr [rax + rax]
.label_1993:
	nop	
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	cmp	qword ptr [rax], rcx
	mov	rsp, rsp
	je	.label_1979
	cmp	byte ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	lea	rax, [rax + 0x28]
	jne	.label_1993
.label_1981:
	mov	rbp, rbp
	cmp	qword ptr [r9 + 0xe8], 0
	mov	rax, rbp
	jle	.label_2009
	mov	rax, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rax]
	nop	
	mov	r15, qword ptr [rax + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], r15
	lea	rsi, [rsi]
	xor	edx, edx
	jmp	.label_2025
	nop	word ptr cs:[rax + rax]
.label_2018:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
.label_2025:
	mov	rcx, qword ptr [r9 + 0xf8]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rcx + rdx*8]
	mov	qword ptr [rsp + 0x50], r13
	mov	rcx, qword ptr [r13 + 8]
	mov	rbp, rbp
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r15
	jne	.label_2004
	mov	r15, qword ptr [r13]
	nop	
	mov	rax, qword ptr [r13 + 0x20]
	test	rax, rax
	jle	.label_1977
	mov	qword ptr [rsp + 0xa0], rdx
	mov	rsp, rsp
	mov	r12, r8
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_2010
	nop	word ptr cs:[rax + rax]
.label_2004:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rdx
	jmp	.label_1955
.label_1977:
	mov	qword ptr [rsp + 0xa0], rdx
	mov	rdx, r8
	mov	rsi, r15
	xor	r14d, r14d
	jmp	.label_2013
.label_1991:
	mov	rdx, qword ptr [r9 + 0x58]
	nop	
	cmp	rsi, rdx
	lea	rdi, [rdi]
	jg	.label_2021
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0x40]
	mov	rdi, qword ptr [r9 + 0xc0]
	nop	
	cmp	rax, rsi
	mov	qword ptr [rsp + 0x30], rsi
	mov	rsi, r13
	jg	.label_2022
	lea	rsi, [rsi]
	cmp	rax, rdx
	jl	.label_2027
.label_2022:
	cmp	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	jg	.label_1996
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_1996
.label_2027:
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsp, rsp
	lea	esi, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rdi
	mov	rdi, r9
	mov	r13, r9
	call	extend_buffers
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13d, eax
	mov	rbp, rbp
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1965
.label_1996:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rsi
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	sub	rdx, rdi
	jle	.label_1966
	mov	rax, qword ptr [r9 + 0xb8]
	lea	rdi, [rax + rdi*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	r13, r9
	lea	rsi, [rsi]
	call	memset
	mov	r9, r13
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [r9 + 0xc0], rax
.label_1966:
	nop	
	mov	rax, qword ptr [r9 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	jmp	.label_1978
	nop	word ptr cs:[rax + rax]
.label_2010:
	mov	rcx, qword ptr [r13 + 0x28]
	nop	
	mov	rbx, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	mov	rsi, rcx
	sub	rsi, r15
	add	rsi, r12
	mov	rbp, rcx
	sub	rbp, r15
	jle	.label_2030
	mov	rcx, qword ptr [r9 + 0x30]
	cmp	rsi, rcx
	jg	.label_1991
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rsi
.label_1978:
	mov	r13, r9
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rax + r12]
	lea	rsi, [rsi]
	lea	rsi, [rax + r15]
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, r13
	nop	
	mov	r8, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x50]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	jne	.label_1998
.label_2030:
	mov	rbp, rsi
	mov	rdi, r9
	mov	rsi, r13
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rbx, r8
	lea	rdi, [rdi]
	mov	r15, r9
	mov	rbp, rbp
	call	get_subexp_sub
	mov	rbp, rbp
	mov	r9, r15
	mov	rcx, r13
	mov	r13d, eax
	cmp	r13d, 1
	ja	.label_1965
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 0x70], rax
	inc	r14
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	cmp	r14, rax
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	r12, rdx
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r8, rbx
	mov	r13, rcx
	jl	.label_2010
	nop	
	jmp	.label_2013
.label_1998:
	mov	rax, qword ptr [r13 + 0x20]
.label_2021:
	lea	rdi, [rdi]
	mov	rdx, r12
	mov	rbp, rbp
	mov	rsi, r15
.label_2013:
	cmp	r14, rax
	jge	.label_2020
	mov	r10, qword ptr [rsp + 0x98]
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x48]
	jmp	.label_1955
.label_2020:
	test	r14, r14
	setg	al
	lea	rdi, [rdi]
	movzx	ebp, al
	add	rbp, rsi
	cmp	rbp, r8
	mov	r10, qword ptr [rsp + 0x98]
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x48]
	jg	.label_1955
	jmp	.label_2014
.label_2003:
	lea	rdi, [rdi]
	cmp	r14, -1
	je	.label_2029
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], r11
	mov	qword ptr [rsp + 0x38], r8
	lea	rsi, [rsi]
	mov	r15, r10
	mov	rax, qword ptr [r13 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	mov	rbx, r13
	mov	rsp, rsp
	jne	.label_1956
	lea	rsi, [rbp + 1]
	sub	rsi, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	edi, 0x18
	mov	r12, r9
	call	rpl_calloc
	mov	rsp, rsp
	mov	r9, r12
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	mov	r13d, 0xc
	je	.label_1965
.label_1956:
	mov	rcx, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 8]
	mov	r12, rbx
	mov	dword ptr [rsp], 9
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbx, r9
	nop	
	mov	rsi, rax
	mov	r8, r14
	mov	rbp, rbp
	mov	r9, rbp
	lea	rsi, [rsi]
	call	check_arrival
	mov	r13d, eax
	cmp	r13d, 1
	mov	r10, r15
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x88]
	mov	r15, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	je	.label_1983
	mov	r15, r8
	nop	
	mov	qword ptr [rsp + 0x98], r10
	test	r13d, r13d
	mov	rax, r12
	jne	.label_1965
	mov	qword ptr [rsp + 0x80], rbx
	mov	r12, qword ptr [rax + 0x20]
	mov	rsp, rsp
	cmp	r12, qword ptr [rax + 0x18]
	mov	rbx, rax
	je	.label_1994
.label_1976:
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r12, rbx
	mov	r13d, 0xc
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x80]
	je	.label_1965
	mov	rcx, qword ptr [r12 + 0x20]
	nop	
	mov	rdx, qword ptr [r12 + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rbp
	inc	rcx
	mov	qword ptr [r12 + 0x20], rcx
	nop	
	mov	rsi, r12
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	r8, r15
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	get_subexp_sub
	nop	
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	r13d, eax
	lea	rsi, [rsi]
	cmp	r13d, 1
	lea	rsi, [rsi]
	ja	.label_1965
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rsp, rsp
	mov	rbx, rcx
	mov	r10, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	mov	r8, r15
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x48]
	jmp	.label_2001
.label_1985:
	cmp	rdx, qword ptr [r9 + 0x58]
	jge	.label_1955
	mov	qword ptr [rsp + 0x48], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], r11
	mov	qword ptr [rsp + 0x38], r8
	mov	rsp, rsp
	mov	r15, r10
	lea	rbx, [rdx + 1]
	mov	rbp, rbp
	mov	r14, rdx
	nop	
	mov	rdi, r9
	mov	esi, ebx
	mov	rbp, rbp
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r13, r9
	call	extend_buffers
	mov	rsp, rsp
	mov	r9, r13
	mov	r13d, eax
	mov	rbp, rbp
	test	r13d, r13d
	jne	.label_1965
	mov	rax, qword ptr [r9 + 8]
	mov	qword ptr [rsp + 0x70], rax
	mov	r10, r15
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0x88]
	mov	r15, qword ptr [rsp + 0x48]
	mov	r13, r12
	lea	rdi, [rdi]
	mov	rdx, r14
	jmp	.label_1959
.label_1994:
	mov	rbp, rbp
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	lea	rsi, [rax*8 + 8]
	lea	rsi, [rsi]
	call	realloc
	mov	r13d, 0xc
	test	rax, rax
	je	.label_1965
	lea	rcx, [r12 + r12 + 1]
	mov	qword ptr [rbx + 0x28], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], rcx
	nop	
	jmp	.label_1976
	nop	word ptr cs:[rax + rax]
.label_2014:
	mov	rbp, rbp
	cmp	rbp, qword ptr [r13]
	jle	.label_1982
	nop	
	cmp	rdx, qword ptr [r9 + 0x30]
	lea	rdi, [rdi]
	jge	.label_1985
	lea	rbx, [rdx + 1]
.label_1959:
	mov	rcx, qword ptr [rsp + 0x70]
	movzx	eax, byte ptr [rbp + rcx - 1]
	movzx	ecx, byte ptr [rcx + rdx]
	lea	rsi, [rsi]
	cmp	ecx, eax
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	jne	.label_1955
.label_1982:
	mov	rsp, rsp
	mov	rax, qword ptr [r9 + 0xb8]
	mov	rcx, qword ptr [rax + rbp*8]
	test	rcx, rcx
	je	.label_1992
	nop	
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1992
	mov	qword ptr [rsp + 0x30], rdx
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	nop	
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_2007:
	mov	r14, qword ptr [rcx + rsi*8]
	mov	rdi, r14
	shl	rdi, 4
	nop	
	movzx	ebx, byte ptr [rdx + rdi + 8]
	nop	
	cmp	ebx, 9
	lea	rsi, [rsi]
	jne	.label_2000
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rdi], r15
	lea	rdi, [rdi]
	je	.label_2003
.label_2000:
	inc	rsi
	cmp	rsi, rax
	jl	.label_2007
.label_2029:
	lea	rsi, [rsi]
	mov	r12, r13
	lea	rdi, [rdi]
	mov	rbx, r9
.label_2001:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	jmp	.label_1983
	nop	dword ptr [rax + rax]
.label_1992:
	mov	r12, r13
	lea	rsi, [rsi]
	mov	rbx, r9
.label_1983:
	cmp	rbp, r8
	lea	rbp, [rbp + 1]
	lea	rdi, [rdi]
	mov	r9, rbx
	nop	
	mov	r13, r12
	lea	rdi, [rdi]
	jl	.label_2014
	nop	word ptr cs:[rax + rax]
.label_1955:
	mov	rdx, qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	inc	rdx
	cmp	rdx, qword ptr [r9 + 0xe8]
	lea	rsi, [rsi]
	jl	.label_2018
	mov	rax, qword ptr [r9 + 0xc8]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_2009
.label_1979:
	mov	rax, rbp
.label_2009:
	mov	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	cmp	rbp, rax
	mov	rsp, rsp
	jge	.label_1962
	jmp	.label_1987
.label_2024:
	mov	qword ptr [rsp + 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], r14
	mov	r14, r12
	mov	r12, rbp
	mov	rbp, r11
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], r8
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	edi, ebx
	lea	rsi, [rsi]
	call	iswalnum
	mov	rbp, rbp
	cmp	ebx, 0x5f
	mov	rbp, rbp
	mov	edx, 1
	nop	
	je	.label_1975
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x38]
	mov	r11, rbp
	mov	rbp, rbp
	mov	rbp, r12
	nop	
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 8]
	je	.label_1963
	jmp	.label_1960
.label_1975:
	mov	r9, qword ptr [rsp + 0x80]
	mov	r8, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_1960
	nop	word ptr cs:[rax + rax]
.label_1987:
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0xd8]
	lea	rcx, [rbp + rbp*4]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x60]
	nop	
	cmp	qword ptr [rax + rcx*8], rdx
	jne	.label_1971
	cmp	qword ptr [rax + rcx*8 + 8], r8
	jne	.label_1971
	mov	r12, qword ptr [rax + rcx*8 + 0x18]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsi, qword ptr [rax + 0x30]
	cmp	r12, r14
	jne	.label_1990
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rsp + 0x60]
	nop	
	lea	rcx, [rcx + rcx*2]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1995
.label_1990:
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	lea	rax, [rax*8]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x18]
.label_1995:
	mov	r13, qword ptr [rax]
	lea	r15, [r12 + r8]
	sub	r15, r14
	test	r15, r15
	jle	.label_2002
	lea	rax, [r15 - 1]
	mov	rbp, rbp
	cmp	qword ptr [r9 + 0x58], rax
	mov	rsp, rsp
	je	.label_2005
	lea	rsi, [rsi]
	cmp	dword ptr [r9 + 0x90], 2
	mov	rbp, rbp
	jl	.label_2017
	mov	rbp, rbp
	mov	rax, qword ptr [r9 + 0x10]
	mov	rcx, r15
	nop	dword ptr [rax]
.label_2015:
	nop	
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	cmp	ebx, -1
	jne	.label_2012
	lea	rdi, [rdi]
	dec	rcx
	jg	.label_2015
	lea	rdi, [rdi]
	mov	edx, dword ptr [r9 + 0x70]
	jmp	.label_1960
.label_2017:
	mov	rcx, qword ptr [r9 + 8]
	mov	rdx, qword ptr [r9 + 0x80]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	edx, 1
	bt	rcx, rax
	lea	rdi, [rdi]
	jb	.label_1960
	mov	rbp, rbp
	xor	edx, edx
	movzx	eax, al
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_1960
	jmp	.label_2023
.label_2012:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + 0x8e], 0
	jne	.label_2024
.label_1963:
	xor	edx, edx
	mov	rbp, rbp
	cmp	ebx, 0xa
	jne	.label_1960
.label_2023:
	mov	edx, 2
	mov	rsp, rsp
	cmp	byte ptr [r9 + 0x8d], 0
	jne	.label_1960
	lea	rdi, [rdi]
	xor	edx, edx
	jmp	.label_1960
.label_2002:
	mov	edx, dword ptr [r9 + 0x70]
	jmp	.label_1960
.label_2005:
	mov	rbp, rbp
	mov	edx, dword ptr [r9 + 0xa0]
	lea	rsi, [rsi]
	and	edx, 2
	mov	rbp, rbp
	xor	edx, 0xa
.label_1960:
	mov	dword ptr [rsp + 8], edx
	mov	rsp, rsp
	lea	rcx, [r13 + r13*2]
	mov	rbp, rbp
	mov	rdx, qword ptr [r9 + 0xb8]
	mov	rax, qword ptr [rdx + r15*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + r8*8]
	test	rdx, rdx
	mov	rsp, rsp
	mov	ebx, 0
	je	.label_1957
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdx + 0x10]
.label_1957:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], r11
	lea	rdx, [rsi + rcx*8]
	test	rax, rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x18]
	mov	rsp, rsp
	je	.label_1969
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r14
	mov	r14, r12
	mov	r12, rbp
	mov	rbp, rbp
	mov	rbp, r8
	nop	
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbx, rdi
	nop	
	call	re_node_set_init_union
	mov	r13d, eax
	mov	dword ptr [rsp + 0x14], r13d
	mov	rsp, rsp
	test	r13d, r13d
	jne	.label_1984
	lea	rdi, [rsp + 0x14]
	nop	
	mov	rsi, qword ptr [rsp + 0x90]
	nop	
	mov	rdx, rbx
	mov	ecx, dword ptr [rsp + 8]
	call	re_acquire_state_context
	mov	rbx, qword ptr [rsp + 0x80]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rbp, rbp
	mov	r9, rbx
	mov	rax, qword ptr [r9 + 0xb8]
	cmp	qword ptr [rax + r15*8], 0
	lea	rdi, [rdi]
	jne	.label_1997
	lea	rdi, [rdi]
	mov	r13d, dword ptr [rsp + 0x14]
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1967
.label_1997:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r8, rbp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r12
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x50]
	jmp	.label_1999
.label_1969:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rbx
	lea	rsi, [rsi]
	mov	rbx, rbp
	lea	rdi, [rdi]
	mov	rbp, r8
	lea	rdi, [rsp + 0x14]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 0x30], rdx
	mov	ecx, dword ptr [rsp + 8]
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x80]
	mov	rcx, qword ptr [r9 + 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	nop	
	mov	rax, qword ptr [r9 + 0xb8]
	mov	rsp, rsp
	cmp	qword ptr [rax + r15*8], 0
	nop	
	jne	.label_2016
	mov	r13d, dword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	test	r13d, r13d
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r8, rbp
	mov	rbp, rbp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbx
	je	.label_1999
	jmp	.label_1967
.label_2016:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x98]
	nop	
	mov	r8, rbp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, rbx
.label_1999:
	cmp	r12, r14
	mov	rbp, rbp
	jne	.label_1971
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r8*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x70]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1971
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	rsp, rsp
	mov	r15, r10
	mov	rsp, rsp
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	rbp, r9
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, r11
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	rdx, r14
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r13d, eax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], r13d
	lea	rsi, [rsi]
	test	r13d, r13d
	mov	rsp, rsp
	jne	.label_1967
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r12, rbp
	mov	rbp, rdi
	nop	
	mov	r14, rdx
	lea	rdi, [rdi]
	call	transit_state_bkref
	lea	rdi, [rdi]
	mov	r11, rbx
	nop	
	mov	r8, r14
	lea	rdi, [rdi]
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	mov	r10, r15
	mov	r13d, eax
	mov	dword ptr [rsp + 0x14], r13d
	nop	
	test	r13d, r13d
	jne	.label_1967
.label_1971:
	inc	rbp
	cmp	rbp, qword ptr [r9 + 0xc8]
	jl	.label_1987
.label_1962:
	inc	r11
	cmp	r11, qword ptr [r10 + 8]
	mov	rbp, rbp
	jl	.label_1989
.label_2006:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	nop	
	xor	r13d, r13d
	jmp	.label_1967
.label_1965:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], r13d
.label_1967:
	mov	rbp, rbp
	mov	eax, r13d
	lea	rsi, [rsi]
	add	rsp, 0xa8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1984:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	call	free
	jmp	.label_1967
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41b120

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rdi
	mov	rbp, qword ptr [r15 + 0x40]
	mov	r14d, 0xc
	movabs	rax, 0xffffffffffffffe
	cmp	rbp, rax
	lea	rsi, [rsi]
	ja	.label_2036
	mov	rbp, rbp
	movsxd	rax, esi
	mov	rcx, qword ptr [r15 + 0x58]
	add	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	cmovle	rbp, rcx
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovge	rbp, rax
	cmp	dword ptr [r15 + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_2033
	mov	rax, rbp
	shr	rax, 0x3d
	jne	.label_2036
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbp*4]
	lea	rsi, [rsi]
	call	realloc
	test	rax, rax
	nop	
	je	.label_2036
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_2033
	lea	rsi, [rbp*8]
	call	realloc
	nop	
	test	rax, rax
	je	.label_2036
	mov	qword ptr [r15 + 0x18], rax
.label_2033:
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x8b], 0
	lea	rdi, [rdi]
	je	.label_2043
	mov	rdi, qword ptr [r15 + 8]
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_2036
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rax
.label_2043:
	mov	qword ptr [r15 + 0x40], rbp
	mov	rdi, qword ptr [r15 + 0xb8]
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	je	.label_2032
	lea	rsi, [rbp*8 + 8]
	nop	
	call	realloc
	test	rax, rax
	je	.label_2036
	mov	qword ptr [r15 + 0xb8], rax
.label_2032:
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x88], 0
	mov	eax, dword ptr [r15 + 0x90]
	lea	rsi, [rsi]
	je	.label_2039
	nop	
	cmp	eax, 2
	jl	.label_2042
	mov	rdi, r15
	nop	
	call	build_wcs_upper_buffer
	mov	r14d, eax
	mov	rsp, rsp
	test	r14d, r14d
	je	.label_2035
	jmp	.label_2036
.label_2039:
	cmp	eax, 2
	mov	rbp, rbp
	jl	.label_2046
	mov	rdi, r15
	call	build_wcs_buffer
	nop	
	jmp	.label_2035
.label_2042:
	nop	
	mov	rbp, qword ptr [r15 + 0x30]
	mov	r14, qword ptr [r15 + 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	r14, rax
	lea	rdi, [rdi]
	cmovg	r14, rax
	mov	rbp, rbp
	cmp	rbp, r14
	jge	.label_2034
	nop	
	jmp	.label_2031
.label_2041:
	mov	rsp, rsp
	mov	cl, byte ptr [rax + rdx]
	lea	rdi, [rdi]
	jmp	.label_2038
.label_2031:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r15 + 0x78]
	add	rcx, qword ptr [r15 + 0x28]
	nop	
	mov	cl, byte ptr [rbp + rcx]
	mov	rbp, rbp
	movzx	edx, cl
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_2041
.label_2038:
	mov	rsp, rsp
	movzx	ebx, cl
	mov	rbp, rbp
	lea	eax, [rbx + 0x80]
	cmp	eax, 0x17f
	lea	rsi, [rsi]
	ja	.label_2044
	lea	rsi, [rsi]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_2044:
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp], bl
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, r14
	jl	.label_2031
	mov	rbp, r14
.label_2034:
	mov	qword ptr [r15 + 0x30], rbp
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x38], rbp
	jmp	.label_2035
.label_2046:
	mov	rdx, qword ptr [r15 + 0x78]
	nop	
	test	rdx, rdx
	lea	rdi, [rdi]
	je	.label_2035
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x30]
	mov	rcx, qword ptr [r15 + 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x58]
	mov	rbp, rbp
	cmp	rcx, rsi
	lea	rdi, [rdi]
	cmovg	rcx, rsi
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_2040
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	add	rsi, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15]
	nop	
	mov	rbp, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	rsp, rsp
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbp + rax], dl
	jmp	.label_2045
	nop	dword ptr [rax]
.label_2037:
	mov	rdx, qword ptr [r15 + 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	add	rsi, qword ptr [r15 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	mov	dl, byte ptr [rdx + rsi]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + rax], dl
.label_2045:
	inc	rax
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_2037
	lea	rdi, [rdi]
	mov	rax, rcx
.label_2040:
	mov	qword ptr [r15 + 0x30], rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x38], rax
.label_2035:
	xor	r14d, r14d
.label_2036:
	lea	rdi, [rdi]
	mov	eax, r14d
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41b400

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
	mov	rbp, rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbx + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rsi, [rsi]
	cmp	r14, qword ptr [rbx + 0xc0]
	jle	.label_2047
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8], rbp
	mov	qword ptr [rbx + 0xc0], r14
	jmp	.label_2053
.label_2047:
	mov	rcx, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_2060
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbp, rbp
	je	.label_2062
	mov	rbp, rbp
	mov	r13, qword ptr [rbp + 0x50]
	lea	rdi, [rsp]
	mov	rsi, r13
	call	re_node_set_init_union
	mov	rsp, rsp
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_2050
	mov	rax, qword ptr [rbx + 0x48]
	jmp	.label_2052
.label_2060:
	mov	qword ptr [rax + r14*8], rbp
	nop	
	jmp	.label_2053
.label_2062:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	xor	r13d, r13d
	mov	rsp, rsp
	mov	rax, r14
.label_2052:
	test	rax, rax
	jle	.label_2055
	nop	
	lea	rcx, [rax - 1]
	cmp	qword ptr [rbx + 0x58], rcx
	lea	rdi, [rdi]
	je	.label_2056
	lea	rdi, [rdi]
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_2051
	mov	rcx, qword ptr [rbx + 0x10]
.label_2064:
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rcx + rax*4 - 4]
	cmp	ebp, -1
	mov	rsp, rsp
	jne	.label_2063
	dec	rax
	lea	rsi, [rsi]
	jg	.label_2064
	mov	ecx, dword ptr [rbx + 0x70]
	jmp	.label_2048
.label_2051:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rcx]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	mov	rsp, rsp
	jb	.label_2048
	lea	rsi, [rsi]
	xor	ecx, ecx
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0xa
	jne	.label_2048
	jmp	.label_2057
.label_2063:
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2058
.label_2054:
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	ebp, 0xa
	jne	.label_2048
.label_2057:
	lea	rdi, [rdi]
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rsp, rsp
	jne	.label_2048
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_2048
.label_2055:
	mov	ecx, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_2048
.label_2056:
	mov	ecx, dword ptr [rbx + 0xa0]
	and	ecx, 2
	nop	
	xor	ecx, 0xa
.label_2048:
	lea	rdi, [rdi]
	lea	rdx, [rsp]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r12
	nop	
	call	re_acquire_state_context
	mov	rbp, rax
	nop	
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r14*8], rbp
	test	r13, r13
	je	.label_2053
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	free
.label_2053:
	test	rbp, rbp
	je	.label_2059
	mov	rax, qword ptr [r12 + 0x98]
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2061
	nop	
	lea	r12, [rbp + 8]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_2049
	test	byte ptr [rbp + 0x68], 0x40
	lea	rsi, [rsi]
	mov	rax, rbp
	mov	rsp, rsp
	je	.label_2049
	mov	rdi, rbx
	nop	
	mov	rsi, r12
	call	transit_state_bkref
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_2049
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_2049
.label_2059:
	mov	rax, rbp
	jmp	.label_2049
.label_2061:
	nop	
	mov	rax, rbp
.label_2049:
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_2050:
	xor	eax, eax
	jmp	.label_2049
.label_2058:
	mov	edi, ebp
	lea	rsi, [rsi]
	call	iswalnum
	lea	rsi, [rsi]
	cmp	ebp, 0x5f
	mov	ecx, 1
	lea	rdi, [rdi]
	je	.label_2048
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_2048
	jmp	.label_2054
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41b6b0

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
	mov	rbp, rdi
	lea	rdi, [rdi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_2073
	lea	rsi, [rsi]
	mov	r13, qword ptr [r12 + 8]
	mov	rsp, rsp
	test	r15, r15
	je	.label_2076
	lea	rsi, [rsi]
	test	r13, r13
	lea	rsi, [rsi]
	jle	.label_2076
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2076
	lea	rsi, [rsi]
	add	rdi, r13
	mov	rsp, rsp
	mov	qword ptr [rbp], rdi
	mov	rsp, rsp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, 0xc
	nop	
	je	.label_2074
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rbp
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rcx, rbx
	jmp	.label_2077
.label_2076:
	test	r13, r13
	jle	.label_2073
	mov	qword ptr [rbp + 8], r13
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_2068
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2066
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, r15
	call	memcpy
	mov	rsp, rsp
	jmp	.label_2075
.label_2073:
	test	r15, r15
	je	.label_2068
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_2068
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_2068
	lea	rdi, [rdi]
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_2066
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	shl	rbx, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	jmp	.label_2075
.label_2068:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_2075
.label_2069:
	mov	rcx, rbx
	nop	dword ptr [rax]
.label_2077:
	mov	rbp, rbp
	cmp	rcx, qword ptr [r15 + 8]
	mov	rsp, rsp
	jge	.label_2065
	mov	rdx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rdx + rbp*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsi + rcx*8]
	lea	rdi, [rdi]
	cmp	rdx, rsi
	nop	
	jle	.label_2071
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [rax + r14*8], rsi
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	rbp, r13
	nop	
	jl	.label_2077
	jmp	.label_2065
.label_2071:
	nop	
	sete	bl
	mov	rbp, rbp
	movzx	ebx, bl
	add	rbx, rcx
	inc	rbp
	mov	qword ptr [rax + r14*8], rdx
	inc	r14
	mov	rsp, rsp
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	nop	
	jl	.label_2069
	jmp	.label_2067
.label_2065:
	mov	rsp, rsp
	mov	rbx, rcx
.label_2067:
	nop	
	sub	r13, rbp
	jle	.label_2070
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	nop	
	mov	rdx, r13
	call	memcpy
	lea	rsi, [rsi]
	sub	r14, rbp
	add	r14, qword ptr [r12 + 8]
	jmp	.label_2072
.label_2070:
	mov	rdx, qword ptr [r15 + 8]
	nop	
	sub	rdx, rbx
	jle	.label_2072
	mov	rsp, rsp
	lea	rdi, [rax + r14*8]
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rax + rbx*8]
	mov	rsp, rsp
	shl	rdx, 3
	lea	rdi, [rdi]
	call	memcpy
	nop	
	sub	r14, rbx
	add	r14, qword ptr [r15 + 8]
.label_2072:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rax + 8], r14
.label_2075:
	xor	ecx, ecx
.label_2074:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_2066:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	lea	rdi, [rdi]
	jmp	.label_2074
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41b950

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	nop	
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	mov	rbp, rbp
	test	r8, r8
	mov	rbp, rbp
	jle	.label_2078
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr cs:[rax + rax]
.label_2080:
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
	jl	.label_2080
.label_2078:
	mov	rbp, rbp
	cmp	rax, r8
	lea	rdi, [rdi]
	jge	.label_2079
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
	lea	rdx, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_2081
.label_2079:
	mov	rax, -1
.label_2081:
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41b9f0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r14, r8
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	rsp, rsp
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2083
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_2085
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	mov	rbp, rbp
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2088
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rsp, rsp
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	mov	rbp, rbp
	add	rbp, rbp
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x10]
.label_2085:
	nop	
	test	r15, r15
	nop	
	jle	.label_2090
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rsi, [rsi]
	lea	rcx, [rcx + rcx*4]
	nop	
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_2082
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_2082
.label_2090:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0xd8]
.label_2082:
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rbx
	mov	rbp, rbp
	mov	qword ptr [rax + rcx*8 + 8], r14
	nop	
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	mov	rbp, rbp
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	mov	rbp, rbp
	cmovne	si, dx
	mov	rbp, rbp
	mov	word ptr [rax + rcx*8 + 0x22], si
	nop	
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	nop	
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_2086
	mov	dword ptr [r13 + 0xe0], edi
.label_2086:
	lea	rdi, [rdi]
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x18]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	lea	rsi, [rsi]
	mov	r15, qword ptr [r13 + 0xc0]
	nop	
	cmp	rax, r14
	jg	.label_2084
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2089
.label_2084:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	mov	rbp, rbp
	jg	.label_2087
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_2087
.label_2089:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	mov	rsp, rsp
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_2083
.label_2087:
	xor	ebp, ebp
	mov	rdx, r14
	nop	
	sub	rdx, r15
	jle	.label_2083
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0xc0], r14
.label_2083:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_2088:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	lea	rdi, [rdi]
	mov	ebp, 0xc
	jmp	.label_2083
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41bc50

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
	sub	rsp, 0xc8
	mov	qword ptr [rsp + 0xb0], r9
	mov	r13, rcx
	mov	r15, rdx
	mov	rbp, rbp
	mov	r12, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, r15
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rcx]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, qword ptr [rsi + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rsi, [rsi]
	lea	rcx, [rax + r9]
	mov	rsp, rsp
	cmp	rbp, rcx
	jle	.label_2113
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa0], r8
	nop	
	mov	rbx, qword ptr [rsi + 0x10]
.label_2136:
	mov	rax, qword ptr [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	cmove	rax, r13
	mov	rcx, qword ptr [rdi + 0x48]
	nop	
	mov	rdx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rdi + 0xb8], rbx
	mov	rbx, rax
	mov	qword ptr [rdi + 0x48], rbx
	test	rbx, rbx
	mov	rsp, rsp
	jle	.label_2142
	lea	rax, [rbx - 1]
	cmp	qword ptr [rdi + 0x58], rax
	je	.label_2094
	mov	qword ptr [rsp + 0x28], rdx
	mov	qword ptr [rsp + 0x68], rcx
	cmp	dword ptr [rdi + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_2138
	mov	rax, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	mov	rcx, rbx
	nop	dword ptr [rax + rax]
.label_2112:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_2124
	lea	rsi, [rsi]
	dec	rcx
	nop	
	jg	.label_2112
	jmp	.label_2115
.label_2138:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x80]
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rax]
	mov	cl, al
	shr	cl, 6
	nop	
	movzx	ecx, cl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	edx, 1
	bt	rcx, rax
	mov	rbp, rbp
	jb	.label_2118
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 0xa
	nop	
	jne	.label_2118
	nop	
	jmp	.label_2133
.label_2124:
	cmp	byte ptr [rdi + 0x8e], 0
	mov	rsp, rsp
	mov	r14, rdi
	lea	rdi, [rdi]
	jne	.label_2100
.label_2106:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_2118
.label_2133:
	lea	rsi, [rsi]
	mov	edx, 2
	cmp	byte ptr [r14 + 0x8d], 0
	mov	rbp, rbp
	jne	.label_2118
	mov	rbp, rbp
	xor	edx, edx
	nop	
	jmp	.label_2118
.label_2113:
	mov	qword ptr [rsp + 0x98], r12
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, rbp
	mov	r12d, 0xc
	cmp	rdx, rcx
	jle	.label_2099
	mov	rsp, rsp
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 0xa0], r8
	nop	
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	r14, [rax + rcx + 1]
	mov	rbp, rbp
	lea	rcx, [r14 + rbp]
	mov	rax, rcx
	shr	rax, 0x3d
	lea	rsi, [rsi]
	jne	.label_2099
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0xc0], rsi
	lea	rdi, [rdi]
	lea	rsi, [rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rdi, [rdi]
	call	realloc
	mov	rbx, rax
	test	rbx, rbx
	nop	
	je	.label_2099
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], rbx
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 8], rax
	lea	rsi, [rsi]
	lea	rdi, [rbx + rbp*8]
	lea	rsi, [rsi]
	shl	r14, 3
	nop	
	xor	esi, esi
	mov	rdx, r14
	mov	rbp, rbp
	call	memset
	mov	rdi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	r12, qword ptr [rsp + 0x98]
	jmp	.label_2136
.label_2142:
	nop	
	mov	qword ptr [rsp + 0x28], rdx
	nop	
	mov	qword ptr [rsp + 0x68], rcx
.label_2115:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	edx, dword ptr [r14 + 0x70]
	jmp	.label_2118
.label_2094:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rcx
	mov	rsp, rsp
	mov	r14, rdi
	nop	
	mov	edx, dword ptr [r14 + 0xa0]
	lea	rsi, [rsi]
	and	edx, 2
	xor	edx, 0xa
.label_2118:
	mov	rsp, rsp
	cmp	rbx, r13
	jne	.label_2096
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x10], edx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rsi
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1589]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2127
	mov	rbp, rbp
	mov	r13, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rax], r15
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], 0
	mov	rbp, rbp
	lea	rsi, [rsp + 0x40]
	mov	rdi, r12
	mov	r15, r12
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x100]
	mov	ecx, ebp
	call	check_arrival_expand_ecl
	mov	rbp, rbp
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_2110
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	jmp	.label_2135
.label_2096:
	nop	
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r13, rbx
	nop	
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_2140
	lea	rsi, [rsi]
	test	byte ptr [rcx + 0x68], 0x40
	jne	.label_2143
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], edx
	mov	r15, r12
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rsi
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
	xor	ebx, ebx
	nop	
	jmp	.label_2120
.label_2140:
	lea	rdi, [rdi]
	mov	r15, r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xc0], rsi
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_2092
.label_2143:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rcx + 0x10]
	mov	qword ptr [rsp + 0x48], rbx
	mov	rbp, qword ptr [rcx + 0x10]
	nop	
	test	rbp, rbp
	jle	.label_2146
	mov	dword ptr [rsp + 0x10], edx
	mov	qword ptr [rsp + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0x40], rbx
	nop	
	lea	rdi, [rbx*8]
	call	malloc
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_2127
	mov	r15, r12
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x18]
	nop	
	mov	rsi, qword ptr [r12 + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	memcpy
	mov	rcx, r12
	mov	dword ptr [rsp + 0xc], 0
	nop	
	jmp	.label_2120
.label_2146:
	mov	dword ptr [rsp + 0x10], edx
	mov	rbp, rbp
	mov	r15, r12
	nop	
	mov	qword ptr [rsp + 0xc0], rsi
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	qword ptr [rsp + 0x50], 0
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0
.label_2120:
	nop	
	mov	ebp, dword ptr [rsp + 0x100]
	test	byte ptr [rcx + 0x68], 0x40
	je	.label_2092
.label_2135:
	test	rbx, rbx
	je	.label_2097
	lea	rsi, [rsp + 0x40]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	r8d, ebp
	call	expand_bkref_cache
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	lea	rdi, [rdi]
	test	r12d, r12d
	jne	.label_2110
.label_2097:
	lea	rdi, [rsp + 0xc]
	lea	rdx, [rsp + 0x40]
	mov	rsi, r15
	mov	ecx, dword ptr [rsp + 0x10]
	call	re_acquire_state_context
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_2119
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_2093
.label_2119:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	qword ptr [rax + r13*8], rcx
.label_2092:
	cmp	r13, qword ptr [rsp + 0xb0]
	jge	.label_2126
	mov	rsp, rsp
	lea	rax, [r13 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb8], rax
	xor	ebp, ebp
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x98], r15
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	jmp	.label_2122
	nop	dword ptr [rax]
.label_2095:
	inc	rbp
	mov	rbp, rbp
	test	rcx, rcx
	mov	rax, qword ptr [r14 + 0xb8]
	nop	
	mov	qword ptr [rax + r13*8 + 8], rcx
	mov	eax, 0
	lea	rdi, [rdi]
	cmovne	rbp, rax
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xb8]
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	r13, rbx
	jl	.label_2122
	jmp	.label_2109
.label_2098:
	mov	edi, ebx
	nop	
	call	iswalnum
	cmp	ebx, 0x5f
	mov	ecx, 1
	mov	rsp, rsp
	je	.label_2101
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_2105
	jmp	.label_2101
.label_2122:
	mov	rsp, rsp
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rbp, rax
	lea	rdi, [rdi]
	jg	.label_2129
	mov	r15, rcx
	mov	qword ptr [rsp + 0x48], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rsi, qword ptr [rax + r13*8 + 8]
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_2104
	lea	rdi, [rdi]
	add	rsi, 8
	lea	rdi, [rsp + 0x40]
	call	re_node_set_merge
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	mov	rsp, rsp
	jne	.label_2093
.label_2104:
	mov	rbp, rbp
	mov	rax, r15
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_2125
	mov	r15, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x94], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	qword ptr [rsp + 0x80], 0
	cmp	qword ptr [rax + 0x28], 0
	lea	rsi, [rsi]
	mov	edi, 0
	jle	.label_2134
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rbp
	mov	qword ptr [rsp + 0x10], r13
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_2137:
	mov	rax, qword ptr [rax + 0x30]
	mov	r13, qword ptr [rax + r12*8]
	mov	rsi, qword ptr [r15]
	mov	rbx, r13
	lea	rsi, [rsi]
	shl	rbx, 4
	test	byte ptr [rsi + rbx + 0xa], 0x10
	je	.label_2091
	mov	rdi, r15
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rcx, rbp
	lea	rdi, [rdi]
	call	check_node_accept_bytes
	lea	rsi, [rsi]
	cmp	eax, 2
	jl	.label_2111
	mov	rcx, qword ptr [r15 + 0x18]
	mov	rdx, qword ptr [rcx + r13*8]
	mov	rcx, r14
	movsxd	r14, eax
	nop	
	add	r14, rbp
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + 0xb8]
	nop	
	mov	rsi, qword ptr [rax + r14*8]
	mov	qword ptr [rsp + 0x78], 0
	test	rsi, rsi
	lea	rbx, [rsp + 0x70]
	lea	rsi, [rsi]
	je	.label_2144
	lea	rsi, [rsi]
	add	rsi, 8
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rdx
	lea	rsi, [rsi]
	call	re_node_set_merge
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	ebp, eax
	nop	
	mov	dword ptr [rsp + 0x94], ebp
	mov	rbp, rbp
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_2102
.label_2144:
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rdx
	nop	
	call	re_node_set_insert
	test	al, al
	mov	rbp, rbp
	je	.label_2121
	lea	rdi, [rsp + 0x94]
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	re_acquire_state
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp]
	mov	rcx, qword ptr [rbx + 0xb8]
	nop	
	mov	qword ptr [rcx + r14*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rbx
	jne	.label_2107
	mov	ebp, dword ptr [rsp + 0x94]
	mov	rsp, rsp
	test	ebp, ebp
	nop	
	je	.label_2107
	jmp	.label_2102
	nop	word ptr cs:[rax + rax]
.label_2111:
	test	eax, eax
	mov	rbp, rbp
	jne	.label_2107
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15]
	nop	dword ptr [rax]
.label_2091:
	add	rsi, rbx
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x10]
	nop	
	call	check_node_accept
	test	al, al
	lea	rsi, [rsi]
	je	.label_2114
.label_2107:
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [rax + r13*8]
	lea	rdi, [rsp + 0x40]
	call	re_node_set_insert
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_2121
.label_2114:
	lea	rsi, [rsi]
	inc	r12
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	r12, qword ptr [rax + 0x28]
	jl	.label_2137
	mov	rdi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x60]
.label_2134:
	lea	rsi, [rsi]
	call	free
	nop	
	mov	dword ptr [rsp + 0xc], 0
.label_2125:
	mov	rsp, rsp
	mov	r15, r12
	lea	rbx, [r13 + 1]
	cmp	qword ptr [rsp + 0x48], 0
	nop	
	je	.label_2139
	mov	qword ptr [rsp + 0x60], rbp
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x98]
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x100]
	nop	
	mov	ecx, ebp
	mov	rsp, rsp
	call	check_arrival_expand_ecl
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_2093
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r15
	lea	rdi, [rdi]
	mov	r8d, ebp
	lea	rsi, [rsi]
	call	expand_bkref_cache
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x60]
	jne	.label_2093
.label_2139:
	test	r13, r13
	nop	
	js	.label_2141
	cmp	qword ptr [r14 + 0x58], r13
	lea	rsi, [rsi]
	je	.label_2117
	lea	rsi, [rsi]
	cmp	dword ptr [r14 + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_2116
	mov	qword ptr [rsp + 0x18], rbx
	mov	rax, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	r12, r15
	nop	word ptr [rax + rax]
.label_2130:
	nop	
	mov	ebx, dword ptr [rax + rcx*4 - 4]
	mov	rsp, rsp
	cmp	ebx, -1
	jne	.label_2128
	mov	rsp, rsp
	dec	rcx
	test	rcx, rcx
	nop	
	jg	.label_2130
	mov	rsp, rsp
	mov	ecx, dword ptr [r14 + 0x70]
	jmp	.label_2101
	nop	word ptr cs:[rax + rax]
.label_2116:
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x80]
	nop	
	movzx	eax, byte ptr [rax + r13]
	lea	rsi, [rsi]
	mov	dl, al
	mov	rbp, rbp
	shr	dl, 6
	lea	rdi, [rdi]
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	rbp, rbp
	mov	ecx, 1
	bt	rdx, rax
	mov	rbp, rbp
	mov	r12, r15
	lea	rdi, [rdi]
	jb	.label_2101
	xor	ecx, ecx
	mov	rbp, rbp
	movzx	eax, al
	lea	rsi, [rsi]
	cmp	eax, 0xa
	jne	.label_2101
	nop	
	jmp	.label_2132
.label_2128:
	cmp	byte ptr [r14 + 0x8e], 0
	jne	.label_2098
.label_2105:
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	ebx, 0xa
	nop	
	jne	.label_2101
.label_2132:
	mov	ecx, 2
	cmp	byte ptr [r14 + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_2101
	lea	rdi, [rdi]
	xor	ecx, ecx
	jmp	.label_2101
.label_2141:
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14 + 0x70]
	mov	r12, r15
	mov	rbp, rbp
	jmp	.label_2101
.label_2117:
	mov	qword ptr [rsp + 0x18], rbx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14 + 0xa0]
	and	ecx, 2
	xor	ecx, 0xa
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_2101:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xc]
	nop	
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state_context
	mov	rcx, rax
	mov	rsp, rsp
	test	rcx, rcx
	jne	.label_2095
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_2095
	jmp	.label_2093
.label_2126:
	lea	rsi, [rsi]
	mov	rbx, r13
.label_2109:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	nop	
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	lea	rax, [rcx + 8]
	test	rcx, rcx
	cmove	rax, rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rcx], rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r14 + 0xb8], rcx
	mov	rcx, qword ptr [rsp + 0x68]
	mov	qword ptr [r14 + 0x48], rcx
	mov	rsp, rsp
	je	.label_2103
	mov	rcx, qword ptr [rax + 8]
	test	rcx, rcx
	nop	
	jle	.label_2103
	xor	r12d, r12d
	dec	rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	je	.label_2108
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0xa0]
	nop	
.label_2131:
	lea	rsi, [rdx + rcx]
	mov	rbp, rbp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbp
	lea	rdi, [rsi + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rdi
	mov	rsp, rsp
	cmovge	rcx, rsi
	cmp	rdx, rcx
	mov	rsp, rsp
	jb	.label_2131
	jmp	.label_2123
.label_2121:
	nop	
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	call	free
	mov	ebp, 0xc
	mov	dword ptr [rsp + 0xc], ebp
	mov	rbp, rbp
	jmp	.label_2093
.label_2102:
	mov	rdi, qword ptr [rsp + 0x80]
	nop	
	call	free
	mov	dword ptr [rsp + 0xc], ebp
.label_2093:
	nop	
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	nop	
	mov	r12d, dword ptr [rsp + 0xc]
	lea	rdi, [rdi]
	jmp	.label_2099
.label_2108:
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0xa0]
.label_2123:
	cmp	rdx, -1
	je	.label_2103
	cmp	qword ptr [rax + rdx*8], rbp
	lea	rdi, [rdi]
	je	.label_2099
.label_2103:
	lea	rdi, [rdi]
	mov	r12d, 1
.label_2099:
	mov	eax, r12d
	lea	rdi, [rdi]
	add	rsp, 0xc8
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_2110:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_2099
.label_2127:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0xc
	nop	
	mov	r12d, 0xc
	nop	
	jmp	.label_2099
.label_2129:
	mov	rbx, r13
	jmp	.label_2109
.label_2100:
	mov	qword ptr [rsp + 0x10], rbx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	nop	
	mov	edx, 1
	je	.label_2145
	test	eax, eax
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_2106
	jmp	.label_2118
.label_2145:
	mov	rsi, rbx
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_2118
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c890

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
	mov	r15d, ecx
	mov	r13, rdx
	mov	rbp, rbp
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rsi, [rsi]
	lea	rdi, [r12*8]
	call	malloc
	nop	
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_2148
	test	r12, r12
	mov	rbp, rbp
	jle	.label_2154
	mov	rbp, rbp
	xor	r12d, r12d
	jmp	.label_2149
	nop	dword ptr [rax]
.label_2150:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	nop	
	jl	.label_2149
	lea	rsi, [rsi]
	jmp	.label_2154
	nop	word ptr cs:[rax + rax]
.label_2152:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_2147
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	nop	
	jmp	.label_2151
	nop	
.label_2149:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	lea	r9, [rdx + rdx*2]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_2147
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	dword ptr [rax]
.label_2155:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbx + rcx + 8]
	lea	rdi, [rdi]
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_2153
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + rcx], r13
	je	.label_2152
.label_2153:
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jl	.label_2155
.label_2147:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_2151:
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	je	.label_2150
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	lea	rsi, [rsi]
	jmp	.label_2148
.label_2154:
	nop	
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	mov	rsp, rsp
	xor	ebx, ebx
.label_2148:
	mov	eax, ebx
	nop	
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41ca50

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
	mov	r15, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x20], r14
	nop	
	mov	r10, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	mov	rax, qword ptr [r10 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x60], rax
	mov	r9, qword ptr [r10 + 0xc8]
	xor	eax, eax
	test	r9, r9
	lea	rdi, [rdi]
	mov	edx, 0
	lea	rdi, [rdi]
	jle	.label_2159
	nop	
	mov	rsi, qword ptr [r10 + 0xd8]
	nop	
	xor	edx, edx
	mov	rdi, r9
	nop	
.label_2165:
	mov	rbp, rbp
	lea	rbp, [rdi + rdx]
	mov	rbx, rbp
	shr	rbx, 0x3f
	lea	rsi, [rsi]
	add	rbx, rbp
	mov	rsp, rsp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [rsi + rbp*8 + 8], r15
	cmovge	rdi, rbx
	lea	rbp, [rbx + 1]
	lea	rsi, [rsi]
	cmovl	rdx, rbp
	mov	rbp, rbp
	cmp	rdx, rdi
	jl	.label_2165
.label_2159:
	mov	rsp, rsp
	cmp	rdx, r9
	mov	rsp, rsp
	jge	.label_2157
	cmp	rdx, -1
	mov	rbp, rbp
	je	.label_2157
	mov	qword ptr [rsp + 0x28], rcx
	mov	dword ptr [rsp + 0x38], r8d
	mov	rbp, rbp
	mov	rcx, qword ptr [r10 + 0xd8]
	lea	rdx, [rdx + rdx*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	mov	rsp, rsp
	jne	.label_2157
	mov	dword ptr [rsp + 0x3c], eax
	mov	rbp, rbp
	jmp	.label_2173
.label_2185:
	mov	rcx, qword ptr [r10 + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_2173:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r13, [rcx + rax*8]
	nop	
.label_2175:
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2174
	mov	rdx, qword ptr [r13]
	dec	rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	esi, 0
	je	.label_2184
	nop	
.label_2162:
	mov	rsp, rsp
	lea	rbp, [rsi + rdi]
	lea	rsi, [rsi]
	shr	rbp, 1
	mov	rsp, rsp
	cmp	qword ptr [rax + rbp*8], rdx
	nop	
	lea	rbx, [rbp + 1]
	lea	rsi, [rsi]
	cmovl	rsi, rbx
	mov	rbp, rbp
	cmovge	rdi, rbp
	cmp	rsi, rdi
	mov	rbp, rbp
	jb	.label_2162
.label_2184:
	mov	rbp, rbp
	cmp	rsi, -1
	je	.label_2174
	cmp	qword ptr [rax + rsi*8], rdx
	mov	rbp, rbp
	jne	.label_2174
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	lea	rdi, [rdi]
	cmp	r12, r15
	lea	rsi, [rsi]
	jne	.label_2181
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x60]
	nop	
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_2163
	nop	dword ptr [rax + rax]
.label_2167:
	lea	rsi, [rdx + rcx]
	lea	rdi, [rdi]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], rbx
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	mov	rsp, rsp
	cmovge	rcx, rsi
	mov	rsp, rsp
	cmp	rdx, rcx
	jb	.label_2167
.label_2163:
	cmp	rdx, -1
	lea	rdi, [rdi]
	je	.label_2180
	lea	rsi, [rsi]
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], rbx
	jne	.label_2180
	mov	rbp, r14
	jmp	.label_2156
.label_2181:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r10 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_2187
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x10]
	test	rdi, rdi
	mov	rbp, rbp
	jle	.label_2166
	lea	rsi, [rsi]
	mov	rcx, rdi
	dec	rcx
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	edx, 0
	mov	rbp, rbp
	je	.label_2172
.label_2178:
	lea	rsi, [rdx + rcx]
	mov	rsp, rsp
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r14
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	lea	rsi, [rsi]
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_2178
.label_2172:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_2166
	mov	ecx, 4
	mov	rsp, rsp
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_2186
.label_2166:
	nop	
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	test	rbp, rbp
	jle	.label_2160
	mov	qword ptr [rsp + 0x40], rdi
	shl	rdi, 3
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_2170
	mov	rsi, qword ptr [rbx + 0x18]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	nop	
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_2182
.label_2180:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r10
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1589]]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	edi, 8
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_2158
	mov	qword ptr [rax], rbx
	mov	rsp, rsp
	xor	eax, eax
.label_2176:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x5c], eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	r12, [rsp + 0x40]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	ecx, dword ptr [rsp + 0x38]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	ebx, eax
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rbp, r14
	mov	rsi, r12
	call	re_node_set_merge
	mov	r14d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	edx, dword ptr [rsp + 0x5c]
	mov	rsp, rsp
	mov	eax, ebx
	or	eax, edx
	mov	ecx, 2
	mov	rsp, rsp
	or	eax, r14d
	mov	r10, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jne	.label_2169
.label_2183:
	mov	r14, rbp
	jmp	.label_2156
.label_2187:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1589]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	nop	
	mov	edi, 8
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_2177
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_2179
.label_2160:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], 0
.label_2182:
	mov	rsp, rsp
	xor	ebx, ebx
.label_2171:
	mov	dword ptr [rsp + 0xc], ebx
	mov	rsp, rsp
	lea	rdi, [rsp + 0x40]
	nop	
	mov	rsi, r14
	call	re_node_set_insert
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_2164
	xor	al, 1
	mov	rsp, rsp
	jne	.label_2164
.label_2179:
	lea	rdi, [rsp + 0xc]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	rdx, [rsp + 0x40]
	call	re_acquire_state
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rbp, rbp
	mov	r10, rbx
	mov	rax, qword ptr [r10 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	nop	
	sete	al
	mov	edx, dword ptr [rsp + 0xc]
	nop	
	test	edx, edx
	lea	rsi, [rsi]
	setne	cl
	mov	rbp, rbp
	and	cl, al
	movzx	ecx, cl
	nop	
	mov	eax, dword ptr [rsp + 0x3c]
	lea	rsi, [rsi]
	cmovne	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x3c], eax
.label_2186:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x20]
.label_2156:
	test	ecx, ecx
	je	.label_2174
	nop	
	cmp	ecx, 4
	nop	
	jne	.label_2161
	nop	dword ptr [rax + rax]
.label_2174:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	rdi, [rdi]
	lea	r13, [r13 + 0x28]
	mov	rbp, rbp
	jne	.label_2175
	nop	
	jmp	.label_2157
.label_2158:
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rsi, [rsi]
	jmp	.label_2176
.label_2169:
	lea	rsi, [rsi]
	test	ebx, ebx
	cmovne	r14d, ebx
	test	edx, edx
	cmovne	r14d, edx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xc], r14d
	mov	rsp, rsp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x3c], r14d
	mov	rbp, rbp
	jmp	.label_2183
.label_2164:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	ebx, ebx
	lea	rdi, [rdi]
	mov	eax, 0xc
	lea	rdi, [rdi]
	cmove	ebx, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], ebx
	nop	
	mov	ecx, 1
	mov	dword ptr [rsp + 0x3c], ebx
	lea	rsi, [rsi]
	jmp	.label_2168
.label_2177:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0xc
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x3c], 0xc
	lea	rdi, [rdi]
	mov	ecx, 1
.label_2168:
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_2156
.label_2170:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	ebx, 0xc
	nop	
	jmp	.label_2171
.label_2161:
	lea	rdi, [rdi]
	cmp	ecx, 2
	lea	rsi, [rsi]
	je	.label_2185
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x3c]
.label_2157:
	add	rsp, 0x68
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41d060

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
	mov	rbp, rdx
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	nop	
	jmp	.label_2195
	nop	
.label_2192:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax]
.label_2195:
	nop	
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_2194
	mov	rsp, rsp
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	lea	rdi, [rdi]
	je	.label_2196
	nop	dword ptr [rax]
.label_2188:
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	shr	rsi, 1
	mov	rsp, rsp
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	mov	rbp, rbp
	cmovl	rdx, rdi
	nop	
	cmovge	rax, rsi
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rsi, [rsi]
	jb	.label_2188
.label_2196:
	mov	rsp, rsp
	cmp	rdx, -1
	lea	rsi, [rsi]
	je	.label_2194
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_2197
.label_2194:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	lea	rdi, [rdi]
	jne	.label_2190
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rcx], r14
	je	.label_2189
.label_2190:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	nop	
	mov	eax, 0xc
	mov	rsp, rsp
	test	cl, cl
	je	.label_2191
	mov	rax, qword ptr [r12 + 0x28]
	lea	rsi, [rsi]
	lea	rbp, [rbp + rbp*2]
	nop	
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_2193
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_2192
	jmp	.label_2197
	nop	word ptr cs:[rax + rax]
.label_2193:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rcx, r14
	mov	rsp, rsp
	mov	r8d, r15d
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	mov	rsp, rsp
	jne	.label_2191
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_2192
.label_2189:
	cmp	r15d, 9
	jne	.label_2197
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	nop	
	je	.label_2191
.label_2197:
	nop	
	xor	eax, eax
.label_2191:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41d200

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
	mov	r14, rdi
	nop	
	mov	r8, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r8, r8
	je	.label_2198
	mov	rsp, rsp
	mov	r15, r8
	jle	.label_2209
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_2214
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	nop	
	mov	r15, r8
	je	.label_2214
	movq	xmm0, r8
	lea	rbx, [r8 - 4]
	mov	rsp, rsp
	mov	eax, ebx
	shr	eax, 2
	lea	rsi, [rsi]
	inc	eax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	test	al, 3
	nop	
	je	.label_2223
	nop	
	lea	ebp, [r8 - 4]
	nop	
	shr	ebp, 2
	nop	
	inc	ebp
	and	ebp, 3
	neg	rbp
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2208:
	nop	
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	mov	rbp, rbp
	paddq	xmm0, xmm2
	nop	
	paddq	xmm1, xmm3
	add	rdi, 4
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	jne	.label_2208
	jmp	.label_2220
.label_2223:
	pxor	xmm1, xmm1
.label_2220:
	mov	rbp, rbp
	cmp	rbx, 0xc
	mov	rsp, rsp
	jb	.label_2225
	nop	
	mov	rax, r8
	and	rax, 0xfffffffffffffffc
	lea	rdi, [rdi]
	sub	rax, rdi
	mov	rbp, rbp
	lea	rdi, [rcx + rdi*8 + 0x70]
	nop	word ptr cs:[rax + rax]
.label_2204:
	movdqu	xmm2, xmmword ptr [rdi - 0x70]
	movdqu	xmm3, xmmword ptr [rdi - 0x60]
	movdqu	xmm4, xmmword ptr [rdi - 0x50]
	lea	rsi, [rsi]
	movdqu	xmm5, xmmword ptr [rdi - 0x40]
	paddq	xmm2, xmm0
	lea	rdi, [rdi]
	paddq	xmm3, xmm1
	nop	
	paddq	xmm2, xmm4
	paddq	xmm3, xmm5
	lea	rsi, [rsi]
	movdqu	xmm4, xmmword ptr [rdi - 0x30]
	mov	rbp, rbp
	movdqu	xmm5, xmmword ptr [rdi - 0x20]
	nop	
	paddq	xmm4, xmm2
	mov	rbp, rbp
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	lea	rsi, [rsi]
	movdqu	xmm1, xmmword ptr [rdi]
	mov	rsp, rsp
	paddq	xmm0, xmm4
	mov	rsp, rsp
	paddq	xmm1, xmm5
	add	rdi, 0x80
	lea	rsi, [rsi]
	add	rax, -0x10
	mov	rsp, rsp
	jne	.label_2204
.label_2225:
	lea	rsi, [rsi]
	paddq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	mov	rbp, rbp
	paddq	xmm0, xmm1
	movq	r15, xmm0
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_2209
.label_2214:
	mov	rdx, r8
	lea	rdi, [rdi]
	sub	rdx, rax
	nop	
	lea	rcx, [rcx + rax*8]
	nop	word ptr cs:[rax + rax]
.label_2213:
	add	r15, qword ptr [rcx]
	lea	rsi, [rsi]
	add	rcx, 8
	dec	rdx
	jne	.label_2213
.label_2209:
	mov	rax, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	mov	rsp, rsp
	and	rcx, r15
	nop	
	lea	rdi, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rdi*8]
	mov	rsp, rsp
	test	rcx, rcx
	lea	rdi, [rdi]
	jle	.label_2217
	nop	
	xor	edx, edx
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_2201
	nop	
	mov	rax, qword ptr [rax + rdi*8 + 0x10]
	nop	dword ptr [rax]
.label_2222:
	mov	r13, qword ptr [rax + rdx*8]
	lea	rsi, [rsi]
	cmp	r15, qword ptr [r13]
	jne	.label_2199
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2199
	nop	
	mov	rdi, r8
	nop	word ptr [rax + rax]
.label_2210:
	test	rdi, rdi
	nop	
	jle	.label_2216
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rbx + rdi*8 - 8]
	lea	rsi, [rsi]
	lea	rdi, [rdi - 1]
	mov	rbp, rbp
	je	.label_2210
	nop	dword ptr [rax]
.label_2199:
	mov	rsp, rsp
	inc	rdx
	cmp	rdx, rcx
	lea	rsi, [rsi]
	jl	.label_2222
	mov	rbp, rbp
	jmp	.label_2217
.label_2201:
	xor	edx, edx
	cmp	rcx, 0x10
	mov	rsp, rsp
	jb	.label_2205
	xor	edx, edx
	mov	rax, rcx
	and	rax, 0xfffffffffffffff0
	mov	rbp, rbp
	je	.label_2205
	lea	rdx, [rcx - 0x10]
	mov	edi, edx
	shr	edi, 4
	lea	rsi, [rsi]
	inc	edi
	nop	
	xor	ebp, ebp
	test	dil, 7
	je	.label_2202
	lea	edi, [rcx - 0x10]
	shr	edi, 4
	lea	rsi, [rsi]
	inc	edi
	mov	rsp, rsp
	and	edi, 7
	lea	rsi, [rsi]
	neg	rdi
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_2218:
	add	rbp, 0x10
	mov	rsp, rsp
	inc	rdi
	mov	rbp, rbp
	jne	.label_2218
.label_2202:
	cmp	rdx, 0x70
	jb	.label_2221
	nop	
	mov	rdx, rcx
	mov	rsp, rsp
	and	rdx, 0xfffffffffffffff0
	sub	rdx, rbp
	nop	word ptr cs:[rax + rax]
.label_2228:
	lea	rdi, [rdi]
	add	rdx, -0x80
	mov	rsp, rsp
	jne	.label_2228
.label_2221:
	cmp	rcx, rax
	mov	rsp, rsp
	mov	rdx, rax
	je	.label_2217
	nop	word ptr [rax + rax]
.label_2205:
	mov	rsp, rsp
	inc	rdx
	cmp	rdx, rcx
	mov	rsp, rsp
	jl	.label_2205
.label_2217:
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	mov	edi, 0x70
	lea	rdi, [rdi]
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	nop	
	je	.label_2207
	mov	rbx, r13
	lea	rsi, [rsi]
	add	rbx, 8
	nop	
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	rsp, rsp
	jle	.label_2219
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	mov	rbp, rbp
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2229
	mov	qword ptr [rsp + 0x10], r14
	mov	rsp, rsp
	lea	r14, [r12 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rdx, rbp
	mov	rbp, rbp
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_2211
.label_2219:
	mov	qword ptr [rsp + 0x10], r14
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	jle	.label_2215
	mov	rsp, rsp
	lea	r14, [r12 + 0x10]
.label_2211:
	mov	rbp, rbp
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_2206:
	mov	r8, qword ptr [rdi]
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rax*8]
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rdi, [rdi]
	mov	ebp, dword ptr [r8 + rdx + 8]
	mov	esi, ebp
	mov	rbp, rbp
	and	esi, 0x3ffff
	mov	rbp, rbp
	cmp	esi, 1
	je	.label_2200
	movzx	esi, bpl
	lea	rdi, [rdi]
	shr	ebp, 0x14
	lea	rsi, [rsi]
	mov	cl, byte ptr [r13 + 0x68]
	mov	bl, cl
	shr	bl, 5
	movzx	ebx, bl
	mov	rbp, rbp
	or	ebx, ebp
	lea	rsi, [rsi]
	shl	bl, 5
	mov	rbp, rbp
	and	bl, 0x20
	nop	
	and	cl, 0xdf
	or	cl, bl
	mov	byte ptr [r13 + 0x68], cl
	cmp	esi, 0xc
	je	.label_2203
	mov	rbp, rbp
	cmp	esi, 4
	je	.label_2224
	cmp	esi, 2
	mov	rbp, rbp
	jne	.label_2226
	or	cl, 0x10
	mov	rsp, rsp
	jmp	.label_2227
.label_2224:
	or	cl, 0x40
	jmp	.label_2227
.label_2226:
	lea	rdx, [r8 + rdx + 8]
	test	dword ptr [rdx], 0x3ff00
	nop	
	je	.label_2200
.label_2203:
	mov	rbp, rbp
	or	cl, 0x80
.label_2227:
	mov	byte ptr [r13 + 0x68], cl
.label_2200:
	mov	rbp, rbp
	inc	rax
	nop	
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2206
.label_2215:
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rdx, r15
	mov	rbp, rbp
	call	register_state
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2216
	nop	
	mov	rdi, r13
	call	free_state
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jmp	.label_2207
.label_2198:
	mov	dword ptr [r14], 0
	lea	rdi, [rdi]
	jmp	.label_2212
.label_2229:
	nop	
	mov	rdi, r13
	lea	rsi, [rsi]
	call	free
.label_2207:
	mov	rsp, rsp
	mov	dword ptr [r14], 0xc
.label_2212:
	mov	rsp, rsp
	xor	r13d, r13d
.label_2216:
	mov	rbp, rbp
	mov	rax, r13
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41d730

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	nop	
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	lea	rdi, [rdi]
	cmp	r10d, 7
	je	.label_2239
	mov	rsp, rsp
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r8d, 1
	lea	rdi, [rdi]
	je	.label_2238
	lea	rax, [rcx + 1]
	nop	
	mov	r11, qword ptr [rdx + 0x30]
	mov	rsp, rsp
	cmp	rax, r11
	lea	rsi, [rsi]
	jge	.label_2238
	lea	rax, [rcx*4]
	mov	rbp, rbp
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_2240:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_2238
	mov	rbp, rbp
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	lea	rdi, [rdi]
	jl	.label_2240
.label_2238:
	cmp	r10d, 5
	jne	.label_2245
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_2233
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_2248
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 8]
	movzx	esi, byte ptr [rsi + rcx]
	nop	
	cmp	esi, 0xa
	nop	
	je	.label_2233
.label_2248:
	test	al, al
	js	.label_2252
	mov	r14d, ebx
	jmp	.label_2233
.label_2245:
	mov	rsp, rsp
	cmp	ebx, 1
	setg	al
	mov	rbp, rbp
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_2233
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_2233
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_2244
	cmp	qword ptr [r15 + 0x48], 0
	mov	rbp, rbp
	jne	.label_2244
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2246
.label_2244:
	cmp	r8d, 1
	jne	.label_2235
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	jmp	.label_2246
.label_2235:
	nop	
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_2246:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_2251
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax]
.label_2234:
	nop	
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	je	.label_2230
	inc	rdx
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_2234
.label_2251:
	cmp	qword ptr [r15 + 0x48], 0
	nop	
	jle	.label_2256
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2247:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	mov	edi, r12d
	call	iswctype
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_2230
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_2247
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x40]
.label_2256:
	nop	
	xor	ecx, ecx
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_2236
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_2237:
	cmp	dword ptr [rax + rdx*4], r12d
	lea	rdi, [rdi]
	jg	.label_2231
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	r12d, dword ptr [rcx + rdx*4]
	nop	
	jle	.label_2249
.label_2231:
	lea	rdi, [rdi]
	inc	rdx
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_2237
	jmp	.label_2236
.label_2230:
	lea	rsi, [rsi]
	mov	ecx, ebx
.label_2236:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_2242
	mov	r14d, ecx
	jmp	.label_2233
.label_2242:
	test	ecx, ecx
	mov	rbp, rbp
	jg	.label_2233
	test	ebx, ebx
	mov	r14d, 1
	mov	rsp, rsp
	cmovg	r14d, ebx
	jmp	.label_2233
.label_2252:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	byte ptr [rax + rcx], 0
	je	.label_2233
	mov	rbp, rbp
	mov	r14d, ebx
	nop	
	jmp	.label_2233
.label_2239:
	mov	rax, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	xor	r14d, r14d
	cmp	esi, 0xc2
	jae	.label_2254
.label_2233:
	mov	rbp, rbp
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_2249:
	nop	
	mov	ecx, ebx
	jmp	.label_2236
.label_2254:
	nop	
	lea	rdi, [rcx + 2]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rdi, rdx
	jg	.label_2233
	mov	bl, byte ptr [rcx + rax + 1]
	lea	rsi, [rsi]
	movzx	edi, sil
	mov	rsp, rsp
	cmp	edi, 0xdf
	mov	rsp, rsp
	ja	.label_2243
	lea	rsi, [rsi]
	movzx	eax, bl
	lea	rdi, [rdi]
	cmp	eax, 0xc0
	sbb	eax, eax
	mov	rbp, rbp
	and	eax, 2
	xor	r14d, r14d
	test	bl, bl
	cmovs	r14d, eax
	jmp	.label_2233
.label_2243:
	cmp	edi, 0xef
	nop	
	ja	.label_2253
	mov	esi, 3
	lea	rdi, [rdi]
	cmp	edi, 0xe0
	jne	.label_2232
	lea	rsi, [rsi]
	movzx	edi, bl
	cmp	edi, 0xa0
	mov	rsp, rsp
	jb	.label_2233
	jmp	.label_2232
.label_2253:
	cmp	edi, 0xf7
	nop	
	ja	.label_2241
	mov	esi, 4
	cmp	edi, 0xf0
	jne	.label_2232
	mov	rsp, rsp
	movzx	edi, bl
	mov	rsp, rsp
	cmp	edi, 0x90
	lea	rdi, [rdi]
	jb	.label_2233
	jmp	.label_2232
.label_2241:
	mov	rsp, rsp
	cmp	edi, 0xfb
	ja	.label_2250
	nop	
	mov	esi, 5
	lea	rsi, [rsi]
	cmp	edi, 0xf8
	jne	.label_2232
	movzx	edi, bl
	cmp	edi, 0x88
	lea	rdi, [rdi]
	jb	.label_2233
	mov	rsp, rsp
	jmp	.label_2232
.label_2250:
	cmp	edi, 0xfd
	ja	.label_2233
	mov	esi, 6
	cmp	edi, 0xfc
	jne	.label_2232
	mov	rbp, rbp
	movzx	edi, bl
	cmp	edi, 0x84
	mov	rbp, rbp
	jb	.label_2233
.label_2232:
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rbp, rbp
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	nop	
	jg	.label_2233
	nop	
	add	rax, rcx
	mov	rbp, rbp
	mov	ecx, 1
.label_2255:
	nop	
	mov	dl, byte ptr [rax + rcx]
	mov	rsp, rsp
	test	dl, dl
	lea	rsi, [rsi]
	jns	.label_2233
	movzx	edx, dl
	cmp	edx, 0xbf
	ja	.label_2233
	mov	rsp, rsp
	inc	rcx
	cmp	rcx, rdi
	mov	rsp, rsp
	jl	.label_2255
	mov	r14d, esi
	jmp	.label_2233
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41db20

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
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	nop	
	movzx	ecx, byte ptr [rax + rdx]
	mov	r15d, dword ptr [r14 + 8]
	lea	rsi, [rsi]
	movzx	esi, r15b
	lea	rdi, [rdi]
	xor	eax, eax
	dec	esi
	cmp	esi, 6
	ja	.label_2260
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_2271]]
.label_2633:
	movzx	eax, byte ptr [r14]
	cmp	eax, ecx
	nop	
	je	.label_2257
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_2260
.label_2634:
	mov	rsi, qword ptr [r14]
	mov	al, cl
	mov	rsp, rsp
	shr	al, 6
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + rax*8]
	lea	rdi, [rdi]
	bt	rax, rcx
	jb	.label_2257
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2260
.label_2636:
	test	cl, cl
	nop	
	js	.label_2264
.label_2635:
	lea	rsi, [rsi]
	test	cl, cl
	mov	rsp, rsp
	je	.label_2266
	mov	rsp, rsp
	movzx	eax, cl
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_2257
	mov	rax, qword ptr [rbx + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_2257
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_2260
.label_2266:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	lea	rsi, [rsi]
	js	.label_2270
.label_2257:
	lea	rsi, [rsi]
	shr	r15d, 8
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	test	r15w, 0x3ff
	je	.label_2260
	mov	rsp, rsp
	test	rdx, rdx
	nop	
	js	.label_2261
	cmp	qword ptr [rbx + 0x58], rdx
	lea	rsi, [rsi]
	je	.label_2263
	mov	rsp, rsp
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_2267
	mov	rax, qword ptr [rbx + 0x10]
	inc	rdx
	nop	
.label_2273:
	mov	rsp, rsp
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	lea	rdi, [rdi]
	cmp	ebp, -1
	lea	rdi, [rdi]
	jne	.label_2272
	nop	
	dec	rdx
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rsp, rsp
	jg	.label_2273
	mov	eax, dword ptr [rbx + 0x70]
	jmp	.label_2259
.label_2267:
	nop	
	mov	rax, qword ptr [rbx + 0x80]
	mov	dl, cl
	mov	rsp, rsp
	shr	dl, 6
	movzx	edx, dl
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rdx*8]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	bt	rdx, rcx
	jae	.label_2275
	mov	eax, 1
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	jmp	.label_2262
.label_2264:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_2260
.label_2272:
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8e], 0
	mov	rbp, rbp
	jne	.label_2268
.label_2265:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	ebp, 0xa
	je	.label_2269
	jmp	.label_2259
.label_2275:
	cmp	ecx, 0xa
	jne	.label_2259
.label_2269:
	mov	eax, 2
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8d], 0
	mov	rbp, rbp
	jne	.label_2259
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_2259
.label_2270:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_2260
.label_2261:
	mov	eax, dword ptr [rbx + 0x70]
	mov	rsp, rsp
	jmp	.label_2259
.label_2263:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx + 0xa0]
	lea	rdi, [rdi]
	and	eax, 2
	lea	rdi, [rdi]
	xor	eax, 0xa
.label_2259:
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	and	ecx, 1
	mov	rsp, rsp
	sete	dl
	test	r15b, 4
	lea	rdi, [rdi]
	je	.label_2262
	test	ecx, ecx
	jne	.label_2262
	xor	eax, eax
	nop	
	jmp	.label_2260
.label_2268:
	mov	edi, ebp
	lea	rsi, [rsi]
	call	iswalnum
	mov	ecx, eax
	mov	rbp, rbp
	xor	edx, edx
	cmp	ebp, 0x5f
	lea	rsi, [rsi]
	mov	eax, 1
	je	.label_2262
	test	ecx, ecx
	je	.label_2265
.label_2262:
	mov	ecx, dword ptr [r14 + 8]
	lea	rsi, [rsi]
	test	dl, dl
	jne	.label_2274
	mov	edx, ecx
	and	edx, 0x800
	je	.label_2274
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_2260
.label_2274:
	test	al, 2
	jne	.label_2258
	mov	rbp, rbp
	mov	edx, ecx
	lea	rsi, [rsi]
	and	edx, 0x2000
	je	.label_2258
	xor	eax, eax
	jmp	.label_2260
.label_2258:
	mov	rsp, rsp
	shr	ecx, 8
	lea	rdi, [rdi]
	and	eax, 8
	lea	rsi, [rsi]
	test	cl, cl
	setns	cl
	lea	rdi, [rdi]
	shr	eax, 3
	mov	rsp, rsp
	or	al, cl
.label_2260:
	add	rsp, 8
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41ddd0

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
	sub	rsp, 0xd8
	lea	rdi, [rdi]
	mov	r13, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], r13
	mov	rbx, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r12, rax
	mov	qword ptr [rbp - 0xa8], r12
	mov	rbp, rbp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_2279
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	mov	rsp, rsp
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	lea	rdi, [rdi]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	nop	
	xor	r15d, r15d
	lea	rsi, [rsi]
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_2321
	lea	rax, [r12 + 0x1800]
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [r12 + 0x1818]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	r11d, r11d
	mov	rbp, rbp
	mov	r15, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], r15
	nop	word ptr [rax + rax]
.label_2365:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + rdi*8]
	mov	rax, qword ptr [r15]
	lea	rdi, [rdi]
	shl	rsi, 4
	nop	
	lea	r8, [rax + rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], r8
	mov	edx, dword ptr [rax + rsi + 8]
	mov	rsp, rsp
	movzx	r9d, dl
	mov	rsp, rsp
	cmp	r9d, 1
	lea	rdi, [rdi]
	jne	.label_2376
	mov	cl, byte ptr [r8]
	mov	rbp, rbp
	mov	ebx, 1
	mov	rbp, rbp
	shl	rbx, cl
	lea	rdi, [rdi]
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x100], rbx
	jmp	.label_2312
	nop	
.label_2376:
	cmp	r9d, 7
	je	.label_2345
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_2348
	nop	
	cmp	r9d, 3
	jne	.label_2287
	mov	rcx, qword ptr [r8]
	mov	rbx, qword ptr [rcx]
	or	qword ptr [rbp - 0x100], rbx
	mov	rbx, qword ptr [rcx + 8]
	or	qword ptr [rbp - 0xf8], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rcx + 0x10]
	nop	
	or	qword ptr [rbp - 0xf0], rbx
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	or	qword ptr [rbp - 0xe8], rcx
	mov	rsp, rsp
	jmp	.label_2312
.label_2345:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x100], -1
	mov	rsp, rsp
	mov	rcx, qword ptr [r15 + 0xd8]
	mov	rbx, -2
	nop	
	test	cl, 0x40
	jne	.label_2361
	nop	
	mov	qword ptr [rbp - 0x100], -0x401
	lea	rsi, [rsi]
	mov	rbx, -0x402
.label_2361:
	lea	rdi, [rdi]
	test	cl, cl
	lea	rdi, [rdi]
	jns	.label_2312
	mov	qword ptr [rbp - 0x100], rbx
	jmp	.label_2312
.label_2348:
	mov	rsp, rsp
	cmp	dword ptr [r15 + 0xb4], 2
	nop	
	jl	.label_2375
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 0x78]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	or	rcx, qword ptr [r8]
	mov	qword ptr [rbp - 0x100], rcx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r8 + 8]
	or	qword ptr [rbp - 0xf8], rbx
	mov	rbx, qword ptr [r8 + 0x10]
	lea	rdi, [rdi]
	or	qword ptr [rbp - 0xf0], rbx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r8 + 0x18]
	mov	r8, r14
	lea	rsi, [rsi]
	or	qword ptr [rbp - 0xe8], rbx
	jmp	.label_2380
.label_2375:
	mov	qword ptr [rbp - 0xe8], -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], -1
	mov	qword ptr [rbp - 0xf8], -1
	mov	qword ptr [rbp - 0x100], -1
	mov	rcx, -1
.label_2380:
	mov	rbx, qword ptr [r15 + 0xd8]
	lea	rdi, [rdi]
	test	bl, 0x40
	jne	.label_2306
	mov	rsp, rsp
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x100], rcx
.label_2306:
	test	bl, bl
	jns	.label_2312
	mov	rbp, rbp
	and	rcx, 0xfffffffffffffffe
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rcx
	nop	dword ptr [rax + rax]
.label_2312:
	mov	rsp, rsp
	shr	edx, 8
	nop	
	mov	ecx, edx
	lea	rdi, [rdi]
	and	ecx, 0x3ff
	je	.label_2291
	mov	rsp, rsp
	test	dl, 0x20
	je	.label_2325
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	test	ch, 4
	nop	
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	je	.label_2287
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], 0x400
.label_2325:
	mov	rbp, rbp
	test	dl, dl
	js	.label_2299
	lea	rcx, [rax + rsi + 8]
	test	dl, 4
	je	.label_2341
	cmp	r9d, 1
	mov	rbp, rbp
	jne	.label_2347
	test	byte ptr [rcx + 2], 0x40
	nop	
	je	.label_2299
.label_2347:
	cmp	dword ptr [r15 + 0xb4], 1
	jle	.label_2349
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rax, qword ptr [rsi]
	not	rax
	mov	rbp, rbp
	or	rax, qword ptr [r15 + 0xb8]
	mov	rsp, rsp
	and	rax, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rbp - 0x100], rax
	mov	rbx, qword ptr [rsi + 8]
	nop	
	not	rbx
	or	rbx, qword ptr [r15 + 0xc0]
	lea	rdi, [rdi]
	and	rbx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0xf8], rbx
	or	rbx, rax
	mov	rax, qword ptr [rsi + 0x10]
	not	rax
	or	rax, qword ptr [r15 + 0xc8]
	and	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x18]
	nop	
	not	rsi
	mov	rsp, rsp
	or	rsi, qword ptr [r15 + 0xd0]
	and	rsi, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rsi
	or	rsi, rax
	jmp	.label_2354
.label_2349:
	movdqu	xmm0, xmmword ptr [r15 + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x100]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	movq	rsi, xmm0
	pshufd	xmm0, xmm0, 0x4e
	mov	rsp, rsp
	movq	rax, xmm0
	movdqu	xmm0, xmmword ptr [r15 + 0xc8]
	nop	
	pand	xmm0, xmmword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movq	rbx, xmm0
	or	rbx, rsi
	or	rbx, rax
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	pshufd	xmm0, xmm0, 0x4e
	lea	rsi, [rsi]
	movq	rsi, xmm0
.label_2354:
	mov	rbp, rbp
	or	rsi, rbx
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_2287
.label_2341:
	nop	
	test	dl, 8
	lea	rsi, [rsi]
	je	.label_2291
	mov	rbp, rbp
	cmp	r9d, 1
	mov	rbp, rbp
	jne	.label_2296
	test	byte ptr [rcx + 2], 0x40
	mov	rbp, rbp
	jne	.label_2299
.label_2296:
	cmp	dword ptr [r15 + 0xb4], 1
	mov	rsp, rsp
	jle	.label_2305
	nop	
	mov	rcx, qword ptr [r15 + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	and	rdx, qword ptr [r15 + 0xb8]
	not	rdx
	and	rdx, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rbp - 0x100], rdx
	mov	rsi, qword ptr [rcx + 8]
	mov	rbp, rbp
	and	rsi, qword ptr [r15 + 0xc0]
	lea	rsi, [rsi]
	not	rsi
	lea	rsi, [rsi]
	and	rsi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rsi
	or	rsi, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x10]
	and	rdx, qword ptr [r15 + 0xc8]
	nop	
	not	rdx
	lea	rdi, [rdi]
	and	rdx, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	and	rcx, qword ptr [r15 + 0xd0]
	nop	
	not	rcx
	and	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xe8], rcx
	or	rcx, rdx
	jmp	.label_2326
	nop	word ptr cs:[rax + rax]
.label_2299:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	jmp	.label_2287
.label_2305:
	nop	
	movdqu	xmm0, xmmword ptr [r15 + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	nop	
	movq	rcx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	mov	rbp, rbp
	movq	rdx, xmm0
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [r15 + 0xc8]
	mov	rsp, rsp
	pandn	xmm0, xmmword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	movq	rsi, xmm0
	mov	rsp, rsp
	or	rsi, rcx
	or	rsi, rdx
	mov	rbp, rbp
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	nop	
	pshufd	xmm0, xmm0, 0x4e
	nop	
	movq	rcx, xmm0
.label_2326:
	or	rcx, rsi
	test	rcx, rcx
	je	.label_2287
	nop	word ptr cs:[rax + rax]
.label_2291:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	lea	rdi, [rdi]
	test	r11, r11
	lea	rdi, [rdi]
	jle	.label_2377
	cmp	r9d, 1
	jne	.label_2378
	nop	
	mov	r15, qword ptr [rbp - 0x38]
	mov	rbx, r12
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_2352:
	nop	
	movzx	eax, byte ptr [r8]
	mov	cl, al
	shr	cl, 6
	movzx	ecx, cl
	nop	
	mov	rcx, qword ptr [r15 + rcx*8]
	lea	rsi, [rsi]
	bt	rcx, rax
	jae	.label_2309
	mov	qword ptr [rbp - 0x40], rbx
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	mov	r8, qword ptr [r15]
	mov	r13, qword ptr [r15 + 8]
	mov	rsi, r8
	lea	rsi, [rsi]
	and	rsi, r9
	mov	rbp, rbp
	mov	rdi, r13
	and	rdi, rax
	mov	rdx, rdi
	or	rdx, rsi
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	r12, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rsi, [rsi]
	and	rcx, rax
	or	rdx, rcx
	mov	r10, qword ptr [rbp - 0xe8]
	mov	rbx, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	and	rax, r10
	or	rdx, rax
	je	.label_2386
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x88], rsi
	mov	qword ptr [rbp - 0xc0], r11
	mov	rsp, rsp
	mov	rsi, r10
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r11, r9
	lea	rdi, [rdi]
	not	r11
	and	r11, r8
	lea	rdi, [rdi]
	not	r8
	lea	rdi, [rdi]
	and	r8, r9
	mov	qword ptr [rbp - 0x100], r8
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	r9, rax
	not	r9
	and	r9, r13
	lea	rsi, [rsi]
	mov	rcx, r9
	or	rcx, r11
	not	r13
	and	r13, rax
	mov	qword ptr [rbp - 0xf8], r13
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rax, rdx
	not	rax
	and	rax, r12
	lea	rdi, [rdi]
	or	rcx, rax
	nop	
	not	r12
	mov	rbp, rbp
	and	r12, rdx
	mov	qword ptr [rbp - 0xf0], r12
	mov	rdx, rsi
	mov	rsp, rsp
	not	rdx
	and	rdx, r10
	not	r10
	mov	rsp, rsp
	and	r10, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], r10
	mov	rbp, rbp
	or	rcx, rdx
	mov	rsp, rsp
	je	.label_2318
	mov	qword ptr [rbp - 0x50], r13
	mov	qword ptr [rbp - 0xc8], r8
	nop	
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rcx, rsi
	nop	
	shl	rcx, 5
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [r10 + rcx], r11
	mov	qword ptr [r10 + rcx + 8], r9
	nop	
	mov	r9, rsi
	lea	rdi, [rdi]
	mov	qword ptr [r10 + rcx + 0x10], rax
	nop	
	mov	qword ptr [r10 + rcx + 0x18], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [r15 + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x18], rax
	lea	rcx, [r9 + r9*2]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rax, [rdx + rcx*8]
	mov	rbx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8 + 8], rdi
	mov	r13, qword ptr [rbx + 8]
	nop	
	test	r13, r13
	lea	rsi, [rsi]
	jle	.label_2359
	mov	qword ptr [rax], rdi
	nop	
	shl	rdi, 3
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x88], rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8 + 0x10], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_2282
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	r13, 3
	mov	rdi, rax
	mov	rbp, rbp
	mov	rdx, r13
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	jmp	.label_2302
	nop	word ptr [rax + rax]
.label_2386:
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp - 0x40]
	jmp	.label_2309
.label_2318:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], r13
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], r8
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jmp	.label_2314
.label_2359:
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax], xmm0
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
.label_2302:
	mov	rsp, rsp
	inc	r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
.label_2314:
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	re_node_set_insert
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_2290
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	or	rax, qword ptr [rbp - 0xc8]
	or	r12, qword ptr [rbp - 0x70]
	nop	
	or	r12, rax
	mov	r11, qword ptr [rbp - 0xc0]
	mov	r8, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	je	.label_2294
.label_2309:
	mov	rsp, rsp
	inc	r14
	lea	rsi, [rsi]
	add	rbx, 0x18
	mov	rbp, rbp
	add	r15, 0x20
	mov	rsp, rsp
	cmp	r14, r11
	mov	rbp, rbp
	jl	.label_2352
	jmp	.label_2294
.label_2377:
	mov	rbp, rbp
	xor	r14d, r14d
	mov	rbp, rbp
	jmp	.label_2294
.label_2378:
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	r10, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	r15, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rbx, r12
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_2310:
	nop	
	mov	qword ptr [rbp - 0xc0], r11
	mov	r12, qword ptr [r15 - 0x18]
	nop	
	mov	r13, qword ptr [r15 - 0x10]
	mov	rdi, r12
	and	rdi, rsi
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	rax, r13
	mov	rsp, rsp
	and	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	or	rax, rdi
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 - 8]
	mov	rdi, r11
	and	rdi, r10
	or	rax, rdi
	mov	r9, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, r9
	and	r8, rcx
	or	rax, r8
	nop	
	je	.label_2368
	mov	qword ptr [rbp - 0x88], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rbx
	mov	rsp, rsp
	mov	rax, rsi
	mov	rbp, rbp
	not	rax
	lea	rsi, [rsi]
	and	rax, r12
	not	r12
	and	r12, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], r12
	mov	rbx, rdx
	nop	
	not	rbx
	lea	rsi, [rsi]
	and	rbx, r13
	mov	rsi, rbx
	or	rsi, rax
	not	r13
	and	r13, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc8], r13
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], r13
	mov	rdx, r10
	not	rdx
	and	rdx, r11
	nop	
	or	rsi, rdx
	not	r11
	and	r11, r10
	mov	qword ptr [rbp - 0xf0], r11
	mov	rdi, rcx
	not	rcx
	and	rcx, r9
	not	r9
	and	r9, rdi
	nop	
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0xe8], r9
	or	rsi, rcx
	mov	r13, r11
	lea	rdi, [rdi]
	je	.label_2385
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], r12
	mov	r10, qword ptr [rbp - 0xc0]
	mov	rsi, r10
	shl	rsi, 5
	mov	r12, qword ptr [rbp - 0x38]
	mov	qword ptr [r12 + rsi], rax
	nop	
	mov	qword ptr [r12 + rsi + 8], rbx
	mov	qword ptr [r12 + rsi + 0x10], rdx
	mov	rsp, rsp
	mov	qword ptr [r12 + rsi + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [r15 - 0x18], rax
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [r15 - 0x10], rax
	mov	rax, r10
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [r15 - 8], rcx
	mov	rbp, rbp
	mov	qword ptr [r15], r8
	lea	rsi, [rax + rax*2]
	mov	rbp, rbp
	mov	r12, qword ptr [rbp - 0xa8]
	lea	rcx, [r12 + rsi*8]
	mov	rbx, qword ptr [rbp - 0x70]
	nop	
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r12 + rsi*8 + 8], rdi
	nop	
	mov	rdx, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2322
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], r13
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	lea	rdi, [rdi]
	mov	r13, rcx
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + rcx*8 + 0x10], rax
	test	rax, rax
	je	.label_2358
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	shl	rdx, 3
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	r12, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	r13, qword ptr [rbp - 0x98]
	nop	
	jmp	.label_2367
	nop	word ptr cs:[rax + rax]
.label_2368:
	mov	rsp, rsp
	mov	rdi, rcx
	mov	r13, r10
	mov	r12, rsi
	mov	r11, qword ptr [rbp - 0xc0]
	jmp	.label_2374
	nop	dword ptr [rax + rax]
.label_2385:
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x70]
	jmp	.label_2344
.label_2322:
	nop	
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rcx], xmm0
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x10], 0
	mov	r12, qword ptr [rbp - 0x48]
.label_2367:
	inc	rax
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
.label_2344:
	mov	qword ptr [rbp - 0x30], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	mov	rdi, rbx
	call	re_node_set_insert
	test	al, al
	nop	
	je	.label_2290
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc8]
	nop	
	mov	rax, rdx
	nop	
	or	rax, r12
	mov	rbp, rbp
	mov	rcx, r13
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	or	rcx, rdi
	or	rcx, rax
	mov	r11, qword ptr [rbp - 0xc0]
	je	.label_2294
.label_2374:
	mov	rsp, rsp
	inc	r14
	mov	rbp, rbp
	add	rbx, 0x18
	lea	rdi, [rdi]
	add	r15, 0x20
	nop	
	cmp	r14, r11
	nop	
	mov	rcx, rdi
	mov	rbp, rbp
	mov	r10, r13
	mov	rsi, r12
	mov	rbp, rbp
	jl	.label_2310
	nop	word ptr cs:[rax + rax]
.label_2294:
	cmp	r14, r11
	mov	r12, qword ptr [rbp - 0xa8]
	mov	r15, qword ptr [rbp - 0xd0]
	mov	r13, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	jne	.label_2287
	mov	rbp, rbp
	mov	rax, r14
	mov	rsp, rsp
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x100]
	movaps	xmm1, xmmword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	movups	xmmword ptr [rdx + rax + 0x10], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdx + rax], xmm0
	lea	rbx, [r14 + r14*2]
	mov	rax, qword ptr [r13 + 0x18]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rax + rdi*8]
	mov	r13, r12
	nop	
	mov	r12, rdi
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_1589]]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [r13 + rbx*8], xmm0
	mov	rsp, rsp
	mov	edi, 8
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r13 + rbx*8 + 0x10], rax
	mov	rbp, rbp
	mov	rcx, r13
	test	rax, rax
	je	.label_2355
	mov	qword ptr [rax], r15
	lea	rsi, [rsi]
	inc	r14
	lea	rdi, [rdi]
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0xf0], xmm0
	movdqa	xmmword ptr [rbp - 0x100], xmm0
	mov	r11, r14
	mov	r15, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rdi, r12
	mov	r12, rcx
	nop	
.label_2287:
	mov	rsp, rsp
	inc	rdi
	mov	rbp, rbp
	cmp	rdi, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	jl	.label_2365
	test	r11, r11
	lea	rdi, [rdi]
	jle	.label_2371
	nop	
	lea	rax, [r11 + 1]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	lea	rdi, [r11*8 + 8]
	mov	rbx, r11
	mov	qword ptr [rbp - 0xc0], rbx
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x58], rax
	xor	ecx, ecx
	nop	
	test	rax, rax
	mov	edx, 0xc
	mov	rbp, rbp
	cmovne	edx, ecx
	mov	dword ptr [rbp - 0xac], edx
	lea	rsi, [rsi]
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	rbx, rcx
	ja	.label_2276
	test	rax, rax
	je	.label_2276
	lea	rax, [rbx*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	lea	rsi, [rsi]
	cmp	rax, 0xfbf
	lea	rsi, [rsi]
	ja	.label_2281
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], r13
	mov	rsp, rsp
	mov	rax, rsp
	mov	rsp, rsp
	add	rdi, 0xf
	nop	
	and	rdi, 0xfffffffffffffff0
	mov	rbp, rbp
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jmp	.label_2292
.label_2282:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0x48]
.label_2358:
	mov	rsp, rsp
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [r13], xmm0
.label_2290:
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0xa8]
.label_2338:
	mov	rbp, rbp
	mov	r15, -1
	test	r14, r14
	jle	.label_2321
	mov	rbp, rbp
	mov	rbx, r12
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2327:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx]
	call	free
	nop	
	add	rbx, 0x18
	dec	r14
	jne	.label_2327
.label_2321:
	mov	rdi, r12
	nop	
	call	free
	lea	rsi, [rsi]
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_2333
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2336
.label_2333:
	mov	edi, 8
	mov	esi, 0x100
	mov	rbp, rbp
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	test	rax, rax
	lea	rsi, [rsi]
	setne	al
	nop	
	jmp	.label_2336
.label_2279:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_2336
.label_2281:
	call	malloc
	mov	rbp, rbp
	test	rax, rax
	je	.label_2276
	mov	qword ptr [rbp - 0xb8], r13
	mov	cl, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], ecx
.label_2292:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	lea	rax, [rax + rbx*8]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rax, [rax + rbx*8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	xor	edx, edx
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
.label_2364:
	mov	qword ptr [rbp - 0xc8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], r12
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	lea	rcx, [rbx + rbx*2]
	nop	
	mov	rax, qword ptr [r12 + rcx*8 + 8]
	lea	rdi, [rdi]
	test	rax, rax
	jle	.label_2366
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	lea	r13, [rdx + rcx*8 + 8]
	lea	r12, [rdx + rcx*8 + 0x10]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2295:
	nop	
	mov	rcx, qword ptr [r12]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + r14*8]
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	nop	
	je	.label_2381
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	lea	rcx, [rcx + rcx*2]
	nop	
	lea	rsi, [rax + rcx*8]
	lea	rdi, [rbp - 0x68]
	call	re_node_set_merge
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_2283
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13]
.label_2381:
	inc	r14
	mov	rsp, rsp
	cmp	r14, rax
	jl	.label_2295
.label_2366:
	xor	ecx, ecx
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xac]
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rdx, [rbp - 0x68]
	call	re_acquire_state_context
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + rbx*8], rax
	nop	
	test	rax, rax
	jne	.label_2308
	mov	ecx, dword ptr [rbp - 0xac]
	nop	
	test	ecx, ecx
	nop	
	jne	.label_2283
.label_2308:
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x68], 0
	js	.label_2316
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + rbx*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rcx + rbx*8], rax
	jmp	.label_2319
.label_2316:
	mov	ecx, 1
	mov	rbp, rbp
	lea	rdi, [rbp - 0xac]
	mov	rsp, rsp
	mov	rsi, r15
	lea	rdx, [rbp - 0x68]
	mov	rsp, rsp
	call	re_acquire_state_context
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + rbx*8], rax
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	jne	.label_2331
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xac]
	test	ecx, ecx
	jne	.label_2283
.label_2331:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	qword ptr [rcx + rbx*8], rax
	nop	
	je	.label_2339
	mov	rbp, rbp
	mov	al, 1
	cmp	dword ptr [r15 + 0xb4], 1
	jg	.label_2343
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
.label_2343:
	mov	qword ptr [rbp - 0x90], rax
.label_2339:
	mov	rsp, rsp
	mov	ecx, 2
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xac]
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdx, [rbp - 0x68]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rcx + rbx*8], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_2319
	nop	
	mov	eax, dword ptr [rbp - 0xac]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_2283
.label_2319:
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rdi, [rdi]
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, qword ptr [rbp - 0x70]
	or	rdx, qword ptr [rcx + rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	nop	
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x98], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	or	rdx, qword ptr [rcx + rax + 0x18]
	nop	
	inc	rbx
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rbx, rax
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0xa8]
	jl	.label_2364
	mov	rsp, rsp
	mov	r13, rdx
	mov	rax, qword ptr [rbp - 0x90]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_2382
	nop	
	mov	qword ptr [rbp - 0x90], rax
	nop	
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_2283
	mov	rcx, qword ptr [rbp - 0x40]
	test	rcx, rcx
	mov	r14, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	r10, r15
	mov	rbp, rbp
	mov	r11, qword ptr [rbp - 0x30]
	mov	r12, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	je	.label_2346
	lea	r8, [r14 + 0x1800]
	mov	edx, 1
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	jmp	.label_2329
.label_2311:
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	lea	rbx, [rsi + 1]
	nop	
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	lea	rsi, [rsi]
	je	.label_2311
	test	qword ptr [r10 + 0xb8], rdx
	je	.label_2320
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	jmp	.label_2353
.label_2320:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r11 + rsi*8 + 8]
.label_2353:
	mov	qword ptr [rax + r9*8], rcx
	nop	
	jmp	.label_2324
.label_2329:
	mov	rbx, -1
	lea	rdi, [rdi]
	test	dil, 1
	mov	rcx, r8
	jne	.label_2311
.label_2324:
	lea	rsi, [rsi]
	add	rdx, rdx
	mov	rbp, rbp
	shr	rdi, 1
	nop	
	inc	r9
	test	rdi, rdi
	jne	.label_2329
.label_2346:
	test	r12, r12
	je	.label_2335
	lea	r8, [r14 + 0x1808]
	mov	edx, 1
	lea	rsi, [rsi]
	mov	esi, 0x40
	lea	rsi, [rsi]
	jmp	.label_2337
.label_2342:
	mov	rbx, rdi
	mov	rbp, rbp
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2342
	mov	rbp, rbp
	test	qword ptr [r10 + 0xc0], rdx
	lea	rsi, [rsi]
	je	.label_2298
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	mov	rbp, rbp
	jmp	.label_2323
.label_2298:
	nop	
	mov	rcx, qword ptr [r11 + rbx*8 + 8]
.label_2323:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_2356
.label_2337:
	lea	rdi, [rdi]
	mov	rdi, -1
	lea	rdi, [rdi]
	test	r12b, 1
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	rbp, rbp
	jne	.label_2342
.label_2356:
	mov	rbp, rbp
	add	rdx, rdx
	nop	
	shr	r12, 1
	lea	rdi, [rdi]
	inc	rsi
	mov	rbp, rbp
	test	r12, r12
	jne	.label_2337
.label_2335:
	lea	rdi, [rdi]
	mov	r12, r11
	mov	r11, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	test	r11, r11
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0xc0]
	mov	r15d, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	je	.label_2363
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	mov	rsp, rsp
	mov	esi, 0x80
	jmp	.label_2369
.label_2373:
	mov	rbx, rdi
	mov	rsp, rsp
	lea	rdi, [rbx + 1]
	test	qword ptr [rcx], rdx
	mov	rsp, rsp
	lea	rcx, [rcx + 0x20]
	je	.label_2373
	test	qword ptr [r10 + 0xc8], rdx
	mov	rsp, rsp
	je	.label_2313
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	lea	rsi, [rsi]
	jmp	.label_2379
.label_2313:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + rbx*8 + 8]
.label_2379:
	mov	qword ptr [rax + rsi*8], rcx
	lea	rdi, [rdi]
	jmp	.label_2383
.label_2369:
	mov	rbp, rbp
	mov	rdi, -1
	test	r11b, 1
	mov	rcx, r8
	jne	.label_2373
.label_2383:
	nop	
	add	rdx, rdx
	mov	rsp, rsp
	shr	r11, 1
	inc	rsi
	lea	rsi, [rsi]
	test	r11, r11
	jne	.label_2369
.label_2363:
	mov	rsp, rsp
	test	r13, r13
	mov	rsp, rsp
	mov	r11, r12
	nop	
	mov	r12d, r15d
	je	.label_2284
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	nop	
	mov	esi, 0xc0
	nop	
	jmp	.label_2289
.label_2297:
	mov	rbx, rdi
	lea	rdi, [rdi]
	lea	rdi, [rbx + 1]
	lea	rsi, [rsi]
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_2297
	test	qword ptr [r10 + 0xd0], rdx
	lea	rsi, [rsi]
	je	.label_2307
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rbx*8 + 8]
	lea	rdi, [rdi]
	jmp	.label_2301
.label_2307:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r11 + rbx*8 + 8]
.label_2301:
	lea	rsi, [rsi]
	mov	qword ptr [rax + rsi*8], rcx
	mov	rsp, rsp
	jmp	.label_2315
.label_2289:
	mov	rdi, -1
	mov	rbp, rbp
	test	r13b, 1
	mov	rcx, r8
	jne	.label_2297
.label_2315:
	nop	
	add	rdx, rdx
	mov	rbp, rbp
	shr	r13, 1
	lea	rdi, [rdi]
	inc	rsi
	test	r13, r13
	jne	.label_2289
.label_2284:
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	test	ch, 4
	mov	rbp, rbp
	je	.label_2285
	lea	rdx, [r14 + 0x1800]
	xor	ecx, ecx
.label_2340:
	lea	rdi, [rdi]
	test	byte ptr [rdx + 1], 4
	jne	.label_2330
	mov	rbp, rbp
	inc	rcx
	lea	rsi, [rsi]
	add	rdx, 0x20
	cmp	rcx, r9
	lea	rsi, [rsi]
	jl	.label_2340
	mov	rsp, rsp
	jmp	.label_2285
.label_2355:
	mov	rbp, rbp
	mov	r12, rcx
	lea	rax, [r12 + rbx*8]
	nop	
	pxor	xmm0, xmm0
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rax], xmm0
	lea	rsi, [rsi]
	jmp	.label_2338
.label_2276:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rax, rbx
	nop	
	jmp	.label_2350
.label_2371:
	lea	rsi, [rsi]
	mov	r15, r11
	jmp	.label_2321
.label_2330:
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	test	dl, dl
	mov	rdx, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2285
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x850], rcx
.label_2285:
	nop	
	mov	r15, r9
	lea	rdi, [rdi]
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_2278
	mov	rdi, r11
	nop	
	call	free
.label_2278:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rbx, r14
	nop	
	add	rbx, 0x10
.label_2370:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	nop	
	call	free
	lea	rdi, [rdi]
	add	rbx, 0x18
	mov	rbp, rbp
	dec	r15
	nop	
	jne	.label_2370
	mov	rdi, r14
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	al, 1
	jmp	.label_2336
.label_2382:
	mov	qword ptr [rbp - 0x90], rax
	mov	edi, 8
	nop	
	mov	esi, 0x200
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + 0x60], rax
	nop	
	test	rax, rax
	je	.label_2283
	mov	rcx, qword ptr [rbp - 0x40]
	test	rcx, rcx
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x70]
	je	.label_2384
	lea	rsi, [rsi]
	lea	r8, [r14 + 0x1800]
	nop	
	mov	edx, 1
	mov	rsp, rsp
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x40]
	jmp	.label_2280
.label_2283:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x48]
	test	al, al
	mov	rbp, rbp
	je	.label_2288
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
.label_2288:
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0xc0]
	test	rax, rax
	mov	r12, qword ptr [rbp - 0xa8]
	nop	
	jle	.label_2303
.label_2350:
	nop	
	mov	rbx, r12
	lea	rsi, [rsi]
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2317:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	r14, rax
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, r14
	add	rbx, 0x18
	dec	rax
	jne	.label_2317
.label_2303:
	mov	rdi, r12
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
.label_2336:
	lea	rsp, [rbp - 0x28]
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_2328:
	mov	rsi, rbx
	lea	rbx, [rsi + 1]
	test	qword ptr [rcx], rdx
	mov	rsp, rsp
	lea	rcx, [rcx + 0x20]
	je	.label_2328
	nop	
	mov	rcx, qword ptr [r11 + rsi*8 + 8]
	mov	qword ptr [rax + r9*8], rcx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + rsi*8 + 8]
	mov	qword ptr [rax + r9*8 + 0x800], rcx
	lea	rsi, [rsi]
	jmp	.label_2334
.label_2280:
	mov	rbx, -1
	nop	
	test	dil, 1
	mov	rcx, r8
	lea	rsi, [rsi]
	jne	.label_2328
.label_2334:
	nop	
	add	rdx, rdx
	shr	rdi, 1
	nop	
	inc	r9
	lea	rdi, [rdi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_2280
.label_2384:
	nop	
	test	r10, r10
	je	.label_2351
	lea	r8, [r14 + 0x1808]
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	esi, 0x40
	jmp	.label_2332
.label_2362:
	mov	rcx, rbx
	nop	
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi + 0x20]
	je	.label_2362
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2357
.label_2332:
	mov	rbx, -1
	test	r10b, 1
	mov	rdi, r8
	jne	.label_2362
.label_2357:
	mov	rbp, rbp
	add	rdx, rdx
	shr	r10, 1
	inc	rsi
	mov	rbp, rbp
	test	r10, r10
	nop	
	jne	.label_2332
.label_2351:
	mov	rcx, qword ptr [rbp - 0x98]
	test	rcx, rcx
	mov	r9, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	je	.label_2372
	lea	r8, [r14 + 0x1810]
	mov	edx, 1
	lea	rsi, [rsi]
	mov	esi, 0x80
	nop	
	jmp	.label_2286
.label_2277:
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rbp, rbp
	lea	rbx, [rcx + 1]
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi]
	lea	rdi, [rdi + 0x20]
	je	.label_2277
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	jmp	.label_2360
.label_2286:
	mov	rbx, -1
	nop	
	test	cl, 1
	mov	r10, rcx
	mov	rdi, r8
	jne	.label_2277
.label_2360:
	add	rdx, rdx
	nop	
	mov	rcx, r10
	shr	rcx, 1
	inc	rsi
	test	rcx, rcx
	nop	
	jne	.label_2286
.label_2372:
	test	r13, r13
	je	.label_2284
	nop	
	lea	r8, [r14 + 0x1818]
	mov	edx, 1
	mov	esi, 0xc0
	jmp	.label_2293
.label_2300:
	mov	rsp, rsp
	mov	rcx, rbx
	mov	rsp, rsp
	lea	rbx, [rcx + 1]
	mov	rsp, rsp
	test	qword ptr [rdi], rdx
	lea	rdi, [rdi]
	lea	rdi, [rdi + 0x20]
	je	.label_2300
	mov	rbp, rbp
	mov	rdi, qword ptr [r11 + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + rcx*8 + 8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	lea	rsi, [rsi]
	jmp	.label_2304
.label_2293:
	mov	rsp, rsp
	mov	rbx, -1
	test	r13b, 1
	mov	rsp, rsp
	mov	rdi, r8
	jne	.label_2300
.label_2304:
	nop	
	add	rdx, rdx
	mov	rsp, rsp
	shr	r13, 1
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_2284
	jmp	.label_2293
	nop	
	.section	.text
	.align	16
	#Procedure 0x41f6c0

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
	sub	rsp, 0x58
	nop	
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_1589]]
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	nop	
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_2388
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, r13
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2396
	lea	rdi, [rdi]
	lea	rax, [r15 + 0x20]
	nop	
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x4c], 0
	nop	
.label_2398:
	lea	rdi, [rdi]
	mov	rdx, r13
	mov	rbp, rbp
	test	rdx, rdx
	mov	rsp, rsp
	jle	.label_2401
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + rdx*8], 0
	je	.label_2402
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_2404
	nop	dword ptr [rax]
.label_2402:
	mov	eax, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	inc	eax
.label_2404:
	lea	rsi, [rsi]
	cmp	eax, dword ptr [r14 + 0xe0]
	jg	.label_2390
	mov	dword ptr [rsp + 0x4c], eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], 0
	lea	r13, [rdx - 1]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rax, qword ptr [rax + rdx*8 - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rdx
	test	rax, rax
	je	.label_2392
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_2392
	mov	rcx, qword ptr [r14 + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_2391:
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	r12, qword ptr [rax + rbx*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r12
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	shl	r12, 4
	lea	rdi, [rdi]
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_2387
	mov	rax, r15
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rcx
	mov	rdx, r14
	mov	r14, rax
	mov	rbp, rbp
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	r15, r13
	mov	r13, rdx
	mov	rcx, r15
	nop	
	call	check_node_accept_bytes
	test	eax, eax
	lea	rsi, [rsi]
	jle	.label_2403
	movsxd	rcx, eax
	add	rcx, r15
	cmp	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	jle	.label_2406
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	mov	r14, r13
	mov	r13, r15
	mov	rbp, rbp
	mov	r15, rcx
	mov	rsp, rsp
	jmp	.label_2395
.label_2403:
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r14, r13
	mov	r13, r15
	mov	r15, rcx
	jne	.label_2395
	mov	rbp, rbp
	jmp	.label_2387
.label_2406:
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + rcx*8]
	nop	
	test	rdx, rdx
	mov	rsp, rsp
	mov	r14, r13
	mov	rsp, rsp
	mov	r13, r15
	mov	r15, rsi
	nop	
	je	.label_2387
	mov	rsi, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	jle	.label_2387
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	nop	
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_2405
	nop	word ptr [rax + rax]
.label_2400:
	mov	rbp, rbp
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	mov	rbp, rbp
	cmovge	rsi, rbp
	lea	rsi, [rsi]
	cmp	rdi, rsi
	jb	.label_2400
.label_2405:
	mov	rbp, rbp
	test	eax, eax
	je	.label_2387
	lea	rsi, [rsi]
	cmp	rdi, -1
	nop	
	je	.label_2387
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_2395
.label_2387:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	add	r12, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	nop	
	call	check_node_accept
	nop	
	test	al, al
	nop	
	je	.label_2389
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_2389
	mov	rax, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_2389
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	lea	rsi, [rsi]
	dec	rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	mov	rbp, rbp
	je	.label_2397
.label_2399:
	lea	rdi, [rsi + rax]
	mov	rbp, rbp
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	mov	rbp, rbp
	lea	rbp, [rdi + 1]
	nop	
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	mov	rbp, rbp
	jb	.label_2399
.label_2397:
	lea	rsi, [rsi]
	cmp	rsi, -1
	nop	
	je	.label_2389
	mov	eax, 1
	nop	
	cmp	qword ptr [rdx + rsi*8], rcx
	lea	rsi, [rsi]
	jne	.label_2389
	nop	
.label_2395:
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_2394
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	add	rcx, r13
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	mov	r8, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + r8*8]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	r9, r13
	call	check_dst_limits
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	jne	.label_2389
.label_2394:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	mov	rsp, rsp
	je	.label_2396
.label_2389:
	inc	rbx
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	mov	rbp, rbp
	jl	.label_2391
.label_2392:
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r13
	nop	
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	rsp, rsp
	mov	ebp, eax
	mov	rsp, rsp
	test	ebp, ebp
	je	.label_2398
	mov	rbp, rbp
	jmp	.label_2396
.label_2401:
	lea	rdi, [rdi]
	xor	ebp, ebp
	jmp	.label_2396
.label_2390:
	nop	
	shl	rdx, 3
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	esi, esi
	lea	rdi, [rdi]
	call	memset
.label_2396:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_2393:
	mov	eax, ebp
	mov	rbp, rbp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_2388:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jmp	.label_2393
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41fb30

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
	sub	rsp, 0xc8
	mov	r11, rcx
	nop	
	mov	rbp, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rbp
	nop	
	mov	r13, rdi
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rbx, qword ptr [rax + rdx*8]
	lea	rax, [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	cmove	rax, rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r11 + 8], 0
	lea	rdi, [rdi]
	je	.label_2427
	mov	qword ptr [rsp + 0x68], rdx
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_2450
	mov	rbp, rbp
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x10], 0
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], r12
	mov	rdx, r11
	mov	rbx, r11
	call	re_acquire_state
	lea	rsi, [rsi]
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x10]
	nop	
	test	r12d, r12d
	mov	rbp, rbp
	jne	.label_2430
	lea	rdi, [rdi]
	mov	r15, r14
	lea	rsi, [rsi]
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rsp, rsp
	jne	.label_2438
	mov	rdi, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	lea	rdi, [rdi]
	shl	rdi, 3
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	mov	rsp, rsp
	xor	ecx, ecx
	test	rax, rax
	mov	r12d, 0xc
	cmove	ecx, r12d
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], ecx
	je	.label_2430
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2438
	mov	r14, rbp
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
.label_2407:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	mov	rbp, rbp
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	call	re_node_set_merge
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2451
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jl	.label_2407
	mov	dword ptr [rsp + 0x10], 0
	mov	rbp, r14
.label_2438:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	r14, rbx
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	nop	
	mov	rbx, qword ptr [rsp]
	jne	.label_2432
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	test	rax, rax
	mov	r11, r14
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	je	.label_2450
	mov	qword ptr [rsp + 0x80], r13
	nop	
	mov	r10, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	jle	.label_2413
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x80]
	mov	r13, qword ptr [rax + 0xd8]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_2440:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [r13 + rax*8 + 0x10], r10
	lea	rdi, [rdi]
	jge	.label_2408
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + rax*8 + 8], r10
	lea	rdi, [rdi]
	jl	.label_2408
	mov	rdx, qword ptr [r13 + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12]
	nop	
	shl	rdx, 4
	mov	rsp, rsp
	mov	r8, qword ptr [rcx + rdx]
	mov	qword ptr [rsp + 0x48], r8
	mov	rbp, rbp
	cmp	qword ptr [r13 + rax*8 + 0x18], r10
	mov	rax, qword ptr [r11 + 8]
	jne	.label_2441
	nop	
	test	rax, rax
	nop	
	jle	.label_2408
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	lea	rsi, [rsi]
	mov	rsi, -1
	nop	
.label_2421:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	mov	rbp, rbp
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	ebx, 9
	nop	
	je	.label_2461
	lea	rdi, [rdi]
	cmp	ebx, 8
	jne	.label_2468
	cmp	r8, qword ptr [rcx + rdi]
	mov	rbp, rbp
	je	.label_2471
	mov	rbp, rsi
.label_2471:
	lea	rsi, [rsi]
	mov	rsi, rbp
	jmp	.label_2468
	nop	word ptr cs:[rax + rax]
.label_2461:
	nop	
	cmp	r8, qword ptr [rcx + rdi]
	je	.label_2414
	mov	rbp, r14
.label_2414:
	lea	rsi, [rsi]
	mov	r14, rbp
.label_2468:
	mov	rbp, rbp
	add	rdx, 8
	dec	rax
	jne	.label_2421
	lea	rdi, [rdi]
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	rbp, r11
	js	.label_2426
	mov	rdi, qword ptr [rsp + 0x98]
	mov	rdx, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	mov	rbx, r10
	call	sub_epsilon_src_nodes
	mov	r10, rbx
	lea	rsi, [rsi]
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_2437
.label_2426:
	test	r14, r14
	mov	rbp, rbp
	mov	r11, rbp
	mov	r12, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	js	.label_2408
	mov	rbp, rbp
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	mov	ebp, 0
	jle	.label_2408
	nop	dword ptr [rax]
.label_2467:
	mov	rsp, rsp
	mov	rax, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x38]
	lea	r9, [rsi + rsi*2]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2411
	mov	rbp, rbp
	dec	rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + r9*8 + 0x10]
	mov	rbp, rbp
	mov	eax, 0
	je	.label_2472
	nop	dword ptr [rax]
.label_2465:
	mov	rsp, rsp
	lea	rbx, [rax + rdx]
	lea	rdi, [rdi]
	shr	rbx, 1
	mov	rsp, rsp
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rcx, [rbx + 1]
	mov	rsp, rsp
	cmovl	rax, rcx
	cmovge	rdx, rbx
	mov	rbp, rbp
	cmp	rax, rdx
	jb	.label_2465
.label_2472:
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_2411
	mov	rbp, rbp
	cmp	qword ptr [rdi + rax*8], r14
	lea	rdi, [rdi]
	je	.label_2417
.label_2411:
	nop	
	mov	rax, qword ptr [r12 + 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + r9*8 + 8]
	lea	rdi, [rdi]
	test	rdx, rdx
	jle	.label_2424
	nop	
	dec	rdx
	mov	rcx, qword ptr [rax + r9*8 + 0x10]
	lea	rdi, [rdi]
	mov	eax, 0
	je	.label_2460
	nop	dword ptr [rax]
.label_2464:
	lea	rdi, [rax + rdx]
	shr	rdi, 1
	nop	
	cmp	qword ptr [rcx + rdi*8], r14
	nop	
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmovl	rax, rbx
	cmovge	rdx, rdi
	mov	rbp, rbp
	cmp	rax, rdx
	jb	.label_2464
.label_2460:
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_2424
	mov	rbp, rbp
	cmp	qword ptr [rcx + rax*8], r14
	mov	rsp, rsp
	je	.label_2417
.label_2424:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], r15
	mov	r15, r13
	nop	
	mov	rdi, r12
	nop	
	mov	r13, r12
	lea	rsi, [rsi]
	mov	rdx, r11
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
	mov	r12, r10
	nop	
	mov	rbx, r11
	call	sub_epsilon_src_nodes
	mov	r10, r12
	nop	
	mov	r12d, eax
	test	r12d, r12d
	nop	
	jne	.label_2437
	mov	rsp, rsp
	dec	rbp
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbx + 8]
	mov	r11, rbx
	mov	r12, r13
	nop	
	mov	r13, r15
	mov	r15, qword ptr [rsp + 0x98]
.label_2417:
	inc	rbp
	nop	
	cmp	rbp, r8
	jl	.label_2467
	jmp	.label_2408
.label_2441:
	nop	
	test	rax, rax
	mov	ebp, 0
.label_2714:
	jg	.label_2462
	jmp	.label_2408
	nop	dword ptr [rax]
.label_2455:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
.label_2462:
	mov	rbp, rbp
	mov	rdx, qword ptr [r11 + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	shl	rdx, 4
	nop	
	mov	edi, dword ptr [rcx + rdx + 8]
	mov	ebx, 0xfe
	mov	rbp, rbp
	and	edi, ebx
	nop	
	or	edi, 1
	cmp	edi, 9
	jne	.label_2419
	cmp	r8, qword ptr [rcx + rdx]
	jne	.label_2419
	mov	rbp, rbp
	mov	r14, r15
	mov	r15, r13
	mov	rsp, rsp
	mov	rdi, r12
	mov	r13, r12
	mov	rsp, rsp
	mov	rdx, r11
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	mov	r12, r10
	mov	rbx, r11
	lea	rsi, [rsi]
	call	sub_epsilon_src_nodes
	mov	rbp, rbp
	mov	r10, r12
	mov	r12d, eax
	mov	rsp, rsp
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_2437
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	r11, rbx
	lea	rsi, [rsi]
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r13, r15
	mov	r15, r14
	mov	r8, qword ptr [rsp + 0x48]
.label_2419:
	mov	rsp, rsp
	inc	rbp
	cmp	rbp, rax
	jl	.label_2455
	nop	word ptr cs:[rax + rax]
.label_2408:
	inc	r15
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	cmp	r15, qword ptr [rbp + 0x28]
	jl	.label_2440
.label_2413:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], 0
	mov	r13, qword ptr [rsp + 0x80]
	mov	rbx, qword ptr [rsp]
.label_2450:
	nop	
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r11
	mov	rbp, rbp
	call	re_acquire_state
	mov	rcx, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	test	r12d, r12d
	lea	rsi, [rsi]
	je	.label_2420
	jmp	.label_2432
.label_2427:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8], 0
.label_2420:
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_2436
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rdx*8]
	test	byte ptr [rax + 0x68], 0x40
	nop	
	je	.label_2436
	mov	rbx, rbp
	mov	r11, qword ptr [r13 + 0x98]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r13 + 0xc8]
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rbp, rbp
	jle	.label_2442
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0xd8]
	xor	r15d, r15d
	mov	rax, rbp
	nop	
.label_2422:
	mov	rbp, rbp
	lea	rsi, [rax + r15]
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	shr	rdi, 0x3f
	mov	rsp, rsp
	add	rdi, rsi
	sar	rdi, 1
	nop	
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], rdx
	lea	rdi, [rdi]
	cmovge	rax, rdi
	mov	rbp, rbp
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	lea	rsi, [rsi]
	cmp	r15, rax
	lea	rsi, [rsi]
	jl	.label_2422
.label_2442:
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_2410
	cmp	r15, -1
	nop	
	je	.label_2410
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [r15 + r15*4]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb0], rcx
	cmp	qword ptr [rax + rcx*8 + 8], rdx
	jne	.label_2410
	mov	qword ptr [rsp + 0x10], 0
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jle	.label_2425
	mov	rdi, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rdi
	mov	qword ptr [rsp + 0x68], rdx
	nop	
	mov	r10, rbx
	mov	qword ptr [rsp + 0xa8], r10
	mov	rbp, rbp
	lea	rax, [r10 + 0x20]
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	shl	qword ptr [rsp + 0xb0], 3
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_2459:
	mov	qword ptr [rsp + 0x90], r13
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, qword ptr [rax + r13*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rbp
	lea	rdi, [rdi]
	mov	rax, qword ptr [r11]
	mov	rcx, rbp
	nop	
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	rbp, qword ptr [r10 + 0x10]
	lea	rsi, [rsi]
	jne	.label_2446
	cmp	eax, 4
	mov	rbp, rbp
	mov	rcx, rdx
	jne	.label_2435
	cmp	qword ptr [r10 + 0x18], rcx
	jne	.label_2463
	nop	
	jmp	.label_2435
.label_2446:
	nop	
	cmp	eax, 4
	mov	rcx, rdx
	mov	rbp, rbp
	jne	.label_2435
.label_2463:
	mov	rbx, qword ptr [rdi + 0xd8]
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0xb0]
	mov	r14, r15
	nop	dword ptr [rax]
.label_2454:
	cmp	qword ptr [rbx], rbp
	lea	rsi, [rsi]
	jne	.label_2439
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	rdx, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r9, rdx
	sub	r9, rax
	add	r9, rcx
	cmp	rdx, rax
	jne	.label_2453
	mov	rbp, rbp
	mov	rax, qword ptr [r11 + 0x28]
	nop	
	lea	rdx, [rbp + rbp*2]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
	jmp	.label_2429
	nop	dword ptr [rax]
.label_2453:
	lea	rdi, [rdi]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r11 + 0x18]
.label_2429:
	cmp	r9, qword ptr [r10 + 0x18]
	jg	.label_2439
	lea	rsi, [rsi]
	mov	rax, qword ptr [r10]
	mov	rdx, qword ptr [rax + r9*8]
	lea	rsi, [rsi]
	test	rdx, rdx
	je	.label_2439
	mov	rax, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	test	rax, rax
	jle	.label_2439
	mov	rsp, rsp
	mov	r12, r10
	mov	r8, qword ptr [rsi]
	dec	rax
	lea	rdi, [rdi]
	mov	r10, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_2445
	nop	dword ptr [rax]
.label_2457:
	lea	rdi, [rdi]
	lea	rsi, [rdx + rax]
	mov	rbp, rbp
	shr	rsi, 1
	nop	
	cmp	qword ptr [r10 + rsi*8], r8
	lea	rdi, [rdi]
	lea	rbp, [rsi + 1]
	cmovl	rdx, rbp
	cmovge	rax, rsi
	cmp	rdx, rax
	lea	rdi, [rdi]
	jb	.label_2457
.label_2445:
	lea	rdi, [rdi]
	cmp	rdx, -1
	je	.label_2452
	nop	
	cmp	qword ptr [r10 + rdx*8], r8
	jne	.label_2452
	mov	qword ptr [rsp + 0x48], r11
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	call	check_dst_limits
	test	al, al
	lea	rdi, [rdi]
	mov	r10, r12
	je	.label_2416
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x68]
	nop	
	mov	rdi, qword ptr [rsp + 0x80]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_2412
.label_2452:
	lea	rdi, [rdi]
	mov	r10, r12
	nop	
	jmp	.label_2412
.label_2416:
	cmp	qword ptr [rsp], 0
	jne	.label_2428
	mov	rax, qword ptr [r10 + 0x30]
	mov	qword ptr [rsp + 0x40], rax
	movups	xmm0, xmmword ptr [r10]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [r10 + 0x10]
	mov	rbp, rbp
	movups	xmm2, xmmword ptr [r10 + 0x20]
	movaps	xmmword ptr [rsp + 0x30], xmm2
	movaps	xmmword ptr [rsp + 0x20], xmm1
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbx, qword ptr [r10 + 0x28]
	mov	qword ptr [rsp + 0x38], rbx
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	jle	.label_2433
	mov	rbp, rbp
	mov	rbp, r10
	mov	qword ptr [rsp + 0x30], rbx
	shl	rbx, 3
	mov	rdi, rbx
	mov	rbp, rbp
	call	malloc
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	nop	
	je	.label_2448
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	mov	r10, rbp
	jmp	.label_2428
.label_2433:
	lea	rax, [rsp + 0x30]
	nop	
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
.label_2428:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rbx, r10
	mov	rsp, rsp
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	mov	r12d, 0xc
	test	al, al
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x48]
	nop	
	je	.label_2415
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rbx + rcx*8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rcx
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r12, rax
	nop	
	mov	rbp, rdx
	lea	rdi, [rdi]
	call	sift_states_backward
	mov	r10, rbp
	mov	rsp, rsp
	mov	r11, r12
	nop	
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_2415
	mov	rdi, qword ptr [r10 + 8]
	test	rdi, rdi
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	je	.label_2443
	lea	rdi, [rdi]
	mov	r13, -1
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x50]
	js	.label_2449
	nop	dword ptr [rax]
.label_2447:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdi + r13*8 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + r13*8 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_2456
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_2431
	mov	rbp, rbp
	mov	rbx, rdi
	add	rsi, 8
	add	rdx, 8
	mov	rdi, rbp
	mov	rsp, rsp
	call	re_node_set_init_union
	lea	rdi, [rdi]
	mov	r12d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xbc], r12d
	test	r12d, r12d
	lea	rdi, [rdi]
	jne	.label_2415
	mov	rsp, rsp
	lea	rdi, [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	re_acquire_state
	mov	qword ptr [rbx + r13*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rsp + 0xbc]
	test	r12d, r12d
	nop	
	mov	rcx, qword ptr [rsp + 0x68]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rbx, qword ptr [rsp]
	je	.label_2431
	jmp	.label_2415
.label_2456:
	lea	rsi, [rsi]
	mov	qword ptr [rdi + r13*8 + 8], rdx
.label_2431:
	inc	r13
	cmp	r13, rcx
	jl	.label_2447
.label_2449:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x90]
.label_2443:
	mov	qword ptr [rsp], rbx
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	qword ptr [rbx + rcx*8], rdx
	mov	r12, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	test	r12, r12
	jle	.label_2423
	mov	rbp, r12
	dec	rbp
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rdi, rbp
	mov	edx, 0
	je	.label_2458
	nop	
.label_2434:
	mov	rsp, rsp
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [rax + rbx*8], r14
	mov	rbp, rbp
	lea	rsi, [rbx + 1]
	cmovl	rdx, rsi
	cmovge	rdi, rbx
	cmp	rdx, rdi
	lea	rdi, [rdi]
	jb	.label_2434
.label_2458:
	cmp	qword ptr [rax + rdx*8], r14
	mov	rdi, rdx
	nop	
	je	.label_2409
	nop	
	mov	rdi, -1
.label_2409:
	test	rdi, rdi
	mov	rsp, rsp
	js	.label_2423
	lea	rsi, [rsi]
	cmp	r12, rdi
	jle	.label_2423
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rbp
	cmp	rbp, rdi
	nop	
	jle	.label_2423
	mov	rbp, rbp
	dec	r12
	lea	rdi, [rdx + 1]
	lea	rsi, [rsi]
	cmp	r12, rdi
	mov	rbx, rdi
	nop	
	cmovge	rbx, r12
	lea	rdi, [rdi]
	sub	rbx, rdx
	cmp	rbx, 4
	mov	rbp, rbp
	jb	.label_2418
	nop	
	mov	r8, rbx
	lea	rdi, [rdi]
	and	r8, 0xfffffffffffffffc
	nop	
	mov	r9, rbx
	and	r9, 0xfffffffffffffffc
	lea	rsi, [rsi]
	je	.label_2418
	mov	qword ptr [rsp + 0xa8], r10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], r11
	lea	rsi, [rsi]
	cmp	r12, rdi
	mov	rsi, rdi
	cmovge	rsi, r12
	lea	rsi, [rsi]
	sub	rsi, rdx
	add	rsi, -4
	mov	r11, rsi
	nop	
	shr	r11, 2
	mov	rsp, rsp
	bt	rsi, 2
	mov	r10d, 0
	jb	.label_2444
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax + rdx*8 + 8]
	movups	xmm1, xmmword ptr [rax + rdx*8 + 0x18]
	movups	xmmword ptr [rax + rdx*8], xmm0
	movups	xmmword ptr [rax + rdx*8 + 0x10], xmm1
	mov	r10d, 4
.label_2444:
	mov	rbp, rbp
	test	r11, r11
	lea	rdi, [rdi]
	je	.label_2466
	mov	rbp, rbp
	cmp	r12, rdi
	lea	rsi, [rsi]
	cmovge	rdi, r12
	sub	rdi, rdx
	and	rdi, 0xfffffffffffffffc
	sub	rdi, r10
	add	r10, rdx
	nop	
	lea	rsi, [rax + r10*8 + 0x38]
.label_2470:
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rsi - 0x30]
	movups	xmm1, xmmword ptr [rsi - 0x20]
	movups	xmmword ptr [rsi - 0x38], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rsi - 0x28], xmm1
	nop	
	movups	xmm0, xmmword ptr [rsi - 0x10]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rsi]
	movups	xmmword ptr [rsi - 0x18], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rsi - 8], xmm1
	add	rsi, 0x40
	mov	rsp, rsp
	add	rdi, -8
	mov	rbp, rbp
	jne	.label_2470
.label_2466:
	cmp	rbx, r9
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0x48]
	mov	r10, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	je	.label_2423
	add	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2418:
	mov	rsi, qword ptr [rax + rdx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	mov	rbp, rbp
	cmp	rdx, rbp
	jl	.label_2418
.label_2423:
	lea	rbx, [r14 + r14*4]
	mov	rbp, rbp
	shl	rbx, 3
	mov	rdi, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	add	rbx, qword ptr [rdi + 0xd8]
.label_2412:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x98]
	nop	
.label_2439:
	mov	rbp, rbp
	inc	r14
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x20], 0
	mov	rbp, rbp
	lea	rbx, [rbx + 0x28]
	jne	.label_2454
.label_2435:
	mov	rdx, rcx
	nop	
	inc	r13
	xor	r12d, r12d
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [rax + 8]
	jl	.label_2459
.label_2415:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_2469
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	free
.label_2469:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	test	r12d, r12d
	je	.label_2436
	mov	rsp, rsp
	jmp	.label_2432
.label_2410:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], 0
.label_2436:
	xor	r12d, r12d
.label_2432:
	mov	rbp, rbp
	mov	eax, r12d
	add	rsp, 0xc8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_2437:
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	jmp	.label_2432
.label_2451:
	mov	dword ptr [rsp + 0x10], eax
.label_2430:
	nop	
	mov	dword ptr [rsp + 0xc], r12d
	lea	rdi, [rdi]
	jmp	.label_2432
.label_2425:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_2436
.label_2448:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x30]
	nop	
	movups	xmmword ptr [rax], xmm0
	lea	rdi, [rdi]
	mov	r12d, 0xc
	jmp	.label_2415
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420980

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
	mov	r15, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [r15 + 8]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_2473
	mov	r10, qword ptr [r14 + 8]
	nop	
	test	r10, r10
	je	.label_2473
	lea	rax, [r10 + rdx]
	mov	rbx, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	lea	rcx, [rsi + rax]
	cmp	rcx, rbx
	mov	rsp, rsp
	jle	.label_2475
	add	rbx, rax
	nop	
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_2473
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r12 + 8]
	mov	rdx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r14 + 8]
	mov	rsp, rsp
	jmp	.label_2479
.label_2475:
	lea	rsi, [rsi]
	lea	r8, [r12 + 0x10]
.label_2479:
	lea	r9, [rdx + rsi]
	add	r9, r10
	dec	rsi
.label_2489:
	dec	rdx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	nop	
	mov	rcx, qword ptr [r14 + 0x10]
	nop	
	mov	rdi, r10
.label_2480:
	lea	rdi, [rdi]
	lea	r10, [rdi - 1]
	mov	rax, qword ptr [rcx + rdi*8 - 8]
	nop	dword ptr [rax]
.label_2488:
	nop	
	cmp	qword ptr [rbx + rdx*8], rax
	lea	rsi, [rsi]
	je	.label_2483
	nop	
	jl	.label_2487
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	rsp, rsp
	lea	rdx, [rdx - 1]
	mov	rsp, rsp
	jg	.label_2488
	nop	
	jmp	.label_2476
	nop	word ptr cs:[rax + rax]
.label_2487:
	nop	
	cmp	rdi, 2
	nop	
	mov	rdi, r10
	jge	.label_2480
	jmp	.label_2476
	nop	dword ptr [rax]
.label_2483:
	mov	rbx, qword ptr [r8]
	test	rsi, rsi
	lea	rsi, [rsi]
	js	.label_2474
	nop	dword ptr [rax + rax]
.label_2490:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + rsi*8]
	cmp	rcx, rax
	jle	.label_2484
	test	rsi, rsi
	mov	rsp, rsp
	lea	rsi, [rsi - 1]
	nop	
	jg	.label_2490
	mov	rbp, rbp
	jmp	.label_2474
.label_2484:
	test	rsi, rsi
	js	.label_2474
	cmp	rcx, rax
	je	.label_2481
	nop	dword ptr [rax + rax]
.label_2474:
	mov	rbp, rbp
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_2481:
	mov	rbp, rbp
	test	rdx, rdx
	jle	.label_2476
	cmp	rdi, 2
	lea	rdi, [rdi]
	jge	.label_2489
.label_2476:
	mov	rcx, qword ptr [r12 + 8]
	mov	r11, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r14 + 8]
	lea	r14, [rcx + r11 - 1]
	add	r14, rdx
	mov	rax, r14
	sub	rax, r9
	lea	r10, [rax + 1]
	lea	rsi, [rax + rcx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 8], rsi
	lea	rdi, [rdi]
	test	rcx, rcx
	jle	.label_2482
	nop	
	test	rax, rax
	js	.label_2482
	lea	rdi, [rdi]
	add	r11, rdx
	mov	rbp, rbp
	add	r11, rcx
	dec	rcx
	sub	r11, r9
	xor	edx, edx
.label_2491:
	mov	rsp, rsp
	mov	rdi, qword ptr [r8]
	lea	rax, [rdi + r11*8]
	nop	dword ptr [rax + rax]
.label_2486:
	mov	rsi, qword ptr [rdi + r14*8]
	nop	
	mov	rbx, qword ptr [rdi + rcx*8]
	mov	rbp, rbp
	cmp	rsi, rbx
	lea	rdi, [rdi]
	jg	.label_2477
	mov	qword ptr [rax + rcx*8], rbx
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	lea	rdi, [rdi]
	jg	.label_2486
	jmp	.label_2478
.label_2477:
	mov	rsp, rsp
	dec	r14
	nop	
	dec	r11
	lea	rax, [r10 + rcx]
	dec	r10
	mov	qword ptr [rdi + rax*8], rsi
	nop	
	jne	.label_2491
	mov	rbp, rbp
	jmp	.label_2485
.label_2482:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r8]
.label_2478:
	mov	rdx, r10
.label_2485:
	lea	rsi, [rdi + r9*8]
	lea	rsi, [rsi]
	shl	rdx, 3
	call	memcpy
	lea	rdi, [rdi]
	xor	eax, eax
.label_2473:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x420be0

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
	mov	qword ptr [rsp + 0x40], rcx
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x38]
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], 0
	nop	
	lea	rdx, [r15 + r15*2]
	mov	rsp, rsp
	mov	r9, qword ptr [rcx + rdx*8 + 8]
	test	r9, r9
	jle	.label_2512
	lea	rsi, [rsi]
	lea	rax, [rcx + rdx*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	lea	r14, [rcx + rdx*8 + 0x10]
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_2509:
	mov	rbp, rbp
	mov	r11, qword ptr [r14]
	mov	rbp, rbp
	mov	rcx, qword ptr [r11 + r13*8]
	lea	rsi, [rsi]
	cmp	rcx, r15
	je	.label_2495
	mov	rdx, qword ptr [rdi]
	mov	rax, rcx
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	test	byte ptr [rdx + rax + 8], 8
	je	.label_2495
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + r8*8 + 0x10]
	nop	
	mov	rsi, qword ptr [rcx]
	mov	rbp, rbp
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	lea	rdi, [rdi]
	jl	.label_2503
	mov	rsp, rsp
	mov	r10, qword ptr [rcx + 8]
.label_2503:
	test	r9, r9
	lea	rsi, [rsi]
	jle	.label_2500
	mov	rcx, r9
	dec	rcx
	mov	rbp, rbp
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_2515
	nop	
.label_2519:
	mov	rbp, rbp
	lea	rbx, [rbp + rcx]
	lea	rdi, [rdi]
	shr	rbx, 1
	lea	rdi, [rdi]
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rax, [rbx + 1]
	mov	rbp, rbp
	cmovl	rbp, rax
	nop	
	cmovge	rcx, rbx
	mov	rsp, rsp
	cmp	rbp, rcx
	jb	.label_2519
.label_2515:
	cmp	rbp, -1
	je	.label_2500
	lea	rsi, [rsi]
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2502
.label_2500:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	jle	.label_2502
	lea	rdi, [rdi]
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	mov	ecx, 0
	je	.label_2498
	nop	word ptr cs:[rax + rax]
.label_2510:
	lea	rax, [rcx + rbp]
	mov	rbp, rbp
	shr	rax, 1
	nop	
	cmp	qword ptr [rbx + rax*8], rsi
	lea	rdx, [rax + 1]
	lea	rdi, [rdi]
	cmovl	rcx, rdx
	cmovge	rbp, rax
	mov	rsp, rsp
	cmp	rcx, rbp
	mov	rbp, rbp
	jb	.label_2510
.label_2498:
	lea	rdi, [rdi]
	cmp	rcx, -1
	nop	
	je	.label_2502
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdi, [rdi]
	je	.label_2497
.label_2502:
	test	r10, r10
	jle	.label_2495
	test	r9, r9
	mov	rsp, rsp
	jle	.label_2504
	mov	rbp, r9
	mov	rsp, rsp
	dec	rbp
	mov	ecx, 0
	lea	rdi, [rdi]
	je	.label_2506
	nop	word ptr cs:[rax + rax]
.label_2513:
	lea	rax, [rcx + rbp]
	shr	rax, 1
	cmp	qword ptr [r11 + rax*8], r10
	mov	rbp, rbp
	lea	rdx, [rax + 1]
	mov	rsp, rsp
	cmovl	rcx, rdx
	cmovge	rbp, rax
	mov	rbp, rbp
	cmp	rcx, rbp
	lea	rdi, [rdi]
	jb	.label_2513
.label_2506:
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_2504
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdi, [rdi]
	je	.label_2495
.label_2504:
	mov	rsi, qword ptr [r12 + 8]
	mov	rbp, rbp
	test	rsi, rsi
	jle	.label_2495
	mov	rbp, rbp
	dec	rsi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r12 + 0x10]
	mov	ecx, 0
	je	.label_2508
	nop	word ptr cs:[rax + rax]
.label_2514:
	nop	
	lea	rax, [rcx + rsi]
	shr	rax, 1
	cmp	qword ptr [rbp + rax*8], r10
	lea	rdx, [rax + 1]
	cmovl	rcx, rdx
	mov	rsp, rsp
	cmovge	rsi, rax
	cmp	rcx, rsi
	mov	rbp, rbp
	jb	.label_2514
.label_2508:
	cmp	rcx, -1
	je	.label_2495
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rsi, [rsi]
	jne	.label_2495
.label_2497:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x38]
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdx, [rax + r8*8]
	nop	
	lea	rdi, [rsp + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	nop	
	mov	ebp, eax
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_2507
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rax]
	mov	rdi, rbx
	nop	word ptr [rax + rax]
.label_2495:
	inc	r13
	cmp	r13, r9
	jl	.label_2509
	test	r9, r9
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	jle	.label_2512
	lea	r8, [rsp + 0x30]
	mov	rsp, rsp
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	lea	r11, [r10 - 1]
	lea	rsi, [rsi]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_2505:
	lea	rsi, [rsi]
	test	r10, r10
	lea	rsi, [rsi]
	mov	rax, qword ptr [r9 + r13*8]
	jle	.label_2496
	lea	rsi, [rsi]
	test	r11, r11
	lea	rsi, [rsi]
	mov	rdx, r11
	mov	rbp, rbp
	mov	ecx, 0
	je	.label_2501
	nop	word ptr cs:[rax + rax]
.label_2492:
	lea	rdi, [rdi]
	lea	rdi, [rcx + rdx]
	mov	rbp, rbp
	shr	rdi, 1
	mov	rbp, rbp
	cmp	qword ptr [rsi + rdi*8], rax
	lea	rbx, [rdi + 1]
	mov	rsp, rsp
	cmovl	rcx, rbx
	lea	rsi, [rsi]
	cmovge	rdx, rdi
	mov	rsp, rsp
	cmp	rcx, rdx
	jb	.label_2492
.label_2501:
	lea	rdi, [rdi]
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_2496
	cmp	qword ptr [rsi + rcx*8], rax
	mov	rsp, rsp
	je	.label_2494
.label_2496:
	mov	rsp, rsp
	mov	r14, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	r14, r14
	jle	.label_2494
	mov	r15, r14
	dec	r15
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdi, r15
	mov	edx, 0
	je	.label_2499
	nop	word ptr cs:[rax + rax]
.label_2493:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	mov	rbp, rbp
	cmp	qword ptr [rcx + rbx*8], rax
	lea	rbp, [rbx + 1]
	lea	rdi, [rdi]
	cmovl	rdx, rbp
	cmovge	rdi, rbx
	cmp	rdx, rdi
	nop	
	jb	.label_2493
.label_2499:
	cmp	qword ptr [rcx + rdx*8], rax
	mov	rax, rdx
	mov	rbp, rbp
	je	.label_2518
	nop	
	mov	rax, -1
.label_2518:
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_2494
	cmp	r14, rax
	jle	.label_2494
	mov	qword ptr [r12 + 8], r15
	cmp	r15, rax
	jle	.label_2494
	nop	
.label_2517:
	nop	
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	nop	
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, qword ptr [r12 + 8]
	jl	.label_2517
	nop	dword ptr [rax + rax]
.label_2494:
	inc	r13
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r13, qword ptr [rax]
	mov	rsp, rsp
	jl	.label_2505
	jmp	.label_2511
.label_2512:
	mov	rbp, rbp
	lea	r8, [rsp + 0x30]
.label_2511:
	mov	rdi, qword ptr [r8]
	call	free
	xor	ebp, ebp
.label_2516:
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_2507:
	nop	
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	jmp	.label_2516
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x421080

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
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rsi, rcx
	mov	rbp, rbp
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2521
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_2522:
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
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x18]
	nop	
	mov	r9, qword ptr [rsp + 8]
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
	mov	r9, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	rbp, rbp
	mov	al, 1
	jne	.label_2520
	nop	
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	mov	rsp, rsp
	jl	.label_2522
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_2520
.label_2521:
	lea	rdi, [rdi]
	xor	eax, eax
.label_2520:
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
	#Procedure 0x4211c0

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
	jg	.label_2523
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	rbp, rbp
	mov	eax, 1
	cmp	r10, r8
	mov	rbp, rbp
	jl	.label_2523
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
	je	.label_2523
	lea	rsi, [rsi]
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_2523:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x421230

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
	mov	qword ptr [rsp + 0x28], rcx
	mov	r12, rdx
	mov	ebx, esi
	mov	qword ptr [rsp], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_2535
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	eax, 1
	mov	cl, r12b
	nop	
	shl	rax, cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	eax, ebx
	mov	rbp, rbp
	and	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], eax
	shr	eax, 1
	cmp	r12, 0x3f
	setg	cl
	or	cl, al
	nop	
	mov	byte ptr [rsp + 0x3f], cl
	mov	eax, ebx
	nop	
	and	eax, 1
	mov	dword ptr [rsp + 0x1c], eax
	lea	rsi, [rsi]
	xor	r15d, r15d
	jmp	.label_2536
.label_2528:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0x3f], 0
	lea	rdi, [rdi]
	je	.label_2533
	nop	
.label_2541:
	mov	rsp, rsp
	cmp	qword ptr [r14], r13
	mov	rsp, rsp
	jne	.label_2524
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	nop	
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rsp + 0x28]
	je	.label_2527
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	rsp, rsp
	mov	ecx, eax
	test	ecx, ecx
	je	.label_2538
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	cmp	ecx, -1
	mov	rbp, rbp
	jne	.label_2524
	jmp	.label_2531
	nop	word ptr cs:[rax + rax]
.label_2538:
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	dword ptr [rsp + 0x18], 0
	jne	.label_2531
.label_2524:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	lea	rsi, [rsi]
	jne	.label_2541
	jmp	.label_2526
	nop	word ptr [rax + rax]
.label_2533:
	cmp	qword ptr [r14], r13
	jne	.label_2530
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	lea	rcx, [r13 + r13*2]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x28]
	je	.label_2527
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp]
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos_1
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	je	.label_2540
	mov	rsp, rsp
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmp	ecx, -1
	mov	rsp, rsp
	jne	.label_2530
	mov	rsp, rsp
	jmp	.label_2531
	nop	
.label_2540:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x30]
	nop	
	and	ecx, eax
	mov	rbp, rbp
	mov	word ptr [r14 + 0x22], cx
.label_2530:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	nop	
	jne	.label_2533
	jmp	.label_2526
	nop	dword ptr [rax]
.label_2536:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	r13, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r13
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	lea	rsi, [rsi]
	cmp	eax, 9
	nop	
	je	.label_2537
	cmp	eax, 8
	nop	
	je	.label_2542
	cmp	eax, 4
	jne	.label_2526
	nop	
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_2526
	mov	rax, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	lea	r14, [rax + rax*4]
	nop	
	shl	r14, 3
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	add	r14, qword ptr [rax + 0xd8]
	cmp	r12, 0x3f
	lea	rdi, [rdi]
	jg	.label_2528
	nop	
.label_2543:
	cmp	qword ptr [r14], r13
	jne	.label_2525
	lea	rsi, [rsi]
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	je	.label_2525
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	lea	rcx, [r13 + r13*2]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x28]
	je	.label_2527
	nop	
	mov	rdi, qword ptr [rsp]
	mov	rbp, rbp
	mov	esi, ebx
	mov	rdx, r12
	nop	
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	call	check_dst_limits_calc_pos_1
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	test	ecx, ecx
	je	.label_2532
	mov	eax, 0xffffffff
	cmp	ecx, -1
	jne	.label_2534
	jmp	.label_2531
.label_2532:
	cmp	byte ptr [rsp + 0x3f], 0
	je	.label_2534
	xor	eax, eax
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_2525
	mov	rbp, rbp
	jmp	.label_2531
	nop	word ptr cs:[rax + rax]
.label_2534:
	mov	rsp, rsp
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	and	ecx, eax
	nop	
	mov	word ptr [r14 + 0x22], cx
.label_2525:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_2543
	lea	rdi, [rdi]
	jmp	.label_2526
	nop	dword ptr [rax]
.label_2537:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_2526
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_2529
	nop	
.label_2542:
	cmp	dword ptr [rsp + 0x1c], 0
	mov	rsp, rsp
	je	.label_2526
	mov	eax, 0xffffffff
.label_2529:
	mov	rsp, rsp
	cmp	qword ptr [rcx], r12
	je	.label_2531
.label_2526:
	mov	rbp, rbp
	inc	r15
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r15, qword ptr [rax]
	lea	rsi, [rsi]
	jl	.label_2536
.label_2535:
	shr	ebx, 1
	and	ebx, 1
	jmp	.label_2539
.label_2527:
	nop	
	shl	ebx, 0x1f
	sar	ebx, 0x1f
.label_2539:
	nop	
	mov	eax, ebx
.label_2531:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x421600

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
	jne	.label_2544
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_2545
	test	cl, cl
	mov	rsp, rsp
	jne	.label_2545
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_2545
.label_2544:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_2545
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_2545:
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
	#Procedure 0x421690

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
	je	.label_2547
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_2546
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_2548
.label_2546:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_2547
.label_2548:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_2547:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4216e0

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
	je	.label_2549
	nop	
	mov	rax, rcx
.label_2549:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x421720
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	mov	rbp, rbp
	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_2550
	lea	rdi, [rdi]
	mov	edi, ebx
	call	iswcntrl
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
.label_2550:
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x421750
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
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	mov	rbp, rbp
	cmp	rsi, rax
	mov	rsp, rsp
	jne	.label_2551
	mov	rbp, rbp
	lea	r15, [r14 + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_2551:
	mov	qword ptr [r14], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 0x10], al
	mov	rsp, rsp
	je	.label_2552
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_2552:
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4217d0
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
	#Procedure 0x421800

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
	js	.label_2553
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_2555
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
	je	.label_2553
.label_2555:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_2553
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_2554
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_2554:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_2553:
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
	#Procedure 0x4218b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2556
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_2556
	test	byte ptr [rbx + 1], 1
	je	.label_2556
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_2556:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4218f0

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
	jne	.label_2557
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_2557
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_2558
.label_2557:
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
.label_2558:
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
	je	.label_2559
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_2559:
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
	#Procedure 0x4219a0

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