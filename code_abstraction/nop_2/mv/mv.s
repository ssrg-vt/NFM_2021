	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028c0

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
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
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
	call	emit_backup_suffix_note
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
	.align	32
	#Procedure 0x402a10

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a40

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a90

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.31
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.8
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
	mov	ebx, OFFSET FLAT:.str.8
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
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
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.8
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.8
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.45
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
	.align	32
	#Procedure 0x402bb0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	r12, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.10
	mov	esi, OFFSET FLAT:.str.11
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.10
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rdi, [rsp + 0xb8]
	call	cp_option_init
	xor	ebx, ebx
	mov	r15d, 0xf000
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r13d, r13d
	xor	r14d, r14d
	jmp	.label_15
.label_1650:
	mov	byte ptr [rsp + 0xe5], 1
	nop	word ptr cs:[rax + rax]
.label_15:
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x68
	jg	.label_22
	cmp	eax, 0x59
	jg	.label_24
	cmp	eax, 0x52
	jle	.label_26
	cmp	eax, 0x53
	je	.label_27
	mov	r14b, 1
	cmp	eax, 0x54
	je	.label_15
	jmp	.label_32
.label_22:
	lea	ecx, [rax - 0x6e]
	cmp	ecx, 8
	ja	.label_34
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_35]]
.label_1648:
	mov	dword ptr [rsp + 0xc0], 2
	jmp	.label_15
	nop	dword ptr [rax]
.label_24:
	cmp	eax, 0x5a
	je	.label_15
	cmp	eax, 0x62
	je	.label_40
	cmp	eax, 0x66
	jne	.label_32
	mov	dword ptr [rsp + 0xc0], 1
	jmp	.label_15
.label_34:
	cmp	eax, 0x69
	je	.label_43
	cmp	eax, 0x80
	jne	.label_32
	mov	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	jmp	.label_15
.label_1649:
	test	r13, r13
	jne	.label_46
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 0x28]
	call	stat
	test	eax, eax
	jne	.label_11
	mov	eax, dword ptr [rsp + 0x40]
	and	eax, r15d
	cmp	eax, 0x4000
	jne	.label_12
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_15
.label_1651:
	mov	byte ptr [rsp + 0xe6], 1
	jmp	.label_15
.label_27:
	mov	bl, 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_15
.label_40:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x20]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	bl, 1
	jmp	.label_15
.label_43:
	mov	dword ptr [rsp + 0xc0], 3
	jmp	.label_15
.label_26:
	cmp	eax, -1
	jne	.label_42
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	movsxd	r15, ebp
	sub	r15, rax
	lea	r12, [r12 + rax*8]
	test	r13, r13
	sete	al
	movzx	eax, al
	cmp	r15d, eax
	jle	.label_33
	test	r14b, r14b
	je	.label_39
	test	r13, r13
	jne	.label_41
	xor	r13d, r13d
	cmp	r15d, 3
	jl	.label_23
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12 + 0x10]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_39:
	test	r13, r13
	jne	.label_23
	cmp	r15d, 1
	jle	.label_29
	cmp	r15d, 2
	jne	.label_13
	mov	rsi, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	call	renameatu
	xor	ecx, ecx
	test	eax, eax
	je	.label_17
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_17:
	mov	dword ptr [rsp + 0xec], ecx
.label_13:
	cmp	dword ptr [rsp + 0xec], 0
	je	.label_19
	mov	rdi, qword ptr [r12 + r15*8 - 8]
	call	target_directory_operand
	test	al, al
	je	.label_19
	mov	dword ptr [rsp + 0xec], 0xffffffff
	mov	r13, qword ptr [r12 + r15*8 - 8]
	dec	r15
	jmp	.label_23
.label_19:
	cmp	r15d, 3
	jge	.label_28
.label_23:
	cmp	dword ptr [rsp + 0xc0], 2
	jne	.label_31
	mov	byte ptr [rsp + 0xe5], 0
.label_31:
	test	bl, bl
	je	.label_36
	cmp	dword ptr [rsp + 0xc0], 2
	je	.label_18
.label_36:
	xor	eax, eax
	test	bl, bl
	je	.label_38
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x20]
	call	xget_version
.label_38:
	mov	dword ptr [rsp + 0xb8], eax
	mov	rdi, qword ptr [rsp + 0x18]
	call	set_simple_backup_suffix
	call	hash_init
	test	r13, r13
	je	.label_14
	cmp	r15d, 2
	jl	.label_45
	lea	rdi, [rsp + 0xb8]
	call	dest_info_init
	jmp	.label_37
.label_14:
	mov	byte ptr [rsp + 0xe9], 1
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	rcx, [rsp + 0xb8]
	xor	edx, edx
	call	movefile
	mov	bl, al
	jmp	.label_16
.label_45:
	mov	bl, 1
	test	r15d, r15d
	jle	.label_16
.label_37:
	mov	ebp, r15d
	mov	bl, 1
	lea	r14, [rsp + 0xb8]
	nop	dword ptr [rax]
.label_21:
	cmp	rbp, 1
	sete	byte ptr [rsp + 0xe9]
	mov	rdi, qword ptr [r12]
	mov	edx, 1
	mov	rsi, r13
	mov	rcx, r14
	call	movefile
	and	bl, al
	add	r12, 8
	dec	rbp
	test	ebp, ebp
	jne	.label_21
.label_16:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_42:
	cmp	eax, 0xffffff7d
	je	.label_30
	cmp	eax, 0xffffff7e
	jne	.label_32
	xor	edi, edi
	call	usage
.label_32:
	mov	edi, 1
	call	usage
.label_30:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.19
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.17_0
	mov	r9d, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_44
.label_11:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_12:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
.label_20:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_33:
	xor	edi, edi
	test	r15d, r15d
	jg	.label_25
	mov	esi, OFFSET FLAT:.str.20
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
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
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
.label_41:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
.label_44:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_25:
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_29:
	mov	edi, OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 0x1c9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r15d
	mov	rsi, qword ptr [r12 + rax*8 - 8]
	jmp	.label_20
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403160

	.globl cp_option_init
	.type cp_option_init, @function
cp_option_init:
	push	rbx
	mov	rbx, rdi
	call	cp_options_default
	mov	byte ptr [rbx + 0x14], 0
	mov	dword ptr [rbx + 0x38], 1
	mov	dword ptr [rbx + 4], 2
	mov	byte ptr [rbx + 0x15], 0
	mov	byte ptr [rbx + 0x16], 0
	mov	byte ptr [rbx + 0x17], 0
	mov	dword ptr [rbx + 8], 4
	mov	byte ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x19], 0
	mov	byte ptr [rbx + 0x1c], 0
	mov	byte ptr [rbx + 0x1d], 1
	mov	byte ptr [rbx + 0x22], 1
	mov	byte ptr [rbx + 0x1e], 1
	mov	byte ptr [rbx + 0x1f], 1
	mov	byte ptr [rbx + 0x20], 0
	mov	byte ptr [rbx + 0x25], 0
	mov	byte ptr [rbx + 0x21], 0
	mov	byte ptr [rbx + 0x29], 0
	mov	byte ptr [rbx + 0x23], 1
	mov	byte ptr [rbx + 0x24], 0
	mov	byte ptr [rbx + 0x26], 0
	mov	byte ptr [rbx + 0x27], 1
	mov	byte ptr [rbx + 0x28], 0
	mov	byte ptr [rbx + 0x2a], 1
	mov	dword ptr [rbx + 0xc], 2
	mov	byte ptr [rbx + 0x2c], 0
	mov	byte ptr [rbx + 0x2b], 0
	mov	dword ptr [rbx + 0x10], 0
	xor	edi, edi
	call	isatty
	test	eax, eax
	setne	byte ptr [rbx + 0x2f]
	mov	byte ptr [rbx + 0x30], 0
	mov	byte ptr [rbx + 0x2d], 0
	mov	byte ptr [rbx + 0x2e], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403210

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_48
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 2
	je	.label_47
	test	ebp, ebp
	jne	.label_49
.label_48:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x4000
	sete	al
	jmp	.label_50
.label_47:
	xor	eax, eax
.label_50:
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032a0

	.globl movefile
	.type movefile, @function
movefile:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	ebp, edx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	eax,  byte ptr [byte ptr [rip + remove_trailing_slashes]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_51
	mov	rdi, rbx
	call	strip_trailing_slashes
.label_51:
	test	bpl, bpl
	je	.label_53
	mov	rdi, rbx
	call	last_component
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rax
	call	file_name_concat
	mov	rbp, rax
	mov	rdi, rbp
	call	strip_trailing_slashes
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	do_move
	mov	bl, al
	mov	rdi, rbp
	call	free
	jmp	.label_52
.label_53:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	do_move
	mov	bl, al
.label_52:
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403330

	.globl do_move
	.type do_move, @function
do_move:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15, rdx
	mov	r14, rdi
	lea	r8, [rsp + 0x37]
	lea	r9, [rsp + 0x36]
	xor	edx, edx
	mov	rcx, r15
	call	copy
	mov	bl, al
	test	bl, bl
	je	.label_54
	cmp	byte ptr [rsp + 0x37], 0
	jne	.label_56
	test	r14, r14
	je	.label_54
	mov	al, byte ptr [rsp + 0x36]
	test	al, al
	jne	.label_54
	lea	r12, [rsp + 0x10]
	mov	rdi, r12
	call	rm_option_init
	mov	al, byte ptr [r15 + 0x2e]
	mov	byte ptr [rsp + 0x2a], al
	mov	qword ptr [rsp], r14
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp]
	mov	rsi, r12
	call	rm
	cmp	eax, 4
	je	.label_57
	mov	ecx, eax
	or	ecx, 1
	cmp	ecx, 3
	jne	.label_55
.label_57:
	cmp	eax, 4
	jne	.label_54
.label_56:
	xor	ebx, ebx
.label_54:
	and	bl, 1
	mov	al, bl
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_55:
	mov	edi, OFFSET FLAT:.str.59
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 0xef
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.do_move
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4033e0

	.globl rm_option_init
	.type rm_option_init, @function
rm_option_init:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	byte ptr [rbx], 0
	mov	byte ptr [rbx + 0xa], 1
	mov	byte ptr [rbx + 9], 1
	mov	byte ptr [rbx + 8], 0
	mov	dword ptr [rbx + 4], 5
	mov	word ptr [rbx + 0x19], 0
	mov	byte ptr [rbx + 0x1b], 1
	mov	edi, OFFSET FLAT:rm_option_init.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_58
	mov	byte ptr [rbx + 0x18], 0
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_58:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str_1
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403470

	.globl rm
	.type rm, @function
rm:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, 2
	cmp	qword ptr [rdi], 0
	je	.label_60
	mov	esi, 0x218
	cmp	byte ptr [r14 + 8], 0
	je	.label_61
	mov	esi, 0x258
.label_61:
	xor	edx, edx
	call	xfts_open
	mov	r15, rax
	mov	rdi, r15
	call	rpl_fts_read
	mov	ebx, 2
	test	rax, rax
	je	.label_65
	nop	word ptr cs:[rax + rax]
.label_66:
	mov	rdi, r15
	mov	rsi, rax
	mov	rdx, r14
	call	rm_fts
	cmp	eax, 4
	je	.label_62
	mov	ecx, eax
	or	ecx, 1
	cmp	ecx, 3
	jne	.label_64
.label_62:
	cmp	eax, 3
	mov	ebp, ebx
	cmove	ebp, eax
	cmp	ebx, 2
	cmovne	ebp, ebx
	cmp	eax, 4
	cmove	ebp, eax
	mov	rdi, r15
	call	rpl_fts_read
	test	rax, rax
	mov	ebx, ebp
	jne	.label_66
	jmp	.label_59
.label_65:
	mov	ebp, 2
.label_59:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	r14d, r14d
	je	.label_63
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	call	error
	mov	ebp, 4
.label_63:
	mov	rdi, r15
	call	rpl_fts_close
	test	eax, eax
	je	.label_60
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	ebp, 4
.label_60:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_64:
	mov	edi, OFFSET FLAT:.str.1_0
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.rm
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4035a0

	.globl rm_fts
	.type rm_fts, @function
rm_fts:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r13, rdx
	mov	r15, rsi
	mov	r14, rdi
	movzx	eax, word ptr [r15 + 0x70]
	lea	ecx, [rax - 1]
	cmp	ecx, 0xc
	ja	.label_84
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_85]]
.label_1529:
	movzx	eax, ax
	cmp	eax, 6
	jne	.label_69
	cmp	byte ptr [r13 + 8], 0
	je	.label_69
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_69
	mov	rax, qword ptr [r15 + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_87
.label_69:
	movzx	ebx, word ptr [r15 + 0x70]
	or	ebx, 2
	cmp	ebx, 6
	sete	al
	movzx	edx, al
	mov	r8d, 3
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r13
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_70
	movzx	eax, bx
	cmp	eax, 6
	sete	al
	movzx	ecx, al
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	excise
.label_1527:
	cmp	byte ptr [r13 + 9], 0
	jne	.label_76
	cmp	byte ptr [r13 + 0xa], 0
	je	.label_71
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	call	is_empty_dir
	test	al, al
	je	.label_71
.label_76:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_81
	mov	rdi, qword ptr [r15 + 0x30]
	call	last_component
	mov	rdi, rax
	call	dot_or_dotdot
	test	al, al
	je	.label_83
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp], rax
	mov	ebp, 4
	xor	edi, edi
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_3
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str.2_1
	call	quotearg_n_style
	mov	r12, rax
	mov	rdx, qword ptr [r15 + 0x38]
	mov	edi, 2
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp]
	mov	rcx, r13
	mov	r8, r12
	mov	r9, rbx
	call	error
	jmp	.label_68
.label_1528:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_75
.label_1530:
	mov	ebx, dword ptr [r15 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_75:
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
	mov	ebp, 4
	jmp	.label_70
.label_87:
	mov	rdi, r15
	call	mark_ancestor_dirs
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	ebp, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_70
.label_71:
	mov	r12d, 0x27
	cmp	byte ptr [r13 + 0xa], 0
	jne	.label_74
	mov	r12d, 0x15
.label_74:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	ebp, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	jmp	.label_72
.label_83:
	mov	rax, qword ptr [r13 + 0x10]
	test	rax, rax
	je	.label_73
	mov	rcx, qword ptr [r15 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_73
	mov	rcx, qword ptr [r15 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_73
	mov	rax, qword ptr [r15 + 0x38]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_77
	cmp	byte ptr [rax + 1], 0
	je	.label_79
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_0
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	jmp	.label_80
.label_73:
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_81
	mov	rdi, qword ptr [r15 + 0x30]
	mov	esi, OFFSET FLAT:.str.2_1
	xor	edx, edx
	call	file_name_concat
	mov	rbp, rax
	test	rbp, rbp
	je	.label_86
	lea	rsi, [rsp + 8]
	mov	rdi, rbp
	call	__lstat
	test	eax, eax
	je	.label_88
.label_86:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r13, rax
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	rdi, rbp
	call	free
	jmp	.label_75
.label_88:
	mov	rdi, rbp
	call	free
	mov	rax, qword ptr [r14 + 0x18]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_78
.label_81:
	lea	r9, [rsp + 8]
	mov	edx, 1
	mov	r8d, 2
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r13
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_82
	cmp	dword ptr [rsp + 8], 4
	jne	.label_82
	mov	ecx, 1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	excise
	mov	ebp, eax
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
.label_82:
	cmp	ebp, 2
	je	.label_70
.label_72:
	mov	rdi, r15
	call	mark_ancestor_dirs
.label_68:
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
.label_70:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_78:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
	jmp	.label_67
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
.label_67:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_75
.label_84:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_1
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movzx	ebp, word ptr [r15 + 0x70]
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rdx, r14
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x403ac0

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	push	rbp
	push	r14
	push	rbx
	xor	ebx, ebx
	mov	edx, 0x30900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	test	ebp, ebp
	js	.label_90
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_91
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, rbx
	call	readdir_ignoring_dot_and_dotdot
	mov	r14, rax
	mov	ebp, dword ptr [rbp]
	mov	rdi, rbx
	call	closedir
	test	r14, r14
	je	.label_89
	xor	ebx, ebx
	jmp	.label_90
.label_91:
	mov	edi, ebp
	call	close
	xor	ebx, ebx
	jmp	.label_90
.label_89:
	test	ebp, ebp
	sete	bl
.label_90:
	mov	al, bl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b30

	.globl mark_ancestor_dirs
	.type mark_ancestor_dirs, @function
mark_ancestor_dirs:
	mov	rax, qword ptr [rdi + 8]
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
.label_93:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_92:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_94
	cmp	qword ptr [rax + 0x20], 0
	je	.label_93
.label_94:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b60

	.globl fts_skip_tree
	.type fts_skip_tree, @function
fts_skip_tree:
	push	rbx
	mov	rbx, rdi
	mov	edx, 4
	call	rpl_fts_set
	mov	rdi, rbx
	pop	rbx
	jmp	rpl_fts_read
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b80

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_95
	movzx	ecx, byte ptr [rdi + 1]
	mov	eax, 2
	cmp	ecx, 0x2e
	je	.label_96
	mov	eax, 1
.label_96:
	movzx	eax, byte ptr [rdi + rax]
	test	al, al
	sete	cl
	cmp	eax, 0x2f
	sete	al
	or	al, cl
	ret	
.label_95:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bb0

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r13, r9
	mov	dword ptr [rsp + 0xc], r8d
	mov	r12, rcx
	mov	r15d, edx
	mov	r14, rsi
	mov	ebp, dword ptr [rdi + 0x2c]
	mov	rbx, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [r14 + 0x38]
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_110
	mov	dword ptr [r13], 2
.label_110:
	lea	rdi, [rsp + 0x28]
	call	cache_stat_init
	test	r13, r13
	je	.label_116
	mov	edi, ebp
	mov	dword ptr [rsp + 0x24], ebp
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x18], rbx
	call	is_empty_dir
	mov	bl, al
	movzx	eax, bl
	add	eax, 3
	mov	dword ptr [r13], eax
	jmp	.label_101
.label_116:
	mov	qword ptr [rsp + 0x18], rbx
	mov	dword ptr [rsp + 0x24], ebp
	xor	ebx, ebx
.label_101:
	mov	ebp, 3
	cmp	qword ptr [r14 + 0x20], 0
	jne	.label_104
	mov	eax, dword ptr [r12 + 4]
	cmp	eax, 5
	je	.label_97
	xor	r14d, r14d
	cmp	byte ptr [r12], 0
	jne	.label_98
	cmp	eax, 3
	je	.label_114
	cmp	byte ptr [r12 + 0x19], 0
	je	.label_98
.label_114:
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, qword ptr [rsp + 0x18]
	call	write_protected_non_symlink
	mov	ebp, eax
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	ebp, ebp
	jne	.label_103
.label_98:
	cmp	dword ptr [r12 + 4], 3
	mov	ebp, 0
	jne	.label_97
.label_103:
	movzx	r13d, r15b
	shl	r13d, 2
	test	ebp, ebp
	js	.label_105
	xor	r15b, 1
	je	.label_105
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, qword ptr [rsp + 0x18]
	call	cache_fstatat
	test	eax, eax
	je	.label_112
	call	__errno_location
	mov	r15d, dword ptr [rax]
	jmp	.label_108
.label_105:
	mov	r15d, r14d
.label_100:
	mov	r14d, r13d
.label_117:
	test	ebp, ebp
	mov	r13d, ebp
	mov	ebp, 3
	js	.label_108
	cmp	r14d, 4
	je	.label_109
	cmp	r14d, 0xa
	jne	.label_106
	cmp	dword ptr [r12 + 4], 3
	jne	.label_97
	jmp	.label_106
.label_112:
	mov	r15d, r14d
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	mov	r14d, 0xa
	cmp	eax, 0xa000
	je	.label_117
	cmp	eax, 0x4000
	mov	eax, 4
	cmove	r13d, eax
	jmp	.label_100
.label_109:
	cmp	byte ptr [r12 + 9], 0
	jne	.label_106
	cmp	byte ptr [r12 + 0xa], 0
	mov	r15d, 0x15
	je	.label_108
	mov	al, bl
	xor	al, 1
	jne	.label_108
.label_106:
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	r15, rax
	cmp	r14d, 4
	setne	al
	cmp	dword ptr [rsp + 0xc], 2
	setne	cl
	or	cl, al
	or	bl, cl
	je	.label_113
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, qword ptr [rsp + 0x18]
	call	cache_fstatat
	test	eax, eax
	je	.label_111
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rcx, r15
	call	error
	mov	ebp, 4
	jmp	.label_104
.label_108:
	mov	ebp, 4
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_104
.label_113:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r13d, r13d
	je	.label_118
	mov	esi, OFFSET FLAT:.str.19_0
	jmp	.label_99
.label_111:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r13d, r13d
	je	.label_102
	mov	esi, OFFSET FLAT:.str.21_0
	jmp	.label_107
.label_118:
	mov	esi, OFFSET FLAT:.str.20_0
.label_99:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	call	__fprintf_chk
	jmp	.label_115
.label_102:
	mov	esi, OFFSET FLAT:.str.22_0
.label_107:
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	r12,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rsp + 0x28]
	call	file_type
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r13
	mov	rcx, r12
	mov	r8, rbx
	mov	r9, r15
	call	__fprintf_chk
.label_115:
	call	yesno
	test	al, al
	je	.label_104
.label_97:
	mov	ebp, 2
.label_104:
	mov	eax, ebp
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ec0

	.globl excise
	.type excise, @function
excise:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, ecx
	mov	r12, rdx
	mov	r14, rsi
	mov	rbp, rdi
	movzx	edx, bl
	shl	edx, 9
	mov	edi, dword ptr [rbp + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	call	unlinkat
	test	eax, eax
	je	.label_126
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	cmp	ebx, 0x1e
	jne	.label_127
	mov	edi, dword ptr [rbp + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	lea	rdx, [rsp + 8]
	call	lstatat
	test	eax, eax
	je	.label_122
	cmp	dword ptr [r13], 2
	je	.label_124
.label_122:
	mov	dword ptr [r13], 0x1e
.label_124:
	mov	ebx, dword ptr [r13]
.label_127:
	mov	rdi, r12
	mov	esi, ebx
	call	ignorable_missing
	mov	r15d, 2
	test	al, al
	jne	.label_119
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	jne	.label_120
	mov	eax, ebx
	cmp	ebx, 0x27
	ja	.label_120
	movabs	rcx, 0x8000320000
	bt	rcx, rax
	jae	.label_120
	mov	eax, dword ptr [r14 + 0x40]
	cmp	eax, 0xd
	je	.label_125
	cmp	eax, 1
	jne	.label_120
.label_125:
	mov	eax, dword ptr [r14 + 0x40]
	mov	dword ptr [r13], eax
.label_120:
	mov	ebx, dword ptr [r13]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	r15d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rdi, r14
	call	mark_ancestor_dirs
	jmp	.label_119
.label_126:
	mov	r15d, 2
	cmp	byte ptr [r12 + 0x1a], 0
	je	.label_119
	xor	edi, edi
	test	bl, bl
	je	.label_121
	mov	esi, OFFSET FLAT:.str.23_0
	jmp	.label_123
.label_121:
	mov	esi, OFFSET FLAT:.str.25_0
.label_123:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_119:
	mov	eax, r15d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404030

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	nop	word ptr [rax + rax]
.label_128:
	mov	rdi, r14
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	mov	eax, 0
	je	.label_129
	mov	rdi, rbx
	add	rdi, 0x13
	call	dot_or_dotdot
	test	al, al
	mov	rax, rbx
	jne	.label_128
.label_129:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404070

	.globl cache_stat_init
	.type cache_stat_init, @function
cache_stat_init:
	mov	qword ptr [rdi + 0x30], -1
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404080

	.globl write_protected_non_symlink
	.type write_protected_non_symlink, @function
write_protected_non_symlink:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	ebp, edi
	call	can_write_any_file
	test	al, al
	je	.label_132
	xor	eax, eax
	jmp	.label_130
.label_132:
	mov	edi, ebp
	mov	rsi, r14
	mov	rdx, rbx
	call	cache_fstatat
	mov	ecx, eax
	mov	eax, 0xffffffff
	test	ecx, ecx
	jne	.label_130
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_131
	xor	eax, eax
	jmp	.label_130
.label_131:
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, ebp
	mov	rsi, r14
	call	faccessat
	test	eax, eax
	mov	eax, 0
	je	.label_130
	call	__errno_location
	mov	rcx, rax
	mov	eax, 1
	cmp	dword ptr [rcx], 0xd
	je	.label_130
	mov	eax, 0xffffffff
.label_130:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404100

	.globl cache_fstatat
	.type cache_fstatat, @function
cache_fstatat:
	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rbx + 0x30]
	cmp	rcx, -1
	jne	.label_133
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_135
	mov	qword ptr [rbx + 0x30], -2
	call	__errno_location
	movsxd	rax, dword ptr [rax]
	mov	qword ptr [rbx + 8], rax
.label_135:
	mov	rcx, qword ptr [rbx + 0x30]
.label_133:
	xor	eax, eax
	test	rcx, rcx
	jns	.label_134
	mov	ebx, dword ptr [rbx + 8]
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_134:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404150

	.globl ignorable_missing
	.type ignorable_missing, @function
ignorable_missing:
	cmp	byte ptr [rdi], 0
	je	.label_136
	push	rax
	mov	edi, esi
	call	nonexistent_file_errno
	add	rsp, 8
	ret	
.label_136:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404170

	.globl nonexistent_file_errno
	.type nonexistent_file_errno, @function
nonexistent_file_errno:
	mov	al, 1
	cmp	edi, 0x16
	ja	.label_137
	mov	ecx, 0x500004
	bt	ecx, edi
	jb	.label_139
.label_137:
	cmp	edi, 0x54
	jne	.label_138
.label_139:
	ret	
.label_138:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404190

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r15, rsi
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x25], 0
	je	.label_144
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_145
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_146
.label_145:
	lea	rsi, [rsp]
	mov	rdi, r14
	call	lgetfilecon
.label_141:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_143:
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_142
	xor	eax, eax
	jmp	.label_140
.label_144:
	cmp	byte ptr [rbx + 0x21], 0
	je	.label_142
	xor	cl, 1
	jne	.label_142
	call	defaultcon
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	edi, ebx
	call	ignorable_ctx_err
	test	al, al
	jne	.label_142
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_142:
	mov	al, 1
.label_140:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_146:
	mov	bpl, byte ptr [rbx + 0x29]
	lea	rsi, [rsp]
	mov	rdi, r14
	call	lgetfilecon
	cmp	bpl, 0
	jne	.label_143
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	jne	.label_143
	jmp	.label_141
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042a0

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	cmp	edi, 0x5f
	sete	cl
	cmp	edi, 0x3d
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4042b0

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4042c0

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	cmp	edi, 0x5f
	sete	cl
	cmp	edi, 0x3d
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4042d0

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	byte ptr [rcx + 0x23], 0
	je	.label_149
	cmp	byte ptr [rcx + 0x26], 0
	je	.label_150
.label_149:
	call	restorecon
.label_148:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_147:
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_150:
	mov	bl, byte ptr [rcx + 0x29]
	call	restorecon
	cmp	bl, 0
	jne	.label_147
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	jne	.label_147
	jmp	.label_148
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404350

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404360

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x40], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404390
	.globl src_info_init
	.type src_info_init, @function
src_info_init:

	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash_no_name
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043c0

	.globl copy
	.type copy, @function
copy:
	sub	rsp, 0x28
	mov	rax, rcx
	mov	qword ptr [word ptr [rip + top_level_src_name]],  rdi
	mov	qword ptr [word ptr [rip + top_level_dst_name]],  rsi
	mov	byte ptr [rsp + 0x27], 0
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], r8
	lea	rcx, [rsp + 0x27]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], 1
	movzx	edx, dl
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9, rax
	call	copy_internal
	add	rsp, 0x28
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404410
	.globl valid_options
	.type valid_options, @function
valid_options:

	push	rax
	test	rdi, rdi
	je	.label_152
	cmp	dword ptr [rdi], 4
	jae	.label_154
	mov	eax, dword ptr [rdi + 0xc]
	dec	eax
	cmp	eax, 3
	jae	.label_156
	cmp	dword ptr [rdi + 0x38], 3
	jae	.label_158
	cmp	byte ptr [rdi + 0x17], 0
	je	.label_151
	cmp	byte ptr [rdi + 0x2c], 0
	jne	.label_153
.label_151:
	cmp	dword ptr [rdi + 0x38], 2
	jne	.label_155
	cmp	dword ptr [rdi + 0xc], 2
	jne	.label_157
.label_155:
	pop	rax
	ret	
