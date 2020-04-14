	.section	.text
	.align	32
	#Procedure 0x4019a0

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
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_7
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 3
	mov	rsp, rsp
	mov	rdi, rax
	call	strncmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.12
	nop	
	xor	eax, eax
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.44
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rdi, rbx
	mov	rbp, rbp
	call	__fprintf_chk
	mov	rsp, rsp
	mov	edi, ebp
	mov	rsp, rsp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d00

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
	sub	rsp, 0x28
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
	mov	r14d, 0x10
	lea	rdi, [rdi]
	mov	r12d, 0xffffffff
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	jmp	.label_21
.label_950:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + specified_range]],  rax
	mov	r13b, 1
	nop	word ptr cs:[rax + rax]
.label_21:
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
	jle	.label_61
	lea	ecx, [rax - 0x66]
	cmp	ecx, 0x10
	lea	rsi, [rsi]
	ja	.label_63
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_15]]
.label_949:
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_21
	nop	word ptr cs:[rax + rax]
.label_61:
	mov	rsp, rsp
	cmp	eax, 0x47
	nop	
	jle	.label_9
	nop	
	cmp	eax, 0x48
	mov	rsp, rsp
	je	.label_10
	cmp	eax, 0x4c
	nop	
	je	.label_12
	mov	rsp, rsp
	cmp	eax, 0x50
	jne	.label_14
	mov	r14d, 0x10
	jmp	.label_21
	nop	dword ptr [rax + rax]
.label_63:
	lea	ecx, [rax - 0x80]
	cmp	ecx, 3
	mov	rsp, rsp
	ja	.label_17
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_18]]
.label_913:
	mov	r12d, 1
	jmp	.label_21
.label_17:
	cmp	eax, 0x52
	jne	.label_14
	mov	byte ptr [byte ptr [rip + recurse]],  1
	jmp	.label_21
.label_951:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + specified_role]],  rax
	lea	rsi, [rsi]
	mov	r13b, 1
	jmp	.label_21
.label_952:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + specified_type]],  rax
	lea	rdi, [rdi]
	mov	r13b, 1
	jmp	.label_21
.label_953:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + specified_user]],  rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	rsp, rsp
	jmp	.label_21
.label_954:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	jmp	.label_21
.label_914:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_21
.label_915:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	jmp	.label_21
.label_916:
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_21
.label_10:
	mov	rbp, rbp
	mov	r14d, 0x11
	jmp	.label_21
.label_12:
	mov	r14d, 2
	jmp	.label_21
.label_9:
	cmp	eax, -1
	jne	.label_40
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	nop	
	cmp	ecx, 1
	lea	rsi, [rsi]
	jne	.label_41
	nop	
	cmp	r14d, 0x10
	lea	rdi, [rdi]
	jne	.label_43
	cmp	r12d, 1
	mov	rbp, rbp
	je	.label_44
	nop	
	mov	byte ptr [byte ptr [rip + affect_symlink_referent]],  0
	jmp	.label_46
.label_41:
	test	r12d, r12d
	nop	
	setne	byte ptr [byte ptr [rip + affect_symlink_referent]]
.label_46:
	mov	r14d, 0x10
	jmp	.label_49
.label_43:
	test	r12d, r12d
	je	.label_50
	mov	byte ptr [byte ptr [rip + affect_symlink_referent]],  1
.label_49:
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	mov	edx, ebp
	sub	edx, ecx
	cmp	r15, 1
	nop	
	mov	esi, 1
	mov	edi, 1
	nop	
	adc	edi, 0
	mov	rbp, rbp
	test	r13b, r13b
	cmovne	edi, esi
	cmp	edx, edi
	jl	.label_52
	nop	
	test	r15, r15
	jne	.label_56
	test	r13b, r13b
	je	.label_16
	mov	qword ptr [word ptr [rip + specified_context]],  0
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	test	dl, dl
	je	.label_39
	xor	al, 1
	jne	.label_39
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	mov	rbp, rbp
	call	get_root_dev_ino
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + root_dev_ino]],  rax
	test	rax, rax
	mov	rsp, rsp
	je	.label_64
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	jmp	.label_65
.label_39:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + root_dev_ino]],  0
.label_65:
	mov	rbp, rbp
	movsxd	rax, ecx
	lea	rdi, [rbx + rax*8]
	nop	
	or	r14d, 8
	xor	edx, edx
	lea	rsi, [rsi]
	mov	esi, r14d
	lea	rsi, [rsi]
	call	xfts_open
	mov	r14, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r14
	nop	
	mov	rdi, r14
	call	rpl_fts_read
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	mov	r13b, 1
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_19
	mov	r12b, 1
	mov	rbp, rbp
	jmp	.label_22
.label_58:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.60
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r12, rax
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	nop	
	call	error
.label_62:
	lea	rdi, [rdi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	nop	
	mov	edx, 4
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	rpl_fts_set
	mov	rdi, r14
	lea	rdi, [rdi]
	call	rpl_fts_read
	mov	r12b, byte ptr [rsp + 0x18]
	nop	
	jmp	.label_25
	nop	
.label_22:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	r15, qword ptr [rbx + 0x38]
	lea	rsi, [rsi]
	movzx	eax, word ptr [rbx + 0x70]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	dec	ecx
	mov	rbp, rbp
	mov	r13b, 1
	cmp	ecx, 9
	mov	rsp, rsp
	ja	.label_42
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_48]]
.label_978:
	mov	r13b, 1
	movzx	eax,  byte ptr [byte ptr [rip + recurse]]
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	nop	
	jne	.label_13
	nop	
	mov	rax,  qword ptr [word ptr [rip + root_dev_ino]]
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	rbp, rbp
	test	rax, rax
	je	.label_25
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_25
	mov	rcx, qword ptr [rbx + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	jne	.label_25
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x18], r12b
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2f
	jne	.label_57
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 1], 0
	mov	rsp, rsp
	je	.label_58
.label_57:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	r12, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	lea	rsi, [rsi]
	call	quotearg_n_style
	mov	r15, r14
	mov	r14, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	call	quotearg_n_style
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	nop	
	mov	rcx, r14
	mov	r14, r15
	mov	r8, rbp
	mov	rbp, rbp
	call	error
	jmp	.label_62
.label_980:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x18], r12b
	nop	
	mov	r12, r14
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rbx + 0x40]
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r15
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	nop	
	mov	r14, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x18]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_13
.label_983:
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x58], 0
	jne	.label_31
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_33
.label_31:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x18], r12b
	lea	rdi, [rdi]
	mov	r12d, dword ptr [rbx + 0x40]
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rbp, r14
	lea	rdi, [rdi]
	mov	r14, rax
	nop	
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, r15
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	lea	rsi, [rsi]
	mov	r12b, byte ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	r14, rbp
	call	error
	lea	rdi, [rdi]
	jmp	.label_13
.label_979:
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	cycle_warning_required
	mov	r13b, 1
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_13
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, r15
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	xor	eax, eax
	nop	
	mov	rdx, rbx
	call	error
	lea	rsi, [rsi]
	jmp	.label_25
.label_981:
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	and	al, 1
	lea	rdi, [rdi]
	mov	r13b, 1
	je	.label_25
	jmp	.label_13
.label_982:
	nop	
	mov	ebp, dword ptr [rbx + 0x40]
	xor	r13d, r13d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	call	error
.label_13:
	mov	rsp, rsp
	movzx	eax, word ptr [rbx + 0x70]
.label_42:
	movzx	eax, ax
	cmp	eax, 6
	jne	.label_11
	test	r13b, r13b
	je	.label_11
	mov	rax,  qword ptr [word ptr [rip + root_dev_ino]]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_11
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x80]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rax]
	jne	.label_11
	mov	rcx, qword ptr [rbx + 0x78]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_11
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r15]
	mov	rbp, rbp
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_23
	mov	rsp, rsp
	cmp	byte ptr [r15 + 1], 0
	nop	
	je	.label_26
.label_23:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	r13b, r12b
	mov	r12, r14
	mov	r14, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, r15
	nop	
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str.3_0
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, r14
	nop	
	mov	r14, r12
	mov	rbp, rbp
	mov	r12b, r13b
	lea	rsi, [rsi]
	mov	rcx, r15
	mov	r8, rbp
	mov	rsp, rsp
	call	error
	jmp	.label_38
	nop	word ptr cs:[rax + rax]
.label_11:
	test	r13b, r13b
	je	.label_30
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + verbose]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_36
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.67
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
.label_36:
	mov	rsp, rsp
	mov	edi, dword ptr [r14 + 0x2c]
	nop	
	mov	qword ptr [rsp + 0x20], 0
	mov	rbp,  qword ptr [word ptr [rip + specified_context]]
	nop	
	mov	al,  byte ptr [byte ptr [rip + affect_symlink_referent]]
	test	rbp, rbp
	je	.label_53
	test	al, al
	mov	r15, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rbp, rbp
	je	.label_55
	mov	rsp, rsp
	call	setfileconat
	jmp	.label_59
.label_53:
	test	al, al
	mov	r15, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x20]
	je	.label_60
	call	getfileconat
	jmp	.label_34
.label_55:
	mov	rsp, rsp
	call	lsetfileconat
.label_59:
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	je	.label_30
	call	__errno_location
	mov	r14d, dword ptr [rax]
	nop	
	xor	r13d, r13d
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, r15
	lea	rsi, [rsi]
	call	quotearg_n_style
	mov	r15b, r12b
	mov	r12, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	quote_n
	mov	rbp, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, r12
	mov	rbp, rbp
	mov	r12b, r15b
	nop	
	mov	r8, rbp
	lea	rdi, [rdi]
	call	error
	nop	
	jmp	.label_30
.label_60:
	mov	rbp, rbp
	call	lgetfileconat
.label_34:
	mov	rsp, rsp
	test	eax, eax
	jns	.label_54
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x3d
	mov	rsp, rsp
	jne	.label_27
.label_54:
	nop	
	mov	rbp, qword ptr [rsp + 0x20]
	test	rbp, rbp
	je	.label_29
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	rsp, rsp
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rdi, rbp
	mov	rsp, rsp
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_37
.label_29:
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	mov	edi, 4
	nop	
	mov	rsi, r15
	nop	
	call	quotearg_style
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbp
	jmp	.label_45
.label_27:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r14, rax
	mov	edi, 4
	nop	
	mov	rsi, r15
	nop	
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebp
.label_37:
	mov	rdx, r14
.label_45:
	lea	rdi, [rdi]
	call	error
	nop	
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_30
.label_33:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x20], 1
	mov	rsp, rsp
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	rpl_fts_set
	lea	rsi, [rsi]
	mov	r13b, 1
	jmp	.label_25
.label_26:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
.label_38:
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
.label_30:
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_20
	mov	edx, 4
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	rpl_fts_set
.label_20:
	mov	rsp, rsp
	test	r13b, r13b
	nop	
	setne	r13b
.label_25:
	lea	rdi, [rdi]
	and	r13b, r12b
	mov	rdi, r14
	call	rpl_fts_read
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	r12b, r13b
	jne	.label_22
.label_19:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_28
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, ebp
	mov	rdx, rcx
	nop	
	call	error
.label_28:
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	mov	rsp, rsp
	je	.label_35
	mov	ebx, dword ptr [rbx]
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	nop	
	mov	rdx, rcx
	nop	
	call	error
.label_35:
	movzx	eax, r13b
	nop	
	xor	eax, 1
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_40:
	mov	rbp, rbp
	cmp	eax, 0xffffff7d
	lea	rsi, [rsi]
	je	.label_47
	cmp	eax, 0xffffff7e
	mov	rbp, rbp
	jne	.label_14
	xor	edi, edi
	call	usage
.label_47:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rbp, rbp
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.18_0
	nop	
	mov	r9d, OFFSET FLAT:.str.19
	lea	rsi, [rsi]
	xor	eax, eax
	call	version_etc
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_14:
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	call	usage
.label_52:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	cmp	ecx, ebp
	jge	.label_32
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.23
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rsp, rsp
	movsxd	rax, ebp
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, r14
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	call	usage
.label_56:
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.24
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r15
	nop	
	call	quotearg_style
	lea	rdi, [rdi]
	jmp	.label_24
.label_16:
	mov	rbp, rbp
	movsxd	rax, ecx
	nop	
	inc	ecx
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + specified_context]],  rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	nop	
	mov	rdi,  qword ptr [word ptr [rip + specified_context]]
	lea	rdi, [rdi]
	call	quote
.label_24:
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	nop	
	mov	esi, 0x5f
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	error
.label_64:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 4
	nop	
	mov	esi, OFFSET FLAT:.str.3_0
	call	quotearg_style
	nop	
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_32:
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	mov	rsp, rsp
	mov	edi, 1
	nop	
	call	usage
.label_44:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.20
	jmp	.label_51
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
.label_51:
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rcx
	nop	
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x402bb0
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
	#Procedure 0x402bc0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bd0

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
	je	.label_67
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_66
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_66
.label_67:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_69
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_66:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_68
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
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
.label_69:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_68:
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
	.align	32
	#Procedure 0x402cd0

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
	je	.label_70
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
	jl	.label_72
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_72
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
	jne	.label_71
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_71:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_72:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_70:
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
	#Procedure 0x402dc0
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
	#Procedure 0x402e10
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
	#Procedure 0x402e30
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
	#Procedure 0x402e50
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
	#Procedure 0x402ec0
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
	#Procedure 0x402ee0
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
	je	.label_73
	test	rdx, rdx
	nop	
	je	.label_73
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_73:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f20
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
	.align	32
	#Procedure 0x402fd0

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
.label_107:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_131
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_133]]
.label_968:
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
.label_969:
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
	jne	.label_164
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_164
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_185:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_179
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_179:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_185
.label_164:
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
	jmp	.label_77
.label_961:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_77
.label_964:
	lea	rsi, [rsi]
	mov	al, 1
.label_962:
	lea	rsi, [rsi]
	mov	dl, 1
