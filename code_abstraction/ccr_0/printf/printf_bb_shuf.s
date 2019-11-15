	.section	.text
	.align	32
	#Procedure 0x401629
	.globl sub_401629
	.type sub_401629, @function
sub_401629:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40162a
	.globl sub_40162a
	.type sub_40162a, @function
sub_40162a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401662
	.globl sub_401662
	.type sub_401662, @function
sub_401662:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016aa
	.globl sub_4016aa
	.type sub_4016aa, @function
sub_4016aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016cc
	.globl sub_4016cc
	.type sub_4016cc, @function
sub_4016cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4016dd
	.globl sub_4016dd
	.type sub_4016dd, @function
sub_4016dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4016f6
	.globl sub_4016f6
	.type sub_4016f6, @function
sub_4016f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401700

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401772
	.globl sub_401772
	.type sub_401772, @function
sub_401772:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401780
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
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
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4017ad
	.globl sub_4017ad
	.type sub_4017ad, @function
sub_4017ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017b0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_9
	call	abort
.label_9:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401814
	.globl sub_401814
	.type sub_401814, @function
sub_401814:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401820

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_15
	jmp	.label_21
.label_21:
	movabs	rdi, OFFSET FLAT:label_22
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_19
.label_15:
	movabs	rdi, OFFSET FLAT:label_20
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_23
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_10
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_16
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_11
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_17
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_12
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_18
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_18
	mov	dword ptr [rbp - 0x38], eax
	call	emit_ancillary_info
.label_19:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4019ca
	.globl sub_4019ca
	.type sub_4019ca, @function
sub_4019ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019fa
	.globl sub_4019fa
	.type sub_4019fa, @function
sub_4019fa:

	nop	word ptr [rax + rax]
.label_34:
	jmp	.label_24
.label_24:
	mov	dword ptr [rbp - 4], 0xfffffffe
.label_28:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a11
	.globl sub_401a11
	.type sub_401a11, @function
sub_401a11:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a18

	.globl u8_uctomb
	.type u8_uctomb, @function
u8_uctomb:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	dword ptr [rbp - 0x18], edx
	cmp	dword ptr [rbp - 0x14], 0x80
	jae	.label_31
	cmp	dword ptr [rbp - 0x18], 0
	jle	.label_40
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx], cl
	mov	dword ptr [rbp - 4], 1
	jmp	.label_28
.label_36:
	jmp	.label_30
.label_30:
	jmp	.label_26
.label_26:
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rbp - 0x1c]
	jl	.label_34
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x20], eax
	mov	dword ptr [rbp - 0x24], ecx
	je	.label_38
	jmp	.label_43
.label_43:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 3
	mov	dword ptr [rbp - 0x28], eax
	je	.label_29
	jmp	.label_39
.label_39:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 4
	mov	dword ptr [rbp - 0x2c], eax
	jne	.label_27
	jmp	.label_35
.label_35:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x3f
	or	eax, 0x80
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 3], cl
	mov	eax, dword ptr [rbp - 0x14]
	shr	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	or	eax, 0x10000
	mov	dword ptr [rbp - 0x14], eax
.label_29:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x3f
	or	eax, 0x80
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 2], cl
	mov	eax, dword ptr [rbp - 0x14]
	shr	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	or	eax, 0x800
	mov	dword ptr [rbp - 0x14], eax
.label_38:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x3f
	or	eax, 0x80
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 1], cl
	mov	eax, dword ptr [rbp - 0x14]
	shr	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	or	eax, 0xc0
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx], cl
.label_27:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_28
.label_31:
	cmp	dword ptr [rbp - 0x14], 0x800
	jae	.label_42
	mov	dword ptr [rbp - 0x1c], 2
	jmp	.label_26
.label_40:
	jmp	.label_24
.label_25:
	jmp	.label_30
.label_42:
	cmp	dword ptr [rbp - 0x14], 0x10000
	jae	.label_33
	cmp	dword ptr [rbp - 0x14], 0xd800
	jb	.label_37
	cmp	dword ptr [rbp - 0x14], 0xe000
	jb	.label_41
.label_37:
	mov	dword ptr [rbp - 0x1c], 3
	jmp	.label_25
.label_41:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_28
.label_33:
	cmp	dword ptr [rbp - 0x14], 0x110000
	jae	.label_32
	mov	dword ptr [rbp - 0x1c], 4
	jmp	.label_36
.label_32:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_28
.label_45:
	call	__errno_location
	lea	rsi, [rbp - 0x10]
	xor	edx, edx
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strtoimax
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	verify_numeric
.label_44:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bf5
	.globl sub_401bf5
	.type sub_401bf5, @function
sub_401bf5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401bfc

	.globl vstrtoimax
	.type vstrtoimax, @function
vstrtoimax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x22
	je	.label_47
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	jne	.label_45
.label_47:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_45
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, byte ptr [rbp - 0x19]
	mov	eax, esi
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	esi, byte ptr [rax + 1]
	cmp	esi, 0
	je	.label_46
	test	byte ptr [byte ptr [posixly_correct]],  1
	jne	.label_46
	mov	rdi,  qword ptr [word ptr [cfcc_msg]]
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	al, 0
	call	error
.label_46:
	jmp	.label_44
.label_50:
	mov	dword ptr [rbp - 4], 0
.label_49:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cc0
	.globl sub_401cc0
	.type sub_401cc0, @function
sub_401cc0:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401cc7

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_48
	test	byte ptr [rbp - 0x13], 1
	je	.label_50
	test	byte ptr [rbp - 0x11], 1
	jne	.label_48
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_50
.label_48:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_51
	call	__errno_location
	mov	dword ptr [rax], 0
.label_51:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_49
	.section	.text
	.align	32
	#Procedure 0x401d60
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d76
	.globl sub_401d76
	.type sub_401d76, @function
sub_401d76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d80
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
	jb	.label_52
	jmp	.label_55
.label_55:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_53
	jmp	.label_52
.label_52:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_54
.label_53:
	mov	byte ptr [rbp - 1], 0
.label_54:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401dce
	.globl sub_401dce
	.type sub_401dce, @function
sub_401dce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401dd0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_56
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_56:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f34
	.globl sub_401f34
	.type sub_401f34, @function
sub_401f34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f40

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_57
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_60
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_60:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_59
	call	xalloc_die
.label_61:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_58:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402001
	.globl sub_402001
	.type sub_402001, @function
sub_402001:

	nop	word ptr [rax + rax]
.label_57:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_61
	call	xalloc_die
.label_59:
	jmp	.label_58
	.section	.text
	.align	32
	#Procedure 0x402030

	.globl fwrite_success_callback
	.type fwrite_success_callback, @function
fwrite_success_callback:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	call	fwrite
	xor	r8d, r8d
	mov	ecx, r8d
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, rcx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402082
	.globl sub_402082
	.type sub_402082, @function
sub_402082:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402090

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020af
	.globl sub_4020af
	.type sub_4020af, @function
sub_4020af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4020b0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020e7
	.globl sub_4020e7
	.type sub_4020e7, @function
sub_4020e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020f0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40211f
	.globl sub_40211f
	.type sub_40211f, @function
sub_40211f:

	nop	
.label_73:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_62
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_62:
	movabs	rdi, OFFSET FLAT:label_72
	call	gettext
	movabs	rsi, OFFSET FLAT:label_67
	movabs	rdx, OFFSET FLAT:label_68
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_63
	movabs	rsi, OFFSET FLAT:label_66
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_63
	movabs	rdi, OFFSET FLAT:label_69
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_63:
	movabs	rdi, OFFSET FLAT:label_70
	call	gettext
	movabs	rsi, OFFSET FLAT:label_68
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_71
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_64
	movabs	rsi, OFFSET FLAT:label_65
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402245
	.globl sub_402245
	.type sub_402245, @function
sub_402245:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40224c

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_76:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_75
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_75:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_74
	jmp	.label_73
.label_74:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_76
.label_78:
	mov	byte ptr [rbp - 1], 0
.label_79:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022ce
	.globl sub_4022ce
	.type sub_4022ce, @function
sub_4022ce:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022dc
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_78
	jmp	.label_77
.label_77:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_79
.label_81:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_80
.label_80:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40231e
	.globl sub_40231e
	.type sub_40231e, @function
sub_40231e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402327
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_81
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_80
	.section	.text
	.align	32
	#Procedure 0x402350

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_82
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_82:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_84
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_83
.label_84:
	call	abort
.label_83:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
.label_85:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_91:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_87:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_88
	jmp	.label_86
.label_88:
	jmp	.label_89
.label_89:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_90
	.section	.text
	.align	32
	#Procedure 0x402426

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_90:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_87
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_85
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_91
.label_86:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024c9
	.globl sub_4024c9
	.type sub_4024c9, @function
sub_4024c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4024d0
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
	jb	.label_92
	jmp	.label_94