.label_152:
	mov	edi, OFFSET FLAT:.str.6_0
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb86
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_154:
	mov	edi, OFFSET FLAT:.str.7_0
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb87
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_156:
	mov	edi, OFFSET FLAT:.str.8_0
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb88
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_158:
	mov	edi, OFFSET FLAT:.str.9_0
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb89
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_153:
	mov	edi, OFFSET FLAT:.str.10_1
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb8a
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_157:
	mov	edi, OFFSET FLAT:.str.11_1
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb8d
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044e0

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2a8
	mov	r15, r9
	mov	rbx, r8
	mov	qword ptr [rbp - 0x288], rcx
	mov	r12, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rbp - 0x29], dl
	mov	byte ptr [rax], 0
	mov	r13d, dword ptr [r15 + 0x34]
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_229
	test	r13d, r13d
	jns	.label_223
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, r14
	mov	r13, rcx
	mov	rcx, r12
	call	renameatu
	mov	rcx, r13
	xor	r13d, r13d
	test	eax, eax
	je	.label_223
	mov	r13, rcx
	call	__errno_location
	mov	rcx, r13
	mov	r13d, dword ptr [rax]
.label_223:
	test	r13d, r13d
	sete	al
	sete	byte ptr [rbp - 0x29]
	test	rcx, rcx
	je	.label_229
	mov	byte ptr [rcx], al
.label_229:
	test	r13d, r13d
	je	.label_236
	mov	qword ptr [rbp - 0x280], rbx
	cmp	r13d, 0x11
	jne	.label_238
	cmp	dword ptr [r15 + 8], 2
	je	.label_241
	jmp	.label_238
.label_236:
	mov	qword ptr [rbp - 0x280], rbx
	cmp	byte ptr [r15 + 0x31], 0
	jne	.label_241
.label_238:
	test	r13d, r13d
	mov	rbx, r14
	cmove	rbx, r12
	cmp	dword ptr [r15 + 4], 2
	jne	.label_252
	lea	rsi, [rbp - 0xc0]
	mov	rdi, rbx
	call	__lstat
	jmp	.label_258
.label_252:
	lea	rsi, [rbp - 0xc0]
	mov	rdi, rbx
	call	stat
.label_258:
	test	eax, eax
	je	.label_184
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_318:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_208:
	mov	rdx, r15
	call	error
.label_169:
	mov	al, r12b
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_184:
	mov	ebx, dword ptr [rbp - 0xa8]
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_241
	cmp	byte ptr [r15 + 0x2a], 0
	je	.label_277
.label_241:
	mov	al, byte ptr [rbp + 0x10]
	test	al, al
	je	.label_279
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_279
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_283
	cmp	dword ptr [r15], 0
	jne	.label_283
	lea	rdx, [rbp - 0xc0]
	mov	rsi, r14
	call	seen_file
	test	al, al
	je	.label_283
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r12b, 1
	jmp	.label_169
.label_283:
	mov	rdi, qword ptr [r15 + 0x48]
	lea	rdx, [rbp - 0xc0]
	mov	rsi, r14
	call	record_file
	mov	al, byte ptr [rbp + 0x10]
.label_279:
	mov	qword ptr [rbp - 0x278], r14
	movzx	esi, al
	mov	rdi, r15
	call	should_dereference
	mov	byte ptr [rbp - 0x29c], al
	xor	eax, eax
	xor	r14d, r14d
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_304
	cmp	r13d, 0x11
	jne	.label_254
	cmp	dword ptr [r15 + 8], 2
	jne	.label_254
	xor	r14d, r14d
	jmp	.label_311
.label_254:
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_312
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x14], 0
	je	.label_308
	cmp	eax, 0x4000
	je	.label_308
	cmp	eax, 0xa000
	je	.label_308
.label_312:
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_308
	cmp	byte ptr [r15 + 0x2c], 0
	jne	.label_308
	cmp	byte ptr [r15 + 0x17], 0
	jne	.label_308
	cmp	dword ptr [r15], 0
	jne	.label_308
	cmp	byte ptr [r15 + 0x15], 0
	setne	r14b
.label_308:
	movzx	ecx, r14b
	shl	ecx, 8
	lea	rdx, [rbp - 0x150]
	mov	edi, 0xffffff9c
	mov	rsi, r12
	call	fstatat
	test	eax, eax
	je	.label_311
	mov	r14d, ebx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x28
	jne	.label_214
	cmp	byte ptr [r15 + 0x16], 0
	mov	ebx, r14d
	jne	.label_329
	mov	r14d, ebx
	mov	ebx, dword ptr [rax]
.label_214:
	cmp	ebx, 2
	jne	.label_332
	mov	byte ptr [rbp - 0x29], 1
	mov	ebx, r14d
.label_329:
	xor	r14d, r14d
	cmp	r13d, 0x11
	mov	eax, 0
	jne	.label_304
.label_311:
	mov	byte ptr [rbp - 0x1e0], 0
	cmp	dword ptr [r15 + 8], 2
	je	.label_338
	lea	rsi, [rbp - 0xc0]
	lea	rcx, [rbp - 0x150]
	lea	r9, [rbp - 0x1e0]
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rdx, r12
	mov	r8, r15
	call	same_file_ok
	test	al, al
	je	.label_267
.label_338:
	mov	dword ptr [rbp - 0x28c], ebx
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	je	.label_161
	mov	al, byte ptr [r15 + 0x2d]
	test	al, al
	je	.label_161
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_164
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_170
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0xc0]
	sete	al
	jmp	.label_171
.label_277:
	cmp	byte ptr [r15 + 0x19], 0
	je	.label_177
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	jmp	.label_180
.label_267:
	mov	rbx, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
.label_255:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x278]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
.label_303:
	call	quotearg_n_style
.label_274:
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_169
.label_332:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r12
	xor	r12d, r12d
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_208
.label_164:
	xor	eax, eax
	jmp	.label_212
.label_177:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
.label_180:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	r12d, r12d
.label_204:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_203:
	mov	rdx, rbx
	call	error
	jmp	.label_169
.label_170:
	xor	eax, eax
.label_171:
	xor	al, 1
.label_212:
	movzx	ecx, al
	lea	rsi, [rbp - 0x150]
	lea	rdx, [rbp - 0xc0]
	mov	rdi, r12
	call	utimecmp
	test	eax, eax
	js	.label_161
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_333
	mov	byte ptr [rax], 1
.label_333:
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, r12
	call	remember_copied
	test	rax, rax
	je	.label_234
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x29c]
	mov	edx, 1
	mov	rdi, rax
	mov	rbx, rax
	mov	rsi, r12
	call	create_hard_link
	mov	rcx, rbx
	test	al, al
	je	.label_245
.label_234:
	mov	r12b, 1
	jmp	.label_169
.label_161:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_249
	lea	rdx, [rbp - 0x150]
	mov	rdi, r15
	mov	rsi, r12
	mov	r13, r12
	call	abandon_move
	test	al, al
	je	.label_256
	mov	r12b, 1
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_169
	mov	byte ptr [rax], 1
	jmp	.label_169
.label_249:
	mov	r13, r12
	cmp	ebx, 0x4000
	je	.label_256
	mov	eax, dword ptr [r15 + 8]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_169
	cmp	eax, 3
	jne	.label_256
	lea	rdx, [rbp - 0x150]
	mov	rdi, r15
	mov	rsi, r13
	call	overwrite_ok
	test	al, al
	je	.label_169
	mov	al, byte ptr [rbp - 0x1e0]
	test	al, al
	je	.label_270
	jmp	.label_169
.label_256:
	mov	r12b, 1
	cmp	byte ptr [rbp - 0x1e0], 0
	jne	.label_169
.label_270:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	cmp	eax, 0x4000
	je	.label_248
	cmp	ebx, 0x4000
	jne	.label_278
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_280
	cmp	dword ptr [r15], 0
	je	.label_280
.label_278:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_248
	cmp	dword ptr [r15], 3
	je	.label_248
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x150]
	mov	rsi, r13
	call	seen_file
	test	al, al
	je	.label_248
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_1
	jmp	.label_290
.label_248:
	cmp	ebx, 0x4000
	je	.label_293
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	cmp	eax, 0x4000
	jne	.label_293
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_299
	cmp	dword ptr [r15], 0
	je	.label_299
.label_293:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_300
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0xa8]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_300
	and	eax, dword ptr [rbp - 0x138]
	cmp	eax, 0x4000
	je	.label_300
	cmp	dword ptr [r15], 0
	je	.label_235
.label_300:
	cmp	dword ptr [r15], 0
	je	.label_309
	mov	rdi, qword ptr [rbp - 0x278]
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	dot_or_dotdot_0
	test	al, al
	jne	.label_309
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_314
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	cmp	eax, 0x4000
	jne	.label_314
.label_309:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x298], rcx
	cmp	eax, 0x4000
	mov	r12, r13
	mov	ebx, dword ptr [rbp - 0x28c]
	je	.label_192
	xor	eax, eax
	mov	qword ptr [rbp - 0x298], rax
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_192
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_326
	cmp	byte ptr [r15 + 0x22], 0
	je	.label_328
	cmp	qword ptr [rbp - 0x140], 1
	ja	.label_326
.label_328:
	xor	eax, eax
	mov	qword ptr [rbp - 0x298], rax
	cmp	dword ptr [r15 + 4], 2
	jne	.label_192
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xa8]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x298], rcx
	cmp	eax, 0x8000
	je	.label_192
.label_326:
	mov	rdi, r12
	call	unlink
	test	eax, eax
	je	.label_337
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r13d, 2
	jne	.label_174
.label_337:
	mov	byte ptr [rbp - 0x29], 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x298], rax
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_192
	xor	eax, eax
	mov	qword ptr [rbp - 0x298], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	call	dcgettext
	mov	r13d, ebx
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	ebx, r13d
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_192
.label_245:
	mov	qword ptr [rbp - 0x2a8], r12
	xor	eax, eax
	mov	qword ptr [rbp - 0x298], rax
	jmp	.label_176
.label_314:
	cmp	dword ptr [r15], 3
	je	.label_186
	lea	rsi, [rbp - 0xc0]
	mov	rdi, rbx
	mov	rdx, r13
	call	source_is_dst_backup
	test	al, al
	je	.label_186
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_298
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21_1
	jmp	.label_188
.label_280:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_2
.label_290:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	jmp	.label_330
.label_299:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_1
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	jmp	.label_204
.label_186:
	mov	edx, dword ptr [r15]
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	backup_file_rename
	mov	rbx, rax
	test	rbx, rbx
	je	.label_209
	mov	rdi, rbx
	call	strlen
	mov	rdi, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	qword ptr [rbp - 0x298], rdi
	mov	rsp, rdi
	mov	rsi, rbx
	call	memcpy
	mov	rdi, rbx
	call	free
	jmp	.label_221
.label_209:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x298], rax
	cmp	ebx, 2
	jne	.label_340
.label_221:
	mov	byte ptr [rbp - 0x29], 1
	mov	r12, r13
	mov	ebx, dword ptr [rbp - 0x28c]
.label_192:
	mov	r13d, 0x11
	mov	rax, qword ptr [rbp - 0x298]
.label_304:
	mov	qword ptr [rbp - 0x298], rax
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_232
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_232
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_232
	cmp	dword ptr [r15], 0
	jne	.label_232
	mov	dword ptr [rbp - 0x28c], ebx
	test	r14b, r14b
	jne	.label_222
	lea	rbx, [rbp - 0x1e0]
	mov	rdi, r12
	mov	rsi, rbx
	call	__lstat
	test	eax, eax
	jne	.label_226
	jmp	.label_246
.label_222:
	lea	rbx, [rbp - 0x150]
.label_246:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_226
	mov	rdi, qword ptr [r15 + 0x40]
	mov	rsi, r12
	mov	rdx, rbx
	call	seen_file
	test	al, al
	je	.label_226
	mov	rbx, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26_0
	jmp	.label_255
.label_226:
	mov	ebx, dword ptr [rbp - 0x28c]
.label_232:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_262
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_262
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	jne	.label_262
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x298]
	call	emit_verbose
.label_262:
	mov	dword ptr [rbp - 0x28c], ebx
	xor	eax, eax
	test	r13d, r13d
	je	.label_191
	mov	ebx, dword ptr [rbp - 0x28c]
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_272
	mov	al, byte ptr [r15 + 0x2a]
	test	al, al
	je	.label_272
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0xb8]
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_276
	mov	rdi, r12
	mov	rsi, rcx
	mov	rdx, rax
	jmp	.label_296
.label_272:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_268
	cmp	qword ptr [rbp - 0xb0], 1
	jne	.label_268
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb8]
	call	src_to_dest_lookup
	jmp	.label_288
.label_268:
	xor	eax, eax
	cmp	byte ptr [r15 + 0x22], 0
	je	.label_191
	xor	eax, eax
	cmp	byte ptr [r15 + 0x17], 0
	jne	.label_191
	cmp	qword ptr [rbp - 0xb0], 1
	ja	.label_295
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_297
	cmp	dword ptr [r15 + 4], 3
	je	.label_295
.label_297:
	xor	eax, eax
	cmp	dword ptr [r15 + 4], 4
	jne	.label_191
.label_295:
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, r12
.label_296:
	call	remember_copied
	jmp	.label_288
.label_276:
	mov	rdi, rcx
	mov	rsi, rax
	call	src_to_dest_lookup
.label_288:
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_191
	cmp	ebx, 0x4000
	jne	.label_307
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, r14
	call	same_name
	test	al, al
	je	.label_271
	mov	qword ptr [rbp - 0x2a8], r12
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27_0
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r13, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	rcx, r14
	jmp	.label_176
.label_307:
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x29c]
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	mov	qword ptr [rbp - 0x2a8], r12
	call	create_hard_link
	mov	r12b, 1
	test	al, al
	mov	rcx, r14
	je	.label_176
	jmp	.label_169
.label_271:
	mov	rdi, r12
	mov	rsi, r14
	call	same_name
	test	al, al
	je	.label_281
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + top_level_src_name]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r12b, 1
	mov	rcx, qword ptr [rbp + 0x28]
	test	rcx, rcx
	je	.label_169
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	je	.label_169
	mov	byte ptr [rcx], 1
	jmp	.label_169
.label_281:
	mov	ecx, dword ptr [r15 + 4]
	cmp	ecx, 3
	sete	al
	cmp	ecx, 4
	je	.label_168
	mov	qword ptr [rbp - 0x2a8], r12
	mov	cl, byte ptr [rbp + 0x10]
	and	al, cl
	jne	.label_316
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29_0
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x2a8]
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	rcx, r14
	jmp	.label_176
.label_168:
	mov	rax, r14
	jmp	.label_191
.label_316:
	mov	rax, r14
	mov	r12, qword ptr [rbp - 0x2a8]
.label_191:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_193
	cmp	r13d, 0x11
	mov	rbx, qword ptr [rbp - 0x278]
	jne	.label_196
	mov	r14, rax
	mov	rdi, rbx
	mov	rsi, r12
	call	rename
	test	eax, eax
	je	.label_205
	call	__errno_location
	mov	r13d, dword ptr [rax]
	mov	rax, r14
.label_196:
	cmp	r13d, 0x16
	je	.label_207
	cmp	r13d, 0x12
	je	.label_210
	test	r13d, r13d
	jne	.label_213
.label_205:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_215
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x298]
	call	emit_verbose
.label_215:
	cmp	byte ptr [r15 + 0x21], 0
	je	.label_225
	xor	esi, esi
	mov	edx, 1
	mov	rdi, r12
	mov	rcx, r15
	call	set_file_security_ctx
.label_225:
	mov	rsi, r12
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_231
	mov	byte ptr [rax], 1
.label_231:
	mov	r12b, 1
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_169
	cmp	byte ptr [r15 + 0x31], 0
	jne	.label_169
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0xc0]
	call	record_file
	jmp	.label_169
.label_210:
	mov	qword ptr [rbp - 0x2b0], rax
	mov	ebx, dword ptr [rbp - 0x28c]
	and	ebx, 0xf000
	mov	rdi, r12
	mov	r14, r12
	cmp	ebx, 0x4000
	jne	.label_242
	call	rmdir
	jmp	.label_251
.label_207:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	r12b, 1
	jmp	.label_169
.label_213:
	mov	r14, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rdx, rbx
	mov	qword ptr [rbp - 0x280], rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rcx, r15
	mov	r8, rbx
	jmp	.label_284
.label_242:
	call	unlink
.label_251:
	test	eax, eax
	je	.label_289
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r13d, 2
	jne	.label_291
.label_289:
	cmp	ebx, 0x4000
	mov	r12, r14
	je	.label_294
	mov	al, byte ptr [r15 + 0x2e]
	test	al, al
	je	.label_294
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x298]
	call	emit_verbose
.label_294:
	mov	byte ptr [rbp - 0x29], 1
	mov	rax, qword ptr [rbp - 0x2b0]
.label_193:
	cmp	byte ptr [r15 + 0x2b], 0
	mov	ebx, dword ptr [rbp - 0x28c]
	mov	r14d, ebx
	je	.label_306
	mov	r14d, dword ptr [r15 + 0x10]
.label_306:
	mov	qword ptr [rbp - 0x2b0], rax
	mov	r13d, 0x3f
	cmp	byte ptr [r15 + 0x1d], 0
	jne	.label_310
	mov	eax, ebx
	and	eax, 0xf000
	xor	ecx, ecx
	cmp	eax, 0x4000
	mov	r13d, 0x12
	cmovne	r13d, ecx
.label_310:
	movzx	ecx, byte ptr [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, r12
	mov	r8, r15
	call	set_process_security_ctx
	test	al, al
	je	.label_321
	mov	qword ptr [rbp - 0x2a8], r12
	and	r13d, r14d
	mov	r12d, ebx
	and	r12d, 0xf000
	cmp	r12d, 0x4000
	jne	.label_322
	lea	rdi, [rbp - 0xc0]
	mov	rbx, qword ptr [rbp - 0x280]
	mov	rsi, rbx
	call	is_ancestor
	test	al, al
	je	.label_327
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x278]
.label_183:
	call	quotearg_style
.label_282:
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_334
.label_321:
	xor	r12d, r12d
	jmp	.label_169
.label_322:
	cmp	byte ptr [r15 + 0x2c], 0
	je	.label_339
	mov	r14, qword ptr [rbp - 0x278]
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	je	.label_198
	mov	rdi, qword ptr [rbp - 0x2a8]
	call	dir_name
	mov	rbx, rax
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	jne	.label_341
	cmp	byte ptr [rbx + 1], 0
	je	.label_159
.label_341:
	lea	rsi, [rbp - 0x1e0]
	mov	edi, OFFSET FLAT:.str_3
	call	stat
	test	eax, eax
	jne	.label_159
	lea	rsi, [rbp - 0x270]
	mov	rdi, rbx
	call	stat
	test	eax, eax
	je	.label_165
.label_159:
	mov	rdi, rbx
	call	free
.label_198:
	mov	dword ptr [rbp - 0x2b4], r12d
	mov	r12d, r13d
	movzx	ecx, byte ptr [r15 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r14
	mov	rbx, qword ptr [rbp - 0x2a8]
	mov	rdx, rbx
	call	force_symlinkat
	mov	r13d, eax
	test	r13d, r13d
	jle	.label_182
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41_0
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbp - 0x278], rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, qword ptr [rbp - 0x278]
	mov	rcx, r12
	call	error
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_176
.label_327:
	mov	dword ptr [rbp - 0x2b4], r12d
	mov	rax, rsp
	mov	rcx, rbx
	lea	r12, [rax - 0x20]
	mov	rsp, r12
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rax - 0x10], rcx
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_199
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	cmp	eax, 0x4000
	jne	.label_199
	cmp	byte ptr [r15 + 0x21], 0
	mov	r14, qword ptr [rbp - 0x278]
	jne	.label_218
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_220
.label_218:
	movzx	esi, byte ptr [r15 + 0x25]
	xor	r13d, r13d
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x2a8]
	mov	rcx, r15
	call	set_file_security_ctx
	cmp	byte ptr [r15 + 0x26], 0
	je	.label_269
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_176
.label_199:
	and	r14d, 0xfff
	mov	esi, r13d
	not	esi
	and	esi, r14d
	mov	ebx, r13d
	mov	r13, qword ptr [rbp - 0x2a8]
	mov	rdi, r13
	call	mkdir
	test	eax, eax
	je	.label_190
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	jmp	.label_240
.label_339:
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_244
	mov	bl, 1
	cmp	byte ptr [r15 + 0x16], 0
	mov	al, 1
	jne	.label_247
	cmp	dword ptr [r15 + 8], 3
	sete	al
.label_247:
	movzx	edx, al
	movzx	r8d, byte ptr [rbp - 0x29c]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, qword ptr [rbp - 0x2a8]
	call	create_hard_link
	test	al, al
	je	.label_259
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	jmp	.label_261
.label_291:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x278]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	mov	rcx, r15
.label_284:
	call	error
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb8]
	call	forget_created
	jmp	.label_169
.label_182:
	mov	qword ptr [rbp - 0x278], r14
	mov	al, 1
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	mov	bl, 1
.label_324:
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x29c], eax
	mov	al, byte ptr [rbp + 0x10]
	mov	r13d, r12d
	mov	r12d, dword ptr [rbp - 0x2b4]
	jmp	.label_167
.label_190:
	mov	r14d, ebx
	lea	rsi, [rbp - 0x150]
	mov	rdi, r13
	call	__lstat
	test	eax, eax
	je	.label_292
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_240:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
.label_197:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_334:
	mov	rdx, rbx
.label_266:
	call	error
	mov	rcx, qword ptr [rbp - 0x2b0]
.label_176:
	cmp	byte ptr [r15 + 0x25], 0
	jne	.label_302
	test	rcx, rcx
	mov	rbx, qword ptr [rbp - 0x2a8]
	mov	rax, qword ptr [rbp - 0x298]
	jne	.label_305
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	r14, rax
	call	forget_created
	mov	rax, r14
.label_305:
	test	rax, rax
	je	.label_313
	mov	rdi, rax
	mov	rsi, rbx
	mov	r14, rax
	call	rename
	test	eax, eax
	je	.label_317
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	jmp	.label_318
.label_313:
	xor	r12d, r12d
	jmp	.label_169
.label_317:
	mov	r12, r14
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_323
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	xor	r12d, r12d
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, r15
	call	__printf_chk
	jmp	.label_169
.label_323:
	xor	r12d, r12d
	jmp	.label_169
.label_244:
	cmp	r12d, 0x8000
	je	.label_335
	cmp	r12d, 0xa000
	je	.label_336
	mov	al, byte ptr [r15 + 0x14]
	test	al, al
	je	.label_336
.label_335:
	and	r14d, 0x1ff
	sub	rsp, 0x10
	lea	rax, [rbp - 0xc0]
	mov	qword ptr [rsp], rax
	lea	r9, [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, qword ptr [rbp - 0x2a8]
	mov	rdx, r15
	mov	ecx, r14d
	mov	r8d, r13d
	call	copy_reg
	add	rsp, 0x10
	test	al, al
	je	.label_160
	mov	dl, 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	mov	bl, 1
.label_261:
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x29c], eax
	mov	al, byte ptr [rbp + 0x10]
	jmp	.label_167
.label_259:
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_176
.label_292:
	mov	ebx, dword ptr [rbp - 0x138]
	mov	eax, ebx
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	jne	.label_175
	xor	eax, eax
	mov	qword ptr [rbp - 0x2c0], rax
	mov	r13d, r14d
	jmp	.label_181
.label_160:
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_176
.label_165:
	mov	dword ptr [rbp - 0x2b4], r12d
	mov	r12d, r13d
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x268]
	jne	.label_187
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	qword ptr [rbp - 0x280], rax
	mov	r13, qword ptr [rbp - 0x270]
	mov	rdi, rbx
	call	free
	cmp	qword ptr [rbp - 0x280], r13
	mov	r13d, r12d
	mov	r12d, dword ptr [rbp - 0x2b4]
	jne	.label_194
	jmp	.label_198
.label_336:
	cmp	r12d, 0x5fff
	jle	.label_201
	cmp	r12d, 0x6000
	mov	r14, qword ptr [rbp - 0x278]
	je	.label_206
	cmp	r12d, 0xa000
	je	.label_211
	cmp	r12d, 0xc000
	je	.label_206
	jmp	.label_216
.label_269:
	xor	eax, eax
	mov	qword ptr [rbp - 0x2c0], rax
	jmp	.label_217
.label_175:
	mov	esi, ebx
	or	esi, 0x1c0
	mov	rdi, qword ptr [rbp - 0x2a8]
	call	chmod
	mov	cl, 1
	mov	qword ptr [rbp - 0x2c0], rcx
	test	eax, eax
	mov	r13d, r14d
	je	.label_181
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
.label_228:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x2a8]
	jmp	.label_197
.label_181:
	mov	rax, qword ptr [rbp + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_233
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdi, qword ptr [rbp - 0x2a8]
	call	remember_copied
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], 1
.label_233:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_342
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_239
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x2a8]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	__printf_chk
	mov	r14, qword ptr [rbp - 0x278]
	jmp	.label_275
.label_235:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20_1
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x278]
	call	quotearg_n_style_colon
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	jmp	.label_274
.label_187:
	mov	rdi, rbx
	call	free
.label_194:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x2a8]
	call	quotearg_n_style_colon
	jmp	.label_282
.label_342:
	mov	r14, qword ptr [rbp - 0x278]
	jmp	.label_275
.label_201:
	cmp	r12d, 0x1000
	je	.label_286
	cmp	r12d, 0x2000
	mov	r14, qword ptr [rbp - 0x278]
	mov	ebx, dword ptr [rbp - 0x28c]
	jne	.label_216
.label_206:
	mov	dword ptr [rbp - 0x2b4], r12d
	mov	esi, r13d
	not	esi
	and	esi, ebx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	r12d, r13d
	mov	r13d, ebx
	mov	rbx, qword ptr [rbp - 0x2a8]
	mov	rdi, rbx
	call	__mknod
	test	eax, eax
	je	.label_179
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43_0
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r12
	jmp	.label_266
.label_220:
	xor	eax, eax
	mov	qword ptr [rbp - 0x2c0], rax
	xor	r13d, r13d
.label_217:
	jmp	.label_275
.label_340:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23_1
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_315
.label_174:
	mov	rbx, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
.label_315:
	mov	rdx, r14
	call	error
	jmp	.label_169
.label_239:
	xor	edx, edx
	mov	r14, qword ptr [rbp - 0x278]
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 0x2a8]
	call	emit_verbose
.label_275:
	mov	dword ptr [rbp - 0x29c], ebx
	cmp	qword ptr [rbp - 0x288], 0
	je	.label_331
	mov	al, byte ptr [r15 + 0x1c]
	test	al, al
	je	.label_331
	mov	rax, qword ptr [rbp - 0x288]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xc0]
	jne	.label_265
.label_331:
	movzx	edx, byte ptr [rbp - 0x29]
	sub	rsp, 0x10
	mov	rax, qword ptr [rbp + 0x20]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rbp + 0x18]
	mov	qword ptr [rsp], rax
	lea	rcx, [rbp - 0xc0]
	mov	rdi, r14
	mov	qword ptr [rbp - 0x278], r14
	mov	rsi, qword ptr [rbp - 0x2a8]
	mov	r8, r12
	mov	r9, r15
	call	copy_dir
	add	rsp, 0x10
	mov	bl, al
	jmp	.label_343
.label_265:
	mov	qword ptr [rbp - 0x278], r14
	mov	bl, 1
.label_343:
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	mov	al, byte ptr [rbp + 0x10]
	mov	r12d, dword ptr [rbp - 0x2b4]
	mov	r14, qword ptr [rbp - 0x2c0]
.label_167:
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_173
	cmp	r12d, 0x4000
	je	.label_173
	mov	cl, al
	mov	al, byte ptr [r15 + 0x14]
	test	al, al
	mov	al, cl
	jne	.label_173
	cmp	byte ptr [r15 + 0x21], 0
	jne	.label_178
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_173
.label_178:
	movzx	esi, byte ptr [r15 + 0x25]
	mov	dword ptr [rbp - 0x288], edx
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x2a8]
	mov	rcx, r15
	mov	qword ptr [rbp - 0x2c0], r14
	mov	r14b, bl
	mov	ebx, r13d
	mov	r13b, al
	call	set_file_security_ctx
	mov	edx, dword ptr [rbp - 0x288]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	al, r13b
	mov	r13d, ebx
	mov	bl, r14b
	mov	r14, qword ptr [rbp - 0x2c0]
	cmp	byte ptr [r15 + 0x26], 0
	jne	.label_176
.label_173:
	test	al, al
	je	.label_195
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_195
	mov	byte ptr [rbp - 0x288], bl
	mov	rbx, r14
	mov	r14d, edx
	lea	rsi, [rbp - 0x1e0]
	mov	rdi, qword ptr [rbp - 0x2a8]
	call	__lstat
	test	eax, eax
	jne	.label_200
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x1e0]
	mov	rsi, qword ptr [rbp - 0x2a8]
	call	record_file