.label_965:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_87
	mov	rbp, rbp
	mov	cl, al
.label_87:
	mov	al, cl
.label_963:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_95
	test	rbp, rbp
	je	.label_101
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_102
.label_95:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_102
.label_966:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_111
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_116
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_152
.label_967:
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
	jmp	.label_77
.label_101:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_102:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_77
.label_111:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_152
.label_116:
	nop	
	mov	r14d, 1
.label_152:
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
.label_77:
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
	jmp	.label_165
	nop	dword ptr [rax]
.label_161:
	mov	rsp, rsp
	inc	r15
.label_165:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_76
	cmp	r15, r10
	jne	.label_81
	jmp	.label_83
	nop	dword ptr [rax]
.label_76:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_85
.label_81:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_92
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_105
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_105
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
.label_105:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_129
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_99
	nop	dword ptr [rax]
.label_92:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_99
	nop	word ptr cs:[rax + rax]
.label_129:
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
	jne	.label_163
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
	je	.label_99
	jmp	.label_88
.label_163:
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
.label_99:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_192
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_194]]
.label_940:
	test	r15, r15
	jne	.label_86
	jmp	.label_74
.label_944:
	xor	eax, eax
	cmp	r10, -1
	je	.label_199
	test	r15, r15
	jne	.label_200
	nop	
	cmp	r10, 1
	je	.label_74
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_78
.label_933:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_120
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_88
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_96
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_96
	cmp	r14, rbp
	jae	.label_100
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_100:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_148
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_148:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_115
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_115:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_96:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_127
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_127:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_135
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_143
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_168
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_151
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_151:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_157
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_157:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_78
.label_934:
	mov	bl, 0x62
	nop	
	jmp	.label_167
.label_935:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_166
.label_936:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_167
.label_937:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_167
.label_938:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_166
.label_941:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_178
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_182
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
	jae	.label_188
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_188:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_198
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_198:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_82
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_82:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_178:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_78
.label_942:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_94
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_86
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_86
	nop	
	jmp	.label_106
.label_943:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_109
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_113
	jmp	.label_117
.label_192:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_119
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
	jmp	.label_139
.label_199:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_149
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_149
.label_74:
	mov	dl, 1
.label_939:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_155
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_78
.label_120:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_161
	jmp	.label_86
.label_109:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_166
.label_113:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_134
.label_166:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_173
.label_167:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_78
	jmp	.label_176
.label_119:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_180
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_180:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_79
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_124:
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
	je	.label_84
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_91
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_193
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_104
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_132:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_123
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_128
.label_123:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_132
.label_104:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_138
	mov	rbp, rbp
	xor	r13d, r13d
.label_138:
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
	je	.label_124
	jmp	.label_80
	nop	
.label_79:
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
	je	.label_171
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_91
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_84
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_169
	xor	r13d, r13d
.label_169:
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
	je	.label_79
	lea	rsi, [rsi]
	jmp	.label_80
.label_149:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_78
.label_94:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_86
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_86
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_86
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_145
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_93
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_190
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_97
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_97:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_112
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_112:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_187
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_187:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_177
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_177:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_78
.label_86:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_78:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_147
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_150
	nop	
	jmp	.label_90
	nop	dword ptr [rax + rax]
.label_147:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_90
.label_150:
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
	jne	.label_158
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_186
	nop	word ptr cs:[rax + rax]
.label_90:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_186:
	mov	bl, r12b
	je	.label_134
	jmp	.label_176
.label_158:
	mov	bl, r12b
.label_176:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_88
	cmp	r9d, 2
	jne	.label_175
	mov	al, dil
	and	al, 1
	jne	.label_175
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_184
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_184:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_191
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_191:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_130
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_130:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_175:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_197
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_197:
	mov	rbp, rbp
	inc	r14
	jmp	.label_202
.label_200:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_78
.label_135:
	xor	r13d, r13d
	jmp	.label_78
.label_143:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_78
.label_168:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_78
.label_91:
	xor	r13d, r13d
.label_171:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_80
.label_84:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_103
	lea	rax, [r11 + r15]
.label_122:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_156
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_122
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_80
.label_103:
	xor	r13d, r13d
	jmp	.label_80
.label_156:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_80
.label_193:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_80:
	mov	rbp, rbp
	mov	rbx, r10
.label_139:
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
	ja	.label_141
	test	cl, cl
	je	.label_141
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_78
.label_141:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_159
	nop	dword ptr [rax]
.label_153:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_159:
	mov	rsp, rsp
	test	cl, cl
	je	.label_170
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_172
	cmp	r14, rbp
	jae	.label_108
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_108:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_172:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_181
	nop	dword ptr [rax + rax]
.label_170:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_189
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_137
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_137
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_195
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_195:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_174
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_174:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_201
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_201:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_137:
	cmp	r14, rbp
	jae	.label_140
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_140:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_114
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_114:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_89
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_89:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_181:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_134
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_121
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_121
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_126
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_126:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_110
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_110:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_121:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_153
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_153
	nop	word ptr cs:[rax + rax]
.label_134:
	test	dil, 1
	je	.label_162
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_162
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_183
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_183:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_118
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_118:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_162:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_202:
	cmp	r14, rbp
	jae	.label_154
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_154:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_161
.label_145:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_78
.label_93:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_78
	nop	word ptr [rax + rax]
.label_83:
	nop	
	mov	rcx, r15
.label_85:
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
	je	.label_196
	mov	rsp, rsp
	or	al, dl
	je	.label_160
.label_196:
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
	je	.label_75
	mov	rsp, rsp
	or	al, dl
	jne	.label_75
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_98
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_75
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
	je	.label_107
.label_75:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_125
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_125
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_125
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_142:
	cmp	r14, rbp
	jae	.label_136
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_136:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_142
.label_125:
	cmp	r14, rbp
	jae	.label_144
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_144
.label_155:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_88
.label_128:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_88
.label_189:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_88
.label_160:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_88
.label_173:
	nop	
	mov	r9d, 2
.label_88:
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
.label_146:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_144:
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
.label_98:
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
	jmp	.label_146
.label_182:
	mov	r9d, 2
	jmp	.label_88
.label_117:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_88
.label_106:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_88
.label_190:
	mov	r9d, 5
	nop	
	jmp	.label_88
.label_131:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404470
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
	.align	32
	#Procedure 0x4045b0
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
	je	.label_203
	mov	qword ptr [rax], rbx
.label_203:
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
	#Procedure 0x404700
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_204
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_208:
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
	jl	.label_208
.label_204:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_207
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_206]], OFFSET FLAT:slot0
.label_207:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_205
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_205:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047c0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4047d0

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
	js	.label_215
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_210
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_213
.label_210:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_211
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
	jne	.label_214
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_214:
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
.label_213:
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
	ja	.label_212
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
	je	.label_209
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_209:
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
.label_212:
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
.label_215:
	lea	rdi, [rdi]
	call	abort
.label_211:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x404a40
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a50
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
	.align	32
	#Procedure 0x404a80
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
	.align	32
	#Procedure 0x404ab0

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
	je	.label_216
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
.label_216:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b40
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
	je	.label_217
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
.label_217:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404be0

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
	je	.label_218
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
.label_218:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c70
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
	je	.label_219
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
.label_219:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404ce0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_220]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_221]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_222]]
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
	.align	32
	#Procedure 0x404d80
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_220]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_221]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_222]]
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
	.align	32
	#Procedure 0x404e20

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_220]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_221]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_222]]
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
	.align	32
	#Procedure 0x404e90
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_220]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_221]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_222]]
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
	.align	32
	#Procedure 0x404f00

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
	je	.label_223
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
.label_223:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404fe0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_220]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_221]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_222]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_224
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_224
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
.label_224:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405070
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_220]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_221]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_222]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_225
	test	rdx, rdx
	je	.label_225
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
.label_225:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405100
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_220]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_221]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_222]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_226
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_226
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
.label_226:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051a0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_220]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_221]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_222]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_227
	test	rsi, rsi
	je	.label_227
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
.label_227:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405240
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250
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
	.align	32
	#Procedure 0x405270

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405290

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
	.align	32
	#Procedure 0x4052c0

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
	jne	.label_229
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_231
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_228
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_228
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_228
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_228
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_228
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_228
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_229
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_229
.label_231:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_228
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_228
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_228
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_228
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_228
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_228
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_230
.label_228:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_229:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_230:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_229
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_229
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405430

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsi]
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	call	__lxstat
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	test	ecx, ecx
	jne	.label_232
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rax
	mov	rsp, rsp
	mov	rax, rbx
.label_232:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405490

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
	je	.label_234
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
	jmp	.label_238
.label_234:
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
.label_238:
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
	ja	.label_240
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_241]]
.label_893:
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
.label_240:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_235
.label_894:
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
.label_895:
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
.label_896:
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
	jmp	.label_237
.label_897:
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
	jmp	.label_233
.label_898:
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
	jmp	.label_242
.label_899:
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
.label_242:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_233:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_237:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_239
.label_901:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_235:
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
	jmp	.label_236
.label_900:
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
.label_236:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_239:
	mov	rbp, rbp
	call	__fprintf_chk
.label_892:
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
	#Procedure 0x405880
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_243:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_243
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058b0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_245:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_244
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_246
	nop	word ptr cs:[rax + rax]
.label_244:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_246:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_247
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_245
.label_247:
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
	#Procedure 0x405940

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_248
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
.label_248:
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
.label_250:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_249
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_251
	nop	dword ptr [rax + rax]
.label_249:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_251:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_252
	inc	r9
	cmp	r9, 0xa
	jb	.label_250
.label_252:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a80
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
	#Procedure 0x405b10
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
	jb	.label_253
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_254
	test	rax, rax
	je	.label_253
.label_254:
	nop	
	pop	rbx
	ret	
.label_253:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_255
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_256
.label_255:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_256:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b90
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
	jb	.label_258
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_257
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_257
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_257:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_259
	test	rax, rax
	je	.label_258
.label_259:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_258:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c10

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_260
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_260
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_260:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_261
	test	rax, rax
	nop	
	je	.label_262
.label_261:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_262:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c60
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_263
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_267
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_266
.label_263:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_269
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_269:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_264
.label_266:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_265
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_265
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_265:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_268
	test	rax, rax
	mov	rbp, rbp
	je	.label_267
.label_268:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_267:
	call	xalloc_die
.label_264:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d40
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_271
	test	rax, rax
	mov	rbp, rbp
	je	.label_270
.label_271:
	pop	rbx
	ret	
.label_270:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405d60
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_272
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_275
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_276
	call	free
	xor	eax, eax
	jmp	.label_273
.label_272:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_274
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_276:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_273
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_274
.label_273:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_274:
	mov	rbp, rbp
	call	xalloc_die
.label_275:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405df0
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
	je	.label_277
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_278
.label_277:
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
.label_278:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e50
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
	jb	.label_279
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_279
	pop	rcx
	ret	
.label_279:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405e80

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
	je	.label_281
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_280
.label_281:
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
.label_280:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ee0
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
	je	.label_282
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_283
.label_282:
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
.label_283:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405f40

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
	#Procedure 0x405f90

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_285
	mov	rsp, rsp
	pop	rcx
	ret	
.label_285:
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	jne	.label_284
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_5
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	lea	rsi, [rsi]
	call	__assert_fail
.label_284:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ff0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	mov	rbp, rbp
	je	.label_286
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	jne	.label_287
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_286:
	lea	rsi, [rsi]
	ret	
.label_287:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406020

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_288
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_289
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
	je	.label_289
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
.label_288:
	mov	ecx, 1
.label_289:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406090

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
	mov	r14, rdx
	mov	ebx, esi
	mov	r12, rdi
	cmp	ebx, 0x1000
	jae	.label_320
	mov	rbp, rbp
	mov	eax, ebx
	lea	rdi, [rdi]
	and	eax, 0x204
	nop	
	cmp	eax, 0x204
	je	.label_320
	mov	rsp, rsp
	test	bl, 0x12
	nop	
	je	.label_320
	mov	rsp, rsp
	mov	edi, 0x80
	mov	rsp, rsp
	call	malloc
	mov	r15, rax
	xor	eax, eax
	nop	
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_318
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + 0x30], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x40], r14
	mov	eax, ebx
	and	eax, 0xfffffdfb
	mov	rsp, rsp
	or	eax, 4
	lea	rdi, [rdi]
	test	bl, 2
	lea	rdi, [rdi]
	cmove	eax, ebx
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 0x48], eax
	mov	rbp, rbp
	mov	dword ptr [r15 + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_291
	mov	r13d, ebx
	mov	rbp, rbp
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_315:
	nop	
	call	strlen
	cmp	rax, rbp
	mov	rsp, rsp
	cmova	rbp, rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_315
	inc	rbp
	mov	rsp, rsp
	mov	ebx, r13d
.label_291:
	cmp	rbp, 0x1000
	lea	rsi, [rsi]
	mov	esi, 0x1000
	cmova	rsi, rbp
	mov	rsp, rsp
	add	rsi, 0x100
	nop	
	mov	qword ptr [r15 + 0x30], rsi
	xor	edi, edi
	mov	rsp, rsp
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_326
	mov	qword ptr [r15 + 0x20], rbp
	mov	qword ptr [rsp + 0x30], r15
	lea	rdi, [rdi]
	mov	r13, qword ptr [r12]
	mov	qword ptr [rsp + 0x20], r12
	xor	r12d, r12d
	lea	rsi, [rsi]
	test	r13, r13
	je	.label_329
	lea	rsi, [rsi]
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rbp, rbp
	je	.label_297
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [r12 + 0x50], rax
	nop	
	mov	qword ptr [r12 + 0x38], rbp
	mov	dword ptr [r12 + 0x40], 0
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x18], 0
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x72], 0
	mov	rsp, rsp
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_329:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x17], 1
	test	r14, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r14
	je	.label_316
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	lea	rdi, [rdi]
	shr	al, 2
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x17], al
.label_316:
	mov	rsp, rsp
	xor	r14d, r14d
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_323
	mov	qword ptr [rsp + 0x18], r12
	xor	r12d, r12d
	test	bh, 8
	jne	.label_327
	xor	r15d, r15d
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_317:
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	lea	rsi, [rsi]
	cmp	rbp, 3
	jb	.label_295
	movzx	eax, byte ptr [rbp + r13 - 1]
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_296
	mov	qword ptr [rsp + 0x28], rbx
	nop	word ptr [rax + rax]
