	.section	.text
	.align	16
	#Procedure 0x401699
	.globl sub_401699
	.type sub_401699, @function
sub_401699:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40169a
	.globl sub_40169a
	.type sub_40169a, @function
sub_40169a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016d2
	.globl sub_4016d2
	.type sub_4016d2, @function
sub_4016d2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40171a
	.globl sub_40171a
	.type sub_40171a, @function
sub_40171a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40173c
	.globl sub_40173c
	.type sub_40173c, @function
sub_40173c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40174d
	.globl sub_40174d
	.type sub_40174d, @function
sub_40174d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401766
	.globl sub_401766
	.type sub_401766, @function
sub_401766:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401770

	.globl set_uint32
	.type set_uint32, @function
set_uint32:
	mov	dword ptr [rdi], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401773
	.globl sub_401773
	.type sub_401773, @function
sub_401773:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401780

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
	je	.label_9
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
.label_9:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4017d2
	.globl sub_4017d2
	.type sub_4017d2, @function
sub_4017d2:

	nop	word ptr cs:[rax + rax]
.label_13:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_10
	.section	.text
	.align	16
	#Procedure 0x4017ec

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_14
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_13
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_13
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_12
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_10
.label_14:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_10:
	test	ebx, ebx
	js	.label_12
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_12
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_11
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_12
.label_11:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_12:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018a3
	.globl sub_4018a3
	.type sub_4018a3, @function
sub_4018a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018b0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_15
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_15
.label_16:
	ret	
.label_15:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_16
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4018d6
	.globl sub_4018d6
	.type sub_4018d6, @function
sub_4018d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018e0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x4018e5
	.globl sub_4018e5
	.type sub_4018e5, @function
sub_4018e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018f0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_17
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_17:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40190a
	.globl sub_40190a
	.type sub_40190a, @function
sub_40190a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401910

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r8, rsi
	and	r8, 0xfffffffffffffffc
	add	r8, rdi
	mov	r10d, dword ptr [rdx]
	mov	ebx, dword ptr [rdx + 4]
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	mov	rax, rsi
	shr	rax, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	add	ecx, esi
	mov	dword ptr [rdx + 0x10], ecx
	adc	eax, 0
	mov	qword ptr [rsp - 0x28], rdx
	add	dword ptr [rdx + 0x14], eax
	cmp	rdi, r8
	jae	.label_19
	mov	qword ptr [rsp - 0x20], r8
	nop	word ptr [rax + rax]
.label_18:
	mov	qword ptr [rsp - 0x78], rbx
	mov	qword ptr [rsp - 8], rbp
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp - 0x34], r10d
	mov	eax, r9d
	xor	eax, ebp
	and	eax, ebx
	xor	eax, ebp
	add	eax, r10d
	mov	ecx, dword ptr [rdi]
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 0x58], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	mov	qword ptr [rsp - 0x10], r10
	rol	edx, 7
	mov	rax, qword ptr [rsp - 0x78]
	add	edx, eax
	mov	rax, qword ptr [rsp - 0x78]
	xor	eax, r9d
	and	eax, edx
	xor	eax, r9d
	lea	ecx, [rbp + rsi]
	lea	ebp, [rax + rcx - 0x173848aa]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	mov	rcx, qword ptr [rsp - 0x78]
	xor	eax, ecx
	and	eax, ebp
	mov	rcx, qword ptr [rsp - 0x78]
	xor	eax, ecx
	mov	ecx, dword ptr [rdi + 8]
	mov	qword ptr [rsp - 0x30], rcx
	lea	ecx, [r9 + rcx]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	add	ebx, ebp
	mov	eax, ebp
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	esi, dword ptr [rdi + 0xc]
	mov	rcx, qword ptr [rsp - 0x78]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	mov	qword ptr [rsp - 0x18], r12
	lea	eax, [rax + rcx - 0x3e423112]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	xor	ecx, ebp
	and	ecx, eax
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	mov	dword ptr [rsp - 0x64], esi
	add	edx, esi
	lea	ecx, [rcx + rdx - 0xa83f051]
	rol	ecx, 7
	add	ecx, eax
	mov	edx, eax
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x6c], esi
	add	ebp, esi
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	mov	edx, ecx
	xor	edx, eax
	and	edx, r8d
	xor	edx, eax
	mov	esi, dword ptr [rdi + 0x18]
	add	ebx, esi
	mov	dword ptr [rsp - 0x38], esi
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	rol	ebx, 0x11
	add	ebx, r8d
	mov	ebp, r8d
	xor	ebp, ecx
	and	ebp, ebx
	xor	ebp, ecx
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x60], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	rol	r9d, 0x16
	add	r9d, ebx
	mov	eax, ebx
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	edx, dword ptr [rdi + 0x20]
	mov	dword ptr [rsp - 0x68], edx
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	rol	ecx, 7
	add	ecx, r9d
	mov	eax, r9d
	xor	eax, ebx
	and	eax, ecx
	xor	eax, ebx
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp - 0x7c], edx
	add	r8d, edx
	lea	ebp, [rax + r8 - 0x74bb0851]
	rol	ebp, 0xc
	add	ebp, ecx
	mov	eax, ecx
	xor	eax, r9d
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	add	ebx, edx
	mov	r13d, edx
	mov	dword ptr [rsp - 0x48], r13d
	lea	r15d, [rax + rbx - 0xa44f]
	rol	r15d, 0x11
	add	r15d, ebp
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	add	r9d, edx
	mov	dword ptr [rsp - 0x5c], edx
	lea	r11d, [rax + r9 - 0x76a32842]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	xor	eax, ebp
	mov	ebx, dword ptr [rdi + 0x30]
	mov	dword ptr [rsp - 0x40], ebx
	add	ecx, ebx
	lea	ecx, [rax + rcx + 0x6b901122]
	rol	ecx, 7
	add	ecx, r11d
	mov	eax, r11d
	xor	eax, r15d
	and	eax, ecx
	xor	eax, r15d
	mov	ebx, dword ptr [rdi + 0x34]
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	add	r9d, ecx
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r9d
	xor	eax, r11d
	mov	r14d, dword ptr [rdi + 0x38]
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	add	r8d, r9d
	mov	eax, r9d
	xor	eax, ecx
	and	eax, r8d
	xor	eax, ecx
	mov	ebp, dword ptr [rdi + 0x3c]
	add	r11d, ebp
	mov	r15d, ebp
	mov	dword ptr [rsp - 0x3c], r15d
	lea	r11d, [rax + r11 + 0x49b40821]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	rbp, qword ptr [rsp - 0x58]
	add	ecx, ebp
	lea	ecx, [rax + rcx - 0x9e1da9e]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	r9d, esi
	lea	ebp, [rax + r9 - 0x3fbf4cc0]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x265e5a51]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x16493856]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	mov	r9d, dword ptr [rsp - 0x6c]
	add	ecx, r9d
	lea	ecx, [rax + rcx - 0x29d0efa3]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	ebp, r13d
	lea	ebp, [rax + rbp + 0x2441453]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r15d
	lea	r8d, [rax + r8 - 0x275e197f]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x64]
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, dword ptr [rsp - 0x7c]
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	r13d, r14d
	mov	dword ptr [rsp - 0x4c], r13d
	add	ebp, r13d
	lea	ebp, [rax + rbp - 0x3cc8f82a]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r12d
	lea	r8d, [rax + r8 - 0xb2af279]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	esi, dword ptr [rsp - 0x68]
	add	r11d, esi
	lea	r11d, [rax + r11 + 0x455a14ed]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	mov	dword ptr [rsp - 0x44], ebx
	lea	ecx, [rax + rcx - 0x561c16fb]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x30]
	add	ebp, edx
	lea	r14d, [rax + rbp - 0x3105c08]
	rol	r14d, 9
	add	r14d, ecx
	mov	eax, r14d
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	mov	edx, dword ptr [rsp - 0x60]
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x676f02d9]
	rol	r8d, 0xe
	add	r8d, r14d
	mov	ebp, r8d
	xor	ebp, r14d
	mov	eax, ebp
	and	eax, ecx
	xor	eax, r14d
	mov	r15d, dword ptr [rsp - 0x40]
	add	r11d, r15d
	lea	eax, [rax + r11 - 0x72d5b376]
	rol	eax, 0x14
	add	eax, r8d
	xor	ebp, eax
	add	ecx, r9d
	lea	r11d, [rbp + rcx - 0x5c6be]
	rol	r11d, 4
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	add	r14d, esi
	lea	r14d, [rcx + r14 - 0x788e097f]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	ebp, r11d
	xor	ebp, eax
	xor	ebp, r14d
	add	r8d, dword ptr [rsp - 0x5c]
	lea	ebp, [rbp + r8 + 0x6d9d6122]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, ebp
	add	eax, r13d
	lea	r8d, [rcx + rax - 0x21ac7f4]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	mov	rcx, qword ptr [rsp - 0x58]
	add	r11d, ecx
	lea	r11d, [rax + r11 - 0x5b4115bc]
	rol	r11d, 4
	add	r11d, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, r11d
	add	r14d, r10d
	lea	r14d, [rcx + r14 + 0x4bdecfa9]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	eax, r11d
	xor	eax, r8d
	xor	eax, r14d
	add	ebp, edx
	lea	ebp, [rax + rbp - 0x944b4a0]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	eax, r14d
	xor	eax, r11d
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x48]
	add	r8d, r10d
	lea	r8d, [rax + r8 - 0x41404390]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	add	r11d, ebx
	lea	eax, [rax + r11 + 0x289b7ec6]
	rol	eax, 4
	add	eax, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, eax
	mov	rsi, qword ptr [rsp - 0x10]
	add	r14d, esi
	lea	r11d, [rcx + r14 - 0x155ed806]
	rol	r11d, 0xb
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	mov	r9, qword ptr [rsp - 0x18]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	rol	r14d, 0x10
	add	r14d, r11d
	mov	ecx, r11d
	xor	ecx, eax
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x38]
	add	r8d, r12d
	lea	r8d, [rcx + r8 + 0x4881d05]
	rol	r8d, 0x17
	add	r8d, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, r8d
	add	eax, dword ptr [rsp - 0x7c]
	lea	ecx, [rcx + rax - 0x262b2fc7]
	rol	ecx, 4
	add	ecx, r8d
	mov	eax, r8d
	xor	eax, r14d
	xor	eax, ecx
	add	r11d, r15d
	lea	edx, [rax + r11 - 0x1924661b]
	rol	edx, 0xb
	add	edx, ecx
	mov	ebp, ecx
	xor	ebp, r8d
	xor	ebp, edx
	mov	r13d, dword ptr [rsp - 0x3c]
	add	r14d, r13d
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	rol	r11d, 0x10
	add	r11d, edx
	mov	ebp, edx
	xor	ebp, ecx
	xor	ebp, r11d
	mov	rax, qword ptr [rsp - 0x30]
	add	r8d, eax
	mov	r14, rax
	lea	r8d, [rbp + r8 - 0x3b53a99b]
	add	ecx, esi
	rol	r8d, 0x17
	add	r8d, r11d
	mov	eax, edx
	not	eax
	or	eax, r8d
	xor	eax, r11d
	lea	ecx, [rax + rcx - 0xbd6ddbc]
	add	edx, dword ptr [rsp - 0x60]
	rol	ecx, 6
	add	ecx, r8d
	mov	eax, r11d
	not	eax
	or	eax, ecx
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	add	r11d, dword ptr [rsp - 0x4c]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	eax, r8d
	not	eax
	or	eax, ebp
	xor	eax, ecx
	lea	eax, [rax + r11 - 0x546bdc59]
	add	r8d, dword ptr [rsp - 0x6c]
	rol	eax, 0xf
	add	eax, ebp
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	esi, [rdx + r8 - 0x36c5fc7]
	add	ecx, r15d
	rol	esi, 0x15
	add	esi, eax
	mov	edx, ebp
	not	edx
	or	edx, esi
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x655b59c3]
	add	ebp, r9d
	rol	ecx, 6
	add	ecx, esi
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, esi
	lea	ebp, [rdx + rbp - 0x70f3336e]
	add	eax, r10d
	mov	rbx, qword ptr [rsp - 0x78]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	edx, esi
	not	edx
	or	edx, ebp
	xor	edx, ecx
	lea	eax, [rdx + rax - 0x100b83]
	rol	eax, 0xf
	add	eax, ebp
	mov	rdx, qword ptr [rsp - 0x58]
	add	esi, edx
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	add	r8d, eax
	add	ecx, dword ptr [rsp - 0x68]
	mov	edx, ebp
	not	edx
	or	edx, r8d
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x6fa87e4f]
	rol	ecx, 6
	add	ecx, r8d
	add	ebp, r13d
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, r8d
	lea	edx, [rdx + rbp - 0x1d31920]
	rol	edx, 0xa
	add	edx, ecx
	add	eax, r12d
	mov	esi, r8d
	not	esi
	or	esi, edx
	xor	esi, ecx
	lea	ebp, [rsi + rax - 0x5cfebcec]
	rol	ebp, 0xf
	add	ebp, edx
	add	r8d, dword ptr [rsp - 0x44]
	mov	eax, ecx
	not	eax
	or	eax, ebp
	xor	eax, edx
	lea	esi, [rax + r8 + 0x4e0811a1]
	mov	r8, qword ptr [rsp - 0x20]
	mov	r10d, dword ptr [rsp - 0x34]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x64]
	mov	eax, edx
	not	eax
	or	eax, esi
	xor	eax, ebp
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	add	ecx, esi
	add	edx, dword ptr [rsp - 0x5c]
	mov	eax, ebp
	not	eax
	or	eax, ecx
	xor	eax, esi
	lea	edx, [rax + rdx - 0x42c50dcb]
	rol	edx, 0xa
	add	edx, ecx
	add	ebp, r14d
	mov	eax, esi
	not	eax
	or	eax, edx
	xor	eax, ecx
	lea	eax, [rax + rbp + 0x2ad7d2bb]
	add	esi, dword ptr [rsp - 0x7c]
	rol	eax, 0xf
	add	eax, edx
	add	r10d, ecx
	not	ecx
	or	ecx, eax
	xor	ecx, edx
	lea	ecx, [rcx + rsi - 0x14792c6f]
	rol	ecx, 0x15
	add	ebx, eax
	add	ebx, ecx
	mov	rcx, qword ptr [rsp]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 8]
	add	edx, ecx
	add	rdi, 0x40
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_18
	jmp	.label_20
