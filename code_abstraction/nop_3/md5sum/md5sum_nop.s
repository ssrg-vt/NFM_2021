	.section	.text
	.align	32
	#Procedure 0x401620

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_7
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.2
	mov	r8d, 0x80
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.12
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.45
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, 5
	mov	rbp, rbp
	xor	esi, esi
	call	setlocale
	test	rax, rax
	mov	rsp, rsp
	je	.label_8
	mov	esi, OFFSET FLAT:.str.47
	lea	rsi, [rsi]
	mov	edx, 3
	mov	rdi, rax
	nop	
	call	strncmp
	test	eax, eax
	je	.label_8
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.49
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.13
	nop	
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.13
	mov	ecx, OFFSET FLAT:.str.51
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	nop	
	xor	eax, eax
	nop	
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401990

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0xf8
	mov	rbp, rsi
	mov	r15d, edi
	lea	r14, [rsp + 0xc3]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	nop	
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.15
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	call	bindtextdomain
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.15
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	xor	esi, esi
	mov	edx, 1
	nop	
	xor	ecx, ecx
	nop	
	call	setvbuf
	mov	rbp, rbp
	mov	ecx, 0xffffffff
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_24
.label_38:
	nop	
	mov	byte ptr [byte ptr [rip + quiet]],  0
	mov	ecx, ebx
	nop	word ptr [rax + rax]
.label_24:
	mov	ebx, ecx
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17_0
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:long_options
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	edi, r15d
	mov	rbp, rbp
	mov	rsi, rbp
	call	getopt_long
	mov	rbp, rbp
	cmp	eax, 0x61
	mov	rbp, rbp
	jle	.label_111
	lea	ecx, [rax - 0x74]
	cmp	ecx, 0x10
	ja	.label_115
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_116]]
.label_510:
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_24
.label_115:
	nop	
	cmp	eax, 0x62
	mov	rsp, rsp
	mov	ecx, 1
	je	.label_24
	mov	rsp, rsp
	cmp	eax, 0x63
	jne	.label_123
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	mov	ecx, ebx
	jmp	.label_24
.label_511:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + status_only]],  0
	mov	byte ptr [byte ptr [rip + warn]],  1
	jmp	.label_38
.label_512:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + delim]],  1
	mov	ecx, ebx
	mov	rsp, rsp
	jmp	.label_24
.label_513:
	mov	byte ptr [byte ptr [rip + ignore_missing]],  1
	mov	ecx, ebx
	nop	
	jmp	.label_24
.label_514:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + status_only]],  1
	mov	byte ptr [byte ptr [rip + warn]],  0
	jmp	.label_38
.label_515:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + status_only]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + warn]],  0
	mov	byte ptr [byte ptr [rip + quiet]],  1
	mov	ecx, ebx
	jmp	.label_24
.label_516:
	mov	byte ptr [byte ptr [rip + strict]],  1
	nop	
	mov	ecx, ebx
	nop	
	jmp	.label_24
.label_517:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	ecx, 1
	jmp	.label_24
.label_111:
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_146
	mov	byte ptr [byte ptr [rip + min_digest_line_length]],  1
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + digest_hex_bytes]],  1
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	sete	al
	test	ebx, ebx
	jne	.label_147
	lea	rdi, [rdi]
	test	al, al
	je	.label_36
.label_147:
	nop	
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	test	cl, cl
	je	.label_83
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rip + delim]]
	nop	
	xor	cl, 1
	nop	
	test	cl, 1
	je	.label_154
.label_83:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	test	cl, cl
	mov	rbp, rbp
	sete	cl
	nop	
	or	cl, al
	mov	rbp, rbp
	je	.label_159
	test	ebx, ebx
	nop	
	js	.label_144
	mov	rax, qword ptr [rsp + 0x30]
	test	al, al
	jne	.label_164
.label_144:
	mov	rax, qword ptr [rsp + 0x30]
	test	al, al
	mov	rsp, rsp
	jne	.label_165
	mov	rbp, rbp
	test	byte ptr [byte ptr [rip + ignore_missing]],  1
	lea	rdi, [rdi]
	jne	.label_166
.label_165:
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	test	al, al
	mov	rsp, rsp
	jne	.label_14
	mov	rsp, rsp
	test	byte ptr [byte ptr [rip + status_only]],  1
	jne	.label_16
.label_14:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x30]
	test	al, al
	jne	.label_20
	nop	
	test	byte ptr [byte ptr [rip + warn]],  1
	mov	rsp, rsp
	jne	.label_69
.label_20:
	mov	rax, qword ptr [rsp + 0x30]
	test	al, al
	jne	.label_25
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [rip + quiet]],  1
	lea	rsi, [rsi]
	jne	.label_27
.label_25:
	movzx	eax,  byte ptr [byte ptr [rip + strict]]
	and	eax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	movzx	ecx, cl
	nop	
	xor	ecx, 1
	nop	
	test	eax, ecx
	lea	rsi, [rsi]
	jne	.label_30
	lea	rdi, [rdi]
	movsxd	rax, r15d
	lea	rsi, [rsi]
	lea	rcx, [rbp + rax*8]
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r15d
	jne	.label_145
	nop	
	mov	qword ptr [word ptr [rcx]], OFFSET FLAT:.str.31
	mov	rbp, rbp
	add	rcx, 8
.label_145:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb0], rcx
	nop	
	lea	rdx, [rbp + rax*8]
	lea	rsi, [rsi]
	mov	bpl, 1
	cmp	rdx, rcx
	jae	.label_45
	test	ebx, ebx
	mov	eax, 0x2a
	mov	esi, 0x20
	mov	rsp, rsp
	cmovg	esi, eax
	mov	dword ptr [rsp + 0x84], esi
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x9f], 0x2a
	jg	.label_50
	mov	byte ptr [rsp + 0x9f], 0x20
.label_50:
	and	r14d, 3
	neg	r14
	mov	rsp, rsp
	lea	r13, [rsp + r14 + 0xc3]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r13
	mov	sil, 1
	mov	rsp, rsp
	jmp	.label_55
.label_96:
	mov	rsp, rsp
	call	__overflow
	jmp	.label_61
.label_47:
	mov	esi, 0x20
	nop	
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_64
.label_54:
	mov	esi, dword ptr [rsp + 0x84]
	lea	rsi, [rsi]
	call	__overflow
	jmp	.label_67
.label_126:
	lea	rsi, [rsi]
	mov	esi, 0x5c
	mov	rdi, rax
	lea	rsi, [rsi]
	call	__overflow
	jmp	.label_40
.label_12:
	mov	rbp, rbp
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_10
	nop	word ptr [rax + rax]
.label_55:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	mov	r12, qword ptr [rdx]
	mov	rbp, rbp
	je	.label_77
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x50], esi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdx
	mov	rsp, rsp
	movzx	eax, byte ptr [r12]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_79
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 1], 0
	mov	rbp, rbp
	je	.label_73
.label_79:
	mov	esi, OFFSET FLAT:.str.64
	mov	rdi, r12
	lea	rsi, [rsi]
	call	fopen_safer
	mov	rbx, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_91
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x98], 0
	jmp	.label_95
	nop	dword ptr [rax + rax]
.label_77:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x50], esi
	mov	rbp, rbp
	mov	r15, rdx
	mov	rsp, rsp
	mov	r14, rcx
	mov	rdi, r12
	mov	rsp, rsp
	lea	rsi, [rsp + 0xc0]
	lea	rdx, [rsp + 0x10]
	mov	rbp, rbp
	call	digest_file
	test	al, al
	lea	rdi, [rdi]
	je	.label_103
	mov	rbp, rbp
	mov	esi, 0x5c
	mov	rbp, rbp
	mov	rdi, r12
	call	strchr
	test	rax, rax
	jne	.label_108
	lea	rdi, [rdi]
	mov	esi, 0xa
	mov	rsp, rsp
	mov	rdi, r12
	lea	rsi, [rsi]
	call	strchr
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_112
.label_108:
	mov	bl,  byte ptr [byte ptr [rip + delim]]
	lea	rsi, [rsi]
	xor	bl, 1
.label_150:
	mov	rax, qword ptr [rsp + 0xa8]
	test	al, al
	je	.label_118
	mov	rax,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	test	bl, 1
	je	.label_120
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x28]
	cmp	rcx, qword ptr [rax + 0x30]
	jae	.label_126
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	nop	
	mov	qword ptr [rax + 0x28], rdx
	mov	byte ptr [rcx], 0x5c
.label_40:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.32
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	al, byte ptr [r12]
	nop	
	test	al, al
	je	.label_31
	lea	rbp, [r12 + 1]
	jmp	.label_134
.label_91:
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	jmp	.label_138
.label_103:
	xor	eax, eax
	mov	rcx, r14
	mov	rdx, r15
	lea	rdi, [rdi]
	jmp	.label_143
.label_73:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.35
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	dword ptr [rsp + 0x98], eax
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
.label_95:
	mov	qword ptr [rsp + 0xe0], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], r12
	mov	qword ptr [rsp + 0xa0], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], 0
	xor	ebp, ebp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_28
.label_118:
	nop	
	test	bl, 1
	je	.label_10
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_12
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x5c
	mov	rbp, rbp
	jmp	.label_10
.label_120:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.2
	lea	rdi, [rdi]
	mov	rsi, rax
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.32
	nop	
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r12
	call	fputs_unlocked
	jmp	.label_31
.label_152:
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	rdi, r14
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	setne	r12b
.label_158:
	nop	
	mov	rdi, r14
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp + 0x57]
	lea	rsi, [rsi]
	call	digest_file
	test	al, al
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0xe0]
	nop	
	mov	rbp, qword ptr [rsp + 0x48]
	je	.label_41
	nop	
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_48
	nop	
	mov	al,  byte ptr [byte ptr [rip + ignore_missing]]
	xor	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_48
	mov	r13, qword ptr [rsp + 0x78]
	nop	
	jmp	.label_51
.label_41:
	nop	
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	inc	rdx
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + status_only]]
	nop	
	and	al, 1
	je	.label_53
	mov	qword ptr [rsp + 0x40], rdx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x78]
	jmp	.label_51