.label_304:
	movzx	eax, byte ptr [r13 + rbp - 2]
	nop	
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_301
	lea	rsi, [rsi]
	dec	rbp
	cmp	rbp, 1
	mov	rsp, rsp
	ja	.label_304
	lea	rsi, [rsi]
	jmp	.label_301
.label_295:
	mov	qword ptr [rsp + 0x28], rbx
	jmp	.label_301
.label_296:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbx
.label_301:
	lea	rdi, [rdi]
	lea	rdi, [rbp + 0x110]
	lea	rsi, [rsi]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_312
	mov	r14, rbx
	mov	rbp, rbp
	add	r14, 0x108
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	byte ptr [rbx + rbp + 0x108], 0
	mov	qword ptr [rbx + 0x60], rbp
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	qword ptr [rbx + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	nop	
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rax
	nop	
	mov	qword ptr [rbx + 0x30], r14
	test	r15, r15
	mov	rsp, rsp
	setne	al
	lea	rdi, [rdi]
	test	byte ptr [rsp + 0x17], al
	je	.label_319
	mov	rsp, rsp
	mov	word ptr [rbx + 0x70], 0xb
	mov	qword ptr [rbx + 0xa8], 2
	jmp	.label_299
.label_319:
	xor	edx, edx
	mov	rsi, rbx
	mov	rsp, rsp
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
.label_299:
	nop	
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	test	rax, rax
	je	.label_293
	mov	r14, rbx
	mov	qword ptr [rbx + 0x10], r15
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_310
.label_293:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], 0
	test	r15, r15
	nop	
	mov	r14, rbx
	je	.label_310
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], rbx
	mov	rsp, rsp
	mov	r14, r15
.label_310:
	nop	
	inc	r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rax + 8]
	mov	rbp, rbp
	add	rax, 8
	nop	
	mov	qword ptr [rsp + 0x20], rax
	test	r13, r13
	mov	rsp, rsp
	mov	r15, r14
	mov	rsp, rsp
	jne	.label_317
	lea	rdi, [rdi]
	jmp	.label_324
.label_320:
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	nop	
	xor	eax, eax
.label_318:
	add	rsp, 0x38
	nop	
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_326:
	mov	rdi, qword ptr [r15 + 0x20]
	mov	rsp, rsp
	jmp	.label_290
.label_327:
	xor	eax, eax
	xor	r15d, r15d
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_307:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r15
	mov	rbp, rbp
	mov	r14, rax
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	nop	
	and	rdi, 0xfffffffffffffff8
	nop	
	call	malloc
	mov	r15, rax
	mov	rbp, rbp
	test	r15, r15
	je	.label_303
	mov	rbp, r15
	add	rbp, 0x108
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	byte ptr [r15 + rbx + 0x108], 0
	mov	qword ptr [r15 + 0x60], rbx
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	qword ptr [r15 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0x40], 0
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], 0
	mov	word ptr [r15 + 0x72], 0
	mov	rbp, rbp
	mov	word ptr [r15 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	mov	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r15 + 0x30], rbp
	lea	rdi, [rdi]
	mov	rbx, r14
	mov	rbp, rbp
	test	rbx, rbx
	lea	rdi, [rdi]
	setne	al
	mov	rbp, rbp
	and	al, byte ptr [rsp + 0x17]
	lea	rsi, [rsi]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_309
	lea	rsi, [rsi]
	mov	word ptr [r15 + 0x70], 0xb
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0xa8], 2
	jmp	.label_292
.label_309:
	nop	
	xor	edx, edx
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
.label_292:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 8], rax
	test	rax, rax
	je	.label_294
	mov	r14, r15
	nop	
	mov	qword ptr [r15 + 0x10], rbx
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x28]
	jmp	.label_302
.label_294:
	mov	qword ptr [r15 + 0x10], 0
	test	rbx, rbx
	mov	r14, r15
	je	.label_302
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + 0x10], r15
	nop	
	mov	r14, rbx
.label_302:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rax + r12*8 + 8]
	lea	rdi, [rdi]
	inc	r12
	test	r13, r13
	mov	rax, r14
	jne	.label_307
.label_324:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 8], 0
	je	.label_306
	lea	rdi, [rdi]
	cmp	r12, 2
	nop	
	jb	.label_306
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	rdx, r12
	mov	rbp, rbp
	call	fts_sort
	mov	rsp, rsp
	mov	r14, rax
.label_306:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x18]
.label_323:
	nop	
	mov	edi, 0x110
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_322
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x108], 0
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x60], 0
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + 0x50], r15
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	nop	
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	mov	word ptr [rax + 0x72], 0
	lea	rdi, [rdi]
	mov	word ptr [rax + 0x74], 3
	mov	rsp, rsp
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [r15], rax
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x10], r14
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_325
	nop	
	mov	edi, 0x1f
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:free
	lea	rdi, [rdi]
	call	hash_initialize
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	jne	.label_311
	jmp	.label_313
.label_297:
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	jmp	.label_314
.label_322:
	mov	r15, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [r15], 0
	nop	
	jmp	.label_313
.label_325:
	nop	
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r15 + 0x58], rax
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_313
	mov	rdi, rax
	call	cycle_check_init
.label_311:
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15 + 0x48]
	mov	rbp, rbp
	test	ax, 0x204
	lea	rsi, [rsi]
	jne	.label_321
	nop	
	mov	edx, eax
	mov	rsp, rsp
	and	edx, 0x10
	mov	rsp, rsp
	shl	edx, 0xd
	or	edx, 0x90900
	lea	rdi, [rdi]
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_328
	mov	edi, OFFSET FLAT:.str_6
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, edx
	lea	rdi, [rdi]
	call	open_safer
	jmp	.label_298
.label_312:
	mov	r14, r15
.label_303:
	mov	r15, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x18]
.label_313:
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_300
	nop	word ptr cs:[rax + rax]
.label_308:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_305
	lea	rsi, [rsi]
	call	closedir
.label_305:
	mov	rdi, r14
	mov	rbp, rbp
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	r14, rbx
	nop	
	jne	.label_308
.label_300:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	nop	
	mov	rbp, qword ptr [r15 + 0x20]
.label_314:
	mov	rdi, rbp
.label_290:
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	nop	
	xor	eax, eax
	nop	
	jmp	.label_318
.label_328:
	lea	rdi, [rdi]
	mov	edi, dword ptr [r15 + 0x2c]
	mov	esi, OFFSET FLAT:.str_6
	xor	eax, eax
	lea	rdi, [rdi]
	call	openat_safer
.label_298:
	mov	dword ptr [r15 + 0x28], eax
	test	eax, eax
	jns	.label_321
	or	byte ptr [r15 + 0x48], 4
.label_321:
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	add	rdi, 0x60
	mov	esi, 0xffffffff
	lea	rdi, [rdi]
	call	i_ring_init
	mov	rax, r15
	lea	rdi, [rdi]
	jmp	.label_318
	nop	
	.section	.text
	.align	32
	#Procedure 0x406900

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	nop	
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	eax, dword ptr [r15 + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_330
	test	al, 1
	nop	
	je	.label_330
	lea	rsi, [rsi]
	mov	dl, 1
.label_330:
	mov	rbp, rbp
	lea	rbx, [r14 + 0x78]
	lea	rdi, [rdi]
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_337
	and	eax, 2
	jne	.label_337
	mov	rbp, rbp
	mov	esi, dword ptr [r15 + 0x2c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r14 + 0x30]
	nop	
	mov	edi, 1
	mov	r8d, 0x100
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rsi, [rsi]
	call	__fxstatat
	test	eax, eax
	je	.label_335
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_338
.label_337:
	mov	rsp, rsp
	mov	rsi, qword ptr [r14 + 0x30]
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	__xstat
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_335
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_338
	mov	rsi, qword ptr [r14 + 0x30]
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rsp, rsp
	call	__lxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_333
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
.label_338:
	mov	dword ptr [r14 + 0x40], eax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_331:
	movzx	eax, ax
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_335:
	mov	rbp, rbp
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	lea	rsi, [rsi]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_331
	cmp	ecx, 0x8000
	nop	
	je	.label_332
	cmp	ecx, 0x4000
	mov	rbp, rbp
	jne	.label_334
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_336
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_336
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
.label_336:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0x2e
	mov	rsp, rsp
	jne	.label_331
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_339
	mov	rbp, rbp
	movzx	edx, dl
	lea	rsi, [rsi]
	cmp	edx, 0x2e
	jne	.label_331
	lea	rsi, [rsi]
	test	ecx, 0xff0000
	lea	rdi, [rdi]
	jne	.label_331
.label_339:
	nop	
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	mov	rsp, rsp
	je	.label_331
	mov	ax, 5
	jmp	.label_331
.label_332:
	mov	ax, 8
	jmp	.label_331
.label_334:
	lea	rdi, [rdi]
	mov	ax, 3
	lea	rsi, [rsi]
	jmp	.label_331
.label_333:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_331
	nop	
	.section	.text
	.align	32
	#Procedure 0x406b30

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_345
	lea	rsi, [r14 + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rbp, rbp
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_344
	mov	rsp, rsp
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	lea	rsi, [rsi]
	call	realloc
	mov	rdi, rax
	lea	rdi, [rdi]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_344
	mov	qword ptr [r13], rdi
	lea	rdi, [rdi]
	jmp	.label_346
.label_345:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	add	r12, 0x10
	mov	r13, r12
.label_346:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_340
	nop	dword ptr [rax]
.label_343:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_343
	mov	rdi, qword ptr [r13]
.label_340:
	mov	edx, 8
	nop	
	mov	rsi, r14
	nop	
	mov	rcx, r15
	nop	
	call	qsort
	mov	r9, qword ptr [r13]
	mov	rbx, qword ptr [r9]
	mov	rsp, rsp
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_350
	nop	
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rsp, rsp
	mov	rcx, r14
	add	rcx, -2
	mov	rsp, rsp
	je	.label_349
	mov	rsp, rsp
	lea	rdx, [r9 + 8]
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	mov	rsp, rsp
	lea	r8, [r14 - 3]
	lea	rsi, [rsi]
	test	dil, 3
	mov	rbp, rbp
	je	.label_348
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	
.label_342:
	mov	rsi, qword ptr [rdx]
	nop	
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	nop	
	inc	rdi
	jne	.label_342
.label_348:
	lea	rsi, [rsi]
	cmp	r8, 3
	mov	rbp, rbp
	jb	.label_349
	nop	dword ptr [rax + rax]
.label_341:
	mov	rsp, rsp
	mov	rax, qword ptr [rdx]
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rax + 0x10], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rax + 0x10], rsi
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rsi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x20]
	lea	rdx, [rdx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rsi
	mov	rbp, rbp
	add	rcx, -4
	lea	rsi, [rsi]
	jne	.label_341
.label_349:
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_350:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_347
.label_344:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_347:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d30

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	nop	
	push	rbx
	nop	
	mov	r14, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_365
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 0x58], 0
	lea	rsi, [rsi]
	js	.label_363
	nop	word ptr [rax + rax]
.label_368:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_362
	mov	rbx, qword ptr [rdi + 8]
.label_362:
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], 0
	lea	rsi, [rsi]
	mov	rdi, rbx
	jns	.label_368
	mov	rsp, rsp
	jmp	.label_352
.label_363:
	mov	rbx, rdi
.label_352:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
.label_365:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_357
	nop	dword ptr [rax]
.label_364:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_360
	lea	rsi, [rsi]
	call	closedir
.label_360:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rbx, rbp
	jne	.label_364
.label_357:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14 + 0x48]
	lea	rdi, [rdi]
	test	ah, 2
	jne	.label_369
	xor	ebp, ebp
	mov	rbp, rbp
	test	al, 4
	jne	.label_354
	nop	
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_353
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_353:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	lea	rsi, [rsi]
	test	ebp, ebp
	nop	
	je	.label_358
	nop	
	jmp	.label_354
.label_369:
	mov	rsp, rsp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	edi, edi
	js	.label_354
	nop	
	call	close
.label_358:
	nop	
	test	eax, eax
	nop	
	je	.label_354
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
.label_354:
	lea	rsi, [rsi]
	lea	rbx, [r14 + 0x60]
	jmp	.label_355
	nop	
.label_351:
	mov	edi, eax
	mov	rsp, rsp
	call	close
.label_355:
	mov	rsp, rsp
	mov	rdi, rbx
	call	i_ring_empty
	lea	rdi, [rdi]
	test	al, al
	jne	.label_367
	mov	rbp, rbp
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_351
	nop	
	jmp	.label_355
.label_367:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_356
	nop	
	call	hash_free
.label_356:
	nop	
	movzx	eax, word ptr [r14 + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	je	.label_359
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_361
	lea	rdi, [rdi]
	call	hash_free
	nop	
	jmp	.label_361
.label_359:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rdi, [rdi]
	call	free
.label_361:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	xor	eax, eax
	test	ebp, ebp
	je	.label_366
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], ebp
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
.label_366:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f20

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	mov	r14, rdi
	nop	
	mov	r12, qword ptr [r14]
	xor	r15d, r15d
	test	r12, r12
	je	.label_383
	mov	rsp, rsp
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	mov	rbp, rbp
	test	ah, 0x20
	mov	rsp, rsp
	jne	.label_383
	lea	rdi, [rdi]
	movzx	ecx, word ptr [r12 + 0x74]
	nop	
	mov	word ptr [r12 + 0x74], 3
	mov	rsp, rsp
	cmp	ecx, 1
	nop	
	je	.label_418
	movzx	edx, cx
	cmp	edx, 2
	mov	rsp, rsp
	jne	.label_422
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x70]
	mov	rsp, rsp
	mov	esi, ecx
	and	esi, 0xfffe
	mov	rbp, rbp
	cmp	esi, 0xc
	jne	.label_423
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_399
	mov	eax, dword ptr [r14 + 0x48]
	mov	rbp, rbp
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_399
	mov	edx, eax
	nop	
	and	edx, 0x10
	shl	edx, 0xd
	lea	rdi, [rdi]
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_431
	nop	
	mov	edi, OFFSET FLAT:.str_6
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	nop	
	jmp	.label_374