.label_19:
	mov	edx, ebp
	mov	eax, r9d
.label_20:
	mov	rcx, qword ptr [rsp - 0x28]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40211c
	.globl sub_40211c
	.type sub_40211c, @function
sub_40211c:

	nop	dword ptr [rax]
.label_22:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_21
	test	cl, cl
	jne	.label_21
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_21:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40214b
	.globl sub_40214b
	.type sub_40214b, @function
sub_40214b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402155

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
	je	.label_22
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_21
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_21
	.section	.text
	.align	16
	#Procedure 0x402190

	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	esi, dword ptr [r14]
	mov	rdi, rbx
	call	set_uint32
	lea	rdi, [rbx + 4]
	mov	esi, dword ptr [r14 + 4]
	call	set_uint32
	lea	rdi, [rbx + 8]
	mov	esi, dword ptr [r14 + 8]
	call	set_uint32
	lea	rdi, [rbx + 0xc]
	mov	esi, dword ptr [r14 + 0xc]
	call	set_uint32
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021d7
	.globl sub_4021d7
	.type sub_4021d7, @function
sub_4021d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4021e0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_32
	mov	edx, OFFSET FLAT:label_23
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_28
.label_32:
	mov	edx, OFFSET FLAT:label_29
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
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
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_39
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_41]]
.label_577:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_26
.label_578:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_576:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_583:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_26:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023cb
	.globl sub_4023cb
	.type sub_4023cb, @function
sub_4023cb:

	nop	dword ptr [rax + rax]
.label_584:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_26
.label_581:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_26
.label_579:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_26
.label_580:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_26
.label_575:
	add	rsp, 8
	jmp	.label_26
.label_582:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_26
.label_42:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402543
	.globl sub_402543
	.type sub_402543, @function
sub_402543:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40254b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_42
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x402560

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40256e
	.globl sub_40256e
	.type sub_40256e, @function
sub_40256e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402570

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_46
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_49
	cmp	r12d, 0x7fffffff
	je	.label_44
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_47
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_47:
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_49:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_45
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_48
.label_45:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_43
	mov	rdi, r14
	call	free
.label_43:
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_48:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_46:
	call	abort
.label_44:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40272d
	.globl sub_40272d
	.type sub_40272d, @function
sub_40272d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402730
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402743
	.globl sub_402743
	.type sub_402743, @function
sub_402743:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402750
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40275a
	.globl sub_40275a
	.type sub_40275a, @function
sub_40275a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40276a
	.globl sub_40276a
	.type sub_40276a, @function
sub_40276a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402770
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40277d
	.globl sub_40277d
	.type sub_40277d, @function
sub_40277d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402780
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
	#Procedure 0x402790
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40279a
	.globl sub_40279a
	.type sub_40279a, @function
sub_40279a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027a0

	.globl digest_check
	.type digest_check, @function
digest_check:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	rbp, rdi
	lea	rdi, [rsp + 0x70]
	call	ptr_align
	mov	qword ptr [rsp + 0x58], rax
	cmp	byte ptr [rbp], 0x2d
	jne	.label_78
	cmp	byte ptr [rbp + 1], 0
	je	.label_95
.label_78:
	mov	esi, OFFSET FLAT:label_93
	mov	rdi, rbp
	call	fopen_safer
	mov	r14, rax
	test	r14, r14
	je	.label_98
	mov	qword ptr [rsp + 0x20], rbp
	mov	dword ptr [rsp + 0x2c], 0
	jmp	.label_104
.label_98:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_54
.label_95:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x20], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x2c], eax
	mov	r14,  qword ptr [word ptr [rip + stdin]]
.label_104:
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0x18], 0
	lea	rbp, [rsp + 8]
	lea	rbx, [rsp + 0x18]
	mov	r12d, 0
	mov	eax, 0
	mov	qword ptr [rsp + 0x30], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_72
	.section	.text
	.align	16
	#Procedure 0x402896
	.globl sub_402896
	.type sub_402896, @function
sub_402896:

	nop	word ptr cs:[rax + rax]
.label_96:
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0x23
	je	.label_77
	cmp	byte ptr [rcx + rax - 1], 0xa
	jne	.label_59
	dec	rax
	mov	byte ptr [rcx + rax], 0