.label_48:
	mov	rsp, rsp
	mov	ebx, r12d
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	and	eax, 1
	mov	r15, rax
	mov	rbp, rbp
	shl	r15, 4
	nop	
	cmp	rax, 1
	lea	rdi, [rdi]
	mov	r12d, 0
	lea	rdi, [rdi]
	jne	.label_58
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	nop	
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_80:
	mov	rsp, rsp
	movzx	edx, byte ptr [r13 + r12*2]
	lea	rcx, [rsp + 0x10]
	movzx	ecx, byte ptr [rcx + r12]
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	shr	rsi, 4
	movsx	esi,  byte ptr [byte ptr [rsi + digest_check.bin2hex]]
	nop	
	cmp	dword ptr [rax + rdx*4], esi
	jne	.label_58
	nop	
	movzx	edx, byte ptr [r13 + r12*2 + 1]
	and	ecx, 0xf
	mov	rsp, rsp
	movsx	ecx,  byte ptr [byte ptr [rcx + digest_check.bin2hex]]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + rdx*4], ecx
	jne	.label_58
	inc	r12
	cmp	r12, r15
	jb	.label_80
.label_58:
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rbp, [rcx + 1]
	cmp	r12, r15
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	jne	.label_81
	nop	
	mov	al, 1
.label_81:
	cmovne	rcx, rbp
	mov	dl,  byte ptr [byte ptr [rip + status_only]]
	and	dl, 1
	je	.label_88
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rax
	mov	qword ptr [rsp + 0xb8], rcx
	lea	rsi, [rsi]
	jmp	.label_90
.label_53:
	mov	rax,  qword ptr [word ptr [rip + stdout]]
	test	r12b, r12b
	lea	rsi, [rsi]
	je	.label_17
	mov	rcx, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	jae	.label_97
	nop	
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	lea	rdx, [rcx + 1]
	nop	
	mov	qword ptr [rax + 0x28], rdx
	mov	rsp, rsp
	mov	byte ptr [rcx], 0x5c
.label_68:
	mov	r13, qword ptr [rsp + 0x78]
	mov	al, byte ptr [r14]
	test	al, al
	nop	
	je	.label_102
	mov	rsp, rsp
	inc	r14
	lea	rsi, [rsi]
	jmp	.label_106
.label_88:
	mov	rsp, rsp
	cmp	r12, r15
	lea	rsi, [rsi]
	jne	.label_105
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + quiet]]
	and	al, 1
	lea	rsi, [rsi]
	je	.label_105
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
.label_90:
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	jmp	.label_114
.label_17:
	mov	qword ptr [rsp + 0x40], rdx
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rax
	call	fputs_unlocked
	mov	r13, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	jmp	.label_102
.label_105:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	test	bl, bl
	je	.label_124
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x28]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x78]
	jae	.label_129
	lea	rdx, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x28], rdx
	mov	byte ptr [rcx], 0x5c
.label_72:
	lea	rsi, [rsi]
	mov	al, byte ptr [r14]
	mov	rsp, rsp
	test	al, al
	je	.label_131
	mov	rsp, rsp
	inc	r14
	jmp	.label_34
.label_133:
	lea	rdi, [rdi]
	movzx	esi, al
	call	__overflow
	jmp	.label_109
	nop	word ptr cs:[rax + rax]
.label_106:
	movsx	ecx, al
	cmp	ecx, 0x5c
	lea	rdi, [rdi]
	je	.label_137
	cmp	ecx, 0xa
	jne	.label_140
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.81
	call	fputs_unlocked
	jmp	.label_109
	nop	word ptr cs:[rax + rax]
.label_137:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.82
	mov	rsp, rsp
	call	fputs_unlocked
	jmp	.label_109
	nop	dword ptr [rax]
.label_140:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_133
	lea	rdx, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rdx
	nop	
	mov	byte ptr [rcx], al
.label_109:
	nop	
	mov	al, byte ptr [r14]
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_106
.label_102:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.69
.label_63:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.68
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	__printf_chk
	jmp	.label_51
.label_124:
	mov	rdi, r14
	mov	rsi, rax
	call	fputs_unlocked
	mov	r13, qword ptr [rsp + 0x78]
	nop	
	jmp	.label_131
.label_104:
	lea	rsi, [rsi]
	movzx	esi, al
	call	__overflow
	mov	rbp, rbp
	jmp	.label_22
	nop	word ptr cs:[rax + rax]
.label_34:
	nop	
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_13
	cmp	ecx, 0xa
	lea	rsi, [rsi]
	jne	.label_15
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	edi, OFFSET FLAT:.str.81
	call	fputs_unlocked
	jmp	.label_22
	nop	dword ptr [rax + rax]
.label_13:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.82
	call	fputs_unlocked
	jmp	.label_22
	nop	word ptr cs:[rax + rax]
.label_15:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_104
	lea	rdx, [rcx + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_22:
	mov	al, byte ptr [r14]
	inc	r14
	test	al, al
	nop	
	jne	.label_34
.label_131:
	mov	rbp, rbp
	cmp	r12, r15
	je	.label_37
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.70
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.68
	nop	
	xor	eax, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	__printf_chk
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], rbp
.label_114:
	mov	r15, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x48]
.label_51:
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rdi, [rdi]
	jmp	.label_78
.label_37:
	mov	al,  byte ptr [byte ptr [rip + quiet]]
	lea	rdi, [rdi]
	and	al, 1
	mov	al, 1
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x48]
	jne	.label_51
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.71
	jmp	.label_63
.label_97:
	mov	qword ptr [rsp + 0x40], rdx
	mov	esi, 0x5c
	mov	rdi, rax
	call	__overflow
	mov	rsp, rsp
	jmp	.label_68
.label_129:
	mov	esi, 0x5c
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	__overflow
	jmp	.label_72
	nop	word ptr cs:[rax + rax]
.label_28:
	inc	rbp
	mov	rsp, rsp
	je	.label_29
	mov	edx, 0xa
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xa0]
	lea	rsi, [rsp + 0x90]
	mov	rcx, rbx
	call	__getdelim
	mov	r12, rax
	mov	rsp, rsp
	test	r12, r12
	mov	rsp, rsp
	jle	.label_85
	mov	r14, qword ptr [rsp + 0xa0]
	movzx	eax, byte ptr [r14]
	mov	rsp, rsp
	cmp	eax, 0x23
	lea	rsi, [rsi]
	je	.label_78
	movzx	eax, byte ptr [r14 + r12 - 1]
	mov	rbp, rbp
	cmp	eax, 0xa
	jne	.label_148
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], rbp
	dec	r12
	mov	byte ptr [r14 + r12], 0
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0xa0]
	mov	rsp, rsp
	jmp	.label_94
	nop	word ptr [rax + rax]
.label_148:
	mov	qword ptr [rsp + 0x48], rbp
.label_94:
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rbp, rbp
	jmp	.label_99
	nop	
.label_70:
	mov	rbp, rbp
	inc	rbp
.label_99:
	movzx	eax, byte ptr [r14 + rbp]
	mov	rbp, rbp
	cmp	eax, 0x20
	lea	rdi, [rdi]
	je	.label_70
	mov	rbp, rbp
	movzx	r13d, al
	mov	rbp, rbp
	cmp	r13d, 9
	mov	rsp, rsp
	je	.label_70
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], r15
	lea	rdi, [rdi]
	cmp	r13d, 0x5c
	sete	al
	movzx	r15d, al
	lea	rsi, [rsi]
	add	r15, rbp
	lea	rbx, [r14 + r15]
	nop	
	mov	esi, OFFSET FLAT:.str.2
	mov	rsp, rsp
	mov	edx, 3
	mov	rdi, rbx
	call	strncmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_117
	mov	rsp, rsp
	mov	rax, r12
	sub	rax, r15
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rip + min_digest_line_length]]
	lea	rsi, [rsi]
	and	cl, 1
	mov	ecx, 0
	mov	rbp, rbp
	mov	edx, 0x22
	lea	rsi, [rsi]
	cmovne	rcx, rdx
	mov	rsp, rsp
	movzx	edx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	edx, 0x5c
	sete	dl
	mov	rsp, rsp
	movzx	edx, dl
	lea	rsi, [rsi]
	or	rdx, rcx
	mov	rbp, rbp
	cmp	rax, rdx
	lea	rdi, [rdi]
	mov	r8, rbx
	lea	rdi, [rdi]
	jb	.label_26
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	and	eax, 1
	nop	
	mov	rdi, rax
	shl	rdi, 5
	add	rdi, r15
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r14 + rdi]
	nop	
	cmp	ecx, 0x20
	mov	rsp, rsp
	je	.label_132
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, 9
	jne	.label_26
.label_132:
	lea	rdi, [rdi]
	mov	byte ptr [r14 + rdi], 0
	lea	rsi, [rsi]
	mov	bl, byte ptr [r8]
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	je	.label_141
	mov	rbp, rbp
	cmp	r13d, 0x5c
	nop	
	sete	byte ptr [rsp + 0xf7]
	mov	qword ptr [rsp + 0x68], r8
	mov	rbp, rbp
	mov	r15, rdi
	call	__ctype_b_loc
	mov	rdi, r15
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rax]
	movzx	ecx, byte ptr [rsp + 0xf7]
	nop	
	add	rbp, rcx
	lea	rcx, [r14 + rbp + 2]
	lea	rdi, [rdi]
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_156:
	movzx	esi, bl
	test	byte ptr [rax + rsi*2 + 1], 0x10
	je	.label_26
	movzx	esi, byte ptr [rcx + rdx - 1]
	test	byte ptr [rax + rsi*2 + 1], 0x10
	mov	rsp, rsp
	je	.label_26
	mov	bl, byte ptr [rcx + rdx]
	mov	rbp, rbp
	add	rdx, 2
	cmp	edx, 0x20
	nop	
	jb	.label_156
.label_141:
	test	bl, bl
	mov	rbp, rbp
	jne	.label_26
	lea	rax, [rdi + 1]
	mov	rcx, r12
	sub	rcx, rax
	nop	
	cmp	rcx, 1
	je	.label_160
	movzx	ecx, byte ptr [r14 + rax]
	cmp	ecx, 0x20
	nop	
	je	.label_163
	lea	rsi, [rsi]
	movzx	ecx, cl
	lea	rdi, [rdi]
	cmp	ecx, 0x2a
	lea	rdi, [rdi]
	jne	.label_160
