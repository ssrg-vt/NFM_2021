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
	jmp	.label_20
.label_929:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + specified_range]],  rax
	mov	r13b, 1
	nop	word ptr cs:[rax + rax]
.label_20:
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
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_48]]
.label_928:
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_20
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
	jmp	.label_20
	nop	dword ptr [rax + rax]
.label_63:
	lea	ecx, [rax - 0x80]
	cmp	ecx, 3
	mov	rsp, rsp
	ja	.label_16
	mov	rsp, rsp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_17]]
.label_934:
	mov	r12d, 1
	jmp	.label_20
.label_16:
	cmp	eax, 0x52
	jne	.label_14
	mov	byte ptr [byte ptr [rip + recurse]],  1
	jmp	.label_20
.label_930:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + specified_role]],  rax
	lea	rsi, [rsi]
	mov	r13b, 1
	jmp	.label_20
.label_931:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + specified_type]],  rax
	lea	rdi, [rdi]
	mov	r13b, 1
	jmp	.label_20
.label_932:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + specified_user]],  rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	rsp, rsp
	jmp	.label_20
.label_933:
	mov	byte ptr [byte ptr [rip + verbose]],  1
	jmp	.label_20
.label_935:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_20
.label_936:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	jmp	.label_20
.label_937:
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_20
.label_10:
	mov	rbp, rbp
	mov	r14d, 0x11
	jmp	.label_20
.label_12:
	mov	r14d, 2
	jmp	.label_20
.label_9:
	cmp	eax, -1
	jne	.label_39
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	nop	
	cmp	ecx, 1
	lea	rsi, [rsi]
	jne	.label_40
	nop	
	cmp	r14d, 0x10
	lea	rdi, [rdi]
	jne	.label_42
	cmp	r12d, 1
	mov	rbp, rbp
	je	.label_43
	nop	
	mov	byte ptr [byte ptr [rip + affect_symlink_referent]],  0
	jmp	.label_45
.label_40:
	test	r12d, r12d
	nop	
	setne	byte ptr [byte ptr [rip + affect_symlink_referent]]
.label_45:
	mov	r14d, 0x10
	jmp	.label_49
.label_42:
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
	je	.label_15
	mov	qword ptr [word ptr [rip + specified_context]],  0
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	test	dl, dl
	je	.label_38
	xor	al, 1
	jne	.label_38
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
.label_38:
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
	je	.label_18
	mov	r12b, 1
	mov	rbp, rbp
	jmp	.label_21
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
	jmp	.label_24
	nop	
.label_21:
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
	ja	.label_41
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_47]]
.label_942:
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
	je	.label_24
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_24
	mov	rcx, qword ptr [rbx + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	jne	.label_24
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
.label_944:
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
.label_947:
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x58], 0
	jne	.label_30
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_32
.label_30:
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
.label_943:
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
	jmp	.label_24
.label_945:
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	and	al, 1
	lea	rdi, [rdi]
	mov	r13b, 1
	je	.label_24
	jmp	.label_13
.label_946:
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
.label_41:
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
	jne	.label_22
	mov	rsp, rsp
	cmp	byte ptr [r15 + 1], 0
	nop	
	je	.label_25
.label_22:
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
	jmp	.label_37
	nop	word ptr cs:[rax + rax]
.label_11:
	test	r13b, r13b
	je	.label_29
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + verbose]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_35
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
.label_35:
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
	jmp	.label_33
.label_55:
	mov	rsp, rsp
	call	lsetfileconat
.label_59:
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	je	.label_29
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
	jmp	.label_29
.label_60:
	mov	rbp, rbp
	call	lgetfileconat
.label_33:
	mov	rsp, rsp
	test	eax, eax
	jns	.label_54
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x3d
	mov	rsp, rsp
	jne	.label_26
.label_54:
	nop	
	mov	rbp, qword ptr [rsp + 0x20]
	test	rbp, rbp
	je	.label_28
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
	jmp	.label_36
.label_28:
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
	jmp	.label_44
.label_26:
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
.label_36:
	mov	rdx, r14
.label_44:
	lea	rdi, [rdi]
	call	error
	nop	
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_29
.label_32:
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
	jmp	.label_24
.label_25:
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
.label_37:
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
.label_29:
	mov	al,  byte ptr [byte ptr [rip + recurse]]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_19
	mov	edx, 4
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	rpl_fts_set
.label_19:
	mov	rsp, rsp
	test	r13b, r13b
	nop	
	setne	r13b
.label_24:
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
	jne	.label_21
.label_18:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_27
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
.label_27:
	mov	rdi, r14
	call	rpl_fts_close
	test	eax, eax
	mov	rsp, rsp
	je	.label_34
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
.label_34:
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
.label_39:
	mov	rbp, rbp
	cmp	eax, 0xffffff7d
	lea	rsi, [rsi]
	je	.label_46
	cmp	eax, 0xffffff7e
	mov	rbp, rbp
	jne	.label_14
	xor	edi, edi
	call	usage
.label_46:
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
	jge	.label_31
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
	jmp	.label_23
.label_15:
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
.label_23:
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
.label_31:
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
.label_43:
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
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_135:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_133
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_139]]
.label_919:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_920:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_160
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_160
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_182:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_177
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_177:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_182
.label_160:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_79
.label_912:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_79
.label_915:
	lea	rsi, [rsi]
	mov	al, 1
.label_913:
	mov	rbp, rbp
	mov	r12b, 1
.label_916:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_93
	lea	rsi, [rsi]
	mov	cl, al
.label_93:
	mov	rsp, rsp
	mov	al, cl
.label_914:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_99
	test	r10, r10
	je	.label_105
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_107
.label_99:
	xor	ecx, ecx
	jmp	.label_107
.label_917:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_117
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_122
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_128
.label_918:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_79
.label_105:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_107:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_79
.label_117:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_128
.label_122:
	lea	rdi, [rdi]
	mov	eax, 1
.label_128:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_79:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_123
	nop	word ptr cs:[rax + rax]
.label_136:
	nop	
	inc	rdi
.label_123:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_96
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_131
	jmp	.label_101
	nop	dword ptr [rax + rax]
.label_96:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_104
.label_131:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_112
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_114
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_114
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_114:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_150
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_152
	nop	dword ptr [rax + rax]
.label_112:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_152
	nop	word ptr cs:[rax + rax]
.label_150:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_183
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_152
	jmp	.label_75
.label_183:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_152:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_74
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_78]]
.label_955:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_85
	mov	rbp, rbp
	jmp	.label_90
.label_959:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_92
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_97
	nop	
	cmp	rbp, 1
	je	.label_90
	xor	r13d, r13d
	jmp	.label_83
.label_948:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_108
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_75
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_118
	mov	al, r14b
	and	al, 1
	jne	.label_121
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_127
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_127:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_137
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_137:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_144
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_144:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_81
.label_949:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_159
.label_950:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_140
.label_951:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_159
.label_952:
	mov	bl, 0x66
	jmp	.label_159
.label_953:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_140
.label_956:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_166
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_169
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_174
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_174:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_86
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_86:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_196
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_196:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_166:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_83
.label_957:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_89
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_85
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_85
	mov	rbp, rbp
	jmp	.label_100
.label_958:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_102
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_109
	lea	rdi, [rdi]
	jmp	.label_113
.label_74:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_116
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_95:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_143
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_143
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_83
.label_92:
	test	rdi, rdi
	jne	.label_158
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_158
.label_90:
	mov	dl, 1
.label_954:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_163
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_83
.label_108:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_136
	jmp	.label_85
.label_102:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_140
.label_109:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_178
.label_140:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_179
.label_159:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_83
	lea	rsi, [rsi]
	jmp	.label_156
.label_116:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_190
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_190:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_176:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_103
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_148
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_119
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_126
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_149:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_142
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_181
.label_142:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_149
.label_126:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_145
	xor	r13d, r13d
.label_145:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_176
	mov	rsp, rsp
	jmp	.label_95
.label_158:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_83
.label_89:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_85
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_85
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_85
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_188
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_191
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_194
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_198
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_198:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_82
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_82:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_170
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_170:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_88
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_88:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_83
.label_85:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_83:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_189
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_130
	lea	rsi, [rsi]
	jmp	.label_134
.label_189:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_134
.label_130:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_138
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_146
	nop	word ptr cs:[rax + rax]
.label_134:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_146:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_178
	mov	rsp, rsp
	jmp	.label_156
.label_138:
	mov	bl, r15b
.label_156:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_75
	nop	
	cmp	r9d, 2
	jne	.label_162
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_162
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_80
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_80:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_175
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_175:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_172
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_172:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_162:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_186
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_186:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_151
.label_97:
	xor	r13d, r13d
	nop	
	jmp	.label_83
.label_143:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_193
	nop	dword ptr [rax + rax]
.label_141:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_193:
	test	cl, cl
	je	.label_77
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_106
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_87
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_87:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_106
	nop	dword ptr [rax]
.label_77:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_75
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_110
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_110
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_154
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_154:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_124
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_124:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_120
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_120:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_110:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_147
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_147:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_153
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_153:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_161
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_161:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_106:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_178
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_184
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_184
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_187
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_187:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_192
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_192:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_184:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_141
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_141
	nop	word ptr cs:[rax + rax]
.label_178:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_98
	mov	rsp, rsp
	and	al, 1
	jne	.label_98
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_94
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_94:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_111
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_111:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_98:
	mov	rsp, rsp
	mov	bl, r15b
.label_151:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_91
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_91:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_136
.label_118:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_81
.label_121:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_81:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_76
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_76:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_195
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_157
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_168
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_165
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_165:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_171
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_171:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_83
.label_195:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_83
.label_157:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_83
.label_168:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_83
.label_148:
	xor	r13d, r13d
.label_103:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_95
.label_119:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_197
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_84:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_155
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_84
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_95
.label_197:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_95
.label_155:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_95
.label_188:
	xor	r13d, r13d
	jmp	.label_83
.label_191:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_83
.label_101:
	nop	
	mov	r13, rdi
.label_104:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_115
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_129
.label_115:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_132
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_132
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_167
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_132
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_135
.label_132:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_164
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_164
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_164
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_180:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_173
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_173:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_180
.label_164:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_185
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_185
.label_163:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_75
.label_181:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_75
.label_129:
	nop	
	mov	rbp, r13
	jmp	.label_75
.label_179:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_75:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_125:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_185:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_167:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_125
.label_169:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_75
.label_113:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_75
.label_100:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_75
.label_194:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_75
.label_133:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404550
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
	#Procedure 0x404690
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
	#Procedure 0x4047e0
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
	#Procedure 0x4048a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4048b0

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
	js	.label_210
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_206
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_211
.label_206:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_207
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
	jne	.label_209
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_209:
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
.label_211:
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
	ja	.label_208
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
.label_208:
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
.label_210:
	lea	rdi, [rdi]
	call	abort
