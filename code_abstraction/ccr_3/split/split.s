	.section	.text
	.align	16
	#Procedure 0x401d50

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_17
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rip + stdout]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	esi, 1
	mov	ecx, 2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_11
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_11
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_11:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_17:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fc0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	rbp, rsi
	mov	dword ptr [rsp + 8], edi
	call	getpagesize
	movsxd	rbx, eax
	mov	qword ptr [rsp + 0x18], rbp
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_72
	call	setlocale
	mov	edi, OFFSET FLAT:label_36
	mov	esi, OFFSET FLAT:label_247
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_36
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rip + infile], OFFSET FLAT:label_43
	mov	qword ptr [rip + outbase], OFFSET FLAT:label_44
	mov	qword ptr [rsp + 0x40], rbx
	not	rbx
	mov	qword ptr [rsp + 0x10], rbx
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	r12d, r12d
	mov	dword ptr [rsp + 0x20], 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	r15d, r15d
	jmp	.label_33
.label_825:
	mov	byte ptr [rip + unbuffered],  1
	nop	dword ptr [rax + rax]
.label_33:
	mov	ebx, dword ptr [rip + optind]
	test	ebx, ebx
	mov	eax, 1
	cmove	ebx, eax
	mov	edx, OFFSET FLAT:label_62
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, dword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x18]
	call	getopt_long
	mov	r13d, eax
	lea	eax, [r13 + 0x83]
	cmp	eax, 0x106
	ja	.label_73
	jmp	qword ptr [(rax * 8) + label_79]
.label_816:
	test	r15d, r15d
	mov	ebp, 0
	je	.label_80
	cmp	r15d, 4
	mov	rbp, r12
	jne	.label_83
.label_80:
	cmp	dword ptr [rsp + 0x20], 0
	je	.label_88
	cmp	dword ptr [rsp + 0x20], ebx
	mov	eax, 0
	jne	.label_89
.label_88:
	movabs	rax, 0x1999999999999999
	cmp	rbp, rax
	mov	rax, rbp
	ja	.label_93
.label_89:
	lea	rcx, [rax + rax*4]
	movsxd	rdx, r13d
	lea	r12, [rdx + rcx*2 - 0x30]
	mov	r15d, 4
	cmp	r12, rax
	mov	dword ptr [rsp + 0x20], ebx
	mov	rbp, rax
	jae	.label_33
	jmp	.label_93
.label_820:
	cmp	r13d, 0x64
	mov	r14d, OFFSET FLAT:label_183
	mov	eax, OFFSET FLAT:label_184
	cmove	r14, rax
	mov	qword ptr [rip + suffix_alphabet],  r14
	mov	rbp, qword ptr [rip + optarg]
	test	rbp, rbp
	je	.label_33
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, rbp
	mov	rsi, r14
	call	strspn
	cmp	rbx, rax
	jne	.label_122
	cmp	byte ptr [rbp], 0x30
	jne	.label_125
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_114:
	cmp	byte ptr [rbp], 0
	je	.label_132
	mov	qword ptr [rip + optarg],  rbp
	lea	rax, [rbp + 1]
	cmp	byte ptr [rbp], 0x30
	mov	rbp, rax
	je	.label_114
	dec	rax
	mov	rbp, rax
	mov	qword ptr [rip + numeric_suffix_start],  rbp
	jmp	.label_33
.label_817:
	test	r15d, r15d
	jne	.label_83
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	movabs	rdx, 0x7fffffffffffffff
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	mov	r15d, 2
	jmp	.label_33
.label_818:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:label_72
	xor	r9d, r9d
	mov	rdi, rbx
	movabs	rdx, 0x1fffffffffffffff
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rip + suffix_length],  rax
	jmp	.label_33
.label_819:
	test	r15d, r15d
	jne	.label_83
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	movabs	rdx, 0x7fffffffffffffff
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	mov	r15d, 1
	jmp	.label_33
.label_822:
	test	r15d, r15d
	jne	.label_83
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_72
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	mov	r15d, 3
	jmp	.label_33
.label_827:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + filter_command],  rax
	jmp	.label_33
.label_829:
	mov	rbx, qword ptr [rip + optarg]
	mov	rdi, rbx
	call	last_component
	cmp	rax, rbx
	jne	.label_203
	mov	qword ptr [rip + additional_suffix],  rbx
	jmp	.label_33
.label_821:
	mov	byte ptr [rip + elide_empty_files],  1
	jmp	.label_33
.label_823:
	test	r15d, r15d
	jne	.label_83
	mov	rbx, qword ptr [rip + optarg]
	movzx	ebp, byte ptr [rbx]
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + rbp*2 + 1], 0x20
	je	.label_212
	inc	rbx
	nop	dword ptr [rax + rax]
.label_177:
	mov	qword ptr [rip + optarg],  rbx
	movzx	ecx, byte ptr [rbx]
	mov	rdx, qword ptr [rax]
	inc	rbx
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	jne	.label_177
	dec	rbx
.label_212:
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 2
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	je	.label_223
	mov	esi, OFFSET FLAT:label_226
	mov	edx, 2
	mov	rdi, rbx
	call	strncmp
	mov	r15d, 5
	test	eax, eax
	jne	.label_230
	add	rbx, 2
	mov	qword ptr [rip + optarg],  rbx
	mov	r15d, 6
	jmp	.label_230
.label_824:
	mov	rcx, qword ptr [rip + optarg]
	mov	al, byte ptr [rcx]
	test	al, al
	je	.label_239
	mov	dl, byte ptr [rcx + 1]
	test	dl, dl
	je	.label_241
	cmp	al, 0x5c
	jne	.label_207
	cmp	dl, 0x30
	jne	.label_207
	cmp	byte ptr [rcx + 2], 0
	jne	.label_207
	xor	eax, eax
.label_241:
	mov	ecx, dword ptr [rip + eolchar]
	test	ecx, ecx
	movsx	eax, al
	js	.label_245
	cmp	eax, ecx
	jne	.label_246
.label_245:
	mov	dword ptr [rip + eolchar],  eax
	jmp	.label_33
.label_826:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_33
.label_828:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:main.multipliers
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x38], rax
	jmp	.label_33
.label_223:
	add	rbx, 2
	mov	qword ptr [rip + optarg],  rbx
	mov	r15d, 7
.label_230:
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_64
	lea	rbx, [rbp + 1]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_72
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	cmp	qword ptr [rip + optarg],  rbp
	je	.label_33
	mov	byte ptr [rbp], 0
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	ecx, OFFSET FLAT:label_72
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, r12
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_33
.label_64:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_72
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r12, rax
	jmp	.label_33
.label_132:
	dec	rbp
.label_125:
	mov	qword ptr [rip + numeric_suffix_start],  rbp
	jmp	.label_33
.label_815:
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_117
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	jne	.label_120
.label_117:
	mov	r14d, 3
	mov	eax, 0x3e8
	test	r15d, r15d
	je	.label_126
	test	r12, r12
	mov	r14d, r15d
	mov	rax, r12
	je	.label_130
.label_126:
	cmp	dword ptr [rip + eolchar],  0
	jns	.label_133
	mov	dword ptr [rip + eolchar],  0xa
.label_133:
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [rip + numeric_suffix_start]
	test	rdi, rdi
	je	.label_137
	mov	byte ptr [rip + suffix_auto],  1
.label_137:
	lea	r15d, [r14 - 5]
	xor	ebx, ebx
	cmp	r15d, 2
	ja	.label_140
	test	rdi, rdi
	mov	rbx, qword ptr [rsp + 0x20]
	je	.label_148
	lea	rcx, [rsp + 0x90]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_72
	call	xstrtoumax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_148
	mov	rax, qword ptr [rsp + 0x90]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rcx, rsi
	not	rcx
	xor	edx, edx
	cmp	rax, rsi
	mov	ebx, 0
	cmovb	rbx, rax
	cmp	rax, rcx
	cmova	rbx, rdx
	add	rbx, rsi
.label_148:
	mov	rdi, qword ptr [rip + suffix_alphabet]
	call	strlen
	mov	rcx, rax
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	mov	rsi, rdx
	xor	edi, edi
	cmp	rcx, rbx
	ja	.label_162
	xor	edi, edi
	nop	dword ptr [rax]
.label_168:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	inc	rdi
	mov	rbx, rax
	cmp	rcx, rbx
	jbe	.label_168
.label_162:
	xor	ebx, ebx
	test	rsi, rsi
	setne	bl
	add	rbx, rdi
	mov	byte ptr [rip + suffix_auto],  1
.label_140:
	mov	rbp, qword ptr [rip + suffix_length]
	test	rbp, rbp
	je	.label_173
	cmp	rbp, rbx
	jb	.label_174
	mov	byte ptr [rip + suffix_auto],  1
	jmp	.label_175
.label_173:
	cmp	rbx, 2
	mov	ebp, 2
	cmovae	rbp, rbx
	mov	qword ptr [rip + suffix_length],  rbp
.label_175:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, dword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x20]
	jge	.label_180
	movsxd	rcx, eax
	inc	eax
	mov	dword ptr [rip + optind],  eax
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rip + infile],  rcx
.label_180:
	cmp	eax, dword ptr [rsp + 8]
	jge	.label_189
	movsxd	rcx, eax
	lea	eax, [rax + 1]
	mov	dword ptr [rip + optind],  eax
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rip + outbase],  rcx
.label_189:
	cmp	eax, dword ptr [rsp + 8]
	jl	.label_194
	mov	rdi, qword ptr [rip + numeric_suffix_start]
	test	rdi, rdi
	je	.label_198
	call	strlen
	cmp	rax, rbp
	ja	.label_202
.label_198:
	mov	rsi, qword ptr [rip + infile]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_204
	cmp	byte ptr [rsi + 1], 0
	je	.label_206
.label_204:
	xor	edi, edi
	xor	edx, edx
	xor	ecx, ecx
	call	fd_reopen
	test	eax, eax
	js	.label_110
.label_206:
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:in_stat_buf
	call	__fxstat
	test	eax, eax
	jne	.label_95
	cmp	qword ptr [rsp + 0x38], 0
	jne	.label_214
	mov	rax, qword ptr [rip + label_215]
	movabs	rcx, 0x1fffffffffffffff
	mov	rdx, rcx
	add	rdx, 2
	cmp	rax, rdx
	mov	ecx, 0x200
	mov	esi, 0x200
	cmovb	rsi, rax
	test	rax, rax
	cmovle	rsi, rcx
	cmp	rax, rdx
	mov	ecx, 0x20000
	cmovae	rsi, rcx
	test	rax, rax
	cmovle	rsi, rcx
	cmp	rax, 0x20000
	cmovl	rsi, rcx
	mov	qword ptr [rsp + 0x38], rsi
