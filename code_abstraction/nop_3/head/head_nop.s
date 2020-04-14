	.section	.text
	.align	32
	#Procedure 0x4015e0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_8
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.31
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.18
	nop	
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	mov	rbp, rbp
	xor	esi, esi
	call	setlocale
	mov	rbp, rbp
	test	rax, rax
	je	.label_7
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.33
	nop	
	mov	edx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strncmp
	test	eax, eax
	mov	rsp, rsp
	je	.label_7
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
.label_7:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	nop	
	mov	ecx, OFFSET FLAT:.str.9
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.37
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401910

	.globl main
	.type main, @function
main:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x2198
	mov	rbp, rbp
	mov	rbx, rsi
	mov	ebp, edi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	set_program_name
	mov	rbp, rbp
	mov	edi, 6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	nop	
	call	textdomain
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + print_headers]],  0
	mov	byte ptr [byte ptr [rip + line_end]],  1
	lea	rdi, [rdi]
	mov	r15b, 1
	nop	
	xor	r14d, r14d
	lea	rdi, [rdi]
	cmp	ebp, 2
	mov	rsp, rsp
	jl	.label_69
	mov	r12, qword ptr [rbx + 8]
	movzx	eax, byte ptr [r12]
	cmp	eax, 0x2d
	jne	.label_69
	lea	rsi, [rsi]
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_69
	lea	rsi, [rsi]
	lea	r13, [rbx + 8]
	inc	r12
	mov	rsp, rsp
	mov	rax, r12
	nop	dword ptr [rax]
.label_86:
	movsx	ecx, byte ptr [rax + 1]
	inc	rax
	mov	rsp, rsp
	lea	edx, [rcx - 0x30]
	nop	
	cmp	edx, 0xa
	jb	.label_86
	test	cl, cl
	mov	rsp, rsp
	je	.label_90
	nop	
	mov	r8, rbx
	nop	
	xor	esi, esi
	mov	r15b, 1
	mov	rsp, rsp
	mov	rbx, rax
	nop	
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_114:
	mov	rbp, rbp
	mov	dl, sil
	nop	
	movsx	edi, cl
	mov	rbp, rbp
	cmp	edi, 0x70
	jg	.label_96
	add	edi, -0x62
	mov	rbp, rbp
	cmp	edi, 0xb
	ja	.label_98
	lea	rsi, [rsi]
	xor	r15d, r15d
	xor	esi, esi
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_100]]
.label_456:
	xor	r15d, r15d
	mov	sil, cl
	jmp	.label_103
	nop	dword ptr [rax + rax]
.label_96:
	cmp	edi, 0x71
	je	.label_105
	mov	rbp, rbp
	cmp	edi, 0x76
	nop	
	je	.label_107
	cmp	edi, 0x7a
	jne	.label_98
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + line_end]],  0
	mov	sil, dl
	nop	
	jmp	.label_103
.label_457:
	mov	r15b, 1
	lea	rdi, [rdi]
	mov	sil, dl
	jmp	.label_103
.label_105:
	mov	r14d, 2
	nop	
	mov	sil, dl
	jmp	.label_103
.label_107:
	mov	r14d, 1
	mov	sil, dl
	nop	word ptr [rax + rax]
.label_103:
	mov	cl, byte ptr [rbx + 1]
	mov	rbp, rbp
	inc	rbx
	lea	rdi, [rdi]
	test	cl, cl
	mov	rbp, rbp
	jne	.label_114
	nop	
	mov	byte ptr [rax], sil
	test	sil, sil
	mov	rbx, r8
	je	.label_117
	nop	
	mov	byte ptr [rax + 1], 0
.label_117:
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_118
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	lea	rsi, [rsi]
	jmp	.label_120
.label_69:
	mov	rsp, rsp
	mov	r12d, 0xa
	mov	r13, rbx
.label_104:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20f0], rax
	lea	rdi, [rdi]
	jmp	.label_19
.label_24:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + line_end]],  0
	nop	
.label_19:
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.15
	nop	
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	nop	
	mov	edi, ebp
	mov	rsi, r13
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x70
	lea	rdi, [rdi]
	jle	.label_130
	cmp	ebx, 0x79
	nop	
	jg	.label_132
	nop	
	mov	r14d, 2
	cmp	ebx, 0x71
	je	.label_19
	mov	rsp, rsp
	cmp	ebx, 0x76
	jne	.label_80
	nop	
	mov	r14d, 1
	jmp	.label_19
	nop	word ptr cs:[rax + rax]
.label_130:
	mov	rbp, rbp
	cmp	ebx, 0x62
	nop	
	jle	.label_143
	mov	rsp, rsp
	cmp	ebx, 0x63
	je	.label_144
	cmp	ebx, 0x6e
	mov	rsp, rsp
	jne	.label_80
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x2d
	sete	al
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20f0], rax
	mov	rbp, rbp
	jne	.label_145
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + optarg]],  rbx
.label_145:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.38
	lea	rdi, [rdi]
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	r8, rax
	call	xdectoumax
	lea	rsi, [rsi]
	mov	r12, rax
	mov	rsp, rsp
	mov	r15b, 1
	mov	rsp, rsp
	jmp	.label_19
	nop	dword ptr [rax + rax]
.label_132:
	mov	rsp, rsp
	cmp	ebx, 0x7a
	je	.label_24
	cmp	ebx, 0x80
	mov	rsp, rsp
	jne	.label_80
	nop	
	mov	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jmp	.label_19
.label_144:
	nop	
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	lea	rdi, [rdi]
	sete	al
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20f0], rax
	jne	.label_32
	inc	rbx
	mov	qword ptr [word ptr [rip + optarg]],  rbx
.label_32:
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.38
	xor	r9d, r9d
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	lea	rsi, [rsi]
	jmp	.label_19
.label_143:
	cmp	ebx, -1
	jne	.label_45
	mov	rbp, rbp
	cmp	r14d, 1
	je	.label_47
	test	r14d, r14d
	jne	.label_48
	lea	rsi, [rsi]
	lea	eax, [rbp - 1]
	cmp	dword ptr [dword ptr [rip + optind]],  eax
	nop	
	jge	.label_48
.label_47:
	mov	byte ptr [byte ptr [rip + print_headers]],  1
.label_48:
	and	r15b, 1
	nop	
	mov	qword ptr [rsp + 0x20c8], r15
	nop	
	jne	.label_52
	nop	
	test	r12, r12
	lea	rsi, [rsi]
	jns	.label_52
	mov	rax, qword ptr [rsp + 0x20f0]
	test	al, al
	nop	
	jne	.label_55
.label_52:
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	cmp	eax, ebp
	lea	rax, [r13 + rax*8]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:main.default_file_list
	mov	rsp, rsp
	cmovl	rcx, rax
	mov	qword ptr [rsp + 0x2190], rcx
	mov	rdi, qword ptr [rcx]
	mov	r14b, 1
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r12
	je	.label_123
	mov	qword ptr [rsp + 0x10], r12
	mov	rbp, rbp
	lea	rax, [r12 + 0x2000]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x2120], rax
	lea	rsi, [rsi]
	lea	rax, [r12 + r12 + 0x4000]
	mov	qword ptr [rsp + 0x2128], rax
	mov	eax, r12d
	lea	rsi, [rsi]
	and	eax, 0x1fff
	mov	qword ptr [rsp + 0xa8], rax
	mov	ecx, 0x2000
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x2170], rcx
	lea	rsi, [rsi]
	lea	rax, [rcx + r12]
	shr	rax, 0xd
	mov	qword ptr [rsp + 0x20e8], rax
	inc	rax
	mov	qword ptr [rsp + 0x2138], rax
	cmp	rax, 0x10
	lea	rsi, [rsi]
	mov	ecx, 0x10
	cmovb	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20b8], rcx
	shr	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20f8], rax
	mov	r14b, 1
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_67
.label_90:
	mov	byte ptr [rax], 0
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	r15b, 1
.label_118:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.39
.label_120:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	r8, rax
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.38
	xor	r9d, r9d
	mov	rdi, r12
	call	xdectoumax
	mov	r12, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbx]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rax
	dec	ebp
	jmp	.label_104
.label_102:
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rsp + 0x2150], rax
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	r15, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x2178]
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x2100]
	mov	rsp, rsp
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r14d
	mov	rbp, rbp
	mov	rdx, r15
	jmp	.label_66
.label_11:
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2150], rax
	mov	r15d, dword ptr [rsp + 0x20dc]
	jmp	.label_40
	nop	word ptr [rax + rax]
