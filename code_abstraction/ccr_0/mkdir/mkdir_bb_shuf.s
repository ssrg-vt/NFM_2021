	.section	.text
	.align	32
	#Procedure 0x401849
	.globl sub_401849
	.type sub_401849, @function
sub_401849:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40184a
	.globl sub_40184a
	.type sub_40184a, @function
sub_40184a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401882
	.globl sub_401882
	.type sub_401882, @function
sub_401882:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018ca
	.globl sub_4018ca
	.type sub_4018ca, @function
sub_4018ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018ec
	.globl sub_4018ec
	.type sub_4018ec, @function
sub_4018ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4018fd
	.globl sub_4018fd
	.type sub_4018fd, @function
sub_4018fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401916
	.globl sub_401916
	.type sub_401916, @function
sub_401916:

	nop	word ptr cs:[rax + rax]
.label_9:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401937
	.globl sub_401937
	.type sub_401937, @function
sub_401937:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40193f

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
	jae	.label_9
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401970

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
	#Procedure 0x4019e5
	.globl sub_4019e5
	.type sub_4019e5, @function
sub_4019e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019f0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_10
	jmp	.label_12
.label_12:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_11
.label_10:
	mov	byte ptr [rbp - 1], 0
.label_11:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a22
	.globl sub_401a22
	.type sub_401a22, @function
sub_401a22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a30
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a58
	.globl sub_401a58
	.type sub_401a58, @function
sub_401a58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a60
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a88
	.globl sub_401a88
	.type sub_401a88, @function
sub_401a88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a90
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
	#Procedure 0x401ab7
	.globl sub_401ab7
	.type sub_401ab7, @function
sub_401ab7:

	nop	word ptr [rax + rax]
.label_14:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_15:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401acb
	.globl sub_401acb
	.type sub_401acb, @function
sub_401acb:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ad4

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_14
	jmp	.label_13
.label_13:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_15
.label_37:
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	jne	.label_16
	movabs	rdi, OFFSET FLAT:label_32
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_54:
	xor	edi, edi
	call	usage
.label_28:
	mov	edi, 0x1ff
	mov	esi, 1
	lea	rax, [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rax, 0x10
	mov	r8, rax
	call	mode_adjust
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdi, rcx
	call	free
	jmp	.label_53
	.section	.text
	.align	32
	#Procedure 0x401b75

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	dword ptr [rbp - 0x3c], 0x1ff
	mov	dword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x34], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_38
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_43
	movabs	rsi, OFFSET FLAT:label_44
	mov	qword ptr [rbp - 0x60], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_43
	mov	qword ptr [rbp - 0x68], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x70], rax
	call	atexit
	mov	dword ptr [rbp - 0x74], eax
.label_57:
	movabs	rdx, OFFSET FLAT:label_26
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x1c], eax
	cmp	eax, -1
	je	.label_37
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x78], eax
	mov	dword ptr [rbp - 0x7c], ecx
	je	.label_41
	jmp	.label_52
.label_52:
	mov	eax, dword ptr [rbp - 0x78]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x80], eax
	je	.label_54
	jmp	.label_18
.label_18:
	mov	eax, dword ptr [rbp - 0x78]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x84], eax
	je	.label_20
	jmp	.label_23
.label_23:
	mov	eax, dword ptr [rbp - 0x78]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x88], eax
	je	.label_24
	jmp	.label_29
.label_29:
	mov	eax, dword ptr [rbp - 0x78]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_42
	jmp	.label_36
.label_36:
	mov	eax, dword ptr [rbp - 0x78]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x90], eax
	je	.label_39
	jmp	.label_21
.label_48:
	jmp	.label_40
.label_40:
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_50
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_31
.label_50:
	xor	edi, edi
	call	umask
	mov	dword ptr [rbp - 0x50], eax
	mov	edi, dword ptr [rbp - 0x50]
	call	umask
	mov	edi, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x40], edi
	cmp	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_22
	mov	rdi, qword ptr [rbp - 0x18]
	call	mode_compile
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_28
	movabs	rdi, OFFSET FLAT:label_33
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_19:
	jmp	.label_57
.label_42:
	movabs	rax, OFFSET FLAT:make_ancestor
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_19
.label_41:
	movabs	rsi, OFFSET FLAT:label_45
	movabs	rdx, OFFSET FLAT:label_46
	movabs	r8, OFFSET FLAT:label_47
	xor	eax, eax
	mov	r9d, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_56:
	mov	rdi, qword ptr [rbp - 0x28]
	call	se_const
	mov	rdi, rax
	call	setfscreatecon
	mov	dword ptr [rbp - 0x4c], eax
.label_17:
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_48
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_55
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x94], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xa0], rax
	call	quote
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x94]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_25:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_49
	movabs	rdi, OFFSET FLAT:label_35
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
.label_49:
	jmp	.label_30
.label_30:
	jmp	.label_19
.label_22:
	mov	dword ptr [rbp - 0x3c], 0x1ff
.label_53:
	jmp	.label_31
.label_31:
	movabs	rdx, OFFSET FLAT:process_dir
	lea	rax, [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx,  dword ptr [dword ptr [optind]]
	mov	rsi, qword ptr [rbp - 0x10]
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	shl	rdi, 3
	add	rsi, rdi
	mov	edi, ecx
	mov	rcx, rax
	call	savewd_process_files
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401eb9
	.globl sub_401eb9
	.type sub_401eb9, @function
sub_401eb9:

	nop	word ptr cs:[rax + rax]
.label_24:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_19
.label_16:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_40
	mov	dword ptr [rbp - 0x4c], 0
	call	is_smack_enabled
	test	al, 1
	jne	.label_51
	jmp	.label_56
.label_51:
	mov	rdi, qword ptr [rbp - 0x28]
	call	smack_set_label_for_self
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_17
.label_39:
	movabs	rdi, OFFSET FLAT:label_34
	call	gettext
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_19
.label_20:
	call	is_smack_enabled
	test	al, 1
	jne	.label_27
	jmp	.label_25
.label_27:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_30
.label_21:
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x401f50
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
	#Procedure 0x401f6f
	.globl sub_401f6f
	.type sub_401f6f, @function
sub_401f6f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401f70

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
	#Procedure 0x401fa3
	.globl sub_401fa3
	.type sub_401fa3, @function
sub_401fa3:

	nop	word ptr cs:[rax + rax]
.label_60:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_58
.label_59:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_58:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ff2
	.globl sub_401ff2
	.type sub_401ff2, @function
sub_401ff2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402000

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
	jne	.label_59
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_59
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_59
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_60
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_58
	.section	.text
	.align	32
	#Procedure 0x402080

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
	.align	32
	#Procedure 0x4020ab
	.globl sub_4020ab
	.type sub_4020ab, @function
sub_4020ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020b0
	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020d8
	.globl sub_4020d8
	.type sub_4020d8, @function
sub_4020d8:

	nop	dword ptr [rax + rax]
.label_62:
	mov	byte ptr [rbp - 1], 0
.label_63:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020ee
	.globl sub_4020ee
	.type sub_4020ee, @function
sub_4020ee:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020fc
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_62
	jmp	.label_61
.label_61:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_63
	.section	.text
	.align	32
	#Procedure 0x402120
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
.label_66:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_64
	jmp	.label_65
.label_65:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_66
.label_64:
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
.label_224:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_163
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_163
	test	byte ptr [rbp - 0x7b], 1
	je	.label_163
	jmp	.label_165
.label_866:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_169
.label_829:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_828:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_174
	jmp	.label_175
.label_175:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_177
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_177:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_174
.label_174:
	movabs	rax, OFFSET FLAT:label_181
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_99
.label_165:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_188
	test	byte ptr [rbp - 0x79], 1
	je	.label_188
	mov	dword ptr [rbp - 0x34], 4
.label_188:
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
.label_88:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402299
	.globl sub_402299
	.type sub_402299, @function
sub_402299:

	nop	dword ptr [rax + rax]
.label_164:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_207
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_207
	jmp	.label_211
.label_211:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_95
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_95:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_216
.label_216:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_219
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_219:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_185
.label_185:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_226
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_226:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_207:
	jmp	.label_236
.label_236:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_237
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_237:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_242
.label_242:
	jmp	.label_245
.label_245:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_111
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_111:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_254
.label_254:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_257
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_257:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_246
.label_864:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_105
.label_195:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_270
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_67
.label_82:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_71
.label_98:
	jmp	.label_74
.label_191:
	jmp	.label_76
.label_76:
	jmp	.label_77
.label_77:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_83
.label_876:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_82
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_71
	jmp	.label_98
.label_824:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_99
.label_230:
	jmp	.label_94
.label_94:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_99
.label_156:
	jmp	.label_84
.label_84:
	jmp	.label_74
.label_869:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_105
.label_872:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_74
.label_71:
	jmp	.label_110
.label_110:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_113
	jmp	.label_74
.label_863:
	test	byte ptr [rbp - 0x79], 1
	je	.label_179
	jmp	.label_120
.label_120:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_122
	jmp	.label_165
.label_109:
	jmp	.label_108
.label_865:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_105
.label_270:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_129
	mov	byte ptr [rbp - 0x91], 0
.label_152:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_134
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_134:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_258
	jmp	.label_150
.label_258:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_152
.label_179:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_156
	jmp	.label_159
.label_868:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_105
.label_129:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_118
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_118
	mov	qword ptr [rbp - 0xb8], 1
.label_83:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_168
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
	jb	.label_171
	jmp	.label_265
.label_265:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_171
	jmp	.label_186
.label_186:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_171
	jmp	.label_190
.label_190:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_191
	jmp	.label_171
.label_171:
	jmp	.label_165
.label_229:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_196
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_196
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_196:
	jmp	.label_203
.label_203:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_204
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_204:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_206
.label_206:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_208
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_208:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_214
.label_214:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_215
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_215:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_223:
	jmp	.label_74
.label_114:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_222
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_222:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_234
.label_234:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_238
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_238:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_244
.label_244:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_247
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_247:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_267
.label_267:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_256
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_256:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_137
.label_233:
	jmp	.label_105
.label_105:
	test	byte ptr [rbp - 0x79], 1
	je	.label_262
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_228
.label_262:
	jmp	.label_74
.label_266:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_69
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_69
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_69
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_75
	jmp	.label_81
.label_81:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_75
	jmp	.label_107
.label_107:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_75
	jmp	.label_96
.label_96:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_75
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_255
	jmp	.label_75
.label_75:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_114
	jmp	.label_165
.label_168:
	jmp	.label_118
.label_118:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_123
	mov	byte ptr [rbp - 0x91], 0
.label_123:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_126
.label_126:
	jmp	.label_132
.label_132:
	jmp	.label_187
.label_187:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_135
.label_67:
	jmp	.label_139
.label_139:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_142
	test	byte ptr [rbp - 0x79], 1
	je	.label_148
	test	byte ptr [rbp - 0x91], 1
	jne	.label_148
.label_142:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_133:
	test	byte ptr [rbp - 0x79], 1
	je	.label_158
	test	byte ptr [rbp - 0x91], 1
	jne	.label_158
	jmp	.label_154
.label_154:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_164
	jmp	.label_165
.label_875:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_166
	test	byte ptr [rbp - 0x7b], 1
	je	.label_192
	jmp	.label_165
.label_261:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_172
	jmp	.label_165
.label_201:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_250
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_250:
	jmp	.label_135
.label_135:
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
	jne	.label_195
	jmp	.label_67
.label_241:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_201
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
	jmp	.label_139
.label_172:
	jmp	.label_141
.label_192:
	jmp	.label_108
.label_830:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_99
.label_122:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_130
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_130
	jmp	.label_220
.label_220:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_221
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_221:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_225
.label_225:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_231
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_231:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_235
.label_235:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_239
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_239:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_130:
	jmp	.label_115
.label_115:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_249
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_249:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_253
.label_253:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_79
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_79
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_79
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_79
	jmp	.label_268
.label_268:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_269
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_269:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_70
.label_70:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_138
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_138:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_79
.label_79:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_84
.label_158:
	test	byte ptr [rbp - 0x81], 1
	je	.label_87
	jmp	.label_89
.label_89:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_91
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_91:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_87:
	jmp	.label_246
.label_246:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_104
	jmp	.label_109
.label_148:
	jmp	.label_74
.label_74:
	test	byte ptr [rbp - 0x79], 1
	je	.label_116
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_117
.label_116:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_119
.label_117:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_119
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
	jne	.label_125
.label_119:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_125
	jmp	.label_108
.label_255:
	jmp	.label_137
.label_137:
	jmp	.label_69
.label_69:
	jmp	.label_141
.label_826:
	mov	byte ptr [rbp - 0x79], 1
.label_825:
	mov	byte ptr [rbp - 0x7b], 1
.label_827:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_143
	mov	byte ptr [rbp - 0x79], 1
.label_143:
	jmp	.label_146
.label_146:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_147
	jmp	.label_153
.label_153:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_155
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_155:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_147
.label_147:
	movabs	rax, OFFSET FLAT:label_161
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_99
.label_198:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_200:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_170
	jmp	.label_224
.label_170:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_145
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_145
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_145
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_184
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_184
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_193
.label_99:
	mov	qword ptr [rbp - 0x58], 0
.label_194:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_198
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_200
.label_248:
	jmp	.label_205
.label_205:
	jmp	.label_68
.label_68:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_90
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_90
	jmp	.label_209
.label_209:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_210
	jmp	.label_212
.label_212:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_102
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_102:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_218
.label_218:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_209
.label_873:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_223
	test	byte ptr [rbp - 0x7b], 1
	je	.label_229
	jmp	.label_165
.label_101:
	jmp	.label_169
.label_169:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_233
	test	byte ptr [rbp - 0x7b], 1
	je	.label_233
	jmp	.label_165
.label_867:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_169
.label_213:
	mov	byte ptr [rbp - 0x81], 1
.label_145:
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
	ja	.label_241
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_251]]
	jmp	rcx
