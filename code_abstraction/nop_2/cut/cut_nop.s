	.section	.text
	.align	32
	#Procedure 0x401780

	.globl usage
	.type usage, @function
usage:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	edi, 1
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.28
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.5
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.37
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	nop	
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, 5
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.39
	mov	rbp, rbp
	mov	edx, 3
	mov	rdi, rax
	mov	rbp, rbp
	call	strncmp
	test	eax, eax
	nop	
	je	.label_8
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.40
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.12
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:.str.43
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
.label_7:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	mov	edi, ebp
	mov	rsp, rsp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b20

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	mov	ebp, edi
	nop	
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	nop	
	mov	esi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	call	setlocale
	nop	
	mov	edi, OFFSET FLAT:.str.14
	mov	esi, OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.14
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	nop	
	mov	dword ptr [dword ptr [rip + operating_mode]],  0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + suppress_non_delimited]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + delim]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	xor	r12d, r12d
	jmp	.label_10
.label_30:
	mov	byte ptr [byte ptr [rip + complement]],  1
.label_10:
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.16
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rsi, r15
	nop	
	call	getopt_long
	cmp	eax, 0x6d
	jg	.label_25
	cmp	eax, 0x61
	lea	rsi, [rsi]
	jle	.label_28
	lea	ecx, [rax - 0x62]
	lea	rsi, [rsi]
	cmp	ecx, 2
	jb	.label_32
	mov	rbp, rbp
	cmp	eax, 0x64
	je	.label_35
	lea	rdi, [rdi]
	cmp	eax, 0x66
	mov	rbp, rbp
	jne	.label_15
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + operating_mode]],  0
	jne	.label_13
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + operating_mode]],  2
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	jmp	.label_10
	nop	word ptr cs:[rax + rax]
.label_25:
	nop	
	cmp	eax, 0x79
	nop	
	jle	.label_19
	mov	rsp, rsp
	cmp	eax, 0x7a
	lea	rsi, [rsi]
	je	.label_22
	cmp	eax, 0x80
	je	.label_27
	lea	rsi, [rsi]
	cmp	eax, 0x81
	je	.label_30
	jmp	.label_15
.label_19:
	cmp	eax, 0x6e
	je	.label_10
	nop	
	cmp	eax, 0x73
	lea	rdi, [rdi]
	jne	.label_15
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + suppress_non_delimited]],  1
	nop	
	jmp	.label_10
.label_32:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + operating_mode]],  0
	nop	
	jne	.label_13
	mov	dword ptr [dword ptr [rip + operating_mode]],  1
	mov	rbp, rbp
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	jmp	.label_10
.label_22:
	nop	
	mov	byte ptr [byte ptr [rip + line_delim]],  1
	jmp	.label_10
.label_27:
	mov	byte ptr [byte ptr [rip + output_delimiter_specified]],  1
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	cmp	byte ptr [rbx], 0
	mov	eax, 1
	je	.label_24
	mov	rdi, rbx
	mov	rbp, rbp
	call	strlen
.label_24:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + output_delimiter_length]],  rax
	mov	rdi, rbx
	call	xstrdup
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + output_delimiter_string]],  rax
	lea	rdi, [rdi]
	jmp	.label_10
.label_35:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	al, byte ptr [rcx]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_14
	nop	
	cmp	byte ptr [rcx + 1], 0
	jne	.label_17
.label_14:
	mov	byte ptr [byte ptr [rip + delim]],  al
	mov	rsp, rsp
	mov	r12b, 1
	lea	rdi, [rdi]
	jmp	.label_10
.label_28:
	cmp	eax, -1
	lea	rsi, [rsi]
	jne	.label_21
	nop	
	mov	eax,  dword ptr [dword ptr [rip + operating_mode]]
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_34
	mov	rbp, rbp
	test	r12b, r12b
	lea	rdi, [rdi]
	je	.label_33
	lea	rsi, [rsi]
	cmp	eax, 2
	mov	rbp, rbp
	jne	.label_36
.label_33:
	mov	rbp, rbp
	cmp	eax, 2
	lea	rdi, [rdi]
	je	.label_37
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [rip + suppress_non_delimited]],  1
	lea	rsi, [rsi]
	jne	.label_9
.label_37:
	cmp	eax, 2
	lea	rsi, [rsi]
	setne	al
	movzx	eax, al
	shl	eax, 2
	movzx	ecx,  byte ptr [byte ptr [rip + complement]]
	and	ecx, 1
	mov	rsp, rsp
	lea	esi, [rax + rcx*2]
	mov	rdi, r14
	call	set_fields
	test	r12b, r12b
	jne	.label_20
	mov	byte ptr [byte ptr [rip + delim]],  9
.label_20:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + output_delimiter_string]],  0
	mov	rsp, rsp
	jne	.label_31
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + delim]]
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + main.dummy]],  al
	nop	
	mov	byte ptr [byte ptr [rip + label_18]],  0
	mov	qword ptr [word ptr [rip + output_delimiter_string]], OFFSET FLAT:main.dummy
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + output_delimiter_length]],  1
.label_31:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	cmp	eax, ebp
	jne	.label_12
	nop	
	mov	edi, OFFSET FLAT:.str.26
	nop	
	call	cut_file
	mov	bl, al
	nop	
	jmp	.label_16
.label_12:
	mov	rbp, rbp
	mov	bl, 1
	lea	rsi, [rsi]
	jge	.label_16
	nop	word ptr [rax + rax]
.label_29:
	lea	rdi, [rdi]
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	call	cut_file
	and	bl, al
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	nop	
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, ebp
	lea	rdi, [rdi]
	jl	.label_29
.label_16:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_11
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rdi]
	call	rpl_fclose
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_11
	call	__errno_location
	mov	esi, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.26
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	call	error
.label_11:
	nop	
	not	bl
	and	bl, 1
	lea	rdi, [rdi]
	movzx	eax, bl
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_21:
	lea	rsi, [rsi]
	cmp	eax, 0xffffff7d
	je	.label_26
	cmp	eax, 0xffffff7e
	nop	
	jne	.label_15
	nop	
	xor	edi, edi
	call	usage
.label_26:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 8], 0
	mov	rbp, rbp
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.22
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.20
	mov	r9d, OFFSET FLAT:.str.21
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	call	exit
.label_15:
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_34:
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.23
	jmp	.label_23
.label_36:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	jmp	.label_23
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	nop	
	jmp	.label_23
.label_13:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	mov	rsp, rsp
	jmp	.label_23
.label_17:
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.18_0
.label_23:
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	error
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	call	usage
	nop	
	.section	.text
	.align	32
	#Procedure 0x401fc0

	.globl cut_file
	.type cut_file, @function
cut_file:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	rbx, rdi
	nop	
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	lea	rdi, [rdi]
	jne	.label_74
	nop	
	cmp	byte ptr [rbx + 1], 0
	lea	rdi, [rdi]
	je	.label_93
.label_74:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.54
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fopen
	mov	rsp, rsp
	mov	r15, rax
	lea	rsi, [rsi]
	test	r15, r15
	nop	
	jne	.label_38
	jmp	.label_42
.label_93:
	nop	
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	rbp, rbp
	mov	r15,  qword ptr [word ptr [rip + stdin]]
.label_38:
	mov	esi, 2
	nop	
	mov	rdi, r15
	call	fadvise
	mov	eax,  dword ptr [dword ptr [rip + operating_mode]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + current_rp]],  rcx
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_54
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_64
	nop	dword ptr [rax]
