	.section	.text
	.align	32
	#Procedure 0x401a40

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	ebp, edi
	mov	rbp, rbp
	test	ebp, ebp
	jne	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rbp, rbp
	mov	rcx, rdx
	mov	r8, rdx
	lea	rdi, [rdi]
	call	__printf_chk
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.7
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rbp, rbp
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c80

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	pop	rax
	mov	rsp, rsp
	jmp	fputs_unlocked
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cc0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	nop	
	mov	esi, OFFSET FLAT:.str.30
	nop	word ptr cs:[rax + rax]
.label_11:
	mov	edi, OFFSET FLAT:.str.12
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_10
	mov	rsi, qword ptr [rbx + 0x10]
	nop	
	add	rbx, 0x10
	lea	rsi, [rsi]
	test	rsi, rsi
	jne	.label_11
.label_10:
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.12
	mov	rsp, rsp
	cmovne	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	xor	eax, eax
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, 5
	xor	esi, esi
	lea	rsi, [rsi]
	call	setlocale
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_9
	mov	esi, OFFSET FLAT:.str.40
	nop	
	mov	edx, 3
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	strncmp
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_9
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.41
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
.label_9:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.42
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	r14d, OFFSET FLAT:.str.12
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.12
	nop	
	xor	eax, eax
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rdx, rax
	lea	rdi, [rdi]
	cmp	rbx, r14
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.44
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	cmove	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rdx
	nop	
	mov	rdx, rbx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	jmp	__printf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401e60

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	nop	
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	nop	
	mov	edi, OFFSET FLAT:.str.14
	mov	esi, OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	call	bindtextdomain
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	mov	rbp, rbp
	call	atexit
	mov	rsp, rsp
	mov	r15d, 0x10
	lea	rdi, [rdi]
	mov	r12d, 0xffffffff
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	r14d, r14d
	nop	
	jmp	.label_15
.label_795:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + specified_range]],  rax
	mov	r13b, 1
	nop	word ptr cs:[rax + rax]
.label_15:
	mov	edx, OFFSET FLAT:.str.16
	nop	
	mov	ecx, OFFSET FLAT:long_options
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	getopt_long
	cmp	eax, 0x51
	lea	rsi, [rsi]
	jle	.label_21
	lea	ecx, [rax - 0x66]
	cmp	ecx, 0x10
	lea	rsi, [rsi]
	ja	.label_22
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_25]]
.label_794:
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_15
	nop	word ptr cs:[rax + rax]
.label_21:
	mov	rsp, rsp
	cmp	eax, 0x47
	nop	
	jle	.label_30
	nop	
	cmp	eax, 0x48
	mov	rsp, rsp
	je	.label_33
	cmp	eax, 0x4c
	nop	
	je	.label_36
	mov	rsp, rsp
	cmp	eax, 0x50
	jne	.label_14
	mov	r15d, 0x10
	jmp	.label_15
	nop	dword ptr [rax + rax]
.label_22:
	lea	ecx, [rax - 0x80]
	cmp	ecx, 3
	mov	rsp, rsp
	ja	.label_20
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_13]]
.label_789:
	mov	r12d, 1
	jmp	.label_15
.label_20:
	cmp	eax, 0x52
	jne	.label_14
	mov	byte ptr [byte ptr [rip + recurse]],  1
	jmp	.label_15
.label_796:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + specified_role]],  rax
	lea	rsi, [rsi]
	mov	r13b, 1
	jmp	.label_15
.label_797:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + specified_type]],  rax
	lea	rdi, [rdi]
	mov	r13b, 1
	jmp	.label_15
.label_798:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + specified_user]],  rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	rsp, rsp
	jmp	.label_15
.label_799:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	jmp	.label_15
.label_790:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_15
.label_791:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	jmp	.label_15
.label_792:
	lea	rsi, [rsi]
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_15
.label_33:
	mov	rbp, rbp
	mov	r15d, 0x11
	jmp	.label_15
.label_36:
	mov	r15d, 2
	jmp	.label_15
.label_30:
	cmp	eax, -1
	jne	.label_34
	movzx	eax,  byte ptr [byte ptr [rip + recurse]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_37
	lea	rsi, [rsi]
	cmp	r15d, 0x10
	nop	
	jne	.label_17
	lea	rdi, [rdi]
	cmp	r12d, 1
	je	.label_18
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + affect_symlink_referent]],  0
	nop	
	jmp	.label_31
.label_37:
	test	r12d, r12d
	setne	byte ptr [byte ptr [rip + affect_symlink_referent]]
.label_31:
	nop	
	mov	r15d, 0x10
	jmp	.label_23
.label_17:
	test	r12d, r12d
	je	.label_24
	mov	byte ptr [byte ptr [rip + affect_symlink_referent]],  1
.label_23:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	mov	ecx, ebp
	mov	rsp, rsp
	sub	ecx, eax
	cmp	r14, 1
	mov	edx, 1
	nop	
	mov	esi, 1
	adc	esi, 0
	nop	
	test	r13b, r13b
	mov	rbp, rbp
	cmovne	esi, edx
	cmp	ecx, esi
	jl	.label_27
	test	r14, r14
	nop	
	jne	.label_16
	test	r13b, r13b
	je	.label_38
	mov	qword ptr [word ptr [rip + specified_context]],  0
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	je	.label_19
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	xor	al, 1
	test	al, 1
	jne	.label_19
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	lea	rsi, [rsi]
	call	get_root_dev_ino
	mov	qword ptr [word ptr [rip + root_dev_ino]],  rax
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	jne	.label_26
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.3_0
	lea	rsi, [rsi]
	jmp	.label_12
.label_19:
	nop	
	mov	qword ptr [word ptr [rip + root_dev_ino]],  0
.label_26:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	lea	rdi, [rbx + rax*8]
	nop	
	or	r15d, 8
	mov	esi, r15d
	lea	rdi, [rdi]
	call	process_files
	movzx	eax, al
	mov	rbp, rbp
	xor	eax, 1
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_34:
	cmp	eax, 0xffffff7d
	je	.label_35
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7e
	jne	.label_14
	xor	edi, edi
	nop	
	call	usage
.label_35:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.12
	nop	
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.18_0
	mov	r9d, OFFSET FLAT:.str.19
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	call	version_etc
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_14:
	nop	
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_27:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	cmp	eax, ebp
	jge	.label_32
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	nop	
	call	dcgettext
	mov	r14, rax
	movsxd	rax, ebp
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_16:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], 0
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x10]
	nop	
	mov	rdi, r14
	nop	
	call	getfilecon
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r14
.label_12:
	lea	rdi, [rdi]
	call	quotearg_style
	jmp	.label_29
.label_38:
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + specified_context]],  rdi
	call	se_const
	nop	
	mov	rdi, rax
	call	security_check_context
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rax
	mov	rdi,  qword ptr [word ptr [rip + specified_context]]
	call	quote
.label_29:
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
.label_32:
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	rbp, rbp
	jmp	.label_28
.label_24:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
.label_28:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402420

	.globl se_const
	.type se_const, @function
se_const:
	mov	rsp, rsp
	mov	rax, rdi
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402430

	.globl process_files
	.type process_files, @function
process_files:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	xor	edx, edx
	call	xfts_open
	mov	r14, rax
	mov	rdi, r14
	call	rpl_fts_read
	mov	bl, 1
	jmp	.label_40
	nop	word ptr cs:[rax + rax]
.label_42:
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rax
	call	process_file
	lea	rdi, [rdi]
	and	bl, al
	nop	
	mov	rdi, r14
	call	rpl_fts_read
.label_40:
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_42
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_41
	xor	ebx, ebx
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.58
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
.label_41:
	mov	rdi, r14
	call	rpl_fts_close
	nop	
	test	eax, eax
	je	.label_39
	mov	rsp, rsp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
.label_39:
	mov	rsp, rsp
	mov	al, bl
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402520

	.globl process_file
	.type process_file, @function
process_file:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	nop	
	push	rax
	mov	rsp, rsp
	mov	r12, rsi
	mov	rbp, rbp
	mov	r14, rdi
	mov	r13, qword ptr [r12 + 0x30]
	mov	r15, qword ptr [r12 + 0x38]
	mov	rbp, rbp
	movzx	eax, word ptr [r12 + 0x70]
	mov	rsp, rsp
	mov	bl, 1
	mov	ecx, eax
	lea	rsi, [rsi]
	dec	ecx
	cmp	ecx, 9
	ja	.label_50
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_56]]
.label_817:
	mov	bl, 1
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + recurse]]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_44
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + root_dev_ino]]
	mov	bl, 1
	test	rax, rax
	je	.label_47
	mov	rcx, qword ptr [r12 + 0x80]
	cmp	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_47
	mov	rcx, qword ptr [r12 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	jne	.label_47
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2f
	mov	rsp, rsp
	jne	.label_53
	cmp	byte ptr [r15 + 1], 0
	mov	rbp, rbp
	je	.label_58
.label_53:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.61
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	r13, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 4
	nop	
	mov	edx, OFFSET FLAT:.str.3_0
	call	quotearg_n_style
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, r13
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rbp, rbp
	jmp	.label_54
.label_818:
	nop	
	mov	rdi, r14
	mov	rsi, r12
	mov	rsp, rsp
	call	cycle_warning_required
	lea	rdi, [rdi]
	mov	bl, 1
	mov	rbp, rbp
	test	al, al
	je	.label_44
	xor	ebx, ebx
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	error
	jmp	.label_47
.label_819:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r14
	mov	r14d, dword ptr [r12 + 0x40]
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	nop	
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp]
	mov	rsp, rsp
	mov	rdx, rbp
	call	error
	nop	
	jmp	.label_44
.label_820:
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	bl, 1
	je	.label_47
	jmp	.label_44
.label_821:
	mov	ebp, dword ptr [r12 + 0x40]
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rdx, r15
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	mov	esi, ebp
	call	error
	lea	rdi, [rdi]
	jmp	.label_44
.label_822:
	nop	
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_45
	cmp	qword ptr [r12 + 0x20], 0
	mov	rbp, rbp
	je	.label_48
.label_45:
	lea	rdi, [rdi]
	mov	eax, dword ptr [r12 + 0x40]
	mov	dword ptr [rsp], eax
	lea	rsi, [rsi]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r15
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	esi, dword ptr [rsp]
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	r14, rbp
	call	error
.label_44:
	lea	rsi, [rsi]
	movzx	eax, word ptr [r12 + 0x70]
.label_50:
	movzx	eax, ax
	cmp	eax, 6
	jne	.label_49
	test	bl, bl
	mov	rsp, rsp
	je	.label_49
	mov	rax,  qword ptr [word ptr [rip + root_dev_ino]]
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_49
	mov	rcx, qword ptr [r12 + 0x80]
	nop	
	cmp	rcx, qword ptr [rax]
	mov	rbp, rbp
	jne	.label_49
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 0x78]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_49
	mov	rbp, r15
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	jne	.label_55
	cmp	byte ptr [rbp + 1], 0
	je	.label_52
.label_55:
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r15, r14
	mov	rbp, rbp
	mov	r14, rax
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	quotearg_n_style
	mov	rsp, rsp
	mov	rbp, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str.3_0
	call	quotearg_n_style
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	r14, r15
	mov	rsp, rsp
	mov	rcx, rbp
	lea	rdi, [rdi]
	mov	r8, rbx
	call	error
	nop	
	jmp	.label_57
.label_49:
	mov	rsp, rsp
	test	bl, bl
	je	.label_43
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + verbose]]
	nop	
	and	eax, 1
	cmp	eax, 1
	jne	.label_46
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.67
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r15
	call	quotearg_style
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	nop	
	call	__printf_chk
.label_46:
	nop	
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, r13
	call	change_file_context
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_43
	xor	ebx, ebx
	jmp	.label_43
.label_48:
	mov	qword ptr [r12 + 0x20], 1
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	rpl_fts_set
	mov	bl, 1
	jmp	.label_47
.label_52:
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_57:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
.label_43:
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_51
	mov	edx, 4
	mov	rdi, r14
	mov	rsi, r12
	mov	rbp, rbp
	call	rpl_fts_set
.label_51:
	mov	rbp, rbp
	and	bl, 1
.label_47:
	mov	al, bl
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_58:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	error
.label_54:
	mov	rbp, rbp
	xor	ebx, ebx
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.62
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	mov	edx, 4
	mov	rbp, rbp
	mov	rdi, r14
	nop	
	mov	rsi, r12
	call	rpl_fts_set
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	call	rpl_fts_read
	jmp	.label_47
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b20

	.globl change_file_context
	.type change_file_context, @function
change_file_context:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rsp, rsp
	mov	ebp, edi
	mov	qword ptr [rsp], 0
	mov	r13,  qword ptr [word ptr [rip + specified_context]]
	mov	bl,  byte ptr [byte ptr [rip + affect_symlink_referent]]
	test	r13, r13
	je	.label_64
	mov	rdi, r13
	call	se_const
	mov	rbp, rbp
	mov	edi, ebp
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rdi, [rdi]
	test	bl, bl
	je	.label_65
	call	setfileconat
	lea	rdi, [rdi]
	jmp	.label_68
.label_64:
	nop	
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rsi, r14
	nop	
	test	bl, bl
	nop	
	je	.label_59
	call	getfileconat
	mov	rbp, rbp
	jmp	.label_62
.label_65:
	lea	rsi, [rsi]
	call	lsetfileconat
.label_68:
	xor	ebp, ebp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_63
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.69
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	r14, rax
	mov	ebp, 1
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsi, r13
	call	quote_n
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	nop	
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, rbx
	call	error
	jmp	.label_63
.label_59:
	call	lgetfileconat
.label_62:
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_67
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x3d
	jne	.label_60
.label_67:
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_61
	lea	rsi, [rsi]
	call	compute_context_from_mask
	mov	ebp, 1
	jmp	.label_63
.label_61:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, r14
	nop	
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_66
.label_60:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rdx, rbp
.label_66:
	lea	rdi, [rdi]
	call	error
	mov	ebp, 1
.label_63:
	mov	eax, ebp
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d20

	.globl compute_context_from_mask
	.type compute_context_from_mask, @function
compute_context_from_mask:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r14
	push	rbx
	mov	rbx, rdi
	call	context_new
	mov	rsp, rsp
	call	__errno_location
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbp, rax
	nop	
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r14d
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	jmp	error
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d90
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402da0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402db0

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
	je	.label_70
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_69
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_69
.label_70:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_72
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
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
	jne	.label_71
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
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
.label_72:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_71:
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
	.align	32
	#Procedure 0x402eb0

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
	je	.label_73
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
	jl	.label_75
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_75
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_74
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_74:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_75:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_73:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402fa0
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
	.align	32
	#Procedure 0x402ff0
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
	.align	32
	#Procedure 0x403010
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
	.align	32
	#Procedure 0x403030

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
	.align	32
	#Procedure 0x4030a0
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
	.align	32
	#Procedure 0x4030c0

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
	je	.label_76
	test	rdx, rdx
	nop	
	je	.label_76
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_76:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403100
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
	.align	32
	#Procedure 0x4031a0

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
.label_138:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_114
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_125]]
.label_876:
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
.label_877:
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
	jne	.label_156
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_156
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_186:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_149
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_149:
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
	jne	.label_186