.label_94:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_92
	jmp	.label_93
.label_93:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_95
	jmp	.label_92
.label_92:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_96
.label_95:
	mov	byte ptr [rbp - 1], 0
.label_96:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402535
	.globl sub_402535
	.type sub_402535, @function
sub_402535:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402540
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_97
	jmp	.label_99
.label_99:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_98
.label_97:
	mov	byte ptr [rbp - 1], 0
.label_98:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40256f
	.globl sub_40256f
	.type sub_40256f, @function
sub_40256f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402570

	.globl unicode_to_mb
	.type unicode_to_mb, @function
unicode_to_mb:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	dword ptr [dword ptr [unicode_to_mb.initialized]],  0
	jne	.label_110
	call	locale_charset
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	ecx, OFFSET FLAT:label_102
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [dword ptr [unicode_to_mb.is_utf8]],  eax
	cmp	dword ptr [dword ptr [unicode_to_mb.is_utf8]],  0
	jne	.label_111
	movabs	rsi, OFFSET FLAT:label_102
	mov	rdi, qword ptr [rbp - 0x40]
	call	iconv_open
	mov	rsi, -1
	mov	qword ptr [word ptr [unicode_to_mb.utf8_to_local]],  rax
	cmp	qword ptr [word ptr [unicode_to_mb.utf8_to_local]],  rsi
	jne	.label_112
	movabs	rdi, OFFSET FLAT:label_101
	movabs	rsi, OFFSET FLAT:label_102
	call	iconv_open
	mov	qword ptr [word ptr [unicode_to_mb.utf8_to_local]],  rax
.label_112:
	jmp	.label_111
.label_111:
	mov	dword ptr [dword ptr [unicode_to_mb.initialized]],  1
.label_110:
	cmp	dword ptr [dword ptr [unicode_to_mb.is_utf8]],  0
	jne	.label_113
	mov	rax, -1
	cmp	qword ptr [word ptr [unicode_to_mb.utf8_to_local]],  rax
	jne	.label_100
	movabs	rsi, OFFSET FLAT:label_108
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x28]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_107
.label_100:
	jmp	.label_113
.label_113:
	mov	edx, 6
	lea	rdi, [rbp - 0x2e]
	mov	esi, dword ptr [rbp - 0xc]
	call	u8_uctomb
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_105
	movabs	rsi, OFFSET FLAT:label_109
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x28]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_107
.label_114:
	lea	rdi, [rbp - 0x2e]
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x28]
	call	rax
	mov	qword ptr [rbp - 8], rax
.label_107:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026df
	.globl sub_4026df
	.type sub_4026df, @function
sub_4026df:

	nop	word ptr cs:[rax + rax]
.label_104:
	lea	rax, [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x78]
	sub	rdx, rax
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x98], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x98]
	call	rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_107
.label_106:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x78]
	lea	r8, [rbp - 0x80]
	mov	rdi,  qword ptr [word ptr [unicode_to_mb.utf8_to_local]]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x90]
	call	iconv
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], -1
	jne	.label_104
	xor	eax, eax
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x28]
	call	rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_107
.label_105:
	cmp	dword ptr [dword ptr [unicode_to_mb.is_utf8]],  0
	jne	.label_114
	lea	rsi, [rbp - 0x68]
	lea	rdx, [rbp - 0x70]
	lea	rcx, [rbp - 0x78]
	lea	r8, [rbp - 0x80]
	lea	rax, [rbp - 0x60]
	lea	rdi, [rbp - 0x2e]
	mov	qword ptr [rbp - 0x68], rdi
	movsxd	rdi, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x70], rdi
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x80], 0x19
	mov	rdi,  qword ptr [word ptr [unicode_to_mb.utf8_to_local]]
	call	iconv
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x70], 0
	ja	.label_103
	cmp	qword ptr [rbp - 0x88], -1
	jne	.label_106
.label_103:
	xor	eax, eax
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x28]
	call	rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_107
	.section	.text
	.align	32
	#Procedure 0x402800
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402827
	.globl sub_402827
	.type sub_402827, @function
sub_402827:

	nop	word ptr [rax + rax]
.label_116:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_115
.label_115:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402874
	.globl sub_402874
	.type sub_402874, @function
sub_402874:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402882
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_116
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_115
.label_119:
	call	__errno_location
	lea	rsi, [rbp - 0x10]
	xor	edx, edx
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strtoumax
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	verify_numeric
.label_117:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028e5
	.globl sub_4028e5
	.type sub_4028e5, @function
sub_4028e5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4028ec

	.globl vstrtoumax
	.type vstrtoumax, @function
vstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x22
	je	.label_120
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	jne	.label_119
.label_120:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_119
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, byte ptr [rbp - 0x19]
	mov	eax, esi
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	esi, byte ptr [rax + 1]
	cmp	esi, 0
	je	.label_118
	test	byte ptr [byte ptr [posixly_correct]],  1
	jne	.label_118
	mov	rdi,  qword ptr [word ptr [cfcc_msg]]
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	al, 0
	call	error
.label_118:
	jmp	.label_117
	.section	.text
	.align	32
	#Procedure 0x4029a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029c0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
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
	#Procedure 0x4029f3
	.globl sub_4029f3
	.type sub_4029f3, @function
sub_4029f3:

	nop	word ptr cs:[rax + rax]
.label_122:
	mov	byte ptr [rbp - 1], 0
.label_123:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a0e
	.globl sub_402a0e
	.type sub_402a0e, @function
sub_402a0e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a1c
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_122
	jmp	.label_121
.label_121:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_123
	.section	.text
	.align	32
	#Procedure 0x402a40
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_124
	call	gettext
	movabs	rsi, OFFSET FLAT:label_126
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_127
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_67
	movabs	rdx, OFFSET FLAT:label_68
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_125
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ac6
	.globl sub_402ac6
	.type sub_402ac6, @function
sub_402ac6:

	nop	
	nop	dword ptr [rax + rax]
.label_197:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_272:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_254
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_254
	test	byte ptr [rbp - 0x7b], 1
	je	.label_286
	jmp	.label_152
.label_746:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_199
.label_322:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_239
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_239
	test	byte ptr [rbp - 0x7d], 1
	je	.label_239
	test	byte ptr [rbp - 0x7e], 1
	je	.label_316
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_178
.label_755:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_308
	jmp	.label_314
.label_314:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_315
	jmp	.label_320
.label_253:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_322
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_322
	test	byte ptr [rbp - 0x7b], 1
	je	.label_322
	jmp	.label_152
.label_140:
	test	byte ptr [rbp - 0x81], 1
	je	.label_313
	jmp	.label_259
.label_259:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_134
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_134:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_313:
	jmp	.label_136
.label_136:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_137
	jmp	.label_265
.label_743:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_145
	movabs	rdi, OFFSET FLAT:label_247
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_154
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_145:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_139
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_296:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_310
	jmp	.label_164
.label_164:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_225
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_225:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_171
.label_171:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_296
.label_744:
	test	byte ptr [rbp - 0x79], 1
	je	.label_179
	jmp	.label_180
.label_180:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_238
	jmp	.label_152
.label_310:
	jmp	.label_139
.label_139:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_191
.label_751:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_196
.label_297:
	jmp	.label_199
.label_199:
	test	byte ptr [rbp - 0x79], 1
	je	.label_201
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_203
.label_288:
	jmp	.label_150
.label_318:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_206
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_150
.label_741:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_740:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_212
	jmp	.label_216
.label_216:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_218
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_218:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_212
.label_212:
	movabs	rax, OFFSET FLAT:label_227
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_191
.label_316:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_235
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_235
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_237
.label_330:
	jmp	.label_242
.label_242:
	jmp	.label_190
.label_190:
	jmp	.label_135
.label_246:
	jmp	.label_135
.label_747:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_196
.label_745:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_199
.label_308:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_246
	jmp	.label_152
.label_179:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_249
	jmp	.label_153
.label_194:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_252
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_252:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_261
.label_261:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_266
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_266:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_270
.label_270:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_273
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_273:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_278
.label_278:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_281
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_281:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_242
.label_753:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_129
.label_293:
	jmp	.label_129
.label_128:
	jmp	.label_290
.label_290:
	mov	byte ptr [rbp - 0x83], 1
.label_752:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_293
	test	byte ptr [rbp - 0x7b], 1
	je	.label_293
	jmp	.label_152
.label_295:
	jmp	.label_196
.label_196:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_297
	test	byte ptr [rbp - 0x7b], 1
	je	.label_297
	jmp	.label_152
.label_315:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_190
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_190
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_190
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_186
	jmp	.label_260
.label_260:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_186
	jmp	.label_325
.label_325:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_186
	jmp	.label_329
.label_329:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_186
	jmp	.label_130
.label_130:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_330
	jmp	.label_186
.label_186:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_194
	jmp	.label_152