.label_89:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + current_rp]],  rax
.label_64:
	xor	ebx, ebx
	xor	r12d, r12d
	mov	rbp, rbp
	jmp	.label_44
.label_77:
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
	mov	rsp, rsp
	mov	r12b, r13b
	nop	
.label_44:
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_80
	nop	
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_75:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	esi, 0xa
	lea	rdi, [rdi]
	cmovne	esi, r14d
	cmp	ebp, esi
	lea	rsi, [rsi]
	je	.label_86
	mov	rsp, rsp
	cmp	ebp, -1
	lea	rsi, [rsi]
	je	.label_92
	inc	rbx
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	mov	rsp, rsp
	cmp	rbx, qword ptr [rax + 8]
	mov	rbp, rbp
	jbe	.label_82
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + current_rp]],  rax
.label_82:
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rax, rbx
	ja	.label_44
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [rip + output_delimiter_specified]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_50
	mov	r13b, 1
	nop	
	test	r12b, 1
	mov	rbp, rbp
	je	.label_56
	cmp	rax, rbx
	lea	rsi, [rsi]
	jne	.label_56
	nop	
	mov	rdi,  qword ptr [word ptr [rip + output_delimiter_string]]
	mov	rdx,  qword ptr [word ptr [rip + output_delimiter_length]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_56
.label_80:
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	__uflow
	mov	ebp, eax
	jmp	.label_75
.label_50:
	mov	r13b, r12b
.label_56:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_77
	movzx	esi, bpl
	mov	rbp, rbp
	call	__overflow
	mov	rbp, rbp
	mov	r12b, r13b
	jmp	.label_44
	nop	dword ptr [rax]
.label_86:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_73
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
	jmp	.label_89
.label_73:
	movzx	esi, bpl
	call	__overflow
	mov	rsp, rsp
	jmp	.label_89
.label_54:
	nop	
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	nop	
	jae	.label_88
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [r15 + 8], rcx
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rax]
.label_48:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbx
	mov	rsi, r15
	call	ungetc
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	mov	rsp, rsp
	cmp	qword ptr [rax], 1
	lea	rdi, [rdi]
	seta	al
	xor	al,  byte ptr [byte ptr [rip + suppress_non_delimited]]
	mov	rsp, rsp
	xor	al, 1
	mov	byte ptr [rsp + 0x27], al
	mov	rbp, rbp
	xor	r13d, r13d
	mov	ecx, 1
	mov	rbp, rbp
	xor	r12d, r12d
	xor	ebp, ebp
	jmp	.label_49
.label_92:
	test	rbx, rbx
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_53
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_70
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], sil
	mov	rbp, rbp
	jmp	.label_53
.label_83:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + current_rp]],  rax
	lea	rsi, [rsi]
	xor	r12d, r12d
	mov	rsp, rsp
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_49:
	mov	rbp, rbp
	cmp	rcx, 1
	mov	rsp, rsp
	setne	al
	nop	
	or	al, byte ptr [rsp + 0x27]
	mov	rbp, rbp
	test	al, 1
	je	.label_79
	nop	
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	jmp	.label_94
	nop	word ptr cs:[rax + rax]
.label_96:
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_79:
	mov	rbp, rbp
	movzx	r8d,  byte ptr [byte ptr [rip + delim]]
	nop	
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	lea	rdi, [rdi]
	and	al, 1
	mov	r9d, 0xa
	cmovne	r9d, r13d
	mov	qword ptr [rsp], r15
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:field_1_buffer
	mov	esi, OFFSET FLAT:field_1_bufsize
	xor	edx, edx
	mov	rcx, -1
	nop	
	call	getndelim2
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	lea	rsi, [rsi]
	js	.label_58
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_65
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + field_1_buffer]]
	mov	rsp, rsp
	movzx	eax, byte ptr [rdi + rbx - 1]
	nop	
	movzx	ecx,  byte ptr [byte ptr [rip + delim]]
	cmp	eax, ecx
	lea	rsi, [rsi]
	je	.label_69
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + suppress_non_delimited]]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	je	.label_79
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	rdx, rbx
	call	fwrite_unlocked
	mov	rax,  qword ptr [word ptr [rip + field_1_buffer]]
	movsx	eax, byte ptr [rax + rbx - 1]
	mov	rbp, rbp
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	lea	rsi, [rsi]
	mov	esi, 0xa
	nop	
	cmovne	esi, r13d
	nop	
	cmp	eax, esi
	lea	rdi, [rdi]
	je	.label_79
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	nop	
	jb	.label_96
	call	__overflow
	jmp	.label_79
	nop	dword ptr [rax]
.label_69:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 1
	nop	
	ja	.label_51
	nop	
	dec	rbx
	nop	
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	mov	rbp, rbp
	call	fwrite_unlocked
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	mov	rbp, rbp
	and	cl, 1
	lea	rsi, [rsi]
	mov	ecx, 0xa
	mov	rbp, rbp
	cmovne	ecx, r13d
	cmp	eax, ecx
	jne	.label_91
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	jae	.label_71
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [r15 + 8], rcx
	nop	
	movzx	edi, byte ptr [rax]
.label_52:
	lea	rsi, [rsi]
	mov	rsi, r15
	lea	rsi, [rsi]
	call	ungetc
.label_91:
	mov	rbp, rbp
	mov	r12b, 1
.label_51:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	xor	ebp, ebp
	cmp	qword ptr [rax + 8], 1
	lea	rsi, [rsi]
	ja	.label_84
	add	rax, 0x10
	mov	qword ptr [word ptr [rip + current_rp]],  rax
.label_84:
	mov	rsp, rsp
	mov	ecx, 2
.label_94:
	lea	rsi, [rsi]
	cmp	qword ptr [rax], rcx
	jbe	.label_90
	mov	qword ptr [rsp + 0x10], rcx
	lea	rdi, [rdi]
	jmp	.label_67
	nop	
.label_90:
	lea	rdi, [rdi]
	test	r12b, 1
	jne	.label_81
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	nop	
	jmp	.label_66
.label_47:
	mov	rdi, r15
	call	__uflow
	lea	rdi, [rdi]
	mov	ebp, eax
	nop	
	jmp	.label_40
	nop	word ptr [rax + rax]
.label_67:
	mov	r14d, ebp
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_47
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_40:
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	cmp	ebp, eax
	je	.label_55
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	mov	ecx, 0xa
	cmovne	ecx, r13d
	nop	
	cmp	ebp, -1
	mov	rbp, rbp
	je	.label_55
	lea	rdi, [rdi]
	cmp	ebp, ecx
	jne	.label_67
	lea	rsi, [rsi]
	jmp	.label_55
.label_81:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi,  qword ptr [word ptr [rip + output_delimiter_string]]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + output_delimiter_length]]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rsp, rsp
	call	fwrite_unlocked
	mov	rbp, rbp
	jmp	.label_66
	nop	dword ptr [rax]
.label_43:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
	lea	rsi, [rsi]
	mov	ebp, ebx
.label_66:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	jae	.label_85
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	lea	rdi, [rdi]
	movzx	ebx, byte ptr [rax]
.label_59:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	lea	rdi, [rdi]
	mov	r12b, 1
	cmp	ebx, eax
	mov	rsp, rsp
	je	.label_60
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	mov	ecx, 0xa
	lea	rdi, [rdi]
	cmovne	ecx, r13d
	nop	
	cmp	ebx, -1
	lea	rdi, [rdi]
	je	.label_60
	cmp	ebx, ecx
	lea	rdi, [rdi]
	je	.label_60
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_43
	movzx	esi, bl
	mov	rsp, rsp
	call	__overflow
	mov	ebp, ebx
	lea	rsi, [rsi]
	jmp	.label_66
