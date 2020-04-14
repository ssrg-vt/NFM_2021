	.section	.text
	.align	32
	#Procedure 0x401ca0

	.globl usage
	.type usage, @function
usage:
	nop	
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebp, edi
	lea	rsi, [rsi]
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, qword ptr [rip + stdout]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rip + stdout]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rdx, rax
	mov	esi, 1
	mov	ecx, 2
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	call	__fprintf_chk
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.5
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rip + stdout]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.7
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rip + stdout]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.55
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	nop	
	xor	eax, eax
	call	__printf_chk
	mov	rsp, rsp
	mov	edi, 5
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	call	setlocale
	mov	rbp, rbp
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.57
	mov	rbp, rbp
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_8
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.8
	mov	rbp, rbp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.60
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.8
	mov	ecx, OFFSET FLAT:.str.61
	lea	rdi, [rdi]
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
.label_7:
	nop	
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rip + program_name]
	mov	rbp, rbp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401fc0

	.globl main
	.type main, @function
main:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x118
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x58], rbp
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], edi
	call	getpagesize
	movsxd	rbx, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rbx
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.10
	nop	
	mov	esi, OFFSET FLAT:.str.11
	call	bindtextdomain
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.10
	mov	rsp, rsp
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rip + infile], OFFSET FLAT:.str.12
	mov	qword ptr [rip + outbase], OFFSET FLAT:.str.13
	not	rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x60], rbx
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rax
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	xor	r12d, r12d
	mov	dword ptr [rsp + 0x40], 0
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_16
.label_720:
	mov	rbp, rbp
	mov	byte ptr [rip + verbose],  1
	nop	dword ptr [rax + rax]
.label_16:
	mov	ebx, dword ptr [rip + optind]
	test	ebx, ebx
	mov	eax, 1
	cmove	ebx, eax
	mov	edx, OFFSET FLAT:.str.14
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	call	getopt_long
	lea	rsi, [rsi]
	mov	r13d, eax
	cmp	r13d, 0x42
	jle	.label_46
	lea	eax, [r13 - 0x74]
	mov	rbp, rbp
	cmp	eax, 0xf
	nop	
	jbe	.label_49
	lea	rdi, [rdi]
	lea	eax, [r13 - 0x61]
	cmp	eax, 0xd
	ja	.label_55
	jmp	qword ptr [(rax * 8) + label_58]
.label_620:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.15
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	movabs	rdx, 0x1fffffffffffffff
	mov	rbp, rbp
	mov	r8, rax
	call	xdectoumax
	mov	rbp, rbp
	mov	qword ptr [rip + suffix_length],  rax
	jmp	.label_16
	nop	word ptr cs:[rax + rax]
.label_46:
	lea	rdi, [rdi]
	cmp	r13d, 0x2f
	mov	rsp, rsp
	jle	.label_57
	mov	rbp, rbp
	lea	eax, [r13 - 0x30]
	cmp	eax, 0xa
	jae	.label_84
	mov	rsp, rsp
	test	r15d, r15d
	mov	ebp, 0
	mov	rbp, rbp
	je	.label_88
	mov	rbp, rbp
	cmp	r15d, 4
	mov	rsp, rsp
	mov	rbp, r12
	nop	
	jne	.label_24
.label_88:
	cmp	dword ptr [rsp + 0x40], 0
	lea	rdi, [rdi]
	je	.label_95
	cmp	dword ptr [rsp + 0x40], ebx
	mov	rsp, rsp
	mov	eax, 0
	mov	rbp, rbp
	jne	.label_152
.label_95:
	lea	rdi, [rdi]
	movabs	rax, 0x1999999999999999
	lea	rdi, [rdi]
	cmp	rbp, rax
	mov	rsp, rsp
	mov	rax, rbp
	mov	rsp, rsp
	ja	.label_60
.label_152:
	lea	rsi, [rsi]
	lea	rcx, [rax + rax*4]
	movsxd	rdx, r13d
	lea	r12, [rdx + rcx*2 - 0x30]
	mov	r15d, 4
	mov	rsp, rsp
	cmp	r12, rax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], ebx
	mov	rbp, rbp
	mov	rbp, rax
	nop	
	jae	.label_16
	lea	rsi, [rsi]
	jmp	.label_60
	nop	dword ptr [rax + rax]
.label_49:
	jmp	qword ptr [(rax * 8) + label_112]
.label_718:
	mov	rsp, rsp
	mov	rax, qword ptr [rip + optarg]
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_114
	mov	dl, byte ptr [rax + 1]
	test	dl, dl
	je	.label_118
	movzx	ecx, cl
	mov	rsp, rsp
	cmp	ecx, 0x5c
	lea	rdi, [rdi]
	jne	.label_121
	lea	rdi, [rdi]
	movzx	ecx, dl
	cmp	ecx, 0x30
	jne	.label_121
	cmp	byte ptr [rax + 2], 0
	lea	rdi, [rdi]
	jne	.label_121
	xor	ecx, ecx
.label_118:
	mov	edx, dword ptr [rip + eolchar]
	test	edx, edx
	movsx	eax, cl
	js	.label_127
	cmp	eax, edx
	jne	.label_128
.label_127:
	mov	dword ptr [rip + eolchar],  eax
	jmp	.label_16
.label_622:
	cmp	r13d, 0x64
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:.str.29
	mov	eax, OFFSET FLAT:.str.28
	lea	rdi, [rdi]
	cmove	r14, rax
	mov	rbp, rbp
	mov	qword ptr [rip + suffix_alphabet],  r14
	mov	rbp, rbp
	mov	rbp, qword ptr [rip + optarg]
	mov	rsp, rsp
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_16
	mov	rsp, rsp
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, rbp
	mov	rsi, r14
	call	strspn
	cmp	rbx, rax
	jne	.label_142
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x30
	jne	.label_120
	mov	rsp, rsp
	inc	rbp
	nop	
.label_151:
	cmp	byte ptr [rbp], 0
	je	.label_149
	lea	rdi, [rdi]
	mov	qword ptr [rip + optarg],  rbp
	movzx	eax, byte ptr [rbp]
	mov	rbp, rbp
	inc	rbp
	cmp	eax, 0x30
	je	.label_151
.label_149:
	dec	rbp
.label_120:
	nop	
	mov	qword ptr [rip + numeric_suffix_start],  rbp
	lea	rdi, [rdi]
	jmp	.label_16
.label_55:
	mov	rsp, rsp
	cmp	r13d, 0x43
	jne	.label_84
	test	r15d, r15d
	mov	rbp, rbp
	jne	.label_24
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	nop	
	mov	esi, 1
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:main.multipliers
	mov	rbp, rbp
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	movabs	rdx, 0x7fffffffffffffff
	mov	r8, rax
	nop	
	call	xdectoumax
	mov	r12, rax
	mov	rbp, rbp
	mov	r15d, 2
	jmp	.label_16
.label_719:
	mov	rsp, rsp
	mov	byte ptr [rip + unbuffered],  1
	jmp	.label_16
.label_721:
	mov	rsp, rsp
	mov	rax, qword ptr [rip + optarg]
	mov	rbp, rbp
	mov	qword ptr [rip + filter_command],  rax
	jmp	.label_16
.label_722:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, qword ptr [rsp + 0x60]
	mov	r8, rax
	call	xdectoumax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x68], rax
	jmp	.label_16
.label_723:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rip + optarg]
	nop	
	mov	rdi, rbx
	mov	rbp, rbp
	call	last_component
	cmp	rax, rbx
	lea	rsi, [rsi]
	jne	.label_20
	mov	rsp, rsp
	mov	qword ptr [rip + additional_suffix],  rbx
	jmp	.label_16
.label_621:
	lea	rdi, [rdi]
	test	r15d, r15d
	jne	.label_24
	nop	
	mov	rbx, qword ptr [rip + optarg]
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	esi, 1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:main.multipliers
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rdi, rbx
	movabs	rdx, 0x7fffffffffffffff
	nop	
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	mov	r15d, 1
	jmp	.label_16
.label_623:
	lea	rdi, [rdi]
	mov	byte ptr [rip + elide_empty_files],  1
	mov	rsp, rsp
	jmp	.label_16
.label_624:
	test	r15d, r15d
	jne	.label_24
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	mov	r15d, 3
	nop	
	jmp	.label_16
.label_625:
	nop	
	test	r15d, r15d
	mov	rsp, rsp
	jne	.label_24
	mov	rsp, rsp
	mov	rbx, qword ptr [rip + optarg]
	nop	
	movzx	ebp, byte ptr [rbx]
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	mov	rsp, rsp
	je	.label_73
	lea	rdi, [rdi]
	inc	rbx
	nop	
	mov	rcx, rbx
	nop	
.label_80:
	mov	qword ptr [rip + optarg],  rcx
	movzx	edx, byte ptr [rcx]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rbx, rcx
	inc	rcx
	mov	rbp, rbp
	test	byte ptr [rsi + rdx*2 + 1], 0x20
	nop	
	jne	.label_80
.label_73:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 2
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strncmp
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_90
	mov	esi, OFFSET FLAT:.str.21
	lea	rsi, [rsi]
	mov	edx, 2
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	strncmp
	mov	rsp, rsp
	mov	r15d, 5
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_76
	lea	rsi, [rsi]
	add	rbx, 2
	mov	qword ptr [rip + optarg],  rbx
	lea	rsi, [rsi]
	mov	r15d, 6
	jmp	.label_76
.label_90:
	mov	rbp, rbp
	add	rbx, 2
	mov	qword ptr [rip + optarg],  rbx
	mov	rsp, rsp
	mov	r15d, 7
.label_76:
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strchr
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_109
	lea	rdi, [rdi]
	lea	rbx, [rbp + 1]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	nop	
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	rbp, rbp
	mov	r12, rax
	mov	rbp, rbp
	cmp	qword ptr [rip + optarg],  rbp
	je	.label_16
	mov	byte ptr [rbp], 0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.78
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rdx, r12
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_16
.label_109:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	nop	
	call	dcgettext
	mov	esi, 1
	nop	
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	xor	r9d, r9d
	nop	
	mov	rdi, rbx
	mov	r8, rax
	lea	rdi, [rdi]
	call	xdectoumax
	mov	r12, rax
	jmp	.label_16
.label_57:
	cmp	r13d, -1
	nop	
	jne	.label_147
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	rax, rcx
	nop	
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	je	.label_148
	mov	rax, qword ptr [rip + filter_command]
	lea	rsi, [rsi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_153
.label_148:
	mov	eax, 3
	mov	r13d, 0x3e8
	test	r15d, r15d
	nop	
	je	.label_157
	mov	rsp, rsp
	test	r12, r12
	nop	
	mov	eax, r15d
	mov	r13, r12
	je	.label_158
.label_157:
	cmp	dword ptr [rip + eolchar],  0
	jns	.label_160
	mov	dword ptr [rip + eolchar],  0xa
.label_160:
	mov	rdi, qword ptr [rip + numeric_suffix_start]
	test	rdi, rdi
	je	.label_164
	nop	
	mov	byte ptr [rip + suffix_auto],  1
.label_164:
	lea	r15d, [rax - 5]
	mov	rbp, rbp
	mov	r12, rax
	mov	rbp, rbp
	xor	ebp, ebp
	cmp	r15d, 2
	ja	.label_165
	test	rdi, rdi
	nop	
	mov	rbx, r13
	je	.label_146
	lea	rcx, [rsp + 0x80]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	call	xstrtoumax
	mov	rsp, rsp
	test	eax, eax
	mov	rbx, r13
	jne	.label_146
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x80]
	nop	
	mov	rcx, r13
	lea	rdi, [rdi]
	not	rcx
	mov	rsp, rsp
	xor	edx, edx
	cmp	rax, r13
	lea	rdi, [rdi]
	mov	ebx, 0
	mov	rbp, rbp
	cmovb	rbx, rax
	mov	rsp, rsp
	cmp	rax, rcx
	cmova	rbx, rdx
	nop	
	add	rbx, r13
.label_146:
	mov	rdi, qword ptr [rip + suffix_alphabet]
	call	strlen
	mov	rcx, rax
	mov	rbp, rbp
	mov	rbp, -1
	mov	rax, rbx
	nop	dword ptr [rax + rax]
.label_17:
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	inc	rbp
	nop	
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_17
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	mov	rbp, rbp
	test	rdx, rdx
	setne	al
	movzx	eax, al
	add	rbp, rax
	nop	
	mov	byte ptr [rip + suffix_auto],  1