.label_67:
	mov	qword ptr [rsp + 0x2130], rax
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_115
	mov	rbp, rbp
	cmp	byte ptr [rdi + 1], 0
	je	.label_126
.label_115:
	xor	r15d, r15d
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbx, rdi
	mov	rbp, rbp
	call	open
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2158], rax
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_131
	mov	qword ptr [rsp + 0x2178], rbx
	jmp	.label_135
	nop	word ptr cs:[rax + rax]
.label_131:
	mov	rbp, rbp
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	r15, rax
	nop	
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r15
	lea	rsi, [rsi]
	jmp	.label_146
.label_126:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	eax, eax
	mov	qword ptr [rsp + 0x2158], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	nop	
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x2178], rax
	mov	r15b, 1
.label_135:
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	jne	.label_9
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	and	al, 1
	mov	edx, OFFSET FLAT:.str_0
	nop	
	mov	eax, OFFSET FLAT:.str.54
	mov	rsp, rsp
	cmovne	rdx, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.53
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x2178]
	nop	
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
.label_9:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20f0]
	test	al, al
	mov	rbp, rbp
	je	.label_30
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x2158]
	lea	rdx, [rsp + 0x18]
	call	__fxstat
	test	eax, eax
	je	.label_34
	mov	byte ptr [rsp + 0x216f], r14b
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x2150], rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x2178]
	nop	
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
	jmp	.label_40
	nop	word ptr cs:[rax + rax]
.label_30:
	mov	dword ptr [rsp + 0x20dc], r15d
	mov	r15, qword ptr [rsp + 0x2158]
	mov	r12b, r14b
	mov	rax, qword ptr [rsp + 0x20c8]
	test	al, al
	je	.label_53
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0x2150], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	rbp, rbp
	mov	rbp, rax
	mov	r14b, r12b
	lea	rsi, [rsi]
	lea	r12, [rsp + 0xb0]
	je	.label_58
	nop	word ptr cs:[rax + rax]
.label_133:
	mov	rbp, rbp
	mov	edx, 0x2000
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsi, r12
	call	safe_read
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_72
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_58
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	nop	
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_83:
	cmp	rbx, rax
	jae	.label_137
	mov	rsp, rsp
	movsx	edx, byte ptr [rsp + rbx + 0xb0]
	lea	rdi, [rdi]
	inc	rbx
	cmp	edx, ecx
	jne	.label_83
	dec	rbp
	jne	.label_83
	mov	r13, rbx
	mov	rbp, rbp
	sub	r13, rax
	mov	edx, 1
	mov	edi, r15d
	nop	
	mov	rsi, r13
	call	lseek
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	jns	.label_92
	mov	edi, 1
	mov	esi, r15d
	lea	rdx, [rsp + 0x18]
	mov	rsp, rsp
	call	__fxstat
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_97
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x30]
	mov	ecx, 0xf000
	lea	rdi, [rdi]
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_92
.label_97:
	mov	edx, 1
	mov	edi, r15d
	mov	rsi, r13
	mov	rbp, rbp
	call	lseek
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	jns	.label_92
	call	__errno_location
	mov	eax, dword ptr [rax]
	nop	
	mov	dword ptr [rsp + 0x20c0], eax
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2140], rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x2178]
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	r12b, r14b
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	r13, rax
	lea	rsi, [rsp + 0x2100]
	nop	
	call	offtostr
	mov	rbp, rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x20c0]
	mov	rdx, qword ptr [rsp + 0x2140]
	mov	rsp, rsp
	mov	rcx, r13
	lea	rdi, [rdi]
	mov	r14b, r12b
	lea	r12, [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	r8, rbp
	lea	rdi, [rdi]
	call	error
.label_92:
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_137:
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_125
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, r12
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	mov	rbp, rbp
	jb	.label_21
.label_125:
	test	rbp, rbp
	mov	rsp, rsp
	jne	.label_133
	jmp	.label_58
.label_34:
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	nop	
	and	al, 1
	mov	rax, -1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_136
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x216f], r14b
	jmp	.label_38
.label_53:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x2150], rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ebx, 0x2000
	lea	rsi, [rsi]
	mov	r14, rax
	je	.label_25
	nop	word ptr cs:[rax + rax]
.label_23:
	cmp	r14, rbx
	nop	
	cmovb	rbx, r14
	mov	rbp, rbp
	mov	edi, r15d
	lea	rsi, [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	safe_read
	mov	rsp, rsp
	mov	rbp, rax
	test	rbp, rbp
	je	.label_25
	lea	rsi, [rsi]
	cmp	rbp, -1
	nop	
	je	.label_10
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rsp, rsp
	lea	rdi, [rsp + 0xb0]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	fwrite_unlocked
	cmp	rax, rbp
	mov	rbp, rbp
	jb	.label_21
	sub	r14, rbp
	jne	.label_23
	jmp	.label_25
.label_136:
	nop	
	mov	edx, dword ptr [rsp + 0x30]
	mov	ecx, 0x2000
	or	edx, ecx
	lea	rdi, [rdi]
	and	edx, 0xf000
	nop	
	cmp	edx, 0xa000
	mov	rsp, rsp
	jne	.label_27
	nop	
	mov	byte ptr [rsp + 0x216f], r14b
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x2158]
	nop	
	call	lseek
	lea	rsi, [rsi]
	test	rax, rax
	js	.label_35
	mov	cl,  byte ptr [byte ptr [rip + presume_input_pipe]]
	jmp	.label_38
.label_27:
	mov	byte ptr [rsp + 0x216f], r14b
	xor	ecx, ecx
.label_38:
	mov	qword ptr [rsp + 0x2180], rax
	mov	r14, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x50]
	test	rax, rax
	mov	rsp, rsp
	sets	dl
	lea	rsi, [rsi]
	or	dl, cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20c8]
	test	al, al
	nop	
	je	.label_41
	lea	rdi, [rdi]
	test	dl, 1
	mov	rbp, rbp
	jne	.label_50
	lea	rsi, [rsi]
	movabs	rcx, 0x2000000000000001
	nop	
	cmp	rsi, rcx
	mov	rsp, rsp
	mov	ecx, 0x200
	lea	rdi, [rdi]
	cmovb	rcx, rsi
	nop	
	test	rsi, rsi
	mov	eax, 0x200
	cmovle	rcx, rax
	lea	rdi, [rdi]
	cmp	rcx, r14
	jge	.label_50
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2150], rax
	lea	rdi, [rdi]
	mov	rax, r14
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x2180]
	nop	
	sub	rax, rcx
	jle	.label_40
	mov	rcx, rax
	lea	rsi, [rsi]
	sar	rcx, 0x3f
	shr	rcx, 0x33
	mov	rbp, rbp
	add	rcx, rax
	mov	rsp, rsp
	and	rcx, 0xffffffffffffe000
	nop	
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	ebx, 0x2000
	mov	rsp, rsp
	cmovne	rbx, rax
	sub	r14, rbx
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x2158]
	mov	rsi, r14
	call	lseek
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	js	.label_78
	mov	dword ptr [rsp + 0x20dc], r15d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x2158]
	lea	r12, [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	safe_read
	mov	rbp, rax
	cmp	rbp, -1
	mov	rsp, rsp
	je	.label_84
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	test	rax, rax
	mov	rbx, rax
	mov	rbp, rbp
	je	.label_59
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_59
	movsx	eax, byte ptr [rbp + r12 - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	mov	ecx, 0
	mov	edx, 0xa
	mov	rsp, rsp
	cmovne	ecx, edx
	mov	rbp, rbp
	cmp	eax, ecx
	setne	al
	movzx	eax, al
	mov	rbx, qword ptr [rsp + 0x10]
	sub	rbx, rax
.label_59:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_75
.label_76:
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	r15d, 0
	mov	rbp, rbp
	mov	eax, 0xa
	cmovne	r15d, eax
	nop	
.label_140:
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_109
	mov	rsp, rsp
	mov	rdi, r12
	mov	esi, r15d
	mov	rdx, rbp
	call	memrchr
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_109
	mov	rbp, rbp
	sub	rbp, r12
	mov	rbp, rbp
	dec	rbx
	mov	rsp, rsp
	cmp	rbx, -1
	jne	.label_140
	mov	rbp, rbp
	jmp	.label_112
.label_109:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x2180]
	cmp	r14, rax
	nop	
	je	.label_11
	mov	rbp, rbp
	add	r14, -0x2000
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x2158]
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rsp, rsp
	mov	rsi, r14
	mov	rsp, rsp
	call	lseek
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_71
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x2150], rax
	mov	rsp, rsp
	mov	edx, 0x2000
	mov	edi, ebp
	mov	rsi, r12
	lea	rdi, [rdi]
	call	safe_read
	mov	rbp, rax
	lea	rdi, [rdi]
	cmp	rbp, -1
	mov	rbp, rbp
	je	.label_84
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_76
	lea	rsi, [rsi]
	jmp	.label_95