.label_214:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rdi, [rax + rbp]
	call	xmalloc
	lea	rcx, [rax + rbp - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	sub	rcx, rdx
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13, -1
	cmp	r15d, 1
	ja	.label_236
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	mov	r12, rax
	test	r12, r12
	js	.label_244
	xor	ebx, ebx
	mov	rax, qword ptr [rsp + 0x38]
.label_46:
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rsi, [rcx + rbx]
	mov	rdx, rax
	sub	rdx, rbx
	xor	edi, edi
	call	safe_read
	test	rax, rax
	je	.label_37
	cmp	rax, -1
	je	.label_40
	add	rbx, rax
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rbx, rax
	jb	.label_46
	mov	rax, qword ptr [rip + label_49]
	test	rax, rax
	je	.label_50
	add	r12, rbx
	movzx	ecx, word ptr [rip + label_53]
	or	ecx, 0x2000
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_54
	cmp	r12, rax
	jle	.label_59
.label_54:
	xor	edi, edi
	xor	esi, esi
	mov	edx, 2
	call	lseek
	mov	r15, rax
	test	r15, r15
	js	.label_40
	cmp	r15, r12
	mov	rax, r12
	je	.label_59
	xor	edi, edi
	xor	edx, edx
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_40
	cmp	r15, r12
	cmovl	r15, r12
	mov	rax, r15
.label_59:
	sub	rax, r12
	add	rbx, rax
	movabs	rax, 0x7fffffffffffffff
	cmp	rbx, rax
	je	.label_50
.label_37:
	test	rbx, rbx
	js	.label_40
	mov	rbp, qword ptr [rsp + 0x20]
	test	rbp, rbp
	js	.label_85
	mov	r13, qword ptr [rsp + 0x38]
	cmp	rbx, r13
	mov	qword ptr [rsp + 0x38], r13
	cmovb	r13, rbx
	cmp	rbx, rbp
	cmovbe	rbx, rbp
	mov	r15, rbx
	mov	rbx, rbp
	jmp	.label_217
.label_236:
	movabs	r15, 0x7fffffffffffffff
.label_217:
	cmp	qword ptr [rip + filter_command],  0
	je	.label_156
	mov	edi, OFFSET FLAT:newblocked
	call	sigemptyset
	lea	rdx, [rsp + 0x90]
	mov	edi, 0xd
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x90], 1
	je	.label_109
	mov	edi, OFFSET FLAT:newblocked
	mov	esi, 0xd
	call	sigaddset
.label_109:
	xor	edi, edi
	mov	esi, OFFSET FLAT:newblocked
	mov	edx, OFFSET FLAT:oldblocked
	call	sigprocmask
.label_156:
	dec	r14d
	cmp	r14d, 6
	ja	.label_118
	jmp	qword ptr [(r14 * 8) + label_123]
.label_835:
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
	xor	r14d, r14d
.label_166:
	xor	edi, edi
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x38]
	call	safe_read
	cmp	rax, -1
	je	.label_95
	lea	r13, [rbx + rax]
	mov	ebp, dword ptr [rip + eolchar]
	mov	byte ptr [rbx + rax], bpl
	mov	qword ptr [rsp + 0x18], rax
	lea	r15, [rbx + rax + 1]
	mov	r12, rbx
	jmp	.label_135
	nop	dword ptr [rax + rax]
.label_159:
	mov	eax, dword ptr [rsp + 8]
	and	al, 1
	mov	rdx, rbx
	sub	rdx, r12
	movzx	edi, al
	mov	rsi, r12
	call	cwrite
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
	mov	ebp, dword ptr [rip + eolchar]
	mov	r12, rbx
	xor	r14d, r14d
.label_135:
	mov	rbx, r12
	nop	dword ptr [rax]
.label_155:
	mov	rdx, r15
	sub	rdx, rbx
	mov	rdi, rbx
	mov	esi, ebp
	call	memchr
	mov	rbx, rax
	cmp	rbx, r13
	je	.label_153
	inc	rbx
	inc	r14
	cmp	r14, qword ptr [rsp + 0x20]
	jb	.label_155
	jmp	.label_159
	nop	word ptr [rax + rax]
.label_153:
	sub	r13, r12
	je	.label_160
	mov	eax, dword ptr [rsp + 8]
	and	al, 1
	movzx	edi, al
	mov	rsi, r12
	mov	rdx, r13
	call	cwrite
	mov	dword ptr [rsp + 8], 0
.label_160:
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_166
	jmp	.label_45
.label_833:
	mov	rcx, -1
	xor	r8d, r8d
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	jmp	.label_170
.label_834:
	mov	rax, qword ptr [rsp + 0x38]
	not	rax
	mov	qword ptr [rsp + 0x60], rax
	xor	esi, esi
	xor	r12d, r12d
	xor	ebp, ebp
	xor	r15d, r15d
	xor	r14d, r14d
.label_90:
	mov	rbx, rsi
	xor	edi, edi
	mov	r13, qword ptr [rsp + 0x40]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	call	safe_read
	test	rax, rax
	je	.label_219
	cmp	rax, -1
	mov	qword ptr [rsp + 0x18], r13
	mov	qword ptr [rsp + 0x58], rax
	mov	rcx, rax
	mov	rsi, rbx
	jne	.label_103
	jmp	.label_95
.label_32:
	mov	ebp, ecx
	mov	rax, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x48]
	jmp	.label_172
	nop	word ptr cs:[rax + rax]
.label_103:
	mov	qword ptr [rsp + 0x50], r12
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 8], rbp
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r12, rbx
	sub	r12, r14
	mov	qword ptr [rsp + 0x28], r15
	sub	r12, r15
	cmp	r12, rcx
	mov	qword ptr [rsp + 0x30], rcx
	jbe	.label_193
	mov	esi, dword ptr [rip + eolchar]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, rcx
	call	memrchr
	mov	r13, rax
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_208
	nop	
.label_193:
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rax, [rdi + r12 - 1]
	mov	qword ptr [rsp + 0x48], rax
	mov	esi, dword ptr [rip + eolchar]
	mov	rdx, r12
	call	memrchr
	mov	r13, rax
.label_208:
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_216
	test	r14, r14
	je	.label_218
	test	r13, r13
	je	.label_220
.label_218:
	xor	edi, edi
	test	r14, r14
	sete	dil
	mov	r15, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, rbp
	call	cwrite
	add	r14, rbp
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rbp, rbx
	jbe	.label_225
	mov	rdi, r15
	mov	rsi, rbx
	call	xrealloc
	mov	qword ptr [rsp + 8], rax
.label_225:
	mov	qword ptr [rsp + 0x10], rbx
.label_216:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_220:
	test	r13, r13
	je	.label_154
	mov	rbx, r13
	mov	rsi, qword ptr [rsp + 0x18]
	sub	rbx, rsi
	lea	rbp, [rbx + 1]
	xor	edi, edi
	test	r14, r14
	sete	dil
	mov	rdx, rbp
	call	cwrite
	lea	r14, [r14 + rbx + 1]
	mov	rcx, qword ptr [rsp + 0x30]
	sub	rcx, rbp
	inc	r13
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	cmove	rbp, rdx
	sub	r12, rbp
	mov	bpl, 1
	mov	qword ptr [rsp + 0x18], r13
	jmp	.label_227
	nop	word ptr [rax + rax]
.label_154:
	mov	rcx, qword ptr [rsp + 0x50]
	test	cl, 1
	jne	.label_32
	xor	edi, edi
	test	r14, r14
	sete	dil
	mov	rbx, qword ptr [rsp + 0x48]
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 0x30]
	cmovne	rbp, r12
	mov	r15, r12
	cmove	r15, rbx
	mov	r13, qword ptr [rsp + 0x18]
	mov	rsi, r13
	mov	rdx, rbp
	call	cwrite
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x30]
	add	r14, rbp
	sub	rcx, rbp
	add	r13, rbp
	mov	qword ptr [rsp + 0x18], r13
	sub	r12, r15
	mov	rax, qword ptr [rsp + 0x50]
	mov	ebp, eax
.label_227:
	mov	rax, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
.label_172:
	test	rdx, rdx
	je	.label_61
	test	r12, r12
	jne	.label_63
.label_61:
	test	rdx, rdx
	jne	.label_190
	test	rcx, rcx
	je	.label_190
.label_63:
	test	rdx, rdx
	cmove	r12, rcx
	mov	rdx, rsi
	sub	rdx, r15
	cmp	rdx, r12
	jae	.label_210
	mov	rbx, rcx
	cmp	rsi, qword ptr [rsp + 0x60]
	ja	.label_228
	add	rsi, qword ptr [rsp + 0x38]
	mov	rdi, rax
	mov	qword ptr [rsp + 0x10], rsi
	call	xrealloc
	jmp	.label_56
	nop	word ptr [rax + rax]
.label_210:
	mov	qword ptr [rsp + 0x10], rsi
	mov	rbx, rcx
.label_56:
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rax + r15]
	mov	r13, qword ptr [rsp + 0x18]
	mov	rsi, r13
	mov	rdx, r12
	call	memcpy
	add	r15, r12
	mov	rcx, rbx
	sub	rcx, r12
	add	r13, r12
	mov	qword ptr [rsp + 0x18], r13
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x10]
	jmp	.label_94
	nop	
.label_190:
	mov	qword ptr [rsp + 8], rax
.label_94:
	xor	eax, eax
	test	rdx, rdx
	mov	r12d, 0
	jne	.label_107
	mov	r12b, bpl
.label_107:
	cmovne	r14, rax
	test	rcx, rcx
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_103
	cmp	qword ptr [rsp + 0x58], 0
	jne	.label_90
.label_219:
	test	r15, r15
	je	.label_112
	xor	edi, edi
	test	r14, r14
	sete	dil
	mov	rsi, rbp
	mov	rdx, r15
	call	cwrite
.label_112:
	mov	rdi, rbp
	call	free
	jmp	.label_45
.label_836:
	mov	rcx, qword ptr [rsp + 0x28]
	test	rcx, rcx
	je	.label_121
	lea	rbp, [rcx - 1]
	cmp	rbp, rbx
	jae	.label_128
	cmp	rbx, r15
	ja	.label_128
	xor	edx, edx
	mov	rax, r15
	div	rbx
	mov	r12, rax
	imul	rbp, r12
	imul	r12, rcx
	cmp	rcx, rbx
	cmove	r12, r15
	sub	r13, rbp
	jbe	.label_131
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rdi + rbp]
	mov	rdx, r13
	call	memmove
	jmp	.label_139
.label_837:
	mov	qword ptr [rsp + 0x18], r13
	cmp	qword ptr [rsp + 0x28], rbx
	ja	.label_142
	lea	rax, [rbx - 1]
	cmp	rax, r15
	jae	.label_142
	xor	edx, edx
	mov	rax, r15
	div	rbx
	mov	r13, rax
	mov	ebp, 1
	xor	r14d, r14d
	mov	rax, qword ptr [rsp + 0x28]
	cmp	rax, 2
	jb	.label_151
	lea	rbp, [rax - 1]
	mov	r14, r13
	imul	r14, rbp
	dec	r14
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x18]
	sub	rsi, rdx
	jae	.label_240
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rdi + r14]
	sub	rdx, r14
	mov	qword ptr [rsp + 0x18], rdx
	call	memmove
	mov	r12, r14
	jmp	.label_164
