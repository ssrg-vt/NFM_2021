	.section	.text
	.align	32
	#Procedure 0x401709
	.globl sub_401709
	.type sub_401709, @function
sub_401709:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40170a
	.globl sub_40170a
	.type sub_40170a, @function
sub_40170a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401742
	.globl sub_401742
	.type sub_401742, @function
sub_401742:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40178a
	.globl sub_40178a
	.type sub_40178a, @function
sub_40178a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017ac
	.globl sub_4017ac
	.type sub_4017ac, @function
sub_4017ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017bd
	.globl sub_4017bd
	.type sub_4017bd, @function
sub_4017bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017d6
	.globl sub_4017d6
	.type sub_4017d6, @function
sub_4017d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017e0

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
	je	.label_9
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_10
.label_9:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_10
.label_10:
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
	#Procedure 0x401882
	.globl sub_401882
	.type sub_401882, @function
sub_401882:

	nop	word ptr cs:[rax + rax]
.label_15:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_11
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_13]],  rax
.label_11:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_12
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_12:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401916
	.globl sub_401916
	.type sub_401916, @function
sub_401916:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401922
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_14:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_15
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_14
	.section	.text
	.align	32
	#Procedure 0x401970

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	freopen
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40199b
	.globl sub_40199b
	.type sub_40199b, @function
sub_40199b:

	nop	dword ptr [rax + rax]
.label_16:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019bb
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
	jae	.label_16
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4019f0

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
	#Procedure 0x401a9d
	.globl sub_401a9d
	.type sub_401a9d, @function
sub_401a9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401aa0
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
	#Procedure 0x401aba
	.globl sub_401aba
	.type sub_401aba, @function
sub_401aba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ac0

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_19:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_18
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_20
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_20:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_18:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_17
	jmp	.label_21
.label_17:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_19
.label_21:
	cmp	qword ptr [rbp - 0x18], 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b4c
	.globl sub_401b4c
	.type sub_401b4c, @function
sub_401b4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b50

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
	jne	.label_22
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_25
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
.label_25:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_24
	call	xalloc_die
.label_26:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_23:
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
	#Procedure 0x401c11
	.globl sub_401c11
	.type sub_401c11, @function
sub_401c11:

	nop	word ptr [rax + rax]
.label_22:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_26
	call	xalloc_die
.label_24:
	jmp	.label_23
	.section	.text
	.align	32
	#Procedure 0x401c40
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_27
	call	gettext
	movabs	rsi, OFFSET FLAT:label_29
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_30
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_31
	movabs	rdx, OFFSET FLAT:label_32
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_28
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
	#Procedure 0x401cc6
	.globl sub_401cc6
	.type sub_401cc6, @function
sub_401cc6:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cd0

	.globl sub_401cd0
	.type sub_401cd0, @function
sub_401cd0:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_33
	.section	.text
	.align	32
	#Procedure 0x401cd9
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
	ja	.label_34
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_35]]
	jmp	rcx
.label_34:
	mov	byte ptr [rbp - 1], 0
.label_33:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d11
	.globl sub_401d11
	.type sub_401d11, @function
sub_401d11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d20

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
	jne	.label_36
	mov	dword ptr [rbp - 4], 0
	jmp	.label_40
.label_36:
	jmp	.label_37
.label_37:
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
	jne	.label_39
	jmp	.label_38
.label_39:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_37
.label_38:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_40:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401dd1
	.globl sub_401dd1
	.type sub_401dd1, @function
sub_401dd1:

	nop	word ptr cs:[rax + rax]
.label_821:
	movabs	rdi, OFFSET FLAT:label_41
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
	jmp	.label_42
	.section	.text
	.align	32
	#Procedure 0x401e35

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
	je	.label_57
	movabs	rsi, OFFSET FLAT:label_54
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_44
.label_817:
	jmp	.label_42
.label_823:
	movabs	rdi, OFFSET FLAT:label_47
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
	jmp	.label_42
.label_825:
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
	jmp	.label_42
.label_824:
	movabs	rdi, OFFSET FLAT:label_45
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
	jmp	.label_42
.label_818:
	movabs	rdi, OFFSET FLAT:label_46
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
	jmp	.label_42
.label_820:
	movabs	rdi, OFFSET FLAT:label_43
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
	jmp	.label_42
.label_819:
	movabs	rdi, OFFSET FLAT:label_52
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
	jmp	.label_42
.label_822:
	movabs	rdi, OFFSET FLAT:label_51
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
	jmp	.label_42
.label_826:
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
	jmp	.label_42
.label_57:
	movabs	rsi, OFFSET FLAT:label_56
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_44:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_55
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
	mov	ecx, OFFSET FLAT:label_49
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
	ja	.label_59
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_48]]
	jmp	rcx
.label_59:
	movabs	rdi, OFFSET FLAT:label_53
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
.label_42:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40239f
	.globl sub_40239f
	.type sub_40239f, @function
sub_40239f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4023a0

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
	#Procedure 0x4023d8
	.globl sub_4023d8
	.type sub_4023d8, @function
sub_4023d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023e0

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
	je	.label_60
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_62
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_63
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_61
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_64
.label_63:
	mov	byte ptr [rbp - 5], 0
.label_64:
	jmp	.label_60
.label_60:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402453
	.globl sub_402453
	.type sub_402453, @function
sub_402453:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402460
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
	jae	.label_65
	call	xalloc_die
.label_65:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024a8
	.globl sub_4024a8
	.type sub_4024a8, @function
sub_4024a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_66
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_67
.label_66:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_68
.label_67:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_68:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402508
	.globl sub_402508
	.type sub_402508, @function
sub_402508:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402510

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
	jge	.label_74
	call	abort
.label_74:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_71
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_72
	call	xalloc_die
.label_72:
	test	byte ptr [rbp - 0x31], 1
	je	.label_70
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_73
.label_70:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_73:
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
	je	.label_76
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_13]]
	mov	qword ptr [rax + 8], rcx
.label_76:
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
.label_71:
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
	ja	.label_75
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_69
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_69:
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
.label_75:
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
	#Procedure 0x402783
	.globl sub_402783
	.type sub_402783, @function
sub_402783:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402790

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
	jge	.label_80
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_77
.label_80:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_81
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_79
.label_81:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_79
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_79:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_78
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_78:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_77:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40285e
	.globl sub_40285e
	.type sub_40285e, @function
sub_40285e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402860

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
	#Procedure 0x402897
	.globl sub_402897
	.type sub_402897, @function
sub_402897:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028a0

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
	je	.label_82
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_83
.label_82:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_83
.label_83:
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
	je	.label_84
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_84:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029f4
	.globl sub_4029f4
	.type sub_4029f4, @function
sub_4029f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a00

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_85
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	jmp	.label_86
.label_85:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
.label_86:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a54
	.globl sub_402a54
	.type sub_402a54, @function
sub_402a54:

	nop	word ptr cs:[rax + rax]
.label_90:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_87
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_88
.label_89:
	jmp	.label_88
.label_88:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402aaa
	.globl sub_402aaa
	.type sub_402aaa, @function