.label_207:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x404b20
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b30
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
	#Procedure 0x404b60
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
	#Procedure 0x404b90

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
	je	.label_212
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
.label_212:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c20
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
	je	.label_213
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
.label_213:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cc0

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
	je	.label_214
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
.label_214:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d50
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
	je	.label_215
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
.label_215:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404dc0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_216]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_217]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_218]]
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
	#Procedure 0x404e60
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_216]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_217]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_218]]
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
	#Procedure 0x404f00

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_216]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_217]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_218]]
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
	#Procedure 0x404f70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_216]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_217]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_218]]
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
	#Procedure 0x404fe0

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
	je	.label_219
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
.label_219:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4050c0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_216]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_217]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_218]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_220
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_220
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
.label_220:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405150
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_216]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_217]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_218]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_221
	test	rdx, rdx
	je	.label_221
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
.label_221:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051e0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_216]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_217]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_218]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_222
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_222
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
.label_222:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405280
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_216]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_217]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_218]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_223
	test	rsi, rsi
	je	.label_223
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
.label_223:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405320
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330
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
	#Procedure 0x405350

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
	#Procedure 0x405370

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
	#Procedure 0x4053a0

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
	jne	.label_225
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_227
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_226
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_226
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_226
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_226
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_226
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_226
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_225
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_225
.label_227:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_226
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_226
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_226
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_226
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_226
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_226
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_224
.label_226:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_225:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_224:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_225
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_225
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405510

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
	jne	.label_228
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rax
	mov	rsp, rsp
	mov	rax, rbx
.label_228:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405570

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
	je	.label_236
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
.label_236:
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
	ja	.label_234
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_231]]
.label_868:
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
.label_234:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_230
.label_869:
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
.label_870:
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
.label_871:
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
	jmp	.label_235
.label_872:
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
.label_873:
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
	jmp	.label_232
.label_874:
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
.label_232:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_233:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_235:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_229
.label_876:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_230:
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
	jmp	.label_237
.label_875:
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
.label_237:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_229:
	mov	rbp, rbp
	call	__fprintf_chk
.label_867:
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
	#Procedure 0x405960
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_239:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_239
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405990
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_243:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_240
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_242
	nop	word ptr cs:[rax + rax]
.label_240:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_242:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_241
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_243
.label_241:
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
	#Procedure 0x405a20

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_244
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
.label_244:
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
.label_246:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_245
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_247
	nop	dword ptr [rax + rax]
.label_245:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_247:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_248
	inc	r9
	cmp	r9, 0xa
	jb	.label_246
.label_248:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b60
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
	#Procedure 0x405bf0
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
	jb	.label_249
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_250
	test	rax, rax
	je	.label_249
.label_250:
	nop	
	pop	rbx
	ret	
.label_249:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c40

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_251
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_252
.label_251:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_252:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c70
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
	jb	.label_254
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_253
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_253
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_253:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_255
	test	rax, rax
	je	.label_254
.label_255:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_254:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cf0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_256
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_256
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_256:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_257
	test	rax, rax
	nop	
	je	.label_258
.label_257:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_258:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d40
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_259
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_263
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_262
.label_259:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_265
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_265:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_260
.label_262:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_261
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_261
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_261:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_264
	test	rax, rax
	mov	rbp, rbp
	je	.label_263
.label_264:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_263:
	call	xalloc_die
.label_260:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e20
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_266
	test	rax, rax
	mov	rbp, rbp
	je	.label_267
.label_266:
	pop	rbx
	ret	
.label_267:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405e40
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_268
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_271
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_272
	call	free
	xor	eax, eax
	jmp	.label_269
.label_268:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_270
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_272:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_269
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_270
.label_269:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_270:
	mov	rbp, rbp
	call	xalloc_die
.label_271:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ed0
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
	je	.label_273
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_274
.label_273:
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
.label_274:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f30
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
	jb	.label_275
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_275
	pop	rcx
	ret	
.label_275:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405f60

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
	je	.label_277
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_276
.label_277:
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
.label_276:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405fc0
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
	je	.label_278
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_279
.label_278:
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
.label_279:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406020

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
	#Procedure 0x406070

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_281
	mov	rsp, rsp
	pop	rcx
	ret	
.label_281:
	nop	
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	jne	.label_280
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_5
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	lea	rsi, [rsi]
	call	__assert_fail
.label_280:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060d0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	mov	rbp, rbp
	je	.label_282
	cmp	ecx, 0x11
	lea	rdi, [rdi]
	jne	.label_283
	mov	rsp, rsp
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_282:
	lea	rsi, [rsi]
	ret	
.label_283:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406100

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_284
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_285
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
	je	.label_285
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
.label_284:
	mov	ecx, 1
.label_285:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406170

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
	mov	r13, rdx
	mov	r15d, esi
	mov	r12, rdi
	cmp	r15d, 0x1000
	jae	.label_295
	mov	rbp, rbp
	mov	eax, r15d
	lea	rdi, [rdi]
	and	eax, 0x204
	nop	
	cmp	eax, 0x204
	je	.label_295
	mov	rsp, rsp
	test	r15b, 0x12
	nop	
	je	.label_295
	mov	rsp, rsp
	mov	edi, 0x80
	mov	rsp, rsp
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_296
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x30], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x40], r13
	mov	eax, r15d
	and	eax, 0xfffffdfb
	mov	rsp, rsp
	or	eax, 4
	lea	rdi, [rdi]
	test	r15b, 2
	lea	rdi, [rdi]
	cmove	eax, r15d
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x48], eax
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_317
	mov	r14, rbx
	mov	rbp, rbp
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_318:
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
	jne	.label_318
	inc	rbp
	mov	rsp, rsp
	mov	rbx, r14
.label_317:
	cmp	rbp, 0x1000
	lea	rsi, [rsi]
	mov	esi, 0x1000
	cmova	rsi, rbp
	mov	rsp, rsp
	add	rsi, 0x100
	nop	
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	mov	rsp, rsp
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_309
	mov	r14d, r15d
	mov	qword ptr [rbx + 0x20], rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rbx
	mov	r15, qword ptr [r12]
	mov	qword ptr [rsp], r12
	lea	rsi, [rsi]
	xor	r12d, r12d
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_313
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	mov	rbp, rbp
	test	r12, r12
	je	.label_289
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	qword ptr [r12 + 0x50], rax
	mov	qword ptr [r12 + 0x38], rbp
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x18], 0
	mov	rsp, rsp
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], -1
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x68], -1
.label_313:
	mov	byte ptr [rsp + 0x17], 1
	mov	rsp, rsp
	test	r13, r13
	je	.label_304
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	lea	rdi, [rdi]
	shr	al, 2
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x17], al
.label_304:
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rsp, rsp
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_291
	mov	qword ptr [rsp + 0x20], r12
	mov	ebx, r14d
	and	ebx, 0x800
	mov	dword ptr [rsp + 0x34], ebx
	xor	ebp, ebp
	mov	rsp, rsp
	xor	r12d, r12d
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_314:
	mov	qword ptr [rsp + 0x18], rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rax
	test	ebx, ebx
	jne	.label_286
	lea	rdi, [rdi]
	cmp	rbp, 3
	jb	.label_288
	cmp	rbp, 2
	nop	
	jb	.label_290
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp + r15 - 1]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	jne	.label_292
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r12
.label_297:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r15 + rbp - 2]
	cmp	eax, 0x2f
	jne	.label_294
	lea	rdi, [rdi]
	dec	rbp
	lea	rdi, [rdi]
	cmp	rbp, 1
	lea	rsi, [rsi]
	ja	.label_297
	jmp	.label_294
.label_286:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_294
.label_288:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_294
.label_290:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_294
.label_292:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r12
	nop	dword ptr [rax + rax]
.label_294:
	mov	rbx, r13
	lea	rsi, [rsi]
	lea	rdi, [rbp + 0x110]
	nop	
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbp, rbp
	mov	r12, rax
	test	r12, r12
	je	.label_305
	lea	rsi, [rsi]
	mov	r13, r12
	add	r13, 0x108
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsi, r15
	nop	
	mov	rdx, rbp
	call	memcpy
	mov	rbp, rbp
	mov	byte ptr [r12 + rbp + 0x108], 0
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x60], rbp
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x50], rdi
	nop	
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	rsp, rsp
	mov	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	rsp, rsp
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x30], r13
	nop	
	mov	r15, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	test	r15, r15
	mov	rbp, rbp
	setne	al
	and	al, byte ptr [rsp + 0x17]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_310
	mov	word ptr [r12 + 0x70], 0xb
	mov	rsp, rsp
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_302
	nop	word ptr cs:[rax + rax]
.label_310:
	nop	
	xor	edx, edx
	mov	rsi, r12
	mov	rbp, rbp
	call	fts_stat
	mov	rsp, rsp
	mov	word ptr [r12 + 0x70], ax
.label_302:
	mov	rsp, rsp
	mov	r13, rbx
	nop	
	test	r13, r13
	je	.label_316
	mov	rbp, r12
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x10], r15
	nop	
	mov	r12, qword ptr [rsp + 0x28]
	jmp	.label_307
.label_316:
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x10], 0
	mov	rsp, rsp
	test	r15, r15
	lea	rdi, [rdi]
	mov	rbp, r12
	je	.label_307
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, r15
.label_307:
	nop	
	inc	r14
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp], rax
	test	r15, r15
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x34]
	jne	.label_314
	mov	rsp, rsp
	test	r13, r13
	mov	rdi, qword ptr [rsp + 8]
	je	.label_287
	cmp	r14, 2
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jb	.label_291
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rdx, r14
	call	fts_sort
	mov	rbp, rax
	nop	
	jmp	.label_291
.label_295:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	rbp, rbp
	xor	eax, eax
.label_296:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
.label_309:
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	jmp	.label_301
.label_305:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_299
.label_289:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 8]
	jmp	.label_319
.label_287:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x20]
.label_291:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	mov	rsp, rsp
	je	.label_306
	mov	rsp, rsp
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x50], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x38], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	lea	rsi, [rsi]
	mov	word ptr [rax + 0x74], 3
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	nop	
	mov	qword ptr [rbx], rax
	mov	qword ptr [rax + 0x10], rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_308
	mov	edi, 0x1f
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:AD_hash
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_298
	lea	rsi, [rsi]
	jmp	.label_299
.label_306:
	mov	rbx, qword ptr [rsp + 8]
	nop	
	mov	qword ptr [rbx], 0
	jmp	.label_299
.label_308:
	mov	edi, 0x20
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_299
	lea	rsi, [rsi]
	mov	rdi, rax
	call	cycle_check_init
.label_298:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx + 0x48]
	nop	
	test	ax, 0x204
	jne	.label_300
	mov	edx, eax
	and	edx, 0x10
	mov	rbp, rbp
	shl	edx, 0xd
	mov	rsp, rsp
	or	edx, 0x90900
	mov	rbp, rbp
	test	ah, 2
	nop	
	jne	.label_303
	mov	edi, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, edx
	lea	rsi, [rsi]
	call	open_safer
	lea	rdi, [rdi]
	jmp	.label_311
.label_299:
	lea	rdi, [rdi]
	mov	r14, rbx
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_312
	nop	dword ptr [rax]
.label_293:
	mov	rbx, qword ptr [rbp + 0x10]
	nop	
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_315
	lea	rdi, [rdi]
	call	closedir
.label_315:
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rbp, rbx
	mov	rbp, rbp
	jne	.label_293
.label_312:
	mov	rdi, r12
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_319:
	nop	
	mov	rdi, rbp
.label_301:
	call	free
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_296
.label_303:
	mov	rsp, rsp
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:.str_6
	xor	eax, eax
	call	openat_safer
.label_311:
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x28], eax
	lea	rdi, [rdi]
	test	eax, eax
	jns	.label_300
	lea	rsi, [rsi]
	or	byte ptr [rbx + 0x48], 4