.label_165:
	mov	rsp, rsp
	mov	rbx, qword ptr [rip + suffix_length]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_29
	mov	rsp, rsp
	cmp	rbx, rbp
	nop	
	jb	.label_33
	mov	byte ptr [rip + suffix_auto],  1
	mov	rsp, rsp
	jmp	.label_38
.label_29:
	lea	rsi, [rsi]
	cmp	rbp, 2
	mov	ebx, 2
	lea	rdi, [rdi]
	cmovae	rbx, rbp
	mov	rbp, rbp
	mov	qword ptr [rip + suffix_length],  rbx
.label_38:
	mov	eax, dword ptr [rip + optind]
	mov	rsp, rsp
	cmp	eax, dword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	jge	.label_36
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	inc	eax
	mov	dword ptr [rip + optind],  eax
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rip + infile],  rcx
.label_36:
	mov	rsp, rsp
	cmp	eax, dword ptr [rsp + 0x18]
	nop	
	jge	.label_54
	movsxd	rcx, eax
	lea	rdi, [rdi]
	lea	eax, [rax + 1]
	mov	rsp, rsp
	mov	dword ptr [rip + optind],  eax
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rip + outbase],  rcx
.label_54:
	mov	rsp, rsp
	cmp	eax, dword ptr [rsp + 0x18]
	jl	.label_141
	mov	rdi, qword ptr [rip + numeric_suffix_start]
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_68
	call	strlen
	nop	
	cmp	rax, rbx
	ja	.label_69
.label_68:
	mov	rsi, qword ptr [rip + infile]
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	nop	
	jne	.label_75
	mov	rsp, rsp
	cmp	byte ptr [rsi + 1], 0
	lea	rdi, [rdi]
	je	.label_78
.label_75:
	mov	rbp, rbp
	xor	edi, edi
	xor	edx, edx
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	call	fd_reopen
	test	eax, eax
	js	.label_83
.label_78:
	mov	edi, 1
	nop	
	xor	esi, esi
	mov	edx, OFFSET FLAT:in_stat_buf
	nop	
	call	__fxstat
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_32
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r13
	mov	rsp, rsp
	test	r14, r14
	mov	rsp, rsp
	jne	.label_170
	nop	
	mov	rax, qword ptr [rip + label_94]
	mov	rbp, rbp
	movabs	rcx, 0x1fffffffffffffff
	mov	rdx, rcx
	add	rdx, 2
	cmp	rax, rdx
	mov	ecx, 0x200
	mov	r14d, 0x200
	nop	
	cmovb	r14, rax
	test	rax, rax
	cmovle	r14, rcx
	lea	rdi, [rdi]
	cmp	rax, rdx
	lea	rsi, [rsi]
	mov	ecx, 0x20000
	mov	rbp, rbp
	cmovae	r14, rcx
	lea	rsi, [rsi]
	test	rax, rax
	cmovle	r14, rcx
	cmp	rax, 0x20000
	cmovl	r14, rcx
.label_170:
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	lea	rdi, [r14 + rbx]
	lea	rdi, [rdi]
	call	xmalloc
	mov	rbp, rbp
	lea	rcx, [rax + rbx - 1]
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, rcx
	lea	rsi, [rsi]
	div	rbx
	sub	rcx, rdx
	nop	
	mov	r13, -1
	cmp	r15d, 1
	ja	.label_111
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rcx
	xor	ebx, ebx
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	mov	rbp, rbp
	call	lseek
	lea	rdi, [rdi]
	mov	r13, rax
	lea	rsi, [rsi]
	test	r13, r13
	js	.label_124
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x40]
.label_34:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rax + rbx]
	mov	rdx, r14
	sub	rdx, rbx
	nop	
	xor	edi, edi
	call	safe_read
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_129
	cmp	rax, -1
	nop	
	je	.label_71
	mov	rbp, rbp
	add	rbx, rax
	cmp	rbx, r14
	jb	.label_34
	mov	rax, qword ptr [rip + label_132]
	mov	rsp, rsp
	test	rax, rax
	je	.label_133
	lea	rdi, [rdi]
	add	r13, rbx
	lea	rsi, [rsi]
	mov	ecx, 0x2000
	mov	rsp, rsp
	or	ecx, dword ptr [rip + label_135]
	nop	
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	nop	
	jne	.label_136
	mov	rsp, rsp
	cmp	r13, rax
	nop	
	jle	.label_144
.label_136:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 2
	call	lseek
	mov	rsp, rsp
	mov	r15, rax
	lea	rsi, [rsi]
	test	r15, r15
	js	.label_71
	cmp	r15, r13
	mov	rax, r13
	nop	
	je	.label_144
	xor	edi, edi
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rsi, r13
	call	lseek
	test	rax, rax
	nop	
	js	.label_71
	lea	rdi, [rdi]
	cmp	r15, r13
	nop	
	cmovl	r15, r13
	mov	rax, r15
.label_144:
	nop	
	sub	rax, r13
	add	rbx, rax
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	rbx, rax
	mov	rsp, rsp
	je	.label_133
.label_129:
	test	rbx, rbx
	js	.label_71
	test	rbp, rbp
	js	.label_166
	cmp	rbx, r14
	mov	r13, r14
	lea	rdi, [rdi]
	cmovb	r13, rbx
	cmp	rbx, rbp
	lea	rdi, [rdi]
	cmovbe	rbx, rbp
	mov	qword ptr [rsp + 0x10], rbx
	nop	
	jmp	.label_100
.label_111:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rcx
.label_100:
	mov	qword ptr [rsp + 0x68], r14
	cmp	qword ptr [rip + filter_command],  0
	lea	rsi, [rsi]
	je	.label_169
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:newblocked
	call	sigemptyset
	lea	rdx, [rsp + 0x80]
	nop	
	mov	edi, 0xd
	xor	esi, esi
	lea	rdi, [rdi]
	call	sigaction
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x80], 1
	je	.label_10
	mov	edi, OFFSET FLAT:newblocked
	mov	rsp, rsp
	mov	esi, 0xd
	mov	rbp, rbp
	call	sigaddset
.label_10:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:newblocked
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:oldblocked
	call	sigprocmask
.label_169:
	xor	r14d, r14d
	dec	r12d
	cmp	r12d, 6
	ja	.label_18
	mov	al, 1
	nop	
	mov	dword ptr [rsp + 0x18], eax
	mov	rcx, qword ptr [rsp + 0x70]
	jmp	qword ptr [(r12 * 8) + label_21]
	nop	word ptr [rax + rax]
.label_82:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x68]
	call	safe_read
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_32
	mov	rbp, rbp
	lea	r13, [rbx + rax]
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rip + eolchar]
	mov	byte ptr [rbx + rax], bpl
	nop	
	mov	qword ptr [rsp + 0x58], rax
	lea	rsi, [rsi]
	lea	r15, [rbx + rax + 1]
	nop	
	jmp	.label_37
	nop	
.label_167:
	nop	
	mov	eax, dword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	and	al, 1
	mov	rdx, rbx
	nop	
	sub	rdx, r12
	mov	rbp, rbp
	movzx	edi, al
	mov	rbp, rbp
	mov	rsi, r12
	lea	rdi, [rdi]
	call	cwrite
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], eax
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	ebp, dword ptr [rip + eolchar]
.label_37:
	mov	rsp, rsp
	mov	r12, rbx
	nop	word ptr cs:[rax + rax]
.label_66:
	mov	rdx, r15
	sub	rdx, rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	esi, ebp
	mov	rbp, rbp
	call	memchr
	nop	
	mov	rbx, rax
	cmp	rbx, r13
	je	.label_64
	lea	rdi, [rdi]
	inc	rbx
	nop	
	inc	r14
	cmp	r14, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	jb	.label_66
	lea	rsi, [rsi]
	jmp	.label_167
	nop	
.label_64:
	sub	r13, r12
	je	.label_72
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	and	al, 1
	movzx	edi, al
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r13
	call	cwrite
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x18], 0
.label_72:
	nop	
	mov	rax, qword ptr [rsp + 0x58]
	test	rax, rax
	jne	.label_82
	jmp	.label_23
.label_602:
	mov	rcx, -1
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x68]
	jmp	.label_85
.label_603:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	rax, rdx
	not	rax
	mov	qword ptr [rsp + 0x78], rax
	xor	esi, esi
	lea	rdi, [rdi]
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rax
	xor	r14d, r14d
	mov	r13, qword ptr [rsp + 0x40]
.label_31:
	lea	rsi, [rsi]
	mov	r12, rsi
	xor	edi, edi
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rsi, r15
	call	safe_read
	test	rax, rax
	mov	rsp, rsp
	je	.label_106
	mov	rbp, rbp
	cmp	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r15
	mov	r15, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, r12
	jne	.label_99
	jmp	.label_32
.label_47:
	nop	
	mov	qword ptr [rsp + 0x70], rbx
	lea	rdi, [rdi]
	jmp	.label_96
.label_50:
	mov	qword ptr [rsp + 0x70], rbx
	lea	rdi, [rdi]
	jmp	.label_96
	nop	word ptr cs:[rax + rax]
.label_99:
	nop	
	mov	qword ptr [rsp + 0x58], rsi
	sub	r13, r14
	mov	rbx, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	sub	r13, rbx
	cmp	r13, r15
	mov	rbp, rbp
	jbe	.label_119
	lea	rsi, [rsi]
	mov	esi, dword ptr [rip + eolchar]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, r15
	call	memrchr
	mov	rsp, rsp
	mov	r12, rax
	lea	rsi, [rsi]
	xor	r13d, r13d
	nop	
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_161
	nop	
.label_119:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rax, [rdi + r13 - 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	mov	esi, dword ptr [rip + eolchar]
	mov	rdx, r13
	nop	
	call	memrchr
	mov	rsp, rsp
	mov	r12, rax
.label_161:
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_59
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_138
	test	r12, r12
	mov	rsp, rsp
	jne	.label_138
	mov	qword ptr [rsp + 0x60], r15
	mov	rbp, rbp
	jmp	.label_140
	nop	
.label_59:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r15
	mov	rsp, rsp
	xor	ebx, ebx
	jmp	.label_140
	nop	
.label_138:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], r15
	mov	rsp, rsp
	test	r14, r14
	nop	
	sete	al
	movzx	edi, al
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rsp, rsp
	call	cwrite
	add	r14, rbx
	mov	rsp, rsp
	mov	rax, rbx
	mov	rbx, qword ptr [rsp + 0x68]
	cmp	rax, rbx
	lea	rsi, [rsi]
	jbe	.label_155
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	xrealloc
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_155:
	mov	qword ptr [rsp + 0x58], rbx
	xor	ebx, ebx
	nop	
	mov	rbp, qword ptr [rsp + 0x50]
.label_140:
	lea	rdi, [rdi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_162
	mov	rsp, rsp
	mov	r15, rbx
	mov	rbx, r12
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	sub	rbx, rsi
	lea	rsi, [rsi]
	lea	rbp, [rbx + 1]
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	sete	al
	movzx	edi, al
	mov	rdx, rbp
	call	cwrite
	mov	rbp, rbp
	lea	r14, [r14 + rbx + 1]
	mov	rbx, r15
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	sub	r15, rbp
	lea	rsi, [rsi]
	inc	r12
	nop	
	mov	rcx, qword ptr [rsp + 0x30]
	test	rcx, rcx
	mov	rbp, rbp
	cmove	rbp, rcx
	sub	r13, rbp
	lea	rdi, [rdi]
	mov	dl, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r12
	nop	
	jmp	.label_27
	nop	word ptr cs:[rax + rax]
.label_162:
	nop	
	mov	qword ptr [rsp + 0x70], rbx
	test	bpl, 1
	jne	.label_12
	mov	rbp, rbp
	test	r14, r14
	nop	
	sete	al
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	mov	r15, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x50], rbp
	lea	rdi, [rdi]
	mov	rbp, r15
	lea	rdi, [rdi]
	cmovne	rbp, r13
	mov	rbp, rbp
	movzx	edi, al
	nop	
	mov	rax, r13
	cmove	rax, rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	r12, qword ptr [rsp + 0x18]
	mov	rsi, r12
	mov	rdx, rbp
	mov	rbp, rbp
	call	cwrite
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rdi, [rdi]
	add	r14, rbp
	sub	r15, rbp
	nop	
	add	r12, rbp
	mov	qword ptr [rsp + 0x18], r12
	lea	rsi, [rsi]
	sub	r13, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x50]
	nop	
	mov	dl, al
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	jmp	.label_27
.label_12:
	mov	rbp, rbp
	mov	dl, bpl
	mov	rbx, qword ptr [rsp + 0x70]
	mov	r15, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
	nop	word ptr cs:[rax + rax]