.label_78:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402f9b

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
.label_252:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_78
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_85]]
	jmp	rcx
.label_150:
	jmp	.label_67
.label_210:
	jmp	.label_90
.label_90:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_92
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_92:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_88
.label_166:
	test	byte ptr [rbp - 0x79], 1
	je	.label_101
	test	byte ptr [rbp - 0x7b], 1
	je	.label_101
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_101
	jmp	.label_108
.label_260:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_112
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_112
	jmp	.label_124
.label_124:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_121
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_121:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_128
.label_128:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_131
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_131:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_136
.label_136:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_140
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_140:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_112:
	jmp	.label_149
.label_149:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_72
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_72:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_157
.label_157:
	jmp	.label_108
.label_108:
	jmp	.label_160
.label_160:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_162
	test	byte ptr [rbp - 0x82], 1
	jne	.label_162
	jmp	.label_178
.label_178:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_167
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_167:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_173
.label_173:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_176
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_176:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_162:
	jmp	.label_180
.label_180:
	jmp	.label_182
.label_182:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_183
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_183:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_189
	mov	byte ptr [rbp - 0x7e], 0
.label_189:
	jmp	.label_159
.label_159:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_194
.label_113:
	jmp	.label_197
.label_197:
	mov	byte ptr [rbp - 0x83], 1
.label_871:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_199
	test	byte ptr [rbp - 0x7b], 1
	je	.label_199
	jmp	.label_165
.label_184:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_193:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_145
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_145
	test	byte ptr [rbp - 0x7b], 1
	je	.label_213
	jmp	.label_165
.label_199:
	jmp	.label_74
.label_831:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_86
	movabs	rdi, OFFSET FLAT:label_217
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_161
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_86:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_94
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_243:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_230
	jmp	.label_232
.label_232:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_227
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_227:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_240
.label_240:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_243
.label_870:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_169
.label_73:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_248
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_248
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_252
.label_263:
	jmp	.label_141
.label_141:
	jmp	.label_74
.label_125:
	jmp	.label_228
.label_228:
	jmp	.label_259
.label_259:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_260
	jmp	.label_165
.label_874:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_261
	jmp	.label_264
.label_264:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_266
	jmp	.label_263
.label_163:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_68
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_68
	test	byte ptr [rbp - 0x7d], 1
	je	.label_68
	test	byte ptr [rbp - 0x7e], 1
	je	.label_73
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
	jmp	.label_88
.label_104:
	jmp	.label_202
.label_202:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_93
	test	byte ptr [rbp - 0x82], 1
	jne	.label_93
	jmp	.label_97
.label_97:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_100
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_100:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_106
.label_106:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_80
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_80:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_93:
	jmp	.label_144
.label_144:
	jmp	.label_151
.label_151:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_127
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_127:
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
	jmp	.label_133
	.section	.text
	.align	32
	#Procedure 0x403530
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
.label_273:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_271
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_271:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_272
	jmp	.label_275
.label_272:
	jmp	.label_274
.label_274:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_273
.label_275:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035b4
	.globl sub_4035b4
	.type sub_4035b4, @function
sub_4035b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035c0
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
	#Procedure 0x4035f7
	.globl sub_4035f7
	.type sub_4035f7, @function
sub_4035f7:

	nop	word ptr [rax + rax]
.label_277:
	xor	eax, eax
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_276
.label_276:
	mov	eax, dword ptr [rbp - 0xc]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40360f
	.globl sub_40360f
	.type sub_40360f, @function
sub_40360f:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40361c

	.globl savewd_errno
	.type savewd_errno, @function
savewd_errno:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi], 4
	jne	.label_277
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0xc], ecx
	jmp	.label_276
.label_284:
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0x49
	mov	cl, byte ptr [rbp - 5]
	and	cl, 1
	movzx	edx, cl
	or	eax, edx
	cmp	eax, 0
	je	.label_278
	mov	eax, dword ptr [rbp - 0x34]
	or	eax, 0x49
	mov	dword ptr [rbp - 0x34], eax
.label_278:
	jmp	.label_285
.label_285:
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_293
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_296
.label_289:
	xor	eax, eax
	mov	ecx, 0x49
	mov	edx, 0x92
	mov	esi, 0x124
	mov	edi, dword ptr [rbp - 0x24]
	and	edi, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x34], edi
	mov	edi, dword ptr [rbp - 0x34]
	and	edi, 0x124
	cmp	edi, 0
	mov	edi, eax
	cmovne	edi, esi
	mov	esi, dword ptr [rbp - 0x34]
	and	esi, 0x92
	cmp	esi, 0
	mov	esi, eax
	cmovne	esi, edx
	or	edi, esi
	mov	edx, dword ptr [rbp - 0x34]
	and	edx, 0x49
	cmp	edx, 0
	cmovne	eax, ecx
	or	edi, eax
	or	edi, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x34], edi
	jmp	.label_285
.label_293:
	mov	eax, dword ptr [rbp - 0xc]
	xor	eax, 0xffffffff
	mov	dword ptr [rbp - 0x4c], eax
.label_296:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	ecx, dword ptr [rbp - 0x30]
	not	ecx
	and	eax, ecx
	mov	ecx, dword ptr [rbp - 0x34]
	and	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdx, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rdx]
	mov	ecx, eax
	sub	ecx, 0x2b
	mov	dword ptr [rbp - 0x50], eax
	mov	dword ptr [rbp - 0x54], ecx
	je	.label_288
	jmp	.label_282
.label_282:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x58], eax
	je	.label_292
	jmp	.label_287
.label_287:
	mov	eax, dword ptr [rbp - 0x50]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x5c], eax
	jne	.label_290
	jmp	.label_279
.label_279:
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_297
	mov	eax, dword ptr [rbp - 0x2c]
	xor	eax, 0xffffffff
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_280
.label_298:
	jmp	.label_285
.label_292:
	mov	eax, dword ptr [rbp - 0x34]
	or	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, dword ptr [rbp - 0x34]
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x24], eax
.label_290:
	jmp	.label_291
.label_291:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_295
	.section	.text
	.align	32
	#Procedure 0x40377c

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	dword ptr [rbp - 4], edi
	and	al, 1
	mov	byte ptr [rbp - 5], al
	mov	dword ptr [rbp - 0xc], edx
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0xfff
	mov	dword ptr [rbp - 0x24], edx
	mov	dword ptr [rbp - 0x28], 0
.label_295:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_294
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	dl, byte ptr [rbp - 5]
	xor	ecx, ecx
	test	dl, 1
	mov	esi, 0xc00
	cmovne	ecx, esi
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0xc]
	not	esi
	and	ecx, esi
	mov	dword ptr [rbp - 0x30], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 1]
	mov	esi, ecx
	sub	esi, 1
	mov	dword ptr [rbp - 0x3c], ecx
	mov	dword ptr [rbp - 0x40], esi
	je	.label_298
	jmp	.label_281
.label_281:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x44], eax
	je	.label_284
	jmp	.label_286
.label_286:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 3
	mov	dword ptr [rbp - 0x48], eax
	je	.label_289
	jmp	.label_285
.label_288:
	mov	eax, dword ptr [rbp - 0x34]
	or	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, dword ptr [rbp - 0x34]
	or	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_290
