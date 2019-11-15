	.section	.text
	.align	16
	#Procedure 0x402bb9
	.globl sub_402bb9
	.type sub_402bb9, @function
sub_402bb9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x402bba
	.globl sub_402bba
	.type sub_402bba, @function
sub_402bba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bf2
	.globl sub_402bf2
	.type sub_402bf2, @function
sub_402bf2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c3a
	.globl sub_402c3a
	.type sub_402c3a, @function
sub_402c3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c5c
	.globl sub_402c5c
	.type sub_402c5c, @function
sub_402c5c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c6d
	.globl sub_402c6d
	.type sub_402c6d, @function
sub_402c6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c86
	.globl sub_402c86
	.type sub_402c86, @function
sub_402c86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c90

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
.label_10:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_9
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_10
.label_9:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402cdd
	.globl sub_402cdd
	.type sub_402cdd, @function
sub_402cdd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ce0

	.globl sortlines
	.type sortlines, @function
sortlines:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x10], 1
	jbe	.label_11
	mov	eax, 0x20000
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	ja	.label_11
	lea	rdi, [rbp - 0x58]
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:sortlines_thread
	lea	rcx, [rbp - 0x90]
	call	pthread_create
	cmp	eax, 0
	jne	.label_11
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rsi + 0x28]
	shl	rcx, 5
	add	rdx, rcx
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x48]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xb0], rdi
	mov	rdi, rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rsp], r10
	call	sortlines
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x58]
	call	pthread_join
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_14
.label_11:
	mov	eax, 1
	mov	ecx, eax
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	qword ptr [rbp - 0x98], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	qword ptr [rbp - 0xa0], rsi
	mov	rsi, qword ptr [rbp - 8]
	sub	rdx, qword ptr [rbp - 0x18]
	shl	rdx, 5
	add	rsi, rdx
	mov	qword ptr [rbp - 0xa8], rsi
	cmp	rcx, qword ptr [rbp - 0xa0]
	jae	.label_12
	xor	ecx, ecx
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rdx
	sub	rdi, qword ptr [rbp - 0x98]
	shl	rdi, 5
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	r8, qword ptr [rbp - 0xa8]
	mov	r9, qword ptr [rbp - 0x98]
	shr	r9, 1
	sub	rdx, r9
	shl	rdx, 5
	add	r8, rdx
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, r8
	call	sequential_sort
.label_12:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x98]
	jae	.label_13
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0xa8]
	call	sequential_sort
.label_13:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, rcx
	sub	rsi, qword ptr [rbp - 0x98]
	shl	rsi, 5
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, rcx
	sub	rsi, qword ptr [rbp - 0x98]
	shl	rsi, 5
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, rcx
	sub	rsi, qword ptr [rbp - 0x98]
	shl	rsi, 5
	add	rdx, rsi
	sub	rcx, qword ptr [rbp - 0xa0]
	shl	rcx, 5
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	queue_insert
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	call	merge_loop
.label_14:
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f93
	.globl sub_402f93
	.type sub_402f93, @function
sub_402f93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fa0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_15
	jmp	.label_17
.label_17:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_16
.label_15:
	mov	byte ptr [rbp - 1], 0
.label_16:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fd2
	.globl sub_402fd2
	.type sub_402fd2, @function
sub_402fd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fe0

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
	.align	16
	#Procedure 0x402ffb
	.globl sub_402ffb
	.type sub_402ffb, @function
sub_402ffb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403000

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_18
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	cmp	eax, 0
	jne	.label_18
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0
	jmp	.label_19
.label_18:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	strcoll_loop
	mov	dword ptr [rbp - 4], eax
.label_19:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403078
	.globl sub_403078
	.type sub_403078, @function
sub_403078:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403080

	.globl set_uint32
	.type set_uint32, @function
set_uint32:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	dword ptr [rdi], esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403096
	.globl sub_403096
	.type sub_403096, @function
sub_403096:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [temphead]]
	mov	qword ptr [rbp - 8], rax
.label_20:
	cmp	qword ptr [rbp - 8], 0
	je	.label_21
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xd
	mov	rdi, rax
	call	unlink
	mov	dword ptr [rbp - 0xc], eax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_20
.label_21:
	mov	qword ptr [word ptr [temphead]],  0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030f4
	.globl sub_4030f4
	.type sub_4030f4, @function
sub_4030f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403100
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
	jae	.label_22
	call	xalloc_die
.label_22:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
.label_28:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_27
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_24
	movabs	rax, OFFSET FLAT:label_33
	movabs	rcx, OFFSET FLAT:label_34
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_25
.label_24:
	movabs	rsi, OFFSET FLAT:label_23
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_26
	movabs	rax, OFFSET FLAT:label_29
	movabs	rcx, OFFSET FLAT:label_30
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_25
	.section	.text
	.align	16
	#Procedure 0x4031e7

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
	je	.label_28
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_25
.label_26:
	movabs	rax, OFFSET FLAT:label_31
	movabs	rcx, OFFSET FLAT:label_32
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_25:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403248
	.globl sub_403248
	.type sub_403248, @function
sub_403248:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403250

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
	.align	16
	#Procedure 0x4032c5
	.globl sub_4032c5
	.type sub_4032c5, @function
sub_4032c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_35
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_35
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_37
.label_35:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_36
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_36
	call	xalloc_die
.label_36:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_37:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40334a
	.globl sub_40334a
	.type sub_40334a, @function
sub_40334a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403350

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -1
	ja	.label_38
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_39
.label_38:
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_39:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403391
	.globl sub_403391
	.type sub_403391, @function
sub_403391:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033a0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_40
	cmp	dword ptr [rbp - 4], 2
	jg	.label_40
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	dword ptr [rbp - 8], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	dword ptr [rbp - 0x14], edi
	call	__errno_location
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], edi
.label_40:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033ff
	.globl sub_4033ff
	.type sub_4033ff, @function
sub_4033ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403400

	.globl reap_some
	.type reap_some, @function
reap_some:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xffffffff
	call	reap
	mov	dword ptr [rbp - 4], eax
	call	reap_exited
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403420

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
	.align	16
	#Procedure 0x40343f
	.globl sub_40343f
	.type sub_40343f, @function
sub_40343f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403440

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
	je	.label_41
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_41:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40347b
	.globl sub_40347b
	.type sub_40347b, @function
sub_40347b:

	nop	dword ptr [rax + rax]
.label_43:
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_42
.label_42:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403493
	.globl sub_403493
	.type sub_403493, @function
sub_403493:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034a1

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x1038
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	call	free
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_43
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_42
.label_46:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_44:
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
	.align	16
	#Procedure 0x40352a
	.globl sub_40352a
	.type sub_40352a, @function
sub_40352a:

	nop	word ptr [rax + rax]
.label_48:
	jmp	.label_44
.label_47:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_46
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403559

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
	jne	.label_47
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_45
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
.label_45:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_48
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4035e0

	.globl num_processors
	.type num_processors, @function
num_processors:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], -1
	cmp	dword ptr [rbp - 0xc], 2
	jne	.label_49
	movabs	rdi, OFFSET FLAT:label_58
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	movabs	rdi, OFFSET FLAT:label_55
	mov	qword ptr [rbp - 0x20], rax
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_53
	mov	qword ptr [rbp - 0x18], -1
.label_53:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_51
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_54
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_56
.label_51:
	mov	dword ptr [rbp - 0xc], 1
.label_49:
	mov	edi, dword ptr [rbp - 0xc]
	call	num_processors_ignoring_omp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_57
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_52
.label_54:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_56:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_50
.label_57:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_52:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_50:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036c9
	.globl sub_4036c9
	.type sub_4036c9, @function
sub_4036c9:

	nop	dword ptr [rax]
.label_74:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:label_65
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_68
	xor	edi, edi
	lea	rsi, [rbp - 0xd8]
	call	fstat
	mov	dword ptr [rbp - 0xf0], eax
	jmp	.label_72
.label_68:
	lea	rsi, [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + rax*8]
	call	stat
	mov	dword ptr [rbp - 0xf0], eax
.label_72:
	mov	eax, dword ptr [rbp - 0xf0]
	mov	dword ptr [rbp - 0xec], eax
.label_73:
	mov	eax, dword ptr [rbp - 0xec]
	cmp	eax, 0
	je	.label_70
	movabs	rdi, OFFSET FLAT:label_60
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rcx + rdi*8]
	mov	rdi, rax
	call	sort_die
	.section	.text
	.align	16
	#Procedure 0x403766

	.globl sort_buffer_size
	.type sort_buffer_size, @function
sort_buffer_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], 0
.label_71:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_75
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_74
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	fileno
	lea	rsi, [rbp - 0xd8]
	mov	edi, eax
	call	fstat
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_73
.label_63:
	cmp	qword ptr [word ptr [sort_size]],  0
	je	.label_69
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_66
.label_70:
	mov	eax, dword ptr [rbp - 0xc0]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_63
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_67
.label_61:
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_71
.label_75:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_66:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403869
	.globl sub_403869
	.type sub_403869, @function
sub_403869:

	nop	word ptr cs:[rax + rax]
.label_69:
	mov	qword ptr [rbp - 0xe0], 0x20000
.label_67:
	cmp	qword ptr [word ptr [sort_buffer_size.size_bound]],  0
	jne	.label_62
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [word ptr [sort_buffer_size.size_bound]],  rax
	cmp	qword ptr [word ptr [sort_buffer_size.size_bound]],  0
	jne	.label_64
	call	default_sort_size
	mov	qword ptr [word ptr [sort_buffer_size.size_bound]],  rax
.label_64:
	jmp	.label_62
.label_62:
	mov	rax, qword ptr [rbp - 0xe0]
	imul	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0xf8]
	cmp	rcx, rax
	jne	.label_59
	mov	rax,  qword ptr [word ptr [sort_buffer_size.size_bound]]
	sub	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0xe8]
	ja	.label_61
.label_59:
	mov	rax,  qword ptr [word ptr [sort_buffer_size.size_bound]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_66
	.section	.text
	.align	16
	#Procedure 0x403930

	.globl unlock_node
	.type unlock_node, @function
unlock_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x58
	call	pthread_mutex_unlock
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403952
	.globl sub_403952
	.type sub_403952, @function
sub_403952:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403960

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 1
	je	.label_76
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_76:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40397d
	.globl sub_40397d
	.type sub_40397d, @function
sub_40397d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403980

	.globl specify_nthreads
	.type specify_nthreads, @function
specify_nthreads:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	xor	esi, esi
	mov	ecx, 0xa
	lea	r8, [rbp - 0x20]
	movabs	r9, OFFSET FLAT:label_77
	mov	dword ptr [rbp - 0xc], edi
	mov	byte ptr [rbp - 0xd], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	edx, ecx
	mov	rcx, r8
	mov	r8, r9
	call	xstrtoul
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 1
	jne	.label_82
	mov	qword ptr [rbp - 8], -1
	jmp	.label_79
.label_82:
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_80
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x24]
	mov	esi, dword ptr [rbp - 0xc]
	mov	al, byte ptr [rbp - 0xd]
	mov	r8, qword ptr [rbp - 0x18]
	movsx	edx, al
	call	xstrtol_fatal
.label_80:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_83
	mov	qword ptr [rbp - 0x20], -1
.label_83:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_81
	movabs	rdi, OFFSET FLAT:label_78
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_81:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_79:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a54
	.globl sub_403a54
	.type sub_403a54, @function
sub_403a54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a60

	.globl compare_nodes
	.type compare_nodes, @function
compare_nodes:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rsi + 0x50]
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	eax, dword ptr [rsi + 0x50]
	jne	.label_84
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rdx + 0x30]
	cmp	rax, rcx
	setb	sil
	and	sil, 1
	movzx	edi, sil
	mov	dword ptr [rbp - 4], edi
	jmp	.label_85
.label_84:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x50]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	ecx, dword ptr [rax + 0x50]
	setb	dl
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
.label_85:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ae6
	.globl sub_403ae6
	.type sub_403ae6, @function
sub_403ae6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403af0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	movsx	edx, al
	call	xstrtol_error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403b31
	.globl sub_403b31
	.type sub_403b31, @function
sub_403b31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b40

	.globl mkostemp_safer
	.type mkostemp_safer, @function
mkostemp_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	mkostemp
	mov	esi, dword ptr [rbp - 0xc]
	mov	edi, eax
	call	fd_safer_flag
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b6b
	.globl sub_403b6b
	.type sub_403b6b, @function
sub_403b6b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b70

	.globl field_sep
	.type field_sep, @function
field_sep:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	edi, byte ptr [rbp - 1]
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	mov	byte ptr [rbp - 0x11], dl
	jne	.label_86
	movzx	eax, byte ptr [rbp - 1]
	cmp	eax, 0xa
	sete	cl
	mov	byte ptr [rbp - 0x11], cl
.label_86:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bc5
	.globl sub_403bc5
	.type sub_403bc5, @function
sub_403bc5:

	nop	word ptr cs:[rax + rax]
.label_93:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x30], 0
.label_92:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx], eax
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403bfa
	.globl sub_403bfa
	.type sub_403bfa, @function
sub_403bfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c03

	.globl create_temp_file
	.type create_temp_file, @function
create_temp_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi,  qword ptr [word ptr [create_temp_file.temp_dir_index]]
	mov	rcx,  qword ptr [word ptr [temp_dirs]]
	mov	rcx, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0xc
	add	rax, 0x14
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0xd
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx,  qword ptr [word ptr [create_temp_file.slashbase]]
	mov	qword ptr [rax + rcx], rdx
	mov	r8d,  dword ptr [dword ptr [label_90]]
	mov	dword ptr [rax + rcx + 8], r8d
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
	mov	rax,  qword ptr [word ptr [create_temp_file.temp_dir_index]]
	add	rax, 1
	mov	qword ptr [word ptr [create_temp_file.temp_dir_index]],  rax
	cmp	rax,  qword ptr [word ptr [temp_dir_count]]
	jne	.label_91
	mov	qword ptr [word ptr [create_temp_file.temp_dir_index]],  0
.label_91:
	lea	rdi, [rbp - 0xc0]
	call	cs_enter
	mov	esi, 0x80000
	mov	rdi, qword ptr [rbp - 0x38]
	call	mkostemp_safer
	xor	esi, esi
	mov	dword ptr [rbp - 0x10], eax
	cmp	esi, dword ptr [rbp - 0x10]
	jg	.label_88
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [temptail]]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [temptail]],  rax
.label_88:
	call	__errno_location
	lea	rdi, [rbp - 0xc0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	call	cs_leave
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0xc4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xc4]
	mov	dword ptr [rax], ecx
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_92
	test	byte ptr [rbp - 9], 1
	je	.label_87
	call	__errno_location
	cmp	dword ptr [rax], 0x18
	je	.label_93
.label_87:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_89
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc8], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xd0], rax
	call	quotearg_style
	mov	edi, 2
	mov	esi, dword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	16
	#Procedure 0x403db0

	.globl register_proc
	.type register_proc, @function
register_proc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [word ptr [proctab]],  0
	jne	.label_94
	mov	eax, 0x2f
	mov	edi, eax
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:proctab_hasher
	movabs	rsi, OFFSET FLAT:proctab_comparator
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, rcx
	mov	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0x18]
	call	hash_initialize
	mov	qword ptr [word ptr [proctab]],  rax
	cmp	qword ptr [word ptr [proctab]],  0
	jne	.label_96
	call	xalloc_die
.label_95:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e27
	.globl sub_403e27
	.type sub_403e27, @function
sub_403e27:

	nop	word ptr [rax + rax]
.label_96:
	jmp	.label_94
.label_94:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xc], 1
	mov	rdi,  qword ptr [word ptr [proctab]]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, rax
	call	hash_insert
	cmp	rax, 0
	jne	.label_95
	call	xalloc_die
.label_127:
	mov	rdi, qword ptr [rbp - 0x1050]
	call	xmalloc
	mov	qword ptr [rbp - 0x98], rax
	mov	qword ptr [rbp - 0x70], rax
.label_137:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x1048], 0
	mov	qword ptr [rbp - 0x80], 0
.label_130:
	mov	rax, qword ptr [rbp - 0x1048]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_134
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_139
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	test	byte ptr [rdx + rcx], 1
	jne	.label_147
.label_139:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_206
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	mov	dword ptr [rbp - 0x1064], edi
	jmp	.label_160
.label_141:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
.label_155:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], -1
	je	.label_174
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	begfield
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	begfield
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_181
.label_195:
	mov	al, byte ptr [rbp - 0x89]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	byte ptr [rdx + rcx], al
	mov	al, byte ptr [rbp - 0x8a]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	byte ptr [rdx + rcx], al
.label_200:
	jmp	.label_115
.label_153:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_190
	xor	eax, eax
	cmp	qword ptr [rbp - 0x88], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_100
.label_150:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x36], 1
	je	.label_199
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x70]
	call	getmonth
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0x78]
	mov	dword ptr [rbp - 0x106c], eax
	call	getmonth
	mov	ecx, dword ptr [rbp - 0x106c]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x44], ecx
	jmp	.label_189
.label_201:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_151
.label_111:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	setne	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x10a4], edx
.label_114:
	mov	eax, dword ptr [rbp - 0x10a4]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_105
.label_105:
	jmp	.label_112
.label_112:
	jmp	.label_115
.label_115:
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_208
	jmp	.label_108
.label_182:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_121
.label_101:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_142
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	jb	.label_154
.label_142:
	jmp	.label_191
.label_156:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x1058], rax
.label_164:
	mov	rax, qword ptr [rbp - 0x1058]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	jbe	.label_98
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x1060], rax
	jmp	.label_145
.label_210:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x35], 1
	je	.label_150
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	human_numcompare
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_126
.label_191:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	setb	cl
	and	cl, 1
	movzx	esi, cl
	sub	edx, esi
	mov	dword ptr [rbp - 0x44], edx
	jmp	.label_119
.label_154:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	esi, byte ptr [rcx]
	mov	dword ptr [rbp - 0x1074], edi
	mov	edi, esi
	call	to_uchar
	movzx	esi, al
	mov	ecx, esi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	call	to_uchar
	movzx	esi, al
	mov	edi, dword ptr [rbp - 0x1074]
	sub	edi, esi
	mov	dword ptr [rbp - 0x44], edi
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_182
	jmp	.label_108
.label_148:
	mov	dword ptr [rbp - 0x44], 1
.label_108:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x37], 1
	je	.label_187
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x10ac], eax
	jmp	.label_117
.label_168:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rcx]
	mov	dword ptr [rbp - 0x107c], edi
	mov	edi, edx
	call	to_uchar
	movzx	edx, al
	mov	edi, dword ptr [rbp - 0x107c]
	sub	edi, edx
	mov	dword ptr [rbp - 0x44], edi
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_201
	jmp	.label_108
.label_98:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x1060], rax
.label_145:
	mov	rax, qword ptr [rbp - 0x1060]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	jne	.label_109
	mov	rdi, qword ptr [rbp - 0x20]
	call	key_numeric
	test	al, 1
	jne	.label_109
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x36], 1
	jne	.label_109
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x33], 1
	jne	.label_109
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x38], 1
	je	.label_118
.label_109:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_122
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_124
.label_122:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x1050], rax
	cmp	qword ptr [rbp - 0x1050], 0xfa0
	ja	.label_127
	lea	rax, [rbp - 0x1040]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x98], 0
	jmp	.label_137
.label_133:
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_131
	jmp	.label_148
.label_118:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_149
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_97
	jmp	.label_183
.label_183:
	jmp	.label_121
.label_121:
	jmp	.label_158
.label_158:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x106d], cl
	jae	.label_159
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x106d], al
.label_159:
	mov	al, byte ptr [rbp - 0x106d]
	test	al, 1
	jne	.label_171
	jmp	.label_173
.label_171:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_158
.label_97:
	jmp	.label_176
.label_176:
	jmp	.label_151
.label_151:
	jmp	.label_178
.label_178:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x1075], cl
	jae	.label_180
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x1075], al
.label_180:
	mov	al, byte ptr [rbp - 0x1075]
	test	al, 1
	jne	.label_188
	jmp	.label_192
.label_188:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_178
.label_192:
	jmp	.label_99
.label_99:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x1076], cl
	jae	.label_197
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x1076], al
.label_197:
	mov	al, byte ptr [rbp - 0x1076]
	test	al, 1
	jne	.label_209
	jmp	.label_128
.label_209:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_99
.label_149:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_133
	xor	eax, eax
	cmp	qword ptr [rbp - 0x68], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_105
.label_134:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	byte ptr [rcx + rax], 0
	mov	qword ptr [rbp - 0x1048], 0
	mov	qword ptr [rbp - 0x88], 0
.label_203:
	mov	rax, qword ptr [rbp - 0x1048]
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_120
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_123
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	test	byte ptr [rdx + rcx], 1
	jne	.label_132
.label_123:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_136
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	mov	dword ptr [rbp - 0x1068], edi
	jmp	.label_144
.label_184:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x1090], rdi
	mov	qword ptr [rbp - 0x1098], rsi
	jae	.label_152
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10a0], rax
	jmp	.label_161
.label_128:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_163
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	jb	.label_168
.label_163:
	jmp	.label_170
.label_199:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x33], 1
	je	.label_172
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x88]
	call	compare_random
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_177
.label_104:
	jmp	.label_165
.label_102:
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, 1
	mov	rsi, rax
	call	xmemcoll0
	mov	dword ptr [rbp - 0x44], eax
.label_106:
	jmp	.label_100
.label_100:
	jmp	.label_138
.label_138:
	jmp	.label_177
.label_177:
	jmp	.label_189
.label_189:
	jmp	.label_126
.label_126:
	jmp	.label_198
.label_198:
	jmp	.label_169
.label_169:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_193
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_195
.label_193:
	mov	rdi, qword ptr [rbp - 0x98]
	call	free
	jmp	.label_200
.label_162:
	jmp	.label_157
.label_157:
	jmp	.label_181
.label_181:
	jmp	.label_204
.label_120:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	byte ptr [rcx + rax], 0
	jmp	.label_205
.label_187:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x10ac], eax
.label_117:
	mov	eax, dword ptr [rbp - 0x10ac]
	mov	dword ptr [rbp - 4], eax
.label_140:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404613
	.globl sub_404613
	.type sub_404613, @function
sub_404613:

	nop	word ptr [rax + rax]
.label_190:
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_102
	mov	dword ptr [rbp - 0x44], 1
	jmp	.label_106
.label_208:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_107
	jmp	.label_113
.label_206:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1064], edx
.label_160:
	mov	eax, dword ptr [rbp - 0x1064]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, qword ptr [rbp - 0x70]
	mov	byte ptr [rsi + rdx], cl
.label_147:
	jmp	.label_129
.label_129:
	mov	rax, qword ptr [rbp - 0x1048]
	add	rax, 1
	mov	qword ptr [rbp - 0x1048], rax
	jmp	.label_130
	.section	.text
	.align	16
	#Procedure 0x40469e

	.globl keycompare
	.type keycompare, @function
keycompare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10b0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x40], rsi
.label_204:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jbe	.label_156
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x1058], rax
	jmp	.label_164
.label_124:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x89], dl
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x8a], dl
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	byte ptr [rcx + rax], 0
.label_205:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x32], 1
	je	.label_186
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	numcompare
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_169
.label_186:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x34], 1
	je	.label_210
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	general_numcompare
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_198
.label_173:
	jmp	.label_103
.label_103:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x106e], cl
	jae	.label_202
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x106e], al
.label_202:
	mov	al, byte ptr [rbp - 0x106e]
	test	al, 1
	jne	.label_166
	jmp	.label_101
.label_166:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_103
.label_152:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x10a0], rax
.label_161:
	mov	rax, qword ptr [rbp - 0x10a0]
	mov	rdi, qword ptr [rbp - 0x1090]
	mov	rsi, qword ptr [rbp - 0x1098]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_116
	jmp	.label_108
.label_136:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1068], edx
.label_144:
	mov	eax, dword ptr [rbp - 0x1068]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x88], rsi
	mov	rsi, qword ptr [rbp - 0x78]
	mov	byte ptr [rsi + rdx], cl
.label_132:
	jmp	.label_135
.label_135:
	mov	rax, qword ptr [rbp - 0x1048]
	add	rax, 1
	mov	qword ptr [rbp - 0x1048], rax
	jmp	.label_203
.label_107:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], -1
	je	.label_141
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	limfield
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	limfield
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_155
.label_174:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x30], 1
	je	.label_157
	jmp	.label_125
.label_125:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x10a5], cl
	jae	.label_167
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x10a5], al
.label_167:
	mov	al, byte ptr [rbp - 0x10a5]
	test	al, 1
	jne	.label_175
	jmp	.label_179
.label_175:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_125
.label_131:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_184
	jmp	.label_165
.label_165:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x107d], cl
	jae	.label_185
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	setb	cl
	mov	byte ptr [rbp - 0x107d], cl
.label_185:
	mov	al, byte ptr [rbp - 0x107d]
	test	al, 1
	jne	.label_194
	jmp	.label_196
.label_194:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	movsx	esi, byte ptr [rcx]
	mov	dword ptr [rbp - 0x1084], edi
	mov	edi, esi
	call	to_uchar
	movzx	esi, al
	mov	ecx, esi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	call	to_uchar
	movzx	esi, al
	mov	edi, dword ptr [rbp - 0x1084]
	sub	edi, esi
	mov	dword ptr [rbp - 0x44], edi
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_104
	jmp	.label_108
.label_116:
	jmp	.label_110
.label_110:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_111
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x10a4], eax
	jmp	.label_114
.label_170:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	setb	cl
	and	cl, 1
	movzx	esi, cl
	sub	edx, esi
	mov	dword ptr [rbp - 0x44], edx
	jmp	.label_119
.label_119:
	jmp	.label_112
.label_172:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x38], 1
	je	.label_153
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	filevercmp
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_138
.label_113:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_140
.label_196:
	jmp	.label_110
.label_179:
	jmp	.label_143
.label_143:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x10a6], cl
	jae	.label_146
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x10a6], al
.label_146:
	mov	al, byte ptr [rbp - 0x10a6]
	test	al, 1
	jne	.label_207
	jmp	.label_162
.label_207:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_143
.label_214:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_212:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_215
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_216
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_216
	jmp	.label_211
.label_216:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_213
.label_211:
	jmp	.label_217
.label_217:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_212
	.section	.text
	.align	16
	#Procedure 0x404b8c
	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_214
	mov	qword ptr [rbp - 8], 0
	jmp	.label_213
.label_215:
	mov	qword ptr [rbp - 8], 0
.label_213:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404bda
	.globl sub_404bda
	.type sub_404bda, @function
sub_404bda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404be0

	.globl key_to_opts
	.type key_to_opts, @function
key_to_opts:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	test	byte ptr [rsi + 0x30], 1
	jne	.label_224
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x31], 1
	je	.label_228
.label_224:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x62
.label_228:
	movabs	rax, OFFSET FLAT:nondictionary
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x20], rax
	jne	.label_221
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x64
.label_221:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_218
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x66
.label_218:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x34], 1
	je	.label_225
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x67
.label_225:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x35], 1
	je	.label_219
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x68
.label_219:
	movabs	rax, OFFSET FLAT:nonprinting
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x20], rax
	jne	.label_223
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x69
.label_223:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x36], 1
	je	.label_222
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x4d
.label_222:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x32], 1
	je	.label_229
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x6e
.label_229:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x33], 1
	je	.label_227
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x52
.label_227:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x37], 1
	je	.label_226
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x72
.label_226:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x38], 1
	je	.label_220
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x56
.label_220:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d78
	.globl sub_404d78
	.type sub_404d78, @function
sub_404d78:

	nop	dword ptr [rax + rax]
.label_2463:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x36], 1
	jmp	.label_230
.label_2470:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x35], 1
	jmp	.label_230
.label_2472:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x32], 1
	jmp	.label_230
.label_2473:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x37], 1
	jmp	.label_230
.label_2468:
	movabs	rax, OFFSET FLAT:fold_toupper
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x28], rax
	jmp	.label_230
.label_2464:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x33], 1
	jmp	.label_230
.label_2467:
	movabs	rax, OFFSET FLAT:nondictionary
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_230
.label_232:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_237:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404dfd
	.globl sub_404dfd
	.type sub_404dfd, @function
sub_404dfd:

	nop	
.label_2469:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x34], 1
	jmp	.label_230
.label_2465:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x38], 1
	jmp	.label_230
.label_230:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_235
.label_233:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_237
.label_2466:
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_239
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_231
.label_239:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x30], 1
.label_231:
	cmp	dword ptr [rbp - 0x1c], 1
	je	.label_234
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_236
.label_234:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x31], 1
.label_236:
	jmp	.label_230
	.section	.text
	.align	16
	#Procedure 0x404e74

	.globl set_ordering
	.type set_ordering, @function
set_ordering:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
.label_235:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	je	.label_232
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x4d
	mov	eax, ecx
	sub	ecx, 0x25
	mov	qword ptr [rbp - 0x28], rax
	mov	dword ptr [rbp - 0x2c], ecx
	ja	.label_233
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_238]]
	jmp	rcx
.label_2471:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_240
	movabs	rax, OFFSET FLAT:nonprinting
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
.label_240:
	jmp	.label_230
	.section	.text
	.align	16
	#Procedure 0x404ee0

	.globl dup_safer_flag
	.type dup_safer_flag, @function
dup_safer_flag:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 3
	xor	eax, eax
	mov	ecx, 0x406
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	and	esi, 0x80000
	cmp	esi, 0
	cmovne	eax, ecx
	mov	esi, eax
	mov	al, 0
	call	rpl_fcntl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f1b
	.globl sub_404f1b
	.type sub_404f1b, @function
sub_404f1b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f20

	.globl proctab_comparator
	.type proctab_comparator, @function
proctab_comparator:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rsi + 8]
	sete	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f55
	.globl sub_404f55
	.type sub_404f55, @function
sub_404f55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f60
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
	.align	16
	#Procedure 0x404f8d
	.globl sub_404f8d
	.type sub_404f8d, @function
sub_404f8d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f90

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
	jne	.label_241
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_241:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_242
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_242
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_242
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_243
.label_242:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_243:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405031
	.globl sub_405031
	.type sub_405031, @function
sub_405031:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405040

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	esi, eax
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40506b
	.globl sub_40506b
	.type sub_40506b, @function
sub_40506b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405070

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
	jae	.label_246
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_246:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jae	.label_247
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
.label_247:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	ja	.label_244
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	ja	.label_244
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x20], rax
.label_244:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_248
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_248:
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
	jne	.label_245
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
	jne	.label_245
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	call_freefun
.label_245:
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
	.align	16
	#Procedure 0x40526c
	.globl sub_40526c
	.type sub_40526c, @function
sub_40526c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405270
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052a6
	.globl sub_4052a6
	.type sub_4052a6, @function
sub_4052a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052b0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_249
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_250
.label_249:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_250:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405306
	.globl sub_405306
	.type sub_405306, @function
sub_405306:

	nop	word ptr cs:[rax + rax]
.label_255:
	movzx	edi, byte ptr [rbp - 5]
	call	c_isalpha
	test	al, 1
	jne	.label_254
	jmp	.label_251
.label_254:
	movzx	eax, byte ptr [rbp - 5]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_253
.label_251:
	movzx	eax, byte ptr [rbp - 5]
	cmp	eax, 0x7e
	jne	.label_252
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_253
.label_252:
	movzx	eax, byte ptr [rbp - 5]
	add	eax, 0xff
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
.label_253:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405363
	.globl sub_405363
	.type sub_405363, @function
sub_405363:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405370

	.globl order
	.type order, @function
order:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, dil
	mov	byte ptr [rbp - 5], al
	movzx	edi, byte ptr [rbp - 5]
	call	c_isdigit
	test	al, 1
	jne	.label_256
	jmp	.label_255
.label_256:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_253
	.section	.text
	.align	16
	#Procedure 0x4053a0

	.globl write_unique
	.type write_unique, @function
write_unique:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	test	byte ptr [byte ptr [unique]],  1
	je	.label_257
	cmp	qword ptr [word ptr [saved_line]],  0
	je	.label_261
	movabs	rsi, OFFSET FLAT:saved_line
	mov	rdi, qword ptr [rbp - 8]
	call	compare
	cmp	eax, 0
	jne	.label_261
	jmp	.label_262
.label_261:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [word ptr [saved_line]],  rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [word ptr [label_258]],  rcx
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [word ptr [label_259]],  rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [label_260]],  rax
.label_257:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	write_line
.label_262:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40543c
	.globl sub_40543c
	.type sub_40543c, @function
sub_40543c:

	nop	dword ptr [rax]
.label_263:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405457
	.globl sub_405457
	.type sub_405457, @function
sub_405457:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40545f

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
	jae	.label_263
	call	xalloc_die
.label_267:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_264
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_265
.label_269:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_266:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_267
	call	abort
.label_265:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4054da
	.globl sub_4054da
	.type sub_4054da, @function
sub_4054da:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4054dd
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_269
	mov	qword ptr [rbp - 8], 0
	jmp	.label_265
.label_264:
	jmp	.label_270
.label_270:
	jmp	.label_268
.label_268:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_266
	.section	.text
	.align	16
	#Procedure 0x405520
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
	.align	16
	#Procedure 0x40555a
	.globl sub_40555a
	.type sub_40555a, @function
sub_40555a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405560

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x1038
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rcx
	call	xmalloc
	movabs	rcx, OFFSET FLAT:randread_error
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055b6
	.globl sub_4055b6
	.type sub_4055b6, @function
sub_4055b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055c0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_271
	movabs	rdi, OFFSET FLAT:label_274
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_273
.label_271:
	movabs	rdi, OFFSET FLAT:label_272
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_273:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40565f
	.globl sub_40565f
	.type sub_40565f, @function
sub_40565f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405660

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_275
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_275:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056a3
	.globl sub_4056a3
	.type sub_4056a3, @function
sub_4056a3:

	nop	word ptr cs:[rax + rax]
.label_296:
	mov	dword ptr [rbp - 0x24], 1
.label_295:
	jmp	.label_282
.label_282:
	cmp	dword ptr [rbp - 0x24], 2
	jne	.label_280
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_280
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax + 1], 0
	jne	.label_280
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x25
	mov	dword ptr [rbp - 0x34], ecx
	mov	dword ptr [rbp - 0x38], edx
	je	.label_291
	jmp	.label_276
.label_276:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x3c], eax
	jne	.label_279
	jmp	.label_283
.label_283:
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_279
.label_284:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40572b
	.globl sub_40572b
	.type sub_40572b, @function
sub_40572b:

	nop	
.label_287:
	mov	dword ptr [rbp - 0x24], 1
.label_290:
	jmp	.label_279
.label_279:
	jmp	.label_280
.label_280:
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_294
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [sort_size]]
	jae	.label_281
	jmp	.label_284
.label_293:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	imul	rcx, rcx, 0x22
	mov	qword ptr [rbp - 0x58], rcx
.label_288:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [word ptr [sort_size]],  rax
	jmp	.label_284
.label_291:
	movsd	xmm0,  qword ptr [word ptr [rip + label_277]]
	movsd	xmm1,  qword ptr [word ptr [rip + label_278]]
	movsd	qword ptr [rbp - 0x48], xmm0
	movsd	qword ptr [rbp - 0x50], xmm1
	call	physmem_total
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_285]]
	movq	xmm2, qword ptr [rbp - 0x18]
	punpckldq	xmm2, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_286]]
	subpd	xmm2, xmm1
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	mulsd	xmm0, xmm1
	movsd	xmm1, qword ptr [rbp - 0x50]
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x30], xmm0
	movsd	xmm0, qword ptr [rbp - 0x48]
	ucomisd	xmm0, qword ptr [rbp - 0x30]
	jbe	.label_287
	movsd	xmm0, qword ptr [rbp - 0x30]
	movsd	xmm1,  qword ptr [word ptr [rip + label_289]]
	movaps	xmm2, xmm0
	subsd	xmm2, xmm1
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttsd2si	rcx, xmm0
	ucomisd	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_290
.label_281:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [sort_size]],  rax
	mov	rax,  qword ptr [word ptr [sort_size]]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_292
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	jbe	.label_293
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_288
.label_292:
	mov	dword ptr [rbp - 0x24], 1