.label_163:
	cmp	dword ptr [dword ptr [rip + bsd_reversed]],  1
	mov	rbp, rbp
	je	.label_11
	mov	dword ptr [dword ptr [rip + bsd_reversed]],  0
	lea	rsi, [rsi]
	add	rdi, 2
	mov	rax, rdi
	lea	rdi, [rdi]
	jmp	.label_11
.label_117:
	mov	rbp, rbp
	movzx	eax, byte ptr [r14 + r15 + 3]
	mov	rbp, rbp
	cmp	eax, 0x20
	mov	rsp, rsp
	jne	.label_18
	lea	rsi, [rsi]
	add	r15, 4
	jmp	.label_75
.label_18:
	mov	rbp, rbp
	add	r15, 3
.label_75:
	mov	rbp, rbp
	movzx	eax, byte ptr [r14 + r15]
	mov	rsp, rsp
	cmp	eax, 0x28
	jne	.label_26
	lea	rsi, [rsi]
	lea	rax, [r15 + 1]
	cmp	r12, rax
	lea	rdi, [rdi]
	je	.label_26
	lea	rsi, [rsi]
	lea	r9, [r14 + r15 + 1]
	lea	rdi, [rdi]
	mov	rcx, r15
	neg	rcx
	nop	dword ptr [rax]
.label_42:
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rax, [rcx + rdi]
	cmp	rax, 2
	lea	rsi, [rsi]
	lea	rax, [rcx + rdi - 1]
	nop	
	je	.label_35
	movzx	edx, byte ptr [r14 + rdi - 1]
	lea	r12, [rdi - 1]
	cmp	edx, 0x29
	lea	rdi, [rdi]
	jne	.label_42
	xor	esi, esi
	lea	rdx, [rcx + rdi - 2]
	lea	rcx, [r14 + rdi - 1]
	nop	
	jmp	.label_46
.label_35:
	mov	sil, 1
	nop	
	movzx	ecx, byte ptr [r9]
	nop	
	cmp	ecx, 0x29
	mov	rcx, r9
	nop	
	mov	edx, 0
	jne	.label_26
.label_46:
	lea	rsi, [rsi]
	cmp	r13d, 0x5c
	nop	
	jne	.label_52
	test	sil, sil
	mov	rsi, r9
	jne	.label_82
	nop	
	lea	r8, [rax - 2]
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rbp, rbp
	mov	rsi, r9
	nop	
.label_71:
	mov	bl, byte ptr [r9 + rbp]
	movsx	edi, bl
	cmp	edi, 0x5c
	je	.label_57
	nop	
	test	edi, edi
	mov	rbp, rbp
	je	.label_26
	nop	
	mov	byte ptr [rsi], bl
	lea	rdi, [rdi]
	jmp	.label_59
.label_57:
	nop	
	cmp	rbp, r8
	je	.label_26
	movsx	ebx, byte ptr [r9 + rbp + 1]
	lea	rdi, [rdi]
	inc	rbp
	cmp	ebx, 0x5c
	mov	rbp, rbp
	je	.label_62
	lea	rdi, [rdi]
	cmp	ebx, 0x6e
	jne	.label_26
	lea	rdi, [rdi]
	mov	byte ptr [rsi], 0xa
	jmp	.label_59
	nop	word ptr cs:[rax + rax]
.label_62:
	mov	byte ptr [rsi], 0x5c
.label_59:
	mov	rsp, rsp
	inc	rsi
	inc	rbp
	cmp	rbp, rdx
	jb	.label_71
.label_82:
	lea	rdi, [rdi]
	cmp	rsi, rcx
	mov	rbp, rbp
	jae	.label_52
	nop	
	mov	byte ptr [rsi], 0
.label_52:
	lea	rsi, [rsi]
	mov	byte ptr [rcx], 0
	mov	rsp, rsp
	lea	rcx, [r14 + r15 + 1]
	nop	
	jmp	.label_21
	nop	word ptr cs:[rax + rax]
.label_84:
	lea	rdi, [rdi]
	inc	rax
.label_21:
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 9
	mov	rbp, rbp
	je	.label_84
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 0x20
	lea	rsi, [rsi]
	je	.label_84
	lea	rdi, [rdi]
	cmp	edx, 0x3d
	jne	.label_26
	add	r15, rax
	lea	rcx, [r14 + r15 + 2]
	lea	rsi, [rsi]
	jmp	.label_89
	nop	dword ptr [rax]
.label_93:
	mov	rbp, rbp
	inc	rcx
.label_89:
	nop	
	movzx	ebx, byte ptr [rcx]
	nop	
	cmp	ebx, 0x20
	lea	rsi, [rsi]
	je	.label_93
	movzx	eax, bl
	cmp	eax, 9
	lea	rsi, [rsi]
	je	.label_93
	mov	rbp, rbp
	mov	r14, r9
	lea	rsi, [rsi]
	mov	rbp, rcx
	movzx	eax,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_98
	mov	rsp, rsp
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r8, rbp
	nop	dword ptr [rax]
.label_110:
	movzx	edx, bl
	test	byte ptr [rax + rdx*2 + 1], 0x10
	je	.label_26
	mov	rsp, rsp
	movzx	edx, byte ptr [r8 + rcx + 1]
	lea	rdi, [rdi]
	test	byte ptr [rax + rdx*2 + 1], 0x10
	je	.label_26
	mov	bl, byte ptr [r8 + rcx + 2]
	lea	rsi, [rsi]
	add	rcx, 2
	cmp	ecx, 0x20
	jb	.label_110
	jmp	.label_56
.label_160:
	nop	
	cmp	dword ptr [dword ptr [rip + bsd_reversed]],  0
	je	.label_26
	mov	dword ptr [dword ptr [rip + bsd_reversed]],  1
.label_11:
	add	r14, rax
	lea	rsi, [rsi]
	cmp	r13d, 0x5c
	lea	rsi, [rsi]
	jne	.label_121
	mov	rsp, rsp
	sub	r12, rax
	lea	rsi, [rsi]
	mov	rax, r14
	je	.label_127
	lea	rcx, [r12 - 1]
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r14
	nop	word ptr cs:[rax + rax]
.label_151:
	mov	rsp, rsp
	mov	bl, byte ptr [r14 + rdx]
	movsx	esi, bl
	cmp	esi, 0x5c
	mov	rbp, rbp
	je	.label_130
	mov	rsp, rsp
	test	esi, esi
	je	.label_26
	mov	byte ptr [rax], bl
	nop	
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
.label_130:
	cmp	rdx, rcx
	nop	
	je	.label_26
	lea	rdi, [rdi]
	movsx	esi, byte ptr [r14 + rdx + 1]
	lea	rsi, [rsi]
	inc	rdx
	nop	
	cmp	esi, 0x5c
	je	.label_136
	cmp	esi, 0x6e
	nop	
	jne	.label_26
	mov	byte ptr [rax], 0xa
	jmp	.label_92
	nop	
.label_136:
	mov	byte ptr [rax], 0x5c
.label_92:
	inc	rax
	inc	rdx
	nop	
	cmp	rdx, r12
	jb	.label_151
.label_127:
	add	r12, r14
	mov	rsp, rsp
	cmp	rax, r12
	lea	rdi, [rdi]
	jae	.label_162
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_162:
	lea	rsi, [rsi]
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_121
	lea	rsi, [rsi]
	jmp	.label_26
.label_98:
	mov	rbp, rbp
	mov	r8, rbp
.label_56:
	test	bl, bl
	mov	rbp, rbp
	jne	.label_26
.label_121:
	mov	eax, dword ptr [rsp + 0x98]
	test	al, al
	lea	rdi, [rdi]
	je	.label_149
	movzx	eax, byte ptr [r14]
	nop	
	cmp	eax, 0x2d
	jne	.label_149
	nop	
	cmp	byte ptr [r14 + 1], 0
	mov	rsp, rsp
	je	.label_26
.label_149:
	lea	rsi, [rsi]
	mov	r13, r8
	nop	
	mov	al,  byte ptr [byte ptr [rip + status_only]]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	je	.label_152
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_158
	nop	dword ptr [rax]
.label_26:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + warn]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, qword ptr [rsp + 0x48]
	jne	.label_161
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	nop	
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x88]
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	mov	r9d, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rbx
	mov	r8, rbp
	lea	rdi, [rdi]
	call	error
.label_161:
	mov	r15, qword ptr [rsp + 0x38]
	nop	
	inc	r15
	inc	qword ptr [rsp + 0x70]
	mov	r13, qword ptr [rsp + 0x78]
	nop	
	mov	rbx, qword ptr [rsp + 0xe0]
.label_78:
	test	byte ptr [rbx], 0x30
	je	.label_28
.label_85:
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	test	byte ptr [rbx], 0x20
	jne	.label_32
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x98]
	mov	rsp, rsp
	test	al, al
	jne	.label_33
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	test	eax, eax
	je	.label_33
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	ebp, ebp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x88]
.label_138:
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_49
	nop	dword ptr [rax + rax]
.label_32:
	xor	ebp, ebp
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
.label_139:
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x88]
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
.label_49:
	call	error
.label_86:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	nop	
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	esi, dword ptr [rsp + 0x50]
.label_142:
	and	bpl, sil
	and	bpl, 1
	jmp	.label_66
.label_33:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	test	al, 1
	jne	.label_125
	mov	rsp, rsp
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.2
	xor	eax, eax
	mov	rdx, rbx
	nop	
	call	error
	mov	rsp, rsp
	jmp	.label_86
.label_125:
	movzx	eax,  byte ptr [byte ptr [rip + status_only]]
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_19
	mov	rdi, qword ptr [rsp + 0x58]
	and	dil, 1
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	nop	
	jmp	.label_135
.label_19:
	test	r15, r15
	mov	rsp, rsp
	je	.label_23
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, OFFSET FLAT:.str.75
	mov	r8d, 5
	mov	rcx, r15
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, r15
	mov	rsp, rsp
	call	error
.label_23:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_107
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.76
	nop	
	mov	edx, OFFSET FLAT:.str.77
	mov	r8d, 5
	mov	rcx, rax
	nop	
	mov	rbp, rax
	mov	rsp, rsp
	call	dcngettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	mov	rax, rbp