.label_418:
	xor	edx, edx
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_383
.label_422:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_381
.label_423:
	mov	rbp, rbp
	lea	r13, [r12 + 0x70]
.label_381:
	movzx	esi, cx
	mov	rsp, rsp
	cmp	esi, 1
	jne	.label_387
	cmp	edx, 4
	je	.label_389
	lea	rsi, [rsi]
	test	al, 0x40
	je	.label_391
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 0x78]
	nop	
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_389
.label_391:
	mov	rbx, qword ptr [r14 + 8]
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_394
	test	ah, 0x10
	jne	.label_420
	nop	
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	mov	rbp, rbp
	je	.label_400
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	jmp	.label_401
.label_404:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
.label_401:
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_404
	nop	
	jmp	.label_400
.label_387:
	mov	rbx, r12
	nop	
.label_416:
	mov	r12, qword ptr [rbx + 0x10]
	test	r12, r12
	je	.label_408
	lea	rsi, [rsi]
	mov	qword ptr [r14], r12
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_414
	movzx	eax, word ptr [r12 + 0x74]
	cmp	eax, 4
	nop	
	mov	rbx, r12
	lea	rsi, [rsi]
	je	.label_416
	movzx	eax, ax
	nop	
	cmp	eax, 2
	lea	rdi, [rdi]
	jne	.label_377
	mov	edx, 1
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_396
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_396
	mov	edx, eax
	lea	rdi, [rdi]
	and	edx, 0x10
	lea	rsi, [rsi]
	shl	edx, 0xd
	lea	rsi, [rsi]
	or	edx, 0x90900
	test	ah, 2
	mov	rbp, rbp
	jne	.label_424
	mov	edi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_425
.label_389:
	test	ecx, 0x20000
	mov	rbp, rbp
	je	.label_427
	mov	rsp, rsp
	mov	edi, dword ptr [r12 + 0x44]
	nop	
	call	close
.label_427:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	nop	
	je	.label_430
	nop	word ptr cs:[rax + rax]
.label_375:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_370
	call	closedir
.label_370:
	mov	rdi, rbx
	nop	
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	mov	rbp, rbp
	jne	.label_375
	nop	
	mov	qword ptr [r14 + 8], 0
.label_430:
	mov	word ptr [r12 + 0x70], 6
.label_421:
	mov	rdi, r14
	mov	rsi, r12
	mov	rsp, rsp
	call	leave_dir
	mov	rbp, rbp
	mov	r15, r12
	lea	rsi, [rsi]
	jmp	.label_383
.label_408:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbx + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_386
	mov	qword ptr [r14], r15
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rbp, rbp
	mov	rdi, r14
	call	fts_build
	mov	r12, rax
	nop	
	test	r12, r12
	je	.label_395
	mov	rdi, rbx
	nop	
	call	free
	mov	rbp, rbp
	jmp	.label_377
.label_414:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	restore_initial_cwd
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_379
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_383
.label_379:
	nop	
	test	ax, 0x102
	je	.label_406
	mov	rbp, rbp
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_403
	call	hash_free
	nop	
	jmp	.label_403
.label_420:
	and	eax, 0xffffefff
	mov	rbp, rbp
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr [rax + rax]
.label_413:
	mov	rbp, qword ptr [rbx + 0x10]
	nop	
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_388
	call	closedir
.label_388:
	nop	
	mov	rdi, rbx
	call	free
	nop	
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_413
	mov	qword ptr [r14 + 8], 0
.label_394:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdi, r14
	lea	rsi, [rsi]
	call	fts_build
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_417
.label_400:
	lea	rsi, [rsi]
	mov	r12, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], 0
	jmp	.label_377
.label_417:
	xor	r15d, r15d
	mov	rsp, rsp
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_383
	cmp	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	je	.label_421
	mov	rsp, rsp
	movzx	eax, word ptr [r13]
	lea	rsi, [rsi]
	cmp	eax, 4
	lea	rdi, [rdi]
	je	.label_421
	mov	word ptr [r13], 7
	nop	
	jmp	.label_421
.label_431:
	nop	
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_6
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	call	openat_safer
.label_374:
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x44], eax
	lea	rdi, [rdi]
	test	eax, eax
	js	.label_426
	or	byte ptr [r12 + 0x72], 2
	mov	rsp, rsp
	jmp	.label_399
.label_395:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_383
	mov	r15, qword ptr [rbx + 8]
.label_386:
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x58], -1
	lea	rdi, [rdi]
	je	.label_372
	movzx	eax, word ptr [r15 + 0x70]
	mov	rbp, rbp
	cmp	eax, 0xb
	mov	rsp, rsp
	je	.label_376
	nop	
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	nop	
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_380
	movzx	eax, word ptr [r15 + 0x72]
	lea	rsi, [rsi]
	test	al, 2
	lea	rsi, [rsi]
	jne	.label_385
	test	al, 1
	jne	.label_371
	mov	rsi, qword ptr [r15 + 8]
	nop	
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r14
	lea	rdi, [rdi]
	call	fts_safe_changedir
	jmp	.label_393
.label_372:
	mov	rdi, r15
	call	free
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_383
.label_426:
	call	__errno_location
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	jmp	.label_399
.label_406:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_403:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r12 + 0x60]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x48], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	mov	rsp, rsp
	inc	rdx
	nop	
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_409
	cmp	rbx, r15
	mov	rsp, rsp
	jne	.label_411
	cmp	byte ptr [r12 + 0x109], 0
	lea	rdi, [rdi]
	je	.label_409
.label_411:
	inc	rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	strlen
	nop	
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, rbx
	nop	
	call	memmove
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x60], r13
.label_409:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	lea	rdi, [rdi]
	je	.label_419
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_399
.label_419:
	lea	rsi, [rsi]
	mov	edi, 0x20
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_399
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_399
.label_380:
	mov	rdi, r14
	mov	rbp, rbp
	call	restore_initial_cwd
.label_393:
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_371
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_371
.label_385:
	mov	eax, dword ptr [r14 + 0x48]
	mov	rbp, rbp
	lea	rbx, [r15 + 0x44]
	test	al, 4
	mov	rbp, rbp
	jne	.label_382
	mov	rbp, rbp
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	lea	rsi, [rsi]
	jne	.label_378
	mov	edi, ebp
	nop	
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	je	.label_382
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	rsp, rsp
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_382
.label_424:
	nop	
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	xor	eax, eax
	call	openat_safer
.label_425:
	mov	dword ptr [r12 + 0x44], eax
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_392
	or	byte ptr [r12 + 0x72], 2
	jmp	.label_396
.label_392:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
.label_396:
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x74], 3
.label_377:
	mov	rax, qword ptr [r14 + 0x20]
	nop	
	mov	rcx, qword ptr [r12 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rbp, rbp
	movzx	edx, byte ptr [rdx + rcx - 1]
	mov	rbp, rbp
	cmp	edx, 0x2f
	jne	.label_398
	dec	rcx
.label_398:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r12 + 0x108]
	mov	rsp, rsp
	mov	rdx, qword ptr [r12 + 0x60]
	mov	rsp, rsp
	inc	rdx
	call	memmove
.label_399:
	mov	rsp, rsp
	mov	qword ptr [r14], r12
	mov	rsp, rsp
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 0xb
	mov	rbp, rbp
	jne	.label_405
	mov	rax, qword ptr [r12 + 0xa8]
	cmp	rax, 1
	je	.label_410
	cmp	rax, 2
	mov	rsp, rsp
	jne	.label_376
	lea	rdi, [rdi]
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x68], 0
	jne	.label_415
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	nop	
	cmp	eax, 0x18
	lea	rdi, [rdi]
	jne	.label_415
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, r15
	call	filesystem_type
	cmp	rax, 0x52654973
	mov	rbp, rbp
	je	.label_410
	cmp	rax, 0x58465342
	je	.label_410
.label_415:
	xor	edx, edx
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r12 + 0x90]
	cmp	ecx, 0x4000
	nop	
	jne	.label_405
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x58], 0
	lea	rsi, [rsi]
	je	.label_410
	mov	rax, qword ptr [r15 + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	lea	rsi, [rsi]
	jb	.label_410
	dec	rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x68], rax
.label_410:
	lea	rsi, [rsi]
	movzx	eax, word ptr [r12 + 0x70]
.label_405:
	movzx	eax, ax
	nop	
	cmp	eax, 1
	jne	.label_428
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x58], 0
	mov	rbp, rbp
	jne	.label_429
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_429:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	mov	rbp, rbp
	je	.label_432
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_373
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [r12 + 0x78]
	mov	rsp, rsp
	movups	xmmword ptr [rbx], xmm0
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], r12
	mov	rdi, qword ptr [r14 + 0x58]
	nop	
	mov	rsi, rbx
	call	hash_insert
	mov	rsp, rsp
	mov	r14, rax
	cmp	r14, rbx
	nop	
	je	.label_384
	mov	rdi, rbx
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_373
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [r12], rax
	jmp	.label_390
.label_428:
	mov	r15, r12
	mov	rsp, rsp
	jmp	.label_383
.label_432:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rsi, [r12 + 0x78]
	call	cycle_check
	test	al, al
	mov	rsp, rsp
	je	.label_397
	mov	qword ptr [r12], r12
.label_390:
	lea	rsi, [rsi]
	mov	word ptr [r12 + 0x70], 2
	mov	r15, r12
	lea	rdi, [rdi]
	jmp	.label_383
.label_373:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_383
.label_397:
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_383
.label_384:
	mov	r15, r12
	jmp	.label_383
.label_378:
	mov	rbp, rbp
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_402
	mov	rsp, rsp
	cmp	esi, -0x64
	lea	rsi, [rsi]
	jne	.label_376
.label_402:
	mov	rbp, rbp
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_407
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	close
.label_407:
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 0x2c], ebp
.label_382:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbx]
	mov	rbp, rbp
	call	close
.label_371:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	lea	rsi, [rsi]
	je	.label_412
	nop	
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	nop	
	movzx	ecx, cl
	or	ecx, 6
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_412
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	call	leave_dir
.label_412:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	lea	rsi, [rsi]
	cmovne	r15, rax
.label_383:
	nop	
	mov	rax, r15
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_376:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079a0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_433
	movups	xmm0, xmmword ptr [rsi + 0x78]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	mov	rsp, rsp
	call	hash_delete
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_434
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	add	rsp, 0x18
	ret	
.label_433:
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_435
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x58], 0
	nop	
	js	.label_435
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	mov	rsp, rsp
	je	.label_434
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x80]
	lea	rdi, [rdi]
	jne	.label_435
	nop	
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	mov	rbp, rbp
	jne	.label_435
	mov	rdx, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_435:
	lea	rdi, [rdi]
	add	rsp, 0x18
	ret	
.label_434:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a60

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
	mov	r15, rdi
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_440
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	ecx, 0x2e
	lea	rsi, [rsi]
	mov	eax, 0x2e
	sub	eax, edx
	lea	rsi, [rsi]
	jne	.label_439
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 1]
	lea	rsi, [rsi]
	sub	ecx, eax
	lea	rsi, [rsi]
	mov	eax, ecx
	jne	.label_439
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_439:
	test	eax, eax
	lea	rsi, [rsi]
	sete	r14b
	lea	rdi, [rdi]
	jmp	.label_449
.label_440:
	xor	r14d, r14d
.label_449:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	mov	rsp, rsp
	jne	.label_453
	nop	
	test	r13d, r13d
	jns	.label_454
	mov	rbp, rbp
	mov	cl, r14b
	mov	rbp, rbp
	xor	cl, 1
	jne	.label_455
	nop	
	mov	qword ptr [rsp + 0x90], rsi
	and	eax, 0x200
	mov	rbp, rbp
	je	.label_444
	lea	rbp, [r15 + 0x60]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	i_ring_empty
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_444
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	mov	rsp, rsp
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	nop	
	jmp	.label_444
.label_453:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_446
	and	eax, 0x200
	je	.label_446
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rsp, rsp
	call	close
	nop	
	jmp	.label_446
.label_454:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rsi
	nop	
	jmp	.label_444
.label_455:
	mov	qword ptr [rsp + 0x90], rsi
.label_444:
	test	r13d, r13d
	mov	rbp, rbp
	mov	r12d, r13d
	jns	.label_436
	mov	rbp, rbp
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	mov	rsp, rsp
	or	edx, 0x90900
	nop	
	test	ah, 2
	mov	rbp, rbp
	jne	.label_441
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	mov	rbp, rbp
	jmp	.label_451
.label_441:
	mov	rbp, rbp
	mov	edi, dword ptr [r15 + 0x2c]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rbx
	nop	
	call	openat_safer
.label_451:
	mov	rbp, rbp
	mov	r12d, eax
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	r12d, r12d
	lea	rdi, [rdi]
	js	.label_446
.label_436:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	nop	
	jne	.label_457
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_437
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x2e
	jne	.label_437
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_437
	cmp	byte ptr [rbx + 2], 0
	mov	rsp, rsp
	jne	.label_437
.label_457:
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, r12d
	lea	rdi, [rdi]
	call	__fxstat
	test	eax, eax
	jne	.label_450
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	jne	.label_452
	nop	
	mov	rax, qword ptr [rcx + 0x80]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 8]
	nop	
	jne	.label_452
	mov	eax, dword ptr [r15 + 0x48]