sub_402aaa:

	nop	dword ptr [rax + rax]
.label_87:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_89
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402abf

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_93:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_91
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_94
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_94:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_91:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_92
	jmp	.label_90
.label_92:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	call_freefun
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
	jmp	.label_93
	.section	.text
	.align	32
	#Procedure 0x402b60

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
	jne	.label_95
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_95:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_96
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_96
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_96
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_97
.label_96:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_97:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c01
	.globl sub_402c01
	.type sub_402c01, @function
sub_402c01:

	nop	word ptr cs:[rax + rax]
.label_107:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_101
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_101:
	movabs	rdi, OFFSET FLAT:label_100
	call	gettext
	movabs	rsi, OFFSET FLAT:label_31
	movabs	rdx, OFFSET FLAT:label_32
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
	je	.label_99
	movabs	rsi, OFFSET FLAT:label_102
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_99
	movabs	rdi, OFFSET FLAT:label_105
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_99:
	movabs	rdi, OFFSET FLAT:label_106
	call	gettext
	movabs	rsi, OFFSET FLAT:label_32
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_98
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_103
	movabs	rsi, OFFSET FLAT:label_104
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
	#Procedure 0x402d35
	.globl sub_402d35
	.type sub_402d35, @function
sub_402d35:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402d3c

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
.label_110:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_109
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_109:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_108
	jmp	.label_107
.label_108:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_110
.label_126:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
.label_127:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x51], cl
	je	.label_128
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x23
	setne	dl
	mov	byte ptr [rbp - 0x51], dl
.label_128:
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_129
	jmp	.label_125
.label_129:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_127
.label_131:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_111
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x23
	jne	.label_116
.label_111:
	jmp	.label_113
.label_125:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
.label_122:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x60], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x60]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	je	.label_115
	jmp	.label_118
.label_118:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_122
.label_115:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, rcx
	mov	rsi, rax
	call	xstrndup
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_113:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402eac
	.globl sub_402eac
	.type sub_402eac, @function
sub_402eac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402eaf

	.globl parse_line
	.type parse_line, @function
parse_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
.label_119:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x38], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	je	.label_131
	jmp	.label_117
.label_117:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_119
.label_121:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	mov	rsi, rax
	call	xstrndup
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0
	jne	.label_112
	jmp	.label_113
.label_112:
	jmp	.label_114
.label_114:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x50], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	jne	.label_114
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_120
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x23
	jne	.label_126
.label_120:
	jmp	.label_113
.label_116:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_124:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x40], rcx
	call	__ctype_b_loc
	xor	edi, edi
	mov	dl, dil
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x40]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x2000
	cmp	edi, 0
	mov	byte ptr [rbp - 0x41], dl
	jne	.label_123
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x41], dl
.label_123:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_130
	jmp	.label_121
.label_130:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_124
	.section	.text
	.align	32
	#Procedure 0x403040

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
	#Procedure 0x403060

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_132
	jmp	.label_136
.label_136:
	movabs	rdi, OFFSET FLAT:label_139
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_133
.label_132:
	movabs	rdi, OFFSET FLAT:label_134
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_135
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_137
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_138
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_141
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_140
	mov	dword ptr [rbp - 0x28], eax
	call	emit_ancillary_info
.label_133:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x403176
	.globl sub_403176
	.type sub_403176, @function
sub_403176:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403180
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_142
	jmp	.label_144
.label_144:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_143
.label_142:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_143:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031b7
	.globl sub_4031b7
	.type sub_4031b7, @function
sub_4031b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031c0
	.globl base_len
	.type base_len, @function
base_len:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
.label_147:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_145
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_145:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_146
	jmp	.label_149
.label_146:
	jmp	.label_148
.label_148:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_147
.label_149:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403244
	.globl sub_403244
	.type sub_403244, @function
sub_403244:

	nop	word ptr cs:[rax + rax]
.label_150:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40325a
	.globl sub_40325a
	.type sub_40325a, @function
sub_40325a:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40325c

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
	jne	.label_150
	cmp	qword ptr [rbp - 8], 0
	je	.label_150
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403290

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
	#Procedure 0x4032ab
	.globl sub_4032ab
	.type sub_4032ab, @function
sub_4032ab:

	nop	dword ptr [rax + rax]
.label_152:
	mov	byte ptr [rbp - 1], 0
.label_153:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032be
	.globl sub_4032be
	.type sub_4032be, @function
sub_4032be:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032cc
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_152
	jmp	.label_151
.label_151:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_153
	.section	.text
	.align	32
	#Procedure 0x4032f0
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
	#Procedure 0x403306
	.globl sub_403306
	.type sub_403306, @function
sub_403306:

	nop	word ptr cs:[rax + rax]
.label_160:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	rpl_freopen
	mov	qword ptr [rbp - 0x18], rax
.label_161:
	jmp	.label_155
.label_155:
	jmp	.label_157
.label_157:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], ecx
	test	byte ptr [rbp - 0x1b], 1
	je	.label_158
	mov	edi, 2
	call	close
	mov	dword ptr [rbp - 0x30], eax
.label_158:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_154
	mov	edi, 1
	call	close
	mov	dword ptr [rbp - 0x34], eax
.label_154:
	test	byte ptr [rbp - 0x19], 1
	je	.label_156
	xor	edi, edi
	call	close
	mov	dword ptr [rbp - 0x38], eax
.label_156:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_159
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x3c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
.label_159:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033a0
	.globl sub_4033a0
	.type sub_4033a0, @function
sub_4033a0:

	nop	dword ptr [rax]
.label_165:
	test	byte ptr [rbp - 0x1b], 1
	je	.label_160
	mov	edi, 2
	call	protect_fd
	test	al, 1
	jne	.label_160
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_161
	.section	.text
	.align	32
	#Procedure 0x4033cc

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [rbp - 0x1b], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	fileno
	mov	ecx, eax
	test	eax, eax
	mov	dword ptr [rbp - 0x24], ecx
	je	.label_171
	jmp	.label_162
.label_162:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	je	.label_163
	jmp	.label_169
.label_169:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 2
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_164
	jmp	.label_173
.label_173:
	mov	eax, 2
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 2
	je	.label_167
	mov	byte ptr [rbp - 0x1b], 1
.label_167:
	jmp	.label_164
.label_164:
	mov	eax, 1
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 1
	je	.label_170
	mov	byte ptr [rbp - 0x1a], 1
.label_170:
	jmp	.label_163
.label_163:
	xor	eax, eax
	mov	edi, eax
	mov	esi, eax
	call	dup2
	cmp	eax, 0
	je	.label_172
	mov	byte ptr [rbp - 0x19], 1
.label_172:
	jmp	.label_171
.label_171:
	jmp	.label_166
.label_166:
	test	byte ptr [rbp - 0x19], 1
	je	.label_168
	xor	edi, edi
	call	protect_fd
	test	al, 1
	jne	.label_168
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_157
.label_168:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_165
	mov	edi, 1
	call	protect_fd
	test	al, 1
	jne	.label_165
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_155
	.section	.text
	.align	32
	#Procedure 0x4034e0
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
	jb	.label_174
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_175
.label_174:
	call	xalloc_die