.label_838:
	mov	r14, qword ptr [rsp + 0x28]
	test	r14, r14
	mov	qword ptr [rsp + 0x10], rax
	jne	.label_167
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rax, rbx
	shr	rax, 0x3a
	jne	.label_169
	mov	rdi, rbx
	shl	rdi, 5
	call	xmalloc
	mov	rcx, rbx
	mov	qword ptr [rsp + 0x10], rax
	mov	rbx, rax
	add	rbx, 0x18
	mov	rbp, rcx
	nop	word ptr cs:[rax + rax]
.label_178:
	call	next_file_name
	mov	rdi, qword ptr [rip + outfile]
	call	xstrdup
	mov	qword ptr [rbx - 0x18], rax
	mov	dword ptr [rbx - 0x10], 0xffffffff
	mov	qword ptr [rbx - 8], 0
	mov	dword ptr [rbx], 0
	add	rbx, 0x20
	dec	rbp
	jne	.label_178
.label_167:
	xor	ebx, ebx
	mov	eax, 1
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x88], rax
	jmp	.label_157
.label_58:
	mov	rbx, qword ptr [rsp + 0x48]
	mov	al, r12b
	mov	qword ptr [rsp + 0x58], rax
	mov	al, byte ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x70], rax
.label_157:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	safe_read
	mov	r13, rax
	test	r13, r13
	je	.label_224
	mov	qword ptr [rsp + 0x68], rbx
	cmp	r13, -1
	je	.label_95
	mov	r14, qword ptr [rsp + 0x40]
	add	r13, r14
	mov	qword ptr [rsp + 0x60], r13
	jmp	.label_99
.label_145:
	mov	r14, qword ptr [rsp + 0x30]
	cmp	r14, qword ptr [rsp + 0x20]
	lea	rax, [r14 + 1]
	mov	ecx, 1
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x30], rcx
	mov	r14, rbx
.label_99:
	mov	qword ptr [rsp + 0x80], r14
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rsp + 0x58]
	mov	r12d, eax
	mov	rax, qword ptr [rsp + 0x70]
	mov	byte ptr [rsp + 0x50], al
.label_200:
	cmp	qword ptr [rsp + 0x28], 0
	jne	.label_222
	mov	rcx, qword ptr [rsp + 0x48]
	shl	rcx, 5
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x78], rcx
	lea	rax, [rax + rcx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	r15, r14
	nop	dword ptr [rax + rax]
.label_87:
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rsp + 0x28]
	jne	.label_232
	cmp	r15, r13
	jne	.label_235
	jmp	.label_163
	nop	word ptr cs:[rax + rax]
.label_232:
	cmp	r15, r13
	je	.label_58
.label_235:
	mov	esi, dword ptr [rip + eolchar]
	mov	rdx, r13
	sub	rdx, r15
	mov	rdi, r15
	call	memchr
	test	rax, rax
	lea	r14, [rax + 1]
	sete	bl
	cmove	r14, r13
	mov	r13, r14
	sub	r13, r15
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x20]
	call	ofile_open
	mov	byte ptr [rsp + 0x18], al
	cmp	byte ptr [rip + unbuffered],  1
	jne	.label_34
	mov	rax, qword ptr [rsp + 8]
	mov	edi, dword ptr [rax]
	mov	rsi, r15
	mov	rdx, r13
	call	full_write
	cmp	rax, r13
	jne	.label_91
	jmp	.label_48
	nop	dword ptr [rax + rax]
.label_34:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rax + 8]
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, r13
	call	fwrite_unlocked
	cmp	rax, 1
	je	.label_48
.label_91:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x20
	jne	.label_57
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	je	.label_57
.label_48:
	mov	r15d, ebx
	and	r12b, 1
	call	__errno_location
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	cmp	qword ptr [rip + filter_command],  0
	mov	r13, qword ptr [rsp + 0x60]
	jne	.label_65
	mov	byte ptr [rsp + 0x50], 1
.label_65:
	or	r12b, byte ptr [rsp + 0x18]
	cmp	eax, 0x20
	mov	rbx, qword ptr [rsp + 8]
	je	.label_70
	mov	byte ptr [rsp + 0x50], 1
.label_70:
	test	r12b, r12b
	je	.label_77
	mov	rdi, qword ptr [rbx + 8]
	call	rpl_fclose
	test	eax, eax
	jne	.label_201
	mov	qword ptr [rbx + 8], 0
	mov	dword ptr [rbx], 0xfffffffe
.label_77:
	test	r15b, r15b
	mov	r15, r14
	jne	.label_87
	mov	rax, qword ptr [rsp + 0x48]
	inc	rax
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_200
	mov	al, 1
	mov	qword ptr [rsp + 0x88], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	test	byte ptr [rsp + 0x50], 1
	mov	al, r12b
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x70], rax
	jne	.label_99
	jmp	.label_106
.label_222:
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rsp + 0x28]
	jne	.label_108
	mov	rdi, qword ptr [rsp + 0x80]
.label_141:
	cmp	rdi, r13
	je	.label_113
	mov	esi, dword ptr [rip + eolchar]
	mov	rdx, r13
	sub	rdx, rdi
	mov	r14, rdi
	call	memchr
	mov	r15, rax
	lea	rbx, [r15 + 1]
	test	r15, r15
	mov	rbp, rbx
	cmove	rbp, r13
	sub	rbp, r14
	movzx	eax, byte ptr [rip + unbuffered]
	test	al, al
	je	.label_38
	mov	edi, 1
	mov	rsi, r14
	mov	rdx, rbp
	call	full_write
	cmp	rax, rbp
	je	.label_134
	jmp	.label_55
.label_38:
	mov	rcx, qword ptr [rip + stdout]
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbp
	call	fwrite_unlocked
	cmp	rax, 1
	jne	.label_138
.label_134:
	test	r15, r15
	mov	rdi, r13
	je	.label_141
	jmp	.label_145
.label_108:
	mov	ebp, dword ptr [rip + eolchar]
	mov	rdi, qword ptr [rsp + 0x80]
.label_213:
	cmp	rdi, r13
	je	.label_149
	mov	rdx, r13
	sub	rdx, rdi
	mov	esi, ebp
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	mov	rdi, r13
	je	.label_213
	inc	rbx
	jmp	.label_145
.label_163:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_58
.label_149:
	mov	rbx, qword ptr [rsp + 0x68]
	jmp	.label_157
.label_113:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x68]
	jmp	.label_157
.label_224:
	cmp	qword ptr [rsp + 0x28], 0
	jne	.label_45
	jmp	.label_35
.label_151:
	lea	r12, [r13 - 1]
	jmp	.label_164
.label_121:
	xor	edx, edx
	mov	rax, r15
	div	rbx
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, r13
	mov	r8, rbx
.label_170:
	call	bytes_split
	jmp	.label_45
.label_131:
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	call	lseek
	mov	r13, -1
	test	rax, rax
	jns	.label_139
	jmp	.label_95
	nop	dword ptr [rax]
.label_192:
	add	rbp, rbx
	mov	r13, -1
.label_139:
	cmp	r12, rbp
	jle	.label_45
	cmp	r13, -1
	jne	.label_179
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	safe_read
	mov	r13, rax
	cmp	r13, -1
	je	.label_95
.label_179:
	test	r13, r13
	je	.label_45
	mov	rbx, r12
	sub	rbx, rbp
	cmp	r13, rbx
	cmovb	rbx, r13
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	je	.label_192
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 0x20
	jne	.label_129
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	jne	.label_192
.label_129:
	xor	edi, edi
	mov	esi, 3
	mov	edx, OFFSET FLAT:label_43
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_143
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_240:
	xor	edi, edi
	mov	edx, 1
	call	lseek
	mov	qword ptr [rsp + 0x18], -1
	test	rax, rax
	mov	r12, r14
	js	.label_95
.label_164:
	cmp	r14, r15
	jge	.label_234
	mov	qword ptr [rsp + 0x58], r15
	dec	r15
	mov	byte ptr [rsp + 8], 1
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x18]
.label_165:
	cmp	rax, -1
	jne	.label_221
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x60], rcx
	call	safe_read
	mov	rcx, qword ptr [rsp + 0x60]
	cmp	rax, -1
	je	.label_95
.label_221:
	test	rax, rax
	je	.label_171
	mov	rdx, qword ptr [rsp + 0x58]
	sub	rdx, r14
	cmp	rax, rdx
	cmovb	rdx, rax
	test	rdx, rdx
	je	.label_231
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rax + rdx]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x60], rcx
	mov	rsi, rax
	mov	al, byte ptr [rsp + 8]
	mov	qword ptr [rsp + 0x30], rbx
	nop	dword ptr [rax]
.label_42:
	mov	byte ptr [rsp + 0x50], al
	mov	qword ptr [rsp + 0x10], rsi
	mov	rax, r12
	sub	rax, r14
	mov	ecx, 0
	cmovns	rcx, rax
	cmp	rdx, rcx
	cmovb	rcx, rdx
	lea	rdi, [rsi + rcx]
	mov	esi, dword ptr [rip + eolchar]
	mov	qword ptr [rsp + 0x48], rdx
	sub	rdx, rcx
	call	memchr
	mov	rsi, qword ptr [rsp + 0x10]
	test	rax, rax
	lea	rax, [rax + 1]
	setne	byte ptr [rsp + 8]
	cmove	rax, rbx
	mov	rbx, rax
	mov	rdx, rbx
	sub	rdx, rsi
	mov	rax, qword ptr [rsp + 0x28]
	cmp	rbp, rax
	mov	qword ptr [rsp + 0x18], rdx
	jne	.label_47
	mov	edi, 1
	call	full_write
	mov	rdx, qword ptr [rsp + 0x18]
	cmp	rax, rdx
	je	.label_52
	jmp	.label_55
	nop	dword ptr [rax]
.label_47:
	test	rax, rax
	jne	.label_52
	mov	al, byte ptr [rsp + 0x50]
	and	al, 1
	movzx	edi, al
	call	cwrite
	mov	rdx, qword ptr [rsp + 0x18]
	nop	dword ptr [rax + rax]
.label_52:
	add	r14, rdx
	mov	al, byte ptr [rsp + 8]
	test	al, al
	setne	cl
	jne	.label_181
	cmp	r12, r14
	jl	.label_181
	mov	rcx, qword ptr [rsp + 0x30]
	jmp	.label_68
	nop	dword ptr [rax]
.label_181:
	mov	qword ptr [rsp + 0x10], rbx
	cmp	rbx, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x20]
	je	.label_69
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_115
	inc	rbp