.label_41:
	test	dl, 1
	jne	.label_129
	lea	rsi, [rsi]
	movabs	rcx, 0x2000000000000001
	mov	rbp, rbp
	cmp	rsi, rcx
	mov	ecx, 0x200
	lea	rdi, [rdi]
	cmovb	rcx, rsi
	test	rsi, rsi
	lea	rsi, [rsi]
	mov	eax, 0x200
	cmovle	rcx, rax
	mov	rbp, rbp
	cmp	rcx, r14
	lea	rsi, [rsi]
	jge	.label_129
	nop	
	sub	r14, qword ptr [rsp + 0x2180]
	lea	rsi, [rsi]
	mov	esi, 0
	lea	rsi, [rsi]
	cmovns	rsi, r14
	mov	al, 1
	mov	qword ptr [rsp + 0x2150], rax
	sub	rsi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jbe	.label_40
	mov	rdi, qword ptr [rsp + 0x2158]
	call	copy_fd
	mov	rbp, rbp
	test	eax, eax
	je	.label_40
	mov	rsp, rsp
	mov	edi, eax
	mov	rsi, qword ptr [rsp + 0x2178]
	call	diagnose_copy_fd_failure
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_151
.label_50:
	lea	rdi, [rdi]
	mov	edi, 0x2018
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20e0], rbx
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x2000], xmm0
	mov	qword ptr [rbx + 0x2010], 0
	mov	rbp, rbp
	mov	edi, 0x2018
	call	xmalloc
	mov	r13, rax
	cmp	qword ptr [rsp + 0x10], 0
	lea	rax, [rbx + 0x2000]
	mov	qword ptr [rsp + 0x20b0], rax
	lea	rax, [rbx + 0x2008]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2140], rax
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x2180]
	je	.label_22
	mov	dword ptr [rsp + 0x20dc], r15d
	nop	
	lea	r14, [r13 + 0x2008]
	mov	r15, r13
	lea	rsi, [rsi]
	add	r15, 0x2000
	mov	rax, qword ptr [rsp + 0x2180]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x2148], rax
	nop	
	mov	qword ptr [rsp + 0x2160], r13
	mov	rax, qword ptr [rsp + 0x20e0]
	mov	qword ptr [rsp + 0x2188], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x2140]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20d0], rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x2150], rax
	jmp	.label_33
	nop	word ptr cs:[rax + rax]
.label_17:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x2150], rsi
	mov	rsp, rsp
	add	rdi, qword ptr [rsp + 0x2188]
	nop	
	mov	r13, r15
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x20c0]
	mov	rax, qword ptr [r15]
	lea	rsi, [rsi]
	add	qword ptr [rbx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [rsp + 0x20d0]
	lea	rdi, [rdi]
	add	qword ptr [rcx], rax
.label_33:
	mov	edx, 0x2000
	mov	rdi, qword ptr [rsp + 0x2158]
	mov	rsi, r13
	mov	rbp, rbp
	call	safe_read
	mov	rbp, rax
	lea	rax, [rbp + 1]
	cmp	rax, 2
	nop	
	jb	.label_65
	mov	rsp, rsp
	mov	qword ptr [r15], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20c0], r15
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r14], xmm0
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	mov	rsp, rsp
	and	al, 1
	mov	ebx, 0
	mov	eax, 0xa
	nop	
	cmovne	ebx, eax
	mov	rdi, r13
	mov	rsp, rsp
	mov	r15, r13
	mov	esi, ebx
	mov	rdx, rbp
	mov	rbp, rbp
	call	memchr
	nop	
	test	rax, rax
	je	.label_77
	mov	rcx, qword ptr [rsp + 0x2160]
	lea	r12, [rcx + rbp]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_87:
	nop	
	inc	rax
	inc	r13
	mov	qword ptr [r14], r13
	mov	rsp, rsp
	mov	rdx, r12
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	esi, ebx
	call	memchr
	test	rax, rax
	nop	
	jne	.label_87
	mov	rsp, rsp
	jmp	.label_88
	nop	
.label_77:
	xor	r13d, r13d
.label_88:
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x2150]
	lea	rsi, [rsi]
	add	rsi, r13
	mov	rbx, qword ptr [rsp + 0x20b0]
	nop	
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rax, rbp
	add	rax, rdi
	cmp	rax, 0x1fff
	mov	rsp, rsp
	jbe	.label_17
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x2160]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x2188]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x2010], rbx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x2140]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, rsi
	sub	rcx, rax
	nop	
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	rcx, rdx
	ja	.label_142
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2150], rsi
	mov	edi, 0x2018
	mov	rbp, rbp
	call	xmalloc
	mov	rbp, rbp
	mov	r13, rax
	lea	r15, [r13 + 0x2000]
	mov	r14, r13
	mov	rsp, rsp
	add	r14, 0x2008
	mov	rbp, rbp
	lea	rax, [rbx + 0x2008]
	nop	
	mov	qword ptr [rsp + 0x20d0], rax
	mov	rax, rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2188], rax
	lea	rsi, [rsi]
	lea	rax, [rbx + 0x2000]
	mov	qword ptr [rsp + 0x20b0], rax
	mov	qword ptr [rsp + 0x2160], r13
	nop	
	jmp	.label_33
.label_142:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x20e0]
	mov	r12, qword ptr [rbp + 0x2000]
	mov	rsp, rsp
	test	r12, r12
	nop	
	mov	r14, qword ptr [rsp + 0x2148]
	je	.label_119
	mov	rsp, rsp
	mov	r15, rsi
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, r12
	call	fwrite_unlocked
	lea	rsi, [rsi]
	cmp	rax, r12
	jb	.label_21
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x2140]
	mov	rax, qword ptr [rax]
	mov	rsi, r15
.label_119:
	add	r14, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x2148], r14
	mov	r13, rbp
	lea	rdi, [rdi]
	sub	rsi, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x2150], rsi
	lea	r15, [rbp + 0x2000]
	lea	rsi, [rsi]
	mov	r14, rbp
	mov	rax, qword ptr [rbp + 0x2010]
	lea	rdi, [rdi]
	add	r14, 0x2008
	lea	rcx, [rbx + 0x2000]
	mov	qword ptr [rsp + 0x20b0], rcx
	lea	rdi, [rdi]
	lea	rcx, [rbx + 0x2008]
	mov	qword ptr [rsp + 0x20d0], rcx
	lea	rdi, [rdi]
	lea	rcx, [rax + 0x2008]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2140], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2188], rbx
	mov	qword ptr [rsp + 0x20e0], rax
	mov	qword ptr [rsp + 0x2160], r13
	mov	rsp, rsp
	jmp	.label_33
	nop	word ptr cs:[rax + rax]
.label_22:
	lea	rsi, [rsi]
	mov	edx, 0x2000
	mov	rdi, qword ptr [rsp + 0x2158]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	safe_read
	mov	rbp, rax
	mov	rbp, rbp
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_14
	add	r12, rbp
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	esi, 1
	mov	rdi, r13
	mov	rdx, rbp
	call	fwrite_unlocked
	cmp	rax, rbp
	jae	.label_22
	mov	rsp, rsp
	jmp	.label_21
.label_129:
	cmp	qword ptr [rsp + 0x10], 0x100000
	ja	.label_28
	nop	
	mov	dword ptr [rsp + 0x20dc], r15d
	mov	r12, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	xor	edx, edx
	movabs	rax, 0x7fffffffffffffff
	mov	rbx, qword ptr [rsp + 0x2120]
	mov	rbp, rbp
	div	rbx
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rsi, [rsi]
	jbe	.label_93
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x2128]
	call	xmalloc
	nop	
	mov	qword ptr [rsp + 0x2140], rax
	mov	qword ptr [rsp + 0xb0], rax
	mov	rcx, rax
	add	rcx, rbx
	mov	qword ptr [rsp + 0xb8], rcx
	mov	r13b, 1
	mov	dword ptr [rsp + 0x2150], 0
	mov	rsi, rax
	nop	
	mov	r14, qword ptr [rsp + 0x2180]
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_39
	nop	dword ptr [rax + rax]
.label_99:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x10]
	xor	r15b, 1
	movzx	eax, r15b
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + rax*8 + 0xb0]
	xor	r13d, r13d
	nop	
	mov	r14, rbx
