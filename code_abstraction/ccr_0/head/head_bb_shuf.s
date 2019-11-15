	.section	.text
	.align	32
	#Procedure 0x4015c9
	.globl sub_4015c9
	.type sub_4015c9, @function
sub_4015c9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4015ca
	.globl sub_4015ca
	.type sub_4015ca, @function
sub_4015ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401602
	.globl sub_401602
	.type sub_401602, @function
sub_401602:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40164a
	.globl sub_40164a
	.type sub_40164a, @function
sub_40164a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40166c
	.globl sub_40166c
	.type sub_40166c, @function
sub_40166c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40167d
	.globl sub_40167d
	.type sub_40167d, @function
sub_40167d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401696
	.globl sub_401696
	.type sub_401696, @function
sub_401696:

	nop	word ptr cs:[rax + rax]
.label_10:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_9
.label_9:
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
	#Procedure 0x4016e4
	.globl sub_4016e4
	.type sub_4016e4, @function
sub_4016e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016f2
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
	je	.label_10
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_9
	.section	.text
	.align	32
	#Procedure 0x401720

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
	#Procedure 0x401792
	.globl sub_401792
	.type sub_401792, @function
sub_401792:

	nop	word ptr cs:[rax + rax]
.label_12:
	mov	byte ptr [rbp - 1], 1
.label_16:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x2040
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4017b5
	.globl sub_4017b5
	.type sub_4017b5, @function
sub_4017b5:

	nop	dword ptr [rax + rax]
.label_13:
	lea	rdi, [rbp - 0x2020]
	mov	rsi, qword ptr [rbp - 0x2030]
	call	xwrite_stdout
	mov	rsi, qword ptr [rbp - 0x2030]
	mov	rdi, qword ptr [rbp - 0x20]
	sub	rdi, rsi
	mov	qword ptr [rbp - 0x20], rdi
	jmp	.label_14
	.section	.text
	.align	32
	#Procedure 0x4017e7

	.globl head_bytes
	.type head_bytes, @function
head_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2040
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x2028], 0x2000
.label_14:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_12
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x2028]
	jae	.label_15
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x2028], rax
.label_15:
	lea	rsi, [rbp - 0x2020]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x2028]
	call	safe_read
	mov	qword ptr [rbp - 0x2030], rax
	cmp	qword ptr [rbp - 0x2030], -1
	jne	.label_11
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_17
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2034], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2040], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2034]
	mov	rdx, qword ptr [rbp - 0x2040]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_16
.label_11:
	cmp	qword ptr [rbp - 0x2030], 0
	jne	.label_13
	jmp	.label_12
	.section	.text
	.align	32
	#Procedure 0x4018c0
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
	#Procedure 0x4018fa
	.globl sub_4018fa
	.type sub_4018fa, @function
sub_4018fa:

	nop	word ptr [rax + rax]
.label_20:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_17
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_18
.label_23:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_19
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_18
.label_22:
	call	abort
.label_18:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401993
	.globl sub_401993
	.type sub_401993, @function
sub_401993:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401994

	.globl diagnose_copy_fd_failure
	.type diagnose_copy_fd_failure, @function
diagnose_copy_fd_failure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	eax, edi
	sub	eax, 1
	mov	dword ptr [rbp - 0x14], edi
	mov	dword ptr [rbp - 0x18], eax
	je	.label_20
	jmp	.label_21
.label_21:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_23
	jmp	.label_22
.label_26:
	jmp	.label_24
.label_24:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019e3
	.globl sub_4019e3
	.type sub_4019e3, @function
sub_4019e3:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019e9

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
	ja	.label_26
	jmp	.label_25
.label_25:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_24
	.section	.text
	.align	32
	#Procedure 0x401a20
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
	#Procedure 0x401a57
	.globl sub_401a57
	.type sub_401a57, @function
sub_401a57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a60

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
	je	.label_27
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_28
.label_27:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_28
.label_28:
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
	je	.label_29
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_29:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bb4
	.globl sub_401bb4
	.type sub_401bb4, @function
sub_401bb4:

	nop	word ptr cs:[rax + rax]
.label_34:
	mov	rax, qword ptr [rbp - 0x2028]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	cmp	qword ptr [rbp - 0x2028], 0
	jne	.label_30
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_30
	mov	dword ptr [rbp - 4], 2
	jmp	.label_35
.label_33:
	mov	dword ptr [rbp - 4], 0
.label_35:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x2030
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c0a
	.globl sub_401c0a
	.type sub_401c0a, @function
sub_401c0a:

	nop	word ptr cs:[rax + rax]
.label_36:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2030], rax
.label_32:
	mov	rax, qword ptr [rbp - 0x2030]
	lea	rsi, [rbp - 0x2010]
	mov	qword ptr [rbp - 0x2020], rax
	mov	edi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x2020]
	call	safe_read
	mov	qword ptr [rbp - 0x2028], rax
	cmp	qword ptr [rbp - 0x2028], -1
	jne	.label_34
	mov	dword ptr [rbp - 4], 1
	jmp	.label_35
	.section	.text
	.align	32
	#Procedure 0x401c69

	.globl copy_fd
	.type copy_fd, @function
copy_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2030
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x2018], 0x2000
.label_31:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_33
	mov	eax, 0x2000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x10]
	jae	.label_36
	mov	eax, 0x2000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x2030], rcx
	jmp	.label_32
.label_30:
	lea	rdi, [rbp - 0x2010]
	mov	rsi, qword ptr [rbp - 0x2028]
	call	xwrite_stdout
	jmp	.label_31
.label_39:
	mov	byte ptr [rbp - 1], 0
.label_38:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cde
	.globl sub_401cde
	.type sub_401cde, @function
sub_401cde:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401cdf
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_39
	jmp	.label_37
.label_37:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_38
	.section	.text
	.align	32
	#Procedure 0x401d00

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_40
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_41
.label_40:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_41:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d5c
	.globl sub_401d5c
	.type sub_401d5c, @function
sub_401d5c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d60

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	set_binary_mode
	cmp	eax, 0
	jge	.label_42
	call	xset_binary_mode_error
.label_42:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d8d
	.globl sub_401d8d
	.type sub_401d8d, @function
sub_401d8d:

	nop	dword ptr [rax]
.label_798:
	movabs	rdi, OFFSET FLAT:label_43
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
	jmp	.label_44
.label_794:
	movabs	rdi, OFFSET FLAT:label_45
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
	jmp	.label_44
.label_802:
	movabs	rdi, OFFSET FLAT:label_58
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
	jmp	.label_44
.label_800:
	movabs	rdi, OFFSET FLAT:label_53
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
	jmp	.label_44
	.section	.text
	.align	32
	#Procedure 0x401f84

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
	je	.label_59
	movabs	rsi, OFFSET FLAT:label_57
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_48
.label_59:
	movabs	rsi, OFFSET FLAT:label_51
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_48:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_60
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
	mov	ecx, OFFSET FLAT:label_61
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
	ja	.label_47
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_54]]
	jmp	rcx
.label_801:
	movabs	rdi, OFFSET FLAT:label_50
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
	jmp	.label_44
.label_796:
	movabs	rdi, OFFSET FLAT:label_52
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
	jmp	.label_44
.label_793:
	jmp	.label_44
.label_47:
	movabs	rdi, OFFSET FLAT:label_56
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
.label_44:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40222e
	.globl sub_40222e
	.type sub_40222e, @function
sub_40222e:

	nop	
.label_797:
	movabs	rdi, OFFSET FLAT:label_55
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
	jmp	.label_44
.label_795:
	movabs	rdi, OFFSET FLAT:label_49
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
	jmp	.label_44
.label_799:
	movabs	rdi, OFFSET FLAT:label_46
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
	jmp	.label_44
.label_71:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	call	head_bytes
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_62:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402376
	.globl sub_402376
	.type sub_402376, @function
sub_402376:

	nop	word ptr cs:[rax + rax]
.label_70:
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_63
	lea	rdi, [rbp - 0xc0]
	call	usable_st_size
	test	al, 1
	jne	.label_65
	jmp	.label_63
.label_65:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	edi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	call	elseek
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_66
	mov	byte ptr [rbp - 1], 0
	jmp	.label_62
.label_66:
	jmp	.label_63
.label_63:
	test	byte ptr [rbp - 0x21], 1
	je	.label_64
	lea	rcx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x30]
	call	elide_tail_lines_file
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_62
.label_64:
	lea	rcx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x30]
	call	elide_tail_bytes_file
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_62
.label_68:
	test	byte ptr [rbp - 0x21], 1
	je	.label_71
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	call	head_lines
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_62
	.section	.text
	.align	32
	#Procedure 0x402453

	.globl head
	.type head, @function
head:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	al, r8b
	mov	r9b, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	and	r9b, 1
	mov	byte ptr [rbp - 0x21], r9b
	and	al, 1
	mov	byte ptr [rbp - 0x22], al
	test	byte ptr [byte ptr [print_headers]],  1
	je	.label_69
	mov	rdi, qword ptr [rbp - 0x10]
	call	write_header