.label_156:
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
	jmp	.label_89
.label_869:
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
	jmp	.label_89
.label_872:
	mov	rsp, rsp
	mov	al, 1
.label_870:
	mov	r15b, 1
.label_873:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_100
	mov	cl, al
.label_100:
	lea	rdi, [rdi]
	mov	al, cl
.label_871:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_104
	test	r10, r10
	je	.label_110
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_115
.label_104:
	xor	ecx, ecx
	jmp	.label_115
.label_874:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_126
	test	r10, r10
	je	.label_188
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_134
.label_875:
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
	jmp	.label_89
.label_110:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_115:
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
	jmp	.label_89
.label_126:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_134
.label_188:
	mov	rbp, rbp
	mov	eax, 1
.label_134:
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
.label_89:
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
	jmp	.label_163
	nop	word ptr [rax + rax]
.label_94:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_163:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_119
	cmp	rsi, rbp
	jne	.label_122
	jmp	.label_123
	nop	word ptr cs:[rax + rax]
.label_119:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_123
.label_122:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_132
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_137
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_137
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
.label_137:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_165
.label_132:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_77:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_171
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_176]]
.label_852:
	test	rsi, rsi
	jne	.label_83
	jmp	.label_117
	nop	word ptr [rax + rax]
.label_165:
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
	jne	.label_198
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
	je	.label_77
	mov	rsp, rsp
	jmp	.label_84
.label_198:
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
	jmp	.label_77
.label_856:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_106
	test	rsi, rsi
	nop	
	jne	.label_113
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_117
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_82
.label_845:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_192
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_84
	cmp	edi, 2
	nop	
	jne	.label_197
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_136
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_141
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_141:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_151
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_151:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_159
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_159:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_103
.label_846:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_170
.label_847:
	mov	cl, 0x74
	jmp	.label_173
.label_848:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_170
.label_849:
	mov	bl, 0x66
	jmp	.label_170
.label_850:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_173
.label_853:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_177
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_107
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
	jae	.label_190
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_190:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_87
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_87:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_95
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_95:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_105
.label_854:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_153
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_121
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_107
.label_121:
	mov	rdi, r14
	jmp	.label_83
.label_855:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_130
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_107
	mov	rdi, r14
	jmp	.label_140
.label_171:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_143
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
.label_80:
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
	ja	.label_164
	test	dl, dl
	mov	rsp, rsp
	je	.label_164
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_82
.label_106:
	test	rsi, rsi
	jne	.label_183
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_183
.label_117:
	mov	rbp, rbp
	mov	dl, 1
.label_851:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_84
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_82
.label_192:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_83
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_163
.label_177:
	mov	rdi, r14
.label_105:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_82
.label_130:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_173
.label_140:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_81
.label_173:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_84
.label_170:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_82
	lea	rsi, [rsi]
	jmp	.label_97
.label_143:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_99
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
.label_99:
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
.label_191:
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
	je	.label_145
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
	je	.label_148
	cmp	rbp, -2
	nop	
	je	.label_162
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_174
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_179:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_155
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_178
.label_155:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_179
.label_174:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_79
	xor	r15d, r15d
.label_79:
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
	je	.label_191
	jmp	.label_80
.label_183:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_82
.label_153:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_83
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_83
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_83
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_96
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_102
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_84
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_88
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_88:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_139
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_139:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_158
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_158:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_169
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_169:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_82
.label_83:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_82:
	test	r12b, r12b
	je	.label_194
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_167
	jmp	.label_124
	nop	word ptr cs:[rax + rax]
.label_194:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_124
.label_167:
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
	jne	.label_175
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_81
	jmp	.label_97
	nop	word ptr cs:[rax + rax]
.label_124:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_97
	jmp	.label_81
.label_175:
	mov	bl, r13b
	mov	rsi, r14
.label_97:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_84
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_92
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_92
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_111
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_111:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_91
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_91:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_101
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_101:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_92:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_116
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_116:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_78
.label_113:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_82
.label_164:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_135
	nop	word ptr cs:[rax + rax]
.label_90:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_135:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_147
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_150
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_157
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_157:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_150
	nop	dword ptr [rax]
.label_147:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_107
	cmp	r14d, 2
	jne	.label_129
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_129
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_185
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_185:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_189
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_189:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_196
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_196:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_129:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_160
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_160:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_168
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
.label_168:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_181
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
.label_181:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_150:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_81
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_142
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_144
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_146
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_146:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_127
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_127:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_144
	nop	word ptr cs:[rax + rax]
.label_142:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_144:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_90
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_90
	nop	word ptr cs:[rax + rax]
.label_81:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_86
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_86
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_112
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_112:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_195
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_195:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_78
	nop	word ptr cs:[rax + rax]
.label_86:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_78:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_94
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_94
.label_197:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_103
.label_136:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_103:
	cmp	rcx, r10
	jae	.label_108
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_108:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_118
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_180
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_133
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_184
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_184:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_154
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_154:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_82
.label_118:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_82
.label_180:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_82
.label_133:
	xor	r15d, r15d
	jmp	.label_82
.label_145:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_85
.label_148:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_182
.label_162:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_187
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_193:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_120
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_193
	xor	r15d, r15d
	nop	
	jmp	.label_85
.label_187:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_182:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_85:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_80
.label_120:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_85
.label_96:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_82
.label_102:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_82
	nop	word ptr cs:[rax + rax]
.label_123:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_98
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_107
.label_98:
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
	je	.label_128
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_128
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_131
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_128
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
	je	.label_138
.label_128:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_152
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_152
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_152
	inc	rdx
	nop	dword ptr [rax + rax]
.label_166:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_161
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_161:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_166
.label_152:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_172
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_172
.label_84:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_93:
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
.label_109:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_172:
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
.label_178:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_93
.label_107:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_93
.label_131:
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
	jmp	.label_109
.label_114:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048f0
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
	.align	32
	#Procedure 0x404910

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
	je	.label_199
	mov	qword ptr [rax], rbx
.label_199:
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
	.align	32
	#Procedure 0x404a60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_200
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_204:
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
	jl	.label_204
.label_200:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_203
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_201]], OFFSET FLAT:slot0
.label_203:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_202
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_202:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b20

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404b30

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
	js	.label_211
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_206
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_207
.label_206:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_208
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
	jne	.label_210
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_210:
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
.label_207:
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
	ja	.label_209
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
	je	.label_205
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_205:
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
.label_209:
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
.label_211:
	lea	rdi, [rdi]
	call	abort
.label_208:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x404da0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404db0
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
	.align	32
	#Procedure 0x404dd0
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
	.align	32
	#Procedure 0x404df0

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
	.align	32
	#Procedure 0x404e50

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
	je	.label_212
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
.label_212:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ec0

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
	.align	32
	#Procedure 0x404f20

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
	.align	32
	#Procedure 0x404f40
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
	.align	32
	#Procedure 0x404f60

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
	mov	rcx,  qword ptr [word ptr [rip + label_213]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_214]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_215]]
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
	.align	32
	#Procedure 0x405000

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
	.align	32
	#Procedure 0x405020

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405030
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405040

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
	.align	32
	#Procedure 0x4050b0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4050c0

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
	mov	rax,  qword ptr [word ptr [rip + label_213]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_214]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_215]]
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
	.align	32
	#Procedure 0x405150
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
	.align	32
	#Procedure 0x405180
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
	.align	32
	#Procedure 0x4051b0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051c0
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
	.align	32
	#Procedure 0x4051e0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4051f0

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
	.align	32
	#Procedure 0x405200

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
	jne	.label_216
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
	je	.label_217
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_216
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_216
.label_217:
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
	je	.label_218
	nop	
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_216
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_216
.label_218:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_216:
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
	.align	32
	#Procedure 0x405330

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
	je	.label_221
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_219
	jmp	.label_220
.label_221:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_220
.label_219:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_220
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
.label_220:
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
	.align	32
	#Procedure 0x4053f0

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
	je	.label_224
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_223
	lea	rsi, [rsi]
	jmp	.label_222
.label_224:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_222
.label_223:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_222
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
.label_222:
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
	.align	32
	#Procedure 0x4054e0

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
	je	.label_227
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_226
	jmp	.label_225
.label_227:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_225
.label_226:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_225
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
.label_225:
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
	.align	32
	#Procedure 0x4055b0

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
	je	.label_230
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_229
	jmp	.label_228
.label_230:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_228
.label_229:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_228
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
.label_228:
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
	.align	32
	#Procedure 0x405650

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
	je	.label_233
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_232
	nop	
	jmp	.label_231
.label_233:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_231
.label_232:
	mov	eax, 1
	test	bpl, bpl
	je	.label_231
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
.label_231:
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
	.align	32
	#Procedure 0x4056f0

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
	je	.label_236
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_235
	lea	rsi, [rsi]
	jmp	.label_234
.label_236:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_234
.label_235:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_234
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
.label_234:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405780

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
	je	.label_239
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_238
	jmp	.label_237
.label_239:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_237
.label_238:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_237
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_237:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4057f0

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
	je	.label_240
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_242
	mov	rbp, rbp
	jmp	.label_241
.label_240:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_241
.label_242:
	xor	eax, eax
.label_241:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405840

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:.str.3_0
	mov	rsp, rsp
	call	__lstat
	lea	rdi, [rdi]
	mov	ecx, eax
	xor	eax, eax
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_243
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rbx + 8], rax
	lea	rsi, [rsi]
	mov	rax, rbx
.label_243:
	mov	rsp, rsp
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4058a0

	.globl context_new
	.type context_new, @function
context_new:
	push	rax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058c0
	.globl context_str
	.type context_str, @function
context_str:

	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058e0
	.globl context_free
	.type context_free, @function
context_free:

	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058f0
	.globl context_user_set
	.type context_user_set, @function
context_user_set:

	push	rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, 0xffffffff
	mov	rsp, rsp
	pop	rcx
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x405910
	.globl context_role_set
	.type context_role_set, @function
context_role_set:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405930
	.globl context_range_set
	.type context_range_set, @function
context_range_set:

	nop
	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	nop	
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405950
	.globl context_type_set
	.type context_type_set, @function
context_type_set:

	push	rax
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, 0xffffffff
	pop	rcx
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405970
	.globl context_type_get
	.type context_type_get, @function
context_type_get:

	push	rax
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405990
	.globl context_range_get
	.type context_range_get, @function
context_range_get:

	lea	rsi, [rsi]
	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059b0
	.globl context_role_get
	.type context_role_get, @function
context_role_get:

	push	rax
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059d0
	.globl context_user_get
	.type context_user_get, @function
context_user_get:

	nop
	push	rax
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059f0
	.globl getcon
	.type getcon, @function
getcon:

	push	rax
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a10
	.globl freecon
	.type freecon, @function
freecon:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a20
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rbp, rbp
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a40
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a60
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a80

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	mov	rsp, rsp
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405aa0

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ac0
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	rbp, rbp
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ae0

	.globl setfilecon
	.type setfilecon, @function
setfilecon:
	push	rax
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b00

	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:
	nop	
	push	rax
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b20
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b40

	.globl security_check_context
	.type security_check_context, @function
security_check_context:
	lea	rsi, [rsi]
	push	rax
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405b60
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	mov	rbp, rbp
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405b80
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	nop	
	pop	rcx
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ba0
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rax
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	nop	
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bc0
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	mov	rbp, rbp
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405be0
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rax
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c00

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
	je	.label_244
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_4
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_246
.label_244:
	mov	edx, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_246:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	ja	.label_248
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_249]]
.label_805:
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
.label_248:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_252
.label_806:
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
.label_807:
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
.label_808:
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
	jmp	.label_253
.label_809:
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
	jmp	.label_251
.label_810:
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
	jmp	.label_250
.label_811:
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
.label_250:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_251:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_253:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_247
.label_813:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_252:
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
	jmp	.label_245
.label_812:
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
.label_245:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_247:
	mov	rbp, rbp
	call	__fprintf_chk
.label_804:
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
	.align	32
	#Procedure 0x405ff0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_254:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_254
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406020

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_258:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_255
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_257
	nop	word ptr cs:[rax + rax]
.label_255:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_257:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_256
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_258
.label_256:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_259
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
.label_259:
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
	.align	32
	#Procedure 0x406160
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
	mov	esi, OFFSET FLAT:.str.16_0
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
	.align	32
	#Procedure 0x4061f0
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
	jb	.label_260
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_260:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406230

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_261
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_262
.label_261:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_262:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406260
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
	jb	.label_263
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_263:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_264
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_264
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_264:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_265
	test	rax, rax
	nop	
	je	.label_266
.label_265:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_266:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062f0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_267
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_268
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_270
.label_267:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_269
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_269:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_271
.label_270:
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
.label_268:
	call	xalloc_die
.label_271:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406390

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4063b0
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
	.align	32
	#Procedure 0x4063f0
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
	jb	.label_272
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_272
	pop	rcx
	ret	
.label_272:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406420

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
	.align	32
	#Procedure 0x406470
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
	.align	32
	#Procedure 0x406490

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4064e0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_274
	mov	rsp, rsp
	pop	rcx
	ret	
.label_274:
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	jne	.label_273
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_5
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	lea	rsi, [rsi]
	call	__assert_fail
.label_273:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406540

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	mov	rbp, rbp
	je	.label_275
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	jne	.label_276
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_275:
	lea	rsi, [rsi]
	ret	
.label_276:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406570

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_277
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_278
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
	je	.label_278
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
.label_277:
	mov	ecx, 1
.label_278:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065e0

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_281
	mov	rbp, rbp
	mov	eax, r14d
	lea	rdi, [rdi]
	and	eax, 0x204
	nop	
	cmp	eax, 0x204
	je	.label_281
	mov	rsp, rsp
	test	r14b, 0x12
	nop	
	je	.label_281
	mov	rsp, rsp
	mov	edi, 0x80
	mov	rsp, rsp
	call	malloc
	mov	r13, rax
	xor	eax, eax
	nop	
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_279
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r13 + 0x30], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r13 + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	mov	rsp, rsp
	or	eax, 4
	lea	rdi, [rdi]
	test	r14b, 2
	lea	rdi, [rdi]
	cmove	eax, r14d
	lea	rdi, [rdi]
	mov	dword ptr [r13 + 0x48], eax
	mov	rbp, rbp
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	lea	rdi, [rdi]
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rbp, rbp
	mov	rdi, r13
	call	fts_palloc
	nop	
	test	al, al
	je	.label_298
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rsp, rsp
	cmp	qword ptr [r15], 0
	je	.label_297
	mov	esi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rdi, r13
	mov	rsp, rsp
	call	fts_alloc
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_282
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x58], -1
	nop	
	mov	qword ptr [r12 + 0x68], -1