.label_59:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rax
	lea	rdx, [rsp + 0x60]
	lea	rcx, [rsp + 0x6c]
	lea	r8, [rsp + 0x38]
	call	split_3
	test	al, al
	je	.label_97
	mov	eax, dword ptr [rsp + 0x2c]
	test	al, al
	je	.label_63
	mov	rax, qword ptr [rsp + 0x38]
	cmp	byte ptr [rax], 0x2d
	jne	.label_63
	cmp	byte ptr [rax + 1], 0
	je	.label_97
	nop	word ptr cs:[rax + rax]
.label_63:
	mov	al,  byte ptr [byte ptr [rip + status_only]]
	test	al, al
	je	.label_50
	xor	r15d, r15d
	jmp	.label_51
	.section	.text
	.align	16
	#Procedure 0x40290f
	.globl sub_40290f
	.type sub_40290f, @function
sub_40290f:

	nop	
.label_97:
	cmp	byte ptr [byte ptr [rip + warn]],  1
	jne	.label_56
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rbx, r15
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:label_57
	xor	eax, eax
	mov	rdx, r15
	mov	r15, rbx
	lea	rbx, [rsp + 0x18]
	lea	rbp, [rsp + 8]
	mov	r8, r12
	call	error
.label_56:
	inc	qword ptr [rsp + 0x50]
	inc	r13
	jmp	.label_77
.label_50:
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, 0xa
	call	strchr
	test	rax, rax
	setne	r15b
.label_51:
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdx, [rsp + 7]
	call	digest_file
	test	al, al
	je	.label_89
	cmp	byte ptr [rsp + 7], 0
	je	.label_90
	mov	al,  byte ptr [byte ptr [rip + ignore_missing]]
	xor	al, 1
	test	al, 1
	je	.label_73
.label_90:
	mov	qword ptr [rsp + 0x40], r13
	movzx	eax,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	mov	rbx, rax
	shl	rbx, 4
	cmp	rax, 1
	mov	r13d, 0
	jne	.label_58
	mov	rbp, qword ptr [rsp + 0x60]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_62:
	movzx	edx, byte ptr [rbp + r13*2]
	mov	rcx, qword ptr [rsp + 0x58]
	movzx	ecx, byte ptr [rcx + r13]
	mov	rsi, rcx
	shr	rsi, 4
	movsx	esi,  byte ptr [byte ptr [rsi + digest_check.bin2hex]]
	cmp	dword ptr [rax + rdx*4], esi
	jne	.label_58
	movzx	edx, byte ptr [rbp + r13*2 + 1]
	and	ecx, 0xf
	movsx	ecx,  byte ptr [byte ptr [rcx + digest_check.bin2hex]]
	cmp	dword ptr [rax + rdx*4], ecx
	jne	.label_58
	inc	r13
	cmp	r13, rbx
	jb	.label_62
.label_58:
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rbp, [rcx + 1]
	cmp	r13, rbx
	mov	rax, qword ptr [rsp + 0x30]
	jne	.label_64
	mov	al, 1
.label_64:
	cmovne	rcx, rbp
	mov	dl,  byte ptr [byte ptr [rip + status_only]]
	test	dl, dl
	je	.label_65
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_73
.label_89:
	inc	qword ptr [rsp + 0x48]
	mov	al,  byte ptr [byte ptr [rip + status_only]]
	test	al, al
	jne	.label_73
	test	r15b, r15b
	je	.label_79
	mov	edi, 0x5c
	call	putchar_unlocked
.label_79:
	mov	rdi, qword ptr [rsp + 0x38]
	movzx	esi, r15b
	call	print_filename
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_70
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_73:
	lea	rbp, [rsp + 8]
	lea	rbx, [rsp + 0x18]
.label_75:
	mov	r15b, 1
.label_77:
	mov	rdi, r14
	call	feof_unlocked
	test	eax, eax
	jne	.label_94
	mov	rdi, r14
	call	ferror_unlocked
	test	eax, eax
	je	.label_72
	jmp	.label_94
.label_65:
	cmp	r13, rbx
	jne	.label_88
	mov	al,  byte ptr [byte ptr [rip + quiet]]
	test	al, al
	je	.label_88
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_73
.label_88:
	test	r15b, r15b
	je	.label_52
	mov	edi, 0x5c
	call	putchar_unlocked
.label_52:
	mov	rdi, qword ptr [rsp + 0x38]
	movzx	esi, r15b
	call	print_filename
	cmp	r13, rbx
	je	.label_100
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_70
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	qword ptr [rsp + 0x10], rbp
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_73
.label_100:
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	al,  byte ptr [byte ptr [rip + quiet]]
	test	al, al
	mov	r13, qword ptr [rsp + 0x40]
	lea	rbp, [rsp + 8]
	lea	rbx, [rsp + 0x18]
	jne	.label_75
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_70
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_75
	.section	.text
	.align	16
	#Procedure 0x402bb5
	.globl sub_402bb5
	.type sub_402bb5, @function
sub_402bb5:

	nop	word ptr cs:[rax + rax]
.label_72:
	inc	r12
	je	.label_83
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r14
	call	getline
	test	rax, rax
	jg	.label_96
.label_94:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, r14
	call	ferror_unlocked
	test	eax, eax
	je	.label_101
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
.label_54:
	call	error
.label_76:
	and	bl, 1
	mov	eax, ebx
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_101:
	mov	eax, dword ptr [rsp + 0x2c]
	test	al, al
	jne	.label_71
	mov	rdi, r14
	call	rpl_fclose
	test	eax, eax
	je	.label_71
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_54
.label_71:
	and	r15b, 1
	je	.label_84
	mov	r14, r15
	mov	al,  byte ptr [byte ptr [rip + status_only]]
	test	al, al
	mov	r15, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x30]
	jne	.label_86
	mov	rbx, qword ptr [rsp + 0x50]
	test	rbx, rbx
	je	.label_91
	mov	rdi, rbx
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, OFFSET FLAT:label_81
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	mov	rdi, qword ptr [rsp + 0x10]
.label_91:
	test	r15, r15
	je	.label_103
	mov	rdi, r15
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
	mov	edx, OFFSET FLAT:label_106
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r15
	call	error
	mov	rdi, qword ptr [rsp + 0x10]
.label_103:
	test	rdi, rdi
	je	.label_66
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, OFFSET FLAT:label_69
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x10]
	call	error
	mov	rdi, qword ptr [rsp + 0x10]
.label_66:
	test	bpl, 1
	jne	.label_74
	test	byte ptr [byte ptr [rip + ignore_missing]],  1
	je	.label_74
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rdi, qword ptr [rsp + 0x10]
.label_74:
	test	r14b, r14b
	je	.label_92
.label_86:
	xor	ebx, ebx
	or	r15, rdi
	jne	.label_76
	and	bpl, 1
	je	.label_76
	mov	bl,  byte ptr [byte ptr [rip + strict]]
	test	r13, r13
	sete	al
	xor	bl, 1
	or	bl, al
	jmp	.label_76
.label_84:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r8d, OFFSET FLAT:label_57
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_76
.label_92:
	xor	ebx, ebx
	jmp	.label_76
.label_83:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x402e70
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	lea	r12, [rsp + 8]
	mov	rdi, r12
	call	md5_init_ctx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r12
	call	md5_process_bytes
	mov	rdi, r12
	mov	rsi, r14
	call	md5_finish_ctx
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ebc
	.globl sub_402ebc
	.type sub_402ebc, @function
sub_402ebc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ec0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x402eca
	.globl sub_402eca
	.type sub_402eca, @function
sub_402eca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ed0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x402ed5
	.globl sub_402ed5
	.type sub_402ed5, @function
sub_402ed5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ee0
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
	.section	.text
	.align	16
	#Procedure 0x402f13
	.globl sub_402f13
	.type sub_402f13, @function
sub_402f13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f20

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb0], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_206:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_149
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_213]]
.label_563:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_219
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_109
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_564:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_118
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_118
	xor	r14d, r14d
.label_132:
	cmp	r14, r11
	jae	.label_128
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_128:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_132
.label_118:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_147
.label_556:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_147
.label_559:
	mov	al, 1
.label_557:
	mov	r12b, 1
.label_560:
	test	r12b, 1
	mov	cl, 1
	je	.label_153
	mov	ecx, eax
.label_153:
	mov	al, cl
.label_558:
	test	r12b, 1
	jne	.label_157
	test	r11, r11
	je	.label_187
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_187:
	mov	r14d, 1
	jmp	.label_164
.label_157:
	xor	r14d, r14d
.label_164:
	mov	ecx, OFFSET FLAT:label_109
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_147
.label_561:
	test	r12b, 1
	jne	.label_172
	test	r11, r11
	je	.label_173
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_173:
	mov	r14d, 1
	jmp	.label_140
.label_562:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_178
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_147
.label_172:
	xor	r14d, r14d
.label_140:
	mov	eax, OFFSET FLAT:label_178
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_147:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_146
	.section	.text
	.align	16
	#Procedure 0x4031fc
	.globl sub_4031fc
	.type sub_4031fc, @function
sub_4031fc:

	nop	dword ptr [rax]
.label_143:
	inc	rsi
.label_146:
	cmp	rbp, -1
	je	.label_108
	cmp	rsi, rbp
	jne	.label_111
	jmp	.label_113
	.section	.text
	.align	16
	#Procedure 0x403213
	.globl sub_403213
	.type sub_403213, @function