.label_39:
	mov	qword ptr [rsp + 0x20c0], rsi
	movzx	r15d, r15b
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x2158]
	mov	rbx, qword ptr [rsp + 0x2120]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	full_read
	mov	rbp, rax
	cmp	rbp, rbx
	mov	eax, 0
	lea	rdi, [rdi]
	jae	.label_60
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	test	ebx, ebx
	jne	.label_150
	lea	rsi, [rsi]
	mov	rax, r12
	mov	rbp, rbp
	sub	rax, rbp
	lea	rdi, [rdi]
	mov	ecx, 0
	mov	rbp, rbp
	cmovb	rax, rcx
	mov	rsp, rsp
	test	r13b, r13b
	cmovne	rax, rcx
	lea	rdi, [rdi]
	mov	cl, 1
	mov	dword ptr [rsp + 0x2150], ecx
.label_60:
	nop	
	test	r13b, r13b
	mov	rsp, rsp
	je	.label_73
	lea	rsi, [rsi]
	mov	rbx, r14
	jmp	.label_74
	nop	word ptr cs:[rax + rax]
.label_73:
	mov	rbx, r12
	sub	rbx, rax
	lea	rsi, [rsi]
	add	rbx, r14
	sub	r12, rax
	nop	
	je	.label_74
	mov	rax, r15
	mov	rsp, rsp
	xor	rax, 1
	mov	rdi, qword ptr [rsp + rax*8 + 0xb0]
	mov	eax, 0x2000
	nop	
	add	rdi, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rbp, rbp
	mov	rdx, r12
	call	fwrite_unlocked
	cmp	rax, r12
	nop	
	jb	.label_21
	nop	
.label_74:
	mov	rax, rbp
	lea	rsi, [rsi]
	sub	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jbe	.label_68
	add	rbx, rax
	lea	rdi, [rdi]
	sub	rbp, qword ptr [rsp + 0x10]
	je	.label_68
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	esi, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x20c0]
	mov	rdx, rbp
	call	fwrite_unlocked
	cmp	rax, rbp
	jb	.label_21
.label_68:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x2150]
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	je	.label_99
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2150], rax
	jmp	.label_101
.label_65:
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x2148]
	mov	rbp, rbp
	jmp	.label_106
.label_28:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20c0], rax
	mov	dword ptr [rsp + 0x20dc], r15d
	mov	rax, qword ptr [rsp + 0x2180]
	mov	qword ptr [rsp + 0x2188], rax
	xor	ecx, ecx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20d0], rax
	lea	rdi, [rdi]
	mov	r14d, 1
	xor	r15d, r15d
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20b0], rax
	nop	dword ptr [rax + rax]
.label_36:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2140], r14
	nop	
	cmp	rcx, r15
	jne	.label_116
	lea	rsi, [rsi]
	test	rcx, rcx
	nop	
	mov	rbx, qword ptr [rsp + 0x20b8]
	nop	
	mov	rbp, qword ptr [rsp + 0x2158]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x20c0]
	lea	rdi, [rdi]
	je	.label_62
	cmp	rcx, qword ptr [rsp + 0x20f8]
	lea	rbx, [rcx + rcx]
	lea	rdi, [rdi]
	cmova	rbx, qword ptr [rsp + 0x2138]
.label_62:
	mov	rax, rbx
	mov	rsp, rsp
	shr	rax, 0x3c
	jne	.label_93
	mov	rbp, rbp
	lea	rsi, [rbx*8]
	nop	
	call	xrealloc
	nop	
	mov	r14, rax
	mov	rcx, rbx
	jmp	.label_127
	nop	dword ptr [rax + rax]
.label_116:
	nop	
	mov	rbp, qword ptr [rsp + 0x2158]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x20c0]
.label_127:
	test	r13b, 1
	jne	.label_134
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x2150], rcx
	mov	edi, 0x2000
	mov	rbp, rbp
	call	xmalloc
	lea	rdi, [rdi]
	mov	rsi, rax
	nop	
	mov	qword ptr [r14 + r15*8], rsi
	lea	rax, [r15 + 1]
	mov	qword ptr [rsp + 0x20d0], rax
	jmp	.label_139
	nop	dword ptr [rax + rax]
.label_134:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x2150], rcx
	mov	rsi, qword ptr [r14 + r15*8]
.label_139:
	mov	rbp, rbp
	mov	edx, 0x2000
	mov	edi, ebp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2158], rbp
	call	full_read
	mov	r12, rax
	nop	
	cmp	r12, 0x1fff
	ja	.label_148
	call	__errno_location
	mov	rsp, rsp
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x20b0], rax
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_149
.label_148:
	nop	
	cmp	r15, qword ptr [rsp + 0x20e8]
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	je	.label_153
	mov	al, r13b
.label_153:
	lea	rdi, [rdi]
	mov	r13b, al
	mov	bl, r13b
	lea	rsi, [rsi]
	and	bl, 1
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x2140]
	jne	.label_15
	mov	qword ptr [rsp + 0x20c0], r14
	mov	rbp, rbp
	jmp	.label_20
	nop	word ptr [rax + rax]
.label_15:
	add	qword ptr [rsp + 0x2188], r12
	lea	rsi, [rsi]
	test	r12, r12
	nop	
	je	.label_70
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + r15*8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20c0], r14
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, r12
	call	fwrite_unlocked
	cmp	rax, r12
	nop	
	jae	.label_20
	jmp	.label_21
.label_70:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20c0], r14
	nop	dword ptr [rax]
.label_20:
	lea	rdi, [rdi]
	lea	rax, [r15 + 1]
	lea	rsi, [rsi]
	xor	edx, edx
	div	qword ptr [rsp + 0x2138]
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x20b0]
	test	al, 1
	nop	
	mov	rcx, qword ptr [rsp + 0x2150]
	je	.label_36
	mov	rdx, qword ptr [rsp + 0x2170]
	mov	al, 1
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_42
	mov	qword ptr [rsp + 0x2150], rax
	lea	rdi, [rdi]
	test	bl, bl
	jne	.label_46
	mov	rsp, rsp
	cmp	r15, qword ptr [rsp + 0x20e8]
	mov	rbp, rbp
	mov	r15d, dword ptr [rsp + 0x20dc]
	mov	rbp, rbp
	jne	.label_49
	mov	rax, r12
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xa8]
	sub	rax, rcx
	nop	
	add	qword ptr [rsp + 0x2188], rax
	sub	r12, rcx
	nop	
	je	.label_49
	mov	rax, qword ptr [rsp + 0x20c0]
	mov	rdi, qword ptr [rax + r14*8]
	mov	r14, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	esi, 1
	nop	
	mov	rdx, r12
	mov	rsp, rsp
	call	fwrite_unlocked
	cmp	rax, r12
	jmp	.label_37
.label_72:
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x2150], rax
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rsp + 0x2178]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
.label_58:
	nop	
	mov	qword ptr [rsp + 0x2158], r15
	nop	
	mov	r15d, dword ptr [rsp + 0x20dc]
	jmp	.label_79
.label_10:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x2150], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x2178]
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_25:
	lea	rsi, [rsi]
	mov	r14b, r12b
	nop	
	mov	r15d, dword ptr [rsp + 0x20dc]
	lea	rdi, [rdi]
	jmp	.label_79
.label_35:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rsp + 0x2150], rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	r14, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x2178]
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x2100]
	call	offtostr
	lea	rdi, [rdi]
	mov	rbp, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	jmp	.label_40
.label_14:
	mov	dword ptr [rsp + 0x20dc], r15d
	mov	rax, qword ptr [rsp + 0x2140]
	mov	qword ptr [rsp + 0x20d0], rax
	mov	rax, qword ptr [rsp + 0x20e0]
	mov	qword ptr [rsp + 0x2188], rax
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2150], rax
.label_106:
	mov	rdi, r13
	call	free
	lea	rdi, [rdi]
	cmp	rbp, -1
	je	.label_82
	mov	rax, qword ptr [rsp + 0x20b0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	test	rax, rax
	mov	rsi, qword ptr [rsp + 0x20e0]
	mov	rdi, qword ptr [rsp + 0x2150]
	lea	rdi, [rdi]
	je	.label_128
	mov	rcx, qword ptr [rsp + 0x2188]
	mov	rsp, rsp
	movsx	eax, byte ptr [rax + rcx - 1]
	nop	
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	lea	rsi, [rsi]
	and	cl, 1
	mov	rbp, rbp
	mov	ecx, 0
	mov	edx, 0xa
	lea	rdi, [rdi]
	cmovne	ecx, edx
	nop	
	cmp	eax, ecx
	je	.label_128
	mov	rax, qword ptr [rsp + 0x20d0]
	inc	qword ptr [rax]
	lea	rsi, [rsi]
	inc	rdi
.label_128:
	mov	rax, qword ptr [rsp + 0x2140]
	mov	r14, qword ptr [rax]
	mov	rax, rdi
	sub	rax, r14
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 0x10]
	mov	rbx, rsi
	lea	rdi, [rdi]
	jbe	.label_141
	nop	word ptr cs:[rax + rax]