.label_69:
	test	byte ptr [rbp - 0x22], 1
	je	.label_68
	lea	rsi, [rbp - 0xc0]
	mov	qword ptr [rbp - 0x30], -1
	mov	edi, dword ptr [rbp - 0x14]
	call	fstat
	cmp	eax, 0
	je	.label_70
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_67
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc4], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xd0], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_62
.label_72:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_78
	call	__errno_location
	mov	dword ptr [rax], 0
.label_78:
	jmp	.label_75
.label_75:
	jmp	.label_76
.label_76:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_77
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_80
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_73
.label_85:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_84:
	jmp	.label_83
.label_83:
	jmp	.label_76
.label_80:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_73
.label_73:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_81
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_74
.label_81:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_74:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:label_79
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_77:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025d8
	.globl sub_4025d8
	.type sub_4025d8, @function
sub_4025d8:

	nop	word ptr cs:[rax + rax]
.label_82:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_72
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_75
	.section	.text
	.align	32
	#Procedure 0x4025fc

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, r10d
	lea	rbx, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	call	xstrtoumax
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_82
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_86
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_83
.label_86:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_85
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_84
	.section	.text
	.align	32
	#Procedure 0x402690

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_87
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_88:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_89
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_89
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4026ec

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_88
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_88
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_90
.label_89:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_90:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40273a
	.globl sub_40273a
	.type sub_40273a, @function
sub_40273a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402740

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_92:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_91
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_92
.label_91:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40278d
	.globl sub_40278d
	.type sub_40278d, @function
sub_40278d:

	nop	dword ptr [rax]
.label_94:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_93
.label_95:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_96:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027ce
	.globl sub_4027ce
	.type sub_4027ce, @function
sub_4027ce:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027dd

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
	jne	.label_97
	mov	dword ptr [rbp - 4], 0
	jmp	.label_96
.label_97:
	jmp	.label_93
.label_93:
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
	jne	.label_94
	jmp	.label_95
	.section	.text
	.align	32
	#Procedure 0x402850
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
	#Procedure 0x40286f
	.globl sub_40286f
	.type sub_40286f, @function
sub_40286f:

	nop	
.label_104:
	mov	byte ptr [rbp - 0x91], 1
.label_112:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0xd8]
	jne	.label_121
	mov	byte ptr [rbp - 0xa1], 1
.label_121:
	test	byte ptr [rbp - 0xa1], 1
	je	.label_105
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0xa0]
	call	xwrite_stdout
.label_105:
	jmp	.label_114
.label_114:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xb8], rdx
	jmp	.label_115
.label_126:
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x90], rax
.label_128:
	jmp	.label_125
.label_125:
	mov	byte ptr [rbp - 0x52], 1
.label_138:
	test	byte ptr [rbp - 0x51], 1
	jne	.label_132
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	cl, byte ptr [rbp - 0x61]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	mov	rax, qword ptr [rbp + rax*8 - 0x80]
	add	rax, 0x2000
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rsi, qword ptr [rbp - 0x90]
	mov	rdi, rax
	call	xwrite_stdout
.label_132:
	mov	byte ptr [rbp - 0x51], 0
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_134
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	cl, byte ptr [rbp - 0x61]
	and	cl, 1
	movzx	edx, cl
	mov	eax, edx
	mov	rdi, qword ptr [rbp + rax*8 - 0x80]
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	xwrite_stdout
.label_134:
	jmp	.label_136
.label_136:
	mov	al, byte ptr [rbp - 0x61]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	jmp	.label_137
.label_131:
	cmp	qword ptr [rbp - 0x28], 0x100000
	ja	.label_124
	mov	eax, 2
	mov	edi, eax
	mov	byte ptr [rbp - 0x51], 1
	mov	byte ptr [rbp - 0x52], 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x2000
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsi, qword ptr [rbp - 0x60]
	call	xnmalloc
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x61], 0
.label_137:
	mov	al, byte ptr [rbp - 0x52]
	xor	al, 0xff
	test	al, 1
	jne	.label_127
	jmp	.label_130
.label_127:
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsi, qword ptr [rbp + rdx*8 - 0x80]
	mov	rdx, qword ptr [rbp - 0x60]
	call	full_read
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], 0
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_138
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_129
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_17
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_130
.label_122:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdi, rax
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0xc8]
	sub	rax, qword ptr [rbp - 0xf0]
	mov	rsi, rax
	call	xwrite_stdout
.label_117:
	jmp	.label_98
.label_109:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x120], rcx
	jmp	.label_106
.label_106:
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_110
.label_129:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x28]
	ja	.label_125
	test	byte ptr [rbp - 0x51], 1
	je	.label_126
	jmp	.label_128
.label_124:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	byte ptr [rbp - 0x91], 0
	mov	qword ptr [rbp - 0xc0], 0
	mov	rdx, qword ptr [rbp - 0x28]
	and	rdx, 0x1fff
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rcx, qword ptr [rbp - 0xd0]
	shr	rcx, 0xd
	add	rcx, 1
	mov	qword ptr [rbp - 0xd8], rcx
	mov	qword ptr [rbp - 0xe0], 0
	mov	qword ptr [rbp - 0xe8], 0
	mov	byte ptr [rbp - 0xa1], 0
	mov	qword ptr [rbp - 0xb0], 0
	mov	qword ptr [rbp - 0xb8], 1
.label_115:
	mov	al, byte ptr [rbp - 0x91]
	xor	al, 0xff
	test	al, 1
	jne	.label_118
	jmp	.label_116
.label_118:
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_123
	cmp	qword ptr [rbp - 0xe8], 0
	jne	.label_102
	cmp	qword ptr [rbp - 0xd8], 0x10
	jae	.label_109
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_106
.label_108:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, rax
	call	free
.label_135:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jg	.label_113
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	call	elseek
	cmp	rax, 0
	jge	.label_113
	mov	byte ptr [rbp - 0x31], 0
.label_113:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x130
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c8d
	.globl sub_402c8d
	.type sub_402c8d, @function
sub_402c8d:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402c8f
	.globl sub_402c8f
	.type sub_402c8f, @function
sub_402c8f:

	nop	dword ptr [rax]
.label_119:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0xd8]
	jne	.label_103
	mov	eax, 0x2000
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xf8], rcx
	mov	rcx, qword ptr [rbp - 0xa0]
	sub	rcx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x100], rcx
	mov	rcx, qword ptr [rbp - 0x100]
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rsi, qword ptr [rbp - 0x100]
	call	xwrite_stdout
.label_103:
	jmp	.label_98
.label_98:
	jmp	.label_99
.label_99:
	jmp	.label_101
.label_101:
	mov	qword ptr [rbp - 0xb0], 0
.label_111:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_108
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rcx + rax*8]
	call	free
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_111
.label_116:
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_99
	test	byte ptr [rbp - 0xa1], 1
	je	.label_119
	mov	eax, 0x2000
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xf0], rcx
	mov	rcx, qword ptr [rbp - 0xc8]
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0xc8]
	cmp	rcx, qword ptr [rbp - 0xf0]
	jae	.label_122
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	xwrite_stdout
	jmp	.label_117
	.section	.text
	.align	32
	#Procedure 0x402dde

	.globl elide_tail_bytes_pipe
	.type elide_tail_bytes_pipe, @function
elide_tail_bytes_pipe:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x130
	mov	rax, -1
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rcx
	mov	byte ptr [rbp - 0x31], 1
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x2000
	cmp	rax, rcx
	jae	.label_131
	movabs	rdi, OFFSET FLAT:label_133
	call	gettext
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	umaxtostr
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_120:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xe8], rax
.label_100:
	jmp	.label_110
.label_110:
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	rdi, rcx
	call	xnrealloc
	mov	qword ptr [rbp - 0xc0], rax
.label_123:
	test	byte ptr [rbp - 0xa1], 1
	jne	.label_107
	mov	eax, 0x2000
	mov	edi, eax
	call	xmalloc
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + rdi*8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xe0], rax
.label_107:
	mov	eax, 0x2000
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rsi + rcx*8]
	call	full_read
	mov	qword ptr [rbp - 0xa0], rax
	cmp	qword ptr [rbp - 0xa0], 0x2000
	jae	.label_112
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_104
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_17
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x124], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x130], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x124]
	mov	rdx, qword ptr [rbp - 0x130]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_101
.label_102:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xd8]
	shr	rcx, 1
	cmp	rax, rcx
	ja	.label_120
	mov	rax, qword ptr [rbp - 0xe8]
	shl	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_100
.label_130:
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
	jmp	.label_135
	.section	.text
	.align	32
	#Procedure 0x402fb0

	.globl string_to_integer
	.type string_to_integer, @function
string_to_integer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	test	byte ptr [rbp - 1], 1
	mov	qword ptr [rbp - 0x18], rdi
	je	.label_139
	movabs	rdi, OFFSET FLAT:label_142
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_141
.label_139:
	movabs	rdi, OFFSET FLAT:label_143
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
.label_141:
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:label_140
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, rax
	call	xdectoumax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40302f
	.globl sub_40302f
	.type sub_40302f, @function
sub_40302f:

	nop	
.label_145:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403036
	.globl sub_403036
	.type sub_403036, @function