sub_403213:

	nop	word ptr cs:[rax + rax]
.label_108:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_113
.label_111:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_121
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_123
	cmp	rbp, -1
	jne	.label_123
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_123:
	cmp	rbx, rbp
	jbe	.label_135
.label_121:
	xor	r8d, r8d
.label_159:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_136
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_141]]
.label_601:
	test	rsi, rsi
	jne	.label_130
	jmp	.label_148
	.section	.text
	.align	16
	#Procedure 0x4032ae
	.globl sub_4032ae
	.type sub_4032ae, @function
sub_4032ae:

	nop	
.label_135:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_162
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_159
	jmp	.label_145
.label_162:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_159
.label_605:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_179
	test	rsi, rsi
	jne	.label_180
	cmp	rbp, 1
	je	.label_148
	xor	r13d, r13d
	jmp	.label_114
.label_594:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_186
	cmp	byte ptr [rsp + 7], 0
	jne	.label_129
	cmp	r12d, 2
	jne	.label_190
	mov	eax, r9d
	and	al, 1
	jne	.label_190
	cmp	r14, r11
	jae	.label_160
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_160:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_194
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_194:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_199
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_199:
	add	r14, 3
	mov	r9b, 1
.label_190:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_205
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_205:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_210
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_210
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_210
	cmp	r14, r11
	jae	.label_220
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_220:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_202
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_202:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_114
.label_595:
	mov	bl, 0x62
	jmp	.label_116
.label_596:
	mov	cl, 0x74
	jmp	.label_120
.label_597:
	mov	bl, 0x76
	jmp	.label_116
.label_598:
	mov	bl, 0x66
	jmp	.label_116
.label_599:
	mov	cl, 0x72
	jmp	.label_120
.label_602:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_127
	cmp	byte ptr [rsp + 7], 0
	jne	.label_129
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_133
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_133:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_144
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_144:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_208
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_208:
	add	r14, 3
	xor	r9d, r9d
.label_127:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_114
.label_603:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_161
	cmp	r12d, 2
	jne	.label_130
	cmp	byte ptr [rsp + 7], 0
	je	.label_130
	jmp	.label_129
.label_604:
	cmp	r12d, 2
	jne	.label_169
	cmp	byte ptr [rsp + 7], 0
	jne	.label_129
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_117
.label_136:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_176
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_126:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_200
	test	r8b, r8b
	je	.label_200
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_114
.label_179:
	test	rsi, rsi
	jne	.label_119
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_119
.label_148:
	mov	dl, 1
.label_600:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_129
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_114:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_214
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_217
	jmp	.label_107
	.section	.text
	.align	16
	#Procedure 0x4035f4
	.globl sub_4035f4
	.type sub_4035f4, @function
sub_4035f4:

	nop	word ptr cs:[rax + rax]
.label_214:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_107
.label_217:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_110
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_117
	jmp	.label_125
	.section	.text
	.align	16
	#Procedure 0x40363d
	.globl sub_40363d
	.type sub_40363d, @function
sub_40363d:

	nop	dword ptr [rax]
.label_107:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_125
	jmp	.label_117
.label_110:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_125
.label_186:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_143
	xor	r15d, r15d
	jmp	.label_130
.label_169:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_120
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_117
.label_120:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_129
.label_116:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_114
	nop	word ptr cs:[rax + rax]
.label_125:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_129
	cmp	r12d, 2
	jne	.label_138
	mov	eax, r9d
	and	al, 1
	jne	.label_138
	cmp	r14, r11
	jae	.label_158
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_158:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_168
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_168:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_166
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_166:
	add	r14, 3
	mov	r9b, 1
.label_138:
	cmp	r14, r11
	jae	.label_171
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_171:
	inc	r14
	jmp	.label_174
.label_176:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_177
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_177:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_151:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_192
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_196
	cmp	rbp, -2
	je	.label_204
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_218
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_209:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_183
	bt	rsi, rdx
	jb	.label_145
.label_183:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_209
.label_218:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_112
	xor	r13d, r13d
.label_112:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_151
	jmp	.label_126
.label_210:
	xor	r13d, r13d
	jmp	.label_114
.label_119:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_114
.label_161:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_130
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_130
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_130
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_137
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_189
	cmp	byte ptr [rsp + 7], 0
	jne	.label_129
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_150
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_150:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_215
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_215:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_163
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_163:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_165
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_165:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_114
.label_130:
	xor	eax, eax
.label_180:
	xor	r13d, r13d
	jmp	.label_114
.label_200:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_175
	.section	.text
	.align	16
	#Procedure 0x403923
	.globl sub_403923
	.type sub_403923, @function
sub_403923:

	nop	word ptr cs:[rax + rax]
.label_131:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_175:
	test	r8b, r8b
	je	.label_181
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_182
	cmp	r14, r11
	jae	.label_184
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_184:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_182
	.section	.text
	.align	16
	#Procedure 0x40396c
	.globl sub_40396c
	.type sub_40396c, @function
sub_40396c:

	nop	dword ptr [rax]
.label_181:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_145
	cmp	r12d, 2
	jne	.label_154
	mov	eax, r9d
	and	al, 1
	jne	.label_154
	cmp	r14, r11
	jae	.label_195
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_195:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_197
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_197:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_203
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_203:
	add	r14, 3
	mov	r9b, 1
.label_154:
	cmp	r14, r11
	jae	.label_142
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_142:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_212
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_212:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_193
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_193:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_182:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_117
	test	r9b, 1
	je	.label_134
	mov	ebx, eax
	and	bl, 1
	jne	.label_134
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_122
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_122:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_188
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_188:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_134:
	cmp	r14, r11
	jae	.label_131
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_131
	.section	.text
	.align	16
	#Procedure 0x403a73
	.globl sub_403a73
	.type sub_403a73, @function
sub_403a73:

	nop	word ptr cs:[rax + rax]
.label_117:
	test	r9b, 1
	je	.label_170
	and	al, 1
	jne	.label_170
	cmp	r14, r11
	jae	.label_139
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_139:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_198
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_198:
	add	r14, 2
	xor	r9d, r9d
.label_170:
	mov	ebx, r15d
.label_174:
	cmp	r14, r11
	jae	.label_152
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_152:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_143
.label_196:
	xor	r13d, r13d
.label_192:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_126
.label_204:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_167
	mov	rsi, qword ptr [rsp + 0x50]
.label_207:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_221
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_207
	xor	r13d, r13d
	jmp	.label_126
.label_167:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_126
.label_221:
	xor	r13d, r13d
	jmp	.label_126
.label_137:
	xor	r13d, r13d
	jmp	.label_114
.label_189:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_114
	.section	.text
	.align	16
	#Procedure 0x403b48
	.globl sub_403b48
	.type sub_403b48, @function
sub_403b48:

	nop	dword ptr [rax + rax]
.label_113:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_185
	or	dl, al
	je	.label_145
.label_185:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_191
	or	dl, al
	jne	.label_191
	test	r10b, 1
	jne	.label_201
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_191
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_206
.label_191:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_211
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_115
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_115
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_124:
	cmp	r14, r11
	jae	.label_216
	mov	byte ptr [rcx + r14], al
.label_216:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_124
	jmp	.label_115
.label_129:
	mov	qword ptr [rsp + 0x20], rbp
.label_145:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_155:
	mov	r14, rax
.label_156:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_201:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_155
.label_211:
	mov	rcx, qword ptr [rsp + 8]
.label_115:
	cmp	r14, r11
	jae	.label_156
	mov	byte ptr [rcx + r14], 0
	jmp	.label_156
.label_149:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403cdc
	.globl sub_403cdc
	.type sub_403cdc, @function
sub_403cdc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ce0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_222:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_222
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403d01
	.globl sub_403d01
	.type sub_403d01, @function
sub_403d01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d10
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d1a
	.globl sub_403d1a
	.type sub_403d1a, @function
sub_403d1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d20
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d2a
	.globl sub_403d2a
	.type sub_403d2a, @function
sub_403d2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d30

	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	r15d, 0x20
	cmovb	r15, rcx
	mov	ecx, dword ptr [rbx + 0x10]
	add	ecx, eax
	mov	dword ptr [rbx + 0x10], ecx
	jae	.label_223
	inc	dword ptr [rbx + 0x14]
.label_223:
	mov	ecx, dword ptr [rbx + 0x10]
	shl	ecx, 3
	lea	r12, [rbx + 0x1c]
	mov	dword ptr [rbx + r15*4 + 0x14], ecx
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	shld	edx, ecx, 3
	mov	dword ptr [rbx + r15*4 + 0x18], edx
	lea	rdi, [rbx + rax + 0x1c]
	lea	rdx, [r15*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf
	call	memcpy
	shl	r15, 2
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rbx
	call	md5_process_block
	mov	rdi, rbx
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	md5_read_ctx
	.section	.text
	.align	16
	#Procedure 0x403dc1
	.globl sub_403dc1
	.type sub_403dc1, @function
sub_403dc1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dd0
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
	.section	.text
	.align	16
	#Procedure 0x403de9
	.globl sub_403de9
	.type sub_403de9, @function
sub_403de9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403df0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x403df9
	.globl sub_403df9
	.type sub_403df9, @function
sub_403df9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e00

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
	mov	rax,  qword ptr [word ptr [rip + label_224]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_225]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_226]]
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
	.section	.text
	.align	16
	#Procedure 0x403e68
	.globl sub_403e68
	.type sub_403e68, @function