.label_300:
	nop	
	mov	rdi, rbx
	nop	
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	lea	rsi, [rsi]
	mov	rax, rbx
	lea	rdi, [rdi]
	jmp	.label_296
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406890

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
	jne	.label_324
	test	al, 1
	nop	
	je	.label_324
	lea	rsi, [rsi]
	mov	dl, 1
.label_324:
	mov	rbp, rbp
	lea	rbx, [r14 + 0x78]
	lea	rdi, [rdi]
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_321
	and	eax, 2
	jne	.label_321
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
	je	.label_329
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_320
.label_321:
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
	je	.label_329
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 2
	jne	.label_320
	mov	rsi, qword ptr [r14 + 0x30]
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rsp, rsp
	call	__lxstat
	test	eax, eax
	mov	rbp, rbp
	je	.label_326
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15]
.label_320:
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
.label_322:
	movzx	eax, ax
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_329:
	mov	rbp, rbp
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x90]
	lea	rsi, [rsi]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_322
	cmp	ecx, 0x8000
	nop	
	je	.label_325
	cmp	ecx, 0x4000
	mov	rbp, rbp
	jne	.label_327
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x88]
	mov	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_323
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_323
	mov	ecx, dword ptr [r15 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
.label_323:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x68], rcx
	mov	ecx, dword ptr [r14 + 0x108]
	mov	ax, 1
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0x2e
	mov	rsp, rsp
	jne	.label_322
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_328
	mov	rbp, rbp
	movzx	edx, dl
	lea	rsi, [rsi]
	cmp	edx, 0x2e
	jne	.label_322
	lea	rsi, [rsi]
	test	ecx, 0xff0000
	lea	rdi, [rdi]
	jne	.label_322
.label_328:
	nop	
	mov	ax, 1
	cmp	qword ptr [r14 + 0x58], 0
	mov	rsp, rsp
	je	.label_322
	mov	ax, 5
	jmp	.label_322
.label_325:
	mov	ax, 8
	jmp	.label_322
.label_327:
	lea	rdi, [rdi]
	mov	ax, 3
	lea	rsi, [rsi]
	jmp	.label_322
.label_326:
	mov	dword ptr [r15], 0
	mov	ax, 0xd
	jmp	.label_322
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ac0

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
	jae	.label_330
	lea	rsi, [r14 + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rbp, rbp
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_338
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
	je	.label_338
	mov	qword ptr [r13], rdi
	lea	rdi, [rdi]
	jmp	.label_332
.label_330:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	add	r12, 0x10
	mov	r13, r12
.label_332:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_335
	nop	dword ptr [rax]
.label_337:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_337
	mov	rdi, qword ptr [r13]
.label_335:
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
	je	.label_334
	nop	
	mov	rcx, qword ptr [r9 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rsp, rsp
	mov	rcx, r14
	add	rcx, -2
	mov	rsp, rsp
	je	.label_333
	mov	rsp, rsp
	lea	rdx, [r9 + 8]
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	mov	rsp, rsp
	lea	r8, [r14 - 3]
	lea	rsi, [rsi]
	test	dil, 3
	mov	rbp, rbp
	je	.label_331
	lea	rsi, [rsi]
	lea	edi, [r14 + 2]
	and	edi, 3
	neg	rdi
	nop	
.label_336:
	mov	rsi, qword ptr [rdx]
	nop	
	mov	rax, qword ptr [rdx + 8]
	lea	rdx, [rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x10], rax
	dec	rcx
	nop	
	inc	rdi
	jne	.label_336
.label_331:
	lea	rsi, [rsi]
	cmp	r8, 3
	mov	rbp, rbp
	jb	.label_333
	nop	dword ptr [rax + rax]
.label_339:
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
	jne	.label_339
.label_333:
	mov	rsp, rsp
	mov	rcx, qword ptr [r9 + r14*8 - 8]
.label_334:
	mov	qword ptr [rcx + 0x10], 0
	jmp	.label_340
.label_338:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
.label_340:
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
	#Procedure 0x406cc0

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
	je	.label_355
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 0x58], 0
	lea	rsi, [rsi]
	js	.label_351
	nop	word ptr [rax + rax]
.label_345:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_358
	mov	rbx, qword ptr [rdi + 8]
.label_358:
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x58], 0
	lea	rsi, [rsi]
	mov	rdi, rbx
	jns	.label_345
	mov	rsp, rsp
	jmp	.label_347
.label_351:
	mov	rbx, rdi
.label_347:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
.label_355:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_352
	nop	dword ptr [rax]
.label_357:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_341
	lea	rsi, [rsi]
	call	closedir
.label_341:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rbx, rbp
	jne	.label_357
.label_352:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [r14 + 0x48]
	lea	rdi, [rdi]
	test	ah, 2
	jne	.label_342
	xor	ebp, ebp
	mov	rbp, rbp
	test	al, 4
	jne	.label_344
	nop	
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_348
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_348:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	lea	rsi, [rsi]
	test	ebp, ebp
	nop	
	je	.label_353
	nop	
	jmp	.label_344
.label_342:
	mov	rsp, rsp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	test	edi, edi
	js	.label_344
	nop	
	call	close
.label_353:
	nop	
	test	eax, eax
	nop	
	je	.label_344
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
.label_344:
	lea	rsi, [rsi]
	lea	rbx, [r14 + 0x60]
	jmp	.label_349
	nop	
.label_346:
	mov	edi, eax
	mov	rsp, rsp
	call	close
.label_349:
	mov	rsp, rsp
	mov	rdi, rbx
	call	i_ring_empty
	lea	rdi, [rdi]
	test	al, al
	jne	.label_343
	mov	rbp, rbp
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_346
	nop	
	jmp	.label_349
.label_343:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_350
	nop	
	call	hash_free
.label_350:
	nop	
	movzx	eax, word ptr [r14 + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	je	.label_354
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_356
	lea	rdi, [rdi]
	call	hash_free
	nop	
	jmp	.label_356
.label_354:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rdi, [rdi]
	call	free
.label_356:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	xor	eax, eax
	test	ebp, ebp
	je	.label_359
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], ebp
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
.label_359:
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
	#Procedure 0x406eb0

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
	je	.label_368
	mov	rsp, rsp
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	mov	rbp, rbp
	test	ah, 0x20
	mov	rsp, rsp
	jne	.label_368
	lea	rdi, [rdi]
	movzx	ecx, word ptr [r12 + 0x74]
	nop	
	mov	word ptr [r12 + 0x74], 3
	mov	rsp, rsp
	cmp	ecx, 1
	nop	
	je	.label_381
	movzx	edx, cx
	cmp	edx, 2
	mov	rsp, rsp
	jne	.label_369
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x70]
	mov	rsp, rsp
	mov	esi, ecx
	and	esi, 0xfffe
	mov	rbp, rbp
	cmp	esi, 0xc
	jne	.label_375
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_384
	mov	eax, dword ptr [r14 + 0x48]
	mov	rbp, rbp
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_388
	mov	edx, eax
	nop	
	and	edx, 0x10
	shl	edx, 0xd
	lea	rdi, [rdi]
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_409
	nop	
	mov	edi, OFFSET FLAT:.str_6
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	nop	
	jmp	.label_397
.label_381:
	xor	edx, edx
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	call	fts_stat
	mov	rbp, rbp
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_368
.label_369:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_407
.label_375:
	mov	rbp, rbp
	lea	r13, [r12 + 0x70]
.label_407:
	movzx	esi, cx
	mov	rsp, rsp
	cmp	esi, 1
	jne	.label_411
	cmp	edx, 4
	je	.label_365
	lea	rsi, [rsi]
	test	al, 0x40
	je	.label_417
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 0x78]
	nop	
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_365
.label_417:
	mov	rbx, qword ptr [r14 + 8]
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_371
	test	ah, 0x10
	jne	.label_376
	nop	
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	mov	rbp, rbp
	je	.label_377
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	jmp	.label_370
	nop	word ptr [rax + rax]
.label_411:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_392
	mov	rsp, rsp
	mov	qword ptr [r14], r15
	mov	rbp, rbp
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	nop	
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_395
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	lea	rsi, [rsi]
	je	.label_411
	mov	rbp, rbp
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_360
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	nop	
	call	fts_stat
	lea	rsi, [rsi]
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	nop	
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_361
	mov	eax, dword ptr [r14 + 0x48]
	nop	
	test	al, 4
	mov	rbp, rbp
	jne	.label_361
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	lea	rdi, [rdi]
	or	edx, 0x90900
	mov	rbp, rbp
	test	ah, 2
	jne	.label_416
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, edx
	lea	rdi, [rdi]
	call	open_safer
	lea	rsi, [rsi]
	jmp	.label_374
.label_385:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_370:
	mov	rbp, rbp
	test	rax, rax
	jne	.label_385
	jmp	.label_377
.label_365:
	test	ecx, 0x20000
	je	.label_386
	mov	rbp, rbp
	mov	edi, dword ptr [r12 + 0x44]
	mov	rsp, rsp
	call	close
.label_386:
	nop	
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_389
	nop	word ptr cs:[rax + rax]
.label_413:
	nop	
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_394
	call	closedir
.label_394:
	mov	rdi, rbx
	call	free
	nop	
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_413
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], 0
.label_389:
	nop	
	mov	word ptr [r12 + 0x70], 6
.label_387:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	rsp, rsp
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_368
.label_392:
	lea	rsi, [rsi]
	mov	r15, qword ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_410
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	mov	rbp, rbp
	call	fts_build
	mov	r15, rax
	test	r15, r15
	nop	
	je	.label_372
	mov	rdi, r12
	call	free
	nop	
	jmp	.label_360
.label_384:
	mov	rbp, rbp
	mov	r15, r12
	jmp	.label_364
.label_395:
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	restore_initial_cwd
	mov	rbp, rbp
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_382
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	mov	rbp, rbp
	xor	r15d, r15d
	nop	
	jmp	.label_368
.label_388:
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_364
.label_382:
	test	ax, 0x102
	je	.label_390
	mov	rdi, qword ptr [r14 + 0x58]
	nop	
	test	rdi, rdi
	je	.label_393
	mov	rbp, rbp
	call	hash_free
	jmp	.label_393
.label_376:
	nop	
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr [rax + rax]
.label_403:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	nop	
	test	rdi, rdi
	je	.label_379
	nop	
	call	closedir
.label_379:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	lea	rdi, [rdi]
	mov	rbx, rbp
	jne	.label_403
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 8], 0
.label_371:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 8], rax
	mov	rsp, rsp
	test	rax, rax
	je	.label_414
.label_377:
	mov	r15, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], 0
	jmp	.label_360
.label_414:
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x49], 0x20
	mov	rsp, rsp
	jne	.label_368
	lea	rsi, [rsi]
	cmp	dword ptr [r12 + 0x40], 0
	lea	rdi, [rdi]
	je	.label_387
	movzx	eax, word ptr [r13]
	nop	
	cmp	eax, 4
	nop	
	je	.label_387
	mov	rbp, rbp
	mov	word ptr [r13], 7
	nop	
	jmp	.label_387
.label_409:
	lea	rsi, [rsi]
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	xor	eax, eax
	call	openat_safer
.label_397:
	mov	dword ptr [r12 + 0x44], eax
	mov	rsp, rsp
	test	eax, eax
	js	.label_399
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_364
.label_372:
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_368
	mov	rsp, rsp
	mov	r15, qword ptr [r12 + 8]