.label_85:
	mov	rdi, r15
	lea	rsi, [rsi]
	call	__uflow
	mov	rbp, rbp
	mov	ebx, eax
	mov	rbp, rbp
	jmp	.label_59
	nop	word ptr [rax + rax]
.label_60:
	mov	r14d, ebp
	mov	rsp, rsp
	mov	ebp, ebx
.label_55:
	nop	
	movzx	ecx, al
	mov	rsp, rsp
	mov	dl,  byte ptr [byte ptr [rip + line_delim]]
	and	dl, 1
	mov	edx, 0xa
	cmovne	edx, r13d
	lea	rsi, [rsi]
	cmp	ebp, ecx
	nop	
	jne	.label_68
	mov	rbp, rbp
	cmp	ecx, edx
	jne	.label_68
	mov	rax, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	jae	.label_78
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 8], rcx
	movzx	edi, byte ptr [rax]
.label_45:
	nop	
	mov	rsi, r15
	call	ungetc
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + delim]]
.label_68:
	movzx	eax, al
	cmp	ebp, eax
	lea	rdi, [rdi]
	jne	.label_87
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	inc	rcx
	nop	
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	cmp	rcx, qword ptr [rax + 8]
	jbe	.label_49
	add	rax, 0x10
	mov	qword ptr [word ptr [rip + current_rp]],  rax
	jmp	.label_49
	nop	word ptr cs:[rax + rax]
.label_87:
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	mov	esi, 0xa
	mov	rbp, rbp
	cmovne	esi, r13d
	cmp	ebp, -1
	lea	rsi, [rsi]
	sete	bl
	mov	rsp, rsp
	je	.label_41
	nop	
	cmp	ebp, esi
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jne	.label_49
	jmp	.label_57
.label_41:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x10]
.label_57:
	lea	rdi, [rdi]
	test	r12b, 1
	nop	
	jne	.label_63
	cmp	rcx, 1
	mov	rbp, rbp
	jne	.label_63
	test	byte ptr [byte ptr [rip + suppress_non_delimited]],  1
	mov	rsp, rsp
	jne	.label_46
.label_63:
	cmp	r14d, esi
	jne	.label_95
	cmp	ebp, esi
	je	.label_95
	lea	rdi, [rdi]
	cmp	eax, r14d
	lea	rdi, [rdi]
	jne	.label_46
.label_95:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi + 0x30]
	nop	
	jae	.label_62
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], sil
.label_46:
	mov	rbp, rbp
	test	bl, bl
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	je	.label_83
	jmp	.label_53
.label_78:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	__uflow
	mov	edi, eax
	mov	rbp, rbp
	cmp	edi, -1
	jne	.label_45
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	mov	esi, 0xa
	cmovne	esi, r13d
	mov	ebp, 0xffffffff
	lea	rdi, [rdi]
	mov	bl, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	jmp	.label_57
.label_62:
	mov	rsp, rsp
	call	__overflow
	lea	rdi, [rdi]
	jmp	.label_46
.label_71:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	__uflow
	lea	rsi, [rsi]
	mov	edi, eax
	lea	rdi, [rdi]
	cmp	edi, -1
	jne	.label_52
	jmp	.label_51
.label_58:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + field_1_buffer]]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + field_1_buffer]],  0
	mov	rbp, rbp
	test	byte ptr [r15], 0x30
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_61
.label_53:
	test	byte ptr [r15], 0x20
	lea	rdi, [rdi]
	jne	.label_42
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_72
	cmp	byte ptr [rbx + 1], 0
	je	.label_76
.label_72:
	mov	rsp, rsp
	mov	rdi, r15
	call	rpl_fclose
	lea	rsi, [rsi]
	mov	bpl, 1
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_39
.label_42:
	lea	rsi, [rsi]
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	rdx, rbx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, r14d
	lea	rdi, [rdi]
	call	error
.label_39:
	lea	rsi, [rsi]
	mov	al, bpl
	mov	rbp, rbp
	add	rsp, 0x28
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_76:
	mov	rsp, rsp
	mov	rdi, r15
	call	clearerr_unlocked
	lea	rdi, [rdi]
	mov	bpl, 1
	mov	rbp, rbp
	jmp	.label_39
.label_88:
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	__uflow
	mov	edi, eax
	mov	rsp, rsp
	cmp	edi, -1
	jne	.label_48
	jmp	.label_53
.label_70:
	call	__overflow
	jmp	.label_53
.label_65:
	nop	
	mov	edi, OFFSET FLAT:.str.56
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.57
	nop	
	mov	edx, 0x149
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cut_fields
	call	__assert_fail
.label_61:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402970

	.globl set_fields
	.type set_fields, @function
set_fields:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	rbx, rdi
	xor	r14d, r14d
	mov	eax, esi
	and	eax, 1
	mov	dword ptr [rsp + 0x14], eax
	mov	rbp, rbp
	mov	ebp, 0
	lea	rdi, [rdi]
	je	.label_129
	nop	
	mov	dword ptr [rsp + 0x24], esi
	mov	rbp, rbp
	movzx	edx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	mov	ecx, 0x2d
	sub	ecx, edx
	lea	rdi, [rdi]
	jne	.label_143
	movzx	ecx, byte ptr [rax]
	neg	ecx
.label_143:
	test	ecx, ecx
	sete	bpl
	movzx	r14d, bpl
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x18], 0
	mov	al, bpl
	nop	
	mov	dword ptr [rsp + 0x1c], eax
	jmp	.label_152
.label_129:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 0x24], esi
	mov	dword ptr [rsp + 0x18], 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_152
.label_141:
	mov	dword ptr [rsp + 0x1c], edx
	inc	rbx
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r15
.label_152:
	mov	dword ptr [rsp + 0x20], ebp
	lea	rsi, [rsi]
	mov	r13b, bpl
	lea	rsi, [rsi]
	and	r13b, 1
	xor	r15d, r15d
	movabs	r12, 0x1999999999999999
	mov	rsp, rsp
	jmp	.label_116
	nop	dword ptr [rax + rax]
.label_112:
	inc	rbx
	mov	r15b, 1
.label_116:
	mov	rsp, rsp
	movzx	ebp, byte ptr [rbx]
	cmp	rbp, 0x2c
	je	.label_126
	movzx	eax, bpl
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	je	.label_131
	mov	rbp, rbp
	call	__ctype_b_loc
	lea	rdi, [rdi]
	test	bpl, bpl
	je	.label_126
	nop	
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	mov	rsp, rsp
	and	eax, 1
	mov	rbp, rbp
	test	ax, ax
	lea	rsi, [rsi]
	jne	.label_126
	nop	
	movsx	eax, bpl
	mov	rbp, rbp
	add	eax, -0x30
	mov	rbp, rbp
	cmp	eax, 9
	ja	.label_146
	mov	rbp,  qword ptr [word ptr [rip + set_fields.num_start]]
	mov	rsp, rsp
	test	rbp, rbp
	setne	al
	lea	rdi, [rdi]
	test	r15b, al
	jne	.label_156
	mov	qword ptr [word ptr [rip + set_fields.num_start]],  rbx
	mov	rbp, rbx
.label_156:
	mov	al, 1
	test	r13b, r13b
	mov	rsp, rsp
	je	.label_167
	mov	dword ptr [rsp + 0x18], eax
	jmp	.label_169