sub_403e68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e70

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	16
	#Procedure 0x403e87
	.globl sub_403e87
	.type sub_403e87, @function
sub_403e87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e90

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e94
	.globl sub_403e94
	.type sub_403e94, @function
sub_403e94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ea0

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
	je	.label_229
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_227
	jmp	.label_228
.label_229:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_228
.label_227:
	mov	eax, 1
	test	bpl, bpl
	je	.label_228
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
.label_228:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f28
	.globl sub_403f28
	.type sub_403f28, @function
sub_403f28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f30

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
	je	.label_230
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_232
	jmp	.label_231
.label_230:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_231
.label_232:
	mov	eax, 1
	test	bpl, bpl
	je	.label_231
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
.label_231:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fa9
	.globl sub_403fa9
	.type sub_403fa9, @function
sub_403fa9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403fb0

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
	je	.label_235
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_234
	jmp	.label_233
.label_235:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_233
.label_234:
	mov	eax, 1
	test	bpl, bpl
	je	.label_233
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
.label_233:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404013
	.globl sub_404013
	.type sub_404013, @function
sub_404013:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404020

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
	je	.label_238
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_236
	jmp	.label_237
.label_238:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_237
.label_236:
	mov	eax, 1
	test	bpl, bpl
	je	.label_237
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_237:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40407f
	.globl sub_40407f
	.type sub_40407f, @function
sub_40407f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404080

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
	je	.label_239
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_241
	jmp	.label_240
.label_239:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_240
.label_241:
	mov	eax, 1
	test	bpl, bpl
	je	.label_240
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_240:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040c9
	.globl sub_4040c9
	.type sub_4040c9, @function
sub_4040c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

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
	je	.label_244
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_243
	jmp	.label_242
.label_244:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_242
.label_243:
	mov	eax, 1
	test	bpl, bpl
	je	.label_242
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_242:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404115
	.globl sub_404115
	.type sub_404115, @function
sub_404115:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404120

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_247
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_246
	jmp	.label_245
.label_247:
	mov	eax, 1
	test	cl, cl
	je	.label_245
.label_246:
	xor	eax, eax
.label_245:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40414f
	.globl sub_40414f
	.type sub_40414f, @function
sub_40414f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404150

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	16
	#Procedure 0x40415d
	.globl sub_40415d
	.type sub_40415d, @function
sub_40415d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404160
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40416f
	.globl sub_40416f
	.type sub_40416f, @function
sub_40416f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404170

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_249
	cmp	byte ptr [rax], 0x43
	jne	.label_251
	cmp	byte ptr [rax + 1], 0
	je	.label_248
.label_251:
	mov	esi, OFFSET FLAT:label_250
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_249
.label_248:
	xor	ebx, ebx
.label_249:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041a1
	.globl sub_4041a1
	.type sub_4041a1, @function
sub_4041a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041b0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_252
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_252:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4041d3
	.globl sub_4041d3
	.type sub_4041d3, @function
sub_4041d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_253
	test	rax, rax
	je	.label_254
.label_253:
	pop	rbx
	ret	
.label_254:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4041fa
	.globl sub_4041fa
	.type sub_4041fa, @function
sub_4041fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404200
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404272
	.globl sub_404272
	.type sub_404272, @function
sub_404272:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404280

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4042a2
	.globl sub_4042a2
	.type sub_4042a2, @function
sub_4042a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0

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
	.section	.text
	.align	16
	#Procedure 0x4042e9
	.globl sub_4042e9
	.type sub_4042e9, @function
sub_4042e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042f0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	.section	.text
	.align	16
	#Procedure 0x404301
	.globl sub_404301
	.type sub_404301, @function
sub_404301:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404310
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
	.section	.text
	.align	16
	#Procedure 0x404324
	.globl sub_404324
	.type sub_404324, @function
sub_404324:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404330

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
	jne	.label_256
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_256
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_257
.label_256:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_257:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_258
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_258:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40439e
	.globl sub_40439e
	.type sub_40439e, @function
sub_40439e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4043a0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4043aa
	.globl sub_4043aa
	.type sub_4043aa, @function
sub_4043aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043b0
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
	#Procedure 0x4043c0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x4043c9
	.globl sub_4043c9
	.type sub_4043c9, @function
sub_4043c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4043d0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x4043da
	.globl sub_4043da
	.type sub_4043da, @function
sub_4043da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043e0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_259
	ret	
.label_259:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x4043f3
	.globl sub_4043f3
	.type sub_4043f3, @function
sub_4043f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404400

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r14, rsi
	mov	r12d, edi
	lea	rdi, [rsp + 0x30]
	call	ptr_align
	mov	rbx, rax
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_268
	call	setlocale
	mov	edi, OFFSET FLAT:label_273
	mov	esi, OFFSET FLAT:label_274
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_273
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	r15d, r15d
	xor	esi, esi
	mov	edx, 1
	xor	ecx, ecx
	call	setvbuf
	mov	ecx, 0xffffffff
	xor	r13d, r13d
	jmp	.label_262
.label_317:
	mov	byte ptr [byte ptr [rip + quiet]],  0
	mov	ecx, ebp
	nop	word ptr cs:[rax + rax]
.label_262:
	mov	ebp, ecx
	mov	edx, OFFSET FLAT:label_295
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_305
	add	eax, -0x62
	cmp	eax, 0x22
	ja	.label_269
	mov	ecx, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_310]]
.label_523:
	mov	r13b, 1
	mov	ecx, ebp
	jmp	.label_262
.label_524:
	xor	ecx, ecx
	jmp	.label_262
.label_525:
	mov	byte ptr [byte ptr [rip + status_only]],  0
	mov	byte ptr [byte ptr [rip + warn]],  1
	jmp	.label_317
.label_526:
	mov	byte ptr [byte ptr [rip + delim]],  1
	mov	ecx, ebp
	jmp	.label_262
.label_527:
	mov	byte ptr [byte ptr [rip + ignore_missing]],  1
	mov	ecx, ebp
	jmp	.label_262
.label_528:
	mov	byte ptr [byte ptr [rip + status_only]],  1
	mov	byte ptr [byte ptr [rip + warn]],  0
	jmp	.label_317
.label_529:
	mov	byte ptr [byte ptr [rip + status_only]],  0
	mov	byte ptr [byte ptr [rip + warn]],  0
	mov	byte ptr [byte ptr [rip + quiet]],  1
	mov	ecx, ebp
	jmp	.label_262
.label_530:
	mov	byte ptr [byte ptr [rip + strict]],  1
	mov	ecx, ebp
	jmp	.label_262
.label_531:
	mov	r15b, 1
	mov	ecx, 1
	jmp	.label_262
.label_305:
	cmp	eax, -1
	jne	.label_282
	mov	byte ptr [byte ptr [rip + min_digest_line_length]],  1
	mov	byte ptr [byte ptr [rip + digest_hex_bytes]],  1
	test	r15b, r15b
	sete	al
	test	ebp, ebp
	jne	.label_283
	test	al, al
	je	.label_286
.label_283:
	test	r13b, r13b
	je	.label_287
	mov	cl,  byte ptr [byte ptr [rip + delim]]
	xor	cl, 1
	test	cl, 1
	je	.label_288
.label_287:
	test	r13b, r13b
	sete	cl
	or	cl, al
	je	.label_292
	test	ebp, ebp
	js	.label_297
	test	r13b, r13b
	jne	.label_299
.label_297:
	test	r13b, r13b
	jne	.label_301
	test	byte ptr [byte ptr [rip + ignore_missing]],  1
	jne	.label_302
.label_301:
	test	r13b, r13b
	jne	.label_271
	test	byte ptr [byte ptr [rip + status_only]],  1
	jne	.label_307
.label_271:
	test	r13b, r13b
	jne	.label_312
	test	byte ptr [byte ptr [rip + warn]],  1
	jne	.label_314
.label_312:
	test	r13b, r13b
	jne	.label_318
	test	byte ptr [byte ptr [rip + quiet]],  1
	jne	.label_319
.label_318:
	mov	qword ptr [rsp + 0x18], rbx
	movzx	eax,  byte ptr [byte ptr [rip + strict]]
	movzx	ecx, r13b
	xor	ecx, 1
	test	eax, ecx
	jne	.label_320
	movsxd	rax, r12d
	lea	rbx, [r14 + rax*8]
	cmp	dword ptr [dword ptr [rip + optind]],  r12d
	jne	.label_261
	mov	qword ptr [word ptr [rbx]], OFFSET FLAT:label_263
	add	rbx, 8
.label_261:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	r12, [r14 + rax*8]
	mov	r14b, 1
	cmp	r12, rbx
	jae	.label_265
	test	ebp, ebp
	mov	ecx, 0x2a
	mov	eax, 0x20
	cmovle	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	mov	r14b, 1
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x20], r13
	jmp	.label_272
.label_308:
	xor	r13d, r13d
	jmp	.label_284
	.section	.text
	.align	16
	#Procedure 0x40465d
	.globl sub_40465d
	.type sub_40465d, @function
sub_40465d:

	nop	dword ptr [rax]