.label_150:
	cmp	rbp, qword ptr [rsp + 0x28]
	ja	.label_45
	add	r12, r13
	cmp	qword ptr [rsp + 0x20], rbp
	cmove	r12, r15
	cmp	r12, r14
	jl	.label_229
	xor	eax, eax
.label_229:
	inc	rbp
	cmp	r12, r14
	jl	.label_150
	mov	ecx, eax
	and	cl, 1
	jne	.label_150
	dec	rbp
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
.label_115:
	lea	rax, [rbp + 1]
	add	r12, r13
	cmp	rax, rbx
	cmove	r12, r15
	cmp	r12, r14
	jge	.label_98
	add	rbp, 2
	nop	word ptr [rax + rax]
.label_105:
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	add	r12, r13
	cmp	rbx, rbp
	cmove	r12, r15
	inc	rbp
	cmp	r12, r14
	jl	.label_105
	dec	rbp
	jmp	.label_209
	nop	word ptr cs:[rax + rax]
.label_98:
	mov	rbp, rax
.label_209:
	cmp	r12, r14
	jl	.label_115
	jmp	.label_92
.label_69:
	nop	dword ptr [rax]
.label_205:
	test	cl, 1
	je	.label_102
	lea	rbx, [rbp + 1]
	mov	rcx, qword ptr [rsp + 0x28]
	test	rcx, rcx
	je	.label_182
	cmp	rbx, rcx
	ja	.label_45
	add	r12, r13
	cmp	rbx, qword ptr [rsp + 0x20]
	cmove	r12, r15
	cmp	r12, r14
	mov	rbp, rbx
	jge	.label_111
	jmp	.label_104
	nop	word ptr cs:[rax + rax]
.label_182:
	add	r12, r13
	cmp	rbx, qword ptr [rsp + 0x20]
	cmove	r12, r15
	cmp	r12, r14
	jge	.label_111
	add	rbp, 2
	mov	rbx, rbp
	mov	rbp, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_147:
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	add	r12, r13
	cmp	rbp, rbx
	cmove	r12, r15
	inc	rbx
	cmp	r12, r14
	jl	.label_147
	dec	rbx
.label_111:
	xor	eax, eax
	mov	rbp, rbx
.label_104:
	mov	ecx, eax
	and	cl, 1
	cmp	r12, r14
	jl	.label_205
	test	cl, cl
	jne	.label_205
	jmp	.label_92
.label_102:
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
.label_92:
	mov	al, byte ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x10]
.label_68:
	mov	rdx, qword ptr [rsp + 0x48]
	sub	rdx, qword ptr [rsp + 0x18]
	cmp	rbx, rcx
	mov	rsi, rbx
	mov	rbx, rcx
	jne	.label_42
	jmp	.label_161
.label_231:
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	al, byte ptr [rsp + 8]
.label_161:
	mov	byte ptr [rsp + 8], al
	mov	rax, -1
	cmp	r14, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x60]
	jl	.label_165
	jmp	.label_171
.label_234:
	xor	ecx, ecx
.label_171:
	and	cl, 1
	movzx	ebx, cl
	cmp	qword ptr [rsp + 0x28], 0
	jne	.label_45
	add	rbx, rbp
	jmp	.label_67
	nop	word ptr cs:[rax + rax]
.label_176:
	inc	rbx
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
.label_67:
	cmp	rbx, qword ptr [rsp + 0x20]
	jbe	.label_176
	jmp	.label_45
.label_106:
	mov	rbx, qword ptr [rsp + 0x20]
.label_35:
	mov	rax, qword ptr [rsp + 0x88]
	test	al, 1
	cmovne	rbx, qword ptr [rsp + 0x20]
	movsxd	r14, ebx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rbp, [rax + 0x18]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_196:
	cmp	rbx, r14
	jb	.label_185
	movzx	eax, byte ptr [rip + elide_empty_files]
	test	al, al
	jne	.label_185
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	call	ofile_open
.label_185:
	mov	esi, dword ptr [rbp - 0x10]
	test	esi, esi
	js	.label_191
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp]
	call	closeout
.label_191:
	mov	dword ptr [rbp - 0x10], 0xfffffffe
	inc	rbx
	add	rbp, 0x20
	cmp	qword ptr [rsp + 0x20], rbx
	jne	.label_196
.label_45:
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_95
	mov	esi, dword ptr [rip + output_desc]
	mov	edx, dword ptr [rip + filter_pid]
	mov	rcx, qword ptr [rip + outfile]
	xor	edi, edi
	call	closeout
	xor	eax, eax
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_93:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rsi, [rsp + 0x90]
	mov	rdi, rbp
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	r8d, r13d
	call	error
.label_95:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + infile]
.label_39:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
.label_199:
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_143
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_83:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
.label_97:
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
.label_813:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_20
	mov	edx, OFFSET FLAT:label_25
	mov	r8d, OFFSET FLAT:label_242
	mov	r9d, OFFSET FLAT:label_243
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_814:
	xor	edi, edi
	call	usage
.label_73:
	mov	edi, 1
	call	usage
.label_201:
	mov	ebx, dword ptr [rbp]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rax + rcx]
	jmp	.label_39
.label_57:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rax + rcx]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_143
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_228:
	call	xalloc_die
.label_207:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_122:
	xor	edi, edi
	cmp	r13d, 0x64
	jne	.label_71
	mov	esi, OFFSET FLAT:label_75
	jmp	.label_76
.label_203:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	jmp	.label_76
.label_239:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	jmp	.label_82
.label_246:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
.label_82:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	jmp	.label_97
.label_194:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	jmp	.label_101
.label_118:
	call	abort
.label_110:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + infile]
	mov	edi, 4
	call	quotearg_style
	jmp	.label_116
.label_130:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_124
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_127
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	mov	edi, 1
	call	usage
.label_174:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
.label_202:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	jmp	.label_97
.label_244:
	call	__errno_location
	cmp	dword ptr [rax], 0x1d
	jne	.label_40
	mov	dword ptr [rax], 0
.label_40:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [rip + infile]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
.label_116:
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_71:
	mov	esi, OFFSET FLAT:label_74
.label_76:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
.label_101:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_85:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp + 0x90]
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 0x4b
	mov	edx, OFFSET FLAT:label_127
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_142:
	mov	edi, OFFSET FLAT:label_237
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 0x362
	mov	ecx, OFFSET FLAT:label_238
	call	__assert_fail
.label_128:
	mov	edi, OFFSET FLAT:label_186
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 0x3e0
	mov	ecx, OFFSET FLAT:label_188
	call	__assert_fail
.label_169:
	call	xalloc_die
.label_138:
	mov	rdi, qword ptr [rip + stdout]
	call	clearerr_unlocked
.label_55:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	jmp	.label_199
.label_50:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_40
	nop	
	.section	.text
	.align	16
	#Procedure 0x403b10

	.globl bytes_split
	.type bytes_split, @function
bytes_split:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, r8
	mov	r14, rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [r13 - 1]
	mov	bpl, 1
	xor	r12d, r12d
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rdi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x10], rsi
.label_256:
	cmp	r14, -1
	je	.label_248
	cmp	r14, qword ptr [rsp + 0x20]
	setb	byte ptr [rsp + 7]
	jmp	.label_250
	nop	dword ptr [rax]
.label_248:
	mov	r15d, eax
	test	al, 1
	jne	.label_254
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbx
	call	lseek
	cmp	rax, -1
	je	.label_261
	mov	bpl, 1
.label_261:
	cmovne	rbx, qword ptr [rsp + 0x18]
.label_254:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x20]
	call	safe_read
	mov	r14, rax
	cmp	r14, -1
	je	.label_253
	test	r14, r14
	sete	byte ptr [rsp + 7]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	eax, r15d
.label_250:
	cmp	r14, rbx
	jae	.label_260
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_263
	nop	
.label_260:
	mov	r15, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_249:
	mov	ecx, eax
	or	cl, bpl
	and	bpl, 1
	test	cl, 1
	je	.label_252
	movzx	edi, bpl
	mov	rsi, r15
	mov	rdx, rbx
	call	cwrite
	mov	rsi, qword ptr [rsp + 0x10]
.label_252:
	movzx	ecx, bpl
	add	r12, rcx
	cmp	rsi, r12
	jae	.label_259
	mov	ecx, eax
	and	cl, 1
	je	.label_262
.label_259:
	cmp	rsi, r12
	setae	bpl
	add	r15, rbx
	sub	r14, rbx
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	r14, rcx
	mov	rbx, rcx
	jae	.label_249
	mov	rbx, qword ptr [rsp + 0x18]
.label_263:
	mov	cl, 1
	test	r14, r14
	je	.label_255
	mov	ecx, eax
	or	cl, bpl
	and	bpl, 1
	test	cl, 1
	je	.label_258
	movzx	edi, bpl
	mov	rsi, r15
	mov	rdx, r14
	call	cwrite
	mov	rsi, qword ptr [rsp + 0x10]
.label_258:
	movzx	ecx, bpl
	add	r12, rcx
	xor	ebp, ebp
	mov	edi, eax
	and	dil, 1
	mov	rdx, r14
	cmove	rdx, rbp
	cmp	r12, r13
	setne	cl
	cmovne	rdx, r14
	sub	rbx, rdx
	or	cl, dil
.label_255:
	test	cl, 1
	je	.label_262
	xor	byte ptr [rsp + 7], 1
	mov	r14, -1
	jne	.label_256
.label_262:
	cmp	r12, r13
	jae	.label_251
	sub	r13, r12
	nop	word ptr cs:[rax + rax]
.label_257:
	mov	edi, 1
	xor	esi, esi
	xor	edx, edx
	call	cwrite
	dec	r13
	jne	.label_257
.label_251:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_253:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + infile]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_143
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d00

	.globl closeout
	.type closeout, @function
closeout:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x30
	mov	r14, rcx
	mov	r15d, edx
	mov	ebx, esi
	mov	rbp, rdi
	test	rbp, rbp
	je	.label_264
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_264
	call	__errno_location
	mov	r12d, dword ptr [rax]
	cmp	r12d, 0x20
	jne	.label_272
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	je	.label_272
.label_264:
	test	ebx, ebx
	js	.label_268
	test	rbp, rbp
	jne	.label_277
	mov	edi, ebx
	call	close
	test	eax, eax
	js	.label_280
.label_277:
	mov	rax, qword ptr [rip + n_open_pipes]
	test	rax, rax
	je	.label_268
	mov	rcx, qword ptr [rip + open_pipes]
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_266:
	cmp	dword ptr [rcx + rdx*4], ebx
	je	.label_265
	inc	rdx
	cmp	rdx, rax
	jb	.label_266
	jmp	.label_268
.label_265:
	lea	rsi, [rax - 1]
	mov	qword ptr [rip + n_open_pipes],  rsi
	mov	eax, dword ptr [rcx + rax*4 - 4]
	mov	dword ptr [rcx + rdx*4], eax