.label_437:
	mov	rbp, rbp
	test	ah, 2
	jne	.label_456
	nop	
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	mov	rbp, rbp
	jmp	.label_438
.label_456:
	mov	esi, dword ptr [r15 + 0x2c]
	lea	rsi, [rsi]
	cmp	esi, r12d
	jne	.label_442
	cmp	esi, -0x64
	jne	.label_443
.label_442:
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_447
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_445
	nop	
	test	esi, esi
	js	.label_445
	mov	rbp, rbp
	mov	edi, esi
	jmp	.label_448
.label_452:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 2
.label_450:
	mov	ebp, 0xffffffff
.label_438:
	test	r13d, r13d
	jns	.label_446
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	nop	
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_446
.label_447:
	lea	rsi, [rsi]
	lea	rdi, [r15 + 0x60]
	lea	rsi, [rsi]
	call	i_ring_push
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_445
	mov	edi, eax
.label_448:
	mov	rsp, rsp
	call	close
.label_445:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_446:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_443:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407d40

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
	sub	rsp, 0x98
	lea	rsi, [rsi]
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rdx, rdi
	mov	r12, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r12
	nop	
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_507
	mov	rsp, rsp
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x80], rdi
	call	dirfd
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x54], eax
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_521
	mov	dword ptr [rsp + 0x1c], ebp
	nop	
	mov	qword ptr [rsp + 0x30], -1
	nop	
	mov	rdi, rbx
	cmp	qword ptr [rdi + 0x40], 0
	jne	.label_524
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x30], rax
.label_524:
	lea	rax, [rdi + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	lea	rbp, [rdi + 0x48]
	mov	rsp, rsp
	mov	cl, 1
	jmp	.label_491
.label_507:
	mov	qword ptr [rsp + 0x80], rdi
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 0x48]
	mov	ecx, eax
	mov	rsp, rsp
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	nop	
	cmp	ecx, 0x200
	mov	rsp, rsp
	jne	.label_532
	mov	edi, dword ptr [rdx + 0x2c]
.label_532:
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsi, qword ptr [r12 + 0x30]
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	test	al, 0x10
	nop	
	je	.label_459
	nop	
	test	al, 1
	lea	rsi, [rsi]
	je	.label_465
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x58], 0
	lea	rdi, [rdi]
	je	.label_459
.label_465:
	nop	
	mov	edx, 0x20000
.label_459:
	lea	rcx, [rsp + 0x54]
	call	opendirat
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], rax
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_528
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ebp
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	lea	r15, [rdi + 0x48]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 0xb
	jne	.label_473
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	rdi, rbx
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_479
.label_521:
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_528:
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	ebp, 3
	jne	.label_462
	nop	
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x40], eax
	mov	rsp, rsp
	xor	ebx, ebx
	jmp	.label_462
.label_473:
	test	byte ptr [r15 + 1], 1
	nop	
	je	.label_479
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbx, rdi
	call	leave_dir
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fts_stat
	mov	rsp, rsp
	movzx	eax, word ptr [rbx + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	mov	rsp, rsp
	je	.label_500
	mov	rbp, rbp
	mov	rbp, rbx
	lea	rdi, [rdi]
	mov	edi, 0x18
	lea	rdi, [rdi]
	call	malloc
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_505
	movups	xmm0, xmmword ptr [r12 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	nop	
	mov	qword ptr [rbx + 0x10], r12
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	hash_insert
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	cmp	rbp, rbx
	je	.label_479
	mov	r14, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	test	rbp, rbp
	nop	
	je	.label_505
	mov	rax, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [r12], rax
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], 2
	mov	rsp, rsp
	mov	rdi, r14
	jmp	.label_479
.label_500:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x58]
	lea	rsi, [r12 + 0x78]
	lea	rsi, [rsi]
	call	cycle_check
	mov	rbp, rbp
	mov	rdi, rbx
	test	al, al
	lea	rdi, [rdi]
	je	.label_479
	mov	qword ptr [r12], r12
	mov	word ptr [r12 + 0x70], 2
.label_479:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], -1
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x40], 0
	jne	.label_531
	mov	eax, 0x186a0
	nop	
	mov	qword ptr [rsp + 0x30], rax
.label_531:
	mov	rbp, rbp
	lea	rax, [rdi + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	dword ptr [rsp + 0x1c], 2
	lea	rsi, [rsi]
	mov	rbp, r15
	mov	rbp, rbp
	je	.label_458
	mov	rbp, rbp
	mov	eax, dword ptr [rbp]
	mov	rsp, rsp
	and	eax, 0x38
	cmp	eax, 0x18
	nop	
	jne	.label_463
	cmp	qword ptr [r12 + 0x88], 2
	lea	rdi, [rdi]
	jne	.label_463
	nop	
	mov	rbx, rdi
	nop	
	mov	esi, dword ptr [rsp + 0x54]
	mov	rdi, r12
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_471
	cmp	rax, 0x9fa0
	nop	
	mov	rdi, rbx
	nop	
	je	.label_463
	mov	ecx, 0xff534d42
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_463
	cmp	rax, 0x5346414f
	mov	rsp, rsp
	je	.label_463
	jmp	.label_458
.label_505:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_462
.label_471:
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	je	.label_463
	lea	rdi, [rdi]
	cmp	rax, 0x6969
	jne	.label_458
.label_463:
	cmp	dword ptr [rsp + 0x1c], 3
	lea	rsi, [rsi]
	sete	r13b
	mov	r14b, 1
	lea	rdi, [rdi]
	jmp	.label_489
.label_458:
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x1c], 3
	lea	rdi, [rdi]
	sete	r13b
	mov	r14d, 0
	jne	.label_491
.label_489:
	test	byte ptr [rbp + 1], 2
	mov	qword ptr [rsp + 0x90], rbp
	mov	ebp, dword ptr [rsp + 0x54]
	je	.label_493
	mov	esi, 0x406
	lea	rdi, [rdi]
	mov	r15, rdi
	nop	
	mov	edx, 3
	mov	rsp, rsp
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	ebp, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x54], ebp
.label_493:
	test	ebp, ebp
	js	.label_503
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbx, rdi
	nop	
	mov	edx, ebp
	call	fts_safe_changedir
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	cl, 1
	test	eax, eax
	mov	rbp, rbp
	je	.label_510
.label_503:
	mov	rbp, rdi
	and	r13b, r14b
	movzx	eax, r13b
	cmp	eax, 1
	jne	.label_512
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x40], eax
.label_512:
	or	byte ptr [r12 + 0x72], 1
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	ah, 2
	mov	rsp, rsp
	je	.label_483
	mov	edi, dword ptr [rsp + 0x54]
	test	edi, edi
	lea	rdi, [rdi]
	js	.label_483
	call	close
.label_483:
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x18], 0
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rdi, rbp
.label_510:
	mov	rbp, qword ptr [rsp + 0x90]
.label_491:
	mov	rax, qword ptr [r12 + 0x38]
	mov	rdx, qword ptr [r12 + 0x48]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_529
	mov	rsp, rsp
	dec	rdx
.label_529:
	mov	rsp, rsp
	mov	dword ptr [rsp + 4], ecx
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp], 4
	mov	r13, rbp
	mov	rsp, rsp
	je	.label_535
	mov	rax, qword ptr [rdi + 0x20]
	nop	
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x58], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_535:
	mov	rsp, rsp
	lea	rax, [rdx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rax
	nop	
	mov	rcx, qword ptr [rdi + 0x30]
	mov	qword ptr [rsp + 0x88], rdi
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x90], rcx
	mov	rax, qword ptr [r12 + 0x58]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	add	rdx, 0x102
	nop	
	mov	qword ptr [rsp + 0x68], rdx
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	mov	rsp, rsp
	xor	eax, eax
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_508:
	mov	rsp, rsp
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	je	.label_484
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_513:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x78]
	nop	
	mov	dword ptr [rax], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_494
	mov	rbp, rbp
	mov	r13, r14
	mov	rbp, rbp
	add	r13, 0x13
	lea	rsi, [rsi]
	test	byte ptr [rbp], 0x20
	jne	.label_497
	mov	rbp, rbp
	movzx	eax, byte ptr [r13]
	mov	rbp, rbp
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	jne	.label_497
	movzx	eax, byte ptr [r14 + 0x14]
	mov	rbp, rbp
	cmp	eax, 0x2e
	mov	rbp, rbp
	je	.label_502
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	je	.label_506
	lea	rsi, [rsi]
	jmp	.label_497
	nop	
.label_502:
	cmp	byte ptr [r14 + 0x15], 0
	lea	rdi, [rdi]
	jne	.label_497
.label_506:
	mov	rbx, qword ptr [r12 + 0x18]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_513
	jmp	.label_518
.label_497:
	lea	rdi, [rdi]
	mov	rdi, r13
	nop	
	call	strlen
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	lea	rdi, [rbx + 0x110]
	lea	rsi, [rsi]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbp, rbp
	mov	r12, rax
	test	r12, r12
	je	.label_498
	mov	rsp, rsp
	mov	rdi, r12
	lea	rdi, [rdi]
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, rbp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x50], rcx
	mov	r13, qword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], r13
	lea	rsi, [rsi]
	mov	dword ptr [r12 + 0x40], 0
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x18], 0
	mov	rbp, rbp
	mov	word ptr [r12 + 0x72], 0
	mov	rbp, rbp
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r12 + 0x20], xmm0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	cmp	rbx, rax
	jae	.label_527
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x70]
	jmp	.label_470
	nop	word ptr cs:[rax + rax]
.label_527:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rsi, [rax + rbx]
	lea	rsi, [rsi]
	add	rsi, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	jb	.label_517
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x90], rbp
	mov	qword ptr [rcx + 0x30], rsi
	mov	rdi, r13
	mov	rsp, rsp
	mov	rbp, rcx
	call	realloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_482
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	nop	
	mov	rcx, rbp
	je	.label_501
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x70]
	add	rax, r13
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x90]
	test	byte ptr [rbp], 4
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	cmovne	rdx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rdx
	mov	al, 1
	mov	qword ptr [rsp + 0x38], rax
	jmp	.label_487
.label_501:
	mov	rbp, qword ptr [rsp + 0x90]
	mov	r13, qword ptr [rsp + 0x70]
.label_487:
	mov	rax, qword ptr [rcx + 0x30]
	sub	rax, r13
.label_470:
	add	rbx, r13
	lea	rsi, [rsi]
	jb	.label_495
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rax
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rcx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x80], rax
	mov	rsp, rsp
	test	byte ptr [rbp], 4
	mov	rbp, rbp
	jne	.label_464
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_509
	nop	word ptr [rax + rax]
.label_464:
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [r12 + 0x38]
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	nop	
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	call	memmove
.label_509:
	mov	qword ptr [rsp + 0x70], r13
	mov	edx, dword ptr [rbp]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_520
	mov	eax, edx
	and	eax, 0x400
	nop	
	jne	.label_520
	mov	r13, rbp
	xor	edx, edx
	nop	
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_485
	nop	dword ptr [rax]
.label_520:
	mov	r13, rbp
	mov	rbp, rbp
	and	edx, 0x18
	mov	rsp, rsp
	movzx	ecx, byte ptr [r14 + 0x12]
	mov	rsp, rsp
	xor	eax, eax
	cmp	edx, 0x18
	mov	rbp, rbp
	mov	edx, 0
	jne	.label_530
	mov	rbp, rbp
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_530:
	mov	word ptr [r12 + 0x70], 0xb
	mov	rsp, rsp
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rbp, qword ptr [rsp + 0x10]
	nop	
	ja	.label_476
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_467]]
.label_476:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	mov	rbp, rbp
	adc	rax, 0
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0xa8], rax
.label_485:
	mov	qword ptr [r12 + 0x10], 0
	lea	rdi, [rdi]
	test	r15, r15
	lea	rsi, [rsi]
	mov	rax, r12
	je	.label_490
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_490:
	mov	r15, rax
	cmp	rbp, 0x2710
	nop	
	jne	.label_466
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_466
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x54]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x60]
	call	filesystem_type
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	cmp	rax, 0x6969
	je	.label_466
	cmp	rax, 0x1021994
	mov	rbp, rbp
	je	.label_466
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_466
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rsp], eax
	nop	word ptr [rax + rax]
.label_466:
	mov	rsp, rsp
	inc	rbp
	cmp	qword ptr [rsp + 0x30], rbp
	mov	rsp, rsp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x60]
	ja	.label_508
	jmp	.label_484
.label_494:
	mov	r13, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	mov	eax, dword ptr [rax]
	test	eax, eax
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x10]
	je	.label_534
	mov	dword ptr [r12 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x80]
	or	rax, rbp
	mov	rbp, rbp
	mov	ax, 7
	lea	rdi, [rdi]
	mov	cx, 4
	mov	rbp, rbp
	cmovne	cx, ax
	mov	word ptr [r12 + 0x70], cx
.label_534:
	nop	
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_484
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_484
.label_518:
	mov	r13, rbp
	mov	rbp, qword ptr [rsp + 0x10]
.label_484:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	test	al, 1
	mov	rdi, qword ptr [rsp + 0x80]
	je	.label_475
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	jmp	.label_496
	nop	word ptr cs:[rax + rax]
.label_525:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_496:
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_523
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	lea	rdi, [rdi]
	je	.label_525
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	nop	
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_525
.label_523:
	cmp	qword ptr [r15 + 0x58], 0
	js	.label_475
	lea	rdi, [rdi]
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_468:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	lea	rdi, [rdi]
	cmp	rdx, rsi
	mov	rsp, rsp
	je	.label_474
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rcx + 0x38]
	nop	
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rdx
.label_474:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	test	rdx, rdx
	jne	.label_461
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 8]
.label_461:
	mov	rsp, rsp
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	lea	rdi, [rdi]
	jns	.label_468