.label_200:
	mov	edx, r14d
	mov	r14, rbx
	mov	bl, byte ptr [rbp - 0x288]
.label_195:
	cmp	r12d, 0x4000
	je	.label_319
	mov	al, byte ptr [r15 + 0x17]
	test	al, al
	jne	.label_166
.label_319:
	test	dl, dl
	jne	.label_166
	mov	byte ptr [rbp - 0x288], bl
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_219
	lea	rbx, [rbp - 0xc0]
	mov	rdi, rbx
	call	get_stat_atime
	mov	qword ptr [rbp - 0x1e0], rax
	mov	qword ptr [rbp - 0x1d8], rdx
	mov	rdi, rbx
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x1d0], rax
	mov	qword ptr [rbp - 0x1c8], rdx
	mov	rax, qword ptr [rbp - 0x280]
	test	al, al
	mov	rdi, qword ptr [rbp - 0x2a8]
	lea	rsi, [rbp - 0x1e0]
	je	.label_230
	call	utimens_symlink
	jmp	.label_237
.label_230:
	call	utimens
.label_237:
	test	eax, eax
	je	.label_219
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x2a8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_219
	xor	r12d, r12d
	jmp	.label_169
.label_219:
	mov	rax, qword ptr [rbp - 0x280]
	test	al, al
	mov	rbx, qword ptr [rbp - 0x2a8]
	je	.label_260
	cmp	byte ptr [rbp - 0x288], 0
	setne	r12b
	jmp	.label_169
.label_260:
	mov	r12, r14
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_189
	cmp	byte ptr [rbp - 0x29], 0
	mov	r14, qword ptr [rbp - 0x278]
	jne	.label_250
	mov	eax, dword ptr [rbp - 0xa4]
	cmp	eax, dword ptr [rbp - 0x134]
	jne	.label_250
	mov	eax, dword ptr [rbp - 0xa0]
	cmp	eax, dword ptr [rbp - 0x130]
	je	.label_264
.label_250:
	movzx	r8d, byte ptr [rbp - 0x29]
	lea	rcx, [rbp - 0xc0]
	lea	r9, [rbp - 0x150]
	mov	edx, 0xffffffff
	mov	rdi, r15
	mov	rsi, rbx
	call	set_owner
	cmp	eax, -1
	je	.label_243
	test	eax, eax
	jne	.label_264
	and	dword ptr [rbp - 0x28c], 0xfffff1ff
	jmp	.label_264
.label_189:
	mov	r14, qword ptr [rbp - 0x278]
.label_264:
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_285
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_287
.label_285:
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, r14
	mov	rdx, rbx
	mov	r8d, dword ptr [rbp - 0x28c]
	call	copy_acl
	test	eax, eax
	mov	bl, byte ptr [rbp - 0x288]
	je	.label_166
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_166
	xor	r12d, r12d
	jmp	.label_169
.label_298:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22_1
.label_188:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	r12d, r12d
.label_330:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r13
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x278]
	jmp	.label_303
.label_243:
	xor	r12d, r12d
	jmp	.label_169
.label_179:
	mov	dword ptr [rbp - 0x28c], r13d
	mov	qword ptr [rbp - 0x278], r14
	mov	bl, 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	jmp	.label_324
.label_211:
	mov	dword ptr [rbp - 0x288], r13d
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdi, r14
	call	areadlink_with_size
	mov	r13, rax
	test	r13, r13
	je	.label_320
	movzx	ecx, byte ptr [r15 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r13
	mov	rdx, qword ptr [rbp - 0x2a8]
	call	force_symlinkat
	mov	r14d, eax
	test	r14d, r14d
	jle	.label_325
	cmp	byte ptr [r15 + 0x2d], 0
	je	.label_162
	mov	al, byte ptr [rbp - 0x29]
	test	al, al
	jne	.label_162
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	cmp	eax, 0xa000
	jne	.label_162
	mov	rbx, qword ptr [rbp - 0x120]
	mov	rdi, r13
	call	strlen
	cmp	rbx, rax
	jne	.label_162
	mov	rdi, qword ptr [rbp - 0x2a8]
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_162
	mov	rdi, rbx
	mov	rsi, r13
	call	strcmp
	mov	dword ptr [rbp - 0x280], eax
	mov	rdi, rbx
	call	free
	cmp	dword ptr [rbp - 0x280], 0
	je	.label_325
.label_162:
	mov	rdi, r13
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45_0
	jmp	.label_228
.label_286:
	mov	ebx, r13d
	not	ebx
	and	ebx, dword ptr [rbp - 0x28c]
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	mov	r14, qword ptr [rbp - 0x2a8]
	mov	rdi, r14
	mov	esi, ebx
	call	__mknod
	test	eax, eax
	je	.label_163
	and	ebx, 0xffffefff
	mov	rdi, r14
	mov	esi, ebx
	call	mkfifo
	test	eax, eax
	je	.label_172
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42_0
	jmp	.label_228
.label_216:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	jmp	.label_183
.label_287:
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_185
	mov	edx, dword ptr [r15 + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, rbx
	call	set_acl
	test	eax, eax
	mov	bl, byte ptr [rbp - 0x288]
	je	.label_166
	xor	r12d, r12d
	jmp	.label_169
.label_320:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x278]
	jmp	.label_197
.label_185:
	mov	r14, rbx
	cmp	byte ptr [r15 + 0x20], 0
	je	.label_202
	mov	al, byte ptr [rbp - 0x29]
	test	al, al
	je	.label_202
	mov	eax, dword ptr [rbp - 0x28c]
	and	eax, 0x7000
	or	eax, 0x8000
	cmp	eax, 0xc000
	mov	eax, 0x1ff
	mov	ebx, 0x1b6
	cmove	ebx, eax
	call	cached_umask
	not	eax
	and	ebx, eax
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	mov	bl, byte ptr [rbp - 0x288]
	je	.label_166
	xor	r12d, r12d
	jmp	.label_169
.label_325:
	mov	rdi, r13
	call	free
	cmp	byte ptr [r15 + 0x25], 0
	jne	.label_273
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_227
	mov	esi, dword ptr [rbp - 0xa4]
	mov	edx, dword ptr [rbp - 0xa0]
	mov	rdi, qword ptr [rbp - 0x2a8]
	call	lchown
	test	eax, eax
	je	.label_227
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	je	.label_224
.label_227:
	mov	al, 1
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	mov	bl, 1
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x29c], eax
	mov	al, byte ptr [rbp + 0x10]
	mov	r13d, dword ptr [rbp - 0x288]
	jmp	.label_167
.label_172:
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
.label_163:
	xor	edx, edx
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x29c], eax
	mov	al, byte ptr [rbp + 0x10]
	mov	bl, 1
	jmp	.label_167
.label_202:
	test	r13d, r13d
	je	.label_253
	call	cached_umask
	not	eax
	and	r13d, eax
	test	r12b, r12b
	jne	.label_257
	test	r13d, r13d
	je	.label_257
	cmp	byte ptr [rbp - 0x29], 0
	je	.label_263
	lea	rsi, [rbp - 0x150]
	mov	rdi, r14
	call	__lstat
	test	eax, eax
	je	.label_263
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	jmp	.label_203
.label_253:
	xor	r13d, r13d
	jmp	.label_257
.label_224:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x2a8]
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_301
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_176
.label_263:
	mov	eax, dword ptr [rbp - 0x138]
	mov	dword ptr [rbp - 0x29c], eax
	not	eax
	test	r13d, eax
	je	.label_257
	mov	r12b, 1
.label_257:
	test	r12b, 1
	mov	bl, byte ptr [rbp - 0x288]
	je	.label_166
	mov	esi, dword ptr [rbp - 0x29c]
	or	esi, r13d
	mov	rdi, r14
	call	chmod
	test	eax, eax
	je	.label_166
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp - 0x278], eax
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	call	dcgettext
	mov	r13b, bl
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rbp - 0x278]
	mov	rdx, rbx
	mov	bl, r13b
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_169
.label_166:
	test	bl, bl
	setne	r12b
	jmp	.label_169
.label_301:
	mov	al, 1
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	mov	bl, 1
	mov	dword ptr [rbp - 0x29c], eax
	mov	al, byte ptr [rbp + 0x10]
	mov	r13d, dword ptr [rbp - 0x288]
	xor	r14d, r14d
	jmp	.label_167
.label_302:
	call	restore_default_fscreatecon_or_die
.label_273:
	call	restore_default_fscreatecon_or_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406350

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbx
	mov	rbx, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	call	geteuid
	test	eax, eax
	sete	byte ptr [rbx + 0x1b]
	sete	byte ptr [rbx + 0x1a]
	mov	dword ptr [rbx + 0x34], 0xffffffff
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406390

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_344
	cmp	eax, 1
	jne	.label_345
.label_344:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	pop	rbx
	ret	
.label_345:
	xor	eax, eax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063c0

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	cmp	dword ptr [dword ptr [rip + cached_umask.mask]],  -1
	jne	.label_346
	push	rax
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	add	rsp, 8
.label_346:
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4063f0

	.globl should_dereference
	.type should_dereference, @function
should_dereference:
	mov	ecx, dword ptr [rdi + 4]
	mov	al, 1
	cmp	ecx, 4
	je	.label_347
	cmp	ecx, 3
	sete	al
	and	al, sil
.label_347:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406410

	.globl same_file_ok
	.type same_file_ok, @function
same_file_ok:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r14, r9
	mov	r15, r8
	mov	rbx, rcx
	mov	rbp, rsi
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_353
	mov	rax, qword ptr [rbp]
	cmp	rax, qword ptr [rbx]
	mov	byte ptr [r14], 0
	jne	.label_362
	mov	r13b, 1
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_364
	mov	byte ptr [r14], 1
	mov	r12b, 1
	jmp	.label_348
.label_353:
	mov	byte ptr [r14], 0
.label_362:
	xor	r13d, r13d
.label_364:
	cmp	dword ptr [r15 + 4], 2
	jne	.label_368
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_370
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	mov	rsi, rbp
	jne	.label_361
	mov	rsi, rdx
	call	same_name
	test	al, al
	jne	.label_351
	mov	r12b, 1
	cmp	dword ptr [r15], 0
	jne	.label_348
	test	r13b, r13b
	je	.label_351
	mov	byte ptr [r14], 1
	jmp	.label_358
.label_368:
	mov	qword ptr [rsp + 0x10], r14
	mov	r14, rdi
	mov	r12b, 1
	test	r13b, r13b
	je	.label_348
	lea	rbx, [rsp + 0xa8]
	mov	rdi, rdx
	mov	rsi, rbx
	mov	r13, rdx
	call	__lstat
	test	eax, eax
	jne	.label_348
	mov	qword ptr [rsp + 8], r13
	lea	rax, [rsp + 0x18]
	mov	r13, r14
	mov	r14, rax
	mov	rdi, r13
	mov	rsi, r14
	call	__lstat
	test	eax, eax
	jne	.label_348
	mov	rsi, r14
	mov	rcx, r13
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_354
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0xa8]
	sete	r13b
	jmp	.label_359
.label_370:
	mov	rsi, rbp
.label_361:
	cmp	dword ptr [r15], 0
	je	.label_365
	test	r13b, r13b
	je	.label_367
	mov	rsi, rdx
	call	same_name
	mov	r12b, al
	xor	r12b, 1
	jmp	.label_348
.label_365:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_373
	cmp	byte ptr [r15 + 0x15], 0
	je	.label_352
.label_373:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	mov	r12b, 1
	cmp	eax, 0xa000
	je	.label_348
	test	r13b, r13b
	je	.label_352
	cmp	qword ptr [rbx + 0x10], 2
	jb	.label_352
	mov	r13, rdi
	mov	qword ptr [rsp + 0x10], rsi
	mov	rsi, rdx
	mov	r12, rdx
	call	same_name
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, r13
	mov	rdx, r12
	test	al, al
	je	.label_358
.label_352:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsi + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	je	.label_363
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_363
	mov	rax, qword ptr [rsi + 8]
	mov	r12b, 1
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_348
	mov	rax, qword ptr [rsi]
	cmp	rax, qword ptr [rbx]
	jne	.label_348
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_363
	mov	byte ptr [r14], 1
	jmp	.label_348
.label_367:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_350
	cmp	dword ptr [r15 + 4], 2
	je	.label_350
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsi + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_350
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_357
.label_350:
	mov	r12b, 1
	jmp	.label_348
.label_351:
	xor	al, 1
	mov	r12b, al
	jmp	.label_348
.label_363:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_360
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0xa000
	jne	.label_360
	cmp	qword ptr [rbx + 0x10], 2
	jb	.label_360
	mov	rbp, rdi
	mov	r12, rdx
	mov	r13, rsi
	call	canonicalize_file_name
	mov	rsi, r13
	mov	rdi, rbp
	mov	rdx, r12
	mov	rbp, rax
	test	rbp, rbp
	je	.label_360
	mov	rdi, rbp
	mov	rsi, rdx
	call	same_name
	mov	r12b, al
	xor	r12b, 1
	mov	rdi, rbp
	call	free
	jmp	.label_348
.label_360:
	cmp	byte ptr [r15 + 0x2c], 0
	je	.label_356
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	mov	r12b, 1
	cmp	eax, 0xa000
	je	.label_348
.label_356:
	cmp	dword ptr [r15 + 4], 2
	jne	.label_371
	mov	rbp, rdx
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0xa000
	jne	.label_366
	lea	rsi, [rsp + 0x18]
	call	stat
	mov	r12b, 1
	test	eax, eax
	mov	rdi, rbp
	jne	.label_348
	jmp	.label_355
.label_358:
	cmp	byte ptr [r15 + 0x18], 0
	sete	r12b
	jmp	.label_348
.label_371:
	xor	r12d, r12d
	jmp	.label_348
.label_354:
	xor	r13d, r13d
.label_359:
	mov	rdx, qword ptr [rsp + 8]
	mov	rdi, rcx
	mov	r14, qword ptr [rsp + 0x10]
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x30]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_361
	and	eax, dword ptr [rsp + 0xc0]
	cmp	eax, 0xa000
	jne	.label_361
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_348
	jmp	.label_361
.label_366:
	lea	rdi, [rsp + 0x18]
	mov	edx, 0x90
	call	memcpy
	mov	rdi, rbp
.label_355:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_369
	lea	rsi, [rsp + 0xa8]
	call	stat
	mov	r12b, 1
	test	eax, eax
	jne	.label_348
	jmp	.label_349
.label_369:
	lea	rdi, [rsp + 0xa8]
	mov	edx, 0x90
	mov	rsi, rbx
	call	memcpy
.label_349:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12b, 1
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_348
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0xa8]
	jne	.label_348
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_372
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	setne	byte ptr [r14]
	jmp	.label_348
.label_357:
	xor	r12d, r12d
	jmp	.label_348
.label_372:
	xor	r12d, r12d
.label_348:
	mov	al, r12b
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406800

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12d, ecx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	r8d, r8b
	shl	r8d, 0xa
	mov	dword ptr [rsp], 0xffffffff
	movzx	r9d, dl
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rbx
	mov	rcx, r15
	call	force_linkat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_375
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_374
.label_375:
	test	ebp, ebp
	mov	r14b, 1
	jns	.label_374
	xor	r12b, 1
	jne	.label_374
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_374:
	mov	al, r14b
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068f0

	.globl abandon_move
	.type abandon_move, @function
abandon_move:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x18], 0
	je	.label_378
	mov	ecx, dword ptr [rbx + 8]
	mov	al, 1
	cmp	ecx, 2
	je	.label_376
	cmp	ecx, 3
	je	.label_377
	cmp	ecx, 4
	jne	.label_379
	cmp	byte ptr [rbx + 0x2f], 0
	je	.label_380
	mov	esi, dword ptr [r14 + 0x18]
	mov	rdi, r15
	call	writable_destination
	test	al, al
	je	.label_377
	xor	eax, eax
	jmp	.label_376
.label_377:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	overwrite_ok
	xor	al, 1
	jmp	.label_376
.label_379:
	xor	eax, eax
	jmp	.label_376
.label_380:
	xor	eax, eax
.label_376:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_378:
	mov	edi, OFFSET FLAT:.str.53
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 0x6d2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.abandon_move
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406970

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	esi, dword ptr [r13 + 0x18]
	mov	rdi, r14
	call	writable_destination
	test	al, al
	je	.label_384
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rbx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, rbp
	call	__fprintf_chk
	jmp	.label_381
.label_384:
	mov	edi, dword ptr [r13 + 0x18]
	lea	rsi, [rsp + 0xc]
	call	strmode
	mov	byte ptr [rsp + 0x16], 0
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	cmp	byte ptr [rbx + 0x18], 0
	jne	.label_382
	cmp	byte ptr [rbx + 0x15], 0
	jne	.label_382
	cmp	byte ptr [rbx + 0x16], 0
	je	.label_383
.label_382:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
.label_385:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rbp,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbx, rax
	mov	r9d, dword ptr [r13 + 0x18]
	and	r9d, 0xfff
	lea	rax, [rsp + 0xd]
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	__fprintf_chk
.label_381:
	call	yesno
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	jmp	.label_385
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a90

	.globl dot_or_dotdot_0
	.type dot_or_dotdot_0, @function
dot_or_dotdot_0:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_386
	movzx	ecx, byte ptr [rdi + 1]
	mov	eax, 2
	cmp	ecx, 0x2e
	je	.label_387
	mov	eax, 1
.label_387:
	movzx	eax, byte ptr [rdi + rax]
	test	al, al
	sete	cl
	cmp	eax, 0x2f
	sete	al
	or	al, cl
	ret	
.label_386:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ac0

	.globl source_is_dst_backup
	.type source_is_dst_backup, @function
source_is_dst_backup:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, rdi
	call	strlen
	mov	r15, rax
	mov	rdi, rbp
	call	last_component
	mov	r14, rax
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	mov	r13,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdi, r13
	call	strlen
	mov	r12, rax
	lea	rax, [r12 + rbp]
	cmp	r15, rax
	jne	.label_390
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	je	.label_393
	xor	eax, eax
	jmp	.label_388
.label_390:
	xor	eax, eax
	jmp	.label_388
.label_393:
	add	rbx, rbp
	mov	rdi, rbx
	mov	rsi, r13
	call	strcmp
	test	eax, eax
	je	.label_389
	xor	eax, eax
	jmp	.label_388
.label_389:
	mov	r14, qword ptr [rsp + 0x10]
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	lea	rdi, [r12 + rbx + 1]
	call	xmalloc
	mov	rbp, rax
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdi, rax
	call	strcpy
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbp
	call	stat
	mov	ebx, eax
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	je	.label_391
	xor	eax, eax
	jmp	.label_388
.label_391:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_392
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	al
	jmp	.label_388
.label_392:
	xor	eax, eax
.label_388:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bf0

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	rax, rdi
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rax
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.57
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
	test	r14, r14
	je	.label_394
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_394:
	mov	edi, 0xa
	pop	rbx
	pop	r14
	pop	r15
	jmp	putchar_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c90

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	test	rsi, rsi
	je	.label_395
	mov	rcx, qword ptr [rdi + 8]
	nop	dword ptr [rax]
.label_398:
	cmp	qword ptr [rsi + 8], rcx
	jne	.label_396
	mov	rdx, qword ptr [rsi + 0x10]
	mov	al, 1
	cmp	rdx, qword ptr [rdi]
	je	.label_397
.label_396:
	mov	rsi, qword ptr [rsi]
	test	rsi, rsi
	jne	.label_398
.label_395:
	xor	eax, eax
.label_397:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406cc0

	.globl copy_dir
	.type copy_dir, @function
copy_dir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	rbp, r9
	mov	qword ptr [rsp + 0x50], r8
	mov	qword ptr [rsp + 0x48], rcx
	mov	r13d, edx
	mov	qword ptr [rsp + 0x40], rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x38], rbx
	movups	xmm0, xmmword ptr [rbp + 0x40]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmm2, xmmword ptr [rbp + 0x20]
	movups	xmm3, xmmword ptr [rbp + 0x30]
	movaps	xmmword ptr [rsp + 0x90], xmm3
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x70], xmm1
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	esi, 2
	call	savedir
	test	rax, rax
	je	.label_402
	cmp	dword ptr [rbp + 4], 3
	jne	.label_404
	mov	dword ptr [rsp + 0x64], 2
.label_404:
	mov	r14b, 1
	xor	ebp, ebp
	cmp	byte ptr [rax], 0
	je	.label_399
	movzx	ecx, r13b
	mov	dword ptr [rsp + 0x34], ecx
	mov	r13, rax
	mov	qword ptr [rsp + 0x28], rax
	nop	word ptr cs:[rax + rax]
.label_401:
	mov	byte ptr [rsp + 0x5d], r14b
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r13
	call	file_name_concat
	mov	r15, rax
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r13
	call	file_name_concat
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rax]
	mov	byte ptr [rsp + 0x5e], al
	lea	rax, [rsp + 0x5f]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x5e]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp], 0
	mov	rdi, r15
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x50]
	lea	r9, [rsp + 0x60]
	call	copy_internal
	mov	r14b, al
	and	r14b, byte ptr [rsp + 0x5d]
	mov	bl, byte ptr [rsp + 0x5f]
	mov	rax, qword ptr [rsp + 0xf8]
	or	byte ptr [rax], bl
	mov	rdi, r12
	call	free
	mov	rdi, r15
	call	free
	test	bl, bl
	jne	.label_400
	or	bpl, byte ptr [rsp + 0x5e]
	mov	rdi, r13
	call	strlen
	cmp	byte ptr [rax + r13 + 1], 0
	lea	r13, [rax + r13 + 1]
	mov	rbx, qword ptr [rsp + 0x38]
	jne	.label_401
	jmp	.label_400
.label_402:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
	jmp	.label_403
.label_399:
	mov	qword ptr [rsp + 0x28], rax
.label_400:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rax, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax], bpl
	test	r14b, r14b
	setne	bpl
.label_403:
	mov	al, bpl
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406eb0

	.globl copy_reg
	.type copy_reg, @function
copy_reg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2a8
	mov	rbx, r9
	mov	r12d, r8d
	mov	r13d, ecx
	mov	qword ptr [rsp + 0xd8], rdx
	mov	rbp, rsi
	mov	r15, rdi
	mov	r14, qword ptr [rsp + 0x2e0]
	mov	eax, dword ptr [r14 + 0x18]
	mov	dword ptr [rsp + 0xcc], eax
	mov	al, byte ptr [rdx + 0x23]
	mov	byte ptr [rsp + 0xd0], al
	mov	esi, 0x20000
	cmp	dword ptr [rdx + 4], 2
	je	.label_432
	xor	esi, esi
.label_432:
	xor	eax, eax
	mov	rdi, r15
	call	open_safer
	test	eax, eax
	js	.label_442
	mov	qword ptr [rsp + 0xe0], r15
	lea	rsi, [rsp + 0x188]
	mov	edi, eax
	mov	r15d, eax
	call	__fstat
	test	eax, eax
	je	.label_446
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xe0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_452
.label_442:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_426
.label_446:
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [rsp + 0x190]
	jne	.label_430
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rsp + 0x188]
	jne	.label_430
	cmp	byte ptr [rbx], 0
	je	.label_458
	mov	qword ptr [rsp + 0xb0], rbx
	mov	dword ptr [rsp + 0xa4], r13d
	mov	qword ptr [rsp + 0xc0], rbp
.label_407:
	mov	ebx, r12d
	mov	edx, ebx
	not	edx
	and	edx, dword ptr [rsp + 0xa4]
	mov	dword ptr [rsp + 0xbc], edx
	mov	esi, 0xc1
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0xc0]
	call	open_safer
	mov	r13d, eax
	call	__errno_location
	mov	qword ptr [rsp + 0xa8], rax
	mov	r12d, dword ptr [rax]
	test	r13d, r13d
	jns	.label_411
	cmp	r12d, 0x11
	jne	.label_411
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x18], 0
	jne	.label_411
	lea	rsi, [rsp + 0xf0]
	mov	rdi, qword ptr [rsp + 0xc0]
	call	__lstat
	test	eax, eax
	jne	.label_411
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x108]
	cmp	eax, 0xa000
	jne	.label_411
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x30], 0
	je	.label_423
	mov	esi, 0x41
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	edx, dword ptr [rsp + 0xbc]
	call	open_safer
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0xa8]
	mov	r12d, dword ptr [rax]
.label_411:
	cmp	r12d, 0x15
	mov	rbp, qword ptr [rsp + 0xc0]
	jne	.label_431
	test	r13d, r13d
	jns	.label_431
	cmp	byte ptr [rbp], 0
	je	.label_431
	mov	rdi, rbp
	call	strlen
	movzx	ecx, byte ptr [rax + rbp - 1]
	mov	eax, 0x14
	cmp	ecx, 0x2f
	je	.label_437
	mov	eax, r12d
.label_437:
	mov	dword ptr [rsp + 0xa8], eax
	jmp	.label_439
.label_430:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xe0]
.label_416:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_419:
	mov	rdx, rbx
.label_452:
	call	error
	xor	r14d, r14d
.label_435:
	mov	edi, r15d
	call	close
	test	eax, eax
	jns	.label_448
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xe0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_448:
	mov	rdi, r14
	call	free
	and	r13b, 1
.label_426:
	and	r13b, 1
	mov	al, r13b
	add	rsp, 0x2a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_431:
	mov	dword ptr [rsp + 0xa8], r12d
.label_439:
	mov	dword ptr [rsp + 0x98], ebx
.label_441:
	test	r13d, r13d
	js	.label_422
	lea	rsi, [rsp + 0x218]
	mov	edi, r13d
	mov	dword ptr [rsp + 0xbc], r13d
	call	__fstat
	test	eax, eax
	je	.label_460
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	xor	r14d, r14d
	jmp	.label_409
.label_458:
	mov	qword ptr [rsp + 0xb0], rbx
	mov	esi, 0x201
	mov	rbx, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rbx + 0x23], 0
	jne	.label_445
	mov	esi, 1
.label_445:
	xor	eax, eax
	mov	rdi, rbp
	mov	qword ptr [rsp + 0xc0], rbp
	call	open_safer
	mov	ebp, eax
	call	__errno_location
	mov	qword ptr [rsp + 0x98], rax
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xa8], eax
	cmp	byte ptr [rbx + 0x21], 0
	je	.label_420
	mov	dword ptr [rsp + 0xa4], r13d
	test	ebp, ebp
	mov	dword ptr [rsp + 0xbc], ebp
	jns	.label_425
	jmp	.label_429
.label_422:
	mov	ebp, dword ptr [rsp + 0xa8]
	cmp	ebp, 2
	mov	rax, qword ptr [rsp + 0xb0]
	jne	.label_413
	cmp	byte ptr [rax], 0
	jne	.label_413
	mov	rdx, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rdx + 0x18], 0
	je	.label_433
.label_413:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_419
.label_460:
	mov	r13b, 1
	xor	r14d, r14d
	cmp	byte ptr [rsp + 0xd0], 0
	je	.label_424
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_443
	mov	edi, dword ptr [rsp + 0xbc]
	mov	esi, r15d
	call	clone_file
	xor	r14d, r14d
	test	eax, eax
	je	.label_424
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_443
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0xc0]
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0xe0]
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	xor	r14d, r14d
	jmp	.label_409
.label_420:
	mov	dword ptr [rsp + 0xa4], r13d
	test	ebp, ebp
	mov	dword ptr [rsp + 0xbc], ebp
	js	.label_456
	mov	al, byte ptr [rbx + 0x25]
	test	al, al
	je	.label_456
.label_425:
	movzx	esi, byte ptr [rbx + 0x25]
	xor	r14d, r14d
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	rcx, rbx
	call	set_file_security_ctx
	xor	r13d, r13d
	cmp	byte ptr [rbx + 0x26], 0
	jne	.label_409
.label_456:
	cmp	dword ptr [rsp + 0xbc], 0
	jns	.label_405
.label_429:
	cmp	byte ptr [rbx + 0x16], 0
	je	.label_405
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rdi, rbp
	call	unlink
	test	eax, eax
	je	.label_410
	mov	rax, qword ptr [rsp + 0x98]
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_419
.label_443:
	call	getpagesize
	cdqe	
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsp + 0x218]
	mov	ecx, 0x12
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	mov	r13, rax
	mov	rax, qword ptr [rsp + 0x250]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	ebx, 0x200
	cmovb	rbx, rax
	test	rax, rax
	cmovle	rbx, rcx
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, r15d
	call	fdadvise
	lea	rdi, [rsp + 0x188]
	call	is_probably_sparse
	mov	dl, al
	mov	r14d, 0xf000
	mov	eax, dword ptr [rsp + 0x230]
	and	eax, r14d
	cmp	eax, 0x8000
	jne	.label_436
	mov	rax, qword ptr [rsp + 0xd8]
	mov	ecx, dword ptr [rax + 0xc]
	cmp	ecx, 2
	sete	al
	cmp	ecx, 3
	mov	r12b, 1
	je	.label_440
	and	al, dl
	jne	.label_444