.label_268:
	test	r15d, r15d
	jle	.label_269
	mov	dword ptr [rsp + 0xc], 0
	lea	rsi, [rsp + 0xc]
	xor	edx, edx
	mov	edi, r15d
	call	waitpid
	cmp	eax, -1
	jne	.label_274
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0xa
	jne	.label_275
.label_274:
	mov	ebx, dword ptr [rsp + 0xc]
	mov	ebp, ebx
	and	ebp, 0x7f
	mov	eax, ebp
	shl	eax, 0x18
	add	eax, 0x1000000
	sar	eax, 0x19
	test	eax, eax
	jle	.label_279
	cmp	ebp, 0xd
	je	.label_269
	lea	rsi, [rsp + 0x10]
	mov	edi, ebp
	call	sig2str
	test	eax, eax
	je	.label_267
	lea	rdi, [rsp + 0x10]
	mov	esi, 1
	mov	edx, 0x13
	mov	ecx, OFFSET FLAT:label_278
	xor	eax, eax
	mov	r8d, ebp
	call	__sprintf_chk
.label_267:
	or	ebp, 0x80
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	r9, qword ptr [rip + filter_command]
	lea	r8, [rsp + 0x10]
	mov	esi, 0
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rbx
	call	error
	jmp	.label_269
.label_279:
	test	ebp, ebp
	jne	.label_281
	shr	ebx, 8
	and	ebx, 0xff
	je	.label_269
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	r9, qword ptr [rip + filter_command]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	rdx, rbp
	mov	r8d, ebx
	call	error
.label_269:
	add	rsp, 0x30
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_272:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_143
	xor	eax, eax
	mov	esi, r12d
	call	error
.label_280:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_143
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_275:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_281:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f80

	.globl cwrite
	.type cwrite, @function
cwrite:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	test	dil, dil
	je	.label_282
	test	r14, r14
	jne	.label_284
	test	rbx, rbx
	jne	.label_284
	mov	al, 1
	mov	cl, byte ptr [rip + elide_empty_files]
	test	cl, cl
	jne	.label_286
.label_284:
	mov	esi, dword ptr [rip + output_desc]
	mov	edx, dword ptr [rip + filter_pid]
	mov	rcx, qword ptr [rip + outfile]
	xor	edi, edi
	call	closeout
	call	next_file_name
	mov	rdi, qword ptr [rip + outfile]
	call	create
	mov	edi, eax
	mov	dword ptr [rip + output_desc],  edi
	test	edi, edi
	jns	.label_285
	call	__errno_location
	mov	ebx, dword ptr [rax]
	jmp	.label_283
.label_282:
	mov	edi, dword ptr [rip + output_desc]
.label_285:
	mov	rsi, r14
	mov	rdx, rbx
	call	full_write
	mov	rcx, rax
	mov	al, 1
	cmp	rcx, rbx
	je	.label_286
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x20
	jne	.label_283
	mov	rax, qword ptr [rip + filter_command]
	test	rax, rax
	je	.label_283
	xor	eax, eax
.label_286:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_283:
	mov	rdx, qword ptr [rip + outfile]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_143
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404050

	.globl next_file_name
	.type next_file_name, @function
next_file_name:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, qword ptr [rip + outfile]
	test	r14, r14
	je	.label_288
	mov	rax, qword ptr [rip + suffix_length]
	test	rax, rax
	je	.label_305
	mov	rcx, qword ptr [rip + next_file_name.sufindex]
	mov	bl, byte ptr [rip + suffix_auto]
	mov	rdx, qword ptr [rip + suffix_alphabet]
	mov	rsi, qword ptr [rip + outfile_mid]
	test	bl, bl
	je	.label_290
	nop	word ptr [rax + rax]
.label_308:
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rbx, [rdi + 1]
	mov	qword ptr [rcx + rax*8 - 8], rbx
	movzx	ebx, byte ptr [rdx + rdi + 1]
	mov	byte ptr [rsi + rax - 1], bl
	test	bl, bl
	jne	.label_289
	mov	qword ptr [rcx + rax*8 - 8], 0
	movzx	ebx, byte ptr [rdx]
	mov	byte ptr [rsi + rax - 1], bl
	dec	rax
	jne	.label_308
	jmp	.label_305
	nop	word ptr cs:[rax + rax]
.label_290:
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	inc	rdi
	mov	qword ptr [rcx + rax*8 - 8], rdi
	cmp	rax, 1
	jne	.label_301
	mov	rbx, qword ptr [rcx]
	cmp	byte ptr [rdx + rbx + 1], 0
	je	.label_288
.label_301:
	movzx	ebx, byte ptr [rdx + rdi]
	mov	byte ptr [rsi + rax - 1], bl
	test	bl, bl
	jne	.label_289
	mov	qword ptr [rcx + rax*8 - 8], 0
	movzx	ebx, byte ptr [rdx]
	mov	byte ptr [rsi + rax - 1], bl
	dec	rax
	jne	.label_290
.label_305:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_288:
	mov	r12, qword ptr [rip + next_file_name.outfile_length]
	test	r12, r12
	je	.label_303
	lea	rsi, [r12 + 2]
	mov	qword ptr [rip + next_file_name.outfile_length],  rsi
	inc	qword ptr [rip + suffix_length]
	mov	rbx, qword ptr [rip + next_file_name.outbase_length]
	jmp	.label_304
.label_303:
	mov	rdi, qword ptr [rip + outbase]
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rip + next_file_name.outbase_length],  rbx
	mov	rdi, qword ptr [rip + additional_suffix]
	xor	eax, eax
	test	rdi, rdi
	je	.label_312
	call	strlen
.label_312:
	mov	qword ptr [rip + next_file_name.addsuf_length],  rax
	mov	rsi, rbx
	add	rsi, rax
	add	rsi, qword ptr [rip + suffix_length]
	mov	qword ptr [rip + next_file_name.outfile_length],  rsi
.label_304:
	inc	rsi
	cmp	rsi, rbx
	jb	.label_300
	mov	rdi, r14
	call	xrealloc
	mov	rbx, rax
	test	r12, r12
	mov	r14, rbx
	mov	qword ptr [rip + outfile],  rbx
	je	.label_297
	mov	rax, qword ptr [rip + next_file_name.sufindex]
	mov	rcx, qword ptr [rax]
	mov	rax, qword ptr [rip + suffix_alphabet]
	mov	cl, byte ptr [rax + rcx]
	mov	r15, qword ptr [rip + next_file_name.outbase_length]
	mov	byte ptr [r14 + r15], cl
	inc	r15
	mov	qword ptr [rip + next_file_name.outbase_length],  r15
	jmp	.label_306
.label_297:
	mov	rsi, qword ptr [rip + outbase]
	mov	r15, qword ptr [rip + next_file_name.outbase_length]
	mov	rdi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rip + suffix_alphabet]
.label_306:
	add	rbx, r15
	mov	qword ptr [rip + outfile_mid],  rbx
	mov	r15, qword ptr [rip + suffix_length]
	movzx	esi, byte ptr [rax]
	mov	rdi, rbx
	mov	rdx, r15
	call	memset
	mov	rsi, qword ptr [rip + additional_suffix]
	test	rsi, rsi
	je	.label_302
	add	rbx, r15
	mov	rdx, qword ptr [rip + next_file_name.addsuf_length]
	mov	rdi, rbx
	call	memcpy
.label_302:
	mov	rax, qword ptr [rip + next_file_name.outfile_length]
	mov	byte ptr [r14 + rax], 0
	mov	rdi, qword ptr [rip + next_file_name.sufindex]
	call	free
	mov	rdi, qword ptr [rip + suffix_length]
	mov	esi, 8
	call	xcalloc
	mov	r14, rax
	mov	qword ptr [rip + next_file_name.sufindex],  r14
	mov	rbx, qword ptr [rip + numeric_suffix_start]
	test	rbx, rbx
	je	.label_289
	test	r12, r12
	jne	.label_298
	mov	rdi, rbx
	call	strlen
	mov	r15, rax
	mov	r12, qword ptr [rip + suffix_length]
	mov	rdi, qword ptr [rip + outfile_mid]
	add	rdi, r12
	sub	rdi, r15
	mov	rsi, rbx
	mov	rdx, r15
	call	memcpy
	test	r15, r15
	je	.label_289
	lea	rax, [r14 + r12*8]
	cmp	r15, 4
	jae	.label_307
	mov	rcx, r15
	jmp	.label_296
.label_307:
	mov	ecx, r15d
	and	ecx, 3
	mov	r8, r15
	sub	r8, rcx
	je	.label_310
	lea	rsi, [r12*8]
	lea	rdi, [r15*8]
	sub	rsi, rdi
	add	rsi, r14
	lea	rdi, [rbx + r15 - 1]
	cmp	rsi, rdi
	ja	.label_287
	lea	rsi, [r14 + r12*8 - 8]
	cmp	rbx, rsi
	ja	.label_287
.label_310:
	mov	rcx, r15
	jmp	.label_296
.label_287:
	mov	rsi, rcx
	sub	rsi, r15
	lea	rax, [rax + rsi*8]
	lea	rsi, [r14 + r12*8 - 0x10]
	lea	rdi, [rbx + r15 - 2]
	pxor	xmm0, xmm0
	movdqa	xmm1, xmmword ptr [rip + label_299]
	nop	word ptr cs:[rax + rax]
.label_311:
	movzx	edx, word ptr [rdi]
	movd	xmm2, edx
	movzx	edx, word ptr [rdi - 2]
	movd	xmm3, edx
	punpcklbw	xmm2, xmm0
	pshuflw	xmm2, xmm2, 0xe1
	packuswb	xmm2, xmm0
	punpcklbw	xmm2, xmm2
	punpcklwd	xmm2, xmm2
	movdqa	xmm4, xmm2
	psrad	xmm4, 0x1f
	psrad	xmm2, 0x18
	punpckldq	xmm2, xmm4
	punpcklbw	xmm3, xmm0
	pshuflw	xmm3, xmm3, 0xe1
	packuswb	xmm3, xmm0
	punpcklbw	xmm3, xmm3
	punpcklwd	xmm3, xmm3
	movdqa	xmm4, xmm3
	psrad	xmm4, 0x1f
	psrad	xmm3, 0x18
	punpckldq	xmm3, xmm4
	paddq	xmm2, xmm1
	paddq	xmm3, xmm1
	pshufd	xmm2, xmm2, 0x4e
	movdqu	xmmword ptr [rsi], xmm2
	pshufd	xmm2, xmm3, 0x4e
	movdqu	xmmword ptr [rsi - 0x10], xmm2
	add	rsi, -0x20
	add	rdi, -4
	add	r8, -4
	jne	.label_311
	test	rcx, rcx
	je	.label_289
.label_296:
	lea	rsi, [rcx - 1]
	mov	edx, ecx
	and	edx, 3
	cmp	rsi, 3
	jb	.label_294
	nop	word ptr cs:[rax + rax]