.label_27:
	test	rcx, rcx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	
	je	.label_43
	test	r13, r13
	mov	rsp, rsp
	jne	.label_67
.label_43:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_47
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_50
.label_67:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], r14
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	cmove	r13, r15
	lea	rdi, [rdi]
	mov	rax, rsi
	nop	
	sub	rax, rbx
	mov	r14b, dl
	mov	rbp, rcx
	cmp	rax, r13
	lea	rsi, [rsi]
	jae	.label_105
	mov	rbp, rbp
	cmp	rsi, qword ptr [rsp + 0x78]
	mov	rdi, qword ptr [rsp + 0x10]
	nop	
	ja	.label_65
	mov	rsp, rsp
	add	rsi, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x58], rsi
	call	xrealloc
	jmp	.label_74
	nop	word ptr cs:[rax + rax]
.label_105:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
.label_74:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	lea	rdi, [rax + rbx]
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, r13
	call	memcpy
	add	rbx, r13
	mov	qword ptr [rsp + 0x70], rbx
	mov	rsp, rsp
	sub	r15, r13
	lea	rsi, [rsi]
	add	r12, r13
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r12
	mov	rcx, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	nop	
	mov	dl, r14b
	mov	r14, qword ptr [rsp + 0x60]
.label_96:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	test	rcx, rcx
	mov	ebp, 0
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	jne	.label_92
	nop	
	mov	bpl, dl
.label_92:
	cmovne	r14, rax
	lea	rsi, [rsi]
	test	r15, r15
	nop	
	jne	.label_99
	cmp	qword ptr [rsp + 0x20], 0
	mov	rdx, qword ptr [rsp + 0x68]
	jne	.label_31
.label_106:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x70]
	test	rdx, rdx
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	je	.label_103
	test	r14, r14
	lea	rsi, [rsi]
	sete	al
	mov	rsp, rsp
	movzx	edi, al
	mov	rbp, rbp
	mov	rsi, rbx
	call	cwrite
.label_103:
	mov	rdi, rbx
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	jmp	.label_23
.label_604:
	test	rcx, rcx
	je	.label_113
	lea	rbp, [rcx - 1]
	mov	rsi, qword ptr [rsp + 0x40]
	cmp	rbp, rsi
	mov	rdi, qword ptr [rsp + 0x28]
	nop	
	mov	rbx, qword ptr [rsp + 0x10]
	nop	
	jae	.label_115
	nop	
	cmp	rsi, rbx
	ja	.label_115
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rsi
	mov	rbp, rbp
	mov	r15, rax
	lea	rdi, [rdi]
	imul	rbp, r15
	mov	rbp, rbp
	imul	r15, rcx
	cmp	rcx, rsi
	nop	
	cmove	r15, rbx
	sub	r13, rbp
	nop	
	jbe	.label_123
	lea	rsi, [rdi + rbp]
	mov	r12, rdi
	nop	
	mov	rdx, r13
	call	memmove
	jmp	.label_42
.label_605:
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	cmp	rcx, rsi
	mov	rbp, qword ptr [rsp + 0x10]
	ja	.label_130
	nop	
	lea	rax, [rsi - 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_130
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, rbp
	div	rsi
	mov	r12d, 1
	mov	rsp, rsp
	xor	r15d, r15d
	cmp	rcx, 2
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	jb	.label_137
	lea	rsi, [rsi]
	lea	r12, [rcx - 1]
	mov	rbp, rbp
	mov	r15, rax
	nop	
	mov	qword ptr [rsp + 0x78], r15
	mov	rbp, rbp
	mov	r14, rcx
	imul	r15, r12
	lea	rdi, [rdi]
	dec	r15
	mov	rsp, rsp
	mov	rsi, r15
	sub	rsi, r13
	mov	rsp, rsp
	jae	.label_145
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rsi, [rdi + r15]
	lea	rdi, [rdi]
	sub	r13, r15
	mov	rsp, rsp
	mov	rdx, r13
	call	memmove
	mov	rbx, r15
	mov	rcx, r14
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x68]
	nop	
	jmp	.label_26
.label_606:
	test	rcx, rcx
	mov	rbp, rbp
	mov	r14, rcx
	jne	.label_159
	mov	rbp, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rax, rbp
	shr	rax, 0x3a
	mov	rsp, rsp
	jne	.label_163
	lea	rsi, [rsi]
	mov	rdi, rbp
	shl	rdi, 5
	call	xmalloc
	mov	r12, rax
	mov	rbx, r12
	lea	rsi, [rsi]
	add	rbx, 0x18
	nop	word ptr cs:[rax + rax]
.label_171:
	nop	
	call	next_file_name
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rip + outfile]
	lea	rdi, [rdi]
	call	xstrdup
	mov	qword ptr [rbx - 0x18], rax
	mov	dword ptr [rbx - 0x10], 0xffffffff
	mov	qword ptr [rbx - 8], 0
	mov	rsp, rsp
	mov	dword ptr [rbx], 0
	add	rbx, 0x20
	dec	rbp
	jne	.label_171
.label_159:
	mov	qword ptr [rsp + 0x30], r12
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	lea	rsi, [rsi]
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	nop	
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x68]
	mov	r15, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	jmp	.label_175
.label_56:
	mov	r12, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x10]
.label_175:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, r15
	call	safe_read
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_117
	mov	rsp, rsp
	cmp	rbx, -1
	je	.label_32
	lea	rdi, [rdi]
	add	rbx, r15
	mov	rbp, r15
	jmp	.label_30
.label_97:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0x40]
	lea	rax, [rax + 1]
	lea	rsi, [rsi]
	mov	ecx, 1
	lea	rsi, [rsi]
	cmovne	rcx, rax
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	mov	r12, qword ptr [rsp + 0x30]
	nop	
	mov	rbp, qword ptr [rsp + 0x58]
	mov	r13, qword ptr [rsp + 0x10]
.label_30:
	mov	dl, r13b
.label_51:
	mov	rax, qword ptr [rsp + 0x60]
	shl	rax, 5
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	lea	rcx, [r12 + rax + 8]
	mov	qword ptr [rsp + 0x78], rcx
	lea	rax, [r12 + rax + 0x10]
	mov	qword ptr [rsp + 0x50], rax
.label_154:
	lea	rdi, [rdi]
	mov	al, dl
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax]
.label_126:
	lea	rdi, [rdi]
	cmp	rbp, rbx
	nop	
	je	.label_56
	mov	r12, r15
	mov	esi, dword ptr [rip + eolchar]
	mov	rsp, rsp
	mov	rdx, rbx
	sub	rdx, rbp
	mov	rdi, rbp
	nop	
	call	memchr
	lea	rsi, [rsi]
	mov	r13, rbx
	nop	
	mov	r15, rax
	lea	rbx, [r15 + 1]
	mov	qword ptr [rsp + 0x58], rbx
	lea	rdi, [rdi]
	test	r15, r15
	mov	rsp, rsp
	cmove	rbx, r13
	lea	rdi, [rdi]
	sub	rbx, rbp
	lea	rsi, [rsi]
	test	r14, r14
	nop	
	je	.label_139
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x18], r14
	mov	rsp, rsp
	jne	.label_35
	movzx	eax, byte ptr [rip + unbuffered]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_93
	mov	edi, 1
	lea	rdi, [rdi]
	mov	rsi, rbp
	nop	
	mov	rdx, rbx
	call	full_write
	lea	rdi, [rdi]
	cmp	rax, rbx
	nop	
	je	.label_35
	jmp	.label_87
	nop	word ptr [rax + rax]
.label_93:
	mov	rcx, qword ptr [rip + stdout]
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, rbx
	call	fwrite_unlocked
	cmp	rax, 1
	jne	.label_62
.label_35:
	mov	rsp, rsp
	test	r15, r15
	mov	rbx, r13
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	r15, r12
	nop	
	je	.label_126
	lea	rdi, [rdi]
	jmp	.label_97
.label_139:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	call	ofile_open
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x4f], al
	movzx	eax, byte ptr [rip + unbuffered]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_172
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	edi, dword ptr [rax]
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, rbx
	call	full_write
	lea	rdi, [rdi]
	cmp	rax, rbx
	lea	rdi, [rdi]
	je	.label_110
	lea	rsi, [rsi]
	jmp	.label_77
.label_172:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	mov	edx, 1
	nop	
	mov	rdi, rbp
	mov	rsi, rbx
	call	fwrite_unlocked
	lea	rsi, [rsi]
	cmp	rax, 1
	je	.label_110
.label_77:
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	ebx, 0x20
	jne	.label_122
	mov	rsp, rsp
	mov	rax, qword ptr [rip + filter_command]
	lea	rsi, [rsi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_122
.label_110:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	and	al, 1
	mov	qword ptr [rsp + 0x10], rax
	call	__errno_location
	mov	rsi, rax
	mov	rbp, rbp
	mov	eax, dword ptr [rsi]
	cmp	qword ptr [rip + filter_command],  0
	lea	rdi, [rdi]
	jne	.label_89
	mov	cl, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rcx
.label_89:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	dl, byte ptr [rsp + 0x4f]
	lea	rdi, [rdi]
	or	dl, cl
	nop	
	cmp	eax, 0x20
	mov	rbp, qword ptr [rsp + 0x50]
	nop	
	je	.label_131
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
.label_131:
	test	dl, dl
	je	.label_98
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rsi
	nop	
	mov	bl, dl
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rsi]
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_116
	lea	rsi, [rsi]
	mov	qword ptr [rbp], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xfffffffe
	mov	rbp, rbp
	mov	dl, bl
.label_98:
	test	r15, r15
	mov	rbx, r13
	nop	
	mov	rbp, rbx
	lea	rdi, [rdi]
	mov	r15, r12
	lea	rdi, [rdi]
	je	.label_154
	mov	rax, qword ptr [rsp + 0x60]
	inc	rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rax
	cmp	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x58]
	jne	.label_51
	mov	al, 1
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x60], rax
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	test	al, 1
	mov	eax, 0
	mov	qword ptr [rsp + 8], rax
	jne	.label_51
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
.label_117:
	test	r14, r14
	nop	
	jne	.label_23
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	cmovne	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	movsxd	r14, eax
	lea	rbp, [r12 + 0x18]
	xor	ebx, ebx
	mov	r15, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_19:
	mov	rsp, rsp
	cmp	rbx, r14
	jb	.label_9
	nop	
	mov	al, byte ptr [rip + elide_empty_files]
	nop	
	and	al, 1
	jne	.label_9
	mov	rdi, r12
	nop	
	mov	rsi, rbx
	mov	rdx, r15
	mov	rsp, rsp
	call	ofile_open
.label_9:
	mov	esi, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	test	esi, esi
	js	.label_15
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp]
	mov	rbp, rbp
	call	closeout
.label_15:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], 0xfffffffe
	lea	rsi, [rsi]
	inc	rbx
	add	rbp, 0x20
	mov	rsp, rsp
	cmp	r15, rbx
	mov	rbp, rbp
	jne	.label_19
	jmp	.label_23
.label_137:
	lea	rbx, [rax - 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rdi]
	jmp	.label_26
.label_113:
	xor	edx, edx
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	div	r8
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x28]
	nop	
	mov	rdx, qword ptr [rsp + 0x68]
	mov	rcx, r13
.label_85:
	mov	rbp, rbp
	call	bytes_split
	jmp	.label_23
.label_123:
	mov	rsp, rsp
	mov	r12, rdi
	xor	edi, edi
	nop	
	mov	edx, 1
	mov	rsi, rbp
	call	lseek
	mov	r13, -1
	mov	rbp, rbp
	test	rax, rax
	nop	
	jns	.label_42
	jmp	.label_32
	nop	dword ptr [rax + rax]
.label_45:
	add	rbp, rbx
	mov	rbp, rbp
	mov	r13, -1
.label_42:
	mov	rsp, rsp
	cmp	r15, rbp
	mov	rsp, rsp
	jle	.label_23
	cmp	r13, -1
	mov	rsp, rsp
	jne	.label_53
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x68]
	call	safe_read
	nop	
	mov	r13, rax
	mov	rsp, rsp
	cmp	r13, -1
	mov	rbp, rbp
	je	.label_32
.label_53:
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_23
	lea	rdi, [rdi]
	mov	rbx, r15
	lea	rsi, [rsi]
	sub	rbx, rbp
	cmp	r13, rbx
	cmovb	rbx, r13
	mov	edi, 1
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	nop	
	je	.label_45
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 0x20
	jne	.label_39
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_45
.label_39:
	nop	
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	edx, OFFSET FLAT:.str.12
	mov	rsp, rsp
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, r14d
	lea	rdi, [rdi]
	call	error