.label_167:
	mov	dword ptr [rsp + 0x1c], eax
.label_169:
	lea	rdi, [rdi]
	cmp	r14, r12
	lea	rdi, [rdi]
	ja	.label_100
	nop	
	lea	rax, [r14 + r14*4]
	movsx	rcx, byte ptr [rbx]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r14
	cmovae	r14, rax
	jb	.label_100
	cmp	r14, -1
	jne	.label_112
	lea	rdi, [rdi]
	jmp	.label_100
.label_126:
	test	r13b, r13b
	nop	
	jne	.label_136
	lea	rdi, [rdi]
	test	r14, r14
	mov	rsp, rsp
	je	.label_121
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	cmp	rcx,  qword ptr [word ptr [rip + n_frp_allocated]]
	nop	
	mov	ebp, dword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jne	.label_123
	nop	
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_130
	nop	
	movabs	rax, 0x555555555555555
	lea	rdi, [rdi]
	cmp	rcx, rax
	jae	.label_114
	mov	rax, rcx
	nop	
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_142
	nop	word ptr cs:[rax + rax]
.label_136:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rsp + 0x1c]
	or	cl, al
	mov	rsp, rsp
	and	cl, 1
	mov	r15d, 1
	cmovne	r15, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x14], 0
	jne	.label_149
	test	cl, cl
	mov	rsp, rsp
	je	.label_132
.label_149:
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_168
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	lea	rsi, [rsi]
	cmp	rcx,  qword ptr [word ptr [rip + n_frp_allocated]]
	mov	rsp, rsp
	jne	.label_98
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_106
	mov	rbp, rbp
	movabs	rax, 0x555555555555555
	mov	rbp, rbp
	cmp	rcx, rax
	jae	.label_114
	mov	rax, rcx
	shr	rax, 1
	mov	rsp, rsp
	lea	rsi, [rcx + rax + 1]
	jmp	.label_122
	nop	
.label_131:
	test	r13b, r13b
	lea	rdi, [rdi]
	jne	.label_125
	mov	edx, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	mov	al, dl
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	sete	cl
	mov	rsp, rsp
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_127
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_139
.label_127:
	test	al, al
	mov	r15d, 1
	lea	rsi, [rsi]
	cmovne	r15, r14
	mov	rbp, rbp
	mov	bpl, 1
	mov	rsp, rsp
	jmp	.label_141
.label_123:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 8]
	mov	rsp, rsp
	jmp	.label_145
.label_168:
	cmp	r14, r15
	nop	
	jb	.label_155
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	cmp	rcx,  qword ptr [word ptr [rip + n_frp_allocated]]
	lea	rsi, [rsi]
	jne	.label_159
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	nop	
	test	rdi, rdi
	je	.label_164
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_114
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_103
.label_98:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	jmp	.label_109
.label_159:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	jmp	.label_115
.label_130:
	test	rcx, rcx
	nop	
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	nop	
	cmp	rsi, rax
	mov	r15, qword ptr [rsp + 8]
	nop	
	ja	.label_120
.label_142:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	lea	rdi, [rdi]
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
.label_145:
	shl	rcx, 4
	nop	
	mov	qword ptr [rax + rcx], r14
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r14
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	lea	rdi, [rdi]
	inc	rsi
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	jmp	.label_138
.label_106:
	test	rcx, rcx
	mov	rsp, rsp
	mov	esi, 8
	lea	rsi, [rsi]
	cmovne	rsi, rcx
	lea	rsi, [rsi]
	movabs	rax, 0x7ffffffffffffff
	mov	rsp, rsp
	cmp	rsi, rax
	ja	.label_150
.label_122:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	mov	rbp, rbp
	shl	rsi, 4
	call	xrealloc
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + frp]],  rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
.label_109:
	shl	rcx, 4
	mov	rsp, rsp
	mov	qword ptr [rax + rcx], r15
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	mov	rbp, rbp
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], -1
	lea	rsi, [rsi]
	jmp	.label_104
.label_164:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	nop	
	ja	.label_119
.label_103:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	shl	rsi, 4
	nop	
	call	xrealloc
	nop	
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
.label_115:
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx], r15
	nop	
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r14
.label_104:
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	xor	ebp, ebp
.label_138:
	nop	
	cmp	byte ptr [rbx], 0
	nop	
	je	.label_144
	nop	
	mov	dword ptr [rsp + 0x18], 0
	xor	edx, edx
	mov	rbp, rbp
	jmp	.label_141
.label_144:
	test	rsi, rsi
	je	.label_153
	lea	rsi, [rsi]
	mov	edx, 0x10
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:compare_ranges
	mov	rdi, rax
	call	qsort
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + n_frp]]
	mov	rbp, rbp
	xor	r14d, r14d
	mov	rsp, rsp
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_140
	nop	dword ptr [rax + rax]
.label_165:
	lea	rsi, [rsi]
	lea	rbp, [r14 + 1]
	nop	
	jmp	.label_102
	nop	word ptr [rax + rax]
.label_135:
	lea	rsi, [rsi]
	lea	rsi, [rax + rsi + 8]
	lea	rdi, [rax + rcx]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + rcx + 8]
	cmp	rbx, rdx
	mov	rbp, rbp
	cmova	rdx, rbx
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	lea	rsi, [rax + rcx + 0x10]
	mov	rdx,  qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	sub	rdx, rbp
	mov	rbp, rbp
	shl	rdx, 4
	add	rdx, -0x10
	call	memmove
	mov	rbx,  qword ptr [word ptr [rip + n_frp]]
	lea	rsi, [rsi]
	dec	rbx
	mov	qword ptr [word ptr [rip + n_frp]],  rbx
.label_102:
	cmp	rbp, rbx
	jae	.label_133
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	rcx, rbp
	nop	
	shl	rcx, 4
	mov	rsi, r14
	shl	rsi, 4
	mov	rdx, qword ptr [rax + rsi + 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + rcx], rdx
	jbe	.label_135
.label_133:
	mov	rsp, rsp
	cmp	rbp, rbx
	lea	rsi, [rsi]
	mov	r14, rbp
	jb	.label_165
	lea	rsi, [rsi]
	jmp	.label_124
.label_140:
	mov	rsp, rsp
	xor	ebx, ebx
.label_124:
	nop	
	mov	eax, dword ptr [rsp + 0x24]
	test	al, 2
	mov	rsp, rsp
	je	.label_151
	nop	
	mov	r14,  qword ptr [word ptr [rip + frp]]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + frp]],  0
	mov	qword ptr [word ptr [rip + n_frp]],  0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rbp, rbp
	mov	rbp, qword ptr [r14]
	xor	esi, esi
	nop	
	cmp	rbp, 2
	mov	rbp, rbp
	jb	.label_158
	dec	rbp
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  8
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 0x80
	call	xrealloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + frp]],  rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	lea	rdi, [rdi]
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx], 1
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], rbp
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	jmp	.label_113
.label_158:
	xor	eax, eax
.label_113:
	cmp	rbx, 2
	lea	rdi, [rdi]
	jb	.label_107
	lea	rbp, [r14 + 0x10]
	mov	r15d, 1
	nop	dword ptr [rax]