.label_294:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_283
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
.label_283:
	mov	eax, dword ptr [rbp - 0x24]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403862
	.globl sub_403862
	.type sub_403862, @function
sub_403862:

	nop	word ptr [rax + rax]
.label_297:
	xor	eax, eax
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_280
.label_280:
	mov	eax, dword ptr [rbp - 0x60]
	or	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x38], eax
	mov	eax, dword ptr [rbp - 0x38]
	xor	eax, 0xffffffff
	and	eax, 0xfff
	or	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, dword ptr [rbp - 0x38]
	or	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_290
	.section	.text
	.align	32
	#Procedure 0x4038a0

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
	jne	.label_299
	test	byte ptr [rbp - 0x13], 1
	je	.label_301
	test	byte ptr [rbp - 0x11], 1
	jne	.label_299
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_301
.label_299:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_302
	call	__errno_location
	mov	dword ptr [rax], 0
.label_302:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_300
.label_301:
	mov	dword ptr [rbp - 4], 0
.label_300:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403949
	.globl sub_403949
	.type sub_403949, @function
sub_403949:

	nop	dword ptr [rax]
.label_312:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_303
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_306
.label_331:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_311:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_304
.label_303:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_306:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_305
.label_323:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_313
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_318
.label_313:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_318:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_305:
	jmp	.label_304
.label_304:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403aa1
	.globl sub_403aa1
	.type sub_403aa1, @function
sub_403aa1:

	nop	dword ptr [rax + rax]
.label_327:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_308
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_307
.label_316:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_312
	jmp	.label_332
.label_332:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_309
	jmp	.label_314
.label_314:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_312
	jmp	.label_319
.label_319:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_309
	jmp	.label_321
.label_321:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_312
	jmp	.label_328
.label_328:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_312
	jmp	.label_333
.label_333:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_309
	jmp	.label_315
.label_315:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_312
	jmp	.label_320
.label_320:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_309
	jmp	.label_325
.label_325:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_312
	jmp	.label_329
.label_329:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_309
	jmp	.label_310
.label_310:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_312
	jmp	.label_317
.label_317:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_312
	jmp	.label_322
.label_322:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_323
	jmp	.label_309
.label_309:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_305
.label_324:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_331
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_311
.label_308:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_307:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_304
	.section	.text
	.align	32
	#Procedure 0x403cf3

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
	je	.label_330
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
.label_330:
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
	je	.label_324
	jmp	.label_326
.label_326:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_327
	jmp	.label_316
	.section	.text
	.align	32
	#Procedure 0x403e70
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e98
	.globl sub_403e98
	.type sub_403e98, @function
sub_403e98:

	nop	dword ptr [rax + rax]
.label_338:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_334
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_335
.label_334:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_335
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_335:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_336
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_336:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_337:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f2d
	.globl sub_403f2d
	.type sub_403f2d, @function
sub_403f2d:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403f2f

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
	jge	.label_338
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_337
	.section	.text
	.align	32
	#Procedure 0x403f70
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_339
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_339:
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
	#Procedure 0x403fad
	.globl sub_403fad
	.type sub_403fad, @function
sub_403fad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403fb0

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
	#Procedure 0x403fdc
	.globl sub_403fdc
	.type sub_403fdc, @function
sub_403fdc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403fe0

	.globl se_const
	.type se_const, @function
se_const:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fee
	.globl sub_403fee
	.type sub_403fee, @function
sub_403fee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403ff0

	.globl is_smack_enabled
	.type is_smack_enabled, @function
is_smack_enabled:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
.label_341:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_342:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40400b
	.globl sub_40400b
	.type sub_40400b, @function
sub_40400b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404014
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_341
	jmp	.label_340
.label_340:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_342
	.section	.text
	.align	32
	#Procedure 0x404040

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_344:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_348
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_344
.label_349:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40407b
	.globl sub_40407b
	.type sub_40407b, @function
sub_40407b:

	nop	word ptr [rax + rax]
.label_345:
	test	byte ptr [rbp - 0x19], 1
	je	.label_343
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_343:
	jmp	.label_347
.label_347:
	jmp	.label_350
.label_350:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_346
.label_348:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_346:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_349
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_345
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_347
	.section	.text
	.align	32
	#Procedure 0x4040e0
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
	jb	.label_351
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_352
.label_351:
	call	xalloc_die
.label_352:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404136
	.globl sub_404136
	.type sub_404136, @function
sub_404136:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404140

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_353
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_354
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40417f
	.globl sub_40417f
	.type sub_40417f, @function
sub_40417f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404180

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
	#Procedure 0x4041b3
	.globl sub_4041b3
	.type sub_4041b3, @function
sub_4041b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041c0

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
	jne	.label_355
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_355:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_357
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_356
.label_357:
	call	abort
.label_356:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
.label_364:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_360:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_361:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_362
	jmp	.label_363
.label_362:
	jmp	.label_358
.label_358:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_359
.label_363:
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
	#Procedure 0x4042bc
	.globl sub_4042bc
	.type sub_4042bc, @function
sub_4042bc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4042c3

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
.label_359:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_361
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_364
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_360
	.section	.text
	.align	32
	#Procedure 0x404340
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_365
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_366
.label_365:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_366
.label_366:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40437b
	.globl sub_40437b
	.type sub_40437b, @function
sub_40437b:

	nop	dword ptr [rax + rax]
.label_381:
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	je	.label_367
	call	__errno_location
	cmp	dword ptr [rax], 0x74
	je	.label_367
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 4
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 4], ecx
	jmp	.label_369
.label_372:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 4
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 4], ecx
.label_368:
	jmp	.label_370
.label_370:
	jmp	.label_369
.label_384:
	movabs	rdi, OFFSET FLAT:label_377
	movabs	rsi, OFFSET FLAT:label_378
	mov	edx, 0x63
	movabs	rcx, OFFSET FLAT:label_379
	call	__assert_fail
.label_373:
	jmp	.label_369
.label_369:
	mov	byte ptr [rbp - 1], 0
.label_371:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40441a
	.globl sub_40441a
	.type sub_40441a, @function
sub_40441a:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404422

	.globl savewd_save
	.type savewd_save, @function
savewd_save:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	eax, dword ptr [rdi]
	test	eax, eax
	mov	dword ptr [rbp - 0x18], eax
	je	.label_375
	jmp	.label_383
.label_383:
	mov	eax, dword ptr [rbp - 0x18]
	dec	eax
	sub	eax, 2
	mov	dword ptr [rbp - 0x1c], eax
	jb	.label_373
	jmp	.label_380
.label_380:
	mov	eax, dword ptr [rbp - 0x18]
	sub	eax, 3
	mov	dword ptr [rbp - 0x20], eax
	je	.label_382
	jmp	.label_376
.label_376:
	mov	eax, dword ptr [rbp - 0x18]
	add	eax, -4
	sub	eax, 2
	mov	dword ptr [rbp - 0x24], eax
	jb	.label_373
	jmp	.label_384
.label_375:
	movabs	rdi, OFFSET FLAT:label_374
	xor	esi, esi
	mov	al, 0
	call	open_safer
	xor	esi, esi
	mov	dword ptr [rbp - 0x14], eax
	cmp	esi, dword ptr [rbp - 0x14]
	jg	.label_381
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 1
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 4], ecx
	jmp	.label_369
.label_367:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 3
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 4], 0xffffffff
.label_382:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 4], 0
	jge	.label_370
	call	fork
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 4], eax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	dword ptr [rcx + 4], 0
	je	.label_368
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 4]
	jge	.label_372
	mov	byte ptr [rbp - 1], 1
	jmp	.label_371
.label_806:
	movabs	rdi, OFFSET FLAT:label_388
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
	jmp	.label_385
.label_391:
	movabs	rsi, OFFSET FLAT:label_395
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_397:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_402
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
	mov	ecx, OFFSET FLAT:label_398
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
	ja	.label_387
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_403]]
	jmp	rcx
.label_811:
	movabs	rdi, OFFSET FLAT:label_399
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
	jmp	.label_385
	.section	.text
	.align	32
	#Procedure 0x4046a0

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
	je	.label_391
	movabs	rsi, OFFSET FLAT:label_389
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_397
.label_809:
	movabs	rdi, OFFSET FLAT:label_400
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
	jmp	.label_385
.label_810:
	movabs	rdi, OFFSET FLAT:label_394
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
	jmp	.label_385
.label_387:
	movabs	rdi, OFFSET FLAT:label_392
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
.label_385:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4048dc
	.globl sub_4048dc
	.type sub_4048dc, @function
sub_4048dc:

	nop	
.label_804:
	movabs	rdi, OFFSET FLAT:label_390
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
	jmp	.label_385
.label_805:
	movabs	rdi, OFFSET FLAT:label_393
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
	jmp	.label_385
.label_808:
	movabs	rdi, OFFSET FLAT:label_396
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
	jmp	.label_385
.label_803:
	jmp	.label_385
.label_812:
	movabs	rdi, OFFSET FLAT:label_386
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
	jmp	.label_385
.label_807:
	movabs	rdi, OFFSET FLAT:label_401
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
	jmp	.label_385
	.section	.text
	.align	32
	#Procedure 0x404ad0

	.globl announce_mkdir
	.type announce_mkdir, @function
announce_mkdir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_404
	mov	edi, 4
	mov	rax,  qword ptr [word ptr [stdout]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x28], rax
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, rax
	mov	al, 0
	call	prog_fprintf
.label_404:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b38
	.globl sub_404b38
	.type sub_404b38, @function
sub_404b38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b40

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
	#Procedure 0x404b77
	.globl sub_404b77
	.type sub_404b77, @function
sub_404b77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b80

	.globl octal_to_mode
	.type octal_to_mode, @function
octal_to_mode:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b8c
	.globl sub_404b8c
	.type sub_404b8c, @function
sub_404b8c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b90
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bb4
	.globl sub_404bb4
	.type sub_404bb4, @function
sub_404bb4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0
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
	#Procedure 0x404be7
	.globl sub_404be7
	.type sub_404be7, @function
sub_404be7:

	nop	word ptr [rax + rax]
.label_421:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_416:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c09
	.globl sub_404c09
	.type sub_404c09, @function
sub_404c09:

	nop	dword ptr [rax]
.label_412:
	movsx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0x2f
	jne	.label_410
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_410
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_410
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 1
	jne	.label_419
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_408
.label_419:
	mov	dword ptr [rbp - 0x48], 0
	mov	dword ptr [rbp - 0x4c], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 2
	jne	.label_406
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_406
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2e
	jne	.label_406
	mov	byte ptr [rbp - 0x42], 0
	jmp	.label_417