.label_107:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb8]
	test	rcx, rcx
	je	.label_122
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, OFFSET FLAT:.str.79
	mov	rbp, rbp
	mov	r8d, 5
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rbp, rcx
	call	dcngettext
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rcx, rbp
	lea	rsi, [rsi]
	call	error
	nop	
	mov	rcx, rbp
	mov	rsp, rsp
	mov	rax, r14
.label_122:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x58]
	and	dil, 1
	jne	.label_135
	test	byte ptr [byte ptr [rip + ignore_missing]],  1
	lea	rdi, [rdi]
	je	.label_135
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	jmp	.label_139
.label_135:
	xor	ebp, ebp
	mov	rsp, rsp
	or	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x50]
	mov	rsp, rsp
	jne	.label_142
	test	dil, dil
	je	.label_142
	mov	rsp, rsp
	mov	bpl,  byte ptr [byte ptr [rip + strict]]
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	sete	al
	xor	bpl, 1
	mov	rbp, rbp
	or	bpl, al
	lea	rdi, [rdi]
	jmp	.label_142
.label_112:
	mov	rbp, rbp
	xor	ebx, ebx
	jmp	.label_150
.label_9:
	movzx	esi, al
	mov	rsp, rsp
	call	__overflow
	jmp	.label_153
	nop	dword ptr [rax + rax]
.label_134:
	movsx	ecx, al
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	je	.label_155
	cmp	ecx, 0xa
	jne	.label_157
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.81
	call	fputs_unlocked
	jmp	.label_153
	nop	word ptr cs:[rax + rax]
.label_155:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.82
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	jmp	.label_153
	nop	dword ptr [rax]
.label_157:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_9
	nop	
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rcx], al
.label_153:
	mov	al, byte ptr [rbp]
	lea	rdi, [rdi]
	inc	rbp
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_134
.label_31:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.33
	call	fputs_unlocked
.label_10:
	mov	al,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	ebp, 0
	je	.label_101
	nop	word ptr cs:[rax + rax]
.label_39:
	movzx	edx, byte ptr [r13 + rbp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.34
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	nop	
	inc	rbp
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	and	eax, 1
	shl	rax, 4
	cmp	rbp, rax
	lea	rdi, [rdi]
	jb	.label_39
.label_101:
	mov	rax, qword ptr [rsp + 0xa8]
	test	al, al
	mov	rsp, rsp
	jne	.label_44
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_47
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_64:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_54
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	cl, byte ptr [rsp + 0x9f]
	mov	rsp, rsp
	mov	byte ptr [rax], cl
.label_67:
	mov	rbp, rbp
	test	bl, 1
	mov	rsp, rsp
	je	.label_60
	mov	al, byte ptr [r12]
	mov	rbp, rbp
	test	al, al
	lea	rdi, [rdi]
	je	.label_44
	inc	r12
	jmp	.label_65
.label_60:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	call	fputs_unlocked
	jmp	.label_44
.label_87:
	mov	rbp, rbp
	movzx	esi, al
	call	__overflow
	jmp	.label_43
	nop	word ptr cs:[rax + rax]
.label_65:
	movsx	ecx, al
	cmp	ecx, 0x5c
	nop	
	je	.label_74
	cmp	ecx, 0xa
	mov	rsp, rsp
	jne	.label_76
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.81
	call	fputs_unlocked
	jmp	.label_43
	nop	word ptr [rax + rax]
.label_74:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.82
	call	fputs_unlocked
	mov	rsp, rsp
	jmp	.label_43
	nop	dword ptr [rax]
.label_76:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_87
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rcx], al
.label_43:
	mov	al, byte ptr [r12]
	inc	r12
	test	al, al
	jne	.label_65
.label_44:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + delim]]
	lea	rsi, [rsi]
	and	al, 1
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	eax, 0
	cmovne	esi, eax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_96
	mov	rbp, rbp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_61:
	lea	rsi, [rsi]
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	eax, dword ptr [rsp + 0x50]
.label_143:
	mov	bpl, al
.label_66:
	add	rdx, 8
	mov	rbp, rbp
	cmp	rdx, rcx
	mov	rsp, rsp
	mov	sil, bpl
	jb	.label_55
.label_45:
	mov	al,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	al, 1
	lea	rsi, [rsi]
	je	.label_113
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	rsp, rsp
	call	rpl_fclose
	cmp	eax, -1
	je	.label_119
.label_113:
	not	bpl
	and	bpl, 1
	lea	rdi, [rdi]
	movzx	eax, bpl
	add	rsp, 0xf8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_29:
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.66
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
	call	error
.label_146:
	nop	
	cmp	eax, 0xffffff7d
	lea	rdi, [rdi]
	je	.label_128
	cmp	eax, 0xffffff7e
	jne	.label_123
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	call	usage
.label_128:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	nop	
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str.19
	lea	rsi, [rsi]
	mov	r9d, OFFSET FLAT:.str.20
	lea	rdi, [rdi]
	xor	eax, eax
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	call	exit
.label_123:
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_36:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.22
	jmp	.label_100
.label_154:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	jmp	.label_100
.label_159:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	jmp	.label_100
.label_164:
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.25
	jmp	.label_100
.label_166:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	jmp	.label_100
.label_16:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.27
	jmp	.label_100
.label_69:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	jmp	.label_100
.label_27:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.29
	nop	
	jmp	.label_100
.label_30:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.30
.label_100:
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_119:
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403480

	.globl digest_file
	.type digest_file, @function
digest_file:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	r14, rsi
	nop	
	mov	r15, rdi
	movzx	eax, byte ptr [r15]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_167
	mov	rbp, rbp
	cmp	byte ptr [r15 + 1], 0
	mov	byte ptr [rbx], 0
	nop	
	jne	.label_172
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	bl, 1
	lea	rsi, [rsi]
	mov	rbp,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rdi]
	jmp	.label_173
.label_167:
	mov	rsp, rsp
	mov	byte ptr [rbx], 0
.label_172:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.64
	mov	rdi, r15
	lea	rsi, [rsi]
	call	fopen_safer
	mov	rsp, rsp
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_171
	xor	ebx, ebx
.label_173:
	mov	rbp, rbp
	mov	esi, 2
	mov	rsp, rsp
	mov	rdi, rbp
	call	fadvise
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, r14
	call	md5_stream
	test	eax, eax
	je	.label_170
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	cmp	rbp,  qword ptr [word ptr [rip + stdin]]
	je	.label_169
	mov	rdi, rbp
	nop	
	call	rpl_fclose
	xor	r14d, r14d
	lea	rsi, [rsi]
	jmp	.label_169
.label_171:
	mov	rsp, rsp
	movzx	ebp,  byte ptr [byte ptr [rip + ignore_missing]]
	mov	rsp, rsp
	call	__errno_location
	and	ebp, 1
	mov	rbp, rbp
	cmp	ebp, 1
	jne	.label_168
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 2
	mov	rbp, rbp
	jne	.label_168
	mov	rsp, rsp
	mov	byte ptr [rbx], 1
	mov	r14b, 1
	mov	rsp, rsp
	jmp	.label_169
.label_170:
	mov	r14b, 1
	nop	
	test	bl, bl
	lea	rsi, [rsi]
	jne	.label_169
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	mov	rsp, rsp
	je	.label_169
	nop	
	call	__errno_location
.label_168:
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_169:
	mov	rsp, rsp
	mov	al, r14b
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x403640
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
	#Procedure 0x403650
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403660

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
	je	.label_177
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_174
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_174
.label_177:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_176
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_174:
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
	jne	.label_175
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_0
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
.label_176:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_175:
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403760
	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:

	movaps	xmm0,  xmmword ptr [word ptr [rip + label_178]]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x10], 0
	mov	rsp, rsp
	mov	dword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403790
	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:

	nop
	mov	eax, dword ptr [rdi]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rdi + 4]
	nop	
	mov	dword ptr [rsi + 4], eax
	mov	eax, dword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsi + 8], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi + 0xc]
	mov	rsp, rsp
	mov	dword ptr [rsi + 0xc], eax
	lea	rsi, [rsi]
	mov	rax, rsi
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037c0
	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:

	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x18]
	mov	rsp, rsp
	cmp	rax, 0x38
	mov	ecx, 0x10
	nop	
	mov	r15d, 0x20
	cmovb	r15, rcx
	nop	
	mov	ecx, dword ptr [rbx + 0x10]
	add	ecx, eax
	mov	dword ptr [rbx + 0x10], ecx
	jae	.label_179
	inc	dword ptr [rbx + 0x14]
.label_179:
	lea	edx, [rcx*8]
	lea	r12, [rbx + 0x1c]
	mov	dword ptr [rbx + r15*4 + 0x14], edx
	mov	rbp, rbp
	mov	edx, dword ptr [rbx + 0x14]
	shld	edx, ecx, 3
	mov	rbp, rbp
	mov	dword ptr [rbx + r15*4 + 0x18], edx
	mov	rsp, rsp
	lea	rdi, [rbx + rax + 0x1c]
	mov	rsp, rsp
	lea	rdx, [r15*4 - 8]
	mov	rsp, rsp
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf
	call	memcpy
	mov	rsp, rsp
	shl	r15, 2
	mov	rdi, r12
	nop	
	mov	rsi, r15
	mov	rdx, rbx
	call	md5_process_block
	mov	eax, dword ptr [rbx]
	mov	dword ptr [r14], eax
	mov	eax, dword ptr [rbx + 4]
	mov	dword ptr [r14 + 4], eax
	nop	
	mov	eax, dword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 8], eax
	nop	
	mov	eax, dword ptr [rbx + 0xc]
	mov	rbp, rbp
	mov	dword ptr [r14 + 0xc], eax
	lea	rsi, [rsi]
	mov	rax, r14
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038a0

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	qword ptr [rsp - 0x58], rdx
	mov	rax, rsi
	nop	
	and	rax, 0xfffffffffffffffc
	add	rax, rdi
	mov	qword ptr [rsp - 8], rax
	lea	rdi, [rdi]
	mov	r10d, dword ptr [rdx]
	mov	ebx, dword ptr [rdx + 4]
	mov	rbp, rbp
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	mov	r8, rsi
	nop	
	shr	r8, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	add	ecx, esi
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x10], ecx
	mov	rbp, rbp
	adc	r8d, 0
	mov	rsp, rsp
	add	dword ptr [rdx + 0x14], r8d
	cmp	rdi, rax
	mov	rsp, rsp
	jae	.label_182
	nop	word ptr cs:[rax + rax]