sub_403036:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40303f

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_144
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_150
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_144
.label_150:
	movabs	rdi, OFFSET FLAT:label_149
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_147
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_79
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_148
.label_144:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_145
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_147:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_146
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_148:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x403120

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_151
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_146
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40315f
	.globl sub_40315f
	.type sub_40315f, @function
sub_40315f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403160

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
	#Procedure 0x40319e
	.globl sub_40319e
	.type sub_40319e, @function
sub_40319e:

	nop	
.label_186:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_178
	mov	dword ptr [rbp - 4], 4
	jmp	.label_163
.label_172:
	jmp	.label_159
.label_161:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_181
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_183
	mov	dword ptr [rbp - 4], 4
	jmp	.label_163
.label_783:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_155
.label_192:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_194
.label_194:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_193:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_186
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_193
.label_153:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_158:
	jmp	.label_173
.label_173:
	jmp	.label_174
.label_174:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_167
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_180]]
	jmp	rcx
.label_155:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_182
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_182:
	jmp	.label_168
.label_168:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_163:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40331b
	.globl sub_40331b
	.type sub_40331b, @function
sub_40331b:

	nop	dword ptr [rax + rax]
.label_178:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_161
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_165
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_165
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_165
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_172
.label_777:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_155
.label_785:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_155
.label_175:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_152
	jmp	.label_184
.label_184:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_152
	jmp	.label_185
.label_185:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_152
	jmp	.label_154
.label_154:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_152
	jmp	.label_157
.label_157:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_152
	jmp	.label_162
.label_162:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_152
	jmp	.label_166
.label_166:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_152
	jmp	.label_169
.label_169:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_152
	jmp	.label_171
.label_171:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_152
	jmp	.label_177
.label_177:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_152
	jmp	.label_170
.label_170:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_174
	jmp	.label_152
.label_152:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_173
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_153
	jmp	.label_176
.label_176:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_153
	jmp	.label_156
.label_156:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_158
	jmp	.label_179
.label_179:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_164
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_164:
	jmp	.label_158
.label_160:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_168
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_175
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_163
.label_187:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_192
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_194
.label_778:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_155
.label_779:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_155
.label_787:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_155
.label_786:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_155
.label_183:
	mov	dword ptr [rbp - 0x4c], 1
.label_181:
	jmp	.label_159
.label_159:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_160
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_163
.label_782:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_155
.label_781:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_155
.label_780:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_155
.label_165:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_163
.label_776:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_155
.label_784:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_155
.label_167:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_163
	.section	.text
	.align	32
	#Procedure 0x4036e9

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_191
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_191
	jmp	.label_187
.label_191:
	movabs	rdi, OFFSET FLAT:label_188
	movabs	rsi, OFFSET FLAT:label_189
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_190
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x403750
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
	#Procedure 0x403766
	.globl sub_403766
	.type sub_403766, @function
sub_403766:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403770

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
	jge	.label_197
	call	abort
.label_196:
	test	byte ptr [rbp - 0x31], 1
	je	.label_200
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_202
.label_200:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_202:
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
	je	.label_203
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_195]]
	mov	qword ptr [rax + 8], rcx
.label_203:
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
.label_201:
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
	ja	.label_198
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_199
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_199:
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
.label_198:
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
	#Procedure 0x4039a4
	.globl sub_4039a4
	.type sub_4039a4, @function
sub_4039a4:

	nop	word ptr cs:[rax + rax]
.label_197:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_201
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_196
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4039f0
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
	#Procedure 0x403a1d
	.globl sub_403a1d
	.type sub_403a1d, @function
sub_403a1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a20

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
	je	.label_204
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
.label_204:
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
	#Procedure 0x403b84
	.globl sub_403b84
	.type sub_403b84, @function
sub_403b84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b90
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
	#Procedure 0x403bc1
	.globl sub_403bc1
	.type sub_403bc1, @function
sub_403bc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bd0
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
	#Procedure 0x403bf8
	.globl sub_403bf8
	.type sub_403bf8, @function
sub_403bf8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c00

	.globl sub_403c00
	.type sub_403c00, @function
sub_403c00:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_205
.label_207:
	mov	byte ptr [rbp - 1], 0
.label_205:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c17
	.globl sub_403c17
	.type sub_403c17, @function
sub_403c17:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c26
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
	ja	.label_207
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_206]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x403c50

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
	je	.label_208
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_211
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_212
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_209
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_210
.label_212:
	mov	byte ptr [rbp - 5], 0
.label_210:
	jmp	.label_208
.label_208:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403cc3
	.globl sub_403cc3
	.type sub_403cc3, @function
sub_403cc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cd0

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
	#Procedure 0x403d03
	.globl sub_403d03
	.type sub_403d03, @function
sub_403d03:

	nop	word ptr cs:[rax + rax]
.label_215:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_213
.label_214:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_213:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d52
	.globl sub_403d52
	.type sub_403d52, @function
sub_403d52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d60

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
	jne	.label_214
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_214
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_214
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_215
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_213
	.section	.text
	.align	32
	#Procedure 0x403de0

	.globl offtostr
	.type offtostr, @function
offtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jge	.label_216
	jmp	.label_219
.label_219:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_219
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_218
.label_216:
	jmp	.label_217
.label_217:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_217
	jmp	.label_218
.label_218:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ed5
	.globl sub_403ed5
	.type sub_403ed5, @function
sub_403ed5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ee0

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
	je	.label_220
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_221
.label_220:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_221
.label_221:
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
	#Procedure 0x403f82
	.globl sub_403f82
	.type sub_403f82, @function
sub_403f82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f90

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_222
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fc0

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
	jae	.label_223
	call	xalloc_die
.label_223:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404008
	.globl sub_404008
	.type sub_404008, @function
sub_404008:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404010

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
	#Procedure 0x4040bd
	.globl sub_4040bd
	.type sub_4040bd, @function
sub_4040bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4040c0
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
	#Procedure 0x4040e7
	.globl sub_4040e7
	.type sub_4040e7, @function
sub_4040e7:

	nop	word ptr [rax + rax]
.label_226:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_224:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404102
	.globl sub_404102
	.type sub_404102, @function
sub_404102:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404111

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
	jne	.label_225
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_225:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_226
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_226
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_226
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_224
	.section	.text
	.align	32
	#Procedure 0x4041a0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	mov	byte ptr [rbp - 9], al
	je	.label_227
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	mov	byte ptr [rbp - 9], al
	je	.label_227
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	edx, dword ptr [rcx + 0x18]
	cmp	edx, 0
	mov	byte ptr [rbp - 9], al
	jne	.label_227
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 9], cl
	jmp	.label_227
.label_227:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404216
	.globl sub_404216
	.type sub_404216, @function
sub_404216:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404220

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
	jne	.label_228
	cmp	qword ptr [rbp - 8], 0
	je	.label_228
	call	xalloc_die
.label_228:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40425e
	.globl sub_40425e
	.type sub_40425e, @function
sub_40425e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404260
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_229
	call	gettext
	movabs	rsi, OFFSET FLAT:label_231
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_230
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_233
	movabs	rdx, OFFSET FLAT:label_234
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_232
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
	#Procedure 0x4042e6
	.globl sub_4042e6
	.type sub_4042e6, @function
sub_4042e6:

	nop	
	nop	dword ptr [rax + rax]
.label_236:
	mov	byte ptr [rbp - 1], 0
.label_237:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042fe
	.globl sub_4042fe
	.type sub_4042fe, @function
sub_4042fe:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40430c
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_236
	jmp	.label_235
.label_235:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_237
	.section	.text
	.align	32
	#Procedure 0x404330
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
	#Procedure 0x404357
	.globl sub_404357
	.type sub_404357, @function
sub_404357:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404360

	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:
	push	rbp
	mov	rbp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404366
	.globl sub_404366
	.type sub_404366, @function
sub_404366:

	nop	word ptr cs:[rax + rax]
.label_255:
	cmp	qword ptr [rbp - 0x20], 0
	setne	al
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x2041], al
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_239
	cmp	qword ptr [rbp - 0x2038], 0
	je	.label_239
	mov	rax, qword ptr [rbp - 0x2038]
	sub	rax, 1
	movsx	ecx, byte ptr [rbp + rax - 0x2030]
	movsx	edx,  byte ptr [byte ptr [line_end]]
	cmp	ecx, edx
	je	.label_239
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
.label_239:
	jmp	.label_246
.label_246:
	mov	rax, qword ptr [rbp - 0x2038]
	mov	qword ptr [rbp - 0x2050], rax
.label_252:
	cmp	qword ptr [rbp - 0x2050], 0
	je	.label_244
	test	byte ptr [rbp - 0x2041], 1
	je	.label_250
	mov	rax, qword ptr [rbp - 0x2050]
	sub	rax, 1
	mov	qword ptr [rbp - 0x2050], rax
	jmp	.label_253
.label_241:
	lea	rax, [rbp - 0x2030]
	mov	rcx, qword ptr [rbp - 0x2058]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x2050], rcx