.label_108:
	mov	r12, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	r13, qword ptr [rbp]
	inc	r12
	cmp	r12, r13
	mov	rsp, rsp
	je	.label_137
	cmp	rsi,  qword ptr [word ptr [rip + n_frp_allocated]]
	mov	rsp, rsp
	jne	.label_147
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_148
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	mov	rsp, rsp
	jae	.label_114
	mov	rbp, rbp
	mov	rcx, rsi
	shr	rcx, 1
	lea	rdi, [rdi]
	lea	rsi, [rsi + rcx + 1]
	jmp	.label_117
.label_148:
	lea	rdi, [rdi]
	test	rsi, rsi
	lea	rsi, [rsi]
	mov	ecx, 8
	nop	
	cmove	rsi, rcx
	movabs	rcx, 0x7ffffffffffffff
	cmp	rsi, rcx
	mov	rsp, rsp
	ja	.label_170
.label_117:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	shl	rsi, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	nop	
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
.label_147:
	dec	r13
	nop	
	shl	rsi, 4
	mov	rbp, rbp
	mov	qword ptr [rax + rsi], r12
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	nop	
	shl	rcx, 4
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 8], r13
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
.label_137:
	inc	r15
	lea	rdi, [rdi]
	add	rbp, 0x10
	mov	rbp, rbp
	cmp	r15, rbx
	jb	.label_108
.label_107:
	shl	rbx, 4
	mov	rbp, rbp
	mov	rbx, qword ptr [rbx + r14 - 8]
	cmp	rbx, -1
	lea	rdi, [rdi]
	je	.label_161
	cmp	rsi,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_154
	nop	
	test	rax, rax
	je	.label_160
	nop	
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	lea	rsi, [rsi]
	jae	.label_114
	mov	rcx, rsi
	shr	rcx, 1
	mov	rbp, rbp
	lea	rcx, [rsi + rcx + 1]
	nop	
	jmp	.label_162
.label_160:
	test	rsi, rsi
	mov	ecx, 8
	cmovne	rcx, rsi
	mov	rsp, rsp
	movabs	rdx, 0x7ffffffffffffff
	cmp	rcx, rdx
	ja	.label_166
.label_162:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rcx
	mov	rsp, rsp
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
.label_154:
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	shl	rsi, 4
	nop	
	mov	qword ptr [rax + rsi], rbx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	shl	rcx, 4
	nop	
	mov	qword ptr [rax + rcx + 8], -1
	mov	rbp, rbp
	inc	qword ptr [word ptr [rip + n_frp]]
.label_161:
	mov	rdi, r14
	call	free
	mov	rbx,  qword ptr [word ptr [rip + n_frp]]
.label_151:
	inc	rbx
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + n_frp]],  rbx
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	nop	
	shl	rbx, 4
	mov	rbp, rbp
	mov	rsi, rbx
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	mov	qword ptr [rcx + rax - 8], -1
	nop	
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	nop	
	shl	rcx, 4
	mov	qword ptr [rcx + rax - 0x10], -1
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_100:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rdi, rbp
	call	strspn
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rax
	call	xstrndup
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rsi, [rsi]
	xor	edi, edi
	test	al, 4
	jne	.label_101
	mov	esi, OFFSET FLAT:.str.9_0
	mov	rsp, rsp
	jmp	.label_134
.label_146:
	mov	eax, dword ptr [rsp + 0x24]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	test	al, 4
	jne	.label_110
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11_0
	nop	
	jmp	.label_118
.label_101:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.8_0
.label_134:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbp
	call	error
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	nop	
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_110:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.10_0
.label_118:
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_121:
	mov	eax, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	xor	edi, edi
	test	al, 4
	jne	.label_163
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.4_0
	nop	
	jmp	.label_97
.label_132:
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	rbp, rbp
	jmp	.label_97
.label_114:
	mov	rbp, rbp
	call	xalloc_die
.label_125:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x24]
	xor	edi, edi
	mov	rbp, rbp
	test	al, 4
	jne	.label_105
	mov	esi, OFFSET FLAT:.str.2_0
	jmp	.label_99
.label_139:
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	test	al, 4
	jne	.label_111
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.4_0
	jmp	.label_99
.label_155:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.6_0
	lea	rdi, [rdi]
	jmp	.label_97
.label_163:
	mov	esi, OFFSET FLAT:.str.3_0
.label_97:
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rsi, [rsi]
	jmp	.label_128
.label_105:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_99
.label_111:
	mov	esi, OFFSET FLAT:.str.3_0
.label_99:
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
.label_128:
	call	error
	mov	edi, 1
	call	usage
.label_120:
	mov	rsp, rsp
	call	xalloc_die
.label_150:
	call	xalloc_die
.label_119:
	call	xalloc_die
.label_153:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	xor	edi, edi
	test	al, 4
	nop	
	jne	.label_157
	mov	esi, OFFSET FLAT:.str.13
	lea	rsi, [rsi]
	jmp	.label_97
.label_170:
	call	xalloc_die
.label_157:
	mov	esi, OFFSET FLAT:.str.12_0
	jmp	.label_97
.label_166:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403510

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	mov	eax, dword ptr [rdi]
	cmp	eax, dword ptr [rsi]
	nop	
	setg	al
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	mov	eax, 0xffffffff
	cmovge	eax, ecx
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403530
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	lea	rsi, [rsi]
	push	rax
	nop	
	mov	qword ptr [word ptr [rip + n_frp]],  0
	nop	
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	call	free
	mov	qword ptr [word ptr [rip + frp]],  0
	pop	rax
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403570
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
	#Procedure 0x403580
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403590

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
	je	.label_172
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_171
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_171
.label_172:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_174
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_171:
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
	jne	.label_173
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
.label_174:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_173:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
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
	#Procedure 0x403690
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036a0

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_175
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_175:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4036d0

	.globl getndelim2
	.type getndelim2, @function
getndelim2:
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x58
	lea	rdi, [rdi]
	mov	r13d, r9d
	mov	dword ptr [rsp + 0x44], r8d
	mov	rbp, rbp
	mov	rbx, rcx
	mov	r15, rsi
	mov	rbp, rbp
	mov	rbp, rdi
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_192
	mov	r14, qword ptr [r15]
	jmp	.label_177
.label_192:
	mov	rsp, rsp
	cmp	rbx, 0x40
	mov	r14d, 0x40
	mov	rbp, rbp
	cmovb	r14, rbx
	nop	
	mov	rdi, r14
	nop	
	mov	r12, rdx
	call	malloc
	mov	rbp, rbp
	mov	rdx, r12
	mov	rcx, rax
	nop	
	mov	rax, -1
	test	rcx, rcx
	je	.label_183
.label_177:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	nop	
	mov	rbx, rcx
	lea	rdi, [rdi]
	mov	r12, r14
	mov	rbp, rbp
	sub	r12, rdx
	lea	rdi, [rdi]
	jae	.label_190
	mov	qword ptr [rsp + 0x20], -1
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_176
.label_190:
	mov	qword ptr [rsp + 0x20], -1
	mov	qword ptr [rsp + 8], rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], r15
	nop	
	jne	.label_180
	cmp	r14, qword ptr [rsp + 0x10]
	jb	.label_180
	mov	rbp, rbp
	mov	r14, rdx
	lea	rsi, [rsi]
	jmp	.label_176
.label_180:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	lea	r15, [rbx + rdx]
	mov	rbp, rbp
	cmp	r13d, -1
	mov	ecx, r13d
	mov	eax, dword ptr [rsp + 0x44]
	lea	rsi, [rsi]
	cmove	ecx, eax
	cmp	eax, -1
	cmove	ecx, r13d
	mov	dword ptr [rsp + 0x1c], ecx
	lea	rdi, [rdi]
	cmove	eax, r13d
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x44], eax
	nop	
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	xor	rax, rdx
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], rdx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x2c], eax
	nop	dword ptr [rax]