.label_145:
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	edx, 1
	call	lseek
	mov	r13, -1
	test	rax, rax
	mov	rbx, r15
	mov	rcx, r14
	mov	rdx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	js	.label_32
.label_26:
	mov	rsp, rsp
	cmp	r15, rbp
	jge	.label_101
	lea	rsi, [rsi]
	lea	rax, [rbp - 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rax
	mov	byte ptr [rsp + 0x58], 1
	xor	r8d, r8d
	jmp	.label_102
.label_79:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	sub	rbp, r15
	cmp	r13, rbp
	nop	
	cmovb	rbp, r13
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_108
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x50], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	lea	rsi, [rax + rbp]
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	jmp	.label_11
.label_108:
	xor	r8d, r8d
.label_61:
	mov	r13, -1
	cmp	r15, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x70]
	nop	
	jl	.label_102
	mov	rbp, rbp
	jmp	.label_81
.label_44:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdx
	nop	
	mov	cl, byte ptr [rsp + 0x58]
	mov	r13b, cl
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	jmp	.label_125
.label_48:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdx
	mov	cl, byte ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	r13b, cl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x70]
	mov	r14, qword ptr [rsp + 0x78]
.label_125:
	cmp	rdi, rsi
	jne	.label_52
	xor	al, 1
	mov	r8b, 1
	nop	
	test	al, 1
	mov	rbp, rbp
	je	.label_52
	jmp	.label_134
	nop	word ptr cs:[rax + rax]
.label_156:
	mov	rsp, rsp
	mov	rbp, rcx
	mov	edi, 1
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	xor	edx, edx
	call	cwrite
	mov	rcx, rbp
.label_52:
	mov	rsp, rsp
	inc	r12
	test	rcx, rcx
	je	.label_143
	lea	rsi, [rsi]
	cmp	r12, rcx
	mov	rsp, rsp
	ja	.label_23
.label_143:
	mov	rbp, rbp
	add	rbx, r14
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x40], r12
	lea	rsi, [rsi]
	cmove	rbx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	test	rcx, rcx
	jne	.label_150
	cmp	rbx, r15
	jl	.label_156
.label_150:
	mov	rsp, rsp
	cmp	rbx, r15
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	jl	.label_168
	xor	r13d, r13d
.label_168:
	mov	rsp, rsp
	mov	al, r13b
	nop	
	and	al, 1
	mov	rsp, rsp
	cmp	rbx, r15
	jl	.label_125
	mov	rbp, rbp
	test	al, al
	jne	.label_125
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], r14
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x50]
	mov	r8b, al
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_40
.label_134:
	nop	
	mov	qword ptr [rsp + 0x78], r14
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_40
.label_11:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rbp
	mov	al, byte ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 8], al
	lea	rsi, [rsi]
	mov	r13, rdi
	mov	rax, rbx
	sub	rax, r15
	lea	rdi, [rdi]
	mov	ecx, 0
	cmovns	rcx, rax
	nop	
	cmp	rbp, rcx
	lea	rdi, [rdi]
	cmovb	rcx, rbp
	mov	rsp, rsp
	lea	rdi, [r13 + rcx]
	nop	
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rip + eolchar]
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rcx
	mov	rbp, rbp
	call	memchr
	nop	
	mov	rsi, r14
	nop	
	mov	rbp, rax
	lea	rdi, [rbp + 1]
	mov	rsp, rsp
	test	rbp, rbp
	mov	rbp, rbp
	setne	byte ptr [rsp + 0x58]
	cmove	rdi, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x60], rdi
	mov	rdx, rdi
	mov	rsp, rsp
	sub	rdx, r13
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	cmp	r12, rax
	lea	rdi, [rdi]
	jne	.label_14
	mov	qword ptr [rsp + 0x60], rdi
	lea	rdi, [rdi]
	mov	edi, 1
	mov	r14, rsi
	mov	rsi, r13
	nop	
	mov	r13, rdx
	mov	rsp, rsp
	call	full_write
	mov	rdx, r13
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	mov	rsi, r14
	cmp	rax, rdx
	mov	rbp, rbp
	je	.label_28
	lea	rsi, [rsi]
	jmp	.label_87
.label_14:
	nop	
	test	rax, rax
	mov	rsp, rsp
	jne	.label_28
	nop	
	mov	al, byte ptr [rsp + 8]
	and	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	nop	
	movzx	edi, al
	mov	r14, rsi
	mov	rsi, r13
	mov	r13, rdx
	mov	rsp, rsp
	call	cwrite
	nop	
	mov	rdx, r13
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsi, r14
.label_28:
	add	r15, rdx
	lea	rdi, [rdi]
	test	rbp, rbp
	setne	al
	mov	rsp, rsp
	cmp	rbx, r15
	jl	.label_44
	test	al, al
	mov	rbp, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	jne	.label_48
	mov	eax, dword ptr [rsp + 0x50]
	mov	r8b, al
.label_40:
	nop	
	sub	rbp, rdx
	cmp	rdi, rsi
	mov	rsp, rsp
	mov	al, r8b
	mov	dword ptr [rsp + 0x50], eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	jne	.label_11
	jmp	.label_61
.label_102:
	mov	rsp, rsp
	cmp	r13, -1
	jne	.label_63
	mov	r14, rcx
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbp, rdx
	mov	r13, r8
	nop	
	call	safe_read
	mov	rsp, rsp
	mov	r8, r13
	lea	rdi, [rdi]
	mov	rdx, rbp
	nop	
	mov	rcx, r14
	mov	rsp, rsp
	mov	r13, rax
	cmp	r13, -1
	lea	rdi, [rdi]
	je	.label_32
.label_63:
	nop	
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_79
	mov	rbp, rbp
	jmp	.label_81
.label_101:
	nop	
	xor	r8d, r8d
.label_81:
	and	r8b, 1
	movzx	ebx, r8b
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_23
	add	rbx, r12
	jmp	.label_86
	nop	dword ptr [rax]
.label_91:
	inc	rbx
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	call	cwrite
.label_86:
	mov	rsp, rsp
	cmp	rbx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	jbe	.label_91
.label_23:
	mov	rbp, rbp
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_32
	mov	esi, dword ptr [rip + output_desc]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rip + filter_pid]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rip + outfile]
	xor	edi, edi
	call	closeout
	lea	rdi, [rdi]
	xor	eax, eax
	add	rsp, 0x118
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_147:
	cmp	r13d, 0xffffff7d
	je	.label_107
	cmp	r13d, 0xffffff7e
	jne	.label_84
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	call	usage
.label_60:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	r14, rax
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x80]
	mov	rdi, rbp
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	rbp, rbp
	mov	r8d, r13d
	lea	rdi, [rdi]
	call	error
.label_32:
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + infile]
.label_22:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	call	quotearg_n_style_colon
.label_173:
	nop	
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_2
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_24:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
.label_70:
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_84:
	mov	edi, 1
	call	usage
.label_107:
	mov	rsp, rsp
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.34
	nop	
	mov	r9d, OFFSET FLAT:.str.35
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	version_etc
	xor	edi, edi
	call	exit
.label_65:
	call	xalloc_die
.label_62:
	mov	rsp, rsp
	mov	rdi, qword ptr [rip + stdout]
	nop	
	call	clearerr_unlocked
.label_87:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	nop	
	call	dcgettext
	jmp	.label_173
.label_121:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rip + optarg]
	mov	rbp, rbp
	call	quote
	nop	
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	call	error
.label_153:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	jmp	.label_70
.label_141:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.39
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	jmp	.label_174
.label_18:
	call	abort
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	jmp	.label_13
.label_128:
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.26
.label_13:
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
.label_142:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	cmp	r13d, 0x64
	jne	.label_104
	mov	esi, OFFSET FLAT:.str.30
	jmp	.label_25
.label_20:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	rbp, rbp
	jmp	.label_25
.label_83:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rip + infile]
	mov	edi, 4
	call	quotearg_style
	jmp	.label_41
.label_158:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.38
	lea	rsi, [rsi]
	call	quote
	mov	rbp, rax
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	lea	rsi, [rsi]
	call	error
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_33:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	nop	
	mov	rcx, rbp
	call	error
.label_69:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	jmp	.label_70
.label_124:
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x1d
	jne	.label_71
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_71:
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.43
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdx, qword ptr [rip + infile]
	xor	edi, edi
	nop	
	mov	esi, 3
	call	quotearg_n_style_colon
.label_41:
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	error
.label_166:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	lea	rsi, [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	call	umaxtostr
	mov	rdi, rax
	lea	rdi, [rdi]
	call	quote
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 0x4b
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_104:
	mov	esi, OFFSET FLAT:.str.31
.label_25:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
.label_174:
	lea	rdi, [rdi]
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	error
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_130:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.103
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 0x362
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.lines_chunk_split
	lea	rsi, [rsi]
	call	__assert_fail
.label_115:
	nop	
	mov	edi, OFFSET FLAT:.str.102
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 0x3e0
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.bytes_chunk_extract
	call	__assert_fail
.label_116:
	mov	rax, qword ptr [rsp + 0x10]
	mov	ebx, dword ptr [rax]
.label_122:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + rcx]
	nop	
	jmp	.label_22
.label_163:
	call	xalloc_die
.label_133:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_71
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404300

	.globl bytes_split
	.type bytes_split, @function
bytes_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x18], r8
	mov	r14, rcx
	mov	qword ptr [rsp + 8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x30], rdi
	lea	rsi, [r8 - 1]
	mov	rsp, rsp
	mov	bpl, 1
	mov	rsp, rsp
	xor	r12d, r12d
	mov	r13b, 1
	mov	rcx, rdi
.label_190:
	lea	rdi, [rdi]
	cmp	r14, -1
	mov	rsp, rsp
	je	.label_176
	lea	rsi, [rsi]
	cmp	r14, qword ptr [rsp + 8]
	setb	byte ptr [rsp + 0x27]
	jmp	.label_179
	nop	
.label_176:
	test	r13b, 1
	lea	rdi, [rdi]
	jne	.label_185
	mov	rbp, rbp
	mov	r15, rsi
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rcx
	mov	rbp, rbp
	mov	rbx, rcx
	call	lseek
	mov	rsp, rsp
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_177
	mov	bpl, 1
.label_177:
	mov	rsp, rsp
	cmovne	rbx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	jmp	.label_182
.label_185:
	lea	rsi, [rsi]
	mov	rbx, rcx
	mov	r15, rsi
.label_182:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	call	safe_read
	mov	r14, rax
	cmp	r14, -1
	je	.label_191
	mov	rsp, rsp
	test	r14, r14
	mov	rbp, rbp
	sete	byte ptr [rsp + 0x27]
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rcx, rbx
.label_179:
	cmp	r14, rcx
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jb	.label_184
	nop	word ptr cs:[rax + rax]
.label_188:
	mov	al, r13b
	or	al, bpl
	lea	rsi, [rsi]
	and	bpl, 1
	mov	rsp, rsp
	test	al, 1
	je	.label_187
	movzx	edi, bpl
	mov	rsp, rsp
	mov	r13, r12
	nop	
	mov	r12, rsi
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rbp, rcx
	call	cwrite
	mov	rcx, rbp
	mov	rbp, rbx
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	r12, r13
	lea	rsi, [rsi]
	mov	r13b, al
.label_187:
	movzx	eax, bpl
	add	r12, rax
	cmp	rsi, r12
	jae	.label_180
	mov	rbp, rbp
	mov	al, r13b
	and	al, 1
	je	.label_183
.label_180:
	cmp	rsi, r12
	setae	bpl
	mov	rsp, rsp
	add	r15, rcx
	lea	rsi, [rsi]
	sub	r14, rcx
	mov	rax, qword ptr [rsp + 0x30]
	cmp	r14, rax
	mov	rcx, rax
	jae	.label_188
	mov	rcx, qword ptr [rsp + 0x30]
.label_184:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_181
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rcx
	mov	al, r13b
	mov	rbp, rbp
	or	al, bpl
	and	bpl, 1
	test	al, 1
	mov	rsp, rsp
	je	.label_186
	mov	rsp, rsp
	movzx	edi, bpl
	lea	rdi, [rdi]
	mov	rbx, r12
	mov	r12, rsi
	nop	
	mov	rsi, r15
	mov	rdx, r14
	nop	
	call	cwrite
	mov	rsi, r12
	mov	r12, rbx
	lea	rdi, [rdi]
	mov	r13b, al