.label_253:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	cmp	rax, 0
	jne	.label_243
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x2040]
	jge	.label_238
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	call	elseek
	cmp	rax, 0
	jge	.label_249
	mov	byte ptr [rbp - 1], 0
	jmp	.label_242
.label_243:
	jmp	.label_252
.label_250:
	lea	rdi, [rbp - 0x2030]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rdx, qword ptr [rbp - 0x2050]
	call	memrchr
	mov	qword ptr [rbp - 0x2058], rax
	cmp	qword ptr [rbp - 0x2058], 0
	jne	.label_241
	jmp	.label_244
	.section	.text
	.align	32
	#Procedure 0x4044b0

	.globl elide_tail_lines_seekable
	.type elide_tail_lines_seekable, @function
elide_tail_lines_seekable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2080
	mov	eax, 0x2000
	mov	r9d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x2040], rcx
	mov	rcx, qword ptr [rbp - 0x2040]
	sub	rcx, qword ptr [rbp - 0x28]
	mov	rax, rcx
	cqo	
	idiv	r9
	mov	qword ptr [rbp - 0x2038], rdx
	cmp	qword ptr [rbp - 0x2038], 0
	jne	.label_256
	mov	qword ptr [rbp - 0x2038], 0x2000
.label_256:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x2038]
	mov	rcx, qword ptr [rbp - 0x2040]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x2040], rcx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x10]
	call	elseek
	cmp	rax, 0
	jge	.label_254
	mov	byte ptr [rbp - 1], 0
	jmp	.label_242
.label_254:
	lea	rsi, [rbp - 0x2030]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x2038]
	call	safe_read
	mov	qword ptr [rbp - 0x2038], rax
	cmp	qword ptr [rbp - 0x2038], -1
	jne	.label_255
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_17
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x2060], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2068], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2060]
	mov	rdx, qword ptr [rbp - 0x2068]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_242
.label_244:
	mov	rax, qword ptr [rbp - 0x2040]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_247
	mov	byte ptr [rbp - 1], 1
	jmp	.label_242
.label_247:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x2040]
	sub	rax, 0x2000
	mov	qword ptr [rbp - 0x2040], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x2040]
	mov	rcx, qword ptr [rbp - 0x10]
	call	elseek
	cmp	rax, 0
	jge	.label_240
	mov	byte ptr [rbp - 1], 0
	jmp	.label_242
.label_249:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x2040]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	copy_fd
	mov	dword ptr [rbp - 0x205c], eax
	cmp	dword ptr [rbp - 0x205c], 0
	je	.label_245
	mov	edi, dword ptr [rbp - 0x205c]
	mov	rsi, qword ptr [rbp - 0x10]
	call	diagnose_copy_fd_failure
	mov	byte ptr [rbp - 1], 0
	jmp	.label_242
.label_248:
	jmp	.label_246
.label_242:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x2080
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40467f
	.globl sub_40467f
	.type sub_40467f, @function
sub_40467f:

	nop	
.label_245:
	jmp	.label_238
.label_238:
	lea	rdi, [rbp - 0x2030]
	mov	rax, qword ptr [rbp - 0x2050]
	add	rax, 1
	mov	rsi, rax
	call	xwrite_stdout
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x2040]
	add	rax, qword ptr [rbp - 0x2050]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	elseek
	xor	edx, edx
	mov	ecx, edx
	cmp	rcx, rax
	setle	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 1], r8b
	jmp	.label_242
.label_240:
	mov	eax, 0x2000
	mov	edx, eax
	lea	rsi, [rbp - 0x2030]
	mov	edi, dword ptr [rbp - 0x14]
	call	safe_read
	mov	qword ptr [rbp - 0x2038], rax
	cmp	qword ptr [rbp - 0x2038], -1
	jne	.label_251
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_17
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x206c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x2078], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x206c]
	mov	rdx, qword ptr [rbp - 0x2078]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_242
.label_251:
	cmp	qword ptr [rbp - 0x2038], 0
	jne	.label_248
	mov	byte ptr [rbp - 1], 1
	jmp	.label_242
.label_265:
	movabs	rdi, OFFSET FLAT:label_266
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_263
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	esi, 0xa
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_268
	call	gettext
	mov	esi, 0xa
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_260
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_269
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_261
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_258
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_262
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_264
	mov	dword ptr [rbp - 0x34], eax
	call	emit_ancillary_info
.label_267:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4048a1
	.globl sub_4048a1
	.type sub_4048a1, @function
sub_4048a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048ad

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_265
	jmp	.label_257
.label_257:
	movabs	rdi, OFFSET FLAT:label_259
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_267
	.section	.text
	.align	32
	#Procedure 0x404900

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
	#Procedure 0x40493f
	.globl sub_40493f
	.type sub_40493f, @function
sub_40493f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404940
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
	jb	.label_270
	jmp	.label_273
.label_273:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_271
	jmp	.label_270
.label_270:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_272
.label_271:
	mov	byte ptr [rbp - 1], 0
.label_272:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40498e
	.globl sub_40498e
	.type sub_40498e, @function
sub_40498e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404990

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
	#Procedure 0x4049b5
	.globl sub_4049b5
	.type sub_4049b5, @function
sub_4049b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049c0

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
	jne	.label_275
	movabs	rax, OFFSET FLAT:label_274
	mov	qword ptr [rbp - 8], rax
.label_275:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_276
	movabs	rax, OFFSET FLAT:label_277
	mov	qword ptr [rbp - 8], rax
.label_276:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a17
	.globl sub_404a17
	.type sub_404a17, @function
sub_404a17:

	nop	word ptr [rax + rax]
.label_278:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a3e

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
	jne	.label_280
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_280:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_279
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_278
.label_279:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404a90
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_281
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_281:
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
	#Procedure 0x404acd
	.globl sub_404acd
	.type sub_404acd, @function
sub_404acd:

	nop	dword ptr [rax]
.label_296:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x2010], rax
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rdx + 0x2008]
	cmp	rax, rcx
	jae	.label_294
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2000]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax + 0x2000]
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rsi, qword ptr [rbp - 0x48]
	sub	rsi, rax
	mov	qword ptr [rbp - 0x48], rsi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_297
.label_294:
	mov	eax, 0x2018
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x40], rax
.label_297:
	jmp	.label_290
.label_290:
	jmp	.label_285
.label_303:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	rsi, rax
	call	xwrite_stdout
.label_300:
	jmp	.label_284
.label_284:
	jmp	.label_287
.label_287:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_289
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_287
.label_291:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2008]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rcx + 0x2000]
	cmp	rax, 0x2000
	jae	.label_296
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, rax
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rax + 0x2000]
	mov	rdi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2000]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rcx + 0x2000], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rcx + 0x2008]
	mov	qword ptr [rcx + 0x2008], rax
	jmp	.label_290
.label_289:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jg	.label_283
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	call	elseek
	cmp	rax, 0
	jge	.label_283
	mov	byte ptr [rbp - 0x49], 0
.label_283:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404cb5
	.globl sub_404cb5
	.type sub_404cb5, @function
sub_404cb5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cc1

	.globl elide_tail_lines_pipe
	.type elide_tail_lines_pipe, @function
elide_tail_lines_pipe:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	eax, 0x2018
	mov	r8d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0x49], 1
	mov	rdi, r8
	call	xmalloc
	mov	esi, 0x2018
	mov	edi, esi
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x2008], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x2000], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x2010], 0
	call	xmalloc
	mov	qword ptr [rbp - 0x40], rax
.label_285:
	mov	eax, 0x2000
	mov	edx, eax
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_read
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_295
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_298
.label_295:
	jmp	.label_301
.label_298:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_302
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x58]
	call	xwrite_stdout
	jmp	.label_285
.label_304:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x2000], 0
	je	.label_286
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x2000]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x38]
	movsx	edx, byte ptr [rcx + rax]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	cmp	edx, esi
	je	.label_286
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_286:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
.label_292:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	sub	rcx, qword ptr [rdx + 0x2008]
	cmp	rax, rcx
	jae	.label_282
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2000]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rax + 0x2000]
	call	xwrite_stdout
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2008]
	mov	rsi, qword ptr [rbp - 0x48]
	sub	rsi, rax
	mov	qword ptr [rbp - 0x48], rsi
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x2010]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_292
.label_301:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_304
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_17
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x84], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x90], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x84]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x49], 0
	jmp	.label_284
.label_302:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0x2000], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x2008], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x2010], 0
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x68], rax
.label_293:
	mov	rdi, qword ptr [rbp - 0x68]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x68], rax
	cmp	rax, 0
	je	.label_291
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	jmp	.label_293
.label_282:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_300
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rcx + 0x2000]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rax
.label_305:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x70], 0
	mov	byte ptr [rbp - 0x91], cl
	je	.label_288
	mov	rdi, qword ptr [rbp - 0x80]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x80], rax
	cmp	rax, 0
	setne	r8b
	mov	byte ptr [rbp - 0x91], r8b
.label_288:
	mov	al, byte ptr [rbp - 0x91]
	test	al, 1
	jne	.label_299
	jmp	.label_303
.label_299:
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x2008]
	add	rcx, 1
	mov	qword ptr [rax + 0x2008], rcx
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, -1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_305
.label_307:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_308:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40503b
	.globl sub_40503b
	.type sub_40503b, @function