.label_475:
	test	byte ptr [r13], 4
	mov	rsp, rsp
	je	.label_469
	mov	rax, qword ptr [rsp + 0x58]
	mov	rdx, rax
	mov	rbp, rbp
	lea	rax, [rdx - 1]
	mov	rcx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x70]
	cmp	rsi, qword ptr [rcx + 0x30]
	cmove	rdx, rax
	test	rbp, rbp
	cmove	rdx, rax
	mov	byte ptr [rdx], 0
.label_469:
	nop	
	test	rdi, rdi
	jne	.label_477
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	mov	rbp, rbp
	je	.label_477
	cmp	dword ptr [rsp + 0x1c], 1
	je	.label_480
	lea	rsi, [rsi]
	test	rbp, rbp
	jne	.label_477
.label_480:
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_486
	mov	rsi, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x88]
	call	fts_safe_changedir
	jmp	.label_492
.label_486:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x88]
	call	restore_initial_cwd
.label_492:
	test	eax, eax
	je	.label_477
	mov	word ptr [r12 + 0x70], 7
	nop	
	or	byte ptr [r13 + 1], 0x20
	nop	
	xor	ebx, ebx
	test	r15, r15
	je	.label_462
	nop	
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_504:
	mov	rbp, rbp
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_499
	mov	rsp, rsp
	call	closedir
.label_499:
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_504
	nop	
	jmp	.label_462
.label_477:
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_526
	mov	eax, dword ptr [rsp]
	test	al, 1
	jne	.label_511
	cmp	rbp, 2
	nop	
	jb	.label_515
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_481
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, rbp
	nop	
	call	fts_sort
	mov	rbx, rax
	lea	rdi, [rdi]
	jmp	.label_462
.label_526:
	cmp	dword ptr [rsp + 0x1c], 3
	nop	
	jne	.label_472
	movzx	eax, word ptr [r12 + 0x70]
	lea	rsi, [rsi]
	cmp	eax, 4
	nop	
	je	.label_472
	mov	rsp, rsp
	movzx	eax, ax
	cmp	eax, 7
	lea	rdi, [rdi]
	je	.label_472
	mov	word ptr [r12 + 0x70], 6
.label_472:
	xor	ebx, ebx
	mov	rsp, rsp
	test	r15, r15
	je	.label_462
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_460:
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_533
	call	closedir
.label_533:
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	r15, rbp
	jne	.label_460
	jmp	.label_462
.label_511:
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x88]
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, rbp
	nop	
	call	fts_sort
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14], 0
	jmp	.label_462
.label_515:
	mov	rbx, r15
	mov	rsp, rsp
	jmp	.label_462
.label_481:
	lea	rdi, [rdi]
	mov	rbx, r15
	lea	rdi, [rdi]
	jmp	.label_462
.label_495:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	free
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_478
	nop	dword ptr [rax]
.label_488:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_514
	mov	rbp, rbp
	call	closedir
.label_514:
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	r15, rbx
	jne	.label_488
.label_478:
	mov	rbx, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x78]
	mov	dword ptr [rax], 0x24
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_462
.label_517:
	mov	rdi, r13
	mov	rbx, rcx
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	nop	
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x24
	mov	qword ptr [rsp + 0x40], r12
	jmp	.label_498
.label_482:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x20], 0
	mov	qword ptr [rsp + 0x40], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_498:
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	call	free
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x60]
	nop	
	je	.label_516
	nop	word ptr cs:[rax + rax]
.label_522:
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_519
	nop	
	call	closedir
.label_519:
	mov	rdi, r15
	call	free
	nop	
	test	rbx, rbx
	mov	r15, rbx
	jne	.label_522
.label_516:
	mov	rsp, rsp
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x70], 7
	lea	rsi, [rsi]
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	dword ptr [rax], r14d
	xor	ebx, ebx
.label_462:
	mov	rax, rbx
	mov	rsp, rsp
	add	rsp, 0x98
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c00

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
	jne	.label_536
	nop	
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_540
	mov	edi, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	setne	al
	jmp	.label_541
.label_536:
	xor	eax, eax
	jmp	.label_541
.label_540:
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	mov	rbp, rbp
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_538
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	call	close
.label_538:
	nop	
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	lea	rsi, [rsi]
	xor	eax, eax
.label_541:
	mov	rsp, rsp
	movzx	ebp, al
	lea	rsi, [rsi]
	add	rbx, 0x60
	jmp	.label_539
	nop	dword ptr [rax]
.label_537:
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_539:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	i_ring_empty
	mov	rsp, rsp
	test	al, al
	nop	
	jne	.label_542
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jns	.label_537
	lea	rsi, [rsi]
	jmp	.label_539
.label_542:
	mov	eax, ebp
	mov	rbp, rbp
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cd0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	cmp	edx, 5
	jb	.label_543
	nop	
	push	rax
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	mov	rbp, rbp
	add	rsp, 8
	ret	
.label_543:
	mov	rsp, rsp
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408d00
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	r12d, esi
	mov	rbp, rbp
	mov	r13, rdi
	nop	
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	lea	rsi, [rsi]
	jne	.label_544
	mov	r15, qword ptr [r13]
	lea	rdi, [rdi]
	call	__errno_location
	mov	r14, rax
	lea	rdi, [rdi]
	mov	dword ptr [r14], 0
	mov	rsp, rsp
	xor	eax, eax
	nop	
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_545
	movzx	ecx, word ptr [r15 + 0x70]
	mov	rbp, rbp
	xor	eax, eax
	cmp	ecx, 1
	je	.label_553
	movzx	ecx, cx
	cmp	ecx, 9
	nop	
	jne	.label_545
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_545
.label_544:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_545
.label_553:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	nop	
	je	.label_556
	nop	word ptr cs:[rax + rax]
.label_548:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_558
	call	closedir
.label_558:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	mov	rbx, rbp
	jne	.label_548
.label_556:
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r12d, 0x1000
	jne	.label_552
	or	byte ptr [r13 + 0x49], 0x10
	mov	rsp, rsp
	mov	ebx, 2
.label_552:
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	nop	
	jne	.label_551
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_551
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_551
	mov	edx, eax
	and	edx, 0x10
	lea	rsi, [rsi]
	shl	edx, 0xd
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_554
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_6
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, edx
	mov	rbp, rbp
	call	open_safer
	jmp	.label_549
.label_551:
	mov	rdi, r13
	mov	esi, ebx
	mov	rbp, rbp
	call	fts_build
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], rax
.label_545:
	mov	rsp, rsp
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
.label_554:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_6
	xor	eax, eax
	call	openat_safer
.label_549:
	mov	r15d, eax
	test	r15d, r15d
	mov	rbp, rbp
	js	.label_560
	mov	rbp, rbp
	mov	rdi, r13
	mov	esi, ebx
	lea	rsi, [rsi]
	call	fts_build
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], rax
	mov	rbp, rbp
	test	byte ptr [r13 + 0x49], 2
	jne	.label_557
	nop	
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_547
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	rsp, rsp
	mov	dword ptr [r14], ebx
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_545
.label_560:
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_545
.label_557:
	mov	esi, dword ptr [r13 + 0x2c]
	mov	rbp, rbp
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_546
	lea	rsi, [rsi]
	cmp	esi, -0x64
	jne	.label_550
.label_546:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_555
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_555:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_559
.label_547:
	lea	rsi, [rsi]
	mov	edi, r15d
	call	close
.label_559:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_545
.label_550:
	mov	rbp, rbp
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f60

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
	#Procedure 0x408f80

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_561
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	mov	rsp, rsp
	ret	
.label_561:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408fb0

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
	je	.label_563
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_562
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
	je	.label_566
.label_562:
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
	je	.label_564
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	jmp	.label_563
.label_564:
	mov	r12b, 1
	mov	r14, rbp
.label_566:
	xor	eax, eax
	nop	
	test	r15d, r15d
	js	.label_563
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	mov	rbp, rbp
	call	fstatfs
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_563
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_565
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_565
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
	je	.label_567
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	je	.label_565
	lea	rdi, [rdi]
	call	abort
.label_567:
	mov	rdi, rbp
	call	free
.label_565:
	mov	rax, qword ptr [rsp + 0x10]
.label_563:
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
	#Procedure 0x409120

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
	#Procedure 0x409140

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
	#Procedure 0x409150

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
	#Procedure 0x409190

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
	je	.label_568
	nop	
	cmp	r15, -2
	jb	.label_568
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_568
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_568:
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
	#Procedure 0x409220

	.globl getfileconat
	.type getfileconat, @function
getfileconat:
	nop	
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0xfd8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_574
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_576
.label_574:
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
.label_572:
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	add	rsp, 0xfd8
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_576:
	lea	rsi, [rsi]
	lea	r15, [rsp + 0x10]
	mov	rdi, r15
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	mov	rsp, rsp
	je	.label_571
	nop	
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x5f
	lea	rdi, [rdi]
	cmp	r14, r15
	je	.label_571
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
.label_571:
	lea	rdi, [rsp]
	mov	rsp, rsp
	call	save_cwd
	test	eax, eax
	jne	.label_570
	test	ebx, ebx
	js	.label_573
	cmp	dword ptr [rsp], ebx
	lea	rdi, [rdi]
	jne	.label_573
	mov	rsp, rsp
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_572
.label_573:
	mov	edi, ebx
	call	fchdir
	lea	rdi, [rdi]
	mov	ebp, eax
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	test	ebp, ebp
	lea	rsi, [rsi]
	je	.label_575
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	mov	rbp, rbp
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_572
.label_575:
	mov	dword ptr [rbx], 0x5f
	nop	
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	mov	rbp, rbp
	jne	.label_569
	mov	rsp, rsp
	lea	rdi, [rsp]
	call	free_cwd
	mov	rsp, rsp
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rdi]
	jmp	.label_572
.label_570:
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	openat_save_fail
.label_569:
	mov	rbp, rbp
	mov	edi, dword ptr [rbx]
	lea	rsi, [rsi]
	call	openat_restore_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409390

	.globl lgetfileconat
	.type lgetfileconat, @function
lgetfileconat:
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0xfd8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	mov	rsp, rsp
	je	.label_582
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rsp, rsp
	jne	.label_583
.label_582:
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_578:
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rbp, rbp
	add	rsp, 0xfd8
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_583:
	nop	
	lea	r15, [rsp + 0x10]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, rax
	mov	rbp, rbp
	call	openat_proc_name
	mov	r14, rax
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	je	.label_579
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_579
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	free
.label_579:
	mov	rbp, rbp
	lea	rdi, [rsp]
	mov	rbp, rbp
	call	save_cwd
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_577
	test	ebx, ebx
	js	.label_580
	nop	
	cmp	dword ptr [rsp], ebx
	lea	rsi, [rsi]
	jne	.label_580
	mov	rsp, rsp
	lea	rdi, [rsp]
	mov	rbp, rbp
	call	free_cwd
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 9
	jmp	.label_578
.label_580:
	mov	rbp, rbp
	mov	edi, ebx
	lea	rsi, [rsi]
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	lea	rsi, [rsi]
	je	.label_581
	mov	ebp, dword ptr [rbx]
	nop	
	lea	rdi, [rsp]
	call	free_cwd
	mov	rbp, rbp
	mov	dword ptr [rbx], ebp
	jmp	.label_578
.label_581:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	lea	rdi, [rdi]
	call	restore_cwd
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_584
	lea	rdi, [rsp]
	mov	rsp, rsp
	call	free_cwd
	lea	rdi, [rdi]
	mov	dword ptr [rbx], 0x5f
	jmp	.label_578
.label_577:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_584:
	mov	edi, dword ptr [rbx]
	mov	rbp, rbp
	call	openat_restore_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409510

	.globl setfileconat
	.type setfileconat, @function
setfileconat:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	sub	rsp, 0xfd8
	mov	rax, rsi
	mov	rbp, rbp
	mov	ebx, edi
	cmp	ebx, -0x64
	nop	
	je	.label_587
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	nop	
	jne	.label_591
.label_587:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_589:
	mov	rbp, rbp
	mov	eax, 0xffffffff
	add	rsp, 0xfd8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	nop	
	pop	rbp
	ret	
.label_591:
	lea	rdi, [rdi]
	lea	r15, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	lea	rsi, [rsi]
	call	openat_proc_name
	mov	rsp, rsp
	mov	r14, rax
	test	r14, r14
	mov	rsp, rsp
	je	.label_588
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	nop	
	cmp	r14, r15
	mov	rsp, rsp
	je	.label_588
	mov	rdi, r14
	nop	
	call	free
.label_588:
	lea	rdi, [rsp]
	call	save_cwd
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_590
	lea	rdi, [rdi]
	test	ebx, ebx
	mov	rsp, rsp
	js	.label_585
	mov	rsp, rsp
	cmp	dword ptr [rsp], ebx
	jne	.label_585
	lea	rdi, [rsp]
	lea	rdi, [rdi]
	call	free_cwd
	call	__errno_location
	nop	
	mov	dword ptr [rax], 9
	mov	rsp, rsp
	jmp	.label_589
.label_585:
	mov	edi, ebx
	mov	rsp, rsp
	call	fchdir
	mov	ebp, eax
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	rbx, rax
	test	ebp, ebp
	nop	
	je	.label_586
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	mov	rsp, rsp
	call	free_cwd
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
	mov	rbp, rbp
	jmp	.label_589
.label_586:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	mov	rsp, rsp
	jne	.label_592
	lea	rdi, [rdi]
	lea	rdi, [rsp]
	call	free_cwd
	lea	rdi, [rdi]
	mov	dword ptr [rbx], 0x5f
	jmp	.label_589
.label_590:
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_592:
	mov	edi, dword ptr [rbx]
	mov	rsp, rsp
	call	openat_restore_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409680

	.globl lsetfileconat
	.type lsetfileconat, @function