.label_294:
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x24]
	mov	esi, dword ptr [rbp - 4]
	mov	al, byte ptr [rbp - 5]
	mov	r8, qword ptr [rbp - 0x10]
	movsx	edx, al
	call	xstrtol_fatal
	.section	.text
	.align	16
	#Procedure 0x40589d

	.globl specify_sort_size
	.type specify_sort_size, @function
specify_sort_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, sil
	lea	rsi, [rbp - 0x20]
	mov	ecx, 0xa
	lea	r8, [rbp - 0x18]
	movabs	r9, OFFSET FLAT:label_297
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], al
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, ecx
	mov	rcx, r8
	mov	r8, r9
	call	xstrtoumax
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_282
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_282
	movabs	rax, 0x3fffffffffffff
	cmp	qword ptr [rbp - 0x18], rax
	ja	.label_296
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 0xa
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_295
	.section	.text
	.align	16
	#Procedure 0x405920
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rax, [rbp - 0xb8]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, rax
	call	md5_init_ctx
	lea	rdx, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	md5_process_bytes
	lea	rdi, [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	md5_finish_ctx
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405973
	.globl sub_405973
	.type sub_405973, @function
sub_405973:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405980

	.globl afalg_stream
	.type afalg_stream, @function
afalg_stream:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0xffffff9f
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40599b
	.globl sub_40599b
	.type sub_40599b, @function
sub_40599b:

	nop	dword ptr [rax + rax]
.label_300:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4059a6
	.globl sub_4059a6
	.type sub_4059a6, @function
sub_4059a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059b5

	.globl merge_loop
	.type merge_loop, @function
merge_loop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
.label_299:
	mov	rdi, qword ptr [rbp - 8]
	call	queue_pop
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax + 0x50], 0
	jne	.label_298
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlock_node
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	queue_insert
	jmp	.label_300
.label_298:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mergelines_node
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	queue_check_insert
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	queue_check_insert_parent
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlock_node
	jmp	.label_299
.label_302:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_301
.label_301:
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
	.align	16
	#Procedure 0x405ab3
	.globl sub_405ab3
	.type sub_405ab3, @function
sub_405ab3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ac1

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
	je	.label_302
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_301
	.section	.text
	.align	16
	#Procedure 0x405af0

	.globl save_token
	.type save_token, @function
save_token:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x18
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	sub	rdi, rax
	mov	qword ptr [rbp - 0x20], rdi
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_303
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_303:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x30]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	jbe	.label_305
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
.label_305:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 8
	jae	.label_304
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	_obstack_newchunk
.label_304:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 8
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc8
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 8
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_306
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	_obstack_newchunk
.label_306:
	lea	rax, [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d03
	.globl sub_405d03
	.type sub_405d03, @function
sub_405d03:

	nop	word ptr cs:[rax + rax]
.label_309:
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [rip + label_307]]
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 8], xmm0
.label_308:
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405d34
	.globl sub_405d34
	.type sub_405d34, @function
sub_405d34:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d39

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	edi, 0x56
	call	sysconf
	mov	edi, 0x1e
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rbp - 0x10], xmm0
	call	sysconf
	xorps	xmm0, xmm0
	cvtsi2sd	xmm1, rax
	movsd	qword ptr [rbp - 0x18], xmm1
	movsd	xmm1, qword ptr [rbp - 0x10]
	ucomisd	xmm1, xmm0
	jb	.label_310
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x18]
	ucomisd	xmm1, xmm0
	jb	.label_310
	movsd	xmm0, qword ptr [rbp - 0x10]
	mulsd	xmm0, qword ptr [rbp - 0x18]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_308
.label_310:
	lea	rdi, [rbp - 0x88]
	call	sysinfo
	cmp	eax, 0
	jne	.label_309
	movq	xmm0, qword ptr [rbp - 0x60]
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_285]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_286]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x50]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm3, xmm1
	mov	eax, dword ptr [rbp - 0x20]
	mov	ecx, eax
	cvtsi2sd	xmm0, rcx
	mulsd	xmm3, xmm0
	movsd	qword ptr [rbp - 8], xmm3
	jmp	.label_308
	.section	.text
	.align	16
	#Procedure 0x405e10
	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	memcoll
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	mov	r8d, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], r8d
	cmp	dword ptr [rbp - 0x28], 0
	je	.label_311
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	call	collate_error
.label_311:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e77
	.globl sub_405e77
	.type sub_405e77, @function
sub_405e77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e80

	.globl sort_die
	.type sort_die, @function
sort_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rbp - 0x10], 0
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rcx
	je	.label_316
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_315
.label_316:
	movabs	rdi, OFFSET FLAT:label_317
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_315:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	edi, 2
	movabs	rdx, OFFSET FLAT:label_312
	mov	esi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, rax
	mov	al, 0
	call	error
.label_2439:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_314
.label_2434:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_314
.label_2430:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_314
.label_2431:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_314
.label_2436:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_314
.label_347:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_351
.label_351:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_346:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_356
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_346
.label_345:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_320
.label_344:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoul
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_342
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_345
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_345
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_345
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_348
.label_350:
	movabs	rdi, OFFSET FLAT:label_352
	movabs	rsi, OFFSET FLAT:label_353
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_354
	call	__assert_fail
.label_356:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_344
	mov	dword ptr [rbp - 4], 4
	jmp	.label_320
.label_343:
	mov	dword ptr [rbp - 0x4c], 1
.label_349:
	jmp	.label_357
.label_357:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_358
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_320
.label_2433:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_314
.label_325:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_331:
	jmp	.label_338
.label_338:
	jmp	.label_321
.label_321:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_323
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_332]]
	jmp	rcx
.label_2428:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_314
.label_348:
	jmp	.label_357
.label_342:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_349
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_343
	mov	dword ptr [rbp - 4], 4
	jmp	.label_320
.label_2437:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_314
.label_355:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_347
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_351
.label_323:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_320
.label_336:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_319
	jmp	.label_340
.label_340:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_319
	jmp	.label_339
.label_339:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_319
	jmp	.label_326
.label_326:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_319
	jmp	.label_330
.label_330:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_319
	jmp	.label_327
.label_327:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_319
	jmp	.label_337
.label_337:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_319
	jmp	.label_341
.label_341:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_319
	jmp	.label_322
.label_322:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_319
	jmp	.label_334
.label_334:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_319
	jmp	.label_333
.label_333:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_321
	jmp	.label_319
.label_319:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_338
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_325
	jmp	.label_324
.label_324:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_325
	jmp	.label_329
.label_329:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_331
	jmp	.label_328
.label_328:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_335
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_335:
	jmp	.label_331
.label_314:
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
	je	.label_313
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_313:
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_320:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063be
	.globl sub_4063be
	.type sub_4063be, @function
sub_4063be:

	nop	dword ptr [rax + rax]
.label_358:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_318
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_336
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_320
.label_2438:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_314
.label_2435:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_314
.label_2432:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_314
.label_2429:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_314
	.section	.text
	.align	16
	#Procedure 0x406471

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
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
	jg	.label_350
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_350
	jmp	.label_355
.label_361:
	mov	al, 1
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x15], al
	jne	.label_359
	cmp	qword ptr [rbp - 8], 0
	setne	al
	mov	byte ptr [rbp - 0x15], al
.label_359:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x14], ecx
.label_360:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064db
	.globl sub_4064db
	.type sub_4064db, @function
sub_4064db:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4064dc
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_361
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_360
.label_372:
	mov	qword ptr [rbp - 8], 0
.label_362:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406512
	.globl sub_406512
	.type sub_406512, @function
sub_406512:

	nop	word ptr cs:[rax + rax]
.label_374:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_363
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_363
	jmp	.label_367
.label_363:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_366
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_369
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x48]
	call	free_entry
	jmp	.label_368
.label_373:
	jmp	.label_370
.label_370:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_371
.label_369:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_368:
	jmp	.label_366
.label_366:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_362
	.section	.text
	.align	16
	#Procedure 0x4065dd

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_374
	mov	qword ptr [rbp - 8], 0
	jmp	.label_362
.label_367:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_371:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_372
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_364
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_364
	jmp	.label_373
.label_364:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_365
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x58]
	call	free_entry
.label_365:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_362
	.section	.text
	.align	16
	#Procedure 0x4066d0

	.globl check_inputs
	.type check_inputs, @function
check_inputs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_376:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_378
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:label_65
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_377
	jmp	.label_375
.label_378:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406722
	.globl sub_406722
	.type sub_406722, @function
sub_406722:

	nop	word ptr [rax + rax]
.label_379:
	jmp	.label_375
.label_375:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_376
.label_377:
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + rax*8]
	call	euidaccess
	cmp	eax, 0
	je	.label_379
	movabs	rdi, OFFSET FLAT:label_380
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + rdi*8]
	mov	rdi, rax
	call	sort_die
	.section	.text
	.align	16
	#Procedure 0x406780
	.globl rotr32
	.type rotr32, @function
rotr32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shr	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067a7
	.globl sub_4067a7
	.type sub_4067a7, @function
sub_4067a7:

	nop	word ptr [rax + rax]
.label_381:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	readisaac
.label_382:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067ce
	.globl sub_4067ce
	.type sub_4067ce, @function
sub_4067ce:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067d8

	.globl randread
	.type randread, @function
randread:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	cmp	qword ptr [rdx], 0
	je	.label_381
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	readsource
	jmp	.label_382
	.section	.text
	.align	16
	#Procedure 0x406810
	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	call	strlen
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	mbsnwidth
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406848
	.globl sub_406848
	.type sub_406848, @function
sub_406848:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406850

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
	.align	16
	#Procedure 0x406878
	.globl sub_406878
	.type sub_406878, @function
sub_406878:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406880

	.globl exit_cleanup
	.type exit_cleanup, @function
exit_cleanup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	rax,  qword ptr [word ptr [temphead]]
	cmp	rax, 0
	je	.label_383
	lea	rdi, [rbp - 0x88]
	call	cs_enter
	call	cleanup
	lea	rdi, [rbp - 0x88]
	call	cs_leave
.label_383:
	call	close_stdout
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068c8
	.globl sub_4068c8
	.type sub_4068c8, @function
sub_4068c8:

	nop	dword ptr [rax + rax]
.label_391:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 8]
	sub	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 5
	add	rdx, rcx
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	test	byte ptr [rbp - 0x19], 1
	mov	qword ptr [rbp - 0x58], rdi
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0x68], rcx
	je	.label_390
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_387
.label_390:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_387
.label_387:
	mov	rax, qword ptr [rbp - 0x70]
	xor	ecx, ecx
	mov	edx, ecx
	sub	rdx, rax
	shl	rdx, 5
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, rdx
	mov	sil, byte ptr [rbp - 0x19]
	and	sil, 1
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x71], sil
	mov	rsi, rdx
	mov	rdx, rax
	mov	r8b, byte ptr [rbp - 0x71]
	movzx	ecx, r8b
	call	sequential_sort
	mov	ecx, 1
	mov	eax, ecx
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_384
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	call	sequential_sort
	jmp	.label_385
	.section	.text
	.align	16
	#Procedure 0x4069b1

	.globl sequential_sort
	.type sequential_sort, @function
sequential_sort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	al, cl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	cmp	qword ptr [rbp - 0x10], 2
	jne	.label_391
	mov	rax, qword ptr [rbp - 8]
	add	rax, -0x20
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, -0x40
	mov	rdi, rax
	mov	rsi, rcx
	call	compare
	xor	edx, edx
	cmp	edx, eax
	setl	r8b
	and	r8b, 1
	movzx	eax, r8b
	mov	dword ptr [rbp - 0x20], eax
	test	byte ptr [rbp - 0x19], 1
	je	.label_394
	mov	eax, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x18]
	sub	eax, dword ptr [rbp - 0x20]
	movsxd	rdx, eax
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rcx - 0x20], rsi
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rcx - 0x18], rsi
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx - 0x10], rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rcx - 8], rdx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 0xfffffffe
	movsxd	rdx, eax
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rcx - 0x40], rsi
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rcx - 0x38], rsi
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx - 0x30], rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rcx - 0x28], rdx
	jmp	.label_392
.label_386:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x50], rax
.label_389:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	call	mergelines
.label_395:
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406aad
	.globl sub_406aad
	.type sub_406aad, @function
sub_406aad:

	nop	
.label_384:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_388
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 8], rcx
.label_388:
	jmp	.label_385
.label_385:
	test	byte ptr [rbp - 0x19], 1
	je	.label_386
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_389
.label_394:
	cmp	dword ptr [rbp - 0x20], 0
	je	.label_393
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 8], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx - 0x40]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x38]
	mov	qword ptr [rax - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x30]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 0x28]
	mov	qword ptr [rax - 8], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x40], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x38], rdx
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x30], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 0x28], rcx
.label_393:
	jmp	.label_392
.label_392:
	jmp	.label_395
	.section	.text
	.align	16
	#Procedure 0x406b90

	.globl human_numcompare
	.type human_numcompare, @function
human_numcompare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_401:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_399
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_401
.label_399:
	jmp	.label_396
.label_396:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_397
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_396
.label_397:
	mov	rdi, qword ptr [rbp - 8]
	call	find_unit_order
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x18], eax
	call	find_unit_order
	mov	ecx, dword ptr [rbp - 0x18]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x14], ecx
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_400
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_398
.label_400:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx,  dword ptr [dword ptr [decimal_point]]
	mov	ecx,  dword ptr [dword ptr [thousands_sep]]
	call	strnumcmp
	mov	dword ptr [rbp - 0x1c], eax
.label_398:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c5e
	.globl sub_406c5e
	.type sub_406c5e, @function
sub_406c5e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406c60

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, eax
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c87
	.globl sub_406c87
	.type sub_406c87, @function
sub_406c87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c90

	.globl num_processors_via_affinity_mask
	.type num_processors_via_affinity_mask, @function
num_processors_via_affinity_mask:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	xor	edi, edi
	mov	eax, 0x80
	mov	esi, eax
	lea	rdx, [rbp - 0x88]
	call	sched_getaffinity
	cmp	eax, 0
	jne	.label_402
	mov	eax, 0x80
	mov	edi, eax
	lea	rsi, [rbp - 0x88]
	call	__sched_cpucount
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x90], rsi
	cmp	qword ptr [rbp - 0x90], 0
	jbe	.label_404
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_403
.label_404:
	jmp	.label_402
.label_402:
	mov	qword ptr [rbp - 8], 0
.label_403:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d0e
	.globl sub_406d0e
	.type sub_406d0e, @function
sub_406d0e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406d10

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
	.align	16
	#Procedure 0x406d43
	.globl sub_406d43
	.type sub_406d43, @function
sub_406d43:

	nop	word ptr cs:[rax + rax]
.label_409:
	mov	rdi, qword ptr [rbp - 0x120]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	call	merge
	mov	rcx, qword ptr [rbp - 0x120]
	mov	rdi, rcx
	call	free
.label_422:
	call	reap_all
	add	rsp, 0x140
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d85
	.globl sub_406d85
	.type sub_406d85, @function
sub_406d85:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406d87

	.globl sort
	.type sort, @function
sort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x140
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x61], 0
	mov	qword ptr [rbp - 0x40], 0
.label_420:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_415
	movabs	rsi, OFFSET FLAT:label_418
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x78]
	call	xfopen
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x20], 1
	jbe	.label_421
	mov	qword ptr [rbp - 0x98], 1
	mov	qword ptr [rbp - 0xa0], 1
.label_406:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_405
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_406
.label_413:
	jmp	.label_417
.label_405:
	mov	rax, qword ptr [rbp - 0xa0]
	shl	rax, 5
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_419
.label_414:
	lea	rdi, [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	call	create_temp
	add	rax, 0xd
	mov	qword ptr [rbp - 0x70], rax
.label_424:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x48]
	jae	.label_425
	lea	rdi, [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x20]
	call	queue_init
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0xa8]
	call	merge_tree_init
	lea	r8, [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rax
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 0x80
	mov	r9, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x138], rcx
	mov	rcx, rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp], rax
	call	sortlines
	jmp	.label_426
.label_425:
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, -0x20
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	write_unique
.label_426:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x70]
	call	xfclose
	test	byte ptr [rbp - 0x61], 1
	je	.label_413
	jmp	.label_416
.label_410:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x78]
	call	xfclose
	jmp	.label_420
.label_415:
	jmp	.label_416
.label_416:
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	test	byte ptr [rbp - 0x61], 1
	jne	.label_422
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx,  qword ptr [word ptr [temphead]]
	mov	qword ptr [rbp - 0x118], rcx
	mov	rdi, qword ptr [rbp - 0x60]
	call	xnmalloc
	mov	qword ptr [rbp - 0x120], rax
	mov	qword ptr [rbp - 0x128], 0
.label_412:
	cmp	qword ptr [rbp - 0x118], 0
	je	.label_409
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, 0xd
	mov	rcx, qword ptr [rbp - 0x128]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x120]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x128]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x120]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, 1
	mov	qword ptr [rbp - 0x128], rax
	jmp	.label_412
.label_411:
	lea	rdi, [rbp - 0x58]
	mov	qword ptr [word ptr [saved_line]],  0
	call	buffer_linelim
	mov	qword ptr [rbp - 0xa8], rax
	test	byte ptr [rbp - 0x28], 1
	je	.label_414
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_414
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_414
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_414
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x78]
	call	xfclose
	movabs	rsi, OFFSET FLAT:label_423
	mov	rdi, qword ptr [rbp - 0x18]
	call	xfopen
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x61], 1
	jmp	.label_424
.label_421:
	mov	qword ptr [rbp - 0x90], 0x30
.label_419:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_408
	lea	rdi, [rbp - 0x80]
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x130], rcx
	mov	rcx, r8
	mov	r8, r9
	call	sort_buffer_size
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x130]
	mov	rdx, rax
	call	initbuf
.label_408:
	mov	byte ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
.label_417:
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x78]
	call	fillbuf
	test	al, 1
	jne	.label_407
	jmp	.label_410
.label_407:
	test	byte ptr [rbp - 0x28], 1
	je	.label_411
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_411
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x90]
	imul	rdx, qword ptr [rbp - 0x48]
	sub	rcx, rdx
	cmp	rax, rcx
	jae	.label_411
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_410
.label_429:
	mov	dword ptr [rbp - 4], 0
.label_428:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407180
	.globl sub_407180
	.type sub_407180, @function
sub_407180:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407187

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
	jne	.label_427
	test	byte ptr [rbp - 0x13], 1
	je	.label_429
	test	byte ptr [rbp - 0x11], 1
	jne	.label_427
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_429
.label_427:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_430
	call	__errno_location
	mov	dword ptr [rax], 0
.label_430:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_428
	.section	.text
	.align	16
	#Procedure 0x407220

	.globl key_init
	.type key_init, @function
key_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	eax, 0x48
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	memset
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x10], -1
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407254
	.globl sub_407254
	.type sub_407254, @function
sub_407254:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407260

	.globl sighandler
	.type sighandler, @function
sighandler:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	call	cleanup
	xor	edi, edi
	mov	esi, edi
	mov	edi, dword ptr [rbp - 4]
	call	signal
	mov	edi, dword ptr [rbp - 4]
	mov	qword ptr [rbp - 0x10], rax
	call	raise
	mov	dword ptr [rbp - 0x14], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407291
	.globl sub_407291
	.type sub_407291, @function
sub_407291:

	nop	word ptr cs:[rax + rax]
.label_434:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_431
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_433]],  rax
.label_431:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_432
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_432:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407326
	.globl sub_407326
	.type sub_407326, @function
sub_407326:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407332
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_435:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_434
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_435
	.section	.text
	.align	16
	#Procedure 0x407380

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
	jge	.label_438
	call	abort
.label_438:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_443
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_437
	call	xalloc_die
.label_441:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_442:
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
	je	.label_440
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_433]]
	mov	qword ptr [rax + 8], rcx
.label_440:
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
.label_443:
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
	ja	.label_436
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_439
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_439:
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
.label_436:
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
	.align	16
	#Procedure 0x4075dc
	.globl sub_4075dc
	.type sub_4075dc, @function
sub_4075dc:

	nop	word ptr cs:[rax + rax]
.label_437:
	test	byte ptr [rbp - 0x31], 1
	je	.label_441
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_442
.label_448:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40760a
	.globl sub_40760a
	.type sub_40760a, @function
sub_40760a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407616

	.globl match_suffix
	.type match_suffix, @function
match_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], 0
.label_449:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0
	je	.label_448
	test	byte ptr [rbp - 0x11], 1
	je	.label_451
	mov	byte ptr [rbp - 0x11], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isalpha
	test	al, 1
	jne	.label_445
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_445
	mov	qword ptr [rbp - 0x10], 0
.label_445:
	jmp	.label_444
.label_451:
	mov	eax, 0x2e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	jne	.label_446
	mov	byte ptr [rbp - 0x11], 1
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_452
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_452:
	jmp	.label_450
.label_446:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isalnum
	test	al, 1
	jne	.label_447
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_447
	mov	qword ptr [rbp - 0x10], 0
.label_447:
	jmp	.label_450
.label_450:
	jmp	.label_444
.label_444:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_449
.label_460:
	jmp	.label_454
.label_454:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_462:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_458
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_459:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_465
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_459
	.section	.text
	.align	16
	#Procedure 0x40776e
	.globl hash_free
	.type hash_free, @function
hash_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_454
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_454
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_466:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_460
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_457
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_461:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_455
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_461
.label_453:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407819
	.globl sub_407819
	.type sub_407819, @function
sub_407819:

	nop	word ptr cs:[rax + rax]
.label_465:
	jmp	.label_456
.label_456:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_462
.label_458:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_463:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_453
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_463
.label_455:
	jmp	.label_457
.label_457:
	jmp	.label_464
.label_464:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_466
.label_471:
	mov	qword ptr [rbp - 0x20], 0x1fa400
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_467:
	mov	eax, 0x1fa400
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_469
	lea	rdi, [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], 0x1fa400
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rsi, 0x1fa400
	mov	qword ptr [rbp - 0x28], rsi
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_473
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_470
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
.label_470:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_468
	.section	.text
	.align	16
	#Procedure 0x407915

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	jl	.label_472
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_471
.label_472:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_468
.label_473:
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_467
.label_469:
	lea	rdi, [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	mov	dword ptr [rbp - 4], eax
.label_468:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40798e
	.globl sub_40798e
	.type sub_40798e, @function
sub_40798e:

	nop	
.label_475:
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_474
.label_474:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_476:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	eax, ecx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4079b6
	.globl sub_4079b6
	.type sub_4079b6, @function
sub_4079b6:

	nop	dword ptr [rax]
.label_478:
	cmp	qword ptr [rbp - 8], 0x7fffffff
	jge	.label_475
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_474
	.section	.text
	.align	16
	#Procedure 0x4079d4

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rdi, OFFSET FLAT:label_479
	mov	qword ptr [rbp - 8], 0x31069
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_477
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_477
	lea	rsi, [rbp - 0x18]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_480
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_480:
	jmp	.label_477
.label_477:
	cmp	qword ptr [rbp - 8], -0x80000000
	jge	.label_478
	mov	rax, -0x80000000
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_476
.label_483:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x88], rax
.label_481:
	mov	rax, qword ptr [rbp - 0x88]
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, rax
	add	rdx, 0x80
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x10], rax
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x18], rax
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x30], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x50]
	add	ecx, 1
	mov	rax, qword ptr [rbp - 0x68]
	mov	dword ptr [rax + 0x50], ecx
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax + 0x54], 0
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 0x58
	mov	rdi, rax
	call	pthread_mutex_init
	cmp	qword ptr [rbp - 0x20], 1
	mov	dword ptr [rbp - 0x8c], eax
	jbe	.label_485
	mov	r9d, 1
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x40], rax
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	r8, qword ptr [rbp - 0x28]
	call	init_node
	xor	r9d, r9d
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	r8, qword ptr [rbp - 0x28]
	call	init_node
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_486
.label_484:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x80], rax
.label_482:
	mov	rax, qword ptr [rbp - 0x80]
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	shr	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	sub	rsi, qword ptr [rbp - 0x28]
	shl	rsi, 5
	add	rax, rsi
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	sub	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	test	byte ptr [rbp - 0x29], 1
	je	.label_483
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_481
	.section	.text
	.align	16
	#Procedure 0x407c14

	.globl init_node
	.type init_node, @function
init_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	al, r9b
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	test	byte ptr [rbp - 0x29], 1
	je	.label_484
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_482
.label_485:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 0x40], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 0x48], 0
.label_486:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c7b
	.globl sub_407c7b
	.type sub_407c7b, @function
sub_407c7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c80

	.globl heap_default_compare
	.type heap_default_compare, @function
heap_default_compare:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c90
	.globl heap_free
	.type heap_free, @function
heap_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cb7
	.globl sub_407cb7
	.type sub_407cb7, @function
sub_407cb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407cc0

	.globl create_temp
	.type create_temp, @function
create_temp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	maybe_create_temp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cdd
	.globl sub_407cdd
	.type sub_407cdd, @function
sub_407cdd:

	nop	dword ptr [rax]
.label_487:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_488:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cfc
	.globl sub_407cfc
	.type sub_407cfc, @function
sub_407cfc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d0a

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
	jne	.label_487
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_487
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_487
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_489
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_488
.label_489:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_488
	.section	.text
	.align	16
	#Procedure 0x407db0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	edx, 3
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407dd2
	.globl sub_407dd2
	.type sub_407dd2, @function
sub_407dd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407de0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_490
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_491
.label_490:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_492
.label_491:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_492:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e38
	.globl sub_407e38
	.type sub_407e38, @function
sub_407e38:

	nop	dword ptr [rax + rax]
.label_498:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_493
.label_496:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_494:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e6f
	.globl sub_407e6f
	.type sub_407e6f, @function
sub_407e6f:

	nop	word ptr [rax + rax]
.label_499:
	jmp	.label_495
.label_495:
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_500
	.section	.text
	.align	16
	#Procedure 0x407e90
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_500:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_496
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_495
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_493:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_499
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_498
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_494
.label_535:
	jmp	.label_516
.label_618:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_524:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_700
	jmp	.label_667
.label_700:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_666
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_666
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_666
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_674
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_674
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_682
.label_606:
	test	byte ptr [rbp - 0x81], 1
	je	.label_689
	jmp	.label_649
.label_649:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_695
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_695:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_689:
	jmp	.label_501
.label_501:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_504
	jmp	.label_508
.label_558:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_509
	mov	byte ptr [rbp - 0x91], 0
.label_534:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_514
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_514:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_531
	jmp	.label_660
.label_531:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_534
.label_2425:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_692
	movabs	rdi, OFFSET FLAT:label_541
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_31
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_692:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_549
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_566:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_553
	jmp	.label_555
.label_555:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_557
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_557:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_562
.label_562:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_566
.label_2388:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_570
	test	byte ptr [rbp - 0x7b], 1
	je	.label_573
	jmp	.label_502
.label_673:
	mov	byte ptr [rbp - 0x81], 1
.label_666:
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
	ja	.label_579
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_591]]
	jmp	rcx
.label_604:
	jmp	.label_516
.label_518:
	jmp	.label_592
.label_2376:
	test	byte ptr [rbp - 0x79], 1
	je	.label_597
	jmp	.label_600
.label_600:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_632
	jmp	.label_502
.label_619:
	jmp	.label_603
.label_603:
	jmp	.label_519
.label_519:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_538
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_538
	jmp	.label_580
.label_580:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_678
	jmp	.label_613
.label_613:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_615
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_615:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_544
.label_544:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_580
.label_570:
	test	byte ptr [rbp - 0x79], 1
	je	.label_614
	test	byte ptr [rbp - 0x7b], 1
	je	.label_614
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_614
	jmp	.label_510
.label_612:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_633
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_633
	jmp	.label_637
.label_637:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_681
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_681:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_686
.label_686:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_643
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_643:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_645
.label_645:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_647
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_647:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_633:
	jmp	.label_656
.label_656:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_657
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_657:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_661
.label_661:
	jmp	.label_664
.label_664:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_665
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_665:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_670
.label_670:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_526
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_526:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_501
.label_573:
	jmp	.label_510
.label_599:
	jmp	.label_516
.label_516:
	test	byte ptr [rbp - 0x79], 1
	je	.label_690
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_693
.label_690:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_696
.label_693:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_696
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
	jne	.label_507
.label_696:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_507
	jmp	.label_510
.label_561:
	jmp	.label_511
.label_511:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_512
	jmp	.label_516
.label_676:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_518
	jmp	.label_502
.label_2380:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_521
.label_508:
	jmp	.label_510
.label_2423:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2422:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_527
	jmp	.label_529
.label_529:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_530
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_530:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_527
.label_527:
	movabs	rax, OFFSET FLAT:label_32
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_595
.label_655:
	jmp	.label_532
.label_532:
	jmp	.label_545
.label_545:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_546
.label_507:
	jmp	.label_536
.label_536:
	jmp	.label_552
.label_552:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_683
	jmp	.label_502
.label_2385:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_516
.label_2389:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_623
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_561
	jmp	.label_563
.label_539:
	jmp	.label_533
.label_533:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_569
	mov	byte ptr [rbp - 0x91], 0
.label_569:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_638
.label_638:
	jmp	.label_578
.label_578:
	jmp	.label_582
.label_582:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_586
.label_567:
	jmp	.label_589
.label_589:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_590
	test	byte ptr [rbp - 0x79], 1
	je	.label_599
	test	byte ptr [rbp - 0x91], 1
	jne	.label_599
.label_590:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_523:
	test	byte ptr [rbp - 0x79], 1
	je	.label_606
	test	byte ptr [rbp - 0x91], 1
	jne	.label_606
	jmp	.label_611
.label_611:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_612
	jmp	.label_502
.label_2424:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_595
.label_522:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_619
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_619
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_624
.label_547:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_630
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_630:
	jmp	.label_586
.label_586:
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
	jne	.label_644
	jmp	.label_567
.label_644:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_558
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_567
.label_553:
	jmp	.label_549
.label_549:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_595
.label_667:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_651
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_651
	test	byte ptr [rbp - 0x7b], 1
	je	.label_651
	jmp	.label_502
.label_674:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_682:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_666
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_666
	test	byte ptr [rbp - 0x7b], 1
	je	.label_673
	jmp	.label_502
.label_587:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_677
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_677:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_687
.label_687:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_694
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_694:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_701
.label_701:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_697
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_697:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_506
.label_506:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_550
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_550:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_585
.label_595:
	mov	qword ptr [rbp - 0x58], 0
.label_648:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_618
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_524
.label_671:
	jmp	.label_528
.label_528:
	test	byte ptr [rbp - 0x79], 1
	je	.label_535
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_536
.label_2377:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_528
.label_680:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_503
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_503
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_503
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_551
	jmp	.label_559
.label_559:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_551
	jmp	.label_564
.label_564:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_551
	jmp	.label_571
.label_571:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_551
	jmp	.label_575
.label_575:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_576
	jmp	.label_551
.label_551:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_587
	jmp	.label_502
.label_576:
	jmp	.label_585
.label_585:
	jmp	.label_503
.label_503:
	jmp	.label_592
.label_684:
	jmp	.label_592
.label_592:
	jmp	.label_516
.label_2418:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_595
.label_2386:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_596
	test	byte ptr [rbp - 0x7b], 1
	je	.label_542
	jmp	.label_502
.label_632:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_605
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_605
	jmp	.label_607
.label_607:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_609
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_609:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_616
.label_616:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_620
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_620:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_625
.label_625:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_629
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_629:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_605:
	jmp	.label_635
.label_635:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_636
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_636:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_639
.label_639:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_556
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_556
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_556
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_556
	jmp	.label_650
.label_650:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_594
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_594:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_626
.label_626:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_658
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_658:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_556
.label_556:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_652
.label_623:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_561
.label_563:
	jmp	.label_516
.label_614:
	jmp	.label_521
.label_521:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_671
	test	byte ptr [rbp - 0x7b], 1
	je	.label_671
	jmp	.label_502
.label_2379:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_521
.label_2387:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_676
	jmp	.label_679
.label_679:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_680
	jmp	.label_684
.label_504:
	jmp	.label_688
.label_688:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_691
	test	byte ptr [rbp - 0x82], 1
	jne	.label_691
	jmp	.label_698
.label_698:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_699
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_699:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_702
.label_702:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_505
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_505:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_691:
	jmp	.label_513
.label_513:
	jmp	.label_515
.label_515:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_517
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_517:
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
	jmp	.label_523
.label_509:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_533
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_533
	mov	qword ptr [rbp - 0xb8], 1
.label_546:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_539
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
	jb	.label_543
	jmp	.label_554
.label_554:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_543
	jmp	.label_560
.label_560:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_543
	jmp	.label_565
.label_565:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_655
	jmp	.label_543
.label_543:
	jmp	.label_502
.label_683:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_572
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_572
	jmp	.label_581
.label_581:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_583
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_583:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_588
.label_588:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_593
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_593:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_598
.label_598:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_601
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_601:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_572:
	jmp	.label_608
.label_608:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_610
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_610:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_617
.label_617:
	jmp	.label_510
.label_510:
	jmp	.label_621
.label_621:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_622
	test	byte ptr [rbp - 0x82], 1
	jne	.label_622
	jmp	.label_627
.label_627:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_628
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_628:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_631
.label_631:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_634
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_634:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_622:
	jmp	.label_640
.label_640:
	jmp	.label_641
.label_641:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_659
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_659:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_525
	mov	byte ptr [rbp - 0x7e], 0
.label_525:
	jmp	.label_646
.label_646:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_648
.label_2381:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_528
.label_568:
	jmp	.label_652
.label_652:
	jmp	.label_516
.label_542:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_654
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_654
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_654:
	jmp	.label_662
.label_662:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_663
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_663:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_668
.label_668:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_669
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_669:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_672
.label_672:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_675
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_675:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_596:
	jmp	.label_516
.label_2382:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_528
.label_502:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_685
	test	byte ptr [rbp - 0x79], 1
	je	.label_685
	mov	dword ptr [rbp - 0x34], 4
.label_685:
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
.label_537:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409032
	.globl sub_409032
	.type sub_409032, @function
sub_409032:

	nop	dword ptr [rax + rax]
.label_651:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_519
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_519
	test	byte ptr [rbp - 0x7d], 1
	je	.label_519
	test	byte ptr [rbp - 0x7e], 1
	je	.label_522
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
	jmp	.label_537
.label_678:
	jmp	.label_538
.label_538:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_540
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_540:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_537
.label_579:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_547
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
	jmp	.label_589
.label_2383:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_521
.label_653:
	call	abort
.label_660:
	jmp	.label_567
.label_597:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_568
	jmp	.label_646
.label_2420:
	mov	byte ptr [rbp - 0x79], 1
.label_2419:
	mov	byte ptr [rbp - 0x7b], 1
.label_2421:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_574
	mov	byte ptr [rbp - 0x79], 1
.label_574:
	jmp	.label_577
.label_577:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_520
	jmp	.label_584
.label_584:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_548
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_548:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_520
.label_520:
	movabs	rax, OFFSET FLAT:label_31
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_595
.label_2378:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_528
.label_512:
	jmp	.label_602
.label_602:
	mov	byte ptr [rbp - 0x83], 1
.label_2384:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_604
	test	byte ptr [rbp - 0x7b], 1
	je	.label_604
	jmp	.label_502
	.section	.text
	.align	16
	#Procedure 0x4091ec

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
.label_624:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_653
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_642]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x4092b0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_703
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_726:
	movabs	rdi, OFFSET FLAT:label_723
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_706
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_719
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_721
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_728
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_717
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_716
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_714
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_704
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_710
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_715
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_725
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_713
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_711
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_718
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_722
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_727
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_707
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_712
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_708
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_729
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_709
	mov	dword ptr [rbp - 0x64], eax
	call	emit_ancillary_info
.label_705:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4095b7
	.globl sub_4095b7
	.type sub_4095b7, @function
sub_4095b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095bd

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_726
	jmp	.label_720
.label_720:
	movabs	rdi, OFFSET FLAT:label_724
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_705
.label_737:
	jmp	.label_731
.label_736:
	cmp	qword ptr [rbp - 0xc8], 0
	jbe	.label_732
	lea	rdx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc8]
	call	md5_process_bytes
.label_732:
	lea	rdi, [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0x18]
	call	md5_finish_ctx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xf8], rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_735:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40966d
	.globl sub_40966d
	.type sub_40966d, @function
sub_40966d:

	nop	dword ptr [rax]