sub_40503b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405044
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_307
	jmp	.label_306
.label_306:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_308
	.section	.text
	.align	32
	#Procedure 0x405070
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_309
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_309:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40509a
	.globl sub_40509a
	.type sub_40509a, @function
sub_40509a:

	nop	word ptr [rax + rax]
.label_311:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_310
.label_310:
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
	#Procedure 0x405131
	.globl sub_405131
	.type sub_405131, @function
sub_405131:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40513c
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
	je	.label_311
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_310
	.section	.text
	.align	32
	#Procedure 0x405170

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_312:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	read
	xor	edi, edi
	mov	edx, edi
	mov	qword ptr [rbp - 0x28], rax
	cmp	rdx, qword ptr [rbp - 0x28]
	jg	.label_317
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_314
.label_317:
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	.label_318
	jmp	.label_312
.label_313:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_314
.label_319:
	jmp	.label_316
.label_316:
	jmp	.label_315
.label_315:
	jmp	.label_312
.label_314:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051eb
	.globl sub_4051eb
	.type sub_4051eb, @function
sub_4051eb:

	nop	word ptr [rax + rax]
.label_318:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_313
	mov	eax, 0x7ff00000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x20]
	jae	.label_313
	mov	qword ptr [rbp - 0x20], 0x7ff00000
	jmp	.label_319
.label_321:
	mov	byte ptr [rbp - 1], 0
.label_324:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40522e
	.globl sub_40522e
	.type sub_40522e, @function
sub_40522e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405239
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
	jb	.label_322
	jmp	.label_320
.label_320:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_322
	jmp	.label_323
.label_323:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_321
	jmp	.label_322
.label_322:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_324
	.section	.text
	.align	32
	#Procedure 0x405290
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_325
	jmp	.label_327
.label_327:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_326
.label_325:
	mov	byte ptr [rbp - 1], 0
.label_326:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052c2
	.globl sub_4052c2
	.type sub_4052c2, @function
sub_4052c2:

	nop	word ptr cs:[rax + rax]
.label_328:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052da
	.globl sub_4052da
	.type sub_4052da, @function
sub_4052da:

	nop	word ptr cs:[rax + rax]
.label_329:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_330
.label_331:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_329
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_328
	.section	.text
	.align	32
	#Procedure 0x40532e

	.globl full_read
	.type full_read, @function
full_read:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_330:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_328
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	call	safe_read
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_331
	jmp	.label_328
.label_333:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_334:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40539e
	.globl sub_40539e
	.type sub_40539e, @function
sub_40539e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053a6

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_332
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_333
.label_332:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_334
.label_381:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_472
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_472
	jmp	.label_537
.label_537:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_335
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_335:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_341
.label_341:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_349
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_349:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_356
.label_356:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_358
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_358:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_472:
	jmp	.label_365
.label_365:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_494
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_494:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_374
.label_374:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_380
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_380
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_380
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_380
	jmp	.label_394
.label_394:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_396
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_396:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_403
.label_403:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_407
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_407:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_380
.label_380:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_416
.label_812:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_375
.label_769:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_359
.label_768:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_767:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_399
	jmp	.label_430
.label_430:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_432
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_432:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_399
.label_399:
	movabs	rax, OFFSET FLAT:label_439
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_359
.label_467:
	jmp	.label_389
.label_389:
	test	byte ptr [rbp - 0x79], 1
	je	.label_446
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_448
.label_538:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_453
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_453:
	jmp	.label_458
.label_458:
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
	jne	.label_469
	jmp	.label_387
.label_426:
	jmp	.label_422
.label_422:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_473
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_473:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_336
.label_457:
	jmp	.label_344
.label_456:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_459
.label_440:
	jmp	.label_344
.label_338:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_420
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_420
	test	byte ptr [rbp - 0x7d], 1
	je	.label_420
	test	byte ptr [rbp - 0x7e], 1
	je	.label_485
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
	jmp	.label_336
.label_395:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_502
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_502
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_502:
	jmp	.label_506
.label_506:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_507
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_507:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_513
.label_513:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_518
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_518:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_521
.label_521:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_526
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_526:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_391:
	jmp	.label_344
.label_359:
	mov	qword ptr [rbp - 0x58], 0
.label_386:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_534
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_536
.label_446:
	jmp	.label_344
.label_821:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_347
	test	byte ptr [rbp - 0x7b], 1
	je	.label_352
	jmp	.label_343
.label_408:
	jmp	.label_355
.label_355:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_359
.label_477:
	jmp	.label_337
.label_820:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_362
	jmp	.label_368
.label_368:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_370
	jmp	.label_528
.label_809:
	test	byte ptr [rbp - 0x79], 1
	je	.label_376
	jmp	.label_342
.label_342:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_381
	jmp	.label_343
.label_528:
	jmp	.label_383
.label_383:
	jmp	.label_344
.label_469:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_385
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_387
.label_770:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_390
	movabs	rdi, OFFSET FLAT:label_393
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_397
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_390:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_355
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_423:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_408
	jmp	.label_509
.label_509:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_413
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_413:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_354
.label_354:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_423
.label_362:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_427
	jmp	.label_343
.label_470:
	jmp	.label_433
.label_433:
	jmp	.label_434
.label_434:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_435
.label_765:
	mov	byte ptr [rbp - 0x79], 1
.label_764:
	mov	byte ptr [rbp - 0x7b], 1
.label_766:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_438
	mov	byte ptr [rbp - 0x79], 1
.label_438:
	jmp	.label_442
.label_442:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_443
	jmp	.label_445
.label_445:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_447
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_447:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_443
.label_443:
	movabs	rax, OFFSET FLAT:label_397
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_359
.label_427:
	jmp	.label_383
.label_822:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_456
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_459
	jmp	.label_440
.label_343:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_462
	test	byte ptr [rbp - 0x79], 1
	je	.label_462
	mov	dword ptr [rbp - 0x34], 4
.label_462:
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
.label_336:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ac7
	.globl sub_405ac7
	.type sub_405ac7, @function
sub_405ac7:

	nop	dword ptr [rax + rax]
.label_501:
	jmp	.label_344
.label_344:
	test	byte ptr [rbp - 0x79], 1
	je	.label_482
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_405
.label_482:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_484
.label_405:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_484
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
	jne	.label_489
.label_484:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_489
	jmp	.label_337
.label_352:
	jmp	.label_337
.label_476:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_500
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_500
	jmp	.label_504
.label_504:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_532
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_532:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_511
.label_511:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_517
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_517:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_519
.label_519:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_524
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_524:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_500:
	jmp	.label_530
.label_530:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_531
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_531:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_471
.label_471:
	jmp	.label_337
.label_337:
	jmp	.label_339
.label_339:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_340
	test	byte ptr [rbp - 0x82], 1
	jne	.label_340
	jmp	.label_350
.label_350:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_351
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_351:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_357
.label_357:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_360
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_360:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_340:
	jmp	.label_369
.label_369:
	jmp	.label_371
.label_371:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_372
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_372:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_379
	mov	byte ptr [rbp - 0x7e], 0
.label_379:
	jmp	.label_384
.label_384:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_386
.label_810:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_389
.label_819:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_391
	test	byte ptr [rbp - 0x7b], 1
	je	.label_395
	jmp	.label_343
.label_508:
	jmp	.label_465
.label_465:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_402
	test	byte ptr [rbp - 0x82], 1
	jne	.label_402
	jmp	.label_406
.label_406:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_409
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_409:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_414
.label_414:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_346
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_346:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_402:
	jmp	.label_428
.label_428:
	jmp	.label_429
.label_429:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_431
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_431:
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
	jmp	.label_436
.label_382:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_392:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_367
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_367
	test	byte ptr [rbp - 0x7b], 1
	je	.label_373
	jmp	.label_343
.label_523:
	jmp	.label_455
.label_455:
	mov	byte ptr [rbp - 0x83], 1
.label_817:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_457
	test	byte ptr [rbp - 0x7b], 1
	je	.label_457
	jmp	.label_343
.label_364:
	test	byte ptr [rbp - 0x81], 1
	je	.label_461
	jmp	.label_464
.label_464:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_466
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_466:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_461:
	jmp	.label_498
.label_498:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_508
	jmp	.label_477
.label_813:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_375
.label_450:
	jmp	.label_444
.label_444:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_378
	mov	byte ptr [rbp - 0x91], 0
.label_378:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_400
.label_400:
	jmp	.label_487
.label_487:
	jmp	.label_529
.label_529:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_458
.label_387:
	jmp	.label_348
.label_348:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_493
	test	byte ptr [rbp - 0x79], 1
	je	.label_501
	test	byte ptr [rbp - 0x91], 1
	jne	.label_501
.label_493:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_436:
	test	byte ptr [rbp - 0x79], 1
	je	.label_364
	test	byte ptr [rbp - 0x91], 1
	jne	.label_364
	jmp	.label_515
.label_515:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_516
	jmp	.label_343
.label_454:
	call	abort
.label_418:
	jmp	.label_452
.label_452:
	jmp	.label_377