.label_436:
	mov	byte ptr [rsp + 0xa8], dl
	movabs	rbp, 0x7fffffffffffffff
	sub	rbp, qword ptr [rsp + 0xd0]
	lea	rsi, [rsp + 0x188]
	mov	ecx, 0x12
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	mov	rdi, rax
	mov	rsi, r13
	mov	rdx, rbp
	call	buffer_lcm
	mov	rcx, rax
	and	r14d, dword ptr [rsp + 0x1a0]
	cmp	r14d, 0x8000
	jne	.label_451
	mov	rax, qword ptr [rsp + 0x1b8]
	cmp	rax, r13
	lea	rax, [rax + 1]
	cmovb	r13, rax
.label_451:
	lea	rsi, [rcx + r13 - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	mov	r13, rsi
	sub	r13, rdx
	cmp	rbp, r13
	cmovb	r13, rcx
	cmp	rsi, rdx
	cmove	r13, rcx
	xor	r12d, r12d
.label_418:
	mov	rbp, qword ptr [rsp + 0xd0]
	lea	rdi, [r13 + rbp]
	call	xmalloc
	mov	r14, rax
	mov	rdi, r14
	mov	rsi, rbp
	call	ptr_align
	mov	rbp, rax
	cmp	byte ptr [rsp + 0xa8], 0
	je	.label_457
	mov	eax, 1
	mov	r9, qword ptr [rsp + 0x1b8]
	test	r12b, r12b
	mov	rdx, qword ptr [rsp + 0xe0]
	je	.label_459
	mov	rax, qword ptr [rsp + 0xd8]
	mov	eax, dword ptr [rax + 0xc]
.label_459:
	lea	rcx, [rsp + 0xf0]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rdx
	mov	dword ptr [rsp], eax
	mov	edi, r15d
	mov	esi, dword ptr [rsp + 0xbc]
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8, rbx
	call	extent_copy
	test	al, al
	je	.label_414
	mov	r13b, 1
	mov	ecx, 5
	jmp	.label_408
.label_410:
	cmp	byte ptr [rbx + 0x2e], 0
	je	.label_417
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r13
	mov	rdx, rcx
	call	__printf_chk
.label_417:
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 1
	cmp	byte ptr [rbx + 0x21], 0
	je	.label_427
	mov	ecx, 1
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	r8, rbx
	call	set_process_security_ctx
	xor	r13d, r13d
	test	al, al
	mov	r14d, 0
	je	.label_435
.label_405:
	mov	dword ptr [rsp + 0x98], 0
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	byte ptr [rax], 0
	mov	r13d, dword ptr [rsp + 0xbc]
	mov	r14, qword ptr [rsp + 0x2e0]
	jne	.label_407
	jmp	.label_441
.label_433:
	mov	byte ptr [rax], 1
	mov	r12d, dword ptr [rsp + 0x98]
	jmp	.label_407
.label_414:
	cmp	byte ptr [rsp + 0xf0], 0
	je	.label_421
.label_457:
	xor	eax, eax
	test	r12b, r12b
	cmove	rbx, rax
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	dword ptr [rax + 0xc], 3
	sete	al
	lea	rcx, [rsp + 0xef]
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rsp + 0xf0]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 0x10], -1
	movzx	r9d, al
	mov	edi, r15d
	mov	esi, dword ptr [rsp + 0xbc]
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8, rbx
	call	sparse_copy
	mov	ecx, 3
	test	al, al
	je	.label_454
	mov	r13b, 1
	cmp	byte ptr [rsp + 0xef], 0
	je	.label_438
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	edi, dword ptr [rsp + 0xbc]
	call	ftruncate
	test	eax, eax
	mov	ecx, 0
	jns	.label_408
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rbp, r14
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	mov	r14, rbp
	call	error
	mov	ecx, 3
	jmp	.label_408
.label_454:
	xor	r13d, r13d
	jmp	.label_408
.label_427:
	mov	r14, qword ptr [rsp + 0x2e0]
	jmp	.label_407
.label_423:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	jmp	.label_416
.label_440:
	mov	byte ptr [rsp + 0xa8], dl
	jmp	.label_418
.label_444:
	mov	byte ptr [rsp + 0xa8], dl
	jmp	.label_418
.label_438:
	xor	ecx, ecx
	jmp	.label_408
.label_421:
	mov	ecx, 3
	xor	r13d, r13d
.label_408:
	cmp	ecx, 5
	je	.label_424
	cmp	ecx, 3
	je	.label_409
	test	ecx, ecx
	jne	.label_426
.label_424:
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x1f], 0
	je	.label_428
	mov	rbp, qword ptr [rsp + 0x2e0]
	mov	rdi, rbp
	call	get_stat_atime
	mov	qword ptr [rsp + 0xf0], rax
	mov	qword ptr [rsp + 0xf8], rdx
	mov	rdi, rbp
	call	get_stat_mtime
	mov	qword ptr [rsp + 0x100], rax
	mov	qword ptr [rsp + 0x108], rdx
	lea	rdx, [rsp + 0xf0]
	mov	edi, dword ptr [rsp + 0xbc]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, rbp
	call	fdutimens
	test	eax, eax
	je	.label_428
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbx, r14
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r14
	mov	r14, rbx
	call	error
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x24], 0
	je	.label_428
	xor	r13d, r13d
	jmp	.label_409
.label_428:
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x1d], 0
	mov	rcx, qword ptr [rsp + 0x2e0]
	je	.label_450
	mov	eax, dword ptr [rcx + 0x1c]
	cmp	eax, dword ptr [rsp + 0x234]
	jne	.label_453
	mov	eax, dword ptr [rcx + 0x20]
	cmp	eax, dword ptr [rsp + 0x238]
	je	.label_450
.label_453:
	mov	rax, qword ptr [rsp + 0xb0]
	movzx	r8d, byte ptr [rax]
	lea	r9, [rsp + 0x218]
	mov	rdi, qword ptr [rsp + 0xd8]
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	edx, dword ptr [rsp + 0xbc]
	call	set_owner
	cmp	eax, -1
	je	.label_455
	test	eax, eax
	jne	.label_450
	and	dword ptr [rsp + 0xcc], 0xfffff1ff
.label_450:
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x27], 0
	je	.label_406
	cmp	byte ptr [rsp + 0x230], 0
	js	.label_406
	call	geteuid
	test	eax, eax
	je	.label_406
	mov	edx, 0x180
	mov	edi, dword ptr [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0xc0]
	call	fchmod_or_lchmod
	test	eax, eax
	jne	.label_406
	mov	edx, dword ptr [rsp + 0x98]
	not	edx
	and	edx, dword ptr [rsp + 0xa4]
	mov	edi, dword ptr [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0xc0]
	call	fchmod_or_lchmod
.label_406:
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x1e], 0
	jne	.label_412
	cmp	byte ptr [rax + 0x18], 0
	je	.label_415
.label_412:
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	esi, r15d
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	ecx, dword ptr [rsp + 0xbc]
	mov	r8d, dword ptr [rsp + 0xcc]
	call	copy_acl
	test	eax, eax
	je	.label_409
	cmp	byte ptr [rbx + 0x24], 0
	je	.label_409
	xor	r13d, r13d
	jmp	.label_409
.label_455:
	xor	r13d, r13d
	jmp	.label_409
.label_415:
	cmp	byte ptr [rax + 0x2b], 0
	je	.label_449
	mov	edx, dword ptr [rax + 0x10]
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	esi, dword ptr [rsp + 0xbc]
	call	set_acl
	test	eax, eax
	je	.label_409
	xor	r13d, r13d
	jmp	.label_409
.label_449:
	cmp	byte ptr [rax + 0x20], 0
	mov	rbp, rax
	je	.label_434
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	byte ptr [rax], 0
	je	.label_434
	call	cached_umask
	not	eax
	and	eax, 0x1b6
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	esi, dword ptr [rsp + 0xbc]
	mov	edx, eax
	call	set_acl
	test	eax, eax
	je	.label_409
	xor	r13d, r13d
	jmp	.label_409
.label_434:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_409
	call	cached_umask
	not	eax
	test	dword ptr [rsp + 0x98], eax
	je	.label_409
	mov	r12, r14
	mov	edi, dword ptr [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	edx, dword ptr [rsp + 0xa4]
	call	fchmod_or_lchmod
	test	eax, eax
	je	.label_447
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	cmp	byte ptr [rbp + 0x24], 0
	je	.label_447
	xor	r13d, r13d
.label_447:
	mov	r14, r12
.label_409:
	mov	edi, dword ptr [rsp + 0xbc]
	call	close
	test	eax, eax
	jns	.label_435
	call	__errno_location
	mov	rbp, r14
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	r14, rbp
	mov	rdx, rbx
	call	error
	jmp	.label_435
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bf0

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rbx
	xor	edi, edi
	call	setfscreatecon
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
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
	.align	32
	#Procedure 0x407c30

	.globl utimens_symlink
	.type utimens_symlink, @function
utimens_symlink:
	push	rbx
	call	lutimens
	mov	ebx, eax
	test	ebx, ebx
	je	.label_462
	call	__errno_location
	mov	rcx, rax
	xor	eax, eax
	cmp	dword ptr [rcx], 0x26
	je	.label_461
	mov	eax, ebx
.label_461:
	pop	rbx
	ret	
.label_462:
	xor	eax, eax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c60

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14, rsi
	mov	r15, rdi
	mov	ebp, dword ptr [rcx + 0x1c]
	mov	r12d, dword ptr [rcx + 0x20]
	test	r8b, r8b
	jne	.label_464
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_465
	mov	edx, dword ptr [r9 + 0x18]
	add	rcx, 0x18
	jmp	.label_467
.label_465:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_470
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_464
.label_470:
	mov	edx, dword ptr [r9 + 0x18]
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_473
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_474
.label_473:
	add	rcx, 0x18
.label_467:
	mov	eax, dword ptr [rcx]
	mov	ecx, eax
	or	ecx, 0xe00
	xor	ecx, 0x1ff
	and	ecx, edx
	test	cx, 0xfff
	je	.label_464
	and	edx, eax
	and	edx, 0x1c0
	mov	rdi, r14
	mov	esi, ebx
	call	qset_acl
	test	eax, eax
	je	.label_464
	mov	rdi, r15
	call	owner_failure_ok
	test	al, al
	jne	.label_468
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_468:
	movzx	eax, byte ptr [r15 + 0x24]
	neg	eax
	jmp	.label_469
.label_464:
	cmp	ebx, -1
	je	.label_463
	mov	edi, ebx
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_469
	call	__errno_location
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	cmp	eax, 0x16
	je	.label_472
	cmp	eax, 1
	jne	.label_466
.label_472:
	mov	r13d, dword ptr [rbp]
	mov	esi, 0xffffffff
	mov	edi, ebx
	mov	edx, r12d
	call	fchown
	mov	dword ptr [rbp], r13d
	jmp	.label_466
.label_463:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_469
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	cmp	eax, 0x16
	je	.label_475
	cmp	eax, 1
	jne	.label_466
.label_475:
	mov	ebp, dword ptr [rbx]
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
	mov	dword ptr [rbx], ebp
.label_466:
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	jne	.label_471
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	eax, 0xffffffff
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_469
.label_471:
	xor	eax, eax
.label_469:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_474:
	lea	rcx, [r15 + 0x10]
	jmp	.label_467
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407e40

	.globl writable_destination
	.type writable_destination, @function
writable_destination:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	and	esi, 0xf000
	mov	bl, 1
	cmp	esi, 0xa000
	je	.label_476
	call	can_write_any_file
	test	al, al
	jne	.label_476
	mov	esi, 2
	mov	rdi, r14
	call	euidaccess
	test	eax, eax
	sete	bl
.label_476:
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407e80

	.globl clone_file
	.type clone_file, @function
clone_file:
	mov	ecx, esi
	mov	esi, 0x40049409
	xor	eax, eax
	mov	edx, ecx
	jmp	ioctl
	.section	.text
	.align	32
	#Procedure 0x407e90

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	mov	rcx, qword ptr [rsp + 0x40]
	test	rcx, rcx
	setle	al
	movabs	rdx, 0x2000000000000000
	cmp	rcx, rdx
	seta	dl
	cmp	rcx, 0x20000
	jl	.label_477
	or	al, dl
	jne	.label_477
	movabs	rax, 0x2000000000000001
	cmp	rcx, rax
	mov	edx, 0x200
	mov	eax, 0x200
	cmovb	rax, rcx
	test	rcx, rcx
	cmovle	rax, rdx
	ret	
.label_477:
	mov	eax, 0x20000
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ef0

	.globl is_probably_sparse
	.type is_probably_sparse, @function
is_probably_sparse:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	cmp	eax, 0x8000
	jne	.label_478
	mov	rax, qword ptr [rdi + 0x30]
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x37
	add	rcx, rax
	sar	rcx, 9
	cmp	qword ptr [rdi + 0x40], rcx
	setl	al
	ret	
.label_478:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f20

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f40

	.globl extent_copy
	.type extent_copy, @function
extent_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, r9
	mov	rbp, r8
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x38], rdx
	mov	dword ptr [rsp + 0x54], esi
	mov	dword ptr [rsp + 0x58], edi
	mov	rbx, qword ptr [rsp + 0xe8]
	lea	r15, [rsp + 0x68]
	mov	rsi, r15
	call	extent_scan_init
	mov	byte ptr [rbx], 0
	xor	ebx, ebx
	cmp	dword ptr [rsp + 0xd0], 3
	cmovne	rbp, rbx
	mov	qword ptr [rsp + 0x48], rbp
	mov	al, 1
	mov	dword ptr [rsp + 0x50], eax
	xor	ebp, ebp
	xor	r13d, r13d
.label_498:
	mov	rdi, r15
	call	extent_scan_read
	test	al, al
	je	.label_486
	mov	r12d, 1
	cmp	qword ptr [rsp + 0x80], 0
	mov	ecx, 0
	mov	rsi, r14
	je	.label_488
	nop	dword ptr [rax]
.label_482:
	mov	rax, qword ptr [rsp + 0x90]
	lea	rcx, [rcx + rcx*2]
	mov	r14, qword ptr [rax + rcx*8]
	mov	r15, qword ptr [rax + rcx*8 + 8]
	lea	rax, [r15 + r14]
	cmp	rax, rsi
	jle	.label_496
	cmp	r14, rsi
	cmovg	r14, rsi
	mov	r15, rsi
	sub	r15, r14
.label_496:
	mov	rbp, r14
	sub	rbp, r13
	sub	rbp, rbx
	jne	.label_504
	mov	rbx, rsi
	jmp	.label_479
	nop	dword ptr [rax + rax]
.label_504:
	mov	rbx, rsi
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x58]
	mov	rsi, r14
	call	lseek
	test	rax, rax
	js	.label_485
	mov	eax, dword ptr [rsp + 0xd0]
	cmp	eax, 1
	jne	.label_487
	mov	edi, dword ptr [rsp + 0x54]
	mov	rsi, rbp
	call	write_zeros
	test	al, al
	je	.label_492
.label_479:
	xor	ebp, ebp
	jmp	.label_495
	nop	
.label_487:
	cmp	eax, 3
	sete	al
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x54]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rcx, rbp
	call	create_hole
	mov	bpl, 1
	test	al, al
	je	.label_501
.label_495:
	lea	rax, [rsp + 0x5f]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [rsp + 0x60]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], r15
	mov	rax, qword ptr [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp], rax
	mov	r9d, 1
	mov	edi, dword ptr [rsp + 0x58]
	mov	esi, dword ptr [rsp + 0x54]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r8, qword ptr [rsp + 0x48]
	call	sparse_copy
	test	al, al
	je	.label_501
	mov	dword ptr [rsp + 0x50], ebp
	mov	rdx, qword ptr [rsp + 0x60]
	lea	rbp, [rdx + r14]
	mov	al, byte ptr [rsp + 0x5f]
	mov	rsi, rbx
	cmp	rbp, rsi
	je	.label_503
	mov	ecx, r12d
	inc	r12d
	cmp	rcx, qword ptr [rsp + 0x80]
	mov	r13, r14
	mov	rbx, r15
	jb	.label_482
	test	rdx, rdx
	je	.label_480
	mov	dword ptr [rsp + 0x50], eax
	jmp	.label_480
.label_503:
	test	rdx, rdx
	je	.label_491
	mov	dword ptr [rsp + 0x50], eax
.label_491:
	mov	byte ptr [rsp + 0x89], 1
.label_480:
	mov	r13, r14
	mov	rbx, r15
.label_488:
	mov	r14, rsi
	lea	r15, [rsp + 0x68]
	mov	rdi, r15
	call	extent_scan_free
	cmp	byte ptr [rsp + 0x89], 0
	je	.label_498
	jmp	.label_494
.label_485:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xd8]
	call	quotearg_style
	jmp	.label_490
.label_492:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xe0]
	call	quotearg_n_style_colon
.label_490:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_501:
	lea	rdi, [rsp + 0x68]
	call	extent_scan_free
	xor	r14d, r14d
.label_481:
	mov	al, r14b
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_486:
	cmp	byte ptr [rsp + 0x89], 0
	je	.label_499
.label_494:
	mov	rcx, r14
	cmp	rbp, rcx
	jl	.label_500
	mov	eax, dword ptr [rsp + 0x50]
	and	al, 1
	je	.label_489
.label_500:
	mov	eax, dword ptr [rsp + 0xd0]
	cmp	eax, 1
	jne	.label_502
	sub	rcx, rbp
	mov	edi, dword ptr [rsp + 0x54]
	mov	rsi, rcx
	call	write_zeros
	mov	r14b, 1
	test	al, al
	jne	.label_481
	jmp	.label_483
.label_499:
	cmp	byte ptr [rsp + 0x88], 0
	je	.label_484
	mov	rax, qword ptr [rsp + 0xe8]
	mov	byte ptr [rax], 1
	xor	r14d, r14d
	jmp	.label_481
.label_502:
	mov	edi, dword ptr [rsp + 0x54]
	mov	rsi, rcx
	mov	rbx, rcx
	call	ftruncate
	mov	rcx, rbx
	test	eax, eax
	je	.label_489
.label_483:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	jmp	.label_497
.label_489:
	cmp	dword ptr [rsp + 0xd0], 3
	mov	r14b, 1
	jne	.label_481
	cmp	rbp, rcx
	jge	.label_481
	sub	rcx, rbp
	mov	edi, dword ptr [rsp + 0x54]
	mov	rsi, rbp
	mov	rdx, rcx
	call	punch_hole
	test	eax, eax
	jns	.label_481
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
.label_497:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xe0]
	call	quotearg_style
	jmp	.label_493
.label_484:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xd8]
	call	quotearg_n_style_colon
.label_493:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_481
	.section	.text
	.align	32
	#Procedure 0x408310

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	dword ptr [rsp + 0x24], r9d
	mov	r15, r8
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x10], rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x50], r14
	mov	dword ptr [rsp + 0x34], esi
	mov	r13d, edi
	mov	dword ptr [rsp + 0x4c], r13d
	mov	rax, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0
	mov	qword ptr [rdx], 0
	test	r15, r15
	mov	rax, rcx
	cmovne	rax, r15
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_508
.label_512:
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x58], rsi
	mov	rax, qword ptr [rsp + 0xc0]
	mov	byte ptr [rax], r8b
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x60]
	nop	word ptr cs:[rax + rax]
.label_508:
	mov	qword ptr [rsp + 0x60], rsi
	cmp	rsi, rcx
	mov	r12, rcx
	cmovb	r12, rsi
	nop	
.label_524:
	test	rsi, rsi
	je	.label_505
	mov	edi, r13d
	mov	rsi, r14
	mov	rdx, r12
	call	read
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_521
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 4
	mov	rsi, qword ptr [rsp + 0x60]
	je	.label_524
	jmp	.label_525
	nop	word ptr cs:[rax + rax]
.label_521:
	je	.label_505
	sub	qword ptr [rsp + 0x60], rbx
	mov	rax, qword ptr [rsp + 0xb8]
	add	qword ptr [rax], rbx
	mov	rsi, qword ptr [rsp + 0x58]
	mov	r8b, sil
	and	r8b, 1
	mov	qword ptr [rsp + 0x38], r14
	mov	rbp, r14
	mov	r12, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_509:
	mov	r9b, r8b
	cmp	r12, rbx
	cmovae	r12, rbx
	test	r15, r15
	je	.label_520
	test	r12, r12
	je	.label_520
	mov	r14, rdi
	mov	rdi, rbp
	mov	rsi, r12
	mov	r13b, r9b
	call	is_nul
	mov	r9b, r13b
	mov	rdi, r14
	mov	sil, al
.label_520:
	mov	r8b, sil
	and	r8b, 1
	movzx	eax, r9b
	movzx	ecx, r8b
	cmp	ecx, eax
	setne	al
	test	rdi, rdi
	setne	r13b
	cmp	rbx, r12
	sete	dl
	test	cl, cl
	sete	cl
	and	cl, dl
	test	r12, r12
	sete	r14b
	or	r14b, cl
	and	r13b, al
	jne	.label_513
	test	r14b, r14b
	jne	.label_513
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	cmp	rdi, rax
	mov	r14, qword ptr [rsp + 0x50]
	mov	r13d, dword ptr [rsp + 0x4c]
	ja	.label_515
	add	rdi, r12
	jmp	.label_518
	nop	word ptr cs:[rax + rax]
.label_513:
	mov	byte ptr [rsp + 0x40], r8b
	mov	qword ptr [rsp + 0x58], rsi
	test	r13b, 1
	mov	r15, r12
	mov	eax, 0
	cmovne	r15, rax
	add	r15, rdi
	test	r9b, r9b
	je	.label_523
	mov	eax, dword ptr [rsp + 0x24]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rcx, r15
	call	create_hole
	test	al, al
	jne	.label_510
	jmp	.label_511
.label_523:
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, r15
	call	full_write
	cmp	rax, r15
	jne	.label_517
.label_510:
	test	r14b, r14b
	mov	rsi, qword ptr [rsp + 0x58]
	mov	r8b, byte ptr [rsp + 0x40]
	je	.label_506
	test	r12, r12
	cmove	rbx, r12
	and	r13b, 1
	mov	rax, r12
	mov	ecx, 0
	cmovne	rax, rcx
	test	r13b, r13b
	cmove	r12, rcx
	mov	rdi, r12
	mov	r12, rax
	jmp	.label_522
	nop	word ptr cs:[rax + rax]
.label_506:
	mov	rdi, r12
.label_522:
	mov	qword ptr [rsp + 0x38], rbp
	mov	r15, qword ptr [rsp + 0x28]
	mov	r14, qword ptr [rsp + 0x50]
	mov	r13d, dword ptr [rsp + 0x4c]
.label_518:
	add	rbp, r12
	sub	rbx, r12
	jne	.label_509
	jmp	.label_512
.label_505:
	mov	rax, qword ptr [rsp + 0x58]
	test	al, 1
	je	.label_514
	mov	eax, dword ptr [rsp + 0x24]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rcx, qword ptr [rsp + 0x40]
	call	create_hole
	test	al, al
	je	.label_519
.label_514:
	mov	r14b, 1
	jmp	.label_507
.label_525:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_516
.label_519:
	xor	r14d, r14d
	jmp	.label_507
.label_515:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_516:
	mov	rdx, rbx
	call	error
.label_507:
	mov	al, r14b
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_511:
	xor	r14d, r14d
	jmp	.label_507
.label_517:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_507
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086b0

	.globl fchmod_or_lchmod
	.type fchmod_or_lchmod, @function
fchmod_or_lchmod:
	test	edi, edi
	js	.label_526
	mov	esi, edx
	jmp	fchmod
.label_526:
	mov	rdi, rsi
	mov	esi, edx
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086d0

	.globl extent_scan_free
	.type extent_scan_free, @function
extent_scan_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	qword ptr [rbx + 0x18], 0
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4086f0

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rcx
	mov	r12d, edx
	mov	r14, rsi
	mov	ebp, edi
	mov	edx, 1
	mov	rsi, rbx
	call	lseek
	test	rax, rax
	js	.label_527
	mov	r15b, 1
	test	r12b, r12b
	je	.label_528
	sub	rax, rbx
	mov	edi, ebp
	mov	rsi, rax
	mov	rdx, rbx
	call	punch_hole
	test	eax, eax
	jns	.label_528
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	jmp	.label_529
.label_527:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
.label_529:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_528:
	mov	al, r15b
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408790

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14d, edi
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_530
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	test	rax, rax
	jne	.label_530
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
	nop	word ptr cs:[rax + rax]
.label_530:
	mov	al, 1
	test	rbx, rbx
	je	.label_531
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	and	al, 1
	mov	eax, 0x400
	mov	ebp, 0x20000
	cmovne	rbp, rax
	cmp	rbp, rbx
	cmovae	rbp, rbx
	mov	rsi,  qword ptr [word ptr [rip + write_zeros.zeros]]
	mov	edi, r14d
	mov	rdx, rbp
	call	full_write
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, rbp
	mov	edx, 0
	cmove	rdx, rbp
	sub	rbx, rdx
	cmp	rcx, rbp
	je	.label_530
.label_531:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408850

	.globl punch_hole
	.type punch_hole, @function
punch_hole:
	push	rbp
	push	rbx
	push	rax
	mov	rax, rdx
	mov	rcx, rsi
	mov	esi, 3
	mov	rdx, rcx
	mov	rcx, rax
	call	fallocate
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_532
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	is_ENOTSUP
	xor	ecx, ecx
	cmp	ebp, 0x26
	cmove	ebx, ecx
	test	al, al
	cmovne	ebx, ecx
.label_532:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088a0

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	cmp	edi, 0x5f
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088b0

	.globl is_nul
	.type is_nul, @function
is_nul:
	mov	rcx, rsi
	mov	al, 1
	test	rcx, rcx
	je	.label_533
	dec	rcx
	mov	rsi, rdi
.label_535:
	cmp	byte ptr [rsi], 0
	jne	.label_534
	test	rcx, rcx
	je	.label_533
	inc	rsi
	mov	dl, cl
	dec	rcx
	test	dl, 0xf
	jne	.label_535
	push	rax
	inc	rcx
	mov	rdx, rcx
	call	memcmp
	test	eax, eax
	sete	al
	add	rsp, 8
.label_533:
	ret	
.label_534:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4088f0

	.globl owner_failure_ok
	.type owner_failure_ok, @function
owner_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_536
	cmp	eax, 1
	jne	.label_537
.label_536:
	cmp	byte ptr [rbx + 0x1b], 0
	sete	al
	pop	rbx
	ret	
.label_537:
	xor	eax, eax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408920

	.globl forget_created
	.type forget_created, @function
forget_created:
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], 0
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_538
	mov	rdi, rax
	call	src_to_dest_free
.label_538:
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408960

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408980

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	call	hash_lookup
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_539
	mov	rax, qword ptr [rcx + 0x10]
.label_539:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	32
	#Procedure 0x4089b0

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	qword ptr [rbx + 8], r14
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	mov	rsi, rbx
	call	hash_insert
	mov	r14, rax
	test	r14, r14
	je	.label_540
	xor	eax, eax
	cmp	r14, rbx
	je	.label_541
	mov	rdi, rbx
	call	src_to_dest_free
	mov	rax, qword ptr [r14 + 0x10]
.label_541:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_540:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a20

	.globl hash_init
	.type hash_init, @function
hash_init:
	push	rax
	mov	edi, 0x67
	xor	esi, esi
	mov	edx, OFFSET FLAT:src_to_dest_hash
	mov	ecx, OFFSET FLAT:src_to_dest_compare
	mov	r8d, OFFSET FLAT:src_to_dest_free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + src_to_dest]],  rax
	test	rax, rax
	je	.label_542
	pop	rax
	ret	
.label_542:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408a50

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a60

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	jne	.label_543
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	sete	al
	ret	
.label_543:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a80
	.globl forget_all
	.type forget_all, @function
forget_all:

	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	jmp	hash_free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a90

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	mov	dword ptr [rsi], edi
	mov	qword ptr [rsi + 0x18], 0
	mov	qword ptr [rsi + 0x28], 0
	mov	qword ptr [rsi + 8], 0
	mov	byte ptr [rsi + 0x20], 0
	mov	byte ptr [rsi + 0x21], 0
	mov	dword ptr [rsi + 0x10], 1
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ac0

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	r12, rdi
	mov	r14, qword ptr [r12 + 0x28]
	movabs	r15, 0x7fffffffffffffff
	xor	r13d, r13d