.label_186:
	movzx	eax, bpl
	lea	rsi, [rsi]
	add	r12, rax
	mov	rsp, rsp
	xor	ebp, ebp
	mov	rbp, rbp
	mov	bl, r13b
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	mov	rdx, r14
	cmove	rdx, rbp
	lea	rsi, [rsi]
	cmp	r12, qword ptr [rsp + 0x18]
	setne	al
	lea	rsi, [rsi]
	cmovne	rdx, r14
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	nop	
	sub	rcx, rdx
	lea	rsi, [rsi]
	or	al, bl
.label_181:
	lea	rsi, [rsi]
	test	al, 1
	je	.label_183
	xor	byte ptr [rsp + 0x27], 1
	mov	r14, -1
	jne	.label_190
.label_183:
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	r12, rbx
	jae	.label_178
	sub	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_189:
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	dec	rbx
	jne	.label_189
.label_178:
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_191:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + infile]
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045e0

	.globl closeout
	.type closeout, @function
closeout:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0x30
	mov	r14, rcx
	mov	rsp, rsp
	mov	r15d, edx
	mov	ebx, esi
	mov	rbp, rdi
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_194
	mov	rdi, rbp
	call	rpl_fclose
	nop	
	test	eax, eax
	je	.label_194
	call	__errno_location
	lea	rdi, [rdi]
	mov	r12d, dword ptr [rax]
	cmp	r12d, 0x20
	jne	.label_196
	nop	
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_196
.label_194:
	test	ebx, ebx
	nop	
	js	.label_198
	test	rbp, rbp
	jne	.label_200
	mov	edi, ebx
	call	close
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_201
.label_200:
	mov	rbp, rbp
	mov	rax, qword ptr [rip + n_open_pipes]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_198
	mov	rbp, rbp
	mov	rcx, qword ptr [rip + open_pipes]
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, rcx
	nop	dword ptr [rax]
.label_195:
	mov	rsp, rsp
	cmp	dword ptr [rdx], ebx
	je	.label_193
	mov	rbp, rbp
	inc	rsi
	mov	rsp, rsp
	add	rdx, 4
	mov	rbp, rbp
	cmp	rsi, rax
	mov	rsp, rsp
	jb	.label_195
	jmp	.label_198
.label_193:
	lea	rdi, [rdi]
	lea	rsi, [rax - 1]
	nop	
	mov	qword ptr [rip + n_open_pipes],  rsi
	mov	rsp, rsp
	mov	eax, dword ptr [rcx + rax*4 - 4]
	mov	dword ptr [rdx], eax
.label_198:
	test	r15d, r15d
	lea	rdi, [rdi]
	jle	.label_197
	mov	dword ptr [rsp + 0xc], 0
	mov	rsp, rsp
	lea	rsi, [rsp + 0xc]
	xor	edx, edx
	mov	edi, r15d
	lea	rsi, [rsi]
	call	waitpid
	nop	
	cmp	eax, -1
	jne	.label_203
	call	__errno_location
	mov	ebx, dword ptr [rax]
	nop	
	cmp	ebx, 0xa
	mov	rbp, rbp
	jne	.label_204
.label_203:
	mov	ebx, dword ptr [rsp + 0xc]
	mov	ebp, ebx
	mov	rsp, rsp
	and	ebp, 0x7f
	mov	eax, ebp
	shl	eax, 0x18
	add	eax, 0x1000000
	nop	
	sar	eax, 0x19
	test	eax, eax
	jle	.label_192
	mov	rsp, rsp
	cmp	ebp, 0xd
	je	.label_197
	lea	rsi, [rsp + 0x10]
	mov	edi, ebp
	mov	rbp, rbp
	call	sig2str
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_199
	lea	rdi, [rsp + 0x10]
	mov	esi, 1
	mov	edx, 0x13
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.107
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	r8d, ebp
	call	__sprintf_chk
.label_199:
	or	ebp, 0x80
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.108
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r14
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	r9, qword ptr [rip + filter_command]
	lea	r8, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	esi, 0
	xor	eax, eax
	mov	edi, ebp
	nop	
	mov	rdx, rbx
	nop	
	call	error
	jmp	.label_197
.label_192:
	nop	
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_202
	shr	ebx, 8
	nop	
	and	ebx, 0xff
	nop	
	je	.label_197
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.109
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	rsp, rsp
	mov	r9, qword ptr [rip + filter_command]
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebx
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	r8d, ebx
	call	error
.label_197:
	add	rsp, 0x30
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_196:
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, r12d
	call	error
.label_201:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	call	error
.label_204:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_202:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.110
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	nop	
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x404920

	.globl cwrite
	.type cwrite, @function
cwrite:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	mov	r14, rsi
	mov	rbp, rbp
	test	dil, dil
	je	.label_205
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_206
	test	rbx, rbx
	jne	.label_206
	mov	al, byte ptr [rip + elide_empty_files]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	al, 1
	jne	.label_207
.label_206:
	mov	esi, dword ptr [rip + output_desc]
	mov	edx, dword ptr [rip + filter_pid]
	mov	rbp, rbp
	mov	rcx, qword ptr [rip + outfile]
	lea	rdi, [rdi]
	xor	edi, edi
	call	closeout
	call	next_file_name
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rip + outfile]
	call	create
	mov	rsp, rsp
	mov	edi, eax
	mov	dword ptr [rip + output_desc],  edi
	lea	rdi, [rdi]
	test	edi, edi
	mov	rsp, rsp
	jns	.label_209
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_208
.label_205:
	mov	edi, dword ptr [rip + output_desc]
.label_209:
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rbp, rbp
	call	full_write
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 1
	cmp	rcx, rbx
	mov	rsp, rsp
	je	.label_207
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x20
	nop	
	jne	.label_208
	lea	rdi, [rdi]
	mov	rax, qword ptr [rip + filter_command]
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_208
	mov	rsp, rsp
	xor	eax, eax
.label_207:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_208:
	nop	
	mov	rdx, qword ptr [rip + outfile]
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a50

	.globl next_file_name
	.type next_file_name, @function
next_file_name:
	mov	rsp, rsp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	r14, qword ptr [rip + outfile]
	nop	
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_223
	lea	rdi, [rdi]
	mov	rax, qword ptr [rip + suffix_length]
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_229
	mov	rcx, qword ptr [rip + next_file_name.sufindex]
	mov	r8b, byte ptr [rip + suffix_auto]
	xor	r8b, 1
	mov	rsi, qword ptr [rip + suffix_alphabet]
	mov	rdi, qword ptr [rip + outfile_mid]
	nop	dword ptr [rax + rax]
.label_230:
	nop	
	mov	rbx, qword ptr [rcx + rax*8 - 8]
	inc	rbx
	mov	qword ptr [rcx + rax*8 - 8], rbx
	lea	rsi, [rsi]
	cmp	rax, 1
	sete	dl
	lea	rdi, [rdi]
	and	dl, r8b
	movzx	edx, dl
	cmp	edx, 1
	jne	.label_217
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	nop	
	cmp	byte ptr [rdx + rsi + 1], 0
	je	.label_223
.label_217:
	lea	rsi, [rsi]
	mov	dl, byte ptr [rsi + rbx]
	mov	byte ptr [rdi + rax - 1], dl
	test	dl, dl
	jne	.label_219
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8 - 8], 0
	nop	
	mov	dl, byte ptr [rsi]
	mov	byte ptr [rdi + rax - 1], dl
	mov	rsp, rsp
	dec	rax
	mov	rbp, rbp
	jne	.label_230
.label_229:
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.83
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	call	error
.label_223:
	mov	r12, qword ptr [rip + next_file_name.outfile_length]
	lea	rdi, [rdi]
	test	r12, r12
	mov	rsp, rsp
	je	.label_222
	lea	rsi, [r12 + 2]
	mov	rsp, rsp
	mov	qword ptr [rip + next_file_name.outfile_length],  rsi
	mov	rbp, rbp
	inc	qword ptr [rip + suffix_length]
	mov	rbx, qword ptr [rip + next_file_name.outbase_length]
	lea	rsi, [rsi]
	jmp	.label_218
.label_222:
	mov	rdi, qword ptr [rip + outbase]
	lea	rdi, [rdi]
	call	strlen
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rip + next_file_name.outbase_length],  rbx
	mov	rdi, qword ptr [rip + additional_suffix]
	lea	rsi, [rsi]
	xor	eax, eax
	test	rdi, rdi
	je	.label_226
	lea	rdi, [rdi]
	call	strlen
.label_226:
	mov	qword ptr [rip + next_file_name.addsuf_length],  rax
	mov	rbp, rbp
	mov	rsi, rbx
	add	rsi, rax
	nop	
	add	rsi, qword ptr [rip + suffix_length]
	nop	
	mov	qword ptr [rip + next_file_name.outfile_length],  rsi
.label_218:
	mov	rbp, rbp
	inc	rsi
	cmp	rsi, rbx
	jb	.label_224
	mov	rsp, rsp
	mov	rdi, r14
	call	xrealloc
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	test	r12, r12
	nop	
	mov	r14, rbx
	nop	
	mov	qword ptr [rip + outfile],  rbx
	mov	rbp, rbp
	je	.label_228
	mov	rsp, rsp
	mov	rax, qword ptr [rip + next_file_name.sufindex]
	mov	rcx, qword ptr [rax]
	mov	rax, qword ptr [rip + suffix_alphabet]
	mov	cl, byte ptr [rax + rcx]
	mov	r15, qword ptr [rip + next_file_name.outbase_length]
	mov	rsp, rsp
	mov	byte ptr [r14 + r15], cl
	lea	rsi, [rsi]
	inc	r15
	lea	rdi, [rdi]
	mov	qword ptr [rip + next_file_name.outbase_length],  r15
	jmp	.label_213
.label_228:
	mov	rsi, qword ptr [rip + outbase]
	mov	r15, qword ptr [rip + next_file_name.outbase_length]
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rip + suffix_alphabet]
.label_213:
	add	rbx, r15
	lea	rsi, [rsi]
	mov	qword ptr [rip + outfile_mid],  rbx
	mov	r15, qword ptr [rip + suffix_length]
	nop	
	movzx	esi, byte ptr [rax]
	nop	
	mov	rdi, rbx
	mov	rdx, r15
	mov	rbp, rbp
	call	memset
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rip + additional_suffix]
	lea	rdi, [rdi]
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_214
	lea	rsi, [rsi]
	add	rbx, r15
	mov	rdx, qword ptr [rip + next_file_name.addsuf_length]
	mov	rdi, rbx
	call	memcpy
.label_214:
	mov	rax, qword ptr [rip + next_file_name.outfile_length]
	mov	byte ptr [r14 + rax], 0
	mov	rdi, qword ptr [rip + next_file_name.sufindex]
	call	free
	mov	rdi, qword ptr [rip + suffix_length]
	mov	esi, 8
	mov	rsp, rsp
	call	xcalloc
	mov	rbp, rbp
	mov	r15, rax
	mov	qword ptr [rip + next_file_name.sufindex],  r15
	mov	rbp, rbp
	mov	r13, qword ptr [rip + numeric_suffix_start]
	test	r13, r13
	je	.label_219
	mov	rbp, rbp
	test	r12, r12
	lea	rdi, [rdi]
	jne	.label_212
	mov	rdi, r13
	call	strlen
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rdi, [rdi]
	mov	r12, qword ptr [rip + suffix_length]
	mov	rdi, qword ptr [rip + outfile_mid]
	lea	rdi, [rdi]
	add	rdi, r12
	sub	rdi, r14
	mov	rsi, r13
	mov	rdx, r14
	nop	
	call	memcpy
	nop	
	test	r14, r14
	mov	rsp, rsp
	je	.label_219
	mov	rsp, rsp
	lea	rax, [r15 + r12*8]
	cmp	r14, 4
	lea	rdi, [rdi]
	jae	.label_227
	mov	rbp, rbp
	mov	rcx, r14
	jmp	.label_220
.label_227:
	lea	rsi, [rsi]
	mov	r8, r14
	lea	rsi, [rsi]
	and	r8, 0xfffffffffffffffc
	je	.label_231
	nop	
	lea	rcx, [r12*8]
	mov	rbp, rbp
	lea	rdx, [r14*8]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rcx, r15
	mov	rbp, rbp
	lea	rdx, [r14 + r13 - 1]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	ja	.label_211
	mov	rbp, rbp
	lea	rcx, [r15 + r12*8 - 8]
	cmp	r13, rcx
	mov	rbp, rbp
	ja	.label_211
	mov	rcx, r14
	jmp	.label_220