.label_272:
	test	r13b, r13b
	mov	rbp, qword ptr [r12]
	je	.label_285
	mov	rdi, rbp
	call	digest_check
	and	r14b, al
	jmp	.label_267
	.section	.text
	.align	16
	#Procedure 0x404679
	.globl sub_404679
	.type sub_404679, @function
sub_404679:

	nop	dword ptr [rax]
.label_285:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0xf]
	call	digest_file
	test	al, al
	je	.label_296
	mov	esi, 0x5c
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_303
	mov	esi, 0xa
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	je	.label_308
.label_303:
	mov	r13b,  byte ptr [byte ptr [rip + delim]]
	xor	r13b, 1
.label_284:
	test	r15b, r15b
	mov	dword ptr [rsp + 0x14], r14d
	je	.label_313
	test	r13b, 1
	je	.label_316
	mov	edi, 0x5c
	call	putchar_unlocked
.label_316:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:label_57
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:label_322
	call	fputs_unlocked
	mov	eax, r13d
	and	al, 1
	movzx	esi, al
	mov	rdi, rbp
	call	print_filename
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:label_264
	call	fputs_unlocked
	jmp	.label_270
.label_296:
	xor	r14d, r14d
	jmp	.label_267
.label_313:
	test	r13b, 1
	je	.label_270
	mov	edi, 0x5c
	call	putchar_unlocked
.label_270:
	cmp	byte ptr [byte ptr [rip + digest_hex_bytes]],  1
	mov	r14, qword ptr [rsp + 0x18]
	jne	.label_280
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_289:
	movzx	edx, byte ptr [r14 + r15]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_281
	xor	eax, eax
	call	__printf_chk
	inc	r15
	movzx	eax,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	shl	rax, 4
	cmp	r15, rax
	jb	.label_289
.label_280:
	mov	r15, qword ptr [rsp + 0x28]
	test	r15b, r15b
	jne	.label_293
	mov	edi, 0x20
	call	putchar_unlocked
	mov	edi, dword ptr [rsp + 0x10]
	call	putchar_unlocked
	and	r13b, 1
	movzx	esi, r13b
	mov	rdi, rbp
	call	print_filename
.label_293:
	mov	al,  byte ptr [byte ptr [rip + delim]]
	test	al, al
	mov	edi, 0xa
	mov	eax, 0
	cmovne	edi, eax
	call	putchar_unlocked
	mov	r13, qword ptr [rsp + 0x20]
	mov	r14d, dword ptr [rsp + 0x14]
	nop	word ptr [rax + rax]
.label_267:
	add	r12, 8
	cmp	r12, rbx
	jb	.label_272
.label_265:
	mov	al,  byte ptr [byte ptr [rip + have_read_stdin]]
	test	al, al
	je	.label_321
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_260
.label_321:
	not	r14b
	and	r14b, 1
	movzx	eax, r14b
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_282:
	cmp	eax, 0xffffff7d
	je	.label_266
	cmp	eax, 0xffffff7e
	jne	.label_269
	xor	edi, edi
	call	usage
.label_266:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_275
	mov	edx, OFFSET FLAT:label_276
	mov	r8d, OFFSET FLAT:label_277
	mov	r9d, OFFSET FLAT:label_278
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_279
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_269:
	mov	edi, 1
	call	usage
.label_286:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
	jmp	.label_291
.label_288:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	jmp	.label_291
.label_292:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	jmp	.label_291
.label_299:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
	jmp	.label_291
.label_302:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
	jmp	.label_291
.label_307:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
	jmp	.label_291
.label_314:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	jmp	.label_291
.label_319:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
	jmp	.label_291
.label_320:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
.label_291:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_260:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404930

	.globl split_3
	.type split_3, @function
split_3:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, rdi
	xor	r12d, r12d
	jmp	.label_330
.label_328:
	inc	r12
.label_330:
	movzx	r14d, byte ptr [rbx + r12]
	cmp	r14b, 0x20
	je	.label_328
	cmp	r14b, 9
	je	.label_328
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x10], r8
	xor	r15d, r15d
	cmp	r14b, 0x5c
	sete	r15b
	lea	r13, [rbx + r15]
	lea	rbp, [r13 + r12]
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 3
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	je	.label_329
	mov	rcx, qword ptr [rsp + 8]
	sub	rcx, r15
	sub	rcx, r12
	mov	dl,  byte ptr [byte ptr [rip + min_digest_line_length]]
	xor	eax, eax
	test	dl, dl
	mov	edx, 0x22
	cmove	rdx, rax
	xor	esi, esi
	cmp	byte ptr [r13 + r12], 0x5c
	sete	sil
	or	rsi, rdx
	cmp	rcx, rsi
	jb	.label_324
	mov	rdx, qword ptr [rsp + 0x20]
	mov	qword ptr [rdx], rbp
	movzx	ebp,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	shl	rbp, 5
	lea	rax, [rbp + r15]
	add	rax, rbx
	mov	cl, byte ptr [r12 + rax]
	cmp	cl, 0x20
	je	.label_327
	cmp	cl, 9
	jne	.label_326
.label_327:
	mov	byte ptr [rax + r12], 0
	mov	rdi, qword ptr [rdx]
	call	hex_digits
	test	al, al
	je	.label_326
	add	rbp, r15
	lea	rcx, [r12 + rbp + 1]
	mov	eax, 2
	sub	rax, qword ptr [rsp + 8]
	add	rax, rbp
	add	rax, r12
	je	.label_323
	lea	rax, [rbx + rbp]
	mov	dl, byte ptr [r12 + rax + 1]
	cmp	dl, 0x20
	je	.label_331
	cmp	dl, 0x2a
	jne	.label_323
.label_331:
	cmp	dword ptr [dword ptr [rip + bsd_reversed]],  1
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_325
	mov	dword ptr [dword ptr [rip + bsd_reversed]],  0
	lea	rcx, [r12 + rbp + 2]
	xor	edx, edx
	cmp	byte ptr [rax + r12 + 1], 0x2a
	sete	dl
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [rax], edx
	jmp	.label_325
.label_329:
	lea	rcx, [r15 + r12 + 3]
	cmp	byte ptr [r12 + r13 + 3], 0x20
	lea	rax, [r15 + r12 + 4]
	cmovne	rax, rcx
	cmp	byte ptr [rbx + rax], 0x28
	jne	.label_326
	xor	r8d, r8d
	cmp	r14b, 0x5c
	sete	r8b
	mov	rcx, qword ptr [rsp + 0x18]
	mov	dword ptr [rcx], 0
	lea	rdi, [rbx + rax + 1]
	inc	rax
	mov	rsi, qword ptr [rsp + 8]
	sub	rsi, rax
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x10]
	call	bsd_split_3
	jmp	.label_324
.label_323:
	cmp	dword ptr [dword ptr [rip + bsd_reversed]],  0
	je	.label_326
	mov	dword ptr [dword ptr [rip + bsd_reversed]],  1
	mov	rsi, qword ptr [rsp + 0x10]
.label_325:
	add	rbx, rcx
	mov	qword ptr [rsi], rbx
	mov	al, 1
	cmp	r14b, 0x5c
	jne	.label_324
	mov	rsi, qword ptr [rsp + 8]
	sub	rsi, rcx
	mov	rdi, rbx
	call	filename_unescape
	test	rax, rax
	setne	al
	jmp	.label_324
.label_326:
	xor	eax, eax
.label_324:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b1e
	.globl sub_404b1e
	.type sub_404b1e, @function
sub_404b1e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404b20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b28
	.globl sub_404b28
	.type sub_404b28, @function
sub_404b28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b30

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	r13d, dword ptr [r14 + 0x18]
	test	r13, r13
	je	.label_334
	mov	ebx, 0x80
	sub	rbx, r13
	cmp	rbx, r12
	cmova	rbx, r12
	lea	rdi, [r14 + r13 + 0x1c]
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	esi, dword ptr [r14 + 0x18]
	add	rsi, rbx
	mov	dword ptr [r14 + 0x18], esi
	cmp	esi, 0x41
	jb	.label_333
	lea	rbp, [r14 + 0x1c]
	and	esi, 0xffffffc0
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	mov	edx, dword ptr [r14 + 0x18]
	and	edx, 0x3f
	mov	dword ptr [r14 + 0x18], edx
	add	r13, rbx
	and	r13, 0xffffffffffffffc0
	add	r13, rbp
	mov	rdi, rbp
	mov	rsi, r13
	call	memcpy
.label_333:
	add	r15, rbx
	sub	r12, rbx
.label_334:
	cmp	r12, 0x40
	jb	.label_335
	mov	rbx, r12
	and	rbx, 0xffffffffffffffc0
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	md5_process_block
	add	r15, rbx
	and	r12d, 0x3f
.label_335:
	test	r12, r12
	je	.label_336
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x40
	jb	.label_332
	lea	rbp, [r14 + 0x1c]
	mov	esi, 0x40
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	add	rbx, -0x40
	lea	rsi, [r14 + 0x5c]
	mov	rdi, rbp
	mov	rdx, rbx
	call	memcpy
.label_332:
	mov	dword ptr [r14 + 0x18], ebx
.label_336:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c32
	.globl sub_404c32
	.type sub_404c32, @function
sub_404c32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c40

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_337
	nop	