.label_411:
	mov	byte ptr [rbp - 0x42], 1
.label_415:
	jmp	.label_417
.label_417:
	test	byte ptr [rbp - 0x42], 1
	je	.label_420
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
.label_420:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x4c]
	call	savewd_chdir
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], -1
	je	.label_407
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0x2f
.label_407:
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_413
	cmp	dword ptr [rbp - 0x48], 0
	je	.label_409
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_409
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x54], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rax], ecx
.label_409:
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_416
.label_413:
	jmp	.label_408
.label_408:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
.label_410:
	jmp	.label_405
.label_405:
	jmp	.label_414
	.section	.text
	.align	32
	#Procedure 0x404d4b

	.globl mkancesdirs
	.type mkancesdirs, @function
mkancesdirs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rcx
	mov	byte ptr [rbp - 0x42], 0
.label_414:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x41], dl
	cmp	dl, 0
	je	.label_421
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_412
	movsx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0x2f
	je	.label_418
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_418:
	jmp	.label_405
.label_406:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	call	rax
	cmp	eax, 0
	jge	.label_411
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x48], ecx
	jmp	.label_415
	.section	.text
	.align	32
	#Procedure 0x404df0
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
	#Procedure 0x404e06
	.globl sub_404e06
	.type sub_404e06, @function
sub_404e06:

	nop	word ptr cs:[rax + rax]
.label_437:
	movabs	rdi, OFFSET FLAT:label_422
	movabs	rsi, OFFSET FLAT:label_378
	mov	edx, 0x9b
	movabs	rcx, OFFSET FLAT:label_423
	call	__assert_fail
.label_426:
	jmp	.label_427
.label_427:
	jmp	.label_428
.label_428:
	jmp	.label_424
.label_424:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x24]
	jg	.label_425
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_425
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 0x24]
	call	close
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x40], eax
	mov	dword ptr [rbp - 0x44], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rax], ecx
.label_425:
	mov	eax, dword ptr [rbp - 0x28]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e8b
	.globl sub_404e8b
	.type sub_404e8b, @function
sub_404e8b:

	nop	dword ptr [rax + rax]
.label_439:
	jmp	.label_426
	.section	.text
	.align	32
	#Procedure 0x404e98

	.globl savewd_chdir
	.type savewd_chdir, @function
savewd_chdir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], 0xffffffff
	mov	dword ptr [rbp - 0x28], 0
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_432
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	cmp	eax, 0
	je	.label_429
.label_432:
	xor	eax, eax
	mov	ecx, 0x20000
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	or	eax, 0x10900
	mov	esi, eax
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x24], eax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_441
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
	call	__errno_location
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax + 4], edx
.label_441:
	cmp	dword ptr [rbp - 0x24], 0
	jge	.label_434
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	je	.label_434
	mov	dword ptr [rbp - 0x28], 0xffffffff
.label_434:
	jmp	.label_429
.label_429:
	cmp	dword ptr [rbp - 0x28], 0
	jne	.label_424
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x24]
	jg	.label_431
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 2
	cmp	eax, 0
	jne	.label_424
.label_431:
	mov	rdi, qword ptr [rbp - 8]
	call	savewd_save
	test	al, 1
	jne	.label_438
	jmp	.label_440
.label_438:
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x28], 0xfffffffe
	jmp	.label_428
.label_440:
	cmp	dword ptr [rbp - 0x24], 0
	jge	.label_433
	mov	rdi, qword ptr [rbp - 0x10]
	call	chdir
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_436
.label_433:
	mov	edi, dword ptr [rbp - 0x24]
	call	fchdir
	mov	dword ptr [rbp - 0x30], eax
.label_436:
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jne	.label_427
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax]
	dec	ecx
	mov	eax, ecx
	sub	ecx, 4
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], ecx
	ja	.label_430
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_435]]
	jmp	rcx
.label_797:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 4], 0
	jne	.label_437
	jmp	.label_439
.label_795:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 2
	jmp	.label_426
.label_430:
	movabs	rdi, OFFSET FLAT:label_377
	movabs	rsi, OFFSET FLAT:label_378
	mov	edx, 0x9f
	movabs	rcx, OFFSET FLAT:label_423
	call	__assert_fail
.label_796:
	jmp	.label_426
	.section	.text
	.align	32
	#Procedure 0x405040
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ax, dx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	word ptr [rbp - 0x12], ax
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405073
	.globl sub_405073
	.type sub_405073, @function
sub_405073:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405080

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
	jne	.label_442
	call	abort
.label_442:
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
	#Procedure 0x4050e4
	.globl sub_4050e4
	.type sub_4050e4, @function
sub_4050e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050f0
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	esi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40511b
	.globl sub_40511b
	.type sub_40511b, @function
sub_40511b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405120

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
	#Procedure 0x405140

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_443
	movabs	rdi, OFFSET FLAT:label_449
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_444:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_448:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_447
	movabs	rsi, OFFSET FLAT:label_450
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_447
	movabs	rsi, OFFSET FLAT:label_445
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_446
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_446:
	jmp	.label_447
.label_447:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40522b
	.globl sub_40522b
	.type sub_40522b, @function
sub_40522b:

	nop	dword ptr [rax]
.label_443:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_444
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_448
	.section	.text
	.align	32
	#Procedure 0x405260
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405284
	.globl sub_405284
	.type sub_405284, @function
sub_405284:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405290
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052b4
	.globl sub_4052b4
	.type sub_4052b4, @function
sub_4052b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052c0

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
	#Procedure 0x4052f8
	.globl sub_4052f8
	.type sub_4052f8, @function
sub_4052f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405300
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_451
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_451:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40532a
	.globl sub_40532a
	.type sub_40532a, @function
sub_40532a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330

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
	.align	32
	#Procedure 0x405352
	.globl sub_405352
	.type sub_405352, @function
sub_405352:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405360
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
	#Procedure 0x405391
	.globl sub_405391
	.type sub_405391, @function
sub_405391:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053a0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_452
	call	gettext
	movabs	rsi, OFFSET FLAT:label_454
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_453
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_46
	movabs	rdx, OFFSET FLAT:label_456
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_455
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
	#Procedure 0x405426
	.globl sub_405426
	.type sub_405426, @function
sub_405426:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405430

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
	jne	.label_457
	movabs	rax, OFFSET FLAT:label_38
	mov	qword ptr [rbp - 8], rax
.label_457:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_458
	movabs	rax, OFFSET FLAT:label_459
	mov	qword ptr [rbp - 8], rax
.label_458:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405487
	.globl sub_405487
	.type sub_405487, @function
sub_405487:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405490

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
	je	.label_460
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
.label_460:
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
	#Procedure 0x4055f4
	.globl sub_4055f4
	.type sub_4055f4, @function
sub_4055f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405600

	.globl process_dir
	.type process_dir, @function
process_dir:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	test	byte ptr [rdx + 0x14], 1
	je	.label_461
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_462
	mov	esi, 0x4000
	mov	rdi, qword ptr [rbp - 0x10]
	call	defaultcon
	cmp	eax, 0
	jge	.label_462
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable_ctx_err
	test	al, 1
	jne	.label_462
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_465
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_462:
	jmp	.label_461
.label_461:
	movabs	r9, OFFSET FLAT:announce_mkdir
	mov	eax, 0xffffffff
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [rbp - 0x28]
	mov	r11d, dword ptr [r10 + 0xc]
	mov	r10, qword ptr [rbp - 0x28]
	mov	ebx, dword ptr [r10 + 0x10]
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rcx, r8
	mov	r8d, r11d
	mov	dword ptr [rsp], ebx
	mov	dword ptr [rsp + 8], 0xffffffff
	mov	dword ptr [rsp + 0x10], 0xffffffff
	mov	dword ptr [rsp + 0x18], 1
	mov	dword ptr [rbp - 0x40], eax
	call	make_dir_parents
	mov	r8d, 1
	xor	r11d, r11d
	test	al, 1
	cmovne	r8d, r11d
	mov	dword ptr [rbp - 0x2c], r8d
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_463
	mov	rax, qword ptr [rbp - 0x28]
	test	byte ptr [rax + 0x14], 1
	je	.label_463
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_463
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	xor	ecx, ecx
	mov	rdi, rax
	mov	esi, ecx
	mov	edx, ecx
	call	restorecon
	test	al, 1
	jne	.label_464
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable_ctx_err
	test	al, 1
	jne	.label_464
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_466
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x44], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_464:
	jmp	.label_463
.label_463:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x68
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057c3
	.globl sub_4057c3
	.type sub_4057c3, @function
sub_4057c3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057d0
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
	jb	.label_467
	jmp	.label_469
.label_469:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_470
	jmp	.label_467
.label_467:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_468
.label_470:
	mov	byte ptr [rbp - 1], 0
.label_468:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405818
	.globl sub_405818
	.type sub_405818, @function
sub_405818:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405820

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
	#Procedure 0x40583b
	.globl sub_40583b
	.type sub_40583b, @function
sub_40583b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405840

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
	#Procedure 0x40587f
	.globl sub_40587f
	.type sub_40587f, @function
sub_40587f:

	nop	
.label_485:
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_471
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0xc8]
	call	chmod
	mov	dword ptr [rbp - 0xe0], eax
	jmp	.label_475
.label_486:
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_483
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	lchown
	mov	dword ptr [rbp - 0xd8], eax
	jmp	.label_487
.label_471:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0xc8]
	call	chmod
	mov	dword ptr [rbp - 0xe0], eax
.label_475:
	mov	eax, dword ptr [rbp - 0xe0]
	mov	dword ptr [rbp - 0xdc], eax
.label_479:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	dword ptr [rbp - 0xbc], eax
.label_484:
	jmp	.label_474
.label_474:
	jmp	.label_476
.label_476:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_473
	cmp	dword ptr [rbp - 0xbc], 0
	jne	.label_477
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_472
.label_477:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], ecx
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	dword ptr [rbp - 0xe4], eax
	mov	dword ptr [rbp - 0xe8], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xe8]
	mov	dword ptr [rax], ecx
.label_472:
	jmp	.label_473
.label_473:
	mov	eax, dword ptr [rbp - 0xbc]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405972
	.globl sub_405972
	.type sub_405972, @function
sub_405972:

	nop	word ptr cs:[rax + rax]
.label_490:
	mov	dword ptr [rbp - 0xc4], 0
	cmp	dword ptr [rbp - 0x18], -1
	je	.label_488
	mov	eax, dword ptr [rbp - 0x18]
	cmp	eax, dword ptr [rbp - 0x9c]
	jne	.label_480