.label_137:
	jmp	.label_141
.label_141:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_142
	test	byte ptr [rbp - 0x82], 1
	jne	.label_142
	jmp	.label_149
.label_149:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_151
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_151:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_157
.label_157:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_160
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_160:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_142:
	jmp	.label_167
.label_167:
	jmp	.label_168
.label_168:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_169
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_169:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_174
.label_326:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_185
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_185
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_185:
	jmp	.label_195
.label_195:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_198
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_198:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_204
.label_204:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_207
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_207:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_172
.label_172:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_217
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_217:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_294:
	jmp	.label_129
.label_271:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_231
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_231
	mov	qword ptr [rbp - 0xb8], 1
.label_258:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_236
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_219
	jmp	.label_245
.label_245:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_219
	jmp	.label_250
.label_250:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_219
	jmp	.label_255
.label_255:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_256
	jmp	.label_219
.label_219:
	jmp	.label_152
.label_191:
	mov	qword ptr [rbp - 0x58], 0
.label_133:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_264
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_267
.label_206:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_271
	mov	byte ptr [rbp - 0x91], 0
.label_289:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_275
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_275:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_285
	jmp	.label_288
.label_285:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_289
.label_211:
	test	byte ptr [rbp - 0x79], 1
	je	.label_295
	test	byte ptr [rbp - 0x7b], 1
	je	.label_295
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_295
	jmp	.label_262
.label_750:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_199
.label_283:
	jmp	.label_203
.label_203:
	jmp	.label_301
.label_301:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_302
	jmp	.label_152
.label_161:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_162
.label_165:
	jmp	.label_129
.label_236:
	jmp	.label_231
.label_231:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_309
	mov	byte ptr [rbp - 0x91], 0
.label_309:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_312
.label_312:
	jmp	.label_319
.label_319:
	jmp	.label_321
.label_321:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_305
.label_150:
	jmp	.label_251
.label_251:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_327
	test	byte ptr [rbp - 0x79], 1
	je	.label_132
	test	byte ptr [rbp - 0x91], 1
	jne	.label_132
.label_327:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_174:
	test	byte ptr [rbp - 0x79], 1
	je	.label_140
	test	byte ptr [rbp - 0x91], 1
	jne	.label_140
	jmp	.label_146
.label_146:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_148
	jmp	.label_152
.label_286:
	mov	byte ptr [rbp - 0x81], 1
.label_254:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_155
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_317]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x4034b0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_237:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_230
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_208]]
	jmp	rcx
.label_756:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_211
	test	byte ptr [rbp - 0x7b], 1
	je	.label_189
	jmp	.label_152
.label_749:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_199
.label_738:
	mov	byte ptr [rbp - 0x79], 1
.label_737:
	mov	byte ptr [rbp - 0x7b], 1
.label_739:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_224
	mov	byte ptr [rbp - 0x79], 1
.label_224:
	jmp	.label_226
.label_226:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_228
	jmp	.label_232
.label_232:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_233
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_233:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_228
.label_228:
	movabs	rax, OFFSET FLAT:label_154
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_191
.label_736:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_191
.label_264:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_267:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_248
	jmp	.label_253
.label_248:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_254
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_254
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_254
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_197
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_197
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_272
.label_132:
	jmp	.label_129
.label_129:
	test	byte ptr [rbp - 0x79], 1
	je	.label_276
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_279
.label_276:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_280
.label_279:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_280
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_283
.label_280:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_283
	jmp	.label_262
.label_748:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_196
.label_265:
	jmp	.label_262
.label_243:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_299
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_299:
	jmp	.label_305
.label_305:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_318
	jmp	.label_150
.label_754:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_294
	test	byte ptr [rbp - 0x7b], 1
	je	.label_326
	jmp	.label_152
.label_162:
	jmp	.label_331
.label_331:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_128
	jmp	.label_129
.label_152:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_131
	test	byte ptr [rbp - 0x79], 1
	je	.label_131
	mov	dword ptr [rbp - 0x34], 4
.label_131:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_178:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40388c
	.globl sub_40388c
	.type sub_40388c, @function
sub_40388c:

	nop	dword ptr [rax + rax]
.label_757:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_161
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_162
	jmp	.label_165
.label_156:
	jmp	.label_147
.label_147:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_143
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_143:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_178
.label_238:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_175
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_175
	jmp	.label_181
.label_181:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_183
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_183:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_188
.label_188:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_192
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_192:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_202
.label_202:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_205
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_205:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_175:
	jmp	.label_213
.label_213:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_214
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_214:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_223
.label_223:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_221
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_221
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_221
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_221
	jmp	.label_240
.label_240:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_241
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_241:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_244
.label_244:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_182
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_182:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_221
.label_221:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_138
.label_256:
	jmp	.label_173
.label_173:
	jmp	.label_257
.label_257:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_258
.label_189:
	jmp	.label_262
.label_302:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_263
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_263
	jmp	.label_268
.label_268:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_269
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_269:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_274
.label_274:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_277
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_277:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_282
.label_282:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_284
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_284:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_263:
	jmp	.label_291
.label_291:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_292
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_292:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_306
.label_306:
	jmp	.label_262
.label_262:
	jmp	.label_298
.label_298:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_300
	test	byte ptr [rbp - 0x82], 1
	jne	.label_300
	jmp	.label_303
.label_303:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_304
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_304:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_307
.label_307:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_311
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_311:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_300:
	jmp	.label_323
.label_323:
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_287
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_287:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_328
	mov	byte ptr [rbp - 0x7e], 0
.label_328:
	jmp	.label_153
.label_153:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_133
.label_201:
	jmp	.label_129
.label_320:
	jmp	.label_135
.label_135:
	jmp	.label_129
.label_249:
	jmp	.label_138
.label_138:
	jmp	.label_129
.label_742:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_191
.label_235:
	jmp	.label_144
.label_144:
	jmp	.label_239
.label_239:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_147
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_147
	jmp	.label_166
.label_166:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_156
	jmp	.label_158
.label_158:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_159
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_159:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_163
.label_163:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_166
.label_148:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_170
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_170
	jmp	.label_176
.label_176:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_177
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_177:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_184
.label_184:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_187
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_187:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_193
.label_193:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_200
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_200:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_170:
	jmp	.label_209
.label_209:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_210
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_210:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_215
.label_215:
	jmp	.label_220
.label_220:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_222
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_222:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_229
.label_229:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_234
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_234:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_136
.label_155:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_243
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_251
.label_230:
	call	abort
.label_360:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax]
	mov	dl, byte ptr [rbp - 0x39]
	mov	r8d, dword ptr [rbp - 0x40]
	mov	r9b, byte ptr [rbp - 0x41]
	mov	r10d, dword ptr [rbp - 0x48]
	cmp	dword ptr [rbp - 0xc], 0
	mov	qword ptr [rbp - 0x1b0], rdi
	mov	qword ptr [rbp - 0x1b8], rsi
	mov	byte ptr [rbp - 0x1b9], cl
	mov	byte ptr [rbp - 0x1ba], dl
	mov	dword ptr [rbp - 0x1c0], r8d
	mov	byte ptr [rbp - 0x1c1], r9b
	mov	dword ptr [rbp - 0x1c8], r10d
	jg	.label_352
	movabs	rax, OFFSET FLAT:label_64
	mov	qword ptr [rbp - 0x1d0], rax
	jmp	.label_370
.label_378:
	jmp	.label_354
.label_354:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_355
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	byte ptr [rbp - 0xed], 0
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2a
	jne	.label_376
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [rbp - 0xc], 0
	jle	.label_338
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	call	vstrtoimax
	mov	qword ptr [rbp - 0x160], rax
	cmp	qword ptr [rbp - 0x160], 0
	jge	.label_347
	mov	dword ptr [rbp - 0x48], 0xffffffff
	jmp	.label_345
.label_361:
	mov	dword ptr [rbp - 0x40], 0
.label_346:
	mov	byte ptr [rbp - 0x39], 1
	jmp	.label_354
.label_351:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1d4], eax
.label_344:
	jmp	.label_362
.label_362:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_363
.label_338:
	mov	dword ptr [rbp - 0x48], 0
.label_350:
	mov	byte ptr [rbp - 0x41], 1
	jmp	.label_353
.label_358:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x62
	jne	.label_368
	cmp	dword ptr [rbp - 0xc], 0
	jle	.label_371
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	call	print_esc_string
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
.label_371:
	jmp	.label_344
.label_356:
	jmp	.label_336
.label_336:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_378
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_336
.label_347:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x160]
	jge	.label_333
	movabs	rdi, OFFSET FLAT:label_343
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x198], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_375:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2a
	jne	.label_356
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [rbp - 0xc], 0
	jle	.label_361
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	call	vstrtoimax
	mov	rdi, -0x80000000
	mov	qword ptr [rbp - 0x158], rax
	cmp	rdi, qword ptr [rbp - 0x158]
	jg	.label_369
	cmp	qword ptr [rbp - 0x158], 0x7fffffff
	jg	.label_369
	mov	rax, qword ptr [rbp - 0x158]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x40], ecx
	jmp	.label_374