.label_377:
	jmp	.label_383
.label_459:
	jmp	.label_522
.label_522:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_523
	jmp	.label_344
.label_376:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_527
	jmp	.label_384
.label_485:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_486
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_486
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_533
.label_490:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_338
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_338
	test	byte ptr [rbp - 0x7b], 1
	je	.label_338
	jmp	.label_343
.label_385:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_345
	mov	byte ptr [rbp - 0x91], 0
.label_499:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_353
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_353:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_363
	jmp	.label_366
.label_363:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_499
.label_816:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_375
.label_370:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_377
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_377
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_377
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_388
	jmp	.label_398
.label_398:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_388
	jmp	.label_404
.label_404:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_388
	jmp	.label_410
.label_410:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_388
	jmp	.label_415
.label_415:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_418
	jmp	.label_388
.label_388:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_424
	jmp	.label_343
	.section	.text
	.align	32
	#Procedure 0x406186

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
.label_533:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_454
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_441]]
	jmp	rcx
.label_811:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_389
.label_763:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_359
.label_505:
	jmp	.label_375
.label_375:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_467
	test	byte ptr [rbp - 0x7b], 1
	je	.label_467
	jmp	.label_343
.label_366:
	jmp	.label_387
.label_527:
	jmp	.label_416
.label_416:
	jmp	.label_344
.label_814:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_389
.label_489:
	jmp	.label_448
.label_448:
	jmp	.label_475
.label_475:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_476
	jmp	.label_343
.label_516:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_478
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_478
	jmp	.label_479
.label_479:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_481
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_481:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_421
.label_421:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_488
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_488:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_492
.label_492:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_496
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_496:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_478:
	jmp	.label_449
.label_449:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_503
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_503:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_510
.label_510:
	jmp	.label_512
.label_512:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_514
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_514:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_520
.label_520:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_525
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_525:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_498
.label_401:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_538
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
	jmp	.label_348
.label_534:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_536:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_361
	jmp	.label_490
.label_361:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_367
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_367
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_367
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_382
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_382
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_392
.label_815:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_389
.label_373:
	mov	byte ptr [rbp - 0x81], 1
.label_367:
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
	ja	.label_401
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_411]]
	jmp	rcx
.label_818:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_344
.label_486:
	jmp	.label_417
.label_417:
	jmp	.label_420
.label_420:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_422
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_422
	jmp	.label_425
.label_425:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_426
	jmp	.label_412
.label_412:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_419
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_419:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_437
.label_437:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_425
.label_345:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_444
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_444
	mov	qword ptr [rbp - 0xb8], 1
.label_435:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_450
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
	jb	.label_451
	jmp	.label_460
.label_460:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_451
	jmp	.label_463
.label_463:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_451
	jmp	.label_468
.label_468:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_470
	jmp	.label_451
.label_451:
	jmp	.label_343
.label_424:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_474
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_474:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_480
.label_480:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_483
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_483:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_535
.label_535:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_491
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_491:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_495
.label_495:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_497
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_497:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_452
.label_347:
	test	byte ptr [rbp - 0x79], 1
	je	.label_505
	test	byte ptr [rbp - 0x7b], 1
	je	.label_505
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_505
	jmp	.label_337
	.section	.text
	.align	32
	#Procedure 0x406780

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
	#Procedure 0x4067b8
	.globl sub_4067b8
	.type sub_4067b8, @function
sub_4067b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067c0
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
	jb	.label_539
	jmp	.label_541
.label_541:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_542
	jmp	.label_539
.label_539:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_540
.label_542:
	mov	byte ptr [rbp - 1], 0
.label_540:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406808
	.globl sub_406808
	.type sub_406808, @function
sub_406808:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406810

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
.label_554:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_553
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_553:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_549
	jmp	.label_546
.label_549:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_554
.label_546:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_543
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_543:
	movabs	rdi, OFFSET FLAT:label_548
	call	gettext
	movabs	rsi, OFFSET FLAT:label_233
	movabs	rdx, OFFSET FLAT:label_234
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
	je	.label_544
	movabs	rsi, OFFSET FLAT:label_551
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_544
	movabs	rdi, OFFSET FLAT:label_545
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_544:
	movabs	rdi, OFFSET FLAT:label_552
	call	gettext
	movabs	rsi, OFFSET FLAT:label_234
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_547
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_274
	movabs	rsi, OFFSET FLAT:label_550
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
	#Procedure 0x4069a9
	.globl sub_4069a9
	.type sub_4069a9, @function
sub_4069a9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4069b0
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
	je	.label_555
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_556
.label_555:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_556
.label_556:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069f7
	.globl sub_4069f7
	.type sub_4069f7, @function
sub_4069f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a00
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_557
	jmp	.label_559
.label_559:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_558
.label_557:
	mov	byte ptr [rbp - 1], 0
.label_558:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a32
	.globl sub_406a32
	.type sub_406a32, @function
sub_406a32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a40

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
	#Procedure 0x406a73
	.globl sub_406a73
	.type sub_406a73, @function
sub_406a73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a80

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
	je	.label_560
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_560:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406abb
	.globl sub_406abb
	.type sub_406abb, @function
sub_406abb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ac0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	mov	esi, eax
	mov	dword ptr [rsp], r10d
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b0e
	.globl sub_406b0e
	.type sub_406b0e, @function
sub_406b0e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406b10

	.globl elseek
	.type elseek, @function
elseek:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_561
	call	__errno_location
	movabs	rcx, OFFSET FLAT:label_562
	movabs	rdx, OFFSET FLAT:label_563
	mov	esi, dword ptr [rax]
	cmp	dword ptr [rbp - 0x14], 0
	cmove	rcx, rdx
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x44], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	call	quotearg_n_style_colon
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	call	offtostr
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8, rax
	mov	al, 0
	call	error
.label_561:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bb8
	.globl sub_406bb8
	.type sub_406bb8, @function
sub_406bb8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bc0

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
	#Procedure 0x406bdb
	.globl sub_406bdb
	.type sub_406bdb, @function
sub_406bdb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406be0

	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bee
	.globl sub_406bee
	.type sub_406bee, @function
sub_406bee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406bf0

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
	jae	.label_564
	call	xalloc_die
.label_564:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
.label_566:
	movabs	rax, OFFSET FLAT:label_397
	movabs	rcx, OFFSET FLAT:label_439
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_569:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c6a
	.globl sub_406c6a
	.type sub_406c6a, @function
sub_406c6a:

	nop	dword ptr [rax + rax]
.label_572:
	movabs	rsi, OFFSET FLAT:label_565
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_566
	movabs	rax, OFFSET FLAT:label_567
	movabs	rcx, OFFSET FLAT:label_568
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_569
	.section	.text
	.align	32
	#Procedure 0x406cb9

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
	je	.label_570
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_569
.label_570:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_571
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_572
	movabs	rax, OFFSET FLAT:label_573
	movabs	rcx, OFFSET FLAT:label_574
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_569
	.section	.text
	.align	32
	#Procedure 0x406d40

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
	#Procedure 0x406d60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_576:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_577
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_576
.label_577:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_578
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_195]],  rax
.label_578:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_575
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_575:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e34
	.globl sub_406e34
	.type sub_406e34, @function
sub_406e34:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e40
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
	#Procedure 0x406e6a
	.globl sub_406e6a
	.type sub_406e6a, @function
sub_406e6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e70

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_579
	jmp	.label_582
.label_582:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_582
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_581
.label_579:
	jmp	.label_580
.label_580:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_580
	jmp	.label_581
.label_581:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f67
	.globl sub_406f67
	.type sub_406f67, @function
sub_406f67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f70

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
	#Procedure 0x406fa2
	.globl sub_406fa2
	.type sub_406fa2, @function
sub_406fa2:

	nop	word ptr cs:[rax + rax]
.label_583:
	mov	dword ptr [rbp - 4], 0
.label_585:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fc0
	.globl sub_406fc0
	.type sub_406fc0, @function
sub_406fc0:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406fc7

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
	jne	.label_584
	test	byte ptr [rbp - 0x13], 1
	je	.label_583
	test	byte ptr [rbp - 0x11], 1
	jne	.label_584
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_583
.label_584:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_586
	call	__errno_location
	mov	dword ptr [rax], 0
.label_586:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_585
.label_587:
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
	#Procedure 0x40708a
	.globl sub_40708a
	.type sub_40708a, @function
sub_40708a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407096

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
	jne	.label_587
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4070d0

	.globl head_lines
	.type head_lines, @function
head_lines:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20f0
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
.label_593:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_589
	mov	eax, 0x2000
	mov	edx, eax
	lea	rsi, [rbp - 0x2020]
	mov	edi, dword ptr [rbp - 0x14]
	call	safe_read
	mov	qword ptr [rbp - 0x2028], rax
	mov	qword ptr [rbp - 0x2030], 0
	cmp	qword ptr [rbp - 0x2028], -1
	jne	.label_588
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_17
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x20cc], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20d8], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x20cc]
	mov	rdx, qword ptr [rbp - 0x20d8]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_591
.label_589:
	mov	byte ptr [rbp - 1], 1