.label_297:
	mov	byte ptr [rsp + 0x27], 1
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_289
	mov	al, byte ptr [r13 + 0x49]
	lea	rsi, [rsi]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0x27], al
.label_289:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_293
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x10], rbp
	and	r14d, 0x800
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r12d, r12d
	nop	
.label_291:
	nop	
	mov	rdi, r13
	call	strlen
	mov	rbp, rbp
	test	r14d, r14d
	lea	rdi, [rdi]
	jne	.label_287
	mov	rsp, rsp
	cmp	rax, 3
	jb	.label_287
	mov	rbp, rbp
	cmp	rax, 2
	jb	.label_287
	movzx	ecx, byte ptr [rax + r13 - 1]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	jne	.label_287
	nop	word ptr cs:[rax + rax]
.label_296:
	mov	rsp, rsp
	movzx	ecx, byte ptr [r13 + rax - 2]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_287
	lea	rsi, [rsi]
	dec	rax
	cmp	rax, 1
	lea	rdi, [rdi]
	ja	.label_296
.label_287:
	mov	rsp, rsp
	mov	rsi, qword ptr [r15]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_284
	mov	qword ptr [rbp + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x27]
	movzx	eax, al
	cmp	eax, 1
	nop	
	jne	.label_292
	lea	rdi, [rdi]
	mov	word ptr [rbp + 0x70], 0xb
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rdi, rbp
	mov	rsp, rsp
	call	fts_set_stat_required
	lea	rsi, [rsi]
	jmp	.label_280
.label_292:
	xor	edx, edx
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	fts_stat
	lea	rsi, [rsi]
	mov	word ptr [rbp + 0x70], ax
.label_280:
	cmp	qword ptr [rsp + 0x10], 0
	mov	rbp, rbp
	je	.label_294
	mov	qword ptr [rbp + 0x10], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbp
	jmp	.label_285
.label_294:
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_290
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], rbp
	nop	
	mov	qword ptr [rsp + 8], rbp
	jmp	.label_285
.label_290:
	mov	rbp, rbp
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x30], rbp
	nop	word ptr cs:[rax + rax]
.label_285:
	lea	rsi, [rsi]
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	add	r15, 8
	test	r13, r13
	nop	
	jne	.label_291
	cmp	qword ptr [rsp + 0x10], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_283
	cmp	r12, 2
	mov	rbp, rbp
	jb	.label_283
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r12
	mov	rsp, rsp
	call	fts_sort
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
.label_283:
	mov	r12, qword ptr [rsp + 0x18]
.label_293:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_0
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	rsp, rsp
	mov	qword ptr [r13], rax
	test	rax, rax
	nop	
	je	.label_295
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	mov	rsp, rsp
	call	setup_dir
	test	al, al
	nop	
	je	.label_288
	movzx	eax, word ptr [r13 + 0x48]
	mov	rbp, rbp
	test	ax, 0x204
	mov	rsp, rsp
	jne	.label_286
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_6
	nop	
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	mov	rbp, rbp
	test	eax, eax
	nop	
	jns	.label_286
	or	byte ptr [r13 + 0x48], 4
.label_286:
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	add	rdi, 0x60
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	call	i_ring_init
	nop	
	mov	rax, r13
	nop	
	jmp	.label_279
.label_281:
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	xor	eax, eax
.label_279:
	mov	rbp, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_284:
	mov	r12, qword ptr [rsp + 0x18]
.label_295:
	mov	rbx, qword ptr [rsp + 0x30]
.label_288:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	call	fts_lfree
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free
.label_282:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_298:
	nop	
	mov	rdi, r13
	nop	
	call	free
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_279
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a70

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	push	rax
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_299
	mov	rsp, rsp
	add	rbx, 8
	mov	rbp, rbp
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_300:
	lea	rdi, [rdi]
	call	strlen
	cmp	rax, r14
	lea	rsi, [rsi]
	cmova	r14, rax
	nop	
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_300
	inc	r14
.label_299:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ae0

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	nop	
	add	rsi, 0x100
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_301
	mov	rdi, qword ptr [rbx + 0x20]
	lea	rdi, [rdi]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x24
	nop	
	xor	eax, eax
	nop	
	pop	rbx
	ret	
.label_301:
	mov	qword ptr [rbx + 0x30], rsi
	nop	
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_302
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_302:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	xor	eax, eax
	pop	rbx
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b60

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	lea	rsi, [rsi]
	mov	r15, rdx
	nop	
	mov	r12, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	nop	
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_303
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rdi, 0x108
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	nop	
	mov	qword ptr [rbx + 0x18], 0
	nop	
	mov	word ptr [rbx + 0x72], 0
	lea	rsi, [rsi]
	mov	word ptr [rbx + 0x74], 3
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	mov	rax, rbx
.label_303:
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c30

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	lea	rdi, [rdi]
	movzx	eax, word ptr [rdi + 0x70]
	nop	
	cmp	eax, 0xb
	jne	.label_304
	movzx	eax, sil
	inc	rax
	nop	
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_304:
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c60

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	nop	
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	lea	rsi, [rsi]
	jne	.label_313
	test	byte ptr [r14 + 0x48], 1
	je	.label_313
	nop	
	mov	dl, 1
.label_313:
	lea	rsi, [rsi]
	lea	rbx, [r15 + 0x78]
	mov	rbp, rbp
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_305
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_305
	mov	rbp, rbp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 0x30]
	nop	
	mov	ecx, 0x100
	mov	rdx, rbx
	mov	rsp, rsp
	call	fstatat
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_314
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	jmp	.label_309
.label_305:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	stat
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_314
	lea	rdi, [rdi]
	call	__errno_location
	mov	r14, rax
	lea	rdi, [rdi]
	cmp	dword ptr [r14], 2
	jne	.label_315
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	__lstat
	test	eax, eax
	nop	
	je	.label_311
.label_315:
	mov	rsp, rsp
	mov	eax, dword ptr [r14]
.label_309:
	mov	rsp, rsp
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x80], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x50], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_306:
	movzx	eax, ax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	ret	
.label_314:
	nop	
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	mov	rbp, rbp
	je	.label_306
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	je	.label_310
	cmp	ecx, 0x4000
	jne	.label_312
	mov	rax, qword ptr [r15 + 0x88]
	nop	
	mov	rcx, -1
	cmp	rax, 2
	mov	rbp, rbp
	jb	.label_307
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_307
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14 + 0x48]
	mov	rsp, rsp
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_307:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	movzx	ecx, byte ptr [r15 + 0x108]
	lea	rdi, [rdi]
	cmp	ecx, 0x2e
	mov	rsp, rsp
	jne	.label_306
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	mov	rsp, rsp
	je	.label_308
	movzx	ecx, cl
	mov	rsp, rsp
	cmp	ecx, 0x2e
	jne	.label_306
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_306
.label_308:
	mov	ax, 1
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	lea	rsi, [rsi]
	je	.label_306
	mov	ax, 5
	lea	rsi, [rsi]
	jmp	.label_306
.label_310:
	lea	rdi, [rdi]
	mov	ax, 8
	nop	
	jmp	.label_306
.label_312:
	mov	ax, 3
	mov	rsp, rsp
	jmp	.label_306
.label_311:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_306
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e80

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_316
	lea	rsi, [r14 + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rbp, rbp
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_320
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_320
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], rax
.label_316:
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_319
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x10]
	nop	word ptr [rax + rax]
.label_317:
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbx
	lea	rsi, [rsi]
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_317
.label_319:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rcx, r12
	mov	rbp, rbp
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	nop	
	cmp	r14, 1
	nop	
	je	.label_321
	nop	
	mov	ecx, 1
	sub	rcx, r14
	dec	r14
	mov	rsp, rsp
	lea	rdx, [rax + 8]
	nop	dword ptr [rax + rax]
.label_318:
	mov	rsi, qword ptr [rdx - 8]
	mov	rdi, qword ptr [rdx]
	nop	
	mov	qword ptr [rsi + 0x10], rdi
	add	rdx, 8
	mov	rsp, rsp
	inc	rcx
	jne	.label_318
	mov	rsp, rsp
	lea	rax, [rax + r14*8]
.label_321:
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jmp	.label_322
.label_320:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_322:
	mov	rax, rbx
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fd0

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	mov	rsp, rsp
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	mov	rbp, rbp
	je	.label_323
	nop	
	xor	r14d, r14d
	mov	rsp, rsp
	mov	edi, 0x1f
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_325
	jmp	.label_324
.label_323:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_326
	mov	rdi, rax
	call	cycle_check_init
.label_325:
	mov	r14b, 1
	jmp	.label_324
.label_326:
	mov	rbp, rbp
	xor	r14d, r14d
.label_324:
	mov	al, r14b
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407070

	.globl diropen
	.type diropen, @function
diropen:
	nop	
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	nop	
	and	edx, 0x10
	lea	rdi, [rdi]
	shl	edx, 0xd
	mov	rsp, rsp
	or	edx, 0x90900
	test	ah, 2
	nop	
	jne	.label_327
	xor	eax, eax
	mov	rdi, rsi
	nop	
	mov	esi, edx
	mov	rbp, rbp
	jmp	open_safer
.label_327:
	mov	edi, dword ptr [rdi + 0x2c]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	openat_safer
	nop	
	.section	.text
	.align	32
	#Procedure 0x4070b0

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	nop	
	je	.label_328
.label_330:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_329
	call	closedir
.label_329:
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_330
.label_328:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407100

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	nop	
	push	rax
	nop	
	mov	r14, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_331
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 0x58], 0
	lea	rsi, [rsi]
	js	.label_338
	nop	word ptr [rax + rax]
.label_336:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_340
	mov	rbx, qword ptr [rdi + 8]
.label_340:
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], 0
	lea	rsi, [rsi]
	mov	rdi, rbx
	jns	.label_336
	mov	rsp, rsp
	jmp	.label_337
.label_338:
	mov	rbx, rdi
.label_337:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
.label_331:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_341
	call	fts_lfree
.label_341:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	lea	rsi, [rsi]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_335
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	al, 4
	jne	.label_332
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_342
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_342:
	mov	rbp, rbp
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	nop	
	test	ebx, ebx
	je	.label_334
	jmp	.label_332
.label_335:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_332
	call	close
.label_334:
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_332
	nop	
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
.label_332:
	mov	rsp, rsp
	lea	rdi, [r14 + 0x60]
	lea	rsi, [rsi]
	call	fd_ring_clear
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	nop	
	je	.label_333
	nop	
	call	hash_free
.label_333:
	nop	
	mov	rdi, r14
	call	free_dir
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	xor	eax, eax
	test	ebx, ebx
	mov	rsp, rsp
	je	.label_339
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], ebx
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
.label_339:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407260

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	jmp	.label_343
	nop	dword ptr [rax]
.label_345:
	mov	edi, eax
	mov	rsp, rsp
	call	close
.label_343:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	i_ring_empty
	lea	rdi, [rdi]
	test	al, al
	nop	
	jne	.label_344
	nop	
	mov	rdi, rbx
	call	i_ring_pop
	nop	
	test	eax, eax
	jns	.label_345
	jmp	.label_343
.label_344:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4072a0

	.globl free_dir
	.type free_dir, @function
free_dir:
	mov	rbp, rbp
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	lea	rsi, [rsi]
	je	.label_346
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	nop	
	je	.label_347
	lea	rdi, [rdi]
	jmp	hash_free
.label_346:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi + 0x58]
	nop	
	jmp	free
.label_347:
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072e0

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	nop	
	mov	r14, rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r14]
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	rbp, rbp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_350
	nop	
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_350
	movzx	eax, word ptr [rbx + 0x74]
	mov	rsp, rsp
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_353
	mov	rsp, rsp
	movzx	ecx, ax
	lea	rdi, [rdi]
	cmp	ecx, 1
	nop	
	jne	.label_360
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	rsp, rsp
	mov	word ptr [rbx + 0x70], ax
	lea	rdi, [rdi]
	mov	r15, rbx
	mov	rsp, rsp
	jmp	.label_350
.label_353:
	movzx	ecx, word ptr [rbx + 0x70]
	mov	rbp, rbp
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_360
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_375
	mov	rbp, rbp
	test	byte ptr [r14 + 0x48], 4
	lea	rdi, [rdi]
	jne	.label_380
	mov	esi, OFFSET FLAT:.str_6
	nop	
	mov	rdi, r14
	call	diropen
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x44], eax
	mov	rsp, rsp
	test	eax, eax
	js	.label_383
	nop	
	or	byte ptr [rbx + 0x72], 2
	nop	
	mov	r15, rbx
	lea	rsi, [rsi]
	jmp	.label_363
.label_360:
	movzx	ecx, word ptr [rbx + 0x70]
	nop	
	cmp	ecx, 1
	jne	.label_385
	movzx	eax, ax
	lea	rsi, [rsi]
	cmp	eax, 4
	je	.label_349
	mov	rbp, rbp
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_389
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_349
.label_389:
	cmp	qword ptr [r14 + 8], 0
	mov	rbp, rbp
	je	.label_352
	mov	eax, dword ptr [r14 + 0x48]
	mov	rsp, rsp
	test	ah, 0x10
	jne	.label_357
	cmp	qword ptr [r14 + 8], 0
	je	.label_352
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	mov	rbp, rbp
	je	.label_355
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	nop	
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_371
	nop	dword ptr [rax]
.label_385:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_374
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_377
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	mov	rsp, rsp
	je	.label_382
.label_374:
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	je	.label_384
	mov	rbp, rbp
	movzx	eax, word ptr [r15 + 0x74]
	lea	rdi, [rdi]
	cmp	eax, 4
	nop	
	mov	rbx, r15
	je	.label_385
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_362
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	nop	
	jne	.label_348
	lea	rsi, [rsi]
	test	byte ptr [r14 + 0x48], 4
	jne	.label_348
	nop	
	mov	esi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	rdi, r14
	call	diropen
	nop	
	mov	dword ptr [r15 + 0x44], eax
	mov	rbp, rbp
	test	eax, eax
	js	.label_361
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_348
.label_369:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_371:
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_369
	lea	rdi, [rdi]
	jmp	.label_355
.label_349:
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x72], 2
	lea	rsi, [rsi]
	je	.label_373
	mov	edi, dword ptr [rbx + 0x44]
	mov	rbp, rbp
	call	close
.label_373:
	mov	rdi, qword ptr [r14 + 8]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_376
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_376:
	mov	word ptr [rbx + 0x70], 6
.label_367:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	leave_dir
	mov	r15, rbx
	jmp	.label_350
.label_384:
	nop	
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_386
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_350
.label_375:
	nop	
	mov	r15, rbx
	jmp	.label_363