.label_488:
	cmp	dword ptr [rbp - 0x1c], -1
	je	.label_482
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 0x98]
	je	.label_482
.label_480:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_486
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fchown
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_481
.label_491:
	lea	rsi, [rbp - 0xb8]
	mov	edi, dword ptr [rbp - 4]
	call	fstat
	mov	dword ptr [rbp - 0xd0], eax
.label_489:
	mov	eax, dword ptr [rbp - 0xd0]
	mov	dword ptr [rbp - 0xbc], eax
	cmp	dword ptr [rbp - 0xbc], 0
	jne	.label_476
	mov	eax, dword ptr [rbp - 0xa0]
	mov	dword ptr [rbp - 0xc0], eax
	mov	eax, dword ptr [rbp - 0xc0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_490
	call	__errno_location
	mov	dword ptr [rax], 0x14
	mov	dword ptr [rbp - 0xbc], 0xffffffff
	jmp	.label_474
.label_483:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	chown
	mov	dword ptr [rbp - 0xd8], eax
.label_487:
	mov	eax, dword ptr [rbp - 0xd8]
	mov	dword ptr [rbp - 0xd4], eax
.label_481:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	dword ptr [rbp - 0xbc], eax
	cmp	dword ptr [rbp - 0xbc], 0
	jne	.label_478
	mov	eax, dword ptr [rbp - 0xc0]
	and	eax, 0x49
	cmp	eax, 0
	je	.label_478
	mov	eax, dword ptr [rbp - 0xc0]
	and	eax, 0xc00
	mov	dword ptr [rbp - 0xc4], eax
.label_478:
	jmp	.label_482
.label_482:
	cmp	dword ptr [rbp - 0xbc], 0
	jne	.label_484
	mov	eax, dword ptr [rbp - 0xc0]
	xor	eax, dword ptr [rbp - 0x20]
	or	eax, dword ptr [rbp - 0xc4]
	and	eax, dword ptr [rbp - 0x24]
	cmp	eax, 0
	je	.label_484
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0xc0]
	and	edx, 0xfff
	mov	esi, dword ptr [rbp - 0x24]
	xor	esi, 0xffffffff
	and	edx, esi
	or	ecx, edx
	mov	dword ptr [rbp - 0xc8], ecx
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_485
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0xc8]
	call	fchmod
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_479
	.section	.text
	.align	32
	#Procedure 0x405b15

	.globl dirchownmod
	.type dirchownmod, @function
dirchownmod:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	eax, dword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	dword ptr [rbp - 0x1c], r8d
	mov	dword ptr [rbp - 0x20], r9d
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_491
	lea	rsi, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_489
	.section	.text
	.align	32
	#Procedure 0x405b60

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_492
	cmp	dword ptr [rbp - 4], 2
	jg	.label_492
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
.label_492:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405bbf
	.globl sub_405bbf
	.type sub_405bbf, @function
sub_405bbf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405bc0
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405be7
	.globl sub_405be7
	.type sub_405be7, @function
sub_405be7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bf0

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
	#Procedure 0x405c62
	.globl sub_405c62
	.type sub_405c62, @function
sub_405c62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c70

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
	#Procedure 0x405ca2
	.globl sub_405ca2
	.type sub_405ca2, @function
sub_405ca2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cb0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_496:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_495
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_496
.label_495:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_497
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_494]],  rax
.label_497:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_493
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_493:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d84
	.globl sub_405d84
	.type sub_405d84, @function
sub_405d84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d90

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
	jne	.label_498
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_498:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_499
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_499
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_499
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_500
.label_499:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_500:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e31
	.globl sub_405e31
	.type sub_405e31, @function
sub_405e31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e40
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e68
	.globl sub_405e68
	.type sub_405e68, @function
sub_405e68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e70

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_501
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
.label_503:
	mov	byte ptr [rbp - 1], 0
.label_504:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405eae
	.globl sub_405eae
	.type sub_405eae, @function
sub_405eae:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405eb3
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
	jb	.label_502
	jmp	.label_505
.label_505:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_503
	jmp	.label_502
.label_502:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_504
	.section	.text
	.align	32
	#Procedure 0x405ef0
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
	#Procedure 0x405f1d
	.globl sub_405f1d
	.type sub_405f1d, @function
sub_405f1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f20
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
	#Procedure 0x405f4f
	.globl sub_405f4f
	.type sub_405f4f, @function
sub_405f4f:

	nop	
.label_507:
	jmp	.label_506
.label_506:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f63
	.globl sub_405f63
	.type sub_405f63, @function
sub_405f63:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f69

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
	ja	.label_507
	jmp	.label_508
.label_508:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_506
	.section	.text
	.align	32
	#Procedure 0x405fa0
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405fc7
	.globl sub_405fc7
	.type sub_405fc7, @function
sub_405fc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fd0

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_509
	cmp	dword ptr [rbp - 4], 0x3d
	sete	al
	mov	byte ptr [rbp - 5], al
.label_509:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ffa
	.globl sub_405ffa
	.type sub_405ffa, @function
sub_405ffa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406000
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
	je	.label_510
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_511
.label_510:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_511
.label_511:
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
	#Procedure 0x4060c5
	.globl sub_4060c5
	.type sub_4060c5, @function
sub_4060c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060d0

	.globl make_node_op_equals
	.type make_node_op_equals, @function
make_node_op_equals:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x20
	mov	ecx, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x3d
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 1], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 4], 0xfff
	mov	esi, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 8], esi
	mov	esi, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xc], esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x11], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406131
	.globl sub_406131
	.type sub_406131, @function
sub_406131:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406140

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
	#Procedure 0x40617e
	.globl sub_40617e
	.type sub_40617e, @function
sub_40617e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406180

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
	#Procedure 0x40619f
	.globl sub_40619f
	.type sub_40619f, @function
sub_40619f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4061a0
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
	#Procedure 0x4061ca
	.globl sub_4061ca
	.type sub_4061ca, @function
sub_4061ca:

	nop	word ptr [rax + rax]
.label_526:
	lea	rdi, [rbp - 0x38]
	call	savewd_finish
.label_513:
	mov	eax, dword ptr [rbp - 0x24]
	cmp	eax, dword ptr [rbp - 4]
	jge	.label_514
	lea	rsi, [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rdx, qword ptr [rbp - 0x20]
	call	rax
	mov	dword ptr [rbp - 0x44], eax
	mov	eax, dword ptr [rbp - 0x2c]
	cmp	eax, dword ptr [rbp - 0x44]
	jge	.label_515
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x2c], eax
.label_515:
	jmp	.label_512
.label_512:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_513
.label_516:
	jmp	.label_522
.label_522:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, -1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_523
	.section	.text
	.align	32
	#Procedure 0x40623a

	.globl savewd_process_files
	.type savewd_process_files, @function
savewd_process_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x38]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], 0
	mov	dword ptr [rbp - 0x2c], 0
	mov	rdi, rax
	call	savewd_init
	mov	r8d, dword ptr [rbp - 4]
	sub	r8d, 1
	mov	dword ptr [rbp - 0x28], r8d
.label_523:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x28]
	jg	.label_521
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2f
	je	.label_516
	jmp	.label_521
.label_514:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4062a8
	.globl sub_4062a8
	.type sub_4062a8, @function
sub_4062a8:

	nop	word ptr cs:[rax + rax]
.label_521:
	jmp	.label_520
.label_520:
	mov	eax, dword ptr [rbp - 0x24]
	cmp	eax, dword ptr [rbp - 0x28]
	jge	.label_526
	lea	rdi, [rbp - 0x38]
	call	savewd_delegating
	test	al, 1
	jne	.label_518
	lea	rsi, [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rdx, qword ptr [rbp - 0x20]
	call	rax
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x2c]
	cmp	eax, dword ptr [rbp - 0x3c]
	jge	.label_524
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x2c], eax
.label_524:
	jmp	.label_518
.label_518:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	movsx	eax, byte ptr [rcx]
	cmp	eax, 0x2f
	je	.label_517
	lea	rdi, [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x2c]
	call	savewd_restore
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, dword ptr [rbp - 0x2c]
	cmp	eax, dword ptr [rbp - 0x40]
	jge	.label_525
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x2c], eax
.label_525:
	jmp	.label_517
.label_517:
	jmp	.label_519
.label_519:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_520
	.section	.text
	.align	32
	#Procedure 0x406360

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, dl
	mov	cl, sil
	mov	qword ptr [rbp - 8], rdi
	and	cl, 1
	mov	byte ptr [rbp - 9], cl
	and	al, 1
	mov	byte ptr [rbp - 0xa], al
	call	__errno_location
	xor	edx, edx
	mov	cl, dl
	mov	dword ptr [rax], 0x5f
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406397
	.globl sub_406397
	.type sub_406397, @function
sub_406397:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063a0

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
	jg	.label_532
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_530
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_533
.label_530:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_531
.label_533:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_529
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_529:
	jmp	.label_531
.label_531:
	jmp	.label_534
.label_532:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_534:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_527
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_527
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_535
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_528
.label_535:
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
.label_528:
	jmp	.label_527
.label_527:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064c5
	.globl sub_4064c5
	.type sub_4064c5, @function
sub_4064c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064d0

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
	#Procedure 0x4064f8
	.globl sub_4064f8
	.type sub_4064f8, @function
sub_4064f8:

	nop	dword ptr [rax + rax]
.label_539:
	jmp	.label_536
	.section	.text
	.align	32
	#Procedure 0x406505

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
	jne	.label_538
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_537
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
.label_537:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_539
	call	xalloc_die
.label_540:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_536:
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
	#Procedure 0x4065c6
	.globl sub_4065c6
	.type sub_4065c6, @function
sub_4065c6:

	nop	word ptr [rax + rax]
.label_538:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_540
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4065f0

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
	je	.label_541
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_541:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40662b
	.globl sub_40662b
	.type sub_40662b, @function
sub_40662b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406630

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
	jne	.label_542
	cmp	qword ptr [rbp - 8], 0
	je	.label_542
	call	xalloc_die
.label_542:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40666e
	.globl sub_40666e
	.type sub_40666e, @function
sub_40666e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406670

	.globl savewd_finish
	.type savewd_finish, @function
savewd_finish:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	eax, dword ptr [rdi]
	mov	edi, eax
	mov	rcx, rdi
	sub	rcx, 4
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rcx
	ja	.label_548
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_544]]
	jmp	rcx
.label_543:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 5
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_801:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 4], 0
	jge	.label_549
	jmp	.label_547
.label_799:
	jmp	.label_543