.label_181:
	nop	
	mov	qword ptr [rsp - 0x50], rbx
	mov	qword ptr [rsp - 0x70], r9
	mov	qword ptr [rsp - 0x48], rbp
	nop	
	mov	dword ptr [rsp - 0x34], r10d
	mov	eax, r9d
	xor	eax, ebp
	and	eax, ebx
	mov	rbp, rbp
	xor	eax, ebp
	add	eax, r10d
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rdi]
	mov	qword ptr [rsp - 0x80], rcx
	nop	
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 0x10], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	rol	edx, 7
	mov	rax, qword ptr [rsp - 0x50]
	mov	rsp, rsp
	add	edx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp - 0x50]
	mov	rsp, rsp
	xor	eax, r9d
	and	eax, edx
	mov	rsp, rsp
	xor	eax, r9d
	lea	rsi, [rsi]
	lea	ecx, [rbp + rsi]
	lea	ebp, [rax + rcx - 0x173848aa]
	lea	rdi, [rdi]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	mov	rcx, qword ptr [rsp - 0x50]
	lea	rdi, [rdi]
	xor	eax, ecx
	and	eax, ebp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp - 0x50]
	mov	rsp, rsp
	xor	eax, ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rdi + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp - 0x78], rcx
	lea	ecx, [r9 + rcx]
	lea	rsi, [rsi]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	add	ebx, ebp
	nop	
	mov	eax, ebp
	lea	rdi, [rdi]
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	esi, dword ptr [rdi + 0xc]
	mov	rsp, rsp
	mov	qword ptr [rsp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp - 0x50]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	lea	eax, [rax + rcx - 0x3e423112]
	lea	rsi, [rsi]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	xor	ecx, ebp
	mov	rsp, rsp
	and	ecx, eax
	mov	rsp, rsp
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	mov	dword ptr [rsp - 0x40], esi
	nop	
	add	edx, esi
	nop	
	lea	ecx, [rcx + rdx - 0xa83f051]
	nop	
	rol	ecx, 7
	add	ecx, eax
	nop	
	mov	edx, eax
	lea	rsi, [rsi]
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x14], esi
	add	ebp, esi
	nop	
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	xor	edx, eax
	mov	rsp, rsp
	and	edx, r8d
	mov	rsp, rsp
	xor	edx, eax
	mov	esi, dword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	dword ptr [rsp - 0x64], esi
	add	ebx, esi
	mov	rsp, rsp
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	mov	rbp, rbp
	rol	ebx, 0x11
	add	ebx, r8d
	lea	rdi, [rdi]
	mov	ebp, r8d
	mov	rbp, rbp
	xor	ebp, ecx
	nop	
	and	ebp, ebx
	mov	rsp, rsp
	xor	ebp, ecx
	mov	rsp, rsp
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x2c], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	rol	r9d, 0x16
	mov	rbp, rbp
	add	r9d, ebx
	mov	eax, ebx
	mov	rbp, rbp
	xor	eax, r8d
	and	eax, r9d
	lea	rsi, [rsi]
	xor	eax, r8d
	mov	edx, dword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	dword ptr [rsp - 0x60], edx
	mov	rsp, rsp
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	rol	ecx, 7
	mov	rbp, rbp
	add	ecx, r9d
	mov	rsp, rsp
	mov	eax, r9d
	xor	eax, ebx
	mov	rsp, rsp
	and	eax, ecx
	xor	eax, ebx
	mov	rbp, rbp
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp - 0x38], edx
	add	r8d, edx
	lea	rsi, [rsi]
	lea	ebp, [rax + r8 - 0x74bb0851]
	rol	ebp, 0xc
	lea	rdi, [rdi]
	add	ebp, ecx
	nop	
	mov	eax, ecx
	lea	rsi, [rsi]
	xor	eax, r9d
	mov	rsp, rsp
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	mov	dword ptr [rsp - 0x18], edx
	nop	
	add	ebx, edx
	mov	r13d, edx
	lea	r15d, [rax + rbx - 0xa44f]
	lea	rsi, [rsi]
	rol	r15d, 0x11
	add	r15d, ebp
	mov	rbp, rbp
	mov	eax, ebp
	lea	rdi, [rdi]
	xor	eax, ecx
	lea	rdi, [rdi]
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	mov	dword ptr [rsp - 0x3c], edx
	add	r9d, edx
	lea	r11d, [rax + r9 - 0x76a32842]
	lea	rsi, [rsi]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	xor	eax, ebp
	mov	rbp, rbp
	mov	ebx, dword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rsp - 0x24], ebx
	add	ecx, ebx
	lea	ecx, [rax + rcx + 0x6b901122]
	mov	rsp, rsp
	rol	ecx, 7
	lea	rsi, [rsi]
	add	ecx, r11d
	mov	eax, r11d
	xor	eax, r15d
	lea	rsi, [rsi]
	and	eax, ecx
	mov	rsp, rsp
	xor	eax, r15d
	nop	
	mov	ebx, dword ptr [rdi + 0x34]
	mov	dword ptr [rsp - 0x28], ebx
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	add	r9d, ecx
	lea	rdi, [rdi]
	mov	eax, ecx
	xor	eax, r11d
	mov	rsp, rsp
	and	eax, r9d
	xor	eax, r11d
	mov	r14d, dword ptr [rdi + 0x38]
	nop	
	mov	dword ptr [rsp - 0x5c], r14d
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	add	r8d, r9d
	mov	rbp, rbp
	mov	eax, r9d
	xor	eax, ecx
	nop	
	and	eax, r8d
	xor	eax, ecx
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rdi + 0x3c]
	nop	
	mov	dword ptr [rsp - 0x30], ebp
	mov	rbp, rbp
	add	r11d, ebp
	mov	r15d, ebp
	lea	rsi, [rsi]
	lea	r11d, [rax + r11 + 0x49b40821]
	lea	rdi, [rdi]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	mov	rbp, rbp
	and	eax, r9d
	xor	eax, r8d
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp - 0x10]
	mov	rbp, rbp
	add	ecx, ebp
	lea	ecx, [rax + rcx - 0x9e1da9e]
	lea	rsi, [rsi]
	rol	ecx, 5
	lea	rdi, [rdi]
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	mov	rsp, rsp
	and	eax, r8d
	xor	eax, r11d
	mov	rbp, rbp
	add	r9d, esi
	lea	ebp, [rax + r9 - 0x3fbf4cc0]
	rol	ebp, 9
	lea	rdi, [rdi]
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	lea	rsi, [rsi]
	and	eax, r11d
	lea	rsi, [rsi]
	xor	eax, ecx
	add	r8d, edx
	nop	
	lea	r8d, [rax + r8 + 0x265e5a51]
	rol	r8d, 0xe
	mov	rsp, rsp
	add	r8d, ebp
	mov	rsp, rsp
	mov	eax, r8d
	mov	rbp, rbp
	xor	eax, ebp
	and	eax, ecx
	mov	rsp, rsp
	xor	eax, ebp
	lea	rdi, [rdi]
	add	r11d, r10d
	mov	rsp, rsp
	lea	r11d, [rax + r11 - 0x16493856]
	lea	rsi, [rsi]
	rol	r11d, 0x14
	mov	rbp, rbp
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	nop	
	and	eax, ebp
	nop	
	xor	eax, r8d
	nop	
	mov	r9d, dword ptr [rsp - 0x14]
	nop	
	add	ecx, r9d
	lea	ecx, [rax + rcx - 0x29d0efa3]
	rol	ecx, 5
	mov	rsp, rsp
	add	ecx, r11d
	lea	rsi, [rsi]
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	lea	rsi, [rsi]
	xor	eax, r11d
	lea	rdi, [rdi]
	add	ebp, r13d
	lea	rdi, [rdi]
	lea	ebp, [rax + rbp + 0x2441453]
	lea	rsi, [rsi]
	rol	ebp, 9
	mov	rbp, rbp
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	lea	rsi, [rsi]
	and	eax, r11d
	nop	
	xor	eax, ecx
	add	r8d, r15d
	mov	rbp, rbp
	lea	r8d, [rax + r8 - 0x275e197f]
	rol	r8d, 0xe
	add	r8d, ebp
	nop	
	mov	eax, r8d
	lea	rdi, [rdi]
	xor	eax, ebp
	and	eax, ecx
	lea	rdi, [rdi]
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x40]
	add	r11d, r10d
	lea	rsi, [rsi]
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	add	r11d, r8d
	lea	rdi, [rdi]
	mov	eax, r11d
	mov	rbp, rbp
	xor	eax, r8d
	and	eax, ebp
	lea	rsi, [rsi]
	xor	eax, r8d
	nop	
	add	ecx, dword ptr [rsp - 0x38]
	mov	rbp, rbp
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	nop	
	xor	eax, r11d
	lea	rdi, [rdi]
	mov	r13d, r14d
	mov	rbp, rbp
	add	ebp, r13d
	nop	
	lea	ebp, [rax + rbp - 0x3cc8f82a]
	mov	rbp, rbp
	rol	ebp, 9
	add	ebp, ecx
	mov	rbp, rbp
	mov	eax, ebp
	mov	rbp, rbp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	nop	
	add	r8d, r12d
	mov	rbp, rbp
	lea	r8d, [rax + r8 - 0xb2af279]
	rol	r8d, 0xe
	add	r8d, ebp
	lea	rdi, [rdi]
	mov	eax, r8d
	mov	rbp, rbp
	xor	eax, ebp
	mov	rsp, rsp
	and	eax, ecx
	xor	eax, ebp
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp - 0x60]
	mov	rbp, rbp
	add	r11d, esi
	lea	rdi, [rdi]
	lea	r11d, [rax + r11 + 0x455a14ed]
	rol	r11d, 0x14
	lea	rsi, [rsi]
	add	r11d, r8d
	nop	
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	lea	ecx, [rax + rcx - 0x561c16fb]
	nop	
	rol	ecx, 5
	mov	rbp, rbp
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	nop	
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x78]
	add	ebp, edx
	lea	rsi, [rsi]
	lea	r14d, [rax + rbp - 0x3105c08]
	rol	r14d, 9
	mov	rsp, rsp
	add	r14d, ecx
	nop	
	mov	eax, r14d
	nop	
	xor	eax, ecx
	lea	rdi, [rdi]
	and	eax, r11d
	xor	eax, ecx
	mov	rbp, rbp
	mov	edx, dword ptr [rsp - 0x2c]
	nop	
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x676f02d9]
	nop	
	rol	r8d, 0xe
	add	r8d, r14d
	lea	rdi, [rdi]
	mov	ebp, r8d
	xor	ebp, r14d
	mov	eax, ebp
	lea	rsi, [rsi]
	and	eax, ecx
	xor	eax, r14d
	nop	
	mov	r15d, dword ptr [rsp - 0x24]
	mov	rbp, rbp
	add	r11d, r15d
	mov	rsp, rsp
	lea	eax, [rax + r11 - 0x72d5b376]
	rol	eax, 0x14
	add	eax, r8d
	lea	rsi, [rsi]
	xor	ebp, eax
	lea	rdi, [rdi]
	add	ecx, r9d
	mov	rbp, rbp
	lea	r11d, [rbp + rcx - 0x5c6be]
	mov	rsp, rsp
	rol	r11d, 4
	add	r11d, eax
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	xor	ecx, r8d
	mov	rsp, rsp
	xor	ecx, r11d
	lea	rdi, [rdi]
	add	r14d, esi
	lea	rdi, [rdi]
	lea	r14d, [rcx + r14 - 0x788e097f]
	lea	rdi, [rdi]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	ebp, r11d
	lea	rdi, [rdi]
	xor	ebp, eax
	lea	rdi, [rdi]
	xor	ebp, r14d
	add	r8d, dword ptr [rsp - 0x3c]
	lea	ebp, [rbp + r8 + 0x6d9d6122]
	mov	rbp, rbp
	rol	ebp, 0x10
	add	ebp, r14d
	lea	rsi, [rsi]
	mov	ecx, r14d
	mov	rbp, rbp
	xor	ecx, r11d
	xor	ecx, ebp
	add	eax, r13d
	mov	rbp, rbp
	lea	r8d, [rcx + rax - 0x21ac7f4]
	rol	r8d, 0x17
	nop	
	add	r8d, ebp
	mov	eax, ebp
	nop	
	xor	eax, r14d
	mov	rsp, rsp
	xor	eax, r8d
	mov	rcx, qword ptr [rsp - 0x10]
	add	r11d, ecx
	mov	rbp, rbp
	lea	r11d, [rax + r11 - 0x5b4115bc]
	rol	r11d, 4
	lea	rsi, [rsi]
	add	r11d, r8d
	lea	rsi, [rsi]
	mov	ecx, r8d
	mov	rsp, rsp
	xor	ecx, ebp
	xor	ecx, r11d
	add	r14d, r10d
	lea	r14d, [rcx + r14 + 0x4bdecfa9]
	lea	rsi, [rsi]
	rol	r14d, 0xb
	add	r14d, r11d
	lea	rdi, [rdi]
	mov	eax, r11d
	lea	rsi, [rsi]
	xor	eax, r8d
	mov	rsp, rsp
	xor	eax, r14d
	add	ebp, edx
	lea	ebp, [rax + rbp - 0x944b4a0]
	nop	
	rol	ebp, 0x10
	add	ebp, r14d
	mov	eax, r14d
	xor	eax, r11d
	mov	rsp, rsp
	xor	eax, ebp
	mov	rsp, rsp
	mov	r10d, dword ptr [rsp - 0x18]
	add	r8d, r10d
	lea	rdi, [rdi]
	lea	r8d, [rax + r8 - 0x41404390]
	lea	rsi, [rsi]
	rol	r8d, 0x17
	add	r8d, ebp
	lea	rdi, [rdi]
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	add	r11d, ebx
	lea	eax, [rax + r11 + 0x289b7ec6]
	rol	eax, 4
	add	eax, r8d
	lea	rdi, [rdi]
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, eax
	mov	rsi, qword ptr [rsp - 0x80]
	add	r14d, esi
	lea	r11d, [rcx + r14 - 0x155ed806]
	nop	
	rol	r11d, 0xb
	add	r11d, eax
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	ecx, r8d
	mov	rsp, rsp
	xor	ecx, r11d
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp - 0x20]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	rol	r14d, 0x10
	lea	rsi, [rsi]
	add	r14d, r11d
	mov	ecx, r11d
	xor	ecx, eax
	mov	rsp, rsp
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x64]
	add	r8d, r12d
	nop	
	lea	r8d, [rcx + r8 + 0x4881d05]
	rol	r8d, 0x17
	lea	rdi, [rdi]
	add	r8d, r14d
	mov	rbp, rbp
	mov	ecx, r14d
	lea	rsi, [rsi]
	xor	ecx, r11d
	xor	ecx, r8d
	lea	rdi, [rdi]
	add	eax, dword ptr [rsp - 0x38]
	lea	rdi, [rdi]
	lea	ecx, [rcx + rax - 0x262b2fc7]
	mov	rbp, rbp
	rol	ecx, 4
	lea	rsi, [rsi]
	add	ecx, r8d
	mov	eax, r8d
	lea	rdi, [rdi]
	xor	eax, r14d
	xor	eax, ecx
	add	r11d, r15d
	lea	edx, [rax + r11 - 0x1924661b]
	rol	edx, 0xb
	add	edx, ecx
	nop	
	mov	ebp, ecx
	xor	ebp, r8d
	xor	ebp, edx
	nop	
	mov	r13d, dword ptr [rsp - 0x30]
	lea	rdi, [rdi]
	add	r14d, r13d
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	lea	rsi, [rsi]
	rol	r11d, 0x10
	add	r11d, edx
	mov	ebp, edx
	mov	rbp, rbp
	xor	ebp, ecx
	mov	rsp, rsp
	xor	ebp, r11d
	mov	rbp, rbp
	mov	rax, qword ptr [rsp - 0x78]
	mov	rbp, rbp
	add	r8d, eax
	mov	rbp, rbp
	mov	r14, rax
	lea	rdi, [rdi]
	lea	r8d, [rbp + r8 - 0x3b53a99b]
	lea	rdi, [rdi]
	add	ecx, esi
	rol	r8d, 0x17
	add	r8d, r11d
	mov	eax, edx
	lea	rsi, [rsi]
	not	eax
	or	eax, r8d
	xor	eax, r11d
	lea	ecx, [rax + rcx - 0xbd6ddbc]
	add	edx, dword ptr [rsp - 0x2c]
	rol	ecx, 6
	add	ecx, r8d
	mov	eax, r11d
	nop	
	not	eax
	or	eax, ecx
	lea	rdi, [rdi]
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	add	r11d, dword ptr [rsp - 0x5c]
	mov	rsp, rsp
	rol	ebp, 0xa
	add	ebp, ecx
	mov	eax, r8d
	mov	rbp, rbp
	not	eax
	lea	rsi, [rsi]
	or	eax, ebp
	xor	eax, ecx
	mov	rsp, rsp
	lea	eax, [rax + r11 - 0x546bdc59]
	add	r8d, dword ptr [rsp - 0x14]
	mov	rsp, rsp
	rol	eax, 0xf
	lea	rsi, [rsi]
	add	eax, ebp
	mov	rbp, rbp
	mov	edx, ecx
	mov	rbp, rbp
	not	edx
	or	edx, eax
	xor	edx, ebp
	mov	rbp, rbp
	lea	esi, [rdx + r8 - 0x36c5fc7]
	add	ecx, r15d
	rol	esi, 0x15
	add	esi, eax
	mov	rsp, rsp
	mov	edx, ebp
	not	edx
	or	edx, esi
	lea	rdi, [rdi]
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x655b59c3]
	mov	rsp, rsp
	add	ebp, r9d
	rol	ecx, 6
	add	ecx, esi
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	not	edx
	or	edx, ecx
	lea	rdi, [rdi]
	xor	edx, esi
	lea	ebp, [rdx + rbp - 0x70f3336e]
	add	eax, r10d
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp - 0x50]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	edx, esi
	nop	
	not	edx
	mov	rsp, rsp
	or	edx, ebp
	xor	edx, ecx
	lea	rdi, [rdi]
	lea	eax, [rdx + rax - 0x100b83]
	mov	rbp, rbp
	rol	eax, 0xf
	add	eax, ebp
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp - 0x10]
	mov	rsp, rsp
	add	esi, edx
	mov	edx, ecx
	not	edx
	mov	rbp, rbp
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	add	r8d, eax
	lea	rdi, [rdi]
	add	ecx, dword ptr [rsp - 0x60]
	mov	edx, ebp
	not	edx
	or	edx, r8d
	lea	rsi, [rsi]
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x6fa87e4f]
	rol	ecx, 6
	lea	rdi, [rdi]
	add	ecx, r8d
	nop	
	add	ebp, r13d
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	not	edx
	or	edx, ecx
	mov	rbp, rbp
	xor	edx, r8d
	lea	edx, [rdx + rbp - 0x1d31920]
	rol	edx, 0xa
	mov	rbp, rbp
	add	edx, ecx
	mov	rbp, rbp
	add	eax, r12d
	mov	esi, r8d
	not	esi
	or	esi, edx
	xor	esi, ecx
	nop	
	lea	ebp, [rsi + rax - 0x5cfebcec]
	rol	ebp, 0xf
	add	ebp, edx
	mov	rbp, rbp
	add	r8d, dword ptr [rsp - 0x28]
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	not	eax
	or	eax, ebp
	xor	eax, edx
	lea	esi, [rax + r8 + 0x4e0811a1]
	nop	
	mov	r8, qword ptr [rsp - 8]
	mov	r10d, dword ptr [rsp - 0x34]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x40]
	mov	eax, edx
	mov	rsp, rsp
	not	eax
	or	eax, esi
	mov	rsp, rsp
	xor	eax, ebp
	lea	rdi, [rdi]
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	add	ecx, esi
	lea	rsi, [rsi]
	add	edx, dword ptr [rsp - 0x3c]
	mov	eax, ebp
	nop	
	not	eax
	mov	rbp, rbp
	or	eax, ecx
	lea	rdi, [rdi]
	xor	eax, esi
	mov	rsp, rsp
	lea	edx, [rax + rdx - 0x42c50dcb]
	rol	edx, 0xa
	add	edx, ecx
	lea	rdi, [rdi]
	add	ebp, r14d
	lea	rdi, [rdi]
	mov	eax, esi
	lea	rdi, [rdi]
	not	eax
	or	eax, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	lea	eax, [rax + rbp + 0x2ad7d2bb]
	add	esi, dword ptr [rsp - 0x38]
	rol	eax, 0xf
	add	eax, edx
	add	r10d, ecx
	mov	rbp, rbp
	not	ecx
	or	ecx, eax
	mov	rbp, rbp
	xor	ecx, edx
	lea	ecx, [rcx + rsi - 0x14792c6f]
	rol	ecx, 0x15
	add	ebx, eax
	nop	
	add	ebx, ecx
	mov	rcx, qword ptr [rsp - 0x70]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 0x48]
	add	edx, ecx
	lea	rdi, [rdi]
	add	rdi, 0x40
	nop	
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_181
	jmp	.label_180