.label_175:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403536
	.globl sub_403536
	.type sub_403536, @function
sub_403536:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403540

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
	#Procedure 0x403573
	.globl sub_403573
	.type sub_403573, @function
sub_403573:

	nop	word ptr cs:[rax + rax]
.label_178:
	mov	byte ptr [rbp - 1], 0
.label_177:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40358e
	.globl sub_40358e
	.type sub_40358e, @function
sub_40358e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40358f
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_178
	jmp	.label_176
.label_176:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_177
	.section	.text
	.align	32
	#Procedure 0x4035b0

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
	#Procedure 0x4035e2
	.globl sub_4035e2
	.type sub_4035e2, @function
sub_4035e2:

	nop	word ptr cs:[rax + rax]
.label_183:
	movabs	rax, OFFSET FLAT:label_179
	movabs	rcx, OFFSET FLAT:label_180
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0x70], rax
.label_187:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	ecx, 1
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [stdout]]
	mov	dword ptr [rbp - 0xd0], eax
	call	fwrite_unlocked
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0xd8], rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xdc], eax
.label_184:
	jmp	.label_181
.label_181:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x11]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40367b
	.globl sub_40367b
	.type sub_40367b, @function
sub_40367b:

	nop	word ptr [rax + rax]
.label_190:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	dc_parse_file
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
.label_216:
	test	byte ptr [rbp - 0x11], 1
	je	.label_184
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0x38], rax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x10]
	sub	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_188
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_188:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x50]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	jbe	.label_182
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 0x18], rax
.label_182:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x48], rax
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_183
	movabs	rax, OFFSET FLAT:label_185
	movabs	rcx, OFFSET FLAT:label_186
	mov	qword ptr [rbp - 0x68], rcx
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_187
.label_215:
	mov	byte ptr [rbp - 0x1d], 1
	jmp	.label_189
.label_198:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, eax
	mov	dword ptr [rbp - 8], ecx
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rdx, qword ptr [rbp - 0x10]
	movsxd	rsi, eax
	shl	rsi, 3
	add	rdx, rsi
	mov	qword ptr [rbp - 0x10], rdx
	test	byte ptr [rbp - 0x1d], 1
	je	.label_207
	cmp	dword ptr [rbp - 0x1c], 2
	je	.label_207
	movabs	rdi, OFFSET FLAT:label_220
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_219:
	jmp	.label_181
.label_213:
	mov	dword ptr [rbp - 0x1c], 1
	jmp	.label_189
.label_200:
	xor	edi, edi
	call	usage
.label_191:
	movabs	rsi, OFFSET FLAT:label_140
	movabs	rdx, OFFSET FLAT:label_31
	movabs	r8, OFFSET FLAT:label_206
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_208:
	mov	dword ptr [rbp - 0x1c], 0
	jmp	.label_189
.label_214:
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_209
	call	guess_shell_syntax
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_196
	movabs	rdi, OFFSET FLAT:label_218
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_196:
	jmp	.label_209
.label_209:
	movabs	rdi, OFFSET FLAT:lsc_obstack
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xc8]
	call	_obstack_begin
	cmp	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0xcc], eax
	jne	.label_190
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	dc_parse_stream
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	jmp	.label_216
.label_189:
	jmp	.label_201
.label_207:
	mov	al, byte ptr [rbp - 0x1d]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	cmp	ecx, dword ptr [rbp - 8]
	jge	.label_203
	movabs	rdi, OFFSET FLAT:label_205
	call	gettext
	mov	cl, byte ptr [rbp - 0x1d]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	movsxd	rdi, edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi + rdi*8]
	mov	qword ptr [rbp - 0xb0], rax
	call	quote
	xor	edx, edx
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	mov	al, 0
	call	error
	test	byte ptr [rbp - 0x1d], 1
	je	.label_217
	movabs	rdi, OFFSET FLAT:label_197
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0xb8], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_204
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
.label_217:
	mov	edi, 1
	call	usage
.label_203:
	test	byte ptr [rbp - 0x1d], 1
	je	.label_214
	movabs	rax, OFFSET FLAT:G_line
	mov	qword ptr [rbp - 0x28], rax
.label_202:
	movabs	rax, OFFSET FLAT:G_line
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	cmp	rcx, 0x10c4
	jae	.label_219
	mov	rdi, qword ptr [rbp - 0x28]
	call	puts
	mov	rdi, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0xc0], eax
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_202
	.section	.text
	.align	32
	#Procedure 0x403a45

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0x1c], 2
	mov	byte ptr [rbp - 0x1d], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_103
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_192
	movabs	rsi, OFFSET FLAT:label_193
	mov	qword ptr [rbp - 0x78], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_192
	mov	qword ptr [rbp - 0x80], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x88], rax
	call	atexit
	mov	dword ptr [rbp - 0x8c], eax
.label_201:
	movabs	rdx, OFFSET FLAT:label_210
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x18], eax
	cmp	eax, -1
	je	.label_198
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x90], eax
	mov	dword ptr [rbp - 0x94], ecx
	je	.label_191
	jmp	.label_199
.label_199:
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x98], eax
	je	.label_200
	jmp	.label_195
.label_195:
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_208
	jmp	.label_212
.label_212:
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_213
	jmp	.label_211
.label_211:
	mov	eax, dword ptr [rbp - 0x90]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_215
	jmp	.label_194
.label_194:
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x403ba0

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
	jne	.label_221
	movabs	rax, OFFSET FLAT:label_103
	mov	qword ptr [rbp - 8], rax
.label_221:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_222
	movabs	rax, OFFSET FLAT:label_223
	mov	qword ptr [rbp - 8], rax
.label_222:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bf7
	.globl sub_403bf7
	.type sub_403bf7, @function
sub_403bf7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c00

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
	#Procedure 0x403c28
	.globl sub_403c28
	.type sub_403c28, @function
sub_403c28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c30

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_224
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_225
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403c6f
	.globl sub_403c6f
	.type sub_403c6f, @function
sub_403c6f:

	nop	
.label_236:
	movabs	rsi, OFFSET FLAT:label_226
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_227
	movabs	rax, OFFSET FLAT:label_228
	movabs	rcx, OFFSET FLAT:label_229
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_230
	.section	.text
	.align	32
	#Procedure 0x403cb7

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
	je	.label_237
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_230
.label_237:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_233
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_236
	movabs	rax, OFFSET FLAT:label_234
	movabs	rcx, OFFSET FLAT:label_235
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_230
.label_227:
	movabs	rax, OFFSET FLAT:label_231
	movabs	rcx, OFFSET FLAT:label_232
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_230:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d68
	.globl sub_403d68
	.type sub_403d68, @function
sub_403d68:

	nop	dword ptr [rax + rax]
.label_260:
	cmp	dword ptr [rbp - 0x48], 2
	jne	.label_262
	mov	dword ptr [rbp - 0x48], 1
.label_262:
	cmp	dword ptr [rbp - 0x48], 0
	je	.label_269
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_272
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 1
	jae	.label_244
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x68]
	call	_obstack_newchunk