.label_291:
	movsx	rsi, byte ptr [rbx + rcx - 1]
	add	rsi, -0x30
	mov	qword ptr [rax - 8], rsi
	movsx	rsi, byte ptr [rbx + rcx - 2]
	add	rsi, -0x30
	mov	qword ptr [rax - 0x10], rsi
	movsx	rsi, byte ptr [rbx + rcx - 3]
	add	rsi, -0x30
	mov	qword ptr [rax - 0x18], rsi
	movsx	rsi, byte ptr [rbx + rcx - 4]
	add	rcx, -4
	add	rsi, -0x30
	mov	qword ptr [rax - 0x20], rsi
	add	rax, -0x20
	cmp	rdx, rcx
	jne	.label_291
.label_294:
	test	rdx, rdx
	je	.label_289
	lea	rcx, [rbx + rcx - 1]
	add	rax, -8
	neg	rdx
	nop	word ptr cs:[rax + rax]
.label_309:
	movsx	rsi, byte ptr [rcx]
	add	rsi, -0x30
	mov	qword ptr [rax], rsi
	dec	rcx
	add	rax, -8
	inc	rdx
	jne	.label_309
.label_289:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_300:
	call	xalloc_die
.label_298:
	mov	edi, OFFSET FLAT:label_292
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 0x198
	mov	ecx, OFFSET FLAT:label_293
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0

	.globl create
	.type create, @function
create:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x98
	mov	r15, rdi
	cmp	qword ptr [rip + filter_command],  0
	je	.label_335
	mov	edi, OFFSET FLAT:label_351
	call	getenv
	test	rax, rax
	mov	r14d, OFFSET FLAT:label_353
	cmovne	r14, rax
	mov	edi, OFFSET FLAT:label_354
	mov	edx, 1
	mov	rsi, r15
	call	setenv
	test	eax, eax
	jne	.label_313
	cmp	byte ptr [rip + verbose],  1
	jne	.label_316
	mov	rbp, qword ptr [rip + stdout]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_318
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbp
	mov	rdx, rbx
	call	__fprintf_chk
.label_316:
	lea	rdi, [rsp + 8]
	call	pipe
	test	eax, eax
	jne	.label_328
	call	fork
	mov	ebx, eax
	test	ebx, ebx
	je	.label_331
	cmp	ebx, -1
	je	.label_334
	mov	edi, dword ptr [rsp + 8]
	call	close
	test	eax, eax
	jne	.label_337
	mov	dword ptr [rip + filter_pid],  ebx
	mov	rcx, qword ptr [rip + n_open_pipes]
	cmp	rcx, qword ptr [rip + open_pipes_alloc]
	jne	.label_338
	mov	rdi, qword ptr [rip + open_pipes]
	test	rdi, rdi
	je	.label_314
	movabs	rax, 0x1555555555555555
	cmp	rcx, rax
	jae	.label_344
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_348
.label_335:
	cmp	byte ptr [rip + verbose],  1
	jne	.label_352
	mov	r14, qword ptr [rip + stdout]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rbp
	call	__fprintf_chk
.label_352:
	mov	esi, 0x41
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r15
	call	open_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_322
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, ebp
	call	__fxstat
	test	eax, eax
	jne	.label_326
	mov	rax, qword ptr [rip + label_319]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_320
	mov	rax, qword ptr [rip + in_stat_buf]
	cmp	rax, qword ptr [rsp + 8]
	je	.label_330
.label_320:
	xor	esi, esi
	mov	edi, ebp
	call	ftruncate
	test	eax, eax
	je	.label_322
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	jne	.label_322
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	jmp	.label_347
.label_331:
	cmp	qword ptr [rip + n_open_pipes],  0
	je	.label_349
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_357:
	mov	rax, qword ptr [rip + open_pipes]
	mov	edi, dword ptr [rax + rbx*4]
	call	close
	test	eax, eax
	jne	.label_356
	inc	rbx
	cmp	rbx, qword ptr [rip + n_open_pipes]
	jb	.label_357
.label_349:
	mov	edi, dword ptr [rsp + 0xc]
	call	close
	test	eax, eax
	jne	.label_315
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	je	.label_317
	xor	esi, esi
	call	dup2
	test	eax, eax
	jne	.label_350
	mov	edi, dword ptr [rsp + 8]
	call	close
	test	eax, eax
	jne	.label_321
.label_317:
	mov	edi, 2
	mov	esi, OFFSET FLAT:oldblocked
	xor	edx, edx
	call	sigprocmask
	mov	rdi, r14
	call	last_component
	mov	rsi, rax
	mov	rcx, qword ptr [rip + filter_command]
	mov	edx, OFFSET FLAT:label_327
	xor	r8d, r8d
	xor	eax, eax
	mov	rdi, r14
	call	execl
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8, qword ptr [rip + filter_command]
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_356:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
	jmp	.label_324
.label_338:
	mov	rax, qword ptr [rip + open_pipes]
	jmp	.label_343
.label_315:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_346
.label_324:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_314:
	test	rcx, rcx
	mov	esi, 0x20
	cmovne	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_355
.label_348:
	mov	qword ptr [rip + open_pipes_alloc],  rsi
	shl	rsi, 2
	call	xrealloc
	mov	qword ptr [rip + open_pipes],  rax
	mov	rcx, qword ptr [rip + n_open_pipes]
.label_343:
	mov	edx, dword ptr [rsp + 0xc]
	lea	rsi, [rcx + 1]
	mov	qword ptr [rip + n_open_pipes],  rsi
	mov	dword ptr [rax + rcx*4], edx
	mov	ebp, dword ptr [rsp + 0xc]
.label_322:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_350:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
	jmp	.label_324
.label_321:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	jmp	.label_324
.label_313:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
	jmp	.label_324
.label_328:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	jmp	.label_324
.label_334:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
	jmp	.label_324
.label_337:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
	jmp	.label_324
.label_326:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
.label_347:
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_330:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_344:
	call	xalloc_die
.label_355:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404940

	.globl ofile_open
	.type ofile_open, @function
ofile_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rcx, rbx
	shl	rcx, 5
	mov	eax, dword ptr [r14 + rcx + 8]
	test	eax, eax
	js	.label_359
	xor	ebp, ebp
	jmp	.label_366
.label_359:
	lea	rdx, [r14 + rcx + 8]
	mov	qword ptr [rsp + 8], rdx
	test	rbx, rbx
	mov	r12, r15
	cmovne	r12, rbx
	dec	r12
	mov	qword ptr [rsp + 0x10], rcx
	lea	rcx, [r14 + rcx]
	mov	qword ptr [rsp], rcx
	xor	ebp, ebp
	jmp	.label_367
	nop	word ptr cs:[rax + rax]
.label_360:
	lea	rax, [r14 + r13 + 8]
	mov	qword ptr [rax + 8], 0
	mov	dword ptr [rax], 0xfffffffe
	mov	rax, qword ptr [rsp + 8]
	mov	eax, dword ptr [rax]
	mov	bpl, 1
.label_367:
	mov	rcx, qword ptr [rsp]
	mov	rdi, qword ptr [rcx]
	cmp	eax, -1
	je	.label_371
	mov	esi, 0xc01
	xor	eax, eax
	call	open_safer
	jmp	.label_363
	nop	word ptr [rax + rax]
.label_371:
	call	create
.label_363:
	test	eax, eax
	jns	.label_365
	call	__errno_location
	mov	rbp, rax
	mov	ecx, dword ptr [rbp]
	lea	eax, [rcx - 0x17]
	cmp	eax, 1
	ja	.label_368
	nop	word ptr cs:[rax + rax]
.label_364:
	mov	r13, r12
	shl	r13, 5
	cmp	dword ptr [r14 + r13 + 8], 0
	jns	.label_362
	test	r12, r12
	cmove	r12, r15
	dec	r12
	cmp	r12, rbx
	jne	.label_364
	jmp	.label_368
	nop	word ptr cs:[rax + rax]
.label_362:
	mov	rdi, qword ptr [r14 + r13 + 0x10]
	call	rpl_fclose
	test	eax, eax
	je	.label_360
	mov	ebx, dword ptr [rbp]
	mov	rdx, qword ptr [r14 + r13]
.label_369:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_143
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_365:
	mov	rcx, qword ptr [rsp + 8]
	mov	dword ptr [rcx], eax
	mov	esi, OFFSET FLAT:label_370
	mov	edi, eax
	call	fdopen
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + rcx + 0x10], rax
	test	rax, rax
	je	.label_361
	mov	eax, dword ptr [rip + filter_pid]
	mov	dword ptr [r14 + rcx + 0x18], eax
	mov	dword ptr [rip + filter_pid],  0
.label_366:
	and	bpl, 1
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_368:
	mov	rax, qword ptr [rsp]
	mov	rdx, qword ptr [rax]
	xor	edi, edi
	mov	rbx, rcx
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_143
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_361:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rax, qword ptr [rsp]
	mov	rdx, qword ptr [rax]
	jmp	.label_369
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b10
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b30

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_375
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_374
	cmp	dword ptr [rbp], 0x20
	jne	.label_374
.label_375:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_373
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_374:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_372
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_143
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_373:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_372:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_127
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bf0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_376:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_376
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_380
	nop	word ptr cs:[rax + rax]
.label_379:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_380:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_379
	test	dl, dl
	je	.label_378
	mov	ecx, esi
	and	cl, 1
	je	.label_377
	xor	esi, esi
.label_377:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_379
.label_378:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404c50
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_382:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_381
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_382
.label_381:
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c80

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_383
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_383:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_384
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_386
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_385
.label_386:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_385:
	mov	edx, dword ptr [rax]
.label_384:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d50

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_387
	test	ebx, ebx
	js	.label_387
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_388
.label_387:
	mov	eax, ebx
.label_388:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404db0

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
	je	.label_389
	nop	word ptr [rax + rax]
.label_391:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_389
	test	rax, rax
	je	.label_390
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_391
	jmp	.label_389
.label_390:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_389:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404e10

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_392:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_392
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e60

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_393
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_395
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_397
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_395
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_398
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_398:
	mov	rbx, r14
.label_395:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_393:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_394
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f10
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
	.align	16
	#Procedure 0x404f50
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
	.align	16
	#Procedure 0x404f60
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
	.align	16
	#Procedure 0x404f70
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fb0
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
	.align	16
	#Procedure 0x404fd0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_399
	test	rdx, rdx
	je	.label_399
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_399:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405000
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
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405080

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_454
	nop	
.label_499:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_478
	or	al, dl
	jne	.label_478
	test	dil, 1
	jne	.label_495
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_478
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_454
	jmp	.label_478
.label_803:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_506
	test	rbp, rbp
	je	.label_509
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_509:
	mov	r14d, 1
	jmp	.label_511
.label_804:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_513
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_450
.label_506:
	xor	r14d, r14d
.label_511:
	mov	eax, OFFSET FLAT:label_513
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_519
	nop	