.label_13:
	mov	rbp, qword ptr [rbx + 0x2000]
	test	rbp, rbp
	je	.label_147
	mov	rbp, rbp
	mov	r13, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	nop	
	mov	rdi, rbx
	mov	rdx, rbp
	call	fwrite_unlocked
	mov	rbp, rbp
	cmp	rax, rbp
	jb	.label_21
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x2140]
	mov	r14, qword ptr [rax]
	mov	rdi, r13
.label_147:
	mov	rsp, rsp
	add	r12, rbp
	mov	rsp, rsp
	sub	rdi, r14
	nop	
	mov	rbx, qword ptr [rbx + 0x2010]
	mov	rsp, rsp
	lea	rax, [rbx + 0x2008]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x2140], rax
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbx + 0x2008]
	mov	rax, rdi
	sub	rax, r14
	cmp	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	ja	.label_13
.label_141:
	mov	al, 1
	mov	qword ptr [rsp + 0x2150], rax
	cmp	rdi, qword ptr [rsp + 0x10]
	jbe	.label_31
	mov	rsp, rsp
	je	.label_31
	mov	qword ptr [rsp + 0x2148], r12
	mov	r12, qword ptr [rbx + 0x2000]
	mov	rbp, rbp
	add	r12, rbx
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	r13d, 0
	lea	rsi, [rsi]
	mov	eax, 0xa
	lea	rsi, [rsi]
	cmovne	r13d, eax
	lea	rsi, [rsi]
	inc	r14
	mov	r15, qword ptr [rsp + 0x10]
	sub	r15, rdi
	mov	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_26:
	mov	rdx, r12
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r13d
	call	memchr
	lea	rsi, [rsi]
	test	rax, rax
	mov	ebp, 0
	mov	rsp, rsp
	je	.label_44
	inc	rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x2140]
	mov	qword ptr [rcx], r14
	inc	r14
	nop	
	inc	r15
	lea	rdi, [rdi]
	mov	rbp, rax
	jne	.label_26
.label_44:
	mov	r14, rbp
	mov	rsp, rsp
	sub	r14, rbx
	mov	rsp, rsp
	add	r14, qword ptr [rsp + 0x2148]
	sub	rbp, rbx
	mov	r15d, dword ptr [rsp + 0x20dc]
	mov	rsp, rsp
	je	.label_63
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	esi, 1
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	fwrite_unlocked
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_63
	jmp	.label_21
.label_82:
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2150], rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x2178]
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
.label_31:
	mov	rbp, rbp
	mov	r14, r12
	nop	
	mov	r15d, dword ptr [rsp + 0x20dc]
.label_63:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20e0]
	lea	rsi, [rsi]
	test	rdi, rdi
	je	.label_81
	nop	word ptr cs:[rax + rax]
.label_89:
	mov	rbx, qword ptr [rdi + 0x2010]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_89
.label_81:
	cmp	qword ptr [rsp + 0x2180], 0
	js	.label_18
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x2158]
	nop	
	mov	rsi, r14
	nop	
	call	lseek
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	jns	.label_29
	call	__errno_location
	mov	r12d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x2178]
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x20dc], r15d
	mov	r15, rax
	mov	rdi, r14
	lea	rsi, [rsp + 0x2100]
	call	offtostr
	mov	rbp, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r12d
	mov	rdx, r13
	mov	rcx, r15
	mov	r15d, dword ptr [rsp + 0x20dc]
	jmp	.label_110
.label_150:
	xor	eax, eax
	mov	qword ptr [rsp + 0x2150], rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.57
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x2178]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r12
	mov	rbx, r14
.label_101:
	mov	rdi, qword ptr [rsp + 0x2140]
	call	free
	mov	rsp, rsp
	mov	r15d, dword ptr [rsp + 0x20dc]
	jmp	.label_124
.label_149:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x2150], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x2178]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebp
	mov	rsp, rsp
	mov	rdx, rbx
	call	error
	mov	r15d, dword ptr [rsp + 0x20dc]
	lea	rsi, [rsi]
	jmp	.label_94
.label_42:
	mov	qword ptr [rsp + 0x2150], rax
	mov	rsp, rsp
	mov	r15d, dword ptr [rsp + 0x20dc]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x20c0]
	jmp	.label_94
.label_46:
	mov	ebp, 0x2000
	sub	rbp, r12
	lea	rdi, [rdi]
	add	qword ptr [rsp + 0x2188], rdx
	mov	rax, qword ptr [rsp + 0x20c0]
	mov	rdi, qword ptr [rax + r15*8]
	mov	rbp, rbp
	add	rdi, r12
	lea	rsi, [rsi]
	cmp	rdx, rbp
	mov	rsp, rsp
	mov	r15d, dword ptr [rsp + 0x20dc]
	jae	.label_108
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	esi, 1
	mov	rsp, rsp
	mov	rbx, rdx
	call	fwrite_unlocked
	mov	rsp, rsp
	cmp	rax, rbx
	mov	r14, qword ptr [rsp + 0x20c0]
	jmp	.label_37
.label_78:
	mov	dword ptr [rsp + 0x20dc], r15d
.label_71:
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x2150], rax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.55
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	r13, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x2178]
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsp + 0x2100]
	call	offtostr
	mov	rbp, rax
	nop	
	xor	edi, edi
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r15d
	mov	rdx, r13
.label_66:
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rdi, [rdi]
	mov	r8, rbp
	call	error
	nop	
	mov	r15d, dword ptr [rsp + 0x20dc]
	jmp	.label_40
.label_108:
	mov	rsp, rsp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_43
	nop	
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rbx, rdx
	mov	rdx, rbp
	call	fwrite_unlocked
	mov	rdx, rbx
	cmp	rax, rbp
	jb	.label_21
.label_43:
	mov	qword ptr [rsp + 0x2170], rdx
	mov	rbx, rdx
	lea	rdi, [rdi]
	sub	rbx, rbp
	nop	
	jne	.label_51
.label_49:
	mov	r14, qword ptr [rsp + 0x20c0]
.label_94:
	mov	rax, qword ptr [rsp + 0x20d0]
	lea	rdi, [rdi]
	jmp	.label_54
.label_75:
	nop	
	mov	rax, qword ptr [rsp + 0x2180]
	nop	word ptr cs:[rax + rax]
.label_61:
	test	rbp, rbp
	je	.label_138
	dec	rbp
	dec	rbx
	cmp	rbx, -1
	jne	.label_61
	jmp	.label_64
.label_138:
	cmp	r14, rax
	lea	rsi, [rsi]
	je	.label_11
	add	r14, -0x2000
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x2158]
	mov	edi, ebp
	mov	rsi, r14
	call	lseek
	nop	
	test	rax, rax
	mov	rsp, rsp
	js	.label_71
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2150], rax
	mov	edx, 0x2000
	mov	edi, ebp
	mov	rbp, rbp
	mov	rsi, r12
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_95
	lea	rdi, [rdi]
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_75
.label_84:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rsp + 0x2150], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x2178]
	call	quotearg_style
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	call	error
.label_95:
	mov	rsp, rsp
	mov	r15d, dword ptr [rsp + 0x20dc]
	mov	rsp, rsp
	jmp	.label_40
.label_112:
	nop	
	mov	rax, qword ptr [rsp + 0x2180]
.label_64:
	mov	rbx, r14
	sub	rbx, rax
	mov	rbp, rbp
	jle	.label_12
	nop	
	mov	r13, rax
	lea	rdi, [rdi]
	xor	edx, edx
	mov	r15, qword ptr [rsp + 0x2158]
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsi, r13
	call	lseek
	test	rax, rax
	js	.label_102
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	copy_fd
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_12
	mov	edi, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x2178]
	call	diagnose_copy_fd_failure
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2150], rax
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rsp + 0x20dc]
	jmp	.label_40