.label_231:
	lea	rdi, [rdi]
	mov	rcx, r14
	lea	rsi, [rsi]
	jmp	.label_220
.label_211:
	mov	rcx, r14
	mov	rbp, rbp
	sub	rcx, r8
	mov	rsp, rsp
	lea	rdx, [r8*8]
	lea	rdi, [rdi]
	sub	rax, rdx
	mov	rbp, rbp
	lea	rsi, [r15 + r12*8 - 0x10]
	lea	rsi, [rsi]
	lea	rdi, [r14 + r13 - 2]
	lea	rsi, [rsi]
	pxor	xmm0, xmm0
	mov	rsp, rsp
	movdqa	xmm1, xmmword ptr [rip + label_215]
	mov	rbp, rbp
	mov	rdx, r8
	nop	dword ptr [rax]
.label_216:
	movzx	ebx, word ptr [rdi]
	movd	xmm2, ebx
	lea	rdi, [rdi]
	movzx	ebx, word ptr [rdi - 2]
	movd	xmm3, ebx
	punpcklbw	xmm2, xmm0
	lea	rdi, [rdi]
	pshuflw	xmm2, xmm2, 0xe1
	packuswb	xmm2, xmm0
	punpcklbw	xmm2, xmm2
	mov	rsp, rsp
	punpcklwd	xmm2, xmm2
	movdqa	xmm4, xmm2
	psrad	xmm4, 0x1f
	mov	rsp, rsp
	psrad	xmm2, 0x18
	mov	rbp, rbp
	punpckldq	xmm2, xmm4
	nop	
	punpcklbw	xmm3, xmm0
	pshuflw	xmm3, xmm3, 0xe1
	packuswb	xmm3, xmm0
	punpcklbw	xmm3, xmm3
	punpcklwd	xmm3, xmm3
	movdqa	xmm4, xmm3
	psrad	xmm4, 0x1f
	psrad	xmm3, 0x18
	lea	rdi, [rdi]
	punpckldq	xmm3, xmm4
	paddq	xmm2, xmm1
	paddq	xmm3, xmm1
	mov	rsp, rsp
	pshufd	xmm2, xmm2, 0x4e
	mov	rsp, rsp
	movdqu	xmmword ptr [rsi], xmm2
	lea	rdi, [rdi]
	pshufd	xmm2, xmm3, 0x4e
	nop	
	movdqu	xmmword ptr [rsi - 0x10], xmm2
	add	rsi, -0x20
	mov	rsp, rsp
	add	rdi, -4
	lea	rsi, [rsi]
	add	rdx, -4
	jne	.label_216
	nop	
	cmp	r14, r8
	lea	rdi, [rdi]
	je	.label_219
.label_220:
	lea	rdx, [rcx - 1]
	lea	rdi, [rdi]
	test	cl, 3
	mov	rbp, rbp
	je	.label_225
	mov	esi, ecx
	nop	
	and	esi, 3
	nop	
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_210:
	movsx	rdi, byte ptr [r13 + rcx - 1]
	nop	
	dec	rcx
	lea	rdi, [rdi]
	add	rdi, -0x30
	lea	rsi, [rsi]
	mov	qword ptr [rax - 8], rdi
	lea	rdi, [rdi]
	add	rax, -8
	inc	rsi
	jne	.label_210
.label_225:
	cmp	rdx, 3
	jb	.label_219
	mov	rsp, rsp
	add	rax, -8
	nop	word ptr cs:[rax + rax]
.label_221:
	movsx	rdx, byte ptr [r13 + rcx - 1]
	mov	rsp, rsp
	add	rdx, -0x30
	mov	qword ptr [rax], rdx
	lea	rsi, [rsi]
	movsx	rdx, byte ptr [r13 + rcx - 2]
	add	rdx, -0x30
	mov	qword ptr [rax - 8], rdx
	mov	rbp, rbp
	movsx	rdx, byte ptr [r13 + rcx - 3]
	lea	rsi, [rsi]
	add	rdx, -0x30
	mov	rsp, rsp
	mov	qword ptr [rax - 0x10], rdx
	mov	rsp, rsp
	movsx	rdx, byte ptr [r13 + rcx - 4]
	mov	rbp, rbp
	add	rdx, -0x30
	lea	rsi, [rsi]
	add	rcx, -4
	mov	qword ptr [rax - 0x18], rdx
	lea	rax, [rax - 0x20]
	jne	.label_221
.label_219:
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_224:
	lea	rdi, [rdi]
	call	xalloc_die
.label_212:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.81
	mov	esi, OFFSET FLAT:.str.82
	lea	rsi, [rsi]
	mov	edx, 0x198
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.next_file_name
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fe0

	.globl create
	.type create, @function
create:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x98
	mov	r15, rdi
	nop	
	cmp	qword ptr [rip + filter_command],  0
	lea	rsi, [rsi]
	je	.label_255
	nop	
	mov	edi, OFFSET FLAT:.str.88
	call	getenv
	mov	rbp, rbp
	test	rax, rax
	nop	
	mov	r14d, OFFSET FLAT:.str.89
	mov	rbp, rbp
	cmovne	r14, rax
	mov	edi, OFFSET FLAT:.str.90
	nop	
	mov	edx, 1
	nop	
	mov	rsi, r15
	lea	rdi, [rdi]
	call	setenv
	test	eax, eax
	mov	rsp, rsp
	jne	.label_243
	movzx	eax, byte ptr [rip + verbose]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_244
	mov	rbp, rbp
	mov	rbp, qword ptr [rip + stdout]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.92
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	call	__fprintf_chk
.label_244:
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	call	pipe
	test	eax, eax
	jne	.label_253
	lea	rdi, [rdi]
	call	fork
	lea	rdi, [rdi]
	mov	ebx, eax
	mov	rsp, rsp
	test	ebx, ebx
	mov	rbp, rbp
	je	.label_254
	cmp	ebx, -1
	nop	
	je	.label_258
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 8]
	mov	rbp, rbp
	call	close
	test	eax, eax
	jne	.label_232
	mov	dword ptr [rip + filter_pid],  ebx
	mov	rcx, qword ptr [rip + n_open_pipes]
	cmp	rcx, qword ptr [rip + open_pipes_alloc]
	jne	.label_246
	mov	rdi, qword ptr [rip + open_pipes]
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_240
	mov	rbp, rbp
	movabs	rax, 0x1555555555555555
	lea	rsi, [rsi]
	cmp	rcx, rax
	jae	.label_242
	mov	rax, rcx
	shr	rax, 1
	lea	rdi, [rdi]
	lea	rsi, [rcx + rax + 1]
	lea	rsi, [rsi]
	jmp	.label_247
.label_255:
	nop	
	movzx	eax, byte ptr [rip + verbose]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_249
	mov	r14, qword ptr [rip + stdout]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.84
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	nop	
	mov	rsi, r15
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rbp
	call	__fprintf_chk
.label_249:
	nop	
	mov	esi, 0x41
	mov	edx, 0x1b6
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r15
	call	open_safer
	mov	ebp, eax
	test	ebp, ebp
	lea	rdi, [rdi]
	js	.label_245
	nop	
	lea	rdx, [rsp + 8]
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, ebp
	lea	rdi, [rdi]
	call	__fxstat
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_235
	mov	rax, qword ptr [rip + label_237]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_238
	mov	rsp, rsp
	mov	rax, qword ptr [rip + in_stat_buf]
	mov	rsp, rsp
	cmp	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	je	.label_241
.label_238:
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, ebp
	call	ftruncate
	test	eax, eax
	je	.label_245
	mov	eax, 0xf000
	mov	rbp, rbp
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	jne	.label_245
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rsp, rsp
	jmp	.label_251
.label_254:
	xor	ebx, ebx
	mov	rbp, rbp
	cmp	qword ptr [rip + n_open_pipes],  0
	je	.label_252
	nop	word ptr cs:[rax + rax]
.label_257:
	mov	rbp, rbp
	mov	rax, qword ptr [rip + open_pipes]
	mov	edi, dword ptr [rax + rbx*4]
	call	close
	test	eax, eax
	jne	.label_256
	inc	rbx
	cmp	rbx, qword ptr [rip + n_open_pipes]
	jb	.label_257
.label_252:
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_259
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	lea	rdi, [rdi]
	je	.label_233
	xor	esi, esi
	call	dup2
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_239
	mov	edi, dword ptr [rsp + 8]
	call	close
	nop	
	test	eax, eax
	jne	.label_250
.label_233:
	lea	rsi, [rsi]
	mov	edi, 2
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:oldblocked
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	call	sigprocmask
	lea	rsi, [rsi]
	mov	rdi, r14
	call	last_component
	mov	rsi, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rip + filter_command]
	nop	
	mov	edx, OFFSET FLAT:.str.98
	nop	
	xor	r8d, r8d
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	nop	
	call	execl
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.99
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	r8, qword ptr [rip + filter_command]
	mov	rsp, rsp
	mov	edi, 1
	nop	
	xor	eax, eax
	nop	
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r14
	lea	rdi, [rdi]
	call	error
.label_256:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	jmp	.label_236
.label_246:
	mov	rax, qword ptr [rip + open_pipes]
	nop	
	jmp	.label_248
.label_259:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.95
	mov	rbp, rbp
	jmp	.label_236
.label_240:
	lea	rsi, [rsi]
	test	rcx, rcx
	mov	rsp, rsp
	mov	esi, 0x20
	mov	rsp, rsp
	cmovne	rsi, rcx
	mov	rsp, rsp
	mov	rax, rsi
	lea	rsi, [rsi]
	shr	rax, 0x3d
	jne	.label_234
.label_247:
	mov	qword ptr [rip + open_pipes_alloc],  rsi
	nop	
	shl	rsi, 2
	nop	
	call	xrealloc
	mov	rsp, rsp
	mov	qword ptr [rip + open_pipes],  rax
	mov	rcx, qword ptr [rip + n_open_pipes]
.label_248:
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0xc]
	nop	
	lea	rsi, [rcx + 1]
	mov	qword ptr [rip + n_open_pipes],  rsi
	nop	
	mov	dword ptr [rax + rcx*4], edx
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rsp + 0xc]
.label_245:
	mov	eax, ebp
	mov	rsp, rsp
	add	rsp, 0x98
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_239:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.96
	jmp	.label_236
.label_250:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.97
.label_236:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
.label_243:
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.91
	jmp	.label_236
.label_253:
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.93
	jmp	.label_236
.label_258:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
	mov	rbp, rbp
	jmp	.label_236
.label_232:
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.101
	jmp	.label_236
.label_235:
	mov	rsp, rsp
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.85
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	lea	rdi, [rdi]
	call	quotearg_style
.label_251:
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r14d
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
.label_241:
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
.label_242:
	lea	rsi, [rsi]
	call	xalloc_die
.label_234:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405600

	.globl ofile_open
	.type ofile_open, @function
ofile_open:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rsp, rsp
	mov	rbx, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	shl	rcx, 5
	mov	eax, dword ptr [r15 + rcx + 8]
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	js	.label_260
	xor	ebp, ebp
	jmp	.label_262
.label_260:
	nop	
	lea	rdx, [r15 + rcx + 8]
	mov	qword ptr [rsp + 0x10], rdx
	test	rbx, rbx
	mov	r12, r14
	lea	rsi, [rsi]
	cmovne	r12, rbx
	lea	rsi, [rsi]
	dec	r12
	lea	rdx, [r15 + rcx]
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rsp + 8], rcx
	xor	ebp, ebp
	nop	
	jmp	.label_263
	nop	word ptr [rax + rax]
.label_269:
	mov	rbp, rbp
	lea	rax, [r15 + r13 + 8]
	mov	rsp, rsp
	lea	rcx, [r15 + r13 + 0x10]
	mov	qword ptr [rcx], 0
	mov	dword ptr [rax], 0xfffffffe
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	bpl, 1
.label_263:
	nop	
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_268
	nop	
	mov	esi, 0xc01
	xor	eax, eax
	mov	rsp, rsp
	call	open_safer
	jmp	.label_264
.label_268:
	call	create
.label_264:
	test	eax, eax
	jns	.label_265
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	ecx, dword ptr [rbp]
	lea	rdi, [rdi]
	lea	eax, [rcx - 0x17]
	cmp	eax, 2
	jae	.label_266
	nop	dword ptr [rax + rax]