.label_347:
	mov	edi, OFFSET FLAT:label_275
	call	strcmp
	test	eax, eax
	je	.label_345
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_347
.label_345:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_275
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_276
	mov	ecx, OFFSET FLAT:label_339
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_338
	mov	esi, OFFSET FLAT:label_344
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_338
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_338:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_275
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_339
	mov	ecx, OFFSET FLAT:label_275
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_346
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_342
	mov	ecx, OFFSET FLAT:label_268
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	16
	#Procedure 0x404d5a
	.globl sub_404d5a
	.type sub_404d5a, @function
sub_404d5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d60

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
	je	.label_348
	cmp	r15, -2
	jb	.label_348
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_348
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_348:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404db6
	.globl sub_404db6
	.type sub_404db6, @function
sub_404db6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_268
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_349
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404de5
	.globl sub_404de5
	.type sub_404de5, @function
sub_404de5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404df0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404e20

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_359
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_359:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_361
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_360
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_352
	test	esi, esi
	jne	.label_361
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_364
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_354
.label_361:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_351
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_352
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_363
.label_360:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_352:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_355
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_357
.label_355:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_357:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_363:
	cmp	eax, 6
	jne	.label_351
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_353
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_356
.label_351:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_358
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_362
.label_364:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_354:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_353:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_356:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_358:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_362:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fd4
	.globl sub_404fd4
	.type sub_404fd4, @function
sub_404fd4:

	nop	word ptr cs:[rax + rax]
.label_368:
	xor	eax, eax
.label_366:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fea
	.globl sub_404fea
	.type sub_404fea, @function
sub_404fea:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fef

	.globl hex_digits
	.type hex_digits, @function
hex_digits:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, byte ptr [r14]
	cmp	byte ptr [byte ptr [rip + digest_hex_bytes]],  1
	jne	.label_367
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	ecx,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	shl	rcx, 5
	mov	edx, 1
	nop	dword ptr [rax + rax]
.label_365:
	movzx	esi, bl
	test	byte ptr [rax + rsi*2 + 1], 0x10
	je	.label_368
	mov	esi, edx
	cmp	rsi, rcx
	movzx	ebx, byte ptr [r14 + rdx]
	lea	rdx, [rdx + 1]
	jb	.label_365
.label_367:
	test	bl, bl
	sete	al
	jmp	.label_366
.label_369:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x405043
	.globl sub_405043
	.type sub_405043, @function
sub_405043:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405045
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_369
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x405060

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40506e
	.globl sub_40506e
	.type sub_40506e, @function
sub_40506e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405070

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_370
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_370
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_370:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x405096
	.globl sub_405096
	.type sub_405096, @function
sub_405096:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	mov	dword ptr [rdi], 0x67452301
	mov	dword ptr [rdi + 4], 0xefcdab89
	mov	dword ptr [rdi + 8], 0x98badcfe
	mov	dword ptr [rdi + 0xc], 0x10325476
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050d1
	.globl sub_4050d1
	.type sub_4050d1, @function
sub_4050d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_372
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_374
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_276
	mov	ecx, OFFSET FLAT:label_339
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x405154
	.globl sub_405154
	.type sub_405154, @function
sub_405154:

	nop	word ptr cs:[rax + rax]
.label_375:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_377:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_378
	inc	r9
	cmp	r9, 0xa
	jb	.label_376
.label_378:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40518f
	.globl sub_40518f
	.type sub_40518f, @function
sub_40518f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405190

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_376:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_375
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_377
	.section	.text
	.align	16
	#Procedure 0x4051b9
	.globl sub_4051b9
	.type sub_4051b9, @function
sub_4051b9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4051c0

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
	.section	.text
	.align	16
	#Procedure 0x4051ed
	.globl sub_4051ed
	.type sub_4051ed, @function
sub_4051ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4051f0
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
	.section	.text
	.align	16
	#Procedure 0x405203
	.globl sub_405203
	.type sub_405203, @function
sub_405203:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405210

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	add	rdi, 3
	mov	eax, edi
	and	eax, 3
	sub	rdi, rax
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405220
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_379
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_379:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40523e
	.globl sub_40523e
	.type sub_40523e, @function
sub_40523e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405240
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x40524a
	.globl sub_40524a
	.type sub_40524a, @function
sub_40524a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405250

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_380
	mov	qword ptr [rax], rbx
.label_380:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40533c
	.globl sub_40533c
	.type sub_40533c, @function
sub_40533c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405340

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_381
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_381:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053c3
	.globl sub_4053c3
	.type sub_4053c3, @function
sub_4053c3:

	nop	word ptr cs:[rax + rax]
.label_382:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4053d5
	.globl sub_4053d5
	.type sub_4053d5, @function
sub_4053d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053df
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_382
	call	rpl_calloc
	test	rax, rax
	je	.label_382
	pop	rcx
	ret	
.label_384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_388
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x405445

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_386
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_384
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_384
.label_386:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_387
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_387:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_388:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_385
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054c0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
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
	.section	.text
	.align	16
	#Procedure 0x4054f6
	.globl sub_4054f6
	.type sub_4054f6, @function
sub_4054f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405500
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40550f
	.globl sub_40550f
	.type sub_40550f, @function
sub_40550f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405510

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_389
	test	rdx, rdx
	je	.label_389
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_389:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40553b
	.globl sub_40553b
	.type sub_40553b, @function
sub_40553b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405540
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x40554a
	.globl sub_40554a
	.type sub_40554a, @function
sub_40554a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405550
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_390
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_393:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_393
.label_390:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_394
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_392]], OFFSET FLAT:slot0
.label_394:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_391
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_391:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055e1
	.globl sub_4055e1
	.type sub_4055e1, @function
sub_4055e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055f0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055ff
	.globl sub_4055ff
	.type sub_4055ff, @function
sub_4055ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405600

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
	.section	.text
	.align	16
	#Procedure 0x405649
	.globl sub_405649
	.type sub_405649, @function
sub_405649:

	nop	dword ptr [rax]
.label_401:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
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
	.section	.text
	.align	16
	#Procedure 0x405688
	.globl sub_405688
	.type sub_405688, @function
sub_405688:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405690

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_401
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_404
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	mov	ecx, OFFSET FLAT:label_57
	mov	r8d, 0x80
	xor	eax, eax
	call	__printf_chk
	call	emit_stdin_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_402
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_57
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_407
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_396
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x405810

	.globl md5_stream
	.type md5_stream, @function
md5_stream:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa0
	mov	r14, rsi
	mov	r12, rdi
	mov	edi, 0x8048
	call	malloc
	mov	r15, rax
	mov	eax, 1
	test	r15, r15
	je	.label_408
	lea	r13, [rsp]
	mov	rdi, r13
	call	md5_init_ctx
	jmp	.label_411
	.section	.text
	.align	16
	#Procedure 0x40584f
	.globl sub_40584f
	.type sub_40584f, @function
sub_40584f:

	nop	
.label_413:
	mov	esi, 0x8000
	mov	rdi, r15
	mov	rdx, r13
	call	md5_process_block
.label_411:
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_409:
	mov	rdi, r12
	call	feof_unlocked
	test	eax, eax
	jne	.label_412
	lea	rdi, [r15 + rbx]
	mov	edx, 0x8000
	sub	rdx, rbx
	mov	esi, 1
	mov	rcx, r12
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	je	.label_413
	test	rax, rax
	jne	.label_409
	mov	rdi, r12
	call	ferror_unlocked
	test	eax, eax
	je	.label_412
	mov	rdi, r15
	call	free
	mov	eax, 1
	jmp	.label_408
.label_412:
	test	rbx, rbx
	je	.label_410
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_bytes
.label_410:
	lea	rdi, [rsp]
	mov	rsi, r14
	call	md5_finish_ctx
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_408:
	add	rsp, 0xa0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4058fc
	.globl sub_4058fc
	.type sub_4058fc, @function
sub_4058fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405900
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40590d
	.globl sub_40590d
	.type sub_40590d, @function
sub_40590d:

	nop	dword ptr [rax]
.label_415:
	cmp	edi, 0x7f
	je	.label_414
	xor	eax, eax
	jmp	.label_414
	.section	.text
	.align	16
	#Procedure 0x405919
	.globl sub_405919
	.type sub_405919, @function
sub_405919:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405928
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_415
.label_414:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405930
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405938
	.globl sub_405938
	.type sub_405938, @function
sub_405938:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405940
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
	.section	.text
	.align	16
	#Procedure 0x405967
	.globl sub_405967
	.type sub_405967, @function
sub_405967:

	nop	word ptr [rax + rax]
.label_417:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405971
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_416
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_418]]
.label_416:
	xor	eax, eax
	jmp	.label_417
	.section	.text
	.align	16
	#Procedure 0x405986
	.globl sub_405986
	.type sub_405986, @function
sub_405986:

	nop	word ptr cs:[rax + rax]
.label_420:
	test	rcx, rcx
	jne	.label_419
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_419:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_421
.label_422:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_421:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4059d7
	.globl sub_4059d7
	.type sub_4059d7, @function
sub_4059d7:

	nop	dword ptr [rax]
.label_423:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4059e3

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_420
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_423
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_422
.label_425:
	mov	ecx, 1
.label_424:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x405a20
	.globl sub_405a20
	.type sub_405a20, @function
sub_405a20:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a25

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_425
	test	rsi, rsi
	mov	ecx, 1
	je	.label_424
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_424
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a60

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
	.section	.text
	.align	16
	#Procedure 0x405a97
	.globl sub_405a97
	.type sub_405a97, @function