.label_12:
	mov	rbx, rbp
	inc	rbx
	je	.label_113
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_21
.label_113:
	nop	
	lea	rbp, [r14 + rbp + 1]
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x2158]
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	lseek
	mov	rsp, rsp
	mov	rbx, rax
	test	rbx, rbx
	mov	rbp, rbp
	jns	.label_121
	call	__errno_location
	nop	
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.55
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x2178]
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	r13, rax
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	lea	rsi, [rsp + 0x2100]
	mov	rbp, rbp
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rcx, r13
	lea	rdi, [rdi]
	mov	r8, rbp
	call	error
.label_121:
	test	rbx, rbx
	setns	al
	nop	
	mov	qword ptr [rsp + 0x2150], rax
	mov	r15d, dword ptr [rsp + 0x20dc]
	jmp	.label_40
.label_51:
	mov	rax, qword ptr [rsp + 0x20c0]
	mov	rdi, qword ptr [rax + r14*8]
	mov	r14, rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	fwrite_unlocked
	lea	rsi, [rsi]
	cmp	rax, rbx
.label_37:
	mov	rax, qword ptr [rsp + 0x20d0]
	mov	rsp, rsp
	jb	.label_21
.label_54:
	test	rax, rax
	mov	rbx, r14
	je	.label_152
	nop	word ptr cs:[rax + rax]
.label_16:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rbp, rax
	nop	
	call	free
	mov	rax, rbp
	add	rbx, 8
	dec	rax
	jne	.label_16
.label_152:
	mov	rdi, r14
	mov	rbp, rbp
	call	free
	mov	rbx, qword ptr [rsp + 0x2188]
.label_124:
	cmp	qword ptr [rsp + 0x2180], 0
	mov	rsp, rsp
	js	.label_18
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x2158]
	mov	rsi, rbx
	call	lseek
	lea	rdi, [rdi]
	mov	rbp, rbx
	mov	rbx, rax
	test	rbx, rbx
	mov	rbp, rbp
	jns	.label_29
	call	__errno_location
	mov	r12d, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x20dc], r15d
	lea	rdi, [rdi]
	mov	r13, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x2178]
	call	quotearg_n_style_colon
	mov	r14, rax
	mov	rdi, rbp
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x2100]
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r12d
	mov	rbp, rbp
	mov	rdx, r13
	mov	r15d, dword ptr [rsp + 0x20dc]
	mov	rcx, r14
.label_110:
	mov	r8, rbp
	call	error
.label_29:
	test	rbx, rbx
	lea	rdi, [rdi]
	jns	.label_18
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2150], rax
.label_18:
	mov	rax, qword ptr [rsp + 0x2150]
	and	al, 1
.label_151:
	mov	qword ptr [rsp + 0x2150], rax
.label_40:
	mov	r14b, byte ptr [rsp + 0x216f]
.label_79:
	lea	rsi, [rsi]
	test	r15b, r15b
	je	.label_56
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x2150]
	jmp	.label_57
	nop	
.label_56:
	mov	rdi, qword ptr [rsp + 0x2158]
	call	close
	test	eax, eax
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x2150]
	mov	rbp, rbp
	je	.label_57
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x2178]
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	lea	rdi, [rdi]
	mov	rdx, rbx
.label_146:
	mov	rbp, rbp
	call	error
.label_57:
	and	r14b, bpl
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x2190]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x2130]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rcx*8 + 8]
	mov	rbp, rbp
	mov	rax, rcx
	inc	rax
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_67
.label_123:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	nop	
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_85
	xor	edi, edi
	lea	rdi, [rdi]
	call	close
	lea	rdi, [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_91
.label_85:
	movzx	eax, r14b
	xor	eax, 1
	mov	rbp, rbp
	add	rsp, 0x2198
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_21:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	call	clearerr_unlocked
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rbp, rax
	nop	
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.59
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_93:
	lea	rsi, [rsi]
	call	xalloc_die
.label_45:
	cmp	ebx, 0xffffff7d
	nop	
	je	.label_111
	cmp	ebx, 0xffffff7e
	jne	.label_80
	nop	
	xor	edi, edi
	call	usage
.label_111:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.17_0
	mov	r9d, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	call	version_etc
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_80:
	mov	rbp, rbp
	lea	eax, [rbx - 0x30]
	lea	rsi, [rsi]
	cmp	eax, 9
	ja	.label_122
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.14
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	lea	rdi, [rdi]
	call	error
.label_122:
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_98:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	call	error
	mov	edi, 1
	call	usage
.label_55:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0xb0]
	mov	rbp, rbp
	mov	rdi, r12
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, 0x4b
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	mov	r8, rbp
	call	error
.label_91:
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404020

	.globl copy_fd
	.type copy_fd, @function
copy_fd:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x2000
	mov	rsp, rsp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r15d, edi
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_154
	lea	rsi, [rsi]
	mov	r12d, 0x2000
	lea	r14, [rsp]
.label_158:
	lea	rdi, [rdi]
	cmp	rbx, 0x2000
	mov	rdx, rbx
	mov	rsp, rsp
	cmova	rdx, r12
	lea	rdi, [rdi]
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	call	safe_read
	mov	rbp, rax
	mov	rbp, rbp
	mov	eax, 1
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	je	.label_155
	test	rbp, rbp
	jne	.label_159
	mov	rbp, rbp
	mov	eax, 2
	cmp	rbx, rbp
	jne	.label_155
.label_159:
	test	rbp, rbp
	je	.label_157
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rsp, rsp
	mov	rdi, r14
	mov	rdx, rbp
	call	fwrite_unlocked
	cmp	rax, rbp
	mov	rsp, rsp
	jb	.label_156
.label_157:
	mov	rsp, rsp
	sub	rbx, rbp
	jne	.label_158
.label_154:
	nop	
	xor	eax, eax
.label_155:
	add	rsp, 0x2000
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_156:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	clearerr_unlocked
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.59
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404160

	.globl diagnose_copy_fd_failure
	.type diagnose_copy_fd_failure, @function
diagnose_copy_fd_failure:
	mov	rbp, rbp
	push	rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbx, rsi
	mov	rsp, rsp
	cmp	edi, 2
	je	.label_160
	lea	rsi, [rsi]
	cmp	edi, 1
	jne	.label_161
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	jmp	.label_162
.label_160:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
.label_162:
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	nop	
	mov	rdx, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	lea	rsi, [rsi]
	jmp	error
.label_161:
	call	abort
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404210
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
	#Procedure 0x404220
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404230

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
	je	.label_164
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_163
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_163
.label_164:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_166
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_163:
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
	jne	.label_165
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_3
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
.label_166:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_165:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
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
	#Procedure 0x404330

	.globl full_read
	.type full_read, @function
full_read:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	rsp, rsp
	mov	ebp, edi
	mov	rbp, rbp
	xor	r14d, r14d
	test	r15, r15
	je	.label_167
	nop	dword ptr [rax]
.label_168:
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, r15
	mov	rbp, rbp
	call	safe_read
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_167
	test	rax, rax
	je	.label_169
	mov	rbp, rbp
	add	r14, rax
	add	rbx, rax
	mov	rbp, rbp
	sub	r15, rax
	lea	rsi, [rsi]
	jne	.label_168
	mov	rsp, rsp
	jmp	.label_167
.label_169:
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0
.label_167:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	nop	
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043c0

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	mov	rsp, rsp
	test	rcx, rcx
	js	.label_170
	add	rsi, 0x14
	mov	rbp, rbp
	movabs	r8, 0x6666666666666667
.label_171:
	mov	rax, rcx
	mov	rsp, rsp
	imul	r8
	mov	rsp, rsp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	rsi, [rsi]
	lea	edi, [rdx + rax]
	mov	rsp, rsp
	add	edi, edi
	mov	rbp, rbp
	lea	r9d, [rdi + rdi*4]
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rdi, [rdi]
	sub	edi, r9d
	add	edi, 0x30
	lea	rdi, [rdi]
	mov	byte ptr [rsi - 1], dil
	lea	rdi, [rdi]
	dec	rsi
	mov	rbp, rbp
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rbp, rbp
	ja	.label_171
	jmp	.label_173
.label_170:
	mov	rsp, rsp
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_172:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	nop	
	sub	edi, r9d
	mov	eax, 0x30
	nop	
	sub	eax, edi
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	lea	rdi, [rdi]
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	nop	
	mov	rcx, rdx
	lea	rsi, [rsi]
	ja	.label_172
	mov	byte ptr [rsi - 2], 0x2d
	mov	rsp, rsp
	add	rsi, -2