.label_555:
	xor	esi, esi
	mov	edx, 0x1000
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	memset
	mov	rax, qword ptr [r12 + 8]
	mov	qword ptr [rsp + 8], rax
	mov	ecx, dword ptr [r12 + 0x10]
	mov	dword ptr [rsp + 0x18], ecx
	mov	dword ptr [rsp + 0x20], 0x48
	not	rax
	mov	qword ptr [rsp + 0x10], rax
	mov	edi, dword ptr [r12]
	mov	esi, 0xc020660b
	xor	eax, eax
	mov	rdx, rbx
	call	ioctl
	test	eax, eax
	js	.label_558
	mov	eax, dword ptr [rsp + 0x1c]
	test	rax, rax
	je	.label_561
	mov	rsi, qword ptr [r12 + 0x18]
	mov	rcx, rax
	not	rcx
	cmp	rsi, rcx
	ja	.label_553
	add	rsi, rax
	mov	qword ptr [r12 + 0x18], rsi
	mov	rdi, qword ptr [r12 + 0x28]
	sub	r14, rdi
	mov	edx, 0x18
	call	xnrealloc
	mov	qword ptr [r12 + 0x28], rax
	add	r14, rax
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_559
	xor	eax, eax
	mov	r8d, dword ptr [rsp + 0x1c]
	nop	dword ptr [rax]
.label_556:
	mov	ecx, eax
	imul	rdi, rcx, 0x38
	mov	rbx, qword ptr [rsp + rdi + 0x28]
	mov	rcx, qword ptr [rsp + rdi + 0x38]
	mov	rdx, r15
	sub	rdx, rcx
	cmp	rbx, rdx
	ja	.label_549
	lea	rsi, [rsp + rdi + 0x28]
	lea	r9, [rsp + rdi + 0x38]
	test	r13d, r13d
	je	.label_557
	mov	ebp, dword ptr [rsp + rdi + 0x50]
	and	ebp, 0xfffffffe
	cmp	dword ptr [r14 + 0x10], ebp
	jne	.label_547
	mov	rbp, qword ptr [r14 + 8]
	mov	rdx, qword ptr [r14]
	add	rdx, rbp
	cmp	rdx, rbx
	jne	.label_547
	lea	rdx, [rsp + rdi + 0x50]
	add	rbp, rcx
	mov	qword ptr [r14 + 8], rbp
	mov	ecx, dword ptr [rdx]
	mov	dword ptr [r14 + 0x10], ecx
	jmp	.label_551
	nop	word ptr cs:[rax + rax]
.label_547:
	mov	rcx, qword ptr [r14 + 8]
	add	rcx, qword ptr [r14]
	cmp	rcx, qword ptr [rsi]
	jbe	.label_554
	mov	rcx, qword ptr [r14 + 8]
	add	rcx, qword ptr [r14]
	jmp	.label_548
	nop	word ptr cs:[rax + rax]
.label_557:
	mov	rcx, qword ptr [r12 + 8]
	cmp	rcx, qword ptr [rsi]
	jbe	.label_554
	mov	rcx, qword ptr [r12 + 8]
.label_548:
	mov	rdi, rcx
	sub	rdi, qword ptr [rsi]
	cmp	rdi, qword ptr [r9]
	jb	.label_552
	mov	qword ptr [rsi], rcx
	sub	qword ptr [r9], rdi
	dec	eax
	jmp	.label_551
	nop	dword ptr [rax + rax]
.label_554:
	mov	rcx, qword ptr [r12 + 0x28]
	mov	edx, r13d
	lea	rdx, [rdx + rdx*2]
	lea	r14, [rcx + rdx*8]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rcx + rdx*8], rsi
	mov	rsi, qword ptr [r9]
	mov	qword ptr [rcx + rdx*8 + 8], rsi
	mov	esi, dword ptr [rsp + rdi + 0x50]
	mov	dword ptr [rcx + rdx*8 + 0x10], esi
	inc	r13d
.label_551:
	inc	eax
	cmp	eax, r8d
	jb	.label_556
.label_559:
	test	byte ptr [r14 + 0x10], 1
	je	.label_546
	mov	byte ptr [r12 + 0x21], 1
.label_546:
	cmp	r13d, 0x49
	jb	.label_550
	cmp	byte ptr [r12 + 0x21], 0
	jne	.label_550
	mov	rax, qword ptr [r12 + 0x28]
	dec	r13d
	lea	rcx, [r13 + r13*2]
	lea	r14, [rax + rcx*8 - 0x18]
	nop	word ptr cs:[rax + rax]
.label_550:
	mov	eax, r13d
	mov	qword ptr [r12 + 0x18], rax
	cmp	byte ptr [r12 + 0x21], 0
	jne	.label_544
	mov	rax, qword ptr [r14 + 8]
	add	rax, qword ptr [r14]
	mov	qword ptr [r12 + 8], rax
	mov	al, 1
	cmp	r13d, 0x48
	jb	.label_555
	jmp	.label_545
.label_552:
	cmp	qword ptr [r12 + 8], 0
	je	.label_560
	xor	eax, eax
	jmp	.label_545
.label_558:
	cmp	qword ptr [r12 + 8], 0
	je	.label_560
	xor	eax, eax
	jmp	.label_545
.label_560:
	mov	byte ptr [r12 + 0x20], 1
	xor	eax, eax
	jmp	.label_545
.label_561:
	mov	byte ptr [r12 + 0x21], 1
	cmp	qword ptr [r12 + 8], 0
	setne	al
	jmp	.label_545
.label_544:
	mov	al, 1
.label_545:
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_549:
	mov	edi, OFFSET FLAT:.str.2_3
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_553:
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408d70

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	ebx, r9d
	mov	r12d, r8d
	mov	qword ptr [rsp], rcx
	mov	r13d, edx
	mov	r14, rsi
	mov	r15d, edi
	mov	ebp, dword ptr [rsp + 0x160]
	test	ebp, ebp
	jns	.label_565
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r13d
	mov	rcx, qword ptr [rsp]
	mov	r8d, r12d
	call	linkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_562
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_565:
	cmp	ebp, 0x11
	jne	.label_562
	xor	bl, 1
	jne	.label_562
	lea	rbp, [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbp
	call	samedir_template
	mov	rbx, rax
	test	rbx, rbx
	je	.label_566
	mov	dword ptr [rsp + 8], r15d
	mov	qword ptr [rsp + 0x10], r14
	mov	dword ptr [rsp + 0x18], r13d
	mov	dword ptr [rsp + 0x1c], r12d
	lea	rdx, [rsp + 8]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, rbx
	call	try_tempname_len
	mov	r15, rbp
	test	eax, eax
	je	.label_564
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_567
.label_566:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_562
.label_564:
	mov	edi, r13d
	mov	rsi, rbx
	mov	edx, r13d
	mov	rcx, qword ptr [rsp]
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_563
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_563:
	xor	edx, edx
	mov	edi, r13d
	mov	rsi, rbx
	call	unlinkat
.label_567:
	cmp	rbx, r15
	je	.label_562
	mov	rdi, rbx
	call	free
.label_562:
	mov	eax, ebp
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e90

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	last_component
	mov	rbx, rax
	sub	rbx, r15
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jb	.label_568
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_569
.label_568:
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	mov	rax, r14
.label_569:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f00

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	edx, dword ptr [rsi + 0x10]
	mov	r8d, dword ptr [rsi + 0x14]
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f20

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x118
	mov	ebp, r8d
	mov	ebx, ecx
	mov	r13, rdx
	mov	r15d, esi
	mov	r14, rdi
	test	ebp, ebp
	jns	.label_573
	mov	rdi, r14
	mov	esi, r15d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_570
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_573:
	cmp	ebp, 0x11
	jne	.label_570
	xor	bl, 1
	jne	.label_570
	lea	rbx, [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbx
	call	samedir_template
	mov	r12, rax
	test	r12, r12
	je	.label_571
	mov	qword ptr [rsp], r14
	mov	dword ptr [rsp + 8], r15d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_574
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_572
.label_571:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_570
.label_574:
	mov	edi, r15d
	mov	rsi, r12
	mov	edx, r15d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_572
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r15d
	mov	rsi, r12
	call	unlinkat
.label_572:
	cmp	r12, rbx
	je	.label_570
	mov	rdi, r12
	call	free
.label_570:
	mov	eax, ebp
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409020

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	mov	rdi, qword ptr [rsi]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x409040

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	qcopy_acl
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_576
	cmp	ebp, -2
	jne	.label_577
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_575
.label_576:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
.label_575:
	call	error
.label_577:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4090d0

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	qset_acl
	mov	ebx, eax
	test	ebx, ebx
	je	.label_578
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_578:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409130

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	rbx, rbx
	je	.label_583
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_585:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_579
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_584
.label_579:
	cmp	r13, r12
	jb	.label_587
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_580
	add	r12, r12
	jmp	.label_586
	nop	word ptr cs:[rax + rax]
.label_580:
	cmp	r12, r15
	mov	r12, r15
	jae	.label_582
.label_586:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_585
	jmp	.label_583
.label_587:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_583
.label_582:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_581
.label_584:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_581:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_583:
	mov	rax, qword ptr [rsp + 8]
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
	.align	32
	#Procedure 0x409240

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_588
	mov	edi, OFFSET FLAT:.str_7
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	test	rbx, rbx
	je	.label_589
.label_588:
	mov	eax, OFFSET FLAT:.str.1_4
	cmp	byte ptr [rbx], 0
	je	.label_589
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	cmove	rax, rbx
.label_589:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409290

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0x34], ecx
	mov	ebx, edx
	mov	r13, rsi
	mov	dword ptr [rsp + 0x1c], edi
	mov	rdi, r13
	call	last_component
	mov	rbp, rax
	sub	rbp, r13
	mov	rdi, rax
	call	strlen
	mov	r12, rax
	add	r12, rbp
	cmp	qword ptr [word ptr [rip + simple_backup_suffix]],  0
	jne	.label_590
	xor	edi, edi
	call	set_simple_backup_suffix
.label_590:
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	call	strlen
	inc	rax
	mov	qword ptr [rsp + 0x20], rax
	cmp	rax, 9
	mov	ecx, 9
	cmovae	rcx, rax
	lea	rdi, [r12 + rcx + 1]
	mov	qword ptr [rsp + 0x10], rdi
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	xor	eax, eax
	test	rcx, rcx
	je	.label_591
	mov	qword ptr [rsp + 0x48], 0
	mov	dword ptr [rsp + 0x44], 0xffffffff
	mov	qword ptr [rsp + 0x38], 0
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x28], rax
	nop	
.label_593:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	cmp	ebx, 1
	jne	.label_592
	mov	rdi, qword ptr [rsp + 0x50]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x20]
	call	memcpy
	mov	ebx, 1
	jmp	.label_598
	nop	word ptr [rax + rax]
.label_592:
	lea	rax, [rsp + 0x44]
	mov	qword ptr [rsp], rax
	mov	edi, dword ptr [rsp + 0x1c]
	lea	rsi, [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, r12
	mov	r8, rbp
	lea	r9, [rsp + 0x48]
	call	numbered_backup
	cmp	eax, 1
	je	.label_595
	cmp	eax, 2
	je	.label_597
	cmp	eax, 3
	jne	.label_598
	jmp	.label_599
.label_597:
	cmp	ebx, 2
	jne	.label_595
	mov	rdi, qword ptr [rsp + 0x50]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x20]
	call	memcpy
	mov	ebx, 1
.label_595:
	mov	rdi, qword ptr [rsp + 0x50]
	mov	edx, dword ptr [rsp + 0x44]
	mov	rsi, r12
	lea	rcx, [rsp + 0x38]
	call	check_extension
.label_598:
	mov	eax, dword ptr [rsp + 0x34]
	test	al, al
	je	.label_594
	cmp	dword ptr [rsp + 0x44], 0
	jns	.label_601
	mov	dword ptr [rsp + 0x44], 0xffffff9c
	xor	ebp, ebp
.label_601:
	cmp	ebx, 1
	setne	al
	movzx	r8d, al
	mov	edx, dword ptr [rsp + 0x44]
	mov	rcx, qword ptr [rsp + 0x50]
	add	rcx, rbp
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	renameatu
	test	eax, eax
	je	.label_594
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	cmp	r14d, 0x11
	je	.label_593
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_600
	call	closedir
.label_600:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	dword ptr [r15], r14d
	xor	eax, eax
	jmp	.label_591
.label_594:
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_596
	call	closedir
.label_596:
	mov	rax, qword ptr [rsp + 0x50]
	jmp	.label_591
.label_599:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
.label_591:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094b0

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, r9
	mov	qword ptr [rsp + 0x48], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x28], rsi
	mov	ebx, edi
	mov	r12, qword ptr [r15]
	mov	r14, qword ptr [rsi]
	lea	rbp, [r14 + r8]
	mov	rdi, rbp
	call	base_len
	mov	r13, rax
	mov	qword ptr [rsp + 0x38], r13
	test	r12, r12
	je	.label_615
	mov	rdi, r12
	call	rewinddir
	jmp	.label_621
.label_615:
	mov	qword ptr [rsp + 0x38], r13
	mov	rcx, qword ptr [rsp + 0x90]
	mov	r13w, word ptr [rbp]
	mov	word ptr [rbp], 0x2e
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r14
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_607
	mov	word ptr [rbp], r13w
	mov	r13, qword ptr [rsp + 0x38]
	mov	byte ptr [rbp + r13 + 4], 0
	mov	dword ptr [rbp + r13], 0x7e317e2e
	mov	qword ptr [r15], r12
.label_621:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	je	.label_613
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x50], rax
	lea	rax, [r13 + 2]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax + 4]
	mov	qword ptr [rsp], rax
	lea	rax, [r13 + 0x17]
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, 2
	mov	qword ptr [rsp + 0x30], rax
	mov	eax, 1
	mov	qword ptr [rsp + 8], rax
	jmp	.label_614
.label_619:
	mov	r13d, 1
.label_617:
	movzx	eax, al
	cmp	eax, 0x7e
	jne	.label_608
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbp, [rbp + rax + 0x15]
	cmp	byte ptr [r13 + rbp + 1], 0
	jne	.label_608
	cmp	qword ptr [rsp + 8], r13
	jb	.label_612
	jne	.label_608
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbp
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	jle	.label_612
.label_608:
	mov	r15, r14
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_605
.label_612:
	movzx	ebx, bl
	lea	rcx, [rbx + r13]
	mov	qword ptr [rsp + 8], rcx
	mov	rax, qword ptr [rsp]
	lea	rdx, [rax + rcx]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, rdx
	jae	.label_618
	mov	rax, rdx
	shr	rax, 0x3e
	sete	cl
	shl	rdx, cl
	mov	qword ptr [rsp + 0x18], rdx
	mov	rdi, r14
	mov	rsi, rdx
	call	realloc
	mov	r15, rax
	test	r15, r15
	mov	rax, qword ptr [rsp + 0x18]
	jne	.label_609
	jmp	.label_610
.label_618:
	mov	r15, r14
.label_609:
	mov	qword ptr [rsp + 0x18], rax
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [r15 + rcx]
	mov	byte ptr [r15 + rcx], 0x2e
	mov	rdx, rbx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rbx, [rax + rdx]
	mov	word ptr [r15 + rcx + 1], 0x307e
	lea	rdi, [rdx + rax + 2]
	lea	rdx, [r13 + 2]
	mov	rsi, rbp
	call	memcpy
	lea	rax, [r13 + rbx + 1]
	movzx	ecx, byte ptr [r13 + rbx + 1]
	jmp	.label_620
	nop	word ptr cs:[rax + rax]
.label_603:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_620:
	cmp	ecx, 0x39
	je	.label_603
	inc	cl
	mov	byte ptr [rax], cl
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_605
	nop	dword ptr [rax]
.label_614:
	lea	rbx, [rbp + 0x13]
	mov	rdi, rbx
	call	strlen
	cmp	rax, qword ptr [rsp + 0x50]
	jb	.label_611
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [r14 + rax]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	jne	.label_611
	mov	al, byte ptr [rbp + r13 + 0x15]
	mov	cl, al
	add	cl, 0xcf
	movzx	ecx, cl
	cmp	ecx, 8
	ja	.label_611
	lea	rcx, [rbp + r13 + 0x13]
	movzx	eax, al
	cmp	eax, 0x39
	sete	bl
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_619
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rcx, [rbp + rcx]
	xor	r13d, r13d
.label_606:
	movzx	eax, al
	cmp	eax, 0x39
	sete	al
	and	bl, al
	movsx	eax, byte ptr [rcx + r13]
	mov	edx, eax
	add	edx, -0x30
	inc	r13
	cmp	edx, 0xa
	jb	.label_606
	inc	r13
	jmp	.label_617
	nop	word ptr cs:[rax + rax]
.label_611:
	mov	r15, r14
.label_605:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	mov	r14, r15
	jne	.label_614
	jmp	.label_616
.label_613:
	mov	eax, 2
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, r14
.label_616:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	mov	rcx, qword ptr [rsp + 0x30]
.label_602:
	mov	eax, ecx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_607:
	call	__errno_location
	mov	ecx, 3
	cmp	dword ptr [rax], 0xc
	je	.label_604
	mov	ecx, 2
.label_604:
	mov	word ptr [rbp], r13w
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rbp + rax + 4], 0
	mov	dword ptr [rbp + rax], 0x7e317e2e
	jmp	.label_602
.label_610:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r14
	mov	ecx, 3
	jmp	.label_602
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097e0

	.globl check_extension
	.type check_extension, @function
check_extension:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rcx
	mov	ebp, edx
	mov	r15, rsi
	mov	rbx, rdi
	call	last_component
	mov	r14, rax
	mov	rdi, r14
	call	base_len
	mov	r13, rax
	mov	eax, 0xff
	cmp	r13, 0xf
	jb	.label_623
	cmp	qword ptr [r12], 0
	jne	.label_626
	test	ebp, ebp
	js	.label_622
	call	__errno_location
	mov	qword ptr [rsp], rax
	mov	dword ptr [rax], 0
	mov	esi, 3
	mov	edi, ebp
	call	fpathconf
	mov	rcx, qword ptr [rsp]
	cmp	dword ptr [rcx], 1
	sbb	rax, 0
	jmp	.label_625
.label_622:
	mov	ax, word ptr [r14]
	mov	word ptr [rsp], ax
	mov	word ptr [r14], 0x2e
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	esi, 3
	mov	rdi, rbx
	call	pathconf
	cmp	dword ptr [rbp], 1
	sbb	rax, 0
	mov	cx, word ptr [rsp]
	mov	word ptr [r14], cx
.label_625:
	cmp	rax, -1
	mov	ecx, 0xe
	mov	rdx, -1
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	qword ptr [r12], rdx
.label_626:
	mov	rax, qword ptr [r12]
.label_623:
	cmp	rax, r13
	jae	.label_624
	add	rbx, r15
	sub	rbx, r14
	cmp	rax, rbx
	lea	rax, [rax - 1]
	cmova	rax, rbx
	mov	word ptr [r14 + rax], 0x7e
.label_624:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098e0

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	mov	ecx, 1
	jmp	backupfile_internal
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098f0
	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:

	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_627
	pop	rcx
	ret	
.label_627:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409910

	.globl get_version
	.type get_version, @function
get_version:
	mov	eax, 2
	test	rsi, rsi
	je	.label_628
	cmp	byte ptr [rsi], 0
	je	.label_628
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_628:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409950

	.globl xget_version
	.type xget_version, @function
xget_version:
	test	rsi, rsi
	je	.label_629
	cmp	byte ptr [rsi], 0
	je	.label_629
	jmp	get_version
.label_629:
	push	rax
	mov	edi, OFFSET FLAT:.str.1_5
	call	getenv
	mov	edi, OFFSET FLAT:.str_8
	mov	rsi, rax
	pop	rax
	jmp	get_version
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409980

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	mov	r8, rdx
	test	rdi, rdi
	je	.label_630
	test	rsi, rsi
	je	.label_632
	mov	rax, rdi
	mov	rdx, rsi
	nop	word ptr cs:[rax + rax]
.label_631:
	mov	rcx, rdx
	xor	edx, edx
	div	rcx
	test	rdx, rdx
	mov	rax, rcx
	jne	.label_631
	xor	edx, edx
	mov	rax, rdi
	div	rcx
	mov	r9, rax
	mov	rcx, r9
	imul	rcx, rsi
	cmp	rcx, r8
	ja	.label_632
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	cmp	rax, r9
	je	.label_633
	jmp	.label_632
.label_630:
	test	rsi, rsi
	mov	edi, 0x2000
	cmovne	rdi, rsi
.label_632:
	cmp	rdi, r8
	cmovbe	r8, rdi
	mov	rcx, r8
.label_633:
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099f0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a00

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_634
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_634
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_634:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_635
	test	eax, eax
	jne	.label_635
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_635:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_9
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_637
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_636
.label_637:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_6
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_636:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ad0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ae0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409af0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_638
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_640
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_640
.label_638:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_639
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_640:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_10
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_641
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_639:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_641:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_6
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x409bb0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_642
	pop	rcx
	ret	
.label_642:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409bd0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	
.label_643:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_644
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_643
.label_644:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409c10

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_645
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_646
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_646:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_645:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c70

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_647:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, 0x2f
	je	.label_647
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_650
	nop	word ptr cs:[rax + rax]
.label_649:
	inc	rax
	mov	cl, dl
.label_650:
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	je	.label_649
	test	sil, sil
	je	.label_651
	mov	dl, cl
	and	dl, 1
	je	.label_648
	xor	ecx, ecx
.label_648:
	test	dl, dl
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_649
.label_651:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409cd0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_652:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_653
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_652
.label_653:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409d00

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_654
	mov	rbx, rax
.label_654:
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	setne	cl
	mov	byte ptr [rbx + rax], 0
	mov	al, cl
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d30

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d40
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_655
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_655:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d60

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_656
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_656:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_659
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_658
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_657
.label_658:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_657:
	mov	edx, dword ptr [rax]
.label_659:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e40

	.globl record_file
	.type record_file, @function
record_file:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_660
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_661
	cmp	rax, rbx
	je	.label_660
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_660:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_661:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ec0

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_662
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	ret	
.label_662:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x409f00

	.globl file_type
	.type file_type, @function
file_type:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	cmp	eax, 0x5fff
	jle	.label_663
	cmp	eax, 0x9fff
	jg	.label_668
	cmp	eax, 0x6000
	je	.label_670
	cmp	eax, 0x8000
	jne	.label_669
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_665
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 5
	jmp	dcgettext
.label_663:
	cmp	eax, 0x1000
	je	.label_664
	cmp	eax, 0x2000
	je	.label_667
	cmp	eax, 0x4000
	jne	.label_669
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
	mov	edx, 5
	jmp	dcgettext
.label_668:
	cmp	eax, 0xa000
	je	.label_666
	cmp	eax, 0xc000
	jne	.label_669
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_2
	mov	edx, 5
	jmp	dcgettext
.label_670:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	jmp	dcgettext
.label_664:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	jmp	dcgettext
.label_667:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	mov	edx, 5
	jmp	dcgettext
.label_666:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	jmp	dcgettext
.label_669:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
	mov	edx, 5
	jmp	dcgettext
.label_665:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_11
	mov	edx, 5
	jmp	dcgettext
	nop	
	.section	.text
	.align	32
	#Procedure 0x409ff0

	.globl strmode
	.type strmode, @function
strmode:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	call	ftypelet
	mov	byte ptr [r14], al
	mov	al, bh
	test	al, 1
	mov	sil, 0x72
	mov	cl, 0x72
	jne	.label_678
	mov	cl, 0x2d
.label_678:
	mov	byte ptr [r14 + 1], cl
	mov	cl, bl
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [r14 + 2], cl
	mov	ecx, ebx
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_673
	mov	cl, 0x2d
.label_673:
	test	al, 8
	jne	.label_680
	mov	dl, cl
.label_680:
	mov	byte ptr [r14 + 3], dl
	test	bl, 0x20
	mov	cl, 0x72
	jne	.label_681
	mov	cl, 0x2d
.label_681:
	mov	byte ptr [r14 + 4], cl
	test	bl, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_672
	mov	cl, 0x2d
.label_672:
	mov	byte ptr [r14 + 5], cl
	mov	ecx, ebx
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_675
	mov	cl, 0x2d
.label_675:
	test	al, 4
	jne	.label_677
	mov	dil, cl
.label_677:
	mov	byte ptr [r14 + 6], dil
	test	bl, 4
	jne	.label_679
	mov	sil, 0x2d
.label_679:
	mov	byte ptr [r14 + 7], sil
	test	bl, 2
	jne	.label_671
	mov	dl, 0x2d
.label_671:
	mov	byte ptr [r14 + 8], dl
	and	ebx, 1
	jne	.label_674
	mov	r8b, 0x2d
.label_674:
	test	al, 2
	je	.label_676
	shl	ebx, 5
	or	ebx, 0x54
	mov	r8b, bl
.label_676:
	mov	byte ptr [r14 + 9], r8b
	mov	byte ptr [r14 + 0xa], 0x20
	mov	byte ptr [r14 + 0xb], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a0c0

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	and	edi, 0xf000
	cmp	edi, 0x5fff
	jle	.label_682
	cmp	edi, 0x9fff
	jg	.label_685
	cmp	edi, 0x6000
	je	.label_689
	mov	al, 0x2d
	cmp	edi, 0x8000
	je	.label_688
	jmp	.label_686
.label_682:
	cmp	edi, 0x1000
	je	.label_684
	cmp	edi, 0x2000
	je	.label_687
	cmp	edi, 0x4000
	jne	.label_686
	mov	al, 0x64
	movsx	eax, al
	ret	
.label_685:
	cmp	edi, 0xa000
	je	.label_683
	cmp	edi, 0xc000
	jne	.label_686
	mov	al, 0x73
	movsx	eax, al
	ret	
.label_689:
	mov	al, 0x62
	movsx	eax, al
	ret	
.label_684:
	mov	al, 0x70
.label_688:
	movsx	eax, al
	ret	
.label_683:
	mov	al, 0x6c
	movsx	eax, al
	ret	
.label_686:
	mov	al, 0x3f
	movsx	eax, al
	ret	
.label_687:
	mov	al, 0x63
	movsx	eax, al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a140
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a150

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_690
	pop	rcx
	ret	
.label_690:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a170

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_694
	movzx	ecx, byte ptr [rbx + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_695
	mov	qword ptr [rsp + 8], r14
	xor	r12d, r12d
	jmp	.label_698
.label_694:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	cmp	ecx, 0x2f
	je	.label_693
	jmp	.label_696
.label_695:
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	jne	.label_697
.label_696:
	xor	r12d, r12d
	jmp	.label_693
.label_697:
	mov	r12b, 0x2f
.label_693:
	mov	qword ptr [rsp + 8], r14
.label_698:
	test	r12b, r12b
	setne	cl
	movzx	ebp, cl
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_692
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_691
	mov	qword ptr [rax], rbp
.label_691:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_692:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a260

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_699
	nop	word ptr [rax + rax]
.label_701:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_699
	test	rax, rax
	je	.label_700
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_701
	jmp	.label_699
.label_700:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_699:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a2c0

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a2d0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a2e0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a2f0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_702
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_704:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_703
	nop	
.label_705:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_705
	cmp	rsi, rax
	cmova	rax, rsi
.label_703:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_704
.label_702:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a340
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	cmp	rsi, qword ptr [rdi + 8]
	mov	edx, 0
	jae	.label_706
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_711:
	cmp	qword ptr [rsi], 0
	mov	rax, rsi
	je	.label_709
	nop	dword ptr [rax]
.label_708:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_708
	inc	rdx
.label_709:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_711
.label_706:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_707
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_710
.label_707:
	xor	eax, eax
.label_710:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a3a0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_12
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_8
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_712]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_713]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_714]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_5
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_3
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a490

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_715
	test	rbx, rbx
	je	.label_715
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_716:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_717
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_717
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_716
	jmp	.label_715
.label_717:
	mov	r15, qword ptr [rbx]
.label_715:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a4f0

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_718
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_718:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a520
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_719
	mov	rcx, qword ptr [rdi]
	jmp	.label_721
	nop	
.label_722:
	add	rcx, 0x10
.label_721:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_720
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_722
.label_719:
	ret	
.label_720:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a550
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_727:
	cmp	qword ptr [rcx], rbx
	jne	.label_723
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_725
.label_723:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_727
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_726:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_724
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_726
	jmp	.label_724
.label_725:
	mov	rcx, qword ptr [rdx]
.label_724:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5c0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	jmp	.label_728
	nop	word ptr [rax + rax]
.label_729:
	add	r8, 0x10
.label_728:
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_730
	cmp	qword ptr [r8], 0
	je	.label_729
	test	r8, r8
	mov	r9, r8
	je	.label_729
	nop	dword ptr [rax + rax]
.label_731:
	cmp	rax, rdx
	jae	.label_730
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_731
	jmp	.label_729
.label_730:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a610
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	xor	ebx, ebx
	jmp	.label_732
	nop	dword ptr [rax]
.label_733:
	add	r13, 0x10