.label_244:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0x2a
	mov	rdi, qword ptr [rbp - 0x50]
	call	append_quoted
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 1
	jae	.label_240
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x80]
	call	_obstack_newchunk
.label_240:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0x3d
	mov	rdi, qword ptr [rbp - 0x58]
	call	append_quoted
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], 1
	jae	.label_264
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x98]
	call	_obstack_newchunk
.label_264:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0x3a
	jmp	.label_268
.label_285:
	mov	dword ptr [rbp - 0xdc], 0
.label_253:
	movsxd	rax, dword ptr [rbp - 0xdc]
	cmp	qword ptr [word ptr [+ (rax * 8) + slack_codes]],  0
	je	.label_238
	mov	rdi, qword ptr [rbp - 0x50]
	movsxd	rax, dword ptr [rbp - 0xdc]
	mov	rsi,  qword ptr [word ptr [+ (rax * 8) + slack_codes]]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_249
	jmp	.label_238
.label_238:
	movsxd	rax, dword ptr [rbp - 0xdc]
	cmp	qword ptr [word ptr [+ (rax * 8) + slack_codes]],  0
	je	.label_252
	jmp	.label_257
.label_257:
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0xf8], rax
	cmp	qword ptr [rbp - 0xf8], 1
	jae	.label_258
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0xe8]
	call	_obstack_newchunk
.label_258:
	movabs	rax, OFFSET FLAT:lsc_obstack
	movsxd	rcx, dword ptr [rbp - 0xdc]
	mov	rcx,  qword ptr [word ptr [+ (rcx * 8) + ls_codes]]
	mov	dl, byte ptr [rcx]
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rcx + 0x18]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rcx + 0x18], rdi
	mov	byte ptr [rsi], dl
	mov	qword ptr [rbp - 0x100], rax
	mov	rax, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x108], rax
	mov	rax, qword ptr [rbp - 0x108]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x110], rax
	cmp	qword ptr [rbp - 0x110], 1
	jae	.label_276
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x100]
	call	_obstack_newchunk
.label_276:
	movsxd	rax, dword ptr [rbp - 0xdc]
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + ls_codes]]
	mov	cl, byte ptr [rax + 1]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rax + 0x18], rsi
	mov	byte ptr [rdx], cl
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x120], rax
	mov	rax, qword ptr [rbp - 0x120]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x120]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x128], rax
	cmp	qword ptr [rbp - 0x128], 1
	jae	.label_254
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x118]
	call	_obstack_newchunk
.label_254:
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0x3d
	mov	rdi, qword ptr [rbp - 0x58]
	call	append_quoted
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0x130], rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x140], rax
	cmp	qword ptr [rbp - 0x140], 1
	jae	.label_286
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x130]
	call	_obstack_newchunk
.label_286:
	mov	rax, qword ptr [rbp - 0x130]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0x3a
	jmp	.label_255
.label_266:
	cmp	dword ptr [rbp - 0x48], 2
	je	.label_261
	mov	dword ptr [rbp - 0x48], 0
.label_261:
	jmp	.label_271
.label_271:
	jmp	.label_239
.label_249:
	jmp	.label_245
.label_245:
	mov	eax, dword ptr [rbp - 0xdc]
	add	eax, 1
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_253
.label_251:
	movabs	rsi, OFFSET FLAT:label_273
	mov	rdi, qword ptr [rbp - 0x50]
	call	c_strcasecmp
	cmp	eax, 0
	je	.label_247
	movabs	rsi, OFFSET FLAT:label_277
	mov	rdi, qword ptr [rbp - 0x50]
	call	c_strcasecmp
	cmp	eax, 0
	je	.label_247
	movabs	rsi, OFFSET FLAT:label_282
	mov	rdi, qword ptr [rbp - 0x50]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_285
.label_247:
	jmp	.label_263
	.section	.text
	.align	32
	#Procedure 0x4041f7

	.globl dc_parse_stream
	.type dc_parse_stream, @function
dc_parse_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	movabs	rax, OFFSET FLAT:label_281
	movabs	rcx, OFFSET FLAT:G_line
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x41], 1
	mov	dword ptr [rbp - 0x48], 3
	mov	rdi, rax
	call	getenv
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_290
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_288
.label_290:
	movabs	rax, OFFSET FLAT:label_289
	mov	qword ptr [rbp - 0x40], rax
.label_288:
	jmp	.label_242
.label_242:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_267
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	call	getline
	cmp	rax, 0
	jg	.label_275
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
	jmp	.label_259
.label_241:
	movabs	rdi, OFFSET FLAT:label_265
	call	gettext
	mov	qword ptr [rbp - 0x158], rax
.label_248:
	mov	rax, qword ptr [rbp - 0x158]
	xor	ecx, ecx
	mov	r8, qword ptr [rbp - 0x18]
	mov	r9, qword ptr [rbp - 0x50]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x41], 0
.label_283:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	jmp	.label_242
.label_278:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_243
	movabs	rdi, OFFSET FLAT:label_246
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x148], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	r8, qword ptr [rbp - 0x18]
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	jmp	.label_242
.label_252:
	mov	byte ptr [rbp - 0x59], 1
.label_255:
	jmp	.label_263
.label_263:
	jmp	.label_250
.label_250:
	jmp	.label_268
.label_268:
	jmp	.label_270
.label_259:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40439b
	.globl sub_40439b
	.type sub_40439b, @function
sub_40439b:

	nop	word ptr cs:[rax + rax]
.label_267:
	movabs	rax, OFFSET FLAT:G_line
	add	rax, 0x10c4
	cmp	qword ptr [rbp - 0x20], rax
	jne	.label_274
	jmp	.label_259
.label_275:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_279
.label_269:
	mov	byte ptr [rbp - 0x59], 1
.label_270:
	jmp	.label_239
.label_239:
	test	byte ptr [rbp - 0x59], 1
	je	.label_283
	cmp	dword ptr [rbp - 0x48], 2
	je	.label_284
	cmp	dword ptr [rbp - 0x48], 1
	jne	.label_283
.label_284:
	movabs	rdi, OFFSET FLAT:label_287
	call	gettext
	cmp	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x150], rax
	je	.label_241
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_style_colon
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_248
.label_272:
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2a
	jne	.label_251
	mov	rdi, qword ptr [rbp - 0x50]
	call	append_quoted
	movabs	rdi, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0xb0], rdi
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rax, qword ptr [rax + 0x18]
	sub	rdi, rax
	mov	qword ptr [rbp - 0xc0], rdi
	cmp	qword ptr [rbp - 0xc0], 1
	jae	.label_256
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0xb0]
	call	_obstack_newchunk
.label_256:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0x3d
	mov	rdi, qword ptr [rbp - 0x58]
	call	append_quoted
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0xd8], rax
	cmp	qword ptr [rbp - 0xd8], 1
	jae	.label_280
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0xc8]
	call	_obstack_newchunk
.label_280:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0x3a
	jmp	.label_250
.label_243:
	movabs	rsi, OFFSET FLAT:label_281
	mov	byte ptr [rbp - 0x59], 0
	mov	rdi, qword ptr [rbp - 0x50]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_260
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x40]
	call	fnmatch
	cmp	eax, 0
	jne	.label_266
	mov	dword ptr [rbp - 0x48], 2
	jmp	.label_271