.label_800:
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 4]
	call	close
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_543
.label_549:
	movabs	rdi, OFFSET FLAT:label_545
	movabs	rsi, OFFSET FLAT:label_378
	mov	edx, 0xf7
	movabs	rcx, OFFSET FLAT:label_546
	call	__assert_fail
.label_547:
	jmp	.label_543
.label_548:
	movabs	rdi, OFFSET FLAT:label_377
	movabs	rsi, OFFSET FLAT:label_378
	mov	edx, 0xfb
	movabs	rcx, OFFSET FLAT:label_546
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x406740

	.globl open_safer
	.type open_safer, @function
open_safer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
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
	mov	dword ptr [rbp - 0x18c], esi
	je	.label_550
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
.label_550:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	edi, dword ptr [rbp - 0x18c]
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], 0
	mov	edi, dword ptr [rbp - 0xc]
	and	edi, 0x40
	cmp	edi, 0
	je	.label_551
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x10
	mov	esi, dword ptr [rbp - 0x30]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x198], rax
	mov	dword ptr [rbp - 0x19c], esi
	ja	.label_552
	mov	eax, dword ptr [rbp - 0x19c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1a8], rcx
	jmp	.label_553
.label_552:
	mov	rax, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
.label_553:
	mov	rax, qword ptr [rbp - 0x1a8]
	lea	rcx, [rbp - 0x30]
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_551:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 0x10]
	xor	eax, eax
	mov	cl, al
	mov	al, cl
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406935
	.globl sub_406935
	.type sub_406935, @function
sub_406935:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406940
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_554
	jmp	.label_556
.label_556:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_555
.label_554:
	mov	byte ptr [rbp - 1], 0
.label_555:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406972
	.globl sub_406972
	.type sub_406972, @function
sub_406972:

	nop	word ptr cs:[rax + rax]
.label_558:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_557
.label_557:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40699e
	.globl sub_40699e
	.type sub_40699e, @function
sub_40699e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069a7
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
	je	.label_558
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_557
	.section	.text
	.align	32
	#Procedure 0x4069d0

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	call	__errno_location
	mov	esi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069f7
	.globl sub_4069f7
	.type sub_4069f7, @function
sub_4069f7:

	nop	word ptr [rax + rax]
.label_563:
	jmp	.label_559
.label_559:
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
	jne	.label_560
	jmp	.label_561
.label_560:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_559
.label_561:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_562:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a77
	.globl sub_406a77
	.type sub_406a77, @function
sub_406a77:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a86

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
	jne	.label_563
	mov	dword ptr [rbp - 4], 0
	jmp	.label_562
.label_565:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_566:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ade
	.globl sub_406ade
	.type sub_406ade, @function
sub_406ade:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ae6

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_564
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_565
.label_564:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_566
	.section	.text
	.align	32
	#Procedure 0x406b20

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
	je	.label_567
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_570
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_571
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_569
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_568
.label_571:
	mov	byte ptr [rbp - 5], 0
.label_568:
	jmp	.label_567
.label_567:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b93
	.globl sub_406b93
	.type sub_406b93, @function
sub_406b93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ba0

	.globl savewd_delegating
	.type savewd_delegating, @function
savewd_delegating:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi], 3
	mov	byte ptr [rbp - 9], cl
	jne	.label_572
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rcx + 4]
	setl	dl
	mov	byte ptr [rbp - 9], dl
.label_572:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bd5
	.globl sub_406bd5
	.type sub_406bd5, @function
sub_406bd5:

	nop	word ptr cs:[rax + rax]
.label_574:
	mov	esi, 0xfff
	mov	edi, dword ptr [rbp - 0x88]
	call	make_node_op_equals
	mov	qword ptr [rbp - 8], rax
.label_573:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c01
	.globl sub_406c01
	.type sub_406c01, @function
sub_406c01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c0b
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rsi, [rbp - 0xa0]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	stat
	cmp	eax, 0
	je	.label_574
	mov	qword ptr [rbp - 8], 0
	jmp	.label_573
.label_579:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_577
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x406c62

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_579
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_575
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_579
.label_575:
	movabs	rdi, OFFSET FLAT:label_581
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_576
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_580
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_578
.label_577:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406cfd
	.globl sub_406cfd
	.type sub_406cfd, @function
sub_406cfd:

	nop	word ptr [rax + rax]
.label_576:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_354
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_578:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x406d30
	.globl getcon
	.type getcon, @function
getcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d54
	.globl sub_406d54
	.type sub_406d54, @function
sub_406d54:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d60
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
	#Procedure 0x406d96
	.globl sub_406d96
	.type sub_406d96, @function
sub_406d96:

	nop	word ptr cs:[rax + rax]
.label_586:
	jmp	.label_594
.label_590:
	mov	eax, dword ptr [rbp - 0x44]
	or	eax, 0x207
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_603
.label_620:
	mov	eax, dword ptr [rbp - 0x44]
	or	eax, 0xfff
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_603
.label_848:
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 0x49
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_585
.label_603:
	jmp	.label_623
.label_623:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_614
.label_843:
	mov	byte ptr [rbp - 0x51], 2
	jmp	.label_585
.label_584:
	mov	eax, dword ptr [rbp - 0x44]
	or	eax, 0x438
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_603
.label_630:
	mov	eax, 0x10
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xnmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_593:
	mov	dword ptr [rbp - 0x44], 0
.label_614:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x2b
	mov	dword ptr [rbp - 0x74], ecx
	mov	dword ptr [rbp - 0x78], edx
	je	.label_596
	jmp	.label_605
.label_605:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_596
	jmp	.label_619
.label_619:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x80], eax
	je	.label_596
	jmp	.label_617
.label_617:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x84], eax
	je	.label_620
	jmp	.label_624
.label_624:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x88], eax
	je	.label_584
	jmp	.label_602
.label_602:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_590
	jmp	.label_597
.label_597:
	mov	eax, dword ptr [rbp - 0x74]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x90], eax
	je	.label_599
	jmp	.label_592
.label_592:
	jmp	.label_588
.label_618:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0xb4], eax
.label_622:
	mov	eax, dword ptr [rbp - 0xb4]
	mov	dword ptr [rbp - 0xb0], eax
.label_621:
	mov	eax, dword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	dword ptr [rcx + 0xc], eax
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x3d
	mov	byte ptr [rbp - 0xb5], al
	je	.label_583
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2b
	mov	byte ptr [rbp - 0xb5], al
	je	.label_583
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0xb5], dl
.label_583:
	mov	al, byte ptr [rbp - 0xb5]
	test	al, 1
	jne	.label_600
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	je	.label_606
	jmp	.label_610
.label_610:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_612
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 1], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_616
.label_606:
	jmp	.label_582
.label_582:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_593
.label_845:
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 0xc00
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_585
.label_634:
	mov	eax, 0xfff
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_626
.label_626:
	mov	eax, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 0x34], eax
	mov	edi, dword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x34]
	call	make_node_op_equals
	mov	qword ptr [rbp - 8], rax
	jmp	.label_616
.label_585:
	jmp	.label_609
.label_609:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_611
.label_596:
	jmp	.label_604
.label_599:
	mov	eax, dword ptr [rbp - 0x44]
	or	eax, 0x9c0
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_603
.label_612:
	jmp	.label_588
.label_588:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_616:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40701e
	.globl sub_40701e
	.type sub_40701e, @function
sub_40701e:

	nop	word ptr cs:[rax + rax]
.label_594:
	jmp	.label_589
.label_589:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	dl, byte ptr [rbp - 0x45]
	mov	rax, qword ptr [rbp - 0x60]
	mov	byte ptr [rax], dl
	mov	dl, byte ptr [rbp - 0x51]
	mov	rax, qword ptr [rbp - 0x60]
	mov	byte ptr [rax + 1], dl
	mov	esi, dword ptr [rbp - 0x44]
	mov	rax, qword ptr [rbp - 0x60]
	mov	dword ptr [rax + 4], esi
	mov	esi, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x60]
	mov	dword ptr [rax + 8], esi
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_601
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0xb0], eax
	jmp	.label_621
.label_790:
	mov	dword ptr [rbp - 0x64], 0
.label_608:
	mov	eax, 0xfff
	mov	ecx, dword ptr [rbp - 0x64]
	shl	ecx, 3
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
	movsx	edi, byte ptr [rdx]
	add	ecx, edi
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x64], ecx
	cmp	eax, dword ptr [rbp - 0x64]
	jae	.label_587
	jmp	.label_588
.label_846:
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 0x200
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_585
.label_587:
	jmp	.label_613
.label_613:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 0x9d], cl
	jg	.label_615
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x38
	setl	dl
	mov	byte ptr [rbp - 0x9d], dl
.label_615:
	mov	al, byte ptr [rbp - 0x9d]
	test	al, 1
	jne	.label_608
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_591
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_595
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	je	.label_595
.label_591:
	jmp	.label_588
.label_792:
	mov	dword ptr [rbp - 0x4c], 7
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_589
.label_847:
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 0x92
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_585
.label_595:
	mov	dword ptr [rbp - 0x50], 0xfff
	mov	dword ptr [rbp - 0x44], 0xfff
	mov	edi, dword ptr [rbp - 0x64]
	call	octal_to_mode
	mov	dword ptr [rbp - 0x4c], eax
	mov	byte ptr [rbp - 0x51], 1
	jmp	.label_589
.label_844:
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 0x124
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_585
.label_791:
	mov	dword ptr [rbp - 0x4c], 0x38
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_589
.label_629:
	jmp	.label_632
.label_632:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 0x65], cl
	jg	.label_636
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x38
	setl	dl
	mov	byte ptr [rbp - 0x65], dl
.label_636:
	mov	al, byte ptr [rbp - 0x65]
	test	al, 1
	jne	.label_633
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	je	.label_635
	mov	qword ptr [rbp - 8], 0
	jmp	.label_616
	.section	.text
	.align	32
	#Procedure 0x40720f

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	eax, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rdi]
	cmp	eax, ecx
	jg	.label_627
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x38
	jge	.label_627
	mov	dword ptr [rbp - 0x2c], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_633:
	mov	eax, 0xfff
	mov	ecx, dword ptr [rbp - 0x2c]
	shl	ecx, 3
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
	movsx	edi, byte ptr [rdx]
	add	ecx, edi
	sub	ecx, 0x30
	mov	dword ptr [rbp - 0x2c], ecx
	cmp	eax, dword ptr [rbp - 0x2c]
	jae	.label_629
	mov	qword ptr [rbp - 8], 0
	jmp	.label_616