.label_339:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x1f0
	pop	rbp
	ret	
.label_714:
	mov	byte ptr [rbp - 0xf8], 0
	mov	byte ptr [rbp - 0xd8], 0
	mov	byte ptr [rbp - 0xdd], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	byte ptr [rbp - 0x10b], 0
	mov	byte ptr [rbp - 0xeb], 0
	mov	byte ptr [rbp - 0xed], 0
	mov	byte ptr [rbp - 0x10f], 0
	mov	byte ptr [rbp - 0xef], 0
	jmp	.label_332
.label_333:
	mov	rax, qword ptr [rbp - 0x160]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x48], ecx
	jmp	.label_345
.label_345:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	jmp	.label_350
.label_377:
	jmp	.label_353
.label_353:
	jmp	.label_355
.label_355:
	jmp	.label_357
.label_357:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x6c
	mov	byte ptr [rbp - 0x199], al
	je	.label_359
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x4c
	mov	byte ptr [rbp - 0x199], al
	je	.label_359
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x68
	mov	byte ptr [rbp - 0x199], al
	je	.label_359
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x6a
	mov	byte ptr [rbp - 0x199], al
	je	.label_359
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x74
	mov	byte ptr [rbp - 0x199], al
	je	.label_359
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x7a
	sete	dl
	mov	byte ptr [rbp - 0x199], dl
.label_359:
	mov	al, byte ptr [rbp - 0x199]
	test	al, 1
	jne	.label_335
	jmp	.label_337
.label_335:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_357
.label_364:
	xor	esi, esi
	mov	eax, 0x100
	mov	edx, eax
	lea	rdi, [rbp - 0x150]
	call	memset
	mov	byte ptr [rbp - 0xf8], 1
	mov	byte ptr [rbp - 0xd8], 1
	mov	byte ptr [rbp - 0xdb], 1
	mov	byte ptr [rbp - 0xdd], 1
	mov	byte ptr [rbp - 0xe1], 1
	mov	byte ptr [rbp - 0xe7], 1
	mov	byte ptr [rbp - 0x109], 1
	mov	byte ptr [rbp - 0xe9], 1
	mov	byte ptr [rbp - 0x10a], 1
	mov	byte ptr [rbp - 0xea], 1
	mov	byte ptr [rbp - 0x10b], 1
	mov	byte ptr [rbp - 0xeb], 1
	mov	byte ptr [rbp - 0xec], 1
	mov	byte ptr [rbp - 0xed], 1
	mov	byte ptr [rbp - 0x10f], 1
	mov	byte ptr [rbp - 0xef], 1
.label_341:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x29
	mov	qword ptr [rbp - 0x180], rax
	mov	dword ptr [rbp - 0x184], ecx
	ja	.label_367
	mov	rax, qword ptr [rbp - 0x180]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_373]]
	jmp	rcx
.label_712:
	jmp	.label_332
.label_367:
	jmp	.label_375
	.section	.text
	.align	32
	#Procedure 0x4042f3

	.globl print_formatted
	.type print_formatted, @function
print_formatted:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x1c], esi
	mov	dword ptr [rbp - 0x40], 0
	mov	dword ptr [rbp - 0x48], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rdx
.label_363:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	je	.label_339
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x25
	mov	dword ptr [rbp - 0x168], ecx
	mov	dword ptr [rbp - 0x16c], edx
	je	.label_342
	jmp	.label_348
.label_348:
	mov	eax, dword ptr [rbp - 0x168]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x170], eax
	je	.label_349
	jmp	.label_351
.label_713:
	mov	byte ptr [rbp - 0xdb], 0
	mov	byte ptr [rbp - 0xdd], 0
	mov	byte ptr [rbp - 0xe7], 0
	mov	byte ptr [rbp - 0xec], 0
	mov	byte ptr [rbp - 0xed], 0
	jmp	.label_332
.label_368:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x71
	jne	.label_364
	cmp	dword ptr [rbp - 0xc], 0
	jle	.label_366
	mov	edi, 3
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	quotearg_style
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 8
	mov	qword ptr [rbp - 0x18], rsi
	mov	ecx, dword ptr [rbp - 0xc]
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	mov	dword ptr [rbp - 0x178], eax
.label_366:
	jmp	.label_344
.label_376:
	jmp	.label_334
.label_334:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_377
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_334
.label_332:
	jmp	.label_340
.label_340:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_341
.label_374:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	add	ecx, -1
	mov	dword ptr [rbp - 0xc], ecx
	jmp	.label_346
.label_349:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x28]
	call	print_esc
	mov	rdi, qword ptr [rbp - 0x28]
	movsxd	rcx, eax
	add	rdi, rcx
	mov	qword ptr [rbp - 0x28], rdi
	jmp	.label_344
.label_342:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x41], 0
	mov	byte ptr [rbp - 0x39], 0
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x25
	jne	.label_358
	mov	edi, 0x25
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x174], eax
	jmp	.label_344
.label_352:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -1
	mov	dword ptr [rbp - 0xc], eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x18], rdx
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x1d0], rcx
.label_370:
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	rcx, rsp
	mov	qword ptr [rcx + 8], rax
	mov	edx, dword ptr [rbp - 0x1c8]
	mov	dword ptr [rcx], edx
	mov	sil, byte ptr [rbp - 0x1b9]
	movsx	edx, sil
	mov	dil, byte ptr [rbp - 0x1ba]
	and	dil, 1
	movzx	ecx, dil
	mov	dil, byte ptr [rbp - 0x1c1]
	and	dil, 1
	movzx	r9d, dil
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rsi, qword ptr [rbp - 0x1b8]
	mov	r8d, dword ptr [rbp - 0x1c0]
	call	print_direc
	jmp	.label_344
.label_369:
	movabs	rdi, OFFSET FLAT:label_372
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x190], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_337:
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x161], cl
	movzx	edx, byte ptr [rbp - 0x161]
	mov	eax, edx
	cmp	byte ptr [rbp + rax - 0x150], 0
	jne	.label_360
	movabs	rdi, OFFSET FLAT:label_365
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	mov	rdx, qword ptr [rbp - 0x30]
	sub	rcx, rdx
	mov	r8d, ecx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rax
	mov	qword ptr [rbp - 0x1a8], rcx
	mov	ecx, r8d
	mov	r8, qword ptr [rbp - 0x1a8]
	mov	al, 0
	call	error
.label_715:
	mov	byte ptr [rbp - 0xdd], 0
	mov	byte ptr [rbp - 0xed], 0
	jmp	.label_332
	.section	.text
	.align	32
	#Procedure 0x404600
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40463a
	.globl sub_40463a
	.type sub_40463a, @function
sub_40463a:

	nop	word ptr [rax + rax]
.label_381:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404663
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_380:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_381
	jmp	.label_379
.label_379:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_380
	.section	.text
	.align	32
	#Procedure 0x4046b0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046e7
	.globl sub_4046e7
	.type sub_4046e7, @function
sub_4046e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046f0

	.globl c_locale
	.type c_locale, @function
c_locale:
	push	rbp
	mov	rbp, rsp
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	cmp	rax, 0
	jne	.label_382
	mov	edi, 0x1fbf
	movabs	rsi, OFFSET FLAT:label_383
	xor	eax, eax
	mov	edx, eax
	call	newlocale
	mov	qword ptr [word ptr [c_locale_cache]],  rax
.label_382:
	mov	rax,  qword ptr [word ptr [c_locale_cache]]
	pop	rbp
	ret	
.label_385:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_386:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40473b
	.globl sub_40473b
	.type sub_40473b, @function
sub_40473b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404744
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_385
	jmp	.label_384
.label_384:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_386
	.section	.text
	.align	32
	#Procedure 0x404770

	.globl print_esc_string
	.type print_esc_string, @function
print_esc_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
.label_391:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_389
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	jne	.label_388
	mov	esi, 1
	mov	rdi, qword ptr [rbp - 8]
	call	print_esc
	mov	rdi, qword ptr [rbp - 8]
	movsxd	rcx, eax
	add	rdi, rcx
	mov	qword ptr [rbp - 8], rdi
	jmp	.label_387
.label_389:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047c0
	.globl sub_4047c0
	.type sub_4047c0, @function
sub_4047c0:

	nop	word ptr cs:[rax + rax]
.label_388:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xc], eax
.label_387:
	jmp	.label_390
.label_390:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_391
	.section	.text
	.align	32
	#Procedure 0x4047f0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
.label_393:
	mov	byte ptr [rbp - 1], 0
.label_394:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40480e
	.globl sub_40480e
	.type sub_40480e, @function