.label_410:
	lea	rdi, [rdi]
	mov	qword ptr [r14], r15
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x58], -1
	nop	
	je	.label_401
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	nop	
	je	.label_380
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_408
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	nop	
	jne	.label_402
	test	al, 1
	jne	.label_363
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	mov	rdi, r14
	call	fts_safe_changedir
	lea	rdi, [rdi]
	jmp	.label_415
.label_401:
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_368
.label_399:
	call	__errno_location
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	mov	rsp, rsp
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_364
.label_390:
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rsp, rsp
	call	free
.label_393:
	nop	
	mov	rdx, qword ptr [r15 + 0x60]
	mov	qword ptr [r15 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	rdi, [rdi]
	lea	r12, [r15 + 0x108]
	lea	rdi, [rdi]
	inc	rdx
	mov	rsi, r12
	call	memmove
	lea	rsi, [rsi]
	mov	esi, 0x2f
	mov	rdi, r12
	mov	rsp, rsp
	call	strrchr
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_396
	lea	rsi, [rsi]
	cmp	rbx, r12
	nop	
	jne	.label_405
	nop	
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_396
.label_405:
	mov	rbp, rbp
	inc	rbx
	mov	rdi, rbx
	nop	
	call	strlen
	mov	rsp, rsp
	mov	r13, rax
	mov	rsp, rsp
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_396:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	mov	rbp, rbp
	test	ax, 0x102
	je	.label_367
	mov	edi, 0x1f
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	lea	rdi, [rdi]
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	lea	rsi, [rsi]
	jmp	.label_364
.label_367:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_364
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	cycle_check_init
	jmp	.label_364
.label_408:
	mov	rdi, r14
	call	restore_initial_cwd
.label_415:
	test	eax, eax
	je	.label_363
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	rbp, rbp
	or	byte ptr [r14 + 0x49], 0x20
	mov	rbp, rbp
	jmp	.label_363
.label_402:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rsi, [rsi]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	nop	
	jne	.label_400
	mov	rbp, rbp
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_406
	mov	edi, ebp
	call	fchdir
	mov	rsp, rsp
	test	eax, eax
	je	.label_400
	nop	
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_400
.label_416:
	mov	rbp, rbp
	mov	edi, dword ptr [r14 + 0x2c]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_6
	xor	eax, eax
	call	openat_safer
.label_374:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_398
	or	byte ptr [r15 + 0x72], 2
	lea	rdi, [rdi]
	jmp	.label_361
.label_398:
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_361:
	mov	rbp, rbp
	mov	word ptr [r15 + 0x74], 3
.label_360:
	mov	rbp, rbp
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	mov	rsp, rsp
	jne	.label_383
	mov	rsp, rsp
	dec	rcx
.label_383:
	lea	rdi, [rax + rcx + 1]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x2f
	mov	rsp, rsp
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	mov	rbp, rbp
	inc	rdx
	call	memmove
.label_364:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	mov	rsp, rsp
	jne	.label_373
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_366
	cmp	rax, 2
	jne	.label_380
	nop	
	mov	rbx, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_404
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_404
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	mov	rbp, rbp
	je	.label_366
	mov	rsp, rsp
	cmp	rax, 0x58465342
	mov	rbp, rbp
	je	.label_366
.label_404:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	nop	
	call	fts_stat
	lea	rsi, [rsi]
	mov	word ptr [r15 + 0x70], ax
	lea	rsi, [rsi]
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_373
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_366
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x68]
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	nop	
	jb	.label_366
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x68], rax
.label_366:
	mov	rbp, rbp
	movzx	eax, word ptr [r15 + 0x70]
.label_373:
	lea	rdi, [rdi]
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_368
	cmp	qword ptr [r15 + 0x58], 0
	mov	rbp, rbp
	jne	.label_391
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_391:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r15
	call	enter_dir
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	jne	.label_368
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	xor	r15d, r15d
	jmp	.label_368
.label_406:
	mov	rsp, rsp
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	nop	
	jne	.label_378
	cmp	esi, -0x64
	mov	rsp, rsp
	jne	.label_380
.label_378:
	mov	rsp, rsp
	lea	rdi, [r14 + 0x60]
	lea	rsi, [rsi]
	call	i_ring_push
	test	eax, eax
	js	.label_412
	mov	edi, eax
	call	close
.label_412:
	mov	rsp, rsp
	mov	dword ptr [r14 + 0x2c], ebp
.label_400:
	mov	edi, dword ptr [rbx]
	call	close
.label_363:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	mov	rsp, rsp
	je	.label_362
	mov	eax, dword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	cmp	eax, 0
	setne	cl
	lea	rdi, [rdi]
	movzx	ecx, cl
	or	ecx, 6
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	mov	word ptr [r15 + 0x70], cx
	mov	rsp, rsp
	jne	.label_362
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	call	leave_dir
.label_362:
	xor	eax, eax
	mov	rbp, rbp
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_368:
	mov	rax, r15
	mov	rsp, rsp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_380:
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407880

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_418
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
	je	.label_419
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	add	rsp, 0x18
	ret	
.label_418:
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_420
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x58], 0
	nop	
	js	.label_420
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	mov	rsp, rsp
	je	.label_419
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x80]
	lea	rdi, [rdi]
	jne	.label_420
	nop	
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	mov	rbp, rbp
	jne	.label_420
	mov	rdx, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_420:
	lea	rdi, [rdi]
	add	rsp, 0x18
	ret	
.label_419:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407940

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
	je	.label_434
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	ecx, 0x2e
	lea	rsi, [rsi]
	mov	eax, 0x2e
	sub	eax, edx
	lea	rsi, [rsi]
	jne	.label_424
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 1]
	lea	rsi, [rsi]
	sub	ecx, eax
	lea	rsi, [rsi]
	mov	eax, ecx
	jne	.label_424
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_424:
	test	eax, eax
	lea	rsi, [rsi]
	sete	r14b
	lea	rdi, [rdi]
	jmp	.label_428
.label_434:
	xor	r14d, r14d
.label_428:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	mov	rsp, rsp
	jne	.label_433
	nop	
	test	r13d, r13d
	jns	.label_421
	mov	rbp, rbp
	mov	cl, r14b
	mov	rbp, rbp
	xor	cl, 1
	jne	.label_435
	nop	
	mov	qword ptr [rsp + 0x90], rsi
	and	eax, 0x200
	mov	rbp, rbp
	je	.label_426
	lea	rbp, [r15 + 0x60]
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	i_ring_empty
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_426
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	mov	rsp, rsp
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
	nop	
	jmp	.label_426
.label_433:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_430
	and	eax, 0x200
	je	.label_430
	lea	rdi, [rdi]
	mov	edi, r13d
	mov	rsp, rsp
	call	close
	nop	
	jmp	.label_430
.label_421:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x90], rsi
	nop	
	jmp	.label_426
.label_435:
	mov	qword ptr [rsp + 0x90], rsi
.label_426:
	test	r13d, r13d
	mov	rbp, rbp
	mov	r12d, r13d
	jns	.label_438
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
	jne	.label_440
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	esi, edx
	call	open_safer
	mov	rbp, rbp
	jmp	.label_431
.label_440:
	mov	rbp, rbp
	mov	edi, dword ptr [r15 + 0x2c]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rbx
	nop	
	call	openat_safer
.label_431:
	mov	rbp, rbp
	mov	r12d, eax
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	r12d, r12d
	lea	rdi, [rdi]
	js	.label_430
.label_438:
	lea	rsi, [rsi]
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	nop	
	jne	.label_437
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_422
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x2e
	jne	.label_422
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2e
	jne	.label_422
	cmp	byte ptr [rbx + 2], 0
	mov	rsp, rsp
	jne	.label_422
.label_437:
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, r12d
	lea	rdi, [rdi]
	call	__fxstat
	test	eax, eax
	jne	.label_429
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	jne	.label_432
	nop	
	mov	rax, qword ptr [rcx + 0x80]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 8]
	nop	
	jne	.label_432
	mov	eax, dword ptr [r15 + 0x48]
.label_422:
	mov	rbp, rbp
	test	ah, 2
	jne	.label_436
	nop	
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	mov	rbp, rbp
	jmp	.label_439
.label_436:
	mov	esi, dword ptr [r15 + 0x2c]
	lea	rsi, [rsi]
	cmp	esi, r12d
	jne	.label_441
	cmp	esi, -0x64
	jne	.label_442
.label_441:
	lea	rdi, [rdi]
	test	r14b, r14b
	je	.label_423
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_425
	nop	
	test	esi, esi
	js	.label_425
	mov	rbp, rbp
	mov	edi, esi
	jmp	.label_427
.label_432:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 2
.label_429:
	mov	ebp, 0xffffffff
.label_439:
	test	r13d, r13d
	jns	.label_430
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	nop	
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_430
.label_423:
	lea	rsi, [rsi]
	lea	rdi, [r15 + 0x60]
	lea	rsi, [rsi]
	call	i_ring_push
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_425
	mov	edi, eax
.label_427:
	mov	rsp, rsp
	call	close
.label_425:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_430:
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
.label_442:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407c20

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
	sub	rsp, 0xa8
	lea	rsi, [rsi]
	mov	r15d, esi
	lea	rdi, [rdi]
	mov	r13, rdi
	mov	qword ptr [rsp + 0x98], r13
	lea	rsi, [rsi]
	mov	r12, qword ptr [r13]
	nop	
	mov	qword ptr [rsp + 0x68], r12
	mov	rdi, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_451
	mov	qword ptr [rsp + 0x38], rdi
	call	dirfd
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_466
	mov	qword ptr [rsp + 0x50], -1
	nop	
	cmp	qword ptr [r13 + 0x40], 0
	nop	
	jne	.label_470
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x50], rax
.label_470:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r13 + 0x48]
	mov	qword ptr [rsp + 0x90], rax
	mov	al, 1
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x74], eax
	jmp	.label_476
.label_451:
	mov	qword ptr [rsp + 0x38], rdi
	mov	rsp, rsp
	mov	eax, dword ptr [r13 + 0x48]
	mov	ecx, eax
	mov	rsp, rsp
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	nop	
	cmp	ecx, 0x200
	mov	rsp, rsp
	jne	.label_483
	mov	edi, dword ptr [r13 + 0x2c]
.label_483:
	mov	rbp, rbp
	mov	rsi, qword ptr [r12 + 0x30]
	xor	edx, edx
	mov	rsp, rsp
	test	al, 0x10
	mov	rbp, rbp
	je	.label_490
	nop	
	test	al, 1
	nop	
	je	.label_492
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x58], 0
	mov	rbp, rbp
	je	.label_490
.label_492:
	lea	rdi, [rdi]
	mov	edx, 0x20000
.label_490:
	nop	
	lea	rcx, [rsp + 0x5c]
	call	opendirat
	mov	qword ptr [r12 + 0x18], rax
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_500
	nop	
	lea	rcx, [r13 + 0x48]
	lea	rdi, [rdi]
	movzx	eax, word ptr [r12 + 0x70]
	nop	
	cmp	eax, 0xb
	mov	rsp, rsp
	jne	.label_501
	mov	qword ptr [rsp + 0x90], rcx
	xor	edx, edx
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_508
.label_466:
	mov	rdi, qword ptr [r12 + 0x18]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