.label_380:
	mov	r15, rbx
	mov	rbp, rbp
	jmp	.label_363
.label_377:
	nop	
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	mov	esi, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	fts_build
	lea	rsi, [rsi]
	mov	r15, rax
	test	r15, r15
	je	.label_354
	mov	rdi, rbx
	mov	rsp, rsp
	call	free
	jmp	.label_362
.label_386:
	mov	rdi, r14
	call	free_dir
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	nop	
	mov	rdi, r14
	call	setup_dir
	jmp	.label_363
.label_357:
	nop	
	and	eax, 0xffffefff
	mov	rbp, rbp
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	call	fts_lfree
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], 0
.label_352:
	mov	rbp, rbp
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_379
.label_355:
	nop	
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	mov	rbp, rbp
	jmp	.label_362
.label_379:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_350
	nop	
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_367
	mov	rbp, rbp
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	nop	
	je	.label_367
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_367
.label_383:
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	nop	
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_363
.label_354:
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_350
.label_382:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x58], -1
	mov	rsp, rsp
	je	.label_359
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	mov	rsp, rsp
	je	.label_365
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x58], 0
	lea	rsi, [rsi]
	je	.label_366
	lea	rdi, [rdi]
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	nop	
	jne	.label_368
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_372
	nop	
	mov	rsi, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	edx, 0xffffffff
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_381
.label_359:
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_350
.label_366:
	mov	rdi, r14
	mov	rsp, rsp
	call	restore_initial_cwd
.label_381:
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_372
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	nop	
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_372
.label_368:
	nop	
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_358
	lea	rsi, [rsi]
	test	ah, 2
	lea	rsi, [rsi]
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_351
	mov	edi, esi
	call	fchdir
	nop	
	test	eax, eax
	je	.label_358
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_358
.label_361:
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	rsp, rsp
	mov	word ptr [r15 + 0x70], 7
.label_348:
	mov	word ptr [r15 + 0x74], 3
.label_362:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	jne	.label_370
	lea	rdi, [rdi]
	dec	rcx
.label_370:
	mov	rsp, rsp
	lea	rdi, [rax + rcx + 1]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 0x60]
	nop	
	inc	rdx
	call	memmove
.label_363:
	mov	qword ptr [r14], r15
	lea	rdi, [rdi]
	movzx	eax, word ptr [r15 + 0x70]
	lea	rdi, [rdi]
	cmp	eax, 0xb
	jne	.label_364
	mov	rax, qword ptr [r15 + 0xa8]
	lea	rsi, [rsi]
	cmp	rax, 1
	je	.label_356
	mov	rsp, rsp
	cmp	rax, 2
	jne	.label_365
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	lea	rsi, [rsi]
	jne	.label_387
	nop	
	mov	eax, dword ptr [r14 + 0x48]
	nop	
	and	eax, 0x18
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_387
	mov	esi, dword ptr [r14 + 0x2c]
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	call	leaf_optimization
	mov	rsp, rsp
	cmp	eax, 2
	je	.label_356
.label_387:
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r15
	lea	rdi, [rdi]
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	mov	rbp, rbp
	cmp	ecx, 0x4000
	jne	.label_364
	cmp	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	je	.label_356
	mov	rax, qword ptr [rbx + 0x68]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	lea	rdi, [rdi]
	jb	.label_356
	dec	rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x68], rax
.label_356:
	movzx	eax, word ptr [r15 + 0x70]
.label_364:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_350
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	lea	rsi, [rsi]
	jne	.label_378
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_378:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_350
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_350
.label_351:
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, r14
	call	cwd_advance_fd
.label_358:
	nop	
	mov	edi, dword ptr [r15 + 0x44]
	mov	rbp, rbp
	call	close
.label_372:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_388
	mov	eax, dword ptr [r15 + 0x40]
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	nop	
	movzx	ecx, cl
	or	ecx, 6
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_388
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	call	leave_dir
.label_388:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_350:
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	ret	
.label_365:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a50

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_392
	mov	rax, qword ptr [rsi + 0x78]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	call	hash_delete
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_390
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rsp, rsp
	ret	
.label_392:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_391
	cmp	qword ptr [rax + 0x58], 0
	js	.label_391
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	lea	rdi, [rdi]
	je	.label_390
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	nop	
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_391
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	lea	rdi, [rdi]
	jne	.label_391
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_391:
	add	rsp, 0x18
	mov	rsp, rsp
	ret	
.label_390:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b20

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x98
	mov	rsp, rsp
	mov	rbx, rcx
	lea	rsi, [rsi]
	mov	r13d, edx
	mov	r14, rdi
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_397
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	ecx, 0x2e
	lea	rsi, [rsi]
	mov	eax, 0x2e
	sub	eax, edx
	lea	rsi, [rsi]
	jne	.label_404
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 1]
	lea	rsi, [rsi]
	sub	ecx, eax
	lea	rsi, [rsi]
	mov	eax, ecx
	jne	.label_404
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_404:
	test	eax, eax
	lea	rsi, [rsi]
	sete	r15b
	lea	rdi, [rdi]
	jmp	.label_393
.label_397:
	xor	r15d, r15d
.label_393:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	mov	rsp, rsp
	jne	.label_396
	nop	
	test	r13d, r13d
	jns	.label_402
	mov	rbp, rbp
	mov	cl, r15b
	mov	rbp, rbp
	xor	cl, 1
	jne	.label_408
	nop	
	and	eax, 0x200
	je	.label_399
	mov	rbp, rbp
	mov	qword ptr [rsp], rsi
	lea	rbp, [r14 + 0x60]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	i_ring_empty
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_398
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	mov	rsp, rsp
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
	nop	
	jmp	.label_398
.label_396:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_395
	and	eax, 0x200
	je	.label_395
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rsp, rsp
	call	close
	nop	
	jmp	.label_395
.label_399:
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rsi
	nop	
	jmp	.label_398
.label_402:
	mov	qword ptr [rsp], rsi
	jmp	.label_398
.label_408:
	mov	rbp, rbp
	mov	qword ptr [rsp], rsi
.label_398:
	test	r13d, r13d
	mov	rbp, rbp
	mov	r12d, r13d
	jns	.label_401
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	call	diropen
	nop	
	mov	r12d, eax
	mov	rbp, rbp
	mov	ebp, 0xffffffff
	mov	rbp, rbp
	test	r12d, r12d
	mov	rbp, rbp
	js	.label_395
.label_401:
	lea	rsi, [rsi]
	test	byte ptr [r14 + 0x48], 2
	jne	.label_406
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_394
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	nop	
	jne	.label_394
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x2e
	lea	rsi, [rsi]
	jne	.label_394
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 2], 0
	lea	rsi, [rsi]
	jne	.label_394
.label_406:
	lea	rsi, [rsp + 8]
	nop	
	mov	edi, r12d
	call	__fstat
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_400
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_403
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	jne	.label_403
.label_394:
	test	byte ptr [r14 + 0x49], 2
	lea	rsi, [rsi]
	jne	.label_405
	mov	edi, r12d
	lea	rdi, [rdi]
	call	fchdir
	mov	ebp, eax
	jmp	.label_407
.label_405:
	lea	rdi, [rdi]
	test	r15b, r15b
	sete	al
	movzx	edx, al
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	mov	esi, r12d
	lea	rdi, [rdi]
	call	cwd_advance_fd
	nop	
	xor	ebp, ebp
	jmp	.label_395
.label_403:
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 2
.label_400:
	nop	
	mov	ebp, 0xffffffff
.label_407:
	test	r13d, r13d
	jns	.label_395
	mov	rbp, rbp
	call	__errno_location
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_395:
	lea	rdi, [rdi]
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d80

	.globl fts_build
	.type fts_build, @function
fts_build:
	nop	
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x88
	lea	rsi, [rsi]
	mov	r12d, esi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, qword ptr [r14]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rbp
	nop	
	mov	r15, qword ptr [rbp + 0x18]
	mov	qword ptr [rsp + 0x60], r15
	mov	rbp, rbp
	test	r15, r15
	mov	rsp, rsp
	je	.label_443
	mov	rdi, r15
	call	dirfd
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_458
	mov	qword ptr [rsp + 0x38], -1
	nop	
	cmp	qword ptr [r14 + 0x40], 0
	nop	
	jne	.label_462
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x38], rax
.label_462:
	lea	rax, [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	jmp	.label_412
.label_443:
	mov	rsp, rsp
	mov	eax, 0x204
	and	eax, dword ptr [r14 + 0x48]
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	cmp	eax, 0x200
	jne	.label_419
	mov	rsp, rsp
	mov	edi, dword ptr [r14 + 0x2c]
.label_419:
	mov	rsi, qword ptr [rbp + 0x30]
	nop	
	mov	eax, dword ptr [r14 + 0x48]
	mov	rsp, rsp
	xor	edx, edx
	test	al, 0x10
	mov	rbp, rbp
	je	.label_429
	test	al, 1
	mov	rsp, rsp
	je	.label_431
	mov	rbp, rbp
	cmp	qword ptr [rbp + 0x58], 0
	nop	
	je	.label_429
.label_431:
	nop	
	mov	edx, 0x20000
.label_429:
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x84]
	mov	rbp, rbp
	call	opendirat
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x18], rax
	nop	
	test	rax, rax
	je	.label_441
	movzx	eax, word ptr [rbp + 0x70]
	mov	rsp, rsp
	cmp	eax, 0xb
	lea	rsi, [rsi]
	jne	.label_445
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	mov	rsi, rbp
	mov	rsp, rsp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_448
.label_458:
	mov	rdi, qword ptr [rbp + 0x18]
	lea	rdi, [rdi]
	call	closedir
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x18], 0
.label_441:
	xor	r13d, r13d
	cmp	r12d, 3
	jne	.label_428
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_428
.label_445:
	test	byte ptr [r14 + 0x49], 1
	je	.label_448
	nop	
	mov	rdi, r14
	mov	rsi, rbp
	call	leave_dir
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, rbp
	call	fts_stat
	nop	
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_425
.label_448:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], -1
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_426
	mov	rsp, rsp
	mov	eax, 0x186a0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rax
.label_426:
	mov	rsp, rsp
	lea	rax, [r14 + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], eax
	test	r15, r15
	mov	rbp, rbp
	jne	.label_412
	cmp	r12d, 2
	jne	.label_442
	mov	r13d, r12d
	nop	
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_444
.label_442:
	mov	rsp, rsp
	mov	eax, dword ptr [r14 + 0x48]
	nop	
	and	eax, 0x38
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_446
	mov	rbp, rbp
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_446
	mov	r13d, r12d
	mov	esi, dword ptr [rsp + 0x84]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	leaf_optimization
	nop	
	test	eax, eax
	setne	r12b
	lea	rsi, [rsi]
	jmp	.label_455
.label_425:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_428
.label_446:
	mov	r13d, r12d
	lea	rsi, [rsi]
	xor	r12d, r12d
.label_455:
	mov	rbp, rbp
	xor	r12b, 1
.label_444:
	cmp	r13d, 3
	lea	rdi, [rdi]
	je	.label_413
	test	r12b, r12b
	jne	.label_413
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], r12d
	mov	rbp, rbp
	mov	r12d, r13d
	jmp	.label_412
.label_413:
	mov	qword ptr [rsp + 0x60], r15
	nop	
	test	byte ptr [r14 + 0x49], 2
	mov	rbp, rbp
	mov	ebx, dword ptr [rsp + 0x84]
	je	.label_420
	mov	esi, 0x406
	lea	rsi, [rsi]
	mov	edx, 3
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	edi, ebx
	mov	rsp, rsp
	call	rpl_fcntl
	mov	ebx, eax
	nop	
	mov	dword ptr [rsp + 0x84], ebx
.label_420:
	test	ebx, ebx
	lea	rdi, [rdi]
	js	.label_433
	nop	
	xor	ecx, ecx
	nop	
	mov	rdi, r14
	mov	rsi, rbp
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_438
.label_433:
	nop	
	cmp	r13d, 3
	nop	
	jne	.label_440
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_440
	lea	rsi, [rsi]
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp + 0x40], eax
.label_440:
	or	byte ptr [rbp + 0x72], 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x18], 0
	mov	eax, dword ptr [r14 + 0x48]
	lea	rdi, [rdi]
	test	ah, 2
	lea	rsi, [rsi]
	je	.label_451
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x84]
	lea	rdi, [rdi]
	test	edi, edi
	js	.label_451
	call	close
.label_451:
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0x18], 0
.label_438:
	lea	rdi, [rdi]
	mov	r12d, r13d
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x60]
.label_412:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_465
	dec	rdx
.label_465:
	mov	dword ptr [rsp + 0x1c], r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x48], 4
	nop	
	je	.label_417
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x50], rcx
	mov	rsp, rsp
	mov	byte ptr [rax + rdx], 0x2f
.label_417:
	mov	rsp, rsp
	lea	rax, [rdx + 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x68], rax
	mov	rcx, qword ptr [r14 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	nop	
	mov	qword ptr [rsp + 0x28], rax
	add	rdx, 2
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r12d, r12d
	xor	ebx, ebx
	xor	r13d, r13d
.label_461:
	cmp	qword ptr [rbp + 0x18], 0
	je	.label_423
	mov	qword ptr [rsp + 0x70], rbx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r13
	call	__errno_location
	mov	rsp, rsp
	mov	r13, rax
	nop	dword ptr [rax]
.label_463:
	mov	rsp, rsp
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	call	readdir
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	r15, r15
	mov	rsp, rsp
	je	.label_459
	test	byte ptr [r14 + 0x48], 0x20
	jne	.label_439
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r15 + 0x13]
	cmp	eax, 0x2e
	mov	rsp, rsp
	jne	.label_439
	mov	rsp, rsp
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	eax, 0x2e
	je	.label_410
	test	al, al
	je	.label_416
	mov	rbp, rbp
	jmp	.label_439
	nop	dword ptr [rax]
.label_410:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_439
.label_416:
	mov	rsp, rsp
	cmp	qword ptr [rbp + 0x18], 0
	mov	rsp, rsp
	jne	.label_463
	jmp	.label_427
	nop	dword ptr [rax]
.label_439:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r12
	lea	rdi, [rdi]
	mov	rbx, r15
	add	rbx, 0x13
	mov	rsp, rsp
	mov	rdi, rbx
	call	strlen
	nop	
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	fts_alloc
	nop	
	mov	r12, rax
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_437
	cmp	rbp, qword ptr [rsp + 0x40]
	jae	.label_453
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	jmp	.label_430
	nop	dword ptr [rax]
.label_453:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r14 + 0x20]
	nop	
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rax + rbp]
	nop	
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	mov	rsp, rsp
	je	.label_437
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	lea	rsi, [rsi]
	je	.label_414
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x68]
	add	rax, rbx
	test	byte ptr [r14 + 0x48], 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x50]
	nop	
	cmovne	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rcx
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_457
.label_414:
	nop	
	mov	rbx, qword ptr [rsp + 0x68]