.label_274:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_279:
	lea	rsi, [rbp - 0x50]
	lea	rdx, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x38]
	call	parse_line
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_278
	jmp	.label_242
	.section	.text
	.align	32
	#Procedure 0x4045d0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	or	al, 1
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404639
	.globl sub_404639
	.type sub_404639, @function
sub_404639:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404640

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
	#Procedure 0x40467e
	.globl sub_40467e
	.type sub_40467e, @function
sub_40467e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404680

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strndup
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_291
	call	xalloc_die
.label_291:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046bb
	.globl sub_4046bb
	.type sub_4046bb, @function
sub_4046bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046c0
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
	#Procedure 0x4046e8
	.globl sub_4046e8
	.type sub_4046e8, @function
sub_4046e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046f0

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
	#Procedure 0x40470f
	.globl sub_40470f
	.type sub_40470f, @function
sub_40470f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404710

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404767
	.globl sub_404767
	.type sub_404767, @function
sub_404767:

	nop	word ptr [rax + rax]
.label_293:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_292
.label_292:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40478b
	.globl sub_40478b
	.type sub_40478b, @function
sub_40478b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404790
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_293
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_292
	.section	.text
	.align	32
	#Procedure 0x4047b0

	.globl guess_shell_syntax
	.type guess_shell_syntax, @function
guess_shell_syntax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_298
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_295
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_299
.label_295:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_294
.label_299:
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:label_301
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	je	.label_297
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_300
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_296
.label_297:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_294
.label_296:
	mov	dword ptr [rbp - 4], 0
.label_294:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40484d
	.globl sub_40484d
	.type sub_40484d, @function
sub_40484d:

	nop	dword ptr [rax]
.label_302:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404856
	.globl sub_404856
	.type sub_404856, @function
sub_404856:

	nop	word ptr [rax + rax]
.label_304:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_302
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x404881

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_304
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_308
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_304
.label_308:
	movabs	rdi, OFFSET FLAT:label_303
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_305
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_307
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_306
.label_305:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_225
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_306:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x404940

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
	ja	.label_309
	jmp	.label_311
.label_311:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_310
.label_309:
	jmp	.label_310
.label_310:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40498a
	.globl sub_40498a
	.type sub_40498a, @function
sub_40498a:

	nop	word ptr [rax + rax]
.label_313:
	mov	byte ptr [rbp - 1], 0
.label_315:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40499e
	.globl sub_40499e
	.type sub_40499e, @function
sub_40499e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4049a0
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
	jb	.label_312
	jmp	.label_314
.label_314:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_313
	jmp	.label_312
.label_312:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_315
	.section	.text
	.align	32
	#Procedure 0x4049e0
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
	#Procedure 0x404a0a
	.globl sub_404a0a
	.type sub_404a0a, @function
sub_404a0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a10

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
	jne	.label_316
	test	byte ptr [rbp - 0x13], 1
	je	.label_317
	test	byte ptr [rbp - 0x11], 1
	jne	.label_316
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_317
.label_316:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_318
	call	__errno_location
	mov	dword ptr [rax], 0
.label_318:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_319
.label_317:
	mov	dword ptr [rbp - 4], 0
.label_319:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ab9
	.globl sub_404ab9
	.type sub_404ab9, @function
sub_404ab9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ac0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_320
	jmp	.label_322
.label_322:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_321
.label_320:
	mov	byte ptr [rbp - 1], 0
.label_321:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404af2
	.globl sub_404af2
	.type sub_404af2, @function
sub_404af2:

	nop	word ptr cs:[rax + rax]
.label_325:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_323
	.section	.text
	.align	32
	#Procedure 0x404b26

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
	jne	.label_324
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_324
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_324
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_325
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_323
.label_324:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_323:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bc2
	.globl sub_404bc2
	.type sub_404bc2, @function
sub_404bc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bd0
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
	jb	.label_326
	jmp	.label_329
.label_329:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_328
	jmp	.label_326
.label_326:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_327
.label_328:
	mov	byte ptr [rbp - 1], 0
.label_327:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c1b
	.globl sub_404c1b
	.type sub_404c1b, @function
sub_404c1b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c20
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
	jb	.label_330
	jmp	.label_333
.label_333:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_330
	jmp	.label_331
.label_331:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_332
	jmp	.label_330
.label_330:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_334
.label_332:
	mov	byte ptr [rbp - 1], 0
.label_334:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c85
	.globl sub_404c85
	.type sub_404c85, @function
sub_404c85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c90
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
	#Procedure 0x404cb7
	.globl sub_404cb7
	.type sub_404cb7, @function
sub_404cb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cc0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_335
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_335:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404cea
	.globl sub_404cea
	.type sub_404cea, @function
sub_404cea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cf0
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
	#Procedure 0x404d17
	.globl sub_404d17
	.type sub_404d17, @function
sub_404d17:

	nop	word ptr [rax + rax]
.label_337:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d26
	.globl sub_404d26
	.type sub_404d26, @function
sub_404d26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d32

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_336:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_337
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_336
	.section	.text
	.align	32
	#Procedure 0x404d80
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
	#Procedure 0x404dad
	.globl sub_404dad
	.type sub_404dad, @function
sub_404dad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404db0
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
	#Procedure 0x404de7
	.globl sub_404de7
	.type sub_404de7, @function
sub_404de7:

	nop	word ptr [rax + rax]
.label_339:
	mov	byte ptr [rbp - 1], 0
.label_341:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404dfe
	.globl sub_404dfe
	.type sub_404dfe, @function
sub_404dfe:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e06
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
	jb	.label_338
	jmp	.label_340
.label_340:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_339
	jmp	.label_338
.label_338:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_341
	.section	.text
	.align	32
	#Procedure 0x404e40
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
	je	.label_342
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_343
.label_342:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e87
	.globl sub_404e87
	.type sub_404e87, @function
sub_404e87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e90

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
	#Procedure 0x404ebc
	.globl sub_404ebc
	.type sub_404ebc, @function
sub_404ebc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ec0
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
	je	.label_344
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_345
.label_344:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_345
.label_345:
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
	#Procedure 0x404f85
	.globl sub_404f85
	.type sub_404f85, @function
sub_404f85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f90

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_346
	jmp	.label_348
.label_348:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_347
.label_346:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_347:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fc7
	.globl sub_404fc7
	.type sub_404fc7, @function
sub_404fc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fd0

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
	jne	.label_349
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_349:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_351
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_350
.label_351:
	call	abort
.label_350:
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
	#Procedure 0x405040
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
	#Procedure 0x40507a
	.globl sub_40507a
	.type sub_40507a, @function
sub_40507a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405080
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
	#Procedure 0x4050af
	.globl sub_4050af
	.type sub_4050af, @function
sub_4050af:

	nop	
.label_353:
	mov	byte ptr [rbp - 1], 0
.label_352:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050be
	.globl sub_4050be
	.type sub_4050be, @function