sub_40480e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40481c
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_393
	jmp	.label_392
.label_392:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_394
	.section	.text
	.align	32
	#Procedure 0x404840

	.globl print_unicode_char
	.type print_unicode_char, @function
print_unicode_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:fwrite_success_callback
	movabs	rcx, OFFSET FLAT:fallback_failure_callback
	movabs	r8, OFFSET FLAT:exit_failure_callback
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	edi, dword ptr [rbp - 0xc]
	cmp	dword ptr [rbp - 0x10], 0
	cmovne	rcx, r8
	mov	r8, qword ptr [rbp - 8]
	mov	rsi, rax
	mov	rdx, rcx
	mov	rcx, r8
	call	unicode_to_mb
	mov	qword ptr [rbp - 0x18], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404897
	.globl sub_404897
	.type sub_404897, @function
sub_404897:

	nop	word ptr [rax + rax]
.label_400:
	mov	rdi, qword ptr [rbp - 0x38]
	call	uselocale
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_395
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_397
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_397:
	fldz	
	fstp	xword ptr [rbp - 0x10]
	jmp	.label_396
.label_395:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strtold
	fstp	xword ptr [rbp - 0x30]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rdi, qword ptr [rbp - 0x40]
	call	uselocale
	cmp	rax, 0
	jne	.label_398
	call	abort
.label_398:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x48], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x48]
	mov	dword ptr [rax], ecx
	fld	xword ptr [rbp - 0x30]
	fstp	xword ptr [rbp - 0x10]
.label_396:
	fld	xword ptr [rbp - 0x10]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404929
	.globl sub_404929
	.type sub_404929, @function
sub_404929:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40492c

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	call	c_locale
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_400
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_399
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_399:
	fldz	
	fstp	xword ptr [rbp - 0x10]
	jmp	.label_396
.label_438:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xb4], eax
.label_442:
	jmp	.label_425
	.section	.text
	.align	32
	#Procedure 0x40498d

	.globl print_direc
	.type print_direc, @function
print_direc:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x108
	mov	al, r9b
	mov	r10b, cl
	mov	r11b, dl
	mov	rbx, qword ptr [rbp + 0x18]
	mov	ecx, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x19], r11b
	and	r10b, 1
	mov	byte ptr [rbp - 0x1a], r10b
	mov	dword ptr [rbp - 0x20], r8d
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	dword ptr [rbp - 0x28], ecx
	mov	qword ptr [rbp - 0x30], rbx
	movsx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	sub	edx, 0x41
	mov	dword ptr [rbp - 0x74], ecx
	mov	dword ptr [rbp - 0x78], edx
	je	.label_404
	jmp	.label_439
.label_439:
	mov	eax, dword ptr [rbp - 0x74]
	add	eax, -0x45
	sub	eax, 3
	mov	dword ptr [rbp - 0x7c], eax
	jb	.label_404
	jmp	.label_443
.label_443:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x58
	mov	dword ptr [rbp - 0x80], eax
	je	.label_408
	jmp	.label_417
.label_417:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x84], eax
	je	.label_404
	jmp	.label_407
.label_407:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x88], eax
	je	.label_408
	jmp	.label_412
.label_412:
	mov	eax, dword ptr [rbp - 0x74]
	add	eax, -0x65
	sub	eax, 3
	mov	dword ptr [rbp - 0x8c], eax
	jb	.label_404
	jmp	.label_418
.label_418:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x90], eax
	je	.label_408
	jmp	.label_421
.label_421:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x94], eax
	je	.label_408
	jmp	.label_426
.label_426:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x98], eax
	je	.label_408
	jmp	.label_429
.label_429:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x78
	mov	dword ptr [rbp - 0x9c], eax
	jne	.label_430
	jmp	.label_408
.label_408:
	movabs	rax, OFFSET FLAT:label_433
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], 1
	jmp	.label_410
.label_416:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x28]
	fld	xword ptr [rbp - 0x70]
	mov	rax, rsp
	fstp	xword ptr [rax]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	call	xprintf
	mov	dword ptr [rbp - 0xd4], eax
.label_422:
	jmp	.label_432
.label_424:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xcc], eax
.label_427:
	jmp	.label_403
.label_403:
	jmp	.label_405
.label_436:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xc4], eax
.label_440:
	jmp	.label_403
.label_725:
	mov	rdi, qword ptr [rbp - 0x30]
	call	vstrtold
	fstp	xword ptr [rbp - 0x70]
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_414
	test	byte ptr [rbp - 0x21], 1
	jne	.label_416
	mov	rdi, qword ptr [rbp - 0x38]
	fld	xword ptr [rbp - 0x70]
	mov	rax, rsp
	fstp	xword ptr [rax]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	call	xprintf
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_422
.label_435:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_424
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xc8], eax
	jmp	.label_427
.label_441:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_431
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xb8], eax
	jmp	.label_434
.label_728:
	mov	rdi, qword ptr [rbp - 0x30]
	call	vstrtoimax
	mov	qword ptr [rbp - 0x58], rax
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_441
	test	byte ptr [rbp - 0x21], 1
	jne	.label_438
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xb0], eax
	jmp	.label_442
.label_415:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_401
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xf0], eax
	jmp	.label_406
.label_404:
	movabs	rax, OFFSET FLAT:label_409
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], 1
	jmp	.label_410
.label_729:
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_415
	test	byte ptr [rbp - 0x21], 1
	jne	.label_437
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xe8], eax
	jmp	.label_420
.label_414:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_423
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	fld	xword ptr [rbp - 0x70]
	mov	rax, rsp
	fstp	xword ptr [rax]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	call	xprintf
	mov	dword ptr [rbp - 0xd8], eax
	jmp	.label_428
.label_430:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], 0
.label_410:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rax + rcx + 2]
	call	xmalloc
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	mempcpy
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	mempcpy
	mov	qword ptr [rbp - 0x40], rax
	mov	r8b, byte ptr [rbp - 0x19]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x40], rcx
	mov	byte ptr [rax], r8b
	mov	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rax], 0
	movsx	r9d, byte ptr [rbp - 0x19]
	add	r9d, -0x41
	mov	eax, r9d
	sub	r9d, 0x37
	mov	qword ptr [rbp - 0xa8], rax
	mov	dword ptr [rbp - 0xac], r9d
	ja	.label_405
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_411]]
	jmp	rcx
.label_727:
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_413
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	esi, byte ptr [rax]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xe0], eax
	jmp	.label_419
.label_431:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xbc], eax
.label_434:
	jmp	.label_425
.label_425:
	jmp	.label_405
.label_423:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x28]
	fld	xword ptr [rbp - 0x70]
	mov	rax, rsp
	fstp	xword ptr [rax]
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	call	xprintf
	mov	dword ptr [rbp - 0xdc], eax
.label_428:
	jmp	.label_432
.label_432:
	jmp	.label_405
.label_726:
	mov	rdi, qword ptr [rbp - 0x30]
	call	vstrtoumax
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_435
	test	byte ptr [rbp - 0x21], 1
	jne	.label_436
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xc0], eax
	jmp	.label_440
.label_437:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xec], eax
.label_420:
	jmp	.label_402
.label_401:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xf4], eax
.label_406:
	jmp	.label_402
.label_402:
	jmp	.label_405
.label_405:
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	add	rsp, 0x108
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e48
	.globl sub_404e48
	.type sub_404e48, @function
sub_404e48:

	nop	dword ptr [rax + rax]
.label_413:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rax]
	mov	al, 0
	call	xprintf
	mov	dword ptr [rbp - 0xe4], eax
.label_419:
	jmp	.label_405
	.section	.text
	.align	32
	#Procedure 0x404e70

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
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
	#Procedure 0x404ea3
	.globl sub_404ea3
	.type sub_404ea3, @function
sub_404ea3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404eb0
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_444
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_444:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	dword ptr [rbp - 0x2c], 0x30
	mov	dword ptr [rbp - 0x30], 0x10
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdx, [rbp - 0x30]
	call	xvfprintf
	mov	dword ptr [rbp - 0x34], eax
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405015
	.globl sub_405015
	.type sub_405015, @function
sub_405015:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405020

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_445
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_448
.label_445:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_446
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_447
.label_446:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_447
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_447:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_449
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_449:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_448:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050ee
	.globl sub_4050ee
	.type sub_4050ee, @function
sub_4050ee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4050f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_450
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_451
.label_450:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_452
.label_451:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_452:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405148
	.globl sub_405148
	.type sub_405148, @function
sub_405148:

	nop	dword ptr [rax + rax]