.label_793:
	mov	dword ptr [rbp - 0x4c], 0x1c0
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_589
.label_635:
	mov	edi, dword ptr [rbp - 0x2c]
	call	octal_to_mode
	mov	dword ptr [rbp - 0x30], eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rcx, rdx
	cmp	rcx, 5
	jge	.label_634
	mov	eax, dword ptr [rbp - 0x30]
	and	eax, 0xc00
	or	eax, 0x200
	or	eax, 0x1ff
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_626
.label_601:
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_618
	mov	eax, dword ptr [rbp - 0x44]
	and	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0xb4], eax
	jmp	.label_622
.label_607:
	mov	dword ptr [rbp - 0x4c], 0
	mov	byte ptr [rbp - 0x51], 1
.label_611:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x58
	mov	eax, ecx
	sub	ecx, 0x20
	mov	qword ptr [rbp - 0xa8], rax
	mov	dword ptr [rbp - 0xac], ecx
	ja	.label_586
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_598]]
	jmp	rcx
.label_627:
	mov	qword ptr [rbp - 0x40], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_628:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	je	.label_630
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x3d
	mov	byte ptr [rbp - 0x6d], al
	je	.label_631
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2b
	mov	byte ptr [rbp - 0x6d], al
	je	.label_631
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0x6d], dl
.label_631:
	mov	al, byte ptr [rbp - 0x6d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	add	rdx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rdx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_628
.label_604:
	jmp	.label_600
.label_600:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x45], dl
	mov	dword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x51], 3
	mov	rax, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rax]
	add	esi, -0x30
	mov	eax, esi
	sub	esi, 0x45
	mov	qword ptr [rbp - 0x98], rax
	mov	dword ptr [rbp - 0x9c], esi
	ja	.label_607
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_625]]
	jmp	rcx
.label_638:
	mov	byte ptr [rbp - 1], 0
.label_639:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40741e
	.globl sub_40741e
	.type sub_40741e, @function
sub_40741e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40742c
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_638
	jmp	.label_637
.label_637:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_639
	.section	.text
	.align	32
	#Procedure 0x407450
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
	#Procedure 0x4074fd
	.globl sub_4074fd
	.type sub_4074fd, @function
sub_4074fd:

	nop	dword ptr [rax]
.label_642:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_640
.label_640:
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
	je	.label_641
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_641:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407623
	.globl sub_407623
	.type sub_407623, @function
sub_407623:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40762f

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
	je	.label_642
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_640
.label_643:
	mov	byte ptr [rbp - 1], 0
.label_647:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40766e
	.globl sub_40766e
	.type sub_40766e, @function
sub_40766e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407679
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
	jb	.label_646
	jmp	.label_644
.label_644:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_646
	jmp	.label_645
.label_645:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_643
	jmp	.label_646
.label_646:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_647
.label_650:
	mov	byte ptr [rbp - 1], 0
.label_649:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076de
	.globl sub_4076de
	.type sub_4076de, @function
sub_4076de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4076df
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_650
	jmp	.label_648
.label_648:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_649
	.section	.text
	.align	32
	#Procedure 0x407700
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
	#Procedure 0x40771a
	.globl sub_40771a
	.type sub_40771a, @function
sub_40771a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407720
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
	jb	.label_651
	jmp	.label_654
.label_654:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_651
	jmp	.label_652
.label_652:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_653
	jmp	.label_651
.label_651:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_655
.label_653:
	mov	byte ptr [rbp - 1], 0
.label_655:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407785
	.globl sub_407785
	.type sub_407785, @function
sub_407785:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407790
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077b4
	.globl sub_4077b4
	.type sub_4077b4, @function
sub_4077b4:

	nop	word ptr cs:[rax + rax]
.label_656:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_657:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077d2
	.globl sub_4077d2
	.type sub_4077d2, @function
sub_4077d2:

	nop	word ptr [rax + rax]
.label_658:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_656
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_656
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407804

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_658
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_658
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_657
	.section	.text
	.align	32
	#Procedure 0x407840

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_659
	jmp	.label_664
.label_664:
	movabs	rdi, OFFSET FLAT:label_665
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_661
.label_659:
	movabs	rdi, OFFSET FLAT:label_662
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_663
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_668
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_667
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_666
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_660
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_45
	mov	dword ptr [rbp - 0x2c], eax
	call	emit_ancillary_info
.label_661:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x40797d
	.globl sub_40797d
	.type sub_40797d, @function
sub_40797d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407980

	.globl prog_fprintf
	.type prog_fprintf, @function
prog_fprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
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
	je	.label_669
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
.label_669:
	mov	rax, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rdx, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rdi, qword ptr [rbp - 0x190]
	mov	r8, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [rip + program_name]]
	mov	rsi, qword ptr [rbp - 8]
	call	fputs_unlocked
	mov	rsi, qword ptr [rbp - 8]
	mov	r9d, OFFSET FLAT:label_670
	mov	edi, r9d
	mov	dword ptr [rbp - 0x194], eax
	call	fputs_unlocked
	lea	rcx, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rcx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], 0x30
	mov	dword ptr [rbp - 0x30], 0x10
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdx, [rbp - 0x30]
	mov	dword ptr [rbp - 0x198], eax
	call	vfprintf
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, 0xa
	mov	dword ptr [rbp - 0x19c], eax
	call	fputc_unlocked
	mov	dword ptr [rbp - 0x1a0], eax
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b27
	.globl sub_407b27
	.type sub_407b27, @function
sub_407b27:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b30
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
	je	.label_671
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_672
.label_671:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_672
.label_672:
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
	#Procedure 0x407ba2
	.globl sub_407ba2
	.type sub_407ba2, @function
sub_407ba2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bb0

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
	#Procedure 0x407bd5
	.globl sub_407bd5
	.type sub_407bd5, @function
sub_407bd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407be0
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
	#Procedure 0x407c08
	.globl sub_407c08
	.type sub_407c08, @function
sub_407c08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c10

	.globl sub_407c10
	.type sub_407c10, @function
sub_407c10:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_673
.label_675:
	mov	byte ptr [rbp - 1], 0
.label_673:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c27
	.globl sub_407c27
	.type sub_407c27, @function
sub_407c27:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c36
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
	ja	.label_675
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_674]]
	jmp	rcx
.label_677:
	mov	byte ptr [rbp - 1], 0
.label_678:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c6e
	.globl sub_407c6e
	.type sub_407c6e, @function
sub_407c6e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407c70
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
	jb	.label_676
	jmp	.label_679
.label_679:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_677
	jmp	.label_676
.label_676:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_678
	.section	.text
	.align	32
	#Procedure 0x407cb0

	.globl savewd_init
	.type savewd_init, @function
savewd_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], 0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407cc4
	.globl sub_407cc4
	.type sub_407cc4, @function
sub_407cc4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cd0

	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407cf4
	.globl sub_407cf4
	.type sub_407cf4, @function
sub_407cf4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d00
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
	#Procedure 0x407d3a
	.globl sub_407d3a
	.type sub_407d3a, @function
sub_407d3a:

	nop	word ptr [rax + rax]
.label_698:
	cmp	dword ptr [rbp - 0x10c], 0
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x10d], al
	test	byte ptr [rbp - 0x10d], 1
	je	.label_680
	movabs	rax, OFFSET FLAT:label_374
	mov	qword ptr [rbp - 0x138], rax
	jmp	.label_683
.label_696:
	jmp	.label_711
.label_711:
	jmp	.label_702
.label_702:
	jmp	.label_685
.label_694:
	mov	rdi, qword ptr [rbp - 0x20]
	call	savewd_errno
	mov	dword ptr [rbp - 0x11c], eax
.label_706:
	mov	eax, dword ptr [rbp - 0x11c]
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jne	.label_688
	mov	qword ptr [rbp - 0x60], 0
	mov	dword ptr [rbp - 0x64], 2
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_697
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	mkancesdirs
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	jge	.label_703
	cmp	qword ptr [rbp - 0x60], -1
	jge	.label_708
	mov	byte ptr [rbp - 9], 1
	jmp	.label_682
.label_680:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x138], rax
.label_683:
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x118], rax
	mov	edi, dword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x118]
	mov	edx, dword ptr [rbp - 0x6c]
	mov	ecx, dword ptr [rbp - 0x48]
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	r9d, dword ptr [rbp - 0x34]
	mov	r10d, dword ptr [rbp - 0x44]
	mov	dword ptr [rsp], r10d
	call	dirchownmod
	cmp	eax, 0
	jne	.label_692
	mov	byte ptr [rbp - 9], 1
	jmp	.label_682
.label_699:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	dword ptr [rbp - 0x6c], 0xffffffff
.label_705:
	test	byte ptr [rbp - 0x4d], 1
	je	.label_707
	cmp	dword ptr [rbp - 0x54], 0
	jne	.label_709
	mov	byte ptr [rbp - 9], 1
	jmp	.label_682
.label_712:
	jmp	.label_711
.label_704:
	test	byte ptr [rbp - 0x66], 1
	jne	.label_693
	mov	eax, dword ptr [rbp - 0x6c]
	and	eax, 0xffffffed
	mov	dword ptr [rbp - 0x6c], eax
.label_693:
	jmp	.label_695
.label_695:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x60]
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rdi, rax
	call	mkdir
	cmp	eax, 0
	jne	.label_699
	mov	eax, dword ptr [rbp - 0x34]
	and	eax, dword ptr [rbp - 0x44]
	and	eax, 0x1ff
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x6d], cl
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	call	rdx
	mov	cl, byte ptr [rbp - 0x65]
	and	cl, 1
	movzx	eax, cl
	mov	cl, byte ptr [rbp - 0x66]
	and	cl, 1
	movzx	r8d, cl
	and	eax, r8d
	mov	cl, byte ptr [rbp - 0x6d]
	and	cl, 1
	movzx	r8d, cl
	and	eax, r8d
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x4d], cl
	mov	eax, dword ptr [rbp - 0x64]
	or	eax, 1
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_705
.label_710:
	cmp	dword ptr [rbp - 0x54], 0x11
	jne	.label_696
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_696
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	je	.label_696
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_701
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x124], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x130], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x124]
	mov	rdx, qword ptr [rbp - 0x130]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 9], 0
	jmp	.label_682
.label_707:
	lea	rcx, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x60]
	mov	edx, dword ptr [rbp - 0x64]
	mov	rsi, rax
	call	savewd_chdir
	mov	dword ptr [rbp - 0x10c], eax
	cmp	dword ptr [rbp - 0x10c], -1
	jge	.label_698
	mov	byte ptr [rbp - 9], 1
	jmp	.label_682