.label_734:
	mov	eax, 1
	mov	esi, eax
	mov	eax, 0x8000
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0xc8]
	sub	rcx, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xf0]
	call	fread_unlocked
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xc8], rax
	cmp	qword ptr [rbp - 0xc8], 0x8000
	jne	.label_738
	jmp	.label_733
.label_733:
	mov	eax, 0x8000
	mov	esi, eax
	lea	rdx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x20]
	call	md5_process_block
	jmp	.label_739
.label_744:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_735
.label_743:
	mov	eax, 0x8048
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_741
	mov	dword ptr [rbp - 4], 1
	jmp	.label_735
	.section	.text
	.align	16
	#Procedure 0x40972f
	.globl md5_stream
	.type md5_stream, @function
md5_stream:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_745
	mov	ecx, eax
	mov	eax, 0x10
	mov	edx, eax
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xe0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xe0]
	call	afalg_stream
	mov	r8d, eax
	sub	eax, -5
	mov	dword ptr [rbp - 0xe4], r8d
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_744
	jmp	.label_740
.label_740:
	mov	eax, dword ptr [rbp - 0xe4]
	test	eax, eax
	jne	.label_743
	jmp	.label_742
.label_742:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_735
.label_730:
	jmp	.label_736
.label_741:
	lea	rdi, [rbp - 0xc0]
	call	md5_init_ctx
.label_739:
	mov	qword ptr [rbp - 0xc8], 0
.label_731:
	mov	rdi, qword ptr [rbp - 0x10]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_734
	jmp	.label_736
.label_738:
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_737
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_730
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	dword ptr [rbp - 4], 1
	jmp	.label_735
.label_748:
	movabs	rsi, OFFSET FLAT:label_755
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_752:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_746
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
	mov	ecx, OFFSET FLAT:label_749
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
	ja	.label_750
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_760]]
	jmp	rcx
.label_2364:
	movabs	rdi, OFFSET FLAT:label_764
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
	jmp	.label_747
.label_2368:
	movabs	rdi, OFFSET FLAT:label_756
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
	jmp	.label_747
.label_2367:
	movabs	rdi, OFFSET FLAT:label_757
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
	jmp	.label_747
.label_2371:
	movabs	rdi, OFFSET FLAT:label_762
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
	jmp	.label_747
.label_2366:
	movabs	rdi, OFFSET FLAT:label_753
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
	jmp	.label_747
.label_2363:
	jmp	.label_747
.label_2370:
	movabs	rdi, OFFSET FLAT:label_761
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
	jmp	.label_747
	.section	.text
	.align	16
	#Procedure 0x409b4a

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
	je	.label_748
	movabs	rsi, OFFSET FLAT:label_763
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_752
.label_2365:
	movabs	rdi, OFFSET FLAT:label_759
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
	jmp	.label_747
.label_750:
	movabs	rdi, OFFSET FLAT:label_758
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
.label_747:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409c9e
	.globl sub_409c9e
	.type sub_409c9e, @function
sub_409c9e:

	nop	
.label_2372:
	movabs	rdi, OFFSET FLAT:label_754
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
	jmp	.label_747
.label_2369:
	movabs	rdi, OFFSET FLAT:label_751
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
	jmp	.label_747
	.section	.text
	.align	16
	#Procedure 0x409de0
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409dfa
	.globl sub_409dfa
	.type sub_409dfa, @function
sub_409dfa:

	nop	word ptr [rax + rax]
.label_766:
	movabs	rax, OFFSET FLAT:heap_default_compare
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_765
.label_765:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409e29
	.globl sub_409e29
	.type sub_409e29, @function
sub_409e29:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e35

	.globl heap_alloc
	.type heap_alloc, @function
heap_alloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x20
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_767
	mov	qword ptr [rbp - 0x10], 1
.label_767:
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xnmalloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_766
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_765
	.section	.text
	.align	16
	#Procedure 0x409ec0
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
	.align	16
	#Procedure 0x409ef1
	.globl sub_409ef1
	.type sub_409ef1, @function
sub_409ef1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f00

	.globl just
	.type just, @function
just:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], -1
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, qword ptr [rbp - 0x10]
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f1d
	.globl sub_409f1d
	.type sub_409f1d, @function
sub_409f1d:

	nop	dword ptr [rax]
.label_770:
	mov	byte ptr [rbp - 1], 0
.label_769:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f2e
	.globl sub_409f2e
	.type sub_409f2e, @function
sub_409f2e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409f2f
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_770
	jmp	.label_768
.label_768:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_769
	.section	.text
	.align	16
	#Procedure 0x409f50

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
	je	.label_771
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_774
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_775
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_772
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_773
.label_775:
	mov	byte ptr [rbp - 5], 0
.label_773:
	jmp	.label_771
.label_771:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409fc3
	.globl sub_409fc3
	.type sub_409fc3, @function
sub_409fc3:

	nop	word ptr cs:[rax + rax]
.label_776:
	jmp	.label_778
.label_778:
	jmp	.label_779
.label_779:
	jmp	.label_782
.label_782:
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_783
	movabs	rdi, OFFSET FLAT:label_777
	call	gettext
	movabs	rdi, OFFSET FLAT:long_options
	movsxd	rcx, dword ptr [rbp - 4]
	shl	rcx, 5
	add	rdi, rcx
	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x80], rcx
	call	quote
	xor	edx, edx
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	r8, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_781
	call	gettext
	lea	rsi, [rbp - 0x3b]
	movabs	rcx, OFFSET FLAT:long_options
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 5
	add	rcx, rdx
	mov	rcx, qword ptr [rcx]
	mov	edi, dword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], rcx
	call	uinttostr
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	r8, rax
	mov	al, 0
	call	error
.label_791:
	mov	eax, dword ptr [rbp - 0x30]
	cmp	eax,  dword ptr [dword ptr [nmerge]]
	jae	.label_780
	mov	dword ptr [rbp - 0x2c], 1
	jmp	.label_776
.label_790:
	mov	eax, 0x14
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_785
.label_785:
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, 3
	mov	ecx, eax
	mov	dword ptr [rbp - 0x30], ecx
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_782
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, eax
	mov	dword ptr [dword ptr [nmerge]],  ecx
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	eax, ecx
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_788
	mov	dword ptr [rbp - 0x2c], 1
	jmp	.label_779
.label_783:
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x2c]
	mov	esi, dword ptr [rbp - 4]
	mov	al, byte ptr [rbp - 5]
	mov	r8, qword ptr [rbp - 0x10]
	movsx	edx, al
	call	xstrtol_fatal
	.section	.text
	.align	16
	#Procedure 0x40a127
	.globl sub_40a127
	.type sub_40a127, @function
sub_40a127:

	nop	
.label_780:
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a132

	.globl specify_nmerge
	.type specify_nmerge, @function
specify_nmerge:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	al, sil
	xor	esi, esi
	mov	ecx, esi
	mov	esi, 0xa
	lea	r8, [rbp - 0x18]
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], al
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x40], esi
	mov	rsi, rcx
	mov	edx, dword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0x48]
	call	xstrtoumax
	mov	edi, 7
	lea	rsi, [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	getrlimit
	cmp	eax, 0
	jne	.label_790
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_785
.label_788:
	cmp	dword ptr [dword ptr [nmerge]],  2
	jae	.label_791
	movabs	rdi, OFFSET FLAT:label_792
	call	gettext
	movabs	rdi, OFFSET FLAT:long_options
	movsxd	rcx, dword ptr [rbp - 4]
	shl	rcx, 5
	add	rdi, rcx
	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	xor	edx, edx
	mov	edi, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_793
	call	gettext
	movabs	rdi, OFFSET FLAT:label_784
	movabs	rcx, OFFSET FLAT:long_options
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 5
	add	rcx, rdx
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rcx
	call	quote
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	r8, rax
	mov	al, 0
	call	error
.label_2450:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_786
	movabs	rdi, OFFSET FLAT:label_787
	call	gettext
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x48], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
	call	quote
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	r8, rax
	mov	al, 0
	call	error
.label_786:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_789
.label_795:
	jmp	.label_797
.label_797:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], -1
	jmp	.label_794
	.section	.text
	.align	16
	#Procedure 0x40a2bf

	.globl parse_field_count
	.type parse_field_count, @function
parse_field_count:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_77
	mov	r8d, eax
	lea	rsi, [rbp - 0x28]
	mov	edx, 0xa
	lea	rcx, [rbp - 0x30]
	call	xstrtoumax
	mov	edx, eax
	mov	ecx, edx
	sub	eax, 4
	mov	qword ptr [rbp - 0x38], rcx
	mov	dword ptr [rbp - 0x3c], eax
	ja	.label_794
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_796]]
	jmp	rcx
.label_2449:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_795
	jmp	.label_794
.label_794:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_789:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a346
	.globl sub_40a346
	.type sub_40a346, @function
sub_40a346:

	nop	word ptr cs:[rax + rax]
.label_799:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a366
	.globl sub_40a366
	.type sub_40a366, @function
sub_40a366:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a370

	.globl heapify_up
	.type heapify_up, @function
heapify_up:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	qword ptr [rbp - 0x28], rdx
.label_801:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 1
	mov	byte ptr [rbp - 0x29], cl
	je	.label_800
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rax
	cmp	eax, 0
	setle	r8b
	mov	byte ptr [rbp - 0x29], r8b
.label_800:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_798
	jmp	.label_799
.label_798:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_801
.label_803:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_804:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a41b
	.globl sub_40a41b
	.type sub_40a41b, @function
sub_40a41b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a424
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_803
	jmp	.label_802
.label_802:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_804
	.section	.text
	.align	16
	#Procedure 0x40a450
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
	.align	16
	#Procedure 0x40a477
	.globl sub_40a477
	.type sub_40a477, @function
sub_40a477:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a480

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
.label_806:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_805
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_806
.label_805:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a4d4
	.globl sub_40a4d4
	.type sub_40a4d4, @function
sub_40a4d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4e0

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
	.align	16
	#Procedure 0x40a517
	.globl sub_40a517
	.type sub_40a517, @function
sub_40a517:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a520
	.globl rotl32
	.type rotl32, @function
rotl32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shr	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a547
	.globl sub_40a547
	.type sub_40a547, @function
sub_40a547:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a550

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_807
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_810
.label_807:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_809
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_808
.label_809:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_808:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_810:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a5bc
	.globl sub_40a5bc
	.type sub_40a5bc, @function
sub_40a5bc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a5c0

	.globl async_safe_die
	.type async_safe_die, @function
async_safe_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	eax, 2
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x4c], eax
	mov	qword ptr [rbp - 0x58], rsi
	call	strlen
	mov	edi, dword ptr [rbp - 0x4c]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, rax
	call	write
	mov	qword ptr [rbp - 0x18], rax
	cmp	dword ptr [rbp - 4], 0
	je	.label_813
	lea	rsi, [rbp - 0x24]
	mov	edi, dword ptr [rbp - 4]
	call	inttostr
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:label_811
	mov	ecx, 8
	mov	edx, ecx
	mov	qword ptr [rbp - 0x30], rax
	call	write
	mov	edi, 2
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x5c], edi
	mov	rdi, rax
	mov	qword ptr [rbp - 0x68], rsi
	call	strlen
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, rax
	call	write
	mov	qword ptr [rbp - 0x40], rax
.label_813:
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:label_812
	mov	eax, 1
	mov	edx, eax
	call	write
	mov	edi, 2
	mov	qword ptr [rbp - 0x48], rax
	call	_exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a690

	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rsi]
	call	set_uint32
	mov	rdi, qword ptr [rbp - 0x18]
	add	rdi, 4
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 4]
	call	set_uint32
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi + 8]
	mov	rdi, rax
	call	set_uint32
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xc
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi + 0xc]
	mov	rdi, rax
	call	set_uint32
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a703
	.globl sub_40a703
	.type sub_40a703, @function
sub_40a703:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a710

	.globl heap_remove_top
	.type heap_remove_top, @function
heap_remove_top:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x10], 0
	jne	.label_814
	mov	qword ptr [rbp - 8], 0
	jmp	.label_815
.label_814:
	mov	eax, 1
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rsi
	add	rdi, -1
	mov	qword ptr [rcx + 0x10], rdi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + rsi*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rsi + 8], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	call	heapify_down
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x20], rax
.label_815:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a7a9
	.globl sub_40a7a9
	.type sub_40a7a9, @function
sub_40a7a9:

	nop	dword ptr [rax]
.label_846:
	jmp	.label_816
.label_816:
	jmp	.label_818
.label_818:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	qword ptr [rcx], rax
	jmp	.label_817
.label_827:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_837
	jmp	.label_838
.label_838:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x5a], cl
	je	.label_822
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5a], dl
.label_822:
	mov	al, byte ptr [rbp - 0x5a]
	test	al, 1
	jne	.label_834
	jmp	.label_839
.label_834:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	mov	rsi, rdx
	add	rsi, -0x20
	mov	qword ptr [rcx], rsi
	mov	rcx, qword ptr [rdx - 0x20]
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rdx - 0x18]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rdx - 0x10]
	mov	qword ptr [rax - 0x10], rcx
	mov	rcx, qword ptr [rdx - 8]
	mov	qword ptr [rax - 8], rcx
	jmp	.label_838
.label_837:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_816
	jmp	.label_824
.label_824:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x5b], cl
	je	.label_828
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5b], dl
.label_828:
	mov	al, byte ptr [rbp - 0x5b]
	test	al, 1
	jne	.label_848
	jmp	.label_846
.label_848:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 8]
	mov	rsi, rdx
	add	rsi, -0x20
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rdx - 0x20]
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rdx - 0x18]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rdx - 0x10]
	mov	qword ptr [rax - 0x10], rcx
	mov	rcx, qword ptr [rdx - 8]
	mov	qword ptr [rax - 8], rcx
	jmp	.label_824
.label_841:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_832
	jmp	.label_847
.label_847:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x5d], cl
	je	.label_820
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5d], dl
.label_820:
	mov	al, byte ptr [rbp - 0x5d]
	test	al, 1
	jne	.label_830
	jmp	.label_833
.label_830:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, -0x20
	mov	qword ptr [rax], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rcx
	call	write_unique
	jmp	.label_847
.label_839:
	jmp	.label_818
.label_832:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_850
	jmp	.label_819
.label_819:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x5e], cl
	je	.label_821
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5e], dl
.label_821:
	mov	al, byte ptr [rbp - 0x5e]
	test	al, 1
	jne	.label_831
	jmp	.label_829
.label_831:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -0x20
	mov	qword ptr [rax + 8], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rcx
	call	write_unique
	jmp	.label_819
.label_843:
	jmp	.label_836
.label_836:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x5c], cl
	je	.label_823
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x5c], cl
	je	.label_823
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5c], dl
.label_823:
	mov	al, byte ptr [rbp - 0x5c]
	test	al, 1
	jne	.label_835
	jmp	.label_841
.label_835:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	add	rax, -0x20
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	add	rcx, -0x20
	mov	rdi, rax
	mov	rsi, rcx
	call	compare
	cmp	eax, 0
	jg	.label_851
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, -0x20
	mov	qword ptr [rax], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rcx
	call	write_unique
	jmp	.label_825
.label_842:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 8]
	mov	rsi, rdx
	add	rsi, -0x20
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rdx - 0x20]
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rdx - 0x18]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rdx - 0x10]
	mov	qword ptr [rax - 0x10], rcx
	mov	rcx, qword ptr [rdx - 8]
	mov	qword ptr [rax - 8], rcx
.label_844:
	jmp	.label_849
.label_829:
	jmp	.label_850
.label_850:
	jmp	.label_845
.label_845:
	jmp	.label_817
.label_817:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0x28]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x28], rdx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0x30]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40abd7
	.globl sub_40abd7
	.type sub_40abd7, @function
sub_40abd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40abdd

	.globl mergelines_node
	.type mergelines_node, @function
mergelines_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x50]
	add	eax, 1
	shl	eax, 1
	mov	eax, eax
	mov	edx, eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x58]
	shr	rdx, cl
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 8]
	cmp	dword ptr [rdx + 0x50], 1
	jbe	.label_843
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
.label_849:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x59], cl
	je	.label_840
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x59], cl
	je	.label_840
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x59], dl
.label_840:
	mov	al, byte ptr [rbp - 0x59]
	test	al, 1
	jne	.label_826
	jmp	.label_827
.label_826:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	add	rax, -0x20
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	add	rcx, -0x20
	mov	rdi, rax
	mov	rsi, rcx
	call	compare
	cmp	eax, 0
	jg	.label_842
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	mov	rsi, rdx
	add	rsi, -0x20
	mov	qword ptr [rcx], rsi
	mov	rcx, qword ptr [rdx - 0x20]
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rdx - 0x18]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rdx - 0x10]
	mov	qword ptr [rax - 0x10], rcx
	mov	rcx, qword ptr [rdx - 8]
	mov	qword ptr [rax - 8], rcx
	jmp	.label_844
.label_833:
	jmp	.label_845
.label_851:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -0x20
	mov	qword ptr [rax + 8], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rcx
	call	write_unique
.label_825:
	jmp	.label_836
.label_854:
	mov	byte ptr [rbp - 1], 0
.label_855:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ad5e
	.globl sub_40ad5e
	.type sub_40ad5e, @function
sub_40ad5e:

	nop	word ptr cs:[rax + rax]
.label_856:
	jmp	.label_857
.label_857:
	jmp	.label_858
.label_858:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_859
	.section	.text
	.align	16
	#Procedure 0x40ad88
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_859:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_853
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_857
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_852:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_856
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_852
.label_853:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_854
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_854
	mov	byte ptr [rbp - 1], 1
	jmp	.label_855
	.section	.text
	.align	16
	#Procedure 0x40ae40

	.globl debug_line
	.type debug_line, @function
debug_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x10], rdi
.label_863:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	debug_key
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], cl
	je	.label_861
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x40]
	mov	qword ptr [rbp - 0x10], rcx
	cmp	rcx, 0
	mov	byte ptr [rbp - 0x12], al
	jne	.label_862
	mov	al, 1
	test	byte ptr [byte ptr [unique]],  1
	mov	byte ptr [rbp - 0x13], al
	jne	.label_860
	mov	al,  byte ptr [byte ptr [stable]]
	mov	byte ptr [rbp - 0x13], al
.label_860:
	mov	al, byte ptr [rbp - 0x13]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x12], al
.label_862:
	mov	al, byte ptr [rbp - 0x12]
	mov	byte ptr [rbp - 0x11], al
.label_861:
	mov	al, byte ptr [rbp - 0x11]
	test	al, 1
	jne	.label_863
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aece
	.globl sub_40aece
	.type sub_40aece, @function
sub_40aece:

	nop	
.label_882:
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 0xd8], rax
.label_881:
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rbp - 0x50]
	mov	ecx, 0x20
	mov	esi, ecx
	mov	rdx, rax
	call	initbuf
	mov	qword ptr [rbp - 0x70], 0
.label_873:
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	call	fillbuf
	test	al, 1
	jne	.label_870
	jmp	.label_871
.label_870:
	lea	rdi, [rbp - 0x50]
	call	buffer_linelim
	xor	ecx, ecx
	mov	edi, ecx
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	sub	rdi, qword ptr [rbp - 0x40]
	shl	rdi, 5
	add	rax, rdi
	mov	qword ptr [rbp - 0xa0], rax
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_876
	lea	rdi, [rbp - 0x70]
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x98]
	add	rdx, -0x20
	mov	rsi, rdx
	mov	dword ptr [rbp - 0xdc], ecx
	call	compare
	mov	ecx, dword ptr [rbp - 0xdc]
	cmp	ecx, eax
	jg	.label_876
	jmp	.label_869
.label_869:
	movsx	eax, byte ptr [rbp - 9]
	cmp	eax, 0x63
	jne	.label_878
	lea	rdi, [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, -0x20
	mov	qword ptr [rbp - 0xa8], rax
	call	buffer_linelim
	movabs	rdi, OFFSET FLAT:label_880
	mov	rcx, qword ptr [rbp - 0xa8]
	sub	rax, rcx
	sar	rax, 5
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	lea	rsi, [rbp - 0xd0]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	mov	qword ptr [rbp - 0x100], rdx
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	r8, rax
	mov	al, 0
	call	fprintf
	movabs	rdi, OFFSET FLAT:label_868
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	dword ptr [rbp - 0x104], eax
	mov	qword ptr [rbp - 0x110], rsi
	mov	qword ptr [rbp - 0x118], rcx
	call	gettext
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rsi, qword ptr [rbp - 0x110]
	mov	rdx, rax
	call	write_line
.label_878:
	mov	byte ptr [rbp - 0x8a], 0
	jmp	.label_871
.label_867:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_875
	jmp	.label_864
.label_864:
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_866
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_874
.label_872:
	jmp	.label_865
	.section	.text
	.align	16
	#Procedure 0x40b0f5

	.globl check
	.type check, @function
check:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	al, sil
	movabs	rsi, OFFSET FLAT:label_418
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	call	xfopen
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x80], 0
	mov	rax,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x88], rax
	mov	cl,  byte ptr [byte ptr [unique]]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 0x89], cl
	mov	byte ptr [rbp - 0x8a], 1
	mov	rax,  qword ptr [word ptr [merge_buffer_size]]
	cmp	rax,  qword ptr [word ptr [sort_size]]
	jbe	.label_882
	mov	rax,  qword ptr [word ptr [merge_buffer_size]]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_881
.label_876:
	jmp	.label_865
.label_865:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x98]
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x98], rcx
	cmp	rax, rcx
	jae	.label_867
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x98]
	add	rdx, -0x20
	mov	rsi, rdx
	mov	dword ptr [rbp - 0x11c], ecx
	call	compare
	mov	ecx, dword ptr [rbp - 0x11c]
	cmp	ecx, eax
	jg	.label_872
	jmp	.label_869
.label_871:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	call	xfclose
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rdi, qword ptr [rbp - 0x70]
	call	free
	mov	al, byte ptr [rbp - 0x8a]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b21c
	.globl sub_40b21c
	.type sub_40b21c, @function
sub_40b21c:

	nop	word ptr cs:[rax + rax]
.label_866:
	jmp	.label_877
.label_877:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_864
.label_874:
	mov	rdi, qword ptr [rbp - 0x70]
	call	free
	mov	rdi, qword ptr [rbp - 0x78]
	call	xmalloc
	mov	qword ptr [rbp - 0x70], rax
.label_875:
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rax + 8]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_879
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdx]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdx]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
.label_879:
	jmp	.label_873
.label_884:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_883
.label_883:
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
	.align	16
	#Procedure 0x40b324
	.globl sub_40b324
	.type sub_40b324, @function
sub_40b324:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b332
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
	je	.label_884
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_883
.label_892:
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0xc], 0
	cmp	qword ptr [word ptr [compress_program]],  0
	je	.label_887
	mov	eax, 4
	mov	esi, eax
	lea	rdi, [rbp - 0x28]
	call	pipe_fork
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	dword ptr [rsi + 8], eax
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	ecx, dword ptr [rsi + 8]
	jge	.label_893
	mov	edi, dword ptr [rbp - 0x18]
	call	close
	mov	edi, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	close
	mov	edi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x18], edi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x30], eax
	call	register_proc
	jmp	.label_886
.label_890:
	jmp	.label_886
.label_886:
	jmp	.label_887
.label_887:
	movabs	rsi, OFFSET FLAT:label_423
	mov	edi, dword ptr [rbp - 0x18]
	call	fdopen
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	jne	.label_885
	movabs	rdi, OFFSET FLAT:label_889
	call	gettext
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, 0xd
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x40]
	call	sort_die
.label_885:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_891:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b431
	.globl sub_40b431
	.type sub_40b431, @function
sub_40b431:

	nop	dword ptr [rax]
.label_893:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 8], 0
	jne	.label_890
	mov	edi, dword ptr [rbp - 0x24]
	call	close
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x34], eax
	call	move_fd
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x28]
	call	move_fd
	xor	eax, eax
	mov	edx, eax
	mov	rdi,  qword ptr [word ptr [compress_program]]
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	al, 0
	call	execlp
	mov	dword ptr [rbp - 0x38], eax
	call	__errno_location
	movabs	rsi, OFFSET FLAT:label_888
	mov	edi, dword ptr [rax]
	call	async_safe_die
	.section	.text
	.align	16
	#Procedure 0x40b49c

	.globl maybe_create_temp
	.type maybe_create_temp, @function
maybe_create_temp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	lea	rcx, [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rdi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	mov	rdi, rcx
	movzx	esi, al
	call	create_temp_file
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_892
	mov	qword ptr [rbp - 8], 0
	jmp	.label_891
.label_900:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_919
	mov	edi, dword ptr [rbp - 0x44]
	call	iswcntrl
	cmp	eax, 0
	jne	.label_923
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_894
	jmp	.label_897
	.section	.text
	.align	16
	#Procedure 0x40b512

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x34], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_909
	jmp	.label_903
.label_903:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_914
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x60], rax
	mov	dword ptr [rbp - 0x64], ecx
	ja	.label_920
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_895]]
	jmp	rcx
.label_922:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_896
.label_911:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_896
.label_914:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_896
.label_897:
	mov	dword ptr [rbp - 4], 0x7fffffff
.label_896:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b5c4
	.globl sub_40b5c4
	.type sub_40b5c4, @function
sub_40b5c4:

	nop	word ptr cs:[rax + rax]
.label_916:
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_913
	mov	qword ptr [rbp - 0x50], 1
.label_913:
	mov	edi, dword ptr [rbp - 0x44]
	call	wcwidth
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jl	.label_900
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x54]
	sub	eax, dword ptr [rbp - 0x34]
	cmp	ecx, eax
	jle	.label_924
	jmp	.label_897
.label_902:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_899
	movzx	eax, byte ptr [rbp - 0x55]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	jne	.label_905
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_910
	jmp	.label_897
.label_924:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_915
.label_909:
	jmp	.label_912
.label_912:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_922
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x55], dl
	movzx	esi, byte ptr [rbp - 0x55]
	movsxd	rax, esi
	mov	qword ptr [rbp - 0x70], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	cmp	esi, 0
	je	.label_902
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_907
	jmp	.label_897
.label_918:
	jmp	.label_906
.label_906:
	jmp	.label_912
.label_910:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_905:
	jmp	.label_918
.label_899:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_896
.label_904:
	jmp	.label_915
.label_915:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rbp - 0x40]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_898
.label_917:
	jmp	.label_901
.label_901:
	jmp	.label_903
.label_894:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_923:
	jmp	.label_904
.label_907:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_906
.label_2362:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_901
.label_908:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_916
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_921
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_917
.label_920:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rdi, rcx
	call	memset
.label_898:
	lea	rdi, [rbp - 0x44]
	lea	rcx, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_908
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_911
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_917
.label_919:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_896
.label_921:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_896
.label_937:
	movabs	rax, OFFSET FLAT:label_929
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_926
.label_927:
	movsxd	rax, dword ptr [rbp - 8]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_928:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x58], edi
	mov	rdi, rax
	call	gettext
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	error
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b869
	.globl sub_40b869
	.type sub_40b869, @function
sub_40b869:

	nop	word ptr cs:[rax + rax]
.label_933:
	movabs	rax, OFFSET FLAT:label_925
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_926
	.section	.text
	.align	16
	#Procedure 0x40b887

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	dword ptr [rbp - 0x24], r9d
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:label_934
	mov	edx, dword ptr [rbp - 4]
	mov	esi, edx
	sub	esi, 1
	mov	dword ptr [rbp - 0x48], edx
	mov	dword ptr [rbp - 0x4c], esi
	je	.label_935
	jmp	.label_930
.label_930:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_933
	jmp	.label_932
.label_932:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	mov	dword ptr [rbp - 0x54], eax
	je	.label_937
	jmp	.label_936
.label_936:
	call	abort
.label_935:
	movabs	rax, OFFSET FLAT:label_931
	mov	qword ptr [rbp - 0x38], rax
.label_926:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_927
	lea	rax, [rbp - 0x42]
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	movsxd	rdi, ecx
	sub	rdx, rdi
	add	rsi, rdx
	mov	qword ptr [rbp - 0x30], rsi
	mov	r8b, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x42], r8b
	mov	byte ptr [rbp - 0x41], 0
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_928
	.section	.text
	.align	16
	#Procedure 0x40b940

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
	.align	16
	#Procedure 0x40b960

	.globl fd_safer_flag
	.type fd_safer_flag, @function
fd_safer_flag:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_938
	cmp	dword ptr [rbp - 4], 2
	jg	.label_938
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	dup_safer_flag
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	esi, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x18], esi
	call	__errno_location
	mov	esi, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 4], esi
.label_938:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b9c5
	.globl sub_40b9c5
	.type sub_40b9c5, @function
sub_40b9c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b9d0
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
	.align	16
	#Procedure 0x40b9fa
	.globl sub_40b9fa
	.type sub_40b9fa, @function
sub_40b9fa:

	nop	word ptr [rax + rax]
.label_940:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_939:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba1b
	.globl sub_40ba1b
	.type sub_40ba1b, @function
sub_40ba1b:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ba1f

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
	jae	.label_940
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_939
	.section	.text
	.align	16
	#Procedure 0x40ba60

	.globl lock_node
	.type lock_node, @function
lock_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x58
	call	pthread_mutex_lock
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ba82
	.globl sub_40ba82
	.type sub_40ba82, @function
sub_40ba82:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ba90
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_941
	jmp	.label_943
.label_943:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_942
.label_941:
	mov	byte ptr [rbp - 1], 0
.label_942:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bac2
	.globl sub_40bac2
	.type sub_40bac2, @function
sub_40bac2:

	nop	word ptr cs:[rax + rax]
.label_946:
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_944
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_944
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_945
	.section	.text
	.align	16
	#Procedure 0x40baf8

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movsd	qword ptr [rbp - 0x10], xmm0
	movsd	xmm0, qword ptr [rbp - 0x10]
	call	dtotimespec
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], rdx
.label_948:
	call	__errno_location
	lea	rdi, [rbp - 0x20]
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rax], 0
	call	rpl_nanosleep
	cmp	eax, 0
	jne	.label_946
	jmp	.label_947
.label_947:
	mov	dword ptr [rbp - 4], 0
.label_945:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bb4d
	.globl sub_40bb4d
	.type sub_40bb4d, @function
sub_40bb4d:

	nop	word ptr cs:[rax + rax]
.label_944:
	jmp	.label_948
	.section	.text
	.align	16
	#Procedure 0x40bb60

	.globl inttostr
	.type inttostr, @function
inttostr:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0xb
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	dword ptr [rbp - 4], 0
	jge	.label_949
	jmp	.label_952
.label_952:
	mov	eax, 0x30
	mov	ecx, 0xa
	mov	edx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, edx
	mov	sil, cl
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0x18], r8
	mov	byte ptr [rdi - 1], sil
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x20]
	idiv	ecx
	mov	dword ptr [rbp - 4], eax
	cmp	eax, 0
	jne	.label_952
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_950
.label_949:
	jmp	.label_951
.label_951:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x24], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x24]
	idiv	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0x18], r8
	mov	byte ptr [rdi - 1], sil
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x28]
	idiv	ecx
	mov	dword ptr [rbp - 4], eax
	cmp	eax, 0
	jne	.label_951
	jmp	.label_950
.label_950:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bc4f
	.globl sub_40bc4f
	.type sub_40bc4f, @function
sub_40bc4f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40bc50

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
	.align	16
	#Procedure 0x40bcc2
	.globl sub_40bcc2
	.type sub_40bcc2, @function
sub_40bcc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bcd0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x800]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x808]
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x810]
	add	rax, 1
	mov	qword ptr [rdi + 0x810], rax
	add	rsi, rax
	mov	qword ptr [rbp - 0x20], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_954:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 0x400]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb8], rax
	call	just
	shr	rax, 5
	mov	rcx, qword ptr [rbp - 0xb8]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x408]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x50]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0xc
	xor	rax, rcx
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 0x410]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x58]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x60]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc0], rax
	call	just
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0xc0]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x418]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x68]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x70]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x400
	cmp	rax, rcx
	jb	.label_954
	jmp	.label_953
.label_953:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx - 0x400]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x78]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x80]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	just
	shr	rax, 5
	mov	rcx, qword ptr [rbp - 0xc8]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax - 0x3f8]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x88]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x90], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x90]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0xc
	xor	rax, rcx
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx - 0x3f0]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x98]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xa0]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xd0], rax
	call	just
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0xd0]
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax - 0x3e8]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xb0]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x800
	cmp	rax, rcx
	jb	.label_953
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x800], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x808], rax
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c201
	.globl sub_40c201
	.type sub_40c201, @function
sub_40c201:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c210
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c242
	.globl sub_40c242
	.type sub_40c242, @function
sub_40c242:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c250

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c262
	.globl sub_40c262
	.type sub_40c262, @function
sub_40c262:

	nop	word ptr cs:[rax + rax]
.label_960:
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax,  dword ptr [dword ptr [decimal_point]]
	jne	.label_955
	jmp	.label_956
.label_956:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, dl
	sub	esi, 0x30
	cmp	esi, 9
	ja	.label_957
	movzx	eax, byte ptr [rbp - 0x1a]
	movzx	ecx, byte ptr [rbp - 0x19]
	cmp	eax, ecx
	jge	.label_958
	mov	al, byte ptr [rbp - 0x19]
	mov	byte ptr [rbp - 0x1a], al
.label_958:
	jmp	.label_956
.label_961:
	test	byte ptr [rbp - 0x1b], 1
	je	.label_960
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -2
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dl, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_964
.label_957:
	jmp	.label_955
.label_955:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dl, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 1], dl
.label_964:
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c308
	.globl sub_40c308
	.type sub_40c308, @function
sub_40c308:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40c30a

	.globl traverse_raw_number
	.type traverse_raw_number, @function
traverse_raw_number:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [rbp - 0x1b], 0
.label_959:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, dl
	sub	esi, 0x30
	cmp	esi, 9
	ja	.label_961
	movzx	eax, byte ptr [rbp - 0x1a]
	movzx	ecx, byte ptr [rbp - 0x19]
	cmp	eax, ecx
	jge	.label_962
	mov	al, byte ptr [rbp - 0x19]
	mov	byte ptr [rbp - 0x1a], al
.label_962:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [thousands_sep]]
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x1b], dl
	test	byte ptr [rbp - 0x1b], 1
	je	.label_963
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_963:
	jmp	.label_959
	.section	.text
	.align	16
	#Procedure 0x40c390

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
	jne	.label_965
	cmp	qword ptr [rbp - 8], 0
	je	.label_965
	call	xalloc_die
.label_965:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c3ce
	.globl sub_40c3ce
	.type sub_40c3ce, @function
sub_40c3ce:

	nop	
.label_981:
	jmp	.label_969
.label_969:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_972
	xor	eax, eax
	cmp	qword ptr [rbp - 0x30], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_966
.label_968:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	setne	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x4c], edx
.label_973:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x1c], eax
.label_979:
	jmp	.label_974
.label_974:
	jmp	.label_977
.label_977:
	jmp	.label_966
.label_966:
	test	byte ptr [byte ptr [reverse]],  1
	je	.label_967
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_970
.label_972:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_975
	mov	dword ptr [rbp - 0x1c], 1
	jmp	.label_977
.label_967:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x50], eax
.label_970:
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 4], eax
.label_980:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c48a
	.globl sub_40c48a
	.type sub_40c48a, @function
sub_40c48a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c490

	.globl compare
	.type compare, @function
compare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [word ptr [keylist]],  0
	je	.label_969
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	keycompare
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_982
	test	byte ptr [byte ptr [unique]],  1
	jne	.label_982
	test	byte ptr [byte ptr [stable]],  1
	je	.label_981
.label_982:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_980
.label_976:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x40], rsi
	jae	.label_978
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_971
.label_978:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
.label_971:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	eax, 0
	jne	.label_979
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_968
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_973
.label_975:
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	je	.label_976
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	rsi, rax
	call	xmemcoll0
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_974
	.section	.text
	.align	16
	#Procedure 0x40c5a0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_983
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_984
.label_983:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_984
.label_984:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c5db
	.globl sub_40c5db
	.type sub_40c5db, @function
sub_40c5db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c5e0

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
.label_987:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_986
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_988
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_988:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_986:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_985
	jmp	.label_989