.label_454:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_400
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_434]
.label_805:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_413
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_419
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_806:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_428
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_428
	xor	r14d, r14d
	nop	
.label_512:
	cmp	r14, rbp
	jae	.label_493
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_493:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_512
.label_428:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_450
.label_798:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_450
.label_801:
	mov	al, 1
.label_799:
	mov	r12b, 1
.label_802:
	test	r12b, 1
	mov	cl, 1
	je	.label_461
	mov	ecx, eax
.label_461:
	mov	al, cl
.label_800:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_463
	test	rbp, rbp
	je	.label_471
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_471:
	mov	r14d, 1
	jmp	.label_441
.label_463:
	xor	r14d, r14d
.label_441:
	mov	ecx, OFFSET FLAT:label_419
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_519:
	mov	sil, r12b
.label_450:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_483
	nop	word ptr cs:[rax + rax]
.label_485:
	inc	r12
.label_483:
	cmp	r11, -1
	je	.label_516
	cmp	r12, r11
	jne	.label_473
	jmp	.label_518
	nop	word ptr cs:[rax + rax]
.label_516:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_524
.label_473:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_402
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_405
	cmp	r11, -1
	jne	.label_405
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_405:
	cmp	rbx, r11
	jbe	.label_418
.label_402:
	xor	esi, esi
.label_445:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_420
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_425]
.label_857:
	test	r12, r12
	jne	.label_430
	jmp	.label_433
	nop	word ptr cs:[rax + rax]
.label_418:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_443
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_445
	jmp	.label_452
.label_443:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_445
.label_861:
	xor	eax, eax
	cmp	r11, -1
	je	.label_457
	test	r12, r12
	jne	.label_460
	cmp	r11, 1
	je	.label_433
	xor	r13d, r13d
	jmp	.label_424
.label_850:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_466
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_452
	cmp	r8d, 2
	jne	.label_474
	mov	eax, r9d
	and	al, 1
	jne	.label_474
	cmp	r14, rbp
	jae	.label_479
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_479:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_481
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_481:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_486
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_486:
	add	r14, 3
	mov	r9b, 1
.label_474:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_492
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_492:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_498
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_498
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_498
	cmp	r14, rbp
	jae	.label_437
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_437:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_410
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_410:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_424
.label_851:
	mov	bl, 0x62
	jmp	.label_489
.label_852:
	mov	cl, 0x74
	jmp	.label_480
.label_853:
	mov	bl, 0x76
	jmp	.label_489
.label_854:
	mov	bl, 0x66
	jmp	.label_489
.label_855:
	mov	cl, 0x72
	jmp	.label_480
.label_858:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_526
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_406
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_408
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_408:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_422
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_422:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_427
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_427:
	add	r14, 3
	xor	r9d, r9d
.label_526:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_424
.label_859:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_439
	cmp	r8d, 2
	jne	.label_430
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_430
	jmp	.label_406
.label_860:
	cmp	r8d, 2
	jne	.label_447
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_406
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_435
.label_420:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_453
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_472
.label_457:
	test	r12, r12
	jne	.label_475
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_475
.label_433:
	mov	dl, 1
.label_856:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_406
	xor	eax, eax
	mov	r13b, dl
.label_424:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_484
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_487
	jmp	.label_488
	nop	word ptr cs:[rax + rax]
.label_484:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_488
.label_487:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_497
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_501
	nop	dword ptr [rax]
.label_488:
	test	sil, sil
.label_501:
	mov	ebx, r15d
	je	.label_438
	jmp	.label_508
.label_497:
	mov	ebx, r15d
	jmp	.label_508
.label_466:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_485
	xor	r15d, r15d
	jmp	.label_430
.label_447:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_480
	xor	eax, eax
	mov	r15b, 0x5c
.label_435:
	xor	r13d, r13d
	jmp	.label_438
.label_480:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_406
.label_489:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_424
	nop	
.label_508:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_452
	cmp	r8d, 2
	jne	.label_401
	mov	eax, r9d
	and	al, 1
	jne	.label_401
	cmp	r14, rbp
	jae	.label_404
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_404:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_409
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_409:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_412
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_412:
	add	r14, 3
	mov	r9b, 1
.label_401:
	cmp	r14, rbp
	jae	.label_504
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_504:
	inc	r14
	jmp	.label_520
.label_453:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_426
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_426:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_455
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_421:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_448
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_458
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_476
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_469
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_468:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_432
	bt	rsi, rdx
	jb	.label_406
.label_432:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_468
.label_469:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_491
	xor	r13d, r13d
.label_491:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_421
	jmp	.label_502
.label_498:
	xor	r13d, r13d
	jmp	.label_424
.label_475:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_424
.label_439:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_430
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_430
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_430
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_514
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_496
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_522
	cmp	r14, rbp
	jae	.label_525
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_525:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_403
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_403:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_503
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_503:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_462
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_462:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_496:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_424
.label_430:
	xor	eax, eax
.label_460:
	xor	r13d, r13d
	jmp	.label_424
.label_455:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_456:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_444
	cmp	rbp, -1
	je	.label_446
	cmp	rbp, -2
	je	.label_448
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_451
	xor	r13d, r13d
.label_451:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_456
	jmp	.label_502
.label_448:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_467
	lea	rax, [r10 + r12]
.label_523:
	cmp	byte ptr [rax + rsi], 0
	je	.label_467
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_523
.label_467:
	mov	qword ptr [rsp + 0x40], rsi
.label_458:
	xor	r13d, r13d
	jmp	.label_476
.label_446:
	xor	r13d, r13d
.label_444:
	mov	r10, qword ptr [rsp + 0x28]
.label_476:
	mov	r12, qword ptr [rsp + 0x40]
.label_502:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_472:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_431
	test	al, al
	je	.label_431
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_424
.label_431:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_500
	nop	word ptr [rax + rax]
.label_459:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_500:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_507
	test	sil, 1
	je	.label_429
	cmp	r14, rbp
	jae	.label_510
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_510:
	inc	r14
	xor	esi, esi
	jmp	.label_429
	nop	word ptr cs:[rax + rax]
.label_507:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_452
	cmp	r8d, 2
	jne	.label_517
	mov	eax, r9d
	and	al, 1
	jne	.label_517
	cmp	r14, rbp
	jae	.label_521
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_521:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_515
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_515:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_477
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_477:
	add	r14, 3
	mov	r9b, 1
.label_517:
	cmp	r14, rbp
	jae	.label_411
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_411:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_415
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_415:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_423
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_423:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_429:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_438
	test	r9b, 1
	je	.label_436
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_505
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_442
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_442:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_449
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_449:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_436
	nop	word ptr cs:[rax + rax]
.label_505:
	mov	rbx, rcx
.label_436:
	cmp	r14, rbp
	jae	.label_459
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_459
	nop	
.label_438:
	test	r9b, 1
	je	.label_464
	and	al, 1
	jne	.label_464
	cmp	r14, rbp
	jae	.label_470
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_470:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_494
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_494:
	add	r14, 2
	xor	r9d, r9d
.label_464:
	mov	ebx, r15d
.label_520:
	cmp	r14, rbp
	jae	.label_482
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_482:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_485
.label_514:
	xor	r13d, r13d
	jmp	.label_424
	nop	word ptr cs:[rax + rax]
.label_518:
	mov	rcx, r12
.label_524:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_499
	or	al, dl
	jne	.label_499
	mov	r11, rcx
	jmp	.label_452
.label_406:
	mov	eax, 2
.label_490:
	mov	qword ptr [rsp + 0x38], rax
.label_452:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_465:
	mov	r14, rax
.label_440:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_478:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_416
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_407
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_407
	inc	rdx
	nop	dword ptr [rax + rax]
.label_417:
	cmp	r14, rbp
	jae	.label_414
	mov	byte ptr [rcx + r14], al
.label_414:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_417
	jmp	.label_407
.label_495:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_465
.label_416:
	mov	rcx, qword ptr [rsp + 0x10]
.label_407:
	cmp	r14, rbp
	jae	.label_440
	mov	byte ptr [rcx + r14], 0
	jmp	.label_440
.label_522:
	mov	eax, 5
	jmp	.label_490
.label_400:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405eb0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
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
	.align	16
	#Procedure 0x405f80
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
	call	xmalloc
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
	je	.label_527
	mov	qword ptr [rax], rbx
.label_527:
	mov	rax, r14
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
	.align	16
	#Procedure 0x406070
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_528
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_530:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_530
.label_528:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_531
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_532], OFFSET FLAT:slot0
.label_531:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_529
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_529:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406110
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x406120

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
	js	.label_533
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_536
	cmp	r12d, 0x7fffffff
	je	.label_538
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_534
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_534:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_536:
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
	jbe	.label_539
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_535
.label_539:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_537
	mov	rdi, r14
	call	free
.label_537:
	mov	rdi, r15
	call	xmalloc
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
.label_535:
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
.label_533:
	call	abort
.label_538:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4062e0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062f0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406310
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406330
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_540
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_540:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4063a0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_541
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_541:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406410

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_542
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_542:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406480
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_543
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_543:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064f0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_544]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_545]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_546]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406560
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_544]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_545]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_546]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4065d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_544]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_545]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_546]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406630
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_544]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_545]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_546]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406690

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_547
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_547:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406730
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_544]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_545]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_546]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_548
	test	rdx, rdx
	je	.label_548
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_548:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4067a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_544]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_545]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_546]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_549
	test	rdx, rdx
	je	.label_549
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_549:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406810
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_544]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_545]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_546]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_550
	test	rsi, rsi
	je	.label_550
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_550:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406880
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_544]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_545]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_546]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_551
	test	rsi, rsi
	je	.label_551
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_551:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4068f0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406900
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406920
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406940

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406960

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_557
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_553
	cmp	ecx, 0x55
	jne	.label_552
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_552
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_552
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_552
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_552
	cmp	byte ptr [rax + 5], 0
	jne	.label_552
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_559
	mov	eax, OFFSET FLAT:label_560
	jmp	.label_556
.label_553:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_552
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_552
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_552
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_552
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_552
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_552
	cmp	byte ptr [rax + 7], 0
	je	.label_558
.label_552:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_513
	mov	eax, OFFSET FLAT:label_419
.label_556:
	cmove	rax, rcx
.label_557:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_558:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_554
	mov	eax, OFFSET FLAT:label_555
	jmp	.label_556
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a30

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_562:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_561
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_562
	cmp	rbx, 0x7ff00001
	jb	.label_561
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_562
.label_561:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a90

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_564:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_563
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_564
	cmp	rbx, 0x7ff00001
	jb	.label_563
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_564
.label_563:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406af0

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
	ja	.label_565
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
	jmp	.label_566
.label_565:
	mov	eax, ebx
.label_566:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b40

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
	je	.label_567
	mov	edx, OFFSET FLAT:label_577
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_583
.label_567:
	mov	edx, OFFSET FLAT:label_584
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_583:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_570
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
	mov	esi, OFFSET FLAT:label_585
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_572
	jmp	qword ptr [(r12 * 8) + label_573]