sub_405a97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405aa0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_426
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_426:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405ac6
	.globl sub_405ac6
	.type sub_405ac6, @function
sub_405ac6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ad0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_427
	test	rbx, rbx
	jne	.label_427
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_427:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_429
	test	rax, rax
	je	.label_428
.label_429:
	pop	rbx
	ret	
.label_428:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405b00

	.globl filename_unescape
	.type filename_unescape, @function
filename_unescape:
	test	rsi, rsi
	mov	rcx, rdi
	je	.label_430
	lea	r8, [rsi - 1]
	xor	edx, edx
	mov	rcx, rdi
	nop	word ptr cs:[rax + rax]
.label_435:
	movzx	r9d, byte ptr [rdi + rdx]
	movsx	eax, r9b
	cmp	eax, 0x5c
	je	.label_431
	test	eax, eax
	mov	eax, 0
	je	.label_434
	mov	byte ptr [rcx], r9b
	jmp	.label_432
	.section	.text
	.align	16
	#Procedure 0x405b3c
	.globl sub_405b3c
	.type sub_405b3c, @function
sub_405b3c:

	nop	dword ptr [rax]
.label_431:
	cmp	rdx, r8
	mov	eax, 0
	je	.label_434
	movsx	eax, byte ptr [rdi + rdx + 1]
	inc	rdx
	cmp	eax, 0x5c
	je	.label_433
	cmp	eax, 0x6e
	mov	eax, 0
	jne	.label_434
	mov	byte ptr [rcx], 0xa
	jmp	.label_432
	.section	.text
	.align	16
	#Procedure 0x405b66
	.globl sub_405b66
	.type sub_405b66, @function
sub_405b66:

	nop	word ptr cs:[rax + rax]
.label_433:
	mov	byte ptr [rcx], 0x5c
.label_432:
	inc	rcx
	inc	rdx
	cmp	rdx, rsi
	jb	.label_435
.label_430:
	add	rsi, rdi
	cmp	rcx, rsi
	jae	.label_436
	mov	byte ptr [rcx], 0
.label_436:
	mov	rax, rdi
.label_434:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b8d
	.globl sub_405b8d
	.type sub_405b8d, @function
sub_405b8d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405b90
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
	.section	.text
	.align	16
	#Procedure 0x405ba6
	.globl sub_405ba6
	.type sub_405ba6, @function
sub_405ba6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bb0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x405bba
	.globl sub_405bba
	.type sub_405bba, @function
sub_405bba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bc0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x405bca
	.globl sub_405bca
	.type sub_405bca, @function
sub_405bca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bd0

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
	je	.label_437
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_439
	jmp	.label_438
.label_437:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_438
.label_439:
	mov	eax, 1
	test	bpl, bpl
	je	.label_438
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
.label_438:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c4d
	.globl sub_405c4d
	.type sub_405c4d, @function
sub_405c4d:

	nop	dword ptr [rax]
.label_444:
	call	putchar_unlocked
.label_443:
	movzx	eax, byte ptr [rbx]
	inc	rbx
	test	al, al
	jne	.label_442
.label_447:
	pop	rbx
	ret	
.label_446:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	pop	rbx
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x405c71
	.globl sub_405c71
	.type sub_405c71, @function
sub_405c71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c80

	.globl print_filename
	.type print_filename, @function
print_filename:
	push	rbx
	mov	rbx, rdi
	test	sil, sil
	je	.label_446
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_447
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_442:
	movsx	edi, al
	cmp	edi, 0x5c
	je	.label_440
	cmp	edi, 0xa
	jne	.label_444
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:label_441
	call	fputs_unlocked
	jmp	.label_443
.label_440:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:label_445
	call	fputs_unlocked
	jmp	.label_443
	.section	.text
	.align	16
	#Procedure 0x405cd3
	.globl sub_405cd3
	.type sub_405cd3, @function
sub_405cd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ce0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ced
	.globl sub_405ced
	.type sub_405ced, @function
sub_405ced:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405cf0

	.globl digest_file
	.type digest_file, @function
digest_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	cmp	byte ptr [r15], 0x2d
	jne	.label_453
	cmp	byte ptr [r15 + 1], 0
	mov	byte ptr [rbx], 0
	jne	.label_449
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	bl, 1
	mov	rbp,  qword ptr [word ptr [rip + stdin]]
	jmp	.label_450
.label_453:
	mov	byte ptr [rbx], 0
.label_449:
	mov	esi, OFFSET FLAT:label_93
	mov	rdi, r15
	call	fopen_safer
	mov	rbp, rax
	test	rbp, rbp
	je	.label_454
	xor	ebx, ebx
.label_450:
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	mov	rdi, rbp
	mov	rsi, r14
	call	md5_stream
	test	eax, eax
	je	.label_451
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, ebx
	call	error
	cmp	rbp,  qword ptr [word ptr [rip + stdin]]
	je	.label_448
	mov	rdi, rbp
	call	rpl_fclose
	xor	r14d, r14d
	jmp	.label_448
.label_454:
	cmp	byte ptr [byte ptr [rip + ignore_missing]],  1
	jne	.label_452
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_452
	mov	byte ptr [rbx], 1
	mov	r14b, 1
	jmp	.label_448
.label_451:
	mov	r14b, 1
	test	bl, bl
	jne	.label_448
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_448
.label_452:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_448:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e02
	.globl sub_405e02
	.type sub_405e02, @function
sub_405e02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e10

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_455
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_457
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_455
.label_457:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_455
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_456
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_456:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_455:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x405e87
	.globl sub_405e87
	.type sub_405e87, @function
sub_405e87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e90

	.globl bsd_split_3
	.type bsd_split_3, @function
bsd_split_3:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	test	rsi, rsi
	je	.label_458
	lea	r15, [rdi + rsi]
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_466:
	mov	rbx, rax
	lea	rax, [rsi + rbx]
	cmp	rax, 1
	je	.label_465
	lea	rax, [rbx - 1]
	cmp	byte ptr [r15 + rbx - 1], 0x29
	jne	.label_466
.label_465:
	cmp	byte ptr [rbx + r15 - 1], 0x29
	jne	.label_458
	mov	qword ptr [rcx], rdi
	test	r8b, r8b
	je	.label_462
	lea	rsi, [rsi + rbx - 1]
	call	filename_unescape
	test	rax, rax
	je	.label_458
.label_462:
	lea	rdi, [rbx + r15 + 1]
	mov	byte ptr [r15 + rbx - 1], 0
	xor	eax, eax
	jmp	.label_460
	.section	.text
	.align	16
	#Procedure 0x405ef7
	.globl sub_405ef7
	.type sub_405ef7, @function
sub_405ef7:

	nop	word ptr [rax + rax]
.label_458:
	xor	eax, eax
.label_463:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_461:
	inc	rdi
.label_460:
	movzx	ecx, byte ptr [rdi - 1]
	cmp	cl, 9
	je	.label_461
	cmp	cl, 0x20
	je	.label_461
	cmp	cl, 0x3d
	je	.label_464
	jmp	.label_463
	.section	.text
	.align	16
	#Procedure 0x405f20
	.globl sub_405f20
	.type sub_405f20, @function
sub_405f20:

	nop	dword ptr [rax + rax]
.label_459:
	inc	rdi
.label_464:
	movzx	eax, byte ptr [rdi]
	cmp	al, 0x20
	je	.label_459
	cmp	al, 9
	je	.label_459
	mov	qword ptr [r14], rdi
	call	hex_digits
	jmp	.label_463
	.section	.text
	.align	16
	#Procedure 0x405f40

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_472
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_471
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_473
	mov	eax, OFFSET FLAT:label_474
	jmp	.label_469
.label_470:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_178
	mov	eax, OFFSET FLAT:label_109
.label_469:
	cmove	rax, rcx
.label_472:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fbf
	.globl sub_405fbf
	.type sub_405fbf, @function
sub_405fbf:

	nop	dword ptr [rax]
.label_471:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_470
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_467
	mov	eax, OFFSET FLAT:label_468
	jmp	.label_469
.label_477:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_475
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406020
	.globl sub_406020
	.type sub_406020, @function
sub_406020:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40602f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_477
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_478
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_480
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_478
	mov	esi, OFFSET FLAT:label_479
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_476
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_476:
	mov	rbx, r14
.label_478:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060b0

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
	mov	rcx,  qword ptr [word ptr [rip + label_224]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_225]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_226]]
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
	.section	.text
	.align	16
	#Procedure 0x40611d
	.globl sub_40611d
	.type sub_40611d, @function
sub_40611d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406120

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x40612d
	.globl sub_40612d
	.type sub_40612d, @function
sub_40612d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406130

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x406137
	.globl sub_406137
	.type sub_406137, @function
sub_406137:

	nop	word ptr [rax + rax]
.label_485:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_482:
	xor	eax, eax
.label_484:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40615f
	.globl sub_40615f
	.type sub_40615f, @function
sub_40615f:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406169

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_484
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_483
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_485
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_481
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_484
.label_481:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_482
.label_483:
	mov	rax, rbx
	jmp	.label_484
	.section	.text
	.align	16
	#Procedure 0x406235
	.globl sub_406235
	.type sub_406235, @function
sub_406235:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406242
	.globl sub_406242
	.type sub_406242, @function
sub_406242:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406266
	.globl sub_406266
	.type sub_406266, @function
sub_406266:

	nop	word ptr cs:[rax + rax]