.label_985:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_987
.label_989:
	cmp	qword ptr [rbp - 0x18], 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c66c
	.globl sub_40c66c
	.type sub_40c66c, @function
sub_40c66c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c670

	.globl open_temp
	.type open_temp, @function
open_temp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 0xc]
	cmp	eax, 1
	jne	.label_998
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 8]
	call	wait_proc
.label_998:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0xd
	mov	rdi, rax
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_1000
	mov	qword ptr [rbp - 8], 0
	jmp	.label_990
.label_993:
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x50], eax
	call	move_fd
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	call	move_fd
	movabs	rdx, OFFSET FLAT:label_999
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [compress_program]]
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	al, 0
	call	execlp
	mov	dword ptr [rbp - 0x54], eax
	call	__errno_location
	movabs	rsi, OFFSET FLAT:label_995
	mov	edi, dword ptr [rax]
	call	async_safe_die
.label_1000:
	mov	eax, 9
	mov	esi, eax
	lea	rdi, [rbp - 0x1c]
	call	pipe_fork
	mov	dword ptr [rbp - 0x2c], eax
	mov	ecx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0x34], ecx
	mov	dword ptr [rbp - 0x38], eax
	je	.label_1002
	jmp	.label_992
.label_992:
	mov	eax, dword ptr [rbp - 0x34]
	test	eax, eax
	je	.label_993
	jmp	.label_996
.label_1002:
	call	__errno_location
	cmp	dword ptr [rax], 0x18
	je	.label_991
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1001
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	qword ptr [rbp - 0x48], rax
	call	quotearg_style
	mov	edi, 2
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_996:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 8], eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	register_proc
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	edi, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x58], eax
	call	close
	movabs	rsi, OFFSET FLAT:label_418
	mov	edi, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x5c], eax
	call	fdopen
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_994
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x60], eax
	mov	dword ptr [rbp - 0x64], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x64]
	mov	dword ptr [rax], ecx
.label_994:
	jmp	.label_997
.label_997:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_990:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c841
	.globl sub_40c841
	.type sub_40c841, @function
sub_40c841:

	nop	dword ptr [rax]
.label_991:
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	dword ptr [rbp - 0x4c], eax
	call	__errno_location
	mov	dword ptr [rax], 0x18
	jmp	.label_997
	.section	.text
	.align	16
	#Procedure 0x40c860

	.globl badfieldspec
	.type badfieldspec, @function
badfieldspec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:label_1003
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, rax
	mov	al, 0
	call	error
	nop	word ptr cs:[rax + rax]
.label_1004:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c8c6
	.globl sub_40c8c6
	.type sub_40c8c6, @function
sub_40c8c6:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c8cf
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1005:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_1004
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1005
	.section	.text
	.align	16
	#Procedure 0x40c920

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
	ja	.label_1006
	jmp	.label_1008
.label_1008:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1007
.label_1006:
	jmp	.label_1007
.label_1007:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c96a
	.globl sub_40c96a
	.type sub_40c96a, @function
sub_40c96a:

	nop	word ptr [rax + rax]
.label_1030:
	imul	rax, qword ptr [rbp - 0xfe0], 3
	shr	rax, 1
	mov	qword ptr [rbp - 0x11a8], rax
.label_1029:
	mov	rax, qword ptr [rbp - 0x11a8]
	mov	qword ptr [rbp - 0xfe0], rax
	mov	rdi, qword ptr [rbp - 0xfe8]
	call	free
	mov	rdi, qword ptr [rbp - 0xfe0]
	call	malloc
	mov	qword ptr [rbp - 0xfe8], rax
	mov	qword ptr [rbp - 0xfd8], rax
	cmp	qword ptr [rbp - 0xfd8], 0
	jne	.label_1039
	lea	rax, [rbp - 0xfd0]
	mov	qword ptr [rbp - 0xfd8], rax
	mov	qword ptr [rbp - 0xfe0], 0xfa0
.label_1039:
	jmp	.label_1027
.label_1027:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	jae	.label_1033
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0xfe0]
	call	xstrxfrm
	add	rax, 1
	mov	qword ptr [rbp - 0x11b0], rax
	jmp	.label_1013
.label_1021:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x1238], rax
.label_1024:
	mov	rax, qword ptr [rbp - 0x1238]
	mov	rdi, qword ptr [rbp - 0x1228]
	mov	rsi, qword ptr [rbp - 0x1230]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_1023
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	seta	cl
	and	cl, 1
	movzx	edx, cl
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	setb	cl
	and	cl, 1
	movzx	esi, cl
	sub	edx, esi
	mov	dword ptr [rbp - 0x24], edx
.label_1023:
	jmp	.label_1018
.label_1018:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x1184], eax
.label_1032:
	mov	rdi, qword ptr [rbp - 0xfe8]
	call	free
	mov	eax, dword ptr [rbp - 0x1184]
	add	rsp, 0x1240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40caa0
	.globl sub_40caa0
	.type sub_40caa0, @function
sub_40caa0:

	nop	word ptr [rax + rax]
.label_1031:
	lea	rdx, [rbp - 0x1150]
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rsi, qword ptr [rbp - 0x1170]
	call	md5_process_bytes
	lea	rdx, [rbp - 0x1150]
	mov	rsi, qword ptr [rbp - 0xfd8]
	add	rsi, qword ptr [rbp - 0x1170]
	mov	rdi, qword ptr [rbp - 0x1180]
	add	rdx, 0x9c
	mov	qword ptr [rbp - 0x11f0], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x11f0]
	call	md5_process_bytes
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_1035
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rax, qword ptr [rbp - 0xfd8]
	add	rax, qword ptr [rbp - 0x1170]
	mov	rcx, qword ptr [rbp - 0x1170]
	cmp	rcx, qword ptr [rbp - 0x1180]
	mov	qword ptr [rbp - 0x11f8], rdi
	mov	qword ptr [rbp - 0x1200], rax
	jae	.label_1011
	mov	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x1208], rax
	jmp	.label_1026
.label_1033:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x11b0], rcx
	jmp	.label_1013
.label_1013:
	mov	rax, qword ptr [rbp - 0x11b0]
	mov	qword ptr [rbp - 0x1170], rax
	mov	rax, qword ptr [rbp - 0x1170]
	cmp	rax, qword ptr [rbp - 0xfe0]
	setbe	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x1171], cl
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x1160]
	jae	.label_1017
	test	byte ptr [rbp - 0x1171], 1
	je	.label_1016
	mov	rax, qword ptr [rbp - 0xfd8]
	add	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x11b8], rax
	jmp	.label_1019
.label_1038:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x11d0], rcx
	jmp	.label_1015
.label_1015:
	mov	rax, qword ptr [rbp - 0x11d0]
	mov	rdi, qword ptr [rbp - 0x11c0]
	mov	rsi, qword ptr [rbp - 0x11c8]
	mov	rdx, rax
	call	xstrxfrm
	add	rax, 1
	mov	qword ptr [rbp - 0x11d8], rax
	jmp	.label_1036
.label_1011:
	mov	rax, qword ptr [rbp - 0x1180]
	mov	qword ptr [rbp - 0x1208], rax
.label_1026:
	mov	rax, qword ptr [rbp - 0x1208]
	mov	rdi, qword ptr [rbp - 0x11f8]
	mov	rsi, qword ptr [rbp - 0x1200]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_1020
	mov	rax, qword ptr [rbp - 0x1170]
	cmp	rax, qword ptr [rbp - 0x1180]
	seta	cl
	and	cl, 1
	movzx	edx, cl
	mov	rax, qword ptr [rbp - 0x1170]
	cmp	rax, qword ptr [rbp - 0x1180]
	setb	cl
	and	cl, 1
	movzx	esi, cl
	sub	edx, esi
	mov	dword ptr [rbp - 0x24], edx
.label_1020:
	jmp	.label_1035
.label_1035:
	jmp	.label_1037
.label_1017:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x11d8], rcx
	jmp	.label_1036
.label_1036:
	mov	rax, qword ptr [rbp - 0x11d8]
	mov	qword ptr [rbp - 0x1180], rax
	test	byte ptr [rbp - 0x1171], 1
	je	.label_1009
	mov	rax, qword ptr [rbp - 0x1170]
	add	rax, qword ptr [rbp - 0x1180]
	cmp	rax, qword ptr [rbp - 0xfe0]
	jbe	.label_1010
.label_1009:
	movabs	rax, 0x5555555555555555
	mov	rcx, qword ptr [rbp - 0x1170]
	add	rcx, qword ptr [rbp - 0x1180]
	mov	qword ptr [rbp - 0xfe0], rcx
	cmp	qword ptr [rbp - 0xfe0], rax
	jae	.label_1025
	imul	rax, qword ptr [rbp - 0xfe0], 3
	shr	rax, 1
	mov	qword ptr [rbp - 0xfe0], rax
.label_1025:
	mov	rdi, qword ptr [rbp - 0xfe8]
	call	free
	mov	rdi, qword ptr [rbp - 0xfe0]
	call	xmalloc
	mov	qword ptr [rbp - 0xfe8], rax
	mov	qword ptr [rbp - 0xfd8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	jae	.label_1014
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x1170]
	call	strxfrm
	mov	qword ptr [rbp - 0x11e0], rax
.label_1014:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x1160]
	jae	.label_1028
	mov	rax, qword ptr [rbp - 0xfd8]
	add	rax, qword ptr [rbp - 0x1170]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x1180]
	mov	rdi, rax
	call	strxfrm
	mov	qword ptr [rbp - 0x11e8], rax
.label_1028:
	jmp	.label_1010
.label_1010:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	jae	.label_1012
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
.label_1012:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x1160]
	jae	.label_1022
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
.label_1022:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	jb	.label_1031
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x1160]
	jb	.label_1031
	mov	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0xfd8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x1180]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0xfd8]
	add	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1040
	.section	.text
	.align	16
	#Procedure 0x40ce30

	.globl compare_random
	.type compare_random, @function
compare_random:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1240
	mov	eax, 0x9c
	mov	r8d, eax
	movabs	r9, OFFSET FLAT:random_md5_state
	lea	r10, [rbp - 0x1150]
	lea	r11, [rbp - 0xfd0]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], 0
	mov	qword ptr [rbp - 0xfd8], r11
	mov	qword ptr [rbp - 0xfe0], 0xfa0
	mov	qword ptr [rbp - 0xfe8], 0
	mov	rcx, r10
	add	rcx, 0x9c
	mov	rdx, rcx
	mov	rdi, rdx
	mov	rsi, r9
	mov	rdx, r8
	mov	qword ptr [rbp - 0x1190], rcx
	mov	qword ptr [rbp - 0x1198], r10
	mov	qword ptr [rbp - 0x11a0], r8
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x1198]
	mov	rdx, qword ptr [rbp - 0x1190]
	mov	rdi, rcx
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x11a0]
	call	memcpy
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	je	.label_1034
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1158], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x1160], rax
.label_1037:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x20]
	imul	rax, rax, 3
	add	rax, 2
	mov	qword ptr [rbp - 0x1168], rax
	mov	rax, qword ptr [rbp - 0xfe0]
	cmp	rax, qword ptr [rbp - 0x1168]
	jae	.label_1027
	mov	rax, qword ptr [rbp - 0x1168]
	imul	rcx, qword ptr [rbp - 0xfe0], 3
	shr	rcx, 1
	cmp	rax, rcx
	jbe	.label_1030
	mov	rax, qword ptr [rbp - 0x1168]
	mov	qword ptr [rbp - 0x11a8], rax
	jmp	.label_1029
.label_1040:
	jmp	.label_1034
.label_1034:
	lea	rdx, [rbp - 0x1150]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	md5_process_bytes
	lea	rdx, [rbp - 0x1010]
	lea	rdi, [rbp - 0x1150]
	mov	rsi, rdx
	call	md5_finish_ctx
	lea	rdx, [rbp - 0x1150]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	add	rdx, 0x9c
	mov	qword ptr [rbp - 0x1210], rax
	call	md5_process_bytes
	lea	rax, [rbp - 0x1010]
	lea	rdx, [rbp - 0x1150]
	add	rdx, 0x9c
	add	rax, 0x10
	mov	rdi, rdx
	mov	rsi, rax
	call	md5_finish_ctx
	lea	rdx, [rbp - 0x1010]
	mov	rsi, rdx
	add	rdx, 0x10
	mov	ecx, 0x10
	mov	edi, ecx
	mov	qword ptr [rbp - 0x1218], rdi
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x1218]
	mov	qword ptr [rbp - 0x1220], rax
	call	memcmp
	mov	dword ptr [rbp - 0x1184], eax
	cmp	dword ptr [rbp - 0x1184], 0
	jne	.label_1032
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_1018
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x1228], rdi
	mov	qword ptr [rbp - 0x1230], rsi
	jae	.label_1021
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1238], rax
	jmp	.label_1024
.label_1016:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x11b8], rcx
	jmp	.label_1019
.label_1019:
	mov	rax, qword ptr [rbp - 0x11b8]
	mov	rsi, qword ptr [rbp - 0x18]
	test	byte ptr [rbp - 0x1171], 1
	mov	qword ptr [rbp - 0x11c0], rax
	mov	qword ptr [rbp - 0x11c8], rsi
	je	.label_1038
	mov	rax, qword ptr [rbp - 0xfe0]
	sub	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x11d0], rax
	jmp	.label_1015
	.section	.text
	.align	16
	#Procedure 0x40d0b0

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
	jge	.label_1044
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1041
.label_1044:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_1045
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1043
.label_1045:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_1043
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1043:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1042
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_1042:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1041:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d17e
	.globl sub_40d17e
	.type sub_40d17e, @function
sub_40d17e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40d180

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1046
	jmp	.label_1048
.label_1048:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1047
.label_1046:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1047:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d1b7
	.globl sub_40d1b7
	.type sub_40d1b7, @function
sub_40d1b7:

	nop	word ptr [rax + rax]
.label_1051:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rdi, rax
	call	pthread_mutex_unlock
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], eax
	call	lock_node
	mov	rdi, qword ptr [rbp - 0x10]
	mov	byte ptr [rdi + 0x54], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d1ee
	.globl sub_40d1ee
	.type sub_40d1ee, @function
sub_40d1ee:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d1f9

	.globl queue_pop
	.type queue_pop, @function
queue_pop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 8
	call	pthread_mutex_lock
	mov	dword ptr [rbp - 0x14], eax
.label_1050:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	heap_remove_top
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1049
	jmp	.label_1051
.label_1049:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x30
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 8
	mov	rdi, rax
	mov	rsi, rcx
	call	pthread_cond_wait
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_1050
	.section	.text
	.align	16
	#Procedure 0x40d260

	.globl delete_proc
	.type delete_proc, @function
delete_proc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rax, [rbp - 0x18]
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], edi
	mov	rdi,  qword ptr [word ptr [proctab]]
	mov	rsi, rax
	call	hash_delete
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1053
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1052
.label_1053:
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0xc], 2
	mov	byte ptr [rbp - 1], 1
.label_1052:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d2b7
	.globl sub_40d2b7
	.type sub_40d2b7, @function
sub_40d2b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d2c0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1054
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_1061:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1058
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1060
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_1056
.label_1060:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_1055
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1057
.label_1056:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_1059
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_1057:
	jmp	.label_1062
.label_1062:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1061
.label_1058:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d410
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1063
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1063:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d43a
	.globl sub_40d43a
	.type sub_40d43a, @function
sub_40d43a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d440

	.globl queue_init
	.type queue_init, @function
queue_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:compare_nodes
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	shl	rsi, 1
	mov	rdi, rax
	call	heap_alloc
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rdi, rax
	call	pthread_mutex_init
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x30
	mov	dword ptr [rbp - 0x14], eax
	call	pthread_cond_init
	mov	dword ptr [rbp - 0x18], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d4a2
	.globl sub_40d4a2
	.type sub_40d4a2, @function
sub_40d4a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4b0

	.globl wait_proc
	.type wait_proc, @function
wait_proc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	call	delete_proc
	test	al, 1
	jne	.label_1064
	jmp	.label_1065
.label_1064:
	mov	edi, dword ptr [rbp - 4]
	call	reap
	mov	dword ptr [rbp - 8], eax
.label_1065:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d4e1
	.globl sub_40d4e1
	.type sub_40d4e1, @function
sub_40d4e1:

	nop	word ptr cs:[rax + rax]
.label_1068:
	jmp	.label_1066
.label_1066:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_1067
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1066
.label_1067:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx,  dword ptr [dword ptr [decimal_point]]
	mov	ecx,  dword ptr [dword ptr [thousands_sep]]
	call	strnumcmp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d546
	.globl sub_40d546
	.type sub_40d546, @function
sub_40d546:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d550

	.globl numcompare
	.type numcompare, @function
numcompare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_1069:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_1068
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1069
.label_1094:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1072
.label_1087:
	jmp	.label_1083
.label_1083:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1086
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1083
.label_1086:
	jmp	.label_1089
.label_1089:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	edi, edi
	mov	dl, dil
	test	al, 1
	mov	byte ptr [rbp - 0x51], dl
	jne	.label_1097
	jmp	.label_1100
.label_1097:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	byte ptr [rbp - 0x51], al
.label_1100:
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_1075
	jmp	.label_1079
.label_1075:
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_1082
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	esi, byte ptr [rcx + rax]
	sub	edx, esi
	mov	dword ptr [rbp - 0x3c], edx
.label_1082:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1089
.label_1093:
	mov	dword ptr [rbp - 4], 0
.label_1081:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d67b
	.globl sub_40d67b
	.type sub_40d67b, @function
sub_40d67b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d687

	.globl verrevcmp
	.type verrevcmp, @function
verrevcmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
.label_1073:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x45], al
	jb	.label_1084
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	setb	cl
	mov	byte ptr [rbp - 0x45], cl
.label_1084:
	mov	al, byte ptr [rbp - 0x45]
	test	al, 1
	jne	.label_1090
	jmp	.label_1093
.label_1090:
	mov	dword ptr [rbp - 0x3c], 0
.label_1072:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1070
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	dl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x46], dl
	jne	.label_1070
	jmp	.label_1074
.label_1070:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rbp - 0x47], cl
	jae	.label_1076
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	al, 0xff
	mov	byte ptr [rbp - 0x47], al
.label_1076:
	mov	al, byte ptr [rbp - 0x47]
	mov	byte ptr [rbp - 0x46], al
.label_1074:
	mov	al, byte ptr [rbp - 0x46]
	test	al, 1
	jne	.label_1088
	jmp	.label_1091
.label_1088:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1092
	xor	eax, eax
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1095
.label_1078:
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1098
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1081
.label_1099:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1071
	jmp	.label_1078
.label_1071:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1081
.label_1091:
	jmp	.label_1085
.label_1085:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1087
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1085
.label_1079:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1096
	jmp	.label_1099
.label_1096:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1081
.label_1098:
	jmp	.label_1073
.label_1092:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x4c], eax
.label_1095:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x40], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_1077
	xor	eax, eax
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_1080
.label_1077:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x50], eax
.label_1080:
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x44], eax
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	je	.label_1094
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1081
.label_1102:
	mov	byte ptr [rbp - 1], 0
.label_1103:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d87e
	.globl sub_40d87e
	.type sub_40d87e, @function
sub_40d87e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d886
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
	jb	.label_1101
	jmp	.label_1104
.label_1104:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1102
	jmp	.label_1101
.label_1101:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1103
	.section	.text
	.align	16
	#Procedure 0x40d8c0

	.globl getmonth
	.type getmonth, @function
getmonth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0xc
.label_1117:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_1113
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1117
.label_1109:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]]
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx]
	mov	dword ptr [rbp - 0x48], edi
	mov	edi, edx
	call	to_uchar
	movzx	edx, al
	mov	edi, dword ptr [rbp - 0x48]
	cmp	edi, edx
	jle	.label_1105
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1106
.label_1111:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]]
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx]
	mov	dword ptr [rbp - 0x44], edi
	mov	edi, edx
	call	to_uchar
	movzx	edx, al
	mov	edi, dword ptr [rbp - 0x44]
	cmp	edi, edx
	jge	.label_1109
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1106
.label_1113:
	jmp	.label_1110
.label_1110:
	movabs	rax, OFFSET FLAT:monthtab
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x28]
	shr	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rax, rcx
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_1116:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	byte ptr [rax], 0
	jne	.label_1111
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1115
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_1115:
	movabs	rax, OFFSET FLAT:monthtab
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1107
.label_1105:
	jmp	.label_1112
.label_1112:
	jmp	.label_1114
.label_1114:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1116
.label_1106:
	jmp	.label_1108
.label_1108:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_1110
	mov	dword ptr [rbp - 4], 0
.label_1107:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40da74
	.globl sub_40da74
	.type sub_40da74, @function
sub_40da74:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da80

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
	.align	16
	#Procedure 0x40dab8
	.globl sub_40dab8
	.type sub_40dab8, @function
sub_40dab8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dac0

	.globl pipe_fork
	.type pipe_fork, @function
pipe_fork:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	eax, 0x80000
	movsd	xmm0,  qword ptr [word ptr [rip + label_1118]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	movsd	qword ptr [rbp - 0x30], xmm0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, eax
	call	rpl_pipe2
	cmp	eax, 0
	jge	.label_1129
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1131
.label_1128:
	movsd	xmm0, qword ptr [rbp - 0x30]
	call	xnanosleep
	movsd	xmm0,  qword ptr [word ptr [rip + label_1125]]
	mulsd	xmm0, qword ptr [rbp - 0x30]
	movsd	qword ptr [rbp - 0x30], xmm0
	mov	dword ptr [rbp - 0xc8], eax
	call	reap_exited
	jmp	.label_1120
.label_1129:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	add	eax, 1
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	jae	.label_1130
	call	reap_some
.label_1130:
	jmp	.label_1120
.label_1120:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	je	.label_1123
	lea	rdi, [rbp - 0xc0]
	call	cs_enter
	mov	rdi,  qword ptr [word ptr [temphead]]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [word ptr [temphead]],  0
	call	fork
	mov	dword ptr [rbp - 0x34], eax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_1126
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [temphead]],  rax
.label_1126:
	lea	rdi, [rbp - 0xc0]
	call	cs_leave
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0xc4], eax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 0xc4]
	mov	dword ptr [rax], edx
	cmp	ecx, dword ptr [rbp - 0x34]
	jle	.label_1122
	call	__errno_location
	cmp	dword ptr [rax], 0xb
	je	.label_1128
.label_1122:
	jmp	.label_1123
.label_1127:
	mov	eax,  dword ptr [dword ptr [nprocs]]
	add	eax, 1
	mov	dword ptr [dword ptr [nprocs]],  eax
.label_1119:
	jmp	.label_1124
.label_1124:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
.label_1131:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dc1f
	.globl sub_40dc1f
	.type sub_40dc1f, @function
sub_40dc1f:

	nop	dword ptr [rax]
.label_1121:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_1127
	xor	edi, edi
	call	close
	mov	edi, 1
	mov	dword ptr [rbp - 0xd8], eax
	call	close
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_1119
.label_1123:
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_1121
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	call	close
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rdx + 4]
	mov	dword ptr [rbp - 0xcc], eax
	call	close
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0xd0], eax
	mov	dword ptr [rbp - 0xd4], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xd4]
	mov	dword ptr [rax], ecx
	jmp	.label_1124
	.section	.text
	.align	16
	#Procedure 0x40dca0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1132
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1134
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1133
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1136
	movabs	rdx, OFFSET FLAT:label_1137
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1135
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
	.align	16
	#Procedure 0x40dd26
	.globl sub_40dd26
	.type sub_40dd26, @function
sub_40dd26:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dd30

	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	memcoll0
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	mov	r8d, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], r8d
	cmp	dword ptr [rbp - 0x28], 0
	je	.label_1138
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	mov	r8, qword ptr [rbp - 0x30]
	call	collate_error
.label_1138:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ddaa
	.globl sub_40ddaa
	.type sub_40ddaa, @function
sub_40ddaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ddb0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1139
	jmp	.label_1141
.label_1141:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1140
.label_1139:
	mov	byte ptr [rbp - 1], 0
.label_1140:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dde2
	.globl sub_40dde2
	.type sub_40dde2, @function
sub_40dde2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ddf0

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
	jne	.label_1142
	movabs	rax, OFFSET FLAT:label_77
	mov	qword ptr [rbp - 8], rax
.label_1142:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1143
	movabs	rax, OFFSET FLAT:label_1144
	mov	qword ptr [rbp - 8], rax
.label_1143:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de47
	.globl sub_40de47
	.type sub_40de47, @function
sub_40de47:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40de50

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
	.align	16
	#Procedure 0x40de8e
	.globl sub_40de8e
	.type sub_40de8e, @function
sub_40de8e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40de90

	.globl queue_check_insert_parent
	.type queue_check_insert_parent, @function
queue_check_insert_parent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x50], 1
	jbe	.label_1145
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x38]
	call	lock_node
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x38]
	call	queue_check_insert
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x38]
	call	unlock_node
	jmp	.label_1147
.label_1145:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x30]
	cmp	rax, 0
	jne	.label_1146
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x38]
	call	queue_insert
.label_1146:
	jmp	.label_1147
.label_1147:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40df14
	.globl sub_40df14
	.type sub_40df14, @function
sub_40df14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40df20

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1148
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_1149
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40df5f
	.globl sub_40df5f
	.type sub_40df5f, @function
sub_40df5f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40df60
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40df97
	.globl sub_40df97
	.type sub_40df97, @function
sub_40df97:

	nop	word ptr [rax + rax]
.label_1153:
	movabs	rsi, OFFSET FLAT:label_418
	movsxd	rax, dword ptr [rbp - 0x24]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	stream_open
	mov	qword ptr [rbp - 0x30], rax
.label_1152:
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + rcx*8], rax
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_1151
	jmp	.label_1150
.label_1150:
	movsxd	rax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
.label_1151:
	jmp	.label_1154
.label_1154:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1155
	.section	.text
	.align	16
	#Procedure 0x40e007

	.globl open_input_files
	.type open_input_files, @function
open_input_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 8
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rcx
	call	xnmalloc
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0x20], rax
	mov	dword ptr [rbp - 0x24], 0
.label_1155:
	movsxd	rax, dword ptr [rbp - 0x24]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1150
	movsxd	rax, dword ptr [rbp - 0x24]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_1153
	movsxd	rax, dword ptr [rbp - 0x24]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax + 0xc]
	cmp	ecx, 0
	je	.label_1153
	movsxd	rax, dword ptr [rbp - 0x24]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	open_temp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1152
.label_1157:
	mov	byte ptr [rbp - 1], 0
.label_1158:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e0ae
	.globl sub_40e0ae
	.type sub_40e0ae, @function
sub_40e0ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40e0b0

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
	jb	.label_1156
	jmp	.label_1159
.label_1159:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1157
	jmp	.label_1156
.label_1156:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1158
	.section	.text
	.align	16
	#Procedure 0x40e0f0

	.globl insertkey
	.type insertkey, @function
insertkey:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x48
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmemdup
	movabs	rsi, OFFSET FLAT:keylist
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x10], rsi
.label_1160:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1162
	jmp	.label_1161
.label_1161:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1160
.label_1162:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x40], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e162
	.globl sub_40e162
	.type sub_40e162, @function
sub_40e162:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e170

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x20]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_1163
	call	abort
.label_1163:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rax, rcx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e1d4
	.globl sub_40e1d4
	.type sub_40e1d4, @function
sub_40e1d4:

	nop	word ptr cs:[rax + rax]
.label_1165:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1164
.label_1167:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e21f
	.globl sub_40e21f
	.type sub_40e21f, @function
sub_40e21f:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e229

	.globl heapify_down
	.type heapify_down, @function
heapify_down:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rcx
.label_1164:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	shr	rcx, 1
	cmp	rax, rcx
	ja	.label_1167
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1166
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx + rcx*8 + 8]
	call	rax
	cmp	eax, 0
	jge	.label_1166
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_1166:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rax
	cmp	eax, 0
	jg	.label_1165
	jmp	.label_1167
	.section	.text
	.align	16
	#Procedure 0x40e2e0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
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
	jae	.label_1168
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1169
.label_1168:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1169:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e33c
	.globl sub_40e33c
	.type sub_40e33c, @function
sub_40e33c:

	nop	dword ptr [rax]
.label_1180:
	jmp	.label_1170
.label_1170:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x80000
	cmp	eax, 0
	je	.label_1172
	mov	esi, 1
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x28], eax
	cmp	eax, 0
	jl	.label_1173
	mov	esi, 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	mov	ecx, dword ptr [rbp - 0x28]
	or	ecx, 1
	mov	edx, ecx
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1173
	mov	esi, 1
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x28], eax
	cmp	eax, 0
	jl	.label_1173
	mov	esi, 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	mov	ecx, dword ptr [rbp - 0x28]
	or	ecx, 1
	mov	edx, ecx
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_1174
.label_1173:
	jmp	.label_1175
.label_1175:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	call	close
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rdx + 4]
	mov	dword ptr [rbp - 0x30], eax
	call	close
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx], ecx
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 4], ecx
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x34], eax
	mov	dword ptr [rbp - 0x38], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1171:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
.label_1174:
	jmp	.label_1172
.label_1172:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1171
	.section	.text
	.align	16
	#Procedure 0x40e44e

	.globl rpl_pipe2
	.type rpl_pipe2, @function
rpl_pipe2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdi + 4]
	mov	dword ptr [rbp - 0x18], esi
	cmp	dword ptr [dword ptr [rpl_pipe2.have_pipe2_really]],  0
	jl	.label_1178
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	pipe2
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	jge	.label_1177
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	je	.label_1179
.label_1177:
	mov	dword ptr [dword ptr [rpl_pipe2.have_pipe2_really]],  1
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1171
.label_1179:
	mov	dword ptr [dword ptr [rpl_pipe2.have_pipe2_really]],  0xffffffff
.label_1178:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0xfff7f7ff
	cmp	eax, 0
	je	.label_1176
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1171
.label_1176:
	mov	rdi, qword ptr [rbp - 0x10]
	call	pipe
	cmp	eax, 0
	jge	.label_1182
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1171
.label_1182:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x800
	cmp	eax, 0
	je	.label_1170
	mov	esi, 3
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	jl	.label_1181
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	mov	ecx, dword ptr [rbp - 0x24]
	or	ecx, 0x800
	mov	edx, ecx
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1181
	mov	esi, 3
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	jl	.label_1181
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	mov	ecx, dword ptr [rbp - 0x24]
	or	ecx, 0x800
	mov	edx, ecx
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_1180
.label_1181:
	jmp	.label_1175
.label_1189:
	mov	eax, 0x10
	mov	esi, eax
	lea	rcx, [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rdi, qword ptr [rbp - 0x78]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax], 0
	jne	.label_1183
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1187
	.section	.text
	.align	16
	#Procedure 0x40e5e6

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_1184
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1187
.label_1184:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1189
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1187
.label_1186:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1188
	jmp	.label_1190
.label_1188:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1191
.label_1190:
	call	abort
.label_1191:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_1187:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e6ac
	.globl sub_40e6ac
	.type sub_40e6ac, @function
sub_40e6ac:

	nop	dword ptr [rax]
.label_1183:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	call	transfer_entries
	test	al, 1
	jne	.label_1185
	jmp	.label_1186
.label_1185:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1187
	.section	.text
	.align	16
	#Procedure 0x40e7c0

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
	.section	.text
	.align	16
	#Procedure 0x40e7d0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
.label_1205:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1203
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_1193
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1201:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1198
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1192
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1199
.label_1203:
	mov	byte ptr [rbp - 1], 1
.label_1197:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e892
	.globl sub_40e892
	.type sub_40e892, @function
sub_40e892:

	nop	word ptr [rax + rax]
.label_1198:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_1195
	jmp	.label_1196
.label_1192:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	free_entry
.label_1199:
	jmp	.label_1200
.label_1200:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1201
.label_1194:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1204
.label_1195:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1202
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1194
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1197
.label_1202:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1204:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_1193:
	jmp	.label_1196
.label_1196:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1205
.label_1206:
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
	.align	16
	#Procedure 0x40e9d3
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
.label_1208:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1206
	jmp	.label_1207
.label_1207:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1208
.label_1212:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1215:
	jmp	.label_1219
.label_1219:
	jmp	.label_1221
.label_1221:
	jmp	.label_1220
.label_1220:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1214:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ea50
	.globl sub_40ea50
	.type sub_40ea50, @function
sub_40ea50:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ea5d

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0x28]
	mov	ecx, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1211
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1214
.label_1216:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1218
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1218:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1209:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1213]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	hash_rehash
	test	al, 1
	jne	.label_1215
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1210:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1212
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1210
.label_1211:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1220
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1224
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1224:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1222
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1222:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1221
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1217
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1217:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1225
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1225:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_1219
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1216
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1223
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1223:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1209
	.section	.text
	.align	16
	#Procedure 0x40ee20

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ee32
	.globl sub_40ee32
	.type sub_40ee32, @function
sub_40ee32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ee40

	.globl check_output
	.type check_output, @function
check_output:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1226
	mov	edx, 0x1b6
	mov	dword ptr [rbp - 0xc], 0x80041
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_1227
	movabs	rdi, OFFSET FLAT:label_1228
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	sort_die
.label_1227:
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x10]
	call	move_fd
.label_1226:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eeac
	.globl sub_40eeac
	.type sub_40eeac, @function
sub_40eeac:

	nop	dword ptr [rax]
.label_1243:
	jmp	.label_1237
.label_1256:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	je	.label_1255
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0x10]
	add	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	sub	rcx, qword ptr [rsi + 0x20]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rsi, rdx
	mov	rdx, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], 0
	mov	qword ptr [rbp - 0x98], rax
.label_1255:
	jmp	.label_1248
.label_1248:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	buffer_linelim
	xor	edx, edx
	mov	ecx, edx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rcx
	sub	rsi, qword ptr [rdi + 0x10]
	shl	rsi, 5
	add	rax, rsi
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	imul	rsi, qword ptr [rbp - 0x38]
	sub	rcx, rsi
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1244
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1233
.label_1249:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xb0], rax
.label_1240:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1242
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], -1
	jne	.label_1252
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1246
.label_1232:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	buffer_linelim
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, rcx
	sar	rax, 5
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1236
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x22
	mov	qword ptr [word ptr [merge_buffer_size]],  rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1235
.label_1234:
	mov	rdi, qword ptr [rbp - 0x18]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_1229
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x30], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x80]
	jne	.label_1231
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1235
.label_1236:
	lea	rsi, [rbp - 0x90]
	mov	eax, 0x20
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	shr	rcx, 5
	mov	qword ptr [rbp - 0x90], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	x2nrealloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_1248
.label_1231:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x80]
	je	.label_1230
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax - 1]
	movsx	edx, byte ptr [rbp - 0x29]
	cmp	ecx, edx
	je	.label_1230
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x80], rdx
	mov	byte ptr [rcx], al
.label_1230:
	jmp	.label_1229
.label_1229:
	jmp	.label_1238
.label_1238:
	jmp	.label_1239
.label_1239:
	mov	rdi, qword ptr [rbp - 0x48]
	movsx	esi, byte ptr [rbp - 0x29]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	qword ptr [rbp - 0x88], rax
	cmp	rax, 0
	je	.label_1247
	mov	rax, qword ptr [rbp - 0x88]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, -0x20
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx + 8]
	jbe	.label_1249
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1240
	.section	.text
	.align	16
	#Procedure 0x40f1ce

	.globl fillbuf
	.type fillbuf, @function
fillbuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x28], rdx
	mov	al,  byte ptr [byte ptr [eolchar]]
	mov	byte ptr [rbp - 0x29], al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x28]
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx,  qword ptr [word ptr [merge_buffer_size]]
	sub	rdx, 0x22
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	test	byte ptr [rdx + 0x30], 1
	je	.label_1256
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1235
.label_1252:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x28]
	call	limfield
	mov	qword ptr [rbp - 0xb8], rax
.label_1246:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], -1
	je	.label_1241
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x28]
	call	begfield
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rsi + 0x10], rax
	jmp	.label_1250