.label_182:
	mov	rsp, rsp
	mov	eax, r9d
	mov	edx, ebp
.label_180:
	mov	rcx, qword ptr [rsp - 0x58]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043a0

	.globl md5_stream
	.type md5_stream, @function
md5_stream:
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	mov	edi, 0x8048
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	mov	r15, rax
	mov	eax, 1
	mov	rsp, rsp
	test	r15, r15
	mov	rbp, rbp
	je	.label_187
	lea	rdi, [rdi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_178]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0
	nop	
	xor	ebx, ebx
	mov	rsp, rsp
	test	byte ptr [r12], 0x10
	lea	rdi, [rdi]
	jne	.label_188
	lea	r13, [rsp]
	nop	word ptr cs:[rax + rax]
.label_186:
	lea	rdi, [r15 + rbx]
	nop	
	mov	edx, 0x8000
	sub	rdx, rbx
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	jne	.label_191
	mov	esi, 0x8000
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rdx, r13
	call	md5_process_block
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_183
	nop	dword ptr [rax]
.label_191:
	test	rax, rax
	je	.label_185
.label_183:
	test	byte ptr [r12], 0x10
	je	.label_186
	nop	
	jmp	.label_189
.label_185:
	test	byte ptr [r12], 0x20
	jne	.label_190