.label_709:
	cmp	dword ptr [rbp - 0x54], 2
	je	.label_702
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_702
	lea	rsi, [rbp - 0x100]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x60]
	mov	rdi, rax
	call	stat
	cmp	eax, 0
	jne	.label_710
	mov	eax, dword ptr [rbp - 0xe8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_712
	mov	byte ptr [rbp - 9], 1
	jmp	.label_682
.label_708:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_703:
	jmp	.label_697
.label_697:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x60]
	jg	.label_686
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x48], -1
	mov	byte ptr [rbp - 0x11d], cl
	jne	.label_700
	cmp	dword ptr [rbp - 0x4c], -1
	sete	al
	mov	byte ptr [rbp - 0x11d], al
.label_700:
	mov	al, byte ptr [rbp - 0x11d]
	and	al, 1
	mov	byte ptr [rbp - 0x65], al
	mov	ecx, dword ptr [rbp - 0x44]
	and	ecx, 0xc00
	mov	edx, dword ptr [rbp - 0x34]
	and	edx, 0x200
	or	ecx, edx
	cmp	ecx, 0
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x66], al
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x6c], ecx
	test	byte ptr [rbp - 0x65], 1
	jne	.label_704
	mov	eax, dword ptr [rbp - 0x6c]
	and	eax, 0xffffffc0
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_695
.label_681:
	jmp	.label_684
.label_684:
	jmp	.label_685
.label_685:
	jmp	.label_686
.label_686:
	jmp	.label_688
.label_688:
	movabs	rdi, OFFSET FLAT:label_689
	mov	esi, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x14c], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x158], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x14c]
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 9], 0
.label_682:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40810b

	.globl make_dir_parents
	.type make_dir_parents, @function
make_dir_parents:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	al, byte ptr [rbp + 0x28]
	mov	r10d, dword ptr [rbp + 0x20]
	mov	r11d, dword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	qword ptr [rbp - 0x40], r9
	mov	dword ptr [rbp - 0x44], ebx
	mov	dword ptr [rbp - 0x48], r11d
	mov	dword ptr [rbp - 0x4c], r10d
	and	al, 1
	mov	byte ptr [rbp - 0x4d], al
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	r8d, byte ptr [rcx]
	cmp	r8d, 0x2f
	jne	.label_694
	xor	eax, eax
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_706
.label_692:
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_687
	cmp	dword ptr [rbp - 0x54], 2
	je	.label_681
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_681
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	je	.label_681
.label_687:
	call	__errno_location
	movabs	rcx, OFFSET FLAT:label_690
	movabs	rdx, OFFSET FLAT:label_691
	mov	esi, dword ptr [rax]
	mov	dil, byte ptr [rbp - 0x65]
	test	dil, 1
	cmovne	rcx, rdx
	mov	rdi, rcx
	mov	dword ptr [rbp - 0x13c], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 9], 0
	jmp	.label_682
	.section	.text
	.align	32
	#Procedure 0x408200
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
	jae	.label_713
	call	xalloc_die
.label_713:
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
	#Procedure 0x408250

	.globl smack_set_label_for_self
	.type smack_set_label_for_self, @function
smack_set_label_for_self:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0xffffffff
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40825f
	.globl sub_40825f
	.type sub_40825f, @function
sub_40825f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408260
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	mov	dx, cx
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408285
	.globl sub_408285
	.type sub_408285, @function
sub_408285:

	nop	word ptr cs:[rax + rax]
.label_715:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_714
.label_714:
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
	#Procedure 0x408303
	.globl sub_408303
	.type sub_408303, @function
sub_408303:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408311

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
	je	.label_715
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_714
	.section	.text
	.align	32
	#Procedure 0x408340

	.globl sub_408340
	.type sub_408340, @function
sub_408340:
	movabs	rdi, OFFSET FLAT:label_716
	movabs	rsi, OFFSET FLAT:label_378
	mov	edx, 0xd8
	movabs	rcx, OFFSET FLAT:label_717
	call	__assert_fail
.label_726:
	movabs	rdi, OFFSET FLAT:label_377
	movabs	rsi, OFFSET FLAT:label_378
	mov	edx, 0xe2
	movabs	rcx, OFFSET FLAT:label_717
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x408390

	.globl sub_408390
	.type sub_408390, @function
sub_408390:
	jmp	.label_718
	.section	.text
	.align	32
	#Procedure 0x408395

	.globl sub_408395
	.type sub_408395, @function
sub_408395:
	jmp	.label_718
.label_718:
	mov	dword ptr [rbp - 4], 0
.label_719:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083aa
	.globl sub_4083aa
	.type sub_4083aa, @function
sub_4083aa:

	nop	word ptr cs:[rax + rax]
.label_723:
	jmp	.label_720
.label_721:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 4], 0xffffffff
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x28], ecx
	mov	ecx, dword ptr [rbp - 0x28]
	and	ecx, 0x7f
	cmp	ecx, 0
	je	.label_722
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x30], eax
	mov	eax, dword ptr [rbp - 0x30]
	and	eax, 0x7f
	mov	edi, eax
	call	raise
	mov	dword ptr [rbp - 0x54], eax
.label_722:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x38], eax
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 0xff00
	sar	eax, 8
	mov	dword ptr [rbp - 4], eax
	jmp	.label_719
	.section	.text
	.align	32
	#Procedure 0x40840a

	.globl sub_40840a
	.type sub_40840a, @function
sub_40840a:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x1c], ecx
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_724
	mov	edi, dword ptr [rbp - 0x14]
	call	_exit
.label_728:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	call	close
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx], 4
	mov	ecx, dword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 4], ecx
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_725
.label_725:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x50], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x50]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_719
.label_724:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x1c]
	jge	sub_408390
	jmp	.label_720
.label_720:
	lea	rsi, [rbp - 0x20]
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x1c]
	call	waitpid
	cmp	eax, 0
	jge	.label_721
	call	__errno_location
	cmp	dword ptr [rax], 4
	jne	sub_408340
	jmp	.label_723
	.section	.text
	.align	32
	#Procedure 0x4084b2

	.globl savewd_restore
	.type savewd_restore, @function
savewd_restore:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdi]
	mov	edi, esi
	mov	rax, rdi
	sub	rax, 4
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x48], rax
	ja	.label_726
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_727]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x4084ec

	.globl sub_4084ec
	.type sub_4084ec, @function
sub_4084ec:
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	call	fchdir
	cmp	eax, 0
	jne	.label_728
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 1
	jmp	.label_718
	.section	.text
	.align	32
	#Procedure 0x408510

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
	jge	.label_734
	call	abort
.label_734:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_731
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_732
	call	xalloc_die
.label_732:
	test	byte ptr [rbp - 0x31], 1
	je	.label_730
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_733
.label_730:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_733:
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
	je	.label_736
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_494]]
	mov	qword ptr [rax + 8], rcx
.label_736:
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
.label_731:
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
	ja	.label_735
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_729
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_729:
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
.label_735:
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
	#Procedure 0x408783
	.globl sub_408783
	.type sub_408783, @function
sub_408783:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408790

	.globl make_ancestor
	.type make_ancestor, @function
make_ancestor:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	test	byte ptr [rdx + 0x14], 1
	je	.label_738
	mov	esi, 0x4000
	mov	rdi, qword ptr [rbp - 0x10]
	call	defaultcon
	cmp	eax, 0
	jge	.label_738
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	ignorable_ctx_err
	test	al, 1
	jne	.label_738
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_465
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_738:
	mov	dword ptr [rbp - 0x24], 0xc0
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, dword ptr [rbp - 0x24]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x25], dl
	test	byte ptr [rbp - 0x25], 1
	je	.label_739
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	mov	edx, dword ptr [rbp - 0x24]
	xor	edx, 0xffffffff
	and	ecx, edx
	mov	edi, ecx
	call	umask
	mov	dword ptr [rbp - 0x44], eax
.label_739:
	mov	esi, 0x1ff
	mov	rdi, qword ptr [rbp - 0x10]
	call	mkdir
	mov	dword ptr [rbp - 0x2c], eax
	test	byte ptr [rbp - 0x25], 1
	je	.label_737
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rax + 8]
	call	umask
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	dword ptr [rbp - 0x4c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], ecx
.label_737:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_740
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0x100
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	announce_mkdir
.label_740:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4088e3
	.globl sub_4088e3
	.type sub_4088e3, @function
sub_4088e3:

	nop	word ptr cs:[rax + rax]
.label_750:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_741
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_747
	movabs	rax, OFFSET FLAT:label_748
	movabs	rcx, OFFSET FLAT:label_749
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_745
.label_746:
	movabs	rax, OFFSET FLAT:label_161
	movabs	rcx, OFFSET FLAT:label_181
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_745:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40896a
	.globl sub_40896a
	.type sub_40896a, @function
sub_40896a:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408972

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
	je	.label_750
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_745
.label_747:
	movabs	rsi, OFFSET FLAT:label_742
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_746
	movabs	rax, OFFSET FLAT:label_743
	movabs	rcx, OFFSET FLAT:label_744
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_745
	.section	.text
	.align	32
	#Procedure 0x4089f0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_751
	jmp	.label_753
.label_753:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_752
.label_751:
	mov	byte ptr [rbp - 1], 0
.label_752:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a22
	.globl sub_408a22
	.type sub_408a22, @function
sub_408a22:

	nop	word ptr cs:[rax + rax]
.label_762:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_757
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_757:
	movabs	rdi, OFFSET FLAT:label_756
	call	gettext
	movabs	rsi, OFFSET FLAT:label_46
	movabs	rdx, OFFSET FLAT:label_456
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
	je	.label_755
	movabs	rsi, OFFSET FLAT:label_759
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_755
	movabs	rdi, OFFSET FLAT:label_760
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_755:
	movabs	rdi, OFFSET FLAT:label_761
	call	gettext
	movabs	rsi, OFFSET FLAT:label_456
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_754
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_38
	movabs	rsi, OFFSET FLAT:label_758
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
	#Procedure 0x408b55
	.globl sub_408b55
	.type sub_408b55, @function
sub_408b55:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b5c

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
.label_765:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_764
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_764:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_763
	jmp	.label_762
.label_763:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_765
	.section	.text
	.align	32
	#Procedure 0x408bd0
	.globl freecon
	.type freecon, @function
freecon:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bda
	.globl sub_408bda
	.type sub_408bda, @function
sub_408bda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c45
	.globl sub_408c45
	.type sub_408c45, @function
sub_408c45:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c52
	.globl sub_408c52
	.type sub_408c52, @function
sub_408c52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c76
	.globl sub_408c76
	.type sub_408c76, @function
sub_408c76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c89
	.globl sub_408c89
	.type sub_408c89, @function
sub_408c89:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408c90

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x408ca0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