.label_732:
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_734
	cmp	qword ptr [r13], 0
	je	.label_733
	test	r13, r13
	mov	rbp, r13
	je	.label_733
	nop	word ptr [rax + rax]
.label_735:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_734
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_735
	jmp	.label_733
.label_734:
	mov	rax, rbx
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
	.align	32
	#Procedure 0x40a680
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_736
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_737:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_737
.label_736:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6c0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_738]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6e0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_740
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_739
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_739
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_739
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_740
.label_739:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_740:
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
	.align	32
	#Procedure 0x40a7c0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7e0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7f0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_741
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_742]]
	jbe	.label_743
	movss	xmm1,  dword ptr [dword ptr [rip + label_746]]
	ucomiss	xmm1, xmm0
	jbe	.label_743
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_745]]
	jbe	.label_743
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_743
	addss	xmm1,  dword ptr [dword ptr [rip + label_742]]
	ucomiss	xmm0, xmm1
	jbe	.label_743
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_744]]
	ucomiss	xmm2, xmm0
	jb	.label_743
	ucomiss	xmm0, xmm1
	ja	.label_741
.label_743:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_741:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a870

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_747
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_752
	cvtsi2ss	xmm0, rdi
	jmp	.label_748
.label_752:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_748:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_749]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_750]]
	jae	.label_751
.label_747:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_751:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a8f0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_757
	nop	dword ptr [rax]
.label_755:
	add	r14, 0x10
.label_757:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_754
	cmp	qword ptr [r14], 0
	je	.label_755
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_753
	nop	word ptr cs:[rax + rax]
.label_759:
	test	cl, 1
	je	.label_756
	mov	rdi, qword ptr [rbx]
	call	rax
.label_756:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_759
.label_753:
	test	cl, cl
	je	.label_758
	mov	rdi, qword ptr [r14]
	call	rax
.label_758:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_755
.label_754:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a990

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_762
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_762
	mov	r14, qword ptr [r15]
	jmp	.label_767
	nop	dword ptr [rax + rax]
.label_760:
	add	r14, 0x10
.label_767:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_762
	cmp	qword ptr [r14], 0
	je	.label_760
	test	r14, r14
	mov	rbx, r14
	je	.label_760
	nop	dword ptr [rax + rax]
.label_763:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_763
	jmp	.label_760
.label_762:
	mov	r14, qword ptr [r15]
	jmp	.label_765
	nop	word ptr [rax + rax]
.label_761:
	add	r14, 0x10
.label_765:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_768
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_761
	nop	word ptr cs:[rax + rax]
.label_764:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_764
	jmp	.label_761
.label_768:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_766
	nop	dword ptr [rax]
.label_769:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_769
.label_766:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa60

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_770
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_772
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_770
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_771
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_772
.label_771:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_773
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_773
	mov	rdi, qword ptr [rsp]
	call	free
.label_770:
	xor	r14d, r14d
.label_772:
	mov	al, r14b
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_773:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab90

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	r15, qword ptr [r12]
	mov	al, 1
	cmp	r15, qword ptr [r12 + 8]
	jae	.label_780
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_775:
	cmp	qword ptr [r15], 0
	je	.label_774
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_777
	nop	word ptr cs:[rax + rax]
.label_781:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_782
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_783
	nop	word ptr cs:[rax + rax]
.label_782:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_783:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_781
.label_777:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_774
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_776
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_778
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_779
.label_776:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_779:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_774:
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	jb	.label_775
	mov	al, 1
	jmp	.label_780
.label_778:
	xor	eax, eax
.label_780:
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
	.align	32
	#Procedure 0x40acb0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_793
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_790
	test	rbx, rbx
	je	.label_784
	mov	qword ptr [rbx], rax
	jmp	.label_784
.label_790:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_797
	cvtsi2ss	xmm0, rcx
	jmp	.label_785
.label_797:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_785:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_791
	cvtsi2ss	xmm1, rax
	jmp	.label_795
.label_791:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_795:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_792
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_788
	cvtsi2ss	xmm2, rcx
	jmp	.label_794
.label_788:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_794:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_798
	cvtsi2ss	xmm0, rax
	jmp	.label_787
.label_798:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_787:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_792
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_796
	mulss	xmm0, xmm1
.label_796:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_750]]
	jae	.label_784
	movss	xmm1,  dword ptr [dword ptr [rip + label_749]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	je	.label_784
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_793
.label_792:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_786
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_784
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_789
.label_786:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_789:
	mov	ebp, 1
.label_784:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_793:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ae80

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_800
	cmp	rsi, r13
	je	.label_803
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_805
.label_803:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_800
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_802
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_804
.label_805:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_800
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_801:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_799
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_799
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_801
	jmp	.label_800
.label_802:
	mov	qword ptr [rbx], 0
	jmp	.label_800
.label_799:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_800
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_804:
	mov	rdi, r14
	call	free_entry
.label_800:
	mov	rax, r15
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
	.align	32
	#Procedure 0x40af50

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_806
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_806:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40af80

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_807
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_807:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40afb0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_812
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_817
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_811
	cvtsi2ss	xmm0, rax
	jmp	.label_809
.label_811:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_809:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_816
	cvtsi2ss	xmm1, rcx
	jmp	.label_819
.label_816:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_819:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_817
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_814
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_818
.label_814:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_818:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_810
	cvtsi2ss	xmm0, rax
	jmp	.label_813
.label_810:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_813:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_817
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_820
	mulss	xmm0, dword ptr [rcx + 8]
.label_820:
	movss	xmm1,  dword ptr [dword ptr [rip + label_749]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_817
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_815
	nop	word ptr cs:[rax + rax]
.label_808:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_808
.label_815:
	mov	qword ptr [r15 + 0x48], 0
.label_817:
	mov	rax, r14
.label_812:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b140

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_821
	nop	
.label_822:
	add	rbx, 2
.label_821:
	cmp	rbx, -1
	je	.label_823
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_822
	mov	r14, rbx
.label_823:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b190

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_824
	nop	dword ptr [rax + rax]
.label_825:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_824
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_825
.label_824:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b1e0

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b200

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	xor	edx, edx
	div	r14
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b230

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b240

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_826
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_827
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_826:
	xor	eax, eax
	ret	
.label_827:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b270
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_828
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_829
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_828:
	xor	eax, eax
	ret	
.label_829:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b2a0

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b2c0

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_831
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_830
	mov	dword ptr [r14], ebp
	jmp	.label_831
.label_830:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_831:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b310

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_834
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_832
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_832
	mov	esi, OFFSET FLAT:.str.2_6
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_833
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_833:
	mov	rbx, r14
.label_832:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_834:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_13
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b3c0

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	rbx, rdx
	lea	rcx, [rsp]
	mov	edx, r8d
	call	get_permissions
	mov	ebp, 0xfffffffe
	test	eax, eax
	jne	.label_835
	lea	r15, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	mov	ebp, eax
	mov	rdi, r15
	call	free_permission_context
.label_835:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b410

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	push	rbx
	push	rax
	mov	eax, esi
	mov	rcx, rdi
	mov	dword ptr [rsp], edx
	lea	rbx, [rsp]
	mov	rdi, rbx
	mov	rsi, rcx
	mov	edx, eax
	call	set_permissions
	mov	ebp, eax
	mov	rdi, rbx
	call	free_permission_context
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b440
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
	.align	32
	#Procedure 0x40b480
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
	.align	32
	#Procedure 0x40b490
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
	.align	32
	#Procedure 0x40b4a0

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
	.align	32
	#Procedure 0x40b4e0
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
	.align	32
	#Procedure 0x40b500

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_836
	test	rdx, rdx
	je	.label_836
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_836:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b530
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
	.align	32
	#Procedure 0x40b5b0

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
.label_871:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_855
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_873]]
.label_1538:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_3
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_2
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_1539:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_902
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_902
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_926:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_914
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_914:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_926
.label_902:
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
	jmp	.label_847
.label_1531:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_847
.label_1534:
	mov	al, 1
.label_1532:
	mov	r15b, 1
.label_1535:
	test	r15b, 1
	mov	cl, 1
	je	.label_860
	mov	cl, al
.label_860:
	mov	al, cl
.label_1533:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_897
	test	r10, r10
	je	.label_950
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_951
.label_897:
	xor	ecx, ecx
	jmp	.label_951
.label_1536:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_954
	test	r10, r10
	je	.label_838
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_843
.label_1537:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_3
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_847
.label_950:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_951:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_2
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_847
.label_954:
	xor	eax, eax
	jmp	.label_843
.label_838:
	mov	eax, 1
.label_843:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_3
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_847:
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
	jmp	.label_895
	nop	dword ptr [rax + rax]
.label_850:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_895:
	cmp	rbp, -1
	je	.label_935
	cmp	rsi, rbp
	jne	.label_937
	jmp	.label_913
	nop	dword ptr [rax]
.label_935:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_913
.label_937:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_942
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_862
	cmp	rbp, -1
	jne	.label_862
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
.label_862:
	cmp	rbx, rbp
	jbe	.label_958
.label_942:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_884:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_846
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_848]]
.label_1577:
	test	rsi, rsi
	jne	.label_854
	jmp	.label_844
	nop	word ptr cs:[rax + rax]
.label_958:
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
	jne	.label_878
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_884
	jmp	.label_896
.label_878:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_884
.label_1581:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_907
	test	rsi, rsi
	jne	.label_910
	cmp	rbp, 1
	je	.label_844
	xor	r15d, r15d
	jmp	.label_853
.label_1570:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_912
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_896
	cmp	edi, 2
	jne	.label_921
	mov	al, r11b
	and	al, 1
	jne	.label_925
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_928
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_928:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_864
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_864:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_936
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_936:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_863
.label_1571:
	mov	bl, 0x62
	jmp	.label_944
.label_1572:
	mov	cl, 0x74
	jmp	.label_947
.label_1573:
	mov	bl, 0x76
	jmp	.label_944
.label_1574:
	mov	bl, 0x66
	jmp	.label_944
.label_1575:
	mov	cl, 0x72
	jmp	.label_947
.label_1578:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_949
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_845
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
	jae	.label_957
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_957:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_859
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_859:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_869
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_869:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_876
.label_1579:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_883
	cmp	r14d, 2
	jne	.label_886
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_845
.label_886:
	mov	rdi, r14
	jmp	.label_854
.label_1580:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_892
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_845
	mov	rdi, r14
	jmp	.label_899
.label_846:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_903
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
.label_927:
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
	ja	.label_916
	test	dl, dl
	je	.label_916
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_853
.label_907:
	test	rsi, rsi
	jne	.label_934
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_934
.label_844:
	mov	dl, 1
.label_1576:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_896
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_853
.label_912:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_854
	mov	r14, rdi
	inc	rsi
	jmp	.label_895
.label_949:
	mov	rdi, r14
.label_876:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_853
.label_892:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_947
.label_899:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_885
.label_947:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_896
.label_944:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_853
	jmp	.label_852
.label_903:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_837
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_837:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_918:
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
	je	.label_872
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_877
	cmp	rbp, -2
	je	.label_890
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_891
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_908:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_904
	bt	rsi, rdx
	jb	.label_906
.label_904:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_908
.label_891:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_858
	xor	r15d, r15d
.label_858:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_918
	jmp	.label_927
.label_934:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_853
.label_883:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_854
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_854
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_854
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_938
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_941
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_896
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_945
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_945:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_889
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_889:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_955
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_955:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_839
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_839:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_853
.label_854:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_853:
	test	r12b, r12b
	je	.label_952
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_865
	jmp	.label_867
	nop	word ptr cs:[rax + rax]
.label_952:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_867
.label_865:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_874
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_885
	jmp	.label_852
	nop	word ptr cs:[rax + rax]
.label_867:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_852
	jmp	.label_885
.label_874:
	mov	bl, r13b
	mov	rsi, r14
.label_852:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_896
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_905
	mov	al, r11b
	and	al, 1
	jne	.label_905
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_909
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_909:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_879
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_879:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_922
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_922:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_905:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_931
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_931:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_840
.label_910:
	xor	r15d, r15d
	jmp	.label_853
.label_916:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_939
	nop	word ptr cs:[rax + rax]
.label_887:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_939:
	test	dl, dl
	je	.label_946
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_948
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_900
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_900:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_948
	nop	word ptr [rax + rax]
.label_946:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_845
	cmp	r14d, 2
	jne	.label_849
	mov	al, r11b
	and	al, 1
	jne	.label_849
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_851
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_851:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_861
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_861:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_870
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_870:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_849:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_894
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_894:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_842
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_842:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_901
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_901:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_948:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_885
	test	r11b, 1
	je	.label_917
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_920
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_924
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_924:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_868
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_868:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_920
	nop	word ptr cs:[rax + rax]
.label_917:
	mov	r14, rdi
.label_920:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_887
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_887
.label_885:
	test	r11b, 1
	je	.label_888
	and	al, 1
	jne	.label_888
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_893
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_893:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_953
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_953:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_840
	nop	dword ptr [rax + rax]
.label_888:
	mov	bl, r13b
	mov	r14, rdi
.label_840:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_850
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_850
.label_921:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_863
.label_925:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_863:
	cmp	rcx, r10
	jae	.label_866
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_866:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_919
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_880
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_856
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_943
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_943:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_881
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_881:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_853
.label_919:
	xor	r15d, r15d
	jmp	.label_853
.label_880:
	xor	r15d, r15d
	jmp	.label_853
.label_856:
	xor	r15d, r15d
	jmp	.label_853
.label_872:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_911
.label_877:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_915
.label_890:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_923
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_932:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_930
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_932
	xor	r15d, r15d
	jmp	.label_911
.label_923:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_915:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_911:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_927
.label_930:
	xor	r15d, r15d
	jmp	.label_911
.label_938:
	xor	r15d, r15d
	jmp	.label_853
.label_941:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_853
	nop	dword ptr [rax + rax]
.label_913:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_898
	or	dl, al
	je	.label_845
.label_898:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_841
	or	dl, al
	jne	.label_841
	test	r8b, 1
	jne	.label_956
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_841
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_871
.label_841:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_857
	test	cl, cl
	jne	.label_857
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_857
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_875:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_940
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_940:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_875
.label_857:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_882
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_882
.label_896:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_929:
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
.label_933:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_882:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_906:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_929
.label_845:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_929
.label_956:
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
	jmp	.label_933
.label_855:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c7c0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c7d0

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
	je	.label_959
	mov	qword ptr [rax], rbx
.label_959:
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
	.align	32
	#Procedure 0x40c8d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_960
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_963:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_963
.label_960:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_964
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_961]], OFFSET FLAT:slot0
.label_964:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_962
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_962:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c970

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c980

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
	js	.label_965
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_968
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_971
.label_968:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_967
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
	jne	.label_966
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_966:
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
.label_971:
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
	ja	.label_969
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_970
	mov	rdi, rbx
	call	free
.label_970:
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
.label_969:
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
.label_965:
	call	abort
.label_967:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cb50

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cb60
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cb70
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
	.align	32
	#Procedure 0x40cb80

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
	.align	32
	#Procedure 0x40cbc0

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
	je	.label_972
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
.label_972:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cc20

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
	.align	32
	#Procedure 0x40cc60

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
	.align	32
	#Procedure 0x40cc80
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
	.align	32
	#Procedure 0x40cca0

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
	mov	rcx,  qword ptr [word ptr [rip + label_973]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_974]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_975]]
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
	.align	32
	#Procedure 0x40cd10

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cd20

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cd30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cd40

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
	.align	32
	#Procedure 0x40cd90

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cda0

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
	mov	rax,  qword ptr [word ptr [rip + label_973]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_974]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_975]]
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
	.align	32
	#Procedure 0x40ce10
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
	.align	32
	#Procedure 0x40ce30
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
	.align	32
	#Procedure 0x40ce50

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ce60
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
	.align	32
	#Procedure 0x40ce70

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ce80

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ce90

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
	jne	.label_977
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
	je	.label_976
	mov	eax, OFFSET FLAT:.str.14_2
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_977
	mov	eax, OFFSET FLAT:.str.15_3
	jmp	.label_977
.label_976:
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
	je	.label_978
	mov	eax, OFFSET FLAT:.str.17_3
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_977
	mov	eax, OFFSET FLAT:.str.18_2
	jmp	.label_977
.label_978:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_3
	mov	eax, OFFSET FLAT:.str.12_2
	cmove	rax, rcx
.label_977:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cf70

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
	je	.label_980
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_981
	jmp	.label_979
.label_980:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_979
.label_981:
	mov	eax, 1
	test	bpl, bpl
	je	.label_979
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
.label_979:
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
	.align	32
	#Procedure 0x40d000

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
	je	.label_984
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_982
	jmp	.label_983
.label_984:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_983
.label_982:
	mov	eax, 1
	test	bpl, bpl
	je	.label_983
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
.label_983:
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
	.align	32
	#Procedure 0x40d090

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
	je	.label_986
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_987
	jmp	.label_985
.label_986:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_985
.label_987:
	mov	eax, 1
	test	bpl, bpl
	je	.label_985
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
.label_985:
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
	.align	32
	#Procedure 0x40d110

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
	je	.label_990
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_989
	jmp	.label_988
.label_990:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_988
.label_989:
	mov	eax, 1
	test	bpl, bpl
	je	.label_988
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
.label_988:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d180

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
	je	.label_993
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_991
	jmp	.label_992
.label_993:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_992
.label_991:
	mov	eax, 1
	test	bpl, bpl
	je	.label_992
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_992:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d1f0

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
	je	.label_995
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_996
	jmp	.label_994
.label_995:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_994
.label_996:
	mov	eax, 1
	test	bpl, bpl
	je	.label_994
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_994:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d240

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
	je	.label_999
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_998
	jmp	.label_997
.label_999:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_997
.label_998:
	mov	eax, 1
	test	bpl, bpl
	je	.label_997
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_997:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d290

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_1002
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_1001
	jmp	.label_1000
.label_1002:
	mov	eax, 1
	test	cl, cl
	je	.label_1000
.label_1001:
	xor	eax, eax
.label_1000:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d2c0

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r13d, r8d
	mov	r12, rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	r15d, edi
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, r12
	mov	r9d, r13d
	call	syscall
	mov	rbx, rax
	call	__errno_location
	test	ebx, ebx
	jns	.label_1004
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_1005
	cmp	ecx, 0x5f
	je	.label_1005
	cmp	ecx, 0x26
	jne	.label_1004
.label_1005:
	test	r13d, r13d
	je	.label_1010
	mov	qword ptr [rsp], rax
	cmp	r13d, 2
	jb	.label_1013
	mov	edi, 0x5f
	jmp	.label_1015
.label_1010:
	mov	qword ptr [rsp], rax
	xor	r13d, r13d
.label_1014:
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r12
	call	strlen
	test	rbx, rbx
	je	.label_1003
	test	rax, rax
	je	.label_1003
	movzx	ecx, byte ptr [rbx + rbp - 1]
	cmp	ecx, 0x2f
	je	.label_1016
	movzx	eax, byte ptr [rax + r12 - 1]
	cmp	eax, 0x2f
	jne	.label_1003
.label_1016:
	lea	rdx, [rsp + 0x98]
	mov	edi, r15d
	mov	rsi, rbp
	call	lstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1004
	test	r13b, r13b
	je	.label_1011
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	je	.label_1003
	mov	edi, 2
	jmp	.label_1007
.label_1013:
	lea	rdx, [rsp + 8]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_1008
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	mov	r13b, 1
	cmp	eax, 2
	je	.label_1014
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_1004
.label_1008:
	mov	edi, 0x11
.label_1015:
	call	errno_fail
	mov	ebx, 0xffffffff
	jmp	.label_1004
.label_1011:
	lea	rdx, [rsp + 8]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_1009
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_1004
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_1004
	jmp	.label_1003
.label_1009:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x20]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_1012
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_1006
.label_1003:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r12
	call	renameat
	mov	ebx, eax
.label_1004:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1012:
	mov	edi, 0x14
	jmp	.label_1007
.label_1006:
	mov	edi, 0x15
.label_1007:
	call	errno_fail
	jmp	.label_1004
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d4a0

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbx
	mov	ebx, edi
	call	__errno_location
	mov	dword ptr [rax], ebx
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d4b0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:.str_1
	call	__lstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1017
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_1017:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d4f0

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_1019:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1018
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1019
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_1018
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_1019
.label_1018:
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
	.align	32
	#Procedure 0x40d580

	.globl same_name
	.type same_name, @function
same_name:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d5a0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rcx
	mov	dword ptr [rsp + 0x14], edx
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	cmp	r14, rax
	jne	.label_1023
	mov	qword ptr [rsp + 8], r15
	mov	r15d, dword ptr [rsp + 0x14]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	je	.label_1020
	xor	ebp, ebp
	jmp	.label_1021
.label_1023:
	xor	ebp, ebp
	jmp	.label_1021
.label_1020:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rdx, [rsp + 0xa8]
	mov	ecx, 0x100
	mov	edi, r12d
	mov	rsi, rbp
	call	fstatat
	test	eax, eax
	je	.label_1026
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_1026:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	dir_name
	mov	rbx, rax
	lea	rdx, [rsp + 0x18]
	mov	ecx, 0x100
	mov	edi, r15d
	mov	rsi, rbx
	call	fstatat
	test	eax, eax
	je	.label_1025
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_1025:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1022
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_1024
.label_1022:
	xor	ebp, ebp
.label_1024:
	mov	rdi, rbx
	call	free
.label_1021:
	mov	al, bpl
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d6f0

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r13, rdi
	mov	ebx, esi
	xor	r14d, r14d
	test	r13, r13
	je	.label_1035
	mov	rax,  qword ptr [word ptr [+ (rbx * 8) + comparison_function_table]]
	mov	qword ptr [rsp + 0x10], rax
	call	__errno_location
	mov	rbp, rax
	dec	rbx
	mov	qword ptr [rsp + 0x28], rbx
	xor	r15d, r15d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1031
.label_1027:
	mov	qword ptr [rsp + 0x38], rcx
	mov	rdi, rbx
	mov	rbx, rcx
	call	xstrdup
	mov	rcx, r12
	shl	rcx, 4
	mov	qword ptr [rbx + rcx], rax
	mov	rax, qword ptr [r14]
	mov	qword ptr [rbx + rcx + 8], rax
	inc	r12
	add	r15, qword ptr [rsp + 8]
	nop	dword ptr [rax + rax]
.label_1031:
	mov	dword ptr [rbp], 0
	mov	rdi, r13
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_1040
	movzx	eax, byte ptr [r14 + 0x13]
	cmp	eax, 0x2e
	mov	eax, 0
	jne	.label_1029
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	mov	eax, 1
	jne	.label_1029
	mov	eax, 2
.label_1029:
	cmp	byte ptr [r14 + rax + 0x13], 0
	je	.label_1031
	mov	rbx, r14
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	inc	rcx
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_1039
	mov	qword ptr [rsp + 8], rcx
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, r12
	jne	.label_1041
	mov	qword ptr [rsp + 0x40], rax
	mov	edx, 0x10
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsp + 0x40]
	call	x2nrealloc
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_1027
.label_1039:
	mov	rax, qword ptr [rsp + 0x20]
	sub	rax, r15
	cmp	rax, rcx
	mov	rax, qword ptr [rsp + 0x30]
	ja	.label_1032
	mov	rdx, rcx
	mov	r14, rdx
	add	rcx, r15
	mov	qword ptr [rsp + 0x40], rcx
	jb	.label_1036
	mov	edx, 1
	mov	rdi, rax
	lea	rsi, [rsp + 0x40]
	call	x2nrealloc
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x20], rcx
	mov	rcx, r14
.label_1032:
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rax + r15]
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rbx, rcx
	call	memcpy
	add	r15, rbx
	jmp	.label_1031
.label_1041:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, rax
	jmp	.label_1027
.label_1040:
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_1028
	mov	rdi, qword ptr [rsp + 0x38]
	call	free
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	dword ptr [rbp], ebx
	xor	r14d, r14d
	jmp	.label_1035
.label_1028:
	cmp	qword ptr [rsp + 0x28], 1
	mov	r14, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rsp + 0x38]
	ja	.label_1037
	test	r12, r12
	je	.label_1038
	mov	edx, 0x10
	mov	rdi, r13
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 0x10]
	call	qsort
	inc	r15
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	xor	r15d, r15d
	mov	rbx, r13
	nop	dword ptr [rax + rax]
.label_1030:
	lea	rbp, [r14 + r15]
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	stpcpy
	inc	r15
	sub	r15, rbp
	add	r15, rax
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x10
	dec	r12
	jne	.label_1030
	jmp	.label_1033
.label_1037:
	cmp	qword ptr [rsp + 0x20], r15
	jne	.label_1034
	lea	rsi, [r15 + 1]
	mov	rdi, r14
	call	xrealloc
	mov	r14, rax
	jmp	.label_1034
.label_1038:
	inc	r15
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	xor	r15d, r15d
.label_1033:
	mov	rdi, r13
	call	free
.label_1034:
	mov	byte ptr [r14 + r15], 0
.label_1035:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1036:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d980

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	push	r14
	push	rbx
	mov	ebp, esi
	call	opendir_safer
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1042
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	test	eax, eax
	je	.label_1042
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	mov	dword ptr [rbx], ebp
	xor	r14d, r14d
.label_1042:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d9d0

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d9e0

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	seta	al
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovae	eax, ecx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da00
	.globl getcon
	.type getcon, @function
getcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da20
	.globl freecon
	.type freecon, @function
freecon:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da30
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da50

	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da70
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da90
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dab0

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dad0
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40daf0
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db10
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db30
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db50
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db70
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db90
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dbb0
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dbd0
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dbe0
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dc00

	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:
	mov	rax, qword ptr [rdi + 0x50]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc10

	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:
	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc20

	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:
	mov	rax, qword ptr [rdi + 0x60]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc30
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc40

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dc50
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dc60

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dc70
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dc80
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dc90
	.globl statat
	.type statat, @function
statat:

	xor	ecx, ecx
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dca0

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dcb0

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, esi
	mov	r15, rdi
	call	__errno_location
	mov	qword ptr [rsp + 0x30], rax
	mov	r12d, dword ptr [rax]
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	movsxd	rbx, ebx
	lea	rax, [rbx + r14]
	mov	rdi, rbp
	sub	rdi, rax
	jb	.label_1044
	add	rdi, r15
	mov	rsi, r14
	call	check_x_suffix
	test	al, al
	je	.label_1044
	mov	dword ptr [rsp + 0xc], r12d
	mov	qword ptr [rsp + 0x10], r15
	xor	r13d, r13d
	xor	edi, edi
	mov	rsi, r14
	call	randint_all_new
	mov	r15, rax
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_1043
	sub	rbp, rbx
	mov	r12, qword ptr [rsp + 0x10]
	add	rbp, r12
	mov	rax, r14
	neg	rax
	mov	qword ptr [rsp + 0x18], rax
	nop	dword ptr [rax]
.label_1048:
	test	r14, r14
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_1046
	nop	word ptr [rax + rax]
.label_1049:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	mov	al,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_1049
.label_1046:
	mov	rdi, r12
	mov	rbx, r12
	mov	rsi, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x28]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_1045
	mov	rax, qword ptr [rsp + 0x30]
	cmp	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jne	.label_1047
	inc	r13d
	cmp	r13d, 0x3a2f7
	mov	r12, rbx
	jbe	.label_1048
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jmp	.label_1043
.label_1044:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x16
	mov	r12d, 0xffffffff
.label_1043:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1045:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax], ecx
.label_1047:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	ebx, dword ptr [rbp]
	mov	rdi, r15
	call	randint_all_free
	mov	dword ptr [rbp], ebx
	jmp	.label_1043
	.section	.text
	.align	32
	#Procedure 0x40de10

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbx
	mov	rbx, rsi
	mov	esi, 0x58
	call	__strspn_c1
	cmp	rax, rbx
	setae	al
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40de30

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1050
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1051]]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1050:
	mov	edi, OFFSET FLAT:.str_14
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40de70

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	or	esi, 0xc2
	mov	edx, 0x180
	xor	eax, eax
	jmp	open
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40de90

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dea0

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	__lstat
	test	eax, eax
	je	.label_1052
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1053
.label_1052:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_1053:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x98
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40def0
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	mov	r8d, 6
	jmp	gen_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40df00
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40df10

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_1054
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_1055
.label_1054:
	mov	eax, ebx
.label_1055:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40df60

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	eax, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 0xffffff9c
	mov	r8d, eax
	jmp	utimecmpat
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40df80

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	ebp, r8d
	mov	rbx, rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	dword ptr [rsp + 0x24], edi
	mov	r12, qword ptr [r13 + 0x58]
	mov	r15, qword ptr [rbx + 0x58]
	mov	rdi, r13
	call	get_stat_mtime_ns
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, rbx
	call	get_stat_mtime_ns
	mov	r14, rax
	test	bpl, 1
	je	.label_1070
	cmp	r12, r15
	jne	.label_1072
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x28]
	cmp	eax, r14d
	je	.label_1056