.label_461:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_102
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_458
	movabs	rax, OFFSET FLAT:label_459
	movabs	rcx, OFFSET FLAT:label_460
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_457
.label_458:
	movabs	rsi, OFFSET FLAT:label_453
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_454
	movabs	rax, OFFSET FLAT:label_455
	movabs	rcx, OFFSET FLAT:label_456
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_457
	.section	.text
	.align	32
	#Procedure 0x4051e7

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_461
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_457
.label_454:
	movabs	rax, OFFSET FLAT:label_154
	movabs	rcx, OFFSET FLAT:label_227
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_457:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405248
	.globl sub_405248
	.type sub_405248, @function
sub_405248:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40526b
	.globl sub_40526b
	.type sub_40526b, @function
sub_40526b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405270

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_462
	cmp	qword ptr [rbp - 8], 0
	je	.label_462
	call	xalloc_die
.label_462:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052ae
	.globl sub_4052ae
	.type sub_4052ae, @function
sub_4052ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4052b0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_463
	jmp	.label_465
.label_465:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_464
.label_463:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_464:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052e7
	.globl sub_4052e7
	.type sub_4052e7, @function
sub_4052e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_466
	call	xalloc_die
.label_466:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
.label_468:
	mov	byte ptr [rbp - 1], 0
.label_469:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40534e
	.globl sub_40534e
	.type sub_40534e, @function
sub_40534e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40535c
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_468
	jmp	.label_467
.label_467:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_469
	.section	.text
	.align	32
	#Procedure 0x405380

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_470
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_471
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4053bf
	.globl sub_4053bf
	.type sub_4053bf, @function
sub_4053bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4053c0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053f2
	.globl sub_4053f2
	.type sub_4053f2, @function
sub_4053f2:

	nop	word ptr cs:[rax + rax]
.label_476:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_472
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_474]],  rax
.label_472:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_473
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_473:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405486
	.globl sub_405486
	.type sub_405486, @function
sub_405486:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405492
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_475:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_476
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_475
	.section	.text
	.align	32
	#Procedure 0x4054e0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_477
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_477:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40551d
	.globl sub_40551d
	.type sub_40551d, @function
sub_40551d:

	nop	dword ptr [rax]
.label_479:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x10]
	call	cl_strtold
	fstp	xword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	verify_numeric
.label_481:
	fld	xword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405551
	.globl sub_405551
	.type sub_405551, @function
sub_405551:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405559

	.globl vstrtold
	.type vstrtold, @function
vstrtold:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x22
	je	.label_480
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	jne	.label_479
.label_480:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_479
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 8], rcx
	movzx	edx, byte ptr [rax + 1]
	mov	sil, dl
	mov	byte ptr [rbp - 0x21], sil
	mov	dword ptr [rbp - 0x28], edx
	fild	dword ptr [rbp - 0x28]
	fstp	xword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0
	je	.label_478
	test	byte ptr [byte ptr [posixly_correct]],  1
	jne	.label_478
	mov	rdi,  qword ptr [word ptr [cfcc_msg]]
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	error
.label_478:
	jmp	.label_481
	.section	.text
	.align	32
	#Procedure 0x405610
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405646
	.globl sub_405646
	.type sub_405646, @function
sub_405646:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405650

	.globl exit_failure_callback
	.type exit_failure_callback, @function
exit_failure_callback:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_482
	movabs	rdi, OFFSET FLAT:label_485
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 4]
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_483
.label_482:
	movabs	rdi, OFFSET FLAT:label_484
	call	gettext
	mov	ecx, dword ptr [rbp - 4]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	dword ptr [rbp - 0x24], ecx
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	r8, rax
	mov	al, 0
	call	error
.label_483:
	mov	rax, -1
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056dd
	.globl sub_4056dd
	.type sub_4056dd, @function
sub_4056dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4056e0
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40578d
	.globl sub_40578d
	.type sub_40578d, @function
sub_40578d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405790

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_486
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_383
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_488
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_487
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_489
.label_488:
	mov	byte ptr [rbp - 5], 0
.label_489:
	jmp	.label_486
.label_486:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405803
	.globl sub_405803
	.type sub_405803, @function
sub_405803:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405810
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_490
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_490:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40583a
	.globl sub_40583a
	.type sub_40583a, @function
sub_40583a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405840

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_491
	mov	dword ptr [rbp - 4], 0
	jmp	.label_495
.label_493:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_492
.label_494:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_495:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4058b8
	.globl sub_4058b8
	.type sub_4058b8, @function
sub_4058b8:

	nop	word ptr cs:[rax + rax]
.label_491:
	jmp	.label_492
.label_492:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_493
	jmp	.label_494
	.section	.text
	.align	32
	#Procedure 0x405900
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_496
	jmp	.label_498
.label_498:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_497
.label_496:
	mov	byte ptr [rbp - 1], 0
.label_497:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405932
	.globl sub_405932
	.type sub_405932, @function
sub_405932:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405940

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40597f
	.globl sub_40597f
	.type sub_40597f, @function
sub_40597f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405980
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_499
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_501]]
	jmp	rcx
.label_499:
	mov	byte ptr [rbp - 1], 0
.label_500:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_690:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_500
	.section	.text
	.align	32
	#Procedure 0x4059d0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_502
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_502:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a0b
	.globl sub_405a0b
	.type sub_405a0b, @function
sub_405a0b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a10

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_506
	movabs	rdi, OFFSET FLAT:label_505
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_506:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_509
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_503
.label_509:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_503:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_507
	movabs	rsi, OFFSET FLAT:label_510
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_507
	movabs	rsi, OFFSET FLAT:label_508
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_504
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_504:
	jmp	.label_507
.label_507:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b29
	.globl sub_405b29
	.type sub_405b29, @function
sub_405b29:

	nop	dword ptr [rax]
.label_511:
	cmp	dword ptr [rbp - 0x28], 0x9f
	ja	.label_512
	cmp	dword ptr [rbp - 0x28], 0x24
	je	.label_512
	cmp	dword ptr [rbp - 0x28], 0x40
	je	.label_512
	cmp	dword ptr [rbp - 0x28], 0x60
	jne	.label_513
.label_512:
	cmp	dword ptr [rbp - 0x28], 0xd800
	jb	.label_517
	cmp	dword ptr [rbp - 0x28], 0xdfff
	ja	.label_517
.label_513:
	movabs	rdi, OFFSET FLAT:label_525
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	ecx, 8
	mov	edx, 4
	movsx	r8d, byte ptr [rbp - 0x21]
	movsx	r9d, byte ptr [rbp - 0x21]
	cmp	r9d, 0x75
	cmove	ecx, edx
	mov	r9d, dword ptr [rbp - 0x28]
	mov	rdx, rax
	mov	dword ptr [rbp - 0x68], ecx
	mov	ecx, r8d
	mov	r8d, dword ptr [rbp - 0x68]
	mov	al, 0
	call	error
.label_514:
	mov	eax, dword ptr [rbp - 0x28]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x61
	mov	dword ptr [rbp - 0x5c], eax
	jl	.label_515
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	jg	.label_515
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x61
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x60], ecx
	jmp	.label_523
.label_528:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x41
	jl	.label_540
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x46
	jg	.label_540
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x44], ecx
	jmp	.label_533
.label_540:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x44], ecx
.label_533:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x40], eax
.label_537:
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, eax
	mov	dword ptr [rbp - 0x1c], ecx
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_531
.label_529:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x75
	je	.label_544
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x55
	jne	.label_548
.label_544:
	mov	eax, 8
	mov	ecx, 4
	mov	rdx, qword ptr [rbp - 0x18]
	mov	sil, byte ptr [rdx]
	mov	byte ptr [rbp - 0x21], sil
	mov	dword ptr [rbp - 0x28], 0
	movsx	edi, byte ptr [rbp - 0x21]
	cmp	edi, 0x75
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x20], eax
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
.label_522:
	cmp	dword ptr [rbp - 0x20], 0
	jle	.label_511
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x58], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x1000
	cmp	edi, 0
	jne	.label_514
	movabs	rdi, OFFSET FLAT:label_526
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_515:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x41
	jl	.label_518
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x46
	jg	.label_518
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x41
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x64], ecx
	jmp	.label_524
.label_518:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x64], ecx
.label_524:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x60], eax
.label_523:
	mov	eax, dword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 0x5c]
	add	ecx, eax
	mov	dword ptr [rbp - 0x28], ecx
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, -1
	mov	dword ptr [rbp - 0x20], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_522
.label_539:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_529
	movabs	rdi, OFFSET FLAT:label_532
	mov	rax, qword ptr [rbp - 0x18]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_529
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edi, byte ptr [rax]
	call	print_esc_char
	jmp	.label_516
.label_535:
	mov	edi, dword ptr [rbp - 0x1c]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_521
	.section	.text
	.align	32
	#Procedure 0x405de6

	.globl print_esc
	.type print_esc, @function
print_esc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 1
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x18]
	movsx	esi, byte ptr [rdi]
	cmp	esi, 0x78
	jne	.label_543
	mov	dword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_531:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], 2
	mov	byte ptr [rbp - 0x29], cl
	jge	.label_530
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x38], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x1000
	cmp	edi, 0
	setne	dl
	mov	byte ptr [rbp - 0x29], dl