.label_457:
	mov	rax, qword ptr [r14 + 0x30]
	sub	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
.label_430:
	add	rbp, rbx
	lea	rdi, [rdi]
	jb	.label_449
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x58], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 8], rax
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x48], rbp
	mov	rbp, rbp
	mov	rax, qword ptr [r15]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [r14 + 0x48], 4
	mov	rbp, rbp
	jne	.label_435
	mov	rbp, rbp
	lea	rax, [r12 + 0x108]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_434
	nop	dword ptr [rax]
.label_435:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	lea	rdi, [rdi]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x50]
	call	memmove
.label_434:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x48]
	nop	
	mov	r13, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_415
	test	byte ptr [r14 + 0x49], 4
	mov	rbp, rbp
	jne	.label_415
	mov	qword ptr [rsp + 0x68], rbx
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	rbp, rbp
	jmp	.label_447
	nop	
.label_415:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x68], rbx
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [r14 + 0x48]
	mov	rsp, rsp
	and	eax, 0x18
	cmp	eax, 0x18
	lea	rdi, [rdi]
	jne	.label_409
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r15 + 0x12]
	mov	rbp, rbp
	cmp	eax, 4
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	test	al, al
	setne	bl
	lea	rdi, [rdi]
	and	bl, cl
	lea	rdi, [rdi]
	jmp	.label_422
.label_409:
	mov	rsp, rsp
	xor	ebx, ebx
.label_422:
	mov	word ptr [r12 + 0x70], 0xb
	lea	rdi, [rdi]
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rdi, [rdi]
	call	fts_set_stat_required
.label_447:
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x60]
	mov	qword ptr [r12 + 0x10], 0
	test	r13, r13
	mov	rsp, rsp
	mov	rax, r12
	je	.label_460
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r13
.label_460:
	mov	r13, rax
	nop	
	mov	rbx, qword ptr [rsp + 0x70]
	cmp	rbx, 0x2710
	mov	rbp, rbp
	jne	.label_450
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	jne	.label_450
	mov	esi, dword ptr [rsp + 0x84]
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	call	dirent_inode_sort_may_be_useful
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax]
.label_450:
	inc	rbx
	cmp	qword ptr [rsp + 0x38], rbx
	ja	.label_461
	jmp	.label_423
.label_459:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r15, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	je	.label_464
	nop	
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, r15
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	rsp, rsp
	mov	word ptr [rbp + 0x70], cx
.label_464:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 0x78]
	je	.label_423
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_423
.label_427:
	mov	r15, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbx, qword ptr [rsp + 0x70]
.label_423:
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	test	al, 1
	je	.label_432
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r13
	call	fts_padjust
.label_432:
	mov	rbp, rbp
	test	byte ptr [r14 + 0x48], 4
	mov	r12d, dword ptr [rsp + 0x1c]
	je	.label_436
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, rax
	nop	
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	rdx, qword ptr [r14 + 0x30]
	nop	
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	rbp, rbp
	mov	byte ptr [rcx], 0
.label_436:
	mov	rsp, rsp
	test	r15, r15
	jne	.label_424
	mov	eax, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_424
	mov	rsp, rsp
	cmp	r12d, 1
	je	.label_454
	mov	rbp, rbp
	test	rbx, rbx
	jne	.label_424
.label_454:
	mov	rbp, rbp
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_456
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r14
	mov	rsp, rsp
	call	fts_safe_changedir
	jmp	.label_452
.label_456:
	mov	rdi, r14
	nop	
	call	restore_initial_cwd
.label_452:
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_424
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	rbp, rbp
	jmp	.label_411
.label_424:
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_418
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	test	al, 1
	je	.label_421
	mov	rbp, qword ptr [rsp + 0x58]
	mov	qword ptr [word ptr [rbp]], OFFSET FLAT:fts_compare_ino
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	nop	
	call	fts_sort
	mov	r13, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp], 0
.label_421:
	cmp	rbx, 2
	mov	rbp, rbp
	jb	.label_428
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_428
	mov	rdi, r14
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	call	fts_sort
	mov	r13, rax
	jmp	.label_428
.label_418:
	cmp	r12d, 3
	lea	rdi, [rdi]
	jne	.label_411
	mov	rsp, rsp
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_411
	movzx	eax, ax
	cmp	eax, 7
	je	.label_411
	mov	word ptr [rbp + 0x70], 6
.label_411:
	lea	rsi, [rsi]
	mov	rdi, r13
	call	fts_lfree
	xor	r13d, r13d
.label_428:
	lea	rdi, [rdi]
	mov	rax, r13
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_437:
	nop	
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	rsp, rsp
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	xor	r13d, r13d
	jmp	.label_428
.label_449:
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	lea	rdi, [rdi]
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	xor	r13d, r13d
	nop	
	jmp	.label_428
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408780

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_466
	nop	
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_467
	mov	edi, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	setne	al
	jmp	.label_468
.label_466:
	xor	eax, eax
	jmp	.label_468
.label_467:
	lea	rdi, [rdi]
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, rbx
	call	cwd_advance_fd
	mov	rbp, rbp
	xor	eax, eax
.label_468:
	mov	rsp, rsp
	movzx	ebp, al
	lea	rdi, [rdi]
	add	rbx, 0x60
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fd_ring_clear
	mov	rsp, rsp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408810

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rsp, rsp
	mov	rdi, r15
	call	strrchr
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_470
	cmp	rbx, r15
	mov	rbp, rbp
	jne	.label_469
	cmp	byte ptr [rbx + 1], 0
	mov	rbp, rbp
	je	.label_470
.label_469:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	r13, rax
	lea	rdx, [r13 + 1]
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	memmove
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x60], r13
.label_470:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4088d0

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	nop	
	push	rax
	call	filesystem_type
	lea	rsi, [rsi]
	cmp	rax, 0x52654972
	jle	.label_475
	lea	rsi, [rsi]
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_471
	cmp	rax, 0x52654973
	mov	rsp, rsp
	je	.label_472
	cmp	rax, 0x5346414f
	mov	rbp, rbp
	je	.label_474
	jmp	.label_473
.label_475:
	test	rax, rax
	je	.label_474
	nop	
	cmp	rax, 0x6969
	mov	rbp, rbp
	je	.label_474
	lea	rdi, [rdi]
	cmp	rax, 0x9fa0
	lea	rsi, [rsi]
	je	.label_474
	jmp	.label_473
.label_471:
	mov	rbp, rbp
	cmp	rax, 0x58465342
	lea	rsi, [rsi]
	je	.label_472
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_473
.label_474:
	xor	ecx, ecx
	mov	rbp, rbp
	jmp	.label_472
.label_473:
	mov	rsp, rsp
	mov	ecx, 1
.label_472:
	mov	rsp, rsp
	mov	eax, ecx
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408960

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_476
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_479
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	nop	
	mov	qword ptr [rbx + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], r14
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	hash_insert
	mov	r15, rax
	mov	rsp, rsp
	mov	bpl, 1
	mov	rsp, rsp
	cmp	r15, rbx
	je	.label_477
	nop	
	mov	rdi, rbx
	call	free
	nop	
	test	r15, r15
	je	.label_478
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
	mov	rsp, rsp
	jmp	.label_480
.label_476:
	mov	rdi, qword ptr [rbp + 0x58]
	nop	
	lea	rsi, [r14 + 0x78]
	lea	rsi, [rsi]
	call	cycle_check
	mov	rsp, rsp
	mov	bpl, 1
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_477
	lea	rsi, [rsi]
	mov	qword ptr [r14], r14
.label_480:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_477
.label_479:
	xor	ebp, ebp
	nop	
	jmp	.label_477
.label_478:
	xor	ebp, ebp
.label_477:
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a50

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	mov	rbp, rbp
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	nop	
	mov	ebp, esi
	mov	rsp, rsp
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	mov	rsp, rsp
	cmp	esi, ebp
	jne	.label_483
	mov	rbp, rbp
	cmp	esi, -0x64
	nop	
	jne	.label_481
.label_483:
	mov	rbp, rbp
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_485
	lea	rdi, [rbx + 0x60]
	mov	rsp, rsp
	call	i_ring_push
	test	eax, eax
	mov	rsp, rsp
	js	.label_482
	mov	edi, eax
	mov	rsp, rsp
	jmp	.label_484
.label_485:
	nop	
	test	esi, esi
	js	.label_482
	mov	rbp, rbp
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	lea	rdi, [rdi]
	jne	.label_482
	mov	edi, esi
.label_484:
	call	close
.label_482:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	ret	
.label_481:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ad0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	cmp	edx, 5
	jb	.label_486
	nop	
	push	rax
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	mov	rbp, rbp
	add	rsp, 8
	ret	
.label_486:
	mov	rsp, rsp
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b00
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rsp, rsp
	mov	rbx, rdi
	nop	
	mov	eax, ebp
	mov	rbp, rbp
	or	eax, 0x1000
	nop	
	cmp	eax, 0x1000
	jne	.label_487
	mov	r12, qword ptr [rbx]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14, rax
	lea	rdi, [rdi]
	mov	dword ptr [r14], 0
	xor	eax, eax
	lea	rdi, [rdi]
	test	byte ptr [rbx + 0x49], 0x20
	mov	rsp, rsp
	jne	.label_489
	nop	
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	mov	rbp, rbp
	je	.label_492
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_489
	mov	rax, qword ptr [r12 + 0x10]
	nop	
	jmp	.label_489
.label_487:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_489
.label_492:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 8]
	nop	
	test	rdi, rdi
	je	.label_490
	call	fts_lfree
.label_490:
	nop	
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_494
	mov	rbp, rbp
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_494:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_488
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x30]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rax]
	nop	
	cmp	eax, 0x2f
	je	.label_488
	test	byte ptr [rbx + 0x48], 4
	lea	rsi, [rsi]
	jne	.label_488
	mov	esi, OFFSET FLAT:.str_6
	mov	rdi, rbx
	mov	rsp, rsp
	call	diropen
	mov	rbp, rbp
	mov	ebp, eax
	nop	
	test	ebp, ebp
	mov	rsp, rsp
	js	.label_496
	mov	rsp, rsp
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	lea	rdi, [rdi]
	jne	.label_491
	mov	edi, ebp
	call	fchdir
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_495
	mov	rsp, rsp
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	lea	rsi, [rsi]
	call	close
	mov	dword ptr [r14], ebx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_489
.label_488:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rax
.label_489:
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_496:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_489
.label_491:
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_493
.label_495:
	mov	edi, ebp
	mov	rbp, rbp
	call	close
.label_493:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_489
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cb0

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cd0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_497
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	mov	rsp, rsp
	ret	
.label_497:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d00

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x88
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	test	byte ptr [rbx + 0x49], 2
	je	.label_498
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_503
	xor	r12d, r12d
	lea	rsi, [rsi]
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	lea	rdi, [rdi]
	call	hash_initialize
	mov	rsp, rsp
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	r14d, 0
	mov	rbp, rbp
	je	.label_500
.label_503:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rdi, rbp
	mov	rsp, rsp
	call	hash_lookup
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_502
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	jmp	.label_498
.label_502:
	mov	r12b, 1
	mov	r14, rbp
.label_500:
	xor	eax, eax
	nop	
	test	r15d, r15d
	js	.label_498
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	mov	rbp, rbp
	call	fstatfs
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_498
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_499
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_499
	mov	rax, qword ptr [r13 + 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_501
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	je	.label_499
	lea	rdi, [rdi]
	call	abort
.label_501:
	mov	rdi, rbp
	call	free
.label_499:
	mov	rax, qword ptr [rsp + 0x10]
.label_498:
	lea	rsi, [rsi]
	add	rsp, 0x88
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408e70

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rsp, rsp
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e90

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	lea	rdi, [rdi]
	sete	al
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ea0

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	lea	rdi, [rdi]
	dec	esi
	mov	rbp, rbp
	xor	eax, eax
	cmp	esi, 0xb
	nop	
	ja	.label_504
	mov	rsp, rsp
	movsxd	rax, esi
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_505]]
.label_504:
	mov	dword ptr [rdi + 0x18], eax
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ed0

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	nop	
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	lea	rdi, [rdi]
	je	.label_506
	mov	rbp, rbp
	cmp	rcx, 0x1021994
	je	.label_506
	mov	edx, 0xff534d42
	nop	
	cmp	rcx, rdx
	je	.label_506
	mov	rsp, rsp
	mov	al, 1
.label_506:
	lea	rdi, [rdi]
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408f10

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	jmp	.label_511
.label_508:
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
.label_511:
	test	rcx, rcx
	je	.label_509
	nop	
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	mov	rsp, rsp
	je	.label_508
	nop	
	sub	rdx, qword ptr [rcx + 0x38]
	nop	
	add	rdx, rax
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_508
.label_509:
	cmp	qword ptr [rsi + 0x58], 0
	nop	
	js	.label_513
	nop	word ptr cs:[rax + rax]
.label_510:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_507
	mov	rsp, rsp
	sub	rcx, qword ptr [rsi + 0x38]
	mov	rbp, rbp
	add	rcx, rax
	nop	
	mov	qword ptr [rsi + 0x30], rcx
.label_507:
	mov	qword ptr [rsi + 0x38], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_512
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi + 8]
.label_512:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	lea	rsi, [rsi]
	jns	.label_510
.label_513:
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408fc0

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rdi, [rdi]
	cmp	rcx, rax
	sbb	edx, edx
	lea	rdi, [rdi]
	and	edx, 1
	mov	rsp, rsp
	cmp	rax, rcx
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmovae	eax, edx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409000
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409010

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
	je	.label_514
	nop	
	cmp	r15, -2
	jb	.label_514
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_514
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_514:
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
	.align	32
	#Procedure 0x4090a0

	.globl getfileconat
	.type getfileconat, @function
getfileconat:
	nop	
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0xfe8
	mov	r14, rdx
	mov	rbx, rsi
	mov	ebp, edi
	cmp	ebp, -0x64
	mov	rbp, rbp
	je	.label_522
	movzx	eax, byte ptr [rbx]
	mov	rsp, rsp
	cmp	eax, 0x2f
	jne	.label_517
.label_522:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r14
	call	getfilecon
.label_518:
	mov	eax, 0xffffffff
	mov	rbp, rbp
	add	rsp, 0xfe8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_517:
	lea	r12, [rsp + 0x10]
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	mov	esi, ebp
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	openat_proc_name
	mov	r13, rax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_523
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r14
	call	getfilecon
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	r15d, dword ptr [rax]
	cmp	r13, r12
	lea	rdi, [rdi]
	je	.label_516
	mov	rsp, rsp
	mov	rdi, r13
	call	free
.label_516:
	mov	eax, r15d
	cmp	r15d, 0x26
	ja	.label_521
	movabs	rcx, 0x4000102006
	bt	rcx, rax
	lea	rdi, [rdi]
	jb	.label_523