.label_739:
	add	rsp, 8
	jmp	.label_571
.label_572:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_580
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
	jmp	.label_571
.label_740:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_568
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
.label_741:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_581
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
.label_742:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_578
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
.label_743:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_575
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
	jmp	.label_571
.label_744:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_574
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
	jmp	.label_571
.label_745:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_576
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
	jmp	.label_571
.label_746:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_579
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
	jmp	.label_571
.label_748:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_582
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
	jmp	.label_571
.label_747:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_569
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
.label_571:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ea0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_586:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_586
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ed0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_592
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_594
.label_592:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_594:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_587
	cmp	r10d, 0x29
	jae	.label_591
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_593
.label_591:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_593:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_587
	cmp	r10d, 0x29
	jae	.label_589
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_590
.label_589:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_590:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_587
	cmp	r10d, 0x29
	jae	.label_599
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_588
.label_599:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_588:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_587
	cmp	r10d, 0x29
	jae	.label_597
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_598
.label_597:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_598:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_587
	cmp	r10d, 0x29
	jae	.label_595
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_596
.label_595:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_596:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_587
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_587
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_587
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_587
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_587:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_600
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_600:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407150
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_601
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_602
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_604
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_603
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_605
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_606
	test	rax, rax
	je	.label_605
.label_606:
	pop	rbx
	ret	
.label_605:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407210

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_607
	test	rax, rax
	je	.label_608
.label_607:
	pop	rbx
	ret	
.label_608:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407230
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_609
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_610
	test	rbx, rbx
	jne	.label_610
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_610:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_611
	test	rax, rax
	je	.label_609
.label_611:
	pop	rbx
	ret	
.label_609:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407280

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_612
	test	rbx, rbx
	jne	.label_612
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_612:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_614
	test	rax, rax
	je	.label_613
.label_614:
	pop	rbx
	ret	
.label_613:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4072b0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_618
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_620
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_615
.label_618:
	test	rcx, rcx
	jne	.label_621
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_621:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_616
.label_615:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_617
	test	rbx, rbx
	jne	.label_617
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_617:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_619
	test	rax, rax
	je	.label_620
.label_619:
	pop	rbx
	ret	
.label_620:
	call	xalloc_die
.label_616:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407350
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_622
	test	rax, rax
	je	.label_623
.label_622:
	pop	rbx
	ret	
.label_623:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407370
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_626
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_628
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_625
	call	free
	xor	eax, eax
	jmp	.label_627
.label_626:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_624
	mov	qword ptr [rsi], rbx
.label_625:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_627
	test	rax, rax
	je	.label_624
.label_627:
	pop	rbx
	ret	
.label_624:
	call	xalloc_die
.label_628:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073e0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_630
	test	r14, r14
	je	.label_629
.label_630:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_629:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407420

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_631
	call	rpl_calloc
	test	rax, rax
	je	.label_631
	pop	rcx
	ret	
.label_631:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407450

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_632
	test	r15, r15
	je	.label_633
.label_632:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_633:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407490

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_635
	test	r15, r15
	je	.label_634
.label_635:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_634:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_636
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_143
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407510

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_640
	cmp	eax, 1
	je	.label_641
	cmp	eax, 3
	jne	.label_643
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_637
.label_641:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_637
.label_640:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_642
	cmp	rbx, r15
	jbe	.label_638
.label_642:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_639
	mov	dword ptr [rax], 0x4b
	jmp	.label_637
.label_643:
	call	__errno_location
	jmp	.label_637
.label_639:
	mov	dword ptr [rax], 0x22
.label_637:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_127
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_638:
	mov	rax, rbx
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
	.align	16
	#Procedure 0x4075e0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407610

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_649
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_663:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_663
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_648
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_652
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_646
	cmp	eax, 0x22
	jne	.label_648
	mov	ebp, 1
.label_646:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_661
	jmp	.label_644
.label_652:
	test	r14, r14
	je	.label_648
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_648
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_648
.label_661:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_644
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_653
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_647
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_647
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_647
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_664
	cmp	eax, 0x44
	je	.label_664
	cmp	eax, 0x69
	jne	.label_647
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_647
.label_664:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_647:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_653
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_660]
.label_887:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_662
.label_653:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_650
.label_888:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_654
.label_889:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_645
.label_891:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_659
.label_885:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_665
.label_886:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_645
.label_890:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_659:
	or	dl, r10b
.label_662:
	or	dl, bl
.label_645:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_651
.label_892:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	mov	r13d, r15d
	sbb	r15b, r15b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_655
.label_893:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_655:
	movzx	eax, dl
.label_654:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_651
.label_894:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_665:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_651
.label_895:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_651:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_644:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_650:
	mov	r13d, r15d
.label_648:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_649:
	mov	edi, OFFSET FLAT:label_656
	mov	esi, OFFSET FLAT:label_657
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_658
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c50

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_666
	test	rsi, rsi
	mov	ecx, 1
	je	.label_667
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_667
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_666:
	mov	ecx, 1
.label_667:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ca0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_668
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_670
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_668
.label_670:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_668
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_669
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_669:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_668:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d20

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_671
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_671
	test	byte ptr [rbx + 1], 1
	je	.label_671
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_671:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d60

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
	jne	.label_672
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_672
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_673
.label_672:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_673:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_674
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_674:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407dd0

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
	je	.label_675
	cmp	r15, -2
	jb	.label_675
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_675
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_675:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e30
	.globl str2sig
	.type str2sig, @function
str2sig:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	r12, rdi
	movsx	eax, byte ptr [r12]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_680
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	cmp	rax, 0x40
	jg	.label_677
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_684
	jmp	.label_677
.label_680:
	xor	ebx, ebx
	mov	ebp, OFFSET FLAT:label_687
	nop	word ptr cs:[rax + rax]
.label_678:
	mov	rdi, rbp
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_682
	inc	rbx
	add	rbp, 0xc
	cmp	rbx, 0x22
	jbe	.label_678
	call	__libc_current_sigrtmin
	mov	ebp, eax
	call	__libc_current_sigrtmax
	mov	r15d, eax
	test	ebp, ebp
	jle	.label_686
	mov	esi, OFFSET FLAT:label_676
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	je	.label_679
.label_686:
	test	r15d, r15d
	jle	.label_677
	mov	esi, OFFSET FLAT:label_683
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	test	eax, eax
	jne	.label_677
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	mov	rcx, qword ptr [rsp + 8]
	cmp	byte ptr [rcx], 0
	jne	.label_677
	sub	ebp, r15d
	movsxd	rcx, ebp
	cmp	rcx, rax
	jg	.label_677
	test	rax, rax
	jg	.label_677
	mov	ecx, r15d
	jmp	.label_685
.label_682:
	mov	eax, dword ptr [rbp - 4]
	jmp	.label_684
.label_679:
	add	r12, 5
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	mov	rdi, r12
	call	strtol
	test	rax, rax
	js	.label_677
	mov	rcx, qword ptr [rsp + 8]
	mov	cl, byte ptr [rcx]
	test	cl, cl
	jne	.label_677
	sub	r15d, ebp
	movsxd	rcx, r15d
	cmp	rax, rcx
	jle	.label_681
.label_677:
	mov	eax, 0xffffffff
.label_684:
	mov	dword ptr [r14], eax
	sar	eax, 0x1f
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_681:
	mov	ecx, ebp
.label_685:
	add	rax, rcx
	jmp	.label_684
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f90

	.globl sig2str
	.type sig2str, @function
sig2str:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rsi
	mov	ebp, edi
	mov	ecx, OFFSET FLAT:numname_table
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_691:
	mov	edx, eax
	cmp	dword ptr [rcx], ebp
	je	.label_693
	lea	esi, [rdx + 1]
	cmp	dword ptr [rcx + 0xc], ebp
	je	.label_688
	lea	esi, [rdx + 2]
	cmp	dword ptr [rcx + 0x18], ebp
	je	.label_688
	add	edx, 3
	cmp	dword ptr [rcx + 0x24], ebp
	mov	rsi, rdx
	je	.label_688
	cmp	dword ptr [rcx + 0x30], ebp
	je	.label_690
	add	rax, 5
	add	rcx, 0x3c
	cmp	eax, 0x23
	jb	.label_691
	call	__libc_current_sigrtmin
	mov	r14d, eax
	call	__libc_current_sigrtmax
	cmp	r14d, ebp
	mov	ebx, 0xffffffff
	jg	.label_689
	cmp	eax, ebp
	jl	.label_689
	mov	ecx, eax
	sub	ecx, r14d
	mov	edx, ecx
	shr	edx, 0x1f
	add	edx, ecx
	sar	edx, 1
	add	edx, r14d
	cmp	edx, ebp
	jge	.label_695
	mov	word ptr [r15 + 4], 0x58
	mov	dword ptr [r15], 0x414d5452
	mov	r14d, eax
	jmp	.label_694
.label_693:
	mov	rsi, rdx
	jmp	.label_688
.label_690:
	add	rax, 4
	mov	rsi, rax
.label_688:
	lea	rax, [rsi + rsi*2]
	lea	rsi, qword ptr [(rax * 4) + label_687]
	mov	rdi, r15
	call	strcpy
	xor	ebx, ebx
.label_689:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_695:
	mov	word ptr [r15 + 4], 0x4e
	mov	dword ptr [r15], 0x494d5452
.label_694:
	xor	ebx, ebx
	sub	ebp, r14d
	je	.label_689
	add	r15, 5
	xor	ebx, ebx
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_692
	xor	eax, eax
	mov	rdi, r15
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_689
	.section	.text
	.align	16
	#Procedure 0x408090

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_697
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_696
	test	cl, cl
	jne	.label_696
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_696
.label_697:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_696
	call	__errno_location
	mov	dword ptr [rax], 0
.label_696:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_699
	cmp	byte ptr [rax], 0x43
	jne	.label_701
	cmp	byte ptr [rax + 1], 0
	je	.label_698
.label_701:
	mov	esi, OFFSET FLAT:label_700
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_699
.label_698:
	xor	ebx, ebx
.label_699:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408130

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_72
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_702
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408160

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x408170

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_722
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_722:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_705
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_723
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_704
	test	esi, esi
	jne	.label_705
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_706
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_707
.label_705:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_708
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_704
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_715
.label_723:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_703
.label_704:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_719
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_720
.label_719:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_720:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_721:
	call	fcntl
.label_703:
	mov	ebp, eax
.label_709:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_715:
	cmp	eax, 6
	jne	.label_708
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_711
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_713
.label_708:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_714
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_717
.label_706:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_707:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_721
.label_711:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_713:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_712
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_710
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_710
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_709
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_716
.label_710:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_709
.label_714:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_717:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_703
.label_712:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_716:
	test	al, al
	je	.label_709
	test	ebp, ebp
	js	.label_709
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_718
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_709
.label_718:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_709
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x408410

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