.label_530:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_547
	jmp	.label_527
.label_547:
	mov	eax, dword ptr [rbp - 0x1c]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x61
	mov	dword ptr [rbp - 0x3c], eax
	jl	.label_528
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x66
	jg	.label_528
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x61
	add	ecx, 0xa
	mov	dword ptr [rbp - 0x40], ecx
	jmp	.label_537
.label_543:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jl	.label_539
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	jg	.label_539
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 0x20], 0
	test	byte ptr [rbp - 9], 1
	mov	byte ptr [rbp - 0x49], cl
	je	.label_542
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	sete	dl
	mov	byte ptr [rbp - 0x49], dl
.label_542:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x18]
	movsxd	rsi, ecx
	add	rdx, rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_546:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], 3
	mov	byte ptr [rbp - 0x4a], cl
	jge	.label_534
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x30
	mov	byte ptr [rbp - 0x4b], cl
	jl	.label_538
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	setle	dl
	mov	byte ptr [rbp - 0x4b], dl
.label_538:
	mov	al, byte ptr [rbp - 0x4b]
	mov	byte ptr [rbp - 0x4a], al
.label_534:
	mov	al, byte ptr [rbp - 0x4a]
	test	al, 1
	jne	.label_541
	jmp	.label_545
.label_541:
	mov	eax, dword ptr [rbp - 0x1c]
	shl	eax, 3
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	add	eax, edx
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_546
.label_548:
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	byte ptr [rcx], 0
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_536
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 0x70], eax
.label_536:
	jmp	.label_520
.label_520:
	jmp	.label_516
.label_516:
	jmp	.label_519
.label_519:
	jmp	.label_521
.label_521:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	sub	rax, 1
	mov	edx, eax
	mov	eax, edx
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406001
	.globl sub_406001
	.type sub_406001, @function
sub_406001:

	nop	word ptr cs:[rax + rax]
.label_517:
	xor	edx, edx
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	esi, dword ptr [rbp - 0x28]
	call	print_unicode_char
	jmp	.label_520
.label_527:
	cmp	dword ptr [rbp - 0x20], 0
	jne	.label_535
	movabs	rdi, OFFSET FLAT:label_526
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_545:
	mov	edi, dword ptr [rbp - 0x1c]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_519
	.section	.text
	.align	32
	#Procedure 0x406060
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406091
	.globl sub_406091
	.type sub_406091, @function
sub_406091:

	nop	word ptr cs:[rax + rax]
.label_551:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_549:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4060b2
	.globl sub_4060b2
	.type sub_4060b2, @function
sub_4060b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060c1

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_550
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_550:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_551
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_551
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_551
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_549
.label_554:
	jmp	.label_552
.label_552:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406163
	.globl sub_406163
	.type sub_406163, @function
sub_406163:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406169

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_554
	jmp	.label_553
.label_553:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_552
	.section	.text
	.align	32
	#Procedure 0x4061a0

	.globl xvprintf
	.type xvprintf, @function
xvprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	vprintf
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_555
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	ferror
	cmp	eax, 0
	jne	.label_555
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x18], edi
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_556
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c], esi
	call	gettext
	mov	edi, dword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_555:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40621c
	.globl sub_40621c
	.type sub_40621c, @function
sub_40621c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406220
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40623f
	.globl sub_40623f
	.type sub_40623f, @function
sub_40623f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406240
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
	jb	.label_557
	jmp	.label_560
.label_560:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_557
	jmp	.label_558
.label_558:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_559
	jmp	.label_557
.label_557:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_561
.label_559:
	mov	byte ptr [rbp - 1], 0
.label_561:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4062a5
	.globl sub_4062a5
	.type sub_4062a5, @function
sub_4062a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062b0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4062dc
	.globl sub_4062dc
	.type sub_4062dc, @function
sub_4062dc:

	nop	dword ptr [rax]
.label_680:
	movabs	rdi, OFFSET FLAT:label_562
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_563
.label_682:
	movabs	rdi, OFFSET FLAT:label_567
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_563
	.section	.text
	.align	32
	#Procedure 0x4063ec

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_572
	movabs	rsi, OFFSET FLAT:label_574
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_580
.label_684:
	movabs	rdi, OFFSET FLAT:label_565
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_563
.label_676:
	movabs	rdi, OFFSET FLAT:label_578
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_563
.label_681:
	movabs	rdi, OFFSET FLAT:label_573
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_563
.label_678:
	movabs	rdi, OFFSET FLAT:label_579
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_563
.label_675:
	jmp	.label_563
.label_679:
	movabs	rdi, OFFSET FLAT:label_566
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_563
.label_572:
	movabs	rsi, OFFSET FLAT:label_571
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_580:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_564
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_569
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_568
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_575]]
	jmp	rcx
.label_568:
	movabs	rdi, OFFSET FLAT:label_576
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_563:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4067b9
	.globl sub_4067b9
	.type sub_4067b9, @function
sub_4067b9:

	nop	
.label_677:
	movabs	rdi, OFFSET FLAT:label_570
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_563
.label_683:
	movabs	rdi, OFFSET FLAT:label_577
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_563
	.section	.text
	.align	32
	#Procedure 0x4068a0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068de
	.globl sub_4068de
	.type sub_4068de, @function
sub_4068de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4068e0

	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	vfprintf
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_581
	mov	rdi, qword ptr [rbp - 8]
	call	ferror
	cmp	eax, 0
	jne	.label_581
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x20], edi
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_556
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	mov	edi, dword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_581:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x30
	pop	rbp
	ret	
.label_585:
	movabs	rsi, OFFSET FLAT:label_582
	mov	rdi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 4]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x28], eax
.label_584:
	mov	rax, -1
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406988

	.globl fallback_failure_callback
	.type fallback_failure_callback, @function
fallback_failure_callback:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	dword ptr [rbp - 4], 0x10000
	jae	.label_585
	movabs	rsi, OFFSET FLAT:label_583
	mov	rdi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 4]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_584
	.section	.text
	.align	32
	#Procedure 0x4069d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069ea
	.globl sub_4069ea
	.type sub_4069ea, @function
sub_4069ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069f0
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
	jb	.label_586
	jmp	.label_589
.label_589:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_588
	jmp	.label_586
.label_586:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_587
.label_588:
	mov	byte ptr [rbp - 1], 0
.label_587:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a3b
	.globl sub_406a3b
	.type sub_406a3b, @function
sub_406a3b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a40

	.globl sub_406a40
	.type sub_406a40, @function
sub_406a40:
	mov	edi, 0xb
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_590
	.section	.text
	.align	32
	#Procedure 0x406a52

	.globl sub_406a52
	.type sub_406a52, @function
sub_406a52:
	mov	edi, 7
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_590
	.section	.text
	.align	32
	#Procedure 0x406a64

	.globl sub_406a64
	.type sub_406a64, @function
sub_406a64:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_590
	.section	.text
	.align	32
	#Procedure 0x406a76

	.globl sub_406a76
	.type sub_406a76, @function
sub_406a76:
	mov	edi, 9
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_590
	.section	.text
	.align	32
	#Procedure 0x406a88

	.globl sub_406a88
	.type sub_406a88, @function
sub_406a88:
	mov	edi, 0xc
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_590
	.section	.text
	.align	32
	#Procedure 0x406a9a

	.globl sub_406a9a
	.type sub_406a9a, @function
sub_406a9a:
	mov	edi, 8
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_590
	.section	.text
	.align	32
	#Procedure 0x406aac

	.globl sub_406aac
	.type sub_406aac, @function
sub_406aac:
	xor	edi, edi
	call	exit
	.section	.text
	.align	32
	#Procedure 0x406ab3

	.globl sub_406ab3
	.type sub_406ab3, @function
sub_406ab3:
	mov	edi, 0xd
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_590
	.section	.text
	.align	32
	#Procedure 0x406ac5

	.globl sub_406ac5
	.type sub_406ac5, @function
sub_406ac5:
	mov	edi, 0x1b
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_590
	.section	.text
	.align	32
	#Procedure 0x406ad7

	.globl print_esc_char
	.type print_esc_char, @function
print_esc_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movsx	edi, byte ptr [rbp - 1]
	add	edi, -0x61
	mov	ecx, edi
	sub	edi, 0x15
	mov	qword ptr [rbp - 0x10], rcx
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_592
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_591]]
	jmp	rcx
.label_592:
	movsx	edi, byte ptr [rbp - 1]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
.label_590:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b1e
	.globl sub_406b1e
	.type sub_406b1e, @function
sub_406b1e:

	nop	
.label_594:
	mov	byte ptr [rbp - 1], 0
.label_596:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b2e
	.globl sub_406b2e
	.type sub_406b2e, @function