.label_591:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40718f
	.globl sub_40718f
	.type sub_40718f, @function
sub_40718f:

	nop	word ptr cs:[rax + rax]
.label_588:
	cmp	qword ptr [rbp - 0x2028], 0
	jne	.label_594
	jmp	.label_589
.label_594:
	jmp	.label_598
.label_598:
	mov	rax, qword ptr [rbp - 0x2030]
	cmp	rax, qword ptr [rbp - 0x2028]
	jae	.label_597
	mov	rax, qword ptr [rbp - 0x2030]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x2030], rcx
	movsx	edx, byte ptr [rbp + rax - 0x2020]
	movsx	esi,  byte ptr [byte ptr [line_end]]
	cmp	edx, esi
	jne	.label_590
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_590
	mov	edx, 1
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 0x2028]
	sub	rsi, qword ptr [rbp - 0x2030]
	mov	qword ptr [rbp - 0x2038], rsi
	mov	edi, dword ptr [rbp - 0x14]
	sub	rcx, qword ptr [rbp - 0x2038]
	mov	rsi, rcx
	call	lseek
	cmp	rax, 0
	jge	.label_596
	lea	rsi, [rbp - 0x20c8]
	mov	edi, dword ptr [rbp - 0x14]
	call	fstat
	cmp	eax, 0
	jne	.label_592
	mov	eax, dword ptr [rbp - 0x20b0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_595
.label_592:
	mov	edx, 1
	xor	eax, eax
	mov	ecx, eax
	mov	edi, dword ptr [rbp - 0x14]
	sub	rcx, qword ptr [rbp - 0x2038]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20e0], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x20e0]
	call	elseek
	mov	qword ptr [rbp - 0x20e8], rax
.label_595:
	jmp	.label_596
.label_596:
	jmp	.label_597
.label_590:
	jmp	.label_598
.label_597:
	lea	rdi, [rbp - 0x2020]
	mov	rsi, qword ptr [rbp - 0x2030]
	call	xwrite_stdout
	jmp	.label_593
	.section	.text
	.align	32
	#Procedure 0x4072d0

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
	#Procedure 0x4072ef
	.globl sub_4072ef
	.type sub_4072ef, @function
sub_4072ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4072f0
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
	jb	.label_599
	jmp	.label_601
.label_601:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_602
	jmp	.label_599
.label_599:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_600
.label_602:
	mov	byte ptr [rbp - 1], 0
.label_600:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40733b
	.globl sub_40733b
	.type sub_40733b, @function
sub_40733b:

	nop	dword ptr [rax + rax]
.label_604:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40734a
	.globl sub_40734a
	.type sub_40734a, @function
sub_40734a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407354
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
	jb	.label_603
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_604
.label_603:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4073a0

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
	#Procedure 0x4073d7
	.globl sub_4073d7
	.type sub_4073d7, @function
sub_4073d7:

	nop	word ptr [rax + rax]
.label_607:
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
	#Procedure 0x407406
	.globl sub_407406
	.type sub_407406, @function
sub_407406:

	nop	dword ptr [rax]
.label_608:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_606:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_609:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_610
	jmp	.label_607
.label_610:
	jmp	.label_611
.label_611:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_605
	.section	.text
	.align	32
	#Procedure 0x407473

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
.label_605:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_609
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_608
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_606
	.section	.text
	.align	32
	#Procedure 0x4074f0
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
	#Procedure 0x40751f
	.globl sub_40751f
	.type sub_40751f, @function
sub_40751f:

	nop	
.label_613:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_612
.label_612:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40753b
	.globl sub_40753b
	.type sub_40753b, @function
sub_40753b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407540
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_613
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_612
.label_614:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_617:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_616
	movabs	rsi, OFFSET FLAT:label_615
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_616
	movabs	rsi, OFFSET FLAT:label_620
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_618
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_618:
	jmp	.label_616
.label_616:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407615
	.globl sub_407615
	.type sub_407615, @function
sub_407615:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40761c

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_621
	movabs	rdi, OFFSET FLAT:label_619
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_621:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_614
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_617
	.section	.text
	.align	32
	#Procedure 0x407680

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
	#Procedure 0x4076ac
	.globl sub_4076ac
	.type sub_4076ac, @function
sub_4076ac:

	nop	dword ptr [rax]
.label_623:
	mov	byte ptr [rbp - 1], 0
.label_624:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076be
	.globl sub_4076be
	.type sub_4076be, @function
sub_4076be:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076cc
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_623
	jmp	.label_622
.label_622:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_624
	.section	.text
	.align	32
	#Procedure 0x4076f0

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
	#Procedure 0x407718
	.globl sub_407718
	.type sub_407718, @function
sub_407718:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407720
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
	#Procedure 0x40773a
	.globl sub_40773a
	.type sub_40773a, @function
sub_40773a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407740
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
.label_627:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_625
	jmp	.label_626
.label_626:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_627
.label_625:
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
.label_628:
	mov	byte ptr [rbp - 1], 0
.label_631:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077be
	.globl sub_4077be
	.type sub_4077be, @function
sub_4077be:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077c9
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
	jb	.label_629
	jmp	.label_632
.label_632:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_629
	jmp	.label_630
.label_630:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_628
	jmp	.label_629
.label_629:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_631
	.section	.text
	.align	32
	#Procedure 0x407820

	.globl write_header
	.type write_header, @function
write_header:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_633
	movabs	rcx, OFFSET FLAT:label_634
	movabs	rdx, OFFSET FLAT:label_274
	mov	qword ptr [rbp - 8], rdi
	mov	sil,  byte ptr [byte ptr [write_header.first_file]]
	test	sil, 1
	cmovne	rcx, rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsi, rcx
	mov	al, 0
	call	printf
	mov	byte ptr [byte ptr [write_header.first_file]],  0
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40787c
	.globl sub_40787c
	.type sub_40787c, @function
sub_40787c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407880
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_635
	jmp	.label_637
.label_637:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_636
.label_635:
	mov	byte ptr [rbp - 1], 0
.label_636:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078b2
	.globl sub_4078b2
	.type sub_4078b2, @function
sub_4078b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078c0

	.globl head_file
	.type head_file, @function
head_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, cl
	mov	r8b, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	r8b, 1
	mov	byte ptr [rbp - 0x19], r8b
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:label_638
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	sete	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x22], r8b
	test	byte ptr [rbp - 0x22], 1
	je	.label_644
	movabs	rdi, OFFSET FLAT:label_640
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	dword ptr [rbp - 0x20], 0
	call	gettext
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x10], rax
	mov	edi, ecx
	mov	esi, ecx
	call	xset_binary_mode
	jmp	.label_646
.label_643:
	jmp	.label_646
.label_646:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	mov	cl, byte ptr [rbp - 0x1a]
	and	al, 1
	and	cl, 1
	movzx	r8d, al
	mov	byte ptr [rbp - 0x31], cl
	mov	ecx, r8d
	mov	al, byte ptr [rbp - 0x31]
	movzx	r8d, al
	call	head
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	test	byte ptr [rbp - 0x22], 1
	jne	.label_639
	mov	edi, dword ptr [rbp - 0x20]
	call	close
	cmp	eax, 0
	je	.label_639
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_642
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x38], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_641
.label_644:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	jge	.label_643
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_645
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_641
.label_639:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_641:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a4c
	.globl sub_407a4c
	.type sub_407a4c, @function
sub_407a4c:

	nop	dword ptr [rax]
.label_648:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_649:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a5b
	.globl sub_407a5b
	.type sub_407a5b, @function
sub_407a5b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a64

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_648
	jmp	.label_647
.label_647:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_649
	.section	.text
	.align	32
	#Procedure 0x407a90

	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a9b
	.globl sub_407a9b
	.type sub_407a9b, @function
sub_407a9b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407aa0

	.globl elide_tail_lines_file
	.type elide_tail_lines_file, @function
elide_tail_lines_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x38], rcx
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_650
	cmp	qword ptr [rbp - 0x30], 0
	jl	.label_650
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x40], rdx
	jge	.label_651
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_651
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_653
.label_651:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_653
.label_653:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rcx, rax
	jg	.label_655
.label_650:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	call	elide_tail_lines_pipe
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_654
.label_655:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x49], al
	jle	.label_652
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x38]
	call	elide_tail_lines_seekable
	mov	byte ptr [rbp - 0x49], al
.label_652:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_654:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ba6
	.globl sub_407ba6
	.type sub_407ba6, @function
sub_407ba6:

	nop	word ptr cs:[rax + rax]
.label_660:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_656:
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
	#Procedure 0x407bea
	.globl sub_407bea
	.type sub_407bea, @function
sub_407bea:

	nop	word ptr [rax + rax]
.label_659:
	jmp	.label_656
	.section	.text
	.align	32
	#Procedure 0x407bf8

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
	jne	.label_658
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_657
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
.label_657:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_659
	call	xalloc_die
.label_658:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_660
	call	xalloc_die
.label_759:
	mov	byte ptr [byte ptr [line_end]],  0
	jmp	.label_661