.label_189:
	test	rbx, rbx
	nop	
	je	.label_188
	lea	rdi, [rdi]
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	md5_process_bytes
.label_188:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, 0x38
	mov	rsp, rsp
	mov	ecx, 0x10
	mov	ebx, 0x20
	cmovb	rbx, rcx
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x10], ecx
	jae	.label_184
	inc	dword ptr [rsp + 0x14]
.label_184:
	nop	
	lea	edx, [rcx*8]
	lea	rsi, [rsi]
	lea	r12, [rsp + 0x1c]
	mov	dword ptr [rsp + rbx*4 + 0x14], edx
	mov	edx, dword ptr [rsp + 0x14]
	shld	edx, ecx, 3
	mov	rbp, rbp
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	mov	rsp, rsp
	lea	rdi, [rsp + rax + 0x1c]
	mov	rsp, rsp
	lea	rdx, [rbx*4 - 8]
	nop	
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf
	nop	
	call	memcpy
	mov	rbp, rbp
	shl	rbx, 2
	mov	rsp, rsp
	lea	rdx, [rsp]
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, rbx
	mov	rsp, rsp
	call	md5_process_block
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rdi, r15
	call	free
	mov	rbp, rbp
	xor	eax, eax
.label_187:
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	ret	
.label_190:
	mov	rdi, r15
	nop	
	call	free
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_187
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045b0

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbp, rbp
	mov	r15, rdi
	mov	ebx, dword ptr [r14 + 0x18]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_194
	mov	rbp, rbp
	mov	r13d, 0x80
	sub	r13, rbx
	cmp	r13, r12
	cmova	r13, r12
	lea	rsi, [rsi]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r13
	mov	rbp, rbp
	call	memcpy
	lea	rdi, [rdi]
	add	rbx, r13
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 0x18], ebx
	mov	rsp, rsp
	cmp	ebx, 0x41
	jb	.label_193
	lea	rbp, [r14 + 0x1c]
	mov	rsp, rsp
	mov	esi, ebx
	and	esi, 0xffffffc0
	mov	rdi, rbp
	mov	rdx, r14
	mov	rbp, rbp
	call	md5_process_block
	mov	edx, dword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	and	edx, 0x3f
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 0x18], edx
	and	rbx, 0xffffffffffffffc0
	add	rbx, rbp
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	memcpy
.label_193:
	mov	rsp, rsp
	add	r15, r13
	nop	
	sub	r12, r13
.label_194:
	cmp	r12, 0x40
	lea	rsi, [rsi]
	jb	.label_195
	mov	rbx, r12
	mov	rsp, rsp
	and	rbx, 0xffffffffffffffc0
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	md5_process_block
	mov	rsp, rsp
	add	r15, rbx
	and	r12d, 0x3f
.label_195:
	test	r12, r12
	je	.label_192
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	lea	rdi, [rdi]
	add	rbx, r12
	lea	rsi, [rsi]
	cmp	rbx, 0x40
	jb	.label_196
	lea	rbp, [r14 + 0x1c]
	mov	esi, 0x40
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	add	rbx, -0x40
	mov	rsp, rsp
	lea	rsi, [r14 + 0x5c]
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, rbx
	mov	rsp, rsp
	call	memcpy
.label_196:
	mov	rbp, rbp
	mov	dword ptr [r14 + 0x18], ebx
.label_192:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404720
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	nop
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	nop	
	mov	r14, rdx
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_178]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x14], 0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x10], 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], 0
	mov	rsp, rsp
	lea	rdx, [rsp]
	call	md5_process_bytes
	mov	eax, dword ptr [rsp + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	nop	
	mov	ebx, 0x20
	cmovb	rbx, rcx
	nop	
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	lea	rdi, [rdi]
	jae	.label_197
	mov	rsp, rsp
	inc	dword ptr [rsp + 0x14]
.label_197:
	lea	rdi, [rdi]
	lea	edx, [rcx*8]
	mov	rsp, rsp
	lea	r15, [rsp + 0x1c]
	mov	rsp, rsp
	mov	dword ptr [rsp + rbx*4 + 0x14], edx
	mov	edx, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	shld	edx, ecx, 3
	nop	
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	nop	
	lea	rdi, [rsp + rax + 0x1c]
	mov	rbp, rbp
	lea	rdx, [rbx*4 - 8]
	lea	rdi, [rdi]
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:fillbuf
	call	memcpy
	shl	rbx, 2
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_block
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14], xmm0
	mov	rax, r14
	add	rsp, 0xa0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404820
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404830

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_198
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
.label_198:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404860

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	call	fopen
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_201
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_202
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_199
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_203
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_201
.label_203:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_200
.label_202:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_201
.label_199:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_200:
	xor	eax, eax
.label_201:
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404940

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
	je	.label_204
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
	jl	.label_206
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_206
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
	jne	.label_205
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_205:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_206:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_204:
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
	#Procedure 0x404a30
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
	#Procedure 0x404a80
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
	#Procedure 0x404aa0
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
	#Procedure 0x404ac0
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
	#Procedure 0x404b30
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
	#Procedure 0x404b50
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
	je	.label_207
	test	rdx, rdx
	nop	
	je	.label_207
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_207:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b90
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
	#Procedure 0x404c40

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
.label_271:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_289
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_302]]
.label_475:
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
.label_476:
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
	jne	.label_318
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_318
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_211:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_331
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_331:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_211
.label_318:
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
	jmp	.label_221
.label_468:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_221
.label_471:
	lea	rsi, [rsi]
	mov	al, 1
.label_469:
	lea	rsi, [rsi]
	mov	dl, 1
.label_472:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_252
	mov	rbp, rbp
	mov	cl, al
.label_252:
	mov	al, cl
.label_470:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_258
	test	rbp, rbp
	je	.label_264
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_265
.label_258:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_265
.label_473:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_273
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_278
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_282
.label_474:
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
	jmp	.label_221
.label_264:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_265:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_221
.label_273:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_282
.label_278:
	nop	
	mov	r14d, 1
.label_282:
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
.label_221:
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
	jmp	.label_320
	nop	dword ptr [rax]
.label_209:
	mov	rsp, rsp
	inc	r15
.label_320:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_243
	cmp	r15, r10
	jne	.label_246
	jmp	.label_291
	nop	dword ptr [rax]
.label_243:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_249
.label_246:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_255
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_259
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_259
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
.label_259:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_287
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_288
	nop	dword ptr [rax]
.label_255:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_288
	nop	word ptr cs:[rax + rax]
.label_287:
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
	jne	.label_317
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
	je	.label_288
	jmp	.label_245
.label_317:
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
.label_288:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_215
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_220]]
.label_485:
	test	r15, r15
	jne	.label_230
	jmp	.label_232
.label_489:
	xor	eax, eax
	cmp	r10, -1
	je	.label_234
	test	r15, r15
	jne	.label_237
	nop	
	cmp	r10, 1
	je	.label_232
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_210
.label_478:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_247
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_245
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_260
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_260
	cmp	r14, rbp
	jae	.label_263
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_263:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_276
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_276:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_277
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_277:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_260:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_286
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_286:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_292
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_298
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_300
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_307
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_307:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_311
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_311:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_210
.label_479:
	mov	bl, 0x62
	nop	
	jmp	.label_224
.label_480:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_238
.label_481:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_224
.label_482:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_224
.label_483:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_238
.label_486:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_304
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_335
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
	jae	.label_212
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_212:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_233
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_233:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_242
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_242:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_304:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_210
.label_487:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_257
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_230
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_230
	nop	
	jmp	.label_270
.label_488:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_272
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_275
	jmp	.label_279
.label_215:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_332
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
	jmp	.label_296
.label_234:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_305
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_305
.label_232:
	mov	dl, 1
.label_484:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_309
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_210
.label_247:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_209
	jmp	.label_230
.label_272:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_238
.label_275:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_218
.label_238:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_325
.label_224:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_210
	jmp	.label_328