.label_1072:
	lea	rax, [r15 - 2]
	mov	ecx, 0xffffffff
	cmp	r12, rax
	jle	.label_1056
	lea	rax, [r12 - 2]
	mov	ecx, 1
	cmp	r15, rax
	jle	.label_1056
	cmp	qword ptr [word ptr [rip + utimecmpat.ht]],  0
	jne	.label_1057
	mov	edi, 0x10
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + utimecmpat.ht]],  rax
	test	rax, rax
	je	.label_1066
.label_1057:
	cmp	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jne	.label_1069
	mov	edi, 0x10
	call	malloc
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  rax
	xor	ecx, ecx
	test	rax, rax
	je	.label_1058
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_1069:
	mov	rax, qword ptr [r13]
	mov	rsi,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	mov	qword ptr [rsi], rax
	mov	rdi,  qword ptr [word ptr [rip + utimecmpat.ht]]
	call	hash_insert
	mov	rcx, rax
	test	rcx, rcx
	je	.label_1058
	cmp	rcx,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	jne	.label_1060
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jmp	.label_1060
.label_1058:
	cmp	qword ptr [word ptr [rip + utimecmpat.ht]],  0
	je	.label_1065
	mov	rax, qword ptr [r13]
	mov	qword ptr [rsp + 0xe8], rax
	mov	rdi,  qword ptr [word ptr [rip + utimecmpat.ht]]
	lea	rsi, [rsp + 0xe8]
	call	hash_lookup
	mov	rcx, rax
.label_1065:
	test	rcx, rcx
	jne	.label_1060
.label_1066:
	mov	dword ptr [rsp + 0xf0], 0x77359400
	mov	byte ptr [rsp + 0xf4], 0
	lea	rcx, [rsp + 0xe8]
.label_1060:
	cmp	byte ptr [rcx + 0xc], 0
	je	.label_1076
	mov	r13d, dword ptr [rcx + 8]
	jmp	.label_1079
.label_1076:
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, qword ptr [r13 + 0x48]
	mov	eax, dword ptr [r13 + 0x68]
	mov	dword ptr [rsp + 8], eax
	mov	rdi, r13
	call	get_stat_atime_ns
	mov	rbp, rax
	mov	rdi, r13
	call	get_stat_ctime_ns
	mov	r8, rbp
	mov	r11, rbx
	mov	ecx, r11d
	or	ecx, r12d
	or	ecx, dword ptr [rsp + 8]
	and	ecx, 1
	movsxd	rdx, r8d
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	edx, esi
	movsxd	rsi, eax
	imul	rdi, rsi, 0x66666667
	mov	rbp, rdi
	shr	rbp, 0x3f
	sar	rdi, 0x22
	add	edi, ebp
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	sub	esi, edi
	mov	rbx, qword ptr [rsp + 0x28]
	movsxd	rdi, ebx
	imul	rdi, rdi, 0x66666667
	mov	rbp, rdi
	shr	rbp, 0x3f
	sar	rdi, 0x22
	add	edi, ebp
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ebx
	sub	ebp, edi
	or	ebp, edx
	or	ebp, esi
	je	.label_1077
	mov	r10, qword ptr [rsp + 0x10]
	mov	dword ptr [r10 + 8], 1
	mov	r13d, 1
.label_1061:
	mov	dword ptr [r10 + 8], r13d
	mov	byte ptr [r10 + 0xc], 1
.label_1079:
	cmp	r13d, 0x77359400
	sete	al
	movzx	eax, al
	not	rax
	and	r15, rax
	mov	eax, r14d
	cdq	
	idiv	r13d
	sub	r14d, edx
.label_1070:
	mov	ecx, 0xffffffff
	cmp	r12, r15
	jl	.label_1056
	mov	ecx, 1
	jg	.label_1056
	mov	rax, qword ptr [rsp + 0x28]
	cmp	eax, r14d
	mov	ecx, 0xffffffff
	jl	.label_1056
	setg	al
	movzx	ecx, al
.label_1056:
	mov	eax, ecx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1077:
	mov	r10, qword ptr [rsp + 0x10]
	cmp	dword ptr [r10 + 8], 0xa
	jle	.label_1062
	mov	r13d, 0xa
	mov	edx, r8d
	mov	qword ptr [rsp + 8], r8
	mov	rsi, qword ptr [rsp + 0x28]
.label_1074:
	movsxd	rsi, esi
	imul	rsi, rsi, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdi, rax
	shr	rdi, 0x3f
	sar	rax, 0x22
	add	eax, edi
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x22
	add	edx, edi
	movsxd	r8, edx
	imul	rdi, r8, 0x66666667
	mov	rbx, rdi
	shr	rbx, 0x3f
	sar	rdi, 0x22
	add	edi, ebx
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	sub	r8d, edi
	movsxd	r9, eax
	imul	rbx, r9, 0x66666667
	mov	rbp, rbx
	shr	rbp, 0x3f
	sar	rbx, 0x22
	add	ebx, ebp
	add	ebx, ebx
	lea	ebp, [rbx + rbx*4]
	sub	r9d, ebp
	or	r9d, r8d
	movsxd	rbp, esi
	imul	rbx, rbp, 0x66666667
	mov	rdi, rbx
	shr	rdi, 0x3f
	sar	rbx, 0x22
	add	ebx, edi
	add	ebx, ebx
	lea	edi, [rbx + rbx*4]
	sub	ebp, edi
	or	ebp, r9d
	jne	.label_1064
	cmp	r13d, 0x3b9aca00
	je	.label_1073
	add	r13d, r13d
	lea	r13d, [r13 + r13*4]
	cmp	r13d, dword ptr [r10 + 8]
	jl	.label_1074
	jmp	.label_1064
.label_1062:
	mov	dword ptr [r10 + 8], 0xa
	mov	r13d, 0xa
	jmp	.label_1080
.label_1073:
	xor	ecx, 1
	shl	r13d, cl
.label_1064:
	mov	dword ptr [r10 + 8], r13d
	cmp	r13d, 2
	mov	r8, qword ptr [rsp + 8]
	jl	.label_1061
.label_1080:
	cmp	r13d, 0x77359400
	sete	al
	movzx	esi, al
	mov	ecx, 1
	cmp	r15, r12
	jl	.label_1056
	cmp	r12, r15
	setne	al
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	r14d, edx
	mov	rbp, qword ptr [rsp + 0x18]
	mov	ebx, dword ptr [rsp + 0x24]
	jg	.label_1071
	test	al, al
	je	.label_1056
.label_1071:
	mov	rax, rsi
	not	rax
	and	rax, r15
	mov	ecx, 0xffffffff
	cmp	r12, rax
	jl	.label_1056
	jne	.label_1078
	mov	eax, r14d
	cdq	
	idiv	r13d
	mov	eax, r14d
	sub	eax, edx
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	edx, eax
	jl	.label_1056
.label_1078:
	mov	qword ptr [rsp + 0xc0], r11
	movsxd	rax, r8d
	mov	qword ptr [rsp + 0xc8], rax
	or	rsi, r12
	mov	qword ptr [rsp + 0xd0], rsi
	movsxd	rax, r13d
	imul	rax, rax, 0x38e38e39
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x21
	add	eax, ecx
	mov	rcx, qword ptr [rsp + 0x28]
	add	eax, ecx
	cdqe	
	mov	qword ptr [rsp + 0xd8], rax
	lea	rdx, [rsp + 0xc0]
	mov	ecx, 0x100
	mov	edi, ebx
	mov	rsi, rbp
	call	utimensat
	mov	ecx, 0xfffffffe
	test	eax, eax
	jne	.label_1056
	lea	rdx, [rsp + 0x30]
	mov	ecx, 0x100
	mov	edi, ebx
	mov	rsi, rbp
	call	fstatat
	mov	dword ptr [rsp + 8], eax
	cdqe	
	mov	rbx, qword ptr [rsp + 0x88]
	xor	rbx, r12
	or	rbx, rax
	lea	rdi, [rsp + 0x30]
	call	get_stat_mtime_ns
	mov	rcx, qword ptr [rsp + 0x28]
	movsxd	rcx, ecx
	xor	rax, rcx
	or	rax, rbx
	je	.label_1067
	mov	qword ptr [rsp + 0xd0], r12
	mov	qword ptr [rsp + 0xd8], rcx
	lea	rdx, [rsp + 0xc0]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, rbp
	call	utimensat
.label_1067:
	cmp	dword ptr [rsp + 8], 0
	je	.label_1075
	mov	ecx, 0xfffffffe
	jmp	.label_1056
.label_1075:
	mov	ebx, dword ptr [rsp + 0x88]
	and	ebx, 1
	neg	ebx
	and	ebx, 0x3b9aca00
	lea	rdi, [rsp + 0x30]
	call	get_stat_mtime_ns
	add	rax, rbx
	movsxd	rdx, eax
	imul	rcx, rdx, 0x66666667
	mov	rsi, rcx
	shr	rsi, 0x3f
	sar	rcx, 0x22
	add	ecx, esi
	add	ecx, ecx
	lea	esi, [rcx + rcx*4]
	mov	ecx, 1
	cmp	edx, esi
	je	.label_1063
	mov	edx, 1
	jmp	.label_1059
.label_1063:
	mov	edx, 0x77359400
	cmp	ecx, 0x3b9aca00
	je	.label_1059
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	cmp	ecx, r13d
	je	.label_1068
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x22
	add	eax, edx
	movsxd	rdx, eax
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	cmp	edx, esi
	mov	edx, ecx
	je	.label_1063
	jmp	.label_1059
.label_1068:
	mov	edx, ecx
.label_1059:
	mov	r13d, edx
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1061
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e530

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e540

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e550
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	mov	ecx, 0x100
	jmp	utimensat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e560

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x100
	mov	r14, rsi
	mov	r15d, edi
	xor	ebp, ebp
	test	rdx, rdx
	lea	rax, [rsp + 0xe0]
	cmove	rax, rdx
	mov	qword ptr [rsp + 0xd8], rax
	je	.label_1095
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	mov	rdi, qword ptr [rsp + 0xd8]
	call	validate_timespec
	mov	ebp, eax
	mov	ebx, 0xffffffff
	test	ebp, ebp
	js	.label_1085
.label_1095:
	test	r15d, r15d
	jns	.label_1096
	test	r14, r14
	jne	.label_1096
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	jmp	.label_1085
.label_1096:
	cmp	dword ptr [dword ptr [rip + utimensat_works_really]],  0
	js	.label_1086
	cmp	ebp, 2
	jne	.label_1104
	lea	rsi, [rsp + 0x48]
	test	r15d, r15d
	js	.label_1105
	mov	edi, r15d
	call	__fstat
	jmp	.label_1081
.label_1105:
	mov	rdi, r14
	call	stat
.label_1081:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1085
	mov	rbx, qword ptr [rsp + 0xd8]
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1087
	lea	rdi, [rsp + 0x48]
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1093
.label_1087:
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_1093
	lea	rdi, [rsp + 0x48]
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
.label_1093:
	inc	ebp
.label_1104:
	test	r15d, r15d
	jns	.label_1103
	mov	rdx, qword ptr [rsp + 0xd8]
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, r14
	call	utimensat
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1109
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1082
.label_1109:
	je	.label_1084
.label_1082:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1084
.label_1103:
	test	r15d, r15d
	js	.label_1086
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	edi, r15d
	call	futimens
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1090
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1094
.label_1084:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1085
.label_1090:
	je	.label_1101
.label_1094:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1101
.label_1086:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	ebp, ebp
	je	.label_1091
	cmp	ebp, 3
	je	.label_1106
	lea	rsi, [rsp + 0x48]
	test	r15d, r15d
	js	.label_1108
	mov	edi, r15d
	call	__fstat
	jmp	.label_1083
.label_1101:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1085
.label_1108:
	mov	rdi, r14
	call	stat
.label_1083:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1085
.label_1106:
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_1091
	lea	rdi, [rsp + 0x48]
	lea	rsi, [rsp + 0xd8]
	call	update_timespec
	xor	ebx, ebx
	test	al, al
	jne	.label_1085
.label_1091:
	mov	rax, qword ptr [rsp + 0xd8]
	xor	ebp, ebp
	test	rax, rax
	je	.label_1102
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, qword ptr [rsp + 0xd8]
	movabs	rcx, 0x20c49ba5e353f7cf
	mov	rax, rcx
	imul	qword ptr [rsi + 8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x28], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdx, qword ptr [rsp + 0xd8]
	mov	rax, rcx
	imul	qword ptr [rdx + 0x18]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	lea	rbp, [rsp + 0x20]
.label_1102:
	test	r15d, r15d
	js	.label_1099
	xor	ebx, ebx
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, rbp
	call	futimesat
	test	eax, eax
	je	.label_1097
	mov	ebx, 0xffffffff
	test	r14, r14
	je	.label_1085
	mov	rdi, r14
	mov	rsi, rbp
	call	utimes
	jmp	.label_1107
.label_1099:
	mov	edi, 0xffffff9c
	mov	rsi, r14
	mov	rdx, rbp
	call	futimesat
.label_1107:
	mov	ebx, eax
.label_1085:
	mov	eax, ebx
	add	rsp, 0x100
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1097:
	test	rbp, rbp
	je	.label_1085
	mov	r12, qword ptr [rbp + 8]
	mov	r14, qword ptr [rbp + 0x18]
	cmp	r12, 0x7a11f
	setg	al
	cmp	r14, 0x7a11f
	setg	cl
	or	cl, al
	movzx	eax, cl
	cmp	eax, 1
	jne	.label_1085
	lea	rsi, [rsp + 0x48]
	mov	edi, r15d
	call	__fstat
	test	eax, eax
	jne	.label_1085
	lea	rcx, [rbp + 0x10]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rbx, qword ptr [rsp + 0xa0]
	sub	rax, qword ptr [rbp]
	sub	rbx, qword ptr [rbp + 0x10]
	movups	xmm0, xmmword ptr [rbp]
	movaps	xmmword ptr [rsp], xmm0
	movups	xmm0, xmmword ptr [rcx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	xor	ebp, ebp
	cmp	r12, 0x7a120
	jl	.label_1088
	cmp	rax, 1
	jne	.label_1088
	lea	rdi, [rsp + 0x48]
	call	get_stat_atime_ns
	xor	ebp, ebp
	test	rax, rax
	jne	.label_1088
	lea	rbp, [rsp]
	mov	qword ptr [rsp + 8], 0
.label_1088:
	cmp	r14, 0x7a120
	jl	.label_1092
	cmp	rbx, 1
	jne	.label_1092
	lea	rdi, [rsp + 0x48]
	call	get_stat_mtime_ns
	test	rax, rax
	je	.label_1089
.label_1092:
	test	rbp, rbp
	jne	.label_1100
	jmp	.label_1098
.label_1089:
	lea	rbp, [rsp]
	mov	qword ptr [rsp + 0x18], 0
.label_1100:
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, rbp
	call	futimesat
.label_1098:
	xor	ebx, ebx
	jmp	.label_1085
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e900

	.globl validate_timespec
	.type validate_timespec, @function
validate_timespec:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, 0x3b9aca00
	jb	.label_1110
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	jne	.label_1114
.label_1110:
	mov	rax, qword ptr [rdi + 0x18]
	cmp	rax, 0x3b9aca00
	jb	.label_1111
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	je	.label_1111
.label_1114:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	add	rsp, 8
	ret	
.label_1111:
	mov	rax, qword ptr [rdi + 8]
	and	rax, 0xfffffffffffffffe
	xor	ecx, ecx
	cmp	rax, 0x3ffffffe
	mov	eax, 0
	jne	.label_1112
	mov	qword ptr [rdi], 0
	cmp	qword ptr [rdi + 8], 0x3ffffffe
	sete	al
	movzx	eax, al
	mov	ecx, 1
.label_1112:
	mov	rdx, qword ptr [rdi + 0x18]
	and	rdx, 0xfffffffffffffffe
	cmp	rdx, 0x3ffffffe
	jne	.label_1113
	mov	qword ptr [rdi + 0x10], 0
	cmp	qword ptr [rdi + 0x18], 0x3ffffffe
	sete	cl
	movzx	ecx, cl
	add	eax, ecx
	mov	ecx, 1
.label_1113:
	cmp	eax, 1
	sete	al
	movzx	eax, al
	add	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e9c0

	.globl update_timespec
	.type update_timespec, @function
update_timespec:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [rsi]
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3ffffffe
	jne	.label_1115
	mov	al, 1
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	je	.label_1120
	mov	rax, qword ptr [rbx + 8]
.label_1115:
	cmp	rax, 0x3fffffff
	jne	.label_1117
	cmp	qword ptr [rbx + 0x18], 0x3fffffff
	jne	.label_1117
	mov	qword ptr [rsi], 0
	jmp	.label_1119
.label_1117:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3fffffff
	je	.label_1121
	cmp	rax, 0x3ffffffe
	jne	.label_1116
	mov	rdi, r14
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1116
.label_1121:
	mov	rdi, rbx
	call	gettime
.label_1116:
	mov	rax, qword ptr [rbx + 0x18]
	cmp	rax, 0x3fffffff
	je	.label_1118
	cmp	rax, 0x3ffffffe
	jne	.label_1119
	mov	rdi, r14
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
	jmp	.label_1119
.label_1118:
	add	rbx, 0x10
	mov	rdi, rbx
	call	gettime
.label_1119:
	xor	eax, eax
.label_1120:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ea70

	.globl utimens
	.type utimens, @function
utimens:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffffff
	mov	rsi, rcx
	mov	rdx, rax
	jmp	fdutimens
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ea90

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xc0
	mov	r14, rdi
	xor	ebp, ebp
	test	rsi, rsi
	lea	rax, [rsp + 0xa0]
	cmove	rax, rsi
	mov	qword ptr [rsp + 0x98], rax
	je	.label_1127
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	mov	rdi, qword ptr [rsp + 0x98]
	call	validate_timespec
	mov	ebp, eax
	mov	ebx, 0xffffffff
	test	ebp, ebp
	js	.label_1125
.label_1127:
	cmp	dword ptr [dword ptr [rip + lutimensat_works_really]],  0
	js	.label_1133
	cmp	ebp, 2
	jne	.label_1130
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	call	__lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1125
	mov	rbx, qword ptr [rsp + 0x98]
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1131
	lea	rdi, [rsp + 8]
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1126
.label_1131:
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_1126
	lea	rdi, [rsp + 8]
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
.label_1126:
	inc	ebp
.label_1130:
	mov	rdx, qword ptr [rsp + 0x98]
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, r14
	call	utimensat
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1134
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1122
.label_1134:
	je	.label_1124
.label_1122:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1124
.label_1133:
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	ebp, ebp
	je	.label_1129
	cmp	ebp, 3
	je	.label_1132
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	call	__lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1125
.label_1132:
	cmp	qword ptr [rsp + 0x98], 0
	je	.label_1123
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x98]
	call	update_timespec
	xor	ebx, ebx
	test	al, al
	je	.label_1123
	jmp	.label_1125
.label_1124:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  1
	jmp	.label_1125
.label_1129:
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	call	__lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1125
.label_1123:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0xa000
	jne	.label_1128
	call	__errno_location
	mov	dword ptr [rax], 0x26
	mov	ebx, 0xffffffff
	jmp	.label_1125
.label_1128:
	mov	rdx, qword ptr [rsp + 0x98]
	mov	edi, 0xffffffff
	mov	rsi, r14
	call	fdutimens
	mov	ebx, eax
.label_1125:
	mov	eax, ebx
	add	rsp, 0xc0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ec60

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
	je	.label_1139
	mov	edx, OFFSET FLAT:.str_15
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1138
.label_1139:
	mov	edx, OFFSET FLAT:.str.1_11
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1138:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_7
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
	mov	esi, OFFSET FLAT:.str.3_4
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1143
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1135]]
.label_1613:
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
.label_1143:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_2
	jmp	.label_1142
.label_1614:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_2
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
.label_1615:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_1616:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_2
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_1140
.label_1617:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_2
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_1141
.label_1618:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_2
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_1137
.label_1619:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_4
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
.label_1137:
	mov	qword ptr [rsp + 0x10], rdi
.label_1141:
	mov	qword ptr [rsp + 8], rsi
.label_1140:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_1144
.label_1621:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_3
.label_1142:
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
	jmp	.label_1136
.label_1620:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_4
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
.label_1136:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_1144:
	call	__fprintf_chk
.label_1612:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ef50
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1145:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1145
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ef80

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_1147:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1146
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_1148
	nop	dword ptr [rax]
.label_1146:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1148:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_1149
	inc	r9
	cmp	r9, 0xa
	jb	.label_1147
.label_1149:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40efe0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_1150
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1150:
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
	.align	32
	#Procedure 0x40f070
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_3
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_1
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f0f0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	and	al, 1
	jne	.label_1151
	push	rax
	call	geteuid
	test	eax, eax
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_1151:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f120
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1152
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_1152:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f150

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1153
	test	rax, rax
	je	.label_1154
.label_1153:
	pop	rbx
	ret	
.label_1154:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f170

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_1155
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_1155:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f1a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1156
	test	rbx, rbx
	jne	.label_1156
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1156:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1158
	test	rax, rax
	je	.label_1157
.label_1158:
	pop	rbx
	ret	
.label_1157:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40f1d0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1159
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_1162
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1160
.label_1159:
	test	rcx, rcx
	jne	.label_1163
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_1163:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_1161
.label_1160:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_1162:
	call	xalloc_die
.label_1161:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f250

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f260
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f270
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
	.align	32
	#Procedure 0x40f2a0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1164
	call	rpl_calloc
	test	rax, rax
	je	.label_1164
	pop	rcx
	ret	
.label_1164:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f2d0

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
	.align	32
	#Procedure 0x40f300

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
	.align	32
	#Procedure 0x40f320

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40f350

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_1166
	pop	rcx
	ret	
.label_1166:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1165
	mov	edi, OFFSET FLAT:.str_16
	mov	esi, OFFSET FLAT:.str.1_13
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_1165:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f390
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_1167
	cmp	ecx, 0x11
	jne	.label_1168
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_1167:
	ret	
.label_1168:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f3b0

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	call	getline
	test	rax, rax
	jle	.label_1170
	mov	rcx, qword ptr [rsp + 8]
	movzx	edx, byte ptr [rax + rcx - 1]
	cmp	edx, 0xa
	jne	.label_1169
	mov	byte ptr [rcx + rax - 1], 0
.label_1169:
	mov	rdi, qword ptr [rsp + 8]
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_1171
.label_1170:
	xor	ebx, ebx
.label_1171:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	al, bl
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f420

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1172
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1173
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1173
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1172:
	mov	ecx, 1
.label_1173:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f470

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1174
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1174
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_1174:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f4a0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_1175
	ret	
.label_1175:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f4c0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_1176
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_1177
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_1177:
	add	rax, rcx
.label_1176:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f4f0

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
	jne	.label_1178
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1178
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1179
.label_1178:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1179:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1180
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1180:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f560

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_1181
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_1181
	test	r14b, 0x12
	je	.label_1181
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_1188
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	movups	xmmword ptr [r13 + 0x30], xmm0
	movups	xmmword ptr [r13 + 0x20], xmm0
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r14b, 2
	cmove	eax, r14d
	mov	dword ptr [r13 + 0x48], eax
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rdi, r13
	call	fts_palloc
	test	al, al
	je	.label_1187
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_1189
	mov	esi, OFFSET FLAT:.str_0
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_1191
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_1189:
	mov	byte ptr [rsp + 0x27], 1
	test	rbp, rbp
	je	.label_1197
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0x27], al
.label_1197:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	je	.label_1200
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x10], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1193:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_1192
	cmp	rax, 3
	jb	.label_1192
	cmp	rax, 2
	jb	.label_1192
	movzx	ecx, byte ptr [rax + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_1192
	nop	word ptr cs:[rax + rax]
.label_1196:
	movzx	ecx, byte ptr [r13 + rax - 2]
	cmp	ecx, 0x2f
	jne	.label_1192
	dec	rax
	cmp	rax, 1
	ja	.label_1196
	nop	word ptr cs:[rax + rax]
.label_1192:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1186
	mov	qword ptr [rbp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0x27]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_1190
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_1199
.label_1190:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_1199:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_1182
	mov	qword ptr [rbp + 0x10], rbx
	mov	qword ptr [rsp + 0x30], rbp
	jmp	.label_1183
.label_1182:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_1184
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 8], rbp
	jmp	.label_1183
.label_1184:
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x30], rbp
	nop	word ptr [rax + rax]
.label_1183:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_1193
	cmp	qword ptr [rsp + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_1198
	cmp	r12, 2
	jb	.label_1198
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x30], rax
.label_1198:
	mov	r12, qword ptr [rsp + 0x18]
.label_1200:
	mov	esi, OFFSET FLAT:.str_0
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_1185
	mov	rbx, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_1194
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_1195
	mov	esi, OFFSET FLAT:.str_3
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_1195
	or	byte ptr [r13 + 0x48], 4
.label_1195:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_1188
.label_1181:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
.label_1188:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1186:
	mov	r12, qword ptr [rsp + 0x18]
.label_1185:
	mov	rbx, qword ptr [rsp + 0x30]
.label_1194:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_1191:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_1187:
	mov	rdi, r13
	call	free
	xor	eax, eax
	jmp	.label_1188
	.section	.text
	.align	32
	#Procedure 0x40f8e0

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_1201
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_1202:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_1202
	inc	r14
.label_1201:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f930

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_1203
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	xor	eax, eax
	pop	rbx
	ret	
.label_1203:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_1204
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	pop	rbx
	ret	
.label_1204:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f990

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1205
	mov	rdi, rbx
	add	rdi, 0x108
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rax, rbx
.label_1205:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fa20

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_1206
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_1206:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40fa40

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_1207
	test	byte ptr [r14 + 0x48], 1
	je	.label_1207
	mov	dl, 1
.label_1207:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_1214
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_1214
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_1208
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_1211
.label_1214:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_1208
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_1212
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	__lstat
	test	eax, eax
	je	.label_1217
.label_1212:
	mov	eax, dword ptr [r14]
.label_1211:
	mov	dword ptr [r15 + 0x40], eax
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
	mov	ax, 0xa
.label_1209:
	movzx	eax, ax
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1208:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_1209
	cmp	ecx, 0x8000
	je	.label_1213
	cmp	ecx, 0x4000
	jne	.label_1215
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_1210
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_1210
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_1210:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	movzx	ecx, byte ptr [r15 + 0x108]
	cmp	ecx, 0x2e
	jne	.label_1209
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_1216
	movzx	ecx, cl
	cmp	ecx, 0x2e
	jne	.label_1209
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_1209
.label_1216:
	mov	ax, 1
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1209
	mov	ax, 5
	jmp	.label_1209
.label_1213:
	mov	ax, 8
	jmp	.label_1209
.label_1215:
	mov	ax, 3
	jmp	.label_1209
.label_1217:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_1209
	nop	
	.section	.text
	.align	32
	#Procedure 0x40fbd0

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_1222
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1221
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_1221
	mov	qword ptr [r15 + 0x10], rax
.label_1222:
	test	rbx, rbx
	je	.label_1223
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_1218:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_1218
.label_1223:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	cmp	r14, 1
	je	.label_1219
	mov	ecx, 1
	sub	rcx, r14
	dec	r14
	lea	rdx, [rax + 8]
.label_1220:
	mov	rsi, qword ptr [rdx - 8]
	mov	rdi, qword ptr [rdx]
	mov	qword ptr [rsi + 0x10], rdi
	add	rdx, 8
	inc	rcx
	jne	.label_1220
	lea	rax, [rax + r14*8]
.label_1219:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_1224
.label_1221:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_1224:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fcb0

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_1225
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_1228
	jmp	.label_1227
.label_1225:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_1226
	mov	rdi, rax
	call	cycle_check_init
.label_1228:
	mov	r14b, 1
	jmp	.label_1227
.label_1226:
	xor	r14d, r14d
.label_1227:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fd20

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1229
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
.label_1229:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40fd50

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1230
	nop	dword ptr [rax]
.label_1232:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1231
	call	closedir
.label_1231:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_1232
.label_1230:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fd90

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_1236
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_1239
	nop	word ptr cs:[rax + rax]
.label_1233:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_1242
	mov	rbx, qword ptr [rdi + 8]
.label_1242:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_1233
	jmp	.label_1235
.label_1239:
	mov	rbx, rdi
.label_1235:
	mov	rdi, rbx
	call	free
.label_1236:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_1238
	call	fts_lfree
.label_1238:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_1244
	xor	ebx, ebx
	test	al, 4
	jne	.label_1234
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_1243
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_1243:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_1240
	jmp	.label_1234
.label_1244:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_1234
	call	close
.label_1240:
	test	eax, eax
	je	.label_1234
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_1234:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_1237
	call	hash_free