.label_179:
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x38]
	call	freadptr
	mov	r13, rax
	nop	
	test	r13, r13
	nop	
	je	.label_185
	nop	
	mov	esi, dword ptr [rsp + 0x44]
	lea	rdi, [rdi]
	cmp	esi, -1
	nop	
	mov	rbp, qword ptr [rsp + 0x38]
	je	.label_187
	mov	rbp, rbp
	mov	rdi, r13
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x1c]
	mov	rcx, rbp
	call	memchr2
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_187
	mov	ebp, 1
	sub	rbp, r13
	lea	rdi, [rdi]
	add	rbp, rax
	mov	qword ptr [rsp + 0x38], rbp
	nop	
	mov	al, 1
	jmp	.label_197
	nop	word ptr [rax + rax]
.label_185:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	jae	.label_194
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rcx
	movzx	eax, byte ptr [rax]
.label_186:
	cmp	eax, dword ptr [rsp + 0x1c]
	nop	
	mov	dl, 1
	nop	
	mov	cl, 1
	mov	rbp, rbp
	je	.label_184
	mov	ecx, dword ptr [rsp + 0x18]
.label_184:
	cmp	eax, dword ptr [rsp + 0x44]
	nop	
	mov	dword ptr [rsp + 0x2c], eax
	je	.label_189
	mov	dl, cl
.label_189:
	mov	qword ptr [rsp + 0x38], 1
	mov	ebp, 1
	lea	rdi, [rdi]
	mov	al, dl
.label_197:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x18], eax
.label_187:
	cmp	r14, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jae	.label_191
	lea	rax, [rbp + 1]
	lea	rsi, [rsi]
	cmp	r12, rax
	mov	rsp, rsp
	jae	.label_191
	lea	rcx, [r14 + 0x40]
	lea	rdx, [r14 + r14]
	cmp	r14, 0x40
	cmovb	rdx, rcx
	mov	rsp, rsp
	sub	r15, rbx
	nop	
	mov	rcx, rdx
	mov	rsp, rsp
	sub	rcx, r15
	lea	rdi, [rdi]
	cmp	rcx, rax
	lea	rax, [r15 + rbp + 1]
	nop	
	cmovae	rax, rdx
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rax
	cmova	rbp, rcx
	cmp	r14, rax
	nop	
	cmovae	rbp, rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	cmp	rbp, rax
	jns	.label_178
	mov	rax, qword ptr [rsp]
	cmp	r14, rax
	lea	rdi, [rdi]
	mov	rbp, rax
	je	.label_195
.label_178:
	nop	
	mov	rdi, rbx
	nop	
	mov	rsi, rbp
	nop	
	call	realloc
	test	rax, rax
	mov	rbp, rbp
	je	.label_176
	mov	r12, rbp
	sub	r12, r15
	mov	rbp, rbp
	add	r15, rax
	nop	
	mov	rbx, rax
	mov	r14, rbp
.label_191:
	cmp	r12, 2
	jb	.label_181
	lea	rbp, [r12 - 1]
	mov	rax, qword ptr [rsp + 0x38]
	nop	
	cmp	rax, rbp
	cmovb	rbp, rax
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_188
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, r13
	nop	
	mov	rdx, rbp
	call	memcpy
	jmp	.label_193
.label_188:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x2c]
	mov	byte ptr [r15], al
.label_193:
	mov	rsp, rsp
	add	r15, rbp
	sub	r12, rbp
.label_181:
	mov	rbp, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	test	r13, r13
	je	.label_196
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, rbp
	nop	
	call	freadseek
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_176
.label_196:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	je	.label_179
	jmp	.label_182
.label_194:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	call	__uflow
	cmp	eax, -1
	jne	.label_186
	nop	
	cmp	r15, rbx
	je	.label_176
.label_182:
	mov	rbp, rbp
	mov	byte ptr [r15], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	add	rax, rbx
	nop	
	sub	r15, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r15
.label_176:
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rax], rbx
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rax], r14
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	rcx, 1
	sbb	rax, rax
	or	rax, rcx
.label_183:
	add	rsp, 0x58
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_195:
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp]
	nop	
	jmp	.label_176
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x403ac0

	.globl memchr2
	.type memchr2, @function
memchr2:
	push	r14
	push	rbx
	movzx	esi, sil
	movzx	r8d, dl
	cmp	esi, r8d
	jne	.label_198
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	jmp	memchr
.label_198:
	mov	eax, edi
	lea	rsi, [rsi]
	and	eax, 7
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_205
	nop	word ptr cs:[rax + rax]
.label_207:
	mov	rsp, rsp
	test	rax, rax
	je	.label_205
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi]
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	rsp, rsp
	je	.label_202
	cmp	eax, r8d
	lea	rdi, [rdi]
	je	.label_204
	inc	rdi
	mov	eax, edi
	and	eax, 7
	cmp	rcx, 1
	mov	rsp, rsp
	lea	rcx, [rcx - 1]
	nop	
	jne	.label_207
.label_205:
	mov	eax, esi
	shl	eax, 8
	or	eax, esi
	mov	edx, r8d
	shl	edx, 8
	or	edx, r8d
	lea	rsi, [rsi]
	cmp	rcx, 8
	nop	
	jb	.label_208
	mov	r10, rax
	mov	rsp, rsp
	shl	r10, 0x10
	lea	rdi, [rdi]
	or	r10, rax
	mov	rax, rdx
	shl	rax, 0x10
	mov	rsp, rsp
	or	rax, rdx
	mov	r9, r10
	shl	r9, 0x20
	nop	
	or	r9, r10
	lea	rsi, [rsi]
	mov	r11, rax
	nop	
	shl	r11, 0x20
	or	r11, rax
	movabs	r14, 0x8080808080808080
	movabs	r10, 0xfefefefefefefeff
	nop	word ptr cs:[rax + rax]
.label_203:
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	rbp, rbp
	mov	rcx, rax
	xor	rcx, r9
	xor	rax, r11
	lea	rdi, [rcx + r10]
	lea	rsi, [rsi]
	xor	rcx, r14
	nop	
	and	rcx, rdi
	lea	rdi, [rax + r10]
	lea	rdi, [rdi]
	xor	rax, r14
	lea	rdi, [rdi]
	and	rax, rdi
	lea	rdi, [rdi]
	or	rax, rcx
	lea	rsi, [rsi]
	lea	rdi, [rbx + 8]
	lea	rdi, [rdi]
	lea	rcx, [rdx - 8]
	mov	rsp, rsp
	and	rax, r14
	mov	rbp, rbp
	cmovne	rdi, rbx
	mov	rbp, rbp
	cmovne	rcx, rdx
	test	rax, rax
	jne	.label_208
	lea	rdi, [rdi]
	cmp	rcx, 7
	ja	.label_203
.label_208:
	xor	eax, eax
	test	rcx, rcx
	je	.label_201
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_200:
	mov	rsp, rsp
	movzx	edx, byte ptr [rdi]
	mov	rsp, rsp
	cmp	edx, esi
	lea	rsi, [rsi]
	je	.label_206
	nop	
	cmp	edx, r8d
	je	.label_199
	inc	rdi
	mov	rbp, rbp
	dec	rcx
	mov	rsp, rsp
	jne	.label_200
	lea	rdi, [rdi]
	jmp	.label_201
.label_202:
	mov	rax, rdi
	lea	rsi, [rsi]
	jmp	.label_201