.label_500:
	mov	rsp, rsp
	xor	ebx, ebx
	cmp	r15d, 3
	jne	.label_462
	lea	rsi, [rsi]
	mov	word ptr [r12 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	nop	
	mov	dword ptr [r12 + 0x40], eax
	xor	ebx, ebx
	jmp	.label_462
.label_501:
	mov	rbp, rbp
	test	byte ptr [rcx + 1], 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], rcx
	je	.label_508
	mov	rdi, r13
	nop	
	mov	rsi, r12
	lea	rsi, [rsi]
	call	leave_dir
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	mov	rbp, rbp
	call	fts_stat
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rsp, rsp
	call	enter_dir
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_445
.label_508:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], -1
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + 0x40], 0
	lea	rdi, [rdi]
	jne	.label_450
	mov	eax, 0x186a0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
.label_450:
	lea	rax, [r13 + 0x40]
	mov	qword ptr [rsp + 0x30], rax
	cmp	r15d, 2
	nop	
	je	.label_455
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	eax, dword ptr [rax]
	nop	
	and	eax, 0x38
	cmp	eax, 0x18
	mov	rbp, rbp
	jne	.label_458
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x88], 2
	jne	.label_458
	mov	esi, dword ptr [rsp + 0x5c]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	filesystem_type
	cmp	rax, 0x9f9f
	nop	
	jle	.label_468
	cmp	rax, 0x9fa0
	lea	rsi, [rsi]
	je	.label_458
	mov	rbp, rbp
	mov	ecx, 0xff534d42
	mov	rsp, rsp
	cmp	rax, rcx
	je	.label_458
	mov	rsp, rsp
	cmp	rax, 0x5346414f
	je	.label_458
	lea	rsi, [rsi]
	jmp	.label_455
.label_445:
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	xor	ebx, ebx
	jmp	.label_462
.label_468:
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_458
	mov	rbp, rbp
	cmp	rax, 0x6969
	jne	.label_455
.label_458:
	cmp	r15d, 3
	nop	
	sete	bl
	mov	rbp, rbp
	mov	r14b, 1
	jmp	.label_486
.label_455:
	cmp	r15d, 3
	lea	rsi, [rsi]
	sete	bl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rbp, rbp
	jne	.label_489
.label_486:
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], r15d
	mov	rax, qword ptr [rsp + 0x90]
	nop	
	test	byte ptr [rax + 1], 2
	mov	ebp, dword ptr [rsp + 0x5c]
	lea	rdi, [rdi]
	je	.label_493
	nop	
	mov	esi, 0x406
	nop	
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 0x5c], ebp
.label_493:
	nop	
	test	ebp, ebp
	nop	
	js	.label_517
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	edx, ebp
	mov	rsp, rsp
	call	fts_safe_changedir
	test	eax, eax
	mov	rsp, rsp
	je	.label_465
.label_517:
	and	bl, r14b
	lea	rsi, [rsi]
	movzx	eax, bl
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_507
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [r12 + 0x40], eax
.label_507:
	or	byte ptr [r12 + 0x72], 1
	mov	rdi, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	test	ah, 2
	lea	rdi, [rdi]
	je	.label_457
	mov	edi, dword ptr [rsp + 0x5c]
	test	edi, edi
	js	.label_457
	call	close
.label_457:
	mov	qword ptr [r12 + 0x18], 0
	mov	dword ptr [rsp + 0x74], 0
	jmp	.label_520
.label_489:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], 0
	nop	
	jmp	.label_476
.label_465:
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rsp + 0x74], eax
.label_520:
	mov	r15d, dword ptr [rsp + 8]
.label_476:
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [r12 + 0x48]
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_448
	dec	rdx
.label_448:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], r15d
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	test	byte ptr [rax], 4
	je	.label_453
	mov	rax, qword ptr [r13 + 0x20]
	mov	rbp, rbp
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x28], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_453:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x78], rax
	mov	rcx, qword ptr [r13 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x60], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x58]
	inc	rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x48], rdx
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	mov	dword ptr [rsp + 0xc], 0
	xor	eax, eax
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	r15d, r15d
.label_463:
	mov	rsp, rsp
	mov	rbx, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_482
	mov	qword ptr [rsp + 0x88], rax
	mov	qword ptr [rsp + 0x18], rbp
	call	__errno_location
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rax
	mov	rbp, qword ptr [rsp + 0x90]
	nop	word ptr cs:[rax + rax]
.label_473:
	mov	rax, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	rdi, rbx
	call	readdir
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_498
	mov	rsp, rsp
	mov	r13, r14
	add	r13, 0x13
	nop	
	test	byte ptr [rbp], 0x20
	jne	.label_475
	movzx	eax, byte ptr [r13]
	mov	rsp, rsp
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	jne	.label_475
	nop	
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	je	.label_504
	test	al, al
	je	.label_471
	lea	rsi, [rsi]
	jmp	.label_475
	nop	word ptr cs:[rax + rax]
.label_504:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x15], 0
	lea	rsi, [rsi]
	jne	.label_475
.label_471:
	nop	
	mov	rbx, qword ptr [r12 + 0x18]
	test	rbx, rbx
	nop	
	jne	.label_473
	jmp	.label_513
	nop	word ptr cs:[rax + rax]
.label_475:
	mov	rdi, r13
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	lea	rsi, [rsi]
	and	rdi, 0xfffffffffffffff8
	mov	rsp, rsp
	call	malloc
	mov	r12, rax
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_519
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	add	rdi, 0x108
	nop	
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x98]
	mov	qword ptr [r12 + 0x50], rbp
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp + 0x20]
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x38], r13
	mov	rbp, rbp
	mov	dword ptr [r12 + 0x40], 0
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	rbp, rbp
	mov	word ptr [r12 + 0x74], 3
	mov	rbp, rbp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	cmp	rbx, rax
	mov	rbp, rbp
	jae	.label_447
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	jmp	.label_467
.label_447:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	lea	rsi, [rax + rbx]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_472
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_459
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x20], rax
	lea	rdi, [rdi]
	cmp	r13, rax
	lea	rsi, [rsi]
	je	.label_481
	mov	rdx, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x90]
	test	byte ptr [rcx], 4
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x28], rcx
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	mov	rbp, rbp
	jmp	.label_485
.label_481:
	mov	rdx, qword ptr [rsp + 0x78]
.label_485:
	mov	rax, qword ptr [rbp + 0x30]
	sub	rax, rdx
.label_467:
	mov	rsp, rsp
	add	rbx, rdx
	jb	.label_516
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x60], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x58], rax
	mov	rbp, rbp
	mov	r13, rbp
	mov	rax, qword ptr [r13]
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x48], rbx
	mov	rsp, rsp
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	jne	.label_497
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_510
	nop	word ptr cs:[rax + rax]
.label_497:
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	mov	rsp, rsp
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	memmove
.label_510:
	mov	rax, qword ptr [rsp + 0x90]
	mov	edx, dword ptr [rax]
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_502
	mov	eax, edx
	mov	rsp, rsp
	and	eax, 0x400
	jne	.label_502
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_444
	nop	
.label_502:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	lea	rsi, [rsi]
	mov	edx, 0
	lea	rdi, [rdi]
	jne	.label_449
	nop	
	cmp	ecx, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_449:
	mov	word ptr [r12 + 0x70], 0xb
	mov	rsp, rsp
	lea	esi, [rcx - 1]
	mov	rsp, rsp
	cmp	esi, 0xb
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	ja	.label_454
	mov	eax,  dword ptr [dword ptr [+ (rcx * 4) + label_461]]
.label_454:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	rsp, rsp
	mov	qword ptr [r12 + 0xa8], rax
.label_444:
	mov	qword ptr [r12 + 0x10], 0
	test	r15, r15
	nop	
	mov	rax, r12
	je	.label_487
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r15
.label_487:
	mov	rbp, rbp
	mov	r15, rax
	cmp	rbp, 0x2710
	jne	.label_477
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_477
	mov	esi, dword ptr [rsp + 0x5c]
	mov	rdi, qword ptr [rsp + 0x68]
	nop	
	call	filesystem_type
	mov	dword ptr [rsp + 0xc], 0
	cmp	rax, 0x6969
	mov	rbp, rbp
	je	.label_477
	mov	rsp, rsp
	cmp	rax, 0x1021994
	je	.label_477
	mov	ecx, 0xff534d42
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_477
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	nop	word ptr cs:[rax + rax]
.label_477:
	mov	rbp, rbp
	inc	rbp
	cmp	qword ptr [rsp + 0x50], rbp
	mov	rbp, rbp
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x68]
	ja	.label_463
	jmp	.label_482
.label_498:
	mov	rax, qword ptr [rsp + 0x80]
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_494
	nop	
	mov	dword ptr [r12 + 0x40], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	or	rax, rbp
	mov	ax, 7
	mov	cx, 4
	mov	rbp, rbp
	cmovne	cx, ax
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], cx
.label_494:
	mov	rdi, qword ptr [r12 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x98]
	je	.label_482
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	jmp	.label_482
.label_513:
	mov	r13, qword ptr [rsp + 0x98]
	mov	rbp, qword ptr [rsp + 0x18]
.label_482:
	nop	
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	lea	rsi, [rsi]
	je	.label_446
	mov	rcx, qword ptr [r13 + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 0x20]
	lea	rdi, [rdi]
	jmp	.label_499
	nop	word ptr cs:[rax + rax]
.label_522:
	mov	qword ptr [rcx + 0x38], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
.label_499:
	nop	
	test	rcx, rcx
	je	.label_496
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_522
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rdx
	mov	rsp, rsp
	jmp	.label_522
.label_496:
	cmp	qword ptr [r15 + 0x58], 0
	mov	rsp, rsp
	js	.label_446
	mov	rcx, r15
	nop	word ptr cs:[rax + rax]
.label_460:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	lea	rsi, [rsi]
	je	.label_479
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rdx
.label_479:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_456
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 8]
.label_456:
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + 0x58], 0
	mov	rbp, rbp
	mov	rcx, rdx
	jns	.label_460
.label_446:
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	test	byte ptr [rax], 4
	mov	rbp, rbp
	je	.label_464
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [r13 + 0x30]
	cmove	rcx, rax
	mov	rsp, rsp
	test	rbp, rbp
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_464:
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_474
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x74]
	nop	
	test	al, al
	je	.label_474
	cmp	dword ptr [rsp + 8], 1
	je	.label_478
	mov	rsp, rsp
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_474
.label_478:
	cmp	qword ptr [r12 + 0x58], 0
	je	.label_484
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_2
	nop	
	mov	rdi, r13
	call	fts_safe_changedir
	jmp	.label_488
.label_484:
	mov	rdi, r13
	lea	rdi, [rdi]
	call	restore_initial_cwd
.label_488:
	test	eax, eax
	je	.label_474
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	or	byte ptr [rax + 1], 0x20
	nop	
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_462
	xor	ebx, ebx
.label_503:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_521
	call	closedir
.label_521:
	lea	rdi, [rdi]
	mov	rdi, r15
	call	free
	mov	rsp, rsp
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_503
	mov	rbp, rbp
	jmp	.label_462
.label_474:
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_505
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_506
	cmp	rbp, 2
	jb	.label_509
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_511
	mov	rbp, rbp
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	fts_sort
	mov	rbx, rax
	mov	rbp, rbp
	jmp	.label_462