.label_1237:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_1241
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_1241:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fe90

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_1245
	nop	word ptr cs:[rax + rax]
.label_1246:
	mov	edi, eax
	call	close
.label_1245:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_1247
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_1246
	jmp	.label_1245
.label_1247:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fed0

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1248
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_1249
	jmp	hash_free
.label_1248:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
.label_1249:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ff00

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_1250
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1250
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_1259
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_1260
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_1250
.label_1259:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_1260
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1274
	test	byte ptr [r14 + 0x48], 4
	jne	.label_1278
	mov	esi, OFFSET FLAT:.str_3
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_1282
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_1254
.label_1260:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_1276
	movzx	eax, ax
	cmp	eax, 4
	je	.label_1283
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_1284
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_1283
.label_1284:
	cmp	qword ptr [r14 + 8], 0
	je	.label_1286
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_1289
	cmp	qword ptr [r14 + 8], 0
	je	.label_1286
.label_1548:
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1257
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1268
	nop	word ptr [rax + rax]
.label_1276:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_1261
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_1263
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_1266
.label_1261:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1272
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_1276
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_1281
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1275
	test	byte ptr [r14 + 0x48], 4
	jne	.label_1275
	mov	esi, OFFSET FLAT:.str_3
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_1285
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_1275
.label_1290:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_1268:
	test	rax, rax
	jne	.label_1290
	jmp	.label_1257
.label_1283:
	test	byte ptr [rbx + 0x72], 2
	je	.label_1291
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_1291:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_1253
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_1253:
	mov	word ptr [rbx + 0x70], 6
.label_1252:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_1250
.label_1272:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_1262
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_1250
.label_1274:
	mov	r15, rbx
	jmp	.label_1254
.label_1278:
	mov	r15, rbx
	jmp	.label_1254
.label_1263:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_1277
	mov	rdi, rbx
	call	free
	jmp	.label_1281
.label_1262:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_1254
.label_1289:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_1286:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_1288
.label_1257:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_1281
.label_1288:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1250
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_1252
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_1252
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_1252
.label_1282:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_1254
.label_1277:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1250
.label_1266:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_1269
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_1270
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1273
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_1280
	test	al, 1
	jne	.label_1287
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_1
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_1255
.label_1269:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_1250
.label_1273:
	mov	rdi, r14
	call	restore_initial_cwd
.label_1255:
	test	eax, eax
	je	.label_1287
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1287
.label_1280:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1256
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_1267
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_1256
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1256
.label_1285:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_1275:
	mov	word ptr [r15 + 0x74], 3
.label_1281:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	jne	.label_1264
	dec	rcx
.label_1264:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_1254:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_1279
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_1251
	cmp	rax, 2
	jne	.label_1270
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_1265
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_1265
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_1251
.label_1265:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_1279
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1251
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1251
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_1251:
	movzx	eax, word ptr [r15 + 0x70]
.label_1279:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1250
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_1258
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_1258:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_1250
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_1250
.label_1267:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_1256:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_1287:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_1271
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	setne	cl
	movzx	ecx, cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_1271
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_1271:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_1250:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1270:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4104b0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1294
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_1292
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_1294:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1293
	cmp	qword ptr [rax + 0x58], 0
	js	.label_1293
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_1292
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_1293
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_1293
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_1293:
	add	rsp, 0x18
	ret	
.label_1292:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410550

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r14, rdi
	test	rbx, rbx
	je	.label_1307
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_1295
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_1295
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_1295:
	test	eax, eax
	sete	r15b
	jmp	.label_1299
.label_1307:
	xor	r15d, r15d
.label_1299:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1301
	test	r13d, r13d
	jns	.label_1302
	mov	cl, r15b
	xor	cl, 1
	jne	.label_1303
	and	eax, 0x200
	je	.label_1305
	mov	qword ptr [rsp], rsi
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_1297
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
	jmp	.label_1297
.label_1301:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_1296
	and	eax, 0x200
	je	.label_1296
	mov	edi, r13d
	call	close
	jmp	.label_1296
.label_1305:
	mov	qword ptr [rsp], rsi
	jmp	.label_1297
.label_1302:
	mov	qword ptr [rsp], rsi
	jmp	.label_1297
.label_1303:
	mov	qword ptr [rsp], rsi
.label_1297:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_1300
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_1296
.label_1300:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_1308
	test	rbx, rbx
	je	.label_1304
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	jne	.label_1304
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x2e
	jne	.label_1304
	cmp	byte ptr [rbx + 2], 0
	jne	.label_1304
.label_1308:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	__fstat
	test	eax, eax
	jne	.label_1310
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_1309
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_1309
.label_1304:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_1298
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_1306
.label_1298:
	test	r15b, r15b
	sete	al
	movzx	edx, al
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_1296
.label_1309:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_1310:
	mov	ebp, 0xffffffff
.label_1306:
	test	r13d, r13d
	jns	.label_1296
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_1296:
	mov	eax, ebp
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
	.align	32
	#Procedure 0x410700

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r12d, esi
	mov	r14, rdi
	mov	rbp, qword ptr [r14]
	mov	qword ptr [rsp + 0x48], rbp
	mov	r15, qword ptr [rbp + 0x18]
	mov	qword ptr [rsp + 0x60], r15
	test	r15, r15
	je	.label_1311
	mov	rdi, r15
	call	dirfd
	mov	dword ptr [rsp + 0x84], eax
	test	eax, eax
	js	.label_1326
	mov	qword ptr [rsp + 0x38], -1
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_1327
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x38], rax
.label_1327:
	lea	rax, [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	jmp	.label_1340
.label_1311:
	mov	eax, 0x204
	and	eax, dword ptr [r14 + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_1348
	mov	edi, dword ptr [r14 + 0x2c]
.label_1348:
	mov	rsi, qword ptr [rbp + 0x30]
	mov	eax, dword ptr [r14 + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_1351
	test	al, 1
	je	.label_1353
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_1351
.label_1353:
	mov	edx, 0x20000
.label_1351:
	lea	rcx, [rsp + 0x84]
	call	opendirat
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_1359
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 0xb
	jne	.label_1361
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_1317
.label_1326:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
.label_1359:
	xor	r13d, r13d
	cmp	r12d, 3
	jne	.label_1313
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	xor	r13d, r13d
	jmp	.label_1313
.label_1361:
	test	byte ptr [r14 + 0x49], 1
	je	.label_1317
	mov	rdi, r14
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbp
	call	fts_stat
	mov	rdi, r14
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_1329
.label_1317:
	mov	qword ptr [rsp + 0x38], -1
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_1330
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x38], rax
.label_1330:
	lea	rax, [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	test	r15, r15
	jne	.label_1340
	cmp	r12d, 2
	jne	.label_1347
	mov	r13d, r12d
	xor	r12d, r12d
	jmp	.label_1349
.label_1347:
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_1332
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_1332
	mov	r13d, r12d
	mov	esi, dword ptr [rsp + 0x84]
	mov	rdi, rbp
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_1357
.label_1329:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_1313
.label_1332:
	mov	r13d, r12d
	xor	r12d, r12d
.label_1357:
	xor	r12b, 1
.label_1349:
	cmp	r13d, 3
	je	.label_1363
	test	r12b, r12b
	jne	.label_1363
	mov	dword ptr [rsp + 0x18], r12d
	mov	r12d, r13d
	jmp	.label_1340
.label_1363:
	mov	qword ptr [rsp + 0x60], r15
	test	byte ptr [r14 + 0x49], 2
	mov	ebx, dword ptr [rsp + 0x84]
	je	.label_1366
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp + 0x84], ebx
.label_1366:
	test	ebx, ebx
	js	.label_1318
	xor	ecx, ecx
	mov	rdi, r14
	mov	rsi, rbp
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1323
.label_1318:
	cmp	r13d, 3
	jne	.label_1320
	test	r12b, r12b
	je	.label_1320
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
.label_1320:
	or	byte ptr [rbp + 0x72], 1
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	je	.label_1334
	mov	edi, dword ptr [rsp + 0x84]
	test	edi, edi
	js	.label_1334
	call	close
.label_1334:
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0x18], 0
.label_1323:
	mov	r12d, r13d
	mov	r15, qword ptr [rsp + 0x60]
.label_1340:
	mov	rax, qword ptr [rbp + 0x38]
	mov	rdx, qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_1350
	dec	rdx
.label_1350:
	mov	dword ptr [rsp + 0x1c], r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	test	byte ptr [r14 + 0x48], 4
	je	.label_1354
	mov	rax, qword ptr [r14 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x50], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_1354:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x68], rax
	mov	rcx, qword ptr [r14 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x28], rax
	add	rdx, 2
	mov	qword ptr [rsp + 8], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r12d, r12d
	xor	ebx, ebx
	xor	r13d, r13d
.label_1352:
	cmp	qword ptr [rbp + 0x18], 0
	je	.label_1355
	mov	qword ptr [rsp + 0x70], rbx
	mov	qword ptr [rsp + 0x78], r13
	call	__errno_location
	mov	r13, rax
	nop	dword ptr [rax]
.label_1344:
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [rbp + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_1325
	test	byte ptr [r14 + 0x48], 0x20
	jne	.label_1333
	movzx	eax, byte ptr [r15 + 0x13]
	cmp	eax, 0x2e
	jne	.label_1333
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	eax, 0x2e
	je	.label_1335
	test	al, al
	je	.label_1339
	jmp	.label_1333
	nop	
.label_1335:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_1333
.label_1339:
	cmp	qword ptr [rbp + 0x18], 0
	jne	.label_1344
	jmp	.label_1345
	nop	word ptr cs:[rax + rax]
.label_1333:
	mov	qword ptr [rsp + 0x20], r12
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_1338
	cmp	rbp, qword ptr [rsp + 0x40]
	jae	.label_1324
	mov	rbx, qword ptr [rsp + 0x68]
	jmp	.label_1337
	nop	
.label_1324:
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_1338
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_1365
	mov	rbx, qword ptr [rsp + 0x68]
	add	rax, rbx
	test	byte ptr [r14 + 0x48], 4
	mov	rcx, qword ptr [rsp + 0x50]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1367
.label_1365:
	mov	rbx, qword ptr [rsp + 0x68]
.label_1367:
	mov	rax, qword ptr [r14 + 0x30]
	sub	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
.label_1337:
	add	rbp, rbx
	jb	.label_1356
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [r14 + 0x48], 4
	jne	.label_1322
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_1343
	nop	dword ptr [rax]
.label_1322:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x50]
	call	memmove
.label_1343:
	mov	rbp, qword ptr [rsp + 0x48]
	mov	r13, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	je	.label_1336
	test	byte ptr [r14 + 0x49], 4
	jne	.label_1336
	mov	qword ptr [rsp + 0x68], rbx
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_1358
	nop	word ptr [rax + rax]
.label_1336:
	mov	qword ptr [rsp + 0x68], rbx
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_1360
	movzx	eax, byte ptr [r15 + 0x12]
	cmp	eax, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_1312
.label_1360:
	xor	ebx, ebx
.label_1312:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
.label_1358:
	mov	r15, qword ptr [rsp + 0x60]
	mov	qword ptr [r12 + 0x10], 0
	test	r13, r13
	mov	rax, r12
	je	.label_1315
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r13
.label_1315:
	mov	r13, rax
	mov	rbx, qword ptr [rsp + 0x70]
	cmp	rbx, 0x2710
	jne	.label_1314
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_1314
	mov	esi, dword ptr [rsp + 0x84]
	mov	rdi, rbp
	call	dirent_inode_sort_may_be_useful
	mov	qword ptr [rsp + 0x10], rax
.label_1314:
	inc	rbx
	cmp	qword ptr [rsp + 0x38], rbx
	ja	.label_1352
	jmp	.label_1355
.label_1325:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r15, qword ptr [rsp + 0x60]
	mov	rbx, qword ptr [rsp + 0x70]
	je	.label_1346
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, r15
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [rbp + 0x70], cx
.label_1346:
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 0x78]
	je	.label_1355
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_1355
.label_1345:
	mov	r15, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbx, qword ptr [rsp + 0x70]
.label_1355:
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	je	.label_1362
	mov	rdi, r14
	mov	rsi, r13
	call	fts_padjust
.label_1362:
	test	byte ptr [r14 + 0x48], 4
	mov	r12d, dword ptr [rsp + 0x1c]
	je	.label_1319
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	rdx, qword ptr [r14 + 0x30]
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_1319:
	test	r15, r15
	jne	.label_1316
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	je	.label_1316
	cmp	r12d, 1
	je	.label_1364
	test	rbx, rbx
	jne	.label_1316
.label_1364:
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_1321
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_1
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_1331
.label_1321:
	mov	rdi, r14
	call	restore_initial_cwd
.label_1331:
	test	eax, eax
	je	.label_1316
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1328
.label_1316:
	test	rbx, rbx
	je	.label_1341
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	je	.label_1342
	mov	rbp, qword ptr [rsp + 0x58]
	mov	qword ptr [word ptr [rbp]], OFFSET FLAT:fts_compare_ino
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	fts_sort
	mov	r13, rax
	mov	qword ptr [rbp], 0
.label_1342:
	cmp	rbx, 2
	jb	.label_1313
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_1313
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	fts_sort
	mov	r13, rax
	jmp	.label_1313
.label_1341:
	cmp	r12d, 3
	jne	.label_1328
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	je	.label_1328
	movzx	eax, ax
	cmp	eax, 7
	je	.label_1328
	mov	word ptr [rbp + 0x70], 6
.label_1328:
	mov	rdi, r13
	call	fts_lfree
	xor	r13d, r13d
.label_1313:
	mov	rax, r13
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1338:
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	xor	r13d, r13d
	jmp	.label_1313
.label_1356:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	xor	r13d, r13d
	jmp	.label_1313
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410e80

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_1368
	test	ah, 2
	jne	.label_1370
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_1369
.label_1368:
	xor	eax, eax
	jmp	.label_1369
.label_1370:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
	xor	eax, eax
.label_1369:
	movzx	ebp, al
	add	rbx, 0x60
	mov	rdi, rbx
	call	fd_ring_clear
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410ee0

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1372
	cmp	rbx, r15
	jne	.label_1371
	cmp	byte ptr [rbx + 1], 0
	je	.label_1372
.label_1371:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_1372:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410f70

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_1376
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_1377
	cmp	rax, 0x52654973
	je	.label_1374
	cmp	rax, 0x5346414f
	je	.label_1373
	jmp	.label_1375
.label_1376:
	test	rax, rax
	je	.label_1373
	cmp	rax, 0x6969
	je	.label_1373
	cmp	rax, 0x9fa0
	je	.label_1373
	jmp	.label_1375
.label_1377:
	cmp	rax, 0x58465342
	je	.label_1374
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_1375
.label_1373:
	xor	ecx, ecx
	jmp	.label_1374
.label_1375:
	mov	ecx, 1
.label_1374:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410fe0

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_1378
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1379
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_1380
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_1382
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_1381
.label_1378:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_1380
	mov	qword ptr [r14], r14
.label_1381:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_1380
.label_1379:
	xor	ebp, ebp
	jmp	.label_1380
.label_1382:
	xor	ebp, ebp
.label_1380:
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411080

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	cmp	esi, ebp
	jne	.label_1383
	cmp	esi, -0x64
	jne	.label_1386
.label_1383:
	test	dl, dl
	je	.label_1387
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1384
	mov	edi, eax
	jmp	.label_1385
.label_1387:
	test	esi, esi
	js	.label_1384
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_1384
	mov	edi, esi
.label_1385:
	call	close
.label_1384:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1386:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4110d0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_1388
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_1388:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411100
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	eax, ebp
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_1389
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_1390
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_1397
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_1390
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_1390
.label_1389:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_1390
.label_1397:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_1396
	call	fts_lfree
.label_1396:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_1398
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_1398:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_1392
	mov	rax, qword ptr [r12 + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_1392
	test	byte ptr [rbx + 0x48], 4
	jne	.label_1392
	mov	esi, OFFSET FLAT:.str_3
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1395
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_1391
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_1393
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_1390
.label_1392:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_1390:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1395:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_1390
.label_1391:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_1394
.label_1393:
	mov	edi, ebp
	call	close
.label_1394:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_1390
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411240

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411250

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1399
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_1399:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411270

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_1403
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_1404
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_1405
.label_1404:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_1401
	mov	rax, qword ptr [rax + 8]
	jmp	.label_1403
.label_1401:
	mov	r12b, 1
	mov	r14, rbp
.label_1405:
	xor	eax, eax
	test	r15d, r15d
	js	.label_1403
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1403
	test	r12b, r12b
	je	.label_1402
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1402
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_1400
	cmp	rax, rbp
	je	.label_1402
	call	abort
.label_1400:
	mov	rdi, rbp
	call	free
.label_1402:
	mov	rax, qword ptr [rsp + 0x10]
.label_1403:
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411380

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411390

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4113a0

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_1406
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_1407]]
.label_1406:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4113c0

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_1408
	cmp	rcx, 0x1021994
	je	.label_1408
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_1408
	mov	al, 1
.label_1408:
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4113f0

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_1414
	nop	word ptr [rax + rax]
.label_1412:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_1414:
	test	rcx, rcx
	je	.label_1409
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_1412
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_1412
.label_1409:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_1410
	nop	word ptr cs:[rax + rax]
.label_1411:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_1413
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_1413:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_1415
	mov	rcx, qword ptr [rsi + 8]
.label_1415:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_1411
.label_1410:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411480

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4114b0
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4114c0

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
	je	.label_1416
	cmp	r15, -2
	jb	.label_1416
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1416
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1416:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411520

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411530

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	mov	dword ptr [rcx], edx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x411540

	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:
	cmp	esi, -1
	je	.label_1417
	mov	edi, esi
	mov	esi, edx
	jmp	fchmod
.label_1417:
	mov	esi, edx
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411560

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	push	rax
	mov	eax, dword ptr [rdi]
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, eax
	call	chmod_or_fchmod
	neg	eax
	sbb	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x411580

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411590

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_1421
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_1418:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_1419
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_1423
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_1424
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_1420
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_1419
.label_1420:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1419
.label_1424:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_1419:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_1418
	jmp	.label_1422
.label_1421:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_1422:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_1423:
	mov	rax, rbp
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
	.align	32
	#Procedure 0x411690

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_1425
	mov	esi, OFFSET FLAT:.str.1_14
	jmp	.label_1426
.label_1425:
	mov	esi, OFFSET FLAT:.str_17
.label_1426:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	32
	#Procedure 0x411700

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_1431
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1428:
	test	rbp, rbp
	je	.label_1430
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1427
.label_1430:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_5
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_1429
	nop	word ptr cs:[rax + rax]
.label_1427:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_1429:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_1428
.label_1431:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x411800

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_1432
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_1432:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411870
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_1433
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_1434:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_1433
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_1434
.label_1433:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4118e0
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4118f0
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411900
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411910
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411920
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411930

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411940
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411960
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411980
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4119a0
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4119c0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1435
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_1435
.label_1436:
	ret	
.label_1435:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1436
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4119f0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1437
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1437:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x411a10
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411a20
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
	.align	32
	#Procedure 0x411a30
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1438
.label_1439:
	ret	
.label_1438:
	cmp	edi, 0x7f
	je	.label_1439
	xor	eax, eax
	jmp	.label_1439
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411a50
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411a60
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411a70
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411a80
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411a90
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_1440
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_1440
.label_1441:
	ret	
.label_1440:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_1441
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ac0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1442
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_1442:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411ae0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411af0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1443
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1443:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x411b10
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
	.align	32
	#Procedure 0x411b20
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
	.align	32
	#Procedure 0x411b30

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
	je	.label_1445
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1444
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_1444
.label_1445:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1444
	test	cl, cl
	jne	.label_1444
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_1444:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ba0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x411bb0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_1446
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_1448
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_1448
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_1449
.label_1448:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_1447
	mov	al, 1
	test	rbx, rbx
	je	.label_1449
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_1447:
	xor	eax, eax
.label_1449:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1446:
	mov	edi, OFFSET FLAT:.str_18
	mov	esi, OFFSET FLAT:.str.1_15
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411c30

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411c40

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	call	opendir
	mov	r14, rax
	xor	ebx, ebx
	test	r14, r14
	je	.label_1452
	mov	rdi, r14
	call	dirfd
	mov	ecx, eax
	cmp	ecx, 2
	ja	.label_1450
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ecx
	call	rpl_fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1454
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	call	__errno_location
	mov	r15d, dword ptr [rax]
	test	rbx, rbx
	jne	.label_1453
	mov	edi, ebp
	call	close
	jmp	.label_1451
.label_1450:
	mov	rbx, r14
	jmp	.label_1452
.label_1454:
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_1451:
	xor	ebx, ebx
.label_1453:
	mov	rdi, r14
	call	closedir
	call	__errno_location
	mov	dword ptr [rax], r15d
.label_1452:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411cd0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411ce0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rdi, [rsp + 8]
	call	gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411d00

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1456
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1457
	cmp	byte ptr [rax + 1], 0
	je	.label_1455
.label_1457:
	mov	esi, OFFSET FLAT:.str.1_16
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1456
.label_1455:
	xor	ebx, ebx
.label_1456:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x411d40

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_1458
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_1459:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	mov	cl, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_1459
.label_1458:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411d70

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_1460:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_1460
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x411d90

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411da0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	jne	.label_1461
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_1461:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411de0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_1462
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_1463
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_1463:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
.label_1462:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411e20

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_17
	cmp	byte ptr [rcx], 0
	je	.label_1464
	mov	rax, rcx
.label_1464:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411e50

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_1465
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1465:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_1467
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1466
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1468
.label_1466:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1468:
	mov	ecx, dword ptr [rax]
.label_1467:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x411f30

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411f50

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_1469
	mov	rdi, rax
	pop	rax
	jmp	randint_new
.label_1469:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411f70
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411f80

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	mov	qword ptr [rsp + 0x10], rbp
	lea	r12, [rsp + 0x20]
	nop	dword ptr [rax]
.label_1473:
	cmp	rbx, r13
	jae	.label_1470
	mov	rax, rbx
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_1476:
	mov	rdi, rax
	call	shift_left
	add	rax, 0xff
	inc	r14
	cmp	rax, r13
	jb	.label_1476
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	mov	rdx, r14
	call	randread
	mov	rbp, r12
	nop	dword ptr [rax]
.label_1475:
	mov	rdi, r15
	call	shift_left
	movzx	r15d, byte ptr [rbp]
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	inc	rbp
	cmp	rbx, r13
	jb	.label_1475
	mov	rcx, r15
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_1472
	nop	word ptr cs:[rax + rax]
.label_1470:
	mov	rcx, r15
.label_1472:
	mov	rsi, rbx
	sub	rsi, r13
	je	.label_1471
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	r15, rdx
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	ja	.label_1473
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, r15
	jmp	.label_1474
.label_1471:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_1474:
	mov	rax, rcx
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
	.align	32
	#Procedure 0x4120c0

	.globl shift_left
	.type shift_left, @function
shift_left:
	shl	rdi, 8
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4120d0

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4120f0

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, rbx
	call	randint_free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412130

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	test	r15, r15
	je	.label_1479
	test	rbx, rbx
	je	.label_1477
	mov	esi, OFFSET FLAT:.str_19
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_1478
	mov	rdi, r12
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	cmp	r15, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rdi, r12
	call	setvbuf
	jmp	.label_1478
.label_1479:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_1477:
	xor	edi, edi
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	call	get_nonce
	mov	rdi, rbx
	call	isaac_seed
.label_1478:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4121e0

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x1038
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412210

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:.str.3_6
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1481
	cmp	rbx, 0x800
	mov	edx, 0x800
	cmovbe	rdx, rbx
	mov	edi, ebp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	mov	edi, ebp
	call	close
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_1481
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_1480
.label_1481:
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	xor	esi, esi
	mov	rdi, rbp
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_1480
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_1480
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rsi, [rsp + 8]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_1480
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getuid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_1480
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp + 8], eax
	add	r14, r15
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	mov	rdx, rbx
	call	memcpy
.label_1480:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4123b0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4123c0
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4123d0

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_1482
	jmp	readsource
.label_1482:
	add	rdi, 0x18
	jmp	readisaac
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4123f0

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	call	fread_unlocked
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	cmp	rbx, r13
	je	.label_1484
	nop	word ptr cs:[rax + rax]
.label_1483:
	sub	r13, rbx
	add	r14, rbx
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r13
	call	fread_unlocked
	mov	rbx, rax
	cmp	r13, rbx
	jne	.label_1483
.label_1484:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412480

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_1485
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_1486:
	cmp	r15, 0x800
	jb	.label_1487
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_1486
	jmp	.label_1488
.label_1487:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_1485:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_1488:
	mov	qword ptr [r14], r12
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
	.align	32
	#Procedure 0x412530

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_1489
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_1489:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412570

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1490
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_1492
	mov	esi, OFFSET FLAT:.str.1_18
	jmp	.label_1491
.label_1492:
	mov	esi, OFFSET FLAT:.str.2_9
.label_1491:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_1490:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4125d0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rax, [r14 + 0x400]
	mov	qword ptr [rsp], rax
	mov	rbp, rsi
	mov	r15, r14
	nop	dword ptr [rax]
.label_1494:
	mov	qword ptr [rsp + 0x10], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r15 + 0x400]
	mov	rbx, qword ptr [r15]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rdi, r13
	call	just
	mov	rbp, rax
	shr	rbp, 5
	xor	rbp, r13
	add	rbp, qword ptr [r15 + 0x408]
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r15 + 8], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r15 + 0x410]
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r15 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r15 + 0x418]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rcx, qword ptr [rsp]
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r15, 0x20
	add	rbp, 0x20
	cmp	r15, rcx
	jb	.label_1494
	add	qword ptr [rsp + 8], 0x400
	lea	rax, [r14 + 0x800]
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_1493:
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [rcx - 0x400]
	mov	rbx, qword ptr [rcx]
	mov	rdi, r14
	mov	rsi, rbx
	mov	r15, rcx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	rdi, r13
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r13
	add	rbx, qword ptr [r15 - 0x3f8]
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbp, rax
	mov	r13, qword ptr [rsp + 8]
	mov	qword ptr [r13 + 8], rbp
	mov	r12, rbx
	shl	r12, 0xc
	xor	r12, rbx
	add	r12, qword ptr [r15 - 0x3f0]
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r12
	add	rbp, rax
	mov	qword ptr [r15 + 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r13 + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r15 - 0x3e8]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rcx, r15
	mov	r12, rax
	mov	rax, r13
	mov	qword ptr [rax + 0x18], r12
	add	rcx, 0x20
	add	rax, 0x20
	mov	qword ptr [rsp + 8], rax
	cmp	rcx, qword ptr [rsp + 0x10]
	jb	.label_1493
	mov	qword ptr [r14 + 0x800], rbx
	mov	qword ptr [r14 + 0x808], r12
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
	.align	32
	#Procedure 0x412930

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412940

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412950

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x20], rdi
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1495:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x28], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x10]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp]
	add	rbx, r13
	mov	qword ptr [rsp + 0x10], rbx
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	add	r13, rdi
	mov	qword ptr [rsp + 8], r13
	mov	r13, qword ptr [rsp + 0x28]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 8]
	add	rax, r12
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_1495
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1496:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 0x28]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp + 0x30]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 0x28]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_1496
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412c90

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	32
	#Procedure 0x412ca0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412cb0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1497
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1499
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1497
.label_1499:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1497
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1498
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1498:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1497:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412d30

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_1510
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1510:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_1502
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1511
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1500
	test	esi, esi
	jne	.label_1502
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1503
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1501
.label_1502:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1505
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1500
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1504
.label_1511:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_1500:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1508
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1507
.label_1508:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1507:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_1504:
	cmp	eax, 6
	jne	.label_1505
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1512
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1513
.label_1505:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1506
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1509
.label_1503:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1501:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_1512:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1513:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_1506:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1509:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412f40

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412f50

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1515
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_1517
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1517
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1514
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_1518
.label_1517:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1518
.label_1515:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_1518:
	test	ebx, ebx
	js	.label_1514
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1514
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1516
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1514
.label_1516:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_1514:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413020

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413040

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
	je	.label_1519
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1523
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1520
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1521
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1519
.label_1521:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1522
.label_1523:
	mov	rax, rbx
	jmp	.label_1519
.label_1520:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1522:
	xor	eax, eax
.label_1519:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413180

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x413190

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section	.text
	.align	32
	#Procedure 0x4131a0

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x4131b0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
	nop	word ptr cs:[rax + rax]
	nop	
	.section .text
	.align	32
	#Procedure 0x4131d0

	.globl __mknod
	.type __mknod, @function
__mknod:
	sub	rsp, 0x18
	lea	rcx, [rsp + 8]
	mov	qword ptr [rsp + 8], rdx
	mov	edx, esi
	mov	rsi, rdi
	xor	edi, edi
	call	__xmknod
	add	rsp, 0x18
	ret	