.label_699:
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_675
.label_694:
	movabs	rdi, OFFSET FLAT:label_677
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x48]
	movsx	edx, byte ptr [rdi]
	mov	edi, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0xa0], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0xa0]
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_755:
	mov	byte ptr [rbp - 0x31], 0
	mov	byte ptr [rbp - 0x59], 0
	jmp	.label_661
.label_754:
	mov	byte ptr [rbp - 0x31], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
	jmp	.label_661
.label_668:
	mov	byte ptr [rbp - 0x31], 1
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x32], dl
	test	byte ptr [rbp - 0x32], 1
	je	.label_667
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
.label_667:
	mov	al, byte ptr [rbp - 0x31]
	mov	rsi,  qword ptr [word ptr [optarg]]
	and	al, 1
	movzx	edi, al
	call	string_to_integer
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_675
.label_758:
	mov	dword ptr [rbp - 0x14], 1
	jmp	.label_661
	.section	.text
	.align	32
	#Procedure 0x407d77

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
	mov	byte ptr [rbp - 0x15], 1
	mov	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x31], 1
	mov	byte ptr [rbp - 0x32], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_274
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_696
	movabs	rsi, OFFSET FLAT:label_697
	mov	qword ptr [rbp - 0x78], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_696
	mov	qword ptr [rbp - 0x80], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x88], rax
	call	atexit
	mov	ecx, 1
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	mov	byte ptr [byte ptr [print_headers]],  0
	mov	byte ptr [byte ptr [line_end]],  0xa
	cmp	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x8c], eax
	jge	.label_666
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_666
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax + 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_666
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x59], 0
.label_686:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_686
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x58], rax
.label_703:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	byte ptr [rax], 0
	je	.label_692
	mov	rax, qword ptr [rbp - 0x48]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x62
	mov	eax, ecx
	sub	ecx, 0x18
	mov	qword ptr [rbp - 0x98], rax
	mov	dword ptr [rbp - 0x9c], ecx
	ja	.label_694
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_700]]
	jmp	rcx
.label_678:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_662
	xor	edi, edi
	call	close
	cmp	eax, 0
	jge	.label_662
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_638
	mov	esi, dword ptr [rax]
	mov	al, 0
	call	error
.label_687:
	mov	byte ptr [rbp - 0x31], 0
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x32], dl
	test	byte ptr [rbp - 0x32], 1
	je	.label_674
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	qword ptr [word ptr [optarg]],  rax
.label_674:
	mov	al, byte ptr [rbp - 0x31]
	mov	rsi,  qword ptr [word ptr [optarg]]
	and	al, 1
	movzx	edi, al
	call	string_to_integer
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_675
.label_701:
	movabs	rsi, OFFSET FLAT:label_264
	movabs	rdx, OFFSET FLAT:label_233
	movabs	r8, OFFSET FLAT:label_684
	movabs	r9, OFFSET FLAT:label_685
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_756:
	mov	byte ptr [rbp - 0x31], 1
	jmp	.label_661
.label_661:
	jmp	.label_702
.label_702:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_703
.label_671:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_705
	movsxd	rax,  dword ptr [dword ptr [optind]]
	shl	rax, 3
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_664
.label_662:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x15]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408042
	.globl sub_408042
	.type sub_408042, @function
sub_408042:

	nop	
.label_695:
	mov	dword ptr [rbp - 0x14], 2
	jmp	.label_675
.label_675:
	jmp	.label_669
.label_757:
	mov	dword ptr [rbp - 0x14], 2
	jmp	.label_661
.label_704:
	mov	byte ptr [byte ptr [line_end]],  0
	jmp	.label_675
.label_682:
	xor	edi, edi
	call	usage
.label_689:
	cmp	dword ptr [rbp - 0x14], 1
	je	.label_683
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_676
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, 1
	cmp	eax, ecx
	jge	.label_676
.label_683:
	mov	byte ptr [byte ptr [print_headers]],  1
.label_676:
	test	byte ptr [rbp - 0x31], 1
	jne	.label_671
	test	byte ptr [rbp - 0x32], 1
	je	.label_671
	movabs	rax, 0x7fffffffffffffff
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_671
	movabs	rdi, OFFSET FLAT:label_143
	call	gettext
	lea	rsi, [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe0], rax
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	edi, 1
	mov	esi, 0x4b
	movabs	rdx, OFFSET FLAT:label_79
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	r8, rax
	mov	al, 0
	call	error
.label_705:
	movabs	rax, OFFSET FLAT:main.default_file_list
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_664
.label_664:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	edi, 1
	xor	esi, esi
	mov	qword ptr [rbp - 0x40], rax
	call	xset_binary_mode
	mov	qword ptr [rbp - 0x28], 0
.label_688:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_678
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	dl, byte ptr [rbp - 0x31]
	mov	r8b, byte ptr [rbp - 0x32]
	and	dl, 1
	and	r8b, 1
	movzx	edx, dl
	movzx	ecx, r8b
	call	head_file
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_688
.label_692:
	mov	al, byte ptr [rbp - 0x59]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	byte ptr [rcx], al
	cmp	byte ptr [rbp - 0x59], 0
	je	.label_693
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax + 1], 0
.label_693:
	mov	al, byte ptr [rbp - 0x31]
	mov	rsi, qword ptr [rbp - 0x50]
	and	al, 1
	movzx	edi, al
	call	string_to_integer
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	qword ptr [rbp - 0x10], rax
	mov	edi, dword ptr [rbp - 8]
	add	edi, -1
	mov	dword ptr [rbp - 8], edi
.label_666:
	jmp	.label_669
.label_669:
	movabs	rdx, OFFSET FLAT:label_670
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x1c], eax
	cmp	eax, -1
	je	.label_689
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0xa4], eax
	mov	dword ptr [rbp - 0xa8], ecx
	je	.label_701
	jmp	.label_680
.label_680:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0xac], eax
	je	.label_682
	jmp	.label_673
.label_673:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_687
	jmp	.label_690
.label_690:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_668
	jmp	.label_681
.label_681:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_695
	jmp	.label_698
.label_698:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_699
	jmp	.label_691
.label_691:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_704
	jmp	.label_663
.label_663:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0xc4], eax
	jne	.label_665
	jmp	.label_672
.label_672:
	mov	byte ptr [byte ptr [presume_input_pipe]],  1
	jmp	.label_675
.label_665:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_679
	movabs	rdi, OFFSET FLAT:label_677
	call	gettext
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0xd4], edx
	mov	rdx, rax
	mov	ecx, dword ptr [rbp - 0xd4]
	mov	al, 0
	call	error
.label_679:
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x408380

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
	jge	.label_706
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_709
.label_706:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_707
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_708
.label_707:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_708
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_708:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_710
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_710:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_709:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40844e
	.globl sub_40844e
	.type sub_40844e, @function
sub_40844e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408450

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_711
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_711
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	clearerr_unlocked
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_712
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	call	gettext
	mov	edi, 4
	movabs	rsi, OFFSET FLAT:label_713
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_711:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084eb
	.globl sub_4084eb
	.type sub_4084eb, @function
sub_4084eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084f0
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
	#Procedure 0x408526
	.globl sub_408526
	.type sub_408526, @function
sub_408526:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408530

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
	#Procedure 0x4085a5
	.globl sub_4085a5
	.type sub_4085a5, @function
sub_4085a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085b0

	.globl elide_tail_bytes_file
	.type elide_tail_bytes_file, @function
elide_tail_bytes_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x38], rcx
	test	byte ptr [byte ptr [presume_input_pipe]],  1
	jne	.label_717
	cmp	qword ptr [rbp - 0x30], 0
	jl	.label_717
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x58], rdx
	jge	.label_714
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + 0x38], rax
	ja	.label_714
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_715
.label_714:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_715
.label_715:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rcx, rax
	jg	.label_716
.label_717:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	call	elide_tail_bytes_pipe
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_718
.label_716:
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_720
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_719
.label_720:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x68], rax
.label_719:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_722
	mov	byte ptr [rbp - 1], 1
	jmp	.label_718
.label_721:
	mov	edi, dword ptr [rbp - 0x4c]
	mov	rsi, qword ptr [rbp - 0x10]
	call	diagnose_copy_fd_failure
	mov	byte ptr [rbp - 1], 0
.label_718:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086db
	.globl sub_4086db
	.type sub_4086db, @function
sub_4086db:

	nop	word ptr cs:[rax + rax]
.label_722:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	copy_fd
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_721
	mov	byte ptr [rbp - 1], 1
	jmp	.label_718
	.section	.text
	.align	32
	#Procedure 0x408710

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	call	__gl_setmode_check
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_724
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_723
.label_724:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	__gl_setmode
	mov	dword ptr [rbp - 0x10], eax
.label_723:
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408755
	.globl sub_408755
	.type sub_408755, @function
sub_408755:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087c5
	.globl sub_4087c5
	.type sub_4087c5, @function
sub_4087c5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087d2
	.globl sub_4087d2
	.type sub_4087d2, @function
sub_4087d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087f6
	.globl sub_4087f6
	.type sub_4087f6, @function
sub_4087f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408809
	.globl sub_408809
	.type sub_408809, @function
sub_408809:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408810

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