.label_505:
	cmp	dword ptr [rsp + 8], 3
	jne	.label_515
	lea	rdi, [rdi]
	movzx	eax, word ptr [r12 + 0x70]
	cmp	eax, 4
	lea	rsi, [rsi]
	je	.label_515
	movzx	eax, ax
	cmp	eax, 7
	lea	rdi, [rdi]
	je	.label_515
	mov	word ptr [r12 + 0x70], 6
.label_515:
	xor	ebx, ebx
	test	r15, r15
	je	.label_462
	nop	
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_452:
	nop	
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	nop	
	je	.label_443
	mov	rbp, rbp
	call	closedir
.label_443:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	rbp, rbp
	mov	rsp, rsp
	mov	r15, rbp
	jne	.label_452
	mov	rsp, rsp
	jmp	.label_462
.label_506:
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	r14, qword ptr [rsp + 0x30]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	nop	
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [r14], 0
	jmp	.label_462
.label_509:
	mov	rbx, r15
	nop	
	jmp	.label_462
.label_511:
	nop	
	mov	rbx, r15
	jmp	.label_462
.label_516:
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_469
	nop	word ptr cs:[rax + rax]
.label_480:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	nop	
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_491
	call	closedir
.label_491:
	nop	
	mov	rdi, r15
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	nop	
	mov	r15, rbx
	mov	rsp, rsp
	jne	.label_480
.label_469:
	mov	rbx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	rsp, rsp
	mov	word ptr [rbx + 0x70], 7
	mov	rax, qword ptr [rsp + 0x90]
	or	byte ptr [rax + 1], 0x20
	mov	rax, qword ptr [rsp + 0x80]
	mov	dword ptr [rax], 0x24
	lea	rdi, [rdi]
	xor	ebx, ebx
	jmp	.label_462
.label_472:
	mov	rdi, r13
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x20], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x24
	jmp	.label_495
.label_459:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x20], 0
.label_495:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa0], r12
	mov	rbp, qword ptr [rsp + 0x90]
.label_519:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x80]
	nop	
	mov	r14d, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	call	free
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	je	.label_512
	nop	word ptr cs:[rax + rax]
.label_518:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_514
	lea	rdi, [rdi]
	call	closedir
.label_514:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	test	rbx, rbx
	mov	rsp, rsp
	mov	r15, rbx
	jne	.label_518
.label_512:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	call	closedir
	mov	qword ptr [r12 + 0x18], 0
	lea	rdi, [rdi]
	mov	word ptr [r12 + 0x70], 7
	lea	rdi, [rdi]
	or	byte ptr [rbp + 1], 0x20
	mov	rax, qword ptr [rsp + 0x80]
	mov	dword ptr [rax], r14d
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_462:
	mov	rbp, rbp
	mov	rax, rbx
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a30

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
	jne	.label_528
	nop	
	test	ah, 2
	lea	rsi, [rsi]
	jne	.label_524
	mov	edi, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	call	fchdir
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	setne	al
	jmp	.label_525
.label_528:
	xor	eax, eax
	jmp	.label_525
.label_524:
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	mov	rbp, rbp
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_527
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	call	close
.label_527:
	nop	
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	lea	rsi, [rsi]
	xor	eax, eax
.label_525:
	mov	rsp, rsp
	movzx	ebp, al
	lea	rsi, [rsi]
	add	rbx, 0x60
	jmp	.label_523
	nop	dword ptr [rax]
.label_529:
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_523:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	i_ring_empty
	mov	rsp, rsp
	test	al, al
	nop	
	jne	.label_526
	mov	rdi, rbx
	call	i_ring_pop
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jns	.label_529
	lea	rsi, [rsi]
	jmp	.label_523
.label_526:
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
	#Procedure 0x408b00

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
	je	.label_530
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_532
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	nop	
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	call	hash_insert
	mov	r15, rax
	lea	rsi, [rsi]
	mov	bpl, 1
	cmp	r15, rbx
	mov	rsp, rsp
	je	.label_533
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	nop	
	test	r15, r15
	je	.label_534
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_531
.label_530:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsp, rsp
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	nop	
	mov	bpl, 1
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_533
	lea	rsi, [rsi]
	mov	qword ptr [r14], r14
.label_531:
	nop	
	mov	word ptr [r14 + 0x70], 2
	lea	rsi, [rsi]
	jmp	.label_533
.label_532:
	xor	ebp, ebp
	jmp	.label_533
.label_534:
	xor	ebp, ebp
.label_533:
	nop	
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408be0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	cmp	edx, 5
	jb	.label_535
	nop	
	push	rax
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	mov	rbp, rbp
	add	rsp, 8
	ret	
.label_535:
	mov	rsp, rsp
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408c10
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
	jne	.label_538
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
	jne	.label_540
	movzx	ecx, word ptr [r15 + 0x70]
	mov	rbp, rbp
	xor	eax, eax
	cmp	ecx, 1
	je	.label_548
	movzx	ecx, cx
	cmp	ecx, 9
	nop	
	jne	.label_540
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_540
.label_538:
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_540
.label_548:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	nop	
	je	.label_539
	nop	word ptr cs:[rax + rax]
.label_544:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_536
	call	closedir
.label_536:
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	mov	rbx, rbp
	jne	.label_544
.label_539:
	mov	ebx, 1
	lea	rsi, [rsi]
	cmp	r12d, 0x1000
	jne	.label_547
	or	byte ptr [r13 + 0x49], 0x10
	mov	rsp, rsp
	mov	ebx, 2
.label_547:
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x58], 0
	nop	
	jne	.label_543
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_543
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_543
	mov	edx, eax
	and	edx, 0x10
	lea	rsi, [rsi]
	shl	edx, 0xd
	or	edx, 0x90900
	mov	rsp, rsp
	test	ah, 2
	jne	.label_549
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_6
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, edx
	mov	rbp, rbp
	call	open_safer
	jmp	.label_545
.label_543:
	mov	rdi, r13
	mov	esi, ebx
	mov	rbp, rbp
	call	fts_build
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 8], rax
.label_540:
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
.label_549:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_6
	xor	eax, eax
	call	openat_safer
.label_545:
	mov	r15d, eax
	test	r15d, r15d
	mov	rbp, rbp
	js	.label_542
	mov	rbp, rbp
	mov	rdi, r13
	mov	esi, ebx
	lea	rsi, [rsi]
	call	fts_build
	mov	rsp, rsp
	mov	qword ptr [r13 + 8], rax
	mov	rbp, rbp
	test	byte ptr [r13 + 0x49], 2
	jne	.label_552
	nop	
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_541
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	rsp, rsp
	mov	dword ptr [r14], ebx
	mov	rsp, rsp
	xor	eax, eax
	nop	
	jmp	.label_540
.label_542:
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_540
.label_552:
	mov	esi, dword ptr [r13 + 0x2c]
	mov	rbp, rbp
	cmp	esi, r15d
	mov	rsp, rsp
	jne	.label_551
	lea	rsi, [rsi]
	cmp	esi, -0x64
	jne	.label_546
.label_551:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	mov	rbp, rbp
	js	.label_550
	mov	edi, eax
	mov	rbp, rbp
	call	close
.label_550:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_537
.label_541:
	lea	rsi, [rsi]
	mov	edi, r15d
	call	close
.label_537:
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_540
.label_546:
	mov	rbp, rbp
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e70

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
	#Procedure 0x408e90

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_553
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	mov	rsp, rsp
	ret	
.label_553:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ec0

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
	je	.label_554
	mov	rbp, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_558
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
	je	.label_556
.label_558:
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
	je	.label_557
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	jmp	.label_554
.label_557:
	mov	r12b, 1
	mov	r14, rbp
.label_556:
	xor	eax, eax
	nop	
	test	r15d, r15d
	js	.label_554
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	mov	rbp, rbp
	call	fstatfs
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_554
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_555
	mov	edi, 0x10
	lea	rsi, [rsi]
	call	malloc
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_555
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
	je	.label_559
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	je	.label_555
	lea	rdi, [rdi]
	call	abort
.label_559:
	mov	rdi, rbp
	call	free
.label_555:
	mov	rax, qword ptr [rsp + 0x10]
.label_554:
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
	#Procedure 0x409030

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
	#Procedure 0x409050

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
	#Procedure 0x409060

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
	#Procedure 0x4090a0

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
	je	.label_560
	nop	
	cmp	r15, -2
	jb	.label_560
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_560
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_560:
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
	#Procedure 0x409130

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
	je	.label_567
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_561
.label_567:
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
.label_568:
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
.label_561:
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
	je	.label_566
	nop	
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0x5f
	lea	rdi, [rdi]
	cmp	r14, r15
	je	.label_566
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
.label_566:
	lea	rdi, [rsp]
	mov	rsp, rsp
	call	save_cwd
	test	eax, eax
	jne	.label_563
	test	ebx, ebx
	js	.label_565
	cmp	dword ptr [rsp], ebx
	lea	rdi, [rdi]
	jne	.label_565
	mov	rsp, rsp
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_568
.label_565:
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
	je	.label_564
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	mov	rbp, rbp
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_568
.label_564:
	mov	dword ptr [rbx], 0x5f
	nop	
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	mov	rbp, rbp
	jne	.label_562
	mov	rsp, rsp
	lea	rdi, [rsp]
	call	free_cwd
	mov	rsp, rsp
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rdi]
	jmp	.label_568
.label_563:
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	openat_save_fail
.label_562:
	mov	rbp, rbp
	mov	edi, dword ptr [rbx]
	lea	rsi, [rsi]
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
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0xfd8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	mov	rsp, rsp
	je	.label_573
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rsp, rsp
	jne	.label_569
.label_573:
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_570:
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
.label_569:
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
	je	.label_572
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_572
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	free
.label_572:
	mov	rbp, rbp
	lea	rdi, [rsp]
	mov	rbp, rbp
	call	save_cwd
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_571
	test	ebx, ebx
	js	.label_574
	nop	
	cmp	dword ptr [rsp], ebx
	lea	rsi, [rsi]
	jne	.label_574
	mov	rsp, rsp
	lea	rdi, [rsp]
	mov	rbp, rbp
	call	free_cwd
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 9
	jmp	.label_570
.label_574:
	mov	rbp, rbp
	mov	edi, ebx
	lea	rsi, [rsi]
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	lea	rsi, [rsi]
	je	.label_575
	mov	ebp, dword ptr [rbx]
	nop	
	lea	rdi, [rsp]
	call	free_cwd
	mov	rbp, rbp
	mov	dword ptr [rbx], ebp
	jmp	.label_570
.label_575:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	lea	rdi, [rdi]
	call	restore_cwd
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_576
	lea	rdi, [rsp]
	mov	rsp, rsp
	call	free_cwd
	lea	rdi, [rdi]
	mov	dword ptr [rbx], 0x5f
	jmp	.label_570
.label_571:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_576:
	mov	edi, dword ptr [rbx]
	mov	rbp, rbp
	call	openat_restore_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409420

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
	je	.label_584
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	nop	
	jne	.label_577
.label_584:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_583:
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
.label_577:
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
	je	.label_580
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	nop	
	cmp	r14, r15
	mov	rsp, rsp
	je	.label_580
	mov	rdi, r14
	nop	
	call	free
.label_580:
	lea	rdi, [rsp]
	call	save_cwd
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_578
	lea	rdi, [rdi]
	test	ebx, ebx
	mov	rsp, rsp
	js	.label_581
	mov	rsp, rsp
	cmp	dword ptr [rsp], ebx
	jne	.label_581
	lea	rdi, [rsp]
	lea	rdi, [rdi]
	call	free_cwd
	call	__errno_location
	nop	
	mov	dword ptr [rax], 9
	mov	rsp, rsp
	jmp	.label_583