.label_521:
	cmp	r15d, 0x5f
	mov	rbp, rbp
	jne	.label_526
.label_523:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xfd8]
	lea	rsi, [rsi]
	call	save_cwd
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_519
	mov	rbp, rbp
	test	ebp, ebp
	js	.label_520
	cmp	dword ptr [rsp + 0xfd8], ebp
	jne	.label_520
	nop	
	lea	rdi, [rsp + 0xfd8]
	call	free_cwd
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 9
	mov	rsp, rsp
	jmp	.label_518
.label_520:
	mov	edi, ebp
	mov	rsp, rsp
	call	fchdir
	lea	rdi, [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_524
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [rbx]
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xfd8]
	mov	rbp, rbp
	call	free_cwd
	jmp	.label_525
.label_524:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r14
	call	getfilecon
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbx, rax
	mov	rsp, rsp
	mov	ebp, dword ptr [rbx]
	nop	
	lea	rdi, [rsp + 0xfd8]
	call	restore_cwd
	test	eax, eax
	mov	rbp, rbp
	jne	.label_515
	lea	rdi, [rsp + 0xfd8]
	mov	rbp, rbp
	call	free_cwd
	test	ebp, ebp
	lea	rsi, [rsi]
	je	.label_518
.label_525:
	mov	dword ptr [rbx], ebp
	jmp	.label_518
.label_526:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], r15d
	mov	rbp, rbp
	jmp	.label_518
.label_519:
	call	__errno_location
	mov	edi, dword ptr [rax]
	nop	
	call	openat_save_fail
.label_515:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092a0

	.globl lgetfileconat
	.type lgetfileconat, @function
lgetfileconat:
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0xfe8
	mov	r14, rdx
	mov	rsp, rsp
	mov	rbx, rsi
	mov	rbp, rbp
	mov	ebp, edi
	cmp	ebp, -0x64
	mov	rsp, rsp
	je	.label_534
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	mov	rsp, rsp
	jne	.label_531
.label_534:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r14
	mov	rsp, rsp
	call	lgetfilecon
.label_530:
	mov	eax, 0xffffffff
	mov	rsp, rsp
	add	rsp, 0xfe8
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_531:
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x10]
	nop	
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	openat_proc_name
	mov	r13, rax
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_528
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	call	lgetfilecon
	lea	rdi, [rdi]
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	r15d, dword ptr [rax]
	nop	
	cmp	r13, r12
	lea	rsi, [rsi]
	je	.label_532
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	call	free
.label_532:
	mov	eax, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0x26
	ja	.label_538
	mov	rbp, rbp
	movabs	rcx, 0x4000102006
	lea	rsi, [rsi]
	bt	rcx, rax
	jb	.label_528
.label_538:
	cmp	r15d, 0x5f
	jne	.label_533
.label_528:
	lea	rdi, [rsp + 0xfd8]
	lea	rsi, [rsi]
	call	save_cwd
	test	eax, eax
	nop	
	jne	.label_537
	test	ebp, ebp
	mov	rbp, rbp
	js	.label_536
	cmp	dword ptr [rsp + 0xfd8], ebp
	jne	.label_536
	lea	rdi, [rsp + 0xfd8]
	lea	rdi, [rdi]
	call	free_cwd
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 9
	jmp	.label_530
.label_536:
	mov	rsp, rsp
	mov	edi, ebp
	lea	rdi, [rdi]
	call	fchdir
	test	eax, eax
	je	.label_527
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	lea	rdi, [rsp + 0xfd8]
	lea	rdi, [rdi]
	call	free_cwd
	jmp	.label_535
.label_527:
	mov	rdi, rbx
	mov	rsi, r14
	call	lgetfilecon
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp + 0xfd8]
	lea	rsi, [rsi]
	call	restore_cwd
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_529
	lea	rdi, [rsp + 0xfd8]
	call	free_cwd
	mov	rbp, rbp
	test	ebp, ebp
	je	.label_530
.label_535:
	mov	dword ptr [rbx], ebp
	lea	rsi, [rsi]
	jmp	.label_530
.label_533:
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	dword ptr [rax], r15d
	lea	rsi, [rsi]
	jmp	.label_530
.label_537:
	lea	rsi, [rsi]
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	openat_save_fail
.label_529:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbx]
	nop	
	call	openat_restore_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094b0

	.globl setfileconat
	.type setfileconat, @function
setfileconat:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xfe8
	mov	r14, rdx
	nop	
	mov	rbx, rsi
	mov	ebp, edi
	lea	rdi, [rdi]
	cmp	ebp, -0x64
	nop	
	je	.label_548
	nop	
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	mov	rbp, rbp
	jne	.label_545
.label_548:
	mov	rdi, rbx
	mov	rsi, r14
	call	setfilecon
.label_544:
	mov	rbp, rbp
	mov	eax, 0xffffffff
	nop	
	add	rsp, 0xfe8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_545:
	lea	r12, [rsp + 0x10]
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	mov	esi, ebp
	mov	rdx, rbx
	nop	
	call	openat_proc_name
	mov	rsp, rsp
	mov	r13, rax
	test	r13, r13
	nop	
	je	.label_539
	mov	rdi, r13
	mov	rsi, r14
	mov	rsp, rsp
	call	setfilecon
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	r15d, dword ptr [rax]
	mov	rsp, rsp
	cmp	r13, r12
	je	.label_542
	mov	rdi, r13
	lea	rdi, [rdi]
	call	free
.label_542:
	mov	eax, r15d
	nop	
	cmp	r15d, 0x26
	mov	rsp, rsp
	ja	.label_550
	movabs	rcx, 0x4000102006
	mov	rsp, rsp
	bt	rcx, rax
	jb	.label_539
.label_550:
	mov	rsp, rsp
	cmp	r15d, 0x5f
	lea	rsi, [rsi]
	jne	.label_543
.label_539:
	lea	rdi, [rsp + 0xfd8]
	nop	
	call	save_cwd
	test	eax, eax
	jne	.label_549
	mov	rsp, rsp
	test	ebp, ebp
	lea	rdi, [rdi]
	js	.label_540
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0xfd8], ebp
	jne	.label_540
	lea	rdi, [rsp + 0xfd8]
	call	free_cwd
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 9
	lea	rdi, [rdi]
	jmp	.label_544
.label_540:
	mov	edi, ebp
	lea	rdi, [rdi]
	call	fchdir
	test	eax, eax
	nop	
	je	.label_547
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rsp, rsp
	lea	rdi, [rsp + 0xfd8]
	call	free_cwd
	mov	rbp, rbp
	jmp	.label_546
.label_547:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r14
	mov	rsp, rsp
	call	setfilecon
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp + 0xfd8]
	mov	rbp, rbp
	call	restore_cwd
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_541
	lea	rdi, [rsp + 0xfd8]
	call	free_cwd
	nop	
	test	ebp, ebp
	lea	rsi, [rsi]
	je	.label_544
.label_546:
	mov	dword ptr [rbx], ebp
	jmp	.label_544
.label_543:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	dword ptr [rax], r15d
	mov	rsp, rsp
	jmp	.label_544
.label_549:
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	call	openat_save_fail
.label_541:
	mov	edi, dword ptr [rbx]
	lea	rdi, [rdi]
	call	openat_restore_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096b0

	.globl lsetfileconat
	.type lsetfileconat, @function
lsetfileconat:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0xfe8
	lea	rsi, [rsi]
	mov	r14, rdx
	mov	rbx, rsi
	mov	ebp, edi
	cmp	ebp, -0x64
	je	.label_560
	nop	
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	mov	rsp, rsp
	jne	.label_556
.label_560:
	mov	rdi, rbx
	mov	rsi, r14
	call	lsetfilecon
.label_559:
	mov	rsp, rsp
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	add	rsp, 0xfe8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_556:
	lea	r12, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rdi, r12
	nop	
	mov	esi, ebp
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rsp, rsp
	call	openat_proc_name
	lea	rsi, [rsi]
	mov	r13, rax
	test	r13, r13
	mov	rbp, rbp
	je	.label_551
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	lsetfilecon
	call	__errno_location
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	r15d, dword ptr [rax]
	cmp	r13, r12
	je	.label_554
	mov	rsp, rsp
	mov	rdi, r13
	nop	
	call	free
.label_554:
	lea	rdi, [rdi]
	mov	eax, r15d
	mov	rbp, rbp
	cmp	r15d, 0x26
	lea	rsi, [rsi]
	ja	.label_557
	mov	rsp, rsp
	movabs	rcx, 0x4000102006
	lea	rsi, [rsi]
	bt	rcx, rax
	jb	.label_551
.label_557:
	cmp	r15d, 0x5f
	mov	rbp, rbp
	jne	.label_555
.label_551:
	lea	rdi, [rsp + 0xfd8]
	call	save_cwd
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_561
	test	ebp, ebp
	nop	
	js	.label_552
	cmp	dword ptr [rsp + 0xfd8], ebp
	nop	
	jne	.label_552
	lea	rdi, [rsp + 0xfd8]
	call	free_cwd
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 9
	jmp	.label_559
.label_552:
	mov	edi, ebp
	call	fchdir
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_562
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp + 0xfd8]
	call	free_cwd
	mov	rsp, rsp
	jmp	.label_558
.label_562:
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r14
	call	lsetfilecon
	call	__errno_location
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rbx]
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xfd8]
	lea	rdi, [rdi]
	call	restore_cwd
	test	eax, eax
	jne	.label_553
	lea	rdi, [rsp + 0xfd8]
	mov	rsp, rsp
	call	free_cwd
	mov	rsp, rsp
	test	ebp, ebp
	je	.label_559
.label_558:
	mov	dword ptr [rbx], ebp
	jmp	.label_559
.label_555:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], r15d
	jmp	.label_559
.label_561:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	openat_save_fail
.label_553:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098b0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_563
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_563
.label_564:
	ret	
.label_563:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_564
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098e0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_565
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_565:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409900
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409910
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
	#Procedure 0x409920
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_566
.label_567:
	ret	
.label_566:
	cmp	edi, 0x7f
	je	.label_567
	xor	eax, eax
	jmp	.label_567
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409940
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
	#Procedure 0x409950
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
	#Procedure 0x409960
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
	#Procedure 0x409970
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
	#Procedure 0x409980
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_568
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_568
.label_569:
	ret	
.label_568:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_569
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4099b0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_570
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_570:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4099d0

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
	#Procedure 0x4099e0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_571
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_571:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409a00
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
	#Procedure 0x409a10
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
	#Procedure 0x409a20

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
	je	.label_573
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_572
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_572
.label_573:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_572
	test	cl, cl
	jne	.label_572
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_572:
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
	.align	32
	#Procedure 0x409ac0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ae0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_574
	nop	
	cmp	qword ptr [r15 + 0x10], 0
	mov	rsp, rsp
	je	.label_576
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	lea	rsi, [rsi]
	jne	.label_576
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_575
.label_576:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	nop	
	call	is_zero_or_power_of_two
	lea	rdi, [rdi]
	test	al, al
	je	.label_577
	mov	rsp, rsp
	mov	al, 1
	test	rbx, rbx
	je	.label_575
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	qword ptr [r15], rax
.label_577:
	nop	
	xor	eax, eax
.label_575:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_574:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_7
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x409b90

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409ba0

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_578
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_578:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_579
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rsp, rsp
	lea	rax, [rsp + 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], 0x10
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	lea	rdi, [rdi]
	ja	.label_581
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_580
.label_581:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_580:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_579:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	open
	mov	edi, eax
	mov	rsp, rsp
	call	fd_safer
	mov	rbp, rbp
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409cc0

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
	je	.label_583
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_582
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_584
.label_582:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_583
.label_584:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_583:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409d10

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d20

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d30

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d40

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 8]
	nop	
	jae	.label_585
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_588:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_587
	nop	word ptr cs:[rax + rax]
.label_586:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	test	rdi, rdi
	jne	.label_586
	nop	
	cmp	rsi, rax
	mov	rsp, rsp
	cmova	rax, rsi
.label_587:
	mov	rbp, rbp
	add	rcx, 0x10
	nop	
	cmp	rcx, rdx
	jb	.label_588
.label_585:
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409db0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	edx, 0
	jae	.label_589
	mov	r8, qword ptr [rdi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_591:
	lea	rdi, [rdi]
	cmp	qword ptr [rsi], 0
	mov	rbp, rbp
	mov	rax, rsi
	je	.label_590
	nop	
.label_592:
	lea	rdi, [rdi]
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_592
	inc	rdx
.label_590:
	mov	rsp, rsp
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_591
.label_589:
	mov	rbp, rbp
	cmp	rdx, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	jne	.label_594
	lea	rsi, [rsi]
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	mov	rsp, rsp
	je	.label_593
.label_594:
	mov	rbp, rbp
	xor	eax, eax
.label_593:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409e30
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r13, rsi
	mov	rbx, rdi
	mov	rsp, rsp
	call	hash_get_n_entries
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	hash_get_n_buckets
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	rbp, rbp
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	r14, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_8
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rsp, rsp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_7
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_595]]
	punpckldq	xmm1, xmm2
	mov	rsp, rsp
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_596]]
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	lea	rsi, [rsi]
	addpd	xmm0, xmm1
	nop	
	mulsd	xmm0,  qword ptr [word ptr [rip + label_597]]
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_3
	mov	rsp, rsp
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	mov	rbp, rbp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	nop	
	xor	eax, eax
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409f80

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r12, rsi
	mov	rsp, rsp
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	cmp	qword ptr [rbx], 0
	je	.label_598
	test	rbx, rbx
	nop	
	je	.label_598
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_600:
	mov	rsi, qword ptr [rbx]
	mov	rsp, rsp
	cmp	rsi, r12
	je	.label_599
	lea	rsi, [rsi]
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_599
	mov	rbx, qword ptr [rbx + 8]
	nop	
	test	rbx, rbx
	jne	.label_600
	jmp	.label_598
.label_599:
	mov	r15, qword ptr [rbx]
.label_598:
	nop	
	mov	rax, r15
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a010

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_601
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	pop	rbx
	nop	
	ret	
.label_601:
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a050
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_602
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	jmp	.label_604
	nop	word ptr cs:[rax + rax]
.label_605:
	mov	rbp, rbp
	add	rcx, 0x10
.label_604:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_603
	mov	rax, qword ptr [rcx]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_605
.label_602:
	ret	
.label_603:
	mov	rsp, rsp
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0a0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	call	safe_hasher
	mov	rbp, rbp
	mov	rcx, rax
	nop	dword ptr [rax + rax]
.label_609:
	cmp	qword ptr [rcx], rbx
	jne	.label_606
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 8]
	nop	
	test	rdx, rdx
	lea	rdi, [rdi]
	jne	.label_607