sub_4050be:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050c9
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
	jb	.label_354
	jmp	.label_355
.label_355:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_354
	jmp	.label_356
.label_356:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_353
	jmp	.label_354
.label_354:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_352
	.section	.text
	.align	32
	#Procedure 0x405120

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
	#Procedure 0x40515f
	.globl sub_40515f
	.type sub_40515f, @function
sub_40515f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405160
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
	#Procedure 0x405196
	.globl sub_405196
	.type sub_405196, @function
sub_405196:

	nop	word ptr cs:[rax + rax]
.label_358:
	mov	byte ptr [rbp - 1], 0
.label_359:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4051ae
	.globl sub_4051ae
	.type sub_4051ae, @function
sub_4051ae:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051bc
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_358
	jmp	.label_357
.label_357:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_359
	.section	.text
	.align	32
	#Procedure 0x4051e0
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
.label_362:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_360
	jmp	.label_361
.label_361:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_362
.label_360:
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
	#Procedure 0x405250

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
	#Procedure 0x405283
	.globl sub_405283
	.type sub_405283, @function
sub_405283:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405290

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
.label_368:
	test	byte ptr [rbp - 9], 1
	je	.label_372
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 1
	jae	.label_375
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x60]
	call	_obstack_newchunk
.label_375:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0x5c
.label_372:
	jmp	.label_366
.label_366:
	mov	byte ptr [rbp - 9], 1
.label_377:
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 1
	jae	.label_374
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x78]
	call	_obstack_newchunk
.label_374:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rax + 0x18], rsi
	mov	byte ptr [rdx], cl
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_379
	.section	.text
	.align	32
	#Procedure 0x40538b

	.globl append_quoted
	.type append_quoted, @function
append_quoted:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 1
.label_379:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_370
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x27
	mov	dword ptr [rbp - 0x8c], ecx
	mov	dword ptr [rbp - 0x90], edx
	je	.label_376
	jmp	.label_367
.label_367:
	mov	eax, dword ptr [rbp - 0x8c]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x94], eax
	je	.label_368
	jmp	.label_373
.label_373:
	mov	eax, dword ptr [rbp - 0x8c]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x98], eax
	je	.label_368
	jmp	.label_363
.label_363:
	mov	eax, dword ptr [rbp - 0x8c]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_365
	jmp	.label_369
.label_369:
	mov	eax, dword ptr [rbp - 0x8c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_365
	jmp	.label_366
.label_376:
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 1
	jae	.label_378
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	_obstack_newchunk
.label_378:
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x18], rsi
	mov	byte ptr [rdx], 0x27
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 1
	jae	.label_364
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x30]
	call	_obstack_newchunk
.label_364:
	movabs	rax, OFFSET FLAT:lsc_obstack
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x18], rsi
	mov	byte ptr [rdx], 0x5c
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 1
	jae	.label_371
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	_obstack_newchunk
.label_371:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0x27
	mov	byte ptr [rbp - 9], 1
	jmp	.label_377
.label_370:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405565
	.globl sub_405565
	.type sub_405565, @function
sub_405565:

	nop	word ptr cs:[rax + rax]
.label_365:
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 9], al
	jmp	.label_377
.label_380:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, 0x10
	sub	rsi, 0
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rdx + 0x50]
	and	r8b, 0xfd
	mov	byte ptr [rdx + 0x50], r8b
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rdx + 0x50]
	and	r8b, 0xfb
	mov	byte ptr [rdx + 0x50], r8b
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40560e
	.globl sub_40560e
	.type sub_40560e, @function
sub_40560e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40560f

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_382
	mov	qword ptr [rbp - 0x18], 0x10
.label_382:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_381
	mov	eax, 0x1000
	mov	dword ptr [rbp - 0x24], 0x20
	sub	eax, dword ptr [rbp - 0x24]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
.label_381:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	call_chunkfun
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_380
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_386:
	mov	byte ptr [rbp - 1], 1
.label_385:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056b2
	.globl sub_4056b2
	.type sub_4056b2, @function
sub_4056b2:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4056b6

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_383
	xor	esi, esi
	mov	dword ptr [rbp - 8], edi
	mov	rdi, rax
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_386
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_384
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	dword ptr [rbp - 0x10], eax
	call	__errno_location
	mov	dword ptr [rax], 9
.label_384:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_385
	.section	.text
	.align	32
	#Procedure 0x405710
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_387
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_387:
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
	#Procedure 0x40574d
	.globl sub_40574d
	.type sub_40574d, @function
sub_40574d:

	nop	dword ptr [rax]
.label_390:
	mov	rdi,  qword ptr [word ptr [stdin]]
	mov	rsi, qword ptr [rbp - 0x10]
	call	dc_parse_stream
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_388
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_225
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_389
	.section	.text
	.align	32
	#Procedure 0x4057b8

	.globl dc_parse_file
	.type dc_parse_file, @function
dc_parse_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_391
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_390
	movabs	rsi, OFFSET FLAT:label_392
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx,  qword ptr [word ptr [stdin]]
	call	freopen_safer
	cmp	rax, 0
	jne	.label_390
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x18], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_225
	mov	esi, dword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_389
.label_388:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_389:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405854
	.globl sub_405854
	.type sub_405854, @function
sub_405854:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405860
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
	#Procedure 0x405891
	.globl sub_405891
	.type sub_405891, @function
sub_405891:

	nop	word ptr cs:[rax + rax]
.label_393:
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
	#Procedure 0x4058ca
	.globl sub_4058ca
	.type sub_4058ca, @function
sub_4058ca:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058d6

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
	jne	.label_393
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405910

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
	#Procedure 0x405985
	.globl sub_405985
	.type sub_405985, @function
sub_405985:

	nop	word ptr cs:[rax + rax]
.label_395:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_394
.label_394:
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
	#Procedure 0x4059d4
	.globl sub_4059d4
	.type sub_4059d4, @function
sub_4059d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059e2
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
	je	.label_395
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_394
	.section	.text
	.align	32
	#Procedure 0x405a10

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
	je	.label_396
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
.label_396:
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
	#Procedure 0x405b74
	.globl sub_405b74
	.type sub_405b74, @function
sub_405b74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b80
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
	#Procedure 0x405b9f
	.globl sub_405b9f
	.type sub_405b9f, @function
sub_405b9f:

	nop	
.label_398:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_400:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_402:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_403
	jmp	.label_397
.label_403:
	jmp	.label_399
.label_399:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_401
.label_397:
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
	#Procedure 0x405c2c
	.globl sub_405c2c
	.type sub_405c2c, @function
sub_405c2c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c33

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
.label_401:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_402
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_398
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_400
	.section	.text
	.align	32
	#Procedure 0x405cb0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_404
	jmp	.label_406
.label_406:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_405
.label_404:
	mov	byte ptr [rbp - 1], 0
.label_405:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ce2
	.globl sub_405ce2
	.type sub_405ce2, @function
sub_405ce2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cf0

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_407
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_408
.label_407:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
.label_408:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
.label_409:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_410:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d62
	.globl sub_405d62
	.type sub_405d62, @function
sub_405d62:

	nop	word ptr [rax + rax]