.label_581:
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
	je	.label_582
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	mov	rsp, rsp
	call	free_cwd
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
	mov	rbp, rbp
	jmp	.label_583
.label_582:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	mov	rsp, rsp
	jne	.label_579
	lea	rdi, [rdi]
	lea	rdi, [rsp]
	call	free_cwd
	lea	rdi, [rdi]
	mov	dword ptr [rbx], 0x5f
	jmp	.label_583
.label_578:
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_579:
	mov	edi, dword ptr [rbx]
	mov	rsp, rsp
	call	openat_restore_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409590

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
	je	.label_588
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_591
.label_588:
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_590:
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
.label_591:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	nop	
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_586
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	mov	rsp, rsp
	cmp	r14, r15
	lea	rsi, [rsi]
	je	.label_586
	mov	rdi, r14
	mov	rbp, rbp
	call	free
.label_586:
	mov	rbp, rbp
	lea	rdi, [rsp + 0xfc8]
	lea	rsi, [rsi]
	call	save_cwd
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_592
	lea	rsi, [rsi]
	test	ebx, ebx
	js	.label_585
	cmp	dword ptr [rsp + 0xfc8], ebx
	jne	.label_585
	mov	rsp, rsp
	lea	rdi, [rsp + 0xfc8]
	nop	
	call	free_cwd
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 9
	lea	rsi, [rsi]
	jmp	.label_590
.label_585:
	mov	rsp, rsp
	mov	edi, ebx
	lea	rsi, [rsi]
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	test	ebp, ebp
	je	.label_589
	mov	rbp, rbp
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	lea	rdi, [rsp + 0xfc8]
	call	free_cwd
	nop	
	mov	dword ptr [rbx], ebp
	jmp	.label_590
.label_589:
	nop	
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp + 0xfc8]
	call	restore_cwd
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_587
	lea	rdi, [rsp + 0xfc8]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	lea	rsi, [rsi]
	jmp	.label_590
.label_592:
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	call	openat_save_fail
.label_587:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409710

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
	jne	.label_593
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_594
	test	cl, cl
	mov	rsp, rsp
	jne	.label_594
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_594
.label_593:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_594
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_594:
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
	#Procedure 0x4097a0

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
	#Procedure 0x4097c0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_595
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_598
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	nop	
	jne	.label_598
	mov	rsp, rsp
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	je	.label_597
.label_598:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], rdx
	mov	rbp, rbp
	test	rdx, rcx
	jne	.label_596
	mov	al, 1
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_597
	mov	rax, qword ptr [rsi]
	nop	
	mov	qword ptr [rdi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_596:
	mov	rsp, rsp
	xor	eax, eax
.label_597:
	ret	
.label_595:
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
	#Procedure 0x409850

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_599
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
.label_599:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_600
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
	ja	.label_601
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_602
.label_601:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_602:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_600:
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
	#Procedure 0x409970

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
	je	.label_604
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_603
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_605
.label_603:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_604
.label_605:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_604:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4099c0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4099d0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4099e0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4099f0
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
	jae	.label_610
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
	jb	.label_607
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_608
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_606:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_606
.label_608:
	add	rcx, 0x10
.label_607:
	nop	
	test	rsi, rsi
	je	.label_610
	nop	word ptr cs:[rax + rax]
.label_614:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_611
	nop	word ptr cs:[rax + rax]
.label_612:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_612
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_611:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_609
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_613:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_613
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_609:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_614
.label_610:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b00
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
	jae	.label_615
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
	jb	.label_619
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_617
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_620:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_620
	mov	rsp, rsp
	jmp	.label_625
.label_619:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_627
.label_617:
	xor	esi, esi
.label_625:
	add	rcx, 0x10
.label_627:
	test	r8, r8
	nop	
	je	.label_615
	nop	dword ptr [rax]
.label_622:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_618
	nop	dword ptr [rax]
.label_621:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_621
	lea	rdi, [rdi]
	inc	rsi
.label_618:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_626
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_616:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_616
	inc	rsi
.label_626:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_622
.label_615:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_623
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_624
.label_623:
	xor	eax, eax
.label_624:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409c10
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
	jae	.label_637
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
	jb	.label_638
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_628
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_629:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_629
.label_628:
	add	rax, 0x10
.label_638:
	test	rsi, rsi
	je	.label_637
	nop	dword ptr [rax]
.label_630:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_634
	nop	word ptr cs:[rax + rax]
.label_635:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_635
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_634:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_639
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_636:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_636
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_639:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_630
.label_637:
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
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_631]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_632]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_633]]
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
	#Procedure 0x409e20

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
	jae	.label_643
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_640
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_640
	cmp	rsi, r12
	je	.label_642
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_644:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_641
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_640
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_644
.label_642:
	mov	r15, r12
	jmp	.label_640
.label_641:
	nop	
	mov	r15, qword ptr [rbx]
.label_640:
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
.label_643:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ee0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_645
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_648
	nop	dword ptr [rax]
.label_646:
	add	rcx, 0x10
.label_648:
	cmp	rcx, rdx
	jae	.label_647
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_646
.label_645:
	mov	rsp, rsp
	ret	
.label_647:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409f20
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
	jae	.label_654
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_651:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_649
	test	rdx, rdx
	jne	.label_651
	lea	rdi, [rdi]
	jmp	.label_653
.label_649:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_653
	mov	rax, qword ptr [rdx]
	jmp	.label_652
.label_653:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_650:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_652
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_650
.label_652:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_654:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409fc0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_655
	nop	word ptr cs:[rax + rax]
.label_657:
	add	r9, 0x10
.label_655:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_656
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_657
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_657
	nop	word ptr cs:[rax + rax]
.label_658:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_656
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
	jne	.label_658
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_657
.label_656:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a040
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
	jmp	.label_659
	nop	dword ptr [rax]
.label_660:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_659:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_663
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_660
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_660
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_663
	nop	word ptr [rax + rax]
.label_662:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_661
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_662
	jmp	.label_663
	nop	word ptr cs:[rax + rax]
.label_661:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_660
.label_663:
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
	#Procedure 0x40a110
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_665
	inc	rdi
	nop	
	xor	edx, edx
.label_664:
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
	jne	.label_664
.label_665:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a150
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_666]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a170

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
	je	.label_668
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_678
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_670]]
	jbe	.label_671
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_674]]
	ucomiss	xmm1, xmm0
	jbe	.label_671
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_681]]
	lea	rsi, [rsi]
	jbe	.label_671
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_671
	addss	xmm1,  dword ptr [dword ptr [rip + label_670]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_671
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_676]]
	ucomiss	xmm2, xmm0
	jb	.label_671
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_671
.label_678:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_675
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_677
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_682
.label_677:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_682:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_672]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_673]]
	nop	
	jae	.label_671
.label_675:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_680
.label_679:
	mov	rbp, rbp
	add	rbx, 2
.label_680:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_671
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_669
	nop	word ptr cs:[rax + rax]
.label_667:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_669
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_667
.label_669:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_679
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_671
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_671
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_671
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
	jmp	.label_668
.label_671:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_668:
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
	#Procedure 0x40a450

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
	#Procedure 0x40a470

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
	#Procedure 0x40a480
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
	jmp	.label_683
.label_687:
	mov	rsp, rsp
	add	r14, 0x10
.label_683:
	cmp	r14, rax
	jae	.label_685
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_687
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_689
	nop	word ptr [rax + rax]
.label_688:
	nop	
	test	cl, 1
	je	.label_684
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_684:
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
	jne	.label_688
.label_689:
	test	cl, cl
	je	.label_686
	mov	rdi, qword ptr [r14]
	call	rax
.label_686:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_687
.label_685:
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
	#Procedure 0x40a560

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
	je	.label_696
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_696
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_692
	nop	word ptr [rax + rax]
.label_694:
	mov	rsp, rsp
	add	r15, 0x10
.label_692:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_696
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_694
	test	r15, r15
	je	.label_694
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_698
	nop	dword ptr [rax]
.label_697:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_698:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_697
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_694
.label_696:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_690
	nop	dword ptr [rax + rax]
.label_693:
	mov	rbp, rbp
	add	r15, 0x10
.label_690:
	cmp	r15, rax
	jae	.label_691
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_693
	nop	dword ptr [rax + rax]
.label_699:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_699
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_693
.label_691:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_700
	nop	word ptr cs:[rax + rax]
.label_695:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_695
.label_700:
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
	#Procedure 0x40a690

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
	jne	.label_708
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_718
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_707
.label_718:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_707:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_672]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_673]]
	mov	rbp, rbp
	jae	.label_705
.label_708:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_703
	nop	word ptr cs:[rax + rax]
.label_702:
	lea	rsi, [rsi]
	add	rbx, 2
.label_703:
	cmp	rbx, -1
	je	.label_705
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_701
.label_714:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_701
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_714
.label_701:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_702
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_705
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_704
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_705
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
	je	.label_717
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
	jmp	.label_704
.label_717:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_710
.label_711:
	add	r12, 0x10
.label_710:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_716
	cmp	qword ptr [r12], 0
	je	.label_711
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_715
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_706:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_712
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_709
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_713
	nop	
.label_709:
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
.label_713:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_706
.label_715:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_711
.label_716:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_719
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_705:
	mov	rbp, rbp
	xor	ebp, ebp
.label_704:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_712:
	mov	rbp, rbp
	call	abort
.label_719:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa00

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
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rbp
	mov	rbp, rdi
	mov	rbp, rbp
	mov	r14, qword ptr [r12]
	nop	
	mov	al, 1
	nop	
	cmp	r14, qword ptr [r12 + 8]
	nop	
	jae	.label_720
	nop	word ptr cs:[rax + rax]
.label_732:
	mov	r13, qword ptr [r14]
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_721
	lea	rdi, [rdi]
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_727
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + 0x10]
	nop	word ptr [rax + rax]
.label_725:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	nop	
	call	qword ptr [rbp + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_733
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_723
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], r15
	nop	
	jmp	.label_729
	nop	word ptr cs:[rax + rax]
.label_723:
	mov	rbp, rbp
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	nop	
	mov	qword ptr [r15], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	nop	
	mov	qword ptr [rbp + 0x48], r15
.label_729:
	test	rcx, rcx
	mov	r15, rcx
	mov	rsp, rsp
	jne	.label_725
	mov	r13, qword ptr [r14]
.label_727:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], 0
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 4]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_721
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	mov	rbp, rbp
	call	qword ptr [rbp + 0x30]
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	cmp	rbx, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	jae	.label_731
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	nop	
	cmp	qword ptr [r15 + rbx], 0
	je	.label_722
	mov	rax, qword ptr [rbp + 0x48]
	nop	
	test	rax, rax
	je	.label_726
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_728
.label_722:
	nop	
	add	r15, rbx
	nop	
	mov	qword ptr [r15], r13
	nop	
	inc	qword ptr [rbp + 0x18]
	mov	rsp, rsp
	jmp	.label_730
.label_726:
	mov	edi, 0x10
	nop	
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_724
.label_728:
	mov	qword ptr [rax], r13
	nop	
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_730:
	mov	rbp, rbp
	mov	qword ptr [r14], 0
	nop	
	dec	qword ptr [r12 + 0x18]