.label_204:
	mov	rax, rdi
	jmp	.label_201
.label_206:
	mov	rsp, rsp
	mov	rax, rdi
	mov	rsp, rsp
	jmp	.label_201
.label_199:
	mov	rax, rdi
.label_201:
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403c80

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
	je	.label_209
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
	jl	.label_211
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_211
	mov	esi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_210
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_210:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_211:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_209:
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
	#Procedure 0x403d70
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
	#Procedure 0x403dc0
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
	#Procedure 0x403de0
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
	#Procedure 0x403e00
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
	#Procedure 0x403e70
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
	#Procedure 0x403e90
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
	je	.label_212
	test	rdx, rdx
	nop	
	je	.label_212
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_212:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ed0
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
	#Procedure 0x403f80

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
.label_282:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_255
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_261]]
.label_485:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_1
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_486:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_285
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_285
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_307:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_301
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_301:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_307
.label_285:
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
	jmp	.label_230
.label_478:
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
	jmp	.label_230
.label_481:
	lea	rsi, [rsi]
	mov	al, 1
.label_479:
	mov	rbp, rbp
	mov	r12b, 1
.label_482:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_332
	lea	rsi, [rsi]
	mov	cl, al
.label_332:
	mov	rsp, rsp
	mov	al, cl
.label_480:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_214
	test	r10, r10
	je	.label_223
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_225
.label_214:
	xor	ecx, ecx
	jmp	.label_225
.label_483:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_239
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_245
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_250
.label_484:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_230
.label_223:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_225:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_230
.label_239:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_250
.label_245:
	lea	rdi, [rdi]
	mov	eax, 1
.label_250:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_1
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
.label_230:
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
	jmp	.label_297
	nop	word ptr cs:[rax + rax]
.label_257:
	nop	
	inc	rdi
.label_297:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_333
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_337
	jmp	.label_218
	nop	dword ptr [rax + rax]
.label_333:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_222
.label_337:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_231
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_236
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_236
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
.label_236:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_271
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_246
	nop	dword ptr [rax + rax]
.label_231:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_246
	nop	word ptr cs:[rax + rax]
.label_271:
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
	jne	.label_306
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
	je	.label_246
	jmp	.label_233
.label_306:
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
.label_246:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_279
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_325]]
.label_494:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_281
	mov	rbp, rbp
	jmp	.label_219
.label_498:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_331
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_336
	nop	
	cmp	rbp, 1
	je	.label_219
	xor	r13d, r13d
	jmp	.label_224
.label_487:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_226
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_233
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_241
	mov	al, r14b
	and	al, 1
	jne	.label_244
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_217
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_217:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_258
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_258:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_266
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_266:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_265
.label_488:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_260
.label_489:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_280
.label_490:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_260
.label_491:
	mov	bl, 0x66
	jmp	.label_260
.label_492:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_280
.label_495:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_292
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_295
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
	jae	.label_298
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_298:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_315
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_315:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_321
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_321:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_292:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_224
.label_496:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_330
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_281
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_281
	mov	rbp, rbp
	jmp	.label_216
.label_497:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_220
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_227
	lea	rdi, [rdi]
	jmp	.label_234
.label_279:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_238
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
.label_240:
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
	ja	.label_264
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_264
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_224
.label_331:
	test	rdi, rdi
	jne	.label_283
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_283
.label_219:
	mov	dl, 1
.label_493:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_289
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_224
.label_226:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_257
	jmp	.label_281
.label_220:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_280
.label_227:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_278
.label_280:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_303
.label_260:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_224
	lea	rsi, [rsi]
	jmp	.label_262
.label_238:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_314
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
.label_314:
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
.label_215:
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
	je	.label_221
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_229
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_242
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_249
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_270:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_263
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_323
.label_263:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_270
.label_249:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_275
	xor	r13d, r13d
.label_275:
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
	je	.label_215
	mov	rsp, rsp
	jmp	.label_240
.label_283:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_224
.label_330:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_281
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_281
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_281
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_312
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_291
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_319
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_322
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_322:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_328
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_328:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_316
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_316:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_243
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_243:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_224
.label_281:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_224:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_326
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_252
	lea	rsi, [rsi]
	jmp	.label_256
.label_326:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_256
.label_252:
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
	jne	.label_259
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_267
	nop	word ptr cs:[rax + rax]
.label_256:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_267:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_278
	mov	rsp, rsp
	jmp	.label_262
.label_259:
	mov	bl, r15b
.label_262:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_233
	nop	
	cmp	r9d, 2
	jne	.label_287
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_287
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_235
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_235:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_299
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_299:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_335
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_335:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_287:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_310
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_310:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_313
.label_336:
	xor	r13d, r13d
	nop	
	jmp	.label_224
.label_264:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_318
	nop	dword ptr [rax + rax]
.label_272:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_318:
	test	cl, cl
	je	.label_324
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_300
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_329
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_329:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_300
	nop	dword ptr [rax]
.label_324:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_233
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_228
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_228
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_302
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_302:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_247
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_247:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_274
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_274:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_228:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_268
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_268:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_277
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_277:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_288
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
.label_288:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_300:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_278
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_308
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_308
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_311
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_311:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_317
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_317:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_308:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_272
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_272
	nop	word ptr cs:[rax + rax]
.label_278:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_213
	mov	rsp, rsp
	and	al, 1
	jne	.label_213
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_253
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_253:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_293
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_293:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_213:
	mov	rsp, rsp
	mov	bl, r15b
.label_313:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_232
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_232:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_257
.label_241:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_265
.label_244:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_265:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_269
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_269:
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
	je	.label_294
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_305
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_334
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_290
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_290:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_296
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_296:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_224
.label_294:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_224
.label_305:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_224
.label_334:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_224
.label_229:
	xor	r13d, r13d
.label_221:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_240
.label_242:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_320
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_284:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_327
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_284
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_240
.label_320:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_240
.label_327:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_240
.label_312:
	xor	r13d, r13d
	jmp	.label_224
.label_291:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_224
.label_218:
	nop	
	mov	r13, rdi
.label_222:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_237
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_251
.label_237:
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
	je	.label_254
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_254
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_273
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_254
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_282
.label_254:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_286
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_286
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_286
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_304:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_276
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_276:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_304
.label_286:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_309
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_309
.label_289:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_233
.label_323:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_233
.label_251:
	nop	
	mov	rbp, r13
	jmp	.label_233
.label_303:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_233:
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
.label_248:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_309:
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
.label_273:
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
	jmp	.label_248
.label_295:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_233
.label_234:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_233
.label_216:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_233
.label_319:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_233
.label_255:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405500
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
	#Procedure 0x405640
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
	je	.label_338
	mov	qword ptr [rax], rbx
.label_338:
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
	#Procedure 0x405790
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_339
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_342:
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
	jl	.label_342
.label_339:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_341
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_343]], OFFSET FLAT:slot0
.label_341:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_340
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_340:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405850
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x405860

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
	js	.label_347
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_349
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_345
.label_349:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_350
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
	jne	.label_346
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_346:
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
.label_345:
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
	ja	.label_344
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
	je	.label_348
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_348:
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
.label_344:
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
.label_347:
	lea	rdi, [rdi]
	call	abort