.label_1244:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa0], rax
.label_1233:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x68], rax
.label_1237:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_1232
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, 1
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, 1
	mov	rax, rcx
	xor	edi, edi
	mov	qword ptr [rbp - 0xa8], rdx
	mov	edx, edi
	mov	rcx, qword ptr [rbp - 0xa8]
	div	rcx
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	fread_unlocked
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x70]
	je	.label_1238
	mov	rdi, qword ptr [rbp - 0x18]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_1234
	movabs	rdi, OFFSET FLAT:label_1253
	call	gettext
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	sort_die
.label_1247:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x30], 1
	je	.label_1243
	jmp	.label_1232
.label_1241:
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x30], 1
	je	.label_1245
	jmp	.label_1251
.label_1251:
	mov	rax, qword ptr [rbp - 0x68]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_1254
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1251
.label_1235:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f3b4
	.globl sub_40f3b4
	.type sub_40f3b4, @function
sub_40f3b4:

	nop	word ptr [rax + rax]
.label_1254:
	jmp	.label_1245
.label_1245:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + 0x10], rax
.label_1250:
	jmp	.label_1242
.label_1242:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1239
.label_1257:
	movabs	rdi, OFFSET FLAT:random_md5_state
	call	md5_init_ctx
	mov	eax, 0x10
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:random_md5_state
	lea	rdi, [rbp - 0x20]
	call	md5_process_bytes
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f40f
	.globl sub_40f40f
	.type sub_40f40f, @function
sub_40f40f:

	nop	word ptr cs:[rax + rax]
.label_1268:
	mov	eax, 0x10
	mov	edx, eax
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	call	randread
	mov	rdi, qword ptr [rbp - 0x28]
	call	randread_free
	cmp	eax, 0
	je	.label_1257
	movabs	rdi, OFFSET FLAT:label_1258
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	sort_die
	.section	.text
	.align	16
	#Procedure 0x40f45a

	.globl random_md5_state_init
	.type random_md5_state_init, @function
random_md5_state_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x10
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	randread_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1268
	movabs	rdi, OFFSET FLAT:label_1228
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	sort_die
.label_1273:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	je	.label_1263
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rbp - 0x38]
	call	strtold
	fstp	xword ptr [rbp - 0x50]
	jmp	.label_1264
.label_1277:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1271
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1267
	.section	.text
	.align	16
	#Procedure 0x40f4e6

	.globl debug_key
	.type debug_key, @function
debug_key:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 8]
	add	rsi, -1
	mov	qword ptr [rbp - 0x28], rsi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1259
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], -1
	je	.label_1279
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	begfield
	mov	qword ptr [rbp - 0x20], rax
.label_1279:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], -1
	je	.label_1272
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	limfield
	mov	qword ptr [rbp - 0x28], rax
.label_1272:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x30], 1
	je	.label_1278
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], -1
	je	.label_1275
.label_1278:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x36], 1
	jne	.label_1275
	mov	rdi, qword ptr [rbp - 0x10]
	call	key_numeric
	test	al, 1
	jne	.label_1275
	jmp	.label_1276
.label_1275:
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x29], cl
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
.label_1274:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_1277
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1274
.label_1263:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x32], 1
	jne	.label_1266
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x35], 1
	je	.label_1270
.label_1266:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x80], rdx
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1260
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1260:
	mov	al, byte ptr [rbp - 0x81]
	lea	rdi, [rbp - 0x58]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x80]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x58], rsi
	call	traverse_raw_number
	mov	ecx, 0x30
	mov	byte ptr [rbp - 0x59], al
	movzx	r8d, byte ptr [rbp - 0x59]
	cmp	ecx, r8d
	jg	.label_1262
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	mov	sil, byte ptr [rdx]
	mov	byte ptr [rbp - 0x5a], sil
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x10]
	test	byte ptr [rdi + 0x35], 1
	mov	qword ptr [rbp - 0x90], rdx
	mov	byte ptr [rbp - 0x91], cl
	je	.label_1269
	movzx	eax, byte ptr [rbp - 0x5a]
	mov	ecx, eax
	movsx	eax,  byte ptr [byte ptr [+ (rcx * 1) + unit_order]]
	cmp	eax, 0
	setne	dl
	mov	byte ptr [rbp - 0x91], dl
.label_1269:
	mov	al, byte ptr [rbp - 0x91]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x90]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x38], rsi
.label_1262:
	jmp	.label_1261
.label_1270:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_1261:
	jmp	.label_1264
.label_1264:
	jmp	.label_1265
.label_1265:
	jmp	.label_1267
.label_1267:
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rcx
.label_1276:
	jmp	.label_1259
.label_1259:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	debug_width
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	debug_width
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x70]
	call	mark_key
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f73f
	.globl sub_40f73f
	.type sub_40f73f, @function
sub_40f73f:

	nop	word ptr cs:[rax + rax]
.label_1271:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x36], 1
	je	.label_1273
	lea	rsi, [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x20]
	call	getmonth
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_1265
	.section	.text
	.align	16
	#Procedure 0x40f770

	.globl proctab_hasher
	.type proctab_hasher, @function
proctab_hasher:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f799
	.globl sub_40f799
	.type sub_40f799, @function
sub_40f799:

	nop	dword ptr [rax]
.label_1285:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	_obstack_free
.label_1284:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, rcx
	jbe	.label_1280
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1280
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_1282
	.section	.text
	.align	16
	#Procedure 0x40f801
	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x18
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	cmp	rdi, rax
	jbe	.label_1285
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1285
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_1284
.label_1280:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	_obstack_free
.label_1282:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc8
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, rcx
	jbe	.label_1281
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1281
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_1283
.label_1281:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	call	_obstack_free
.label_1283:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f8d7
	.globl sub_40f8d7
	.type sub_40f8d7, @function
sub_40f8d7:

	nop	word ptr [rax + rax]
.label_1314:
	mov	rax, qword ptr [rbp - 0xc0]
	sub	rax, 1
	mov	qword ptr [rbp - 0xe0], rax
	mov	qword ptr [rbp - 0x90], 0
.label_1287:
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_1315
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1287
.label_1299:
	jmp	.label_1305
.label_1289:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	xfclose
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1295
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	zaptemp
.label_1295:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax]
	call	free
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x88], rax
.label_1313:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1286
	mov	eax, 0x38
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rsi + rcx*8 + 8]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + rsi*8], rcx
	mov	rcx, qword ptr [rbp - 0x88]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x88]
	add	rsi, 1
	shl	rsi, 4
	add	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	qword ptr [rcx], rdi
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rbp - 0x88]
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x88]
	add	rsi, 1
	imul	rsi, rsi, 0x38
	add	rsi, qword ptr [rbp - 0x38]
	mov	rdi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rdx + rcx*8 + 8]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + rdx*8], rcx
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rdx + rcx*8 + 8]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rsi + rdx*8], rcx
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1313
.label_1306:
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
.label_1311:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, qword ptr [rbp - 0xc8]
	shr	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_1307
.label_1329:
	mov	rax,  qword ptr [word ptr [sort_size]]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xf8], rax
.label_1333:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	ecx, 0x20
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rdx, rax
	call	initbuf
	mov	rax, qword ptr [rbp - 0x88]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + rdx*8]
	mov	rdx, qword ptr [rbp - 0x88]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rdi, rax
	call	fillbuf
	test	al, 1
	jne	.label_1327
	jmp	.label_1324
.label_1327:
	mov	rax, qword ptr [rbp - 0x88]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	buffer_linelim
	xor	ecx, ecx
	mov	edi, ecx
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, -0x20
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0x88]
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x38]
	sub	rdi, qword ptr [rdx + 0x10]
	shl	rdi, 5
	add	rax, rdi
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1331
.label_1319:
	test	byte ptr [byte ptr [unique]],  1
	je	.label_1312
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_1312
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	write_line
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_1312:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	xfclose
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rsi
	call	free
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, rsi
	call	free
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdi, rsi
	call	free
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rsi
	call	free
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rsi
	call	free
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fc6e
	.globl sub_40fc6e
	.type sub_40fc6e, @function
sub_40fc6e:

	nop	word ptr cs:[rax + rax]
.label_1335:
	mov	qword ptr [rbp - 0x88], 1
.label_1322:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1321
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rcx + rax*8]
	call	compare
	xor	edx, edx
	cmp	edx, eax
	jge	.label_1323
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x88]
	sub	rcx, 1
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rbp - 0x88], 0
.label_1323:
	jmp	.label_1320
.label_1320:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1322
.label_1324:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	xfclose
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1334
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	zaptemp
.label_1334:
	mov	rax, qword ptr [rbp - 0x88]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax]
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x90], rax
.label_1326:
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1328
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rcx, 1
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1326
.label_1315:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1305
.label_1328:
	jmp	.label_1331
.label_1331:
	jmp	.label_1332
.label_1321:
	jmp	.label_1305
.label_1305:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1319
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xb0], rax
	test	byte ptr [byte ptr [unique]],  1
	je	.label_1301
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_1298
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0xb0]
	call	compare
	cmp	eax, 0
	je	.label_1298
	lea	rdi, [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], 0
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	write_line
.label_1298:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_1294
	lea	rax, [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1303
	jmp	.label_1288
.label_1288:
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_1290
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1293
.label_1291:
	jmp	.label_1300
.label_1300:
	mov	qword ptr [rbp - 0xc0], 1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd8], rax
.label_1307:
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0xc8]
	jae	.label_1314
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rcx + rax*8]
	call	compare
	mov	dword ptr [rbp - 0xe4], eax
	cmp	dword ptr [rbp - 0xe4], 0
	jl	.label_1297
	cmp	dword ptr [rbp - 0xe4], 0
	jne	.label_1306
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rdx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rdx + rcx*8]
	jae	.label_1306
.label_1297:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_1311
	.section	.text
	.align	16
	#Procedure 0x40fffb

	.globl mergefps
	.type mergefps, @function
mergefps:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
.label_2578:
	mov	eax, 0x38
	mov	r10d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, r10
	call	xnmalloc
	mov	r11d, 8
	mov	esi, r11d
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	xnmalloc
	mov	r11d, 8
	mov	esi, r11d
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	xnmalloc
	mov	r11d, 8
	mov	esi, r11d
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	xnmalloc
	mov	qword ptr [rbp - 0x80], rax
	mov	rax,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0xa0], rax
	mov	qword ptr [rbp - 0x58], 0
	mov	qword ptr [rbp - 0x88], 0
.label_1332:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1330
	mov	rax, qword ptr [rbp - 0x88]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rcx,  qword ptr [word ptr [merge_buffer_size]]
	mov	rdx,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x18]
	cmp	rcx, rax
	jbe	.label_1329
	mov	rax,  qword ptr [word ptr [merge_buffer_size]]
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_1333
.label_1318:
	mov	qword ptr [rbp - 0x88], 1
.label_1310:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1289
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rcx]
	jbe	.label_1302
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rcx + rax*8]
	add	rdx, -1
	mov	qword ptr [rcx + rax*8], rdx
.label_1302:
	jmp	.label_1309
.label_1309:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1310
.label_1330:
	mov	qword ptr [rbp - 0x88], 0
.label_1325:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1335
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1325
.label_1304:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	mov	rdi, rax
	call	fillbuf
	test	al, 1
	jne	.label_1317
	jmp	.label_1318
.label_1317:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	buffer_linelim
	xor	ecx, ecx
	mov	edi, ecx
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, -0x20
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rdx]
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x38]
	sub	rdi, qword ptr [rdx + 0x10]
	shl	rdi, 5
	add	rax, rdi
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rsi + rdx*8], rax
	jmp	.label_1291
.label_1290:
	jmp	.label_1316
.label_1316:
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_1288
.label_1293:
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
	mov	rdi, qword ptr [rbp - 0x68]
	call	xmalloc
	mov	qword ptr [rbp - 0x58], rax
.label_1303:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	cmp	qword ptr [rbp - 0xa0], 0
	je	.label_1308
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rdx]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rdx]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
.label_1308:
	jmp	.label_1294
.label_1294:
	jmp	.label_1296
.label_1301:
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	write_line
.label_1296:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_1304
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, -0x20
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1300
.label_1286:
	mov	qword ptr [rbp - 0x88], 0
.label_1292:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1299
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1292
	.section	.text
	.align	16
	#Procedure 0x4103d0

	.globl cs_leave
	.type cs_leave, @function
cs_leave:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi], 1
	je	.label_1336
	mov	edi, 2
	xor	eax, eax
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 8
	mov	rsi, rcx
	call	pthread_sigmask
	mov	dword ptr [rbp - 0xc], eax
.label_1336:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41040b
	.globl sub_41040b
	.type sub_41040b, @function
sub_41040b:

	nop	dword ptr [rax + rax]
.label_1341:
	mov	qword ptr [rbp - 8], 0
.label_1339:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410422
	.globl sub_410422
	.type sub_410422, @function
sub_410422:

	nop	dword ptr [rax]
.label_1337:
	jmp	.label_1338
.label_1338:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1340
	.section	.text
	.align	16
	#Procedure 0x41043f
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_1340:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1341
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1337
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1339
	.section	.text
	.align	16
	#Procedure 0x4104b0

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
	.align	16
	#Procedure 0x4104ef
	.globl sub_4104ef
	.type sub_4104ef, @function
sub_4104ef:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4104f0

	.globl add_temp_dir
	.type add_temp_dir, @function
add_temp_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [temp_dir_count]]
	cmp	rdi,  qword ptr [word ptr [temp_dir_alloc]]
	jne	.label_1342
	movabs	rsi, OFFSET FLAT:temp_dir_alloc
	mov	eax, 8
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [temp_dirs]]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [word ptr [temp_dirs]],  rax
.label_1342:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [temp_dir_count]]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [word ptr [temp_dir_count]],  rdx
	mov	rdx,  qword ptr [word ptr [temp_dirs]]
	mov	qword ptr [rdx + rcx*8], rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410568
	.globl sub_410568
	.type sub_410568, @function
sub_410568:

	nop	dword ptr [rax + rax]
.label_1344:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1343
.label_1343:
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
	.align	16
	#Procedure 0x410601
	.globl sub_410601
	.type sub_410601, @function
sub_410601:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41060c
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
	je	.label_1344
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1343
.label_1353:
	test	byte ptr [byte ptr [hard_LC_TIME]],  1
	je	.label_1345
	mov	qword ptr [rbp - 8], 0
.label_1348:
	cmp	qword ptr [rbp - 8], 0xc
	jae	.label_1346
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x2000e
	mov	ecx, eax
	mov	edi, ecx
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	movabs	rdi, OFFSET FLAT:monthtab
	mov	qword ptr [rbp - 0x30], rax
	mov	rdx, qword ptr [rbp - 8]
	shl	rdx, 4
	mov	rsi, rdi
	add	rsi, rdx
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	shl	rax, 4
	add	rdi, rax
	mov	dword ptr [rdi + 8], ecx
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x20], 0
.label_1350:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1351
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x50], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	jne	.label_1347
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx + rcx], al
.label_1347:
	jmp	.label_1349
.label_1349:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1350
	.section	.text
	.align	16
	#Procedure 0x41076a

	.globl inittables
	.type inittables, @function
inittables:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], 0
.label_1354:
	cmp	qword ptr [rbp - 8], 0x100
	jae	.label_1353
	mov	rax, qword ptr [rbp - 8]
	mov	cl, al
	movzx	edi, cl
	call	field_sep
	mov	rdx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [byte ptr [+ (rdx * 1) + blanks]],  al
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, edx
	movsxd	rdx, edi
	mov	qword ptr [rbp - 0x38], rdx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x38]
	movzx	edi, word ptr [rax + rdx*2]
	and	edi, 0x4000
	cmp	edi, 0
	setne	cl
	xor	cl, 0xff
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [byte ptr [+ (rax * 1) + nonprinting]],  cl
	mov	rax, qword ptr [rbp - 8]
	mov	edi, eax
	movsxd	rax, edi
	mov	qword ptr [rbp - 0x40], rax
	call	__ctype_b_loc
	xor	edi, edi
	mov	cl, dil
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x40]
	movzx	edi, word ptr [rax + rdx*2]
	and	edi, 8
	cmp	edi, 0
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_1352
	mov	rax, qword ptr [rbp - 8]
	mov	cl, al
	movzx	edi, cl
	call	field_sep
	xor	al, 0xff
	mov	byte ptr [rbp - 0x41], al
.label_1352:
	mov	al, byte ptr [rbp - 0x41]
	mov	rcx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [byte ptr [+ (rcx * 1) + nondictionary]],  al
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, ecx
	mov	edi, edx
	call	toupper
	mov	sil, al
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]],  sil
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1354
.label_1346:
	movabs	rax, OFFSET FLAT:monthtab
	mov	ecx, 0xc
	mov	esi, ecx
	mov	ecx, 0x10
	mov	edx, ecx
	movabs	rcx, OFFSET FLAT:struct_month_cmp
	mov	rdi, rax
	call	qsort
.label_1345:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41088e
	.globl sub_41088e
	.type sub_41088e, @function
sub_41088e:

	nop	dword ptr [rax + rax]
.label_1351:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1348
	.section	.text
	.align	16
	#Procedure 0x4108b0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1355
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	hash_get_n_entries
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_max_bucket_length
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_1358
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:label_1356
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_285]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_286]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_278]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x20]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x38]
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 0x44], eax
	mov	al, 1
	call	fprintf
	movabs	rsi, OFFSET FLAT:label_1357
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4109c9
	.globl sub_4109c9
	.type sub_4109c9, @function
sub_4109c9:

	nop	dword ptr [rax]
.label_1362:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_1149
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_1361:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1360:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_1359
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1359:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410a22
	.globl sub_410a22
	.type sub_410a22, @function
sub_410a22:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410a2b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_1360
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1364
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_1360
.label_1364:
	movabs	rdi, OFFSET FLAT:label_1363
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1362
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_312
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1361
	.section	.text
	.align	16
	#Procedure 0x410ac0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1365
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1365:
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
	.align	16
	#Procedure 0x410afd
	.globl sub_410afd
	.type sub_410afd, @function
sub_410afd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410b00

	.globl struct_month_cmp
	.type struct_month_cmp, @function
struct_month_cmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410b39
	.globl sub_410b39
	.type sub_410b39, @function
sub_410b39:

	nop	dword ptr [rax]
.label_1373:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_1369:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_1366
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1366
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_1367
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_1368
.label_1367:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_1368:
	jmp	.label_1366
.label_1366:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410bdd
	.globl sub_410bdd
	.type sub_410bdd, @function
sub_410bdd:

	nop	word ptr cs:[rax + rax]
.label_1374:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_1370
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_1370:
	jmp	.label_1371
.label_1371:
	jmp	.label_1369
	.section	.text
	.align	16
	#Procedure 0x410c15

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_1373
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_1372
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_1374
.label_1372:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1371
	.section	.text
	.align	16
	#Procedure 0x410c70

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
	.align	16
	#Procedure 0x410cd9
	.globl sub_410cd9
	.type sub_410cd9, @function
sub_410cd9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410ce0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410cf2
	.globl sub_410cf2
	.type sub_410cf2, @function
sub_410cf2:

	nop	word ptr cs:[rax + rax]
.label_1377:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1375
	jmp	.label_1378
.label_1378:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1380
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_1379
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1376
.label_1379:
	jmp	.label_1378
.label_1380:
	mov	qword ptr [rbp - 8], 0
.label_1376:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d6b
	.globl sub_410d6b
	.type sub_410d6b, @function
sub_410d6b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410d73
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1375:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1377
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1377
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1376
	.section	.text
	.align	16
	#Procedure 0x410dd0

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
	.align	16
	#Procedure 0x410e03
	.globl sub_410e03
	.type sub_410e03, @function
sub_410e03:

	nop	word ptr cs:[rax + rax]
.label_1387:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x118], rax
.label_1390:
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 0xd
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	mov	rcx, qword ptr [rbp - 0x88]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, qword ptr [rbp - 0x88]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x88]
	sub	rcx, 1
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x120], rax
	jmp	.label_1382
.label_1399:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
.label_1404:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x50]
	add	rsi, 0xd
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb8], rsi
	mov	rsi, rax
	mov	r8, qword ptr [rbp - 0xb8]
	call	mergefiles
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_1405
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1395
.label_1384:
	call	__errno_location
	cmp	dword ptr [rax], 0x18
	jne	.label_1386
	cmp	qword ptr [rbp - 0x88], 2
	ja	.label_1389
.label_1386:
	movabs	rdi, OFFSET FLAT:label_1228
	call	gettext
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	sort_die
.label_1383:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x108], rax
.label_1388:
	mov	rax, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0xa0]
	add	rsi, 0xd
	mov	r9, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x110], rsi
	mov	rsi, rax
	mov	r8, qword ptr [rbp - 0x110]
	call	mergefps
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_1387
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x118], rax
	jmp	.label_1390
.label_1406:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xe8], rax
.label_1396:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 0xd
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
.label_1400:
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_1397
	.section	.text
	.align	16
	#Procedure 0x41107b

	.globl merge
	.type merge, @function
merge:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
.label_1397:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	jae	.label_1398
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
.label_1402:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	ja	.label_1401
	lea	rdi, [rbp - 0x48]
	call	create_temp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	cmp	rdi, rdx
	mov	qword ptr [rbp - 0xa8], rax
	jae	.label_1399
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1404
.label_1405:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xc0], rax
.label_1395:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 0xd
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1402
.label_1394:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xd8], rax
.label_1403:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x70]
	add	rsi, 0xd
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rsi, rax
	mov	r8, qword ptr [rbp - 0xe0]
	call	mergefiles
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_1406
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1396
.label_1401:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	esi, ecx
	mov	qword ptr [rbp - 0xc8], rax
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	rsi
	mov	rsi, qword ptr [rbp - 0xc8]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x40], rsi
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rdx, qword ptr [rbp - 0x38]
	jae	.label_1400
	lea	rdi, [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	call	create_temp
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xd0], rax
	jae	.label_1394
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1403
.label_1385:
	jmp	.label_1391
.label_1391:
	jmp	.label_1381
.label_1381:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	xfclose
	lea	rax, [rbp - 0x98]
	cmp	qword ptr [rbp - 0x88], 2
	setbe	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rbp - 0x98]
	mov	qword ptr [rbp - 0xf8], rax
	call	maybe_create_temp
	mov	qword ptr [rbp - 0xa0], rax
	cmp	qword ptr [rbp - 0xa0], 0
	setne	al
	xor	al, 0xff
	test	al, 1
	jne	.label_1381
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x100], rdi
	jae	.label_1383
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1388
.label_1389:
	jmp	.label_1391
.label_1398:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	avoid_trashing_input
.label_1382:
	lea	rdx, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	open_input_files
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1392
	movabs	rsi, OFFSET FLAT:label_423
	mov	rdi, qword ptr [rbp - 0x20]
	call	stream_open
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_1384
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x80]
	call	mergefps
	jmp	.label_1393
.label_1393:
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4113cd
	.globl sub_4113cd
	.type sub_4113cd, @function
sub_4113cd:

	nop	word ptr cs:[rax + rax]
.label_1392:
	cmp	qword ptr [rbp - 0x88], 2
	ja	.label_1385
	movabs	rdi, OFFSET FLAT:label_1228
	call	gettext
	mov	rdi, qword ptr [rbp - 0x88]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdi]
	mov	rdi, rax
	call	sort_die
	.section	.text
	.align	16
	#Procedure 0x411410

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1148
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 8], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1407
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], eax
	call	exit
	.section	.text
	.align	16
	#Procedure 0x41145a
	.globl sub_41145a
	.type sub_41145a, @function
sub_41145a:

	nop	word ptr [rax + rax]
.label_1411:
	test	byte ptr [rbp - 0x12], 1
	je	.label_1408
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_1408
.label_1410:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	queue_insert
.label_1408:
	jmp	.label_1409
.label_1409:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411491
	.globl sub_411491
	.type sub_411491, @function
sub_411491:

	nop	
	.section	.text
	.align	16
	#Procedure 0x411493

	.globl queue_check_insert
	.type queue_check_insert, @function
queue_check_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	test	byte ptr [rsi + 0x54], 1
	jne	.label_1409
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	sub	rax, rcx
	sar	rax, 5
	cmp	rax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x11], dl
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	sar	rax, 5
	cmp	rax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x12], dl
	test	byte ptr [rbp - 0x11], 1
	je	.label_1411
	test	byte ptr [rbp - 0x12], 1
	jne	.label_1410
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1408
	jmp	.label_1410
.label_1416:
	mov	edi, 0x53
	call	sysconf
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 1
	jne	.label_1412
	call	num_processors_via_affinity_mask
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jbe	.label_1419
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1419:
	jmp	.label_1412
.label_1412:
	cmp	qword ptr [rbp - 0x28], 0
	jle	.label_1418
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1417
	.section	.text
	.align	16
	#Procedure 0x411572

	.globl num_processors_ignoring_omp
	.type num_processors_ignoring_omp, @function
num_processors_ignoring_omp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_1416
	call	num_processors_via_affinity_mask
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_1414
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1417
.label_1418:
	jmp	.label_1413
.label_1413:
	mov	qword ptr [rbp - 8], 1
.label_1417:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4115bf
	.globl sub_4115bf
	.type sub_4115bf, @function
sub_4115bf:

	nop	word ptr [rax + rax]
.label_1414:
	mov	edi, 0x54
	call	sysconf
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_1415
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1417
.label_1415:
	jmp	.label_1413
	.section	.text
	.align	16
	#Procedure 0x4115f0
	.globl rotr16
	.type rotr16, @function
rotr16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411627
	.globl sub_411627
	.type sub_411627, @function
sub_411627:

	nop	word ptr [rax + rax]
.label_1425:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1213]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_1424:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_1421
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1420
.label_1421:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1420:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4116a6
	.globl sub_4116a6
	.type sub_4116a6, @function
sub_4116a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4116b3

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	test	byte ptr [rsi + 0x10], 1
	jne	.label_1424
	movss	xmm0,  dword ptr [dword ptr [rip + label_1422]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm1, rsi
	addss	xmm1, xmm1
	cvtsi2ss	xmm2, rax
	test	rax, rax
	movss	dword ptr [rbp - 0x20], xmm0
	movss	dword ptr [rbp - 0x24], xmm2
	movss	dword ptr [rbp - 0x28], xmm1
	js	.label_1423
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1423:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_1425
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1420
	.section	.text
	.align	16
	#Procedure 0x411750

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movsd	xmm1,  qword ptr [word ptr [rip + label_1426]]
	movsd	qword ptr [rbp - 0x18], xmm0
	movsd	xmm0, qword ptr [rbp - 0x18]
	ucomisd	xmm0, xmm1
	ja	.label_1427
	movabs	rdi, 0x8000000000000000
	xor	eax, eax
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
	jmp	.label_1428
.label_1431:
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	movsd	xmm0,  qword ptr [word ptr [rip + label_1429]]
	cvttsd2si	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	movsd	xmm1, qword ptr [rbp - 0x18]
	cvtsi2sd	xmm2, qword ptr [rbp - 0x20]
	subsd	xmm1, xmm2
	mulsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x28], xmm0
	cvttsd2si	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rdx
	cvtsi2sd	xmm0, qword ptr [rbp - 0x30]
	movsd	xmm1, qword ptr [rbp - 0x28]
	ucomisd	xmm1, xmm0
	seta	sil
	and	sil, 1
	movzx	eax, sil
	movsxd	rdx, eax
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rax, qword ptr [rbp - 0x30]
	cqo	
	idiv	rcx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x30], rdx
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_1430
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x3b9aca00
	mov	qword ptr [rbp - 0x30], rax
.label_1430:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
.label_1428:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41185b
	.globl sub_41185b
	.type sub_41185b, @function
sub_41185b:

	nop	word ptr cs:[rax + rax]
.label_1427:
	movsd	xmm0,  qword ptr [word ptr [rip + label_289]]
	ucomisd	xmm0, qword ptr [rbp - 0x18]
	ja	.label_1431
	movabs	rdi, 0x7fffffffffffffff
	mov	eax, 0x3b9ac9ff
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
	jmp	.label_1428
	.section	.text
	.align	16
	#Procedure 0x4118a0

	.globl queue_insert
	.type queue_insert, @function
queue_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 8
	mov	rdi, rsi
	call	pthread_mutex_lock
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], eax
	call	heap_insert
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 0x54], 1
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0x30
	mov	rdi, rsi
	mov	dword ptr [rbp - 0x18], eax
	call	pthread_cond_signal
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 8
	mov	rdi, rsi
	mov	dword ptr [rbp - 0x1c], eax
	call	pthread_mutex_unlock
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41190a
	.globl sub_41190a
	.type sub_41190a, @function
sub_41190a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411910

	.globl buffer_linelim
	.type buffer_linelim, @function
buffer_linelim:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rdi, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411931
	.globl sub_411931
	.type sub_411931, @function
sub_411931:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411940

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
.label_1441:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_1440
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_1440:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_1435
	jmp	.label_1438
.label_1435:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1441
.label_1438:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_1442
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_1442:
	movabs	rdi, OFFSET FLAT:label_1434
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1136
	movabs	rdx, OFFSET FLAT:label_1137
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
	je	.label_1433
	movabs	rsi, OFFSET FLAT:label_1437
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_1433
	movabs	rdi, OFFSET FLAT:label_1443
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_1433:
	movabs	rdi, OFFSET FLAT:label_1439
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1137
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_1432
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_77
	movabs	rsi, OFFSET FLAT:label_1436
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
	.align	16
	#Procedure 0x411ad9
	.globl sub_411ad9
	.type sub_411ad9, @function
sub_411ad9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411ae0
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
	.align	16
	#Procedure 0x411aff
	.globl sub_411aff
	.type sub_411aff, @function
sub_411aff:

	nop	
.label_1447:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
.label_1446:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1444
	.section	.text
	.align	16
	#Procedure 0x411b11

	.globl find_unit_order
	.type find_unit_order, @function
find_unit_order:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rdi]
	cmp	ecx, 0x2d
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x11], dl
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rbp - 0x11]
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rdi, rsi
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, rax
	call	traverse_raw_number
	mov	ecx, 0x30
	mov	byte ptr [rbp - 0x21], al
	movzx	r8d, byte ptr [rbp - 0x21]
	cmp	ecx, r8d
	jge	.label_1445
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x22], cl
	movzx	edx, byte ptr [rbp - 0x22]
	mov	eax, edx
	movsx	edx,  byte ptr [byte ptr [+ (rax * 1) + unit_order]]
	mov	dword ptr [rbp - 0x28], edx
	test	byte ptr [rbp - 0x11], 1
	je	.label_1447
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_1446
.label_1445:
	mov	dword ptr [rbp - 4], 0
.label_1444:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411baa
	.globl sub_411baa
	.type sub_411baa, @function
sub_411baa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411bb0

	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x20
	mov	ecx, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rsi + 0x18]
	mov	dword ptr [rbp - 0x14], edx
	cmp	dword ptr [rbp - 0x14], 0x38
	cmovb	eax, ecx
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x20], rsi
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	add	eax, dword ptr [rsi + 0x10]
	mov	dword ptr [rsi + 0x10], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x10]
	cmp	eax, dword ptr [rbp - 0x14]
	jae	.label_1448
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	add	ecx, 1
	mov	dword ptr [rax + 0x14], ecx
.label_1448:
	movabs	rsi, OFFSET FLAT:fillbuf_0
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x10]
	shl	ecx, 3
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 2
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rax*4 + 0x1c], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	shl	ecx, 3
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x10]
	shr	edi, 0x1d
	or	ecx, edi
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rax*4 + 0x1c], ecx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x1c
	add	rdx, rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 2
	shl	rax, 2
	mov	ecx, dword ptr [rbp - 0x14]
	mov	r8d, ecx
	sub	rax, r8
	mov	rdi, rdx
	mov	rdx, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x1c
	mov	rdx, qword ptr [rbp - 0x20]
	shl	rdx, 2
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	call	md5_process_block
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	md5_read_ctx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411cc0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1453:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1450
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1452
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_1449:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1451
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1449
.label_1450:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411d39
	.globl sub_411d39
	.type sub_411d39, @function
sub_411d39:

	nop	word ptr [rax + rax]
.label_1451:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1455
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1455:
	jmp	.label_1452
.label_1452:
	jmp	.label_1454
.label_1454:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1453
	.section	.text
	.align	16
	#Procedure 0x411d70

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_1457
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1456
.label_1457:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_1456:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411df8
	.globl sub_411df8
	.type sub_411df8, @function
sub_411df8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411e00

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_1458
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_1459:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
.label_1460:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411e44
	.globl sub_411e44
	.type sub_411e44, @function
sub_411e44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411e50

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
	je	.label_1459
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	jmp	.label_1460
	.section	.text
	.align	16
	#Procedure 0x411e90

	.globl collate_error
	.type collate_error, @function
collate_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_1461
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	esi, dword ptr [rbp - 4]
	mov	rdi, rax
	mov	dword ptr [rbp - 0x2c], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_1462
	call	gettext
	xor	esi, esi
	mov	edi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_1463
	mov	esi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0x30], esi
	call	gettext
	xor	edi, edi
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_n_style_mem
	mov	edi, 1
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style_mem
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411f58
	.globl sub_411f58
	.type sub_411f58, @function
sub_411f58:

	nop	dword ptr [rax + rax]
.label_1466:
	jmp	.label_1464
.label_1465:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411f6b
	.globl sub_411f6b
	.type sub_411f6b, @function
sub_411f6b:

	nop	word ptr [rax + rax]
.label_1470:
	jmp	.label_1464
.label_1464:
	jmp	.label_1468
	.section	.text
	.align	16
	#Procedure 0x411f7e

	.globl mergelines
	.type mergelines, @function
mergelines:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, 1
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 8]
	sub	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 5
	add	rdx, rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_1468:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -0x20
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, -0x20
	mov	rdi, rax
	mov	rsi, rcx
	call	compare
	cmp	eax, 0
	jg	.label_1469
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -0x20
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 8], rcx
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1466
	jmp	.label_1465
.label_1469:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, -0x20
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 8], rcx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jne	.label_1470
	jmp	.label_1467
.label_1467:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -0x20
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 8], rcx
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1467
	jmp	.label_1465
.label_1471:
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
	.align	16
	#Procedure 0x41211a
	.globl sub_41211a
	.type sub_41211a, @function
sub_41211a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412126

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
	jne	.label_1471
	call	abort
	.section	.text
	.align	16
	#Procedure 0x412160

	.globl sortlines_thread
	.type sortlines_thread, @function
sortlines_thread:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rsp], rax
	call	sortlines
	xor	r10d, r10d
	mov	eax, r10d
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4121c0
	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_1472
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1473
.label_1475:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_1473:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412200
	.globl sub_412200
	.type sub_412200, @function
sub_412200:

	nop	word ptr cs:[rax + rax]
.label_1474:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_1475
	cmp	qword ptr [rbp - 0x20], 0x77359400
	jg	.label_1475
	jmp	.label_1475
.label_1476:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x10]
	jg	.label_1474
	cmp	qword ptr [rbp - 0x10], 0x77359400
	jg	.label_1474
	jmp	.label_1474
.label_1472:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_1476
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1473
.label_1479:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
.label_1478:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [get_outstatus.outstat_errno]],  eax
.label_1477:
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:get_outstatus.outstat
	cmp	dword ptr [dword ptr [get_outstatus.outstat_errno]],  0
	cmovl	rcx, rdx
	mov	rax, rcx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4122a7
	.globl sub_4122a7
	.type sub_4122a7, @function
sub_4122a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4122b0

	.globl get_outstatus
	.type get_outstatus, @function
get_outstatus:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	cmp	dword ptr [dword ptr [get_outstatus.outstat_errno]],  0
	jne	.label_1477
	mov	edi, 1
	movabs	rsi, OFFSET FLAT:get_outstatus.outstat
	call	fstat
	cmp	eax, 0
	jne	.label_1479
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1478
	.section	.text
	.align	16
	#Procedure 0x4122f0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41230a
	.globl sub_41230a
	.type sub_41230a, @function
sub_41230a:

	nop	word ptr [rax + rax]
.label_1481:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1482:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41231e
	.globl sub_41231e
	.type sub_41231e, @function
sub_41231e:

	nop	dword ptr [rax]
.label_1486:
	jmp	.label_1483
.label_1483:
	jmp	.label_1485
.label_1485:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1487
	.section	.text
	.align	16
	#Procedure 0x412340
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1487:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1481
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1483
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1480:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1486
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1484
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1482
.label_1484:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1480
.label_1492:
	movabs	rdi, OFFSET FLAT:label_1488
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_1491:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote
	mov	edi, dword ptr [rbp - 0xc]
	mov	esi, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1490:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x41241d
	.globl sub_41241d
	.type sub_41241d, @function