.label_173:
	mov	rbp, rbp
	mov	rax, rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044b0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_174:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rdi, [rdi]
	mul	r8
	mov	rsp, rsp
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	mov	rbp, rbp
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dil
	mov	rbp, rbp
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_174
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404510

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
	je	.label_175
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
	jl	.label_177
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_177
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
	jne	.label_176
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_176:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_177:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_175:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
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
	#Procedure 0x404600
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
	#Procedure 0x404650
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
	#Procedure 0x404670
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
	#Procedure 0x404690
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
	#Procedure 0x404700
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
	#Procedure 0x404720
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
	je	.label_178
	test	rdx, rdx
	nop	
	je	.label_178
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_178:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404760
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
	#Procedure 0x404810

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
.label_224:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_247
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_255]]
.label_488:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11
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
.label_489:
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
	jne	.label_279
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_279
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_302:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_295
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_295:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_302
.label_279:
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
	jmp	.label_179
.label_481:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_179
.label_484:
	lea	rsi, [rsi]
	mov	al, 1
.label_482:
	lea	rsi, [rsi]
	mov	dl, 1
.label_485:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_207
	mov	rbp, rbp
	mov	cl, al
.label_207:
	mov	al, cl
.label_483:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_211
	test	rbp, rbp
	je	.label_216
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_217
.label_211:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_217
.label_486:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_228
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_234
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_238
.label_487:
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
	jmp	.label_179
.label_216:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_217:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_179
.label_228:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_238
.label_234:
	nop	
	mov	r14d, 1
.label_238:
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
.label_179:
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
	jmp	.label_280
	nop	dword ptr [rax]
.label_274:
	mov	rsp, rsp
	inc	r15
.label_280:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_198
	cmp	r15, r10
	jne	.label_201
	jmp	.label_202
	nop	dword ptr [rax]
.label_198:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_204
.label_201:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_235
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_222
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_222
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
.label_222:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_246
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_242
	nop	dword ptr [rax]
.label_235:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_242
	nop	word ptr cs:[rax + rax]
.label_246:
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
	jne	.label_278
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
	je	.label_242
	jmp	.label_188
.label_278:
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
.label_242:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_306
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_307]]
.label_497:
	test	r15, r15
	jne	.label_185
	jmp	.label_190
.label_501:
	xor	eax, eax
	cmp	r10, -1
	je	.label_192
	test	r15, r15
	jne	.label_253
	nop	
	cmp	r10, 1
	je	.label_190
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_187
.label_490:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_182
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_188
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_212
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_212
	cmp	r14, rbp
	jae	.label_215
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_215:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_300
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_300:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_232
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_232:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_212:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_244
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_244:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_250
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_258
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_236
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_267
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_267:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_271
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_271:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_187
.label_491:
	mov	bl, 0x62
	nop	
	jmp	.label_259
.label_492:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_281
.label_493:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_259
.label_494:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_259
.label_495:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_281
.label_498:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_199
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_299
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
	jae	.label_303
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_303:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_191
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_191:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_284
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_284:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_199:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_187
.label_499:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_210
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_185
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_185
	nop	
	jmp	.label_223
.label_500:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_225
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_229
	jmp	.label_289
.label_306:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_231
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
	jmp	.label_193
.label_192:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_260
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_260
.label_190:
	mov	dl, 1
.label_496:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_268
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_187
.label_182:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_274
	jmp	.label_185
.label_225:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_281
.label_229:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_256
.label_281:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_287
.label_259:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_187
	jmp	.label_294
.label_231:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_297
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_297:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_264
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_263:
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
	je	.label_203
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_208
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_265
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_219
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_248:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_241
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_245
.label_241:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_248
.label_219:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_254
	mov	rbp, rbp
	xor	r13d, r13d
.label_254:
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
	je	.label_263
	jmp	.label_184
	nop	
.label_264:
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
	je	.label_285
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_208
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_203
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_240
	xor	r13d, r13d
.label_240:
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
	je	.label_264
	lea	rsi, [rsi]
	jmp	.label_184
.label_260:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_187
.label_210:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_185
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_185
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_185
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_206
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_209
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_277
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_221
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_221:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_197
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_197:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_288
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_288:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_227
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_227:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_187
.label_185:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_187:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_262
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_266
	nop	
	jmp	.label_293
	nop	dword ptr [rax + rax]
.label_262:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_293
.label_266:
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
	jne	.label_272
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_282
	nop	word ptr cs:[rax + rax]
.label_293:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_282:
	mov	bl, r12b
	je	.label_256
	jmp	.label_294
.label_272:
	mov	bl, r12b
.label_294:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_188
	cmp	r9d, 2
	jne	.label_296
	mov	al, dil
	and	al, 1
	jne	.label_296
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_301
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_301:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_305
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_305:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_180
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_180:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_296:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_189
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_189:
	mov	rbp, rbp
	inc	r14
	jmp	.label_195
.label_253:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_187
.label_250:
	xor	r13d, r13d
	jmp	.label_187
.label_258:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_187
.label_236:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_187
.label_208:
	xor	r13d, r13d
.label_285:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_184
.label_203:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_218
	lea	rax, [r11 + r15]
.label_239:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_275
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_239
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_184
.label_218:
	xor	r13d, r13d
	jmp	.label_184
.label_275:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_184
.label_265:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_184:
	mov	rbp, rbp
	mov	rbx, r10
.label_193:
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
	ja	.label_220
	test	cl, cl
	je	.label_220
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_187
.label_220:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_273
	nop	dword ptr [rax]
.label_270:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_273:
	mov	rsp, rsp
	test	cl, cl
	je	.label_283
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_286
	cmp	r14, rbp
	jae	.label_290
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_290:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_286:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_298
	nop	dword ptr [rax + rax]
.label_283:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_304
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_291
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_291
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_181
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_181:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_243
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_243:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_194
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_194:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_291:
	cmp	r14, rbp
	jae	.label_200
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_200:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_230
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_230:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_292
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_292:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_298:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_256
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_249
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_249
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_186
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_186:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_226
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_226:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_249:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_270
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_270
	nop	word ptr cs:[rax + rax]
.label_256:
	test	dil, 1
	je	.label_276
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_276
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_252
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_252:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_233
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_233:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_276:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_195:
	cmp	r14, rbp
	jae	.label_213
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_213:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_274
.label_206:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_187
.label_209:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_187
	nop	word ptr [rax + rax]
.label_202:
	nop	
	mov	rcx, r15
.label_204:
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
	je	.label_183
	mov	rsp, rsp
	or	al, dl
	je	.label_269
.label_183:
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
	je	.label_196
	mov	rsp, rsp
	or	al, dl
	jne	.label_196
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_214
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_196
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
	je	.label_224
.label_196:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_237
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_237
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_237
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_257:
	cmp	r14, rbp
	jae	.label_251
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_251:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_257
.label_237:
	cmp	r14, rbp
	jae	.label_261
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_261
.label_268:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_188
.label_245:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_188
.label_304:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_188
.label_269:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_188
.label_287:
	nop	
	mov	r9d, 2
.label_188:
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
.label_205:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_261:
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
.label_214:
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
	jmp	.label_205
.label_299:
	mov	r9d, 2
	jmp	.label_188
.label_289:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_188
.label_223:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_188
.label_277:
	mov	r9d, 5
	nop	
	jmp	.label_188
.label_247:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cb0
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
	#Procedure 0x405df0
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
	je	.label_308
	mov	qword ptr [rax], rbx
.label_308:
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
	#Procedure 0x405f40
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_309
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_313:
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
	jl	.label_313
.label_309:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_312
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_310]], OFFSET FLAT:slot0
.label_312:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_311
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_311:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406000
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406010

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
	js	.label_320
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_315
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_318
.label_315:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_316
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
	jne	.label_319
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_319:
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
.label_318:
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
	ja	.label_317
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
	je	.label_314
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_314:
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
.label_317:
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
.label_320:
	lea	rdi, [rdi]
	call	abort
.label_316:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406280
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406290
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
	#Procedure 0x4062c0
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
	#Procedure 0x4062f0
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
	je	.label_321
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
.label_321:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406380
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
	je	.label_322
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
.label_322:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406420

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
	je	.label_323
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
.label_323:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064b0
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
	je	.label_324
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
.label_324:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406520
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_325]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_326]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_327]]
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
	#Procedure 0x4065c0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_325]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_326]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_327]]
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
	#Procedure 0x406660

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_325]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_326]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_327]]
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
	#Procedure 0x4066d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_325]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_326]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_327]]
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
	#Procedure 0x406740

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
	je	.label_328
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
.label_328:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406820
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_325]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_326]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_327]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_329
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_329
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
.label_329:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4068b0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_325]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_326]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_327]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_330
	test	rdx, rdx
	je	.label_330
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
.label_330:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406940
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_325]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_326]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_327]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_331
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_331
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
.label_331:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_325]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_326]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_327]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_332
	test	rsi, rsi
	je	.label_332
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
.label_332:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a80
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a90
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
	#Procedure 0x406ab0
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
	#Procedure 0x406ad0

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
	#Procedure 0x406b00

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
	jne	.label_334
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_336
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_333
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_333
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_333
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_333
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_333
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_333
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_334
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_334
.label_336:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_333
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_333
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_333
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_333
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_333
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_333
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_335
.label_333:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_334:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_335:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_334
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_334
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c70

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	rbx, rdx
	nop	
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15d, edi
	nop	word ptr [rax + rax]