sub_406b2e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b36
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
	jb	.label_593
	jmp	.label_595
.label_595:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_594
	jmp	.label_593
.label_593:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_596
	.section	.text
	.align	32
	#Procedure 0x406b70

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ba8
	.globl sub_406ba8
	.type sub_406ba8, @function
sub_406ba8:

	nop	dword ptr [rax + rax]
.label_598:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bba
	.globl sub_406bba
	.type sub_406bba, @function
sub_406bba:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bc4
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_597
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_598
.label_597:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406c10
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_599
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_600
.label_599:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_600
.label_600:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c4b
	.globl sub_406c4b
	.type sub_406c4b, @function
sub_406c4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c50

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406cc5
	.globl sub_406cc5
	.type sub_406cc5, @function
sub_406cc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cd0

	.globl verify_numeric
	.type verify_numeric, @function
verify_numeric:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_602
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14], esi
	call	quote
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_471
	mov	esi, dword ptr [rbp - 0x14]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	dword ptr [dword ptr [exit_status]],  1
	jmp	.label_606
.label_605:
	movabs	rdi, OFFSET FLAT:label_603
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_607:
	mov	dword ptr [dword ptr [exit_status]],  1
.label_601:
	jmp	.label_606
.label_606:
	add	rsp, 0x30
	pop	rbp
	ret	
.label_602:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	je	.label_601
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_605
	movabs	rdi, OFFSET FLAT:label_604
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_607
	.section	.text
	.align	32
	#Procedure 0x406dc0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_608
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_608
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_610
.label_608:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_609
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_609
	call	xalloc_die
.label_609:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_610:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e3a
	.globl sub_406e3a
	.type sub_406e3a, @function
sub_406e3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e40
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_611
	call	xalloc_die
.label_611:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e88
	.globl sub_406e88
	.type sub_406e88, @function
sub_406e88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e90

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_613
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_615
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_613
.label_615:
	movabs	rdi, OFFSET FLAT:label_614
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_618
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_617
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_612
.label_613:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_616
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_616:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f4d
	.globl sub_406f4d
	.type sub_406f4d, @function
sub_406f4d:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406f4e
	.globl sub_406f4e
	.type sub_406f4e, @function
sub_406f4e:

	nop	dword ptr [rax + rax]
.label_618:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_471
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_612:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x406f80

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x18]
	call	strtold
	fstp	xword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	byte ptr [rsi], 0
	je	.label_620
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x40]
	call	c_strtold
	fstp	xword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_619
	fld	xword ptr [rbp - 0x50]
	fstp	xword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_621
.label_619:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rax], ecx
.label_621:
	jmp	.label_620
.label_620:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_622
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_622:
	fld	xword ptr [rbp - 0x30]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40701c
	.globl sub_40701c
	.type sub_40701c, @function
sub_40701c:

	nop	dword ptr [rax]
.label_624:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_623
.label_623:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4070b1
	.globl sub_4070b1
	.type sub_4070b1, @function
sub_4070b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070bc
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_624
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_623
.label_625:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_626:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40710c
	.globl sub_40710c
	.type sub_40710c, @function
sub_40710c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40711a

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_625
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_625
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_625
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_627
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_626
.label_627:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_626
	.section	.text
	.align	32
	#Procedure 0x4071c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_628
	movabs	rax, OFFSET FLAT:label_64
	mov	qword ptr [rbp - 8], rax
.label_628:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_629
	movabs	rax, OFFSET FLAT:label_101
	mov	qword ptr [rbp - 8], rax
.label_629:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407217
	.globl sub_407217
	.type sub_407217, @function
sub_407217:

	nop	word ptr [rax + rax]
.label_640:
	jmp	.label_630
.label_630:
	mov	eax, 1
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_632
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	ecx, OFFSET FLAT:label_637
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_632
	mov	eax, dword ptr [rbp - 8]
	add	eax, -1
	mov	dword ptr [rbp - 8], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 8
	mov	qword ptr [rbp - 0x10], rcx
.label_632:
	cmp	dword ptr [rbp - 8], 1
	jg	.label_631
	movabs	rdi, OFFSET FLAT:label_635
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_631:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, 2
	mov	dword ptr [rbp - 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
.label_634:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	print_formatted
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 8]
	sub	esi, eax
	mov	dword ptr [rbp - 8], esi
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x10]
	movsxd	rdi, eax
	shl	rdi, 3
	add	rdx, rdi
	mov	qword ptr [rbp - 0x10], rdx
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x1c], 0
	mov	byte ptr [rbp - 0x3d], cl
	jle	.label_633
	cmp	dword ptr [rbp - 8], 0
	setg	al
	mov	byte ptr [rbp - 0x3d], al
.label_633:
	mov	al, byte ptr [rbp - 0x3d]
	test	al, 1
	jne	.label_634
	cmp	dword ptr [rbp - 8], 0
	jle	.label_636
	movabs	rdi, OFFSET FLAT:label_638
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x48], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_636:
	mov	eax,  dword ptr [dword ptr [exit_status]]
	mov	dword ptr [rbp - 4], eax
.label_642:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407362
	.globl sub_407362
	.type sub_407362, @function
sub_407362:

	nop	word ptr [rax + rax]
.label_643:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	ecx, OFFSET FLAT:label_639
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_640
	movabs	rsi, OFFSET FLAT:label_18
	movabs	rdx, OFFSET FLAT:label_67
	movabs	r8, OFFSET FLAT:label_641
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	mov	dword ptr [rbp - 4], 0
	jmp	.label_642
	.section	.text
	.align	32
	#Procedure 0x4073cb

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_64
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_644
	movabs	rsi, OFFSET FLAT:label_645
	mov	qword ptr [rbp - 0x28], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_644
	mov	qword ptr [rbp - 0x30], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x38], rax
	call	atexit
	movabs	rdi, OFFSET FLAT:label_646
	mov	dword ptr [dword ptr [exit_status]],  0
	mov	dword ptr [rbp - 0x3c], eax
	call	getenv
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [byte ptr [posixly_correct]],  cl
	cmp	dword ptr [rbp - 8], 2
	jne	.label_630
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	ecx, OFFSET FLAT:label_647
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_643
	xor	edi, edi
	call	usage
	.section	.text
	.align	32
	#Procedure 0x4074a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074c8
	.globl sub_4074c8
	.type sub_4074c8, @function
sub_4074c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074d0

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074f8
	.globl sub_4074f8
	.type sub_4074f8, @function
sub_4074f8:

	nop	dword ptr [rax + rax]
.label_655:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_648
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_653
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40753f

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_655
	call	abort
.label_651:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_654:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_650
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_474]]
	mov	qword ptr [rax + 8], rcx
.label_650:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_648:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_652
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_649
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_649:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_652:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40775c
	.globl sub_40775c
	.type sub_40775c, @function
sub_40775c:

	nop	word ptr cs:[rax + rax]
.label_653:
	test	byte ptr [rbp - 0x31], 1
	je	.label_651
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_654
	.section	.text
	.align	32
	#Procedure 0x407780
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077a7
	.globl sub_4077a7
	.type sub_4077a7, @function
sub_4077a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077b0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077d5
	.globl sub_4077d5
	.type sub_4077d5, @function
sub_4077d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077e0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_656
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_657
.label_656:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_657
.label_657:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_658
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_658:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407934
	.globl sub_407934
	.type sub_407934, @function
sub_407934:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407940

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_659
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_660
.label_659:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_660
.label_660:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4079e2
	.globl sub_4079e2
	.type sub_4079e2, @function
sub_4079e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079f0

	.globl xprintf
	.type xprintf, @function
xprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x100], xmm6
	movaps	xmmword ptr [rbp - 0x110], xmm5
	movaps	xmmword ptr [rbp - 0x120], xmm4
	movaps	xmmword ptr [rbp - 0x130], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	movaps	xmmword ptr [rbp - 0x150], xmm1
	movaps	xmmword ptr [rbp - 0x160], xmm0
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], r9
	mov	qword ptr [rbp - 0x178], r8
	mov	qword ptr [rbp - 0x180], rcx
	mov	qword ptr [rbp - 0x188], rdx
	mov	qword ptr [rbp - 0x190], rsi
	je	.label_661
	movaps	xmm0, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_661:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rdi, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	lea	r8, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x10], r8
	lea	r8, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r8
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 8
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rbp - 0x20]
	call	xvprintf
	mov	dword ptr [rbp - 0x24], eax
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b51
	.globl sub_407b51
	.type sub_407b51, @function
sub_407b51:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bc5
	.globl sub_407bc5
	.type sub_407bc5, @function
sub_407bc5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bd2
	.globl sub_407bd2
	.type sub_407bd2, @function
sub_407bd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bf6
	.globl sub_407bf6
	.type sub_407bf6, @function
sub_407bf6:

	nop	word ptr cs:[rax + rax]