sub_41241d:

	nop	
	.section	.text
	.align	16
	#Procedure 0x41241f

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_1490
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], edi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_1492
	movabs	rdi, OFFSET FLAT:label_1489
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1491
	.section	.text
	.align	16
	#Procedure 0x412470

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4124a9
	.globl sub_4124a9
	.type sub_4124a9, @function
sub_4124a9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4124b0
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
	.align	16
	#Procedure 0x4124c6
	.globl sub_4124c6
	.type sub_4124c6, @function
sub_4124c6:

	nop	word ptr cs:[rax + rax]
.label_1495:
	jmp	.label_1493
.label_1493:
	jmp	.label_1494
.label_1494:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1496:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4124ec
	.globl sub_4124ec
	.type sub_4124ec, @function
sub_4124ec:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4124ed

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1494
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_1493
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_1493
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_1498
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x34], eax
	mov	dword ptr [rbp - 0x38], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1496
.label_1498:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_1497
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1495
.label_1497:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1496
	.section	.text
	.align	16
	#Procedure 0x4125e0

	.globl default_key_compare
	.type default_key_compare, @function
default_key_compare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x20], 0
	mov	byte ptr [rbp - 9], al
	jne	.label_1499
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x28], 0
	mov	byte ptr [rbp - 9], al
	jne	.label_1499
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x30], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_1499
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x31], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_1499
	mov	rdi, qword ptr [rbp - 8]
	call	key_numeric
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 9], cl
	jne	.label_1499
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x36], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_1499
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x38], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_1499
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x33]
	mov	byte ptr [rbp - 9], cl
.label_1499:
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412690
	.globl rotl8
	.type rotl8, @function
rotl8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4126c6
	.globl sub_4126c6
	.type sub_4126c6, @function
sub_4126c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4126d0

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	dword ptr [rdx + 0x18], 0
	je	.label_1502
	mov	eax, 0x80
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 0x18]
	mov	edx, eax
	mov	qword ptr [rbp - 0x20], rdx
	sub	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x10]
	jbe	.label_1510
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1504
.label_1507:
	jmp	.label_1500
.label_1501:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	and	rax, 0xffffffffffffffc0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	md5_process_block
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	and	rdx, 0xffffffffffffffc0
	add	rax, rdx
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	and	rax, 0x3f
	mov	qword ptr [rbp - 0x10], rax
.label_1500:
	jmp	.label_1506
.label_1506:
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_1508
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x1c
	add	rdx, rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rdx
	mov	rdx, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0x40
	jb	.label_1505
	mov	eax, 0x40
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x1c
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	call	md5_process_block
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, 0x40
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x1c
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x1c
	add	rdx, 0x40
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x50], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
.label_1505:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x18], ecx
.label_1508:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412818
	.globl sub_412818
	.type sub_412818, @function
sub_412818:

	nop	dword ptr [rax + rax]
.label_1510:
	mov	eax, 0x80
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rcx
.label_1504:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x1c
	add	rcx, rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rcx + 0x18]
	mov	edx, r8d
	add	rdx, rax
	mov	r8d, edx
	mov	dword ptr [rcx + 0x18], r8d
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x18], 0x40
	jbe	.label_1503
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x1c
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xffffffc0
	mov	edx, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	md5_process_block
	mov	rax, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rax + 0x18]
	and	r8d, 0x3f
	mov	dword ptr [rax + 0x18], r8d
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x1c
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x28]
	and	rcx, 0xffffffffffffffc0
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x1c
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rcx + 0x18]
	mov	ecx, r8d
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
.label_1503:
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
.label_1502:
	cmp	qword ptr [rbp - 0x10], 0x40
	jb	.label_1506
	mov	rax, qword ptr [rbp - 8]
	and	rax, 3
	cmp	rax, 0
	je	.label_1501
	jmp	.label_1509
.label_1509:
	cmp	qword ptr [rbp - 0x10], 0x40
	jbe	.label_1507
	mov	eax, 0x40
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x1c
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x48], rcx
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	call	md5_process_block
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x40
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_1509
	.section	.text
	.align	16
	#Procedure 0x412980

	.globl nan_compare
	.type nan_compare, @function
nan_compare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x30]
	lea	rcx, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rdi, qword ptr [rbp - 8]
	xor	edx, edx
	mov	esi, edx
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], rax
	movaps	xmmword ptr [rbp - 0x60], xmm0
	call	strtold
	fstp	xword ptr [rbp - 0x20]
	movaps	xmm0, xmmword ptr [rbp - 0x60]
	movaps	xmmword ptr [rbp - 0x30], xmm0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	strtold
	fstp	xword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	edx, 0x10
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4129f5
	.globl sub_4129f5
	.type sub_4129f5, @function
sub_4129f5:

	nop	word ptr cs:[rax + rax]
.label_1529:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:label_1511
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x54]
	cmp	ecx, eax
	jne	.label_1518
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1516
.label_1512:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1524
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1524
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1516
.label_1531:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_1529
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1516
.label_1518:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_1511
	mov	edi, ecx
	mov	dword ptr [rbp - 0x58], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x58]
	cmp	ecx, eax
	jne	.label_1514
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1516
.label_1514:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:label_1521
	mov	edi, ecx
	mov	dword ptr [rbp - 0x5c], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x5c]
	cmp	ecx, eax
	jne	.label_1527
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1516
	.section	.text
	.align	16
	#Procedure 0x412ac9

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	strcmp
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_1530
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1516
.label_1522:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1512
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1512
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1516
.label_1524:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1525
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1525
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_1525:
	lea	rdi, [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	call	match_suffix
	lea	rdi, [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	call	match_suffix
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1515
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1520
.label_1530:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_1531
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1516
.label_1523:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
.label_1513:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1528
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1517
.label_1528:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_1517
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	strncmp
	xor	ecx, ecx
	cmp	ecx, eax
	jne	.label_1517
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
.label_1517:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	call	verrevcmp
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_1526
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_1519
.label_1515:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
.label_1520:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1523
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1513
.label_1527:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_1521
	mov	edi, ecx
	mov	dword ptr [rbp - 0x60], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x60]
	cmp	ecx, eax
	jne	.label_1522
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1516
.label_1526:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x74], eax
.label_1519:
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 4], eax
.label_1516:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412cd5
	.globl sub_412cd5
	.type sub_412cd5, @function
sub_412cd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412ce0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412cfe
	.globl sub_412cfe
	.type sub_412cfe, @function
sub_412cfe:

	nop	
.label_1548:
	jmp	.label_1532
.label_1540:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
.label_1536:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412d23
	.globl sub_412d23
	.type sub_412d23, @function
sub_412d23:

	nop	word ptr cs:[rax + rax]
.label_1551:
	jmp	.label_1547
.label_1547:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x35], cl
	jae	.label_1549
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x35], al
.label_1549:
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	jne	.label_1534
	jmp	.label_1548
.label_1534:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1547
	.section	.text
	.align	16
	#Procedure 0x412d8a

	.globl begfield
	.type begfield, @function
begfield:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 8]
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x30], rsi
	cmp	dword ptr [dword ptr [tab]],  0x80
	je	.label_1556
	jmp	.label_1552
.label_1552:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x31], cl
	jae	.label_1554
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x31], dl
.label_1554:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_1558
	jmp	.label_1561
.label_1558:
	jmp	.label_1553
.label_1553:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x32], cl
	jae	.label_1555
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [tab]]
	setne	dl
	mov	byte ptr [rbp - 0x32], dl
.label_1555:
	mov	al, byte ptr [rbp - 0x32]
	test	al, 1
	jne	.label_1557
	jmp	.label_1560
.label_1557:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1553
.label_1561:
	jmp	.label_1535
.label_1560:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1559
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_1559:
	jmp	.label_1552
.label_1541:
	jmp	.label_1535
.label_1535:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x30], 1
	je	.label_1533
	jmp	.label_1542
.label_1542:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x36], cl
	jae	.label_1546
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x36], al
.label_1546:
	mov	al, byte ptr [rbp - 0x36]
	test	al, 1
	jne	.label_1539
	jmp	.label_1543
.label_1539:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1542
.label_1543:
	jmp	.label_1533
.label_1533:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, rcx
	jae	.label_1540
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1536
.label_1556:
	jmp	.label_1532
.label_1532:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x33], cl
	jae	.label_1545
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x33], dl
.label_1545:
	mov	al, byte ptr [rbp - 0x33]
	test	al, 1
	jne	.label_1538
	jmp	.label_1541
.label_1538:
	jmp	.label_1544
.label_1544:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x34], cl
	jae	.label_1537
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x34], al
.label_1537:
	mov	al, byte ptr [rbp - 0x34]
	test	al, 1
	jne	.label_1550
	jmp	.label_1551
.label_1550:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1544
	.section	.text
	.align	16
	#Procedure 0x412fc0

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
.label_1568:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1564
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1567
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1565
.label_1563:
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
	.align	16
	#Procedure 0x413063
	.globl sub_413063
	.type sub_413063, @function
sub_413063:

	nop	dword ptr [rax]
.label_1567:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1565:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_1564:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_1562
	jmp	.label_1563
.label_1562:
	jmp	.label_1566
.label_1566:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1568
	.section	.text
	.align	16
	#Procedure 0x4130d0

	.globl free_entry
	.type free_entry, @function
free_entry:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x48], rsi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413105
	.globl sub_413105
	.type sub_413105, @function
sub_413105:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413110

	.globl key_warnings
	.type key_warnings, @function
key_warnings:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1e0
	mov	al, sil
	mov	esi, 0x48
	mov	edx, esi
	lea	rcx, [rbp - 0x60]
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x148], rdi
	mov	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x148]
	call	memcpy
	mov	qword ptr [rbp - 0x68], 1
	mov	rcx,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x18], rcx
.label_1588:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1583
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x39], 1
	je	.label_1591
	lea	rax, [rbp - 0xf0]
	lea	rcx, [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 0xf8], rcx
	mov	qword ptr [rbp - 0x100], rax
	cmp	qword ptr [rbp - 0x70], -1
	jne	.label_1590
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
.label_1590:
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	eax, OFFSET FLAT:label_1596
	mov	ecx, eax
	mov	qword ptr [rbp - 0x150], rsi
	mov	rsi, rcx
	call	stpcpy
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x158], rax
	call	umaxtostr
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x160], rsi
	mov	rsi, rax
	call	stpcpy
	mov	qword ptr [rbp - 0xf8], rax
	mov	rdi, qword ptr [rbp - 0x100]
	mov	edx, OFFSET FLAT:label_1574
	mov	esi, edx
	call	stpcpy
	mov	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	mov	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0x168], rax
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rsi, rax
	call	stpcpy
	mov	qword ptr [rbp - 0x100], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], -1
	je	.label_1584
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	eax, OFFSET FLAT:label_1589
	mov	ecx, eax
	mov	qword ptr [rbp - 0x170], rsi
	mov	rsi, rcx
	call	stpcpy
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	mov	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x178], rax
	call	umaxtostr
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x180], rsi
	mov	rsi, rax
	call	stpcpy
	mov	rdi, qword ptr [rbp - 0x100]
	mov	edx, OFFSET FLAT:label_1600
	mov	esi, edx
	mov	qword ptr [rbp - 0x188], rax
	call	stpcpy
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 0x18], -1
	sete	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x190], rax
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x190]
	mov	rsi, rax
	call	stpcpy
	mov	qword ptr [rbp - 0x198], rax
.label_1584:
	movabs	rdi, OFFSET FLAT:label_1578
	call	gettext
	xor	edi, edi
	lea	rsi, [rbp - 0xc0]
	mov	qword ptr [rbp - 0x1a0], rax
	call	quote_n
	mov	edi, 1
	lea	rsi, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x1a8], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x1ac], edi
	mov	esi, dword ptr [rbp - 0x1ac]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rcx, qword ptr [rbp - 0x1a8]
	mov	r8, rax
	mov	al, 0
	call	error
.label_1591:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], -1
	mov	byte ptr [rbp - 0x1ad], cl
	je	.label_1592
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	setb	dl
	mov	byte ptr [rbp - 0x1ad], dl
.label_1592:
	mov	al, byte ptr [rbp - 0x1ad]
	and	al, 1
	mov	byte ptr [rbp - 0x101], al
	test	byte ptr [rbp - 0x101], 1
	je	.label_1599
	movabs	rdi, OFFSET FLAT:label_1605
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x1b8], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x1b8]
	mov	al, 0
	call	error
.label_1599:
	mov	rdi, qword ptr [rbp - 0x18]
	call	key_numeric
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x1b9], cl
	jne	.label_1575
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x36]
	mov	byte ptr [rbp - 0x1b9], cl
.label_1575:
	mov	al, byte ptr [rbp - 0x1b9]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x102], al
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 0x10], 0
	mov	byte ptr [rbp - 0x1ba], dl
	jne	.label_1579
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x18], 0
	setne	cl
	mov	byte ptr [rbp - 0x1ba], cl
.label_1579:
	mov	al, byte ptr [rbp - 0x1ba]
	and	al, 1
	mov	byte ptr [rbp - 0x103], al
	test	byte ptr [rbp - 0x101], 1
	jne	.label_1570
	test	byte ptr [rbp - 9], 1
	jne	.label_1570
	cmp	dword ptr [dword ptr [tab]],  0x80
	jne	.label_1570
	test	byte ptr [rbp - 0x103], 1
	jne	.label_1570
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x30], 1
	jne	.label_1595
	test	byte ptr [rbp - 0x102], 1
	je	.label_1597
.label_1595:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x30], 1
	jne	.label_1602
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1597
.label_1602:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x31], 1
	jne	.label_1570
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1570
.label_1597:
	movabs	rdi, OFFSET FLAT:label_1573
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x1c8], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	al, 0
	call	error
.label_1570:
	test	byte ptr [rbp - 9], 1
	jne	.label_1580
	mov	rdi, qword ptr [rbp - 0x18]
	call	key_numeric
	test	al, 1
	jne	.label_1582
	jmp	.label_1580
.label_1582:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x118], rax
	cmp	qword ptr [rbp - 0x110], 0
	jne	.label_1587
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
.label_1587:
	cmp	qword ptr [rbp - 0x118], 0
	je	.label_1593
	mov	rax, qword ptr [rbp - 0x110]
	cmp	rax, qword ptr [rbp - 0x118]
	jae	.label_1581
.label_1593:
	movabs	rdi, OFFSET FLAT:label_1598
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x1d0], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x1d0]
	mov	al, 0
	call	error
.label_1581:
	jmp	.label_1580
.label_1580:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1571
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1571
	mov	qword ptr [rbp - 0x40], 0
.label_1571:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1576
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x28]
	jne	.label_1576
	mov	qword ptr [rbp - 0x38], 0
.label_1576:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x30]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x30]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x30], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x31]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2f]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2f], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x36]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2a]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2a], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x32]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2e]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2e], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x34]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2c]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2c], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x35]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2b]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2b], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x33]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2d]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2d], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x38]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x28]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x28], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x37]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x29]
	and	cl, 1
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x29], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1588
.label_1583:
	lea	rdi, [rbp - 0x60]
	call	default_key_compare
	test	al, 1
	jne	.label_1577
	jmp	.label_1601
.label_1577:
	test	byte ptr [rbp - 0x29], 1
	je	.label_1569
	test	byte ptr [byte ptr [stable]],  1
	jne	.label_1604
	test	byte ptr [byte ptr [unique]],  1
	je	.label_1569
.label_1604:
	cmp	qword ptr [word ptr [keylist]],  0
	je	.label_1569
.label_1601:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x119], al
	test	byte ptr [byte ptr [stable]],  1
	jne	.label_1572
	test	byte ptr [byte ptr [unique]],  1
	jne	.label_1572
	mov	byte ptr [rbp - 0x29], 0
.label_1572:
	lea	rdi, [rbp - 0x60]
	lea	rsi, [rbp - 0x140]
	call	key_to_opts
	lea	rdi, [rbp - 0x140]
	call	strlen
	mov	rdi, rax
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_1585
	movabs	rsi, OFFSET FLAT:label_1586
	mov	rdx, rax
	call	ngettext
	xor	ecx, ecx
	lea	rdx, [rbp - 0x140]
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x1d8], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x1d8]
	mov	al, 0
	call	error
	mov	al, byte ptr [rbp - 0x119]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
.label_1569:
	test	byte ptr [rbp - 0x29], 1
	je	.label_1594
	test	byte ptr [byte ptr [stable]],  1
	jne	.label_1594
	test	byte ptr [byte ptr [unique]],  1
	jne	.label_1594
	cmp	qword ptr [word ptr [keylist]],  0
	je	.label_1594
	movabs	rdi, OFFSET FLAT:label_1603
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_1594:
	add	rsp, 0x1e0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41390c
	.globl sub_41390c
	.type sub_41390c, @function
sub_41390c:

	nop	dword ptr [rax]
.label_1609:
	jmp	.label_1606
.label_1606:
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1607
.label_1607:
	jmp	.label_1608
.label_1608:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413935
	.globl sub_413935
	.type sub_413935, @function
sub_413935:

	nop	word ptr cs:[rax + rax]
.label_1616:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x77
	jne	.label_1612
	cmp	qword ptr [rbp - 8], 0
	je	.label_1606
	mov	edi, 1
	xor	eax, eax
	mov	esi, eax
	call	ftruncate
	cmp	eax, 0
	je	.label_1606
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], ecx
	call	get_outstatus
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1611
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_1611
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1609
.label_1611:
	movabs	rdi, OFFSET FLAT:label_1610
	mov	esi, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style_colon
	mov	edi, 2
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1619:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x10]
	call	fdopen
	mov	qword ptr [rbp - 0x30], rax
.label_1617:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
.label_1618:
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x18]
	call	fadvise
	jmp	.label_1608
.label_1620:
	mov	esi, 0x80000
	mov	rdi, qword ptr [rbp - 8]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_1619
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1617
.label_1612:
	movabs	rdi, OFFSET FLAT:label_1613
	movabs	rsi, OFFSET FLAT:label_1614
	mov	edx, 0x3d6
	movabs	rcx, OFFSET FLAT:label_1615
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x413a7e

	.globl stream_open
	.type stream_open, @function
stream_open:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rsi]
	cmp	eax, 0x72
	jne	.label_1616
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:label_65
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1620
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1618
	.section	.text
	.align	16
	#Procedure 0x413ad0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1621
	mov	qword ptr [rbp - 8], 0xa
.label_1621:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1625:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_1624
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_1624:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_1622
	jmp	.label_1623
.label_1622:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1625
.label_1623:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413b4c
	.globl sub_413b4c
	.type sub_413b4c, @function
sub_413b4c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413b50

	.globl xstrxfrm
	.type xstrxfrm, @function
xstrxfrm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	strxfrm
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1629
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_1626
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_1628
	call	gettext
	xor	esi, esi
	mov	edi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_1627
	call	gettext
	xor	edi, edi
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_n_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_1629:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413c19
	.globl sub_413c19
	.type sub_413c19, @function
sub_413c19:

	nop	dword ptr [rax]
.label_1630:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x30], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413c6a
	.globl sub_413c6a
	.type sub_413c6a, @function
sub_413c6a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413c74

	.globl initbuf
	.type initbuf, @function
initbuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1631:
	mov	eax, 0x20
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	and	rdx, 0x1f
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	malloc
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_1633
	jmp	.label_1630
.label_1633:
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_1632
	call	xalloc_die
.label_1632:
	jmp	.label_1631
	.section	.text
	.align	16
	#Procedure 0x413cf0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413d22
	.globl sub_413d22
	.type sub_413d22, @function
sub_413d22:

	nop	word ptr cs:[rax + rax]
.label_1640:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_1634
	call	abort
.label_1641:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1647
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1647:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1645:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1422]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_1642
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1638
.label_1637:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1638:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413e30
	.globl sub_413e30
	.type sub_413e30, @function
sub_413e30:

	nop	word ptr cs:[rax + rax]
.label_1642:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1213]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_1640
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1638
.label_1648:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1646
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1646:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1649
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1649:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1639
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1650
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1650:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1643
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1643:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_1635
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_1641
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1652
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1652:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1645
.label_1651:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_1648
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1644
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1644:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1638
.label_1634:
	jmp	.label_1635
.label_1635:
	jmp	.label_1639
.label_1639:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1637
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1636
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1638
	.section	.text
	.align	16
	#Procedure 0x414166

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1651
	call	abort
.label_1636:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1638
	.section	.text
	.align	16
	#Procedure 0x4141d0

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
	.align	16
	#Procedure 0x414227
	.globl sub_414227
	.type sub_414227, @function
sub_414227:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414230

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
	.align	16
	#Procedure 0x414262
	.globl sub_414262
	.type sub_414262, @function
sub_414262:

	nop	word ptr cs:[rax + rax]
.label_1653:
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1655
.label_1655:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x10]
	call	rax
	jmp	.label_1657
.label_1654:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_1653
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1655
.label_1656:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4142c7
	.globl sub_4142c7
	.type sub_4142c7, @function
sub_4142c7:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4142d6

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1657:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	call	fread_unlocked
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	r8d, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], r8d
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1654
	jmp	.label_1656
	.section	.text
	.align	16
	#Procedure 0x414340

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
	.align	16
	#Procedure 0x41436c
	.globl sub_41436c
	.type sub_41436c, @function
sub_41436c:

	nop	dword ptr [rax]
.label_1660:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1658
.label_1658:
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
	je	.label_1659
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1659:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414493
	.globl sub_414493
	.type sub_414493, @function
sub_414493:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41449f

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
	je	.label_1660
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1658
.label_1661:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x25], dl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x26], dl
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 1
	mov	rsi, rax
	call	strcoll_loop
	mov	dword ptr [rbp - 0x24], eax
	mov	r8b, byte ptr [rbp - 0x25]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + rcx], r8b
	mov	r8b, byte ptr [rbp - 0x26]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], r8b
.label_1662:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414550
	.globl sub_414550
	.type sub_414550, @function
sub_414550:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414559

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 0x20]
	jne	.label_1661
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	memcmp
	cmp	eax, 0
	jne	.label_1661
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	dword ptr [rbp - 0x24], 0
	jmp	.label_1662
	.section	.text
	.align	16
	#Procedure 0x4145b0

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
	jae	.label_1663
	jmp	.label_1666
.label_1666:
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
	jne	.label_1666
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1665
.label_1663:
	jmp	.label_1664
.label_1664:
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
	jne	.label_1664
	jmp	.label_1665
.label_1665:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4146a7
	.globl sub_4146a7
	.type sub_4146a7, @function
sub_4146a7:

	nop	word ptr [rax + rax]
.label_1668:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4146ba
	.globl sub_4146ba
	.type sub_4146ba, @function
sub_4146ba:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4146c4

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
	jb	.label_1667
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1668
.label_1667:
	call	xalloc_die
.label_1671:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1674
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1674
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax]
	sub	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1669
.label_1672:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	cmp	edx, 9
	setbe	sil
	and	sil, 1
	movzx	edx, sil
	sub	eax, edx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1669
.label_1682:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1669
.label_1681:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1675
	jmp	.label_1680
.label_1678:
	jmp	.label_1683
.label_1683:
	jmp	.label_1684
.label_1684:
	mov	dword ptr [rbp - 4], 0
.label_1669:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4147bf
	.globl sub_4147bf
	.type sub_4147bf, @function
sub_4147bf:

	nop	word ptr cs:[rax + rax]
.label_1675:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1669
.label_1685:
	jmp	.label_1676
.label_1686:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_1678
	jmp	.label_1680
.label_1680:
	jmp	.label_1670
.label_1670:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_1672
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1670
.label_1674:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1681
	jmp	.label_1677
.label_1673:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_1686
	jmp	.label_1677
.label_1677:
	jmp	.label_1679
.label_1679:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_1682
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1679
	.section	.text
	.align	16
	#Procedure 0x414887

	.globl fraccompare
	.type fraccompare, @function
fraccompare:
	push	rbp
	mov	rbp, rsp
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rsi]
	movsx	ecx, byte ptr [rbp - 0x19]
	cmp	edx, ecx
	jne	.label_1673
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x19]
	cmp	ecx, edx
	jne	.label_1673
	jmp	.label_1676
.label_1676:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	esi, byte ptr [rax + 1]
	cmp	edx, esi
	jne	.label_1671
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_1685
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1669
.label_1690:
	jmp	.label_1687
.label_1687:
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
	jne	.label_1688
	jmp	.label_1691
.label_1688:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_1687
.label_1691:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1689:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414987
	.globl sub_414987
	.type sub_414987, @function
sub_414987:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414996

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
	jne	.label_1690
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1689
	.section	.text
	.align	16
	#Procedure 0x4149d0

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1692
	jmp	.label_1694
.label_1694:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1693
.label_1692:
	mov	byte ptr [rbp - 1], 0
.label_1693:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414a02
	.globl sub_414a02
	.type sub_414a02, @function
sub_414a02:

	nop	word ptr cs:[rax + rax]
.label_1711:
	fld	xword ptr [rbp - 0x40]
	fld	xword ptr [rbp - 0x50]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_1698
	jmp	.label_1706
.label_1706:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1708
	.section	.text
	.align	16
	#Procedure 0x414a32

	.globl general_numcompare
	.type general_numcompare, @function
general_numcompare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rbp - 0x20]
	call	strtold
	fstp	xword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rbp - 0x28]
	call	strtold
	fstp	xword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rbp - 0x20]
	jne	.label_1712
	mov	eax, 0xffffffff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x28]
	cmove	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1710
.label_1705:
	fld	xword ptr [rbp - 0x40]
	fucomip	st(0)
	jp	.label_1696
	jmp	.label_1701
.label_1701:
	mov	eax, 1
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_1704
.label_1712:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1711
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1710
.label_1698:
	fld	xword ptr [rbp - 0x40]
	fld	xword ptr [rbp - 0x50]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_1695
	jmp	.label_1700
.label_1700:
	mov	eax, 1
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_1703
.label_1699:
	fld	xword ptr [rbp - 0x50]
	fucomip	st(0)
	jp	.label_1705
	jmp	.label_1707
.label_1707:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1709
.label_1696:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	nan_compare
	mov	dword ptr [rbp - 0x64], eax
.label_1704:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x60], eax
.label_1709:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x5c], eax
.label_1702:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x58], eax
.label_1703:
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x54], eax
.label_1708:
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
.label_1710:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
.label_1695:
	fld	xword ptr [rbp - 0x40]
	fld	xword ptr [rbp - 0x50]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_1699
	jnp	.label_1697
	jmp	.label_1699
.label_1697:
	xor	eax, eax
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1702
	.section	.text
	.align	16
	#Procedure 0x414b60

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
	je	.label_1713
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
.label_1713:
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
	.align	16
	#Procedure 0x414cc4
	.globl sub_414cc4
	.type sub_414cc4, @function
sub_414cc4:

	nop	word ptr cs:[rax + rax]
.label_1718:
	jmp	.label_1714
.label_1714:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414cdb
	.globl sub_414cdb
	.type sub_414cdb, @function
sub_414cdb:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414ce2

	.globl xfclose
	.type xfclose, @function
xfclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	mov	ecx, eax
	test	eax, eax
	mov	dword ptr [rbp - 0x14], ecx
	je	.label_1715
	jmp	.label_1717
.label_1717:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 1
	mov	dword ptr [rbp - 0x18], eax
	je	.label_1719
	jmp	.label_1722
.label_1722:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_1718
	movabs	rdi, OFFSET FLAT:label_1258
	call	gettext
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	sort_die
.label_1719:
	mov	rdi, qword ptr [rbp - 8]
	call	fflush_unlocked
	cmp	eax, 0
	je	.label_1721
	movabs	rdi, OFFSET FLAT:label_1720
	call	gettext
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	sort_die
.label_1715:
	mov	rdi, qword ptr [rbp - 8]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_1716
	mov	rdi, qword ptr [rbp - 8]
	call	clearerr_unlocked
.label_1716:
	jmp	.label_1714
.label_1721:
	jmp	.label_1714
	.section	.text
	.align	16
	#Procedure 0x414da0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_1723]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_1724]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414dcf
	.globl sub_414dcf
	.type sub_414dcf, @function
sub_414dcf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x414dd0

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
	je	.label_1725
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1726
.label_1725:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
.label_1726:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
.label_1769:
	jmp	.label_1764
.label_1764:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3b], al
	je	.label_1766
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3b], cl
.label_1766:
	mov	al, byte ptr [rbp - 0x3b]
	test	al, 1
	jne	.label_1764
	jmp	.label_1774
.label_1774:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x3c], cl
	jne	.label_1776
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x3c], cl
.label_1776:
	mov	al, byte ptr [rbp - 0x3c]
	test	al, 1
	jne	.label_1783
	jmp	.label_1785
.label_1783:
	jmp	.label_1786
.label_1786:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1786
	jmp	.label_1792
.label_1792:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1792
	jmp	.label_1774
.label_1752:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1793
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1730
.label_1796:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	jne	.label_1782
	jmp	.label_1762
.label_1762:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3d], al
	je	.label_1763
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3d], cl
.label_1763:
	mov	al, byte ptr [rbp - 0x3d]
	test	al, 1
	jne	.label_1762
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1772
	jmp	.label_1791
.label_1791:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_1791
	jmp	.label_1772
.label_1772:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1784
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1730
.label_1794:
	jmp	.label_1789
.label_1789:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3a], al
	je	.label_1790
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3a], cl
.label_1790:
	mov	al, byte ptr [rbp - 0x3a]
	test	al, 1
	jne	.label_1795
	jmp	.label_1800
.label_1795:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_1789
.label_1782:
	jmp	.label_1754
.label_1754:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3f], al
	je	.label_1756
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3f], cl
.label_1756:
	mov	al, byte ptr [rbp - 0x3f]
	test	al, 1
	jne	.label_1765
	jmp	.label_1767
.label_1765:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_1754
.label_1728:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1736
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1730
.label_1793:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1730
.label_1800:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1787
	jmp	.label_1771
.label_1771:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_1771
	jmp	.label_1787
.label_1787:
	xor	eax, eax
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1730
.label_1773:
	movzx	eax, byte ptr [rbp - 0x22]
	movzx	ecx, byte ptr [rbp - 0x21]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_1760:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1799
	jmp	.label_1751
.label_1751:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1751
	jmp	.label_1761
.label_1761:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1760
.label_1734:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1748
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1729
.label_1748:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1742
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_1742
.label_1729:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1730
.label_1755:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1778
	jmp	.label_1781
.label_1781:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_1781
	jmp	.label_1778
.label_1778:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1730
.label_1784:
	jmp	.label_1757
.label_1757:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3e], al
	je	.label_1797
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3e], cl
.label_1797:
	mov	al, byte ptr [rbp - 0x3e]
	test	al, 1
	jne	.label_1753
	jmp	.label_1755
.label_1753:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_1757
.label_1744:
	mov	qword ptr [rbp - 0x38], 0
.label_1735:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1745
	jmp	.label_1732
.label_1732:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1732
	jmp	.label_1746
.label_1746:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1735
.label_1736:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_1730:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415295
	.globl sub_415295
	.type sub_415295, @function
sub_415295:

	nop	word ptr cs:[rax + rax]
.label_1767:
	jmp	.label_1740
.label_1740:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x40], al
	je	.label_1743
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x40], cl
.label_1743:
	mov	al, byte ptr [rbp - 0x40]
	test	al, 1
	jne	.label_1731
	jmp	.label_1738
.label_1731:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_1740
.label_1742:
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_1750:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1744
	jmp	.label_1733
.label_1733:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1733
	jmp	.label_1747
.label_1747:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1750
.label_1785:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1768
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1770
.label_1768:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1773
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_1773
.label_1770:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1730
.label_1799:
	mov	qword ptr [rbp - 0x38], 0
.label_1780:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1788
	jmp	.label_1779
.label_1779:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1779
	jmp	.label_1798
.label_1798:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1780
.label_1788:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_1752
	mov	eax, 0xffffffff
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1730
.label_1745:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_1728
	mov	eax, 1
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1730
.label_1738:
	jmp	.label_1739
.label_1739:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_1741
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x41], cl
.label_1741:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_1727
	jmp	.label_1734
.label_1727:
	jmp	.label_1737
.label_1737:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1737
	jmp	.label_1749
.label_1749:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1749
	jmp	.label_1739
	.section	.text
	.align	16
	#Procedure 0x4154e5

	.globl numcompare_0
	.type numcompare_0, @function
numcompare_0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	dword ptr [rbp - 0x20], ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi]
	mov	byte ptr [rbp - 0x21], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rsi]
	mov	byte ptr [rbp - 0x22], al
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x2d
	jne	.label_1796
	jmp	.label_1758
.label_1758:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x39], al
	je	.label_1759
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_1759:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_1758
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	je	.label_1769
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1777
	jmp	.label_1775
.label_1775:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_1775
	jmp	.label_1777
.label_1777:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1794
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1730
.label_1801:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
.label_1804:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rax
.label_1802:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4155de
	.globl sub_4155de
	.type sub_4155de, @function
sub_4155de:

	nop	word ptr [rax + rax]
.label_1823:
	jmp	.label_1814
.label_1814:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x33], cl
	jae	.label_1816
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x33], dl
.label_1816:
	mov	al, byte ptr [rbp - 0x33]
	test	al, 1
	jne	.label_1808
	jmp	.label_1813
.label_1808:
	jmp	.label_1803
.label_1803:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x34], cl
	jae	.label_1819
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x34], al
.label_1819:
	mov	al, byte ptr [rbp - 0x34]
	test	al, 1
	jne	.label_1810
	jmp	.label_1818
.label_1810:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1803
.label_1811:
	jmp	.label_1805
.label_1805:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, rcx
	jae	.label_1801
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1804
	.section	.text
	.align	16
	#Procedure 0x4156a4

	.globl limfield
	.type limfield, @function
limfield:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 8]
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1824
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1824:
	cmp	dword ptr [dword ptr [tab]],  0x80
	je	.label_1823
	jmp	.label_1829
.label_1829:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x31], cl
	jae	.label_1831
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x31], dl
.label_1831:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_1826
	jmp	.label_1828
.label_1826:
	jmp	.label_1825
.label_1825:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x32], cl
	jae	.label_1833
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [tab]]
	setne	dl
	mov	byte ptr [rbp - 0x32], dl
.label_1833:
	mov	al, byte ptr [rbp - 0x32]
	test	al, 1
	jne	.label_1832
	jmp	.label_1827
.label_1832:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1825
.label_1818:
	jmp	.label_1815
.label_1815:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x35], cl
	jae	.label_1817
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x35], al
.label_1817:
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	jne	.label_1807
	jmp	.label_1820
.label_1807:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1815
.label_1820:
	jmp	.label_1814
.label_1828:
	jmp	.label_1821
.label_1827:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1822
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1830
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1822
.label_1830:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_1822:
	jmp	.label_1829
.label_1813:
	jmp	.label_1821
.label_1821:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1802
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x31], 1
	je	.label_1805
	jmp	.label_1809
.label_1809:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x36], cl
	jae	.label_1812
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x36], al
.label_1812:
	mov	al, byte ptr [rbp - 0x36]
	test	al, 1
	jne	.label_1806
	jmp	.label_1811
.label_1806:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1809
.label_1842:
	jmp	.label_1836
.label_1836:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1834
	mov	eax, 0x1000
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rdi
	jae	.label_1839
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1840
.label_1834:
	mov	eax, 0x800
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	add	rcx, 8
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	call	get_nonce
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	add	rcx, 8
	mov	rdi, rcx
	call	isaac_seed
.label_1841:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1838:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415957
	.globl sub_415957
	.type sub_415957, @function
sub_415957:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415966

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1835
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1838
.label_1835:
	mov	qword ptr [rbp - 0x20], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1836
	movabs	rsi, OFFSET FLAT:label_1837
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1842
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1838
.label_1839:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_1840:
	mov	rax, qword ptr [rbp - 0x40]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1841
	.section	.text
	.align	16
	#Procedure 0x415a00

	.globl ind
	.type ind, @function
ind:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	and	rdi, 0x7f8
	add	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415a43
	.globl sub_415a43
	.type sub_415a43, @function
sub_415a43:

	nop	word ptr cs:[rax + rax]
.label_1845:
	jmp	.label_1843