.label_338:
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	read
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	jns	.label_337
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_338
	mov	rbp, rbp
	cmp	rbx, 0x7ff00001
	jb	.label_337
	lea	rdi, [rdi]
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	lea	rsi, [rsi]
	je	.label_338
.label_337:
	nop	
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d00

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
	je	.label_339
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_341
.label_339:
	mov	edx, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_341:
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
	mov	esi, OFFSET FLAT:.str.3_0
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
	ja	.label_343
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_345]]
.label_508:
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
.label_343:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_347
.label_509:
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
.label_510:
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
.label_511:
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
	jmp	.label_348
.label_512:
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
	jmp	.label_346
.label_513:
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
	jmp	.label_344
.label_514:
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
.label_344:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_346:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_348:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_342
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_347:
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
	jmp	.label_340
.label_515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
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
.label_340:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_342:
	mov	rbp, rbp
	call	__fprintf_chk
.label_507:
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
	#Procedure 0x4070f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_349:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_349
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407120
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_353:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_350
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_351
	nop	word ptr cs:[rax + rax]
.label_350:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_351:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_352
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_353
.label_352:
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
	#Procedure 0x4071b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_354
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
.label_354:
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
.label_356:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_355
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_357
	nop	dword ptr [rax + rax]
.label_355:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_357:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_358
	inc	r9
	cmp	r9, 0xa
	jb	.label_356
.label_358:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072f0
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
	mov	esi, OFFSET FLAT:.str.16
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
	#Procedure 0x407380
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
	jb	.label_359
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_360
	test	rax, rax
	je	.label_359
.label_360:
	nop	
	pop	rbx
	ret	
.label_359:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4073d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_361
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_362
.label_361:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_362:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407400
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
	jb	.label_364
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_363
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_363
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_363:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_365
	test	rax, rax
	je	.label_364
.label_365:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_364:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407480

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_366
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_366
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_366:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_367
	test	rax, rax
	nop	
	je	.label_368
.label_367:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_368:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074d0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_373
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_369
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_375
.label_373:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_372
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_372:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_374
.label_375:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_371
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_371
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_371:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_370
	test	rax, rax
	mov	rbp, rbp
	je	.label_369
.label_370:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_369:
	call	xalloc_die
.label_374:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075b0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_377
	test	rax, rax
	mov	rbp, rbp
	je	.label_376
.label_377:
	pop	rbx
	ret	
.label_376:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4075d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_381
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_382
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_380
	call	free
	xor	eax, eax
	jmp	.label_378
.label_381:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_379
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_380:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_378
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_379
.label_378:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_379:
	mov	rbp, rbp
	call	xalloc_die
.label_382:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407660
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
	je	.label_383
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_384
.label_383:
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
.label_384:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076c0
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
	jb	.label_385
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_385
	pop	rcx
	ret	
.label_385:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4076f0

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
	je	.label_387
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_386
.label_387:
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
.label_386:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407750
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
	je	.label_388
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_389
.label_388:
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
.label_389:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4077b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407800

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, r9
	mov	rbp, rbp
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	nop	
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_394
	cmp	eax, 1
	je	.label_396
	mov	rbp, rbp
	cmp	eax, 3
	nop	
	jne	.label_392
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_390
.label_396:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_390
.label_394:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_393
	lea	rdi, [rdi]
	cmp	rbx, r15
	jbe	.label_395
.label_393:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	cmp	rbx, 0x40000000
	jb	.label_391
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_390
.label_392:
	call	__errno_location
	nop	
	jmp	.label_390
.label_391:
	mov	dword ptr [rax], 0x22
.label_390:
	mov	ecx, dword ptr [rsp + 0x40]
	nop	
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	nop	
	mov	r8, rax
	mov	edx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	esi, ebp
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	call	error
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp]
.label_395:
	mov	rax, rbx
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407920

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	rsp, rsp
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rsp, rsp
	mov	r9, r10
	mov	rsp, rsp
	call	xnumtoumax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407960

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_420
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_413:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_413
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsp + 8]
	cmovne	rsi, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r13d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_400
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	edx, r12d
	call	__strtoul_internal
	nop	
	mov	rcx, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx]
	nop	
	cmp	r12, rbx
	nop	
	je	.label_401
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_405
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_400
	mov	dword ptr [rsp + 4], 1
.label_405:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_417
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_400
.label_401:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_400
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_400
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	mov	rsp, rsp
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_400
.label_417:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_408
	lea	rdi, [rdi]
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, r13d
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_416
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_398
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_398
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	test	rax, rax
	mov	rsp, rsp
	je	.label_398
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_406
	cmp	eax, 0x44
	nop	
	je	.label_406
	cmp	eax, 0x69
	jne	.label_398
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_421
	lea	rdi, [rdi]
	mov	ecx, 1
.label_421:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_398
.label_408:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_399
.label_406:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_398:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_407
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_410
	jmp	qword ptr [word ptr [+ (rax * 8) + label_414]]
.label_450:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_418
.label_407:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_419
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_422
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_397]]
.label_463:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_418:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_403
.label_410:
	cmp	r13d, 0x54
	nop	
	je	.label_411
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_416
	nop	
	mov	rdi, -1
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	lea	rsi, [rsi]
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	r14b, r14b
	mov	rbp, rbx
	lea	rdi, [rdi]
	imul	rbp, rsi
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	lea	rsi, [rsi]
	and	dl, 1
	lea	rdi, [rdi]
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_415
.label_419:
	cmp	r13d, 0x74
	je	.label_411
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_416
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	rdx, -1
	nop	
	cmovns	rdx, rax
	lea	rdi, [rdi]
	shr	rbp, 0x3f
	lea	rsi, [rsi]
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_403
.label_452:
	nop	
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	lea	rdi, [rdi]
	imul	rsi, rbp
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_412
.label_453:
	mov	rdi, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	nop	
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	nop	
	jmp	.label_402
.label_454:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	nop	
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbx
	nop	
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_409
.label_411:
	mov	rsp, rsp
	mov	r9, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rbx, r9
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	bl, bl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_404
.label_422:
	cmp	r13d, 0x5a
	jne	.label_416
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rbx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	nop	
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	mov	rbp, rbp
	imul	rsi, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	lea	rsi, [rsi]
	or	dl, bl
.label_415:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_402
.label_416:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_400
.label_451:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	mov	rsp, rsp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r9b, r9b
	nop	
	mov	rbx, rbp
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	bpl, bpl
	lea	rsi, [rsi]
	imul	rsi, rbx
	cmp	rax, rbx
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	nop	
	jmp	.label_409
.label_455:
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rdi, [rdi]
	or	dl, r9b
.label_404:
	or	dl, r10b
.label_412:
	lea	rsi, [rsi]
	or	dl, bl
.label_409:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_402:
	mov	rsp, rsp
	mov	rbp, rsi
.label_403:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_423
	or	eax, 2
.label_423:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_399:
	mov	qword ptr [rax], rbp
.label_400:
	nop	
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_420:
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408220

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_424
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_425
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
	je	.label_425
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
.label_424:
	mov	ecx, 1
.label_425:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408290

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
	je	.label_426
	nop	
	cmp	r15, -2
	jb	.label_426
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_426
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_426:
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
	#Procedure 0x408320

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
	jne	.label_427
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_428
	test	cl, cl
	mov	rsp, rsp
	jne	.label_428
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_428
.label_427:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_428
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_428:
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
	#Procedure 0x4083b0

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
	je	.label_430
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_429
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_431
.label_429:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_430
.label_431:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_430:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408400

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
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_432
	nop	
	mov	rax, rcx
.label_432:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408440

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
	js	.label_433
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_435
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
	je	.label_433
.label_435:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_433
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_434
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_434:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_433:
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
	#Procedure 0x4084f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_436
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_436
	test	byte ptr [rbx + 1], 1
	je	.label_436
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_436:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408530

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
	jne	.label_437
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_437
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_438
.label_437:
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
.label_438:
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
	je	.label_439
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_439:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x4085e0

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