.label_271:
	lea	rsi, [rsi]
	mov	r13, r12
	lea	rsi, [rsi]
	shl	r13, 5
	cmp	dword ptr [r15 + r13 + 8], 0
	jns	.label_261
	test	r12, r12
	cmove	r12, r14
	dec	r12
	cmp	r12, rbx
	jne	.label_271
	jmp	.label_266
	nop	dword ptr [rax]
.label_261:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + r13 + 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	je	.label_269
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rbp]
	nop	
	mov	rdx, qword ptr [r15 + r13]
.label_270:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_2
	nop	
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_265:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx], eax
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.105
	nop	
	mov	edi, eax
	mov	rbp, rbp
	call	fdopen
	mov	rcx, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	qword ptr [r15 + rcx + 0x10], rax
	test	rax, rax
	je	.label_267
	mov	eax, dword ptr [rip + filter_pid]
	mov	dword ptr [r15 + rcx + 0x18], eax
	nop	
	mov	dword ptr [rip + filter_pid],  0
.label_262:
	nop	
	and	bpl, 1
	lea	rdi, [rdi]
	mov	al, bpl
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_266:
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rbx, rcx
	nop	
	mov	esi, 3
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_267:
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp]
	nop	
	mov	rdx, qword ptr [rax]
	nop	
	jmp	.label_270
	nop	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405860
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [rip + file_name],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405870
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405880

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rip + stdout]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_275
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_272
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_272
.label_275:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_274
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_272:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_273
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	mov	rsp, rsp
	call	_exit
.label_274:
	mov	edi, dword ptr [rip + exit_failure]
	mov	rbp, rbp
	call	_exit
.label_273:
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
	mov	edi, dword ptr [rip + exit_failure]
	mov	rbp, rbp
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405980

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_276:
	nop	
	movzx	edx, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	edx, 0x2f
	mov	rbp, rbp
	je	.label_276
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_277
	nop	dword ptr [rax + rax]
.label_278:
	mov	dl, byte ptr [rax + 1]
	mov	rbp, rbp
	inc	rax
	lea	rsi, [rsi]
	mov	r8b, cl
.label_277:
	mov	cl, 1
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0x2f
	je	.label_278
	mov	rsp, rsp
	test	dl, dl
	mov	rbp, rbp
	je	.label_280
	mov	cl, r8b
	mov	rsp, rsp
	and	cl, 1
	je	.label_279
	xor	r8d, r8d
.label_279:
	lea	rsi, [rsi]
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	nop	
	jmp	.label_278
.label_280:
	mov	rsp, rsp
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a00
	.globl base_len
	.type base_len, @function
base_len:

	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_282:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_281
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_282
.label_281:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a40

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_283
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
.label_283:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_284
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
	ja	.label_286
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_285
.label_286:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_285:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_284:
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
	#Procedure 0x405b60

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	nop	
	xor	eax, eax
	nop	
	mov	rdi, rsi
	nop	
	mov	esi, edx
	nop	
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_287
	test	ebx, ebx
	nop	
	js	.label_287
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	nop	
	mov	r14d, eax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_288
.label_287:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_288:
	mov	rsp, rsp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405be0

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
	je	.label_289
	nop	word ptr [rax + rax]
.label_291:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_289
	test	rax, rax
	je	.label_290
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_291
	jmp	.label_289
.label_290:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_289:
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
	#Procedure 0x405c40

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_292:
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
	ja	.label_292
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ca0

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
	je	.label_293
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
	jl	.label_295
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_295
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
	jne	.label_294
	nop	
	add	r14, 3
	mov	qword ptr [rip + program_invocation_short_name],  r14
.label_294:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_295:
	mov	rsp, rsp
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_293:
	mov	rcx, qword ptr [rip + stderr]
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
	#Procedure 0x405d90
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
	#Procedure 0x405de0
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
	#Procedure 0x405e00
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
	#Procedure 0x405e20
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
	#Procedure 0x405e90
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
	#Procedure 0x405eb0
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
	je	.label_296
	test	rdx, rdx
	nop	
	je	.label_296
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_296:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ef0
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
	#Procedure 0x405fa0

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
.label_374:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_347
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [(rcx * 8) + label_355]
.label_655:
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
.label_656:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_381
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_381
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_398:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_394
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_394:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_398
.label_381:
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
	jmp	.label_349
.label_648:
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
	jmp	.label_349
.label_651:
	lea	rsi, [rsi]
	mov	al, 1
.label_649:
	mov	rbp, rbp
	mov	r12b, 1
.label_652:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_302
	lea	rsi, [rsi]
	mov	cl, al
.label_302:
	mov	rsp, rsp
	mov	al, cl
.label_650:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_307
	test	r10, r10
	je	.label_316
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_317
.label_307:
	xor	ecx, ecx
	jmp	.label_317
.label_653:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_328
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_334
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_339
.label_654:
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
	jmp	.label_349
.label_316:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_317:
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
	jmp	.label_349
.label_328:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_339
.label_334:
	lea	rdi, [rdi]
	mov	eax, 1
.label_339:
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
.label_349:
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
	jmp	.label_390
	nop	word ptr cs:[rax + rax]
.label_351:
	nop	
	inc	rdi
.label_390:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_304
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_357
	jmp	.label_310
	nop	dword ptr [rax + rax]
.label_304:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_315
.label_357:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_323
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_326
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_326
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
.label_326:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_366
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_368
	nop	dword ptr [rax + rax]
.label_323:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_368
	nop	word ptr cs:[rax + rax]
.label_366:
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
	jne	.label_301
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
	je	.label_368
	jmp	.label_298
.label_301:
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
.label_368:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_369
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_415]
.label_669:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_299
	mov	rbp, rbp
	jmp	.label_297
.label_673:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_300
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_305
	nop	
	cmp	rbp, 1
	je	.label_297
	xor	r13d, r13d
	jmp	.label_314
.label_662:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_318
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_298
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_329
	mov	al, r14b
	and	al, 1
	jne	.label_333
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_338
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_338:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_352
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_352:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_360
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_360:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_344
.label_663:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_379
.label_664:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_377
.label_665:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_379
.label_666:
	mov	bl, 0x66
	jmp	.label_379
.label_667:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_377
.label_670:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_387
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_388
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
	jae	.label_392
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_392:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_410
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_410:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_411
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_411:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_387:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_314
.label_671:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_420
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_299
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_299
	mov	rbp, rbp
	jmp	.label_309
.label_672:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_312
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_319
	lea	rdi, [rdi]
	jmp	.label_325
.label_369:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_421
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
.label_303:
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
	ja	.label_359
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_359
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_314
.label_300:
	test	rdi, rdi
	jne	.label_322
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_322
.label_297:
	mov	dl, 1
.label_668:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_383
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_314
.label_318:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_351
	jmp	.label_299
.label_312:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_377
.label_319:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_373
.label_377:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_396
.label_379:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_314
	lea	rsi, [rsi]
	jmp	.label_376
.label_421:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_406
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
.label_406:
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
.label_395:
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
	je	.label_313
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_321
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_330
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_337
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_365:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_358
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_341
.label_358:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_365
.label_337:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_401
	xor	r13d, r13d
.label_401:
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
	je	.label_395
	mov	rsp, rsp
	jmp	.label_303
.label_322:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_314
.label_420:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_299
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_299
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_299
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_405
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_308
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_332
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_413
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_413:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_417
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_417:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_324
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_324:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_380
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_380:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_314
.label_299:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_314:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_354
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_343
	lea	rsi, [rsi]
	jmp	.label_348
.label_354:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_348
.label_343:
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
	jne	.label_353
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_362
	nop	word ptr cs:[rax + rax]
.label_348:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_362:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_373
	mov	rsp, rsp
	jmp	.label_376
.label_353:
	mov	bl, r15b
.label_376:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_298
	nop	
	cmp	r9d, 2
	jne	.label_350
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_350
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_375
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_375:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_393
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_393:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_372
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_372:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_350:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_403
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_403:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_384
.label_305:
	xor	r13d, r13d
	nop	
	jmp	.label_314
.label_359:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_408
	nop	dword ptr [rax + rax]
.label_399:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_408:
	test	cl, cl
	je	.label_414
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_345
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_419
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_419:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_345
	nop	dword ptr [rax]
.label_414:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_298
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_320
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_320
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_356
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_356:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_335
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_335:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_367
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_367:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_320:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_363
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_363:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_370
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_370:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_382
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
.label_382:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_345:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_373
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_311
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_311
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_404
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_404:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_407
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_407:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_311:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_399
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_399
	nop	word ptr cs:[rax + rax]
.label_373:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_306
	mov	rsp, rsp
	and	al, 1
	jne	.label_306
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_386
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_386:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_412
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_412:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_306:
	mov	rsp, rsp
	mov	bl, r15b
.label_384:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_342
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_342:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_351
.label_329:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_344
.label_333:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_344:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_364
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_364:
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
	je	.label_391
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_378
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_361
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_385
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_385:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_389
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_389:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_314
.label_391:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_314
.label_378:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_314
.label_361:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_314
.label_321:
	xor	r13d, r13d
.label_313:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_303
.label_330:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_409
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_418:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_416
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_418
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_303
.label_409:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_303
.label_416:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_303
.label_405:
	xor	r13d, r13d
	jmp	.label_314
.label_308:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_314
.label_310:
	nop	
	mov	r13, rdi
.label_315:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_327
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_340
.label_327:
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
	je	.label_346
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_346
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_371
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_346
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_374
.label_346:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_331
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_331
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_331
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_397:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_402
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_402:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_397
.label_331:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_400
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_400
.label_383:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_298
.label_341:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_298
.label_340:
	nop	
	mov	rbp, r13
	jmp	.label_298
.label_396:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_298:
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
.label_336:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_400:
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
.label_371:
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
	jmp	.label_336
.label_388:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_298
.label_325:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_298
.label_309:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_298
.label_332:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_298
.label_347:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407520
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
	#Procedure 0x407660
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
	je	.label_422
	mov	qword ptr [rax], rbx
.label_422:
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
	#Procedure 0x4077b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_423
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_427:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rip + nslots]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_427
.label_423:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_426
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rip + slotvec0],  0x100
	mov	rsp, rsp
	mov	qword ptr [rip + label_424], OFFSET FLAT:slot0
.label_426:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_425
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_425:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407870
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x407880

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
	js	.label_428
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  ebx
	jle	.label_433
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_430
.label_433:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_434
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_431
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_431:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rip + nslots]
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
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_430:
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
	ja	.label_429
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
	je	.label_432
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_432:
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
.label_429:
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
.label_428:
	lea	rdi, [rdi]
	call	abort
.label_434:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407af0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b00
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
	#Procedure 0x407b30
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
	#Procedure 0x407b60
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
	je	.label_435
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
.label_435:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407bf0
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
	je	.label_436
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
.label_436:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c90

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
	je	.label_437
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
.label_437:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d20
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
	je	.label_438
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
.label_438:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407d90
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_439]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_441]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x407e30
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx, qword ptr [rip + label_439]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_441]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x407ed0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rip + label_439]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_441]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x407f40
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rip + label_439]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_441]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	#Procedure 0x407fb0

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
	je	.label_442
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
.label_442:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408090
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax, qword ptr [rip + label_439]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rip + label_440]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + label_441]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_443
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_443
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
.label_443:
	nop	
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408120
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax, qword ptr [rip + label_439]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_440]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_441]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_444
	test	rdx, rdx
	je	.label_444
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
.label_444:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081b0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_439]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_440]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rip + label_441]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_445
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_445
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
.label_445:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408250
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_439]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rip + label_440]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0, xmmword ptr [rip + label_441]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_446
	test	rsi, rsi
	je	.label_446
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
.label_446:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082f0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408300
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
	#Procedure 0x408320
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
	#Procedure 0x408340

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
	#Procedure 0x408370

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
	jne	.label_448
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_450
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_447
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_447
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_447
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_447
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_447
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_447
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_448
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_448
.label_450:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_447
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_447
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_447
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_447
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_447
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_447
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_449
.label_447:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_448:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_449:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_448
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_448
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4084e0

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
.label_452:
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
	jns	.label_451
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_452
	mov	rbp, rbp
	cmp	rbx, 0x7ff00001
	jb	.label_451
	lea	rdi, [rdi]
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	lea	rsi, [rsi]
	je	.label_452
.label_451:
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
	#Procedure 0x408570

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	rsp, rsp
	mov	r14, rsi
	nop	
	mov	r15d, edi
	nop	word ptr cs:[rax + rax]