.label_332:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_327
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_327:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_217
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_303:
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
	je	.label_248
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_254
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_216
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_268
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_253:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_284
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_280
.label_284:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_253
.label_268:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_295
	mov	rbp, rbp
	xor	r13d, r13d
.label_295:
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
	je	.label_303
	jmp	.label_236
	nop	
.label_217:
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
	je	.label_323
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_254
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_248
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_330
	xor	r13d, r13d
.label_330:
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
	je	.label_217
	lea	rsi, [rsi]
	jmp	.label_236
.label_305:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_210
.label_257:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_230
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_230
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_230
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_251
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_256
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_250
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_299
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_299:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_274
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_274:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_223
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_223:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_228
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_228:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_210
.label_230:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_210:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_226
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_306
	nop	
	jmp	.label_269
	nop	dword ptr [rax + rax]
.label_226:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_269
.label_306:
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
	jne	.label_312
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_321
	nop	word ptr cs:[rax + rax]
.label_269:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_321:
	mov	bl, r12b
	je	.label_218
	jmp	.label_328
.label_312:
	mov	bl, r12b
.label_328:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_245
	cmp	r9d, 2
	jne	.label_333
	mov	al, dil
	and	al, 1
	jne	.label_333
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_208
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_208:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_214
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_214:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_222
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_222:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_333:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_231
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_231:
	mov	rbp, rbp
	inc	r14
	jmp	.label_240
.label_237:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_210
.label_292:
	xor	r13d, r13d
	jmp	.label_210
.label_298:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_210
.label_300:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_210
.label_254:
	xor	r13d, r13d
.label_323:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_236
.label_248:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_266
	lea	rax, [r11 + r15]
.label_283:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_319
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_283
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_236
.label_266:
	xor	r13d, r13d
	jmp	.label_236
.label_319:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_236
.label_216:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_236:
	mov	rbp, rbp
	mov	rbx, r10
.label_296:
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
	ja	.label_235
	test	cl, cl
	je	.label_235
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_210
.label_235:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_314
	nop	dword ptr [rax]
.label_308:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_314:
	mov	rsp, rsp
	test	cl, cl
	je	.label_322
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_324
	cmp	r14, rbp
	jae	.label_326
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_326:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_324:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_334
	nop	dword ptr [rax + rax]
.label_322:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_213
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_267
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_267
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_225
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_225:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_336
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_336:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_239
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_239:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_267:
	cmp	r14, rbp
	jae	.label_313
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_313:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_244
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_244:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_285
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_285:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_334:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_218
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_229
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_229
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_290
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_290:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_241
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_241:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_229:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_308
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_308
	nop	word ptr cs:[rax + rax]
.label_218:
	test	dil, 1
	je	.label_316
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_316
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_315
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_315:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_261
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_261:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_316:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_240:
	cmp	r14, rbp
	jae	.label_294
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_294:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_209
.label_251:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_210
.label_256:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_210
	nop	word ptr [rax + rax]
.label_291:
	nop	
	mov	rcx, r15
.label_249:
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
	je	.label_227
	mov	rsp, rsp
	or	al, dl
	je	.label_329
.label_227:
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
	je	.label_219
	mov	rsp, rsp
	or	al, dl
	jne	.label_219
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_262
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_219
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
	je	.label_271
.label_219:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_281
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_281
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_281
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_297:
	cmp	r14, rbp
	jae	.label_293
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_293:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_297
.label_281:
	cmp	r14, rbp
	jae	.label_301
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_301
.label_309:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_245
.label_280:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_245
.label_213:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_245
.label_329:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_245
.label_325:
	nop	
	mov	r9d, 2
.label_245:
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
.label_310:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_301:
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
.label_262:
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
	jmp	.label_310
.label_335:
	mov	r9d, 2
	jmp	.label_245
.label_279:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_245
.label_270:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_245
.label_250:
	mov	r9d, 5
	nop	
	jmp	.label_245
.label_289:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060e0
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
	#Procedure 0x406220
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
	je	.label_337
	mov	qword ptr [rax], rbx
.label_337:
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
	#Procedure 0x406370
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_338
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
.label_338:
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
	mov	qword ptr [word ptr [rip + label_339]], OFFSET FLAT:slot0
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
	#Procedure 0x406430
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406440

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
	js	.label_346
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_348
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_344
.label_348:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_349
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
	jne	.label_345
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_345:
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
.label_344:
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
	ja	.label_343
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
	je	.label_347
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_347:
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
.label_343:
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
.label_346:
	lea	rdi, [rdi]
	call	abort
.label_349:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4066b0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4066c0
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
	#Procedure 0x4066f0
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
	#Procedure 0x406720
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
	je	.label_350
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
.label_350:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4067b0
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
	je	.label_351
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
.label_351:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406850
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
	je	.label_352
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
.label_352:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068e0
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
	je	.label_353
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
.label_353:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406950
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_354]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_355]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
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
	#Procedure 0x4069f0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_354]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_355]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
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
	#Procedure 0x406a90

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_354]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_355]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
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
	#Procedure 0x406b00
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_354]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_355]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
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
	#Procedure 0x406b70

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
	je	.label_357
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
.label_357:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406c50
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_354]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_355]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_358
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_358
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
.label_358:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406ce0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_354]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_355]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_359
	test	rdx, rdx
	je	.label_359
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
.label_359:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d70
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_354]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_355]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_360
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_360
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
.label_360:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e10
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_354]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_355]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_361
	test	rsi, rsi
	je	.label_361
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
.label_361:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406eb0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ec0
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
	#Procedure 0x406ee0
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
	#Procedure 0x406f00
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
	#Procedure 0x406f30

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
	jne	.label_363
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_365
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_362
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_362
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_362
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_362
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_362
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_362
	nop	
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_363
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_363
.label_365:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_362
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_362
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_362
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_362
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_362
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_362
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_364
.label_362:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_363:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_364:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_363
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_363
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4070a0

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
	.section	.text
	.align	32
	#Procedure 0x4070c0

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
	je	.label_366
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
	jmp	.label_368
.label_366:
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
.label_368:
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
	ja	.label_370
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_371]]
.label_500:
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
.label_370:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_374
.label_501:
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
.label_502:
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
.label_503:
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
	jmp	.label_375
.label_504:
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
	jmp	.label_373
.label_505:
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
	jmp	.label_372
.label_506:
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
.label_372:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_373:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_375:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_369
.label_508:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
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
	jmp	.label_367
.label_507:
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
.label_367:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_369:
	mov	rbp, rbp
	call	__fprintf_chk
.label_499:
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
	#Procedure 0x4074b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_376:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_376
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074e0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_379:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_377
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_378
	nop	word ptr cs:[rax + rax]
.label_377:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_378:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_380
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_379
.label_380:
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
	#Procedure 0x407570

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_381
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
.label_381:
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
.label_383:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_382
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_384
	nop	dword ptr [rax + rax]
.label_382:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_384:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_385
	inc	r9
	cmp	r9, 0xa
	jb	.label_383
.label_385:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
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
	#Procedure 0x407740
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
	jb	.label_386
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_387
	test	rax, rax
	je	.label_386
.label_387:
	nop	
	pop	rbx
	ret	
.label_386:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407790

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_388
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_389
.label_388:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_389:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077c0
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
	jb	.label_391
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_390
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_390
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_390:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_392
	test	rax, rax
	je	.label_391
.label_392:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_391:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407840

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_393
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_393
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_393:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_394
	test	rax, rax
	nop	
	je	.label_395
.label_394:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_395:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407890
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_400
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_396
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_402
.label_400:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_399
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_399:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_401
.label_402:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_398
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_398
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_398:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_397
	test	rax, rax
	mov	rbp, rbp
	je	.label_396
.label_397:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_396:
	call	xalloc_die
.label_401:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407970
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
	je	.label_403
.label_404:
	pop	rbx
	ret	
.label_403:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407990
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_408
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_409
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_407
	call	free
	xor	eax, eax
	jmp	.label_405
.label_408:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_406
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_407:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_405
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_406
.label_405:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_406:
	mov	rbp, rbp
	call	xalloc_die
.label_409:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407a20
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
	je	.label_410
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_411
.label_410:
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
.label_411:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a80
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
	jb	.label_412
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_412
	pop	rcx
	ret	
.label_412:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407ab0

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
	je	.label_414
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_413
.label_414:
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
.label_413:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b10
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
	je	.label_415
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_416
.label_415:
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
.label_416:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407b70

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
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407bc0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_417
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_418
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
	je	.label_418
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
.label_417:
	mov	ecx, 1
.label_418:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c30

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
	js	.label_420
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_421
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
	je	.label_420
.label_421:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_420
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_419
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_419:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_420:
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
	#Procedure 0x407ce0

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
	je	.label_439
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
.label_439:
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
	ja	.label_432
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_426
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_423
	mov	rsp, rsp
	test	esi, esi
	jne	.label_432
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_433
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_438
.label_432:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_427
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_423
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_434
.label_426:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_430
.label_423:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_431
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_435
.label_431:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_435:
	mov	edx, dword ptr [rax]
.label_428:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_430:
	mov	ebp, eax
.label_424:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_434:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_427
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_429
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_442
.label_427:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_437
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_440
.label_433:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_438:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_428
.label_429:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_442:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_425
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
	jns	.label_422
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_422
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
	js	.label_424
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_441
.label_422:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_424
.label_437:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_440:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_430
.label_425:
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
.label_441:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_424
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_424
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_436
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
	jne	.label_424
.label_436:
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
	jmp	.label_424
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4080b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_443
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_443
	test	byte ptr [rbx + 1], 1
	je	.label_443
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_443:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4080f0

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
	jne	.label_444
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_444
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_445
.label_444:
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
.label_445:
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
	je	.label_446
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_446:
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
	#Procedure 0x4081a0

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
	je	.label_447
	nop	
	cmp	r15, -2
	jb	.label_447
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_447
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_447:
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
	#Procedure 0x408230

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
	jne	.label_448
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_449
	test	cl, cl
	mov	rsp, rsp
	jne	.label_449
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_449
.label_448:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_449
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_449:
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
	#Procedure 0x4082c0

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
	je	.label_451
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_450
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_452
.label_450:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_451
.label_452:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_451:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408310

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
	mov	ecx, OFFSET FLAT:.str_1
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_453
	nop	
	mov	rax, rcx
.label_453:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x408350

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