lsetfileconat:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0xfd8
	nop	
	mov	rax, rsi
	mov	ebx, edi
	lea	rsi, [rsi]
	cmp	ebx, -0x64
	je	.label_593
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_597
.label_593:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_595:
	mov	rsp, rsp
	mov	eax, 0xffffffff
	add	rsp, 0xfd8
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_597:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	nop	
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_596
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	mov	rsp, rsp
	cmp	r14, r15
	lea	rsi, [rsi]
	je	.label_596
	mov	rdi, r14
	mov	rbp, rbp
	call	free
.label_596:
	mov	rbp, rbp
	lea	rdi, [rsp + 0xfc8]
	lea	rsi, [rsi]
	call	save_cwd
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_599
	lea	rsi, [rsi]
	test	ebx, ebx
	js	.label_598
	cmp	dword ptr [rsp + 0xfc8], ebx
	jne	.label_598
	mov	rsp, rsp
	lea	rdi, [rsp + 0xfc8]
	nop	
	call	free_cwd
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 9
	lea	rsi, [rsi]
	jmp	.label_595
.label_598:
	mov	rsp, rsp
	mov	edi, ebx
	lea	rsi, [rsi]
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	test	ebp, ebp
	je	.label_594
	mov	rbp, rbp
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	lea	rdi, [rsp + 0xfc8]
	call	free_cwd
	nop	
	mov	dword ptr [rbx], ebp
	jmp	.label_595
.label_594:
	nop	
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp + 0xfc8]
	call	restore_cwd
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_600
	lea	rdi, [rsp + 0xfc8]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	lea	rsi, [rsi]
	jmp	.label_595
.label_599:
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	call	openat_save_fail
.label_600:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409800

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
	jne	.label_601
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_602
	test	cl, cl
	mov	rsp, rsp
	jne	.label_602
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_602
.label_601:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_602
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_602:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409890

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
	#Procedure 0x4098b0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_603
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_605
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	nop	
	jne	.label_605
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	je	.label_606
.label_605:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], rdx
	mov	rbp, rbp
	test	rdx, rcx
	jne	.label_604
	mov	al, 1
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_606
	mov	rax, qword ptr [rsi]
	nop	
	mov	qword ptr [rdi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_604:
	mov	rsp, rsp
	xor	eax, eax
.label_606:
	ret	
.label_603:
	push	rax
	mov	edi, OFFSET FLAT:.str_7
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x3c
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	nop	
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409940

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_607
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
.label_607:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_608
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
	ja	.label_610
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_609
.label_610:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_609:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_608:
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
	#Procedure 0x409a60

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
	je	.label_612
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_611
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_613
.label_611:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_612
.label_613:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_612:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409ab0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ac0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ad0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ae0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	nop	
	mov	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	cmp	rcx, rdx
	jae	.label_614
	mov	rdi, rcx
	not	rdi
	nop	
	add	rdi, rdx
	mov	rsi, rdi
	mov	rbp, rbp
	shr	rsi, 4
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	bt	rdi, 4
	jb	.label_619
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_620
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_617:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_617
.label_620:
	add	rcx, 0x10
.label_619:
	nop	
	test	rsi, rsi
	je	.label_614
	nop	word ptr cs:[rax + rax]
.label_621:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_615
	nop	word ptr cs:[rax + rax]
.label_616:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_616
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_615:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_622
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_618:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_618
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_622:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_621
.label_614:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409bf0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_634
	mov	rbp, rbp
	mov	rax, rcx
	mov	rbp, rbp
	not	rax
	lea	rdi, [rdi]
	add	rax, r9
	mov	rbp, rbp
	mov	r8, rax
	shr	r8, 4
	lea	rdi, [rdi]
	xor	edx, edx
	bt	rax, 4
	jb	.label_626
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_635
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_629:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_629
	mov	rsp, rsp
	jmp	.label_631
.label_626:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_633
.label_635:
	xor	esi, esi
.label_631:
	add	rcx, 0x10
.label_633:
	test	r8, r8
	nop	
	je	.label_634
	nop	dword ptr [rax]
.label_627:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_623
	nop	dword ptr [rax]
.label_625:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_625
	lea	rdi, [rdi]
	inc	rsi
.label_623:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_632
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_624:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_624
	inc	rsi
.label_632:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_627
.label_634:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_628
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_630
.label_628:
	xor	eax, eax
.label_630:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409d00
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	rax, rdx
	lea	rdi, [rdi]
	jae	.label_636
	mov	rsp, rsp
	mov	rdi, rax
	not	rdi
	mov	rbp, rbp
	add	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 4
	mov	rsp, rsp
	xor	ebx, ebx
	bt	rdi, 4
	mov	rbp, rbp
	jb	.label_637
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_640
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_641:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_641
.label_640:
	add	rax, 0x10
.label_637:
	test	rsi, rsi
	je	.label_636
	nop	dword ptr [rax]
.label_646:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_647
	nop	word ptr cs:[rax + rax]
.label_638:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_638
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_647:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_639
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_642:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_642
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_639:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_646
.label_636:
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_8
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_7
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	nop	
	call	__fprintf_chk
	nop	
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_643]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_644]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_645]]
	mov	rsp, rsp
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	mov	rsp, rsp
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_3
	mov	al, 1
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409f10

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
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_651
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_649
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_649
	cmp	rsi, r12
	je	.label_648
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_650:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_652
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_649
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_650
.label_648:
	mov	r15, r12
	jmp	.label_649
.label_652:
	nop	
	mov	r15, qword ptr [rbx]
.label_649:
	lea	rsi, [rsi]
	mov	rax, r15
	nop	
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	ret	
.label_651:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409fd0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_653
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_656
	nop	dword ptr [rax]
.label_654:
	add	rcx, 0x10
.label_656:
	cmp	rcx, rdx
	jae	.label_655
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_654
.label_653:
	mov	rsp, rsp
	ret	
.label_655:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a010
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
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	jae	.label_661
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_662:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_658
	test	rdx, rdx
	jne	.label_662
	lea	rdi, [rdi]
	jmp	.label_659
.label_658:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_659
	mov	rax, qword ptr [rdx]
	jmp	.label_657
.label_659:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_660:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_657
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_660
.label_657:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_661:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a0b0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_663
	nop	word ptr cs:[rax + rax]
.label_665:
	add	r9, 0x10
.label_663:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_664
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_665
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_665
	nop	word ptr cs:[rax + rax]
.label_666:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_664
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10]
	nop	
	mov	qword ptr [rsi + rax*8], rcx
	lea	rdi, [rdi]
	inc	rax
	mov	rsp, rsp
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	nop	
	jne	.label_666
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_665
.label_664:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a130
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
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_670
	nop	dword ptr [rax]
.label_668:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_670:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_669
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_668
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_668
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_669
	nop	word ptr [rax + rax]
.label_671:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_667
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_671
	jmp	.label_669
	nop	word ptr cs:[rax + rax]
.label_667:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_668
.label_669:
	nop	
	mov	rax, rbx
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a200
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_673
	inc	rdi
	nop	
	xor	edx, edx
.label_672:
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
	jne	.label_672
.label_673:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a240
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_674]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a260

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
	mov	r14, r8
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	r12, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	lea	rdi, [rdi]
	cmovne	r13, rdx
	test	rcx, rcx
	mov	rsp, rsp
	mov	ebp, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	cmovne	rbp, rcx
	mov	edi, 0x50
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	test	r15, r15
	je	.label_682
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_677
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_684]]
	jbe	.label_675
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_689]]
	ucomiss	xmm1, xmm0
	jbe	.label_675
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_680]]
	lea	rsi, [rsi]
	jbe	.label_675
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_675
	addss	xmm1,  dword ptr [dword ptr [rip + label_684]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_675
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_686]]
	ucomiss	xmm2, xmm0
	jb	.label_675
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_675
.label_677:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_690
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_676
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_681
.label_676:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_681:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_687]]
	mov	rbp, rbp
	movaps	xmm2, xmm0
	mov	rbp, rbp
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_688]]
	nop	
	jae	.label_675
.label_690:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_679
.label_678:
	mov	rbp, rbp
	add	rbx, 2
.label_679:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_675
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_685
	nop	word ptr cs:[rax + rax]
.label_683:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_685
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_683
.label_685:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_678
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_675
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_675
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_675
	mov	rsp, rsp
	shl	rbx, 4
	nop	
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x30], r13
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	lea	rdi, [rdi]
	jmp	.label_682
.label_675:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_682:
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a540

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, rdi
	mov	rsp, rsp
	div	rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a560

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
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_694
.label_691:
	mov	rsp, rsp
	add	r14, 0x10
.label_694:
	cmp	r14, rax
	jae	.label_696
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_691
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_693
	nop	word ptr [rax + rax]
.label_692:
	nop	
	test	cl, 1
	je	.label_695
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_695:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	nop	
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	jne	.label_692
.label_693:
	test	cl, cl
	je	.label_697
	mov	rdi, qword ptr [r14]
	call	rax
.label_697:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_691
.label_696:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a650

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
	mov	r14, rdi
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_702
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_702
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_707
	nop	word ptr [rax + rax]
.label_703:
	mov	rsp, rsp
	add	r15, 0x10
.label_707:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_702
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_703
	test	r15, r15
	je	.label_703
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_699
	nop	dword ptr [rax]
.label_698:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_699:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_698
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_703
.label_702:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_708
	nop	dword ptr [rax + rax]
.label_700:
	mov	rbp, rbp
	add	r15, 0x10
.label_708:
	cmp	r15, rax
	jae	.label_706
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_700
	nop	dword ptr [rax + rax]
.label_704:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_704
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_700
.label_706:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_705
	nop	word ptr cs:[rax + rax]
.label_701:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_701
.label_705:
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rbp, rbp
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a780

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_709
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_721
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_727
.label_721:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_727:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_687]]
	mov	rsp, rsp
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	mov	rsp, rsp
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rcx, rax
	lea	rsi, [rsi]
	cvttss2si	rsi, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	mov	rbp, rbp
	cmovae	rsi, rcx
	mov	rbp, rbp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_688]]
	mov	rbp, rbp
	jae	.label_711
.label_709:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_724
	nop	word ptr cs:[rax + rax]
.label_723:
	lea	rsi, [rsi]
	add	rbx, 2
.label_724:
	cmp	rbx, -1
	je	.label_711
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_714
.label_725:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_714
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_725
.label_714:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_723
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_711
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_719
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_711
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	mov	rsp, rsp
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	nop	
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_720
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_719
.label_720:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_717
.label_712:
	add	r12, 0x10
.label_717:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_715
	cmp	qword ptr [r12], 0
	je	.label_712
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_718
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_726:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_713
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_710
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_716
	nop	
.label_710:
	lea	rdi, [rdi]
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	mov	rbp, rbp
	inc	qword ptr [r14 + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp], 0
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rbp
.label_716:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_726
.label_718:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_712
.label_715:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_722
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_711:
	mov	rbp, rbp
	xor	ebp, ebp
.label_719:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_713:
	mov	rbp, rbp
	call	abort
.label_722:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aaf0

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
	mov	qword ptr [rsp], rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	r13, qword ptr [rsi]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + 8]
	nop	
	cmp	r13, rax
	nop	
	jae	.label_736
	nop	
	test	dl, dl
	je	.label_737
	nop	dword ptr [rax]
.label_731:
	nop	
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	je	.label_742
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_748
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	nop	dword ptr [rax]
.label_735:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	nop	
	call	qword ptr [r15 + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_741
	mov	rbp, rbp
	mov	rdx, qword ptr [r15]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_729
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], rbp
	nop	
	jmp	.label_744
	nop	word ptr cs:[rax + rax]
.label_729:
	mov	rbp, rbp
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r15 + 0x18]
	nop	
	mov	qword ptr [rbp], 0
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbp + 8], rax
	nop	
	mov	qword ptr [r15 + 0x48], rbp
.label_744:
	test	rcx, rcx
	mov	rbp, rcx
	mov	rsp, rsp
	jne	.label_735
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
.label_748:
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], 0
.label_742:
	mov	rsp, rsp
	add	r13, 0x10
	mov	rsp, rsp
	cmp	r13, rax
	jb	.label_731
	jmp	.label_736
	nop	word ptr cs:[rax + rax]
.label_737:
	mov	rbp, rbp
	mov	r12, qword ptr [r13]
	mov	rbp, rbp
	test	r12, r12
	mov	rsp, rsp
	je	.label_738
	lea	rdi, [rdi]
	mov	r14, qword ptr [r13 + 8]
	test	r14, r14
	mov	rsi, qword ptr [r15 + 0x10]
	nop	
	je	.label_730
	nop	dword ptr [rax + rax]
.label_732:
	mov	rbx, qword ptr [r14]
	mov	rdi, rbx
	nop	
	call	qword ptr [r15 + 0x30]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	cmp	rax, rsi
	jae	.label_741
	mov	rdx, qword ptr [r15]
	nop	
	mov	rcx, qword ptr [r14 + 8]
	nop	
	shl	rax, 4
	nop	
	cmp	qword ptr [rdx + rax], 0
	mov	rsp, rsp
	je	.label_746
	mov	rdi, qword ptr [rdx + rax + 8]
	nop	
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r14
	lea	rdi, [rdi]
	jmp	.label_733
	nop	word ptr [rax + rax]
.label_746:
	add	rdx, rax
	nop	
	mov	qword ptr [rdx], rbx
	mov	rbp, rbp
	inc	qword ptr [r15 + 0x18]
	mov	qword ptr [r14], 0
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x48]
	nop	
	mov	qword ptr [r14 + 8], rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x48], r14
.label_733:
	mov	rbp, rbp
	test	rcx, rcx
	mov	r14, rcx
	jne	.label_732
	mov	r12, qword ptr [r13]
.label_730:
	mov	rbp, rbp
	mov	qword ptr [r13 + 8], 0
	mov	rbp, rbp
	mov	rdi, r12
	call	qword ptr [r15 + 0x30]
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	cmp	rbx, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jae	.label_728
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + rbx], 0
	je	.label_734
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x48]
	test	rax, rax
	je	.label_739
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x48], rcx
	jmp	.label_743
	nop	word ptr cs:[rax + rax]