.label_606:
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	test	rcx, rcx
	jne	.label_609
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	dword ptr [rax + rax]
.label_608:
	cmp	rax, rdx
	lea	rdi, [rdi]
	mov	ecx, 0
	jae	.label_610
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_608
	jmp	.label_610
.label_607:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx]
.label_610:
	mov	rax, rcx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a130
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r8, qword ptr [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_611
	nop	dword ptr [rax + rax]
.label_612:
	mov	rbp, rbp
	add	r8, 0x10
.label_611:
	cmp	r8, qword ptr [rdi + 8]
	nop	
	jae	.label_614
	lea	rdi, [rdi]
	cmp	qword ptr [r8], 0
	lea	rsi, [rsi]
	je	.label_612
	test	r8, r8
	mov	r9, r8
	mov	rbp, rbp
	je	.label_612
	nop	word ptr cs:[rax + rax]
.label_613:
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rsp, rsp
	jae	.label_614
	mov	rcx, qword ptr [r9]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rax*8], rcx
	nop	
	inc	rax
	lea	rdi, [rdi]
	mov	r9, qword ptr [r9 + 8]
	mov	rsp, rsp
	test	r9, r9
	jne	.label_613
	nop	
	jmp	.label_612
.label_614:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a1a0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	xor	ebx, ebx
	jmp	.label_615
	nop	word ptr cs:[rax + rax]
.label_616:
	mov	rsp, rsp
	add	r13, 0x10
.label_615:
	lea	rsi, [rsi]
	cmp	r13, qword ptr [r12 + 8]
	nop	
	jae	.label_617
	lea	rsi, [rsi]
	cmp	qword ptr [r13], 0
	je	.label_616
	mov	rbp, rbp
	test	r13, r13
	mov	rbp, r13
	je	.label_616
	nop	word ptr [rax + rax]
.label_618:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	je	.label_617
	mov	rsp, rsp
	inc	rbx
	mov	rsp, rsp
	mov	rbp, qword ptr [rbp + 8]
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_618
	jmp	.label_616
.label_617:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a250
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_620
	inc	rdi
	nop	
	xor	edx, edx
.label_619:
	mov	rcx, rdx
	nop	
	shl	rcx, 5
	sub	rcx, rdx
	nop	
	movzx	eax, al
	add	rax, rcx
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_619
.label_620:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a290
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_621]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a2b0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, r8
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	lea	rdi, [rdi]
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	cmovne	r14, rcx
	mov	edi, 0x50
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	r13, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	test	r13, r13
	je	.label_622
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	mov	rsp, rsp
	test	al, al
	je	.label_623
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_623
	mov	esi, 0x10
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_623
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	nop	
	mov	rax, r13
	jmp	.label_622
.label_623:
	mov	rbp, rbp
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_622:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3f0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	esi, 3
	mov	rsp, rsp
	call	rotr_sz
	lea	rdi, [rdi]
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a420

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	cmp	rdi, rsi
	sete	al
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a430

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	mov	rsp, rsp
	je	.label_624
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_627]]
	nop	
	jbe	.label_625
	movss	xmm1,  dword ptr [dword ptr [rip + label_628]]
	ucomiss	xmm1, xmm0
	jbe	.label_625
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_626]]
	jbe	.label_625
	movss	xmm1, dword ptr [rcx]
	lea	rdi, [rdi]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_625
	mov	rsp, rsp
	addss	xmm1,  dword ptr [dword ptr [rip + label_627]]
	ucomiss	xmm0, xmm1
	jbe	.label_625
	mov	rsp, rsp
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_629]]
	ucomiss	xmm2, xmm0
	nop	
	jb	.label_625
	ucomiss	xmm0, xmm1
	ja	.label_624
.label_625:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_624:
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a4c0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_630
	mov	eax, edi
	nop	
	and	eax, 1
	lea	rsi, [rsi]
	test	rdi, rdi
	js	.label_632
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdi
	mov	rbp, rbp
	jmp	.label_631
.label_632:
	lea	rsi, [rsi]
	shr	rdi, 1
	or	rax, rdi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_631:
	divss	xmm0, dword ptr [rsi + 8]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_633]]
	nop	
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	mov	rsp, rsp
	cvttss2si	rax, xmm2
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	xor	rcx, rax
	mov	rsp, rsp
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_634]]
	jae	.label_635
.label_630:
	push	rax
	mov	rbp, rbp
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	lea	rsi, [rsi]
	add	rsp, 8
.label_635:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a570
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r15]
	mov	rsp, rsp
	jmp	.label_639
	nop	dword ptr [rax]
.label_636:
	add	r14, 0x10
.label_639:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_640
	cmp	qword ptr [r14], 0
	lea	rdi, [rdi]
	je	.label_636
	nop	
	mov	rbx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	test	rax, rax
	setne	cl
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_637
	nop	dword ptr [rax + rax]
.label_642:
	test	cl, 1
	nop	
	je	.label_638
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	rax
.label_638:
	lea	rdi, [rdi]
	mov	qword ptr [rbx], 0
	nop	
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	nop	
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	jne	.label_642
.label_637:
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_641
	mov	rdi, qword ptr [r14]
	call	rax
.label_641:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_636
.label_640:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a640

	.globl hash_free
	.type hash_free, @function
hash_free:
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_643
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_643
	mov	r14, qword ptr [r15]
	lea	rsi, [rsi]
	jmp	.label_651
	nop	word ptr cs:[rax + rax]
.label_644:
	mov	rbp, rbp
	add	r14, 0x10
.label_651:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	jae	.label_643
	cmp	qword ptr [r14], 0
	je	.label_644
	test	r14, r14
	mov	rbp, rbp
	mov	rbx, r14
	je	.label_644
	nop	word ptr cs:[rax + rax]
.label_647:
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_647
	jmp	.label_644
.label_643:
	mov	r14, qword ptr [r15]
	jmp	.label_645
	nop	word ptr [rax + rax]
.label_649:
	mov	rbp, rbp
	add	r14, 0x10
.label_645:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_648
	mov	rdi, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_649
	nop	dword ptr [rax]
.label_652:
	mov	rbp, rbp
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
	jne	.label_652
	lea	rdi, [rdi]
	jmp	.label_649
.label_648:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_646
	nop	word ptr cs:[rax + rax]
.label_650:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rdi, rbx
	lea	rdi, [rdi]
	jne	.label_650
.label_646:
	mov	rdi, qword ptr [r15]
	call	free
	nop	
	mov	rdi, r15
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a760

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rax
	mov	rsp, rsp
	call	compute_bucket_size
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_655
	lea	rsi, [rsi]
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	je	.label_653
	lea	rdi, [rdi]
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_655
	mov	qword ptr [rsp + 0x10], rbp
	mov	rsp, rsp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rsp + 0x18], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_654
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	mov	rsp, rsp
	jmp	.label_653
.label_654:
	nop	
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	edx, 1
	nop	
	mov	rdi, rbx
	call	transfer_entries
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_656
	lea	rsi, [rsp]
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	nop	
	call	transfer_entries
	test	al, al
	lea	rdi, [rdi]
	je	.label_656
	mov	rdi, qword ptr [rsp]
	call	free
.label_655:
	mov	rbp, rbp
	xor	r14d, r14d
.label_653:
	lea	rsi, [rsi]
	mov	al, r14b
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_656:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a910

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	r12, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [r12]
	mov	rbp, rbp
	mov	al, 1
	nop	
	cmp	r15, qword ptr [r12 + 8]
	nop	
	jae	.label_664
	nop	
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_665:
	cmp	qword ptr [r15], 0
	nop	
	je	.label_659
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_662
	nop	word ptr [rax + rax]
.label_658:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r13
	call	safe_hasher
	nop	
	mov	rbp, qword ptr [rbx + 8]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_657
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	nop	
	jmp	.label_660
	nop	word ptr [rax + rax]
.label_657:
	mov	rsp, rsp
	mov	qword ptr [rax], r13
	lea	rsi, [rsi]
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	call	free_entry
.label_660:
	nop	
	test	rbp, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	jne	.label_658
.label_662:
	mov	r13, qword ptr [r15]
	nop	
	mov	qword ptr [r15 + 8], 0
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	nop	
	jne	.label_659
	mov	rdi, r14
	mov	rsi, r13
	mov	rsp, rsp
	call	safe_hasher
	mov	rbx, rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbx], 0
	mov	rsp, rsp
	je	.label_666
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	allocate_entry
	test	rax, rax
	je	.label_661
	mov	rbp, rbp
	mov	qword ptr [rax], r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_663
.label_666:
	mov	qword ptr [rbx], r13
	nop	
	inc	qword ptr [r14 + 0x18]
.label_663:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_659:
	nop	
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	mov	rbp, rbp
	jb	.label_665
	mov	al, 1
	jmp	.label_664
.label_661:
	nop	
	xor	eax, eax
.label_664:
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa90

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	test	r14, r14
	mov	rbp, rbp
	je	.label_668
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	mov	rsi, r14
	mov	rsp, rsp
	call	hash_find_entry
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_681
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_667
	mov	rbp, rbp
	mov	qword ptr [rbx], rax
	jmp	.label_667
.label_681:
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	nop	
	js	.label_678
	cvtsi2ss	xmm0, rcx
	lea	rdi, [rdi]
	jmp	.label_670
.label_678:
	shr	rcx, 1
	lea	rdi, [rdi]
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_670:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	and	edx, 1
	test	rax, rax
	js	.label_675
	cvtsi2ss	xmm1, rax
	mov	rsp, rsp
	jmp	.label_680
.label_675:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	mov	rsp, rsp
	addss	xmm1, xmm1
.label_680:
	mulss	xmm1, dword ptr [rcx + 8]
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	jbe	.label_673
	mov	rdi, r15
	call	check_tuning
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	lea	rdi, [rdi]
	and	edx, 1
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_677
	lea	rdi, [rdi]
	cvtsi2ss	xmm2, rcx
	jmp	.label_671
.label_677:
	shr	rcx, 1
	lea	rsi, [rsi]
	or	rdx, rcx
	mov	rsp, rsp
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_671:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	nop	
	and	edx, 1
	mov	rbp, rbp
	test	rax, rax
	js	.label_676
	cvtsi2ss	xmm0, rax
	jmp	.label_669
.label_676:
	shr	rax, 1
	or	rdx, rax
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rdx
	mov	rsp, rsp
	addss	xmm0, xmm0
.label_669:
	movaps	xmm3, xmm1
	lea	rsi, [rsi]
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	mov	rbp, rbp
	jbe	.label_673
	mov	rbp, rbp
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_679
	mulss	xmm0, xmm1
.label_679:
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_634]]
	lea	rdi, [rdi]
	jae	.label_667
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_633]]
	movaps	xmm2, xmm0
	lea	rdi, [rdi]
	subss	xmm2, xmm1
	nop	
	cvttss2si	rax, xmm2
	nop	
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	xor	rcx, rax
	mov	rbp, rbp
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	nop	
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	mov	rbp, rbp
	je	.label_667
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	call	hash_find_entry
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_668
.label_673:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_672
	mov	rdi, r15
	call	allocate_entry
	mov	rbp, rbp
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_667
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	inc	qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	jmp	.label_674
.label_672:
	mov	qword ptr [rax], r14
	nop	
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_674:
	mov	rbp, rbp
	mov	ebp, 1
.label_667:
	mov	rbp, rbp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_668:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ad10

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	nop	
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, rbp
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	nop	
	test	rsi, rsi
	je	.label_682
	cmp	rsi, r13
	nop	
	je	.label_686
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_688
.label_686:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	mov	rsp, rsp
	je	.label_682
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_684
	nop	
	movups	xmm0, xmmword ptr [rsi]
	mov	rsp, rsp
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_687
.label_688:
	mov	rax, qword ptr [rbx + 8]
	nop	
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_682
	lea	rsi, [rsi]
	add	rbx, 8
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_685:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	cmp	rsi, r13
	mov	rsp, rsp
	je	.label_683
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	mov	rsp, rsp
	test	al, al
	jne	.label_683
	nop	
	mov	rbx, qword ptr [rbx]
	nop	
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_685
	jmp	.label_682
.label_684:
	mov	rbp, rbp
	mov	qword ptr [rbx], 0
	lea	rsi, [rsi]
	jmp	.label_682
.label_683:
	nop	
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_682
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_687:
	mov	rdi, r14
	mov	rbp, rbp
	call	free_entry
.label_682:
	mov	rax, r15
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ae30

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	nop	
	je	.label_689
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_689:
	push	rax
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	add	rsp, 8
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ae60

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, -1
	je	.label_690
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_690:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aeb0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	nop	
	mov	r15, rdi
	lea	rdi, [rdi]
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	mov	rbp, rbp
	xor	eax, eax
	test	r14, r14
	mov	rbp, rbp
	je	.label_700
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_695
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	nop	
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_691
	cvtsi2ss	xmm0, rax
	jmp	.label_696
.label_691:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	nop	
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_696:
	nop	
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	mov	rsp, rsp
	and	edx, 1
	lea	rsi, [rsi]
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_699
	mov	rbp, rbp
	cvtsi2ss	xmm1, rcx
	mov	rsp, rsp
	jmp	.label_692
.label_699:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_692:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_695
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_703
	mov	rsp, rsp
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	lea	rsi, [rsi]
	jmp	.label_694
.label_703:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	xorps	xmm1, xmm1
	lea	rsi, [rsi]
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_694:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_701
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rax
	jmp	.label_693
.label_701:
	shr	rax, 1
	or	rdx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_693:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_695
	mov	rbp, rbp
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	mov	rsp, rsp
	jne	.label_702
	mulss	xmm0, dword ptr [rcx + 8]