.label_1843:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x24], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x24]
	div	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0x18], r8
	mov	byte ptr [rdi - 1], sil
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x28]
	div	ecx
	mov	dword ptr [rbp - 4], eax
	cmp	eax, 0
	jne	.label_1843
	jmp	.label_1844
.label_1844:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415aad
	.globl sub_415aad
	.type sub_415aad, @function
sub_415aad:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415aba

	.globl uinttostr
	.type uinttostr, @function
uinttostr:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0xa
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	dword ptr [rbp - 4], 0
	jae	.label_1845
	jmp	.label_1846
.label_1846:
	mov	eax, 0x30
	mov	ecx, 0xa
	mov	edx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, edx
	mov	sil, cl
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0x18], r8
	mov	byte ptr [rdi - 1], sil
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x20]
	div	ecx
	mov	dword ptr [rbp - 4], eax
	cmp	eax, 0
	jne	.label_1846
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1844
.label_1875:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1853
.label_1858:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_1850
	jmp	.label_1873
.label_1873:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1850
	jmp	.label_1849
.label_1849:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1850
	jmp	.label_1856
.label_1856:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1850
	jmp	.label_1869
.label_1869:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_1850
	jmp	.label_1868
.label_1868:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1850
	jmp	.label_1870
.label_1870:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_1850
	jmp	.label_1852
.label_1852:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1850
	jmp	.label_1857
.label_1857:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1850
	jmp	.label_1859
.label_1859:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1850
	jmp	.label_1864
.label_1864:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_1865
	jmp	.label_1850
.label_1850:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_1860
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_1855
	jmp	.label_1862
.label_1862:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_1855
	jmp	.label_1861
.label_1861:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_1863
	jmp	.label_1866
.label_1866:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_1847
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1847:
	jmp	.label_1863
.label_1867:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1871
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_1858
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1853
.label_1887:
	jmp	.label_1854
.label_2607:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_1848
.label_1883:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1884
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1885
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1853
.label_2602:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1848
.label_2600:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1848
.label_1848:
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
	je	.label_1874
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_1874:
	jmp	.label_1871
.label_1871:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_1853:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415e13
	.globl sub_415e13
	.type sub_415e13, @function
sub_415e13:

	nop	dword ptr [rax + rax]
.label_1885:
	mov	dword ptr [rbp - 0x4c], 1
.label_1884:
	jmp	.label_1854
.label_1854:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1867
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1853
.label_2605:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1848
.label_2597:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1848
.label_2603:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1848
.label_2601:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1848
.label_2606:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1848
.label_2598:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1848
.label_1880:
	movabs	rdi, OFFSET FLAT:label_352
	movabs	rsi, OFFSET FLAT:label_353
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_1878
	call	__assert_fail
.label_2604:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1848
.label_1881:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_1879
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1853
.label_1872:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1853
.label_1882:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1876
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1877
.label_1876:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1877
.label_1877:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_1886:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_1881
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_1886
.label_1879:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_1883
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1875
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1875
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_1875
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_1887
.label_2608:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1848
.label_1855:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1863:
	jmp	.label_1860
.label_1860:
	jmp	.label_1865
.label_1865:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_1872
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1851]]
	jmp	rcx
	.section	.text
	.align	16
	#Procedure 0x4160a8

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
	jg	.label_1880
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_1880
	jmp	.label_1882
.label_2599:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1848
.label_1944:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 4], eax
	mov	eax, dword ptr [rbp - 0x84]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 8], eax
	mov	eax, dword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0xc], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416133
	.globl sub_416133
	.type sub_416133, @function
sub_416133:

	nop	
	.section	.text
	.align	16
	#Procedure 0x416134

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x68], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, 2
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x70]
	shl	rsi, 2
	add	rdx, rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 4]
	mov	dword ptr [rbp - 0x80], eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 8]
	mov	dword ptr [rbp - 0x84], eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 0xc]
	mov	dword ptr [rbp - 0x88], eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, edx
	mov	dword ptr [rbp - 0x8c], eax
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rdx, qword ptr [rbp - 0x18]
	add	eax, dword ptr [rdx + 0x10]
	mov	dword ptr [rdx + 0x10], eax
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, 0x1f
	shr	rdx, 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x10]
	cmp	eax, dword ptr [rbp - 0x8c]
	setb	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x14]
	mov	edi, eax
	add	rdi, rdx
	mov	eax, edi
	mov	dword ptr [rsi + 0x14], eax
.label_1893:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_1944
	lea	rax, [rbp - 0x60]
	mov	qword ptr [rbp - 0x98], rax
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x9c], ecx
	mov	ecx, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0xa0], ecx
	mov	ecx, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0xa8], ecx
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xd76aa478
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1952
.label_1952:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xe8c7b756
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1927
.label_1927:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x242070db
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1928
.label_1928:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xc1bdceee
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1906
.label_1906:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xf57c0faf
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1895
.label_1895:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x4787c62a
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1942
.label_1942:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xa8304613
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1946
.label_1946:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xfd469501
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1951
.label_1951:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x698098d8
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1941
.label_1941:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x8b44f7af
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1922
.label_1922:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xffff5bb1
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1933
.label_1933:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x895cd7be
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1902
.label_1902:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x6b901122
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1924
.label_1924:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xfd987193
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1915
.label_1915:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xa679438e
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1904
.label_1904:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x49b40821
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1923
.label_1923:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x5c]
	add	eax, 0xf61e2562
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1908
.label_1908:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x48]
	add	eax, 0xc040b340
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1940
.label_1940:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0x265e5a51
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1920
.label_1920:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x60]
	add	eax, 0xe9b6c7aa
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1899
.label_1899:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x4c]
	add	eax, 0xd62f105d
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1936
.label_1936:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x38]
	add	eax, 0x2441453
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1909
.label_1909:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0xd8a1e681
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1948
.label_1948:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0xe7d3fbc8
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1931
.label_1931:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x3c]
	add	eax, 0x21e1cde6
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1901
.label_1901:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x28]
	add	eax, 0xc33707d6
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1938
.label_1938:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x54]
	add	eax, 0xf4d50d87
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1916
.label_1916:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x40]
	add	eax, 0x455a14ed
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1894
.label_1894:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x2c]
	add	eax, 0xa9e3e905
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1932
.label_1932:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x58]
	add	eax, 0xfcefa3f8
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1914
.label_1914:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x44]
	add	eax, 0x676f02d9
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1945
.label_1945:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x30]
	add	eax, 0x8d2a4c8a
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1926
.label_1926:
	mov	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x4c]
	add	eax, 0xfffa3942
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1898
.label_1898:
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x40]
	add	eax, 0x8771f681
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1929
.label_1929:
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0x6d9d6122
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x10
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1903
.label_1903:
	mov	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x28]
	add	eax, 0xfde5380c
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x17
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1943
.label_1943:
	mov	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x5c]
	add	eax, 0xa4beea44
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1911
.label_1911:
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0x4bdecfa9
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1950
.label_1950:
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x44]
	add	eax, 0xf6bb4b60
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x10
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1917
.label_1917:
	mov	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x38]
	add	eax, 0xbebfbc70
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x17
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1892
.label_1892:
	mov	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x2c]
	add	eax, 0x289b7ec6
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1912
.label_1912:
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x60]
	add	eax, 0xeaa127fa
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1890
.label_1890:
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x54]
	add	eax, 0xd4ef3085
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x10
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1930
.label_1930:
	mov	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x48]
	add	eax, 0x4881d05
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x17
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1907
.label_1907:
	mov	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x3c]
	add	eax, 0xd9d4d039
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1896
.label_1896:
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x30]
	add	eax, 0xe6db99e5
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1900
.label_1900:
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0x1fa27cf8
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x10
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1921
.label_1921:
	mov	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x58]
	add	eax, 0xc4ac5665
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x17
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1918
.label_1918:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x60]
	add	eax, 0xf4292244
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1949
.label_1949:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x44]
	add	eax, 0x432aff97
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1888
.label_1888:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x28]
	add	eax, 0xab9423a7
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1947
.label_1947:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x4c]
	add	eax, 0xfc93a039
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1934
.label_1934:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x30]
	add	eax, 0x655b59c3
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1913
.label_1913:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x54]
	add	eax, 0x8f0ccc92
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1935
.label_1935:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x38]
	add	eax, 0xffeff47d
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1925
.label_1925:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x5c]
	add	eax, 0x85845dd1
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1910
.label_1910:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x40]
	add	eax, 0x6fa87e4f
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1939
.label_1939:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0xfe2ce6e0
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1889
.label_1889:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x48]
	add	eax, 0xa3014314
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1905
.label_1905:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x2c]
	add	eax, 0x4e0811a1
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1891
.label_1891:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0xf7537e82
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1919
.label_1919:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0xbd3af235
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1937
.label_1937:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x58]
	add	eax, 0x2ad7d2bb
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1897
.label_1897:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x3c]
	add	eax, 0xeb86d391
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x9c]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0xa0]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0xa8]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1893
.label_1957:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1956
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1953
.label_1958:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_1953:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417836
	.globl sub_417836
	.type sub_417836, @function
sub_417836:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41783d

	.globl strcoll_loop
	.type strcoll_loop, @function
strcoll_loop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
.label_1959:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcoll
	mov	cl, 1
	mov	dword ptr [rbp - 0x2c], eax
	cmp	eax, 0
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_1955
	call	__errno_location
	cmp	dword ptr [rax], 0
	setne	cl
	mov	byte ptr [rbp - 0x41], cl
.label_1955:
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	test	al, 1
	jne	.label_1954
	jmp	.label_1958
.label_1954:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, rax
	mov	qword ptr [rbp - 0x18], rdi
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	sub	rdi, rax
	mov	qword ptr [rbp - 0x28], rdi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1957
	xor	eax, eax
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1953
.label_1956:
	jmp	.label_1959
	.section	.text
	.align	16
	#Procedure 0x417920

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
	jne	.label_1960
	mov	qword ptr [rbp - 0x18], 0x10
.label_1960:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1962
	mov	eax, 0x1000
	mov	dword ptr [rbp - 0x24], 0x20
	sub	eax, dword ptr [rbp - 0x24]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
.label_1962:
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
	jne	.label_1961
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_1961:
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
	.align	16
	#Procedure 0x417a3f
	.globl sub_417a3f
	.type sub_417a3f, @function
sub_417a3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x417a40
	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mkstemp
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417a62
	.globl sub_417a62
	.type sub_417a62, @function
sub_417a62:

	nop	word ptr cs:[rax + rax]
.label_1966:
	jmp	.label_1963
.label_1963:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1965
.label_1964:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417a8c
	.globl sub_417a8c
	.type sub_417a8c, @function
sub_417a8c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417a90

	.globl check_ordering_compatibility
	.type check_ordering_compatibility, @function
check_ordering_compatibility:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rax,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 8], rax
.label_1965:
	cmp	qword ptr [rbp - 8], 0
	je	.label_1964
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x32]
	and	dl, 1
	movzx	esi, dl
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x34]
	and	dl, 1
	movzx	edi, dl
	add	esi, edi
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x35]
	and	dl, 1
	movzx	edi, dl
	add	esi, edi
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x36]
	and	dl, 1
	movzx	edi, dl
	add	esi, edi
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x38]
	and	dl, 1
	movzx	edi, dl
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x33]
	and	dl, 1
	movzx	r8d, dl
	or	edi, r8d
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x20], 0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	movzx	r8d, dl
	or	edi, r8d
	add	esi, edi
	cmp	eax, esi
	jge	.label_1966
	lea	rsi, [rbp - 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x37], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x31], 0
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x30], 0
	mov	rdi, qword ptr [rbp - 8]
	call	key_to_opts
	lea	rdi, [rbp - 0x30]
	call	incompatible_options
	.section	.text
	.align	16
	#Procedure 0x417b60

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_1968:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_1967
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1968
.label_1967:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417bad
	.globl sub_417bad
	.type sub_417bad, @function
sub_417bad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417bb0

	.globl reap_all
	.type reap_all, @function
reap_all:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	jmp	.label_1969
.label_1969:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	jge	.label_1970
	mov	edi, 0xffffffff
	call	reap
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1969
.label_1970:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417be4
	.globl sub_417be4
	.type sub_417be4, @function
sub_417be4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417bf0
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
	.align	16
	#Procedure 0x417c26
	.globl sub_417c26
	.type sub_417c26, @function
sub_417c26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417c30
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
	.align	16
	#Procedure 0x417c58
	.globl sub_417c58
	.type sub_417c58, @function
sub_417c58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417c60
	.globl rotl64
	.type rotl64, @function
rotl64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417c92
	.globl sub_417c92
	.type sub_417c92, @function
sub_417c92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417ca0

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
	.align	16
	#Procedure 0x417cc5
	.globl sub_417cc5
	.type sub_417cc5, @function
sub_417cc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417cd0

	.globl mergefiles
	.type mergefiles, @function
mergefiles:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	open_input_files
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1971
	cmp	qword ptr [rbp - 0x38], 2
	jae	.label_1971
	movabs	rdi, OFFSET FLAT:label_1228
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdi]
	mov	rdi, rax
	call	sort_die
.label_1971:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	mergefps
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417d6a
	.globl sub_417d6a
	.type sub_417d6a, @function
sub_417d6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417d70

	.globl mark_key
	.type mark_key, @function
mark_key:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_1973:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	je	.label_1972
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1973
.label_1975:
	jmp	.label_1974
.label_1974:
	mov	edi, 0x5f
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_1974
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20], eax
.label_1976:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417de6
	.globl sub_417de6
	.type sub_417de6, @function
sub_417de6:

	nop	word ptr cs:[rax + rax]
.label_1972:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1975
	movabs	rdi, OFFSET FLAT:label_1977
	call	gettext
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_1976
.label_1978:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1981:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_1980
	movabs	rsi, OFFSET FLAT:label_1979
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_1980
	movabs	rsi, OFFSET FLAT:label_1984
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1982
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_1982:
	jmp	.label_1980
.label_1980:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417ed5
	.globl sub_417ed5
	.type sub_417ed5, @function
sub_417ed5:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417edc

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1985
	movabs	rdi, OFFSET FLAT:label_1983
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_1985:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1978
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1981
	.section	.text
	.align	16
	#Procedure 0x417f40
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
	.align	16
	#Procedure 0x417f77
	.globl sub_417f77
	.type sub_417f77, @function
sub_417f77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417f80

	.globl move_fd
	.type move_fd, @function
move_fd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	esi, dword ptr [rbp - 8]
	je	.label_1986
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	dup2
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0xc], eax
	call	close
	mov	dword ptr [rbp - 0x10], eax
.label_1986:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417fb9
	.globl sub_417fb9
	.type sub_417fb9, @function
sub_417fb9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417fc0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_1994:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1997
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_1992
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1998
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1989
.label_1997:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1990
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1989
.label_1990:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_1989:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41807f
	.globl sub_41807f
	.type sub_41807f, @function
sub_41807f:

	nop	word ptr cs:[rax + rax]
.label_1996:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1995
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_1988
.label_1995:
	mov	byte ptr [rbp - 0x41], 1
.label_1988:
	jmp	.label_1987
.label_1987:
	jmp	.label_1991
.label_1991:
	jmp	.label_1992
.label_1992:
	jmp	.label_1993
.label_1993:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1994
.label_1998:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_1996
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1987
	.section	.text
	.align	16
	#Procedure 0x418110
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
	jb	.label_1999
	jmp	.label_2002
.label_2002:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1999
	jmp	.label_2000
.label_2000:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2001
	jmp	.label_1999
.label_1999:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2003
.label_2001:
	mov	byte ptr [rbp - 1], 0
.label_2003:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418175
	.globl sub_418175
	.type sub_418175, @function
sub_418175:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418180

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	movups	xmm0, xmmword ptr [rbp - 0x30]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4181ae
	.globl sub_4181ae
	.type sub_4181ae, @function
sub_4181ae:

	nop	
.label_2005:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_2006:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4181d0
	.globl sub_4181d0
	.type sub_4181d0, @function
sub_4181d0:

	nop	word ptr cs:[rax + rax]
.label_2008:
	movss	xmm0,  dword ptr [dword ptr [rip + label_2007]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_2005
	movss	xmm0,  dword ptr [dword ptr [rip + label_2004]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_2005
	movss	xmm0,  dword ptr [dword ptr [rip + label_2004]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_2005
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_2005
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_2005
	movss	xmm0,  dword ptr [dword ptr [rip + label_2004]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_2005
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_2005
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2006
	.section	.text
	.align	16
	#Procedure 0x4182af

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_2008
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2006
	.section	.text
	.align	16
	#Procedure 0x4182e0
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
	.align	16
	#Procedure 0x4182fa
	.globl sub_4182fa
	.type sub_4182fa, @function
sub_4182fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418300
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [rip + label_1429]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cvtsi2sd	xmm1, qword ptr [rbp - 0x10]
	cvtsi2sd	xmm2, qword ptr [rbp - 8]
	divsd	xmm2, xmm0
	addsd	xmm1, xmm2
	movaps	xmm0, xmm1
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41832d
	.globl sub_41832d
	.type sub_41832d, @function
sub_41832d:

	nop	dword ptr [rax]
.label_2010:
	jmp	.label_2009
.label_2009:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41833b
	.globl sub_41833b
	.type sub_41833b, @function
sub_41833b:

	nop	dword ptr [rax + rax]
.label_2014:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2010
	call	abort
.label_2011:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2014
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
	jmp	.label_2009
	.section	.text
	.align	16
	#Procedure 0x41838f

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
.label_2012:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2015
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_2016
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_2016:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_2015:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_2013
	jmp	.label_2011
.label_2013:
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
	jmp	.label_2012
.label_2019:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
.label_2023:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x88], rax
	call	getgid
	lea	rcx, [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xf8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_2036:
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418499
	.globl sub_418499
	.type sub_418499, @function
sub_418499:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4184a5

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	movabs	rax, OFFSET FLAT:label_2034
	xor	ecx, ecx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	mov	esi, ecx
	mov	al, 0
	call	open
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x2c], eax
	cmp	ecx, dword ptr [rbp - 0x2c]
	jg	.label_2033
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x8c], edi
	mov	qword ptr [rbp - 0x98], rsi
	jae	.label_2035
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_2020
.label_2024:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xe0], rax
.label_2029:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x78], rax
	call	getuid
	lea	rcx, [rbp - 0x6c]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xe8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xe8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_2022:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2036
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2019
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	jmp	.label_2023
.label_2021:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xb0], rax
.label_2027:
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rbp - 0x40]
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x48], rax
	call	gettimeofday
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0xb4], eax
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x48]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
.label_2018:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2017
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2031
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_2026
.label_2035:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
.label_2020:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_2032
	mov	qword ptr [rbp - 0x28], 0
.label_2032:
	mov	edi, dword ptr [rbp - 0x2c]
	call	close
	mov	dword ptr [rbp - 0xa4], eax
.label_2033:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2018
	mov	eax, 0x10
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2021
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_2027
.label_2028:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_2030:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x68], rax
	call	getppid
	lea	rcx, [rbp - 0x5c]
	mov	dword ptr [rbp - 0x5c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xd8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x68]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_2025:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2022
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2024
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_2029
.label_2031:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xc0], rax
.label_2026:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x58], rax
	call	getpid
	lea	rcx, [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xc8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
.label_2017:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2025
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	jae	.label_2028
	mov	eax, 4
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_2030
.label_2043:
	mov	eax,  dword ptr [dword ptr [nprocs]]
	add	eax, -1
	mov	dword ptr [dword ptr [nprocs]],  eax
.label_2038:
	jmp	.label_2045
.label_2045:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	pop	rbp
	ret	
.label_2041:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_2040
.label_2040:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rbp - 8]
	mov	ecx, 1
	xor	edx, edx
	cmp	dword ptr [rbp - 4], 0
	cmovne	ecx, edx
	mov	edi, eax
	mov	edx, ecx
	call	waitpid
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_2044
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_2046
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], esi
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	qword ptr [rbp - 0x28], rax
	call	quotearg_style
	mov	edi, 2
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_2044:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jge	.label_2038
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_2037
	mov	edi, dword ptr [rbp - 0xc]
	call	delete_proc
	test	al, 1
	jne	.label_2037
	jmp	.label_2038
.label_2037:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0x7f
	cmp	eax, 0
	jne	.label_2042
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x18]
	and	eax, 0xff00
	sar	eax, 8
	cmp	eax, 0
	je	.label_2043
.label_2042:
	movabs	rdi, OFFSET FLAT:label_2039
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	16
	#Procedure 0x418910

	.globl reap
	.type reap, @function
reap:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_2041
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_2040
	.section	.text
	.align	16
	#Procedure 0x418930

	.globl debug_width
	.type debug_width, @function
debug_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	edx, edx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	sub	rsi, rax
	call	mbsnwidth
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x18], rsi
.label_2047:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2048
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax]
	cmp	edx, 9
	sete	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2047
.label_2048:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4189a6
	.globl sub_4189a6
	.type sub_4189a6, @function
sub_4189a6:

	nop	word ptr cs:[rax + rax]
.label_2055:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2051
	jmp	.label_2050
.label_2051:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_2052
	jmp	.label_2050
.label_2057:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2054
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_2054:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_2055
	jmp	.label_2050
	.section	.text
	.align	16
	#Procedure 0x418a42

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2053
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_2053:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2056
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_2056:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_2057
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2049
.label_2050:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_2049:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418ad6
	.globl sub_418ad6
	.type sub_418ad6, @function
sub_418ad6:

	nop	dword ptr [rax]
.label_2052:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2049
.label_2058:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_2078
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_2085
.label_2069:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_2061
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_2070
	.section	.text
	.align	16
	#Procedure 0x418bd4

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x240
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	dword ptr [rbp - 0x19c], esi
	je	.label_2080
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
.label_2080:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	dword ptr [rbp - 0x1a0], edi
	je	.label_2069
	jmp	.label_2066
.label_2066:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_2074
	jmp	.label_2076
.label_2076:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_2058
	jmp	.label_2082
.label_2082:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_2065
	jmp	.label_2087
.label_2087:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_2058
	jmp	.label_2063
.label_2063:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_2065
	jmp	.label_2071
.label_2071:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_2058
	jmp	.label_2075
.label_2075:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_2058
	jmp	.label_2083
.label_2083:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_2065
	jmp	.label_2088
.label_2088:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_2058
	jmp	.label_2064
.label_2064:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_2065
	jmp	.label_2073
.label_2073:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_2058
	jmp	.label_2077
.label_2077:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_2065
	jmp	.label_2084
.label_2084:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_2058
	jmp	.label_2059
.label_2059:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_2058
	jmp	.label_2067
.label_2067:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_2068
	jmp	.label_2065
.label_2065:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2079
.label_2081:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_2086:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2060
.label_2078:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_2085:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2079
.label_2061:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_2070:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2060
.label_2068:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_2062
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_2072
.label_2074:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_2081
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_2086
.label_2062:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_2072:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_2079:
	jmp	.label_2060
.label_2060:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419068
	.globl sub_419068
	.type sub_419068, @function
sub_419068:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419070

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, 0x98f5704f6c44c0ab
	movabs	rcx, 0xae985bf2cbfc89ed
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rsi, 0x82f053db8355e0ce
	movabs	r8, 0xb29b2e824a595524
	movabs	r9, 0x8c0ea5053d4712a0
	movabs	r10, 0xb9f8b322c73ac862
	movabs	r11, 0x647c4677a2884b7c
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], r11
	mov	qword ptr [rbp - 0x18], r10
	mov	qword ptr [rbp - 0x20], r9
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
.label_2090:
	cmp	dword ptr [rbp - 0x4c], 0x100
	jge	.label_2091
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 1
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 3
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 5
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 6
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	just
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x4c]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 3
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 7
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 8
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2090
.label_2091:
	mov	dword ptr [rbp - 0x50], 0
.label_2092:
	cmp	dword ptr [rbp - 0x50], 0x100
	jge	.label_2089
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 1
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 3
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 4
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 6
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	just
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 3
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x50]
	add	eax, 8
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_2092
.label_2089:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x810], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x808], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x800], 0
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419707
	.globl sub_419707
	.type sub_419707, @function
sub_419707:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419710

	.globl heap_insert
	.type heap_insert, @function
heap_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	sub	rsi, 1
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rdi + 0x10]
	ja	.label_2093
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 8
	mov	rdi, rcx
	call	x2nrealloc
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_2093:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x10], rsi
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx + rdx*8 + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax + 0x18]
	call	heapify_up
	xor	eax, eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4197a6
	.globl sub_4197a6
	.type sub_4197a6, @function
sub_4197a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4197b0

	.globl zaptemp
	.type zaptemp, @function
zaptemp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	movabs	rax, OFFSET FLAT:temphead
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x10], rax
.label_2098:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	add	rax, 0xd
	cmp	rax, qword ptr [rbp - 8]
	je	.label_2099
	jmp	.label_2097
.label_2097:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2098
.label_2099:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0xc]
	cmp	ecx, 1
	jne	.label_2100
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 8]
	call	wait_proc
.label_2100:
	lea	rdi, [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	call	cs_enter
	mov	rdi, qword ptr [rbp - 8]
	call	unlink
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	lea	rdi, [rbp - 0xb0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rax
	call	cs_leave
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_2094
	movabs	rdi, OFFSET FLAT:label_2096
	mov	esi, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0xb4], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0xc0], rax
	call	quotearg_n_style_colon
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_2094:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2095
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [temptail]],  rax
.label_2095:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4198de
	.globl sub_4198de
	.type sub_4198de, @function
sub_4198de:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4198e0

	.globl key_numeric
	.type key_numeric, @function
key_numeric:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0x32], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_2101
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x34], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_2101
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x35]
	mov	byte ptr [rbp - 9], cl
.label_2101:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419922
	.globl sub_419922
	.type sub_419922, @function
sub_419922:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419930
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419972
	.globl sub_419972
	.type sub_419972, @function
sub_419972:

	nop	word ptr cs:[rax + rax]
.label_2105:
	lea	rdi, [rbp - 0x88]
	call	sysinfo
	cmp	eax, 0
	jne	.label_2103
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_285]]
	movq	xmm1, qword ptr [rbp - 0x68]
	punpckldq	xmm1, xmm0
	movapd	xmm0,  xmmword ptr [word ptr [rip + label_286]]
	subpd	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mov	eax, dword ptr [rbp - 0x20]
	mov	ecx, eax
	cvtsi2sd	xmm1, rcx
	mulsd	xmm0, xmm1
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_2102
.label_2103:
	movsd	xmm0,  qword ptr [word ptr [rip + label_2104]]
	movsd	qword ptr [rbp - 8], xmm0
.label_2102:
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4199ed
	.globl sub_4199ed
	.type sub_4199ed, @function
sub_4199ed:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4199f5

	.globl physmem_total
	.type physmem_total, @function
physmem_total:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	edi, 0x55
	call	sysconf
	mov	edi, 0x1e
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rbp - 0x10], xmm0
	call	sysconf
	xorps	xmm0, xmm0
	cvtsi2sd	xmm1, rax
	movsd	qword ptr [rbp - 0x18], xmm1
	movsd	xmm1, qword ptr [rbp - 0x10]
	ucomisd	xmm1, xmm0
	jb	.label_2105
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x18]
	ucomisd	xmm1, xmm0
	jb	.label_2105
	movsd	xmm0, qword ptr [rbp - 0x10]
	mulsd	xmm0, qword ptr [rbp - 0x18]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_2102
	.section	.text
	.align	16
	#Procedure 0x419a60

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
	jb	.label_2106
	jmp	.label_2109
.label_2109:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2108
	jmp	.label_2106
.label_2106:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2107
.label_2108:
	mov	byte ptr [rbp - 1], 0
.label_2107:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419aab
	.globl sub_419aab
	.type sub_419aab, @function
sub_419aab:

	nop	dword ptr [rax + rax]
.label_2111:
	mov	byte ptr [rbp - 1], 0
.label_2112:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419abe
	.globl sub_419abe
	.type sub_419abe, @function
sub_419abe:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419acc
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2111
	jmp	.label_2110
.label_2110:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2112
.label_2113:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419afa
	.globl sub_419afa
	.type sub_419afa, @function
sub_419afa:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419b09

	.globl xfopen
	.type xfopen, @function
xfopen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	stream_open
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2113
	movabs	rdi, OFFSET FLAT:label_1228
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	sort_die
.label_2116:
	mov	rdi, qword ptr [rbp - 8]
	call	debug_line
	jmp	.label_2114
.label_2120:
	mov	eax, 1
	mov	esi, eax
	mov	cl,  byte ptr [byte ptr [eolchar]]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx - 1], cl
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_2118
	movabs	rdi, OFFSET FLAT:label_2115
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	sort_die
	.section	.text
	.align	16
	#Procedure 0x419ba9

	.globl write_line
	.type write_line, @function
write_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2120
	test	byte ptr [byte ptr [debug]],  1
	je	.label_2120
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
.label_2117:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2116
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x39], dl
	movsx	esi, byte ptr [rbp - 0x39]
	cmp	esi, 9
	jne	.label_2121
	mov	byte ptr [rbp - 0x39], 0x3e
	jmp	.label_2119
.label_2118:
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax - 1], 0
.label_2114:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419c47
	.globl sub_419c47
	.type sub_419c47, @function
sub_419c47:

	nop	word ptr cs:[rax + rax]
.label_2121:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_2122
	mov	byte ptr [rbp - 0x39], 0xa
.label_2122:
	jmp	.label_2119
.label_2119:
	movsx	edi, byte ptr [rbp - 0x39]
	mov	rsi, qword ptr [rbp - 0x10]
	call	fputc_unlocked
	cmp	eax, -1
	jne	.label_2123
	movabs	rdi, OFFSET FLAT:label_2115
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	sort_die
.label_2123:
	jmp	.label_2117
	.section	.text
	.align	16
	#Procedure 0x419ca0
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
	ja	.label_2124
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2126]]
	jmp	rcx
.label_2541:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2125
.label_2124:
	mov	byte ptr [rbp - 1], 0
.label_2125:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419ce1
	.globl sub_419ce1
	.type sub_419ce1, @function
sub_419ce1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419cf0

	.globl default_sort_size
	.type default_sort_size, @function
default_sort_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	edi, 2
	lea	rsi, [rbp - 0x18]
	mov	qword ptr [rbp - 8], -1
	call	getrlimit
	cmp	eax, 0
	jne	.label_2130
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_2130
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_2130:
	mov	edi, 9
	lea	rsi, [rbp - 0x18]
	call	getrlimit
	cmp	eax, 0
	jne	.label_2127
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_2127
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_2127:
	mov	edi, 5
	lea	rsi, [rbp - 0x18]
	mov	rax, qword ptr [rbp - 8]
	shr	rax, 1
	mov	qword ptr [rbp - 8], rax
	call	getrlimit
	cmp	eax, 0
	jne	.label_2134
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 4
	imul	rax, rax, 0xf
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_2134
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 4
	imul	rax, rax, 0xf
	mov	qword ptr [rbp - 8], rax
.label_2134:
	call	physmem_available
	movsd	qword ptr [rbp - 0x20], xmm0
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [rip + label_2133]]
	movsd	qword ptr [rbp - 0x28], xmm0
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	xmm2, qword ptr [rbp - 0x28]
	divsd	xmm2, xmm1
	ucomisd	xmm0, xmm2
	jbe	.label_2135
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	qword ptr [rbp - 0x38], xmm0
	jmp	.label_2132
.label_2135:
	movsd	xmm0,  qword ptr [word ptr [rip + label_2133]]
	movsd	xmm1, qword ptr [rbp - 0x28]
	divsd	xmm1, xmm0
	movsd	qword ptr [rbp - 0x38], xmm1
.label_2132:
	movsd	xmm0, qword ptr [rbp - 0x38]
	movsd	qword ptr [rbp - 0x30], xmm0
	movsd	xmm0, qword ptr [rbp - 0x28]
	movsd	xmm1,  qword ptr [word ptr [rip + label_2128]]
	mulsd	xmm0, xmm1
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_285]]
	movq	xmm2, qword ptr [rbp - 8]
	punpckldq	xmm2, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_286]]
	subpd	xmm2, xmm1
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	ucomisd	xmm1, xmm0
	jbe	.label_2137
	movsd	xmm0, qword ptr [rbp - 0x28]
	movsd	xmm1,  qword ptr [word ptr [rip + label_2128]]
	mulsd	xmm0, xmm1
	movsd	xmm1,  qword ptr [word ptr [rip + label_289]]
	movaps	xmm2, xmm0
	subsd	xmm2, xmm1
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttsd2si	rcx, xmm0
	ucomisd	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_2137:
	movsd	xmm0, qword ptr [rbp - 0x30]
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_285]]
	movq	xmm2, qword ptr [rbp - 8]
	punpckldq	xmm2, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_286]]
	subpd	xmm2, xmm1
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	ucomisd	xmm1, xmm0
	jbe	.label_2129
	movsd	xmm0, qword ptr [rbp - 0x30]
	movsd	xmm1,  qword ptr [word ptr [rip + label_289]]
	movaps	xmm2, xmm0
	subsd	xmm2, xmm1
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttsd2si	rcx, xmm0
	ucomisd	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_2129:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	jbe	.label_2136
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2131
.label_2136:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	imul	rcx, rcx, 0x22
	mov	qword ptr [rbp - 0x40], rcx
.label_2131:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419f36
	.globl sub_419f36
	.type sub_419f36, @function
sub_419f36:

	nop	word ptr cs:[rax + rax]
.label_2145:
	add	rsp, 0xf0
	pop	rbp
	ret	
.label_2139:
	call	get_outstatus
	mov	qword ptr [rbp - 0xd0], rax
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_2141
	jmp	.label_2145
.label_2141:
	test	byte ptr [rbp - 0x31], 1
	je	.label_2146
	xor	edi, edi
	lea	rsi, [rbp - 0xc8]
	call	fstat
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_2138
.label_2146:
	lea	rsi, [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	stat
	mov	dword ptr [rbp - 0xdc], eax
.label_2138:
	mov	eax, dword ptr [rbp - 0xdc]
	xor	ecx, ecx
	mov	dl, cl
	cmp	eax, 0
	mov	byte ptr [rbp - 0xdd], dl
	jne	.label_2149
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0xde], cl
	jne	.label_2140
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0xde], dl
.label_2140:
	mov	al, byte ptr [rbp - 0xde]
	mov	byte ptr [rbp - 0xdd], al
.label_2149:
	mov	al, byte ptr [rbp - 0xdd]
	and	al, 1
	mov	byte ptr [rbp - 0x32], al
.label_2142:
	test	byte ptr [rbp - 0x32], 1
	je	.label_2143
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2144
	lea	rdi, [rbp - 0xd8]
	call	create_temp
	xor	ecx, ecx
	mov	esi, ecx
	mov	ecx, 1
	mov	edx, ecx
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdi, qword ptr [rbp - 0x28]
	add	rdi, 0xd
	mov	qword ptr [rbp - 0xe8], rdi
	mov	rdi, rax
	mov	r8, qword ptr [rbp - 0xe8]
	call	mergefiles
	mov	qword ptr [rbp - 0xf0], rax
.label_2144:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0xd
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
.label_2143:
	jmp	.label_2147
.label_2147:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2148
	.section	.text
	.align	16
	#Procedure 0x41a0c1

	.globl avoid_trashing_input
	.type avoid_trashing_input, @function
avoid_trashing_input:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rcx
.label_2148:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_2145
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:label_65
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x31], dl
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2139
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_2139
	test	byte ptr [rbp - 0x31], 1
	jne	.label_2139
	mov	byte ptr [rbp - 0x32], 1
	jmp	.label_2142
.label_2152:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x20]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a196
	.globl sub_41a196
	.type sub_41a196, @function
sub_41a196:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41a199

	.globl is_prime
	.type is_prime, @function
is_prime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 3
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
.label_2153:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_2151
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_2151:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_2150
	jmp	.label_2152
.label_2150:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 2
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2153
	.section	.text
	.align	16
	#Procedure 0x41a220

	.globl parse_omp_threads
	.type parse_omp_threads, @function
parse_omp_threads:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2161
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2160
.label_2159:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jne	.label_2156
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2160
.label_2156:
	jmp	.label_2167
.label_2167:
	jmp	.label_2164
.label_2164:
	jmp	.label_2158