.label_454:
	mov	rbp, rbp
	mov	edi, r15d
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	write
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	jns	.label_453
	call	__errno_location
	nop	
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_454
	cmp	rbx, 0x7ff00001
	nop	
	jb	.label_453
	nop	
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_454
.label_453:
	mov	rbp, rbp
	mov	rax, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408600

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
	ja	.label_455
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
	jmp	.label_456
.label_455:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_456:
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
	#Procedure 0x408670

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
	je	.label_464
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
	jmp	.label_466
.label_464:
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
.label_466:
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
	ja	.label_462
	lea	rsi, [rsi]
	jmp	qword ptr [(r12 * 8) + label_459]
.label_696:
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
.label_462:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_458
.label_697:
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
.label_698:
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
.label_699:
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
	jmp	.label_463
.label_700:
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
	jmp	.label_461
.label_701:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
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
	jmp	.label_460
.label_702:
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
.label_460:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_461:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_463:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_457
.label_704:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_458:
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
	jmp	.label_465
.label_703:
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
.label_465:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_457:
	mov	rbp, rbp
	call	__fprintf_chk
.label_695:
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
	#Procedure 0x408a60
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_467:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_467
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a90
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_471:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_468
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_469
	nop	word ptr cs:[rax + rax]
.label_468:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_469:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_470
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_471
.label_470:
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
	#Procedure 0x408b20

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_472
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
.label_472:
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
.label_474:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_473
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_475
	nop	dword ptr [rax + rax]
.label_473:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_475:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_476
	inc	r9
	cmp	r9, 0xa
	jb	.label_474
.label_476:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c60
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
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x408cf0
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
	jb	.label_477
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_478
	test	rax, rax
	je	.label_477
.label_478:
	nop	
	pop	rbx
	ret	
.label_477:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408d40

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_479
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_480
.label_479:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_480:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d70
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
	jb	.label_482
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_481
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_481
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_481:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_483
	test	rax, rax
	je	.label_482
.label_483:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_482:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408df0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_484
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_484
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_484:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_485
	test	rax, rax
	nop	
	je	.label_486
.label_485:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_486:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e40
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_487
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_491
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_490
.label_487:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_493
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_493:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_488
.label_490:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_489
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_489
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_489:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_492
	test	rax, rax
	mov	rbp, rbp
	je	.label_491
.label_492:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_491:
	call	xalloc_die
.label_488:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f20
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_495
	test	rax, rax
	mov	rbp, rbp
	je	.label_494
.label_495:
	pop	rbx
	ret	
.label_494:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408f40
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_496
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_499
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_500
	call	free
	xor	eax, eax
	jmp	.label_497
.label_496:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_498
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_500:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_497
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_498
.label_497:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_498:
	mov	rbp, rbp
	call	xalloc_die
.label_499:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408fd0
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
	je	.label_501
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_502
.label_501:
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
.label_502:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409030

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
	jb	.label_503
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_503
	pop	rcx
	ret	
.label_503:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x409060

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
	je	.label_505
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_504
.label_505:
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
.label_504:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4090c0

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
	je	.label_506
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_507
.label_506:
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
.label_507:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x409120

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
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
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409170

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
	je	.label_509
	cmp	eax, 1
	je	.label_511
	mov	rbp, rbp
	cmp	eax, 3
	nop	
	jne	.label_512
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_508
.label_511:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_508
.label_509:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_514
	lea	rdi, [rdi]
	cmp	rbx, r15
	jbe	.label_510
.label_514:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	cmp	rbx, 0x40000000
	jb	.label_513
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_508
.label_512:
	call	__errno_location
	nop	
	jmp	.label_508
.label_513:
	mov	dword ptr [rax], 0x22
.label_508:
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
.label_510:
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
	#Procedure 0x409290

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
	#Procedure 0x4092d0

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
	jae	.label_537
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
.label_527:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_527
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
	je	.label_516
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
	je	.label_517
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_522
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_516
	mov	dword ptr [rsp + 4], 1
.label_522:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_534
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_516
.label_517:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_516
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_516
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
	je	.label_516
.label_534:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_526
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
	je	.label_524
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_525
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_525
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
	je	.label_525
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_533
	cmp	eax, 0x44
	nop	
	je	.label_533
	cmp	eax, 0x69
	jne	.label_525
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_539
	lea	rdi, [rdi]
	mov	ecx, 1
.label_539:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_525
.label_526:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_515
.label_533:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_525:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_523
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_528
	jmp	qword ptr [(rax * 8) + label_532]
.label_677:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_535
.label_523:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_536
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_531
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [(rdx * 8) + label_541]
.label_726:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_535:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_538
.label_528:
	cmp	r13d, 0x54
	nop	
	je	.label_529
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_524
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
	jmp	.label_519
.label_536:
	cmp	r13d, 0x74
	je	.label_529
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_524
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
	jmp	.label_538
.label_679:
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
	jmp	.label_530
.label_680:
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
	jmp	.label_518
.label_681:
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
	jmp	.label_520
.label_529:
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
	jmp	.label_521
.label_531:
	cmp	r13d, 0x5a
	jne	.label_524
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
.label_519:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_518
.label_524:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_516
.label_678:
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
	jmp	.label_520
.label_682:
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
.label_521:
	or	dl, r10b
.label_530:
	lea	rsi, [rsi]
	or	dl, bl
.label_520:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_518:
	mov	rsp, rsp
	mov	rbp, rsi
.label_538:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_540
	or	eax, 2
.label_540:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_515:
	mov	qword ptr [rax], rbp
.label_516:
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
.label_537:
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
	#Procedure 0x409b90

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_542
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_543
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
	je	.label_543
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
.label_542:
	mov	ecx, 1
.label_543:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c00

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
	js	.label_544
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_546
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
	je	.label_544
.label_546:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_544
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_545
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_545:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_544:
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
	#Procedure 0x409cb0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_547
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_547
	test	byte ptr [rbx + 1], 1
	je	.label_547
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_547:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409cf0

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
	jne	.label_548
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_548
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_549
.label_548:
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
.label_549:
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
	je	.label_550
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_550:
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
	#Procedure 0x409da0

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
	je	.label_551
	nop	
	cmp	r15, -2
	jb	.label_551
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_551
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_551:
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
	#Procedure 0x409e30
	.globl str2sig
	.type str2sig, @function
str2sig:

	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	r14, rsi
	mov	r12, rdi
	movsx	eax, byte ptr [r12]
	add	eax, -0x30
	mov	rbp, rbp
	xor	ebx, ebx
	nop	
	mov	ebp, OFFSET FLAT:label_559
	cmp	eax, 9
	ja	.label_556
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	mov	rsp, rsp
	cmp	rax, 0x40
	mov	rbp, rbp
	jg	.label_552
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	nop	
	je	.label_553
	mov	rbp, rbp
	jmp	.label_552
	nop	dword ptr [rax]
.label_556:
	mov	rdi, rbp
	nop	
	mov	rsi, r12
	lea	rdi, [rdi]
	call	strcmp
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_558
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_556
	lea	rsi, [rsi]
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	nop	
	mov	r15d, eax
	test	ebp, ebp
	lea	rsi, [rsi]
	jle	.label_554
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	mov	rdi, r12
	nop	
	call	strncmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_560
.label_554:
	test	r15d, r15d
	lea	rdi, [rdi]
	jle	.label_552
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	jne	.label_552
	add	r12, 5
	mov	rbp, rbp
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	lea	rdi, [rdi]
	jne	.label_552
	sub	ebp, r15d
	movsxd	rcx, ebp
	cmp	rcx, rax
	nop	
	jg	.label_552
	test	rax, rax
	mov	rbp, rbp
	jg	.label_552
	mov	ecx, r15d
	jmp	.label_555
.label_558:
	lea	rax, [rbx + rbx*2]
	mov	eax, dword ptr [(rax * 4) + numname_table]
	mov	rbp, rbp
	jmp	.label_553
.label_560:
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rbp, rbp
	mov	rdi, r12
	call	strtol
	lea	rsi, [rsi]
	test	rax, rax
	js	.label_552
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	nop	
	test	cl, cl
	jne	.label_552
	sub	r15d, ebp
	movsxd	rcx, r15d
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_557
.label_552:
	mov	eax, 0xffffffff
.label_553:
	lea	rdi, [rdi]
	mov	dword ptr [r14], eax
	sar	eax, 0x1f
	mov	rbp, rbp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_557:
	mov	ecx, ebp
.label_555:
	add	rax, rcx
	mov	rbp, rbp
	jmp	.label_553
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ff0

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r15, rsi
	mov	ebp, edi
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_565:
	lea	rsi, [rsi]
	mov	eax, eax
	lea	rdi, [rdi]
	lea	rcx, [rax + rax*2]
	lea	rsi, [rsi]
	cmp	dword ptr [(rcx * 4) + numname_table],  ebp
	je	.label_561
	nop	
	lea	ecx, [rax + 1]
	lea	rsi, [rsi]
	lea	rdx, [rcx + rcx*2]
	mov	rbp, rbp
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	mov	rsp, rsp
	je	.label_564
	lea	rdi, [rdi]
	lea	ecx, [rax + 2]
	lea	rdx, [rcx + rcx*2]
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	je	.label_564
	nop	
	lea	ecx, [rax + 3]
	mov	rsp, rsp
	lea	rdx, [rcx + rcx*2]
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	lea	rsi, [rsi]
	je	.label_564
	lea	ecx, [rax + 4]
	lea	rdx, [rcx + rcx*2]
	lea	rsi, [rsi]
	cmp	dword ptr [(rdx * 4) + numname_table],  ebp
	je	.label_564
	mov	rbp, rbp
	add	eax, 5
	cmp	eax, 0x23
	jb	.label_565
	call	__libc_current_sigrtmin
	mov	rbp, rbp
	mov	r14d, eax
	call	__libc_current_sigrtmax
	cmp	r14d, ebp
	lea	rsi, [rsi]
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	jg	.label_563
	lea	rsi, [rsi]
	cmp	eax, ebp
	jl	.label_563
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, r14d
	mov	edx, ecx
	mov	rbp, rbp
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r14d
	cmp	edx, ebp
	jge	.label_562
	mov	word ptr [r15 + 4], 0x58
	mov	rbp, rbp
	mov	dword ptr [r15], 0x414d5452
	mov	r14d, eax
	jmp	.label_566
.label_561:
	mov	rbp, rbp
	mov	rcx, rax
.label_564:
	lea	rax, [rcx + rcx*2]
	mov	rsp, rsp
	lea	rsi, qword ptr [(rax * 4) + label_559]
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strcpy
	nop	
	xor	ebx, ebx
.label_563:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_562:
	lea	rsi, [rsi]
	mov	word ptr [r15 + 4], 0x4e
	lea	rdi, [rdi]
	mov	dword ptr [r15], 0x494d5452
.label_566:
	nop	
	xor	ebx, ebx
	mov	rbp, rbp
	cmp	r14d, ebp
	mov	rsp, rsp
	je	.label_563
	nop	
	sub	ebp, r14d
	mov	rsp, rsp
	add	r15, 5
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rsp, rsp
	mov	esi, 1
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r15
	mov	r8d, ebp
	mov	rsp, rsp
	call	__sprintf_chk
	jmp	.label_563
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a1a0

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
	jne	.label_567
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_568
	test	cl, cl
	mov	rsp, rsp
	jne	.label_568
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_568
.label_567:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_568
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_568:
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
	#Procedure 0x40a230

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
	je	.label_570
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_569
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_571
.label_569:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_570
.label_571:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_570:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a280

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
	je	.label_572
	nop	
	mov	rax, rcx
.label_572:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a2c0

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
	#Procedure 0x40a2e0

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
	je	.label_591
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
.label_591:
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
	ja	.label_584
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_578
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_574
	mov	rsp, rsp
	test	esi, esi
	jne	.label_584
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_585
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_590
.label_584:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_579
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_574
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_586
.label_578:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_582
.label_574:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_583
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_587
.label_583:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_587:
	mov	edx, dword ptr [rax]
.label_580:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_582:
	mov	ebp, eax
.label_576:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_586:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_579
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_581
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_575
.label_579:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_589
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_592
.label_585:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_590:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_580
.label_581:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_575:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_577
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
	jns	.label_573
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_573
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
	js	.label_576
	lea	rsi, [rsi]
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_593
.label_573:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_576
.label_589:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_592:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_582
.label_577:
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
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_593:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_576
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_576
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_588
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
	jne	.label_576
.label_588:
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
	jmp	.label_576
	nop	word ptr cs:[rax + rax]
	nop	
	.section .text
	.align	32
	#Procedure 0x40a6b0

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