.label_702:
	movss	xmm1,  dword ptr [dword ptr [rip + label_633]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	lea	rsi, [rsi]
	test	al, al
	jne	.label_695
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	nop	
	je	.label_698
	nop	word ptr cs:[rax + rax]
.label_697:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	mov	rdi, rbx
	jne	.label_697
.label_698:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_695:
	mov	rax, r14
.label_700:
	add	rsp, 0x10
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b0a0

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	r14
	lea	rdi, [rdi]
	push	rbx
	push	rax
	nop	
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	lea	rsi, [rsi]
	or	rbx, 1
	mov	r14, -1
	jmp	.label_704
	nop	word ptr cs:[rax + rax]
.label_705:
	lea	rsi, [rsi]
	add	rbx, 2
.label_704:
	mov	rbp, rbp
	cmp	rbx, -1
	nop	
	je	.label_706
	nop	
	mov	rdi, rbx
	call	is_prime
	test	al, al
	mov	rbp, rbp
	je	.label_705
	mov	rsp, rsp
	mov	r14, rbx
.label_706:
	nop	
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b110

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	mov	r8, rdi
	nop	
	mov	esi, 3
	nop	
	mov	edi, 9
	nop	
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_707
	nop	
.label_708:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_707
	add	rdi, rcx
	mov	rbp, rbp
	add	rsi, 2
	lea	rdi, [rdi]
	add	rcx, 8
	mov	rbp, rbp
	cmp	rdi, r8
	jb	.label_708
.label_707:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r8
	div	rsi
	lea	rsi, [rsi]
	test	rdx, rdx
	setne	al
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b170

	.globl free_entry
	.type free_entry, @function
free_entry:
	lea	rsi, [rsi]
	mov	qword ptr [rsi], 0
	nop	
	mov	rax, qword ptr [rdi + 0x48]
	nop	
	mov	qword ptr [rsi + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b190

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_709:
	lea	rdi, [rdi]
	mov	dword ptr [rdi + rax*4], esi
	lea	rsi, [rsi]
	inc	rax
	cmp	rax, 4
	mov	rbp, rbp
	jne	.label_709
	mov	rbp, rbp
	mov	dword ptr [rdi + 0x10], esi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b1d0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b1e0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	lea	rsi, [rsi]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	rbp, rbp
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	lea	rsi, [rsi]
	jne	.label_710
	mov	rbp, rbp
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	mov	rbp, rbp
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_710:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b230

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	nop	
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	i_ring_empty
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	jne	.label_711
	mov	rbp, rbp
	mov	ecx, dword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbx + 0x14]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	rsp, rsp
	mov	dword ptr [rbx + rdx*4], ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbx + 0x14]
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_712
	mov	byte ptr [rbx + 0x1c], 1
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_712:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	mov	rbp, rbp
	pop	rbx
	ret	
.label_711:
	mov	rbp, rbp
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b290

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
	mov	eax, OFFSET FLAT:.str.1_8
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_713
	nop	
	mov	rax, rcx
.label_713:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b2d0

	.globl openat_save_fail
	.type openat_save_fail, @function
openat_save_fail:
	push	rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	ebx, edi
	mov	ebp,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_9
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b320

	.globl openat_restore_fail
	.type openat_restore_fail, @function
openat_restore_fail:
	lea	rdi, [rdi]
	push	rbp
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	ebx, edi
	mov	ebp,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
	mov	rbp, rbp
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b370

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xc8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_714
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x80], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_714:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_715
	lea	rdi, [rdi]
	lea	rax, [rsp]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xc0], rax
	lea	rsi, [rsi]
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_717
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_716
.label_717:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb8], rcx
.label_716:
	mov	ecx, dword ptr [rax]
.label_715:
	xor	eax, eax
	call	openat
	lea	rsi, [rsi]
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b490

	.globl opendirat
	.type opendirat, @function
opendirat:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	r14, rcx
	mov	rsp, rsp
	or	edx, 0x90900
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	xor	eax, eax
	call	openat_safer
	lea	rsi, [rsi]
	mov	ebp, eax
	test	ebp, ebp
	js	.label_718
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_719
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_718
.label_719:
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	mov	rsp, rsp
	call	close
	lea	rsi, [rsi]
	mov	dword ptr [rbx], r14d
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_718:
	nop	
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b510

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	rbx, rdi
	mov	qword ptr [rbx + 8], 0
	mov	rsp, rsp
	xor	ebp, ebp
	nop	
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, 0x80000
	xor	eax, eax
	call	open_safer
	mov	dword ptr [rbx], eax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_720
	nop	
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_720:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b570

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_721
	mov	rbp, rbp
	mov	edi, eax
	jmp	fchdir
.label_721:
	mov	rdi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	jmp	chdir_long
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b590

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	nop	
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbx]
	test	edi, edi
	nop	
	js	.label_722
	call	close
.label_722:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	mov	rbp, rbp
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b5c0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	ebx, edi
	mov	rbp, rbp
	cmp	ebx, 2
	ja	.label_723
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r15d, dword ptr [rbp]
	mov	rsp, rsp
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	jmp	.label_724
.label_723:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_724:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b630

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x10
	nop	
	mov	r13, rdi
	call	chdir
	mov	ebx, eax
	xor	eax, eax
	test	ebx, ebx
	lea	rsi, [rsi]
	je	.label_729
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 0x24
	nop	
	mov	eax, ebx
	lea	rdi, [rdi]
	jne	.label_729
	mov	rdi, r13
	call	strlen
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	call	cdb_init
	nop	
	test	r15, r15
	mov	rsp, rsp
	je	.label_736
	mov	rsp, rsp
	cmp	r15, 0xfff
	jbe	.label_727
	lea	rdi, [rdi]
	add	r15, r13
	lea	rdi, [rdi]
	mov	esi, 0x2f
	nop	
	mov	rdi, r13
	call	__strspn_c1
	nop	
	mov	rbx, rax
	test	rbx, rbx
	je	.label_732
	nop	
	cmp	rbx, 2
	lea	rsi, [rsi]
	jne	.label_733
	lea	rdi, [rdi]
	lea	rdi, [r13 + 3]
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	sub	rdx, rdi
	nop	
	mov	esi, 0x2f
	call	memchr
	lea	rsi, [rsi]
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_728
	mov	rsp, rsp
	mov	byte ptr [rbx], 0
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	call	cdb_advance_fd
	mov	rbp, rbp
	mov	byte ptr [rbx], 0x2f
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_725
	nop	
	inc	rbx
	mov	rsp, rsp
	mov	rdi, rbx
	call	find_non_slash
	mov	rsp, rsp
	mov	r13, rax
	jmp	.label_732
.label_733:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	esi, OFFSET FLAT:.str.3_0
	call	cdb_advance_fd
	test	eax, eax
	jne	.label_725
	mov	rsp, rsp
	add	r13, rbx
.label_732:
	mov	rsp, rsp
	movzx	eax, byte ptr [r13]
	nop	
	cmp	eax, 0x2f
	je	.label_737
	mov	rsp, rsp
	cmp	r13, r15
	lea	rsi, [rsi]
	ja	.label_739
	mov	rax, r15
	sub	rax, r13
	cmp	rax, 0xfff
	lea	rsi, [rsi]
	jle	.label_726
	mov	rsp, rsp
	lea	r12, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_730:
	lea	rsi, [rsi]
	mov	esi, 0x2f
	mov	edx, 0x1000
	mov	rdi, r13
	call	memrchr
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_728
	mov	rsp, rsp
	mov	byte ptr [rbx], 0
	mov	rax, rbx
	lea	rsi, [rsi]
	sub	rax, r13
	lea	rdi, [rdi]
	cmp	rax, 0x1000
	mov	rsp, rsp
	jge	.label_734
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rsi, [rsi]
	call	cdb_advance_fd
	mov	byte ptr [rbx], 0x2f
	test	eax, eax
	jne	.label_725
	mov	rsp, rsp
	inc	rbx
	mov	rdi, rbx
	call	find_non_slash
	mov	r13, rax
	mov	rax, r15
	lea	rdi, [rdi]
	sub	rax, r13
	cmp	rax, 0xfff
	lea	rsi, [rsi]
	jg	.label_730
.label_726:
	cmp	r13, r15
	mov	rsp, rsp
	jae	.label_731
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	cdb_advance_fd
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_725
.label_731:
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	cdb_fchdir
	test	eax, eax
	je	.label_735
.label_725:
	mov	ebx, dword ptr [r14]
	lea	rdi, [rsp + 8]
	nop	
	call	cdb_free
	mov	dword ptr [r14], ebx
	jmp	.label_738
.label_728:
	mov	rbp, rbp
	mov	dword ptr [r14], 0x24
.label_738:
	mov	eax, 0xffffffff
.label_729:
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
.label_735:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	call	cdb_free
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_729
.label_734:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.6_1
	mov	esi, OFFSET FLAT:.str.1_10
	nop	
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_736:
	mov	edi, OFFSET FLAT:.str_10
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_727:
	mov	edi, OFFSET FLAT:.str.2_4
	nop	
	mov	esi, OFFSET FLAT:.str.1_10
	lea	rdi, [rdi]
	mov	edx, 0x7f
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_737:
	mov	edi, OFFSET FLAT:.str.4_1
	nop	
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0xa2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_739:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.1_10
	lea	rdi, [rdi]
	mov	edx, 0xa3
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	lea	rdi, [rdi]
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b950

	.globl cdb_init
	.type cdb_init, @function
cdb_init:
	mov	rsp, rsp
	mov	dword ptr [rdi], 0xffffff9c
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b960

	.globl cdb_advance_fd
	.type cdb_advance_fd, @function
cdb_advance_fd:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	edi, dword ptr [rbx]
	nop	
	mov	edx, 0x10900
	xor	eax, eax
	call	openat
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rsp, rsp
	mov	eax, 0xffffffff
	test	ebp, ebp
	nop	
	js	.label_740
	mov	rdi, rbx
	call	cdb_free
	mov	rbp, rbp
	mov	dword ptr [rbx], ebp
	mov	rbp, rbp
	xor	eax, eax
.label_740:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b9c0

	.globl find_non_slash
	.type find_non_slash, @function
find_non_slash:
	nop	
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x2f
	call	__strspn_c1
	add	rax, rbx
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b9e0

	.globl cdb_fchdir
	.type cdb_fchdir, @function
cdb_fchdir:
	mov	rbp, rbp
	mov	edi, dword ptr [rdi]
	jmp	fchdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b9f0

	.globl cdb_free
	.type cdb_free, @function
cdb_free:
	mov	rsp, rsp
	push	rax
	nop	
	mov	edi, dword ptr [rdi]
	test	edi, edi
	lea	rdi, [rdi]
	js	.label_741
	mov	rbp, rbp
	call	close
	test	eax, eax
	jne	.label_742
.label_741:
	lea	rdi, [rdi]
	pop	rax
	mov	rsp, rsp
	ret	
.label_742:
	mov	edi, OFFSET FLAT:.str.7_1
	mov	esi, OFFSET FLAT:.str.1_10
	nop	
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cdb_free
	lea	rdi, [rdi]
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ba30

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
	js	.label_743
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_745
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
	je	.label_743
.label_745:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_743
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_744
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_744:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_743:
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
	.align	32
	#Procedure 0x40baf0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_758
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_758:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xd0]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x10
	nop	
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_746
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_752
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_753
	mov	rbp, rbp
	test	esi, esi
	jne	.label_746
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_749
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_756
.label_746:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_747
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_753
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_757
.label_752:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_753:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_748
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_751
.label_748:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_751:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_757:
	nop	
	cmp	eax, 6
	jne	.label_747
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_755
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_759
.label_747:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_750
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_754
.label_749:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_756:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_755:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_759:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_750:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_754:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd90

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	mov	ecx, esi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	edx, ecx
	jmp	fcntl
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bdb0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	lea	rsi, [rsi]
	js	.label_764
	mov	esi, 0x406
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	nop	
	jns	.label_761
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_761
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_760
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_763
.label_761:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_763
.label_764:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_763:
	test	ebx, ebx
	js	.label_760
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_760
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_762
	or	ecx, 1
	nop	
	mov	esi, 2
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	mov	rsp, rsp
	call	fcntl
	mov	rbp, rbp
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_760
.label_762:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_760:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bec0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_765
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_765
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_765:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bef0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_766
	mov	rbp, rbp
	ret	
.label_766:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bf10

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
	jne	.label_769
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_769
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_767
.label_769:
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
.label_767:
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
	je	.label_768
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_768:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bfc0

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
	.section	.text
	.align	32
	#Procedure 0x40bfe0

	.globl openat_proc_name
	.type openat_proc_name, @function
openat_proc_name:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r15d, esi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	byte ptr [r14], 0
	nop	
	je	.label_770
	mov	ecx,  dword ptr [dword ptr [rip + openat_proc_name.proc_status]]
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_774
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, 0x10900
	mov	rbp, rbp
	xor	eax, eax
	call	open
	mov	rbp, rbp
	mov	ebp, eax
	lea	rsi, [rsi]
	test	ebp, ebp
	js	.label_775
	lea	r12, [rsp]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, 0x20
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.1_11
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsp, rsp
	mov	r8d, ebp
	mov	rsp, rsp
	call	__sprintf_chk
	xor	esi, esi
	mov	rdi, r12
	call	access
	mov	rbp, rbp
	cmp	eax, 1
	mov	rsp, rsp
	sbb	eax, eax
	lea	rsi, [rsi]
	not	eax
	lea	rsi, [rsi]
	or	eax, 1
	mov	dword ptr [dword ptr [rip + openat_proc_name.proc_status]],  eax
	mov	edi, ebp
	call	close
	nop	
	mov	ecx,  dword ptr [dword ptr [rip + openat_proc_name.proc_status]]
.label_774:
	lea	rdi, [rdi]
	xor	eax, eax
	test	ecx, ecx
	lea	rdi, [rdi]
	js	.label_771
	mov	rdi, r14
	call	strlen
	lea	rsi, [rsi]
	add	rax, 0x1b
	cmp	rax, 0xfc1
	jb	.label_772
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	xor	eax, eax
	nop	
	test	rbx, rbx
	je	.label_771
.label_772:
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_5
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	r8d, r15d
	call	__sprintf_chk
	lea	rdi, [rdi]
	movsxd	rdi, eax
	add	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	strcpy
	jmp	.label_773
.label_770:
	mov	byte ptr [rbx], 0
.label_773:
	mov	rax, rbx
.label_771:
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_775:
	mov	dword ptr [dword ptr [rip + openat_proc_name.proc_status]],  0xffffffff
	mov	rbp, rbp
	xor	eax, eax
	nop	
	jmp	.label_771
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c160
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c170
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	lea	rdi, [rdi]
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c180
	.globl rotl32
	.type rotl32, @function
rotl32:

	lea	rdi, [rdi]
	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c190
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c1a0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	mov	rbp, rbp
	rol	rdi, cl
	mov	rax, rdi
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c1b0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c1c0
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	lea	rsi, [rsi]
	mov	ecx, 0x10
	mov	rsp, rsp
	sub	ecx, esi
	mov	rbp, rbp
	shr	edi, cl
	or	edi, eax
	mov	rbp, rbp
	movzx	eax, di
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c1f0
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	rbp, rbp
	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	rsp, rsp
	sub	ecx, esi
	shl	edi, cl
	lea	rsi, [rsi]
	or	edi, eax
	movzx	eax, di
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c220
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	rbp, rbp
	mov	eax, edi
	nop	
	mov	cl, sil
	mov	rsp, rsp
	shl	eax, cl
	mov	rsp, rsp
	mov	ecx, 8
	sub	ecx, esi
	nop	
	shr	edi, cl
	lea	rdi, [rdi]
	or	edi, eax
	movzx	eax, dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c250
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	rsp, rsp
	mov	cl, sil
	nop	
	shr	eax, cl
	mov	rsp, rsp
	mov	ecx, 8
	lea	rsi, [rsi]
	sub	ecx, esi
	lea	rdi, [rdi]
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c280

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c350

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x40c360

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
	#Procedure 0x40c370

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	32
	#Procedure 0x40c380

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