.label_2158:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_2160:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a28a
	.globl sub_41a28a
	.type sub_41a28a, @function
sub_41a28a:

	nop	word ptr cs:[rax + rax]
.label_2168:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2159
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2160
.label_2161:
	jmp	.label_2166
.label_2166:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_2169
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	c_isspace
	mov	byte ptr [rbp - 0x29], al
.label_2169:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_2162
	jmp	.label_2163
.label_2162:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2166
.label_2163:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	test	al, 1
	jne	.label_2157
	jmp	.label_2158
.label_2157:
	lea	rsi, [rbp - 0x20]
	mov	edx, 0xa
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtoul
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2164
	jmp	.label_2154
.label_2154:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x2a], cl
	je	.label_2155
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	call	c_isspace
	mov	byte ptr [rbp - 0x2a], al
.label_2155:
	mov	al, byte ptr [rbp - 0x2a]
	test	al, 1
	jne	.label_2165
	jmp	.label_2168
.label_2165:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2154
	.section	.text
	.align	16
	#Procedure 0x41a390

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], 0x67452301
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 4], 0xefcdab89
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 8], 0x98badcfe
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0xc], 0x10325476
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x14], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x18], 0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41a3e6
	.globl sub_41a3e6
	.type sub_41a3e6, @function
sub_41a3e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41a3f0

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
	.align	16
	#Procedure 0x41a49d
	.globl sub_41a49d
	.type sub_41a49d, @function
sub_41a49d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41a4a0
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
	.align	16
	#Procedure 0x41a4c7
	.globl sub_41a4c7
	.type sub_41a4c7, @function
sub_41a4c7:

	nop	word ptr [rax + rax]
.label_2494:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_2226
	movabs	rdi, OFFSET FLAT:label_2233
	movabs	rdx, OFFSET FLAT:check_args
	movabs	rcx, OFFSET FLAT:check_types
	mov	eax, 1
	mov	r8d, eax
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	call	__xargmatch_internal
	movsx	r10d,  byte ptr [byte ptr [+ (rax * 1) + check_types]]
	mov	dword ptr [rbp - 0x39c], r10d
	jmp	.label_2244
.label_2241:
	movabs	rdi, OFFSET FLAT:label_2253
	movabs	rsi, OFFSET FLAT:label_1614
	mov	edx, 0x1112
	movabs	rcx, OFFSET FLAT:label_2254
	call	__assert_fail
.label_2479:
	movabs	rsi, OFFSET FLAT:label_709
	movabs	rdx, OFFSET FLAT:label_1136
	movabs	r8, OFFSET FLAT:label_2264
	movabs	r9, OFFSET FLAT:label_2265
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x3b0], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_2501:
	mov	edi, dword ptr [rbp - 0x2dc]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	esi, cl
	call	specify_nthreads
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_2197
.label_2490:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x2eb], cl
	cmp	byte ptr [rbp - 0x2eb], 0
	jne	.label_2288
	movabs	rdi, OFFSET FLAT:label_2298
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_2277:
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_2198
	movabs	rdx, OFFSET FLAT:label_2182
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 8
	mov	rdi, rax
	mov	rsi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rax + 8], rdx
	cmp	rcx, 0
	jne	.label_2195
	movabs	rsi, OFFSET FLAT:label_2269
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_2263:
	mov	eax, 8
	mov	ecx, eax
	mov	qword ptr [rbp - 0x420], rcx
	jmp	.label_2210
.label_2210:
	mov	rax, qword ptr [rbp - 0x420]
	mov	qword ptr [rbp - 0xd8], rax
.label_2203:
	movabs	rax, 0xffffffffffffff
	mov	qword ptr [rbp - 0x338], rax
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x338]
	jae	.label_2217
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x428], rax
	jmp	.label_2194
.label_2481:
	mov	qword ptr [rbp - 0x18], 0
	mov	rax,  qword ptr [word ptr [optarg]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_2228
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x385], cl
	je	.label_2239
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rsi + rdx*8]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x2d
	mov	byte ptr [rbp - 0x385], cl
	jne	.label_2239
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	sub	edx, 0x30
	cmp	edx, 9
	setbe	sil
	mov	byte ptr [rbp - 0x385], sil
.label_2239:
	mov	al, byte ptr [rbp - 0x385]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x2dd], al
	test	byte ptr [rbp - 0x2dd], 1
	mov	byte ptr [rbp - 0x386], dl
	je	.label_2268
	mov	al, byte ptr [rbp - 0xe1]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x386], al
.label_2268:
	mov	al, byte ptr [rbp - 0x386]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xe9]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0xe9], al
	test	byte ptr [rbp - 0xe9], 1
	je	.label_2225
	lea	rdi, [rbp - 0x60]
	call	key_init
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [optarg]]
	add	rax, 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_2173
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_2173
	xor	eax, eax
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 8
	mov	rdi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
.label_2173:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_2258
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2258
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], -1
.label_2258:
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_2284
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	set_ordering
	movsx	edx, byte ptr [rax]
	cmp	edx, 0
	je	.label_2209
.label_2284:
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_2280
.label_2196:
	movsx	eax, byte ptr [rbp - 0x2eb]
	mov	dword ptr [dword ptr [tab]],  eax
	jmp	.label_2197
.label_2489:
	mov	byte ptr [byte ptr [stable]],  1
	jmp	.label_2197
.label_2197:
	jmp	.label_2179
.label_2179:
	jmp	.label_2224
.label_2495:
	cmp	qword ptr [word ptr [compress_program]],  0
	je	.label_2227
	mov	rdi,  qword ptr [word ptr [compress_program]]
	mov	rsi,  qword ptr [word ptr [optarg]]
	call	strcmp
	cmp	eax, 0
	je	.label_2227
	movabs	rdi, OFFSET FLAT:label_2237
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	.section	.text
	.align	16
	#Procedure 0x41a91f

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x430
	movabs	rax, OFFSET FLAT:label_2314
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0xa9], 0
	mov	dword ptr [rbp - 0xbc], 0
	mov	byte ptr [rbp - 0xbd], 0
	mov	byte ptr [rbp - 0xbe], 0
	mov	qword ptr [rbp - 0xc8], 0
	mov	byte ptr [rbp - 0xc9], 0
	mov	qword ptr [rbp - 0xd8], 0
	mov	qword ptr [rbp - 0xe0], 0
	mov	rdi, rax
	call	getenv
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xe1], cl
	call	posix2_version
	xor	edx, edx
	mov	cl, dl
	mov	edx, 0x30db0
	mov	dword ptr [rbp - 0xe8], eax
	cmp	edx, dword ptr [rbp - 0xe8]
	mov	byte ptr [rbp - 0x339], cl
	jg	.label_2309
	cmp	dword ptr [rbp - 0xe8], 0x31069
	setl	al
	mov	byte ptr [rbp - 0x339], al
.label_2309:
	mov	al, byte ptr [rbp - 0x339]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0xe9], al
	mov	qword ptr [rbp - 0x100], 0
	mov	qword ptr [rbp - 0x228], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_77
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_2303
	movabs	rsi, OFFSET FLAT:label_2307
	cmp	rax, 0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 0x229], dl
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_2303
	mov	qword ptr [rbp - 0x348], rax
	call	textdomain
	mov	edi, 2
	mov	qword ptr [rbp - 0x350], rax
	call	initialize_exit_failure
	mov	edi, 3
	call	hard_locale
	mov	edi, 2
	and	al, 1
	mov	byte ptr [byte ptr [hard_LC_COLLATE]],  al
	call	hard_locale
	and	al, 1
	mov	byte ptr [byte ptr [hard_LC_TIME]],  al
	call	localeconv
	mov	qword ptr [rbp - 0x238], rax
	mov	rax, qword ptr [rbp - 0x238]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	dword ptr [dword ptr [decimal_point]],  edi
	cmp	dword ptr [dword ptr [decimal_point]],  0
	je	.label_2313
	mov	rax, qword ptr [rbp - 0x238]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_2304
.label_2313:
	mov	dword ptr [dword ptr [decimal_point]],  0x2e
.label_2304:
	mov	rax, qword ptr [rbp - 0x238]
	mov	rax, qword ptr [rax + 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	dword ptr [dword ptr [thousands_sep]],  edi
	cmp	dword ptr [dword ptr [thousands_sep]],  0
	je	.label_2310
	mov	rax, qword ptr [rbp - 0x238]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_2306
.label_2310:
	mov	dword ptr [dword ptr [thousands_sep]],  0xffffffff
.label_2306:
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	call	inittables
	movabs	rdi, OFFSET FLAT:caught_signals
	call	sigemptyset
	mov	qword ptr [rbp - 0x240], 0
	mov	dword ptr [rbp - 0x354], eax
.label_2301:
	cmp	qword ptr [rbp - 0x240], 0xb
	jae	.label_2312
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0x2d8]
	mov	rcx, qword ptr [rbp - 0x240]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + main.sig]]
	call	sigaction
	mov	edi, 1
	mov	ecx, edi
	cmp	qword ptr [rbp - 0x2d8], rcx
	mov	dword ptr [rbp - 0x358], eax
	je	.label_2308
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	rax, qword ptr [rbp - 0x240]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + main.sig]]
	call	sigaddset
	mov	dword ptr [rbp - 0x35c], eax
.label_2308:
	jmp	.label_2305
.label_2305:
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, 1
	mov	qword ptr [rbp - 0x240], rax
	jmp	.label_2301
.label_2226:
	mov	eax, 0x63
	mov	dword ptr [rbp - 0x39c], eax
	jmp	.label_2244
.label_2244:
	mov	eax, dword ptr [rbp - 0x39c]
	mov	dword ptr [rbp - 0xbc], eax
.label_2482:
	movsx	eax, byte ptr [rbp - 0xbd]
	cmp	eax, 0
	je	.label_2174
	movsx	eax, byte ptr [rbp - 0xbd]
	cmp	eax, dword ptr [rbp - 0xbc]
	je	.label_2174
	movabs	rdi, OFFSET FLAT:label_2184
	call	incompatible_options
.label_2178:
	cmp	qword ptr [word ptr [keylist]],  0
	jne	.label_2186
	lea	rdi, [rbp - 0xa8]
	call	default_key_compare
	test	al, 1
	jne	.label_2186
	lea	rdi, [rbp - 0xa8]
	mov	byte ptr [rbp - 0xa9], 1
	call	insertkey
	mov	al, byte ptr [rbp - 0x75]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xc9]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0xc9], al
.label_2186:
	call	check_ordering_compatibility
	test	byte ptr [byte ptr [debug]],  1
	je	.label_2211
	movsx	eax, byte ptr [rbp - 0xbd]
	cmp	eax, 0
	jne	.label_2216
	cmp	qword ptr [rbp - 0x228], 0
	je	.label_2220
.label_2216:
	movsx	eax, byte ptr [rbp - 0xbd]
	cmp	eax, 0
	je	.label_2223
	movsx	eax, byte ptr [rbp - 0xbd]
	mov	dword ptr [rbp - 0x3f4], eax
	jmp	.label_2189
.label_2497:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_2197
.label_2290:
	mov	rax, qword ptr [rbp - 0x308]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0
	jne	.label_2238
	movabs	rdi, OFFSET FLAT:label_2248
	mov	rax, qword ptr [rbp - 0x308]
	add	rax, 1
	mov	qword ptr [rbp - 0x310], rax
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x3e8], rax
	call	quotearg_n_style_colon
	mov	edi, 2
	xor	esi, esi
	mov	r8, qword ptr [rbp - 0x310]
	mov	rdx, qword ptr [rbp - 0x3e8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_2266:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x228], rax
	jmp	.label_2197
.label_2293:
	cmp	qword ptr [rbp - 0x228], 0
	je	.label_2276
	movabs	rdi, OFFSET FLAT:main.opts.64
	mov	al, byte ptr [rbp - 0xbd]
	mov	byte ptr [byte ptr [main.opts.64]],  al
	call	incompatible_options
.label_2208:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	imul	rcx, rcx, 0x22
	mov	qword ptr [rbp - 0x410], rcx
.label_2292:
	mov	rax, qword ptr [rbp - 0x410]
	mov	qword ptr [word ptr [sort_size]],  rax
.label_2204:
	cmp	byte ptr [rbp - 0xbd], 0
	je	.label_2286
	cmp	qword ptr [rbp - 0xe0], 1
	jbe	.label_2293
	movabs	rdi, OFFSET FLAT:label_2296
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x418], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	movsx	r8d, byte ptr [rbp - 0xbd]
	mov	rdx, qword ptr [rbp - 0x418]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_2480:
	xor	edi, edi
	call	usage
.label_2223:
	mov	eax, 0x6f
	mov	dword ptr [rbp - 0x3f4], eax
	jmp	.label_2189
.label_2189:
	mov	eax, dword ptr [rbp - 0x3f4]
	movabs	rdi, OFFSET FLAT:main.opts
	mov	cl, al
	mov	byte ptr [byte ptr [main.opts]],  cl
	call	incompatible_options
.label_2229:
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_2203
	mov	edi, 2
	call	num_processors
	mov	qword ptr [rbp - 0x330], rax
	cmp	qword ptr [rbp - 0x330], 8
	jae	.label_2263
	mov	rax, qword ptr [rbp - 0x330]
	mov	qword ptr [rbp - 0x420], rax
	jmp	.label_2210
.label_2286:
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rbp - 0xe0]
	call	check_inputs
	mov	rdi, qword ptr [rbp - 0x228]
	call	check_output
	test	byte ptr [rbp - 0xbe], 1
	je	.label_2229
	mov	eax, 0x10
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0xe0]
	call	xcalloc
	mov	qword ptr [rbp - 0x320], rax
	mov	qword ptr [rbp - 0x328], 0
.label_2245:
	mov	rax, qword ptr [rbp - 0x328]
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_2240
	mov	rax, qword ptr [rbp - 0x328]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x328]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x320]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x328]
	add	rax, 1
	mov	qword ptr [rbp - 0x328], rax
	jmp	.label_2245
.label_2488:
	cmp	qword ptr [rbp - 0x228], 0
	je	.label_2266
	mov	rdi, qword ptr [rbp - 0x228]
	mov	rsi,  qword ptr [word ptr [optarg]]
	call	strcmp
	cmp	eax, 0
	je	.label_2266
	movabs	rdi, OFFSET FLAT:label_2273
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_2484:
	mov	edi, dword ptr [rbp - 0x2dc]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	esi, cl
	call	specify_sort_size
	jmp	.label_2197
.label_2206:
	movabs	rdi, OFFSET FLAT:label_2215
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x3f0], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x3f0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_2289:
	jmp	.label_2172
.label_2172:
	mov	rax,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x18], rax
.label_2230:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2178
	mov	rdi, qword ptr [rbp - 0x18]
	call	default_key_compare
	test	al, 1
	jne	.label_2181
	jmp	.label_2256
.label_2181:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x37], 1
	jne	.label_2256
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x28], rax
	mov	dl, byte ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x30], dl
	mov	dl, byte ptr [rbp - 0x77]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x31], dl
	mov	dl, byte ptr [rbp - 0x72]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x36], dl
	mov	dl, byte ptr [rbp - 0x76]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x32], dl
	mov	dl, byte ptr [rbp - 0x74]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x34], dl
	mov	dl, byte ptr [rbp - 0x73]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x35], dl
	mov	dl, byte ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x38], dl
	mov	dl, byte ptr [rbp - 0x75]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x33], dl
	mov	dl, byte ptr [rbp - 0x71]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x37], dl
.label_2256:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x33]
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0xc9]
	and	cl, 1
	movzx	esi, cl
	or	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xc9], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2230
.label_2227:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [compress_program]],  rax
	jmp	.label_2197
.label_2249:
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_2251
	movabs	rdx, OFFSET FLAT:label_2182
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x18
	mov	rdi, rax
	mov	rsi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
.label_2251:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_2267
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2267
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, -1
	mov	qword ptr [rax + 0x10], rcx
.label_2267:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	set_ordering
	cmp	byte ptr [rax], 0
	je	.label_2170
	movabs	rsi, OFFSET FLAT:label_2283
	mov	rdi, qword ptr [rbp - 0x2e8]
	call	badfieldspec
.label_2288:
	mov	rax,  qword ptr [word ptr [optarg]]
	cmp	byte ptr [rax + 1], 0
	je	.label_2199
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	eax, OFFSET FLAT:label_2287
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2294
	mov	byte ptr [rbp - 0x2eb], 0
	jmp	.label_2297
.label_2278:
	movabs	rax, OFFSET FLAT:label_722
	mov	qword ptr [rbp - 0x408], rax
	jmp	.label_2171
.label_2171:
	mov	rax, qword ptr [rbp - 0x408]
	mov	rdi, rax
	call	add_temp_dir
.label_2271:
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_2180
	mov	qword ptr [rbp - 0xe0], 1
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdi, rax
	call	free
	mov	ecx, 8
	mov	edi, ecx
	call	xmalloc
	movabs	rdi, OFFSET FLAT:label_65
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rax], rdi
.label_2180:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [sort_size]]
	jae	.label_2204
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	jbe	.label_2208
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 0x410], rax
	jmp	.label_2292
.label_2487:
	mov	byte ptr [rbp - 0xbe], 1
	jmp	.label_2197
.label_2492:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	ecx,  dword ptr [dword ptr [optind]]
	sub	ecx, 1
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rsi + rdx*8]
	jne	.label_2218
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x2f8], rax
.label_2243:
	mov	rax, qword ptr [rbp - 0x2f8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_2236
	jmp	.label_2279
.label_2279:
	mov	rax, qword ptr [rbp - 0x2f8]
	add	rax, 1
	mov	qword ptr [rbp - 0x2f8], rax
	jmp	.label_2243
.label_2491:
	mov	byte ptr [byte ptr [unique]],  1
	jmp	.label_2197
.label_2493:
	mov	byte ptr [byte ptr [eolchar]],  0
	jmp	.label_2197
.label_2246:
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_2259
	movabs	rdx, OFFSET FLAT:label_2182
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x18
	mov	rdi, rax
	mov	rsi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
.label_2259:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	set_ordering
	mov	qword ptr [rbp - 0xb8], rax
.label_2221:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	byte ptr [rax], 0
	je	.label_2281
	movabs	rsi, OFFSET FLAT:label_2283
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_2174:
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	byte ptr [rbp - 0xbd], cl
	jmp	.label_2197
.label_2312:
	movabs	rax, OFFSET FLAT:caught_signals
	mov	ecx, 0x80
	mov	edx, ecx
	lea	rsi, [rbp - 0x2d8]
	movabs	rdi, OFFSET FLAT:sighandler
	mov	qword ptr [rbp - 0x2d8], rdi
	add	rsi, 8
	mov	rdi, rsi
	mov	rsi, rax
	call	memcpy
	mov	dword ptr [rbp - 0x250], 0
	mov	qword ptr [rbp - 0x240], 0
.label_2300:
	cmp	qword ptr [rbp - 0x240], 0xb
	jae	.label_2311
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	rax, qword ptr [rbp - 0x240]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + main.sig]]
	call	sigismember
	cmp	eax, 0
	je	.label_2302
	lea	rsi, [rbp - 0x2d8]
	xor	eax, eax
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x240]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + main.sig]]
	call	sigaction
	mov	dword ptr [rbp - 0x360], eax
.label_2302:
	jmp	.label_2299
.label_2299:
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, 1
	mov	qword ptr [rbp - 0x240], rax
	jmp	.label_2300
.label_2295:
	movabs	rdx, OFFSET FLAT:label_2285
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x10
	mov	rdi, rax
	mov	rsi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rax + 0x10], rdx
	cmp	rcx, 0
	jne	.label_2246
	movabs	rsi, OFFSET FLAT:label_2232
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_2311:
	mov	edi, 0x11
	xor	eax, eax
	mov	esi, eax
	call	signal
	movabs	rdi, OFFSET FLAT:exit_cleanup
	mov	qword ptr [rbp - 0x368], rax
	call	atexit
	lea	rdi, [rbp - 0xa8]
	mov	dword ptr [rbp - 0x36c], eax
	call	key_init
	mov	ecx, 8
	mov	esi, ecx
	mov	qword ptr [rbp - 0xa8], -1
	movsxd	rdi, dword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x378], rax
	call	xnmalloc
	mov	qword ptr [rbp - 0xf8], rax
.label_2224:
	mov	dword ptr [rbp - 0x2dc], 0xffffffff
	cmp	dword ptr [rbp - 0xbc], -1
	je	.label_2176
	test	byte ptr [rbp - 0xe1], 1
	je	.label_2250
	cmp	qword ptr [rbp - 0xe0], 0
	je	.label_2250
	test	byte ptr [rbp - 0xe9], 1
	je	.label_2176
	cmp	byte ptr [rbp - 0xbd], 0
	jne	.label_2176
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	je	.label_2176
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	jne	.label_2176
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0x6f
	jne	.label_2176
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0
	jne	.label_2250
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	cmp	eax, dword ptr [rbp - 8]
	je	.label_2176
.label_2250:
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x2dc]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0xbc], eax
	cmp	eax, -1
	jne	.label_2192
.label_2176:
	mov	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jg	.label_2183
	jmp	.label_2200
.label_2220:
	test	byte ptr [rbp - 0x229], 1
	je	.label_2202
	mov	edi, 3
	movabs	rsi, OFFSET FLAT:label_77
	call	setlocale
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 0x229], cl
.label_2202:
	test	byte ptr [rbp - 0x229], 1
	jne	.label_2213
	movabs	rdi, OFFSET FLAT:label_2187
	call	gettext
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:label_1149
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, rax
	mov	al, 0
	call	error
.label_2213:
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	je	.label_2257
	movabs	rdi, OFFSET FLAT:label_2235
	call	gettext
	mov	edi, 3
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x400], rax
	call	setlocale
	mov	rdi, rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x400]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_2255
.label_2240:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x228]
	call	merge
	jmp	.label_2262
.label_2188:
	mov	rdi, qword ptr [rbp - 0x300]
	mov	rsi, qword ptr [rbp - 0x100]
	call	xfclose
	cmp	qword ptr [rbp - 0x220], 0
	je	.label_2206
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0x220]
	mov	qword ptr [rbp - 0xe0], rax
	mov	qword ptr [rbp - 0x308], 0
.label_2219:
	mov	rax, qword ptr [rbp - 0x308]
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_2282
	mov	rax, qword ptr [rbp - 0x308]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:label_65
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_2290
	movabs	rdi, OFFSET FLAT:label_2272
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x308]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x3e0], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x3e0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_2276:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdi, qword ptr [rax]
	movsx	esi, byte ptr [rbp - 0xbd]
	call	check
	mov	esi, 1
	xor	ecx, ecx
	test	al, 1
	cmovne	esi, ecx
	mov	dword ptr [rbp - 4], esi
	jmp	.label_2190
.label_2297:
	jmp	.label_2199
.label_2199:
	cmp	dword ptr [dword ptr [tab]],  0x80
	je	.label_2196
	mov	eax,  dword ptr [dword ptr [tab]]
	movsx	ecx, byte ptr [rbp - 0x2eb]
	cmp	eax, ecx
	je	.label_2196
	movabs	rdi, OFFSET FLAT:label_2207
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_2209:
	test	byte ptr [rbp - 0x2dd], 1
	je	.label_2214
	movabs	rdx, OFFSET FLAT:label_2191
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdi + rsi*8]
	mov	qword ptr [rbp - 0x2e8], rsi
	mov	rsi, qword ptr [rbp - 0x2e8]
	add	rsi, 1
	mov	rdi, qword ptr [rbp - 0x18]
	add	rdi, 0x10
	mov	qword ptr [rbp - 0x390], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x390]
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_2241
	jmp	.label_2249
.label_2294:
	movabs	rdi, OFFSET FLAT:label_2252
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x3a8], rax
	call	quote
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x3a8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_2498:
	mov	edi, dword ptr [rbp - 0x2dc]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	esi, cl
	call	specify_nmerge
	jmp	.label_2197
.label_2500:
	movabs	rdi, OFFSET FLAT:label_2275
	movabs	rdx, OFFSET FLAT:sort_args
	movabs	rcx, OFFSET FLAT:sort_types
	mov	eax, 1
	mov	r8d, eax
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	call	__xargmatch_internal
	movsx	r10d,  byte ptr [byte ptr [+ (rax * 1) + sort_types]]
	mov	dword ptr [rbp - 0xbc], r10d
.label_2483:
	lea	rsi, [rbp - 0xa8]
	mov	edx, 2
	lea	rdi, [rbp - 0x2ea]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	byte ptr [rbp - 0x2ea], cl
	mov	byte ptr [rbp - 0x2e9], 0
	call	set_ordering
	mov	qword ptr [rbp - 0x398], rax
	jmp	.label_2197
.label_2291:
	movabs	rsi, OFFSET FLAT:label_418
	mov	rdi, qword ptr [rbp - 0x100]
	call	xfopen
	lea	rdi, [rbp - 0x220]
	mov	qword ptr [rbp - 0x300], rax
	call	readtokens0_init
	lea	rsi, [rbp - 0x220]
	mov	rdi, qword ptr [rbp - 0x300]
	call	readtokens0
	test	al, 1
	jne	.label_2188
	movabs	rdi, OFFSET FLAT:label_2193
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x3d8], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x3d8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_2217:
	mov	rax, qword ptr [rbp - 0x338]
	mov	qword ptr [rbp - 0x428], rax
.label_2194:
	mov	rax, qword ptr [rbp - 0x428]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x228]
	mov	rcx, qword ptr [rbp - 0xd8]
	call	sort
.label_2262:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_2222
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_2222
	movabs	rdi, OFFSET FLAT:label_1258
	call	gettext
	movabs	rsi, OFFSET FLAT:label_65
	mov	rdi, rax
	call	sort_die
.label_2281:
	mov	rdi, qword ptr [rbp - 0x18]
	call	insertkey
	jmp	.label_2197
.label_2499:
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_2247
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi,  qword ptr [word ptr [optarg]]
	call	strcmp
	cmp	eax, 0
	je	.label_2247
	movabs	rdi, OFFSET FLAT:label_2260
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_2486:
	lea	rdi, [rbp - 0x60]
	call	key_init
	movabs	rdx, OFFSET FLAT:label_2270
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsi, qword ptr [rbp - 0x18]
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rax]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rax], rsi
	cmp	rdx, 0
	jne	.label_2277
	movabs	rsi, OFFSET FLAT:label_2232
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_2247:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_2197
.label_2282:
	jmp	.label_2289
.label_2222:
	mov	dword ptr [rbp - 4], 0
.label_2190:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x430
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bbf6
	.globl sub_41bbf6
	.type sub_41bbf6, @function
sub_41bbf6:

	nop	dword ptr [rax + rax]
.label_2236:
	mov	rax, qword ptr [rbp - 0x2f8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	mov	esi,  dword ptr [dword ptr [optind]]
	sub	esi, ecx
	mov	dword ptr [dword ptr [optind]],  esi
.label_2218:
	jmp	.label_2197
.label_2183:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rbp - 0xe0], rdi
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	qword ptr [rdi + rsi*8], rdx
	jmp	.label_2179
.label_2195:
	jmp	.label_2198
.label_2198:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_2201
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2201
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], -1
.label_2201:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	set_ordering
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2c
	je	.label_2295
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x10], -1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x18], 0
	jmp	.label_2221
.label_2238:
	jmp	.label_2175
.label_2175:
	jmp	.label_2234
.label_2234:
	mov	rax, qword ptr [rbp - 0x308]
	add	rax, 1
	mov	qword ptr [rbp - 0x308], rax
	jmp	.label_2219
.label_2485:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	add_temp_dir
	jmp	.label_2197
.label_2257:
	movabs	rdi, OFFSET FLAT:label_2242
	call	gettext
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:label_1149
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, rax
	mov	al, 0
	call	error
.label_2255:
	lea	rdi, [rbp - 0xa8]
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	movzx	esi, al
	call	key_warnings
.label_2211:
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	mov	byte ptr [byte ptr [reverse]],  al
	test	byte ptr [rbp - 0xc9], 1
	je	.label_2261
	mov	rdi, qword ptr [rbp - 0xc8]
	call	random_md5_state_init
.label_2261:
	cmp	qword ptr [word ptr [temp_dir_count]],  0
	jne	.label_2271
	movabs	rdi, OFFSET FLAT:label_2274
	call	getenv
	mov	qword ptr [rbp - 0x318], rax
	cmp	qword ptr [rbp - 0x318], 0
	je	.label_2278
	mov	rax, qword ptr [rbp - 0x318]
	mov	qword ptr [rbp - 0x408], rax
	jmp	.label_2171
.label_2205:
	mov	edi, 2
	call	usage
.label_2496:
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_2197
.label_2200:
	cmp	qword ptr [rbp - 0x100], 0
	je	.label_2172
	cmp	qword ptr [rbp - 0xe0], 0
	je	.label_2291
	movabs	rdi, OFFSET FLAT:label_2177
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x3b8], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x3bc], edi
	mov	esi, dword ptr [rbp - 0x3bc]
	mov	rdx, qword ptr [rbp - 0x3b8]
	mov	rcx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:label_2185
	mov	rcx,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x3c8], rcx
	call	gettext
	movabs	rsi, OFFSET FLAT:label_1407
	mov	rdi, qword ptr [rbp - 0x3c8]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi, 2
	mov	dword ptr [rbp - 0x3cc], eax
	call	usage
.label_2192:
	mov	eax, dword ptr [rbp - 0xbc]
	add	eax, 0x83
	mov	ecx, eax
	sub	eax, 0x10a
	mov	qword ptr [rbp - 0x380], rcx
	mov	dword ptr [rbp - 0x384], eax
	ja	.label_2205
	mov	rax, qword ptr [rbp - 0x380]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2212]]
	jmp	rcx
.label_2170:
	jmp	.label_2214
.label_2214:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x39], 1
	mov	rdi, qword ptr [rbp - 0x18]
	call	insertkey
.label_2280:
	jmp	.label_2225
.label_2225:
	jmp	.label_2228
.label_2228:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2231
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0xe0], rdx
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
.label_2231:
	jmp	.label_2197
	.section	.text
	.align	16
	#Procedure 0x41bf10

	.globl cs_enter
	.type cs_enter, @function
cs_enter:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	movabs	rsi, OFFSET FLAT:caught_signals
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 8
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rdx, qword ptr [rbp - 0x18]
	call	pthread_sigmask
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	sete	cl
	mov	rdx, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rdx], cl
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bf58
	.globl sub_41bf58
	.type sub_41bf58, @function
sub_41bf58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41bf60

	.globl merge_tree_init
	.type merge_tree_init, @function
merge_tree_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	shl	rdx, 8
	mov	rdi, rdx
	call	xmalloc
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x30], rax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x38], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x50], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax + 0x54], 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x58
	mov	rdi, rax
	call	pthread_mutex_init
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rdx, 0x80
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x34], eax
	call	init_node
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, rcx
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c054
	.globl sub_41c054
	.type sub_41c054, @function
sub_41c054:

	nop	word ptr cs:[rax + rax]
.label_2317:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_2315
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_2315:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_2318:
	jmp	.label_2319
.label_2319:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2322
	.section	.text
	.align	16
	#Procedure 0x41c0ad
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_2322:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_2321
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_2318
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_2320:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2317
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_2316
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_2316:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2320
.label_2321:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c179
	.globl sub_41c179
	.type sub_41c179, @function
sub_41c179:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41c180

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
	jne	.label_2323
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_2323:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2325
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2324
.label_2325:
	call	abort
.label_2324:
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
	.align	16
	#Procedure 0x41c1f0

	.globl strnumcmp
	.type strnumcmp, @function
strnumcmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x18]
	call	numcompare_0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c21f
	.globl sub_41c21f
	.type sub_41c21f, @function
sub_41c21f:

	nop	
.label_2328:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c226
	.globl sub_41c226
	.type sub_41c226, @function
sub_41c226:

	nop	dword ptr [rax + rax]
.label_2327:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_2329:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x820
	mov	rdi, rax
	mov	rsi, rcx
	call	isaac_refill
	mov	qword ptr [rbp - 0x20], 0x800
	jmp	.label_2331
.label_2330:
	jmp	.label_2326
.label_2332:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x820
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	rcx, qword ptr [rbp - 0x10]
	and	rcx, 7
	cmp	rcx, 0
	jne	.label_2329
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_2326:
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	ja	.label_2327
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	isaac_refill
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x800
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x800
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2330
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	jmp	.label_2328
	.section	.text
	.align	16
	#Procedure 0x41c327

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
.label_2331:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2332
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x820
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	jmp	.label_2328
	.section	.text
	.align	16
	#Procedure 0x41c3a0

	.globl incompatible_options
	.type incompatible_options, @function
incompatible_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_2333
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	al, 0
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c3e0
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
	.align	16
	#Procedure 0x41c40f
	.globl sub_41c40f
	.type sub_41c40f, @function
sub_41c40f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x41c410

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c452
	.globl sub_41c452
	.type sub_41c452, @function
sub_41c452:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c460

	.globl reap_exited
	.type reap_exited, @function
reap_exited:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	jmp	.label_2334
.label_2334:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	mov	byte ptr [rbp - 1], cl
	jge	.label_2336
	xor	edi, edi
	call	reap
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 1], cl
.label_2336:
	mov	al, byte ptr [rbp - 1]
	test	al, 1
	jne	.label_2335
	jmp	.label_2337
.label_2335:
	jmp	.label_2334
.label_2337:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c4ae
	.globl sub_41c4ae
	.type sub_41c4ae, @function
sub_41c4ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x41c4b0

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x18
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	call	_obstack_begin
	xor	r9d, r9d
	mov	ecx, r9d
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0x70
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], eax
	call	_obstack_begin
	xor	r9d, r9d
	mov	ecx, r9d
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0xc8
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	_obstack_begin
	mov	dword ptr [rbp - 0x30], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c594
	.globl sub_41c594
	.type sub_41c594, @function
sub_41c594:

	nop	word ptr cs:[rax + rax]
.label_2348:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 1
	jae	.label_2344
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	_obstack_newchunk
.label_2344:
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rdx + 0x18], rdi
	mov	byte ptr [rsi], cl
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_2345
	mov	rdi, qword ptr [rbp - 0x10]
	call	save_token
.label_2345:
	jmp	.label_2340
.label_2341:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 8
	jae	.label_2339
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x68]
	call	_obstack_newchunk
.label_2339:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 8
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_2342
	mov	rax, qword ptr [rbp - 0x90]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_2342:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x90]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	jbe	.label_2343
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x18], rax
.label_2343:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0xc8
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_2346
	mov	rax, qword ptr [rbp - 0xa8]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_2346:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0xa8]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	jbe	.label_2347
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + 0x18], rax
.label_2347:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	call	ferror
	cmp	eax, 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c8d2
	.globl sub_41c8d2
	.type sub_41c8d2, @function
sub_41c8d2:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c8d7

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_2340:
	mov	rdi, qword ptr [rbp - 8]
	call	fgetc
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], -1
	jne	.label_2348
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2338
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 1
	jae	.label_2349
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x38]
	call	_obstack_newchunk
.label_2349:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x18], rdx
	mov	byte ptr [rcx], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	save_token
.label_2338:
	jmp	.label_2341
	.section	.text
	.align	16
	#Procedure 0x41c9a0
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
	je	.label_2350
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2351
.label_2350:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2351
.label_2351:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c9e7
	.globl sub_41c9e7
	.type sub_41c9e7, @function
sub_41c9e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41c9f0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x41c9fe
	.globl sub_41c9fe
	.type sub_41c9fe, @function
sub_41c9fe:

	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ca00

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
	jb	.label_2352
	jmp	.label_2354
.label_2354:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2352
	jmp	.label_2353
.label_2353:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2355
	jmp	.label_2352
.label_2352:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2356
.label_2355:
	mov	byte ptr [rbp - 1], 0
.label_2356:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ca65
	.globl sub_41ca65
	.type sub_41ca65, @function
sub_41ca65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41cad5
	.globl sub_41cad5
	.type sub_41cad5, @function
sub_41cad5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41cae2
	.globl sub_41cae2
	.type sub_41cae2, @function
sub_41cae2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41cb06
	.globl sub_41cb06
	.type sub_41cb06, @function
sub_41cb06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41cb19
	.globl sub_41cb19
	.type sub_41cb19, @function
sub_41cb19:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x41cb20

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x41cb30

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