.label_721:
	mov	rbp, rbp
	add	r14, 0x10
	mov	rbp, rbp
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_732
	mov	al, 1
.label_720:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_724:
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_720
.label_733:
	call	abort
.label_731:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac10

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
	je	.label_740
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
	jae	.label_740
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_739
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_734
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_741
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_743
.label_734:
	mov	rax, r14
	jmp	.label_745
.label_741:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_739
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_758:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_751
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_756
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_758
	nop	
	jmp	.label_739
.label_751:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_743
.label_756:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_743:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_739
.label_745:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_737
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_737
.label_739:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_762
	cvtsi2ss	xmm1, rax
	jmp	.label_755
.label_762:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_755:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_757
	cvtsi2ss	xmm0, rcx
	jmp	.label_764
.label_757:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_764:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_736
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_748
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_670]]
	jbe	.label_735
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_674]]
	ucomiss	xmm3, xmm2
	jbe	.label_735
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_681]]
	jbe	.label_735
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_735
	addss	xmm3,  dword ptr [dword ptr [rip + label_670]]
	ucomiss	xmm2, xmm3
	jbe	.label_735
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_676]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_735
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_744
.label_735:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_763]]
	jmp	.label_744
.label_748:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_744:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_736
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_759
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_759:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_673]]
	mov	rsp, rsp
	jae	.label_737
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_672]]
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
	je	.label_737
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_740
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_736
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_738
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_747
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_738
.label_747:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_736
	lea	rbp, [r15 + rbp + 8]
.label_761:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_754
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_760
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_761
	lea	rsi, [rsi]
	jmp	.label_736
.label_754:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_738
.label_760:
	mov	rax, qword ptr [rbp]
.label_738:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_742
.label_736:
	cmp	qword ptr [r12], 0
	je	.label_746
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_749
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_750
.label_746:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_752]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_753
.label_749:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_737
.label_750:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_753:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_737:
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
.label_740:
	mov	rsp, rsp
	call	abort
.label_742:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b050

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
	je	.label_765
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_765:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b0a0

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
	jae	.label_782
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_777
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_785
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_769
	mov	r14, qword ptr [r13]
.label_785:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_772
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
	jmp	.label_776
.label_769:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_777
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_771:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_784
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_786
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_771
	lea	rsi, [rsi]
	jmp	.label_777
.label_772:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_776
.label_784:
	mov	rcx, rax
	jmp	.label_780
.label_786:
	mov	r14, qword ptr [rcx]
.label_780:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_776:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_777
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_773
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_766
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_774
.label_766:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_774:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_781
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_783
.label_781:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_783:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_773
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_768
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_670]]
	nop	
	jbe	.label_778
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_674]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_778
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_778
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_681]]
	jbe	.label_778
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_670]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_778
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_676]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_778
	ucomiss	xmm3, xmm4
	ja	.label_767
.label_778:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_767
.label_768:
	mov	eax, OFFSET FLAT:default_tuning
.label_767:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_773
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_779
	mulss	xmm0, dword ptr [rax + 8]
.label_779:
	movss	xmm1,  dword ptr [dword ptr [rip + label_672]]
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
	jne	.label_773
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_770
.label_775:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_775
.label_770:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_773:
	nop	
	mov	r12, r14
.label_777:
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
.label_782:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b3f0

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
	#Procedure 0x40b430

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b440

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
	jne	.label_787
	lea	rsi, [rsi]
	mov	dl, byte ptr [rdi + 0x1c]
	mov	rbp, rbp
	xor	dl, 1
	movzx	edx, dl
	mov	rbp, rbp
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_787:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b490

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	nop	
	cmp	byte ptr [rdi + 0x1c], 0
	lea	rdi, [rdi]
	jne	.label_788
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
	jne	.label_789
	lea	rsi, [rsi]
	mov	byte ptr [rdi + 0x1c], 1
	lea	rdi, [rdi]
	ret	
.label_789:
	add	ecx, 3
	and	ecx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_788:
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b4f0

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
	je	.label_790
	nop	
	mov	rax, rcx
.label_790:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b530

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
	#Procedure 0x40b580

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
	#Procedure 0x40b5d0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xd8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_791
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
.label_791:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_793
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
	ja	.label_794
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp], ecx
	jmp	.label_792
.label_794:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
.label_792:
	mov	ecx, dword ptr [rax]
.label_793:
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
	#Procedure 0x40b6d0

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
	js	.label_795
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_796
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_795
.label_796:
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
.label_795:
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
	#Procedure 0x40b750

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
	jns	.label_797
	nop	
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_797:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7b0

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_798
	mov	rbp, rbp
	mov	edi, eax
	jmp	fchdir
.label_798:
	mov	rdi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	jmp	chdir_long
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b7d0

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
	js	.label_799
	call	close
.label_799:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	mov	rbp, rbp
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b800

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
	ja	.label_800
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
	jmp	.label_801
.label_800:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_801:
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
	#Procedure 0x40b870

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
	je	.label_803
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rbp, rbp
	cmp	dword ptr [r14], 0x24
	jne	.label_807
	mov	rdi, rbp
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r15, rax
	test	r15, r15
	je	.label_812
	mov	rsp, rsp
	cmp	r15, 0xfff
	mov	rsp, rsp
	jbe	.label_818
	add	r15, rbp
	nop	
	mov	rax, -1
	nop	
.label_822:
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp + rbx + 1]
	lea	rax, [rbx + 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_822
	nop	
	mov	r12d, 0xffffff9c
	test	rax, rax
	nop	
	je	.label_828
	cmp	rax, 2
	jne	.label_804
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
	je	.label_810
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
	js	.label_819
	nop	
.label_802:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	mov	rsp, rsp
	cmp	eax, 0x2f
	je	.label_802
	lea	rsi, [rsi]
	jmp	.label_805
.label_803:
	xor	ebx, ebx
	jmp	.label_807
.label_828:
	mov	rbx, rbp
	jmp	.label_805
.label_804:
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
	js	.label_819
	lea	rbx, [rbp + rbx + 1]
.label_805:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbx]
	mov	rsp, rsp
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	je	.label_821
	cmp	rbx, r15
	ja	.label_823
	mov	rax, r15
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 0xfff
	jle	.label_826
	nop	word ptr [rax + rax]
.label_814:
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
	je	.label_810
	lea	rsi, [rsi]
	mov	byte ptr [rbp], 0
	mov	rax, rbp
	sub	rax, rbx
	cmp	rax, 0x1000
	mov	rsp, rsp
	jge	.label_817
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	openat
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	js	.label_825
	mov	rsp, rsp
	test	r12d, r12d
	js	.label_809
	mov	edi, r12d
	lea	rdi, [rdi]
	call	close
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	jne	.label_806
.label_809:
	mov	r12d, ebx
	mov	rsp, rsp
	mov	byte ptr [rbp], 0x2f
	mov	rbx, rbp
	nop	word ptr [rax + rax]
.label_827:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	cmp	eax, 0x2f
	nop	
	je	.label_827
	mov	rax, r15
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 0x1000
	jge	.label_814
.label_826:
	lea	rsi, [rsi]
	cmp	rbx, r15
	jae	.label_824
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
	js	.label_813
	lea	rdi, [rdi]
	test	r12d, r12d
	lea	rsi, [rsi]
	js	.label_815
	mov	edi, r12d
	nop	
	call	close
	test	eax, eax
	je	.label_815
	jmp	.label_806
.label_810:
	mov	rsp, rsp
	mov	dword ptr [r14], 0x24
	jmp	.label_808
.label_824:
	mov	ebx, r12d
.label_815:
	mov	edi, ebx
	call	fchdir
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_811
	lea	rdi, [rdi]
	mov	r12d, ebx
	jmp	.label_813
.label_819:
	mov	ebx, dword ptr [r14]
	nop	
	jmp	.label_816
.label_811:
	test	ebx, ebx
	js	.label_820
	mov	edi, ebx
	call	close
	test	eax, eax
	lea	rdi, [rdi]
	mov	ebx, 0
	mov	rbp, rbp
	je	.label_807
	lea	rdi, [rdi]
	jmp	.label_806
.label_825:
	mov	byte ptr [rbp], 0x2f
.label_813:
	nop	
	mov	ebx, dword ptr [r14]
	lea	rdi, [rdi]
	test	r12d, r12d
	nop	
	js	.label_816
	mov	edi, r12d
	nop	
	call	close
	test	eax, eax
	mov	rbp, rbp
	jne	.label_806
.label_816:
	mov	dword ptr [r14], ebx
.label_808:
	mov	ebx, 0xffffffff
.label_807:
	mov	eax, ebx
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_820:
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_807
.label_817:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.6_1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_806:
	mov	edi, OFFSET FLAT:.str.7_1
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cdb_free
	lea	rdi, [rdi]
	call	__assert_fail
.label_812:
	mov	edi, OFFSET FLAT:.str_10
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_818:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.2_4
	nop	
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	call	__assert_fail
.label_821:
	nop	
	mov	edi, OFFSET FLAT:.str.4_1
	mov	esi, OFFSET FLAT:.str.1_10
	lea	rsi, [rsi]
	mov	edx, 0xa2
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.chdir_long
	nop	
	call	__assert_fail
.label_823:
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
	#Procedure 0x40bc60

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
	js	.label_829
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_831
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
	je	.label_829
.label_831:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_829
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_830
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_830:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_829:
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
	#Procedure 0x40bd10

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
	je	.label_836
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
.label_836:
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
	ja	.label_849
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_844
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_843
	mov	rsp, rsp
	test	esi, esi
	jne	.label_849
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_842
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_835
.label_849:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_841
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_843
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_845
.label_844:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_840
.label_843:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_847
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_851
.label_847:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_851:
	mov	edx, dword ptr [rax]
.label_848:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_840:
	mov	ebp, eax
.label_838:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_845:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_841
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_846
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_833
.label_841:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_832
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_837
.label_842:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_835:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_848
.label_846:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_833:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_850
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
	jns	.label_839
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_839
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
	js	.label_838
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_834
.label_839:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_838
.label_832:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_837:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_840
.label_850:
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
.label_834:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_838
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_838
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_852
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
	jne	.label_838
.label_852:
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
	jmp	.label_838
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c0e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_853
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_853
	test	byte ptr [rbx + 1], 1
	je	.label_853
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_853:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c120

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
	jne	.label_854
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_854
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_855
.label_854:
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
.label_855:
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
	je	.label_856
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_856:
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
	#Procedure 0x40c1d0

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
	#Procedure 0x40c1f0

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
	je	.label_859
	mov	ecx,  dword ptr [dword ptr [rip + openat_proc_name.proc_status]]
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_857
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
	js	.label_858
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
.label_857:
	lea	rdi, [rdi]
	xor	eax, eax
	test	ecx, ecx
	lea	rdi, [rdi]
	js	.label_860
	mov	rdi, r14
	call	strlen
	lea	rsi, [rsi]
	add	rax, 0x1b
	cmp	rax, 0xfc1
	jb	.label_861
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	xor	eax, eax
	nop	
	test	rbx, rbx
	je	.label_860
.label_861:
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
	jmp	.label_862
.label_859:
	mov	byte ptr [rbx], 0
.label_862:
	mov	rax, rbx
.label_860:
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
.label_858:
	mov	dword ptr [dword ptr [rip + openat_proc_name.proc_status]],  0xffffffff
	mov	rbp, rbp
	xor	eax, eax
	nop	
	jmp	.label_860
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x40c370

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