.label_350:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405ad0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ae0
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
	#Procedure 0x405b10
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
	#Procedure 0x405b40
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
	je	.label_351
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
.label_351:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405bd0
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
	je	.label_352
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
.label_352:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c70
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
	je	.label_353
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
.label_353:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d00
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
	je	.label_354
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
.label_354:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405d70
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_355]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
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
	#Procedure 0x405e10
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
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
	#Procedure 0x405eb0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_355]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
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
	#Procedure 0x405f20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
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
	#Procedure 0x405f90

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
	je	.label_358
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
.label_358:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406070
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_355]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_359
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_359
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
.label_359:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406100
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_360
	test	rdx, rdx
	je	.label_360
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
.label_360:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406190
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_355]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_361
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_361
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
.label_361:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406230
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_355]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_362
	test	rsi, rsi
	je	.label_362
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
.label_362:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062d0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062e0
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
	#Procedure 0x406300
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
	#Procedure 0x406320

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
	#Procedure 0x406350

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
	jne	.label_365
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_363
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_364
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_364
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_364
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_364
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_364
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_364
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_365
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_365
.label_363:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_364
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_364
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_364
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_364
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_364
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_364
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_366
.label_364:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_365:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_366:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_365
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_365
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4064c0

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
	je	.label_367
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
	jmp	.label_369
.label_367:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_369:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	ja	.label_371
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_372]]
.label_451:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_371:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_374
.label_452:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_453:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_454:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_1
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
	jmp	.label_376
.label_455:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
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
	jmp	.label_375
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
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
	jmp	.label_373
.label_457:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_2
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
.label_373:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_375:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_376:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_370
.label_459:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_374:
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
	jmp	.label_368
.label_458:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
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
.label_368:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_370:
	mov	rbp, rbp
	call	__fprintf_chk
.label_450:
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
	#Procedure 0x4068b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_377:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_377
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068e0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_380:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_378
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_379
	nop	word ptr cs:[rax + rax]
.label_378:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_379:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_381
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_380
.label_381:
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
	#Procedure 0x406970

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_382
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
.label_382:
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
.label_384:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_383
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_385
	nop	dword ptr [rax + rax]
.label_383:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_385:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_386
	inc	r9
	cmp	r9, 0xa
	jb	.label_384
.label_386:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ab0
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
	mov	esi, OFFSET FLAT:.str.19
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
	#Procedure 0x406b40
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
	jb	.label_387
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_388
	test	rax, rax
	je	.label_387
.label_388:
	nop	
	pop	rbx
	ret	
.label_387:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_389
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_390
.label_389:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_390:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bc0
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
	jb	.label_392
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_391
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_391
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_391:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_393
	test	rax, rax
	je	.label_392
.label_393:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_392:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c40

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_394
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_394
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_394:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_395
	test	rax, rax
	nop	
	je	.label_396
.label_395:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_396:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c90
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_401
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_397
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_403
.label_401:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_400
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_400:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_402
.label_403:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_399
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_399
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_399:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_398
	test	rax, rax
	mov	rbp, rbp
	je	.label_397
.label_398:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_397:
	call	xalloc_die
.label_402:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d70
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_404
	test	rax, rax
	mov	rbp, rbp
	je	.label_405
.label_404:
	pop	rbx
	ret	
.label_405:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406d90
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_409
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_410
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_408
	call	free
	xor	eax, eax
	jmp	.label_406
.label_409:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_407
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_408:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_406
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_407
.label_406:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_407:
	mov	rbp, rbp
	call	xalloc_die
.label_410:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406e20
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
	je	.label_411
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_412
.label_411:
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
.label_412:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e80
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
	jb	.label_413
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_413
	pop	rcx
	ret	
.label_413:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406eb0

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
	je	.label_415
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_414
.label_415:
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
.label_414:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406f10

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
	je	.label_416
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_417
.label_416:
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
.label_417:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406f70

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
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
	#Procedure 0x406fc0

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	mov	rbp, rbp
	call	__strndup
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_418
	pop	rcx
	lea	rsi, [rsi]
	ret	
.label_418:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406fe0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_419
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_420
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
	je	.label_420
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
.label_419:
	mov	ecx, 1
.label_420:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407050

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
	js	.label_421
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_423
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
	je	.label_421
.label_423:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_421
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_422
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_422:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_421:
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
	#Procedure 0x407100

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_424
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_424
	test	byte ptr [rbx + 1], 1
	je	.label_424
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_424:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407140

	.globl freadptr
	.type freadptr, @function
freadptr:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_425
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	sub	rdx, rcx
	lea	rsi, [rsi]
	je	.label_425
	mov	qword ptr [rsi], rdx
	mov	rax, rcx
.label_425:
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x407180

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
	jne	.label_426
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_426
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_427
.label_426:
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
.label_427:
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
	je	.label_428
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_428:
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
	#Procedure 0x407230

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
	je	.label_429
	nop	
	cmp	r15, -2
	jb	.label_429
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_429
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_429:
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
	#Procedure 0x4072c0

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
	jne	.label_430
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_431
	test	cl, cl
	mov	rsp, rsp
	jne	.label_431
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_431
.label_430:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_431
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_431:
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
	#Procedure 0x407350

	.globl freadseek
	.type freadseek, @function
freadseek:
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x1008
	mov	rbx, rsi
	mov	r14, rdi
	nop	
	xor	r15d, r15d
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_432
	nop	
	mov	rdi, r14
	nop	
	call	freadahead
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rdi, [rdi]
	lea	r12, [rsp]
	nop	dword ptr [rax + rax]
.label_436:
	test	rbp, rbp
	je	.label_437
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	call	freadptr
	test	rax, rax
	je	.label_438
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_438
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovae	rax, rbx
	mov	rbp, rbp
	add	qword ptr [r14 + 8], rax
	sub	rbx, rax
	mov	rsp, rsp
	je	.label_432
	sub	rbp, rax
	lea	rsi, [rsi]
	je	.label_437
.label_438:
	mov	rdi, r14
	call	fgetc
	cmp	eax, -1
	je	.label_433
	mov	rax, rbx
	mov	rsp, rsp
	dec	rax
	setne	al
	movzx	eax, al
	lea	rdi, [rdi]
	sub	rbp, rax
	mov	rbp, rbp
	dec	rbx
	mov	rsp, rsp
	jne	.label_436
	lea	rsi, [rsi]
	jmp	.label_432
.label_437:
	mov	rdi, r14
	call	fileno
	test	eax, eax
	mov	rbp, rbp
	js	.label_435
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_435
	mov	edx, 1
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	call	rpl_fseeko
	mov	r15d, eax
	jmp	.label_432
.label_435:
	lea	rsi, [rsi]
	mov	r12d, 0x1000
	lea	rsi, [rsi]
	lea	r15, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_434:
	lea	rsi, [rsi]
	cmp	rbx, 0x1000
	mov	rbp, rbp
	mov	rbp, rbx
	cmova	rbp, r12
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	rcx, r14
	call	fread
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rbp, r13
	jb	.label_433
	lea	rdi, [rdi]
	sub	rbx, rbp
	nop	
	jne	.label_434
	xor	r15d, r15d
	jmp	.label_432
.label_433:
	mov	rdi, r14
	call	ferror
	lea	rsi, [rsi]
	neg	eax
	sbb	r15d, r15d
.label_432:
	mov	eax, r15d
	lea	rdi, [rdi]
	add	rsp, 0x1008
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407520

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
	je	.label_440
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_439
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_441
.label_439:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_440
.label_441:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_440:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407570

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
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_442
	nop	
	mov	rax, rcx
.label_442:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075b0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	nop	
	ja	.label_443
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	nop	
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	je	.label_444
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_444:
	lea	rdi, [rdi]
	add	rax, rcx
.label_443:
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x4075f0

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
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]