.label_411:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_409
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_409
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405d94

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_411
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_411
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_410
.label_419:
	test	byte ptr [rbp - 0x19], 1
	je	.label_417
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_417:
	jmp	.label_414
.label_414:
	jmp	.label_416
.label_416:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_412
	.section	.text
	.align	32
	#Procedure 0x405e01

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_413:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_418
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_413
.label_415:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e3c
	.globl sub_405e3c
	.type sub_405e3c, @function
sub_405e3c:

	nop	word ptr [rax + rax]
.label_418:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_412:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_415
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_419
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_414
	.section	.text
	.align	32
	#Procedure 0x405e70

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
	je	.label_420
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_420:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405eab
	.globl sub_405eab
	.type sub_405eab, @function
sub_405eab:

	nop	dword ptr [rax + rax]
.label_558:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_518
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_518
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_518
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_577
	jmp	.label_582
.label_582:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_577
	jmp	.label_586
.label_586:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_577
	jmp	.label_591
.label_591:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_577
	jmp	.label_597
.label_597:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_599
	jmp	.label_577
.label_577:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_601
	jmp	.label_433
.label_556:
	test	byte ptr [rbp - 0x81], 1
	je	.label_604
	jmp	.label_605
.label_605:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_523
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_523:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_604:
	jmp	.label_487
.label_487:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_613
	jmp	.label_618
.label_504:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_621
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_621
	jmp	.label_431
.label_431:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_423
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_423:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_609
.label_609:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_432
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_432:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_616
.label_616:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_442
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_442:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_621:
	jmp	.label_451
.label_451:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_454
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_454:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_459
.label_459:
	jmp	.label_462
.label_462:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_465
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_465:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_473
.label_473:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_477
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_477:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_487
.label_573:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_495
.label_575:
	jmp	.label_438
.label_663:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_500
	test	byte ptr [rbp - 0x7b], 1
	je	.label_478
	jmp	.label_433
.label_653:
	test	byte ptr [rbp - 0x79], 1
	je	.label_463
	jmp	.label_508
.label_508:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_509
	jmp	.label_433
.label_547:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_512
	jmp	.label_433
.label_561:
	jmp	.label_449
.label_449:
	jmp	.label_438
.label_696:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_695:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_521
	jmp	.label_526
.label_526:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_527
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_527:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_521
.label_521:
	movabs	rax, OFFSET FLAT:label_232
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_501
.label_660:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_448
.label_494:
	jmp	.label_488
.label_488:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_548
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_548:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_426
.label_560:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_553
	mov	byte ptr [rbp - 0x91], 0
.label_569:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_555
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_555:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_563
	jmp	.label_568
.label_563:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_569
.label_666:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_573
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_495
	jmp	.label_575
.label_589:
	mov	byte ptr [rbp - 0x81], 1
.label_428:
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
	ja	.label_578
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_585]]
	jmp	rcx
.label_550:
	jmp	.label_438
.label_438:
	test	byte ptr [rbp - 0x79], 1
	je	.label_588
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_590
.label_588:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_592
.label_590:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_592
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
	jne	.label_596
.label_592:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_596
	jmp	.label_436
.label_614:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_531
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_531
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_607
.label_662:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_438
.label_568:
	jmp	.label_562
.label_593:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_424:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_620
	jmp	.label_421
.label_620:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_428
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_428
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_428
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_434
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_434
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_445
.label_516:
	jmp	.label_448
.label_448:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_450
	test	byte ptr [rbp - 0x7b], 1
	je	.label_450
	jmp	.label_433
.label_693:
	mov	byte ptr [rbp - 0x79], 1
.label_692:
	mov	byte ptr [rbp - 0x7b], 1
.label_694:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_619
	mov	byte ptr [rbp - 0x79], 1
.label_619:
	jmp	.label_460
.label_460:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_461
	jmp	.label_467
.label_467:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_603
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_603:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_461
.label_461:
	movabs	rax, OFFSET FLAT:label_231
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_501
.label_446:
	jmp	.label_438
.label_531:
	jmp	.label_484
.label_484:
	jmp	.label_486
.label_486:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_488
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_488
	jmp	.label_492
.label_492:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_494
	jmp	.label_612
.label_612:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_617
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_617:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_505
.label_505:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_492
.label_657:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_448
.label_599:
	jmp	.label_430
.label_430:
	jmp	.label_518
.label_518:
	jmp	.label_449
.label_551:
	jmp	.label_452
.label_452:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_522
	mov	byte ptr [rbp - 0x91], 0
.label_522:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_529
.label_529:
	jmp	.label_534
.label_534:
	jmp	.label_535
.label_535:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_541
.label_562:
	jmp	.label_543
.label_543:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_544
	test	byte ptr [rbp - 0x79], 1
	je	.label_550
	test	byte ptr [rbp - 0x91], 1
	jne	.label_550
.label_544:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_470:
	test	byte ptr [rbp - 0x79], 1
	je	.label_556
	test	byte ptr [rbp - 0x91], 1
	jne	.label_556
	jmp	.label_571
.label_571:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_504
	jmp	.label_433
.label_602:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_560
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_562
.label_665:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_566
	test	byte ptr [rbp - 0x7b], 1
	je	.label_570
	jmp	.label_433
.label_659:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_435
.label_600:
	jmp	.label_447
.label_447:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_501
.label_495:
	jmp	.label_579
.label_579:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_580
	jmp	.label_438
.label_565:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_584
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_584:
	jmp	.label_541
.label_541:
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
	jne	.label_602
	jmp	.label_562
.label_566:
	test	byte ptr [rbp - 0x79], 1
	je	.label_516
	test	byte ptr [rbp - 0x7b], 1
	je	.label_516
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_516
	jmp	.label_436
.label_533:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_486
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_486
	test	byte ptr [rbp - 0x7d], 1
	je	.label_486
	test	byte ptr [rbp - 0x7e], 1
	je	.label_614
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
	jmp	.label_426
.label_596:
	jmp	.label_455
.label_455:
	jmp	.label_429
.label_429:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_490
	jmp	.label_433
.label_658:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_435
.label_698:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_525
	movabs	rdi, OFFSET FLAT:label_440
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_231
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_525:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_447
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_469:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_600
	jmp	.label_610
.label_610:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_457
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_457:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_549
.label_549:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_469
.label_478:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_472
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_472
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_472:
	jmp	.label_481
.label_481:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_483
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_483:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_489
.label_489:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_493
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_493:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_502
.label_502:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_443
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_443:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_500:
	jmp	.label_438
.label_572:
	jmp	.label_513
.label_513:
	jmp	.label_515
.label_515:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_517
.label_655:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_435
.label_498:
	call	abort
.label_691:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_501
.label_463:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_530
	jmp	.label_532
.label_421:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_533
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_533
	test	byte ptr [rbp - 0x7b], 1
	je	.label_533
	jmp	.label_433
.label_570:
	jmp	.label_436
.label_512:
	jmp	.label_449
.label_656:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_448
.label_553:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_452
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_452
	mov	qword ptr [rbp - 0xb8], 1
.label_517:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_551
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
	jb	.label_427
	jmp	.label_559