.label_734:
	lea	rsi, [rsi]
	add	rbp, rbx
	mov	rbp, rbp
	mov	qword ptr [rbp], r12
	inc	qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	jmp	.label_747
.label_739:
	mov	rbp, rbp
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_745
.label_743:
	mov	qword ptr [rax], r12
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp + rbx + 8], rax
.label_747:
	mov	qword ptr [r13], 0
	nop	
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	dec	qword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
.label_738:
	mov	rsp, rsp
	add	r13, 0x10
	cmp	r13, rax
	nop	
	jb	.label_737
.label_736:
	nop	
	mov	al, 1
.label_740:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_745:
	xor	eax, eax
	jmp	.label_740
.label_741:
	call	abort
.label_728:
	mov	rsp, rsp
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ae00

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rbp
	mov	r13, rdi
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_749
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x30]
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	rbp, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	jae	.label_749
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_758
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_779
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_751
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_768
.label_779:
	mov	rax, r14
	jmp	.label_755
.label_751:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_758
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_771:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_762
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_767
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_771
	nop	
	jmp	.label_758
.label_762:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_768
.label_767:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_768:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_758
.label_755:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_753
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_753
.label_758:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_752
	cvtsi2ss	xmm1, rax
	jmp	.label_760
.label_752:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_760:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_770
	cvtsi2ss	xmm0, rcx
	jmp	.label_777
.label_770:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_777:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_750
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_759
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_684]]
	jbe	.label_764
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_689]]
	ucomiss	xmm3, xmm2
	jbe	.label_764
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_680]]
	jbe	.label_764
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_764
	addss	xmm3,  dword ptr [dword ptr [rip + label_684]]
	ucomiss	xmm2, xmm3
	jbe	.label_764
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_686]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_764
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_773
.label_764:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_778]]
	jmp	.label_773
.label_759:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_773:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_750
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_772
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_772:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_688]]
	mov	rsp, rsp
	jae	.label_753
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_687]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	lea	rdi, [rdi]
	je	.label_753
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_749
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_750
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_769
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_757
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_769
.label_757:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_750
	lea	rbp, [r15 + rbp + 8]
.label_776:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_775
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_774
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_776
	lea	rsi, [rsi]
	jmp	.label_750
.label_775:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_769
.label_774:
	mov	rax, qword ptr [rbp]
.label_769:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_754
.label_750:
	cmp	qword ptr [r12], 0
	je	.label_756
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_761
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_763
.label_756:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_765]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_766
.label_761:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_753
.label_763:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_766:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_753:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_749:
	mov	rsp, rsp
	call	abort
.label_754:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b240

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
	je	.label_780
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_780:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b290

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_791
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_787
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_794
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_798
	mov	r14, qword ptr [r13]
.label_794:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_801
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rax]
	lea	rsi, [rsi]
	movups	xmmword ptr [r13], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_786
.label_798:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_787
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_800:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_793
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_795
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_800
	lea	rsi, [rsi]
	jmp	.label_787
.label_801:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_786
.label_793:
	mov	rcx, rax
	jmp	.label_789
.label_795:
	mov	r14, qword ptr [rcx]
.label_789:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_786:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_787
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_782
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_796
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_784
.label_796:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_784:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_790
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_792
.label_790:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_792:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_782
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_797
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_684]]
	nop	
	jbe	.label_781
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_689]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_781
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_781
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_680]]
	jbe	.label_781
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_684]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_781
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_686]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_781
	ucomiss	xmm3, xmm4
	ja	.label_783
.label_781:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_783
.label_797:
	mov	eax, OFFSET FLAT:default_tuning
.label_783:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_782
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_788
	mulss	xmm0, dword ptr [rax + 8]
.label_788:
	movss	xmm1,  dword ptr [dword ptr [rip + label_687]]
	nop	
	movaps	xmm2, xmm0
	lea	rsi, [rsi]
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	mov	rbp, rbp
	test	al, al
	jne	.label_782
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_799
.label_785:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_785
.label_799:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_782:
	nop	
	mov	r12, r14
.label_787:
	mov	rax, r12
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_791:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5e0

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	movd	xmm0, esi
	lea	rsi, [rsi]
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	rbp, rbp
	mov	dword ptr [rdi + 0x10], esi
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b620

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b630

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	lea	rsi, [rsi]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	rbp, rbp
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_802
	lea	rsi, [rsi]
	mov	dl, byte ptr [rdi + 0x1c]
	mov	rbp, rbp
	xor	dl, 1
	movzx	edx, dl
	mov	rbp, rbp
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_802:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b680

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	nop	
	cmp	byte ptr [rdi + 0x1c], 0
	lea	rdi, [rdi]
	jne	.label_803
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rdi + 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rdi + 0x14]
	mov	rbp, rbp
	mov	eax, dword ptr [rdi + rdx*4]
	mov	rbp, rbp
	mov	dword ptr [rdi + rdx*4], ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rdi + 0x14]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rdi + 0x18]
	mov	rsp, rsp
	jne	.label_804
	lea	rsi, [rsi]
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	ret	
.label_804:
	add	ecx, 3
	and	ecx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_803:
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b6e0

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
	je	.label_805
	nop	
	mov	rax, rcx
.label_805:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b720

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
	#Procedure 0x40b770

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
	#Procedure 0x40b7c0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xd8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_806
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x80], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x90], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_806:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_808
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_809
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp], ecx
	jmp	.label_807
.label_809:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
.label_807:
	mov	ecx, dword ptr [rax]
.label_808:
	xor	eax, eax
	call	openat
	lea	rsi, [rsi]
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b8c0

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
	js	.label_810
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_811
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_810
.label_811:
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
.label_810:
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
	#Procedure 0x40b940

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
	jns	.label_812
	nop	
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_812:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b9a0

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_813
	mov	rbp, rbp
	mov	edi, eax
	jmp	fchdir
.label_813:
	mov	rdi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	jmp	chdir_long
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b9c0

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
	js	.label_814
	call	close
.label_814:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	mov	rbp, rbp
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b9f0

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
	ja	.label_815
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
	jmp	.label_816
.label_815:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_816:
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
	#Procedure 0x40ba60

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rdi
	nop	
	call	chdir
	mov	ebx, eax
	test	ebx, ebx
	je	.label_842
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbp, rbp
	cmp	dword ptr [r14], 0x24
	jne	.label_819
	mov	rdi, rbp
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r15, rax
	test	r15, r15
	je	.label_825
	mov	rsp, rsp
	cmp	r15, 0xfff
	mov	rsp, rsp
	jbe	.label_830
	add	r15, rbp
	nop	
	mov	rax, -1
	nop	
.label_835:
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp + rbx + 1]
	lea	rax, [rbx + 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_835
	nop	
	mov	r12d, 0xffffff9c
	test	rax, rax
	nop	
	je	.label_840
	cmp	rax, 2
	jne	.label_843
	nop	
	lea	rdi, [rbp + 3]
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rdi, [rdi]
	sub	rdx, rdi
	mov	rbp, rbp
	mov	esi, 0x2f
	lea	rdi, [rdi]
	call	memchr
	nop	
	mov	rbx, rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_822
	mov	byte ptr [rbx], 0
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	edx, 0x10900
	xor	eax, eax
	mov	rsi, rbp
	call	openat
	mov	rbp, rbp
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	lea	rdi, [rdi]
	mov	byte ptr [rbx], 0x2f
	nop	
	js	.label_831
	nop	
.label_841:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	mov	rsp, rsp
	cmp	eax, 0x2f
	je	.label_841
	lea	rsi, [rsi]
	jmp	.label_817
.label_842:
	xor	ebx, ebx
	jmp	.label_819
.label_840:
	mov	rbx, rbp
	jmp	.label_817
.label_843:
	mov	rsp, rsp
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.3_0
	nop	
	mov	edx, 0x10900
	xor	eax, eax
	mov	rsp, rsp
	call	openat
	lea	rsi, [rsi]
	mov	r12d, eax
	test	r12d, r12d
	js	.label_831
	lea	rbx, [rbp + rbx + 1]
.label_817:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbx]
	mov	rsp, rsp
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	je	.label_833
	cmp	rbx, r15
	ja	.label_836
	mov	rax, r15
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 0xfff
	jle	.label_838
	nop	word ptr [rax + rax]
.label_827:
	mov	rsp, rsp
	mov	esi, 0x2f
	mov	edx, 0x1000
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	memrchr
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_822
	lea	rsi, [rsi]
	mov	byte ptr [rbp], 0
	mov	rax, rbp
	sub	rax, rbx
	cmp	rax, 0x1000
	mov	rsp, rsp
	jge	.label_829
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	openat
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	js	.label_837
	mov	rsp, rsp
	test	r12d, r12d
	js	.label_834
	mov	edi, r12d
	lea	rdi, [rdi]
	call	close
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_818
.label_834:
	mov	r12d, ebx
	mov	rsp, rsp
	mov	byte ptr [rbp], 0x2f
	mov	rbx, rbp
	nop	word ptr [rax + rax]
.label_824:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	cmp	eax, 0x2f
	nop	
	je	.label_824
	mov	rax, r15
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 0x1000
	jge	.label_827
.label_838:
	lea	rsi, [rsi]
	cmp	rbx, r15
	jae	.label_821
	mov	edx, 0x10900
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, r12d
	nop	
	mov	rsi, rbx
	call	openat
	lea	rdi, [rdi]
	mov	ebx, eax
	lea	rdi, [rdi]
	test	ebx, ebx
	js	.label_826
	lea	rdi, [rdi]
	test	r12d, r12d
	lea	rsi, [rsi]
	js	.label_839
	mov	edi, r12d
	nop	
	call	close
	test	eax, eax
	je	.label_839
	jmp	.label_818
.label_822:
	mov	rsp, rsp
	mov	dword ptr [r14], 0x24
	jmp	.label_820
.label_821:
	mov	ebx, r12d
.label_839:
	mov	edi, ebx
	call	fchdir
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_823
	lea	rdi, [rdi]
	mov	r12d, ebx
	jmp	.label_826
.label_831:
	mov	ebx, dword ptr [r14]
	nop	
	jmp	.label_828
.label_823:
	test	ebx, ebx
	js	.label_832
	mov	edi, ebx
	call	close
	test	eax, eax
	lea	rdi, [rdi]
	mov	ebx, 0
	mov	rbp, rbp
	je	.label_819
	lea	rdi, [rdi]
	jmp	.label_818
.label_837:
	mov	byte ptr [rbp], 0x2f
.label_826:
	nop	
	mov	ebx, dword ptr [r14]
	lea	rdi, [rdi]
	test	r12d, r12d
	nop	
	js	.label_828
	mov	edi, r12d
	nop	
	call	close
	test	eax, eax
	mov	rbp, rbp
	jne	.label_818
.label_828:
	mov	dword ptr [r14], ebx
.label_820:
	mov	ebx, 0xffffffff
.label_819:
	mov	eax, ebx
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_832:
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_819
.label_829:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.6_1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_818:
	mov	edi, OFFSET FLAT:.str.7_1
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cdb_free
	lea	rdi, [rdi]
	call	__assert_fail
.label_825:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_830:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.2_4
	nop	
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_833:
	nop	
	mov	edi, OFFSET FLAT:.str.4_1
	mov	esi, OFFSET FLAT:.str.1_10
	lea	rsi, [rsi]
	mov	edx, 0xa2
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	nop	
	call	__assert_fail
.label_836:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_10
	mov	rbp, rbp
	mov	edx, 0xa3
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40be50

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
	js	.label_844
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_846
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
	je	.label_844
.label_846:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_844
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_845
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_845:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_844:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40bf00

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	ebx, edi
	test	al, al
	je	.label_847
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_847:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_860
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_855
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_854
	mov	rsp, rsp
	test	esi, esi
	jne	.label_860
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_859
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_867
.label_860:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_853
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_854
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_856
.label_855:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_852
.label_854:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_858
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_864
.label_858:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_864:
	mov	edx, dword ptr [rax]
.label_848:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_852:
	mov	ebp, eax
.label_850:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_856:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_853
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_857
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_861
.label_853:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_866
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_849
.label_859:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_867:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_848
.label_857:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_861:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_862
	mov	esi, 0x406
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rsi, [rsi]
	test	ebp, ebp
	jns	.label_851
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_851
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rdi, [rdi]
	call	fcntl
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_850
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_863
.label_851:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_850
.label_866:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_849:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_852
.label_862:
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	mov	ebp, eax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_863:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_850
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_850
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_865
	or	ecx, 1
	mov	esi, 2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_850
.label_865:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	jmp	.label_850
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c2d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_868
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_868
	test	byte ptr [rbx + 1], 1
	je	.label_868
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_868:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c310

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
	jne	.label_869
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_869
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_870
.label_869:
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
.label_870:
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
	je	.label_871
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_871:
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
	#Procedure 0x40c3c0

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
	#Procedure 0x40c3e0

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
	je	.label_872
	mov	ecx,  dword ptr [dword ptr [rip + openat_proc_name.proc_status]]
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_876
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
	js	.label_877
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
.label_876:
	lea	rdi, [rdi]
	xor	eax, eax
	test	ecx, ecx
	lea	rdi, [rdi]
	js	.label_873
	mov	rdi, r14
	call	strlen
	lea	rsi, [rsi]
	add	rax, 0x1b
	cmp	rax, 0xfc1
	jb	.label_874
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	xor	eax, eax
	nop	
	test	rbx, rbx
	je	.label_873
.label_874:
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
	jmp	.label_875
.label_872:
	mov	byte ptr [rbx], 0
.label_875:
	mov	rax, rbx
.label_873:
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
.label_877:
	mov	dword ptr [dword ptr [rip + openat_proc_name.proc_status]],  0xffffffff
	mov	rbp, rbp
	xor	eax, eax
	nop	
	jmp	.label_873
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x40c560

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