.label_559:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_427
	jmp	.label_564
.label_564:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_427
	jmp	.label_497
.label_497:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_572
	jmp	.label_427
.label_427:
	jmp	.label_433
.label_613:
	jmp	.label_574
.label_574:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_510
	test	byte ptr [rbp - 0x82], 1
	jne	.label_510
	jmp	.label_581
.label_581:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_539
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_539:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_583
.label_583:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_587
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_587:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_510:
	jmp	.label_594
.label_594:
	jmp	.label_595
.label_595:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_598
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_598:
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
	jmp	.label_470
	.section	.text
	.align	32
	#Procedure 0x406ba4

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
.label_607:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_498
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_441]]
	jmp	rcx
.label_580:
	jmp	.label_444
.label_444:
	mov	byte ptr [rbp - 0x83], 1
.label_661:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_446
	test	byte ptr [rbp - 0x7b], 1
	je	.label_446
	jmp	.label_433
.label_450:
	jmp	.label_435
.label_435:
	test	byte ptr [rbp - 0x79], 1
	je	.label_453
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_455
.label_490:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_458
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_458
	jmp	.label_464
.label_464:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_466
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_466:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_471
.label_471:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_475
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_475:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_482
.label_482:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_485
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_485:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_458:
	jmp	.label_606
.label_606:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_499
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_499:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_503
.label_503:
	jmp	.label_436
.label_436:
	jmp	.label_507
.label_507:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_479
	test	byte ptr [rbp - 0x82], 1
	jne	.label_479
	jmp	.label_514
.label_514:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_520
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_520:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_576
.label_576:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_528
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_528:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_479:
	jmp	.label_538
.label_538:
	jmp	.label_540
.label_540:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_542
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_542:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_545
	mov	byte ptr [rbp - 0x7e], 0
.label_545:
	jmp	.label_532
.label_532:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_552
.label_618:
	jmp	.label_436
.label_530:
	jmp	.label_554
.label_554:
	jmp	.label_438
.label_664:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_547
	jmp	.label_557
.label_557:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_558
	jmp	.label_561
.label_697:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_501
.label_578:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_565
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
	jmp	.label_543
.label_434:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_445:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_428
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_428
	test	byte ptr [rbp - 0x7b], 1
	je	.label_589
	jmp	.label_433
.label_501:
	mov	qword ptr [rbp - 0x58], 0
.label_552:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_593
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_424
.label_601:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_476
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_476:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_608
.label_608:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_611
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_611:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_615
.label_615:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_622
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_622:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_422
.label_422:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_425
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_425:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_430
.label_453:
	jmp	.label_438
.label_654:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_435
.label_433:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_439
	test	byte ptr [rbp - 0x79], 1
	je	.label_439
	mov	dword ptr [rbp - 0x34], 4
.label_439:
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
.label_426:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4070cb
	.globl sub_4070cb
	.type sub_4070cb, @function
sub_4070cb:

	nop	dword ptr [rax + rax]
.label_509:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_468
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_468
	jmp	.label_474
.label_474:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_519
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_519:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_480
.label_480:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_567
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_567:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_491
.label_491:
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
.label_468:
	jmp	.label_456
.label_456:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_506
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_506:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_511
.label_511:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_524
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_524
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_524
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_524
	jmp	.label_536
.label_536:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_537
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_537:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_437
.label_437:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_546
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_546:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_524
.label_524:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_554
	.section	.text
	.align	32
	#Procedure 0x407250

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
	#Procedure 0x4072c2
	.globl sub_4072c2
	.type sub_4072c2, @function
sub_4072c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072d0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_623
	jmp	.label_625
.label_625:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_624
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
	#Procedure 0x407302
	.globl sub_407302
	.type sub_407302, @function
sub_407302:

	nop	word ptr cs:[rax + rax]
.label_632:
	cmp	qword ptr [rbp - 8], 0
	je	.label_627
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	mov	dword ptr [rbp - 0x2c], eax
	mov	edi, dword ptr [rbp - 0x2c]
	mov	esi, dword ptr [rbp - 0x2c]
	call	dup2
	cmp	eax, 0
	jge	.label_626
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_626
	mov	esi, 0x80000
	mov	rdi, qword ptr [rbp - 0x28]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x30], eax
	mov	dword ptr [rbp - 0x34], 0
	mov	eax, dword ptr [rbp - 0x30]
	cmp	eax, dword ptr [rbp - 0x2c]
	je	.label_629
	mov	edi, dword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x2c]
	call	dup2
	cmp	eax, 0
	jge	.label_630
	mov	dword ptr [rbp - 0x34], 1
.label_630:
	mov	edi, dword ptr [rbp - 0x30]
	call	close
	mov	dword ptr [rbp - 0x38], eax
.label_629:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_628
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	orig_freopen
	mov	qword ptr [rbp - 0x20], rax
.label_628:
	jmp	.label_626
.label_626:
	jmp	.label_627
.label_627:
	jmp	.label_631
.label_631:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4073cd
	.globl sub_4073cd
	.type sub_4073cd, @function
sub_4073cd:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073d9

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_383
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	orig_freopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_632
	jmp	.label_631
.label_634:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_638
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_639
.label_638:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_639:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_635
	movabs	rsi, OFFSET FLAT:label_637
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_635
	movabs	rsi, OFFSET FLAT:label_636
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_640
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_640:
	jmp	.label_635
.label_635:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407503
	.globl sub_407503
	.type sub_407503, @function
sub_407503:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40750a

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_634
	movabs	rdi, OFFSET FLAT:label_633
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407540
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
	#Procedure 0x407565
	.globl sub_407565
	.type sub_407565, @function
sub_407565:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407570

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_224
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 8], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_204
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], eax
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4075ba
	.globl sub_4075ba
	.type sub_4075ba, @function
sub_4075ba:

	nop	word ptr [rax + rax]
.label_645:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 0x10
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	mov	rcx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rcx + 0x50]
	shr	r8b, 1
	and	r8b, 1
	movzx	eax, r8b
	cmp	eax, 0
	jne	.label_641
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x10
	sub	rsi, 0
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x30]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rcx, rsi
	cmp	rdx, rcx
	jne	.label_641
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	call_freefun
.label_641:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	dl, byte ptr [rax + 0x50]
	and	dl, 0xfd
	mov	byte ptr [rax + 0x50], dl
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076dd
	.globl sub_4076dd
	.type sub_4076dd, @function
sub_4076dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4076e1

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	shr	rdi, 3
	add	rsi, rdi
	add	rsi, 0x64
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rsi, qword ptr [rbp - 0x40]
	jae	.label_644
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_644:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jae	.label_643
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
.label_643:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	ja	.label_642
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	ja	.label_642
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x20], rax
.label_642:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_645
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
	.section	.text
	.align	32
	#Procedure 0x407825
	.globl sub_407825
	.type sub_407825, @function
sub_407825:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407832
	.globl sub_407832
	.type sub_407832, @function
sub_407832:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407856
	.globl sub_407856
	.type sub_407856, @function
sub_407856:

	nop	word ptr cs:[rax + rax]
